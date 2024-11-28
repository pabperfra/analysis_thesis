from __future__ import annotations

import pandas as pd
import numpy as np
from bokeh.plotting import figure, curdoc, show, output_file, output_notebook
from bokeh.models import Button, ColumnDataSource, Slider, Select, Span, CustomJS, CheckboxGroup, ResetTool, RadioGroup, \
    ButtonGroup, TapTool, BoxZoomTool, Span, HoverTool, SaveTool
import bokeh.layouts
import bokeh.palettes
from bokeh.layouts import gridplot
import nd2
from pathlib import Path, WindowsPath
from skimage.io import imread
import ast
import scipy

# Turn off warnings
import logging  # isort:skip

log = logging.getLogger(__name__)

from bokeh.util.warnings import BokehUserWarning
import warnings

warnings.simplefilter(action='ignore', category=BokehUserWarning)

# Display BF
global display
display = True

global contour
contour = True

# Validity of a given signal
global validity
validity = True

# SInitial values
signals_df = all_signals_norm.copy(deep=True)
# signals_df = df_total.copy(deep=True)
t = np.linspace(0, len(signals_df) - 1, len(signals_df))
t = [int(i) for i in t]
selected_signal = signals_df.columns.values[0]
signal = signals_df[selected_signal]

# signal=signal/(np.max(signal))

# Initial parameters for find_peaks
initial_prominence = 0.5
initial_height = 0.01
threshold = np.zeros(len(t))

# Initial parameters for timepoint sliders
initial_tf = 0
v_line = np.linspace(0, len(signals_df) - 1, len(signals_df))
tf = np.ones(len(v_line))
bo = np.ones(len(v_line))
eo = np.ones(len(v_line))
# Load and display initial image
image_path = Path('./output/' + selected_signal[:-2] + '.tif')
image_stack = imread(image_path.as_posix())[:, :, :]
img_data = {'img': [image_stack[initial_tf]], 'img_stack': [image_stack], 'path': [image_path.as_posix()]}

# Load contour data and plot first one
contour_data = pd.read_csv('./contour_data_wscepfl0123', index_col='Time Frame')
contour_dict = {
    'x_coords': ast.literal_eval(
        contour_data.loc[(contour_data['Cell Name'] == selected_signal), 'x_coords'][initial_tf]),
    'y_coords': ast.literal_eval(
        contour_data.loc[(contour_data['Cell Name'] == selected_signal), 'y_coords'][initial_tf]), }

# Data dataframe to store data
global peak_data
peak_data = pd.DataFrame()


# Find Peaks function
def find_peaks_with_params(signal, prominence, height):
    peaks, properties = scipy.signal.find_peaks(signal, prominence=prominence, height=height)
    return peaks, properties['peak_heights']


# Create ColumnDataSource
source1 = ColumnDataSource(data=dict(t=t, signal=signal))  # Signal and time domain
source2 = ColumnDataSource(data=dict(peaks=[], heights=[]))  # Peaks and peak heights
source3 = ColumnDataSource(data=dict(t=t, threshold=threshold))  # Time domain and height threshold
source4 = ColumnDataSource(data=dict(tf=tf, v_line=v_line))  # Time frame and vertical line
source5 = ColumnDataSource(data=img_data)  # Image data for BF display
source6 = ColumnDataSource(data=contour_dict)  # Data for contour
source7 = ColumnDataSource(data=dict(bo=bo, v_line=v_line))  # Beginning of oscillations
source8 = ColumnDataSource(data=dict(eo=eo, v_line=v_line))  # End of oscillations
source9 = bokeh.models.ColumnDataSource(data=dict(index=[]))  # Data source for the image

# Create Bokeh figure to display signal and peaks
plot = figure(title='normalized  ' + signals_df.columns.values[0], x_range=(np.min(t), np.max(t)),
              y_range=(np.min(signal), np.max(signal) + 0.01), width=1000, height=800,
              tools=[TapTool(), BoxZoomTool(), ResetTool()])
plot.circle('t', 'signal', source=source1, line_width=2, line_color='blue', legend_label='Signal',
            nonselection_alpha=1.0)
plot.line('t', 'signal', source=source1, line_width=2, line_color='blue', legend_label='Signal')
plot.circle('peaks', 'heights', source=source2, size=8, color='red', legend_label='Peaks', line_width=2,
            line_color='black', nonselection_alpha=1.0)
plot.line('t', 'threshold', source=source3, line_color='green', line_dash='dashed', legend_label='Height threshold')
tod_renderer = plot.line('tf', 'v_line', source=source4, line_color='red', line_dash='solid',
                         legend_label='Time of death')
plot.line('bo', 'v_line', source=source7, line_color='orange', line_dash='dashed',
          legend_label='Beginning of oscillations')
plot.line('eo', 'v_line', source=source8, line_color='blue', line_dash='dashed', legend_label='End of oscillations')

# Create Bokeh figure to display BF images
if display == True:
    bf_display = figure(x_range=(0, image_stack.shape[1]), y_range=(0, image_stack.shape[2]))
    # bf_display = figure(x_range=(0, image_stack.shape[1]), y_range=(0, image_stack.shape[2]), width=1000, height=800)
    bf_display.image(image='img', x=0, y=0, dw=image_stack.shape[1], dh=image_stack.shape[2], source=source5,
                     palette='Greys256')

    if contour == True:
        contour_renderer = bf_display.line('x_coords', 'y_coords', source=source6, line_color='orange',
                                           line_dash='solid', legend_label='Contour')


# Callback function for filtering signal - not implemented for now

# Callback function for dropdown menu
def update_signal(attr, old, new):
    selected_signal = signal_select.value
    signal = signals_df[selected_signal]

    # Update data source
    source1.data = dict(t=t, signal=signal)

    # Update peaks and heights based on new signal
    prominence_value = prominence_slider.value
    height_value = height_slider.value
    peaks, peak_heights = find_peaks_with_params(signal, prominence_value, height_value)
    source2.data = dict(peaks=peaks, heights=peak_heights)

    # Update plot title
    plot.title.text = selected_signal

    # Update BF display
    image_path = Path('./output/' + selected_signal[:-2] + '.tif')
    image_stack = imread(image_path.as_posix())[:, :, :]
    img_data = {'img': [image_stack[0]], 'img_stack': [image_stack], 'path': [image_path.as_posix()]}
    source5.data = img_data
    tf_slider.value = 0

    # Update contour
    if display == True and contour == True:
        source6.data['x_coords'] = ast.literal_eval(
            (contour_data.loc[(contour_data['Cell Name'] == signal_select.value), 'x_coords'])[0])
        source6.data['y_coords'] = ast.literal_eval(
            (contour_data.loc[(contour_data['Cell Name'] == signal_select.value), 'y_coords'])[0])


# Callback function for sliders using on_change
def update_peaks(attr, old, new):
    # Retrieve values from sliders
    prominence_value = prominence_slider.value
    height_value = height_slider.value
    selected_signal = signal_select.value
    signal = signals_df[selected_signal]
    bo = bo_slider.value
    eo = eo_slider.value
    # Update peaks and heights based on new prominence value
    # First use eo as end limit for find peaks, then use boolean array to remove any peak before bo and finally update threshold
    # Caution here: the behaviour of find peaks is different for beginning and end filtering of peaks
    if eo < len(signal):
        peaks, peak_heights = find_peaks_with_params(signal[:eo + 1], prominence_value, height_value)
    else:
        peaks, peak_heights = find_peaks_with_params(signal, prominence_value, height_value)
    bo_mask = peaks >= bo
    # eo_mask = peaks <= eo
    peaks = peaks[bo_mask]
    peak_heights = peak_heights[bo_mask]
    threshold = np.ones(len(t)) * height_value
    # Update data source
    source2.data = dict(peaks=peaks, heights=peak_heights)
    source3.data = dict(t=t, threshold=threshold)


# Callback function for vertical slider
def update_tf(attr, old, new):
    # Neccessary a check to change the signal only if a different signal in the dropdown menu is selected!!!
    # Update line in signal plot
    index = tf_slider.value
    tf = np.ones(len(v_line)) * index
    source4.data = dict(tf=tf, v_line=v_line)
    selected_time_lapse = signal_select.value
    image_path = Path('./output/' + selected_time_lapse[:-2] + '.tif').as_posix()
    if image_path != source5.data['path'][0]:
        image_path = Path('./output/' + selected_image[:-2] + '.tif')
        image_stack = nd2.imread(image_path.as_posix())[:, :, :]
    else:
        image_stack = source5.data['img_stack'][0]

    # Update tf and contour in BF display
    if display == True:
        new_image = image_stack[index]
        source5.data['img'] = [new_image]
        if contour == True:
            source6.data['x_coords'] = ast.literal_eval(
                (contour_data.loc[(contour_data['Cell Name'] == signal_select.value), 'x_coords'])[index])
            source6.data['y_coords'] = ast.literal_eval(
                (contour_data.loc[(contour_data['Cell Name'] == signal_select.value), 'y_coords'])[index])


# Callback for beginning of oscillations
def update_bo(attr, old, new):
    index = bo_slider.value
    bo = np.ones(len(v_line)) * index
    source7.data = dict(bo=bo, v_line=v_line)


# Callback for end of oscillations
def update_eo(attr, old, new):
    index = eo_slider.value
    eo = np.ones(len(v_line)) * index
    source8.data = dict(eo=eo, v_line=v_line)


# Save data function
def save_data():
    selected_signal = signal_select.value
    signal = signals_df[selected_signal]
    prominence_value = prominence_slider.value
    height_value = height_slider.value
    time_of_death = tf_slider.value
    bo = bo_slider.value
    eo = eo_slider.value
    peaks, peak_heights = find_peaks_with_params(signal, prominence_value, height_value)

    global peak_data
    try:
        if peak_data['Signal'].isin([selected_signal]).any():  # Remove the stored-data if the signal is re-done
            peak_data = peak_data[~peak_data['Signal'].isin([selected_signal])]

    except KeyError:
        print('First tp')

    if validity == True:
        data = {
            'Signal': [selected_signal] * len(peaks),
            'Peak pos': peaks,
            'Peak heights': peak_heights,
            'Threshold': [height_value] * len(peaks),
            'Peak proms': [prominence_value] * len(peaks),
            'Time of death': [time_of_death] * len(peaks),
            'Beginning of oscillation': [bo] * len(peaks),
            'End of oscillation': [eo] * len(peaks)
        }
    else:
        data = {
            'Signal': [selected_signal],
            'Peak pos': np.nan,
            'Peak heights': np.nan,
            'Threshold': np.nan,
            'Peak proms': np.nan,
            'Time of death': np.nan,
            'Beginning of oscillation': np.nan,
            'End of oscillation': np.nan
        }
    if display == False:
        data['Time of death'] = np.nan
    df = pd.DataFrame(data)
    peak_data = pd.concat([peak_data, df], ignore_index=True)

    # Print or save the DataFrame (adjust as needed)
    print(df)

    # Move to the next signal in the dropdown menu
    signal_index = list(signals_df.keys()).index(selected_signal)
    try:
        # next_index = (signal_index + 1) % len(signals_df)
        next_index = signal_index + 1
        next_signal = list(signals_df.keys())[next_index]
        signal_select.value = next_signal
    except IndexError:
        print('{selected_signal} is the last signal of the dataset'.format(selected_signal=selected_signal))


# Callback function to toggle BF display
def callback_display(attr, new, old):
    global display
    display = not display
    bf_display.visible = display
    tf_slider.visible = display
    checkbox_contour.visible = display
    tod_renderer.visible = display


def callback_contour(attr, new, old):
    global contour
    contour = not contour
    contour_renderer.visible = contour


def select_tap_callback():
    return """
    const indices = cb_data.source.selected.indices;

    if (indices.length > 0) {
        const index = indices[0];
        other_source.data = {'index': [index]};
        other_source.change.emit();  
    }
    """


def remove_peak(attr, old, new):
    try:
        # peaks = source2.data['peaks']
        # peak_heights = source2.data['heights']
        selected_index = int(new['index'][0])
        selected_peak = source1.data['t'][selected_index]
        selected_height = source1.data['signal'][selected_index]
        # add peak if peak is not in the previous peak list
        print('**************')
        print(selected_index)
        print(selected_peak)
        print(selected_height)
        print(source2.data['peaks'])
        print('-------------------')
        peak_list = [int(peak) for peak in source2.data['peaks']]
        height_list = [int(peak) for peak in source2.data['heights']]

        print(peak_list)
        if selected_peak not in peak_list:
            new_peaks = {'peaks': peak_list.append(selected_peak), 'heights': height_list.append(selected_height)}
            source2.data = new_peaks
        else:
            temp_index = source2.data['peaks'].tolist().index(selected_index)
            temp_height = source2.data['heights'].tolist().remove(source2.data['heights'][temp_index])
            temp_peaks = source2.data['peaks'].tolist().remove(selected_index)
            print(temp_index)
            print(temp_height)
            print(temp_peaks)
            if temp_height == None and temp_peaks == None:
                temp_height = []
                temp_peaks = []
            new_peaks = {'peaks': temp_peaks, 'heights': temp_height}
            source2.data = new_peaks

    except IndexError:
        pass


def tap_point(attr, old, new):
    try:
        print(peaks)
        print(source2.data['peaks'])
        # peak_heights = source2.data['heights']
        selected_index = source1.selected.indices[0]
        selected_peak = source1.data['t'][selected_index]
        selected_height = source1.data['signal'][selected_index]
        # add peak if peak is not in the previous peak list
        if selected_peak not in peaks:
            new_peaks = {'peaks': np.append(source2.data['peaks'], selected_peak),
                         'heights': np.append(source2.data['heights'], selected_height)}
            source2.data = new_peaks
        elif selected_index in peaks:
            global position_selected_height
            global position_selected_peak
            position_selected_height = np.where(source2.data['heights'] == selected_height)[0][0]
            position_selected_peak = np.where(source2.data['peaks'] == selected_peak)[0][0]
            new_peaks = {'peaks': np.delete(source2.data['peaks'], position_selected_peak),
                         'heights': np.delete(source2.data['heights'], position_selected_height)}
            source2.data = new_peaks

    except IndexError:
        pass


def change_validity(new):
    global validity
    validity = not validity


# Create sliders with on_change callback
prominence_slider = Slider(title='Prominence', value=initial_prominence, start=0.0, end=1.0, step=0.01)
prominence_slider.on_change('value', update_peaks)
height_slider = Slider(title='Height', value=initial_height, start=0.01, end=1.0, step=0.01)
height_slider.on_change('value', update_peaks)
tf_slider = Slider(title='Time of death', value=initial_tf, start=0, end=(len(signal) - 1), step=1)
tf_slider.on_change('value', update_tf)
bo_slider = Slider(title='Beginning of oscillations', value=initial_tf, start=0, end=(len(signal) - 1), step=1)
bo_slider.on_change('value', update_bo)
bo_slider.on_change('value', update_peaks)
eo_slider = Slider(title='End of oscillations', value=initial_tf, start=0, end=(len(signal) - 1), step=1)
eo_slider.on_change('value', update_eo)
eo_slider.on_change('value', update_peaks)

# Create dropdown menu
signal_select = Select(title='Select Signal:', value=selected_signal, options=list(signals_df.keys()))
signal_select.on_change('value', update_signal)

# Create a button to save data
save_button = Button(label="Save Data", button_type="success")
save_button.on_click(save_data)

# Create a radiobutton to change validity of data
validity_button = RadioGroup(labels=['Valid', 'Not Valid'], active=0)
validity_button.on_click(change_validity)

# Create a checkbox to display BF
checkbox_display = CheckboxGroup(labels=['Display BF'], active=[0, 1])
checkbox_display.on_change('active', callback_display)

# Create a checkbox to display contour
checkbox_contour = CheckboxGroup(labels=['Plot contour'], active=[0, 1])
checkbox_contour.on_change('active', callback_contour)

# Add or remove peaks by tapping
# source1.selected.on_change('indices', tap_point)

tap_tool = bokeh.models.TapTool(
    callback=bokeh.models.CustomJS(args=dict(other_source=source9), code=select_tap_callback()))

plot.add_tools(tap_tool)
source9.on_change('data', remove_peak)

slider_layout = bokeh.layouts.column(
    bokeh.layouts.Spacer(height=30),
    prominence_slider,
    bokeh.layouts.Spacer(height=15),
    height_slider,
    tf_slider,
    bo_slider,
    eo_slider
)

# Dropdown and save button
dropdown_layout = bokeh.layouts.column(
    bokeh.layouts.Spacer(height=30),
    signal_select,
    save_button,
    checkbox_display,
    checkbox_contour,
    validity_button
)

# Set up layout
norm_layout = bokeh.layouts.row(
    plot,
    bf_display,
    bokeh.layouts.Spacer(width=15),
    slider_layout,
    dropdown_layout,
)
notebook_url = 'localhost:8888'


# Add layout to the current document
def norm_app(doc):
    doc.add_root(norm_layout)


bokeh.io.show(norm_app, notebook_url=notebook_url)