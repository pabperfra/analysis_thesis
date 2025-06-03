/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=15 laplace_box_of_gaussian_blur=15 difference_of_gaussian=20 gaussian_blur=15 gaussian_blur=10 laplace_box_of_gaussian_blur=20 sobel_of_gaussian_blur=10 gaussian_blur=5 gaussian_blur=2 mean_box=5 median_box=5 median_box=3 gaussian_blur=3 top_hat_box=30 sobel_of_gaussian_blur=30 top_hat_box=15 mean_box=3 sobel_of_gaussian_blur=15 difference_of_gaussian=10 laplace_box_of_gaussian_blur=10 mean_box=15 maximum_box=3 top_hat_box=20 mean_box=2 sobel_of_gaussian_blur=5 variance_box=30 mean_box=10 maximum_box=30 maximum_box=2 variance_box=20 sobel_of_gaussian_blur=20 maximum_box=15 difference_of_gaussian=30 maximum_box=10 maximum_box=20 maximum_box=5 variance_box=10 variance_box=15 sobel_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=15 top_hat_box=10 mean_box=20 gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=15 variance_box=5 mean_box=1 small_hessian_eigenvalue_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=10 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=20 gaussian_blur=20 laplace_box_of_gaussian_blur=30 variance_box=2 variance_box=3 small_hessian_eigenvalue_of_gaussian_blur=3 sobel_of_median_box=3 sobel_of_median_box=5 variance_box=1 maximum_box=1 difference_of_gaussian=5 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=20 gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=5 laplace_box_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=30 sobel_of_gaussian_blur=1 top_hat_box=1 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=30 top_hat_box=5 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=2 laplace_box_of_gaussian_blur=2 laplace_box_of_gaussian_blur=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 79
max_depth = 5
num_trees = 250
feature_importances = 0.06378802238049447,0.07654264510112821,0.07335148258652432,0.05623137345094398,0.030000208839310358,0.06611670739214369,0.05388050279657914,0.04188861527917824,0.03336102621212354,0.034946480783986274,0.017033730556048975,0.030678285674168335,0.026482758962789815,0.03730333521762493,0.014506961665269434,0.014150339460843457,0.018667615067765556,0.027459827921796992,0.01387559982476037,0.006560352530978839,0.012072986749191814,0.04257597407616833,0.009869531245134776,0.011190130033776986,0.011016547111973704,0.011670679558007402,0.010898438525685082,0.009193699756421158,0.009696889670007652,0.0062547426119963275,0.007942235711314498,0.006144028416990559,0.006375387454114877,0.008944835783929291,0.004644327550637945,0.006887690118913739,0.005775116953935072,0.0067181937630522055,0.006154939281734628,0.0032232917536879745,0.007941591120774756,0.0026438370987571735,0.006155782102166199,0.003028587551151311,0.0014758101404940722,0.0033807172025466918,0.001819330580051281,0.0027726923405830203,0.00217356357767201,0.0028617257350593535,0.001906024113688721,0.001587699843685394,0.006010954256964305,0.00285432330418422,0.0015887234981991625,0.002924560530865617,0.0006292994668361826,0.0005880776879353224,0.002488306851023551,0.0007425892492674073,0.0006071953254940986,0.0005354020947282184,0.0007493545885819714,0.0005898923811636327,0.0030404843382708813,0.0007440632961050641,0.0005543113368477733,0.00085686256232513,0.0011567749927118543,0.000478335078669332,3.19606820984162e-05,0.0001287321901633443,0.00020545550874289406,0.0002479636069988354,5.127316130773925e-05,0.00010673393498093218,9.642867248036392e-05,3.4751467230530775e-05,0.00013429069806023596
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_in78_TYPE in78, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float i4 = READ_IMAGE(in4, sampler, POS_in4_INSTANCE(x,y,z,0)).x;
 float i5 = READ_IMAGE(in5, sampler, POS_in5_INSTANCE(x,y,z,0)).x;
 float i6 = READ_IMAGE(in6, sampler, POS_in6_INSTANCE(x,y,z,0)).x;
 float i7 = READ_IMAGE(in7, sampler, POS_in7_INSTANCE(x,y,z,0)).x;
 float i8 = READ_IMAGE(in8, sampler, POS_in8_INSTANCE(x,y,z,0)).x;
 float i9 = READ_IMAGE(in9, sampler, POS_in9_INSTANCE(x,y,z,0)).x;
 float i10 = READ_IMAGE(in10, sampler, POS_in10_INSTANCE(x,y,z,0)).x;
 float i11 = READ_IMAGE(in11, sampler, POS_in11_INSTANCE(x,y,z,0)).x;
 float i12 = READ_IMAGE(in12, sampler, POS_in12_INSTANCE(x,y,z,0)).x;
 float i13 = READ_IMAGE(in13, sampler, POS_in13_INSTANCE(x,y,z,0)).x;
 float i14 = READ_IMAGE(in14, sampler, POS_in14_INSTANCE(x,y,z,0)).x;
 float i15 = READ_IMAGE(in15, sampler, POS_in15_INSTANCE(x,y,z,0)).x;
 float i16 = READ_IMAGE(in16, sampler, POS_in16_INSTANCE(x,y,z,0)).x;
 float i17 = READ_IMAGE(in17, sampler, POS_in17_INSTANCE(x,y,z,0)).x;
 float i18 = READ_IMAGE(in18, sampler, POS_in18_INSTANCE(x,y,z,0)).x;
 float i19 = READ_IMAGE(in19, sampler, POS_in19_INSTANCE(x,y,z,0)).x;
 float i20 = READ_IMAGE(in20, sampler, POS_in20_INSTANCE(x,y,z,0)).x;
 float i21 = READ_IMAGE(in21, sampler, POS_in21_INSTANCE(x,y,z,0)).x;
 float i22 = READ_IMAGE(in22, sampler, POS_in22_INSTANCE(x,y,z,0)).x;
 float i23 = READ_IMAGE(in23, sampler, POS_in23_INSTANCE(x,y,z,0)).x;
 float i24 = READ_IMAGE(in24, sampler, POS_in24_INSTANCE(x,y,z,0)).x;
 float i25 = READ_IMAGE(in25, sampler, POS_in25_INSTANCE(x,y,z,0)).x;
 float i26 = READ_IMAGE(in26, sampler, POS_in26_INSTANCE(x,y,z,0)).x;
 float i27 = READ_IMAGE(in27, sampler, POS_in27_INSTANCE(x,y,z,0)).x;
 float i28 = READ_IMAGE(in28, sampler, POS_in28_INSTANCE(x,y,z,0)).x;
 float i29 = READ_IMAGE(in29, sampler, POS_in29_INSTANCE(x,y,z,0)).x;
 float i30 = READ_IMAGE(in30, sampler, POS_in30_INSTANCE(x,y,z,0)).x;
 float i31 = READ_IMAGE(in31, sampler, POS_in31_INSTANCE(x,y,z,0)).x;
 float i32 = READ_IMAGE(in32, sampler, POS_in32_INSTANCE(x,y,z,0)).x;
 float i33 = READ_IMAGE(in33, sampler, POS_in33_INSTANCE(x,y,z,0)).x;
 float i34 = READ_IMAGE(in34, sampler, POS_in34_INSTANCE(x,y,z,0)).x;
 float i35 = READ_IMAGE(in35, sampler, POS_in35_INSTANCE(x,y,z,0)).x;
 float i36 = READ_IMAGE(in36, sampler, POS_in36_INSTANCE(x,y,z,0)).x;
 float i37 = READ_IMAGE(in37, sampler, POS_in37_INSTANCE(x,y,z,0)).x;
 float i38 = READ_IMAGE(in38, sampler, POS_in38_INSTANCE(x,y,z,0)).x;
 float i39 = READ_IMAGE(in39, sampler, POS_in39_INSTANCE(x,y,z,0)).x;
 float i40 = READ_IMAGE(in40, sampler, POS_in40_INSTANCE(x,y,z,0)).x;
 float i41 = READ_IMAGE(in41, sampler, POS_in41_INSTANCE(x,y,z,0)).x;
 float i42 = READ_IMAGE(in42, sampler, POS_in42_INSTANCE(x,y,z,0)).x;
 float i43 = READ_IMAGE(in43, sampler, POS_in43_INSTANCE(x,y,z,0)).x;
 float i44 = READ_IMAGE(in44, sampler, POS_in44_INSTANCE(x,y,z,0)).x;
 float i45 = READ_IMAGE(in45, sampler, POS_in45_INSTANCE(x,y,z,0)).x;
 float i46 = READ_IMAGE(in46, sampler, POS_in46_INSTANCE(x,y,z,0)).x;
 float i47 = READ_IMAGE(in47, sampler, POS_in47_INSTANCE(x,y,z,0)).x;
 float i48 = READ_IMAGE(in48, sampler, POS_in48_INSTANCE(x,y,z,0)).x;
 float i49 = READ_IMAGE(in49, sampler, POS_in49_INSTANCE(x,y,z,0)).x;
 float i50 = READ_IMAGE(in50, sampler, POS_in50_INSTANCE(x,y,z,0)).x;
 float i51 = READ_IMAGE(in51, sampler, POS_in51_INSTANCE(x,y,z,0)).x;
 float i52 = READ_IMAGE(in52, sampler, POS_in52_INSTANCE(x,y,z,0)).x;
 float i53 = READ_IMAGE(in53, sampler, POS_in53_INSTANCE(x,y,z,0)).x;
 float i54 = READ_IMAGE(in54, sampler, POS_in54_INSTANCE(x,y,z,0)).x;
 float i55 = READ_IMAGE(in55, sampler, POS_in55_INSTANCE(x,y,z,0)).x;
 float i56 = READ_IMAGE(in56, sampler, POS_in56_INSTANCE(x,y,z,0)).x;
 float i57 = READ_IMAGE(in57, sampler, POS_in57_INSTANCE(x,y,z,0)).x;
 float i58 = READ_IMAGE(in58, sampler, POS_in58_INSTANCE(x,y,z,0)).x;
 float i59 = READ_IMAGE(in59, sampler, POS_in59_INSTANCE(x,y,z,0)).x;
 float i60 = READ_IMAGE(in60, sampler, POS_in60_INSTANCE(x,y,z,0)).x;
 float i61 = READ_IMAGE(in61, sampler, POS_in61_INSTANCE(x,y,z,0)).x;
 float i62 = READ_IMAGE(in62, sampler, POS_in62_INSTANCE(x,y,z,0)).x;
 float i63 = READ_IMAGE(in63, sampler, POS_in63_INSTANCE(x,y,z,0)).x;
 float i64 = READ_IMAGE(in64, sampler, POS_in64_INSTANCE(x,y,z,0)).x;
 float i65 = READ_IMAGE(in65, sampler, POS_in65_INSTANCE(x,y,z,0)).x;
 float i66 = READ_IMAGE(in66, sampler, POS_in66_INSTANCE(x,y,z,0)).x;
 float i67 = READ_IMAGE(in67, sampler, POS_in67_INSTANCE(x,y,z,0)).x;
 float i68 = READ_IMAGE(in68, sampler, POS_in68_INSTANCE(x,y,z,0)).x;
 float i69 = READ_IMAGE(in69, sampler, POS_in69_INSTANCE(x,y,z,0)).x;
 float i70 = READ_IMAGE(in70, sampler, POS_in70_INSTANCE(x,y,z,0)).x;
 float i71 = READ_IMAGE(in71, sampler, POS_in71_INSTANCE(x,y,z,0)).x;
 float i72 = READ_IMAGE(in72, sampler, POS_in72_INSTANCE(x,y,z,0)).x;
 float i73 = READ_IMAGE(in73, sampler, POS_in73_INSTANCE(x,y,z,0)).x;
 float i74 = READ_IMAGE(in74, sampler, POS_in74_INSTANCE(x,y,z,0)).x;
 float i75 = READ_IMAGE(in75, sampler, POS_in75_INSTANCE(x,y,z,0)).x;
 float i76 = READ_IMAGE(in76, sampler, POS_in76_INSTANCE(x,y,z,0)).x;
 float i77 = READ_IMAGE(in77, sampler, POS_in77_INSTANCE(x,y,z,0)).x;
 float i78 = READ_IMAGE(in78, sampler, POS_in78_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i1<0.0009613633155822754){
 if(i16<0.204881489276886){
  if(i31<0.0007173037156462669){
   if(i37<0.0018412265926599503){
    if(i59<0.0002876748039852828){
     s0+=28489.0;
     s1+=328.0;
    } else {
     s0+=46359.0;
     s1+=13.0;
    }
   } else {
    if(i22<1.0958988666534424){
     s0+=4746.0;
     s1+=45.0;
    } else {
     s0+=1200.0;
     s1+=198.0;
    }
   }
  } else {
   if(i13<1.00851309299469){
    if(i26<0.000921537633985281){
     s0+=3476.0;
     s1+=2599.0;
    } else {
     s0+=28599.0;
     s1+=1890.0;
    }
   } else {
    if(i45<1.601117037353106e-05){
     s0+=376.0;
     s1+=1289.0;
    } else {
     s0+=611.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i56<-0.0008112723589874804){
   if(i7<0.004918111488223076){
    if(i43<1.0018081665039062){
     s0+=132.0;
    } else {
     s0+=29.0;
     s1+=27.0;
    }
   } else {
    if(i48<1.591278532941942e-06){
     s0+=15.0;
     s1+=1461.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i32<1.1766420602798462){
    if(i60<1.0980403423309326){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=82.0;
    }
   } else {
    if(i25<0.014944876544177532){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=72.0;
    }
   }
  }
 }
} else {
 if(i7<0.0038963810075074434){
  if(i33<0.0005224347114562988){
   if(i28<1.116804838180542){
    s1+=648.0;
   } else {
    if(i4<1.0053635835647583){
     s0+=56.0;
    } else {
     s1+=59.0;
    }
   }
  } else {
   if(i1<0.002519965171813965){
    s0+=1722.0;
   } else {
    s1+=194.0;
   }
  }
 } else {
  if(i15<0.0010126684792339802){
   if(i16<0.0003789663314819336){
    if(i5<1.0064516067504883){
     s0+=32.0;
     s1+=4.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i57<3.826618194580078e-05){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=84.0;
     s1+=15548.0;
    }
   }
  } else {
   s0+=282.0;
  }
 }
}
if(i6<2.294778823852539e-05){
 if(i10<1.0105699300765991){
  if(i31<0.0007107780547812581){
   if(i22<1.023176908493042){
    if(i27<0.9984256625175476){
     s0+=5816.0;
     s1+=245.0;
    } else {
     s0+=5322.0;
     s1+=4.0;
    }
   } else {
    if(i26<0.0019596852362155914){
     s0+=62746.0;
     s1+=66.0;
    } else {
     s0+=5012.0;
     s1+=122.0;
    }
   }
  } else {
   if(i38<0.0010466770036146045){
    if(i31<0.0011930580949410796){
     s0+=1374.0;
     s1+=2487.0;
    } else {
     s0+=1576.0;
    }
   } else {
    if(i60<1.121600866317749){
     s0+=27326.0;
     s1+=1280.0;
    } else {
     s0+=122.0;
     s1+=434.0;
    }
   }
  }
 } else {
  if(i31<0.0007199561223387718){
   if(i67<0.000991064589470625){
    if(i33<0.00013780593872070312){
     s0+=431.0;
    } else {
     s0+=87.0;
     s1+=11.0;
    }
   } else {
    if(i44<1.0007661581039429){
     s0+=45.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i77<-0.0028870105743408203){
    if(i14<0.16910943388938904){
     s0+=182.0;
     s1+=41.0;
    } else {
     s0+=7.0;
     s1+=35.0;
    }
   } else {
    if(i2<-3.0606985092163086e-05){
     s0+=130.0;
    } else {
     s0+=50.0;
     s1+=690.0;
    }
   }
  }
 }
} else {
 if(i9<1.021713137626648){
  if(i40<-0.000231473968597129){
   if(i7<0.004373524338006973){
    if(i37<0.0005527366301976144){
     s1+=28.0;
    } else {
     s0+=460.0;
     s1+=26.0;
    }
   } else {
    if(i9<0.9081936478614807){
     s0+=149.0;
     s1+=83.0;
    } else {
     s0+=255.0;
     s1+=3671.0;
    }
   }
  } else {
   if(i6<4.738569259643555e-05){
    if(i2<9.465217590332031e-05){
     s0+=4193.0;
     s1+=820.0;
    } else {
     s0+=64.0;
     s1+=303.0;
    }
   } else {
    if(i45<-1.4240729797165841e-05){
     s0+=38.0;
     s1+=1040.0;
    } else {
     s0+=907.0;
     s1+=628.0;
    }
   }
  }
 } else {
  if(i2<2.0742416381835938e-05){
   if(i18<0.0036814487539231777){
    if(i68<1.0033392906188965){
     s1+=6.0;
    } else {
     s0+=93.0;
    }
   } else {
    if(i58<0.05382078140974045){
     s0+=15.0;
     s1+=13.0;
    } else {
     s1+=122.0;
    }
   }
  } else {
   if(i25<0.005197648424655199){
    if(i45<-1.2157763194409199e-05){
     s1+=224.0;
    } else {
     s0+=95.0;
     s1+=73.0;
    }
   } else {
    if(i5<1.0004384517669678){
     s0+=10.0;
    } else {
     s0+=89.0;
     s1+=11802.0;
    }
   }
  }
 }
}
if(i6<2.092123031616211e-05){
 if(i16<0.2063673734664917){
  if(i4<0.9995235204696655){
   if(i7<0.021276988089084625){
    if(i52<0.9996446371078491){
     s0+=40097.0;
     s1+=63.0;
    } else {
     s0+=13477.0;
     s1+=263.0;
    }
   } else {
    if(i26<0.014764640480279922){
     s0+=5.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i10<1.0101008415222168){
    if(i28<1.1162974834442139){
     s0+=12595.0;
     s1+=2614.0;
    } else {
     s0+=42254.0;
     s1+=919.0;
    }
   } else {
    if(i5<1.0018433332443237){
     s0+=441.0;
     s1+=79.0;
    } else {
     s0+=304.0;
     s1+=373.0;
    }
   }
  }
 } else {
  if(i63<5.197175596549641e-06){
   if(i51<-3.554522436388652e-06){
    if(i25<0.00877494178712368){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=205.0;
    }
   } else {
    if(i41<-1.5106749742699321e-05){
     s1+=2.0;
    } else {
     s0+=157.0;
    }
   }
  } else {
   if(i25<0.03485899791121483){
    if(i0<-7.791603275109082e-05){
     s1+=6.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i39<0.018916144967079163){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=435.0;
    }
   }
  }
 }
} else {
 if(i30<0.0026343478821218014){
  if(i37<0.0010316518601030111){
   if(i15<0.00026625781902112067){
    if(i35<1.1173772811889648){
     s0+=10.0;
     s1+=2526.0;
    } else {
     s0+=59.0;
    }
   } else {
    s0+=1493.0;
   }
  } else {
   if(i28<1.116804838180542){
    if(i41<-1.1438331966928672e-05){
     s1+=469.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i35<1.1948647499084473){
     s0+=3534.0;
     s1+=49.0;
    } else {
     s0+=26.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i45<2.211729770351667e-05){
   if(i55<0.00020783796207979321){
    if(i62<0.0027441601268947124){
     s0+=89.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i20<-0.00031447410583496094){
     s0+=109.0;
     s1+=309.0;
    } else {
     s0+=99.0;
     s1+=13615.0;
    }
   }
  } else {
   if(i42<0.08744645118713379){
    if(i29<1.0747973918914795){
     s0+=1148.0;
     s1+=199.0;
    } else {
     s0+=120.0;
     s1+=376.0;
    }
   } else {
    if(i58<0.04514424502849579){
     s0+=174.0;
     s1+=190.0;
    } else {
     s0+=59.0;
     s1+=1720.0;
    }
   }
  }
 }
}
if(i12<1.016731858253479){
 if(i3<0.0009056925773620605){
  if(i31<0.00072047597495839){
   if(i46<0.0020835534669458866){
    if(i65<0.00016978045459836721){
     s0+=66079.0;
     s1+=119.0;
    } else {
     s0+=11119.0;
     s1+=241.0;
    }
   } else {
    if(i3<0.0004304051399230957){
     s0+=2658.0;
     s1+=74.0;
    } else {
     s0+=6.0;
     s1+=67.0;
    }
   }
  } else {
   if(i26<0.0009299945086240768){
    if(i38<0.00020158159895800054){
     s0+=2327.0;
    } else {
     s0+=1230.0;
     s1+=3203.0;
    }
   } else {
    if(i3<0.0003972053527832031){
     s0+=26547.0;
     s1+=779.0;
    } else {
     s0+=1917.0;
     s1+=1097.0;
    }
   }
  }
 } else {
  if(i15<0.0006875074468553066){
   if(i6<4.5239925384521484e-05){
    if(i15<0.00026242402964271605){
     s0+=161.0;
     s1+=717.0;
    } else {
     s0+=428.0;
     s1+=275.0;
    }
   } else {
    if(i20<-0.00026810169219970703){
     s0+=273.0;
     s1+=585.0;
    } else {
     s0+=100.0;
     s1+=2751.0;
    }
   }
  } else {
   if(i21<1.0171066522598267){
    s0+=1588.0;
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i23<0.16724714636802673){
  if(i8<1.014490008354187){
   if(i36<1.0781182050704956){
    if(i28<1.116804838180542){
     s0+=2.0;
     s1+=586.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i7<0.006294938735663891){
     s0+=1507.0;
     s1+=75.0;
    } else {
     s0+=86.0;
     s1+=420.0;
    }
   }
  } else {
   if(i48<-5.9460771808517165e-06){
    s0+=46.0;
   } else {
    if(i0<-3.425694376346655e-05){
     s0+=1.0;
     s1+=1436.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i38<0.0019333809614181519){
   if(i73<0.11807611584663391){
    if(i60<1.0652711391448975){
     s0+=1.0;
    } else {
     s1+=27.0;
    }
   } else {
    s0+=92.0;
   }
  } else {
   if(i32<1.6811659336090088){
    if(i51<-2.9708194233535323e-06){
     s0+=89.0;
     s1+=12029.0;
    } else {
     s0+=28.0;
     s1+=3.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i4<1.0026252269744873){
  if(i18<0.0017239272128790617){
   if(i34<1.0739831924438477){
    if(i13<0.9958164691925049){
     s0+=4602.0;
     s1+=525.0;
    } else {
     s0+=23765.0;
     s1+=246.0;
    }
   } else {
    if(i38<0.0019277632236480713){
     s0+=52994.0;
     s1+=18.0;
    } else {
     s0+=7920.0;
     s1+=168.0;
    }
   }
  } else {
   if(i26<0.0009308744920417666){
    if(i31<0.001311183674260974){
     s0+=678.0;
     s1+=2499.0;
    } else {
     s0+=1668.0;
    }
   } else {
    if(i55<0.018787149339914322){
     s0+=18470.0;
     s1+=782.0;
    } else {
     s0+=176.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i50<0.045369960367679596){
   if(i34<1.0905089378356934){
    if(i28<1.067186713218689){
     s0+=710.0;
    } else {
     s0+=61.0;
     s1+=710.0;
    }
   } else {
    if(i67<0.0009598888573236763){
     s0+=2896.0;
     s1+=159.0;
    } else {
     s0+=189.0;
     s1+=288.0;
    }
   }
  } else {
   if(i16<0.06880638003349304){
    if(i22<1.0744121074676514){
     s0+=621.0;
     s1+=107.0;
    } else {
     s0+=193.0;
     s1+=370.0;
    }
   } else {
    if(i0<-7.429109246004373e-05){
     s0+=55.0;
     s1+=2623.0;
    } else {
     s0+=405.0;
     s1+=742.0;
    }
   }
  }
 }
} else {
 if(i26<0.0025599487125873566){
  if(i26<0.0009987999219447374){
   if(i43<0.9994650483131409){
    s0+=79.0;
   } else {
    s1+=1849.0;
   }
  } else {
   if(i58<0.04055074602365494){
    if(i8<1.016322135925293){
     s0+=762.0;
     s1+=11.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i41<-1.028951555781532e-05){
     s0+=12.0;
     s1+=35.0;
    } else {
     s0+=32.0;
    }
   }
  }
 } else {
  if(i1<-0.0006525516510009766){
   if(i34<1.21247398853302){
    if(i0<-6.574442522833124e-05){
     s1+=1.0;
    } else {
     s0+=153.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i19<-0.0019976794719696045){
    if(i7<0.008633285760879517){
     s0+=74.0;
    } else {
     s1+=81.0;
    }
   } else {
    if(i11<1.0199508666992188){
     s0+=77.0;
     s1+=679.0;
    } else {
     s0+=16.0;
     s1+=11992.0;
    }
   }
  }
 }
}
if(i1<0.0009763836860656738){
 if(i6<1.4007091522216797e-05){
  if(i50<0.42580705881118774){
   if(i24<1.024520754814148){
    if(i28<1.1162974834442139){
     s0+=27534.0;
     s1+=2375.0;
    } else {
     s0+=77624.0;
     s1+=838.0;
    }
   } else {
    if(i7<0.0052484022453427315){
     s0+=576.0;
     s1+=33.0;
    } else {
     s0+=17.0;
     s1+=262.0;
    }
   }
  } else {
   if(i23<0.04786109924316406){
    s0+=55.0;
   } else {
    s1+=148.0;
   }
  }
 } else {
  if(i58<0.028647292405366898){
   if(i18<0.002056935802102089){
    if(i61<0.004368245601654053){
     s0+=4812.0;
     s1+=87.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   } else {
    if(i35<1.0531964302062988){
     s0+=933.0;
    } else {
     s0+=1628.0;
     s1+=1405.0;
    }
   }
  } else {
   if(i5<0.9995226860046387){
    if(i40<-0.0003776138764806092){
     s0+=42.0;
     s1+=177.0;
    } else {
     s0+=791.0;
     s1+=52.0;
    }
   } else {
    if(i49<1.4881212337058969e-05){
     s0+=162.0;
     s1+=61.0;
    } else {
     s0+=436.0;
     s1+=2578.0;
    }
   }
  }
 }
} else {
 if(i39<0.01966874673962593){
  if(i27<1.0141500234603882){
   if(i26<0.0010868094395846128){
    if(i48<-3.1632821446692105e-06){
     s0+=53.0;
     s1+=18.0;
    } else {
     s1+=1110.0;
    }
   } else {
    if(i26<0.0023795897141098976){
     s0+=1783.0;
    } else {
     s0+=4.0;
     s1+=198.0;
    }
   }
  } else {
   if(i51<-3.803599247476086e-05){
    s0+=10.0;
   } else {
    if(i52<1.0010879039764404){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=1679.0;
    }
   }
  }
 } else {
  if(i48<-6.419467354135122e-06){
   if(i74<-0.00823664665222168){
    s1+=1.0;
   } else {
    s0+=40.0;
   }
  } else {
   if(i0<-8.518435060977936e-05){
    if(i64<0.9125299453735352){
     s0+=40.0;
     s1+=178.0;
    } else {
     s0+=9.0;
     s1+=11984.0;
    }
   } else {
    if(i66<0.0010265707969665527){
     s0+=128.0;
     s1+=536.0;
    } else {
     s0+=3.0;
     s1+=420.0;
    }
   }
  }
 }
}
if(i11<1.0135973691940308){
 if(i6<1.901388168334961e-05){
  if(i18<0.00157401361502707){
   if(i55<0.00037567116669379175){
    if(i35<1.0577976703643799){
     s0+=14628.0;
     s1+=3.0;
    } else {
     s0+=14999.0;
     s1+=505.0;
    }
   } else {
    if(i9<1.015373945236206){
     s0+=55503.0;
     s1+=181.0;
    } else {
     s0+=437.0;
     s1+=27.0;
    }
   }
  } else {
   if(i28<1.1164028644561768){
    if(i52<0.9999130964279175){
     s0+=1949.0;
     s1+=113.0;
    } else {
     s0+=299.0;
     s1+=2158.0;
    }
   } else {
    if(i29<1.1391856670379639){
     s0+=20189.0;
     s1+=805.0;
    } else {
     s0+=17.0;
     s1+=295.0;
    }
   }
  }
 } else {
  if(i46<0.0043503232300281525){
   if(i19<0.001134335994720459){
    if(i55<0.0001711997902020812){
     s0+=1859.0;
     s1+=94.0;
    } else {
     s0+=3490.0;
     s1+=1190.0;
    }
   } else {
    if(i30<0.0012537594884634018){
     s1+=776.0;
    } else {
     s0+=781.0;
     s1+=384.0;
    }
   }
  } else {
   if(i1<-8.33272933959961e-05){
    if(i40<-0.0005089142941869795){
     s0+=22.0;
     s1+=169.0;
    } else {
     s0+=594.0;
     s1+=118.0;
    }
   } else {
    if(i29<1.0293529033660889){
     s0+=192.0;
     s1+=183.0;
    } else {
     s0+=137.0;
     s1+=2716.0;
    }
   }
  }
 }
} else {
 if(i16<0.1766553819179535){
  if(i18<0.0013808307703584433){
   if(i1<0.0019414424896240234){
    if(i67<0.001050896244123578){
     s0+=589.0;
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=6.0;
    }
   } else {
    s1+=313.0;
   }
  } else {
   if(i15<0.0008651483221910894){
    if(i1<-0.0004928708076477051){
     s0+=123.0;
    } else {
     s0+=157.0;
     s1+=3255.0;
    }
   } else {
    s0+=317.0;
   }
  }
 } else {
  if(i0<-3.9342216041404754e-05){
   if(i63<1.717152917990461e-05){
    if(i0<-8.592745871283114e-05){
     s1+=10624.0;
    } else {
     s0+=13.0;
     s1+=437.0;
    }
   } else {
    s0+=1.0;
   }
  } else {
   if(i28<1.3000664710998535){
    if(i30<0.0019925821106880903){
     s0+=14.0;
    } else {
     s1+=95.0;
    }
   } else {
    if(i27<1.0010052919387817){
     s0+=75.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i64<1.0281920433044434){
 if(i33<0.00014966726303100586){
  if(i0<-0.00013423788186628371){
   if(i66<-0.009851038455963135){
    if(i26<0.01635541021823883){
     s0+=35.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i51<-6.0879861848661676e-05){
     s0+=21.0;
    } else {
     s1+=218.0;
    }
   }
  } else {
   if(i33<7.814168930053711e-05){
    if(i68<1.0003761053085327){
     s0+=53506.0;
     s1+=162.0;
    } else {
     s0+=23613.0;
     s1+=672.0;
    }
   } else {
    if(i49<2.627484718686901e-05){
     s0+=8935.0;
     s1+=123.0;
    } else {
     s0+=2839.0;
     s1+=987.0;
    }
   }
  }
 } else {
  if(i1<0.001189887523651123){
   if(i69<0.5003329515457153){
    if(i28<1.1162974834442139){
     s0+=4614.0;
     s1+=2067.0;
    } else {
     s0+=20176.0;
     s1+=2002.0;
    }
   } else {
    if(i22<1.0870429277420044){
     s0+=155.0;
     s1+=13.0;
    } else {
     s0+=53.0;
     s1+=739.0;
    }
   }
  } else {
   if(i27<1.014192819595337){
    if(i33<0.001150578260421753){
     s0+=478.0;
     s1+=2181.0;
    } else {
     s0+=626.0;
     s1+=81.0;
    }
   } else {
    if(i27<1.0146994590759277){
     s0+=11.0;
     s1+=83.0;
    } else {
     s0+=7.0;
     s1+=2581.0;
    }
   }
  }
 }
} else {
 if(i3<0.00026679039001464844){
  if(i18<0.005163493566215038){
   if(i0<-5.29832614120096e-05){
    if(i25<0.01783987320959568){
     s0+=44.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=79.0;
    }
   } else {
    if(i41<-6.638330887653865e-06){
     s0+=153.0;
     s1+=44.0;
    } else {
     s0+=639.0;
    }
   }
  } else {
   if(i23<0.15814673900604248){
    s0+=8.0;
   } else {
    s1+=203.0;
   }
  }
 } else {
  if(i7<0.004493329208344221){
   if(i2<0.00012958049774169922){
    if(i51<-9.233202945324592e-06){
     s0+=338.0;
     s1+=3.0;
    } else {
     s0+=50.0;
     s1+=89.0;
    }
   } else {
    if(i13<1.017240047454834){
     s0+=16.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=214.0;
    }
   }
  } else {
   if(i44<0.99842369556427){
    s0+=30.0;
   } else {
    if(i8<0.9926087260246277){
     s0+=80.0;
     s1+=148.0;
    } else {
     s0+=27.0;
     s1+=11695.0;
    }
   }
  }
 }
}
if(i3<0.0005647540092468262){
 if(i18<0.0017270520329475403){
  if(i34<1.0739831924438477){
   if(i34<1.0413599014282227){
    if(i67<0.00027673091972246766){
     s0+=17084.0;
     s1+=74.0;
    } else {
     s0+=3003.0;
     s1+=126.0;
    }
   } else {
    if(i49<3.611585998442024e-05){
     s0+=5499.0;
     s1+=40.0;
    } else {
     s0+=2876.0;
     s1+=544.0;
    }
   }
  } else {
   if(i30<0.00190553511492908){
    if(i29<1.008610725402832){
     s0+=543.0;
     s1+=10.0;
    } else {
     s0+=51544.0;
     s1+=2.0;
    }
   } else {
    if(i43<1.0010907649993896){
     s0+=7772.0;
     s1+=52.0;
    } else {
     s0+=1255.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i28<1.1164028644561768){
   if(i28<1.056142807006836){
    s0+=1640.0;
   } else {
    if(i4<0.9995322227478027){
     s0+=312.0;
     s1+=114.0;
    } else {
     s0+=72.0;
     s1+=2224.0;
    }
   }
  } else {
   if(i23<0.19518575072288513){
    if(i13<1.0136393308639526){
     s0+=17947.0;
     s1+=751.0;
    } else {
     s0+=97.0;
     s1+=135.0;
    }
   } else {
    if(i58<0.048882126808166504){
     s0+=127.0;
     s1+=80.0;
    } else {
     s0+=27.0;
     s1+=654.0;
    }
   }
  }
 }
} else {
 if(i0<-6.923055480001494e-05){
  if(i23<0.042520344257354736){
   if(i78<-0.07766726613044739){
    if(i22<1.0720906257629395){
     s0+=67.0;
     s1+=16.0;
    } else {
     s0+=64.0;
     s1+=158.0;
    }
   } else {
    if(i27<1.01183021068573){
     s0+=400.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  } else {
   if(i7<0.0044851540587842464){
    if(i1<0.0025175809860229492){
     s0+=387.0;
     s1+=64.0;
    } else {
     s1+=527.0;
    }
   } else {
    if(i15<0.00070473353844136){
     s0+=160.0;
     s1+=15491.0;
    } else {
     s0+=143.0;
    }
   }
  }
 } else {
  if(i7<0.0034549408592283726){
   if(i19<0.0012875199317932129){
    if(i19<0.0011529922485351562){
     s0+=3880.0;
     s1+=10.0;
    } else {
     s0+=200.0;
     s1+=30.0;
    }
   } else {
    if(i42<0.07597437500953674){
     s0+=73.0;
     s1+=370.0;
    } else {
     s0+=271.0;
     s1+=11.0;
    }
   }
  } else {
   if(i28<1.1180615425109863){
    if(i52<1.0002621412277222){
     s0+=25.0;
    } else {
     s0+=7.0;
     s1+=1300.0;
    }
   } else {
    if(i29<1.0907714366912842){
     s0+=980.0;
     s1+=354.0;
    } else {
     s0+=251.0;
     s1+=806.0;
    }
   }
  }
 }
}
if(i3<0.0005717873573303223){
 if(i12<1.018277645111084){
  if(i0<-0.00012773873459082097){
   if(i40<-0.000504638534039259){
    if(i35<1.1910102367401123){
     s0+=28.0;
    } else {
     s0+=7.0;
     s1+=225.0;
    }
   } else {
    if(i35<1.5726749897003174){
     s0+=68.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=21.0;
    }
   }
  } else {
   if(i25<0.006601131521165371){
    if(i18<0.0010181060060858727){
     s0+=56916.0;
     s1+=146.0;
    } else {
     s0+=10966.0;
     s1+=366.0;
    }
   } else {
    if(i3<-6.136298179626465e-05){
     s0+=35262.0;
     s1+=628.0;
    } else {
     s0+=5952.0;
     s1+=2769.0;
    }
   }
  }
 } else {
  if(i1<0.00035506486892700195){
   if(i18<0.00275602238252759){
    if(i25<0.03136454522609711){
     s0+=529.0;
     s1+=40.0;
    } else {
     s0+=30.0;
     s1+=30.0;
    }
   } else {
    if(i2<-1.7523765563964844e-05){
     s0+=67.0;
     s1+=130.0;
    } else {
     s0+=10.0;
     s1+=242.0;
    }
   }
  } else {
   if(i45<1.7079323697544169e-06){
    if(i20<0.0003638267517089844){
     s0+=68.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i15<0.0012784249847754836){
     s0+=2.0;
     s1+=398.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
} else {
 if(i16<0.15631204843521118){
  if(i27<1.0122957229614258){
   if(i40<-0.00021947796631138772){
    if(i38<0.0012238598428666592){
     s0+=12.0;
     s1+=832.0;
    } else {
     s0+=1127.0;
     s1+=1287.0;
    }
   } else {
    if(i49<-2.05004198505776e-05){
     s0+=164.0;
     s1+=427.0;
    } else {
     s0+=4856.0;
     s1+=1035.0;
    }
   }
  } else {
   if(i33<0.0012649893760681152){
    if(i44<1.00270676612854){
     s0+=15.0;
     s1+=2192.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    if(i1<0.003392338752746582){
     s0+=189.0;
    } else {
     s1+=53.0;
    }
   }
  }
 } else {
  if(i32<1.17277193069458){
   if(i48<-3.1375916478282306e-06){
    s0+=267.0;
   } else {
    if(i25<0.012640210799872875){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   }
  } else {
   if(i0<-4.972671013092622e-05){
    if(i22<1.052932858467102){
     s0+=5.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=12894.0;
    }
   } else {
    if(i7<0.007290111854672432){
     s0+=74.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=356.0;
    }
   }
  }
 }
}
if(i0<-9.841316204983741e-05){
 if(i1<2.2292137145996094e-05){
  if(i42<0.07296636700630188){
   if(i74<-0.010025650262832642){
    if(i16<0.006112903356552124){
     s0+=39.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   } else {
    if(i38<0.01330766174942255){
     s0+=123.0;
     s1+=44.0;
    } else {
     s0+=364.0;
     s1+=3.0;
    }
   }
  } else {
   if(i51<-6.198038317961618e-05){
    s0+=13.0;
   } else {
    if(i20<-0.0009017288684844971){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=521.0;
    }
   }
  }
 } else {
  if(i48<-6.4529062910878565e-06){
   s0+=237.0;
  } else {
   if(i23<0.03517565131187439){
    if(i66<-0.003919512033462524){
     s0+=149.0;
     s1+=34.0;
    } else {
     s0+=9.0;
     s1+=72.0;
    }
   } else {
    if(i18<0.012226291000843048){
     s0+=22.0;
     s1+=14841.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i6<1.6391277313232422e-05){
  if(i3<0.0002085566520690918){
   if(i28<1.116391897201538){
    if(i50<0.011609818786382675){
     s0+=16656.0;
     s1+=240.0;
    } else {
     s0+=10132.0;
     s1+=1555.0;
    }
   } else {
    if(i24<1.0245273113250732){
     s0+=71660.0;
     s1+=458.0;
    } else {
     s0+=520.0;
     s1+=102.0;
    }
   }
  } else {
   if(i59<0.0003371760540176183){
    if(i31<0.001189611037261784){
     s0+=748.0;
     s1+=736.0;
    } else {
     s0+=872.0;
     s1+=3.0;
    }
   } else {
    if(i45<7.256319349835394e-06){
     s0+=5471.0;
     s1+=2.0;
    } else {
     s0+=931.0;
     s1+=452.0;
    }
   }
  }
 } else {
  if(i1<0.0012539029121398926){
   if(i61<0.0015360713005065918){
    if(i49<2.6836552933673374e-05){
     s0+=5343.0;
     s1+=510.0;
    } else {
     s0+=1665.0;
     s1+=1246.0;
    }
   } else {
    if(i30<0.0012971623800694942){
     s0+=2.0;
     s1+=684.0;
    } else {
     s0+=700.0;
     s1+=563.0;
    }
   }
  } else {
   if(i53<1.9371509552001953e-05){
    if(i15<0.00040970410918816924){
     s1+=2042.0;
    } else {
     s0+=349.0;
     s1+=43.0;
    }
   } else {
    if(i30<0.00501577602699399){
     s0+=557.0;
    } else {
     s1+=61.0;
    }
   }
  }
 }
}
if(i12<1.016714334487915){
 if(i22<1.1402318477630615){
  if(i2<6.574392318725586e-05){
   if(i38<0.0010562636889517307){
    if(i18<0.0016012946143746376){
     s0+=30087.0;
     s1+=623.0;
    } else {
     s0+=2615.0;
     s1+=2699.0;
    }
   } else {
    if(i43<1.0070044994354248){
     s0+=77877.0;
     s1+=1378.0;
    } else {
     s0+=1281.0;
     s1+=456.0;
    }
   }
  } else {
   if(i26<0.0009702016250230372){
    if(i5<1.005252718925476){
     s0+=41.0;
     s1+=66.0;
    } else {
     s1+=1134.0;
    }
   } else {
    if(i35<1.176405668258667){
     s0+=1310.0;
    } else {
     s0+=68.0;
     s1+=1263.0;
    }
   }
  }
 } else {
  if(i26<0.0025681916158646345){
   if(i50<0.25963789224624634){
    s0+=782.0;
   } else {
    if(i25<0.04049639031291008){
     s0+=58.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i27<0.9850355982780457){
    if(i0<-5.732093268306926e-05){
     s0+=23.0;
     s1+=111.0;
    } else {
     s0+=83.0;
     s1+=6.0;
    }
   } else {
    if(i41<-1.35130321723409e-05){
     s0+=66.0;
     s1+=2252.0;
    } else {
     s0+=55.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i23<0.1693868637084961){
  if(i26<0.001001110766083002){
   if(i4<1.000091552734375){
    s0+=90.0;
   } else {
    s1+=1600.0;
   }
  } else {
   if(i34<1.1422208547592163){
    if(i67<-0.0010290417121723294){
     s1+=5.0;
    } else {
     s0+=1041.0;
     s1+=31.0;
    }
   } else {
    if(i8<1.0133326053619385){
     s0+=582.0;
     s1+=312.0;
    } else {
     s0+=9.0;
     s1+=647.0;
    }
   }
  }
 } else {
  if(i11<1.0226750373840332){
   if(i35<1.1729364395141602){
    if(i34<1.094316005706787){
     s1+=10.0;
    } else {
     s0+=84.0;
     s1+=2.0;
    }
   } else {
    if(i7<0.005011753179132938){
     s0+=113.0;
     s1+=81.0;
    } else {
     s0+=9.0;
     s1+=1394.0;
    }
   }
  } else {
   if(i5<1.0016472339630127){
    if(i60<1.1744379997253418){
     s0+=35.0;
     s1+=24.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i36<1.6501121520996094){
     s0+=1.0;
     s1+=10364.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i3<0.0005872845649719238){
 if(i16<0.2173374891281128){
  if(i8<1.0060362815856934){
   if(i26<0.0008847030694596469){
    if(i23<0.05946376919746399){
     s0+=29587.0;
     s1+=1690.0;
    } else {
     s0+=1214.0;
     s1+=1118.0;
    }
   } else {
    if(i22<1.122455358505249){
     s0+=75586.0;
     s1+=658.0;
    } else {
     s0+=2121.0;
     s1+=477.0;
    }
   }
  } else {
   if(i37<0.0010638658422976732){
    if(i32<1.0473589897155762){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=341.0;
    }
   } else {
    if(i17<1.0166698694229126){
     s0+=1047.0;
     s1+=65.0;
    } else {
     s0+=289.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i18<0.0024604846257716417){
   if(i51<-6.758959898434114e-06){
    s1+=17.0;
   } else {
    if(i3<3.7610530853271484e-05){
     s0+=114.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<5.146612238604575e-06){
    if(i32<1.2320208549499512){
     s0+=5.0;
     s1+=49.0;
    } else {
     s1+=571.0;
    }
   } else {
    s0+=5.0;
   }
  }
 }
} else {
 if(i40<-0.00025163605459965765){
  if(i14<0.07218343019485474){
   if(i69<0.17151403427124023){
    if(i32<1.1180615425109863){
     s0+=17.0;
     s1+=87.0;
    } else {
     s0+=412.0;
     s1+=78.0;
    }
   } else {
    if(i29<1.0570924282073975){
     s0+=58.0;
     s1+=51.0;
    } else {
     s0+=10.0;
     s1+=182.0;
    }
   }
  } else {
   if(i34<1.170027494430542){
    if(i72<1.262292244064156e-06){
     s0+=299.0;
     s1+=1922.0;
    } else {
     s0+=145.0;
     s1+=10.0;
    }
   } else {
    if(i31<0.004030384123325348){
     s0+=66.0;
     s1+=12847.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i1<0.00212782621383667){
   if(i15<0.00029516476206481457){
    if(i20<-0.0001965165138244629){
     s0+=549.0;
     s1+=176.0;
    } else {
     s0+=160.0;
     s1+=1480.0;
    }
   } else {
    if(i30<0.005849014036357403){
     s0+=4332.0;
     s1+=54.0;
    } else {
     s0+=340.0;
     s1+=250.0;
    }
   }
  } else {
   if(i52<1.0014793872833252){
    if(i50<0.053876668214797974){
     s0+=61.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i48<-7.1230160756385885e-06){
     s0+=4.0;
    } else {
     s1+=1973.0;
    }
   }
  }
 }
}
if(i16<0.18658897280693054){
 if(i0<-7.861674384912476e-05){
  if(i16<0.0216505229473114){
   if(i66<-0.005471855401992798){
    if(i44<1.0025006532669067){
     s0+=833.0;
     s1+=43.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i45<1.2161481208750047e-06){
     s1+=75.0;
    } else {
     s0+=90.0;
     s1+=64.0;
    }
   }
  } else {
   if(i44<0.9991961717605591){
    if(i46<0.00851094163954258){
     s0+=474.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i13<0.922492504119873){
     s0+=132.0;
     s1+=30.0;
    } else {
     s0+=304.0;
     s1+=4417.0;
    }
   }
  }
 } else {
  if(i21<1.0036087036132812){
   if(i34<1.0902695655822754){
    if(i18<0.001720347674563527){
     s0+=33876.0;
     s1+=767.0;
    } else {
     s0+=4286.0;
     s1+=2604.0;
    }
   } else {
    if(i11<1.0152356624603271){
     s0+=70139.0;
     s1+=836.0;
    } else {
     s0+=302.0;
     s1+=127.0;
    }
   }
  } else {
   if(i55<0.0007860945770516992){
    if(i37<0.0001891979918582365){
     s0+=857.0;
    } else {
     s0+=277.0;
     s1+=1330.0;
    }
   } else {
    if(i37<0.0018783374689519405){
     s0+=3648.0;
     s1+=111.0;
    } else {
     s0+=566.0;
     s1+=773.0;
    }
   }
  }
 }
} else {
 if(i51<-3.928325440938352e-06){
  if(i0<-3.1838011636864394e-05){
   if(i37<0.001785102067515254){
    if(i5<1.0231550931930542){
     s0+=37.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i40<-0.00027204080834053457){
     s0+=6.0;
     s1+=11653.0;
    } else {
     s0+=27.0;
     s1+=1198.0;
    }
   }
  } else {
   if(i46<0.0041977642104029655){
    if(i76<0.09168612957000732){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=164.0;
     s1+=15.0;
    }
   } else {
    if(i7<0.007244926877319813){
     s0+=42.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i41<-1.0238392860628664e-05){
   if(i28<1.2318363189697266){
    s0+=11.0;
   } else {
    if(i45<1.0655372534529306e-05){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i41<-5.929047347308369e-06){
    if(i77<0.04197800159454346){
     s0+=52.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=448.0;
   }
  }
 }
}
if(i9<1.0177363157272339){
 if(i2<7.31348991394043e-05){
  if(i18<0.0017907512374222279){
   if(i37<0.0004582068359013647){
    if(i61<-0.0006299614906311035){
     s0+=1463.0;
     s1+=465.0;
    } else {
     s0+=22596.0;
     s1+=313.0;
    }
   } else {
    if(i30<0.0019173967884853482){
     s0+=56175.0;
     s1+=38.0;
    } else {
     s0+=12031.0;
     s1+=208.0;
    }
   }
  } else {
   if(i29<1.1300909519195557){
    if(i32<1.0906792879104614){
     s0+=2220.0;
     s1+=2208.0;
    } else {
     s0+=19404.0;
     s1+=2153.0;
    }
   } else {
    if(i59<0.003393198363482952){
     s0+=119.0;
     s1+=138.0;
    } else {
     s0+=40.0;
     s1+=890.0;
    }
   }
  }
 } else {
  if(i1<0.002158224582672119){
   if(i48<-8.303065442305524e-06){
    s0+=437.0;
   } else {
    if(i32<1.1706266403198242){
     s0+=614.0;
     s1+=810.0;
    } else {
     s0+=78.0;
     s1+=1088.0;
    }
   }
  } else {
   if(i34<1.1145076751708984){
    if(i8<1.0106911659240723){
     s0+=33.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=327.0;
    }
   } else {
    s1+=1577.0;
   }
  }
 }
} else {
 if(i51<-3.80959818357951e-06){
  if(i5<1.0102424621582031){
   if(i25<0.007518364582210779){
    if(i63<-5.079409675090574e-06){
     s0+=31.0;
     s1+=210.0;
    } else {
     s0+=445.0;
     s1+=200.0;
    }
   } else {
    if(i48<-5.563721060752869e-06){
     s0+=35.0;
    } else {
     s0+=409.0;
     s1+=4141.0;
    }
   }
  } else {
   s1+=9422.0;
  }
 } else {
  if(i0<-7.782099419273436e-05){
   s1+=6.0;
  } else {
   if(i68<1.0015878677368164){
    s0+=490.0;
   } else {
    if(i0<-1.2423717635101639e-05){
     s1+=13.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
}
if(i8<1.0127238035202026){
 if(i6<1.901388168334961e-05){
  if(i22<1.122455358505249){
   if(i30<0.0010582541581243277){
    if(i31<0.0007353561231866479){
     s0+=28614.0;
     s1+=383.0;
    } else {
     s0+=1971.0;
     s1+=2393.0;
    }
   } else {
    if(i42<0.22219374775886536){
     s0+=75550.0;
     s1+=681.0;
    } else {
     s0+=2.0;
     s1+=30.0;
    }
   }
  } else {
   if(i18<0.002627231879159808){
    if(i43<1.0014711618423462){
     s0+=1935.0;
     s1+=16.0;
    } else {
     s0+=427.0;
     s1+=97.0;
    }
   } else {
    if(i50<0.12969288229942322){
     s0+=251.0;
     s1+=140.0;
    } else {
     s0+=35.0;
     s1+=534.0;
    }
   }
  }
 } else {
  if(i58<0.04012976214289665){
   if(i45<-9.244900866178796e-06){
    if(i29<1.0773653984069824){
     s0+=43.0;
     s1+=594.0;
    } else {
     s0+=157.0;
     s1+=62.0;
    }
   } else {
    if(i50<0.042332328855991364){
     s0+=5543.0;
     s1+=1092.0;
    } else {
     s0+=1122.0;
     s1+=935.0;
    }
   }
  } else {
   if(i1<-0.00016677379608154297){
    if(i55<0.011410150676965714){
     s0+=483.0;
     s1+=115.0;
    } else {
     s0+=22.0;
     s1+=133.0;
    }
   } else {
    if(i19<-0.0038930773735046387){
     s0+=104.0;
     s1+=171.0;
    } else {
     s0+=132.0;
     s1+=3629.0;
    }
   }
  }
 }
} else {
 if(i8<1.0144739151000977){
  if(i48<-4.119735422136728e-06){
   if(i25<0.020298505201935768){
    s0+=235.0;
   } else {
    s1+=20.0;
   }
  } else {
   if(i0<-7.408377132378519e-05){
    s1+=392.0;
   } else {
    if(i28<1.4586446285247803){
     s0+=30.0;
     s1+=250.0;
    } else {
     s0+=54.0;
    }
   }
  }
 } else {
  if(i48<-6.00209750700742e-06){
   if(i21<1.0147802829742432){
    s0+=73.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i51<-2.521836449886905e-06){
    if(i7<0.0012614671140909195){
     s0+=2.0;
     s1+=49.0;
    } else {
     s1+=12350.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i13<1.0143203735351562){
 if(i0<-8.658624574309215e-05){
  if(i29<1.0274627208709717){
   if(i4<1.0052189826965332){
    if(i11<0.998149037361145){
     s0+=806.0;
     s1+=50.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i13<0.9258891344070435){
     s0+=26.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=136.0;
    }
   }
  } else {
   if(i26<0.0023723160848021507){
    if(i28<1.1180615425109863){
     s1+=113.0;
    } else {
     s0+=240.0;
    }
   } else {
    if(i56<-0.00041027902625501156){
     s0+=59.0;
     s1+=2681.0;
    } else {
     s0+=132.0;
     s1+=676.0;
    }
   }
  }
 } else {
  if(i3<0.0003268122673034668){
   if(i4<0.9994515180587769){
    if(i78<0.15990185737609863){
     s0+=51785.0;
     s1+=263.0;
    } else {
     s0+=33.0;
     s1+=20.0;
    }
   } else {
    if(i28<1.116391897201538){
     s0+=11580.0;
     s1+=1984.0;
    } else {
     s0+=40582.0;
     s1+=581.0;
    }
   }
  } else {
   if(i58<0.03202596306800842){
    if(i19<0.0011355280876159668){
     s0+=8566.0;
     s1+=1315.0;
    } else {
     s0+=544.0;
     s1+=802.0;
    }
   } else {
    if(i5<0.9993845224380493){
     s0+=584.0;
     s1+=111.0;
    } else {
     s0+=391.0;
     s1+=1165.0;
    }
   }
  }
 }
} else {
 if(i14<0.17535904049873352){
  if(i28<1.1180615425109863){
   s1+=1691.0;
  } else {
   if(i20<0.00029605627059936523){
    if(i25<0.015122180804610252){
     s0+=796.0;
     s1+=95.0;
    } else {
     s0+=197.0;
     s1+=404.0;
    }
   } else {
    if(i28<1.1719775199890137){
     s0+=35.0;
    } else {
     s1+=841.0;
    }
   }
  }
 } else {
  if(i15<0.0007461918867193162){
   if(i1<0.00025406479835510254){
    if(i39<0.10238050669431686){
     s0+=114.0;
     s1+=104.0;
    } else {
     s1+=122.0;
    }
   } else {
    if(i26<0.002023953478783369){
     s0+=12.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=11121.0;
    }
   }
  } else {
   s0+=49.0;
  }
 }
}
if(i13<1.0137542486190796){
 if(i7<0.014062732458114624){
  if(i6<1.8298625946044922e-05){
   if(i33<7.075071334838867e-05){
    if(i50<0.520767331123352){
     s0+=76256.0;
     s1+=776.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i39<0.012193161994218826){
     s0+=18410.0;
     s1+=414.0;
    } else {
     s0+=12922.0;
     s1+=2420.0;
    }
   }
  } else {
   if(i35<1.056142807006836){
    s0+=1902.0;
   } else {
    if(i38<0.000977544579654932){
     s0+=16.0;
     s1+=1434.0;
    } else {
     s0+=4798.0;
     s1+=1608.0;
    }
   }
  }
 } else {
  if(i8<0.9706064462661743){
   if(i25<0.061080202460289){
    if(i3<0.001666724681854248){
     s0+=891.0;
     s1+=53.0;
    } else {
     s0+=18.0;
     s1+=41.0;
    }
   } else {
    if(i39<0.09495890140533447){
     s0+=43.0;
     s1+=5.0;
    } else {
     s0+=40.0;
     s1+=173.0;
    }
   }
  } else {
   if(i13<0.9359695315361023){
    if(i23<0.018274754285812378){
     s0+=46.0;
     s1+=18.0;
    } else {
     s0+=8.0;
     s1+=74.0;
    }
   } else {
    if(i37<0.00515281967818737){
     s0+=11.0;
     s1+=122.0;
    } else {
     s0+=12.0;
     s1+=2579.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013942306395620108){
  if(i0<-8.057779632508755e-05){
   if(i52<1.0015499591827393){
    s0+=7.0;
   } else {
    if(i68<1.0028305053710938){
     s0+=6.0;
     s1+=441.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i46<0.0008718720637261868){
    s1+=81.0;
   } else {
    if(i45<1.112868994823657e-05){
     s0+=713.0;
    } else {
     s0+=9.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i0<-7.376149005722255e-05){
   if(i31<0.0039024429861456156){
    if(i37<0.0019340290455147624){
     s0+=105.0;
     s1+=887.0;
    } else {
     s0+=12.0;
     s1+=11692.0;
    }
   } else {
    if(i59<0.012687225826084614){
     s0+=31.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i68<1.003832221031189){
    if(i46<0.000977951567620039){
     s0+=9.0;
     s1+=610.0;
    } else {
     s0+=246.0;
     s1+=569.0;
    }
   } else {
    if(i4<1.0076866149902344){
     s0+=265.0;
     s1+=29.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
}
if(i12<1.016648530960083){
 if(i22<1.1402404308319092){
  if(i1<0.0010300874710083008){
   if(i57<0.05326871946454048){
    if(i25<0.006637009792029858){
     s0+=67172.0;
     s1+=544.0;
    } else {
     s0+=30249.0;
     s1+=2650.0;
    }
   } else {
    if(i40<-0.00013857695739716291){
     s0+=2879.0;
     s1+=1170.0;
    } else {
     s0+=12048.0;
     s1+=672.0;
    }
   }
  } else {
   if(i32<1.1706266403198242){
    if(i34<1.0905089378356934){
     s0+=17.0;
     s1+=928.0;
    } else {
     s0+=1139.0;
     s1+=208.0;
    }
   } else {
    if(i44<1.0003492832183838){
     s0+=33.0;
     s1+=43.0;
    } else {
     s0+=24.0;
     s1+=1179.0;
    }
   }
  }
 } else {
  if(i50<0.15754714608192444){
   if(i5<1.007931113243103){
    if(i7<0.010146322660148144){
     s0+=777.0;
     s1+=13.0;
    } else {
     s0+=62.0;
     s1+=44.0;
    }
   } else {
    s1+=315.0;
   }
  } else {
   if(i31<0.000564893358387053){
    s0+=146.0;
   } else {
    if(i17<0.9086297750473022){
     s0+=39.0;
     s1+=136.0;
    } else {
     s0+=15.0;
     s1+=1794.0;
    }
   }
  }
 }
} else {
 if(i0<-6.664246029686183e-05){
  if(i63<1.7521997506264597e-05){
   if(i51<-3.205633902325644e-06){
    if(i7<0.004329198971390724){
     s0+=164.0;
     s1+=405.0;
    } else {
     s0+=69.0;
     s1+=12959.0;
    }
   } else {
    s0+=37.0;
   }
  } else {
   s0+=44.0;
  }
 } else {
  if(i34<1.090468406677246){
   if(i41<-6.68509255774552e-06){
    s1+=611.0;
   } else {
    s0+=4.0;
   }
  } else {
   if(i25<0.028863297775387764){
    if(i20<-0.000478595495223999){
     s0+=7.0;
     s1+=32.0;
    } else {
     s0+=1474.0;
     s1+=141.0;
    }
   } else {
    if(i2<-1.6033649444580078e-05){
     s0+=123.0;
     s1+=23.0;
    } else {
     s0+=37.0;
     s1+=434.0;
    }
   }
  }
 }
}
if(i55<0.001955987885594368){
 if(i11<1.0136241912841797){
  if(i19<0.0011218786239624023){
   if(i18<0.0017301308689638972){
    if(i30<0.0006168958498165011){
     s0+=27859.0;
     s1+=720.0;
    } else {
     s0+=60267.0;
     s1+=100.0;
    }
   } else {
    if(i35<1.1164028644561768){
     s0+=2996.0;
     s1+=2595.0;
    } else {
     s0+=11811.0;
     s1+=459.0;
    }
   }
  } else {
   if(i66<-0.00033164024353027344){
    if(i45<-4.968217581335921e-06){
     s0+=2.0;
     s1+=421.0;
    } else {
     s0+=19.0;
     s1+=4.0;
    }
   } else {
    if(i30<0.0011361247161403298){
     s0+=9.0;
     s1+=584.0;
    } else {
     s0+=1347.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i18<0.0013938674237579107){
   if(i1<0.0019731521606445312){
    if(i45<1.1289371286693495e-05){
     s0+=483.0;
    } else {
     s0+=10.0;
     s1+=3.0;
    }
   } else {
    s1+=305.0;
   }
  } else {
   if(i52<1.0003812313079834){
    s0+=86.0;
   } else {
    if(i7<0.0034947870299220085){
     s0+=274.0;
     s1+=153.0;
    } else {
     s0+=108.0;
     s1+=5161.0;
    }
   }
  }
 }
} else {
 if(i5<1.0012723207473755){
  if(i25<0.05643085390329361){
   if(i42<0.16222721338272095){
    if(i5<0.9974022507667542){
     s0+=6750.0;
     s1+=158.0;
    } else {
     s0+=2792.0;
     s1+=483.0;
    }
   } else {
    if(i30<0.004080618731677532){
     s0+=276.0;
     s1+=66.0;
    } else {
     s0+=109.0;
     s1+=183.0;
    }
   }
  } else {
   if(i36<1.1163756847381592){
    if(i41<-4.097677447134629e-05){
     s1+=3.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i23<0.04102051258087158){
     s0+=58.0;
     s1+=51.0;
    } else {
     s0+=15.0;
     s1+=659.0;
    }
   }
  }
 } else {
  if(i38<0.0019566479604691267){
   if(i46<0.0023662711028009653){
    if(i32<1.091684103012085){
     s1+=9.0;
    } else {
     s0+=356.0;
     s1+=2.0;
    }
   } else {
    if(i0<-2.7072939701611176e-05){
     s1+=15.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i36<1.1269601583480835){
    if(i49<8.869558951118961e-05){
     s0+=30.0;
     s1+=161.0;
    } else {
     s0+=280.0;
     s1+=298.0;
    }
   } else {
    if(i71<-0.011527419090270996){
     s0+=109.0;
     s1+=742.0;
    } else {
     s0+=137.0;
     s1+=11115.0;
    }
   }
  }
 }
}
if(i16<0.1875152289867401){
 if(i3<0.0005145668983459473){
  if(i28<1.1162974834442139){
   if(i6<9.238719940185547e-06){
    if(i35<1.0577976703643799){
     s0+=16068.0;
     s1+=7.0;
    } else {
     s0+=10820.0;
     s1+=1882.0;
    }
   } else {
    if(i15<0.00028005961212329566){
     s0+=550.0;
     s1+=1093.0;
    } else {
     s0+=1037.0;
    }
   }
  } else {
   if(i0<-7.645013829460368e-05){
    if(i13<0.9306183457374573){
     s0+=723.0;
     s1+=76.0;
    } else {
     s0+=312.0;
     s1+=246.0;
    }
   } else {
    if(i57<0.061061181128025055){
     s0+=69206.0;
     s1+=289.0;
    } else {
     s0+=9293.0;
     s1+=388.0;
    }
   }
  }
 } else {
  if(i0<-6.837258843006566e-05){
   if(i48<-6.2110893850331195e-06){
    if(i69<0.41521865129470825){
     s0+=403.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i5<1.0027326345443726){
     s0+=593.0;
     s1+=375.0;
    } else {
     s0+=318.0;
     s1+=4492.0;
    }
   }
  } else {
   if(i28<1.116804838180542){
    if(i37<0.00019874749705195427){
     s0+=1753.0;
    } else {
     s0+=47.0;
     s1+=1742.0;
    }
   } else {
    if(i47<0.9749029278755188){
     s0+=331.0;
     s1+=326.0;
    } else {
     s0+=4183.0;
     s1+=447.0;
    }
   }
  }
 }
} else {
 if(i26<0.00256150308996439){
  if(i51<-4.538197117653908e-06){
   if(i30<0.002084908541291952){
    s0+=90.0;
   } else {
    if(i36<1.102842092514038){
     s0+=13.0;
     s1+=3.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i49<8.839175279717892e-05){
    if(i39<0.03033842332661152){
     s0+=344.0;
    } else {
     s0+=93.0;
     s1+=1.0;
    }
   } else {
    if(i15<0.0002457860391587019){
     s1+=2.0;
    } else {
     s0+=20.0;
    }
   }
  }
 } else {
  if(i5<0.9976727962493896){
   if(i69<0.16292062401771545){
    if(i65<0.0017065339488908648){
     s0+=129.0;
     s1+=11.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i58<0.029355725273489952){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=194.0;
    }
   }
  } else {
   if(i1<-0.0004239082336425781){
    if(i32<1.2320208549499512){
     s0+=49.0;
     s1+=16.0;
    } else {
     s1+=106.0;
    }
   } else {
    if(i25<0.0008994628442451358){
     s0+=1.0;
    } else {
     s0+=22.0;
     s1+=12680.0;
    }
   }
  }
 }
}
if(i1<0.0009595751762390137){
 if(i16<0.19977480173110962){
  if(i18<0.0017374479211866856){
   if(i18<0.0012834423687309027){
    if(i35<1.0776758193969727){
     s0+=18120.0;
     s1+=233.0;
    } else {
     s0+=63353.0;
     s1+=156.0;
    }
   } else {
    if(i52<0.9997913241386414){
     s0+=5914.0;
     s1+=49.0;
    } else {
     s0+=3908.0;
     s1+=612.0;
    }
   }
  } else {
   if(i30<0.0012182306963950396){
    if(i15<0.00027027068426832557){
     s0+=535.0;
     s1+=2976.0;
    } else {
     s0+=1853.0;
     s1+=10.0;
    }
   } else {
    if(i2<2.4437904357910156e-06){
     s0+=19250.0;
     s1+=848.0;
    } else {
     s0+=1209.0;
     s1+=1434.0;
    }
   }
  }
 } else {
  if(i0<-3.501928586047143e-05){
   if(i58<0.016009405255317688){
    if(i22<1.1326383352279663){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i18<0.0011672130785882473){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=1423.0;
    }
   }
  } else {
   if(i7<0.00752122700214386){
    if(i43<1.0046701431274414){
     s0+=313.0;
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=10.0;
    }
   } else {
    if(i51<7.470484888472129e-07){
     s1+=116.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i11<1.0186108350753784){
  if(i33<0.0007594823837280273){
   if(i8<0.9753194451332092){
    if(i23<0.0338921844959259){
     s0+=43.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i5<1.0052658319473267){
     s0+=187.0;
     s1+=329.0;
    } else {
     s0+=106.0;
     s1+=3002.0;
    }
   }
  } else {
   if(i25<0.013050196692347527){
    if(i48<-2.9780962904624175e-06){
     s0+=1657.0;
     s1+=13.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=25.0;
     s1+=1033.0;
    } else {
     s0+=31.0;
    }
   }
  }
 } else {
  if(i6<-5.677342414855957e-05){
   s0+=9.0;
  } else {
   if(i40<-0.00028205744456499815){
    if(i53<-0.0001233816146850586){
     s0+=5.0;
    } else {
     s0+=13.0;
     s1+=10854.0;
    }
   } else {
    if(i18<0.001040773349814117){
     s0+=33.0;
     s1+=74.0;
    } else {
     s0+=23.0;
     s1+=938.0;
    }
   }
  }
 }
}
if(i1<0.0009595751762390137){
 if(i16<0.20151346921920776){
  if(i33<0.00010401010513305664){
   if(i30<0.0010352612007409334){
    if(i18<0.0017270202515646815){
     s0+=26434.0;
     s1+=582.0;
    } else {
     s0+=618.0;
     s1+=458.0;
    }
   } else {
    if(i12<1.0223418474197388){
     s0+=54767.0;
     s1+=118.0;
    } else {
     s0+=138.0;
     s1+=62.0;
    }
   }
  } else {
   if(i18<0.0017198332352563739){
    if(i13<1.017325520515442){
     s0+=18183.0;
     s1+=399.0;
    } else {
     s0+=12.0;
     s1+=28.0;
    }
   } else {
    if(i1<-0.0003871321678161621){
     s0+=10557.0;
     s1+=593.0;
    } else {
     s0+=3536.0;
     s1+=4233.0;
    }
   }
  }
 } else {
  if(i25<0.03057181090116501){
   if(i6<1.195073127746582e-05){
    if(i33<8.392333984375e-05){
     s0+=167.0;
    } else {
     s0+=80.0;
     s1+=35.0;
    }
   } else {
    if(i26<0.001930092927068472){
     s0+=22.0;
    } else {
     s0+=16.0;
     s1+=103.0;
    }
   }
  } else {
   if(i60<1.5850050449371338){
    if(i52<1.00400972366333){
     s0+=9.0;
     s1+=1342.0;
    } else {
     s0+=20.0;
     s1+=135.0;
    }
   } else {
    if(i25<0.12485167384147644){
     s0+=20.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i9<1.0230002403259277){
  if(i28<1.1979892253875732){
   if(i35<1.116804838180542){
    if(i35<1.0545791387557983){
     s0+=71.0;
    } else {
     s0+=75.0;
     s1+=1769.0;
    }
   } else {
    s0+=1786.0;
   }
  } else {
   if(i34<1.116449236869812){
    s0+=8.0;
   } else {
    if(i19<-0.0022956132888793945){
     s0+=73.0;
     s1+=271.0;
    } else {
     s0+=20.0;
     s1+=2901.0;
    }
   }
  }
 } else {
  if(i53<-0.0001646876335144043){
   s0+=9.0;
  } else {
   if(i44<0.995242714881897){
    s0+=10.0;
   } else {
    if(i15<0.0007656108937226236){
     s0+=12.0;
     s1+=11154.0;
    } else {
     s0+=33.0;
    }
   }
  }
 }
}
if(i43<1.003657341003418){
 if(i24<1.0217887163162231){
  if(i4<1.0026600360870361){
   if(i33<8.26716423034668e-05){
    if(i38<0.0396091602742672){
     s0+=77695.0;
     s1+=898.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i3<-6.705522537231445e-05){
     s0+=9973.0;
     s1+=145.0;
    } else {
     s0+=19418.0;
     s1+=2932.0;
    }
   }
  } else {
   if(i33<0.0004405379295349121){
    if(i8<1.007522702217102){
     s0+=92.0;
     s1+=159.0;
    } else {
     s0+=1.0;
     s1+=573.0;
    }
   } else {
    if(i32<1.1728172302246094){
     s0+=696.0;
     s1+=2.0;
    } else {
     s0+=158.0;
     s1+=403.0;
    }
   }
  }
 } else {
  if(i4<1.0012303590774536){
   if(i0<-6.674144242424518e-05){
    if(i7<0.006521131377667189){
     s0+=26.0;
    } else {
     s0+=11.0;
     s1+=214.0;
    }
   } else {
    if(i52<1.0001845359802246){
     s0+=450.0;
    } else {
     s0+=185.0;
     s1+=41.0;
    }
   }
  } else {
   if(i6<1.2934207916259766e-05){
    if(i36<1.1220200061798096){
     s0+=101.0;
     s1+=5.0;
    } else {
     s0+=45.0;
     s1+=132.0;
    }
   } else {
    if(i25<0.00612149341031909){
     s0+=25.0;
     s1+=34.0;
    } else {
     s0+=37.0;
     s1+=2319.0;
    }
   }
  }
 }
} else {
 if(i3<0.001123189926147461){
  if(i29<1.1168365478515625){
   if(i26<0.0010698887053877115){
    if(i48<-2.921772193076322e-06){
     s0+=385.0;
     s1+=9.0;
    } else {
     s1+=555.0;
    }
   } else {
    if(i16<0.15035918354988098){
     s0+=5312.0;
     s1+=613.0;
    } else {
     s0+=311.0;
     s1+=347.0;
    }
   }
  } else {
   if(i68<1.0038504600524902){
    if(i18<0.001970394514501095){
     s0+=81.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=1373.0;
    }
   } else {
    if(i0<-4.48413411504589e-05){
     s0+=12.0;
     s1+=273.0;
    } else {
     s0+=181.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i48<-9.597833013685886e-06){
   s0+=313.0;
  } else {
   if(i16<0.14035621285438538){
    if(i1<0.0017913579940795898){
     s0+=1079.0;
     s1+=730.0;
    } else {
     s0+=91.0;
     s1+=1997.0;
    }
   } else {
    if(i38<0.0020055475179105997){
     s0+=98.0;
     s1+=2.0;
    } else {
     s0+=26.0;
     s1+=10234.0;
    }
   }
  }
 }
}
if(i3<0.0005698800086975098){
 if(i29<1.1403393745422363){
  if(i6<1.4483928680419922e-05){
   if(i26<0.0008725000661797822){
    if(i52<1.0000941753387451){
     s0+=21821.0;
     s1+=563.0;
    } else {
     s0+=8043.0;
     s1+=1920.0;
    }
   } else {
    if(i31<0.0029656568076461554){
     s0+=75670.0;
     s1+=720.0;
    } else {
     s0+=212.0;
     s1+=104.0;
    }
   }
  } else {
   if(i40<-0.0001761123421601951){
    if(i63<3.3326000448141713e-06){
     s0+=267.0;
     s1+=598.0;
    } else {
     s0+=276.0;
     s1+=117.0;
    }
   } else {
    if(i45<3.913548880518647e-06){
     s0+=2334.0;
     s1+=67.0;
    } else {
     s0+=922.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i26<0.0025833514519035816){
   if(i7<0.00664124358445406){
    s0+=456.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i55<0.0037112077698111534){
    if(i1<-0.0005084872245788574){
     s0+=32.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i0<-1.9516803149599582e-05){
     s0+=2.0;
     s1+=554.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i13<1.0177100896835327){
  if(i50<0.043631017208099365){
   if(i38<0.0011121011339128017){
    if(i0<-4.2776173359015957e-05){
     s0+=50.0;
     s1+=1168.0;
    } else {
     s0+=1531.0;
     s1+=450.0;
    }
   } else {
    if(i9<0.9966409206390381){
     s0+=142.0;
     s1+=161.0;
    } else {
     s0+=3377.0;
     s1+=261.0;
    }
   }
  } else {
   if(i20<-0.0005436539649963379){
    if(i41<-4.309825453674421e-05){
     s0+=149.0;
     s1+=247.0;
    } else {
     s0+=527.0;
     s1+=115.0;
    }
   } else {
    if(i0<-9.750585013534874e-05){
     s0+=87.0;
     s1+=2909.0;
    } else {
     s0+=569.0;
     s1+=1152.0;
    }
   }
  }
 } else {
  if(i48<-6.027386916684918e-06){
   if(i9<1.0401194095611572){
    s0+=73.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i6<6.288290023803711e-05){
    if(i15<0.0007427787641063333){
     s0+=111.0;
     s1+=4528.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i5<1.006831169128418){
     s0+=5.0;
     s1+=13.0;
    } else {
     s1+=8189.0;
    }
   }
  }
 }
}
if(i17<1.0170204639434814){
 if(i20<0.00019252300262451172){
  if(i50<0.29816341400146484){
   if(i2<6.884336471557617e-05){
    if(i28<1.1162974834442139){
     s0+=30261.0;
     s1+=3441.0;
    } else {
     s0+=82245.0;
     s1+=2013.0;
    }
   } else {
    if(i32<1.1706266403198242){
     s0+=599.0;
     s1+=189.0;
    } else {
     s0+=76.0;
     s1+=897.0;
    }
   }
  } else {
   if(i5<0.9955734610557556){
    if(i40<-0.0002881471300497651){
     s0+=4.0;
     s1+=55.0;
    } else {
     s0+=536.0;
     s1+=27.0;
    }
   } else {
    if(i26<0.0027004219591617584){
     s0+=14.0;
    } else {
     s0+=46.0;
     s1+=1472.0;
    }
   }
  }
 } else {
  if(i27<1.0138130187988281){
   if(i38<0.0011636305134743452){
    if(i15<0.00022606953280046582){
     s1+=681.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i30<0.0040177274495363235){
     s0+=955.0;
     s1+=48.0;
    } else {
     s1+=106.0;
    }
   }
  } else {
   if(i48<-5.9783760661957785e-06){
    s0+=41.0;
   } else {
    if(i21<1.0006887912750244){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=1325.0;
    }
   }
  }
 }
} else {
 if(i11<1.0169398784637451){
  if(i15<0.0007037740433588624){
   if(i18<0.0013563950778916478){
    if(i5<1.008389949798584){
     s0+=386.0;
     s1+=18.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i43<0.9995726346969604){
     s0+=100.0;
     s1+=22.0;
    } else {
     s0+=282.0;
     s1+=1359.0;
    }
   }
  } else {
   s0+=441.0;
  }
 } else {
  if(i5<1.0016608238220215){
   if(i18<0.0028165504336357117){
    if(i22<1.0977938175201416){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i26<0.007418928202241659){
     s0+=40.0;
     s1+=44.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i41<-1.0502878467377741e-05){
    if(i15<0.0008041728287935257){
     s0+=47.0;
     s1+=12592.0;
    } else {
     s0+=84.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
}
if(i13<1.0143204927444458){
 if(i6<1.901388168334961e-05){
  if(i58<0.03412502259016037){
   if(i30<0.0009566990192979574){
    if(i7<0.0035070274025201797){
     s0+=26806.0;
     s1+=747.0;
    } else {
     s0+=2146.0;
     s1+=1533.0;
    }
   } else {
    if(i67<0.001046173507347703){
     s0+=64373.0;
     s1+=126.0;
    } else {
     s0+=3000.0;
     s1+=243.0;
    }
   }
  } else {
   if(i1<-0.0005926787853240967){
    if(i25<0.06823975592851639){
     s0+=10959.0;
     s1+=292.0;
    } else {
     s0+=105.0;
     s1+=133.0;
    }
   } else {
    if(i26<0.0009180726483464241){
     s0+=51.0;
     s1+=535.0;
    } else {
     s0+=1027.0;
     s1+=539.0;
    }
   }
  }
 } else {
  if(i32<1.1757044792175293){
   if(i37<0.0009488883661106229){
    if(i34<1.0452228784561157){
     s0+=1762.0;
    } else {
     s0+=51.0;
     s1+=1386.0;
    }
   } else {
    if(i26<0.0009471721714362502){
     s0+=11.0;
     s1+=134.0;
    } else {
     s0+=3496.0;
     s1+=112.0;
    }
   }
  } else {
   if(i22<1.0743002891540527){
    if(i2<0.00013810396194458008){
     s0+=1289.0;
     s1+=233.0;
    } else {
     s0+=1.0;
     s1+=148.0;
    }
   } else {
    if(i16<0.1416393518447876){
     s0+=499.0;
     s1+=1318.0;
    } else {
     s0+=81.0;
     s1+=2424.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007036929600872099){
  if(i0<-3.7763653381261975e-05){
   if(i51<-3.4439560749888187e-06){
    if(i48<-6.518765076179989e-06){
     s0+=20.0;
    } else {
     s0+=127.0;
     s1+=13959.0;
    }
   } else {
    if(i38<0.0038416502065956593){
     s1+=6.0;
    } else {
     s0+=122.0;
    }
   }
  } else {
   if(i37<0.0011712972773239017){
    if(i42<0.17597690224647522){
     s1+=66.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i18<0.0035286755301058292){
     s0+=336.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=72.0;
    }
   }
  }
 } else {
  s0+=576.0;
 }
}
if(i5<1.0037096738815308){
 if(i25<0.06434927880764008){
  if(i3<0.0002925992012023926){
   if(i16<0.19977480173110962){
    if(i46<0.0008623033063486218){
     s0+=36181.0;
     s1+=1816.0;
    } else {
     s0+=66566.0;
     s1+=996.0;
    }
   } else {
    if(i0<-3.918301808880642e-05){
     s0+=10.0;
     s1+=151.0;
    } else {
     s0+=298.0;
     s1+=16.0;
    }
   }
  } else {
   if(i56<-0.0007289136410690844){
    if(i45<2.4787197617115453e-05){
     s0+=442.0;
     s1+=1069.0;
    } else {
     s0+=1015.0;
     s1+=479.0;
    }
   } else {
    if(i49<1.6538368072360754e-05){
     s0+=5038.0;
     s1+=214.0;
    } else {
     s0+=1844.0;
     s1+=890.0;
    }
   }
  }
 } else {
  if(i55<0.008031897246837616){
   if(i41<-2.447221049806103e-05){
    if(i61<-0.013062089681625366){
     s0+=53.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=40.0;
    }
   } else {
    s0+=252.0;
   }
  } else {
   if(i33<-0.0008120834827423096){
    s0+=13.0;
   } else {
    if(i66<-0.0073920488357543945){
     s0+=5.0;
     s1+=85.0;
    } else {
     s1+=901.0;
    }
   }
  }
 }
} else {
 if(i23<0.1714300513267517){
  if(i30<0.002169510582461953){
   if(i28<1.116804838180542){
    if(i35<1.0609431266784668){
     s0+=707.0;
    } else {
     s1+=2786.0;
    }
   } else {
    s0+=3247.0;
   }
  } else {
   if(i54<0.0001805420033633709){
    if(i45<7.333361281780526e-06){
     s1+=19.0;
    } else {
     s0+=94.0;
    }
   } else {
    if(i19<-0.001140594482421875){
     s0+=152.0;
     s1+=375.0;
    } else {
     s0+=61.0;
     s1+=2191.0;
    }
   }
  }
 } else {
  if(i38<0.0019850952085107565){
   if(i42<0.14923623204231262){
    s1+=21.0;
   } else {
    s0+=175.0;
   }
  } else {
   if(i7<0.0029270583763718605){
    if(i74<0.010206758975982666){
     s1+=98.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i26<0.0027183089405298233){
     s0+=1.0;
     s1+=150.0;
    } else {
     s1+=12384.0;
    }
   }
  }
 }
}
if(i12<1.0181405544281006){
 if(i43<1.0068669319152832){
  if(i4<1.0024349689483643){
   if(i25<0.08942355215549469){
    if(i28<1.1162974834442139){
     s0+=29467.0;
     s1+=3212.0;
    } else {
     s0+=79076.0;
     s1+=694.0;
    }
   } else {
    s1+=186.0;
   }
  } else {
   if(i18<0.0018411846831440926){
    if(i63<-5.026001872465713e-06){
     s0+=24.0;
     s1+=149.0;
    } else {
     s0+=2964.0;
     s1+=52.0;
    }
   } else {
    if(i7<0.0033363359980285168){
     s0+=788.0;
     s1+=45.0;
    } else {
     s0+=1026.0;
     s1+=2809.0;
    }
   }
  }
 } else {
  if(i67<0.0008451529429294169){
   if(i68<1.0020713806152344){
    if(i63<6.009391881889314e-07){
     s0+=9.0;
     s1+=359.0;
    } else {
     s0+=74.0;
     s1+=4.0;
    }
   } else {
    if(i69<0.32953453063964844){
     s0+=767.0;
     s1+=81.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   }
  } else {
   if(i27<0.9954131245613098){
    if(i29<1.0863291025161743){
     s0+=776.0;
     s1+=185.0;
    } else {
     s0+=8.0;
     s1+=235.0;
    }
   } else {
    if(i16<0.053688615560531616){
     s0+=130.0;
     s1+=264.0;
    } else {
     s0+=61.0;
     s1+=2000.0;
    }
   }
  }
 }
} else {
 if(i23<0.1693589985370636){
  if(i7<0.005406529176980257){
   if(i55<0.0006738522788509727){
    if(i37<0.0011525795562192798){
     s1+=324.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i0<-9.775897342478856e-05){
     s0+=36.0;
     s1+=87.0;
    } else {
     s0+=1104.0;
     s1+=79.0;
    }
   }
  } else {
   if(i8<0.9982714653015137){
    if(i51<-1.0506470061955042e-05){
     s0+=76.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i4<0.9998939633369446){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=1688.0;
    }
   }
  }
 } else {
  if(i30<0.0018781579565256834){
   if(i34<1.094874382019043){
    s1+=14.0;
   } else {
    s0+=83.0;
   }
  } else {
   if(i35<1.6811659336090088){
    if(i0<-3.849193672067486e-05){
     s0+=18.0;
     s1+=11497.0;
    } else {
     s0+=76.0;
     s1+=187.0;
    }
   } else {
    s0+=18.0;
   }
  }
 }
}
if(i21<1.0046396255493164){
 if(i17<1.0165107250213623){
  if(i16<0.20646965503692627){
   if(i41<-3.965730138588697e-05){
    if(i55<0.007456126622855663){
     s0+=305.0;
     s1+=169.0;
    } else {
     s0+=53.0;
     s1+=275.0;
    }
   } else {
    if(i31<0.0007107695564627647){
     s0+=79044.0;
     s1+=485.0;
    } else {
     s0+=31615.0;
     s1+=4107.0;
    }
   }
  } else {
   if(i18<0.002689750399440527){
    if(i10<1.0089986324310303){
     s0+=159.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i54<0.0024773934856057167){
     s0+=13.0;
     s1+=37.0;
    } else {
     s0+=5.0;
     s1+=533.0;
    }
   }
  }
 } else {
  if(i2<1.6689300537109375e-05){
   if(i58<0.04760720580816269){
    if(i7<0.006049836985766888){
     s0+=690.0;
     s1+=22.0;
    } else {
     s0+=43.0;
     s1+=50.0;
    }
   } else {
    if(i41<-7.774844561936334e-06){
     s0+=36.0;
     s1+=317.0;
    } else {
     s0+=111.0;
    }
   }
  } else {
   if(i41<-1.3544466128223576e-05){
    if(i9<1.0222872495651245){
     s0+=75.0;
     s1+=337.0;
    } else {
     s0+=27.0;
     s1+=1666.0;
    }
   } else {
    if(i71<0.0067517757415771484){
     s0+=75.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i0<-7.376324356300756e-05){
  if(i10<0.9494969248771667){
   if(i31<0.003148541087284684){
    if(i60<1.1034214496612549){
     s0+=273.0;
     s1+=18.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i68<1.0021121501922607){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=10.0;
     s1+=4.0;
    }
   }
  } else {
   if(i32<1.141514778137207){
    if(i55<0.0010502624791115522){
     s0+=20.0;
     s1+=933.0;
    } else {
     s0+=281.0;
     s1+=24.0;
    }
   } else {
    if(i22<1.0397148132324219){
     s0+=39.0;
     s1+=36.0;
    } else {
     s0+=81.0;
     s1+=13129.0;
    }
   }
  }
 } else {
  if(i7<0.0027434704825282097){
   if(i45<-1.48845629155403e-05){
    if(i22<1.0717393159866333){
     s1+=224.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i63<-4.8554775275988504e-06){
     s0+=173.0;
     s1+=10.0;
    } else {
     s0+=2576.0;
    }
   }
  } else {
   if(i5<1.0001893043518066){
    if(i52<1.00443696975708){
     s0+=191.0;
     s1+=29.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   } else {
    if(i45<-4.349934897618368e-06){
     s0+=32.0;
     s1+=1022.0;
    } else {
     s0+=624.0;
     s1+=764.0;
    }
   }
  }
 }
}
if(i21<1.004482626914978){
 if(i18<0.0018284328980371356){
  if(i10<0.996134877204895){
   if(i46<0.0002549688215367496){
    if(i5<0.9973734617233276){
     s0+=793.0;
    } else {
     s0+=463.0;
     s1+=418.0;
    }
   } else {
    if(i68<1.0008413791656494){
     s0+=13932.0;
     s1+=120.0;
    } else {
     s0+=3238.0;
     s1+=142.0;
    }
   }
  } else {
   if(i46<0.001965446164831519){
    if(i31<0.0006518795853480697){
     s0+=59683.0;
     s1+=88.0;
    } else {
     s0+=12096.0;
     s1+=283.0;
    }
   } else {
    if(i68<1.0015320777893066){
     s0+=944.0;
     s1+=6.0;
    } else {
     s0+=206.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i5<0.9984989166259766){
   if(i38<0.0010259815026074648){
    if(i33<1.0848045349121094e-05){
     s0+=140.0;
    } else {
     s0+=104.0;
     s1+=220.0;
    }
   } else {
    if(i22<1.1838014125823975){
     s0+=16164.0;
     s1+=405.0;
    } else {
     s0+=24.0;
     s1+=192.0;
    }
   }
  } else {
   if(i28<1.057431697845459){
    s0+=1498.0;
   } else {
    if(i25<0.009225706569850445){
     s0+=1397.0;
     s1+=546.0;
    } else {
     s0+=1128.0;
     s1+=5332.0;
    }
   }
  }
 }
} else {
 if(i26<0.00241360766813159){
  if(i28<1.116804838180542){
   if(i19<0.0009754300117492676){
    if(i7<0.003261024598032236){
     s0+=409.0;
    } else {
     s1+=141.0;
    }
   } else {
    if(i28<1.0608227252960205){
     s0+=4.0;
    } else {
     s1+=1979.0;
    }
   }
  } else {
   if(i26<0.0022604800760746002){
    s0+=3085.0;
   } else {
    if(i39<0.024216722697019577){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i1<0.0006595849990844727){
   if(i16<0.05980846285820007){
    if(i31<0.003150178585201502){
     s0+=496.0;
     s1+=41.0;
    } else {
     s0+=28.0;
     s1+=40.0;
    }
   } else {
    if(i19<-0.002620398998260498){
     s0+=138.0;
     s1+=230.0;
    } else {
     s0+=67.0;
     s1+=485.0;
    }
   }
  } else {
   if(i20<-0.0002703666687011719){
    if(i16<0.1155376136302948){
     s0+=161.0;
     s1+=164.0;
    } else {
     s0+=2.0;
     s1+=298.0;
    }
   } else {
    if(i16<0.09861552715301514){
     s0+=75.0;
     s1+=571.0;
    } else {
     s0+=13.0;
     s1+=12638.0;
    }
   }
  }
 }
}
if(i47<1.0309581756591797){
 if(i7<0.007319526746869087){
  if(i49<-2.4626726371934637e-05){
   if(i73<0.06666594743728638){
    if(i53<2.3812055587768555e-05){
     s0+=10.0;
     s1+=1284.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i26<0.0024477564729750156){
     s0+=98.0;
     s1+=7.0;
    } else {
     s1+=133.0;
    }
   }
  } else {
   if(i32<1.0903575420379639){
    if(i20<0.00016134977340698242){
     s0+=28666.0;
     s1+=2796.0;
    } else {
     s0+=26.0;
     s1+=460.0;
    }
   } else {
    if(i8<1.0162626504898071){
     s0+=80417.0;
     s1+=1157.0;
    } else {
     s0+=2.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i22<1.0529714822769165){
   if(i3<0.0017577409744262695){
    if(i45<1.7783097064238973e-05){
     s0+=12.0;
     s1+=199.0;
    } else {
     s0+=4096.0;
     s1+=61.0;
    }
   } else {
    if(i48<-3.7563447676802753e-06){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   }
  } else {
   if(i8<0.9767219424247742){
    if(i25<0.059855904430150986){
     s0+=1047.0;
     s1+=212.0;
    } else {
     s0+=50.0;
     s1+=262.0;
    }
   } else {
    if(i30<0.0023440024815499783){
     s0+=329.0;
     s1+=665.0;
    } else {
     s0+=264.0;
     s1+=4785.0;
    }
   }
  }
 }
} else {
 if(i26<0.0025608837604522705){
  if(i34<1.0902788639068604){
   if(i52<1.0003118515014648){
    if(i62<-0.0018662154907360673){
     s1+=6.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i70<0.0576130747795105){
     s1+=584.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i63<-5.890088232263224e-06){
    if(i38<0.0012198586482554674){
     s1+=51.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i0<-7.562887185486034e-05){
     s0+=38.0;
     s1+=59.0;
    } else {
     s0+=896.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i36<1.118464469909668){
   if(i8<1.0076875686645508){
    if(i4<1.0033469200134277){
     s0+=211.0;
    } else {
     s0+=71.0;
     s1+=42.0;
    }
   } else {
    if(i14<0.10767927765846252){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=86.0;
    }
   }
  } else {
   if(i2<-3.725290298461914e-05){
    if(i18<0.004443011246621609){
     s0+=104.0;
     s1+=40.0;
    } else {
     s0+=9.0;
     s1+=100.0;
    }
   } else {
    if(i8<1.0050245523452759){
     s0+=106.0;
     s1+=1026.0;
    } else {
     s0+=26.0;
     s1+=9984.0;
    }
   }
  }
 }
}
if(i9<1.017024040222168){
 if(i5<1.003885269165039){
  if(i18<0.001712833996862173){
   if(i9<0.9958423972129822){
    if(i49<3.1880292226560414e-05){
     s0+=9128.0;
     s1+=9.0;
    } else {
     s0+=10222.0;
     s1+=543.0;
    }
   } else {
    if(i67<0.0009494171245023608){
     s0+=69272.0;
     s1+=312.0;
    } else {
     s0+=330.0;
     s1+=42.0;
    }
   }
  } else {
   if(i26<0.0009228305425494909){
    if(i68<1.0001463890075684){
     s0+=1904.0;
     s1+=282.0;
    } else {
     s0+=408.0;
     s1+=2104.0;
    }
   } else {
    if(i5<0.9999149441719055){
     s0+=18590.0;
     s1+=811.0;
    } else {
     s0+=1543.0;
     s1+=1418.0;
    }
   }
  }
 } else {
  if(i15<0.0006915401900187135){
   if(i1<0.0009839534759521484){
    if(i30<0.002176940441131592){
     s0+=1151.0;
     s1+=261.0;
    } else {
     s0+=153.0;
     s1+=448.0;
    }
   } else {
    if(i4<1.0026201009750366){
     s0+=54.0;
     s1+=61.0;
    } else {
     s0+=159.0;
     s1+=3729.0;
    }
   }
  } else {
   if(i69<0.42861467599868774){
    s0+=2203.0;
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i11<1.020103931427002){
  if(i15<0.0007193856290541589){
   if(i20<0.00015658140182495117){
    if(i31<0.0006538332672789693){
     s0+=462.0;
     s1+=34.0;
    } else {
     s0+=313.0;
     s1+=1053.0;
    }
   } else {
    if(i33<-9.822845458984375e-05){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=20.0;
     s1+=1070.0;
    }
   }
  } else {
   s0+=488.0;
  }
 } else {
  if(i21<0.9991132020950317){
   if(i2<1.633167266845703e-05){
    if(i45<4.291733057470992e-05){
     s0+=98.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=32.0;
    }
   } else {
    s1+=174.0;
   }
  } else {
   if(i32<1.7041046619415283){
    if(i34<1.1672112941741943){
     s0+=84.0;
     s1+=1103.0;
    } else {
     s0+=11.0;
     s1+=10697.0;
    }
   } else {
    s0+=26.0;
   }
  }
 }
}
if(i20<0.00020498037338256836){
 if(i16<0.19278624653816223){
  if(i41<-4.9260546802543104e-05){
   if(i49<0.00034026469802483916){
    if(i35<1.1731116771697998){
     s0+=50.0;
    } else {
     s0+=49.0;
     s1+=732.0;
    }
   } else {
    if(i50<0.16112206876277924){
     s0+=85.0;
     s1+=15.0;
    } else {
     s0+=15.0;
     s1+=30.0;
    }
   }
  } else {
   if(i17<1.0133165121078491){
    if(i2<6.407499313354492e-05){
     s0+=111158.0;
     s1+=4848.0;
    } else {
     s0+=667.0;
     s1+=531.0;
    }
   } else {
    if(i34<1.0904107093811035){
     s0+=30.0;
     s1+=754.0;
    } else {
     s0+=2609.0;
     s1+=717.0;
    }
   }
  }
 } else {
  if(i37<0.003079857211560011){
   if(i68<1.0019936561584473){
    if(i6<2.8312206268310547e-05){
     s0+=294.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i7<0.00420323945581913){
     s0+=87.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=46.0;
    }
   }
  } else {
   if(i34<1.6811659336090088){
    if(i0<-2.0227926142979413e-05){
     s0+=47.0;
     s1+=3354.0;
    } else {
     s0+=108.0;
     s1+=91.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
} else {
 if(i8<1.0139331817626953){
  if(i35<1.0981338024139404){
   s1+=779.0;
  } else {
   if(i25<0.012462738901376724){
    if(i28<1.1180615425109863){
     s1+=70.0;
    } else {
     s0+=996.0;
     s1+=40.0;
    }
   } else {
    if(i48<-7.468383955711033e-06){
     s0+=19.0;
    } else {
     s0+=2.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i19<0.0017188191413879395){
   if(i35<1.161512017250061){
    if(i55<0.0006524379132315516){
     s1+=49.0;
    } else {
     s0+=91.0;
     s1+=1.0;
    }
   } else {
    s1+=334.0;
   }
  } else {
   if(i20<0.00027811527252197266){
    if(i53<2.4497509002685547e-05){
     s1+=234.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=11384.0;
   }
  }
 }
}
if(i24<1.021018147468567){
 if(i21<1.0061407089233398){
  if(i0<-8.630635420558974e-05){
   if(i10<0.9461263418197632){
    if(i76<0.08711129426956177){
     s0+=620.0;
     s1+=50.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i51<-2.2289592379820533e-05){
     s0+=182.0;
     s1+=26.0;
    } else {
     s0+=201.0;
     s1+=1330.0;
    }
   }
  } else {
   if(i2<6.324052810668945e-05){
    if(i28<1.1162974834442139){
     s0+=30125.0;
     s1+=3330.0;
    } else {
     s0+=81174.0;
     s1+=1127.0;
    }
   } else {
    if(i33<0.0004379451274871826){
     s0+=67.0;
     s1+=272.0;
    } else {
     s0+=283.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i46<0.001989755081012845){
   if(i15<0.00033161151804961264){
    if(i78<0.05326157808303833){
     s0+=56.0;
     s1+=1605.0;
    } else {
     s0+=16.0;
     s1+=13.0;
    }
   } else {
    if(i28<1.185887336730957){
     s0+=1728.0;
    } else {
     s0+=27.0;
     s1+=6.0;
    }
   }
  } else {
   if(i10<0.9607583284378052){
    if(i4<1.0068793296813965){
     s0+=345.0;
     s1+=154.0;
    } else {
     s0+=8.0;
     s1+=153.0;
    }
   } else {
    if(i23<0.033116936683654785){
     s0+=45.0;
     s1+=55.0;
    } else {
     s0+=56.0;
     s1+=2601.0;
    }
   }
  }
 }
} else {
 if(i2<1.9490718841552734e-05){
  if(i14<0.23402062058448792){
   if(i34<1.0887749195098877){
    if(i44<1.0002431869506836){
     s1+=62.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i33<-7.361173629760742e-06){
     s0+=385.0;
     s1+=8.0;
    } else {
     s0+=521.0;
     s1+=181.0;
    }
   }
  } else {
   if(i0<-4.996712232241407e-05){
    s1+=297.0;
   } else {
    if(i22<1.1568567752838135){
     s0+=5.0;
     s1+=16.0;
    } else {
     s0+=80.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i48<-6.622164619329851e-06){
   s0+=126.0;
  } else {
   if(i38<0.001594384084455669){
    if(i52<1.0029881000518799){
     s0+=205.0;
     s1+=1105.0;
    } else {
     s0+=213.0;
    }
   } else {
    if(i20<-0.00028777122497558594){
     s0+=37.0;
     s1+=79.0;
    } else {
     s0+=71.0;
     s1+=11751.0;
    }
   }
  }
 }
}
if(i5<1.0038774013519287){
 if(i29<1.140138864517212){
  if(i23<0.22034752368927002){
   if(i0<-7.956830086186528e-05){
    if(i22<1.0743825435638428){
     s0+=1014.0;
     s1+=95.0;
    } else {
     s0+=379.0;
     s1+=553.0;
    }
   } else {
    if(i31<0.0007184434216469526){
     s0+=79481.0;
     s1+=485.0;
    } else {
     s0+=30911.0;
     s1+=3986.0;
    }
   }
  } else {
   if(i30<0.0025318502448499203){
    if(i17<1.0129810571670532){
     s0+=46.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i50<0.04573870077729225){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=12.0;
     s1+=243.0;
    }
   }
  }
 } else {
  if(i18<0.0016167546855285764){
   s0+=452.0;
  } else {
   if(i54<0.003499337239190936){
    if(i0<-4.2327788833063096e-05){
     s1+=66.0;
    } else {
     s0+=45.0;
     s1+=12.0;
    }
   } else {
    if(i52<1.003867745399475){
     s0+=10.0;
     s1+=1131.0;
    } else {
     s0+=27.0;
     s1+=61.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007030675187706947){
  if(i31<0.00043121824273839593){
   if(i1<0.001780867576599121){
    if(i10<1.017883062362671){
     s0+=1053.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=640.0;
   }
  } else {
   if(i25<0.01341419667005539){
    if(i28<1.4667320251464844){
     s0+=358.0;
     s1+=3152.0;
    } else {
     s0+=170.0;
     s1+=28.0;
    }
   } else {
    if(i5<1.0065147876739502){
     s0+=114.0;
     s1+=2120.0;
    } else {
     s0+=8.0;
     s1+=11612.0;
    }
   }
  }
 } else {
  if(i18<0.008759348653256893){
   s0+=2554.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i11<1.0135858058929443){
 if(i39<0.16865620017051697){
  if(i18<0.0017930822214111686){
   if(i5<1.0083402395248413){
    if(i30<0.0006340214749798179){
     s0+=28492.0;
     s1+=912.0;
    } else {
     s0+=64274.0;
     s1+=228.0;
    }
   } else {
    if(i33<0.0008622407913208008){
     s1+=254.0;
    } else {
     s0+=137.0;
    }
   }
  } else {
   if(i3<-2.205371856689453e-05){
    if(i14<0.25310468673706055){
     s0+=14029.0;
     s1+=438.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i14<0.04657593369483948){
     s0+=3909.0;
     s1+=726.0;
    } else {
     s0+=3916.0;
     s1+=5502.0;
    }
   }
  }
 } else {
  if(i20<-0.0008294582366943359){
   if(i4<1.0005805492401123){
    if(i60<1.1181559562683105){
     s0+=378.0;
     s1+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i41<-3.745078720385209e-05){
     s0+=4.0;
     s1+=33.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<-0.004019796848297119){
    if(i7<0.015395848080515862){
     s0+=25.0;
    } else {
     s0+=7.0;
     s1+=100.0;
    }
   } else {
    if(i31<0.004045589827001095){
     s0+=9.0;
     s1+=1598.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i2<1.5437602996826172e-05){
  if(i23<0.2163555920124054){
   if(i68<1.000471830368042){
    s0+=194.0;
   } else {
    if(i28<1.3283236026763916){
     s0+=19.0;
     s1+=106.0;
    } else {
     s0+=176.0;
     s1+=11.0;
    }
   }
  } else {
   if(i45<9.36757987801684e-06){
    s0+=10.0;
   } else {
    if(i44<1.002200722694397){
     s1+=119.0;
    } else {
     s0+=9.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i15<0.0007097126799635589){
   if(i40<-0.0007643371354788542){
    if(i48<-6.548920282511972e-06){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=8992.0;
    }
   } else {
    if(i7<0.003474666504189372){
     s0+=190.0;
     s1+=459.0;
    } else {
     s0+=59.0;
     s1+=4889.0;
    }
   }
  } else {
   s0+=556.0;
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i0<-7.40064715500921e-05){
  if(i66<-0.005993187427520752){
   if(i73<0.06835803389549255){
    if(i22<1.0846458673477173){
     s0+=828.0;
     s1+=10.0;
    } else {
     s0+=69.0;
     s1+=57.0;
    }
   } else {
    if(i25<0.03696657717227936){
     s0+=16.0;
     s1+=4.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i30<0.002352603245526552){
    if(i25<0.012132590636610985){
     s0+=267.0;
    } else {
     s0+=1.0;
     s1+=76.0;
    }
   } else {
    if(i16<0.10174810886383057){
     s0+=78.0;
     s1+=57.0;
    } else {
     s0+=23.0;
     s1+=894.0;
    }
   }
  }
 } else {
  if(i26<0.0008888171869330108){
   if(i32<1.05497145652771){
    if(i31<0.0005465173162519932){
     s0+=17427.0;
     s1+=15.0;
    } else {
     s0+=3584.0;
     s1+=128.0;
    }
   } else {
    if(i25<0.008201210759580135){
     s0+=6974.0;
     s1+=614.0;
    } else {
     s0+=2737.0;
     s1+=2393.0;
    }
   }
  } else {
   if(i50<0.04413053020834923){
    if(i37<0.0018041827715933323){
     s0+=51344.0;
    } else {
     s0+=12660.0;
     s1+=173.0;
    }
   } else {
    if(i16<0.17736655473709106){
     s0+=13379.0;
     s1+=581.0;
    } else {
     s0+=254.0;
     s1+=241.0;
    }
   }
  }
 }
} else {
 if(i7<0.004382061772048473){
  if(i28<1.116804838180542){
   if(i15<0.00033396758954040706){
    if(i20<9.942054748535156e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=868.0;
    }
   } else {
    s0+=1299.0;
   }
  } else {
   if(i11<1.0217158794403076){
    if(i19<0.002534627914428711){
     s0+=3659.0;
     s1+=31.0;
    } else {
     s1+=92.0;
    }
   } else {
    if(i0<-8.901332330424339e-05){
     s0+=3.0;
     s1+=257.0;
    } else {
     s0+=43.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i19<-0.0022126734256744385){
   if(i2<4.231929779052734e-06){
    if(i46<0.011988003738224506){
     s0+=793.0;
     s1+=124.0;
    } else {
     s0+=112.0;
     s1+=149.0;
    }
   } else {
    if(i57<0.03845825791358948){
     s0+=93.0;
     s1+=23.0;
    } else {
     s0+=248.0;
     s1+=748.0;
    }
   }
  } else {
   if(i7<0.00671067088842392){
    if(i18<0.0032489122822880745){
     s0+=135.0;
     s1+=1741.0;
    } else {
     s0+=169.0;
     s1+=27.0;
    }
   } else {
    if(i15<0.0018166927620768547){
     s0+=73.0;
     s1+=15171.0;
    } else {
     s0+=72.0;
    }
   }
  }
 }
}
if(i21<1.004767894744873){
 if(i5<1.0037355422973633){
  if(i14<0.23402073979377747){
   if(i28<1.1162974834442139){
    if(i33<6.979703903198242e-05){
     s0+=23060.0;
     s1+=695.0;
    } else {
     s0+=6386.0;
     s1+=2669.0;
    }
   } else {
    if(i22<1.122455358505249){
     s0+=78934.0;
     s1+=878.0;
    } else {
     s0+=2684.0;
     s1+=825.0;
    }
   }
  } else {
   if(i7<0.0064681051298975945){
    if(i43<1.0026158094406128){
     s0+=128.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.1564011573791504){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=693.0;
    }
   }
  }
 } else {
  if(i25<0.006773914210498333){
   if(i40<-0.00022461285698227584){
    if(i68<0.9998806715011597){
     s0+=30.0;
    } else {
     s0+=19.0;
     s1+=117.0;
    }
   } else {
    if(i41<-1.566004539199639e-05){
     s0+=247.0;
     s1+=46.0;
    } else {
     s0+=651.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.0011917948722839355){
    if(i13<1.0119819641113281){
     s0+=98.0;
     s1+=471.0;
    } else {
     s0+=7.0;
     s1+=1739.0;
    }
   } else {
    s0+=19.0;
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i20<0.00018972158432006836){
   if(i38<0.001127318013459444){
    if(i46<0.00018268436542712152){
     s0+=288.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=275.0;
    }
   } else {
    if(i37<0.0019193259067833424){
     s0+=2154.0;
     s1+=8.0;
    } else {
     s0+=27.0;
     s1+=94.0;
    }
   }
  } else {
   if(i26<0.0010900436900556087){
    s1+=1803.0;
   } else {
    if(i35<1.2059742212295532){
     s0+=756.0;
    } else {
     s1+=48.0;
    }
   }
  }
 } else {
  if(i2<5.227327346801758e-05){
   if(i42<0.05693212151527405){
    if(i59<0.0007665388402529061){
     s0+=223.0;
     s1+=5.0;
    } else {
     s0+=278.0;
     s1+=129.0;
    }
   } else {
    if(i22<1.1078033447265625){
     s0+=110.0;
     s1+=141.0;
    } else {
     s0+=44.0;
     s1+=557.0;
    }
   }
  } else {
   if(i61<-0.0122927725315094){
    if(i23<0.0016796886920928955){
     s0+=41.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=136.0;
    }
   } else {
    if(i36<1.0789777040481567){
     s0+=30.0;
     s1+=20.0;
    } else {
     s0+=94.0;
     s1+=13150.0;
    }
   }
  }
 }
}
if(i21<1.0044405460357666){
 if(i23<0.2100774049758911){
  if(i13<1.0121310949325562){
   if(i50<0.0419132299721241){
    if(i26<0.0008890840108506382){
     s0+=27647.0;
     s1+=2334.0;
    } else {
     s0+=64025.0;
     s1+=157.0;
    }
   } else {
    if(i3<6.645917892456055e-05){
     s0+=15987.0;
     s1+=448.0;
    } else {
     s0+=3161.0;
     s1+=1878.0;
    }
   }
  } else {
   if(i1<0.00029462575912475586){
    if(i7<0.00515198428183794){
     s0+=548.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=132.0;
    }
   } else {
    if(i4<1.001368761062622){
     s0+=150.0;
     s1+=36.0;
    } else {
     s0+=96.0;
     s1+=1158.0;
    }
   }
  }
 } else {
  if(i36<1.1231228113174438){
   if(i70<0.049862802028656006){
    s1+=9.0;
   } else {
    if(i25<0.039780065417289734){
     s0+=126.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i51<-2.5506421934551327e-06){
    if(i32<1.1446925401687622){
     s0+=9.0;
    } else {
     s0+=23.0;
     s1+=1702.0;
    }
   } else {
    if(i16<0.21134501695632935){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=112.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i10<1.0173356533050537){
   if(i53<1.0311603546142578e-05){
    if(i30<0.0011621370213106275){
     s0+=58.0;
     s1+=1150.0;
    } else {
     s0+=432.0;
     s1+=154.0;
    }
   } else {
    if(i54<0.0006296301726251841){
     s0+=382.0;
     s1+=83.0;
    } else {
     s0+=2605.0;
     s1+=27.0;
    }
   }
  } else {
   if(i51<-1.532945861981716e-05){
    s0+=51.0;
   } else {
    if(i52<1.0036413669586182){
     s0+=5.0;
     s1+=879.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i14<0.06729361414909363){
   if(i45<6.9936604631948285e-06){
    if(i51<-5.330097337719053e-06){
     s0+=4.0;
     s1+=194.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i74<-0.0035662055015563965){
     s0+=156.0;
     s1+=188.0;
    } else {
     s0+=509.0;
     s1+=18.0;
    }
   }
  } else {
   if(i60<0.8773018717765808){
    if(i38<0.027848273515701294){
     s0+=18.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i1<2.4437904357910156e-05){
     s0+=112.0;
     s1+=157.0;
    } else {
     s0+=169.0;
     s1+=13728.0;
    }
   }
  }
 }
}
if(i52<1.0018364191055298){
 if(i18<0.0018619108013808727){
  if(i31<0.0006472273962572217){
   if(i19<0.0021483898162841797){
    if(i27<0.9985378980636597){
     s0+=25136.0;
     s1+=207.0;
    } else {
     s0+=48273.0;
     s1+=79.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i28<1.1164028644561768){
    if(i43<0.9990800619125366){
     s0+=1230.0;
     s1+=66.0;
    } else {
     s0+=1318.0;
     s1+=730.0;
    }
   } else {
    if(i36<1.1353633403778076){
     s0+=12886.0;
     s1+=40.0;
    } else {
     s0+=137.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i2<-3.212690353393555e-05){
   if(i60<1.1231228113174438){
    if(i30<0.0007084591779857874){
     s0+=133.0;
     s1+=138.0;
    } else {
     s0+=13122.0;
     s1+=288.0;
    }
   } else {
    if(i35<1.2636597156524658){
     s0+=25.0;
    } else {
     s0+=8.0;
     s1+=142.0;
    }
   }
  } else {
   if(i38<0.00022635425557382405){
    s0+=1394.0;
   } else {
    if(i26<0.0009601254714652896){
     s0+=204.0;
     s1+=3721.0;
    } else {
     s0+=1594.0;
     s1+=1670.0;
    }
   }
  }
 }
} else {
 if(i23<0.1715421974658966){
  if(i21<1.0085660219192505){
   if(i3<0.00042951107025146484){
    if(i69<0.5446057319641113){
     s0+=5645.0;
     s1+=200.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   } else {
    if(i1<0.001231372356414795){
     s0+=4072.0;
     s1+=1505.0;
    } else {
     s0+=249.0;
     s1+=716.0;
    }
   }
  } else {
   if(i73<0.05277860164642334){
    if(i16<0.0031041502952575684){
     s0+=57.0;
     s1+=39.0;
    } else {
     s0+=184.0;
     s1+=1653.0;
    }
   } else {
    if(i32<1.1554484367370605){
     s0+=306.0;
     s1+=103.0;
    } else {
     s0+=42.0;
     s1+=543.0;
    }
   }
  }
 } else {
  if(i0<-4.3997592001687735e-05){
   if(i16<0.1933407485485077){
    if(i38<0.0019410947570577264){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=1081.0;
    }
   } else {
    if(i38<0.001891108462586999){
     s0+=5.0;
    } else {
     s0+=9.0;
     s1+=11105.0;
    }
   }
  } else {
   if(i23<0.21509712934494019){
    if(i60<1.0274138450622559){
     s1+=14.0;
    } else {
     s0+=364.0;
     s1+=55.0;
    }
   } else {
    if(i26<0.002552676945924759){
     s0+=16.0;
    } else {
     s0+=22.0;
     s1+=197.0;
    }
   }
  }
 }
}
if(i5<1.0037715435028076){
 if(i25<0.06171708181500435){
  if(i14<0.23577499389648438){
   if(i13<1.009824275970459){
    if(i33<8.744001388549805e-05){
     s0+=77998.0;
     s1+=941.0;
    } else {
     s0+=32171.0;
     s1+=3477.0;
    }
   } else {
    if(i26<0.0009830270428210497){
     s0+=153.0;
     s1+=499.0;
    } else {
     s0+=1214.0;
     s1+=264.0;
    }
   }
  } else {
   if(i41<-7.535020813520532e-06){
    if(i7<0.006301580928266048){
     s0+=17.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=311.0;
    }
   } else {
    s0+=93.0;
   }
  }
 } else {
  if(i1<-0.002474188804626465){
   s0+=314.0;
  } else {
   if(i17<0.8698871731758118){
    if(i21<1.0196001529693604){
     s0+=60.0;
     s1+=19.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i42<0.034912317991256714){
     s0+=22.0;
     s1+=99.0;
    } else {
     s0+=8.0;
     s1+=968.0;
    }
   }
  }
 }
} else {
 if(i34<1.1699821949005127){
  if(i15<0.00026169020566157997){
   if(i32<1.1219847202301025){
    if(i26<0.001129757147282362){
     s0+=1.0;
     s1+=2654.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i37<0.0018205418018624187){
     s0+=184.0;
    } else {
     s0+=40.0;
     s1+=661.0;
    }
   }
  } else {
   if(i40<-0.00031624193070456386){
    if(i28<1.175166130065918){
     s0+=77.0;
    } else {
     s0+=68.0;
     s1+=199.0;
    }
   } else {
    if(i49<4.3843625462614e-05){
     s0+=3895.0;
     s1+=38.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i0<-7.781089516356587e-05){
   if(i17<0.90430748462677){
    if(i59<0.002667199121788144){
     s0+=19.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=37.0;
    }
   } else {
    if(i31<0.0007978054927662015){
     s0+=12.0;
     s1+=1302.0;
    } else {
     s0+=3.0;
     s1+=12153.0;
    }
   }
  } else {
   if(i36<1.1344192028045654){
    if(i35<1.4586446285247803){
     s0+=16.0;
     s1+=76.0;
    } else {
     s0+=80.0;
    }
   } else {
    if(i35<1.629280686378479){
     s0+=3.0;
     s1+=637.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i9<1.0177061557769775){
 if(i21<1.0075196027755737){
  if(i3<0.0003134608268737793){
   if(i23<0.23268568515777588){
    if(i46<0.0007657609530724585){
     s0+=35303.0;
     s1+=1737.0;
    } else {
     s0+=68335.0;
     s1+=1022.0;
    }
   } else {
    if(i26<0.002438632771372795){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=155.0;
    }
   }
  } else {
   if(i49<2.3982916900422424e-05){
    if(i61<0.0012848377227783203){
     s0+=7165.0;
     s1+=581.0;
    } else {
     s0+=419.0;
     s1+=534.0;
    }
   } else {
    if(i19<-0.004173010587692261){
     s0+=1011.0;
     s1+=142.0;
    } else {
     s0+=1713.0;
     s1+=2572.0;
    }
   }
  }
 } else {
  if(i65<8.611982775619254e-05){
   if(i33<0.0007589459419250488){
    if(i48<-4.5964052333147265e-06){
     s0+=3.0;
    } else {
     s1+=301.0;
    }
   } else {
    if(i5<1.0105385780334473){
     s0+=584.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i29<1.0138449668884277){
    if(i45<6.830067832197528e-06){
     s1+=83.0;
    } else {
     s0+=154.0;
     s1+=42.0;
    }
   } else {
    if(i7<0.001771298237144947){
     s0+=133.0;
     s1+=57.0;
    } else {
     s0+=194.0;
     s1+=2969.0;
    }
   }
  }
 }
} else {
 if(i10<1.0192134380340576){
  if(i42<0.18755760788917542){
   if(i36<1.0869145393371582){
    if(i28<1.1222262382507324){
     s1+=674.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i15<0.0003937480505555868){
     s0+=487.0;
     s1+=663.0;
    } else {
     s0+=541.0;
     s1+=44.0;
    }
   }
  } else {
   if(i0<-2.5299492335761897e-05){
    if(i26<0.0017946064472198486){
     s0+=10.0;
    } else {
     s0+=10.0;
     s1+=1309.0;
    }
   } else {
    if(i35<1.2027409076690674){
     s0+=5.0;
     s1+=40.0;
    } else {
     s0+=74.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i28<1.6811659336090088){
   if(i5<1.0015380382537842){
    if(i25<0.034300386905670166){
     s0+=126.0;
     s1+=1.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i25<0.0036056307144463062){
     s0+=26.0;
     s1+=141.0;
    } else {
     s0+=19.0;
     s1+=11269.0;
    }
   }
  } else {
   s0+=56.0;
  }
 }
}
if(i14<0.20277491211891174){
 if(i3<0.0005164444446563721){
  if(i39<0.011292673647403717){
   if(i31<0.0005707251839339733){
    if(i8<0.9948518872261047){
     s0+=666.0;
     s1+=39.0;
    } else {
     s0+=48725.0;
     s1+=48.0;
    }
   } else {
    if(i66<-0.0005129575729370117){
     s0+=486.0;
     s1+=180.0;
    } else {
     s0+=14729.0;
     s1+=333.0;
    }
   }
  } else {
   if(i52<0.999936580657959){
    if(i46<0.05427960306406021){
     s0+=21849.0;
     s1+=204.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i2<-3.88026237487793e-05){
     s0+=13164.0;
     s1+=427.0;
    } else {
     s0+=8605.0;
     s1+=2909.0;
    }
   }
  }
 } else {
  if(i1<0.001386880874633789){
   if(i25<0.008100610226392746){
    if(i7<0.003633313812315464){
     s0+=4116.0;
     s1+=31.0;
    } else {
     s0+=502.0;
     s1+=447.0;
    }
   } else {
    if(i19<-0.0012627243995666504){
     s0+=1451.0;
     s1+=920.0;
    } else {
     s0+=519.0;
     s1+=2046.0;
    }
   }
  } else {
   if(i7<0.002878913190215826){
    if(i35<1.1174830198287964){
     s0+=15.0;
     s1+=327.0;
    } else {
     s0+=586.0;
     s1+=67.0;
    }
   } else {
    if(i52<1.0010104179382324){
     s0+=205.0;
     s1+=29.0;
    } else {
     s0+=91.0;
     s1+=3869.0;
    }
   }
  }
 }
} else {
 if(i41<-1.1532250937307253e-05){
  if(i23<0.20267266035079956){
   if(i16<0.1942431628704071){
    s0+=67.0;
   } else {
    if(i56<-0.0009353565401397645){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i34<1.1712557077407837){
    if(i37<0.0019228053279221058){
     s0+=44.0;
    } else {
     s0+=53.0;
     s1+=354.0;
    }
   } else {
    if(i38<0.002687634201720357){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=12129.0;
    }
   }
  }
 } else {
  if(i41<-8.396790690312628e-06){
   if(i25<0.031264595687389374){
    if(i73<0.20479914546012878){
     s0+=61.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i7<0.010840602219104767){
    if(i24<0.9925810098648071){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=453.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i3<0.0005390048027038574){
  if(i26<0.0008801923249848187){
   if(i32<1.05497145652771){
    if(i35<1.0577976703643799){
     s0+=17800.0;
    } else {
     s0+=3021.0;
     s1+=154.0;
    }
   } else {
    if(i31<0.0007189965108409524){
     s0+=9231.0;
     s1+=244.0;
    } else {
     s0+=593.0;
     s1+=2547.0;
    }
   }
  } else {
   if(i16<0.23129135370254517){
    if(i55<0.001986078219488263){
     s0+=70132.0;
     s1+=313.0;
    } else {
     s0+=8357.0;
     s1+=745.0;
    }
   } else {
    if(i57<0.10861606150865555){
     s0+=50.0;
     s1+=13.0;
    } else {
     s0+=25.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i18<0.0020469101145863533){
   if(i21<1.0108243227005005){
    if(i25<0.019622713327407837){
     s0+=3460.0;
     s1+=178.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    if(i15<0.00021673421724699438){
     s1+=225.0;
    } else {
     s0+=24.0;
     s1+=9.0;
    }
   }
  } else {
   if(i23<0.052129387855529785){
    if(i1<0.000910341739654541){
     s0+=1280.0;
     s1+=202.0;
    } else {
     s0+=136.0;
     s1+=265.0;
    }
   } else {
    if(i69<0.2830805778503418){
     s0+=1254.0;
     s1+=2264.0;
    } else {
     s0+=109.0;
     s1+=2168.0;
    }
   }
  }
 }
} else {
 if(i0<-6.681311060674489e-05){
  if(i2<-0.00019305944442749023){
   s0+=17.0;
  } else {
   if(i8<1.0143063068389893){
    if(i14<0.17534416913986206){
     s0+=176.0;
     s1+=428.0;
    } else {
     s0+=9.0;
     s1+=1314.0;
    }
   } else {
    if(i7<0.001084235031157732){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=11594.0;
    }
   }
  }
 } else {
  if(i33<0.0006667375564575195){
   if(i4<1.001367211341858){
    if(i51<-3.3101464396168012e-06){
     s0+=4.0;
     s1+=51.0;
    } else {
     s0+=228.0;
     s1+=5.0;
    }
   } else {
    if(i31<0.00027419510297477245){
     s0+=38.0;
     s1+=18.0;
    } else {
     s0+=76.0;
     s1+=981.0;
    }
   }
  } else {
   if(i71<0.002990126609802246){
    if(i21<1.013631820678711){
     s0+=525.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i23<0.23228031396865845){
     s0+=142.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=66.0;
    }
   }
  }
 }
}
if(i1<0.000976264476776123){
 if(i24<1.0242509841918945){
  if(i7<0.004000610671937466){
   if(i29<1.0179111957550049){
    if(i66<-0.00027748942375183105){
     s0+=4472.0;
     s1+=489.0;
    } else {
     s0+=6277.0;
     s1+=86.0;
    }
   } else {
    if(i31<0.000522974762134254){
     s0+=57419.0;
     s1+=78.0;
    } else {
     s0+=24076.0;
     s1+=662.0;
    }
   }
  } else {
   if(i5<0.9988412857055664){
    if(i29<1.140743374824524){
     s0+=19567.0;
     s1+=711.0;
    } else {
     s0+=80.0;
     s1+=167.0;
    }
   } else {
    if(i38<0.0011466463329270482){
     s0+=250.0;
     s1+=1974.0;
    } else {
     s0+=1520.0;
     s1+=2091.0;
    }
   }
  }
 } else {
  if(i2<1.5914440155029297e-05){
   if(i51<-2.5321066914330004e-06){
    if(i22<1.1220200061798096){
     s0+=214.0;
     s1+=42.0;
    } else {
     s0+=101.0;
     s1+=425.0;
    }
   } else {
    s0+=392.0;
   }
  } else {
   if(i18<0.0011560270795598626){
    s0+=73.0;
   } else {
    if(i14<0.10243630409240723){
     s0+=41.0;
     s1+=29.0;
    } else {
     s0+=35.0;
     s1+=1182.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023926454596221447){
  if(i30<0.0012914050603285432){
   if(i46<0.0001345416094409302){
    s0+=56.0;
   } else {
    if(i48<-4.069008355145343e-06){
     s0+=29.0;
    } else {
     s0+=4.0;
     s1+=2280.0;
    }
   }
  } else {
   if(i19<0.0026105642318725586){
    s0+=1810.0;
   } else {
    s1+=94.0;
   }
  }
 } else {
  if(i27<1.004748821258545){
   if(i7<0.005213239695876837){
    s0+=25.0;
   } else {
    if(i60<1.0766067504882812){
     s0+=67.0;
     s1+=401.0;
    } else {
     s0+=3.0;
     s1+=1098.0;
    }
   }
  } else {
   if(i9<0.8808902502059937){
    if(i46<0.01693120226264){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i31<0.00041603235877119005){
     s0+=7.0;
     s1+=385.0;
    } else {
     s0+=4.0;
     s1+=12105.0;
    }
   }
  }
 }
}
if(i4<1.0026252269744873){
 if(i47<1.0376746654510498){
  if(i34<1.0902695655822754){
   if(i64<1.0141187906265259){
    if(i52<0.9997629523277283){
     s0+=20283.0;
     s1+=110.0;
    } else {
     s0+=17982.0;
     s1+=2641.0;
    }
   } else {
    if(i0<-2.165135447285138e-05){
     s0+=63.0;
     s1+=621.0;
    } else {
     s0+=435.0;
     s1+=25.0;
    }
   }
  } else {
   if(i25<0.08940889686346054){
    if(i42<0.2003859281539917){
     s0+=70950.0;
     s1+=1089.0;
    } else {
     s0+=124.0;
     s1+=125.0;
    }
   } else {
    if(i8<0.9412925243377686){
     s0+=2.0;
    } else {
     s1+=207.0;
    }
   }
  }
 } else {
  if(i18<0.001964119728654623){
   if(i41<-1.896528192446567e-05){
    s1+=11.0;
   } else {
    if(i41<-8.369082934223115e-06){
     s0+=31.0;
     s1+=9.0;
    } else {
     s0+=396.0;
    }
   }
  } else {
   if(i23<0.12194857001304626){
    if(i37<0.0018289827276021242){
     s1+=7.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i7<0.004935511387884617){
     s0+=37.0;
     s1+=12.0;
    } else {
     s0+=15.0;
     s1+=741.0;
    }
   }
  }
 }
} else {
 if(i40<-0.00025204880512319505){
  if(i20<0.00011801719665527344){
   if(i30<0.006311813835054636){
    if(i33<0.0005481243133544922){
     s0+=53.0;
     s1+=444.0;
    } else {
     s0+=611.0;
     s1+=419.0;
    }
   } else {
    if(i61<-0.012667179107666016){
     s0+=146.0;
     s1+=51.0;
    } else {
     s0+=147.0;
     s1+=2488.0;
    }
   }
  } else {
   if(i7<0.004145872313529253){
    if(i8<1.018176555633545){
     s0+=123.0;
     s1+=10.0;
    } else {
     s1+=157.0;
    }
   } else {
    if(i19<0.000638425350189209){
     s0+=1.0;
    } else {
     s0+=13.0;
     s1+=11296.0;
    }
   }
  }
 } else {
  if(i8<1.0139997005462646){
   if(i1<0.0013976693153381348){
    if(i15<0.00035129254683852196){
     s0+=1120.0;
     s1+=970.0;
    } else {
     s0+=3139.0;
     s1+=200.0;
    }
   } else {
    if(i36<1.0783891677856445){
     s0+=1.0;
     s1+=610.0;
    } else {
     s0+=672.0;
     s1+=753.0;
    }
   }
  } else {
   if(i15<0.0008157600532285869){
    s1+=1400.0;
   } else {
    s0+=62.0;
   }
  }
 }
}
if(i10<1.0139820575714111){
 if(i7<0.01376460213214159){
  if(i5<1.003154993057251){
   if(i35<1.0905578136444092){
    if(i31<0.0007107663550414145){
     s0+=23059.0;
     s1+=325.0;
    } else {
     s0+=2885.0;
     s1+=2256.0;
    }
   } else {
    if(i16<0.2046813666820526){
     s0+=82767.0;
     s1+=1521.0;
    } else {
     s0+=259.0;
     s1+=262.0;
    }
   }
  } else {
   if(i34<1.1712894439697266){
    if(i28<1.116804838180542){
     s0+=1030.0;
     s1+=1356.0;
    } else {
     s0+=3795.0;
     s1+=367.0;
    }
   } else {
    if(i44<1.000957727432251){
     s0+=96.0;
     s1+=101.0;
    } else {
     s0+=37.0;
     s1+=714.0;
    }
   }
  }
 } else {
  if(i2<-2.467632293701172e-05){
   if(i23<0.09496951103210449){
    if(i56<-0.0007158696535043418){
     s0+=107.0;
     s1+=63.0;
    } else {
     s0+=808.0;
     s1+=31.0;
    }
   } else {
    if(i4<1.0069646835327148){
     s0+=11.0;
     s1+=318.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i8<0.9721177816390991){
    if(i31<0.0030641346238553524){
     s0+=180.0;
     s1+=54.0;
    } else {
     s0+=25.0;
     s1+=66.0;
    }
   } else {
    if(i67<0.012549648061394691){
     s0+=48.0;
     s1+=3211.0;
    } else {
     s0+=23.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i8<1.0144556760787964){
  if(i34<1.0905089378356934){
   s1+=636.0;
  } else {
   if(i0<-7.328804349526763e-05){
    if(i49<7.132477549021132e-06){
     s0+=109.0;
     s1+=25.0;
    } else {
     s0+=31.0;
     s1+=664.0;
    }
   } else {
    if(i56<-0.0042650457471609116){
     s0+=26.0;
     s1+=127.0;
    } else {
     s0+=968.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i0<-6.203705561347306e-05){
   if(i33<0.0018826723098754883){
    if(i6<0.00028079748153686523){
     s1+=12126.0;
    } else {
     s0+=9.0;
    }
   } else {
    s0+=15.0;
   }
  } else {
   if(i66<0.0012025237083435059){
    if(i36<1.0840115547180176){
     s1+=12.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i31<0.00030213186983019114){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=82.0;
    }
   }
  }
 }
}
if(i1<0.0009567141532897949){
 if(i16<0.2009410262107849){
  if(i62<0.0048837242648005486){
   if(i3<0.0002835392951965332){
    if(i30<0.001067593926563859){
     s0+=29117.0;
     s1+=1913.0;
    } else {
     s0+=71469.0;
     s1+=437.0;
    }
   } else {
    if(i18<0.0018551782704889774){
     s0+=6539.0;
     s1+=126.0;
    } else {
     s0+=3884.0;
     s1+=2425.0;
    }
   }
  } else {
   if(i16<0.05034235119819641){
    if(i3<0.0006697177886962891){
     s0+=2370.0;
     s1+=137.0;
    } else {
     s0+=275.0;
     s1+=149.0;
    }
   } else {
    if(i18<0.002607337897643447){
     s0+=268.0;
     s1+=66.0;
    } else {
     s0+=243.0;
     s1+=931.0;
    }
   }
  }
 } else {
  if(i69<0.09604363888502121){
   if(i24<1.0176544189453125){
    if(i65<0.0008820045622996986){
     s0+=153.0;
     s1+=10.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i31<0.00044709770008921623){
     s0+=10.0;
    } else {
     s0+=14.0;
     s1+=163.0;
    }
   }
  } else {
   if(i30<0.0026068519800901413){
    if(i76<0.13038033246994019){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   } else {
    if(i41<-8.003753464436159e-06){
     s0+=32.0;
     s1+=1472.0;
    } else {
     s0+=49.0;
    }
   }
  }
 }
} else {
 if(i32<1.1706266403198242){
  if(i37<0.0011892770417034626){
   if(i46<0.0001345416094409302){
    s0+=65.0;
   } else {
    if(i26<0.000984633108600974){
     s1+=2124.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i30<0.0012568985112011433){
    s1+=161.0;
   } else {
    if(i71<0.0032123923301696777){
     s0+=1912.0;
     s1+=43.0;
    } else {
     s0+=10.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i64<0.8982748985290527){
   if(i23<0.0006538331508636475){
    if(i52<1.0032172203063965){
     s0+=40.0;
     s1+=2.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i29<0.8617047071456909){
     s0+=2.0;
    } else {
     s0+=11.0;
     s1+=192.0;
    }
   }
  } else {
   if(i28<1.629280686378479){
    if(i5<1.0022896528244019){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=21.0;
     s1+=13216.0;
    }
   } else {
    if(i20<-9.566545486450195e-05){
     s0+=65.0;
     s1+=1.0;
    } else {
     s1+=560.0;
    }
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i7<0.00760293286293745){
  if(i33<8.302927017211914e-05){
   if(i52<0.9997943639755249){
    if(i43<0.9978936910629272){
     s0+=18733.0;
    } else {
     s0+=26301.0;
     s1+=106.0;
    }
   } else {
    if(i18<0.0011022629914805293){
     s0+=26981.0;
     s1+=89.0;
    } else {
     s0+=4567.0;
     s1+=638.0;
    }
   }
  } else {
   if(i37<0.0009623038349673152){
    if(i58<0.012819590978324413){
     s0+=6302.0;
     s1+=829.0;
    } else {
     s0+=408.0;
     s1+=1212.0;
    }
   } else {
    if(i26<0.0009054553229361773){
     s0+=59.0;
     s1+=319.0;
    } else {
     s0+=26110.0;
     s1+=984.0;
    }
   }
  }
 } else {
  if(i23<0.08986252546310425){
   if(i26<0.0010812184773385525){
    if(i5<0.9958069324493408){
     s0+=12.0;
    } else {
     s1+=134.0;
    }
   } else {
    if(i78<-0.07329055666923523){
     s0+=427.0;
     s1+=285.0;
    } else {
     s0+=4048.0;
     s1+=118.0;
    }
   }
  } else {
   if(i22<1.1022567749023438){
    if(i20<-0.00027114152908325195){
     s0+=459.0;
     s1+=228.0;
    } else {
     s0+=83.0;
     s1+=565.0;
    }
   } else {
    if(i8<0.9821168184280396){
     s0+=37.0;
     s1+=320.0;
    } else {
     s0+=8.0;
     s1+=1992.0;
    }
   }
  }
 }
} else {
 if(i7<0.003694032086059451){
  if(i45<-1.3993417269375641e-05){
   if(i44<1.0000288486480713){
    if(i55<0.012546594254672527){
     s0+=39.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i51<-5.6469762057531625e-05){
     s0+=28.0;
    } else {
     s0+=25.0;
     s1+=640.0;
    }
   }
  } else {
   if(i37<0.0007423514034599066){
    if(i34<1.0482776165008545){
     s0+=48.0;
    } else {
     s1+=88.0;
    }
   } else {
    if(i67<0.0014490692410618067){
     s0+=1545.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i4<1.0020344257354736){
   if(i36<1.1869213581085205){
    s0+=208.0;
   } else {
    s1+=149.0;
   }
  } else {
   if(i48<-6.419467354135122e-06){
    if(i38<0.008258751593530178){
     s0+=78.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i16<0.0032147467136383057){
     s0+=36.0;
     s1+=59.0;
    } else {
     s0+=141.0;
     s1+=15401.0;
    }
   }
  }
 }
}
if(i3<0.0005989670753479004){
 if(i0<-9.142013732343912e-05){
  if(i42<0.03362637758255005){
   if(i47<0.7727022171020508){
    if(i67<0.014810163527727127){
     s1+=12.0;
    } else {
     s0+=22.0;
     s1+=5.0;
    }
   } else {
    if(i13<0.945099949836731){
     s0+=446.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   }
  } else {
   if(i23<0.1459270417690277){
    if(i40<-0.0002675597497727722){
     s0+=33.0;
     s1+=136.0;
    } else {
     s0+=32.0;
     s1+=9.0;
    }
   } else {
    s1+=724.0;
   }
  }
 } else {
  if(i7<0.003363208146765828){
   if(i7<0.001948872348293662){
    if(i60<1.0100414752960205){
     s0+=6580.0;
     s1+=139.0;
    } else {
     s0+=60407.0;
     s1+=154.0;
    }
   } else {
    if(i26<0.0005703169154003263){
     s0+=4988.0;
     s1+=514.0;
    } else {
     s0+=12746.0;
     s1+=77.0;
    }
   }
  } else {
   if(i6<-3.635883331298828e-06){
    if(i7<0.014952143654227257){
     s0+=20566.0;
     s1+=269.0;
    } else {
     s0+=34.0;
     s1+=44.0;
    }
   } else {
    if(i37<0.002622655127197504){
     s0+=1129.0;
     s1+=2654.0;
    } else {
     s0+=3103.0;
     s1+=603.0;
    }
   }
  }
 }
} else {
 if(i25<0.007681373041123152){
  if(i5<1.008032202720642){
   if(i7<0.0029807770624756813){
    if(i8<1.0136313438415527){
     s0+=3338.0;
     s1+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i34<1.0930736064910889){
     s0+=79.0;
     s1+=644.0;
    } else {
     s0+=548.0;
     s1+=54.0;
    }
   }
  } else {
   if(i38<0.0012018210254609585){
    s1+=810.0;
   } else {
    if(i1<0.0021582841873168945){
     s0+=536.0;
     s1+=111.0;
    } else {
     s0+=13.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i2<1.1980533599853516e-05){
   if(i40<-0.0002778026682790369){
    if(i54<0.0014396999031305313){
     s0+=185.0;
     s1+=19.0;
    } else {
     s0+=105.0;
     s1+=382.0;
    }
   } else {
    if(i22<1.104677438735962){
     s0+=547.0;
     s1+=33.0;
    } else {
     s0+=60.0;
     s1+=41.0;
    }
   }
  } else {
   if(i33<0.0017078518867492676){
    if(i16<0.1281968355178833){
     s0+=771.0;
     s1+=2917.0;
    } else {
     s0+=101.0;
     s1+=13524.0;
    }
   } else {
    s0+=96.0;
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i7<0.007492475211620331){
  if(i8<1.005873441696167){
   if(i33<6.22868537902832e-05){
    if(i34<1.0838289260864258){
     s0+=26215.0;
     s1+=618.0;
    } else {
     s0+=46177.0;
     s1+=28.0;
    }
   } else {
    if(i20<-0.00024139881134033203){
     s0+=8570.0;
     s1+=166.0;
    } else {
     s0+=25155.0;
     s1+=2568.0;
    }
   }
  } else {
   if(i7<0.004109151195734739){
    if(i0<-7.0865178713575e-05){
     s0+=45.0;
     s1+=68.0;
    } else {
     s0+=2862.0;
     s1+=39.0;
    }
   } else {
    if(i44<1.0014920234680176){
     s0+=126.0;
     s1+=732.0;
    } else {
     s0+=44.0;
    }
   }
  }
 } else {
  if(i64<1.0078721046447754){
   if(i27<0.9954127073287964){
    if(i60<1.0729289054870605){
     s0+=4563.0;
     s1+=524.0;
    } else {
     s0+=62.0;
     s1+=261.0;
    }
   } else {
    if(i58<0.025705017149448395){
     s0+=343.0;
     s1+=118.0;
    } else {
     s0+=141.0;
     s1+=930.0;
    }
   }
  } else {
   if(i12<1.016197919845581){
    if(i6<-2.422928810119629e-05){
     s0+=109.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=451.0;
    }
   } else {
    if(i27<0.9663470983505249){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=1552.0;
    }
   }
  }
 }
} else {
 if(i35<1.176405668258667){
  if(i54<0.0007057955954223871){
   if(i31<0.0011447416618466377){
    if(i48<-4.115849151276052e-06){
     s0+=10.0;
    } else {
     s1+=2207.0;
    }
   } else {
    s0+=94.0;
   }
  } else {
   if(i28<1.116804838180542){
    s1+=167.0;
   } else {
    s0+=1861.0;
   }
  }
 } else {
  if(i23<0.02196362614631653){
   if(i44<1.000321865081787){
    if(i15<0.0005975969834253192){
     s0+=49.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i15<9.110631799558178e-05){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=74.0;
    }
   }
  } else {
   if(i68<1.0098912715911865){
    if(i27<0.9874249696731567){
     s0+=8.0;
     s1+=13.0;
    } else {
     s0+=42.0;
     s1+=13761.0;
    }
   } else {
    if(i54<0.0007382028270512819){
     s0+=6.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
}
if(i7<0.008001316338777542){
 if(i45<-1.258116026292555e-05){
  if(i53<2.7626752853393555e-05){
   if(i1<0.0017895698547363281){
    if(i34<1.1003978252410889){
     s1+=141.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i3<0.002081155776977539){
     s1+=1649.0;
    } else {
     s0+=9.0;
     s1+=359.0;
    }
   }
  } else {
   if(i2<0.0007489323616027832){
    s0+=129.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i31<0.0007107793353497982){
   if(i9<1.015373945236206){
    if(i65<0.0001730332151055336){
     s0+=67269.0;
     s1+=162.0;
    } else {
     s0+=12939.0;
     s1+=310.0;
    }
   } else {
    if(i26<0.002737093484029174){
     s0+=739.0;
     s1+=39.0;
    } else {
     s0+=62.0;
     s1+=82.0;
    }
   }
  } else {
   if(i8<1.0058526992797852){
    if(i38<0.001046649063937366){
     s0+=3704.0;
     s1+=2297.0;
    } else {
     s0+=24927.0;
     s1+=806.0;
    }
   } else {
    if(i53<1.0073184967041016e-05){
     s0+=492.0;
     s1+=1774.0;
    } else {
     s0+=1972.0;
     s1+=230.0;
    }
   }
  }
 }
} else {
 if(i2<-1.901388168334961e-05){
  if(i14<0.1467638611793518){
   if(i75<0.033925510942935944){
    if(i23<0.10243570804595947){
     s0+=3546.0;
     s1+=69.0;
    } else {
     s0+=185.0;
     s1+=94.0;
    }
   } else {
    if(i31<0.0020421938970685005){
     s0+=86.0;
     s1+=15.0;
    } else {
     s0+=72.0;
     s1+=109.0;
    }
   }
  } else {
   if(i29<1.1081805229187012){
    if(i75<-0.004523760173469782){
     s0+=51.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=108.0;
    }
   } else {
    if(i32<1.1794191598892212){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=348.0;
    }
   }
  }
 } else {
  if(i10<0.9594205021858215){
   if(i18<0.006018118932843208){
    if(i33<0.0009542703628540039){
     s0+=208.0;
     s1+=12.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i49<0.000315075769321993){
     s0+=2.0;
     s1+=182.0;
    } else {
     s0+=110.0;
     s1+=126.0;
    }
   }
  } else {
   if(i48<-7.725942850811407e-06){
    s0+=30.0;
   } else {
    if(i13<0.9868322014808655){
     s0+=156.0;
     s1+=1483.0;
    } else {
     s0+=12.0;
     s1+=13635.0;
    }
   }
  }
 }
}
if(i13<1.0152629613876343){
 if(i31<0.0007169159362092614){
  if(i49<-2.2809605070506223e-05){
   if(i48<-6.010288416291587e-06){
    s0+=24.0;
   } else {
    if(i3<0.0009636282920837402){
     s0+=28.0;
    } else {
     s1+=450.0;
    }
   }
  } else {
   if(i1<0.0013466477394104004){
    if(i36<1.1354830265045166){
     s0+=78554.0;
     s1+=368.0;
    } else {
     s0+=2558.0;
     s1+=127.0;
    }
   } else {
    if(i20<-6.35385513305664e-05){
     s0+=16.0;
    } else {
     s0+=6.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i2<-3.069639205932617e-05){
   if(i0<-7.608508167322725e-05){
    if(i16<0.08178305625915527){
     s0+=846.0;
     s1+=68.0;
    } else {
     s0+=45.0;
     s1+=341.0;
    }
   } else {
    if(i26<0.0009515490382909775){
     s0+=794.0;
     s1+=287.0;
    } else {
     s0+=23762.0;
     s1+=330.0;
    }
   }
  } else {
   if(i7<0.003997194580733776){
    if(i31<0.0010019901674240828){
     s0+=2712.0;
     s1+=797.0;
    } else {
     s0+=4269.0;
     s1+=21.0;
    }
   } else {
    if(i23<0.0356561541557312){
     s0+=684.0;
     s1+=329.0;
    } else {
     s0+=1443.0;
     s1+=6992.0;
    }
   }
  }
 }
} else {
 if(i34<1.1673319339752197){
  if(i34<1.0953161716461182){
   if(i66<0.005482375621795654){
    s1+=1362.0;
   } else {
    s0+=4.0;
   }
  } else {
   if(i19<0.0019828081130981445){
    if(i36<1.1269173622131348){
     s0+=564.0;
     s1+=71.0;
    } else {
     s0+=193.0;
     s1+=269.0;
    }
   } else {
    if(i44<0.9987452030181885){
     s0+=7.0;
    } else {
     s1+=392.0;
    }
   }
  }
 } else {
  if(i41<-1.0497658877284266e-05){
   if(i2<8.279085159301758e-05){
    if(i2<8.26716423034668e-05){
     s0+=22.0;
     s1+=1226.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=10561.0;
   }
  } else {
   s0+=204.0;
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i13<1.0110652446746826){
  if(i23<0.23059505224227905){
   if(i33<8.374452590942383e-05){
    if(i35<1.0905578136444092){
     s0+=21681.0;
     s1+=753.0;
    } else {
     s0+=56444.0;
     s1+=115.0;
    }
   } else {
    if(i7<0.004000568296760321){
     s0+=25384.0;
     s1+=674.0;
    } else {
     s0+=5847.0;
     s1+=2708.0;
    }
   }
  } else {
   if(i7<0.007549887057393789){
    if(i4<1.0007565021514893){
     s0+=72.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    s1+=363.0;
   }
  }
 } else {
  if(i1<0.00024297833442687988){
   if(i18<0.0026908242143690586){
    if(i37<0.0009504338959231973){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=538.0;
     s1+=27.0;
    }
   } else {
    if(i39<0.017848584800958633){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=27.0;
     s1+=236.0;
    }
   }
  } else {
   if(i31<0.000657696626149118){
    if(i33<0.0003361701965332031){
     s0+=187.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   } else {
    if(i72<6.36356562608853e-05){
     s0+=46.0;
     s1+=856.0;
    } else {
     s0+=27.0;
    }
   }
  }
 }
} else {
 if(i23<0.15998652577400208){
  if(i1<0.0011906027793884277){
   if(i25<0.013970516622066498){
    if(i66<0.0008161664009094238){
     s0+=3123.0;
     s1+=244.0;
    } else {
     s0+=406.0;
     s1+=219.0;
    }
   } else {
    if(i20<-0.00020885467529296875){
     s0+=863.0;
     s1+=620.0;
    } else {
     s0+=60.0;
     s1+=693.0;
    }
   }
  } else {
   if(i31<0.0010920120403170586){
    if(i53<1.7821788787841797e-05){
     s0+=105.0;
     s1+=2701.0;
    } else {
     s0+=84.0;
     s1+=16.0;
    }
   } else {
    if(i30<0.0024025305174291134){
     s0+=900.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=871.0;
    }
   }
  }
 } else {
  if(i36<1.1181323528289795){
   if(i48<-3.976642801717389e-06){
    if(i38<0.004151192028075457){
     s0+=149.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i5<1.003499984741211){
     s0+=58.0;
     s1+=27.0;
    } else {
     s0+=8.0;
     s1+=246.0;
    }
   }
  } else {
   if(i34<1.170027494430542){
    if(i26<0.0019862819463014603){
     s0+=137.0;
    } else {
     s0+=26.0;
     s1+=500.0;
    }
   } else {
    if(i3<0.0007436275482177734){
     s0+=6.0;
     s1+=232.0;
    } else {
     s0+=13.0;
     s1+=12438.0;
    }
   }
  }
 }
}
if(i52<1.0018928050994873){
 if(i5<1.0038654804229736){
  if(i25<0.06780664622783661){
   if(i7<0.0036074393428862095){
    if(i61<-0.0006615519523620605){
     s0+=14885.0;
     s1+=601.0;
    } else {
     s0+=68554.0;
     s1+=392.0;
    }
   } else {
    if(i38<0.0012160821352154016){
     s0+=3149.0;
     s1+=2512.0;
    } else {
     s0+=18099.0;
     s1+=859.0;
    }
   }
  } else {
   if(i63<1.927005359902978e-05){
    if(i7<0.014755155891180038){
     s0+=8.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=587.0;
    }
   } else {
    s0+=216.0;
   }
  }
 } else {
  if(i61<0.0015413761138916016){
   if(i5<1.0084357261657715){
    if(i69<0.14266008138656616){
     s0+=889.0;
     s1+=423.0;
    } else {
     s1+=165.0;
    }
   } else {
    if(i63<-3.86944338970352e-06){
     s1+=402.0;
    } else {
     s0+=14.0;
     s1+=34.0;
    }
   }
  } else {
   if(i7<0.0048085590824484825){
    if(i35<1.1694481372833252){
     s0+=40.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i44<0.9981777667999268){
     s0+=9.0;
    } else {
     s1+=1558.0;
    }
   }
  }
 }
} else {
 if(i6<4.214048385620117e-05){
  if(i23<0.18142876029014587){
   if(i7<0.003687911666929722){
    if(i57<0.060976676642894745){
     s0+=5350.0;
     s1+=72.0;
    } else {
     s0+=531.0;
     s1+=37.0;
    }
   } else {
    if(i68<1.0032426118850708){
     s0+=806.0;
     s1+=1167.0;
    } else {
     s0+=2149.0;
     s1+=572.0;
    }
   }
  } else {
   if(i0<-4.505717515712604e-05){
    if(i33<0.001001119613647461){
     s0+=7.0;
     s1+=1183.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i34<1.1806621551513672){
     s0+=174.0;
     s1+=11.0;
    } else {
     s0+=27.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i37<0.001963670365512371){
   if(i28<1.1180615425109863){
    s1+=712.0;
   } else {
    if(i3<0.0029531121253967285){
     s0+=1023.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i5<1.0048139095306396){
    if(i18<0.005427579395473003){
     s0+=318.0;
     s1+=64.0;
    } else {
     s0+=154.0;
     s1+=510.0;
    }
   } else {
    if(i5<1.0062124729156494){
     s0+=75.0;
     s1+=363.0;
    } else {
     s0+=29.0;
     s1+=11900.0;
    }
   }
  }
 }
}
if(i5<1.0038702487945557){
 if(i29<1.1279923915863037){
  if(i24<1.0214502811431885){
   if(i31<0.000717135495506227){
    if(i28<1.0817922353744507){
     s0+=16280.0;
     s1+=297.0;
    } else {
     s0+=62102.0;
     s1+=154.0;
    }
   } else {
    if(i21<0.9981818199157715){
     s0+=20562.0;
     s1+=441.0;
    } else {
     s0+=11440.0;
     s1+=3649.0;
    }
   }
  } else {
   if(i0<-5.9054997109342366e-05){
    if(i15<0.00029211671790108085){
     s0+=14.0;
     s1+=260.0;
    } else {
     s0+=66.0;
     s1+=49.0;
    }
   } else {
    if(i3<0.0003019571304321289){
     s0+=464.0;
     s1+=40.0;
    } else {
     s0+=183.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i30<0.006025540176779032){
   if(i68<1.001260757446289){
    if(i7<0.00631844624876976){
     s0+=766.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i3<0.0001677870750427246){
     s0+=202.0;
     s1+=57.0;
    } else {
     s0+=76.0;
     s1+=256.0;
    }
   }
  } else {
   if(i46<0.002466073026880622){
    s0+=40.0;
   } else {
    if(i52<1.0040329694747925){
     s0+=1.0;
     s1+=1156.0;
    } else {
     s0+=44.0;
     s1+=56.0;
    }
   }
  }
 }
} else {
 if(i7<0.003448847448453307){
  if(i0<-8.863867697073147e-05){
   if(i11<1.0134849548339844){
    if(i26<0.002626282162964344){
     s0+=54.0;
     s1+=1.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i27<1.0143117904663086){
     s0+=21.0;
     s1+=26.0;
    } else {
     s1+=263.0;
    }
   }
  } else {
   if(i33<0.0005122125148773193){
    if(i38<0.0008107273606583476){
     s1+=376.0;
    } else {
     s0+=293.0;
    }
   } else {
    s0+=3380.0;
   }
  }
 } else {
  if(i38<0.0020891502499580383){
   if(i37<0.0010322039015591145){
    if(i26<0.0010942714288830757){
     s1+=1821.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i15<0.0002622715546749532){
     s0+=19.0;
     s1+=367.0;
    } else {
     s0+=539.0;
     s1+=9.0;
    }
   }
  } else {
   if(i5<1.0053949356079102){
    if(i14<0.11730876564979553){
     s0+=103.0;
     s1+=158.0;
    } else {
     s0+=12.0;
     s1+=883.0;
    }
   } else {
    if(i5<1.006525993347168){
     s0+=27.0;
     s1+=786.0;
    } else {
     s0+=5.0;
     s1+=12854.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i16<0.20535829663276672){
  if(i18<0.0016681499546393752){
   if(i61<-0.0008019208908081055){
    if(i46<0.0002485832083038986){
     s0+=281.0;
     s1+=298.0;
    } else {
     s0+=12127.0;
     s1+=156.0;
    }
   } else {
    if(i34<1.1354830265045166){
     s0+=69751.0;
     s1+=261.0;
    } else {
     s0+=6162.0;
     s1+=168.0;
    }
   }
  } else {
   if(i2<-2.485513687133789e-05){
    if(i38<0.0009091375395655632){
     s0+=455.0;
     s1+=284.0;
    } else {
     s0+=18174.0;
     s1+=466.0;
    }
   } else {
    if(i35<1.0533521175384521){
     s0+=1238.0;
    } else {
     s0+=1442.0;
     s1+=2979.0;
    }
   }
  }
 } else {
  if(i41<-8.040256034291815e-06){
   if(i50<0.03546762466430664){
    if(i44<1.0014300346374512){
     s0+=9.0;
     s1+=31.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i68<1.0102018117904663){
     s0+=8.0;
     s1+=700.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i41<-5.903706551180221e-06){
    if(i47<0.9987025856971741){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=16.0;
    }
   } else {
    s0+=190.0;
   }
  }
 }
} else {
 if(i25<0.009544448927044868){
  if(i45<-8.894636266632006e-06){
   if(i38<0.0013155876658856869){
    if(i35<1.1209434270858765){
     s0+=2.0;
     s1+=1247.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i8<1.0159739255905151){
     s0+=267.0;
     s1+=27.0;
    } else {
     s1+=521.0;
    }
   }
  } else {
   if(i53<1.3530254364013672e-05){
    if(i24<1.012683629989624){
     s0+=2007.0;
     s1+=311.0;
    } else {
     s0+=302.0;
     s1+=425.0;
    }
   } else {
    if(i20<0.00038951635360717773){
     s0+=2478.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i42<0.06128796935081482){
   if(i27<0.996983528137207){
    if(i39<0.1620303988456726){
     s0+=722.0;
     s1+=119.0;
    } else {
     s0+=5.0;
     s1+=121.0;
    }
   } else {
    if(i11<1.0151106119155884){
     s0+=283.0;
     s1+=813.0;
    } else {
     s0+=18.0;
     s1+=775.0;
    }
   }
  } else {
   if(i0<-6.918679719092324e-05){
    if(i52<0.9981154799461365){
     s0+=16.0;
    } else {
     s0+=116.0;
     s1+=13386.0;
    }
   } else {
    if(i27<0.9993598461151123){
     s0+=363.0;
     s1+=252.0;
    } else {
     s0+=149.0;
     s1+=879.0;
    }
   }
  }
 }
}
if(i11<1.0135215520858765){
 if(i57<0.4625667929649353){
  if(i21<1.0085668563842773){
   if(i18<0.0017318971222266555){
    if(i26<0.0005620250012725592){
     s0+=29048.0;
     s1+=712.0;
    } else {
     s0+=62909.0;
     s1+=216.0;
    }
   } else {
    if(i26<0.0009550844551995397){
     s0+=2405.0;
     s1+=3045.0;
    } else {
     s0+=20534.0;
     s1+=2281.0;
    }
   }
  } else {
   if(i7<0.003972531761974096){
    if(i37<0.0008433187031187117){
     s1+=170.0;
    } else {
     s0+=412.0;
     s1+=27.0;
    }
   } else {
    if(i22<1.0241833925247192){
     s0+=75.0;
     s1+=23.0;
    } else {
     s0+=105.0;
     s1+=1677.0;
    }
   }
  }
 } else {
  if(i22<1.0955066680908203){
   if(i29<1.0431190729141235){
    s0+=123.0;
   } else {
    if(i45<5.985732423141599e-05){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i23<0.04800540208816528){
    if(i10<0.9674911499023438){
     s0+=10.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<1.1682028770446777){
     s0+=6.0;
     s1+=45.0;
    } else {
     s1+=1196.0;
    }
   }
  }
 }
} else {
 if(i0<-6.67999847792089e-05){
  if(i38<0.002411174587905407){
   if(i48<-3.043360720766941e-06){
    if(i51<-8.831249033391941e-06){
     s0+=172.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i63<3.7192198760749307e-06){
     s1+=1152.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i0<-8.183057070709765e-05){
    if(i7<0.005190342664718628){
     s0+=6.0;
     s1+=478.0;
    } else {
     s0+=1.0;
     s1+=11449.0;
    }
   } else {
    if(i68<1.0001014471054077){
     s0+=20.0;
    } else {
     s0+=18.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i33<0.0006656050682067871){
   if(i32<1.5356957912445068){
    if(i2<1.5914440155029297e-05){
     s0+=176.0;
     s1+=75.0;
    } else {
     s0+=33.0;
     s1+=1052.0;
    }
   } else {
    s0+=153.0;
   }
  } else {
   if(i34<1.1984384059906006){
    s0+=639.0;
   } else {
    if(i14<0.17023488879203796){
     s0+=23.0;
    } else {
     s1+=72.0;
    }
   }
  }
 }
}
if(i6<2.0205974578857422e-05){
 if(i16<0.2131149172782898){
  if(i30<0.0010622595436871052){
   if(i11<1.0068285465240479){
    if(i7<0.0036016309168189764){
     s0+=27958.0;
     s1+=800.0;
    } else {
     s0+=2751.0;
     s1+=1546.0;
    }
   } else {
    if(i18<0.0019004883943125606){
     s0+=80.0;
    } else {
     s0+=120.0;
     s1+=507.0;
    }
   }
  } else {
   if(i28<1.0905578136444092){
    s1+=87.0;
   } else {
    if(i22<1.122455358505249){
     s0+=75917.0;
     s1+=631.0;
    } else {
     s0+=2166.0;
     s1+=551.0;
    }
   }
  }
 } else {
  if(i26<0.0025765602476894855){
   if(i10<1.010566234588623){
    if(i41<-1.0444810868648347e-05){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=114.0;
    }
   } else {
    if(i73<0.17618882656097412){
     s1+=12.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i0<-1.7180402210215107e-05){
    if(i37<0.0032135851215571165){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=572.0;
    }
   } else {
    if(i42<0.23869982361793518){
     s0+=40.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i2<8.314847946166992e-05){
  if(i40<-0.00022632359468843788){
   if(i23<0.0657801628112793){
    if(i52<1.0023787021636963){
     s0+=103.0;
     s1+=125.0;
    } else {
     s0+=460.0;
     s1+=125.0;
    }
   } else {
    if(i0<-4.2179759475402534e-05){
     s0+=225.0;
     s1+=2894.0;
    } else {
     s0+=250.0;
     s1+=313.0;
    }
   }
  } else {
   if(i25<0.019323967397212982){
    if(i18<0.002004699083045125){
     s0+=3288.0;
     s1+=4.0;
    } else {
     s0+=1468.0;
     s1+=455.0;
    }
   } else {
    if(i5<1.000030279159546){
     s0+=359.0;
     s1+=59.0;
    } else {
     s0+=156.0;
     s1+=447.0;
    }
   }
  }
 } else {
  if(i35<1.1672043800354004){
   if(i26<0.0010737174889072776){
    s1+=1926.0;
   } else {
    s0+=1106.0;
   }
  } else {
   if(i10<0.9545799493789673){
    if(i44<1.000562310218811){
     s0+=41.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=77.0;
    }
   } else {
    if(i64<0.7806335091590881){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=28.0;
     s1+=13037.0;
    }
   }
  }
 }
}
if(i12<1.0181405544281006){
 if(i6<3.796815872192383e-05){
  if(i50<0.34948259592056274){
   if(i35<1.0905578136444092){
    if(i7<0.003427214454859495){
     s0+=23666.0;
     s1+=612.0;
    } else {
     s0+=3247.0;
     s1+=2428.0;
    }
   } else {
    if(i4<1.0023819208145142){
     s0+=82438.0;
     s1+=1297.0;
    } else {
     s0+=3510.0;
     s1+=1042.0;
    }
   }
  } else {
   if(i16<0.05203920602798462){
    if(i5<0.9958027005195618){
     s0+=159.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i47<1.0813894271850586){
     s0+=8.0;
     s1+=455.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i21<1.0107762813568115){
   if(i39<0.024143069982528687){
    if(i60<1.0443177223205566){
     s0+=441.0;
     s1+=529.0;
    } else {
     s0+=1243.0;
     s1+=120.0;
    }
   } else {
    if(i29<1.0529450178146362){
     s0+=278.0;
     s1+=159.0;
    } else {
     s0+=127.0;
     s1+=1198.0;
    }
   }
  } else {
   if(i16<0.0036022067070007324){
    if(i8<0.9801981449127197){
     s0+=29.0;
     s1+=15.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i15<0.0009532507392577827){
     s0+=51.0;
     s1+=2214.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
} else {
 if(i23<0.1640814244747162){
  if(i8<1.0143699645996094){
   if(i32<1.0905578136444092){
    s1+=606.0;
   } else {
    if(i11<1.0186388492584229){
     s0+=974.0;
     s1+=190.0;
    } else {
     s0+=194.0;
     s1+=188.0;
    }
   }
  } else {
   if(i33<0.0012046098709106445){
    if(i5<1.0017348527908325){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=1236.0;
    }
   } else {
    s0+=60.0;
   }
  }
 } else {
  if(i41<-6.491239219030831e-06){
   if(i0<-3.496812132652849e-05){
    if(i28<1.1767785549163818){
     s0+=28.0;
     s1+=38.0;
    } else {
     s0+=16.0;
     s1+=11661.0;
    }
   } else {
    if(i52<1.0035359859466553){
     s0+=25.0;
     s1+=139.0;
    } else {
     s0+=66.0;
     s1+=9.0;
    }
   }
  } else {
   if(i51<-3.886872491420945e-06){
    if(i54<0.0028608168940991163){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=88.0;
   }
  }
 }
}
if(i0<-9.171762212645262e-05){
 if(i71<-0.014893025159835815){
  if(i14<0.04174652695655823){
   if(i10<0.962409496307373){
    if(i15<0.0004767486243508756){
     s0+=414.0;
     s1+=11.0;
    } else {
     s0+=87.0;
     s1+=34.0;
    }
   } else {
    if(i45<6.108870002208278e-05){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i45<5.567259358940646e-05){
    if(i49<0.00034456930006854236){
     s0+=3.0;
     s1+=346.0;
    } else {
     s0+=23.0;
     s1+=14.0;
    }
   } else {
    if(i75<0.03261500597000122){
     s0+=43.0;
     s1+=14.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i61<-0.012434601783752441){
   if(i23<0.05920553207397461){
    s0+=166.0;
   } else {
    s1+=30.0;
   }
  } else {
   if(i33<0.0017116665840148926){
    if(i16<0.13574832677841187){
     s0+=328.0;
     s1+=2046.0;
    } else {
     s0+=31.0;
     s1+=13127.0;
    }
   } else {
    s0+=67.0;
   }
  }
 }
} else {
 if(i3<0.00043398141860961914){
  if(i18<0.0014910019235685468){
   if(i27<0.9986661672592163){
    if(i37<0.0002502943389117718){
     s0+=3870.0;
     s1+=395.0;
    } else {
     s0+=28726.0;
     s1+=82.0;
    }
   } else {
    if(i37<0.0021304397378116846){
     s0+=50682.0;
     s1+=47.0;
    } else {
     s0+=551.0;
     s1+=88.0;
    }
   }
  } else {
   if(i28<1.1164028644561768){
    if(i4<0.9996485710144043){
     s0+=1833.0;
     s1+=177.0;
    } else {
     s0+=404.0;
     s1+=2035.0;
    }
   } else {
    if(i11<1.0136479139328003){
     s0+=20975.0;
     s1+=607.0;
    } else {
     s0+=96.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i39<0.01021866500377655){
   if(i20<0.0001614689826965332){
    if(i17<1.0144634246826172){
     s0+=3851.0;
     s1+=184.0;
    } else {
     s0+=274.0;
     s1+=82.0;
    }
   } else {
    if(i35<1.1177868843078613){
     s0+=2.0;
     s1+=538.0;
    } else {
     s0+=626.0;
     s1+=18.0;
    }
   }
  } else {
   if(i15<0.00034966785460710526){
    if(i35<1.116804838180542){
     s0+=79.0;
     s1+=1836.0;
    } else {
     s0+=1525.0;
     s1+=1860.0;
    }
   } else {
    if(i22<1.17277193069458){
     s0+=2138.0;
     s1+=191.0;
    } else {
     s1+=123.0;
    }
   }
  }
 }
}
if(i9<1.0173306465148926){
 if(i59<0.003634457243606448){
  if(i0<-8.235790301114321e-05){
   if(i1<0.00034356117248535156){
    if(i16<0.17441394925117493){
     s0+=744.0;
     s1+=172.0;
    } else {
     s0+=3.0;
     s1+=137.0;
    }
   } else {
    if(i48<-6.216310794115998e-06){
     s0+=234.0;
    } else {
     s0+=128.0;
     s1+=2193.0;
    }
   }
  } else {
   if(i7<0.003631831146776676){
    if(i5<1.0079580545425415){
     s0+=89282.0;
     s1+=1106.0;
    } else {
     s0+=406.0;
     s1+=291.0;
    }
   } else {
    if(i4<1.0000717639923096){
     s0+=17765.0;
     s1+=323.0;
    } else {
     s0+=4574.0;
     s1+=3988.0;
    }
   }
  }
 } else {
  if(i3<0.00030499696731567383){
   if(i56<-0.0010949296411126852){
    if(i0<-3.45496300724335e-05){
     s1+=154.0;
    } else {
     s0+=123.0;
     s1+=3.0;
    }
   } else {
    if(i0<-3.3907450415426865e-05){
     s0+=587.0;
     s1+=84.0;
    } else {
     s0+=608.0;
     s1+=5.0;
    }
   }
  } else {
   if(i25<0.03045143559575081){
    if(i16<0.11645844578742981){
     s0+=251.0;
     s1+=34.0;
    } else {
     s0+=14.0;
     s1+=67.0;
    }
   } else {
    if(i29<1.0328376293182373){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=30.0;
     s1+=1746.0;
    }
   }
  }
 }
} else {
 if(i7<0.005013410001993179){
  if(i55<0.0005831142188981175){
   if(i56<-0.0016260973643511534){
    if(i8<1.0596349239349365){
     s0+=25.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i57<0.04256461560726166){
     s0+=3.0;
     s1+=357.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i0<-8.792766311671585e-05){
    if(i10<1.0175604820251465){
     s0+=32.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=314.0;
    }
   } else {
    if(i15<0.0002482850686646998){
     s0+=515.0;
     s1+=68.0;
    } else {
     s0+=710.0;
    }
   }
  }
 } else {
  if(i20<-0.0006783604621887207){
   if(i26<0.014629955403506756){
    s0+=24.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i11<1.0150527954101562){
    if(i51<-7.595765509904595e-07){
     s0+=55.0;
     s1+=1107.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i51<-4.978929268872889e-07){
     s0+=14.0;
     s1+=12488.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i7<0.007508665323257446){
  if(i21<0.9975229501724243){
   if(i63<2.74128069577273e-07){
    if(i27<1.0004881620407104){
     s0+=24.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i47<1.0380175113677979){
     s0+=36584.0;
     s1+=132.0;
    } else {
     s0+=124.0;
     s1+=9.0;
    }
   }
  } else {
   if(i39<0.014394126832485199){
    if(i49<3.900533192791045e-05){
     s0+=58771.0;
     s1+=779.0;
    } else {
     s0+=1709.0;
     s1+=562.0;
    }
   } else {
    if(i31<0.0007046678801998496){
     s0+=7544.0;
     s1+=238.0;
    } else {
     s0+=4633.0;
     s1+=2456.0;
    }
   }
  }
 } else {
  if(i60<1.0387275218963623){
   if(i25<0.06028755009174347){
    if(i30<0.004332622978836298){
     s0+=267.0;
     s1+=282.0;
    } else {
     s0+=4292.0;
     s1+=396.0;
    }
   } else {
    if(i3<-0.0005007088184356689){
     s0+=85.0;
     s1+=4.0;
    } else {
     s0+=97.0;
     s1+=300.0;
    }
   }
  } else {
   if(i19<-0.004288375377655029){
    if(i7<0.013630382716655731){
     s0+=297.0;
     s1+=30.0;
    } else {
     s0+=13.0;
     s1+=144.0;
    }
   } else {
    if(i41<-2.0465713532757945e-06){
     s0+=90.0;
     s1+=2570.0;
    } else {
     s0+=164.0;
    }
   }
  }
 }
} else {
 if(i11<1.0200928449630737){
  if(i28<1.1979892253875732){
   if(i15<0.00024537459830753505){
    if(i72<-2.552885689510731e-06){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=1719.0;
    }
   } else {
    s0+=1890.0;
   }
  } else {
   if(i0<-8.491166227031499e-05){
    if(i64<0.904997706413269){
     s0+=30.0;
     s1+=164.0;
    } else {
     s0+=7.0;
     s1+=2213.0;
    }
   } else {
    if(i36<1.0886269807815552){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=474.0;
    }
   }
  }
 } else {
  if(i72<9.909750224323943e-05){
   if(i38<0.0014966869493946433){
    if(i52<1.0032050609588623){
     s1+=560.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i5<1.0071301460266113){
     s0+=8.0;
     s1+=508.0;
    } else {
     s1+=10568.0;
    }
   }
  } else {
   s0+=6.0;
  }
 }
}
if(i9<1.0162696838378906){
 if(i0<-8.85480985743925e-05){
  if(i5<0.999846339225769){
   if(i17<0.9234777092933655){
    if(i25<0.060559988021850586){
     s0+=600.0;
     s1+=15.0;
    } else {
     s0+=33.0;
     s1+=119.0;
    }
   } else {
    if(i7<0.014234338887035847){
     s0+=103.0;
     s1+=35.0;
    } else {
     s0+=6.0;
     s1+=196.0;
    }
   }
  } else {
   if(i14<0.04125577211380005){
    if(i19<-0.0024242401123046875){
     s0+=150.0;
     s1+=38.0;
    } else {
     s0+=63.0;
     s1+=138.0;
    }
   } else {
    if(i48<-6.607598152186256e-06){
     s0+=170.0;
    } else {
     s0+=48.0;
     s1+=3264.0;
    }
   }
  }
 } else {
  if(i45<-8.92012394615449e-06){
   if(i26<0.0011501882690936327){
    if(i38<0.0002274603466503322){
     s0+=1.0;
    } else {
     s1+=574.0;
    }
   } else {
    if(i25<0.00494049908593297){
     s0+=148.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=191.0;
    }
   }
  } else {
   if(i43<1.0024892091751099){
    if(i7<0.003600561060011387){
     s0+=82555.0;
     s1+=975.0;
    } else {
     s0+=19333.0;
     s1+=2462.0;
    }
   } else {
    if(i18<0.0019693137146532536){
     s0+=5623.0;
     s1+=86.0;
    } else {
     s0+=5836.0;
     s1+=1894.0;
    }
   }
  }
 }
} else {
 if(i51<-2.7337518986314535e-06){
  if(i13<1.0205037593841553){
   if(i25<0.027694202959537506){
    if(i30<0.0012498931027948856){
     s0+=9.0;
     s1+=801.0;
    } else {
     s0+=1013.0;
     s1+=261.0;
    }
   } else {
    if(i2<-6.178021430969238e-05){
     s0+=39.0;
     s1+=17.0;
    } else {
     s0+=51.0;
     s1+=1327.0;
    }
   }
  } else {
   if(i14<0.08991116285324097){
    if(i20<0.0001093745231628418){
     s0+=30.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i8<1.010888695716858){
     s0+=66.0;
     s1+=544.0;
    } else {
     s0+=14.0;
     s1+=11396.0;
    }
   }
  }
 } else {
  if(i7<0.008035391569137573){
   if(i65<0.00011643730977084488){
    s0+=497.0;
   } else {
    if(i65<0.00012526220234576613){
     s1+=1.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i52<0.9988061785697937){
    s0+=2.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i11<1.0130506753921509){
  if(i7<0.0036111040972173214){
   if(i35<1.0905578136444092){
    if(i65<0.00012382888235151768){
     s0+=19560.0;
     s1+=145.0;
    } else {
     s0+=3663.0;
     s1+=527.0;
    }
   } else {
    if(i34<1.0559825897216797){
     s0+=3516.0;
     s1+=135.0;
    } else {
     s0+=60135.0;
     s1+=204.0;
    }
   }
  } else {
   if(i5<0.9989209175109863){
    if(i42<0.19177773594856262){
     s0+=21566.0;
     s1+=743.0;
    } else {
     s0+=68.0;
     s1+=209.0;
    }
   } else {
    if(i3<-0.00013113021850585938){
     s0+=485.0;
     s1+=26.0;
    } else {
     s0+=1021.0;
     s1+=2731.0;
    }
   }
  }
 } else {
  if(i33<0.0005236268043518066){
   if(i49<1.3411859072220977e-05){
    if(i7<0.00492804404348135){
     s0+=246.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=162.0;
    }
   } else {
    if(i2<-1.8775463104248047e-05){
     s0+=81.0;
     s1+=51.0;
    } else {
     s0+=10.0;
     s1+=714.0;
    }
   }
  } else {
   if(i24<1.0659172534942627){
    if(i69<0.31389373540878296){
     s0+=149.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=7.0;
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i33<0.0005114972591400146){
   if(i28<1.116804838180542){
    if(i41<-1.4151555660646409e-05){
     s0+=74.0;
     s1+=2650.0;
    } else {
     s0+=104.0;
     s1+=12.0;
    }
   } else {
    if(i32<1.1462047100067139){
     s0+=346.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=99.0;
    }
   }
  } else {
   if(i11<0.9905041456222534){
    if(i21<1.004035472869873){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i57<0.17841650545597076){
     s0+=3882.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i16<0.06819960474967957){
   if(i6<5.620718002319336e-05){
    if(i78<-0.03178071975708008){
     s0+=219.0;
     s1+=206.0;
    } else {
     s0+=691.0;
     s1+=16.0;
    }
   } else {
    if(i20<3.8564205169677734e-05){
     s0+=126.0;
     s1+=134.0;
    } else {
     s1+=128.0;
    }
   }
  } else {
   if(i0<-6.001452129567042e-05){
    if(i30<0.007393944542855024){
     s0+=95.0;
     s1+=3236.0;
    } else {
     s0+=34.0;
     s1+=11570.0;
    }
   } else {
    if(i49<8.994659583549947e-05){
     s0+=2.0;
     s1+=465.0;
    } else {
     s0+=306.0;
     s1+=233.0;
    }
   }
  }
 }
}
if(i1<0.0009707808494567871){
 if(i42<0.1917579472064972){
  if(i31<0.0007107690908014774){
   if(i41<-2.0454412151593715e-05){
    if(i39<0.034347858279943466){
     s0+=148.0;
     s1+=20.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i18<0.0009779664687812328){
     s0+=69087.0;
     s1+=163.0;
    } else {
     s0+=11302.0;
     s1+=303.0;
    }
   }
  } else {
   if(i8<1.005988597869873){
    if(i35<1.1160998344421387){
     s0+=4494.0;
     s1+=2679.0;
    } else {
     s0+=28140.0;
     s1+=2111.0;
    }
   } else {
    if(i52<1.0027583837509155){
     s0+=481.0;
     s1+=1211.0;
    } else {
     s0+=429.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i37<0.0027034729719161987){
   if(i51<-5.679146397596924e-06){
    if(i52<1.0020900964736938){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i60<1.090219497680664){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=183.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<-0.00022083520889282227){
    if(i26<0.006977112963795662){
     s0+=152.0;
     s1+=66.0;
    } else {
     s0+=8.0;
     s1+=273.0;
    }
   } else {
    if(i28<1.7041046619415283){
     s0+=8.0;
     s1+=1062.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
} else {
 if(i32<1.1706266403198242){
  if(i35<1.1174830198287964){
   if(i72<4.53077518614009e-06){
    if(i22<1.0325934886932373){
     s0+=61.0;
     s1+=68.0;
    } else {
     s0+=18.0;
     s1+=2261.0;
    }
   } else {
    s0+=61.0;
   }
  } else {
   if(i7<0.007519088685512543){
    if(i50<0.04279906302690506){
     s0+=1803.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   } else {
    if(i43<1.0025056600570679){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i23<0.0003789663314819336){
   if(i1<0.002047598361968994){
    if(i53<1.1622905731201172e-05){
     s0+=36.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=29.0;
   }
  } else {
   if(i5<1.0069072246551514){
    if(i63<-7.121515409380663e-06){
     s0+=43.0;
     s1+=43.0;
    } else {
     s0+=20.0;
     s1+=1071.0;
    }
   } else {
    if(i7<0.0051903072744607925){
     s0+=7.0;
     s1+=422.0;
    } else {
     s0+=1.0;
     s1+=12261.0;
    }
   }
  }
 }
}
if(i8<1.0124340057373047){
 if(i4<1.0025979280471802){
  if(i29<1.1403393745422363){
   if(i9<1.0170724391937256){
    if(i25<0.006775497458875179){
     s0+=69140.0;
     s1+=546.0;
    } else {
     s0+=40645.0;
     s1+=3449.0;
    }
   } else {
    if(i32<1.0905578136444092){
     s1+=350.0;
    } else {
     s0+=506.0;
     s1+=195.0;
    }
   }
  } else {
   if(i41<-8.220822564908303e-06){
    if(i68<1.0061700344085693){
     s0+=2.0;
     s1+=563.0;
    } else {
     s0+=19.0;
     s1+=11.0;
    }
   } else {
    s0+=426.0;
   }
  }
 } else {
  if(i18<0.0018514532130211592){
   if(i45<-1.2514684385678265e-05){
    if(i38<0.0008988333283923566){
     s1+=208.0;
    } else {
     s0+=51.0;
     s1+=23.0;
    }
   } else {
    if(i30<0.0023774434812366962){
     s0+=2719.0;
     s1+=6.0;
    } else {
     s0+=70.0;
     s1+=63.0;
    }
   }
  } else {
   if(i46<0.004498585127294064){
    if(i53<9.000301361083984e-06){
     s0+=390.0;
     s1+=1163.0;
    } else {
     s0+=1479.0;
     s1+=555.0;
    }
   } else {
    if(i25<0.02996150776743889){
     s0+=551.0;
     s1+=285.0;
    } else {
     s0+=367.0;
     s1+=3492.0;
    }
   }
  }
 }
} else {
 if(i48<-7.070570063660853e-06){
  s0+=226.0;
 } else {
  if(i1<0.0018056035041809082){
   if(i53<1.2934207916259766e-05){
    if(i4<1.0013583898544312){
     s0+=49.0;
     s1+=68.0;
    } else {
     s0+=46.0;
     s1+=1817.0;
    }
   } else {
    if(i18<0.002126911887899041){
     s0+=173.0;
    } else {
     s1+=142.0;
    }
   }
  } else {
   if(i5<1.0101580619812012){
    if(i48<-5.658193458657479e-06){
     s0+=2.0;
    } else {
     s1+=799.0;
    }
   } else {
    s1+=10264.0;
   }
  }
 }
}
if(i13<1.014328956604004){
 if(i7<0.01405673660337925){
  if(i3<0.0003135800361633301){
   if(i38<0.0010552569292485714){
    if(i52<0.999788761138916){
     s0+=17153.0;
     s1+=139.0;
    } else {
     s0+=12784.0;
     s1+=1866.0;
    }
   } else {
    if(i64<1.0342283248901367){
     s0+=73116.0;
     s1+=639.0;
    } else {
     s0+=206.0;
     s1+=80.0;
    }
   }
  } else {
   if(i50<0.03637029230594635){
    if(i26<0.0009765269933268428){
     s0+=2521.0;
     s1+=1595.0;
    } else {
     s0+=6275.0;
     s1+=203.0;
    }
   } else {
    if(i20<-0.00018611550331115723){
     s0+=1579.0;
     s1+=520.0;
    } else {
     s0+=469.0;
     s1+=1723.0;
    }
   }
  }
 } else {
  if(i29<1.0332375764846802){
   if(i14<0.07162019610404968){
    if(i78<-0.13955456018447876){
     s0+=40.0;
     s1+=60.0;
    } else {
     s0+=821.0;
     s1+=60.0;
    }
   } else {
    if(i8<0.9660265445709229){
     s0+=58.0;
     s1+=35.0;
    } else {
     s0+=5.0;
     s1+=116.0;
    }
   }
  } else {
   if(i22<1.052932858467102){
    if(i14<0.17602816224098206){
     s0+=53.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i61<-0.013129234313964844){
     s0+=60.0;
     s1+=138.0;
    } else {
     s0+=18.0;
     s1+=2867.0;
    }
   }
  }
 }
} else {
 if(i2<2.1278858184814453e-05){
  if(i5<1.001429557800293){
   if(i0<-6.668551941402256e-05){
    if(i25<0.025457430630922318){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i18<0.00366957881487906){
     s0+=339.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i23<0.1241559088230133){
    if(i9<1.044846773147583){
     s0+=75.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i43<1.0015722513198853){
     s0+=18.0;
     s1+=27.0;
    } else {
     s0+=2.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i48<-7.357566573773511e-06){
   s0+=227.0;
  } else {
   if(i0<-7.256078970385715e-05){
    if(i37<0.0016541158547624946){
     s0+=59.0;
     s1+=1070.0;
    } else {
     s0+=15.0;
     s1+=12096.0;
    }
   } else {
    if(i53<1.0788440704345703e-05){
     s0+=50.0;
     s1+=874.0;
    } else {
     s0+=427.0;
     s1+=115.0;
    }
   }
  }
 }
}
if(i1<0.0009710788726806641){
 if(i12<1.0181578397750854){
  if(i18<0.001728081377223134){
   if(i29<1.0179111957550049){
    if(i9<0.9959750175476074){
     s0+=4664.0;
     s1+=373.0;
    } else {
     s0+=5975.0;
     s1+=45.0;
    }
   } else {
    if(i46<0.001976317958906293){
     s0+=76961.0;
     s1+=375.0;
    } else {
     s0+=3076.0;
     s1+=144.0;
    }
   }
  } else {
   if(i30<0.0011252076365053654){
    if(i34<1.0440731048583984){
     s0+=1991.0;
     s1+=36.0;
    } else {
     s0+=360.0;
     s1+=2536.0;
    }
   } else {
    if(i22<1.1300873756408691){
     s0+=20174.0;
     s1+=1306.0;
    } else {
     s0+=411.0;
     s1+=1249.0;
    }
   }
  }
 } else {
  if(i41<-9.12782343220897e-06){
   if(i16<0.16771143674850464){
    if(i15<0.00033515936229377985){
     s0+=262.0;
     s1+=659.0;
    } else {
     s0+=167.0;
     s1+=17.0;
    }
   } else {
    if(i44<1.0022181272506714){
     s0+=12.0;
     s1+=1126.0;
    } else {
     s0+=58.0;
     s1+=101.0;
    }
   }
  } else {
   if(i19<-0.003006875514984131){
    s1+=8.0;
   } else {
    if(i4<1.0035008192062378){
     s0+=526.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i35<1.176405668258667){
  if(i15<0.0002517071843612939){
   if(i46<0.0012430658098310232){
    if(i6<0.00016444921493530273){
     s1+=2346.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=11.0;
   }
  } else {
   s0+=1919.0;
  }
 } else {
  if(i27<1.0047496557235718){
   if(i36<1.0904526710510254){
    if(i51<-1.8291962987859733e-05){
     s1+=4.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i7<0.0063958317041397095){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=52.0;
     s1+=1486.0;
    }
   }
  } else {
   if(i9<0.8808902502059937){
    if(i59<0.001951837446540594){
     s0+=6.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i22<1.0742030143737793){
     s0+=8.0;
     s1+=158.0;
    } else {
     s0+=3.0;
     s1+=12154.0;
    }
   }
  }
 }
}
if(i0<-0.00010549536818871275){
 if(i64<0.879952073097229){
  if(i25<0.06372222304344177){
   if(i65<0.003002439858391881){
    if(i41<-4.0774310036795214e-05){
     s0+=4.0;
     s1+=26.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i74<-0.012161612510681152){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=314.0;
     s1+=1.0;
    }
   }
  } else {
   if(i13<0.9117878675460815){
    if(i43<1.0076509714126587){
     s0+=13.0;
     s1+=14.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   } else {
    if(i60<0.8777521848678589){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i30<0.002475130371749401){
   if(i28<1.1180615425109863){
    s1+=428.0;
   } else {
    s0+=228.0;
   }
  } else {
   if(i66<-0.0070983171463012695){
    if(i31<0.002517142565920949){
     s0+=64.0;
     s1+=15.0;
    } else {
     s0+=14.0;
     s1+=38.0;
    }
   } else {
    if(i68<1.0109758377075195){
     s0+=42.0;
     s1+=14051.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i18<0.0017414051108062267){
  if(i1<0.0018057823181152344){
   if(i65<0.0001815925061237067){
    if(i45<-1.4650902812718414e-05){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=78663.0;
     s1+=438.0;
    }
   } else {
    if(i37<0.00025867833755910397){
     s0+=199.0;
     s1+=314.0;
    } else {
     s0+=14026.0;
     s1+=347.0;
    }
   }
  } else {
   if(i33<0.001049339771270752){
    s1+=387.0;
   } else {
    s0+=26.0;
   }
  }
 } else {
  if(i6<-1.1324882507324219e-06){
   if(i30<0.0003223448293283582){
    if(i32<1.041319489479065){
     s0+=3.0;
    } else {
     s1+=76.0;
    }
   } else {
    if(i42<0.23113250732421875){
     s0+=14338.0;
     s1+=299.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   }
  } else {
   if(i45<2.491775740054436e-05){
    if(i15<0.000350894988514483){
     s0+=757.0;
     s1+=6825.0;
    } else {
     s0+=3107.0;
     s1+=176.0;
    }
   } else {
    if(i42<0.15687096118927002){
     s0+=4539.0;
     s1+=378.0;
    } else {
     s0+=107.0;
     s1+=197.0;
    }
   }
  }
 }
}
if(i8<1.0124891996383667){
 if(i47<1.0339124202728271){
  if(i18<0.0017987368628382683){
   if(i7<0.0018092883983626962){
    if(i2<0.00014007091522216797){
     s0+=64118.0;
     s1+=215.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i45<-1.2068432624801062e-05){
     s0+=14.0;
     s1+=193.0;
    } else {
     s0+=28496.0;
     s1+=844.0;
    }
   }
  } else {
   if(i4<1.0006153583526611){
    if(i2<-5.009770393371582e-05){
     s0+=12569.0;
     s1+=192.0;
    } else {
     s0+=2397.0;
     s1+=735.0;
    }
   } else {
    if(i59<0.006383772939443588){
     s0+=7286.0;
     s1+=5589.0;
    } else {
     s0+=142.0;
     s1+=1044.0;
    }
   }
  }
 } else {
  if(i16<0.19670024514198303){
   if(i28<1.1166167259216309){
    if(i3<0.00019556283950805664){
     s0+=28.0;
     s1+=7.0;
    } else {
     s1+=229.0;
    }
   } else {
    if(i35<1.1758689880371094){
     s0+=470.0;
    } else {
     s0+=505.0;
     s1+=296.0;
    }
   }
  } else {
   if(i34<1.6269450187683105){
    if(i31<0.0004542421083897352){
     s0+=31.0;
    } else {
     s0+=34.0;
     s1+=1747.0;
    }
   } else {
    if(i25<0.07022536545991898){
     s0+=54.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i33<0.0017090141773223877){
  if(i15<0.0007188031449913979){
   if(i18<0.0007332082604989409){
    if(i63<-4.5051283450447954e-06){
     s1+=128.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i41<-1.256854011444375e-05){
     s0+=44.0;
     s1+=12979.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   s0+=207.0;
  }
 } else {
  s0+=136.0;
 }
}
if(i5<1.003735065460205){
 if(i42<0.20447298884391785){
  if(i6<1.5079975128173828e-05){
   if(i32<1.0903575420379639){
    if(i39<0.008645203895866871){
     s0+=19236.0;
     s1+=274.0;
    } else {
     s0+=7620.0;
     s1+=2068.0;
    }
   } else {
    if(i22<1.122455358505249){
     s0+=76892.0;
     s1+=686.0;
    } else {
     s0+=2499.0;
     s1+=371.0;
    }
   }
  } else {
   if(i50<0.03597734123468399){
    if(i39<0.012642351910471916){
     s0+=3143.0;
     s1+=155.0;
    } else {
     s0+=577.0;
     s1+=377.0;
    }
   } else {
    if(i1<-1.150369644165039e-05){
     s0+=1501.0;
     s1+=420.0;
    } else {
     s0+=482.0;
     s1+=1296.0;
    }
   }
  }
 } else {
  if(i41<-7.295890554814832e-06){
   if(i57<0.017056431621313095){
    if(i65<3.249960718676448e-05){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i16<0.23600107431411743){
     s0+=26.0;
     s1+=152.0;
    } else {
     s0+=3.0;
     s1+=755.0;
    }
   }
  } else {
   if(i22<1.0974891185760498){
    if(i68<1.000618577003479){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=147.0;
   }
  }
 }
} else {
 if(i26<0.002255121013149619){
  if(i33<0.0005128085613250732){
   if(i28<1.116804838180542){
    if(i8<1.0047874450683594){
     s0+=7.0;
    } else {
     s1+=2762.0;
    }
   } else {
    s0+=432.0;
   }
  } else {
   s0+=3721.0;
  }
 } else {
  if(i46<0.00036077230470255017){
   if(i1<0.0043305158615112305){
    s0+=103.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i13<1.025505781173706){
    if(i34<1.1269173622131348){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=218.0;
     s1+=4484.0;
    }
   } else {
    if(i2<5.561113357543945e-05){
     s0+=8.0;
     s1+=229.0;
    } else {
     s0+=1.0;
     s1+=10159.0;
    }
   }
  }
 }
}
if(i13<1.0153834819793701){
 if(i0<-8.899930980987847e-05){
  if(i13<0.9365501403808594){
   if(i78<-0.18171030282974243){
    if(i17<0.8463854789733887){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=58.0;
    }
   } else {
    if(i16<0.06623557209968567){
     s0+=744.0;
     s1+=22.0;
    } else {
     s0+=40.0;
     s1+=89.0;
    }
   }
  } else {
   if(i26<0.0022998088970780373){
    if(i42<0.05362698435783386){
     s0+=44.0;
     s1+=143.0;
    } else {
     s0+=212.0;
     s1+=9.0;
    }
   } else {
    if(i5<1.0011146068572998){
     s0+=139.0;
     s1+=522.0;
    } else {
     s0+=65.0;
     s1+=2917.0;
    }
   }
  }
 } else {
  if(i39<0.011270265094935894){
   if(i8<1.006596565246582){
    if(i18<0.0010495497845113277){
     s0+=53453.0;
     s1+=120.0;
    } else {
     s0+=13253.0;
     s1+=499.0;
    }
   } else {
    if(i54<0.000645500491373241){
     s0+=328.0;
     s1+=629.0;
    } else {
     s0+=1669.0;
     s1+=11.0;
    }
   }
  } else {
   if(i3<0.00022596120834350586){
    if(i3<-0.00014096498489379883){
     s0+=29131.0;
     s1+=411.0;
    } else {
     s0+=11133.0;
     s1+=1613.0;
    }
   } else {
    if(i5<0.9992148876190186){
     s0+=1437.0;
     s1+=169.0;
    } else {
     s0+=3823.0;
     s1+=3254.0;
    }
   }
  }
 }
} else {
 if(i6<1.0251998901367188e-05){
  if(i31<0.0006971727125346661){
   s0+=277.0;
  } else {
   if(i34<1.176649808883667){
    if(i52<1.0022737979888916){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=47.0;
    }
   } else {
    s1+=178.0;
   }
  }
 } else {
  if(i0<-6.714343908242881e-05){
   if(i6<0.00025838613510131836){
    if(i72<6.306719569693087e-06){
     s0+=94.0;
     s1+=13005.0;
    } else {
     s0+=16.0;
    }
   } else {
    s0+=11.0;
   }
  } else {
   if(i25<0.014008559286594391){
    if(i28<1.1180615425109863){
     s1+=234.0;
    } else {
     s0+=361.0;
     s1+=49.0;
    }
   } else {
    if(i7<0.005077392794191837){
     s0+=97.0;
    } else {
     s1+=519.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i16<0.20114630460739136){
  if(i6<1.4007091522216797e-05){
   if(i30<0.0010703555308282375){
    if(i3<0.00013935565948486328){
     s0+=28695.0;
     s1+=1435.0;
    } else {
     s0+=1843.0;
     s1+=913.0;
    }
   } else {
    if(i28<1.0905578136444092){
     s1+=47.0;
    } else {
     s0+=74998.0;
     s1+=732.0;
    }
   }
  } else {
   if(i40<-0.00019412607070989907){
    if(i25<0.00943030696362257){
     s0+=651.0;
     s1+=157.0;
    } else {
     s0+=906.0;
     s1+=2020.0;
    }
   } else {
    if(i49<3.115033177891746e-05){
     s0+=5364.0;
     s1+=277.0;
    } else {
     s0+=1733.0;
     s1+=721.0;
    }
   }
  }
 } else {
  if(i35<1.1806621551513672){
   if(i30<0.0019227287266403437){
    s0+=136.0;
   } else {
    if(i17<1.007491946220398){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i0<-3.0341465389938094e-05){
    if(i35<1.7041046619415283){
     s0+=14.0;
     s1+=1417.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i2<1.2159347534179688e-05){
     s0+=179.0;
     s1+=27.0;
    } else {
     s0+=1.0;
     s1+=100.0;
    }
   }
  }
 }
} else {
 if(i7<0.0028126067481935024){
  if(i15<0.0002671008405741304){
   if(i27<1.0082228183746338){
    s0+=2.0;
   } else {
    if(i3<0.001139223575592041){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=408.0;
    }
   }
  } else {
   if(i26<0.010232245549559593){
    s0+=1462.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i28<1.175166130065918){
   if(i55<0.0009391206549480557){
    if(i51<-1.344247539236676e-05){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1990.0;
    }
   } else {
    if(i26<0.0010254897642880678){
     s1+=74.0;
    } else {
     s0+=545.0;
    }
   }
  } else {
   if(i42<6.139278411865234e-06){
    if(i26<0.010167501866817474){
     s0+=3.0;
     s1+=73.0;
    } else {
     s0+=42.0;
     s1+=30.0;
    }
   } else {
    if(i60<0.85521399974823){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=61.0;
     s1+=13719.0;
    }
   }
  }
 }
}
if(i42<0.1709546446800232){
 if(i3<0.0005963444709777832){
  if(i7<0.00365207577124238){
   if(i35<1.0905578136444092){
    if(i17<0.9951133728027344){
     s0+=3392.0;
     s1+=465.0;
    } else {
     s0+=19349.0;
     s1+=260.0;
    }
   } else {
    if(i65<0.00017361236677970737){
     s0+=51706.0;
     s1+=87.0;
    } else {
     s0+=11795.0;
     s1+=210.0;
    }
   }
  } else {
   if(i3<-9.751319885253906e-05){
    if(i30<0.0282638818025589){
     s0+=18905.0;
     s1+=216.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i45<2.510232661734335e-05){
     s0+=898.0;
     s1+=2953.0;
    } else {
     s0+=2861.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i2<8.362531661987305e-05){
   if(i18<0.0020780409686267376){
    if(i0<-7.208935858216137e-05){
     s0+=8.0;
     s1+=47.0;
    } else {
     s0+=3028.0;
     s1+=13.0;
    }
   } else {
    if(i2<4.172325134277344e-06){
     s0+=998.0;
     s1+=255.0;
    } else {
     s0+=1137.0;
     s1+=2392.0;
    }
   }
  } else {
   if(i53<2.4378299713134766e-05){
    if(i27<1.0138559341430664){
     s0+=539.0;
     s1+=2648.0;
    } else {
     s0+=4.0;
     s1+=5684.0;
    }
   } else {
    if(i34<1.169499158859253){
     s0+=558.0;
    } else {
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i7<0.005584056954830885){
  if(i21<1.0105152130126953){
   if(i44<1.0007460117340088){
    s0+=706.0;
   } else {
    if(i73<0.12439244985580444){
     s0+=3.0;
     s1+=35.0;
    } else {
     s0+=396.0;
     s1+=66.0;
    }
   }
  } else {
   s1+=143.0;
  }
 } else {
  if(i28<1.1669886112213135){
   s0+=16.0;
  } else {
   if(i3<-0.001112818717956543){
    if(i18<0.0030217631720006466){
     s0+=13.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i12<0.9933251738548279){
     s0+=15.0;
     s1+=662.0;
    } else {
     s0+=5.0;
     s1+=7930.0;
    }
   }
  }
 }
}
if(i24<1.0214226245880127){
 if(i5<1.003851056098938){
  if(i39<0.18404248356819153){
   if(i67<0.0010269752237945795){
    if(i13<1.0068109035491943){
     s0+=96252.0;
     s1+=2388.0;
    } else {
     s0+=3793.0;
     s1+=635.0;
    }
   } else {
    if(i2<-2.0802021026611328e-05){
     s0+=9136.0;
     s1+=637.0;
    } else {
     s0+=1721.0;
     s1+=1126.0;
    }
   }
  } else {
   if(i7<0.015026180073618889){
    if(i40<-0.0003482703468762338){
     s1+=12.0;
    } else {
     s0+=187.0;
    }
   } else {
    if(i22<1.0241174697875977){
     s0+=12.0;
    } else {
     s0+=5.0;
     s1+=594.0;
    }
   }
  }
 } else {
  if(i7<0.004095078911632299){
   if(i49<-2.277632665936835e-05){
    if(i33<0.0008323788642883301){
     s0+=61.0;
     s1+=533.0;
    } else {
     s0+=130.0;
     s1+=4.0;
    }
   } else {
    if(i38<0.0005043928977102041){
     s0+=644.0;
     s1+=154.0;
    } else {
     s0+=2800.0;
     s1+=1.0;
    }
   }
  } else {
   if(i44<0.9984620809555054){
    s0+=105.0;
   } else {
    if(i2<7.408857345581055e-05){
     s0+=184.0;
     s1+=964.0;
    } else {
     s0+=77.0;
     s1+=3848.0;
    }
   }
  }
 }
} else {
 if(i1<0.00023308396339416504){
  if(i51<-2.9922475732746534e-06){
   if(i23<0.12393715977668762){
    if(i45<2.104804661939852e-05){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=227.0;
     s1+=2.0;
    }
   } else {
    if(i7<0.005633378401398659){
     s0+=158.0;
     s1+=26.0;
    } else {
     s0+=7.0;
     s1+=439.0;
    }
   }
  } else {
   if(i18<0.0024761436507105827){
    s0+=511.0;
   } else {
    if(i21<0.9944384098052979){
     s0+=7.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i30<0.002426826860755682){
   if(i26<0.0010224930010735989){
    if(i4<1.000241994857788){
     s0+=1.0;
    } else {
     s1+=1144.0;
    }
   } else {
    if(i30<0.002328795613721013){
     s0+=452.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   }
  } else {
   if(i16<0.0943143367767334){
    if(i28<1.3387833833694458){
     s1+=51.0;
    } else {
     s0+=60.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.00024133920669555664){
     s0+=22.0;
     s1+=93.0;
    } else {
     s0+=47.0;
     s1+=11555.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i0<-7.645013829460368e-05){
  if(i16<0.0504450798034668){
   if(i29<1.0572068691253662){
    if(i34<1.2044315338134766){
     s0+=68.0;
     s1+=37.0;
    } else {
     s0+=1052.0;
     s1+=53.0;
    }
   } else {
    if(i78<-0.059624314308166504){
     s0+=11.0;
     s1+=82.0;
    } else {
     s0+=41.0;
     s1+=5.0;
    }
   }
  } else {
   if(i32<1.1413248777389526){
    if(i7<0.006268619559705257){
     s0+=166.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=103.0;
    }
   } else {
    if(i10<0.9400763511657715){
     s0+=83.0;
     s1+=57.0;
    } else {
     s0+=87.0;
     s1+=2175.0;
    }
   }
  }
 } else {
  if(i47<1.0320731401443481){
   if(i26<0.0008910034666769207){
    if(i25<0.007312124595046043){
     s0+=24218.0;
     s1+=663.0;
    } else {
     s0+=7697.0;
     s1+=2862.0;
    }
   } else {
    if(i3<0.00042957067489624023){
     s0+=75473.0;
     s1+=634.0;
    } else {
     s0+=4241.0;
     s1+=658.0;
    }
   }
  } else {
   if(i18<0.002157711423933506){
    if(i53<3.635883331298828e-06){
     s0+=640.0;
     s1+=6.0;
    } else {
     s0+=132.0;
     s1+=22.0;
    }
   } else {
    if(i49<0.0001022189826471731){
     s0+=62.0;
     s1+=582.0;
    } else {
     s0+=314.0;
     s1+=133.0;
    }
   }
  }
 }
} else {
 if(i32<1.1706266403198242){
  if(i76<0.04089564085006714){
   if(i53<1.1742115020751953e-05){
    if(i68<0.9984418153762817){
     s0+=22.0;
    } else {
     s0+=103.0;
     s1+=2163.0;
    }
   } else {
    if(i34<1.0905089378356934){
     s0+=71.0;
     s1+=35.0;
    } else {
     s0+=618.0;
     s1+=6.0;
    }
   }
  } else {
   if(i53<1.0311603546142578e-05){
    if(i28<1.116804838180542){
     s1+=161.0;
    } else {
     s0+=158.0;
     s1+=29.0;
    }
   } else {
    if(i30<0.0012602515053004026){
     s1+=13.0;
    } else {
     s0+=982.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i23<0.03295239806175232){
   if(i15<0.00013899458281230181){
    if(i20<-0.0003057122230529785){
     s0+=27.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   } else {
    if(i78<-0.014395564794540405){
     s0+=2.0;
     s1+=83.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i65<0.004889245145022869){
    if(i7<0.003954908810555935){
     s0+=19.0;
     s1+=272.0;
    } else {
     s0+=28.0;
     s1+=13663.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i16<0.1875152289867401){
 if(i21<1.0046367645263672){
  if(i10<1.0109074115753174){
   if(i25<0.006586677394807339){
    if(i20<-6.276369094848633e-05){
     s0+=7708.0;
     s1+=351.0;
    } else {
     s0+=60781.0;
     s1+=182.0;
    }
   } else {
    if(i26<0.0009707540739327669){
     s0+=8207.0;
     s1+=2779.0;
    } else {
     s0+=34048.0;
     s1+=1368.0;
    }
   }
  } else {
   if(i7<0.004437732510268688){
    if(i32<1.0808534622192383){
     s1+=10.0;
    } else {
     s0+=801.0;
     s1+=37.0;
    }
   } else {
    if(i15<0.0010467326501384377){
     s0+=66.0;
     s1+=1276.0;
    } else {
     s0+=111.0;
    }
   }
  }
 } else {
  if(i40<-0.00026210022042505443){
   if(i41<-0.00014387319970410317){
    s0+=51.0;
   } else {
    if(i7<0.004355776589363813){
     s0+=209.0;
     s1+=100.0;
    } else {
     s0+=135.0;
     s1+=2696.0;
    }
   }
  } else {
   if(i54<0.000639264122582972){
    if(i30<0.00023855495965108275){
     s0+=358.0;
    } else {
     s0+=135.0;
     s1+=1423.0;
    }
   } else {
    if(i38<0.001953172730281949){
     s0+=2627.0;
     s1+=102.0;
    } else {
     s0+=661.0;
     s1+=996.0;
    }
   }
  }
 }
} else {
 if(i3<0.00024241209030151367){
  if(i7<0.007864306680858135){
   if(i67<0.0009652604348957539){
    if(i37<0.0020721321925520897){
     s0+=370.0;
     s1+=1.0;
    } else {
     s0+=212.0;
     s1+=20.0;
    }
   } else {
    if(i41<-6.398567620635731e-06){
     s0+=7.0;
     s1+=19.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i35<1.1640105247497559){
    s0+=2.0;
   } else {
    if(i29<1.082653522491455){
     s0+=1.0;
     s1+=31.0;
    } else {
     s1+=318.0;
    }
   }
  }
 } else {
  if(i26<0.00231671123765409){
   if(i25<0.015542356297373772){
    s0+=91.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i36<1.0970284938812256){
    if(i7<0.006237775087356567){
     s0+=14.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i2<-2.7418136596679688e-05){
     s0+=44.0;
     s1+=97.0;
    } else {
     s0+=16.0;
     s1+=12323.0;
    }
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i54<0.009830634109675884){
  if(i26<0.0008898492669686675){
   if(i3<0.00020688772201538086){
    if(i39<0.008987018838524818){
     s0+=19927.0;
     s1+=214.0;
    } else {
     s0+=9064.0;
     s1+=1549.0;
    }
   } else {
    if(i37<0.00020863223471678793){
     s0+=1616.0;
     s1+=3.0;
    } else {
     s0+=306.0;
     s1+=1726.0;
    }
   }
  } else {
   if(i12<1.0221688747406006){
    if(i23<0.23436102271080017){
     s0+=78129.0;
     s1+=1015.0;
    } else {
     s0+=33.0;
     s1+=84.0;
    }
   } else {
    if(i0<-5.999268250889145e-05){
     s0+=69.0;
     s1+=426.0;
    } else {
     s0+=259.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i23<0.09300637245178223){
   if(i1<2.9206275939941406e-06){
    if(i18<0.005857859272509813){
     s0+=619.0;
     s1+=9.0;
    } else {
     s0+=71.0;
     s1+=36.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i35<1.6811659336090088){
    if(i26<0.002486711833626032){
     s0+=30.0;
    } else {
     s0+=5.0;
     s1+=688.0;
    }
   } else {
    s0+=41.0;
   }
  }
 }
} else {
 if(i25<0.009293714538216591){
  if(i33<0.0005161464214324951){
   if(i52<1.0010957717895508){
    if(i4<1.0022666454315186){
     s0+=402.0;
     s1+=8.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i13<1.0020074844360352){
     s0+=127.0;
     s1+=15.0;
    } else {
     s0+=20.0;
     s1+=2082.0;
    }
   }
  } else {
   if(i5<1.0103569030761719){
    if(i36<1.1744760274887085){
     s0+=4032.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=30.0;
    }
   } else {
    s1+=412.0;
   }
  }
 } else {
  if(i2<2.5093555450439453e-05){
   if(i25<0.03982479125261307){
    if(i23<0.11665329337120056){
     s0+=658.0;
     s1+=92.0;
    } else {
     s0+=110.0;
     s1+=106.0;
    }
   } else {
    if(i54<0.0021071864757686853){
     s0+=135.0;
     s1+=50.0;
    } else {
     s0+=77.0;
     s1+=478.0;
    }
   }
  } else {
   if(i20<-0.00022363662719726562){
    if(i15<0.00015046069165691733){
     s0+=137.0;
     s1+=134.0;
    } else {
     s0+=158.0;
     s1+=794.0;
    }
   } else {
    if(i28<1.1767785549163818){
     s0+=231.0;
     s1+=902.0;
    } else {
     s0+=60.0;
     s1+=13529.0;
    }
   }
  }
 }
}
if(i21<1.0044353008270264){
 if(i13<1.0115290880203247){
  if(i7<0.014950895681977272){
   if(i23<0.22542285919189453){
    if(i3<0.0002925395965576172){
     s0+=102328.0;
     s1+=2621.0;
    } else {
     s0+=8023.0;
     s1+=1700.0;
    }
   } else {
    if(i26<0.0025791767984628677){
     s0+=64.0;
     s1+=5.0;
    } else {
     s0+=39.0;
     s1+=191.0;
    }
   }
  } else {
   if(i22<1.0743825435638428){
    if(i13<0.9403452277183533){
     s0+=476.0;
     s1+=17.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i8<0.9660099744796753){
     s0+=64.0;
     s1+=72.0;
    } else {
     s0+=6.0;
     s1+=765.0;
    }
   }
  }
 } else {
  if(i33<0.00010702013969421387){
   if(i7<0.007346032187342644){
    s0+=477.0;
   } else {
    if(i36<1.121155858039856){
     s0+=7.0;
    } else {
     s1+=243.0;
    }
   }
  } else {
   if(i11<1.0193111896514893){
    if(i4<1.0011347532272339){
     s0+=93.0;
     s1+=26.0;
    } else {
     s0+=327.0;
     s1+=838.0;
    }
   } else {
    if(i45<3.68697801604867e-05){
     s0+=12.0;
     s1+=1210.0;
    } else {
     s0+=67.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i7<0.002836797386407852){
  if(i20<0.00020766258239746094){
   if(i19<0.0012870430946350098){
    if(i21<1.010270118713379){
     s0+=2510.0;
    } else {
     s0+=58.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.0008375708712264895){
     s1+=10.0;
    } else {
     s0+=91.0;
    }
   }
  } else {
   if(i31<0.0008128352928906679){
    if(i1<0.0016309618949890137){
     s0+=41.0;
    } else {
     s1+=416.0;
    }
   } else {
    if(i16<0.22870591282844543){
     s0+=379.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i21<1.0085744857788086){
   if(i13<1.0155010223388672){
    if(i46<0.0007431090925820172){
     s0+=22.0;
     s1+=493.0;
    } else {
     s0+=1148.0;
     s1+=1322.0;
    }
   } else {
    if(i52<1.0042333602905273){
     s0+=15.0;
     s1+=2137.0;
    } else {
     s0+=19.0;
     s1+=142.0;
    }
   }
  } else {
   if(i5<1.0041038990020752){
    if(i7<0.012102620676159859){
     s0+=82.0;
     s1+=1.0;
    } else {
     s0+=100.0;
     s1+=260.0;
    }
   } else {
    if(i20<-0.00026035308837890625){
     s0+=47.0;
     s1+=346.0;
    } else {
     s0+=63.0;
     s1+=11325.0;
    }
   }
  }
 }
}
if(i2<6.514787673950195e-05){
 if(i18<0.001817474840208888){
  if(i31<0.0006220279610715806){
   if(i12<1.018606424331665){
    if(i35<1.1758689880371094){
     s0+=69957.0;
     s1+=150.0;
    } else {
     s0+=4946.0;
     s1+=79.0;
    }
   } else {
    if(i26<0.0029591121710836887){
     s0+=469.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   }
  } else {
   if(i37<0.0005436961073428392){
    if(i13<0.9965766072273254){
     s0+=330.0;
     s1+=499.0;
    } else {
     s0+=2975.0;
     s1+=247.0;
    }
   } else {
    if(i23<0.19802764058113098){
     s0+=14382.0;
     s1+=146.0;
    } else {
     s0+=81.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i21<0.9982550144195557){
   if(i64<1.055037498474121){
    if(i62<0.003499372163787484){
     s0+=12548.0;
     s1+=280.0;
    } else {
     s0+=1014.0;
     s1+=249.0;
    }
   } else {
    if(i72<-1.9124613572785165e-06){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=147.0;
    }
   }
  } else {
   if(i40<-0.00018067254859488457){
    if(i1<-0.0002771615982055664){
     s0+=958.0;
     s1+=614.0;
    } else {
     s0+=650.0;
     s1+=3397.0;
    }
   } else {
    if(i28<1.116804838180542){
     s0+=1634.0;
     s1+=1468.0;
    } else {
     s0+=4555.0;
     s1+=630.0;
    }
   }
  }
 }
} else {
 if(i37<0.0019787342753261328){
  if(i46<0.0010179548989981413){
   if(i33<0.0006287693977355957){
    if(i43<0.9976077675819397){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=2179.0;
    }
   } else {
    if(i9<1.0398378372192383){
     s0+=67.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i36<1.0773653984069824){
    if(i6<9.936094284057617e-05){
     s1+=56.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i37<0.0019538498017936945){
     s0+=1825.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i31<0.004087163135409355){
   if(i10<0.9566088318824768){
    if(i31<0.0013744429452344775){
     s0+=34.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=135.0;
    }
   } else {
    if(i16<0.09768173098564148){
     s0+=61.0;
     s1+=550.0;
    } else {
     s0+=16.0;
     s1+=13323.0;
    }
   }
  } else {
   s0+=58.0;
  }
 }
}
if(i1<0.0009605884552001953){
 if(i3<0.0003268122673034668){
  if(i18<0.0014803381636738777){
   if(i30<0.00035377161111682653){
    if(i65<0.00013231844059191644){
     s0+=17615.0;
     s1+=87.0;
    } else {
     s0+=2712.0;
     s1+=319.0;
    }
   } else {
    if(i30<0.0019064306979998946){
     s0+=50932.0;
     s1+=38.0;
    } else {
     s0+=10602.0;
     s1+=147.0;
    }
   }
  } else {
   if(i34<1.0868555307388306){
    if(i35<1.116804838180542){
     s0+=1749.0;
     s1+=1815.0;
    } else {
     s0+=2475.0;
    }
   } else {
    if(i78<0.1514083445072174){
     s0+=18795.0;
     s1+=851.0;
    } else {
     s0+=14.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i7<0.004358841106295586){
   if(i67<-0.0012137209996581078){
    if(i32<1.1456658840179443){
     s0+=3.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i65<0.000294879253488034){
     s0+=7297.0;
     s1+=178.0;
    } else {
     s0+=161.0;
     s1+=56.0;
    }
   }
  } else {
   if(i20<-0.0003587305545806885){
    if(i22<1.114098310470581){
     s0+=1514.0;
     s1+=224.0;
    } else {
     s0+=162.0;
     s1+=569.0;
    }
   } else {
    if(i40<-0.00012032502854708582){
     s0+=250.0;
     s1+=3120.0;
    } else {
     s0+=267.0;
     s1+=518.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i68<1.0026521682739258){
   if(i51<-1.547045394545421e-05){
    s0+=441.0;
   } else {
    if(i26<0.0009706164710223675){
     s0+=59.0;
     s1+=2324.0;
    } else {
     s0+=583.0;
    }
   }
  } else {
   if(i26<0.0008029738091863692){
    s1+=22.0;
   } else {
    s0+=917.0;
   }
  }
 } else {
  if(i13<0.9324886798858643){
   if(i51<-2.0253719412721694e-05){
    s1+=65.0;
   } else {
    if(i75<0.06224028393626213){
     s0+=38.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i7<0.008054203353822231){
    if(i49<0.0001150546595454216){
     s0+=8.0;
     s1+=1457.0;
    } else {
     s0+=42.0;
     s1+=6.0;
    }
   } else {
    if(i5<1.0053365230560303){
     s0+=19.0;
     s1+=330.0;
    } else {
     s0+=2.0;
     s1+=11899.0;
    }
   }
  }
 }
}
if(i5<1.0038650035858154){
 if(i29<1.1403393745422363){
  if(i3<0.00029343366622924805){
   if(i67<0.0008986155153252184){
    if(i19<-0.000329434871673584){
     s0+=36255.0;
     s1+=1344.0;
    } else {
     s0+=55325.0;
     s1+=663.0;
    }
   } else {
    if(i8<0.9883246421813965){
     s0+=8349.0;
     s1+=234.0;
    } else {
     s0+=2918.0;
     s1+=651.0;
    }
   }
  } else {
   if(i12<1.0120218992233276){
    if(i18<0.001780533930286765){
     s0+=4031.0;
     s1+=36.0;
    } else {
     s0+=3993.0;
     s1+=1745.0;
    }
   } else {
    if(i28<1.116804838180542){
     s0+=8.0;
     s1+=533.0;
    } else {
     s0+=673.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i7<0.006886586546897888){
   if(i3<0.000634610652923584){
    s0+=512.0;
   } else {
    if(i35<1.2369422912597656){
     s1+=14.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   if(i0<-3.7527519452851266e-05){
    if(i15<5.3080671932548285e-05){
     s0+=2.0;
    } else {
     s1+=1104.0;
    }
   } else {
    if(i44<1.0006991624832153){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=95.0;
    }
   }
  }
 }
} else {
 if(i11<1.017103672027588){
  if(i26<0.0022431365214288235){
   if(i26<0.0009800490224733949){
    if(i30<0.00023986402084119618){
     s0+=639.0;
    } else {
     s1+=1726.0;
    }
   } else {
    s0+=3217.0;
   }
  } else {
   if(i23<0.06956517696380615){
    if(i47<0.997794508934021){
     s0+=50.0;
     s1+=285.0;
    } else {
     s0+=161.0;
     s1+=17.0;
    }
   } else {
    if(i38<0.0017454400658607483){
     s0+=2.0;
    } else {
     s0+=41.0;
     s1+=2730.0;
    }
   }
  }
 } else {
  if(i18<0.001230587949976325){
   if(i20<0.00024259090423583984){
    if(i2<0.00013202428817749023){
     s0+=78.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i5<1.0096626281738281){
     s0+=12.0;
    } else {
     s0+=13.0;
     s1+=332.0;
    }
   }
  } else {
   if(i7<0.0024141953326761723){
    if(i45<-1.4844874385744333e-05){
     s1+=37.0;
    } else {
     s0+=62.0;
     s1+=4.0;
    }
   } else {
    if(i7<0.003895373549312353){
     s0+=28.0;
     s1+=118.0;
    } else {
     s0+=26.0;
     s1+=12469.0;
    }
   }
  }
 }
}
if(i1<0.0009440779685974121){
 if(i18<0.0018178049940615892){
  if(i10<0.9960587024688721){
   if(i27<0.9951808452606201){
    if(i38<0.0006635348545387387){
     s0+=3730.0;
     s1+=25.0;
    } else {
     s0+=7629.0;
    }
   } else {
    if(i34<1.0742530822753906){
     s0+=883.0;
     s1+=612.0;
    } else {
     s0+=5828.0;
     s1+=66.0;
    }
   }
  } else {
   if(i46<0.002094496972858906){
    if(i9<1.0284688472747803){
     s0+=73669.0;
     s1+=348.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i4<1.0023906230926514){
     s0+=949.0;
     s1+=86.0;
    } else {
     s0+=17.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i9<1.0086936950683594){
   if(i28<1.1164028644561768){
    if(i35<1.0533521175384521){
     s0+=1845.0;
    } else {
     s0+=283.0;
     s1+=1806.0;
    }
   } else {
    if(i2<-7.212162017822266e-06){
     s0+=16892.0;
     s1+=871.0;
    } else {
     s0+=963.0;
     s1+=1412.0;
    }
   }
  } else {
   if(i45<1.401540885126451e-05){
    if(i53<1.5676021575927734e-05){
     s0+=217.0;
     s1+=1518.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i39<0.05657574534416199){
     s0+=928.0;
     s1+=164.0;
    } else {
     s0+=198.0;
     s1+=864.0;
    }
   }
  }
 }
} else {
 if(i26<0.0023389928974211216){
  if(i37<0.0011892770417034626){
   if(i22<1.0325934886932373){
    if(i28<1.060863971710205){
     s0+=90.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i51<-1.4353310689330101e-05){
     s0+=15.0;
    } else {
     s0+=9.0;
     s1+=2151.0;
    }
   }
  } else {
   if(i30<0.0012569574173539877){
    s1+=193.0;
   } else {
    if(i13<1.0207390785217285){
     s0+=2005.0;
     s1+=3.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i29<1.023472785949707){
   if(i21<1.0132043361663818){
    if(i57<0.16424968838691711){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   } else {
    if(i53<3.2782554626464844e-06){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=113.0;
    }
   }
  } else {
   if(i28<1.629280686378479){
    if(i13<0.9381884336471558){
     s0+=6.0;
     s1+=43.0;
    } else {
     s0+=20.0;
     s1+=13361.0;
    }
   } else {
    if(i19<-0.0006428360939025879){
     s0+=50.0;
     s1+=15.0;
    } else {
     s1+=618.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i16<0.20057690143585205){
  if(i11<1.0124268531799316){
   if(i50<0.042011912912130356){
    if(i33<8.243322372436523e-05){
     s0+=66444.0;
     s1+=676.0;
    } else {
     s0+=26716.0;
     s1+=2087.0;
    }
   } else {
    if(i10<0.9885637760162354){
     s0+=16395.0;
     s1+=1328.0;
    } else {
     s0+=3558.0;
     s1+=1485.0;
    }
   }
  } else {
   if(i32<1.0905578136444092){
    s1+=457.0;
   } else {
    if(i18<0.0015302172396332026){
     s0+=582.0;
     s1+=15.0;
    } else {
     s0+=393.0;
     s1+=411.0;
    }
   }
  }
 } else {
  if(i30<0.0022310023196041584){
   if(i12<1.0182015895843506){
    s0+=155.0;
   } else {
    if(i66<0.0009862184524536133){
     s1+=1.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i41<-8.02727481641341e-06){
    if(i7<0.004169810563325882){
     s0+=43.0;
     s1+=16.0;
    } else {
     s0+=20.0;
     s1+=1533.0;
    }
   } else {
    if(i71<-0.0007917881011962891){
     s1+=1.0;
    } else {
     s0+=112.0;
    }
   }
  }
 }
} else {
 if(i46<0.0019352973904460669){
  if(i23<0.1943894922733307){
   if(i53<1.1980533599853516e-05){
    if(i44<0.9997831583023071){
     s0+=169.0;
     s1+=1.0;
    } else {
     s0+=155.0;
     s1+=2734.0;
    }
   } else {
    if(i28<1.185887336730957){
     s0+=1558.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=162.0;
    }
   }
  } else {
   if(i38<0.00184572022408247){
    s0+=16.0;
   } else {
    s1+=1079.0;
   }
  }
 } else {
  if(i26<0.0023471880704164505){
   s0+=45.0;
  } else {
   if(i20<-0.00032383203506469727){
    if(i31<0.0013899542391300201){
     s0+=56.0;
     s1+=8.0;
    } else {
     s0+=19.0;
     s1+=315.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=20.0;
     s1+=11425.0;
    } else {
     s0+=16.0;
     s1+=610.0;
    }
   }
  }
 }
}
if(i21<1.004462480545044){
 if(i14<0.2208874225616455){
  if(i9<1.0153828859329224){
   if(i31<0.0007204997818917036){
    if(i44<1.0001839399337769){
     s0+=44457.0;
     s1+=32.0;
    } else {
     s0+=35044.0;
     s1+=464.0;
    }
   } else {
    if(i2<-3.49879264831543e-05){
     s0+=24273.0;
     s1+=566.0;
    } else {
     s0+=6865.0;
     s1+=3711.0;
    }
   }
  } else {
   if(i12<1.0151901245117188){
    if(i32<1.0940325260162354){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=410.0;
     s1+=59.0;
    }
   } else {
    if(i44<0.9997179508209229){
     s0+=216.0;
     s1+=11.0;
    } else {
     s0+=505.0;
     s1+=1278.0;
    }
   }
  }
 } else {
  if(i7<0.0056310780346393585){
   if(i5<1.0027207136154175){
    if(i75<-0.0065778568387031555){
     s0+=141.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   } else {
    if(i39<0.015790723264217377){
     s0+=5.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i3<-0.0012082159519195557){
    if(i74<0.013975590467453003){
     s0+=5.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i40<2.3536558728665113e-06){
     s0+=8.0;
     s1+=1582.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i40<-0.00027823567506857216){
  if(i48<-6.574159669980872e-06){
   s0+=85.0;
  } else {
   if(i13<0.9365849494934082){
    if(i38<0.01680806465446949){
     s0+=68.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=44.0;
    }
   } else {
    if(i0<-6.99372758390382e-05){
     s0+=26.0;
     s1+=12124.0;
    } else {
     s0+=173.0;
     s1+=581.0;
    }
   }
  }
 } else {
  if(i19<0.00200808048248291){
   if(i45<-8.949701623350848e-06){
    if(i48<-4.000054104835726e-06){
     s0+=190.0;
     s1+=32.0;
    } else {
     s0+=46.0;
     s1+=853.0;
    }
   } else {
    if(i18<0.002024873625487089){
     s0+=2573.0;
     s1+=44.0;
    } else {
     s0+=1307.0;
     s1+=1213.0;
    }
   }
  } else {
   if(i68<0.9978927373886108){
    if(i4<1.0033934116363525){
     s0+=17.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i15<0.0013197645312175155){
     s1+=1661.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i9<1.0173027515411377){
 if(i22<1.1402404308319092){
  if(i19<0.0012372732162475586){
   if(i41<-4.571394310914911e-05){
    if(i23<0.10079705715179443){
     s0+=279.0;
     s1+=145.0;
    } else {
     s0+=51.0;
     s1+=541.0;
    }
   } else {
    if(i52<1.0002645254135132){
     s0+=63696.0;
     s1+=880.0;
    } else {
     s0+=48914.0;
     s1+=4386.0;
    }
   }
  } else {
   if(i44<0.9998366832733154){
    if(i12<0.9708104133605957){
     s1+=2.0;
    } else {
     s0+=619.0;
     s1+=2.0;
    }
   } else {
    if(i6<1.5795230865478516e-05){
     s0+=249.0;
     s1+=5.0;
    } else {
     s0+=210.0;
     s1+=1800.0;
    }
   }
  }
 } else {
  if(i0<-4.4643194996751845e-05){
   if(i14<1.722574234008789e-05){
    if(i25<0.061519935727119446){
     s0+=59.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   } else {
    if(i37<0.0016306780744343996){
     s0+=17.0;
    } else {
     s0+=28.0;
     s1+=2288.0;
    }
   }
  } else {
   if(i18<0.001739078899845481){
    s0+=817.0;
   } else {
    if(i45<1.8704551621340215e-05){
     s1+=118.0;
    } else {
     s0+=106.0;
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007203701534308493){
  if(i34<1.6811659336090088){
   if(i7<0.0032359082251787186){
    if(i27<1.0093318223953247){
     s0+=601.0;
     s1+=52.0;
    } else {
     s0+=6.0;
     s1+=280.0;
    }
   } else {
    if(i51<-2.2366998564393725e-06){
     s0+=151.0;
     s1+=13793.0;
    } else {
     s0+=85.0;
    }
   }
  } else {
   s0+=149.0;
  }
 } else {
  s0+=455.0;
 }
}
if(i3<0.000591576099395752){
 if(i3<0.00029212236404418945){
  if(i42<0.22627761960029602){
   if(i37<0.0009973680134862661){
    if(i25<0.006741770543158054){
     s0+=23030.0;
     s1+=404.0;
    } else {
     s0+=7222.0;
     s1+=1422.0;
    }
   } else {
    if(i15<0.000640154117718339){
     s0+=73408.0;
     s1+=901.0;
    } else {
     s0+=128.0;
     s1+=67.0;
    }
   }
  } else {
   if(i30<0.0040807160548865795){
    if(i41<-7.827684385119937e-06){
     s1+=16.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i0<-6.564441719092429e-06){
     s1+=322.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i39<0.017325155436992645){
   if(i37<0.0008940040715970099){
    if(i38<0.00023011487792246044){
     s0+=1159.0;
    } else {
     s0+=89.0;
     s1+=428.0;
    }
   } else {
    if(i0<-0.00010598405060591176){
     s0+=10.0;
     s1+=12.0;
    } else {
     s0+=3680.0;
     s1+=21.0;
    }
   }
  } else {
   if(i2<-1.9729137420654297e-05){
    if(i23<0.16972973942756653){
     s0+=1055.0;
     s1+=89.0;
    } else {
     s0+=36.0;
     s1+=117.0;
    }
   } else {
    if(i25<0.01306377537548542){
     s0+=228.0;
     s1+=98.0;
    } else {
     s0+=73.0;
     s1+=1308.0;
    }
   }
  }
 }
} else {
 if(i16<0.15659144520759583){
  if(i8<1.0133613348007202){
   if(i15<0.00029937911313027143){
    if(i34<1.0905089378356934){
     s0+=10.0;
     s1+=1456.0;
    } else {
     s0+=885.0;
     s1+=1182.0;
    }
   } else {
    if(i69<0.14797566831111908){
     s0+=4581.0;
     s1+=138.0;
    } else {
     s0+=421.0;
     s1+=594.0;
    }
   }
  } else {
   if(i0<-6.163949728943408e-05){
    if(i33<0.0015727877616882324){
     s0+=22.0;
     s1+=2173.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   } else {
    if(i51<-1.2349304597591981e-05){
     s0+=113.0;
    } else {
     s1+=133.0;
    }
   }
  }
 } else {
  if(i34<1.1300873756408691){
   if(i28<1.2603092193603516){
    s0+=145.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i15<0.0007290062494575977){
    if(i30<0.0024420893751084805){
     s0+=77.0;
     s1+=2.0;
    } else {
     s0+=78.0;
     s1+=13306.0;
    }
   } else {
    s0+=83.0;
   }
  }
 }
}
if(i8<1.0125603675842285){
 if(i4<1.0025396347045898){
  if(i50<0.3791210949420929){
   if(i31<0.0007055115420371294){
    if(i28<1.0817922353744507){
     s0+=15972.0;
     s1+=284.0;
    } else {
     s0+=62619.0;
     s1+=150.0;
    }
   } else {
    if(i21<0.9982068538665771){
     s0+=20965.0;
     s1+=462.0;
    } else {
     s0+=10742.0;
     s1+=3788.0;
    }
   }
  } else {
   if(i23<0.05476313829421997){
    if(i75<0.04616572707891464){
     s0+=93.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i51<-2.8119086437072838e-06){
     s0+=1.0;
     s1+=345.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i32<1.1757044792175293){
   if(i35<1.1174830198287964){
    if(i37<0.00021053697855677456){
     s0+=768.0;
     s1+=3.0;
    } else {
     s0+=86.0;
     s1+=1073.0;
    }
   } else {
    if(i26<0.0021431127097457647){
     s0+=2878.0;
    } else {
     s0+=513.0;
     s1+=206.0;
    }
   }
  } else {
   if(i2<4.231929779052734e-06){
    if(i29<1.0854625701904297){
     s0+=910.0;
     s1+=160.0;
    } else {
     s0+=206.0;
     s1+=309.0;
    }
   } else {
    if(i42<0.05610626935958862){
     s0+=388.0;
     s1+=457.0;
    } else {
     s0+=222.0;
     s1+=3759.0;
    }
   }
  }
 }
} else {
 if(i28<1.1767785549163818){
  if(i28<1.1180615425109863){
   s1+=1358.0;
  } else {
   s0+=371.0;
  }
 } else {
  if(i31<0.00013000715989619493){
   if(i27<1.0147504806518555){
    s0+=18.0;
   } else {
    s1+=28.0;
   }
  } else {
   if(i7<0.0011110914638265967){
    if(i3<0.001625359058380127){
     s0+=11.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i41<-1.256854011444375e-05){
     s0+=5.0;
     s1+=11680.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
}
if(i17<1.017031192779541){
 if(i4<1.0026321411132812){
  if(i42<0.2063690721988678){
   if(i25<0.006699446588754654){
    if(i26<0.0008073365315794945){
     s0+=23090.0;
     s1+=511.0;
    } else {
     s0+=45286.0;
     s1+=43.0;
    }
   } else {
    if(i6<2.562999725341797e-06){
     s0+=36912.0;
     s1+=1114.0;
    } else {
     s0+=4133.0;
     s1+=2541.0;
    }
   }
  } else {
   if(i0<-4.571077079162933e-05){
    if(i50<0.041790544986724854){
     s0+=2.0;
     s1+=4.0;
    } else {
     s1+=301.0;
    }
   } else {
    if(i12<1.017470359802246){
     s0+=114.0;
     s1+=7.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i37<0.0019367221975699067){
   if(i15<0.00020721570763271302){
    if(i28<1.1229777336120605){
     s0+=86.0;
     s1+=1253.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i26<0.0010062148794531822){
     s0+=632.0;
     s1+=26.0;
    } else {
     s0+=2709.0;
    }
   }
  } else {
   if(i6<4.26173210144043e-05){
    if(i50<0.24828395247459412){
     s0+=1294.0;
     s1+=858.0;
    } else {
     s0+=40.0;
     s1+=525.0;
    }
   } else {
    if(i21<1.010746955871582){
     s0+=385.0;
     s1+=1281.0;
    } else {
     s0+=55.0;
     s1+=1741.0;
    }
   }
  }
 }
} else {
 if(i12<1.027696132659912){
  if(i4<1.001063585281372){
   if(i25<0.06644024699926376){
    if(i36<1.077480673789978){
     s1+=14.0;
    } else {
     s0+=338.0;
     s1+=22.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i33<0.0005125999450683594){
    if(i51<-3.7808113120263442e-06){
     s0+=53.0;
     s1+=1705.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i67<0.0003319211245980114){
     s0+=649.0;
     s1+=118.0;
    } else {
     s0+=50.0;
     s1+=660.0;
    }
   }
  }
 } else {
  if(i2<1.6570091247558594e-05){
   if(i18<0.003781002014875412){
    if(i5<1.001333475112915){
     s0+=263.0;
     s1+=38.0;
    } else {
     s0+=39.0;
     s1+=65.0;
    }
   } else {
    if(i34<1.1762666702270508){
     s0+=11.0;
     s1+=18.0;
    } else {
     s1+=214.0;
    }
   }
  } else {
   if(i18<0.0009162085480056703){
    if(i3<0.0017624497413635254){
     s0+=22.0;
    } else {
     s0+=3.0;
     s1+=122.0;
    }
   } else {
    if(i44<0.9981021881103516){
     s0+=7.0;
    } else {
     s0+=51.0;
     s1+=11294.0;
    }
   }
  }
 }
}
if(i0<-0.00011612912931013852){
 if(i19<-0.0037756264209747314){
  if(i23<0.07313269376754761){
   if(i75<0.051512718200683594){
    if(i29<1.0653672218322754){
     s0+=272.0;
     s1+=9.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i17<0.8361115455627441){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  } else {
   if(i25<0.12854769825935364){
    if(i41<-6.101870530983433e-05){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=108.0;
    }
   } else {
    if(i67<0.014023462310433388){
     s1+=5.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i31<0.004042779561132193){
   if(i41<-0.0001819253811845556){
    s0+=61.0;
   } else {
    if(i6<0.00023752450942993164){
     s0+=122.0;
     s1+=13985.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   s0+=85.0;
  }
 }
} else {
 if(i2<6.276369094848633e-05){
  if(i16<0.20646509528160095){
   if(i10<1.009417176246643){
    if(i30<0.0010683323489502072){
     s0+=32539.0;
     s1+=3068.0;
    } else {
     s0+=78988.0;
     s1+=1633.0;
    }
   } else {
    if(i36<1.086911916732788){
     s0+=215.0;
     s1+=668.0;
    } else {
     s0+=1848.0;
     s1+=444.0;
    }
   }
  } else {
   if(i35<1.1731728315353394){
    s0+=87.0;
   } else {
    if(i41<-8.02727481641341e-06){
     s0+=44.0;
     s1+=664.0;
    } else {
     s0+=135.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i28<1.116804838180542){
   if(i44<0.9997509717941284){
    s0+=68.0;
   } else {
    if(i46<0.00014370429562404752){
     s0+=35.0;
    } else {
     s1+=2169.0;
    }
   }
  } else {
   if(i58<0.023302709683775902){
    if(i30<0.0023019034415483475){
     s0+=1604.0;
    } else {
     s0+=21.0;
     s1+=358.0;
    }
   } else {
    if(i38<0.0019857909064739943){
     s0+=238.0;
    } else {
     s0+=42.0;
     s1+=1281.0;
    }
   }
  }
 }
}
if(i2<6.324052810668945e-05){
 if(i3<0.0003274083137512207){
  if(i14<0.25046196579933167){
   if(i33<6.0617923736572266e-05){
    if(i0<-8.674939454067498e-05){
     s0+=209.0;
     s1+=51.0;
    } else {
     s0+=73762.0;
     s1+=755.0;
    }
   } else {
    if(i22<1.1223763227462769){
     s0+=29944.0;
     s1+=2000.0;
    } else {
     s0+=777.0;
     s1+=273.0;
    }
   }
  } else {
   if(i63<5.074803084426094e-06){
    if(i51<-3.732224968189257e-06){
     s0+=2.0;
     s1+=20.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i46<0.0029833922162652016){
     s0+=5.0;
    } else {
     s1+=208.0;
    }
   }
  }
 } else {
  if(i30<0.0024771341122686863){
   if(i7<0.004166324622929096){
    if(i13<0.9882959127426147){
     s0+=34.0;
     s1+=9.0;
    } else {
     s0+=6612.0;
     s1+=75.0;
    }
   } else {
    if(i54<0.0007115148473531008){
     s0+=69.0;
     s1+=1289.0;
    } else {
     s0+=207.0;
     s1+=224.0;
    }
   }
  } else {
   if(i14<0.08988004922866821){
    if(i75<0.011260302737355232){
     s0+=1485.0;
     s1+=30.0;
    } else {
     s0+=420.0;
     s1+=363.0;
    }
   } else {
    if(i18<0.005594094283878803){
     s0+=595.0;
     s1+=1257.0;
    } else {
     s0+=49.0;
     s1+=1218.0;
    }
   }
  }
 }
} else {
 if(i26<0.0023471880704164505){
  if(i15<0.00024223740911111236){
   if(i53<4.935264587402344e-05){
    s1+=2366.0;
   } else {
    s0+=55.0;
   }
  } else {
   s0+=2026.0;
  }
 } else {
  if(i20<-0.00032979249954223633){
   if(i23<0.12180805206298828){
    if(i18<0.0055609652772545815){
     s0+=74.0;
     s1+=14.0;
    } else {
     s0+=14.0;
     s1+=109.0;
    }
   } else {
    s1+=213.0;
   }
  } else {
   if(i8<1.0090396404266357){
    if(i7<0.005827366840094328){
     s0+=39.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=1872.0;
    }
   } else {
    s1+=12050.0;
   }
  }
 }
}
if(i25<0.04868808388710022){
 if(i17<1.016470193862915){
  if(i21<1.007530689239502){
   if(i2<6.61015510559082e-05){
    if(i26<0.000891098054125905){
     s0+=32113.0;
     s1+=3405.0;
    } else {
     s0+=79066.0;
     s1+=1539.0;
    }
   } else {
    if(i28<1.116804838180542){
     s0+=31.0;
     s1+=366.0;
    } else {
     s0+=667.0;
     s1+=221.0;
    }
   }
  } else {
   if(i26<0.001095016486942768){
    s1+=724.0;
   } else {
    if(i65<0.00019498432811815292){
     s0+=686.0;
     s1+=80.0;
    } else {
     s0+=278.0;
     s1+=981.0;
    }
   }
  }
 } else {
  if(i21<1.0107544660568237){
   if(i0<-6.138239405117929e-05){
    if(i33<0.0007247626781463623){
     s0+=105.0;
     s1+=2199.0;
    } else {
     s0+=226.0;
     s1+=230.0;
    }
   } else {
    if(i15<0.0003346474259160459){
     s0+=770.0;
     s1+=814.0;
    } else {
     s0+=636.0;
    }
   }
  } else {
   if(i25<0.004994012415409088){
    if(i1<0.0018044710159301758){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=293.0;
    }
   } else {
    s1+=3780.0;
   }
  }
 }
} else {
 if(i11<1.004145860671997){
  if(i20<-0.0006765425205230713){
   if(i36<1.126112699508667){
    if(i64<0.8571218252182007){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=1766.0;
    }
   } else {
    if(i55<0.005820201709866524){
     s0+=84.0;
     s1+=15.0;
    } else {
     s0+=51.0;
     s1+=161.0;
    }
   }
  } else {
   if(i50<0.0644054114818573){
    if(i23<0.0667019784450531){
     s0+=68.0;
     s1+=5.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i60<0.902888834476471){
     s0+=47.0;
     s1+=25.0;
    } else {
     s0+=10.0;
     s1+=2024.0;
    }
   }
  }
 } else {
  if(i27<0.9701749682426453){
   if(i25<0.06030335649847984){
    s0+=17.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i10<0.9636808633804321){
    if(i67<0.00205445964820683){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i2<-1.621246337890625e-05){
     s0+=2.0;
     s1+=56.0;
    } else {
     s1+=7242.0;
    }
   }
  }
 }
}
if(i0<-9.404207958141342e-05){
 if(i10<0.9493842720985413){
  if(i34<1.307586908340454){
   if(i42<0.04861658811569214){
    if(i31<0.002513899002224207){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i72<8.622690188531124e-07){
     s1+=21.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i22<1.0873703956604004){
    if(i16<0.09814110398292542){
     s0+=596.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i77<-0.03718847036361694){
     s0+=60.0;
     s1+=48.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i53<3.0100345611572266e-05){
   if(i32<1.1528396606445312){
    if(i26<0.0010945716639980674){
     s1+=753.0;
    } else {
     s0+=175.0;
     s1+=1.0;
    }
   } else {
    if(i45<2.0934976419084705e-05){
     s0+=13.0;
     s1+=11986.0;
    } else {
     s0+=144.0;
     s1+=2750.0;
    }
   }
  } else {
   if(i43<1.0131434202194214){
    s0+=87.0;
   } else {
    s1+=4.0;
   }
  }
 }
} else {
 if(i10<1.010045051574707){
  if(i21<1.008131742477417){
   if(i23<0.20769312977790833){
    if(i18<0.0017033983021974564){
     s0+=89763.0;
     s1+=872.0;
    } else {
     s0+=21986.0;
     s1+=3798.0;
    }
   } else {
    if(i70<0.10885646939277649){
     s0+=71.0;
     s1+=348.0;
    } else {
     s0+=207.0;
     s1+=31.0;
    }
   }
  } else {
   if(i3<0.0011854171752929688){
    if(i33<0.0006743073463439941){
     s0+=51.0;
     s1+=140.0;
    } else {
     s0+=109.0;
    }
   } else {
    if(i65<0.00010146068962058052){
     s0+=49.0;
     s1+=22.0;
    } else {
     s0+=78.0;
     s1+=632.0;
    }
   }
  }
 } else {
  if(i11<1.0164823532104492){
   if(i28<1.116804838180542){
    if(i41<-1.0340523658669554e-05){
     s1+=1117.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i58<0.030541270971298218){
     s0+=2465.0;
     s1+=96.0;
    } else {
     s0+=164.0;
     s1+=173.0;
    }
   }
  } else {
   if(i28<1.4586446285247803){
    if(i33<0.0007476806640625){
     s0+=142.0;
     s1+=1418.0;
    } else {
     s0+=204.0;
     s1+=41.0;
    }
   } else {
    s0+=142.0;
   }
  }
 }
}
if(i2<6.347894668579102e-05){
 if(i14<0.21755409240722656){
  if(i3<0.0003084540367126465){
   if(i7<0.0031150076538324356){
    if(i65<0.00018195671145804226){
     s0+=66072.0;
     s1+=218.0;
    } else {
     s0+=11665.0;
     s1+=465.0;
    }
   } else {
    if(i2<-2.9981136322021484e-05){
     s0+=23797.0;
     s1+=595.0;
    } else {
     s0+=2415.0;
     s1+=1562.0;
    }
   }
  } else {
   if(i49<1.7530328477732837e-05){
    if(i61<0.0013150572776794434){
     s0+=6572.0;
     s1+=330.0;
    } else {
     s0+=269.0;
     s1+=346.0;
    }
   } else {
    if(i2<1.9669532775878906e-06){
     s0+=2381.0;
     s1+=527.0;
    } else {
     s0+=1028.0;
     s1+=2462.0;
    }
   }
  }
 } else {
  if(i26<0.0025686861481517553){
   if(i68<1.0018130540847778){
    s0+=169.0;
   } else {
    if(i40<-0.0004343156178947538){
     s1+=9.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   }
  } else {
   if(i41<-8.755558155826293e-06){
    if(i25<0.0071092164143919945){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=35.0;
     s1+=1349.0;
    }
   } else {
    if(i18<0.0027312757447361946){
     s0+=49.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023654235992580652){
  if(i73<0.059735894203186035){
   if(i15<0.00023522425908595324){
    if(i41<-0.00011582725710468367){
     s0+=17.0;
    } else {
     s1+=2155.0;
    }
   } else {
    if(i53<7.241964340209961e-06){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=655.0;
    }
   }
  } else {
   if(i15<0.0002360308135394007){
    if(i30<0.0012865184107795358){
     s0+=1.0;
     s1+=296.0;
    } else {
     s0+=20.0;
     s1+=3.0;
    }
   } else {
    if(i28<1.116804838180542){
     s1+=1.0;
    } else {
     s0+=1258.0;
    }
   }
  }
 } else {
  if(i19<-0.0022206902503967285){
   if(i11<0.9925687313079834){
    if(i67<0.015344128012657166){
     s0+=20.0;
     s1+=257.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i51<-1.7713799024932086e-05){
     s1+=62.0;
    } else {
     s0+=72.0;
     s1+=14.0;
    }
   }
  } else {
   if(i8<1.0090248584747314){
    if(i16<0.1254168450832367){
     s0+=43.0;
     s1+=349.0;
    } else {
     s0+=4.0;
     s1+=1469.0;
    }
   } else {
    s1+=11758.0;
   }
  }
 }
}
if(i21<1.0053858757019043){
 if(i0<-7.920552889117971e-05){
  if(i56<-0.0007668064208701253){
   if(i31<0.003772490192204714){
    if(i51<-3.749782626982778e-05){
     s0+=29.0;
    } else {
     s0+=109.0;
     s1+=2542.0;
    }
   } else {
    s0+=55.0;
   }
  } else {
   if(i8<1.013582706451416){
    if(i40<-0.00040846189949661493){
     s0+=58.0;
     s1+=91.0;
    } else {
     s0+=1082.0;
     s1+=147.0;
    }
   } else {
    s1+=290.0;
   }
  }
 } else {
  if(i31<0.0007336278213188052){
   if(i46<0.001976317958906293){
    if(i22<1.023176908493042){
     s0+=11114.0;
     s1+=274.0;
    } else {
     s0+=66612.0;
     s1+=127.0;
    }
   } else {
    if(i2<-1.4960765838623047e-05){
     s0+=2655.0;
     s1+=6.0;
    } else {
     s0+=923.0;
     s1+=150.0;
    }
   }
  } else {
   if(i17<1.0106630325317383){
    if(i5<0.9979984760284424){
     s0+=21594.0;
     s1+=423.0;
    } else {
     s0+=7796.0;
     s1+=2990.0;
    }
   } else {
    if(i21<0.9979321956634521){
     s0+=515.0;
     s1+=52.0;
    } else {
     s0+=676.0;
     s1+=1473.0;
    }
   }
  }
 }
} else {
 if(i2<9.495019912719727e-05){
  if(i25<0.018781814724206924){
   if(i19<0.001232743263244629){
    if(i15<0.00022782396990805864){
     s0+=126.0;
     s1+=128.0;
    } else {
     s0+=1994.0;
     s1+=28.0;
    }
   } else {
    if(i48<-3.2741029372118646e-06){
     s0+=189.0;
    } else {
     s0+=7.0;
     s1+=173.0;
    }
   }
  } else {
   if(i23<0.04249724745750427){
    if(i5<1.0029289722442627){
     s0+=168.0;
     s1+=25.0;
    } else {
     s0+=25.0;
     s1+=25.0;
    }
   } else {
    if(i19<-0.0025666356086730957){
     s0+=119.0;
     s1+=277.0;
    } else {
     s0+=39.0;
     s1+=1512.0;
    }
   }
  }
 } else {
  if(i25<0.003431808901950717){
   if(i55<0.000746322562918067){
    if(i33<0.001614302396774292){
     s1+=242.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i27<1.0164082050323486){
     s0+=424.0;
     s1+=35.0;
    } else {
     s1+=93.0;
    }
   }
  } else {
   if(i1<0.0018093585968017578){
    if(i53<1.8805265426635742e-05){
     s0+=96.0;
     s1+=1183.0;
    } else {
     s0+=214.0;
     s1+=26.0;
    }
   } else {
    if(i44<0.9983638525009155){
     s0+=33.0;
    } else {
     s0+=24.0;
     s1+=11871.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i29<1.140138864517212){
  if(i7<0.004000568296760321){
   if(i26<0.0005824277177453041){
    if(i37<0.00017273565754294395){
     s0+=15542.0;
     s1+=52.0;
    } else {
     s0+=13778.0;
     s1+=1028.0;
    }
   } else {
    if(i17<1.0164064168930054){
     s0+=62328.0;
     s1+=178.0;
    } else {
     s0+=626.0;
     s1+=63.0;
    }
   }
  } else {
   if(i11<1.0068504810333252){
    if(i52<0.9999550580978394){
     s0+=12618.0;
     s1+=134.0;
    } else {
     s0+=8171.0;
     s1+=3073.0;
    }
   } else {
    if(i4<1.000150203704834){
     s0+=485.0;
     s1+=4.0;
    } else {
     s0+=270.0;
     s1+=1749.0;
    }
   }
  }
 } else {
  if(i58<0.039306625723838806){
   if(i31<0.000904353684745729){
    s0+=380.0;
   } else {
    if(i27<0.9935067892074585){
     s0+=27.0;
     s1+=10.0;
    } else {
     s1+=114.0;
    }
   }
  } else {
   if(i30<0.004045148380100727){
    if(i32<1.449568510055542){
     s0+=7.0;
     s1+=193.0;
    } else {
     s0+=178.0;
    }
   } else {
    if(i22<1.1676461696624756){
     s0+=70.0;
     s1+=83.0;
    } else {
     s0+=3.0;
     s1+=1173.0;
    }
   }
  }
 }
} else {
 if(i34<1.1703872680664062){
  if(i55<0.0008179399883374572){
   if(i36<1.0380276441574097){
    if(i61<-0.0003477334976196289){
     s1+=6.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i44<0.999725878238678){
     s0+=8.0;
    } else {
     s0+=12.0;
     s1+=2117.0;
    }
   }
  } else {
   if(i37<0.0019542304798960686){
    if(i35<1.116804838180542){
     s0+=40.0;
     s1+=144.0;
    } else {
     s0+=1759.0;
    }
   } else {
    if(i35<1.1935834884643555){
     s0+=37.0;
    } else {
     s0+=15.0;
     s1+=606.0;
    }
   }
  }
 } else {
  if(i47<0.9044426679611206){
   if(i25<0.03424321487545967){
    if(i52<1.0022553205490112){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i31<0.004081865306943655){
     s0+=17.0;
     s1+=300.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i19<-0.004083991050720215){
    if(i42<0.10154497623443604){
     s0+=17.0;
     s1+=2.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i1<0.0016914010047912598){
     s0+=38.0;
     s1+=1744.0;
    } else {
     s0+=1.0;
     s1+=11521.0;
    }
   }
  }
 }
}
if(i9<1.0176982879638672){
 if(i2<7.408857345581055e-05){
  if(i14<0.22324436902999878){
   if(i7<0.003994475118815899){
    if(i65<0.0001869615662144497){
     s0+=77520.0;
     s1+=457.0;
    } else {
     s0+=14870.0;
     s1+=784.0;
    }
   } else {
    if(i35<1.1161681413650513){
     s0+=3335.0;
     s1+=2433.0;
    } else {
     s0+=18083.0;
     s1+=2159.0;
    }
   }
  } else {
   if(i18<0.0024731908924877644){
    if(i15<8.327013347297907e-05){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=95.0;
     s1+=3.0;
    }
   } else {
    if(i41<-4.131049536226783e-06){
     s0+=16.0;
     s1+=602.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i15<0.0007068446720950305){
   if(i22<1.0235927104949951){
    if(i61<-0.016841471195220947){
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i52<0.9985789656639099){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=134.0;
     s1+=3732.0;
    }
   }
  } else {
   s0+=1006.0;
  }
 }
} else {
 if(i16<0.18247783184051514){
  if(i46<0.0010416398290544748){
   if(i6<2.2649765014648438e-06){
    s0+=5.0;
   } else {
    if(i7<0.0007976932683959603){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=1356.0;
    }
   }
  } else {
   if(i13<1.0218677520751953){
    if(i7<0.005886956583708525){
     s0+=950.0;
     s1+=79.0;
    } else {
     s0+=60.0;
     s1+=357.0;
    }
   } else {
    if(i52<1.0007898807525635){
     s0+=138.0;
     s1+=9.0;
    } else {
     s0+=84.0;
     s1+=1094.0;
    }
   }
  }
 } else {
  if(i26<0.00256074545904994){
   if(i28<1.2196855545043945){
    if(i35<1.1459732055664062){
     s0+=29.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   } else {
    s0+=79.0;
   }
  } else {
   if(i34<1.170027494430542){
    if(i10<1.000868558883667){
     s0+=31.0;
     s1+=19.0;
    } else {
     s0+=18.0;
     s1+=319.0;
    }
   } else {
    if(i41<-8.636887287138961e-06){
     s1+=10898.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<0.0005697011947631836){
 if(i7<0.0037994813174009323){
  if(i34<1.077322244644165){
   if(i65<0.00016500032506883144){
    if(i7<0.0032332269474864006){
     s0+=21530.0;
     s1+=125.0;
    } else {
     s0+=1039.0;
     s1+=130.0;
    }
   } else {
    if(i11<0.9890705347061157){
     s0+=1550.0;
     s1+=27.0;
    } else {
     s0+=1697.0;
     s1+=629.0;
    }
   }
  } else {
   if(i0<-5.194691402721219e-05){
    if(i60<1.0938644409179688){
     s0+=686.0;
     s1+=30.0;
    } else {
     s0+=25.0;
     s1+=21.0;
    }
   } else {
    if(i38<0.0019206989090889692){
     s0+=50261.0;
     s1+=31.0;
    } else {
     s0+=10900.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i30<0.0011991309002041817){
   if(i32<1.0540437698364258){
    if(i3<-0.0002823173999786377){
     s0+=2179.0;
    } else {
     s0+=348.0;
     s1+=24.0;
    }
   } else {
    if(i63<6.26420478511136e-06){
     s0+=8.0;
     s1+=2149.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  } else {
   if(i23<0.19479039311408997){
    if(i29<1.1134045124053955){
     s0+=18935.0;
     s1+=636.0;
    } else {
     s0+=465.0;
     s1+=335.0;
    }
   } else {
    if(i31<0.0007672033389098942){
     s0+=75.0;
     s1+=1.0;
    } else {
     s0+=62.0;
     s1+=733.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0002575859543867409){
  if(i1<2.1159648895263672e-05){
   if(i7<0.005981983616948128){
    s0+=248.0;
   } else {
    if(i22<1.0529766082763672){
     s0+=52.0;
     s1+=12.0;
    } else {
     s0+=38.0;
     s1+=298.0;
    }
   }
  } else {
   if(i44<0.9985260963439941){
    s0+=144.0;
   } else {
    if(i16<0.1295638084411621){
     s0+=399.0;
     s1+=2341.0;
    } else {
     s0+=58.0;
     s1+=12616.0;
    }
   }
  }
 } else {
  if(i49<-2.0126975869061425e-05){
   if(i25<0.003484210232272744){
    if(i30<0.0013148268917575479){
     s0+=5.0;
     s1+=202.0;
    } else {
     s0+=201.0;
     s1+=36.0;
    }
   } else {
    if(i45<-8.30789576866664e-06){
     s0+=11.0;
     s1+=1744.0;
    } else {
     s0+=60.0;
     s1+=99.0;
    }
   }
  } else {
   if(i7<0.004472809843719006){
    if(i53<3.7550926208496094e-06){
     s0+=74.0;
     s1+=51.0;
    } else {
     s0+=4239.0;
     s1+=112.0;
    }
   } else {
    if(i8<0.9954382181167603){
     s0+=1050.0;
     s1+=708.0;
    } else {
     s0+=182.0;
     s1+=1071.0;
    }
   }
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i16<0.20090630650520325){
  if(i6<1.1622905731201172e-05){
   if(i7<0.0028206859715282917){
    if(i22<1.0179111957550049){
     s0+=3697.0;
     s1+=197.0;
    } else {
     s0+=71062.0;
     s1+=367.0;
    }
   } else {
    if(i3<-0.00015729665756225586){
     s0+=24988.0;
     s1+=252.0;
    } else {
     s0+=3942.0;
     s1+=2018.0;
    }
   }
  } else {
   if(i15<0.0003706813440658152){
    if(i26<0.0009393945219926536){
     s0+=35.0;
     s1+=1619.0;
    } else {
     s0+=5321.0;
     s1+=1388.0;
    }
   } else {
    if(i69<0.4931298494338989){
     s0+=4944.0;
     s1+=287.0;
    } else {
     s0+=26.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i46<0.001794100389815867){
   if(i17<1.0173590183258057){
    s0+=141.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i31<0.00046521774493157864){
    s0+=89.0;
   } else {
    if(i41<-8.003753464436159e-06){
     s0+=53.0;
     s1+=1648.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i32<1.1706266403198242){
  if(i35<1.116804838180542){
   if(i53<1.2814998626708984e-05){
    if(i36<1.0328443050384521){
     s0+=13.0;
    } else {
     s1+=2339.0;
    }
   } else {
    if(i9<1.0117180347442627){
     s0+=101.0;
     s1+=4.0;
    } else {
     s0+=33.0;
     s1+=14.0;
    }
   }
  } else {
   if(i35<1.1849298477172852){
    s0+=1771.0;
   } else {
    if(i20<-0.0002639889717102051){
     s0+=6.0;
    } else {
     s1+=53.0;
    }
   }
  }
 } else {
  if(i13<0.9393316507339478){
   if(i23<0.00185394287109375){
    if(i12<0.8499701023101807){
     s1+=12.0;
    } else {
     s0+=32.0;
     s1+=1.0;
    }
   } else {
    if(i2<9.065866470336914e-05){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=89.0;
    }
   }
  } else {
   if(i21<1.011639952659607){
    if(i42<0.08341380953788757){
     s0+=53.0;
     s1+=463.0;
    } else {
     s0+=18.0;
     s1+=4356.0;
    }
   } else {
    if(i20<-0.0006871223449707031){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=9174.0;
    }
   }
  }
 }
}
if(i9<1.0173604488372803){
 if(i4<1.0026341676712036){
  if(i59<0.007934131659567356){
   if(i33<7.814168930053711e-05){
    if(i47<1.0592893362045288){
     s0+=77325.0;
     s1+=837.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   } else {
    if(i28<1.1162974834442139){
     s0+=6055.0;
     s1+=2559.0;
    } else {
     s0+=26055.0;
     s1+=754.0;
    }
   }
  } else {
   if(i40<-0.00037244995473884046){
    if(i8<0.9365386962890625){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=277.0;
    }
   } else {
    if(i42<0.083147794008255){
     s0+=248.0;
     s1+=16.0;
    } else {
     s0+=40.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i18<0.0019325469620525837){
   if(i39<0.026183277368545532){
    if(i35<1.1177868843078613){
     s0+=757.0;
     s1+=349.0;
    } else {
     s0+=2035.0;
     s1+=57.0;
    }
   } else {
    if(i44<1.001760721206665){
     s0+=32.0;
     s1+=193.0;
    } else {
     s0+=35.0;
     s1+=4.0;
    }
   }
  } else {
   if(i0<-8.149640052579343e-05){
    if(i65<0.003135525155812502){
     s0+=313.0;
     s1+=3370.0;
    } else {
     s0+=213.0;
     s1+=71.0;
    }
   } else {
    if(i31<0.001561069511808455){
     s0+=568.0;
     s1+=1305.0;
    } else {
     s0+=1220.0;
     s1+=341.0;
    }
   }
  }
 }
} else {
 if(i0<-6.103276973590255e-05){
  if(i48<-6.568546723428881e-06){
   s0+=84.0;
  } else {
   if(i15<0.0008551894570700824){
    if(i3<0.0001112222671508789){
     s0+=33.0;
     s1+=133.0;
    } else {
     s0+=67.0;
     s1+=13292.0;
    }
   } else {
    s0+=91.0;
   }
  }
 } else {
  if(i2<1.1861324310302734e-05){
   if(i7<0.005875617265701294){
    if(i27<0.98345947265625){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=669.0;
     s1+=11.0;
    }
   } else {
    if(i12<1.0207315683364868){
     s0+=25.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=66.0;
    }
   }
  } else {
   if(i30<0.0011924647260457277){
    if(i50<0.11719312518835068){
     s0+=2.0;
     s1+=431.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.0026357548777014017){
     s0+=428.0;
     s1+=9.0;
    } else {
     s0+=58.0;
     s1+=309.0;
    }
   }
  }
 }
}
if(i17<1.0165939331054688){
 if(i7<0.013988573104143143){
  if(i1<0.0010734200477600098){
   if(i30<0.0010622924892231822){
    if(i18<0.0017270202515646815){
     s0+=30001.0;
     s1+=738.0;
    } else {
     s0+=2436.0;
     s1+=2534.0;
    }
   } else {
    if(i0<-9.335679351352155e-05){
     s0+=268.0;
     s1+=279.0;
    } else {
     s0+=79830.0;
     s1+=1450.0;
    }
   }
  } else {
   if(i33<0.0007591843605041504){
    if(i52<1.0009522438049316){
     s0+=59.0;
    } else {
     s0+=78.0;
     s1+=1690.0;
    }
   } else {
    if(i38<0.0023775040172040462){
     s0+=970.0;
    } else {
     s0+=31.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i10<0.9475119113922119){
   if(i29<1.0923118591308594){
    if(i4<1.0071055889129639){
     s0+=1028.0;
     s1+=108.0;
    } else {
     s0+=7.0;
     s1+=67.0;
    }
   } else {
    if(i72<-4.218332833261229e-06){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=120.0;
    }
   }
  } else {
   if(i58<0.04318877309560776){
    if(i14<0.009391546249389648){
     s0+=44.0;
     s1+=12.0;
    } else {
     s0+=24.0;
     s1+=390.0;
    }
   } else {
    if(i59<8.627038914710283e-05){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=2532.0;
    }
   }
  }
 }
} else {
 if(i3<0.00032460689544677734){
  if(i52<0.9986586570739746){
   if(i41<-1.0656833183020353e-05){
    s1+=125.0;
   } else {
    s0+=13.0;
   }
  } else {
   if(i25<0.027663879096508026){
    if(i19<-0.0029613375663757324){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=588.0;
     s1+=44.0;
    }
   } else {
    if(i32<1.46870756149292){
     s0+=40.0;
     s1+=113.0;
    } else {
     s0+=54.0;
    }
   }
  }
 } else {
  if(i15<0.0007038103649392724){
   if(i8<1.002577304840088){
    if(i58<0.06068757176399231){
     s0+=178.0;
     s1+=25.0;
    } else {
     s1+=248.0;
    }
   } else {
    if(i1<-1.5974044799804688e-05){
     s0+=64.0;
     s1+=56.0;
    } else {
     s0+=174.0;
     s1+=13573.0;
    }
   }
  } else {
   s0+=606.0;
  }
 }
}
if(i4<1.0026252269744873){
 if(i0<-8.302376954816282e-05){
  if(i23<0.09880217909812927){
   if(i25<0.0715138167142868){
    if(i35<1.1015981435775757){
     s1+=12.0;
    } else {
     s0+=802.0;
     s1+=41.0;
    }
   } else {
    if(i22<1.037085771560669){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=48.0;
    }
   }
  } else {
   if(i40<-0.00040166551480069757){
    if(i6<4.413723945617676e-05){
     s0+=14.0;
     s1+=921.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i19<0.0006442666053771973){
     s0+=15.0;
     s1+=61.0;
    } else {
     s0+=99.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i35<1.094810962677002){
   if(i33<7.575750350952148e-05){
    if(i18<0.0012717385543510318){
     s0+=18903.0;
     s1+=216.0;
    } else {
     s0+=2361.0;
     s1+=470.0;
    }
   } else {
    if(i25<0.008087636902928352){
     s0+=4688.0;
     s1+=298.0;
    } else {
     s0+=382.0;
     s1+=2131.0;
    }
   }
  } else {
   if(i12<1.0220595598220825){
    if(i62<0.004261466674506664){
     s0+=80091.0;
     s1+=1062.0;
    } else {
     s0+=2218.0;
     s1+=256.0;
    }
   } else {
    if(i0<-4.58088907180354e-05){
     s0+=71.0;
     s1+=160.0;
    } else {
     s0+=216.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i2<8.32676887512207e-05){
  if(i58<0.0401323176920414){
   if(i33<0.00043654441833496094){
    if(i44<1.0013418197631836){
     s0+=59.0;
     s1+=779.0;
    } else {
     s0+=153.0;
     s1+=84.0;
    }
   } else {
    if(i46<0.002227721968665719){
     s0+=3382.0;
     s1+=90.0;
    } else {
     s0+=769.0;
     s1+=460.0;
    }
   }
  } else {
   if(i66<-0.00526157021522522){
    if(i69<0.5007039904594421){
     s0+=348.0;
     s1+=93.0;
    } else {
     s0+=27.0;
     s1+=91.0;
    }
   } else {
    if(i2<-2.104043960571289e-05){
     s0+=192.0;
     s1+=144.0;
    } else {
     s0+=101.0;
     s1+=2097.0;
    }
   }
  }
 } else {
  if(i48<-7.755489605187904e-06){
   s0+=530.0;
  } else {
   if(i26<0.0021324576810002327){
    if(i32<1.117074966430664){
     s0+=95.0;
     s1+=1976.0;
    } else {
     s0+=346.0;
    }
   } else {
    if(i14<0.0003789663314819336){
     s0+=30.0;
     s1+=26.0;
    } else {
     s0+=55.0;
     s1+=13307.0;
    }
   }
  }
 }
}
if(i0<-0.00011746818199753761){
 if(i23<0.041264116764068604){
  if(i29<1.0298353433609009){
   if(i66<-0.00294610857963562){
    if(i7<0.023650024086236954){
     s0+=290.0;
     s1+=6.0;
    } else {
     s0+=30.0;
     s1+=14.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i30<0.0028208880685269833){
    s0+=11.0;
   } else {
    if(i49<0.0003607624094001949){
     s0+=4.0;
     s1+=85.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i63<1.901166615425609e-05){
   if(i26<0.0023514076601713896){
    if(i26<0.0010815750574693084){
     s1+=217.0;
    } else {
     s0+=132.0;
    }
   } else {
    if(i29<0.9710619449615479){
     s0+=25.0;
     s1+=5.0;
    } else {
     s0+=19.0;
     s1+=13522.0;
    }
   }
  } else {
   if(i40<-0.0010500394273549318){
    s1+=1.0;
   } else {
    s0+=35.0;
   }
  }
 }
} else {
 if(i5<1.0034408569335938){
  if(i6<1.8298625946044922e-05){
   if(i7<0.0035355393774807453){
    if(i7<0.0020225129555910826){
     s0+=66974.0;
     s1+=307.0;
    } else {
     s0+=17390.0;
     s1+=665.0;
    }
   } else {
    if(i4<1.000011682510376){
     s0+=18985.0;
     s1+=388.0;
    } else {
     s0+=4079.0;
     s1+=2634.0;
    }
   }
  } else {
   if(i16<0.14516490697860718){
    if(i7<0.004138553515076637){
     s0+=2099.0;
     s1+=34.0;
    } else {
     s0+=1426.0;
     s1+=891.0;
    }
   } else {
    if(i32<1.233483076095581){
     s0+=194.0;
     s1+=170.0;
    } else {
     s0+=6.0;
     s1+=236.0;
    }
   }
  }
 } else {
  if(i53<1.1980533599853516e-05){
   if(i31<0.0004555087652988732){
    if(i8<1.0100994110107422){
     s0+=770.0;
     s1+=16.0;
    } else {
     s0+=13.0;
     s1+=223.0;
    }
   } else {
    if(i30<0.00024184552603401244){
     s0+=316.0;
    } else {
     s0+=632.0;
     s1+=3996.0;
    }
   }
  } else {
   if(i25<0.013452572748064995){
    if(i21<1.0118399858474731){
     s0+=3151.0;
     s1+=64.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i34<1.1332385540008545){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=62.0;
     s1+=649.0;
    }
   }
  }
 }
}
if(i14<0.1965591013431549){
 if(i20<0.0002085566520690918){
  if(i62<0.004658816382288933){
   if(i31<0.0007065917598083615){
    if(i45<-9.554885764373466e-06){
     s1+=79.0;
    } else {
     s0+=79007.0;
     s1+=556.0;
    }
   } else {
    if(i28<1.1164028644561768){
     s0+=4003.0;
     s1+=3760.0;
    } else {
     s0+=28337.0;
     s1+=1404.0;
    }
   }
  } else {
   if(i4<1.0023107528686523){
    if(i6<1.3053417205810547e-05){
     s0+=2441.0;
     s1+=216.0;
    } else {
     s0+=252.0;
     s1+=138.0;
    }
   } else {
    if(i14<0.0408363938331604){
     s0+=448.0;
     s1+=208.0;
    } else {
     s0+=168.0;
     s1+=1248.0;
    }
   }
  }
 } else {
  if(i7<0.004898402839899063){
   if(i54<0.0005638102302327752){
    if(i51<-5.596396022156114e-06){
     s0+=5.0;
     s1+=728.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i34<1.1500647068023682){
     s0+=679.0;
     s1+=73.0;
    } else {
     s0+=85.0;
     s1+=168.0;
    }
   }
  } else {
   if(i5<1.0039818286895752){
    if(i31<0.0019743028096854687){
     s1+=6.0;
    } else {
     s0+=86.0;
    }
   } else {
    if(i15<0.0017390588764101267){
     s1+=2877.0;
    } else {
     s0+=59.0;
    }
   }
  }
 }
} else {
 if(i37<0.0020981852430850267){
  if(i2<0.00016063451766967773){
   if(i13<0.9888020753860474){
    if(i68<1.0008089542388916){
     s0+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i62<-0.0016581049421802163){
     s0+=36.0;
     s1+=5.0;
    } else {
     s0+=579.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<1.171745777130127){
    s0+=2.0;
   } else {
    s1+=26.0;
   }
  }
 } else {
  if(i21<0.9983149766921997){
   if(i30<0.0075068045407533646){
    if(i52<1.0021929740905762){
     s0+=166.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=22.0;
    }
   } else {
    if(i63<1.8633421859703958e-05){
     s0+=12.0;
     s1+=264.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.0002652406692504883){
    if(i0<-3.92618021578528e-05){
     s0+=6.0;
     s1+=227.0;
    } else {
     s0+=90.0;
     s1+=9.0;
    }
   } else {
    if(i20<-0.0004546046257019043){
     s0+=36.0;
     s1+=172.0;
    } else {
     s0+=32.0;
     s1+=12080.0;
    }
   }
  }
 }
}
if(i17<1.0165544748306274){
 if(i58<0.08337123692035675){
  if(i20<0.0002135634422302246){
   if(i18<0.0017281663604080677){
    if(i2<0.0001189112663269043){
     s0+=90883.0;
     s1+=963.0;
    } else {
     s0+=8.0;
     s1+=30.0;
    }
   } else {
    if(i5<0.9980629682540894){
     s0+=15337.0;
     s1+=448.0;
    } else {
     s0+=5611.0;
     s1+=4390.0;
    }
   }
  } else {
   if(i44<0.9998351335525513){
    if(i37<0.01494528353214264){
     s0+=457.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i53<2.104043960571289e-05){
     s0+=123.0;
     s1+=1462.0;
    } else {
     s0+=83.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i14<0.10320937633514404){
   if(i21<1.006644606590271){
    if(i20<-0.0004836916923522949){
     s0+=1825.0;
     s1+=50.0;
    } else {
     s0+=87.0;
     s1+=119.0;
    }
   } else {
    if(i23<0.015262007713317871){
     s0+=60.0;
     s1+=22.0;
    } else {
     s0+=10.0;
     s1+=163.0;
    }
   }
  } else {
   if(i16<0.14097324013710022){
    if(i1<-0.0015635788440704346){
     s0+=238.0;
     s1+=8.0;
    } else {
     s0+=27.0;
     s1+=387.0;
    }
   } else {
    if(i26<0.0025818210560828447){
     s0+=40.0;
     s1+=5.0;
    } else {
     s0+=60.0;
     s1+=1880.0;
    }
   }
  }
 }
} else {
 if(i7<0.00496273348107934){
  if(i49<-2.5144665414700285e-05){
   if(i33<0.001699894666671753){
    if(i5<1.0091145038604736){
     s0+=37.0;
     s1+=119.0;
    } else {
     s0+=3.0;
     s1+=568.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   if(i28<1.0905578136444092){
    s1+=66.0;
   } else {
    if(i45<9.475331353314687e-06){
     s0+=1041.0;
     s1+=6.0;
    } else {
     s0+=501.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i31<0.003997625317424536){
   if(i51<-2.277337216582964e-06){
    if(i13<1.003758192062378){
     s0+=30.0;
     s1+=45.0;
    } else {
     s0+=57.0;
     s1+=13360.0;
    }
   } else {
    s0+=51.0;
   }
  } else {
   s0+=27.0;
  }
 }
}
if(i4<1.0026336908340454){
 if(i11<1.014126181602478){
  if(i23<0.23209643363952637){
   if(i31<0.0007257270626723766){
    if(i18<0.0008904194692149758){
     s0+=65389.0;
     s1+=157.0;
    } else {
     s0+=14223.0;
     s1+=374.0;
    }
   } else {
    if(i30<0.0009609137196093798){
     s0+=3165.0;
     s1+=2965.0;
    } else {
     s0+=27233.0;
     s1+=950.0;
    }
   }
  } else {
   if(i36<1.6811659336090088){
    if(i41<-7.489235940738581e-06){
     s0+=14.0;
     s1+=390.0;
    } else {
     s0+=51.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i41<-1.0900013876380399e-05){
   if(i1<-0.0007600188255310059){
    if(i19<-0.0011752545833587646){
     s1+=11.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i20<0.00021183490753173828){
     s0+=4.0;
     s1+=587.0;
    } else {
     s0+=58.0;
     s1+=287.0;
    }
   }
  } else {
   if(i22<1.0812584161758423){
    if(i55<0.0011678916634991765){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    s0+=217.0;
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i53<8.881092071533203e-06){
   if(i6<2.0325183868408203e-05){
    if(i35<1.1599884033203125){
     s0+=252.0;
     s1+=6.0;
    } else {
     s0+=41.0;
     s1+=44.0;
    }
   } else {
    if(i32<1.1209661960601807){
     s0+=46.0;
     s1+=2045.0;
    } else {
     s0+=151.0;
     s1+=123.0;
    }
   }
  } else {
   if(i45<-1.4034916603122838e-05){
    if(i55<0.0008819234790280461){
     s0+=1.0;
     s1+=160.0;
    } else {
     s0+=91.0;
     s1+=19.0;
    }
   } else {
    if(i39<0.043198660016059875){
     s0+=3561.0;
     s1+=97.0;
    } else {
     s0+=77.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i2<1.6510486602783203e-05){
   if(i41<-3.5025081160711125e-05){
    if(i16<0.0763130784034729){
     s0+=357.0;
     s1+=91.0;
    } else {
     s0+=30.0;
     s1+=383.0;
    }
   } else {
    if(i33<0.000503242015838623){
     s0+=92.0;
     s1+=126.0;
    } else {
     s0+=706.0;
     s1+=105.0;
    }
   }
  } else {
   if(i7<0.00492971483618021){
    if(i5<1.0088696479797363){
     s0+=212.0;
     s1+=94.0;
    } else {
     s1+=418.0;
    }
   } else {
    if(i49<0.0002968509215861559){
     s0+=186.0;
     s1+=14780.0;
    } else {
     s0+=158.0;
     s1+=234.0;
    }
   }
  }
 }
}
if(i13<1.013898491859436){
 if(i4<1.0026230812072754){
  if(i18<0.0017324736109003425){
   if(i34<1.0739831924438477){
    if(i13<0.9959514141082764){
     s0+=4628.0;
     s1+=517.0;
    } else {
     s0+=23937.0;
     s1+=252.0;
    }
   } else {
    if(i41<-1.896045432658866e-05){
     s0+=41.0;
     s1+=22.0;
    } else {
     s0+=60561.0;
     s1+=208.0;
    }
   }
  } else {
   if(i28<1.1164028644561768){
    if(i68<1.0003302097320557){
     s0+=2121.0;
     s1+=360.0;
    } else {
     s0+=418.0;
     s1+=2147.0;
    }
   } else {
    if(i7<0.017667382955551147){
     s0+=18170.0;
     s1+=735.0;
    } else {
     s0+=185.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i7<0.004146563820540905){
   if(i15<0.00020472423057071865){
    if(i2<5.2094459533691406e-05){
     s0+=402.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=435.0;
    }
   } else {
    if(i11<0.9964284300804138){
     s0+=41.0;
     s1+=12.0;
    } else {
     s0+=3245.0;
     s1+=8.0;
    }
   }
  } else {
   if(i21<1.0066297054290771){
    if(i8<0.9790467023849487){
     s0+=597.0;
     s1+=160.0;
    } else {
     s0+=624.0;
     s1+=1772.0;
    }
   } else {
    if(i29<1.023472785949707){
     s0+=161.0;
     s1+=198.0;
    } else {
     s0+=166.0;
     s1+=2675.0;
    }
   }
  }
 }
} else {
 if(i7<0.0039039552211761475){
  if(i55<0.0004080111684743315){
   if(i20<0.00020396709442138672){
    s0+=39.0;
   } else {
    s1+=306.0;
   }
  } else {
   if(i49<-2.8350052161840722e-05){
    if(i66<0.0021291375160217285){
     s0+=10.0;
     s1+=198.0;
    } else {
     s0+=36.0;
     s1+=17.0;
    }
   } else {
    if(i5<1.0117299556732178){
     s0+=1071.0;
     s1+=44.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i21<0.9979966878890991){
   if(i26<0.002481040544807911){
    if(i69<0.020318863913416862){
     s1+=1.0;
    } else {
     s0+=71.0;
    }
   } else {
    s1+=163.0;
   }
  } else {
   if(i15<0.0010336685227230191){
    if(i51<-2.4439559638267383e-06){
     s0+=29.0;
     s1+=13495.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=124.0;
   }
  }
 }
}
if(i27<1.0086085796356201){
 if(i5<1.0032943487167358){
  if(i25<0.06376688182353973){
   if(i7<0.003599122865125537){
    if(i31<0.0005171962548047304){
     s0+=61849.0;
     s1+=143.0;
    } else {
     s0+=24417.0;
     s1+=919.0;
    }
   } else {
    if(i1<-0.0003915727138519287){
     s0+=21784.0;
     s1+=844.0;
    } else {
     s0+=2346.0;
     s1+=3243.0;
    }
   }
  } else {
   if(i27<0.9674997925758362){
    if(i29<1.1149744987487793){
     s0+=265.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i17<0.870830237865448){
     s0+=51.0;
     s1+=28.0;
    } else {
     s0+=28.0;
     s1+=856.0;
    }
   }
  }
 } else {
  if(i37<0.0018880997085943818){
   if(i40<-0.0002644580090418458){
    if(i26<0.0010475068120285869){
     s1+=483.0;
    } else {
     s0+=180.0;
    }
   } else {
    if(i7<0.003940995782613754){
     s0+=3222.0;
     s1+=28.0;
    } else {
     s0+=139.0;
     s1+=336.0;
    }
   }
  } else {
   if(i31<0.000477524270536378){
    if(i14<0.17742326855659485){
     s0+=56.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.006866317242383957){
     s0+=134.0;
     s1+=257.0;
    } else {
     s0+=132.0;
     s1+=3481.0;
    }
   }
  }
 }
} else {
 if(i0<-7.332897803280503e-05){
  if(i48<-6.485547146439785e-06){
   s0+=229.0;
  } else {
   if(i2<-0.0004989206790924072){
    s0+=3.0;
   } else {
    if(i52<1.000835657119751){
     s0+=37.0;
     s1+=244.0;
    } else {
     s0+=5.0;
     s1+=12565.0;
    }
   }
  }
 } else {
  if(i32<1.0958912372589111){
   s1+=882.0;
  } else {
   if(i55<0.002274119760841131){
    if(i15<0.0002623132604639977){
     s0+=138.0;
     s1+=122.0;
    } else {
     s0+=1283.0;
     s1+=9.0;
    }
   } else {
    if(i50<0.024577561765909195){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=108.0;
    }
   }
  }
 }
}
if(i29<1.1153912544250488){
 if(i5<1.0038542747497559){
  if(i13<1.0115561485290527){
   if(i28<1.1162974834442139){
    if(i25<0.008194283582270145){
     s0+=23492.0;
     s1+=613.0;
    } else {
     s0+=6286.0;
     s1+=2400.0;
    }
   } else {
    if(i62<0.004442964214831591){
     s0+=76974.0;
     s1+=614.0;
    } else {
     s0+=2889.0;
     s1+=701.0;
    }
   }
  } else {
   if(i7<0.004634912125766277){
    if(i32<1.0886205434799194){
     s1+=5.0;
    } else {
     s0+=417.0;
     s1+=30.0;
    }
   } else {
    if(i52<0.9999659061431885){
     s0+=73.0;
    } else {
     s0+=2.0;
     s1+=466.0;
    }
   }
  }
 } else {
  if(i19<0.0019115805625915527){
   if(i30<0.002208066638559103){
    if(i15<0.00023811584105715156){
     s0+=150.0;
     s1+=1569.0;
    } else {
     s0+=3284.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.001290204469114542){
     s0+=133.0;
     s1+=5.0;
    } else {
     s0+=149.0;
     s1+=1668.0;
    }
   }
  } else {
   if(i15<0.0012734223855659366){
    s1+=3325.0;
   } else {
    s0+=58.0;
   }
  }
 }
} else {
 if(i2<3.74913215637207e-05){
  if(i30<0.0026128541212528944){
   if(i38<0.0021445283200591803){
    s0+=1286.0;
   } else {
    if(i51<-3.4517072435846785e-06){
     s0+=15.0;
     s1+=58.0;
    } else {
     s0+=107.0;
    }
   }
  } else {
   if(i0<-3.347876918269321e-05){
    if(i41<-8.568842531531118e-06){
     s0+=94.0;
     s1+=1414.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i18<0.002766068559139967){
     s0+=491.0;
     s1+=11.0;
    } else {
     s0+=181.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i25<0.007762568071484566){
   if(i10<1.0182385444641113){
    if(i28<1.2059742212295532){
     s0+=466.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i35<1.4667320251464844){
     s1+=277.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   }
  } else {
   if(i4<1.0020344257354736){
    if(i36<1.1869213581085205){
     s0+=18.0;
    } else {
     s1+=190.0;
    }
   } else {
    if(i7<0.0029270583763718605){
     s0+=31.0;
     s1+=66.0;
    } else {
     s0+=20.0;
     s1+=10625.0;
    }
   }
  }
 }
}
if(i10<1.0147175788879395){
 if(i2<6.872415542602539e-05){
  if(i58<0.08521527051925659){
   if(i3<0.00029343366622924805){
    if(i26<0.0008682036423124373){
     s0+=29356.0;
     s1+=2121.0;
    } else {
     s0+=71930.0;
     s1+=656.0;
    }
   } else {
    if(i49<1.503665953350719e-05){
     s0+=7209.0;
     s1+=550.0;
    } else {
     s0+=3182.0;
     s1+=2190.0;
    }
   }
  } else {
   if(i17<0.9607701301574707){
    if(i20<-0.000596463680267334){
     s0+=1841.0;
     s1+=123.0;
    } else {
     s0+=79.0;
     s1+=287.0;
    }
   } else {
    if(i13<0.973058819770813){
     s0+=271.0;
     s1+=78.0;
    } else {
     s0+=171.0;
     s1+=1226.0;
    }
   }
  }
 } else {
  if(i25<0.013897942379117012){
   if(i26<0.0010733027011156082){
    if(i2<7.18235969543457e-05){
     s0+=23.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=868.0;
    }
   } else {
    if(i35<1.176405668258667){
     s0+=1313.0;
    } else {
     s0+=8.0;
     s1+=142.0;
    }
   }
  } else {
   if(i14<0.040361613035202026){
    if(i1<0.002047598361968994){
     s0+=45.0;
     s1+=34.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i15<0.0018972276011481881){
     s0+=49.0;
     s1+=2665.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i25<0.006409072782844305){
  if(i19<0.002168893814086914){
   if(i33<0.0005142688751220703){
    if(i41<-1.514852738182526e-05){
     s0+=19.0;
     s1+=215.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i10<1.0245822668075562){
     s0+=524.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i5<1.0043790340423584){
    s0+=1.0;
   } else {
    s1+=586.0;
   }
  }
 } else {
  if(i28<1.6811659336090088){
   if(i15<0.0007054299348965287){
    if(i0<-3.199748243787326e-05){
     s0+=96.0;
     s1+=12490.0;
    } else {
     s0+=210.0;
     s1+=32.0;
    }
   } else {
    s0+=46.0;
   }
  } else {
   s0+=87.0;
  }
 }
}
if(i6<2.0325183868408203e-05){
 if(i29<1.1403393745422363){
  if(i12<1.0182816982269287){
   if(i26<0.0008838476496748626){
    if(i10<1.0067133903503418){
     s0+=30336.0;
     s1+=2464.0;
    } else {
     s0+=162.0;
     s1+=412.0;
    }
   } else {
    if(i57<0.07437072694301605){
     s0+=70073.0;
     s1+=400.0;
    } else {
     s0+=7412.0;
     s1+=513.0;
    }
   }
  } else {
   if(i3<0.0002689361572265625){
    if(i34<1.1351547241210938){
     s0+=302.0;
     s1+=7.0;
    } else {
     s0+=172.0;
     s1+=130.0;
    }
   } else {
    if(i33<0.0005651116371154785){
     s0+=34.0;
     s1+=299.0;
    } else {
     s0+=72.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i37<0.011395695619285107){
   if(i41<-9.513049008091912e-06){
    if(i45<5.3534211474470794e-05){
     s0+=13.0;
     s1+=162.0;
    } else {
     s0+=12.0;
    }
   } else {
    s0+=484.0;
   }
  } else {
   if(i14<0.0019797980785369873){
    if(i64<0.8306344747543335){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=445.0;
   }
  }
 }
} else {
 if(i17<1.0200743675231934){
  if(i67<0.0008465368300676346){
   if(i45<-8.745904779061675e-06){
    if(i53<1.2814998626708984e-05){
     s0+=49.0;
     s1+=828.0;
    } else {
     s0+=225.0;
     s1+=49.0;
    }
   } else {
    if(i33<0.00036975741386413574){
     s0+=507.0;
     s1+=980.0;
    } else {
     s0+=4908.0;
     s1+=605.0;
    }
   }
  } else {
   if(i23<0.04270705580711365){
    if(i1<0.0017076730728149414){
     s0+=683.0;
     s1+=167.0;
    } else {
     s0+=16.0;
     s1+=98.0;
    }
   } else {
    if(i0<-7.288545020855963e-05){
     s0+=148.0;
     s1+=3483.0;
    } else {
     s0+=340.0;
     s1+=711.0;
    }
   }
  }
 } else {
  if(i16<0.155664324760437){
   if(i8<1.0055676698684692){
    if(i36<1.094531774520874){
     s0+=11.0;
     s1+=14.0;
    } else {
     s0+=105.0;
     s1+=4.0;
    }
   } else {
    if(i28<1.1180615425109863){
     s1+=1007.0;
    } else {
     s0+=237.0;
     s1+=693.0;
    }
   }
  } else {
   if(i0<-2.8031859983457252e-05){
    if(i34<1.1279253959655762){
     s0+=11.0;
    } else {
     s0+=11.0;
     s1+=10979.0;
    }
   } else {
    if(i34<1.1764509677886963){
     s0+=31.0;
    } else {
     s1+=50.0;
    }
   }
  }
 }
}
if(i4<1.0026252269744873){
 if(i10<1.010909080505371){
  if(i23<0.21778342127799988){
   if(i25<0.006826424039900303){
    if(i61<-0.0010310113430023193){
     s0+=4002.0;
     s1+=243.0;
    } else {
     s0+=64882.0;
     s1+=328.0;
    }
   } else {
    if(i52<0.9999550580978394){
     s0+=23427.0;
     s1+=186.0;
    } else {
     s0+=17087.0;
     s1+=3332.0;
    }
   }
  } else {
   if(i40<-0.0002727107494138181){
    if(i37<0.004423252306878567){
     s0+=32.0;
     s1+=15.0;
    } else {
     s0+=8.0;
     s1+=386.0;
    }
   } else {
    if(i30<0.00366373173892498){
     s0+=75.0;
     s1+=8.0;
    } else {
     s0+=36.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i31<0.0007390842074528337){
   if(i45<1.0810294043039903e-05){
    s0+=424.0;
   } else {
    if(i36<1.108633279800415){
     s0+=6.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i30<0.0012764593120664358){
    s1+=616.0;
   } else {
    if(i36<1.142665147781372){
     s0+=335.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=354.0;
    }
   }
  }
 }
} else {
 if(i36<1.1698036193847656){
  if(i49<-2.7483860321808606e-05){
   if(i6<0.0002384185791015625){
    if(i8<1.0157411098480225){
     s0+=57.0;
     s1+=616.0;
    } else {
     s1+=1859.0;
    }
   } else {
    s0+=41.0;
   }
  } else {
   if(i33<0.0005254745483398438){
    if(i10<1.0055420398712158){
     s0+=455.0;
     s1+=522.0;
    } else {
     s0+=111.0;
     s1+=1608.0;
    }
   } else {
    if(i30<0.0024972695391625166){
     s0+=3655.0;
     s1+=10.0;
    } else {
     s0+=1441.0;
     s1+=2257.0;
    }
   }
  }
 } else {
  if(i8<0.9707497954368591){
   if(i21<1.0152359008789062){
    if(i55<0.010922367684543133){
     s0+=247.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=30.0;
    }
   } else {
    if(i0<-9.698115900391713e-05){
     s0+=3.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i14<0.009857475757598877){
    if(i35<1.4247384071350098){
     s0+=44.0;
     s1+=10.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i29<1.0531971454620361){
     s0+=40.0;
     s1+=193.0;
    } else {
     s0+=9.0;
     s1+=11633.0;
    }
   }
  }
 }
}
if(i9<1.0174100399017334){
 if(i19<0.00136488676071167){
  if(i22<1.1546916961669922){
   if(i65<0.000238309265114367){
    if(i25<0.00677994079887867){
     s0+=68976.0;
     s1+=542.0;
    } else {
     s0+=22263.0;
     s1+=2185.0;
    }
   } else {
    if(i0<-9.84099242486991e-05){
     s0+=647.0;
     s1+=965.0;
    } else {
     s0+=21694.0;
     s1+=2582.0;
    }
   }
  } else {
   if(i31<0.0010399185121059418){
    if(i21<1.0088565349578857){
     s0+=425.0;
     s1+=4.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i34<1.1704325675964355){
     s0+=43.0;
    } else {
     s0+=155.0;
     s1+=1658.0;
    }
   }
  }
 } else {
  if(i32<1.144989013671875){
   if(i38<0.0012114094570279121){
    if(i3<0.00010406970977783203){
     s0+=27.0;
    } else {
     s1+=883.0;
    }
   } else {
    if(i28<1.1180615425109863){
     s1+=47.0;
    } else {
     s0+=676.0;
    }
   }
  } else {
   if(i26<0.0025824359618127346){
    if(i33<0.00018805265426635742){
     s0+=102.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=1189.0;
   }
  }
 }
} else {
 if(i0<-6.375725206453353e-05){
  if(i0<-8.836502820486203e-05){
   if(i72<6.668858532066224e-06){
    if(i48<-7.815126082277857e-06){
     s0+=28.0;
    } else {
     s1+=12347.0;
    }
   } else {
    s0+=24.0;
   }
  } else {
   if(i28<1.4586446285247803){
    if(i61<0.0016168057918548584){
     s0+=62.0;
     s1+=91.0;
    } else {
     s0+=31.0;
     s1+=820.0;
    }
   } else {
    if(i57<0.2715567648410797){
     s0+=66.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<0.0018711425364017487){
   if(i63<-5.416120075096842e-06){
    if(i48<-5.095697360957274e-06){
     s0+=10.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i45<1.1033431292162277e-05){
     s0+=769.0;
    } else {
     s0+=67.0;
     s1+=12.0;
    }
   }
  } else {
   if(i28<1.2596347332000732){
    if(i33<0.0007492005825042725){
     s0+=36.0;
     s1+=815.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i68<1.0032079219818115){
     s0+=38.0;
     s1+=117.0;
    } else {
     s0+=281.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i27<1.0083215236663818){
 if(i7<0.008027780801057816){
  if(i6<1.8298625946044922e-05){
   if(i26<0.0008652142714709044){
    if(i31<0.0007247846806421876){
     s0+=28406.0;
     s1+=359.0;
    } else {
     s0+=1858.0;
     s1+=2357.0;
    }
   } else {
    if(i22<1.122455358505249){
     s0+=72272.0;
     s1+=413.0;
    } else {
     s0+=2183.0;
     s1+=233.0;
    }
   }
  } else {
   if(i66<0.0009423494338989258){
    if(i40<-0.00020044385746587068){
     s0+=431.0;
     s1+=309.0;
    } else {
     s0+=4551.0;
     s1+=517.0;
    }
   } else {
    if(i26<0.0010254897642880678){
     s1+=319.0;
    } else {
     s0+=604.0;
     s1+=198.0;
    }
   }
  }
 } else {
  if(i2<-1.901388168334961e-05){
   if(i0<-9.044789476320148e-05){
    if(i64<0.9409620761871338){
     s0+=507.0;
     s1+=171.0;
    } else {
     s0+=11.0;
     s1+=272.0;
    }
   } else {
    if(i5<0.9958915710449219){
     s0+=3008.0;
     s1+=128.0;
    } else {
     s0+=475.0;
     s1+=154.0;
    }
   }
  } else {
   if(i10<0.9590561389923096){
    if(i7<0.021601524204015732){
     s0+=247.0;
     s1+=85.0;
    } else {
     s0+=62.0;
     s1+=210.0;
    }
   } else {
    if(i39<0.028240764513611794){
     s0+=109.0;
     s1+=421.0;
    } else {
     s0+=92.0;
     s1+=4294.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007025679806247354){
  if(i41<-1.6677777239237912e-05){
   if(i48<-6.3291381593444385e-06){
    s0+=25.0;
   } else {
    if(i13<1.015173077583313){
     s0+=169.0;
     s1+=2385.0;
    } else {
     s0+=13.0;
     s1+=11351.0;
    }
   }
  } else {
   if(i26<0.0007806759094819427){
    s1+=24.0;
   } else {
    if(i19<-2.6404857635498047e-05){
     s1+=5.0;
    } else {
     s0+=235.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i16<0.4055323600769043){
   s0+=1391.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i42<0.17281270027160645){
 if(i5<1.0038774013519287){
  if(i7<0.0036609438247978687){
   if(i7<0.002392381662502885){
    if(i19<-0.00038483738899230957){
     s0+=18269.0;
     s1+=304.0;
    } else {
     s0+=54721.0;
     s1+=101.0;
    }
   } else {
    if(i26<0.0005707714008167386){
     s0+=3978.0;
     s1+=522.0;
    } else {
     s0+=10038.0;
     s1+=85.0;
    }
   }
  } else {
   if(i4<1.0000340938568115){
    if(i28<1.1164028644561768){
     s0+=2748.0;
     s1+=302.0;
    } else {
     s0+=15804.0;
     s1+=66.0;
    }
   } else {
    if(i19<-0.0013823509216308594){
     s0+=4866.0;
     s1+=1114.0;
    } else {
     s0+=772.0;
     s1+=2988.0;
    }
   }
  }
 } else {
  if(i37<0.0019332139054313302){
   if(i37<0.0011574161471799016){
    if(i26<0.00024061021395027637){
     s0+=590.0;
    } else {
     s0+=169.0;
     s1+=2422.0;
    }
   } else {
    if(i33<0.00032019615173339844){
     s0+=242.0;
     s1+=207.0;
    } else {
     s0+=2993.0;
     s1+=13.0;
    }
   }
  } else {
   if(i23<0.08191031217575073){
    if(i74<-0.0016294121742248535){
     s0+=41.0;
     s1+=380.0;
    } else {
     s0+=89.0;
     s1+=29.0;
    }
   } else {
    if(i48<-7.167695912357885e-06){
     s0+=6.0;
    } else {
     s0+=64.0;
     s1+=7060.0;
    }
   }
  }
 }
} else {
 if(i7<0.005066289566457272){
  if(i1<0.0020837783813476562){
   if(i66<0.0011862218379974365){
    if(i44<1.0007587671279907){
     s0+=523.0;
    } else {
     s0+=290.0;
     s1+=18.0;
    }
   } else {
    if(i5<1.0031514167785645){
     s0+=162.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=47.0;
    }
   }
  } else {
   s1+=101.0;
  }
 } else {
  if(i7<0.006744894664734602){
   if(i2<-3.135204315185547e-05){
    if(i59<0.0007582649122923613){
     s1+=2.0;
    } else {
     s0+=61.0;
     s1+=3.0;
    }
   } else {
    if(i7<0.0067368256859481335){
     s0+=6.0;
     s1+=169.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i51<-2.2068377347750356e-06){
    if(i15<0.0022003042977303267){
     s0+=6.0;
     s1+=8467.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
}
if(i7<0.0075304340571165085){
 if(i8<1.012699842453003){
  if(i31<0.000678790733218193){
   if(i27<1.0103609561920166){
    if(i41<-1.8944600014947355e-05){
     s0+=282.0;
     s1+=87.0;
    } else {
     s0+=78454.0;
     s1+=356.0;
    }
   } else {
    if(i1<0.0014534592628479004){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=221.0;
    }
   }
  } else {
   if(i38<0.0009922548197209835){
    if(i25<0.008096202276647091){
     s0+=3778.0;
     s1+=1107.0;
    } else {
     s0+=520.0;
     s1+=2478.0;
    }
   } else {
    if(i43<1.0011825561523438){
     s0+=18791.0;
     s1+=154.0;
    } else {
     s0+=8841.0;
     s1+=858.0;
    }
   }
  }
 } else {
  if(i18<0.0007877028547227383){
   if(i0<-7.508953422075137e-05){
    if(i65<-0.00013712351210415363){
     s0+=7.0;
     s1+=7.0;
    } else {
     s1+=103.0;
    }
   } else {
    if(i34<1.0861752033233643){
     s1+=20.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i1<0.0020924806594848633){
    if(i33<0.0007320046424865723){
     s0+=4.0;
     s1+=604.0;
    } else {
     s0+=239.0;
    }
   } else {
    if(i44<0.9985960721969604){
     s0+=2.0;
    } else {
     s1+=1317.0;
    }
   }
  }
 }
} else {
 if(i42<0.046181172132492065){
  if(i4<1.00302255153656){
   if(i17<1.008605718612671){
    if(i28<1.1207046508789062){
     s0+=17.0;
     s1+=87.0;
    } else {
     s0+=3556.0;
     s1+=122.0;
    }
   } else {
    if(i68<0.9989784955978394){
     s0+=13.0;
     s1+=5.0;
    } else {
     s1+=204.0;
    }
   }
  } else {
   if(i61<-0.0049121081829071045){
    if(i16<0.0384058952331543){
     s0+=493.0;
     s1+=141.0;
    } else {
     s0+=49.0;
     s1+=190.0;
    }
   } else {
    if(i17<0.9826028347015381){
     s0+=20.0;
     s1+=87.0;
    } else {
     s0+=2.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i4<1.0008349418640137){
   if(i14<0.2075493335723877){
    if(i63<3.011299895661068e-06){
     s1+=37.0;
    } else {
     s0+=746.0;
     s1+=116.0;
    }
   } else {
    if(i36<1.109195590019226){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=295.0;
    }
   }
  } else {
   if(i22<1.052901268005371){
    if(i77<0.012131184339523315){
     s0+=93.0;
     s1+=137.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   } else {
    if(i27<0.9886665940284729){
     s0+=193.0;
     s1+=303.0;
    } else {
     s0+=102.0;
     s1+=14993.0;
    }
   }
  }
 }
}
if(i5<1.0038650035858154){
 if(i16<0.205316424369812){
  if(i7<0.0037338933907449245){
   if(i11<0.9960800409317017){
    if(i1<-0.0006452500820159912){
     s0+=10150.0;
     s1+=47.0;
    } else {
     s0+=9074.0;
     s1+=625.0;
    }
   } else {
    if(i55<0.0020639195572584867){
     s0+=67932.0;
     s1+=380.0;
    } else {
     s0+=1120.0;
     s1+=86.0;
    }
   }
  } else {
   if(i35<1.1161681413650513){
    if(i52<0.999780535697937){
     s0+=3599.0;
     s1+=24.0;
    } else {
     s0+=110.0;
     s1+=2548.0;
    }
   } else {
    if(i52<1.0013093948364258){
     s0+=14955.0;
     s1+=248.0;
    } else {
     s0+=4831.0;
     s1+=1610.0;
    }
   }
  }
 } else {
  if(i51<-2.9654306672455277e-06){
   if(i37<0.0021695690229535103){
    if(i9<1.0180549621582031){
     s0+=29.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i41<-8.755558155826293e-06){
     s0+=41.0;
     s1+=1172.0;
    } else {
     s0+=14.0;
     s1+=4.0;
    }
   }
  } else {
   if(i2<-0.00016936659812927246){
    s1+=1.0;
   } else {
    if(i31<0.0011740283807739615){
     s0+=163.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023416103795170784){
  if(i53<1.1980533599853516e-05){
   if(i54<0.0006898022256791592){
    if(i32<1.0520559549331665){
     s0+=231.0;
    } else {
     s0+=35.0;
     s1+=2500.0;
    }
   } else {
    if(i38<0.0009879607241600752){
     s1+=136.0;
    } else {
     s0+=659.0;
     s1+=45.0;
    }
   }
  } else {
   if(i26<0.0009368126047775149){
    if(i35<1.0610902309417725){
     s0+=332.0;
    } else {
     s1+=35.0;
    }
   } else {
    s0+=2765.0;
   }
  }
 } else {
  if(i27<1.0088286399841309){
   if(i55<0.0005575213581323624){
    if(i0<-5.582251469604671e-05){
     s1+=3.0;
    } else {
     s0+=84.0;
    }
   } else {
    if(i42<0.08555057644844055){
     s0+=123.0;
     s1+=504.0;
    } else {
     s0+=43.0;
     s1+=2872.0;
    }
   }
  } else {
   if(i7<0.001129301032051444){
    if(i27<1.0144298076629639){
     s0+=10.0;
    } else {
     s1+=20.0;
    }
   } else {
    s1+=11689.0;
   }
  }
 }
}
if(i0<-9.340386895928532e-05){
 if(i8<0.9737088680267334){
  if(i39<0.1426173448562622){
   if(i56<-0.0016025763470679522){
    if(i23<0.08740004897117615){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i40<0.0001662583090364933){
     s0+=614.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   }
  } else {
   if(i22<1.0682146549224854){
    if(i32<1.3333563804626465){
     s1+=1.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i5<1.0023910999298096){
     s0+=9.0;
     s1+=129.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i44<0.998097836971283){
   s0+=186.0;
  } else {
   if(i15<0.0007051074644550681){
    if(i60<0.8950342535972595){
     s0+=27.0;
     s1+=16.0;
    } else {
     s0+=182.0;
     s1+=15773.0;
    }
   } else {
    s0+=24.0;
   }
  }
 }
} else {
 if(i18<0.001732213655486703){
  if(i63<-5.691860224033007e-06){
   if(i68<1.0026633739471436){
    s1+=339.0;
   } else {
    s0+=111.0;
   }
  } else {
   if(i44<1.000199317932129){
    if(i67<0.0007523081148974597){
     s0+=42833.0;
     s1+=79.0;
    } else {
     s0+=6896.0;
     s1+=115.0;
    }
   } else {
    if(i18<0.0012767266016453505){
     s0+=38329.0;
     s1+=307.0;
    } else {
     s0+=3777.0;
     s1+=470.0;
    }
   }
  }
 } else {
  if(i19<-0.0013709962368011475){
   if(i16<0.183614581823349){
    if(i43<1.0112621784210205){
     s0+=15973.0;
     s1+=548.0;
    } else {
     s0+=207.0;
     s1+=186.0;
    }
   } else {
    if(i0<-3.732189361471683e-05){
     s0+=17.0;
     s1+=246.0;
    } else {
     s0+=167.0;
     s1+=91.0;
    }
   }
  } else {
   if(i44<0.9995850324630737){
    if(i60<1.001786231994629){
     s0+=7.0;
     s1+=11.0;
    } else {
     s0+=4019.0;
     s1+=11.0;
    }
   } else {
    if(i15<0.0003425075556151569){
     s0+=1150.0;
     s1+=5987.0;
    } else {
     s0+=1783.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i3<0.00048273801803588867){
  if(i42<0.22627761960029602){
   if(i25<0.006645648740231991){
    if(i18<0.0009012044174596667){
     s0+=53953.0;
     s1+=113.0;
    } else {
     s0+=12728.0;
     s1+=407.0;
    }
   } else {
    if(i1<-0.00047194957733154297){
     s0+=37015.0;
     s1+=685.0;
    } else {
     s0+=4271.0;
     s1+=2484.0;
    }
   }
  } else {
   if(i49<8.055123907979578e-05){
    if(i21<1.0021452903747559){
     s0+=60.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i14<0.23054799437522888){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=257.0;
    }
   }
  }
 } else {
  if(i28<1.1935834884643555){
   if(i54<0.0007051887223497033){
    if(i10<1.0085136890411377){
     s0+=1950.0;
     s1+=587.0;
    } else {
     s0+=91.0;
     s1+=814.0;
    }
   } else {
    if(i38<0.0009027426713146269){
     s1+=55.0;
    } else {
     s0+=3142.0;
     s1+=12.0;
    }
   }
  } else {
   if(i23<0.07703694701194763){
    if(i29<1.0844184160232544){
     s0+=1470.0;
     s1+=336.0;
    } else {
     s0+=62.0;
     s1+=239.0;
    }
   } else {
    if(i27<1.0012668371200562){
     s0+=523.0;
     s1+=1264.0;
    } else {
     s0+=63.0;
     s1+=2418.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013816568534821272){
  if(i19<0.0016878843307495117){
   if(i29<1.0510600805282593){
    s1+=45.0;
   } else {
    if(i37<0.0007337792776525021){
     s1+=4.0;
    } else {
     s0+=609.0;
     s1+=15.0;
    }
   }
  } else {
   if(i1<0.0019237995147705078){
    s0+=11.0;
   } else {
    s1+=438.0;
   }
  }
 } else {
  if(i0<-3.178706901962869e-05){
   if(i16<0.15839466452598572){
    if(i10<1.017383098602295){
     s0+=326.0;
     s1+=854.0;
    } else {
     s0+=68.0;
     s1+=1922.0;
    }
   } else {
    if(i26<0.002180464332923293){
     s0+=25.0;
    } else {
     s0+=14.0;
     s1+=11207.0;
    }
   }
  } else {
   if(i66<0.0016785264015197754){
    if(i52<1.0036277770996094){
     s0+=4.0;
     s1+=87.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i27<1.0003323554992676){
     s0+=148.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i6<2.2351741790771484e-05){
 if(i23<0.23054441809654236){
  if(i39<0.012013581581413746){
   if(i55<0.000531829777173698){
    if(i61<-0.0010923445224761963){
     s0+=119.0;
     s1+=154.0;
    } else {
     s0+=28297.0;
     s1+=553.0;
    }
   } else {
    if(i0<-0.00011372605513315648){
     s0+=13.0;
     s1+=12.0;
    } else {
     s0+=39982.0;
     s1+=38.0;
    }
   }
  } else {
   if(i43<0.9995105266571045){
    if(i18<0.005022207275032997){
     s0+=22272.0;
     s1+=258.0;
    } else {
     s0+=216.0;
     s1+=48.0;
    }
   } else {
    if(i30<0.001074239145964384){
     s0+=1672.0;
     s1+=2114.0;
    } else {
     s0+=17553.0;
     s1+=1292.0;
    }
   }
  }
 } else {
  if(i30<0.0026071323081851006){
   if(i33<0.00014400482177734375){
    s0+=48.0;
   } else {
    if(i13<0.9929256439208984){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i7<0.0048084622249007225){
    if(i20<-0.00047072768211364746){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.0023628936614841223){
     s0+=4.0;
     s1+=50.0;
    } else {
     s1+=559.0;
    }
   }
  }
 }
} else {
 if(i7<0.004266594536602497){
  if(i19<0.0013142824172973633){
   if(i13<1.0216343402862549){
    if(i33<0.00047004222869873047){
     s0+=632.0;
     s1+=139.0;
    } else {
     s0+=3712.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.0007242362480610609){
     s0+=12.0;
     s1+=39.0;
    } else {
     s0+=33.0;
     s1+=1.0;
    }
   }
  } else {
   if(i33<0.0005137622356414795){
    if(i48<-3.801744696829701e-06){
     s0+=17.0;
     s1+=2.0;
    } else {
     s1+=749.0;
    }
   } else {
    if(i21<1.011914849281311){
     s0+=616.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i15<0.0007079356582835317){
   if(i14<0.04509344696998596){
    if(i35<1.1488957405090332){
     s1+=102.0;
    } else {
     s0+=676.0;
     s1+=260.0;
    }
   } else {
    if(i2<4.231929779052734e-06){
     s0+=423.0;
     s1+=339.0;
    } else {
     s0+=320.0;
     s1+=16962.0;
    }
   }
  } else {
   s0+=277.0;
  }
 }
}
if(i14<0.20030072331428528){
 if(i5<1.003852128982544){
  if(i28<1.1162974834442139){
   if(i33<6.514787673950195e-05){
    if(i10<0.9956967830657959){
     s0+=5590.0;
     s1+=389.0;
    } else {
     s0+=17244.0;
     s1+=208.0;
    }
   } else {
    if(i31<0.0006532506085932255){
     s0+=4491.0;
     s1+=2.0;
    } else {
     s0+=2240.0;
     s1+=2830.0;
    }
   }
  } else {
   if(i0<-8.20848363218829e-05){
    if(i40<-0.00040700408862903714){
     s0+=195.0;
     s1+=605.0;
    } else {
     s0+=1109.0;
     s1+=167.0;
    }
   } else {
    if(i62<0.004070683382451534){
     s0+=77692.0;
     s1+=711.0;
    } else {
     s0+=2710.0;
     s1+=471.0;
    }
   }
  }
 } else {
  if(i8<1.0139362812042236){
   if(i26<0.00225556967779994){
    if(i54<0.0006661135703325272){
     s0+=674.0;
     s1+=1446.0;
    } else {
     s0+=3151.0;
     s1+=96.0;
    }
   } else {
    if(i46<0.0009043125901371241){
     s0+=135.0;
     s1+=5.0;
    } else {
     s0+=186.0;
     s1+=1667.0;
    }
   }
  } else {
   if(i8<1.0162638425827026){
    if(i33<0.001221299171447754){
     s0+=15.0;
     s1+=595.0;
    } else {
     s0+=117.0;
     s1+=8.0;
    }
   } else {
    if(i19<0.0016135573387145996){
     s0+=1.0;
     s1+=87.0;
    } else {
     s1+=2457.0;
    }
   }
  }
 }
} else {
 if(i0<-4.2990166548406705e-05){
  if(i35<1.1634010076522827){
   s0+=19.0;
  } else {
   if(i0<-6.444031896535307e-05){
    if(i68<1.0100054740905762){
     s0+=1.0;
     s1+=12219.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   } else {
    if(i43<0.9992297887802124){
     s0+=19.0;
    } else {
     s0+=14.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i57<0.09253375977277756){
   if(i14<0.2605881690979004){
    if(i11<1.0104219913482666){
     s0+=590.0;
     s1+=9.0;
    } else {
     s0+=71.0;
     s1+=28.0;
    }
   } else {
    if(i15<0.0001604339777259156){
     s0+=28.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=53.0;
    }
   }
  } else {
   if(i27<0.9985148310661316){
    if(i7<0.006770792417228222){
     s0+=83.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   } else {
    s1+=95.0;
   }
  }
 }
}
if(i6<2.4378299713134766e-05){
 if(i24<1.0215818881988525){
  if(i16<0.23436102271080017){
   if(i7<0.003611193969845772){
    if(i13<0.9957935214042664){
     s0+=18193.0;
     s1+=615.0;
    } else {
     s0+=68117.0;
     s1+=383.0;
    }
   } else {
    if(i13<1.005864143371582){
     s0+=22371.0;
     s1+=2514.0;
    } else {
     s0+=910.0;
     s1+=879.0;
    }
   }
  } else {
   if(i25<0.03282471001148224){
    if(i30<0.006120706908404827){
     s0+=17.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=228.0;
   }
  }
 } else {
  if(i31<0.0006507005309686065){
   if(i4<1.0025510787963867){
    if(i0<-2.8743390430463478e-05){
     s0+=155.0;
     s1+=10.0;
    } else {
     s0+=457.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.0004967451095581055){
     s1+=12.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i33<0.0004280209541320801){
    if(i1<-0.0006252527236938477){
     s0+=86.0;
     s1+=73.0;
    } else {
     s0+=28.0;
     s1+=919.0;
    }
   } else {
    if(i46<0.006892752833664417){
     s0+=193.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i23<0.16841062903404236){
  if(i0<-4.554887709673494e-05){
   if(i53<1.7940998077392578e-05){
    if(i15<0.0006715639610774815){
     s0+=1010.0;
     s1+=4607.0;
    } else {
     s0+=379.0;
     s1+=2.0;
    }
   } else {
    if(i38<0.003761657979339361){
     s0+=759.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=167.0;
    }
   }
  } else {
   if(i49<-2.108101762132719e-05){
    if(i26<0.001069065649062395){
     s1+=291.0;
    } else {
     s0+=68.0;
     s1+=6.0;
    }
   } else {
    if(i7<0.004386538174003363){
     s0+=3052.0;
     s1+=68.0;
    } else {
     s0+=399.0;
     s1+=503.0;
    }
   }
  }
 } else {
  if(i34<1.170027494430542){
   if(i11<1.0153965950012207){
    if(i25<0.01698414981365204){
     s0+=216.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=117.0;
    }
   } else {
    if(i19<-0.0025397539138793945){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=414.0;
    }
   }
  } else {
   if(i20<-0.0006018877029418945){
    if(i15<0.00010188769374508411){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   } else {
    if(i19<-0.002587258815765381){
     s0+=12.0;
     s1+=254.0;
    } else {
     s0+=7.0;
     s1+=12169.0;
    }
   }
  }
 }
}
if(i0<-8.8370761659462e-05){
 if(i42<0.017878979444503784){
  if(i1<-3.6835670471191406e-05){
   if(i25<0.05430067330598831){
    if(i77<-0.10988050699234009){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=553.0;
     s1+=8.0;
    }
   } else {
    if(i68<1.0054147243499756){
     s0+=30.0;
     s1+=19.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i8<0.9756708145141602){
    if(i21<1.0144071578979492){
     s0+=114.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i15<0.001843680627644062){
     s0+=41.0;
     s1+=301.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i48<-6.389312147803139e-06){
   if(i36<1.3088769912719727){
    s0+=312.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i13<0.9224255084991455){
    if(i30<0.014961407519876957){
     s0+=89.0;
     s1+=13.0;
    } else {
     s0+=15.0;
     s1+=39.0;
    }
   } else {
    if(i44<0.9980037212371826){
     s0+=17.0;
    } else {
     s0+=123.0;
     s1+=15731.0;
    }
   }
  }
 }
} else {
 if(i6<1.8537044525146484e-05){
  if(i3<0.00029343366622924805){
   if(i7<0.0028421850875020027){
    if(i9<0.9945406913757324){
     s0+=13087.0;
     s1+=372.0;
    } else {
     s0+=61642.0;
     s1+=248.0;
    }
   } else {
    if(i43<0.9994980692863464){
     s0+=21377.0;
     s1+=236.0;
    } else {
     s0+=6999.0;
     s1+=1968.0;
    }
   }
  } else {
   if(i18<0.0017972530331462622){
    if(i77<0.020492911338806152){
     s0+=3137.0;
     s1+=23.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i26<0.0002467879094183445){
     s0+=636.0;
    } else {
     s0+=728.0;
     s1+=1049.0;
    }
   }
  }
 } else {
  if(i15<0.00030998565489426255){
   if(i38<0.0010216932278126478){
    if(i63<1.8479131540516391e-06){
     s0+=11.0;
     s1+=2086.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i2<5.21540641784668e-05){
     s0+=1454.0;
     s1+=658.0;
    } else {
     s0+=112.0;
     s1+=1183.0;
    }
   }
  } else {
   if(i26<0.002272105310112238){
    s0+=4958.0;
   } else {
    if(i23<0.11290651559829712){
     s0+=792.0;
     s1+=124.0;
    } else {
     s0+=126.0;
     s1+=393.0;
    }
   }
  }
 }
}
if(i1<0.0009777545928955078){
 if(i42<0.19092756509780884){
  if(i31<0.0007353855762630701){
   if(i0<-8.054320642258972e-05){
    if(i24<1.0234853029251099){
     s0+=26.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   } else {
    if(i37<0.0018416980747133493){
     s0+=75479.0;
     s1+=354.0;
    } else {
     s0+=6053.0;
     s1+=212.0;
    }
   }
  } else {
   if(i5<0.9984375238418579){
    if(i35<1.0912797451019287){
     s0+=697.0;
     s1+=278.0;
    } else {
     s0+=22950.0;
     s1+=454.0;
    }
   } else {
    if(i58<0.02050011046230793){
     s0+=7040.0;
     s1+=1962.0;
    } else {
     s0+=1725.0;
     s1+=3214.0;
    }
   }
  }
 } else {
  if(i41<-8.814176908344962e-06){
   if(i7<0.005653864704072475){
    if(i38<0.004057435784488916){
     s0+=44.0;
     s1+=36.0;
    } else {
     s0+=59.0;
     s1+=1.0;
    }
   } else {
    if(i56<-0.0005547840264625847){
     s0+=6.0;
     s1+=1339.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  } else {
   if(i17<0.918944239616394){
    s1+=4.0;
   } else {
    if(i36<1.0967798233032227){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=247.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i8<1.0144059658050537){
  if(i30<0.0024084369651973248){
   if(i46<0.001057949149981141){
    if(i50<0.010326148942112923){
     s0+=52.0;
     s1+=220.0;
    } else {
     s0+=17.0;
     s1+=1032.0;
    }
   } else {
    if(i28<1.0986645221710205){
     s1+=46.0;
    } else {
     s0+=1807.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<1.0043529272079468){
    if(i16<0.0346963107585907){
     s0+=38.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=103.0;
    }
   } else {
    if(i42<0.08555057644844055){
     s0+=55.0;
     s1+=532.0;
    } else {
     s0+=9.0;
     s1+=2263.0;
    }
   }
  }
 } else {
  if(i36<1.1119403839111328){
   if(i26<0.0011384331155568361){
    s1+=996.0;
   } else {
    if(i37<0.0019060962367802858){
     s0+=85.0;
    } else {
     s1+=94.0;
    }
   }
  } else {
   s1+=11218.0;
  }
 }
}
if(i5<1.00374174118042){
 if(i54<0.010928666219115257){
  if(i7<0.003652123734354973){
   if(i46<0.0005568849155679345){
    if(i11<0.9960447549819946){
     s0+=2613.0;
     s1+=585.0;
    } else {
     s0+=26270.0;
     s1+=296.0;
    }
   } else {
    if(i52<1.0008000135421753){
     s0+=39559.0;
     s1+=2.0;
    } else {
     s0+=19007.0;
     s1+=250.0;
    }
   }
  } else {
   if(i1<-0.0003883242607116699){
    if(i52<1.0036587715148926){
     s0+=21118.0;
     s1+=659.0;
    } else {
     s0+=307.0;
     s1+=156.0;
    }
   } else {
    if(i52<1.000042200088501){
     s0+=1242.0;
     s1+=46.0;
    } else {
     s0+=1094.0;
     s1+=3568.0;
    }
   }
  }
 } else {
  if(i56<-0.00023432850139215589){
   if(i45<1.732274904497899e-05){
    if(i7<0.007080048322677612){
     s0+=164.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i40<8.026999421417713e-05){
     s0+=16.0;
     s1+=874.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i16<0.09241440892219543){
    if(i25<0.056413087993860245){
     s0+=495.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=22.0;
    }
   } else {
    if(i15<0.0001338873989880085){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i7<0.004063720814883709){
  if(i5<1.0109546184539795){
   if(i26<0.0006850683130323887){
    if(i49<-1.2923312169732526e-05){
     s1+=539.0;
    } else {
     s0+=674.0;
     s1+=5.0;
    }
   } else {
    if(i61<0.004628181457519531){
     s0+=3396.0;
     s1+=1.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   s1+=451.0;
  }
 } else {
  if(i4<1.0019789934158325){
   if(i15<0.0011341864010319114){
    s1+=104.0;
   } else {
    s0+=95.0;
   }
  } else {
   if(i13<1.0152451992034912){
    if(i30<0.0026823938824236393){
     s0+=210.0;
     s1+=972.0;
    } else {
     s0+=103.0;
     s1+=2908.0;
    }
   } else {
    if(i7<0.004135680850595236){
     s0+=2.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=12846.0;
    }
   }
  }
 }
}
if(i5<1.0038650035858154){
 if(i16<0.2006644308567047){
  if(i52<1.0002851486206055){
   if(i33<7.361173629760742e-05){
    if(i18<0.006462917663156986){
     s0+=60971.0;
     s1+=408.0;
    } else {
     s0+=37.0;
     s1+=33.0;
    }
   } else {
    if(i26<0.000897372025065124){
     s0+=1645.0;
     s1+=497.0;
    } else {
     s0+=3383.0;
    }
   }
  } else {
   if(i10<1.009775161743164){
    if(i25<0.0078061483800411224){
     s0+=31608.0;
     s1+=329.0;
    } else {
     s0+=13751.0;
     s1+=3503.0;
    }
   } else {
    if(i68<1.0030531883239746){
     s0+=342.0;
     s1+=550.0;
    } else {
     s0+=419.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i0<-4.575638013193384e-05){
   if(i70<0.11384052038192749){
    if(i7<0.004698175936937332){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=1013.0;
    }
   } else {
    if(i7<0.004573746584355831){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   }
  } else {
   if(i7<0.007549887057393789){
    if(i20<-0.0004801750183105469){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=293.0;
     s1+=5.0;
    }
   } else {
    if(i0<-4.419478136696853e-05){
     s0+=2.0;
    } else {
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i34<1.1699821949005127){
  if(i7<0.003930078353732824){
   if(i49<-2.5931345589924604e-05){
    if(i34<1.0953161716461182){
     s0+=2.0;
     s1+=445.0;
    } else {
     s0+=118.0;
     s1+=35.0;
    }
   } else {
    if(i33<0.0004935264587402344){
     s0+=281.0;
     s1+=193.0;
    } else {
     s0+=3397.0;
    }
   }
  } else {
   if(i59<0.0005549228517338634){
    if(i33<0.0010091960430145264){
     s0+=8.0;
     s1+=2208.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i26<0.00225556967779994){
     s0+=323.0;
     s1+=86.0;
    } else {
     s0+=28.0;
     s1+=699.0;
    }
   }
  }
 } else {
  if(i19<-0.0012282729148864746){
   if(i16<0.092896968126297){
    if(i75<0.01077820174396038){
     s0+=34.0;
     s1+=8.0;
    } else {
     s0+=27.0;
     s1+=127.0;
    }
   } else {
    if(i36<1.4927592277526855){
     s0+=10.0;
     s1+=573.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i27<1.006718635559082){
    if(i35<1.4731788635253906){
     s1+=1420.0;
    } else {
     s0+=32.0;
     s1+=208.0;
    }
   } else {
    s1+=11556.0;
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i42<0.19696500897407532){
  if(i22<1.1402404308319092){
   if(i12<1.0181355476379395){
    if(i25<0.006775497458875179){
     s0+=70409.0;
     s1+=641.0;
    } else {
     s0+=41794.0;
     s1+=4353.0;
    }
   } else {
    if(i35<1.0905578136444092){
     s1+=306.0;
    } else {
     s0+=748.0;
     s1+=396.0;
    }
   }
  } else {
   if(i57<0.20279259979724884){
    if(i12<1.0389506816864014){
     s0+=992.0;
     s1+=184.0;
    } else {
     s0+=35.0;
     s1+=168.0;
    }
   } else {
    if(i23<0.013141095638275146){
     s0+=43.0;
     s1+=5.0;
    } else {
     s0+=46.0;
     s1+=678.0;
    }
   }
  }
 } else {
  if(i18<0.0021551274694502354){
   if(i43<1.001868724822998){
    if(i41<-2.0688879885710776e-05){
     s1+=4.0;
    } else {
     s0+=184.0;
     s1+=6.0;
    }
   } else {
    if(i18<0.0009048586944118142){
     s0+=33.0;
    } else {
     s0+=12.0;
     s1+=31.0;
    }
   }
  } else {
   if(i25<0.02762436680495739){
    if(i2<-3.7550926208496094e-05){
     s0+=29.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   } else {
    if(i2<-0.00018742680549621582){
     s0+=4.0;
    } else {
     s0+=28.0;
     s1+=1145.0;
    }
   }
  }
 }
} else {
 if(i38<0.0023648133501410484){
  if(i34<1.095003366470337){
   if(i53<1.1742115020751953e-05){
    if(i22<1.0905089378356934){
     s0+=12.0;
     s1+=2027.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i11<1.0093148946762085){
     s0+=72.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   }
  } else {
   if(i38<0.0011555342935025692){
    if(i30<0.0010763199534267187){
     s1+=329.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i27<1.003732681274414){
     s0+=42.0;
     s1+=41.0;
    } else {
     s0+=1836.0;
    }
   }
  }
 } else {
  if(i14<0.0003789663314819336){
   if(i45<2.553554622863885e-06){
    s1+=32.0;
   } else {
    if(i12<0.8005357384681702){
     s1+=2.0;
    } else {
     s0+=48.0;
     s1+=1.0;
    }
   }
  } else {
   if(i19<-0.002286076545715332){
    if(i54<0.0012246756814420223){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=23.0;
     s1+=249.0;
    }
   } else {
    if(i7<0.004823693539947271){
     s0+=29.0;
     s1+=388.0;
    } else {
     s0+=7.0;
     s1+=13323.0;
    }
   }
  }
 }
}
if(i1<0.0009437799453735352){
 if(i7<0.007545250002294779){
  if(i3<0.0002251267433166504){
   if(i30<0.0010567019926384091){
    if(i50<0.01157635822892189){
     s0+=19230.0;
     s1+=253.0;
    } else {
     s0+=10149.0;
     s1+=1542.0;
    }
   } else {
    if(i55<0.0019131649751216173){
     s0+=61185.0;
     s1+=118.0;
    } else {
     s0+=5692.0;
     s1+=256.0;
    }
   }
  } else {
   if(i25<0.007786069065332413){
    if(i46<0.0005004922277294099){
     s0+=2926.0;
     s1+=248.0;
    } else {
     s0+=7706.0;
     s1+=21.0;
    }
   } else {
    if(i44<1.001438856124878){
     s0+=1549.0;
     s1+=1757.0;
    } else {
     s0+=618.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i27<0.9941204786300659){
   if(i14<0.16958153247833252){
    if(i74<-0.005340933799743652){
     s0+=249.0;
     s1+=170.0;
    } else {
     s0+=4228.0;
     s1+=233.0;
    }
   } else {
    if(i36<1.1102001667022705){
     s0+=42.0;
     s1+=41.0;
    } else {
     s0+=6.0;
     s1+=594.0;
    }
   }
  } else {
   if(i14<0.0589461624622345){
    if(i1<-0.0003718733787536621){
     s0+=350.0;
     s1+=24.0;
    } else {
     s0+=176.0;
     s1+=162.0;
    }
   } else {
    if(i41<-6.2035269365878776e-06){
     s0+=67.0;
     s1+=2520.0;
    } else {
     s0+=35.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i38<0.0012504032347351313){
   if(i28<1.0610902309417725){
    s0+=102.0;
   } else {
    if(i33<0.0006926953792572021){
     s0+=4.0;
     s1+=2065.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i26<0.0010797684080898762){
    s1+=222.0;
   } else {
    s0+=1969.0;
   }
  }
 } else {
  if(i23<0.030543237924575806){
   if(i34<1.4213035106658936){
    if(i57<0.10931156575679779){
     s0+=7.0;
     s1+=26.0;
    } else {
     s0+=58.0;
     s1+=5.0;
    }
   } else {
    if(i77<-0.02285003662109375){
     s1+=54.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i41<-1.8419466869090684e-05){
    if(i36<1.075517177581787){
     s0+=18.0;
     s1+=26.0;
    } else {
     s0+=49.0;
     s1+=13993.0;
    }
   } else {
    if(i68<1.0018597841262817){
     s0+=12.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
}
if(i21<1.0053205490112305){
 if(i3<0.0003960728645324707){
  if(i23<0.23259365558624268){
   if(i25<0.006645648740231991){
    if(i22<1.0128135681152344){
     s0+=472.0;
     s1+=101.0;
    } else {
     s0+=65031.0;
     s1+=393.0;
    }
   } else {
    if(i5<0.9980089068412781){
     s0+=34976.0;
     s1+=429.0;
    } else {
     s0+=5741.0;
     s1+=2532.0;
    }
   }
  } else {
   if(i37<0.011538286693394184){
    if(i49<7.476549944840372e-05){
     s0+=81.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=70.0;
    }
   } else {
    s1+=259.0;
   }
  }
 } else {
  if(i40<-0.0001924670796142891){
   if(i7<0.004146232269704342){
    if(i55<0.0014830511063337326){
     s0+=539.0;
     s1+=4.0;
    } else {
     s0+=145.0;
     s1+=85.0;
    }
   } else {
    if(i66<-0.00824025273323059){
     s0+=86.0;
     s1+=4.0;
    } else {
     s0+=411.0;
     s1+=3932.0;
    }
   }
  } else {
   if(i50<0.042957283556461334){
    if(i0<-4.6014956751605496e-05){
     s0+=147.0;
     s1+=171.0;
    } else {
     s0+=4307.0;
     s1+=216.0;
    }
   } else {
    if(i19<-0.0013121962547302246){
     s0+=1075.0;
     s1+=140.0;
    } else {
     s0+=70.0;
     s1+=284.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i54<0.0006979831960052252){
   if(i33<0.0005154013633728027){
    if(i6<0.0001895427703857422){
     s1+=1759.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=163.0;
   }
  } else {
   if(i28<1.1180615425109863){
    s1+=94.0;
   } else {
    s0+=2592.0;
   }
  }
 } else {
  if(i2<6.335973739624023e-05){
   if(i10<0.9614652395248413){
    if(i23<0.0552983283996582){
     s0+=291.0;
     s1+=25.0;
    } else {
     s0+=57.0;
     s1+=126.0;
    }
   } else {
    if(i42<0.08393275737762451){
     s0+=220.0;
     s1+=128.0;
    } else {
     s0+=60.0;
     s1+=676.0;
    }
   }
  } else {
   if(i19<-0.0022206902503967285){
    if(i42<0.10088974237442017){
     s0+=87.0;
     s1+=125.0;
    } else {
     s0+=6.0;
     s1+=191.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=21.0;
     s1+=12034.0;
    } else {
     s0+=17.0;
     s1+=470.0;
    }
   }
  }
 }
}
if(i2<6.288290023803711e-05){
 if(i16<0.19985216856002808){
  if(i41<-4.398887904244475e-05){
   if(i29<1.0294650793075562){
    if(i4<1.0051090717315674){
     s0+=228.0;
     s1+=17.0;
    } else {
     s0+=41.0;
     s1+=44.0;
    }
   } else {
    if(i72<7.1435415520682e-06){
     s0+=25.0;
     s1+=390.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i28<1.1162974834442139){
    if(i9<1.0089352130889893){
     s0+=29740.0;
     s1+=2658.0;
    } else {
     s0+=319.0;
     s1+=1081.0;
    }
   } else {
    if(i7<0.007387983612716198){
     s0+=78284.0;
     s1+=924.0;
    } else {
     s0+=5073.0;
     s1+=1152.0;
    }
   }
  }
 } else {
  if(i51<-3.946364358853316e-06){
   if(i36<1.1231228113174438){
    if(i18<0.005323287099599838){
     s0+=62.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   } else {
    if(i26<0.0017534038051962852){
     s0+=13.0;
    } else {
     s0+=41.0;
     s1+=1474.0;
    }
   }
  } else {
   if(i26<0.0027038552798330784){
    if(i9<0.9950419664382935){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=214.0;
    }
   } else {
    if(i57<0.0951557606458664){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i7<0.003888857550919056){
  if(i35<1.116804838180542){
   if(i31<0.0009931287495419383){
    if(i52<1.0036394596099854){
     s0+=1.0;
     s1+=681.0;
    } else {
     s0+=21.0;
    }
   } else {
    s0+=98.0;
   }
  } else {
   if(i34<1.1737661361694336){
    if(i39<0.028071435168385506){
     s0+=1672.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i27<1.0116291046142578){
     s0+=16.0;
    } else {
     s1+=276.0;
    }
   }
  }
 } else {
  if(i48<-6.5435306169092655e-06){
   s0+=191.0;
  } else {
   if(i19<-0.0022206902503967285){
    if(i7<0.012433331459760666){
     s0+=43.0;
     s1+=6.0;
    } else {
     s0+=47.0;
     s1+=356.0;
    }
   } else {
    if(i7<0.004952756687998772){
     s0+=102.0;
     s1+=512.0;
    } else {
     s0+=28.0;
     s1+=14916.0;
    }
   }
  }
 }
}
if(i17<1.0166709423065186){
 if(i62<0.0036510280333459377){
  if(i0<-8.292001439258456e-05){
   if(i52<1.000855803489685){
    if(i29<1.1707152128219604){
     s0+=405.0;
     s1+=10.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i14<0.05852639675140381){
     s0+=144.0;
     s1+=13.0;
    } else {
     s0+=72.0;
     s1+=1626.0;
    }
   }
  } else {
   if(i33<0.00010246038436889648){
    if(i32<1.0905301570892334){
     s0+=23466.0;
     s1+=892.0;
    } else {
     s0+=55603.0;
     s1+=112.0;
    }
   } else {
    if(i32<1.0903575420379639){
     s0+=5312.0;
     s1+=2666.0;
    } else {
     s0+=25130.0;
     s1+=1495.0;
    }
   }
  }
 } else {
  if(i21<1.003157615661621){
   if(i3<0.0004393458366394043){
    if(i58<0.20069703459739685){
     s0+=3670.0;
     s1+=449.0;
    } else {
     s0+=18.0;
     s1+=63.0;
    }
   } else {
    if(i25<0.04170636087656021){
     s0+=335.0;
     s1+=159.0;
    } else {
     s0+=40.0;
     s1+=317.0;
    }
   }
  } else {
   if(i45<4.453000292414799e-05){
    if(i14<0.01859569549560547){
     s0+=164.0;
     s1+=116.0;
    } else {
     s0+=138.0;
     s1+=2113.0;
    }
   } else {
    if(i66<-0.007743179798126221){
     s0+=250.0;
     s1+=61.0;
    } else {
     s0+=50.0;
     s1+=161.0;
    }
   }
  }
 }
} else {
 if(i8<1.014490008354187){
  if(i23<0.19334164261817932){
   if(i15<0.00034686506842263043){
    if(i2<2.187490463256836e-05){
     s0+=643.0;
     s1+=194.0;
    } else {
     s0+=69.0;
     s1+=1065.0;
    }
   } else {
    if(i39<0.0962526798248291){
     s0+=756.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  } else {
   if(i41<-7.72009661886841e-06){
    if(i28<1.1846036911010742){
     s0+=12.0;
    } else {
     s0+=37.0;
     s1+=1493.0;
    }
   } else {
    s0+=55.0;
   }
  }
 } else {
  if(i15<0.0008282967028208077){
   if(i51<-7.489343988709152e-05){
    s0+=5.0;
   } else {
    if(i0<-3.429301068536006e-05){
     s1+=11360.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s0+=61.0;
  }
 }
}
if(i7<0.007157877553254366){
 if(i26<0.0009254332398995757){
  if(i10<1.0068023204803467){
   if(i26<0.00046847271732985973){
    if(i44<1.000240683555603){
     s0+=21781.0;
     s1+=222.0;
    } else {
     s0+=7982.0;
     s1+=1358.0;
    }
   } else {
    if(i22<1.034204125404358){
     s0+=1572.0;
     s1+=330.0;
    } else {
     s0+=313.0;
     s1+=526.0;
    }
   }
  } else {
   if(i52<1.0003352165222168){
    if(i0<-4.887680188403465e-05){
     s1+=7.0;
    } else {
     s0+=252.0;
    }
   } else {
    if(i34<1.0452228784561157){
     s0+=213.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=2199.0;
    }
   }
  }
 } else {
  if(i20<0.0003005862236022949){
   if(i4<1.0023252964019775){
    if(i12<1.0182666778564453){
     s0+=72647.0;
     s1+=343.0;
    } else {
     s0+=466.0;
     s1+=72.0;
    }
   } else {
    if(i50<0.03636540472507477){
     s0+=4177.0;
     s1+=129.0;
    } else {
     s0+=1055.0;
     s1+=437.0;
    }
   }
  } else {
   if(i35<1.1684951782226562){
    s0+=98.0;
   } else {
    s1+=991.0;
   }
  }
 }
} else {
 if(i5<0.998572587966919){
  if(i22<1.1230299472808838){
   if(i26<0.012979816645383835){
    if(i15<0.0006301910616457462){
     s0+=4768.0;
     s1+=115.0;
    } else {
     s0+=48.0;
     s1+=24.0;
    }
   } else {
    if(i2<-0.00016620755195617676){
     s0+=367.0;
     s1+=6.0;
    } else {
     s0+=103.0;
     s1+=81.0;
    }
   }
  } else {
   if(i14<0.002882331609725952){
    if(i39<0.06612719595432281){
     s0+=69.0;
    } else {
     s0+=10.0;
     s1+=7.0;
    }
   } else {
    if(i38<0.005778160877525806){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=327.0;
    }
   }
  }
 } else {
  if(i29<1.024442434310913){
   if(i32<1.434441089630127){
    if(i34<1.272921085357666){
     s0+=70.0;
     s1+=101.0;
    } else {
     s0+=223.0;
     s1+=27.0;
    }
   } else {
    if(i4<1.0059516429901123){
     s0+=14.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=116.0;
    }
   }
  } else {
   if(i15<0.0018380209803581238){
    if(i45<3.783010470215231e-05){
     s0+=214.0;
     s1+=15868.0;
    } else {
     s0+=86.0;
     s1+=927.0;
    }
   } else {
    s0+=54.0;
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i16<0.21643739938735962){
  if(i18<0.0017270520329475403){
   if(i36<1.0466102361679077){
    if(i12<0.9956917762756348){
     s0+=4941.0;
     s1+=478.0;
    } else {
     s0+=26940.0;
     s1+=280.0;
    }
   } else {
    if(i39<0.018304146826267242){
     s0+=48098.0;
     s1+=50.0;
    } else {
     s0+=9423.0;
     s1+=182.0;
    }
   }
  } else {
   if(i38<0.001191378803923726){
    if(i32<1.0510576963424683){
     s0+=2158.0;
     s1+=21.0;
    } else {
     s0+=414.0;
     s1+=2755.0;
    }
   } else {
    if(i35<1.0955833196640015){
     s0+=1.0;
     s1+=255.0;
    } else {
     s0+=18355.0;
     s1+=921.0;
    }
   }
  }
 } else {
  if(i25<0.037143073976039886){
   if(i33<0.00010067224502563477){
    if(i19<0.000852048397064209){
     s0+=103.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i43<1.0022844076156616){
     s0+=22.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=43.0;
    }
   }
  } else {
   if(i51<-9.455078497921932e-07){
    if(i18<0.0020436071790754795){
     s0+=3.0;
    } else {
     s1+=659.0;
    }
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i14<0.1683344542980194){
  if(i49<-2.4633851353428327e-05){
   if(i19<0.0018758177757263184){
    if(i46<0.0011244361521676183){
     s0+=10.0;
     s1+=413.0;
    } else {
     s0+=119.0;
     s1+=32.0;
    }
   } else {
    if(i18<0.0004645805456675589){
     s0+=1.0;
     s1+=17.0;
    } else {
     s1+=1592.0;
    }
   }
  } else {
   if(i32<1.1757044792175293){
    if(i15<0.00024660665076225996){
     s0+=545.0;
     s1+=995.0;
    } else {
     s0+=3267.0;
     s1+=30.0;
    }
   } else {
    if(i16<0.0736565887928009){
     s0+=1156.0;
     s1+=469.0;
    } else {
     s0+=410.0;
     s1+=2032.0;
    }
   }
  }
 } else {
  if(i30<0.0025079119950532913){
   if(i9<1.0253770351409912){
    if(i43<1.0022990703582764){
     s1+=4.0;
    } else {
     s0+=313.0;
     s1+=8.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i36<1.0770237445831299){
    if(i26<0.005242121871560812){
     s0+=8.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i3<0.00032150745391845703){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=85.0;
     s1+=13185.0;
    }
   }
  }
 }
}
if(i3<0.0005705356597900391){
 if(i60<1.1393959522247314){
  if(i0<-7.05983693478629e-05){
   if(i43<1.0001955032348633){
    if(i14<0.1821134090423584){
     s0+=688.0;
     s1+=43.0;
    } else {
     s0+=12.0;
     s1+=36.0;
    }
   } else {
    if(i63<5.503111424332019e-06){
     s0+=56.0;
     s1+=352.0;
    } else {
     s0+=746.0;
     s1+=303.0;
    }
   }
  } else {
   if(i38<0.0010562636889517307){
    if(i11<1.0066463947296143){
     s0+=31251.0;
     s1+=2335.0;
    } else {
     s0+=275.0;
     s1+=488.0;
    }
   } else {
    if(i26<0.0009234241442754865){
     s0+=830.0;
     s1+=234.0;
    } else {
     s0+=75543.0;
     s1+=811.0;
    }
   }
  }
 } else {
  if(i18<0.0018962521571666002){
   s0+=218.0;
  } else {
   if(i15<0.00011983779404545203){
    s0+=2.0;
   } else {
    if(i32<1.2320208549499512){
     s0+=6.0;
     s1+=50.0;
    } else {
     s1+=423.0;
    }
   }
  }
 }
} else {
 if(i32<1.1757044792175293){
  if(i33<0.0005085468292236328){
   if(i44<0.999687671661377){
    if(i19<-0.00023728609085083008){
     s1+=1.0;
    } else {
     s0+=654.0;
    }
   } else {
    if(i26<0.001003481913357973){
     s1+=3037.0;
    } else {
     s0+=198.0;
     s1+=118.0;
    }
   }
  } else {
   if(i12<0.9153091907501221){
    s1+=9.0;
   } else {
    if(i11<0.9905316233634949){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=4400.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i8<0.9911788702011108){
   if(i25<0.040883973240852356){
    if(i45<2.4867933461791836e-05){
     s0+=149.0;
     s1+=151.0;
    } else {
     s0+=707.0;
     s1+=162.0;
    }
   } else {
    if(i50<0.17603474855422974){
     s0+=156.0;
     s1+=119.0;
    } else {
     s0+=47.0;
     s1+=841.0;
    }
   }
  } else {
   if(i7<0.004402840510010719){
    if(i41<-4.3648778955684975e-05){
     s0+=4.0;
     s1+=318.0;
    } else {
     s0+=394.0;
     s1+=59.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=100.0;
     s1+=13908.0;
    } else {
     s0+=45.0;
     s1+=551.0;
    }
   }
  }
 }
}
if(i3<0.000570833683013916){
 if(i9<1.017035722732544){
  if(i22<1.1546056270599365){
   if(i18<0.0016234091017395258){
    if(i35<1.0776758193969727){
     s0+=18908.0;
     s1+=462.0;
    } else {
     s0+=67948.0;
     s1+=277.0;
    }
   } else {
    if(i38<0.0010643175337463617){
     s0+=1904.0;
     s1+=2095.0;
    } else {
     s0+=20107.0;
     s1+=989.0;
    }
   }
  } else {
   if(i41<-8.390544280700851e-06){
    if(i57<0.16507340967655182){
     s0+=65.0;
     s1+=30.0;
    } else {
     s0+=16.0;
     s1+=388.0;
    }
   } else {
    s0+=309.0;
   }
  }
 } else {
  if(i41<-9.178902473649941e-06){
   if(i25<0.027612995356321335){
    if(i63<5.574072019953746e-06){
     s0+=45.0;
     s1+=171.0;
    } else {
     s0+=160.0;
     s1+=1.0;
    }
   } else {
    if(i68<1.0052772760391235){
     s0+=11.0;
     s1+=601.0;
    } else {
     s0+=18.0;
     s1+=7.0;
    }
   }
  } else {
   if(i18<0.002688620239496231){
    if(i52<1.0008254051208496){
     s0+=419.0;
    } else {
     s0+=51.0;
     s1+=6.0;
    }
   } else {
    if(i69<0.052768729627132416){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i0<-7.428437675116584e-05){
  if(i8<0.9754949808120728){
   if(i29<1.0388901233673096){
    if(i75<0.05194927752017975){
     s0+=301.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i18<0.005659563932567835){
     s0+=13.0;
    } else {
     s0+=14.0;
     s1+=103.0;
    }
   }
  } else {
   if(i14<0.05488711595535278){
    if(i63<-1.0994590411428362e-06){
     s0+=16.0;
     s1+=149.0;
    } else {
     s0+=158.0;
     s1+=102.0;
    }
   } else {
    if(i25<0.003533261828124523){
     s0+=176.0;
     s1+=227.0;
    } else {
     s0+=259.0;
     s1+=15431.0;
    }
   }
  }
 } else {
  if(i15<0.00029915536288172007){
   if(i2<2.0325183868408203e-05){
    if(i51<-9.95658956526313e-06){
     s0+=389.0;
     s1+=15.0;
    } else {
     s0+=76.0;
     s1+=72.0;
    }
   } else {
    if(i30<0.0012138374149799347){
     s0+=6.0;
     s1+=1750.0;
    } else {
     s0+=260.0;
     s1+=855.0;
    }
   }
  } else {
   if(i58<0.03822069987654686){
    if(i67<0.003111331257969141){
     s0+=4757.0;
     s1+=41.0;
    } else {
     s0+=58.0;
     s1+=44.0;
    }
   } else {
    if(i20<-0.0005504786968231201){
     s0+=208.0;
     s1+=103.0;
    } else {
     s0+=56.0;
     s1+=194.0;
    }
   }
  }
 }
}
if(i13<1.0154014825820923){
 if(i52<1.0016981363296509){
  if(i23<0.2343006432056427){
   if(i9<1.0107117891311646){
    if(i38<0.001046382007189095){
     s0+=31064.0;
     s1+=2737.0;
    } else {
     s0+=69624.0;
     s1+=771.0;
    }
   } else {
    if(i36<1.0781182050704956){
     s0+=127.0;
     s1+=583.0;
    } else {
     s0+=2534.0;
     s1+=228.0;
    }
   }
  } else {
   if(i25<0.03709063678979874){
    if(i31<0.001026480458676815){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=19.0;
    }
   } else {
    if(i36<1.6057538986206055){
     s1+=401.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i39<0.13250732421875){
   if(i67<0.0009273036848753691){
    if(i41<-3.703329275595024e-05){
     s0+=188.0;
     s1+=398.0;
    } else {
     s0+=9285.0;
     s1+=1181.0;
    }
   } else {
    if(i2<3.814697265625e-06){
     s0+=2078.0;
     s1+=319.0;
    } else {
     s0+=363.0;
     s1+=1879.0;
    }
   }
  } else {
   if(i20<-0.0009392201900482178){
    if(i43<1.0182437896728516){
     s0+=172.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=32.0;
    }
   } else {
    if(i25<0.042424462735652924){
     s0+=37.0;
     s1+=23.0;
    } else {
     s0+=46.0;
     s1+=1726.0;
    }
   }
  }
 }
} else {
 if(i0<-6.271312304306775e-05){
  if(i72<5.755945494456682e-06){
   if(i48<-7.54201164454571e-06){
    s0+=48.0;
   } else {
    if(i26<0.002424099948257208){
     s0+=82.0;
     s1+=1277.0;
    } else {
     s0+=21.0;
     s1+=12112.0;
    }
   }
  } else {
   s0+=35.0;
  }
 } else {
  if(i34<1.0965585708618164){
   s1+=359.0;
  } else {
   if(i30<0.002613428281620145){
    if(i19<0.0005833208560943604){
     s0+=64.0;
     s1+=10.0;
    } else {
     s0+=344.0;
     s1+=2.0;
    }
   } else {
    if(i2<3.1054019927978516e-05){
     s0+=236.0;
     s1+=48.0;
    } else {
     s0+=41.0;
     s1+=262.0;
    }
   }
  }
 }
}
if(i7<0.007777216844260693){
 if(i4<1.0025758743286133){
  if(i18<0.001485503395088017){
   if(i13<0.9959068298339844){
    if(i34<1.0663955211639404){
     s0+=4226.0;
     s1+=353.0;
    } else {
     s0+=11462.0;
     s1+=44.0;
    }
   } else {
    if(i0<-5.132205842528492e-05){
     s0+=603.0;
     s1+=41.0;
    } else {
     s0+=67678.0;
     s1+=165.0;
    }
   }
  } else {
   if(i26<0.0008961319108493626){
    if(i69<0.031679216772317886){
     s0+=2577.0;
     s1+=998.0;
    } else {
     s0+=782.0;
     s1+=1623.0;
    }
   } else {
    if(i1<-0.000452190637588501){
     s0+=16626.0;
     s1+=122.0;
    } else {
     s0+=2311.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i33<0.0005323290824890137){
   if(i3<0.00037354230880737305){
    if(i77<-0.012643218040466309){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=281.0;
    }
   } else {
    if(i2<1.519918441772461e-05){
     s0+=156.0;
     s1+=55.0;
    } else {
     s0+=195.0;
     s1+=2777.0;
    }
   }
  } else {
   if(i45<-1.530994995846413e-05){
    if(i28<1.1734975576400757){
     s0+=74.0;
    } else {
     s1+=566.0;
    }
   } else {
    if(i37<0.0019482113420963287){
     s0+=3723.0;
    } else {
     s0+=929.0;
     s1+=445.0;
    }
   }
  }
 }
} else {
 if(i20<-0.0005050003528594971){
  if(i29<1.1140820980072021){
   if(i5<1.000356674194336){
    if(i78<-0.14194145798683167){
     s0+=61.0;
     s1+=50.0;
    } else {
     s0+=3651.0;
     s1+=220.0;
    }
   } else {
    if(i18<0.006052121520042419){
     s0+=78.0;
     s1+=2.0;
    } else {
     s0+=46.0;
     s1+=192.0;
    }
   }
  } else {
   if(i38<0.007716943044215441){
    if(i56<-0.0014521947596222162){
     s1+=24.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   } else {
    if(i14<0.01559990644454956){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=278.0;
    }
   }
  }
 } else {
  if(i21<0.9921578764915466){
   if(i41<-1.2936771781824064e-05){
    s1+=46.0;
   } else {
    s0+=730.0;
   }
  } else {
   if(i13<0.9576903581619263){
    if(i22<1.114445686340332){
     s0+=116.0;
     s1+=49.0;
    } else {
     s0+=38.0;
     s1+=222.0;
    }
   } else {
    if(i72<6.195094101713039e-06){
     s0+=179.0;
     s1+=15693.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
}
if(i17<1.0169901847839355){
 if(i7<0.014026029035449028){
  if(i20<0.00019669532775878906){
   if(i7<0.003660991322249174){
    if(i7<0.0026964519638568163){
     s0+=79248.0;
     s1+=534.0;
    } else {
     s0+=10009.0;
     s1+=585.0;
    }
   } else {
    if(i33<5.1081180572509766e-05){
     s0+=15271.0;
     s1+=170.0;
    } else {
     s0+=8079.0;
     s1+=4273.0;
    }
   }
  } else {
   if(i4<1.0025876760482788){
    if(i63<-5.9595606671791757e-08){
     s0+=75.0;
     s1+=28.0;
    } else {
     s0+=442.0;
     s1+=6.0;
    }
   } else {
    if(i7<0.003915297798812389){
     s0+=430.0;
     s1+=432.0;
    } else {
     s0+=55.0;
     s1+=1167.0;
    }
   }
  }
 } else {
  if(i13<0.9347968101501465){
   if(i39<0.1820511370897293){
    if(i4<1.0062038898468018){
     s0+=938.0;
     s1+=115.0;
    } else {
     s0+=16.0;
     s1+=66.0;
    }
   } else {
    if(i49<0.0005001822719350457){
     s0+=7.0;
     s1+=115.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i36<1.0500967502593994){
    s0+=18.0;
   } else {
    if(i22<1.052932858467102){
     s0+=25.0;
     s1+=38.0;
    } else {
     s0+=30.0;
     s1+=2911.0;
    }
   }
  }
 }
} else {
 if(i34<1.1704325675964355){
  if(i28<1.1178560256958008){
   if(i45<1.0621518413245212e-05){
    if(i13<1.0069146156311035){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=1507.0;
    }
   } else {
    if(i21<0.9973129034042358){
     s0+=9.0;
    } else {
     s1+=65.0;
    }
   }
  } else {
   if(i35<1.1758689880371094){
    s0+=837.0;
   } else {
    if(i44<1.0016118288040161){
     s0+=195.0;
     s1+=663.0;
    } else {
     s0+=185.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i51<-2.9097373044351116e-06){
   if(i23<0.07461443543434143){
    if(i45<1.0498884876142256e-05){
     s0+=2.0;
     s1+=21.0;
    } else {
     s0+=54.0;
     s1+=1.0;
    }
   } else {
    if(i3<-0.0002434253692626953){
     s0+=15.0;
     s1+=50.0;
    } else {
     s0+=28.0;
     s1+=11864.0;
    }
   }
  } else {
   s0+=247.0;
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i18<0.00181779102422297){
  if(i7<0.0016380486777052283){
   if(i29<1.0100575685501099){
    if(i0<-3.319087682029931e-06){
     s0+=115.0;
     s1+=48.0;
    } else {
     s0+=842.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0018083597533404827){
     s0+=58009.0;
     s1+=64.0;
    } else {
     s0+=1928.0;
     s1+=88.0;
    }
   }
  } else {
   if(i0<-7.187396113295108e-05){
    if(i41<-1.5545763744739816e-05){
     s1+=87.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i43<0.998918890953064){
     s0+=22406.0;
     s1+=36.0;
    } else {
     s0+=9507.0;
     s1+=840.0;
    }
   }
  }
 } else {
  if(i15<0.00025343167362734675){
   if(i26<0.001035289722494781){
    if(i52<0.9997380971908569){
     s0+=365.0;
     s1+=12.0;
    } else {
     s0+=27.0;
     s1+=2781.0;
    }
   } else {
    if(i29<1.093733310699463){
     s0+=4947.0;
     s1+=339.0;
    } else {
     s0+=484.0;
     s1+=947.0;
    }
   }
  } else {
   if(i36<1.1276147365570068){
    if(i62<0.0031225774437189102){
     s0+=12713.0;
     s1+=305.0;
    } else {
     s0+=735.0;
     s1+=243.0;
    }
   } else {
    if(i25<0.036334794014692307){
     s0+=1906.0;
     s1+=323.0;
    } else {
     s0+=333.0;
     s1+=1798.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023654235992580652){
  if(i15<0.0002442885597702116){
   if(i28<1.1229777336120605){
    s1+=2368.0;
   } else {
    s0+=49.0;
   }
  } else {
   s0+=2001.0;
  }
 } else {
  if(i5<1.0028060674667358){
   if(i25<0.036417871713638306){
    if(i18<0.006059788633137941){
     s0+=30.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=32.0;
   }
  } else {
   if(i20<-0.00022208690643310547){
    if(i23<0.10233905911445618){
     s0+=57.0;
     s1+=123.0;
    } else {
     s0+=3.0;
     s1+=388.0;
    }
   } else {
    if(i20<-8.940696716308594e-06){
     s0+=24.0;
     s1+=868.0;
    } else {
     s1+=12627.0;
    }
   }
  }
 }
}
if(i11<1.0136241912841797){
 if(i4<1.0025391578674316){
  if(i25<0.08940889686346054){
   if(i18<0.0015713318716734648){
    if(i65<0.00017948301683645695){
     s0+=72972.0;
     s1+=271.0;
    } else {
     s0+=13115.0;
     s1+=439.0;
    }
   } else {
    if(i26<0.0009299945086240768){
     s0+=2928.0;
     s1+=2615.0;
    } else {
     s0+=20751.0;
     s1+=799.0;
    }
   }
  } else {
   if(i18<0.011087452992796898){
    s1+=255.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i65<0.00024437642423436046){
   if(i33<0.0005081295967102051){
    if(i1<0.00047129392623901367){
     s0+=318.0;
     s1+=95.0;
    } else {
     s0+=124.0;
     s1+=1055.0;
    }
   } else {
    if(i39<0.03947748616337776){
     s0+=3646.0;
     s1+=13.0;
    } else {
     s0+=94.0;
     s1+=112.0;
    }
   }
  } else {
   if(i2<3.039836883544922e-06){
    if(i22<1.0865925550460815){
     s0+=830.0;
     s1+=90.0;
    } else {
     s0+=121.0;
     s1+=339.0;
    }
   } else {
    if(i25<0.011610502377152443){
     s0+=194.0;
     s1+=153.0;
    } else {
     s0+=323.0;
     s1+=3305.0;
    }
   }
  }
 }
} else {
 if(i26<0.0025603470858186483){
  if(i34<1.0905578136444092){
   if(i12<1.0084679126739502){
    if(i45<-2.3671943836234277e-06){
     s1+=40.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=1570.0;
   }
  } else {
   if(i55<0.000863761524669826){
    if(i63<-1.0847923022083705e-06){
     s0+=1.0;
     s1+=191.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i26<0.002434811554849148){
     s0+=879.0;
     s1+=43.0;
    } else {
     s0+=53.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i34<1.1672112941741943){
   if(i23<0.1441662609577179){
    if(i28<1.2596347332000732){
     s1+=91.0;
    } else {
     s0+=193.0;
     s1+=7.0;
    }
   } else {
    if(i46<0.007582520134747028){
     s0+=34.0;
     s1+=481.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   }
  } else {
   if(i68<1.0112030506134033){
    if(i5<1.0027252435684204){
     s0+=32.0;
     s1+=252.0;
    } else {
     s0+=22.0;
     s1+=11848.0;
    }
   } else {
    if(i77<0.02598443627357483){
     s0+=20.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
}
if(i5<1.0038622617721558){
 if(i29<1.1403393745422363){
  if(i18<0.001729619805701077){
   if(i32<1.0776758193969727){
    if(i31<0.0006275171763263643){
     s0+=20633.0;
     s1+=129.0;
    } else {
     s0+=2202.0;
     s1+=588.0;
    }
   } else {
    if(i37<0.001829266082495451){
     s0+=56768.0;
     s1+=49.0;
    } else {
     s0+=9509.0;
     s1+=252.0;
    }
   }
  } else {
   if(i35<1.1164028644561768){
    if(i28<1.056142807006836){
     s0+=2110.0;
    } else {
     s0+=927.0;
     s1+=2643.0;
    }
   } else {
    if(i21<1.0023739337921143){
     s0+=17834.0;
     s1+=931.0;
    } else {
     s0+=1743.0;
     s1+=825.0;
    }
   }
  }
 } else {
  if(i38<0.00616450933739543){
   if(i26<0.0025617587380111217){
    if(i39<0.12662924826145172){
     s0+=436.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i39<0.07825453579425812){
     s0+=47.0;
     s1+=39.0;
    } else {
     s0+=2.0;
     s1+=186.0;
    }
   }
  } else {
   if(i25<0.05112355202436447){
    if(i44<1.0024144649505615){
     s0+=2.0;
     s1+=76.0;
    } else {
     s0+=31.0;
    }
   } else {
    s1+=946.0;
   }
  }
 }
} else {
 if(i38<0.0022520367056131363){
  if(i26<0.0009800171246752143){
   if(i36<1.0450111627578735){
    if(i34<1.0452228784561157){
     s0+=622.0;
    } else {
     s1+=82.0;
    }
   } else {
    s1+=2575.0;
   }
  } else {
   if(i32<1.1809992790222168){
    if(i11<0.9877709746360779){
     s1+=2.0;
    } else {
     s0+=3331.0;
    }
   } else {
    if(i29<1.0463422536849976){
     s0+=55.0;
    } else {
     s1+=59.0;
    }
   }
  }
 } else {
  if(i7<0.003378134686499834){
   if(i4<1.0063278675079346){
    if(i59<0.0009692716412246227){
     s0+=94.0;
    } else {
     s0+=7.0;
     s1+=11.0;
    }
   } else {
    s1+=188.0;
   }
  } else {
   if(i68<1.0116361379623413){
    if(i16<0.09768173098564148){
     s0+=115.0;
     s1+=729.0;
    } else {
     s0+=30.0;
     s1+=14035.0;
    }
   } else {
    if(i63<-6.93719630362466e-06){
     s0+=11.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i0<-9.283353574573994e-05){
 if(i13<0.9388452172279358){
  if(i75<0.05141763016581535){
   if(i10<0.9476557970046997){
    if(i60<1.0201106071472168){
     s0+=605.0;
     s1+=33.0;
    } else {
     s0+=3.0;
     s1+=27.0;
    }
   } else {
    if(i33<0.0006552934646606445){
     s0+=57.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   }
  } else {
   if(i17<0.843693196773529){
    if(i56<0.0010233607608824968){
     s0+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i14<0.006112903356552124){
     s0+=18.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i31<0.0037843752652406693){
   if(i14<0.04413267970085144){
    if(i22<1.0607343912124634){
     s0+=60.0;
     s1+=4.0;
    } else {
     s0+=40.0;
     s1+=167.0;
    }
   } else {
    if(i44<0.9980452060699463){
     s0+=32.0;
    } else {
     s0+=134.0;
     s1+=15463.0;
    }
   }
  } else {
   if(i54<0.005940885748714209){
    s0+=150.0;
   } else {
    s1+=25.0;
   }
  }
 }
} else {
 if(i13<1.0093591213226318){
  if(i5<1.0078423023223877){
   if(i23<0.2250838577747345){
    if(i31<0.0007155181374400854){
     s0+=79586.0;
     s1+=497.0;
    } else {
     s0+=31911.0;
     s1+=4117.0;
    }
   } else {
    if(i26<0.002576771890744567){
     s0+=63.0;
     s1+=4.0;
    } else {
     s0+=35.0;
     s1+=262.0;
    }
   }
  } else {
   if(i63<-2.976808900712058e-06){
    if(i57<0.013110117986798286){
     s0+=13.0;
     s1+=48.0;
    } else {
     s0+=8.0;
     s1+=368.0;
    }
   } else {
    if(i54<0.008054636418819427){
     s0+=49.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i30<0.0011146094184368849){
   if(i32<1.1197539567947388){
    if(i37<0.00017880658560898155){
     s0+=6.0;
    } else {
     s1+=1834.0;
    }
   } else {
    s0+=150.0;
   }
  } else {
   if(i37<0.0019074149895459414){
    if(i19<0.002033710479736328){
     s0+=2804.0;
     s1+=12.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i7<0.0052324822172522545){
     s0+=825.0;
     s1+=91.0;
    } else {
     s0+=19.0;
     s1+=1139.0;
    }
   }
  }
 }
}
if(i0<-9.090294770430773e-05){
 if(i22<1.046175241470337){
  if(i26<0.005695180036127567){
   if(i2<2.4437904357910156e-05){
    s0+=11.0;
   } else {
    if(i6<0.00023859739303588867){
     s1+=85.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i4<1.0053902864456177){
    if(i78<-0.15354430675506592){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=570.0;
     s1+=2.0;
    }
   } else {
    if(i13<0.9224255084991455){
     s0+=5.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i72<5.199127372179646e-06){
   if(i64<0.867321252822876){
    if(i10<0.9588048458099365){
     s0+=185.0;
     s1+=115.0;
    } else {
     s0+=5.0;
     s1+=114.0;
    }
   } else {
    if(i37<0.0020693447440862656){
     s0+=163.0;
     s1+=805.0;
    } else {
     s0+=99.0;
     s1+=14984.0;
    }
   }
  } else {
   s0+=135.0;
  }
 }
} else {
 if(i4<1.0023149251937866){
  if(i7<0.0036111846566200256){
   if(i11<0.9973269104957581){
    if(i37<0.00031397677958011627){
     s0+=2192.0;
     s1+=472.0;
    } else {
     s0+=22305.0;
     s1+=188.0;
    }
   } else {
    if(i7<0.0028757883701473475){
     s0+=56932.0;
     s1+=155.0;
    } else {
     s0+=4448.0;
     s1+=128.0;
    }
   }
  } else {
   if(i35<1.1160998344421387){
    if(i68<0.9998131990432739){
     s0+=3844.0;
     s1+=82.0;
    } else {
     s0+=194.0;
     s1+=2612.0;
    }
   } else {
    if(i12<1.0213254690170288){
     s0+=18287.0;
     s1+=481.0;
    } else {
     s0+=117.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i19<0.0012926459312438965){
   if(i46<0.0019956815522164106){
    if(i28<1.1180615425109863){
     s0+=870.0;
     s1+=643.0;
    } else {
     s0+=3788.0;
     s1+=210.0;
    }
   } else {
    if(i68<1.0040102005004883){
     s0+=583.0;
     s1+=1321.0;
    } else {
     s0+=1029.0;
     s1+=371.0;
    }
   }
  } else {
   if(i31<0.0013654533540830016){
    if(i59<0.0006898980354890227){
     s0+=22.0;
     s1+=1335.0;
    } else {
     s0+=137.0;
     s1+=277.0;
    }
   } else {
    if(i30<0.0023315008729696274){
     s0+=396.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
}
if(i13<1.0153834819793701){
 if(i29<1.1402318477630615){
  if(i50<0.04073355346918106){
   if(i21<1.0085893869400024){
    if(i31<0.0007112111197784543){
     s0+=72092.0;
     s1+=417.0;
    } else {
     s0+=22104.0;
     s1+=2857.0;
    }
   } else {
    if(i55<0.0007842550985515118){
     s0+=6.0;
     s1+=497.0;
    } else {
     s0+=393.0;
     s1+=169.0;
    }
   }
  } else {
   if(i5<1.0005781650543213){
    if(i2<-3.212690353393555e-05){
     s0+=17267.0;
     s1+=582.0;
    } else {
     s0+=2020.0;
     s1+=767.0;
    }
   } else {
    if(i0<-3.668296994874254e-05){
     s0+=614.0;
     s1+=2766.0;
    } else {
     s0+=667.0;
     s1+=373.0;
    }
   }
  }
 } else {
  if(i54<0.0041756886057555676){
   if(i34<1.1804778575897217){
    if(i77<0.03684133291244507){
     s0+=276.0;
    } else {
     s0+=11.0;
     s1+=15.0;
    }
   } else {
    if(i58<0.03485460579395294){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=63.0;
    }
   }
  } else {
   if(i51<-3.346725634401082e-06){
    if(i30<0.007297389209270477){
     s0+=38.0;
     s1+=368.0;
    } else {
     s0+=4.0;
     s1+=1558.0;
    }
   } else {
    if(i68<1.0016461610794067){
     s0+=214.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i25<0.007544253021478653){
  if(i28<1.1180615425109863){
   s1+=547.0;
  } else {
   if(i7<0.0037693153135478497){
    if(i5<1.0114119052886963){
     s0+=433.0;
     s1+=3.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i52<1.001352071762085){
     s0+=49.0;
    } else {
     s0+=2.0;
     s1+=387.0;
    }
   }
  }
 } else {
  if(i1<0.0002467036247253418){
   if(i49<3.471447416814044e-05){
    s0+=195.0;
   } else {
    if(i68<1.0038816928863525){
     s0+=7.0;
     s1+=169.0;
    } else {
     s0+=142.0;
     s1+=62.0;
    }
   }
  } else {
   if(i41<-1.2218921256135218e-05){
    if(i63<1.8752372852759436e-05){
     s0+=47.0;
     s1+=12589.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i18<0.002481247764080763){
     s0+=17.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<0.0005696415901184082){
 if(i31<0.0007107785204425454){
  if(i29<1.0178465843200684){
   if(i29<1.0178344249725342){
    if(i0<-1.554665868752636e-05){
     s0+=854.0;
     s1+=89.0;
    } else {
     s0+=8708.0;
     s1+=104.0;
    }
   } else {
    if(i50<0.012450627982616425){
     s0+=3.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i37<0.0017927109729498625){
    if(i28<1.0817922353744507){
     s0+=10856.0;
     s1+=102.0;
    } else {
     s0+=54019.0;
     s1+=11.0;
    }
   } else {
    if(i33<0.00010341405868530273){
     s0+=4493.0;
    } else {
     s0+=822.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i21<0.9981820583343506){
   if(i42<0.22647729516029358){
    if(i22<1.1917052268981934){
     s0+=20570.0;
     s1+=413.0;
    } else {
     s0+=5.0;
     s1+=57.0;
    }
   } else {
    s1+=146.0;
   }
  } else {
   if(i26<0.0009219899657182395){
    if(i38<0.0001995588536374271){
     s0+=1178.0;
     s1+=1.0;
    } else {
     s0+=288.0;
     s1+=2621.0;
    }
   } else {
    if(i22<1.121600866317749){
     s0+=7890.0;
     s1+=510.0;
    } else {
     s0+=220.0;
     s1+=865.0;
    }
   }
  }
 }
} else {
 if(i11<1.0164823532104492){
  if(i25<0.014868542551994324){
   if(i7<0.0030565601773560047){
    if(i5<1.008190631866455){
     s0+=3705.0;
     s1+=28.0;
    } else {
     s0+=355.0;
     s1+=236.0;
    }
   } else {
    if(i34<1.0905089378356934){
     s0+=109.0;
     s1+=1109.0;
    } else {
     s0+=1155.0;
     s1+=448.0;
    }
   }
  } else {
   if(i1<4.941225051879883e-05){
    if(i22<1.1715928316116333){
     s0+=673.0;
     s1+=179.0;
    } else {
     s1+=160.0;
    }
   } else {
    if(i22<1.0742030143737793){
     s0+=198.0;
     s1+=452.0;
    } else {
     s0+=167.0;
     s1+=3321.0;
    }
   }
  }
 } else {
  if(i0<-7.284697494469583e-05){
   if(i48<-6.489233328466071e-06){
    s0+=36.0;
   } else {
    if(i15<0.0012410678900778294){
     s0+=27.0;
     s1+=12315.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i52<1.0034644603729248){
    if(i3<0.0017498135566711426){
     s0+=47.0;
     s1+=720.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i2<0.00012171268463134766){
     s0+=238.0;
     s1+=59.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   }
  }
 }
}
if(i2<6.335973739624023e-05){
 if(i14<0.20914509892463684){
  if(i0<-8.10616766102612e-05){
   if(i14<0.05835282802581787){
    if(i8<0.9740164279937744){
     s0+=891.0;
     s1+=52.0;
    } else {
     s0+=128.0;
     s1+=126.0;
    }
   } else {
    if(i22<1.1023340225219727){
     s0+=161.0;
     s1+=227.0;
    } else {
     s0+=34.0;
     s1+=813.0;
    }
   }
  } else {
   if(i7<0.003651416627690196){
    if(i29<1.0179111957550049){
     s0+=10508.0;
     s1+=488.0;
    } else {
     s0+=78973.0;
     s1+=594.0;
    }
   } else {
    if(i1<-0.0003916919231414795){
     s0+=20911.0;
     s1+=578.0;
    } else {
     s0+=2110.0;
     s1+=3522.0;
    }
   }
  }
 } else {
  if(i18<0.002427439671009779){
   if(i12<1.0099360942840576){
    if(i41<-1.5667756088078022e-05){
     s0+=5.0;
     s1+=16.0;
    } else {
     s0+=321.0;
     s1+=1.0;
    }
   } else {
    if(i2<1.3709068298339844e-05){
     s0+=52.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=38.0;
    }
   }
  } else {
   if(i16<0.209089994430542){
    if(i59<0.00357243325561285){
     s0+=46.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i7<0.0064681051298975945){
     s0+=50.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=1451.0;
    }
   }
  }
 }
} else {
 if(i30<0.002390485256910324){
  if(i29<1.0773653984069824){
   if(i15<0.0002467811282258481){
    if(i20<0.0007436871528625488){
     s1+=2132.0;
    } else {
     s0+=42.0;
    }
   } else {
    s0+=549.0;
   }
  } else {
   if(i53<8.761882781982422e-06){
    if(i28<1.125709891319275){
     s1+=207.0;
    } else {
     s0+=120.0;
    }
   } else {
    if(i26<0.0010765090119093657){
     s1+=20.0;
    } else {
     s0+=1359.0;
    }
   }
  }
 } else {
  if(i8<0.976269006729126){
   if(i11<0.9703759551048279){
    if(i6<6.210803985595703e-05){
     s0+=6.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   } else {
    if(i49<0.00027688511181622744){
     s1+=9.0;
    } else {
     s0+=53.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<-8.529283513780683e-05){
    if(i16<0.0003789663314819336){
     s0+=9.0;
     s1+=22.0;
    } else {
     s0+=9.0;
     s1+=13256.0;
    }
   } else {
    if(i32<1.4586446285247803){
     s0+=8.0;
     s1+=765.0;
    } else {
     s0+=40.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i8<1.010056495666504){
 if(i22<1.1402404308319092){
  if(i18<0.0017282022163271904){
   if(i1<0.0015336871147155762){
    if(i38<0.000317996833473444){
     s0+=19142.0;
     s1+=631.0;
    } else {
     s0+=71544.0;
     s1+=322.0;
    }
   } else {
    if(i45<-3.5715011108550243e-06){
     s1+=86.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i13<1.0076028108596802){
    if(i16<0.183614581823349){
     s0+=21781.0;
     s1+=3569.0;
    } else {
     s0+=204.0;
     s1+=568.0;
    }
   } else {
    if(i7<0.004016567952930927){
     s0+=816.0;
     s1+=48.0;
    } else {
     s0+=355.0;
     s1+=1434.0;
    }
   }
  }
 } else {
  if(i52<1.0008323192596436){
   if(i0<-5.2621853683376685e-05){
    if(i24<0.8581260442733765){
     s0+=33.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=238.0;
    }
   } else {
    if(i51<-6.435147952288389e-06){
     s1+=1.0;
    } else {
     s0+=692.0;
    }
   }
  } else {
   if(i32<1.1764509677886963){
    s0+=248.0;
   } else {
    if(i25<0.024128150194883347){
     s0+=96.0;
     s1+=57.0;
    } else {
     s0+=133.0;
     s1+=2663.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007058108458295465){
  if(i33<9.074807167053223e-05){
   if(i31<0.0008372549200430512){
    s0+=151.0;
   } else {
    s1+=486.0;
   }
  } else {
   if(i8<1.0132291316986084){
    if(i33<0.000715792179107666){
     s0+=49.0;
     s1+=1418.0;
    } else {
     s0+=177.0;
     s1+=207.0;
    }
   } else {
    if(i7<0.002723000943660736){
     s0+=18.0;
     s1+=220.0;
    } else {
     s0+=7.0;
     s1+=12133.0;
    }
   }
  }
 } else {
  s0+=1302.0;
 }
}
if(i8<1.0100185871124268){
 if(i6<1.901388168334961e-05){
  if(i14<0.23060202598571777){
   if(i31<0.0006979565951041877){
    if(i36<1.1354830265045166){
     s0+=75823.0;
     s1+=346.0;
    } else {
     s0+=2034.0;
     s1+=95.0;
    }
   } else {
    if(i5<0.9979757070541382){
     s0+=23585.0;
     s1+=532.0;
    } else {
     s0+=6800.0;
     s1+=3057.0;
    }
   }
  } else {
   if(i31<0.0007580648525618017){
    s0+=97.0;
   } else {
    if(i46<0.0030346026178449392){
     s0+=22.0;
    } else {
     s0+=5.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i7<0.004386313259601593){
   if(i40<6.202833901625127e-05){
    if(i53<1.2218952178955078e-05){
     s0+=2599.0;
     s1+=202.0;
    } else {
     s0+=2004.0;
     s1+=5.0;
    }
   } else {
    if(i63<-2.656743617990287e-06){
     s1+=61.0;
    } else {
     s0+=70.0;
    }
   }
  } else {
   if(i45<3.0134611733956262e-05){
    if(i52<0.9995666146278381){
     s0+=95.0;
    } else {
     s0+=485.0;
     s1+=3760.0;
    }
   } else {
    if(i29<1.074832797050476){
     s0+=1093.0;
     s1+=302.0;
    } else {
     s0+=150.0;
     s1+=1127.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007026672828942537){
  if(i35<1.6811659336090088){
   if(i2<3.904104232788086e-05){
    if(i24<1.0252636671066284){
     s0+=120.0;
     s1+=8.0;
    } else {
     s0+=49.0;
     s1+=202.0;
    }
   } else {
    if(i1<0.0014133453369140625){
     s0+=163.0;
     s1+=1536.0;
    } else {
     s0+=5.0;
     s1+=12671.0;
    }
   }
  } else {
   s0+=82.0;
  }
 } else {
  if(i13<1.0776736736297607){
   s0+=1289.0;
  } else {
   s1+=6.0;
  }
 }
}
if(i8<1.0102150440216064){
 if(i1<0.0010176301002502441){
  if(i12<1.018277645111084){
   if(i50<0.34414196014404297){
    if(i39<0.012081189081072807){
     s0+=70706.0;
     s1+=918.0;
    } else {
     s0+=42438.0;
     s1+=4549.0;
    }
   } else {
    if(i45<8.062862616498023e-05){
     s0+=137.0;
     s1+=585.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i7<0.006940464489161968){
    if(i36<1.077054500579834){
     s0+=9.0;
     s1+=25.0;
    } else {
     s0+=792.0;
     s1+=111.0;
    }
   } else {
    if(i56<-0.00026206925394944847){
     s0+=12.0;
     s1+=1200.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i65<0.00023246290220413357){
   if(i33<0.00048416852951049805){
    if(i30<0.00116162677295506){
     s1+=290.0;
    } else {
     s0+=36.0;
     s1+=27.0;
    }
   } else {
    if(i30<0.002461793599650264){
     s0+=501.0;
     s1+=10.0;
    } else {
     s0+=25.0;
     s1+=65.0;
    }
   }
  } else {
   if(i8<0.976269006729126){
    if(i11<0.9615174531936646){
     s0+=3.0;
     s1+=64.0;
    } else {
     s0+=42.0;
     s1+=13.0;
    }
   } else {
    if(i44<0.9971941709518433){
     s0+=14.0;
    } else {
     s0+=35.0;
     s1+=2009.0;
    }
   }
  }
 }
} else {
 if(i38<0.0025111204013228416){
  if(i28<1.1180615425109863){
   s1+=2152.0;
  } else {
   if(i37<0.0021092891693115234){
    s0+=1460.0;
   } else {
    if(i58<0.06977826356887817){
     s1+=18.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i6<1.0251998901367188e-05){
   if(i31<0.0011894789058715105){
    if(i8<1.0105013847351074){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=118.0;
    }
   } else {
    if(i2<-3.069639205932617e-05){
     s0+=17.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i7<0.002747216494753957){
    if(i14<0.11362564563751221){
     s0+=46.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=124.0;
    }
   } else {
    if(i7<0.0028057757299393415){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=12101.0;
    }
   }
  }
 }
}
if(i0<-0.00010427374218124896){
 if(i31<0.004009571857750416){
  if(i61<-0.01310458779335022){
   if(i29<1.0390610694885254){
    if(i35<1.5545397996902466){
     s0+=397.0;
     s1+=18.0;
    } else {
     s0+=27.0;
     s1+=26.0;
    }
   } else {
    if(i38<0.015247883275151253){
     s0+=12.0;
     s1+=11.0;
    } else {
     s1+=83.0;
    }
   }
  } else {
   if(i51<-5.658583540935069e-05){
    s0+=89.0;
   } else {
    if(i53<-3.7044286727905273e-05){
     s0+=28.0;
    } else {
     s0+=105.0;
     s1+=14835.0;
    }
   }
  }
 } else {
  s0+=117.0;
 }
} else {
 if(i64<1.026599645614624){
  if(i2<7.289648056030273e-05){
   if(i18<0.0017282022163271904){
    if(i61<-0.0008313357830047607){
     s0+=12503.0;
     s1+=505.0;
    } else {
     s0+=78364.0;
     s1+=446.0;
    }
   } else {
    if(i2<-3.057718276977539e-05){
     s0+=17633.0;
     s1+=637.0;
    } else {
     s0+=4441.0;
     s1+=3624.0;
    }
   }
  } else {
   if(i7<0.003545731073245406){
    if(i51<-1.1081421689596027e-05){
     s0+=986.0;
     s1+=34.0;
    } else {
     s0+=26.0;
     s1+=361.0;
    }
   } else {
    if(i72<1.3362832760321908e-06){
     s0+=140.0;
     s1+=1567.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i31<0.0005954689695499837){
   if(i41<-1.979871558432933e-05){
    if(i49<0.00010961329098790884){
     s0+=11.0;
     s1+=110.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i41<-7.720929716015235e-06){
     s0+=167.0;
     s1+=15.0;
    } else {
     s0+=641.0;
    }
   }
  } else {
   if(i7<0.005927575286477804){
    if(i55<0.0006406760076060891){
     s0+=6.0;
     s1+=104.0;
    } else {
     s0+=725.0;
     s1+=138.0;
    }
   } else {
    if(i52<1.0001111030578613){
     s0+=52.0;
     s1+=22.0;
    } else {
     s0+=52.0;
     s1+=1750.0;
    }
   }
  }
 }
}
if(i8<1.0115323066711426){
 if(i23<0.20052307844161987){
  if(i3<0.00032716989517211914){
   if(i38<0.0010505698155611753){
    if(i39<0.008529016748070717){
     s0+=21024.0;
     s1+=243.0;
    } else {
     s0+=8909.0;
     s1+=1900.0;
    }
   } else {
    if(i62<0.004554818384349346){
     s0+=72342.0;
     s1+=527.0;
    } else {
     s0+=2129.0;
     s1+=320.0;
    }
   }
  } else {
   if(i67<0.0010117695201188326){
    if(i31<0.0006448901258409023){
     s0+=3677.0;
     s1+=128.0;
    } else {
     s0+=5361.0;
     s1+=2429.0;
    }
   } else {
    if(i14<0.0530475378036499){
     s0+=996.0;
     s1+=357.0;
    } else {
     s0+=545.0;
     s1+=2004.0;
    }
   }
  }
 } else {
  if(i26<0.002562624868005514){
   if(i76<0.11570826172828674){
    if(i0<-3.5393721191212535e-05){
     s1+=9.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i73<0.1423587203025818){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=339.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<-3.193875454599038e-05){
    if(i2<-3.1888484954833984e-05){
     s0+=17.0;
     s1+=243.0;
    } else {
     s0+=3.0;
     s1+=2300.0;
    }
   } else {
    if(i78<0.09161055088043213){
     s0+=100.0;
     s1+=64.0;
    } else {
     s0+=26.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i8<1.0144740343093872){
  if(i23<0.19304752349853516){
   if(i54<0.0006849105120636523){
    if(i32<1.117674469947815){
     s1+=615.0;
    } else {
     s0+=68.0;
     s1+=20.0;
    }
   } else {
    if(i25<0.012130258604884148){
     s0+=767.0;
     s1+=42.0;
    } else {
     s0+=5.0;
     s1+=213.0;
    }
   }
  } else {
   if(i46<0.0016776993870735168){
    s0+=11.0;
   } else {
    if(i26<0.002583904657512903){
     s0+=3.0;
     s1+=3.0;
    } else {
     s1+=376.0;
    }
   }
  }
 } else {
  if(i72<4.529989018919878e-05){
   if(i48<-6.766449587303214e-06){
    s0+=30.0;
   } else {
    if(i34<1.1094014644622803){
     s0+=34.0;
     s1+=874.0;
    } else {
     s0+=1.0;
     s1+=11675.0;
    }
   }
  } else {
   s0+=9.0;
  }
 }
}
if(i17<1.0165351629257202){
 if(i25<0.063018299639225){
  if(i6<3.975629806518555e-05){
   if(i8<1.0060269832611084){
    if(i18<0.0016714544035494328){
     s0+=87803.0;
     s1+=814.0;
    } else {
     s0+=22356.0;
     s1+=3619.0;
    }
   } else {
    if(i37<0.0007717633852735162){
     s0+=364.0;
     s1+=774.0;
    } else {
     s0+=2186.0;
     s1+=192.0;
    }
   }
  } else {
   if(i48<-8.533512300346047e-06){
    s0+=485.0;
   } else {
    if(i1<0.001664578914642334){
     s0+=1212.0;
     s1+=866.0;
    } else {
     s0+=62.0;
     s1+=1753.0;
    }
   }
  }
 } else {
  if(i23<0.06421142816543579){
   if(i64<0.9547016620635986){
    if(i78<-0.12379607558250427){
     s0+=7.0;
     s1+=116.0;
    } else {
     s0+=67.0;
     s1+=46.0;
    }
   } else {
    s0+=285.0;
   }
  } else {
   if(i1<-0.0027570724487304688){
    s0+=22.0;
   } else {
    if(i65<0.004732443951070309){
     s0+=14.0;
     s1+=1928.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i41<-1.5071611414896324e-05){
  if(i11<1.0193507671356201){
   if(i53<1.2576580047607422e-05){
    if(i19<-0.000915229320526123){
     s0+=159.0;
     s1+=156.0;
    } else {
     s0+=175.0;
     s1+=1558.0;
    }
   } else {
    if(i35<1.1819071769714355){
     s0+=455.0;
     s1+=14.0;
    } else {
     s0+=87.0;
     s1+=248.0;
    }
   }
  } else {
   if(i2<-3.3736228942871094e-05){
    if(i32<1.236745834350586){
     s0+=71.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i72<6.36356562608853e-05){
     s0+=75.0;
     s1+=12100.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i52<1.0004372596740723){
   s0+=357.0;
  } else {
   if(i30<0.0011083511635661125){
    s1+=38.0;
   } else {
    if(i25<0.03446996957063675){
     s0+=273.0;
     s1+=41.0;
    } else {
     s0+=5.0;
     s1+=57.0;
    }
   }
  }
 }
}
if(i12<1.0167311429977417){
 if(i8<1.0097743272781372){
  if(i3<0.00043386220932006836){
   if(i28<1.1162974834442139){
    if(i32<1.05497145652771){
     s0+=19047.0;
     s1+=115.0;
    } else {
     s0+=9120.0;
     s1+=2389.0;
    }
   } else {
    if(i69<0.5629009008407593){
     s0+=78219.0;
     s1+=735.0;
    } else {
     s0+=358.0;
     s1+=197.0;
    }
   }
  } else {
   if(i41<-3.966402800870128e-05){
    if(i16<0.033939749002456665){
     s0+=385.0;
     s1+=130.0;
    } else {
     s0+=224.0;
     s1+=1856.0;
    }
   } else {
    if(i15<0.00035068689612671733){
     s0+=2363.0;
     s1+=1834.0;
    } else {
     s0+=4115.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i8<1.013359785079956){
   if(i26<0.001081687631085515){
    s1+=606.0;
   } else {
    if(i39<0.029605329036712646){
     s0+=1070.0;
     s1+=31.0;
    } else {
     s0+=41.0;
     s1+=210.0;
    }
   }
  } else {
   if(i53<2.8252601623535156e-05){
    if(i71<-0.0004419088363647461){
     s0+=1.0;
     s1+=1164.0;
    } else {
     s0+=32.0;
     s1+=211.0;
    }
   } else {
    if(i37<0.014344502240419388){
     s0+=16.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i23<0.17522773146629333){
  if(i7<0.0050665270537137985){
   if(i34<1.0873126983642578){
    if(i37<0.0008297947933897376){
     s1+=333.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i49<-2.6036068447865546e-05){
     s0+=31.0;
     s1+=147.0;
    } else {
     s0+=1406.0;
     s1+=61.0;
    }
   }
  } else {
   if(i48<-5.578183845500462e-06){
    if(i63<-3.3138226172013674e-06){
     s1+=1.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i51<-2.5274948711739853e-06){
     s0+=106.0;
     s1+=2151.0;
    } else {
     s0+=57.0;
    }
   }
  }
 } else {
  if(i26<0.002557518891990185){
   if(i18<0.0016018289607018232){
    if(i9<1.0212113857269287){
     s0+=35.0;
     s1+=5.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i48<-3.6366118365549482e-06){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   }
  } else {
   if(i0<-2.9648725103470497e-05){
    if(i1<-0.00011861324310302734){
     s0+=8.0;
     s1+=194.0;
    } else {
     s1+=11391.0;
    }
   } else {
    if(i34<1.1764509677886963){
     s0+=44.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=126.0;
    }
   }
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i16<0.2009410262107849){
  if(i62<0.004481209442019463){
   if(i31<0.0007207337184809148){
    if(i17<1.018898844718933){
     s0+=79542.0;
     s1+=460.0;
    } else {
     s0+=325.0;
     s1+=73.0;
    }
   } else {
    if(i32<1.0903575420379639){
     s0+=3981.0;
     s1+=2980.0;
    } else {
     s0+=26996.0;
     s1+=1459.0;
    }
   }
  } else {
   if(i41<-7.210376679722685e-06){
    if(i14<0.040872395038604736){
     s0+=1640.0;
     s1+=232.0;
    } else {
     s0+=503.0;
     s1+=1053.0;
    }
   } else {
    if(i72<-1.5301450275728712e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=1380.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i32<1.1759499311447144){
   if(i37<0.0021263412199914455){
    if(i64<1.0484521389007568){
     s0+=136.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i41<-1.5471776350750588e-05){
     s1+=16.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i6<1.0192394256591797e-05){
    if(i18<0.0024217404425144196){
     s0+=121.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=333.0;
    }
   } else {
    if(i52<1.0037868022918701){
     s0+=8.0;
     s1+=1088.0;
    } else {
     s0+=21.0;
     s1+=154.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023625660687685013){
  if(i33<0.0005132555961608887){
   if(i59<0.0006922254106029868){
    if(i35<1.1188106536865234){
     s1+=2292.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i34<1.0905089378356934){
     s0+=7.0;
     s1+=42.0;
    } else {
     s0+=119.0;
     s1+=15.0;
    }
   }
  } else {
   s0+=1792.0;
  }
 } else {
  if(i47<0.9055987000465393){
   if(i5<1.005035638809204){
    if(i31<0.001510009402409196){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=41.0;
    }
   } else {
    if(i57<0.00177764892578125){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=259.0;
    }
   }
  } else {
   if(i13<0.9425605535507202){
    if(i27<0.9952182769775391){
     s0+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i8<1.0022032260894775){
     s0+=59.0;
     s1+=1058.0;
    } else {
     s0+=12.0;
     s1+=12511.0;
    }
   }
  }
 }
}
if(i3<0.000588834285736084){
 if(i42<0.20635947585105896){
  if(i13<1.009286880493164){
   if(i31<0.0007107785204425454){
    if(i35<1.0776758193969727){
     s0+=18807.0;
     s1+=311.0;
    } else {
     s0+=59715.0;
     s1+=144.0;
    }
   } else {
    if(i26<0.000921537633985281){
     s0+=2380.0;
     s1+=2417.0;
    } else {
     s0+=27626.0;
     s1+=954.0;
    }
   }
  } else {
   if(i37<0.0010337810963392258){
    if(i47<1.0467008352279663){
     s0+=2.0;
     s1+=240.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i41<-1.7706817743601277e-05){
     s0+=181.0;
     s1+=314.0;
    } else {
     s0+=1410.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i16<0.25102347135543823){
   if(i41<-1.2285770935704932e-05){
    if(i46<0.0017808539560064673){
     s0+=6.0;
    } else {
     s0+=10.0;
     s1+=113.0;
    }
   } else {
    if(i62<-0.006716188043355942){
     s1+=5.0;
    } else {
     s0+=76.0;
     s1+=2.0;
    }
   }
  } else {
   if(i70<0.22152501344680786){
    if(i34<1.6811659336090088){
     s0+=19.0;
     s1+=480.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=31.0;
   }
  }
 }
} else {
 if(i15<0.0007043712539598346){
  if(i2<6.181001663208008e-05){
   if(i40<-0.0002692980342544615){
    if(i23<0.07153233885765076){
     s0+=457.0;
     s1+=174.0;
    } else {
     s0+=145.0;
     s1+=1697.0;
    }
   } else {
    if(i25<0.008177264593541622){
     s0+=1321.0;
     s1+=67.0;
    } else {
     s0+=889.0;
     s1+=647.0;
    }
   }
  } else {
   if(i61<-0.013395249843597412){
    if(i75<0.024831149727106094){
     s0+=34.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=86.0;
    }
   } else {
    if(i23<0.16862380504608154){
     s0+=264.0;
     s1+=4338.0;
    } else {
     s0+=8.0;
     s1+=11952.0;
    }
   }
  }
 } else {
  if(i61<0.01438993215560913){
   s0+=3342.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i14<0.21623772382736206){
  if(i3<0.00031179189682006836){
   if(i18<0.0014794032322242856){
    if(i66<-0.00041353702545166016){
     s0+=13255.0;
     s1+=367.0;
    } else {
     s0+=67905.0;
     s1+=233.0;
    }
   } else {
    if(i21<0.9981343746185303){
     s0+=17093.0;
     s1+=301.0;
    } else {
     s0+=5571.0;
     s1+=2020.0;
    }
   }
  } else {
   if(i0<-4.953949246555567e-05){
    if(i26<0.0010559982620179653){
     s1+=595.0;
    } else {
     s0+=1461.0;
     s1+=1543.0;
    }
   } else {
    if(i40<-0.00018356458167545497){
     s0+=1174.0;
     s1+=707.0;
    } else {
     s0+=7321.0;
     s1+=789.0;
    }
   }
  }
 } else {
  if(i51<-3.950420705223223e-06){
   if(i50<0.040044739842414856){
    if(i10<1.0152018070220947){
     s0+=68.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   } else {
    if(i0<-3.5498534998623654e-05){
     s0+=11.0;
     s1+=1241.0;
    } else {
     s0+=44.0;
     s1+=106.0;
    }
   }
  } else {
   if(i20<-0.0008301436901092529){
    s1+=3.0;
   } else {
    if(i70<0.07185244560241699){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=195.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0002745799720287323){
  if(i15<0.0007059713825583458){
   if(i48<-1.564897502248641e-05){
    s0+=63.0;
   } else {
    if(i8<0.976269006729126){
     s0+=21.0;
     s1+=14.0;
    } else {
     s0+=36.0;
     s1+=13114.0;
    }
   }
  } else {
   s0+=128.0;
  }
 } else {
  if(i34<1.1703872680664062){
   if(i22<1.0773653984069824){
    if(i33<0.0005283951759338379){
     s0+=18.0;
     s1+=1479.0;
    } else {
     s0+=187.0;
     s1+=21.0;
    }
   } else {
    if(i7<0.004865061957389116){
     s0+=1616.0;
     s1+=37.0;
    } else {
     s0+=64.0;
     s1+=142.0;
    }
   }
  } else {
   if(i27<0.9964860677719116){
    if(i18<0.005816570483148098){
     s0+=39.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i20<-8.07642936706543e-05){
     s0+=42.0;
     s1+=309.0;
    } else {
     s1+=1404.0;
    }
   }
  }
 }
}
if(i24<1.0212152004241943){
 if(i6<3.439188003540039e-05){
  if(i29<1.1524195671081543){
   if(i7<0.003654367756098509){
    if(i18<0.001049521379172802){
     s0+=69025.0;
     s1+=202.0;
    } else {
     s0+=19531.0;
     s1+=812.0;
    }
   } else {
    if(i5<0.9989069104194641){
     s0+=21658.0;
     s1+=781.0;
    } else {
     s0+=1765.0;
     s1+=3396.0;
    }
   }
  } else {
   if(i31<0.0008092467905953526){
    s0+=177.0;
   } else {
    if(i46<0.007593662012368441){
     s0+=22.0;
    } else {
     s0+=5.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i15<0.0006725238054059446){
   if(i21<1.007767915725708){
    if(i1<0.000960230827331543){
     s0+=776.0;
     s1+=573.0;
    } else {
     s0+=59.0;
     s1+=906.0;
    }
   } else {
    if(i16<0.002843528985977173){
     s0+=79.0;
     s1+=43.0;
    } else {
     s0+=143.0;
     s1+=3598.0;
    }
   }
  } else {
   if(i46<0.009435955435037613){
    if(i71<-0.007132083177566528){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=1678.0;
    }
   } else {
    if(i69<0.1786867082118988){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i5<1.002331018447876){
  if(i25<0.02771899104118347){
   if(i19<-0.002964615821838379){
    if(i28<1.3794093132019043){
     s0+=3.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i32<1.0936745405197144){
     s0+=9.0;
     s1+=22.0;
    } else {
     s0+=801.0;
     s1+=17.0;
    }
   }
  } else {
   if(i23<0.10476857423782349){
    if(i29<1.0563459396362305){
     s1+=3.0;
    } else {
     s0+=98.0;
     s1+=4.0;
    }
   } else {
    if(i74<0.03345906734466553){
     s0+=85.0;
     s1+=548.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<-6.295067578321323e-05){
   if(i6<-3.820657730102539e-05){
    s0+=14.0;
   } else {
    if(i15<0.0008676672587171197){
     s0+=45.0;
     s1+=12108.0;
    } else {
     s0+=79.0;
    }
   }
  } else {
   if(i32<1.0981338024139404){
    s1+=316.0;
   } else {
    if(i30<0.0025099259801208973){
     s0+=404.0;
     s1+=50.0;
    } else {
     s0+=86.0;
     s1+=349.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i42<0.1927434504032135){
  if(i33<0.00010222196578979492){
   if(i32<1.0905301570892334){
    if(i15<0.0001300393050769344){
     s0+=14680.0;
     s1+=18.0;
    } else {
     s0+=9106.0;
     s1+=916.0;
    }
   } else {
    if(i39<0.2741463780403137){
     s0+=58177.0;
     s1+=188.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i9<1.0162856578826904){
    if(i39<0.18233051896095276){
     s0+=31566.0;
     s1+=3960.0;
    } else {
     s0+=41.0;
     s1+=411.0;
    }
   } else {
    if(i19<-0.0009027719497680664){
     s0+=292.0;
     s1+=54.0;
    } else {
     s0+=304.0;
     s1+=882.0;
    }
   }
  }
 } else {
  if(i7<0.005585376173257828){
   if(i6<1.0907649993896484e-05){
    if(i51<-3.5850175663654227e-06){
     s0+=63.0;
     s1+=18.0;
    } else {
     s0+=214.0;
     s1+=2.0;
    }
   } else {
    if(i33<0.00044482946395874023){
     s0+=10.0;
     s1+=35.0;
    } else {
     s0+=51.0;
    }
   }
  } else {
   if(i35<1.1496198177337646){
    s0+=5.0;
   } else {
    if(i7<0.006770792417228222){
     s0+=8.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=1244.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023654235992580652){
  if(i35<1.116804838180542){
   if(i41<-5.548649642150849e-05){
    s0+=66.0;
   } else {
    if(i33<0.000638812780380249){
     s1+=2305.0;
    } else {
     s0+=87.0;
    }
   }
  } else {
   s0+=1810.0;
  }
 } else {
  if(i9<0.9210795760154724){
   if(i23<0.00185394287109375){
    if(i4<1.006103754043579){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i59<0.0005977483815513551){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=148.0;
    }
   }
  } else {
   if(i28<1.629280686378479){
    if(i36<1.043276309967041){
     s0+=2.0;
    } else {
     s0+=31.0;
     s1+=13387.0;
    }
   } else {
    if(i22<1.1360204219818115){
     s0+=47.0;
     s1+=8.0;
    } else {
     s1+=597.0;
    }
   }
  }
 }
}
if(i5<1.003873586654663){
 if(i16<0.2009410262107849){
  if(i3<0.0002925992012023926){
   if(i30<0.0010565380798652768){
    if(i23<0.053959041833877563){
     s0+=27640.0;
     s1+=1288.0;
    } else {
     s0+=2179.0;
     s1+=798.0;
    }
   } else {
    if(i17<1.021368384361267){
     s0+=73412.0;
     s1+=632.0;
    } else {
     s0+=246.0;
     s1+=80.0;
    }
   }
  } else {
   if(i58<0.023691285401582718){
    if(i40<-0.00016829653759486973){
     s0+=1195.0;
     s1+=617.0;
    } else {
     s0+=5730.0;
     s1+=411.0;
    }
   } else {
    if(i20<-0.0005329251289367676){
     s0+=1101.0;
     s1+=230.0;
    } else {
     s0+=751.0;
     s1+=1434.0;
    }
   }
  }
 } else {
  if(i50<0.0446188747882843){
   if(i58<0.04447536543011665){
    if(i3<0.0007156729698181152){
     s0+=168.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i7<0.006482904776930809){
     s0+=3.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i7<0.006281908601522446){
    if(i51<-3.962558366765734e-06){
     s0+=31.0;
     s1+=29.0;
    } else {
     s0+=95.0;
    }
   } else {
    if(i22<1.0534162521362305){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=1157.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007030675187706947){
  if(i18<0.0009987102821469307){
   if(i19<0.0014345049858093262){
    if(i1<0.001796126365661621){
     s0+=1156.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i5<1.0084095001220703){
     s0+=18.0;
    } else {
     s0+=1.0;
     s1+=287.0;
    }
   }
  } else {
   if(i34<1.1599657535552979){
    if(i30<0.0012233235174790025){
     s1+=2379.0;
    } else {
     s0+=410.0;
     s1+=908.0;
    }
   } else {
    if(i36<1.0789777040481567){
     s0+=26.0;
     s1+=23.0;
    } else {
     s0+=102.0;
     s1+=13855.0;
    }
   }
  }
 } else {
  if(i22<1.2414225339889526){
   s0+=2421.0;
  } else {
   s1+=8.0;
  }
 }
}
if(i2<6.383657455444336e-05){
 if(i0<-7.645013829460368e-05){
  if(i40<-0.00031010594102554023){
   if(i9<0.8980351686477661){
    if(i10<0.9483951330184937){
     s0+=167.0;
     s1+=26.0;
    } else {
     s0+=12.0;
     s1+=32.0;
    }
   } else {
    if(i41<-1.3628075976157561e-05){
     s0+=92.0;
     s1+=2142.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i16<0.09024161100387573){
    if(i7<0.020419098436832428){
     s0+=1143.0;
     s1+=59.0;
    } else {
     s0+=59.0;
     s1+=46.0;
    }
   } else {
    if(i30<0.0020658872090280056){
     s0+=53.0;
    } else {
     s0+=33.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i7<0.003794916905462742){
   if(i17<0.9949272871017456){
    if(i28<1.1162974834442139){
     s0+=4382.0;
     s1+=579.0;
    } else {
     s0+=12607.0;
     s1+=66.0;
    }
   } else {
    if(i55<0.002106832340359688){
     s0+=73060.0;
     s1+=433.0;
    } else {
     s0+=1052.0;
     s1+=88.0;
    }
   }
  } else {
   if(i2<-2.1636486053466797e-05){
    if(i3<-0.00021371245384216309){
     s0+=16734.0;
     s1+=84.0;
    } else {
     s0+=3462.0;
     s1+=580.0;
    }
   } else {
    if(i37<0.00018507117056287825){
     s0+=338.0;
     s1+=2.0;
    } else {
     s0+=1306.0;
     s1+=3540.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007036929600872099){
  if(i41<-0.0001819253811845556){
   s0+=55.0;
  } else {
   if(i53<6.002187728881836e-05){
    if(i23<0.002888798713684082){
     s0+=43.0;
     s1+=39.0;
    } else {
     s0+=251.0;
     s1+=16333.0;
    }
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i38<0.01496485248208046){
   s0+=1703.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i6<2.0205974578857422e-05){
 if(i56<-0.007779062259942293){
  s1+=200.0;
 } else {
  if(i18<0.0016919104382395744){
   if(i66<-0.00042569637298583984){
    if(i38<0.0003363771829754114){
     s0+=1162.0;
     s1+=330.0;
    } else {
     s0+=12865.0;
     s1+=147.0;
    }
   } else {
    if(i18<0.0013943965313956141){
     s0+=69494.0;
     s1+=221.0;
    } else {
     s0+=4846.0;
     s1+=183.0;
    }
   }
  } else {
   if(i27<0.9949139356613159){
    if(i22<1.1230299472808838){
     s0+=15561.0;
     s1+=338.0;
    } else {
     s0+=345.0;
     s1+=352.0;
    }
   } else {
    if(i11<1.0099821090698242){
     s0+=4708.0;
     s1+=2407.0;
    } else {
     s0+=169.0;
     s1+=579.0;
    }
   }
  }
 }
} else {
 if(i28<1.1935834884643555){
  if(i15<0.0002596661797724664){
   if(i18<0.0009497877908870578){
    if(i59<0.000288075563730672){
     s0+=3.0;
     s1+=135.0;
    } else {
     s0+=181.0;
     s1+=5.0;
    }
   } else {
    if(i20<0.0007436871528625488){
     s0+=31.0;
     s1+=2919.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i49<5.540984420804307e-05){
    s0+=4950.0;
   } else {
    if(i8<0.9991316795349121){
     s1+=6.0;
    } else {
     s0+=19.0;
    }
   }
  }
 } else {
  if(i23<0.08321040868759155){
   if(i25<0.03842855244874954){
    if(i45<7.192567409219919e-06){
     s0+=26.0;
     s1+=138.0;
    } else {
     s0+=1388.0;
     s1+=176.0;
    }
   } else {
    if(i31<0.0024966783821582794){
     s0+=56.0;
     s1+=277.0;
    } else {
     s0+=208.0;
     s1+=133.0;
    }
   }
  } else {
   if(i6<3.653764724731445e-05){
    if(i20<-0.00020885467529296875){
     s0+=312.0;
     s1+=447.0;
    } else {
     s0+=24.0;
     s1+=1592.0;
    }
   } else {
    if(i34<1.127323031425476){
     s0+=38.0;
     s1+=7.0;
    } else {
     s0+=192.0;
     s1+=13635.0;
    }
   }
  }
 }
}
if(i5<1.0038647651672363){
 if(i3<0.00032657384872436523){
  if(i0<-9.35440621105954e-05){
   if(i29<1.08205246925354){
    if(i23<0.15099859237670898){
     s0+=331.0;
     s1+=29.0;
    } else {
     s0+=2.0;
     s1+=31.0;
    }
   } else {
    if(i41<-0.00012949903612025082){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=267.0;
    }
   }
  } else {
   if(i7<0.002795882523059845){
    if(i65<0.00018107348296325654){
     s0+=64952.0;
     s1+=196.0;
    } else {
     s0+=10612.0;
     s1+=391.0;
    }
   } else {
    if(i2<-2.7835369110107422e-05){
     s0+=26079.0;
     s1+=652.0;
    } else {
     s0+=2977.0;
     s1+=1780.0;
    }
   }
  }
 } else {
  if(i49<1.4912457118043676e-05){
   if(i66<0.0006886124610900879){
    if(i54<0.0004063543165102601){
     s0+=1882.0;
     s1+=126.0;
    } else {
     s0+=2377.0;
    }
   } else {
    if(i32<1.0980396270751953){
     s0+=12.0;
     s1+=159.0;
    } else {
     s0+=168.0;
    }
   }
  } else {
   if(i39<0.15459348261356354){
    if(i40<-9.554700227454305e-05){
     s0+=1416.0;
     s1+=1791.0;
    } else {
     s0+=1519.0;
     s1+=396.0;
    }
   } else {
    if(i0<-5.1138020353391767e-05){
     s0+=17.0;
     s1+=795.0;
    } else {
     s0+=42.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i7<0.0040141623467206955){
  if(i9<1.0230128765106201){
   if(i15<0.0002066702872980386){
    if(i45<-3.845310857286677e-06){
     s0+=12.0;
     s1+=717.0;
    } else {
     s0+=59.0;
     s1+=30.0;
    }
   } else {
    if(i12<1.0317356586456299){
     s0+=3683.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i49<-2.4115613996400498e-05){
    if(i1<0.0019112229347229004){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=230.0;
    }
   } else {
    if(i21<1.006165862083435){
     s1+=17.0;
    } else {
     s0+=81.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i33<0.0015187263488769531){
   if(i5<1.0072298049926758){
    if(i48<-4.693317350756843e-06){
     s0+=98.0;
     s1+=19.0;
    } else {
     s0+=233.0;
     s1+=3368.0;
    }
   } else {
    if(i15<0.0010591404279693961){
     s0+=11.0;
     s1+=12967.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i4<1.0092506408691406){
    s0+=125.0;
   } else {
    s1+=163.0;
   }
  }
 }
}
if(i21<1.0046367645263672){
 if(i7<0.0076051680371165276){
  if(i4<1.0022220611572266){
   if(i37<0.0010067903203889728){
    if(i32<1.05497145652771){
     s0+=21435.0;
     s1+=156.0;
    } else {
     s0+=10749.0;
     s1+=2366.0;
    }
   } else {
    if(i28<1.0905578136444092){
     s0+=934.0;
     s1+=167.0;
    } else {
     s0+=70982.0;
     s1+=523.0;
    }
   }
  } else {
   if(i20<0.00016671419143676758){
    if(i7<0.004419243894517422){
     s0+=2810.0;
     s1+=99.0;
    } else {
     s0+=392.0;
     s1+=591.0;
    }
   } else {
    if(i18<0.0013496940955519676){
     s0+=23.0;
    } else {
     s0+=28.0;
     s1+=235.0;
    }
   }
  }
 } else {
  if(i2<-2.473592758178711e-05){
   if(i29<1.1014691591262817){
    if(i25<0.05613604933023453){
     s0+=4242.0;
     s1+=171.0;
    } else {
     s0+=159.0;
     s1+=61.0;
    }
   } else {
    if(i7<0.010704193264245987){
     s0+=36.0;
     s1+=49.0;
    } else {
     s0+=8.0;
     s1+=289.0;
    }
   }
  } else {
   if(i1<-0.00012534856796264648){
    if(i14<0.0516645610332489){
     s0+=105.0;
     s1+=23.0;
    } else {
     s0+=48.0;
     s1+=249.0;
    }
   } else {
    if(i48<-7.038324838504195e-06){
     s0+=48.0;
    } else {
     s0+=122.0;
     s1+=2912.0;
    }
   }
  }
 }
} else {
 if(i25<0.009945623576641083){
  if(i2<8.803606033325195e-05){
   if(i54<0.0006979831960052252){
    if(i53<9.119510650634766e-06){
     s0+=47.0;
     s1+=259.0;
    } else {
     s0+=392.0;
     s1+=25.0;
    }
   } else {
    if(i10<1.022719383239746){
     s0+=2087.0;
     s1+=15.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i38<0.001180195016786456){
    if(i2<0.0003204941749572754){
     s1+=1360.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i35<1.1672043800354004){
     s0+=824.0;
     s1+=94.0;
    } else {
     s0+=1.0;
     s1+=701.0;
    }
   }
  }
 } else {
  if(i47<0.9009135961532593){
   if(i29<1.0486375093460083){
    if(i30<0.016766322776675224){
     s0+=213.0;
     s1+=65.0;
    } else {
     s0+=22.0;
     s1+=88.0;
    }
   } else {
    if(i10<0.9568307399749756){
     s0+=15.0;
     s1+=70.0;
    } else {
     s0+=1.0;
     s1+=226.0;
    }
   }
  } else {
   if(i20<-0.0004781484603881836){
    if(i41<-4.520970833254978e-05){
     s0+=5.0;
     s1+=131.0;
    } else {
     s0+=246.0;
     s1+=49.0;
    }
   } else {
    if(i7<0.004852220881730318){
     s0+=243.0;
     s1+=366.0;
    } else {
     s0+=100.0;
     s1+=13189.0;
    }
   }
  }
 }
}
if(i11<1.0136470794677734){
 if(i1<0.0009777545928955078){
  if(i18<0.001735694007948041){
   if(i38<0.000340998696628958){
    if(i24<0.9943045377731323){
     s0+=1528.0;
     s1+=310.0;
    } else {
     s0+=18163.0;
     s1+=368.0;
    }
   } else {
    if(i46<0.0019511304562911391){
     s0+=67546.0;
     s1+=183.0;
    } else {
     s0+=3827.0;
     s1+=177.0;
    }
   }
  } else {
   if(i19<-0.0020992159843444824){
    if(i22<1.1230299472808838){
     s0+=14708.0;
     s1+=499.0;
    } else {
     s0+=347.0;
     s1+=811.0;
    }
   } else {
    if(i58<0.019488610327243805){
     s0+=5997.0;
     s1+=1520.0;
    } else {
     s0+=1597.0;
     s1+=2776.0;
    }
   }
  }
 } else {
  if(i37<0.0019525040406733751){
   if(i49<-1.739961953717284e-05){
    if(i37<0.001074477331712842){
     s1+=555.0;
    } else {
     s0+=311.0;
    }
   } else {
    if(i30<0.0011409437283873558){
     s0+=67.0;
     s1+=275.0;
    } else {
     s0+=1033.0;
    }
   }
  } else {
   if(i16<0.0006538331508636475){
    if(i2<0.0001285076141357422){
     s0+=36.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i44<0.9975509643554688){
     s0+=51.0;
    } else {
     s0+=52.0;
     s1+=2340.0;
    }
   }
  }
 }
} else {
 if(i16<0.17128446698188782){
  if(i8<1.0144740343093872){
   if(i36<1.086911916732788){
    if(i19<-0.0009261369705200195){
     s0+=15.0;
    } else {
     s0+=21.0;
     s1+=836.0;
    }
   } else {
    if(i52<1.0008436441421509){
     s0+=311.0;
     s1+=12.0;
    } else {
     s0+=672.0;
     s1+=335.0;
    }
   }
  } else {
   if(i25<0.0053205834701657295){
    if(i48<-4.9637010306469165e-06){
     s0+=49.0;
    } else {
     s0+=1.0;
     s1+=373.0;
    }
   } else {
    if(i33<0.001865297555923462){
     s0+=3.0;
     s1+=1751.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i11<1.0153992176055908){
   if(i39<0.017945118248462677){
    if(i38<0.0024415976367890835){
     s0+=39.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i7<0.0018798848614096642){
     s0+=2.0;
    } else {
     s1+=113.0;
    }
   }
  } else {
   if(i20<-0.0003598332405090332){
    if(i15<0.00023781845811754465){
     s0+=27.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i51<-3.285312459411216e-06){
     s0+=18.0;
     s1+=11095.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
}
if(i11<1.0135858058929443){
 if(i21<1.0075289011001587){
  if(i6<1.6391277313232422e-05){
   if(i3<0.00021320581436157227){
    if(i23<0.23286330699920654){
     s0+=99197.0;
     s1+=2282.0;
    } else {
     s0+=85.0;
     s1+=200.0;
    }
   } else {
    if(i54<0.00054119061678648){
     s0+=1282.0;
     s1+=624.0;
    } else {
     s0+=6507.0;
     s1+=549.0;
    }
   }
  } else {
   if(i50<0.03642871975898743){
    if(i30<0.0010170100722461939){
     s0+=2080.0;
     s1+=831.0;
    } else {
     s0+=3507.0;
     s1+=80.0;
    }
   } else {
    if(i23<0.06147068738937378){
     s0+=1025.0;
     s1+=227.0;
    } else {
     s0+=769.0;
     s1+=2009.0;
    }
   }
  }
 } else {
  if(i7<0.0028555861208587885){
   if(i46<0.0010717884870246053){
    if(i28<1.1093778610229492){
     s1+=102.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i24<0.9888949394226074){
     s1+=13.0;
    } else {
     s0+=643.0;
     s1+=6.0;
    }
   }
  } else {
   if(i42<0.019642889499664307){
    if(i33<0.0007609128952026367){
     s0+=182.0;
     s1+=80.0;
    } else {
     s0+=5.0;
     s1+=97.0;
    }
   } else {
    if(i7<0.004555858206003904){
     s0+=105.0;
     s1+=199.0;
    } else {
     s0+=120.0;
     s1+=2330.0;
    }
   }
  }
 }
} else {
 if(i18<0.0014018788933753967){
  if(i8<1.016344666481018){
   if(i35<1.0905578136444092){
    s1+=104.0;
   } else {
    if(i67<0.001050896244123578){
     s0+=563.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=4.0;
    }
   }
  } else {
   s1+=380.0;
  }
 } else {
  if(i7<0.002563027199357748){
   if(i51<-9.94920810626354e-06){
    if(i22<1.1793084144592285){
     s0+=267.0;
     s1+=11.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i30<0.00428039813414216){
     s1+=32.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i44<0.9983727931976318){
    if(i65<0.00039724147063679993){
     s0+=78.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i33<0.0017504692077636719){
     s0+=238.0;
     s1+=13998.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i24<1.0213665962219238){
 if(i1<0.0009949803352355957){
  if(i57<0.4629526734352112){
   if(i62<0.004052666015923023){
    if(i31<0.0007108867284841835){
     s0+=78808.0;
     s1+=441.0;
    } else {
     s0+=30568.0;
     s1+=3901.0;
    }
   } else {
    if(i56<-0.0006885537877678871){
     s0+=470.0;
     s1+=711.0;
    } else {
     s0+=3427.0;
     s1+=526.0;
    }
   }
  } else {
   if(i29<1.0800288915634155){
    if(i31<0.003216023789718747){
     s0+=126.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i6<4.941225051879883e-05){
     s1+=489.0;
    } else {
     s0+=12.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i34<1.170654058456421){
   if(i35<1.1174830198287964){
    if(i5<1.0052433013916016){
     s0+=97.0;
     s1+=61.0;
    } else {
     s0+=27.0;
     s1+=1459.0;
    }
   } else {
    if(i46<0.0020402143709361553){
     s0+=1401.0;
     s1+=60.0;
    } else {
     s0+=18.0;
     s1+=164.0;
    }
   }
  } else {
   if(i10<0.9566088318824768){
    if(i49<0.00027161522302776575){
     s1+=92.0;
    } else {
     s0+=43.0;
     s1+=38.0;
    }
   } else {
    if(i22<1.07395601272583){
     s0+=9.0;
     s1+=192.0;
    } else {
     s0+=6.0;
     s1+=2658.0;
    }
   }
  }
 }
} else {
 if(i52<1.000361442565918){
  if(i18<0.005804046988487244){
   if(i54<0.00026850460562855005){
    if(i40<-0.0004102615639567375){
     s0+=15.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i54<0.00031078941537998617){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=512.0;
    }
   }
  } else {
   if(i48<-2.323545231774915e-06){
    s0+=18.0;
   } else {
    s1+=318.0;
   }
  }
 } else {
  if(i17<1.0226242542266846){
   if(i0<-7.488582195946947e-05){
    if(i63<1.5783401977387257e-05){
     s0+=33.0;
     s1+=805.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i46<0.0010734522948041558){
     s0+=5.0;
     s1+=231.0;
    } else {
     s0+=672.0;
     s1+=289.0;
    }
   }
  } else {
   if(i5<1.002791166305542){
    if(i73<0.17117354273796082){
     s0+=186.0;
     s1+=196.0;
    } else {
     s0+=21.0;
     s1+=148.0;
    }
   } else {
    if(i17<1.0402405261993408){
     s0+=93.0;
     s1+=2443.0;
    } else {
     s0+=6.0;
     s1+=8983.0;
    }
   }
  }
 }
}
if(i0<-9.840834536589682e-05){
 if(i49<0.0003154659061692655){
  if(i48<-6.407668479369022e-06){
   s0+=271.0;
  } else {
   if(i12<0.9595982432365417){
    if(i22<1.0475525856018066){
     s0+=38.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=965.0;
    }
   } else {
    if(i9<0.9364452362060547){
     s0+=10.0;
    } else {
     s0+=18.0;
     s1+=14102.0;
    }
   }
  }
 } else {
  if(i10<0.9442013502120972){
   if(i23<0.11791250109672546){
    if(i58<0.30305564403533936){
     s0+=526.0;
     s1+=34.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i18<0.011079501360654831){
     s1+=54.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i31<0.0014544562436640263){
    if(i74<-0.015658676624298096){
     s1+=2.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i22<1.1216212511062622){
     s0+=21.0;
     s1+=40.0;
    } else {
     s0+=9.0;
     s1+=196.0;
    }
   }
  }
 }
} else {
 if(i11<1.013148546218872){
  if(i3<0.0003268122673034668){
   if(i28<1.116391897201538){
    if(i28<1.064497947692871){
     s0+=14533.0;
     s1+=38.0;
    } else {
     s0+=12684.0;
     s1+=2099.0;
    }
   } else {
    if(i14<0.2501950263977051){
     s0+=76716.0;
     s1+=628.0;
    } else {
     s0+=62.0;
     s1+=91.0;
    }
   }
  } else {
   if(i0<-5.863605110789649e-05){
    if(i2<2.205371856689453e-06){
     s0+=451.0;
     s1+=100.0;
    } else {
     s0+=490.0;
     s1+=1141.0;
    }
   } else {
    if(i25<0.009392810985445976){
     s0+=7686.0;
     s1+=706.0;
    } else {
     s0+=1506.0;
     s1+=1582.0;
    }
   }
  }
 } else {
  if(i55<0.0008099752012640238){
   if(i51<-1.3067037798464298e-05){
    s0+=53.0;
   } else {
    if(i46<0.002392896916717291){
     s0+=12.0;
     s1+=1276.0;
    } else {
     s0+=14.0;
     s1+=4.0;
    }
   }
  } else {
   if(i14<0.19180506467819214){
    if(i26<0.0024397787638008595){
     s0+=938.0;
     s1+=101.0;
    } else {
     s0+=241.0;
     s1+=527.0;
    }
   } else {
    if(i52<1.0008838176727295){
     s0+=39.0;
    } else {
     s0+=68.0;
     s1+=697.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i42<0.19100651144981384){
  if(i31<0.000734373927116394){
   if(i55<0.0019168361322954297){
    if(i17<1.0192067623138428){
     s0+=78530.0;
     s1+=404.0;
    } else {
     s0+=146.0;
     s1+=27.0;
    }
   } else {
    if(i43<1.000349998474121){
     s0+=2090.0;
     s1+=4.0;
    } else {
     s0+=943.0;
     s1+=162.0;
    }
   }
  } else {
   if(i3<9.119510650634766e-06){
    if(i30<0.0003135529113933444){
     s0+=73.0;
     s1+=352.0;
    } else {
     s0+=23199.0;
     s1+=398.0;
    }
   } else {
    if(i16<0.04120782017707825){
     s0+=4562.0;
     s1+=963.0;
    } else {
     s0+=4513.0;
     s1+=4320.0;
    }
   }
  }
 } else {
  if(i31<0.0009690760634839535){
   if(i44<1.0007579326629639){
    s0+=203.0;
   } else {
    if(i0<-4.248222103342414e-05){
     s1+=45.0;
    } else {
     s0+=61.0;
     s1+=5.0;
    }
   }
  } else {
   if(i50<0.031521961092948914){
    if(i13<1.0253798961639404){
     s0+=45.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i34<1.1713470220565796){
     s0+=38.0;
     s1+=87.0;
    } else {
     s0+=17.0;
     s1+=1250.0;
    }
   }
  }
 }
} else {
 if(i30<0.0023654235992580652){
  if(i15<0.0002517071843612939){
   if(i76<0.08779633045196533){
    if(i59<0.001756499637849629){
     s0+=12.0;
     s1+=2354.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    s0+=8.0;
   }
  } else {
   s0+=1959.0;
  }
 } else {
  if(i10<0.9566062688827515){
   if(i21<1.0148372650146484){
    if(i65<0.002808771561831236){
     s0+=9.0;
     s1+=24.0;
    } else {
     s0+=32.0;
     s1+=9.0;
    }
   } else {
    if(i72<1.8786425926009542e-07){
     s0+=1.0;
     s1+=127.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i8<0.991499662399292){
    if(i25<0.029223019257187843){
     s0+=16.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=294.0;
    }
   } else {
    if(i42<0.08555057644844055){
     s0+=22.0;
     s1+=1514.0;
    } else {
     s0+=8.0;
     s1+=11974.0;
    }
   }
  }
 }
}
if(i5<1.0037109851837158){
 if(i14<0.23574206233024597){
  if(i39<0.012195032089948654){
   if(i9<0.9913513660430908){
    if(i37<0.0006629590643569827){
     s0+=292.0;
     s1+=174.0;
    } else {
     s0+=2009.0;
     s1+=32.0;
    }
   } else {
    if(i7<0.004074783530086279){
     s0+=60109.0;
     s1+=258.0;
    } else {
     s0+=7061.0;
     s1+=329.0;
    }
   }
  } else {
   if(i4<1.0002384185791016){
    if(i3<-0.00022777915000915527){
     s0+=24520.0;
     s1+=199.0;
    } else {
     s0+=6192.0;
     s1+=622.0;
    }
   } else {
    if(i38<0.00105936243198812){
     s0+=429.0;
     s1+=1771.0;
    } else {
     s0+=11393.0;
     s1+=2329.0;
    }
   }
  }
 } else {
  if(i39<0.05488695204257965){
   if(i6<1.5616416931152344e-05){
    if(i8<1.0150724649429321){
     s0+=75.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i0<-1.961519956239499e-05){
    if(i49<2.8262200430617668e-05){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=906.0;
    }
   } else {
    if(i29<1.1573987007141113){
     s0+=3.0;
     s1+=23.0;
    } else {
     s0+=61.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i6<4.750490188598633e-05){
  if(i25<0.007929765619337559){
   if(i26<0.0009679635986685753){
    if(i34<1.0499491691589355){
     s0+=662.0;
    } else {
     s0+=2.0;
     s1+=838.0;
    }
   } else {
    if(i38<0.003056515008211136){
     s0+=2342.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=107.0;
    }
   }
  } else {
   if(i40<-0.00018856867973227054){
    if(i15<0.0006951484829187393){
     s0+=65.0;
     s1+=3346.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i10<0.9976950883865356){
     s0+=14.0;
     s1+=109.0;
    } else {
     s0+=244.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i37<0.0019821205642074347){
   if(i33<0.0005174875259399414){
    if(i44<1.0009759664535522){
     s1+=1024.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i17<1.0454258918762207){
     s0+=919.0;
     s1+=3.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i34<1.127323031425476){
    if(i78<-0.07118499279022217){
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=2.0;
    }
   } else {
    if(i2<7.623434066772461e-05){
     s0+=66.0;
     s1+=357.0;
    } else {
     s0+=60.0;
     s1+=11632.0;
    }
   }
  }
 }
}
if(i3<0.0005698800086975098){
 if(i25<0.08798976242542267){
  if(i0<-7.150282908696681e-05){
   if(i8<0.9765905737876892){
    if(i73<0.07885465025901794){
     s0+=1005.0;
     s1+=56.0;
    } else {
     s0+=14.0;
     s1+=63.0;
    }
   } else {
    if(i56<-0.0008488028543069959){
     s0+=53.0;
     s1+=570.0;
    } else {
     s0+=442.0;
     s1+=62.0;
    }
   }
  } else {
   if(i33<7.778406143188477e-05){
    if(i38<0.0003260162484366447){
     s0+=15838.0;
     s1+=598.0;
    } else {
     s0+=61014.0;
     s1+=218.0;
    }
   } else {
    if(i38<0.0010463498765602708){
     s0+=4756.0;
     s1+=2058.0;
    } else {
     s0+=26613.0;
     s1+=1050.0;
    }
   }
  }
 } else {
  if(i5<0.9869656562805176){
   if(i45<7.407533121295273e-05){
    s1+=1.0;
   } else {
    s0+=15.0;
   }
  } else {
   s1+=395.0;
  }
 }
} else {
 if(i16<0.1563742458820343){
  if(i7<0.003482930827885866){
   if(i21<1.0107380151748657){
    if(i20<0.00018614530563354492){
     s0+=3759.0;
     s1+=40.0;
    } else {
     s0+=541.0;
     s1+=214.0;
    }
   } else {
    if(i31<0.0009978446178138256){
     s0+=5.0;
     s1+=335.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i27<0.9997892379760742){
    if(i54<0.004882903769612312){
     s0+=938.0;
     s1+=262.0;
    } else {
     s0+=262.0;
     s1+=312.0;
    }
   } else {
    if(i53<1.8656253814697266e-05){
     s0+=487.0;
     s1+=4448.0;
    } else {
     s0+=301.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i28<1.1935834884643555){
   s0+=323.0;
  } else {
   if(i1<2.1457672119140625e-05){
    if(i12<1.0526783466339111){
     s0+=31.0;
     s1+=167.0;
    } else {
     s0+=34.0;
     s1+=11.0;
    }
   } else {
    if(i38<0.0027615013532340527){
     s0+=11.0;
     s1+=99.0;
    } else {
     s0+=9.0;
     s1+=13263.0;
    }
   }
  }
 }
}
if(i21<1.004654884338379){
 if(i11<1.0135915279388428){
  if(i24<1.022216558456421){
   if(i6<1.5795230865478516e-05){
    if(i14<0.24834105372428894){
     s0+=105488.0;
     s1+=3278.0;
    } else {
     s0+=15.0;
     s1+=114.0;
    }
   } else {
    if(i35<1.054492473602295){
     s0+=1847.0;
    } else {
     s0+=3706.0;
     s1+=1827.0;
    }
   }
  } else {
   if(i2<1.1831521987915039e-05){
    if(i49<0.00018235792231280357){
     s0+=493.0;
     s1+=94.0;
    } else {
     s0+=54.0;
     s1+=135.0;
    }
   } else {
    if(i49<3.998598003818188e-06){
     s0+=70.0;
     s1+=15.0;
    } else {
     s0+=19.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i7<0.00502052390947938){
   if(i37<0.0008148668566718698){
    s1+=42.0;
   } else {
    if(i1<0.00031366944313049316){
     s0+=361.0;
     s1+=1.0;
    } else {
     s0+=104.0;
     s1+=50.0;
    }
   }
  } else {
   if(i51<-3.778063182835467e-05){
    s0+=11.0;
   } else {
    if(i31<0.003788445144891739){
     s0+=37.0;
     s1+=2204.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i37<0.001954441424459219){
  if(i42<0.07314810156822205){
   if(i30<0.0012496642302721739){
    if(i37<0.00018561232718639076){
     s0+=317.0;
    } else {
     s0+=16.0;
     s1+=1808.0;
    }
   } else {
    if(i37<0.0009726976859383285){
     s0+=35.0;
     s1+=83.0;
    } else {
     s0+=828.0;
     s1+=18.0;
    }
   }
  } else {
   if(i48<-2.7659316401695833e-06){
    if(i24<1.0351524353027344){
     s0+=2077.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i44<1.0002920627593994){
     s0+=4.0;
     s1+=127.0;
    } else {
     s0+=117.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i16<0.04072105884552002){
   if(i13<0.9877582788467407){
    if(i29<1.0529227256774902){
     s0+=445.0;
     s1+=75.0;
    } else {
     s0+=45.0;
     s1+=55.0;
    }
   } else {
    if(i15<0.00026746405637823045){
     s0+=2.0;
     s1+=58.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   }
  } else {
   if(i2<6.216764450073242e-05){
    if(i54<0.0007873171707615256){
     s0+=53.0;
     s1+=6.0;
    } else {
     s0+=239.0;
     s1+=1116.0;
    }
   } else {
    if(i20<-0.0003358125686645508){
     s0+=44.0;
     s1+=272.0;
    } else {
     s0+=34.0;
     s1+=12634.0;
    }
   }
  }
 }
}
if(i3<0.0005921721458435059){
 if(i16<0.2064477801322937){
  if(i7<0.0036571056116372347){
   if(i18<0.001017840811982751){
    if(i36<1.1354830265045166){
     s0+=66392.0;
     s1+=148.0;
    } else {
     s0+=1444.0;
     s1+=53.0;
    }
   } else {
    if(i26<0.000571496959310025){
     s0+=3062.0;
     s1+=755.0;
    } else {
     s0+=16435.0;
     s1+=117.0;
    }
   }
  } else {
   if(i28<1.1164028644561768){
    if(i33<1.5676021575927734e-05){
     s0+=2420.0;
     s1+=1.0;
    } else {
     s0+=430.0;
     s1+=2344.0;
    }
   } else {
    if(i6<5.424022674560547e-06){
     s0+=17683.0;
     s1+=311.0;
    } else {
     s0+=2001.0;
     s1+=789.0;
    }
   }
  }
 } else {
  if(i54<0.002313499338924885){
   if(i75<-0.005440570879727602){
    if(i18<0.003345286939293146){
     s0+=89.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   } else {
    if(i0<-8.238404006988276e-06){
     s0+=1.0;
     s1+=76.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i37<0.011458894237875938){
    if(i52<1.000819444656372){
     s0+=95.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=162.0;
    }
   } else {
    if(i38<0.009944325312972069){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=436.0;
    }
   }
  }
 }
} else {
 if(i40<-0.000279406551271677){
  if(i1<0.00013768672943115234){
   if(i55<0.002041609026491642){
    if(i41<-5.29075987287797e-05){
     s1+=5.0;
    } else {
     s0+=227.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.8644116520881653){
     s0+=61.0;
     s1+=31.0;
    } else {
     s0+=72.0;
     s1+=353.0;
    }
   }
  } else {
   if(i7<0.0043731676414608955){
    if(i10<1.022216558456421){
     s0+=253.0;
     s1+=46.0;
    } else {
     s0+=6.0;
     s1+=167.0;
    }
   } else {
    if(i44<0.9984742403030396){
     s0+=101.0;
    } else {
     s0+=105.0;
     s1+=14303.0;
    }
   }
  }
 } else {
  if(i3<0.0012683868408203125){
   if(i1<0.0012806057929992676){
    if(i7<0.003633196000009775){
     s0+=3234.0;
     s1+=5.0;
    } else {
     s0+=1104.0;
     s1+=910.0;
    }
   } else {
    if(i38<0.0012675854377448559){
     s1+=399.0;
    } else {
     s0+=159.0;
     s1+=51.0;
    }
   }
  } else {
   if(i27<1.0141756534576416){
    if(i66<1.0132789611816406e-06){
     s0+=351.0;
     s1+=981.0;
    } else {
     s0+=750.0;
     s1+=228.0;
    }
   } else {
    if(i53<2.8312206268310547e-05){
     s0+=7.0;
     s1+=1637.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i22<1.1279573440551758){
 if(i2<6.514787673950195e-05){
  if(i25<0.006794269196689129){
   if(i8<0.9953261613845825){
    if(i54<0.00037373637314885855){
     s0+=699.0;
     s1+=215.0;
    } else {
     s0+=2111.0;
     s1+=34.0;
    }
   } else {
    if(i8<1.0060383081436157){
     s0+=65370.0;
     s1+=259.0;
    } else {
     s0+=1821.0;
     s1+=156.0;
    }
   }
  } else {
   if(i4<1.000169038772583){
    if(i4<0.9994032382965088){
     s0+=28910.0;
     s1+=112.0;
    } else {
     s0+=4473.0;
     s1+=531.0;
    }
   } else {
    if(i26<0.0009883670136332512){
     s0+=347.0;
     s1+=2678.0;
    } else {
     s0+=8347.0;
     s1+=1533.0;
    }
   }
  }
 } else {
  if(i13<1.0188767910003662){
   if(i53<1.2576580047607422e-05){
    if(i55<0.0008179399883374572){
     s0+=12.0;
     s1+=1443.0;
    } else {
     s0+=357.0;
     s1+=686.0;
    }
   } else {
    if(i26<0.0024396111257374287){
     s0+=1436.0;
     s1+=19.0;
    } else {
     s0+=32.0;
     s1+=593.0;
    }
   }
  } else {
   if(i18<0.0009753367630764842){
    if(i45<-1.4624360119341873e-05){
     s0+=6.0;
     s1+=54.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i63<1.4430378541874234e-05){
     s0+=17.0;
     s1+=2401.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i0<-4.1189858166035265e-05){
  if(i51<-3.0128544494800735e-06){
   if(i14<1.722574234008789e-05){
    if(i4<1.00556218624115){
     s0+=99.0;
     s1+=11.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i28<1.175166130065918){
     s0+=72.0;
    } else {
     s0+=110.0;
     s1+=13175.0;
    }
   }
  } else {
   if(i50<0.14309608936309814){
    s0+=163.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i31<0.0009776074439287186){
   if(i56<0.002219768241047859){
    if(i34<1.1355493068695068){
     s0+=312.0;
     s1+=14.0;
    } else {
     s0+=1442.0;
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i58<0.057374581694602966){
    if(i5<1.00217866897583){
     s0+=276.0;
     s1+=16.0;
    } else {
     s0+=70.0;
     s1+=62.0;
    }
   } else {
    if(i15<0.00011927136802114546){
     s0+=18.0;
    } else {
     s0+=41.0;
     s1+=270.0;
    }
   }
  }
 }
}
if(i4<1.002634048461914){
 if(i9<1.0162707567214966){
  if(i3<0.0002810359001159668){
   if(i30<0.0010565273696556687){
    if(i18<0.001592798507772386){
     s0+=28247.0;
     s1+=579.0;
    } else {
     s0+=1130.0;
     s1+=1472.0;
    }
   } else {
    if(i0<-0.00011577340046642348){
     s0+=123.0;
     s1+=122.0;
    } else {
     s0+=72462.0;
     s1+=610.0;
    }
   }
  } else {
   if(i39<0.014017729088664055){
    if(i68<1.0015147924423218){
     s0+=5602.0;
     s1+=238.0;
    } else {
     s0+=407.0;
     s1+=226.0;
    }
   } else {
    if(i34<1.0904107093811035){
     s0+=163.0;
     s1+=649.0;
    } else {
     s0+=1453.0;
     s1+=601.0;
    }
   }
  }
 } else {
  if(i41<-1.0621559340506792e-05){
   if(i68<1.0032882690429688){
    if(i56<-0.0009562115301378071){
     s0+=92.0;
     s1+=1079.0;
    } else {
     s0+=94.0;
     s1+=57.0;
    }
   } else {
    if(i42<0.20602962374687195){
     s0+=109.0;
     s1+=1.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i49<0.00015451962826773524){
    if(i15<0.0001946423144545406){
     s0+=446.0;
     s1+=2.0;
    } else {
     s0+=165.0;
     s1+=16.0;
    }
   } else {
    if(i71<0.00530630350112915){
     s0+=1.0;
    } else {
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0002527320757508278){
  if(i0<-4.2171941458946094e-05){
   if(i17<0.9068558216094971){
    if(i7<0.02273709699511528){
     s0+=107.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=44.0;
    }
   } else {
    if(i48<-6.097140612837393e-06){
     s0+=105.0;
     s1+=9.0;
    } else {
     s0+=217.0;
     s1+=14392.0;
    }
   }
  } else {
   if(i2<2.9802322387695312e-05){
    if(i39<0.07223743200302124){
     s0+=562.0;
     s1+=16.0;
    } else {
     s0+=44.0;
     s1+=45.0;
    }
   } else {
    if(i31<0.0006957652512937784){
     s0+=45.0;
    } else {
     s0+=35.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i45<-8.763368896325119e-06){
   if(i48<-6.674582891719183e-06){
    s0+=147.0;
   } else {
    if(i31<0.0011626679915934801){
     s0+=13.0;
     s1+=1985.0;
    } else {
     s0+=87.0;
     s1+=366.0;
    }
   }
  } else {
   if(i16<0.1791059374809265){
    if(i52<1.0024583339691162){
     s0+=879.0;
     s1+=603.0;
    } else {
     s0+=3690.0;
     s1+=472.0;
    }
   } else {
    if(i49<1.691424949967768e-05){
     s0+=76.0;
     s1+=23.0;
    } else {
     s0+=28.0;
     s1+=361.0;
    }
   }
  }
 }
}
if(i9<1.0162649154663086){
 if(i6<3.427267074584961e-05){
  if(i69<0.5646582245826721){
   if(i5<1.0026187896728516){
    if(i0<-0.00010462140926392749){
     s0+=296.0;
     s1+=191.0;
    } else {
     s0+=106437.0;
     s1+=3540.0;
    }
   } else {
    if(i25<0.007652292959392071){
     s0+=4680.0;
     s1+=296.0;
    } else {
     s0+=281.0;
     s1+=871.0;
    }
   }
  } else {
   if(i14<0.05326381325721741){
    if(i25<0.0719677284359932){
     s0+=343.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i25<0.03700493276119232){
     s0+=39.0;
     s1+=9.0;
    } else {
     s1+=545.0;
    }
   }
  }
 } else {
  if(i18<0.001952476566657424){
   if(i19<0.001243293285369873){
    if(i1<0.0014002323150634766){
     s0+=1083.0;
    } else {
     s0+=87.0;
     s1+=30.0;
    }
   } else {
    if(i61<0.0005155801773071289){
     s0+=22.0;
     s1+=485.0;
    } else {
     s0+=98.0;
     s1+=26.0;
    }
   }
  } else {
   if(i33<0.001458972692489624){
    if(i15<0.0007051313878037035){
     s0+=764.0;
     s1+=3667.0;
    } else {
     s0+=142.0;
    }
   } else {
    if(i38<0.006858291104435921){
     s0+=344.0;
    } else {
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i0<-6.166881939861923e-05){
  if(i53<3.0547380447387695e-05){
   if(i7<0.004952743649482727){
    if(i72<8.97270297173236e-07){
     s0+=136.0;
     s1+=637.0;
    } else {
     s0+=73.0;
     s1+=3.0;
    }
   } else {
    if(i20<-0.000886768102645874){
     s0+=6.0;
    } else {
     s0+=57.0;
     s1+=13050.0;
    }
   }
  } else {
   if(i49<-0.0001844760263338685){
    s1+=2.0;
   } else {
    s0+=49.0;
   }
  }
 } else {
  if(i59<0.00033256312599405646){
   if(i34<1.0905578136444092){
    s1+=443.0;
   } else {
    if(i35<1.1197539567947388){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=194.0;
     s1+=13.0;
    }
   }
  } else {
   if(i30<0.0018741234671324492){
    if(i55<0.000848281430080533){
     s0+=2.0;
     s1+=81.0;
    } else {
     s0+=775.0;
     s1+=25.0;
    }
   } else {
    if(i6<1.4901161193847656e-05){
     s0+=326.0;
     s1+=54.0;
    } else {
     s0+=188.0;
     s1+=355.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i24<1.0242466926574707){
  if(i25<0.06376688182353973){
   if(i4<1.002185583114624){
    if(i3<0.00019794702529907227){
     s0+=96741.0;
     s1+=2143.0;
    } else {
     s0+=10520.0;
     s1+=1591.0;
    }
   } else {
    if(i7<0.0038664082530885935){
     s0+=4113.0;
     s1+=60.0;
    } else {
     s0+=1747.0;
     s1+=1770.0;
    }
   }
  } else {
   if(i5<0.987080454826355){
    if(i29<1.0986816883087158){
     s0+=283.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i29<0.9624660611152649){
     s0+=55.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=799.0;
    }
   }
  }
 } else {
  if(i18<0.0013714497908949852){
   if(i26<0.0027429452165961266){
    if(i24<1.0245693922042847){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=443.0;
     s1+=3.0;
    }
   } else {
    if(i32<1.238278865814209){
     s1+=9.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i8<1.0026819705963135){
    if(i14<0.21974951028823853){
     s0+=289.0;
     s1+=107.0;
    } else {
     s0+=12.0;
     s1+=370.0;
    }
   } else {
    if(i0<-3.0354787668329664e-05){
     s0+=47.0;
     s1+=1116.0;
    } else {
     s0+=56.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i30<0.0012720314553007483){
   if(i34<1.0451856851577759){
    s0+=65.0;
   } else {
    if(i28<1.116804838180542){
     s1+=2173.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i27<1.0152833461761475){
    if(i26<0.0010609047021716833){
     s1+=6.0;
    } else {
     s0+=1889.0;
    }
   } else {
    if(i45<4.66812298327568e-06){
     s1+=108.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i38<0.0016570297302678227){
   s0+=10.0;
  } else {
   if(i9<0.9037518501281738){
    if(i23<0.01851099729537964){
     s0+=28.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=90.0;
    }
   } else {
    if(i20<-0.00018805265426635742){
     s0+=52.0;
     s1+=473.0;
    } else {
     s0+=14.0;
     s1+=13497.0;
    }
   }
  }
 }
}
if(i2<6.514787673950195e-05){
 if(i0<-7.624097634106874e-05){
  if(i56<-0.0007679101545363665){
   if(i22<1.0416418313980103){
    if(i53<1.6808509826660156e-05){
     s0+=66.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i64<0.8664984107017517){
     s0+=55.0;
     s1+=79.0;
    } else {
     s0+=102.0;
     s1+=2118.0;
    }
   }
  } else {
   if(i29<1.0730036497116089){
    if(i47<0.7081543207168579){
     s0+=8.0;
     s1+=19.0;
    } else {
     s0+=1262.0;
     s1+=150.0;
    }
   } else {
    if(i7<0.008894775062799454){
     s0+=77.0;
     s1+=27.0;
    } else {
     s0+=18.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i33<8.469820022583008e-05){
   if(i31<0.0006123223574832082){
    if(i27<0.9973012208938599){
     s0+=16932.0;
     s1+=134.0;
    } else {
     s0+=42097.0;
     s1+=10.0;
    }
   } else {
    if(i26<0.0002786553814075887){
     s0+=482.0;
     s1+=495.0;
    } else {
     s0+=18858.0;
     s1+=325.0;
    }
   }
  } else {
   if(i38<0.001045349519699812){
    if(i58<0.012226132676005363){
     s0+=5599.0;
     s1+=886.0;
    } else {
     s0+=439.0;
     s1+=1730.0;
    }
   } else {
    if(i35<1.0964338779449463){
     s1+=296.0;
    } else {
     s0+=28547.0;
     s1+=1608.0;
    }
   }
  }
 }
} else {
 if(i37<0.002031093230471015){
  if(i60<1.048647403717041){
   if(i53<1.2576580047607422e-05){
    if(i44<0.9997743368148804){
     s0+=28.0;
    } else {
     s0+=27.0;
     s1+=1557.0;
    }
   } else {
    if(i48<-3.0494475140585564e-06){
     s0+=286.0;
     s1+=18.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i7<0.004931914620101452){
    if(i49<-2.8359139832900837e-05){
     s0+=72.0;
     s1+=108.0;
    } else {
     s0+=1333.0;
     s1+=29.0;
    }
   } else {
    if(i53<1.6987323760986328e-05){
     s0+=14.0;
     s1+=536.0;
    } else {
     s0+=67.0;
    }
   }
  }
 } else {
  if(i30<0.0023926454596221447){
   if(i8<1.0117955207824707){
    s0+=33.0;
   } else {
    s1+=13.0;
   }
  } else {
   if(i19<-0.002286672592163086){
    if(i44<1.0006808042526245){
     s0+=56.0;
     s1+=48.0;
    } else {
     s0+=19.0;
     s1+=274.0;
    }
   } else {
    if(i31<0.0003432622761465609){
     s0+=13.0;
     s1+=250.0;
    } else {
     s0+=21.0;
     s1+=13455.0;
    }
   }
  }
 }
}
if(i21<1.004513144493103){
 if(i11<1.0135858058929443){
  if(i14<0.22430413961410522){
   if(i13<1.0092172622680664){
    if(i0<-9.148749086307362e-05){
     s0+=573.0;
     s1+=566.0;
    } else {
     s0+=109522.0;
     s1+=3846.0;
    }
   } else {
    if(i34<1.0904107093811035){
     s0+=11.0;
     s1+=446.0;
    } else {
     s0+=1461.0;
     s1+=260.0;
    }
   }
  } else {
   if(i7<0.005594629794359207){
    if(i10<1.0067251920700073){
     s0+=140.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i41<-4.478765731619205e-06){
     s0+=3.0;
     s1+=531.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i5<1.00118088722229){
   if(i26<0.007457658648490906){
    if(i34<1.0887749195098877){
     s1+=38.0;
    } else {
     s0+=311.0;
     s1+=25.0;
    }
   } else {
    s1+=79.0;
   }
  } else {
   if(i15<0.0010622467380017042){
    if(i34<1.7041046619415283){
     s0+=97.0;
     s1+=1966.0;
    } else {
     s0+=41.0;
    }
   } else {
    s0+=85.0;
   }
  }
 }
} else {
 if(i7<0.0039363764226436615){
  if(i30<0.0012089407537132502){
   if(i28<1.0610902309417725){
    s0+=357.0;
   } else {
    if(i4<1.0023598670959473){
     s0+=22.0;
    } else {
     s1+=639.0;
    }
   }
  } else {
   if(i1<0.0025175809860229492){
    if(i66<-0.001539766788482666){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=2994.0;
     s1+=10.0;
    }
   } else {
    s1+=303.0;
   }
  }
 } else {
  if(i10<0.9653201699256897){
   if(i22<1.0476930141448975){
    if(i6<6.568431854248047e-05){
     s0+=334.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    if(i41<-3.953843406634405e-05){
     s0+=102.0;
     s1+=393.0;
    } else {
     s0+=98.0;
     s1+=46.0;
    }
   }
  } else {
   if(i2<6.669759750366211e-05){
    if(i30<0.002683409955352545){
     s0+=181.0;
     s1+=196.0;
    } else {
     s0+=165.0;
     s1+=990.0;
    }
   } else {
    if(i26<0.0022996808402240276){
     s0+=136.0;
     s1+=1325.0;
    } else {
     s0+=42.0;
     s1+=12443.0;
    }
   }
  }
 }
}
if(i13<1.0153777599334717){
 if(i25<0.0610232800245285){
  if(i39<0.01344755943864584){
   if(i65<0.00022739474661648273){
    if(i8<1.0066077709197998){
     s0+=72566.0;
     s1+=655.0;
    } else {
     s0+=2405.0;
     s1+=848.0;
    }
   } else {
    if(i8<1.0051158666610718){
     s0+=1199.0;
     s1+=308.0;
    } else {
     s0+=9.0;
     s1+=84.0;
    }
   }
  } else {
   if(i5<1.0023431777954102){
    if(i21<0.9981718063354492){
     s0+=24836.0;
     s1+=417.0;
    } else {
     s0+=12710.0;
     s1+=2843.0;
    }
   } else {
    if(i41<-1.562750003358815e-05){
     s0+=916.0;
     s1+=2701.0;
    } else {
     s0+=665.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i0<-4.9690715968608856e-05){
   if(i66<-0.00975826382637024){
    if(i69<0.2746989130973816){
     s0+=50.0;
     s1+=8.0;
    } else {
     s0+=11.0;
     s1+=29.0;
    }
   } else {
    if(i23<0.00989621877670288){
     s0+=11.0;
     s1+=32.0;
    } else {
     s0+=22.0;
     s1+=2235.0;
    }
   }
  } else {
   if(i11<0.9501907825469971){
    if(i52<1.0014617443084717){
     s0+=11.0;
    } else {
     s0+=4.0;
     s1+=72.0;
    }
   } else {
    if(i41<-3.7809149944223464e-05){
     s1+=3.0;
    } else {
     s0+=349.0;
    }
   }
  }
 }
} else {
 if(i2<2.0742416381835938e-05){
  if(i25<0.03427857905626297){
   if(i5<1.0010286569595337){
    if(i8<0.992988109588623){
     s1+=6.0;
    } else {
     s0+=292.0;
     s1+=1.0;
    }
   } else {
    if(i52<1.002622127532959){
     s0+=45.0;
     s1+=61.0;
    } else {
     s0+=69.0;
    }
   }
  } else {
   if(i58<0.04935001954436302){
    if(i3<0.0006597638130187988){
     s1+=21.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i53<1.3530254364013672e-05){
     s1+=167.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i0<-7.12929613655433e-05){
   if(i13<1.017343521118164){
    if(i31<0.0025949464179575443){
     s0+=13.0;
     s1+=355.0;
    } else {
     s0+=34.0;
     s1+=15.0;
    }
   } else {
    if(i53<-3.3974647521972656e-05){
     s0+=9.0;
    } else {
     s0+=30.0;
     s1+=12409.0;
    }
   }
  } else {
   if(i18<0.001908829784952104){
    if(i35<1.0945069789886475){
     s1+=84.0;
    } else {
     s0+=260.0;
     s1+=3.0;
    }
   } else {
    if(i7<0.003062278963625431){
     s0+=54.0;
    } else {
     s0+=30.0;
     s1+=747.0;
    }
   }
  }
 }
}
if(i2<6.395578384399414e-05){
 if(i29<1.1279923915863037){
  if(i18<0.0017282022163271904){
   if(i18<0.0012672654120251536){
    if(i46<0.0020867716521024704){
     s0+=78093.0;
     s1+=308.0;
    } else {
     s0+=2199.0;
     s1+=66.0;
    }
   } else {
    if(i43<0.9990806579589844){
     s0+=6633.0;
     s1+=35.0;
    } else {
     s0+=3576.0;
     s1+=558.0;
    }
   }
  } else {
   if(i30<0.001209023641422391){
    if(i39<0.008045224472880363){
     s0+=1745.0;
     s1+=217.0;
    } else {
     s0+=772.0;
     s1+=2823.0;
    }
   } else {
    if(i2<4.231929779052734e-06){
     s0+=18986.0;
     s1+=840.0;
    } else {
     s0+=941.0;
     s1+=1202.0;
    }
   }
  }
 } else {
  if(i35<1.1759499311447144){
   s0+=588.0;
  } else {
   if(i18<0.0015956512652337551){
    if(i30<0.002477817703038454){
     s0+=146.0;
     s1+=26.0;
    } else {
     s0+=387.0;
     s1+=2.0;
    }
   } else {
    if(i58<0.048891581594944){
     s0+=149.0;
     s1+=240.0;
    } else {
     s0+=42.0;
     s1+=1622.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007056489121168852){
  if(i53<5.91278076171875e-05){
   if(i20<-0.00033080577850341797){
    if(i51<-1.7983229554374702e-05){
     s0+=20.0;
     s1+=275.0;
    } else {
     s0+=101.0;
     s1+=86.0;
    }
   } else {
    if(i7<0.004372354596853256){
     s0+=198.0;
     s1+=1218.0;
    } else {
     s0+=17.0;
     s1+=14843.0;
    }
   }
  } else {
   s0+=68.0;
  }
 } else {
  s0+=1838.0;
 }
}
if(i8<1.010335087776184){
 if(i23<0.19998279213905334){
  if(i33<0.00011366605758666992){
   if(i66<-0.0004983842372894287){
    if(i31<0.0005749322008341551){
     s0+=8926.0;
     s1+=29.0;
    } else {
     s0+=5354.0;
     s1+=639.0;
    }
   } else {
    if(i28<1.0905578136444092){
     s0+=16472.0;
     s1+=544.0;
    } else {
     s0+=53137.0;
     s1+=83.0;
    }
   }
  } else {
   if(i18<0.0017412840388715267){
    if(i21<1.0089553594589233){
     s0+=16739.0;
     s1+=403.0;
    } else {
     s0+=32.0;
     s1+=101.0;
    }
   } else {
    if(i2<-2.4497509002685547e-05){
     s0+=10113.0;
     s1+=501.0;
    } else {
     s0+=3809.0;
     s1+=5003.0;
    }
   }
  }
 } else {
  if(i26<0.002562624868005514){
   if(i63<3.946434844692703e-06){
    if(i76<0.11875268816947937){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=249.0;
    }
   } else {
    if(i27<0.9991359710693359){
     s0+=73.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=11.0;
    }
   }
  } else {
   if(i46<0.0019872640259563923){
    if(i65<0.00022790303046349436){
     s0+=47.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i46<0.004283207468688488){
     s0+=45.0;
     s1+=132.0;
    } else {
     s0+=48.0;
     s1+=2539.0;
    }
   }
  }
 }
} else {
 if(i0<-7.285761967068538e-05){
  if(i32<1.1401281356811523){
   if(i48<-3.2713928703742567e-06){
    if(i46<0.000773669162299484){
     s1+=1.0;
    } else {
     s0+=244.0;
    }
   } else {
    s1+=1252.0;
   }
  } else {
   if(i51<-3.5070956982963253e-06){
    if(i50<0.009901612065732479){
     s0+=1.0;
     s1+=122.0;
    } else {
     s1+=11788.0;
    }
   } else {
    s0+=14.0;
   }
  }
 } else {
  if(i32<1.0987343788146973){
   s1+=788.0;
  } else {
   if(i33<0.0007427334785461426){
    if(i6<1.2993812561035156e-05){
     s0+=150.0;
    } else {
     s0+=58.0;
     s1+=322.0;
    }
   } else {
    if(i5<1.0104961395263672){
     s0+=1052.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i4<1.0026264190673828){
 if(i24<1.0236082077026367){
  if(i3<0.000280916690826416){
   if(i28<1.116391897201538){
    if(i34<1.0434579849243164){
     s0+=17114.0;
     s1+=291.0;
    } else {
     s0+=9979.0;
     s1+=1669.0;
    }
   } else {
    if(i7<0.019741516560316086){
     s0+=75249.0;
     s1+=573.0;
    } else {
     s0+=44.0;
     s1+=133.0;
    }
   }
  } else {
   if(i28<1.1162974834442139){
    if(i37<0.00019814888946712017){
     s0+=1921.0;
    } else {
     s0+=579.0;
     s1+=1221.0;
    }
   } else {
    if(i40<-0.0005269268294796348){
     s0+=95.0;
     s1+=309.0;
    } else {
     s0+=5125.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i12<1.0180995464324951){
   if(i18<0.0016462116036564112){
    if(i74<-0.004190981388092041){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=200.0;
    }
   } else {
    if(i20<-0.00011131167411804199){
     s0+=86.0;
     s1+=20.0;
    } else {
     s0+=13.0;
     s1+=52.0;
    }
   }
  } else {
   if(i41<-7.942683623696212e-06){
    if(i7<0.004800268914550543){
     s0+=70.0;
     s1+=19.0;
    } else {
     s0+=15.0;
     s1+=899.0;
    }
   } else {
    if(i31<0.0010183840058743954){
     s0+=212.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i34<1.1714401245117188){
  if(i53<9.357929229736328e-06){
   if(i2<1.5914440155029297e-05){
    if(i7<0.005296004470437765){
     s0+=357.0;
     s1+=15.0;
    } else {
     s0+=48.0;
     s1+=40.0;
    }
   } else {
    if(i72<1.3709068298339844e-06){
     s0+=185.0;
     s1+=2732.0;
    } else {
     s0+=55.0;
     s1+=4.0;
    }
   }
  } else {
   if(i25<0.015731658786535263){
    if(i15<0.0002034635399468243){
     s0+=247.0;
     s1+=295.0;
    } else {
     s0+=3659.0;
     s1+=43.0;
    }
   } else {
    if(i68<1.0049357414245605){
     s0+=71.0;
     s1+=378.0;
    } else {
     s0+=219.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i22<1.0743002891540527){
   if(i63<-1.8115379134542309e-06){
    if(i44<1.000929355621338){
     s0+=130.0;
     s1+=17.0;
    } else {
     s0+=46.0;
     s1+=260.0;
    }
   } else {
    if(i26<0.013649772852659225){
     s0+=537.0;
     s1+=72.0;
    } else {
     s0+=8.0;
     s1+=28.0;
    }
   }
  } else {
   if(i10<0.9647307991981506){
    if(i5<1.0044326782226562){
     s0+=122.0;
     s1+=204.0;
    } else {
     s0+=6.0;
     s1+=171.0;
    }
   } else {
    if(i28<1.1935834884643555){
     s0+=25.0;
    } else {
     s0+=191.0;
     s1+=14518.0;
    }
   }
  }
 }
}
if(i9<1.017055869102478){
 if(i3<0.0010644793510437012){
  if(i7<0.003994446713477373){
   if(i36<1.0614967346191406){
    if(i7<0.002785234712064266){
     s0+=30657.0;
     s1+=471.0;
    } else {
     s0+=5493.0;
     s1+=636.0;
    }
   } else {
    if(i1<0.0014159679412841797){
     s0+=56364.0;
     s1+=233.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i1<-0.0003865361213684082){
    if(i36<1.1287857294082642){
     s0+=16999.0;
     s1+=401.0;
    } else {
     s0+=2479.0;
     s1+=518.0;
    }
   } else {
    if(i52<1.0000247955322266){
     s0+=739.0;
     s1+=72.0;
    } else {
     s0+=761.0;
     s1+=3644.0;
    }
   }
  }
 } else {
  if(i15<0.000704434234648943){
   if(i24<0.9186984300613403){
    if(i13<0.9349568486213684){
     s0+=121.0;
     s1+=115.0;
    } else {
     s0+=47.0;
     s1+=249.0;
    }
   } else {
    if(i27<1.0003345012664795){
     s0+=301.0;
     s1+=556.0;
    } else {
     s0+=192.0;
     s1+=3047.0;
    }
   }
  } else {
   s0+=1109.0;
  }
 }
} else {
 if(i6<8.046627044677734e-06){
  if(i13<1.048990249633789){
   if(i0<-7.569642912130803e-05){
    if(i71<0.0033509135246276855){
     s0+=19.0;
     s1+=1.0;
    } else {
     s1+=111.0;
    }
   } else {
    if(i18<0.0025732675567269325){
     s0+=602.0;
     s1+=22.0;
    } else {
     s0+=56.0;
     s1+=31.0;
    }
   }
  } else {
   s1+=81.0;
  }
 } else {
  if(i14<0.17652156949043274){
   if(i7<0.0031973575241863728){
    if(i30<0.0012602420756593347){
     s0+=5.0;
     s1+=165.0;
    } else {
     s0+=574.0;
     s1+=52.0;
    }
   } else {
    if(i20<-0.0001766681671142578){
     s0+=109.0;
     s1+=8.0;
    } else {
     s0+=89.0;
     s1+=2413.0;
    }
   }
  } else {
   if(i41<-2.777122972474899e-05){
    if(i26<0.002331655938178301){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=10631.0;
    }
   } else {
    if(i20<-0.0002364814281463623){
     s0+=41.0;
     s1+=14.0;
    } else {
     s0+=61.0;
     s1+=528.0;
    }
   }
  }
 }
}
if(i9<1.017759084701538){
 if(i0<-7.641889533260837e-05){
  if(i20<-0.0005578398704528809){
   if(i23<0.07313269376754761){
    if(i52<1.0046839714050293){
     s0+=1091.0;
     s1+=59.0;
    } else {
     s0+=3.0;
     s1+=26.0;
    }
   } else {
    if(i66<-0.009833455085754395){
     s0+=32.0;
     s1+=13.0;
    } else {
     s0+=28.0;
     s1+=239.0;
    }
   }
  } else {
   if(i32<1.1497111320495605){
    if(i46<0.0008583847666159272){
     s0+=43.0;
     s1+=479.0;
    } else {
     s0+=462.0;
     s1+=16.0;
    }
   } else {
    if(i13<0.9408177733421326){
     s0+=113.0;
     s1+=86.0;
    } else {
     s0+=189.0;
     s1+=3534.0;
    }
   }
  }
 } else {
  if(i27<1.0063810348510742){
   if(i6<1.3530254364013672e-05){
    if(i7<0.0028421697206795216){
     s0+=75416.0;
     s1+=578.0;
    } else {
     s0+=28152.0;
     s1+=2262.0;
    }
   } else {
    if(i18<0.0019987719133496284){
     s0+=4047.0;
     s1+=82.0;
    } else {
     s0+=2862.0;
     s1+=1764.0;
    }
   }
  } else {
   if(i38<0.001144752954132855){
    if(i8<1.0075831413269043){
     s0+=182.0;
     s1+=115.0;
    } else {
     s0+=7.0;
     s1+=878.0;
    }
   } else {
    if(i21<1.0120983123779297){
     s0+=2382.0;
     s1+=109.0;
    } else {
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i8<1.0140795707702637){
  if(i31<0.0005942247807979584){
   if(i37<0.0007010212866589427){
    s1+=29.0;
   } else {
    if(i4<1.0006574392318726){
     s0+=341.0;
    } else {
     s0+=181.0;
     s1+=57.0;
    }
   }
  } else {
   if(i15<0.0007582211401313543){
    if(i2<-1.913309097290039e-05){
     s0+=251.0;
     s1+=138.0;
    } else {
     s0+=150.0;
     s1+=2583.0;
    }
   } else {
    s0+=301.0;
   }
  }
 } else {
  if(i33<0.0017637908458709717){
   if(i37<0.00173446093685925){
    if(i53<1.6927719116210938e-05){
     s1+=723.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i34<1.7041046619415283){
     s0+=1.0;
     s1+=10702.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   s0+=18.0;
  }
 }
}
if(i21<1.0053205490112305){
 if(i17<1.0165547132492065){
  if(i29<1.142219066619873){
   if(i31<0.0007312654051929712){
    if(i5<1.0072832107543945){
     s0+=80346.0;
     s1+=515.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i26<0.000941693433560431){
     s0+=3271.0;
     s1+=2999.0;
    } else {
     s0+=28185.0;
     s1+=1449.0;
    }
   }
  } else {
   if(i0<-3.304394704173319e-05){
    if(i51<-1.8642919030753546e-06){
     s0+=14.0;
     s1+=643.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i52<1.0018305778503418){
     s0+=292.0;
    } else {
     s0+=31.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i52<1.0004671812057495){
   if(i38<0.014050167053937912){
    if(i54<0.0002650548703968525){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=495.0;
     s1+=1.0;
    }
   } else {
    s1+=197.0;
   }
  } else {
   if(i6<1.3887882232666016e-05){
    if(i28<1.2568554878234863){
     s0+=72.0;
     s1+=155.0;
    } else {
     s0+=248.0;
     s1+=40.0;
    }
   } else {
    if(i14<0.07808464765548706){
     s0+=99.0;
     s1+=49.0;
    } else {
     s0+=157.0;
     s1+=2335.0;
    }
   }
  }
 }
} else {
 if(i16<0.16861245036125183){
  if(i40<-0.0002774294407572597){
   if(i51<-3.855437535094097e-05){
    s0+=41.0;
   } else {
    if(i1<0.0011612772941589355){
     s0+=223.0;
     s1+=399.0;
    } else {
     s0+=31.0;
     s1+=1668.0;
    }
   }
  } else {
   if(i35<1.1174830198287964){
    if(i15<0.0003026416525244713){
     s1+=1373.0;
    } else {
     s0+=156.0;
    }
   } else {
    if(i28<1.1979892253875732){
     s0+=2325.0;
    } else {
     s0+=553.0;
     s1+=965.0;
    }
   }
  }
 } else {
  if(i35<1.176405668258667){
   s0+=128.0;
  } else {
   if(i38<0.007638368755578995){
    if(i77<0.06356412172317505){
     s0+=12.0;
     s1+=1909.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i5<0.9972323179244995){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=9343.0;
    }
   }
  }
 }
}
if(i7<0.007674953900277615){
 if(i3<0.0005390644073486328){
  if(i65<0.0001833639689721167){
   if(i25<0.007804326247423887){
    if(i19<-0.0021806657314300537){
     s1+=18.0;
    } else {
     s0+=66970.0;
     s1+=283.0;
    }
   } else {
    if(i20<-7.390975952148438e-05){
     s0+=12930.0;
     s1+=210.0;
    } else {
     s0+=2873.0;
     s1+=1192.0;
    }
   }
  } else {
   if(i20<-0.0001862049102783203){
    if(i3<-0.00018411874771118164){
     s0+=15197.0;
     s1+=32.0;
    } else {
     s0+=2622.0;
     s1+=259.0;
    }
   } else {
    if(i37<0.00040840066503733397){
     s0+=294.0;
     s1+=592.0;
    } else {
     s0+=4532.0;
     s1+=839.0;
    }
   }
  }
 } else {
  if(i7<0.003435017541050911){
   if(i21<1.0107674598693848){
    if(i11<1.013080358505249){
     s0+=4211.0;
     s1+=94.0;
    } else {
     s0+=678.0;
     s1+=167.0;
    }
   } else {
    if(i54<0.0005304815713316202){
     s1+=261.0;
    } else {
     s0+=58.0;
     s1+=219.0;
    }
   }
  } else {
   if(i2<1.424551010131836e-05){
    if(i12<0.9567985534667969){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=413.0;
     s1+=13.0;
    }
   } else {
    if(i45<-9.28991266846424e-06){
     s0+=19.0;
     s1+=1606.0;
    } else {
     s0+=801.0;
     s1+=1708.0;
    }
   }
  }
 }
} else {
 if(i6<1.3649463653564453e-05){
  if(i29<1.1072208881378174){
   if(i35<1.1188106536865234){
    if(i26<0.0004784692428074777){
     s0+=24.0;
    } else {
     s0+=9.0;
     s1+=136.0;
    }
   } else {
    if(i67<-0.0005937576643191278){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=3672.0;
     s1+=163.0;
    }
   }
  } else {
   if(i16<0.04340672492980957){
    if(i27<0.9918263554573059){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i72<0.00020102968846913427){
     s1+=455.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i27<0.9941689968109131){
   if(i29<1.0749934911727905){
    if(i31<0.0030822509434074163){
     s0+=864.0;
     s1+=71.0;
    } else {
     s0+=44.0;
     s1+=76.0;
    }
   } else {
    if(i19<-0.0042510926723480225){
     s0+=49.0;
     s1+=49.0;
    } else {
     s0+=16.0;
     s1+=643.0;
    }
   }
  } else {
   if(i20<-0.0003197789192199707){
    if(i22<1.0745704174041748){
     s0+=217.0;
     s1+=135.0;
    } else {
     s0+=78.0;
     s1+=577.0;
    }
   } else {
    if(i31<0.00418656412512064){
     s0+=48.0;
     s1+=14350.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
}
if(i10<1.0139482021331787){
 if(i16<0.2003687620162964){
  if(i3<0.00033211708068847656){
   if(i4<0.9994547367095947){
    if(i77<-0.11850100755691528){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=51926.0;
     s1+=273.0;
    }
   } else {
    if(i28<1.116391897201538){
     s0+=11466.0;
     s1+=2093.0;
    } else {
     s0+=40938.0;
     s1+=633.0;
    }
   }
  } else {
   if(i40<-0.00019957601034548134){
    if(i54<0.0025399639271199703){
     s0+=1232.0;
     s1+=1300.0;
    } else {
     s0+=206.0;
     s1+=1307.0;
    }
   } else {
    if(i0<-4.775603156303987e-05){
     s0+=1630.0;
     s1+=1303.0;
    } else {
     s0+=7476.0;
     s1+=1045.0;
    }
   }
  }
 } else {
  if(i37<0.0027163103222846985){
   if(i25<0.023524345830082893){
    if(i46<0.0017205832991749048){
     s0+=143.0;
    } else {
     s0+=58.0;
     s1+=9.0;
    }
   } else {
    if(i70<0.09801775217056274){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i18<0.0015801074914634228){
    s0+=42.0;
   } else {
    if(i70<0.08553639054298401){
     s0+=19.0;
     s1+=2422.0;
    } else {
     s0+=51.0;
     s1+=297.0;
    }
   }
  }
 }
} else {
 if(i0<-6.840075366199017e-05){
  if(i44<0.9983588457107544){
   s0+=73.0;
  } else {
   if(i15<0.0007054299348965287){
    if(i41<-1.3461482922139112e-05){
     s0+=33.0;
     s1+=12905.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    s0+=74.0;
   }
  }
 } else {
  if(i33<0.0006415843963623047){
   if(i52<1.000809669494629){
    if(i18<0.0017890178132802248){
     s0+=207.0;
    } else {
     s0+=21.0;
     s1+=35.0;
    }
   } else {
    if(i3<0.00031006336212158203){
     s0+=90.0;
     s1+=6.0;
    } else {
     s0+=13.0;
     s1+=799.0;
    }
   }
  } else {
   if(i36<1.1700975894927979){
    if(i6<8.958578109741211e-05){
     s0+=638.0;
     s1+=13.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=37.0;
   }
  }
 }
}
if(i10<1.0130759477615356){
 if(i18<0.0018363500712439418){
  if(i1<0.001548469066619873){
   if(i38<0.0005491843912750483){
    if(i25<0.005025346763432026){
     s0+=19809.0;
     s1+=232.0;
    } else {
     s0+=5618.0;
     s1+=684.0;
    }
   } else {
    if(i26<0.00197540782392025){
     s0+=54411.0;
     s1+=33.0;
    } else {
     s0+=13576.0;
     s1+=273.0;
    }
   }
  } else {
   if(i38<0.00121155078522861){
    s1+=275.0;
   } else {
    if(i5<1.0120737552642822){
     s0+=58.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i5<0.9995086193084717){
   if(i22<1.1665910482406616){
    if(i7<0.019988950341939926){
     s0+=17318.0;
     s1+=980.0;
    } else {
     s0+=143.0;
     s1+=95.0;
    }
   } else {
    if(i39<0.08674231171607971){
     s0+=51.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=333.0;
    }
   }
  } else {
   if(i15<0.0007057464099489152){
    if(i1<-0.00014358758926391602){
     s0+=876.0;
     s1+=458.0;
    } else {
     s0+=993.0;
     s1+=6913.0;
    }
   } else {
    s0+=2269.0;
   }
  }
 }
} else {
 if(i9<1.022817611694336){
  if(i1<0.0018175840377807617){
   if(i15<0.0002859869855456054){
    if(i18<0.0014925007708370686){
     s0+=109.0;
     s1+=12.0;
    } else {
     s0+=109.0;
     s1+=784.0;
    }
   } else {
    if(i62<0.003236821386963129){
     s0+=854.0;
     s1+=33.0;
    } else {
     s1+=88.0;
    }
   }
  } else {
   if(i48<-5.510036316991318e-06){
    if(i39<0.04721429571509361){
     s0+=86.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=1538.0;
   }
  }
 } else {
  if(i7<0.005051317624747753){
   if(i6<1.055002212524414e-05){
    if(i65<0.00011236137652304024){
     s0+=156.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i68<1.0031111240386963){
     s0+=41.0;
     s1+=418.0;
    } else {
     s0+=87.0;
     s1+=15.0;
    }
   }
  } else {
   if(i20<-0.0009698569774627686){
    s0+=6.0;
   } else {
    if(i45<3.218559140805155e-05){
     s1+=10868.0;
    } else {
     s0+=1.0;
     s1+=213.0;
    }
   }
  }
 }
}
if(i2<6.407499313354492e-05){
 if(i12<1.0182610750198364){
  if(i50<0.3353198170661926){
   if(i18<0.0017130784690380096){
    if(i30<0.0006204007659107447){
     s0+=28501.0;
     s1+=688.0;
    } else {
     s0+=62318.0;
     s1+=213.0;
    }
   } else {
    if(i26<0.0009191688150167465){
     s0+=2512.0;
     s1+=2642.0;
    } else {
     s0+=19972.0;
     s1+=1837.0;
    }
   }
  } else {
   if(i2<-4.836916923522949e-05){
    if(i60<1.026371717453003){
     s0+=214.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=38.0;
    }
   } else {
    if(i0<-5.266922744340263e-05){
     s0+=10.0;
     s1+=535.0;
    } else {
     s0+=26.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i38<0.007393014617264271){
   if(i1<0.00028949975967407227){
    if(i0<-5.763304579886608e-05){
     s0+=87.0;
     s1+=254.0;
    } else {
     s0+=677.0;
     s1+=162.0;
    }
   } else {
    if(i15<0.0003656736807897687){
     s0+=150.0;
     s1+=908.0;
    } else {
     s0+=91.0;
     s1+=12.0;
    }
   }
  } else {
   if(i14<0.1831478774547577){
    if(i19<-0.002507507801055908){
     s0+=17.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=530.0;
   }
  }
 }
} else {
 if(i30<0.0023654235992580652){
  if(i38<0.0012504032347351313){
   if(i68<1.0034708976745605){
    if(i34<1.0462350845336914){
     s0+=63.0;
    } else {
     s0+=9.0;
     s1+=2027.0;
    }
   } else {
    s0+=27.0;
   }
  } else {
   if(i32<1.0967509746551514){
    s1+=212.0;
   } else {
    s0+=1863.0;
   }
  }
 } else {
  if(i20<-0.00032079219818115234){
   if(i18<0.005420970730483532){
    if(i26<0.010054459795355797){
     s0+=5.0;
     s1+=22.0;
    } else {
     s0+=72.0;
     s1+=2.0;
    }
   } else {
    if(i25<0.17174077033996582){
     s0+=5.0;
     s1+=329.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i8<1.0090248584747314){
    if(i41<-5.0634211220312864e-05){
     s1+=1126.0;
    } else {
     s0+=39.0;
     s1+=570.0;
    }
   } else {
    if(i31<0.000617374898865819){
     s0+=1.0;
     s1+=833.0;
    } else {
     s1+=11211.0;
    }
   }
  }
 }
}
if(i12<1.0181405544281006){
 if(i19<0.0014990568161010742){
  if(i67<0.0020041335374116898){
   if(i18<0.0017128579784184694){
    if(i2<0.00011491775512695312){
     s0+=89654.0;
     s1+=907.0;
    } else {
     s0+=57.0;
     s1+=71.0;
    }
   } else {
    if(i1<-0.00041168928146362305){
     s0+=15168.0;
     s1+=369.0;
    } else {
     s0+=4144.0;
     s1+=3627.0;
    }
   }
  } else {
   if(i16<0.08321040868759155){
    if(i5<1.0010087490081787){
     s0+=4816.0;
     s1+=355.0;
    } else {
     s0+=263.0;
     s1+=421.0;
    }
   } else {
    if(i30<0.004046353977173567){
     s0+=332.0;
     s1+=158.0;
    } else {
     s0+=187.0;
     s1+=2026.0;
    }
   }
  }
 } else {
  if(i48<-5.928757673245855e-06){
   s0+=249.0;
  } else {
   if(i41<-3.184528759447858e-05){
    if(i5<1.0052822828292847){
     s0+=22.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=1760.0;
    }
   } else {
    if(i15<0.00027428532484918833){
     s0+=25.0;
     s1+=623.0;
    } else {
     s0+=211.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i7<0.00496273348107934){
  if(i49<-2.4616752853034995e-05){
   if(i1<0.0019373893737792969){
    if(i26<0.0008023700211197138){
     s1+=116.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i15<0.0015573627315461636){
     s1+=483.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i46<0.0006287951837293804){
    s1+=36.0;
   } else {
    if(i46<0.0017673841211944818){
     s0+=585.0;
    } else {
     s0+=648.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i44<0.9982418417930603){
   s0+=43.0;
  } else {
   if(i51<-2.301605718457722e-06){
    if(i8<0.9981899857521057){
     s0+=84.0;
     s1+=467.0;
    } else {
     s0+=6.0;
     s1+=12737.0;
    }
   } else {
    s0+=42.0;
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i1<0.0009713172912597656){
  if(i25<0.06345115602016449){
   if(i7<0.0036641149781644344){
    if(i9<0.9958306550979614){
     s0+=19091.0;
     s1+=620.0;
    } else {
     s0+=70648.0;
     s1+=438.0;
    }
   } else {
    if(i43<0.9994891881942749){
     s0+=15758.0;
     s1+=222.0;
    } else {
     s0+=8008.0;
     s1+=4220.0;
    }
   }
  } else {
   if(i2<-0.00015968084335327148){
    s0+=289.0;
   } else {
    if(i24<0.8639495968818665){
     s0+=81.0;
     s1+=67.0;
    } else {
     s0+=15.0;
     s1+=912.0;
    }
   }
  }
 } else {
  if(i21<1.0108474493026733){
   if(i33<0.0007389187812805176){
    if(i52<1.0009126663208008){
     s0+=90.0;
     s1+=6.0;
    } else {
     s0+=134.0;
     s1+=1236.0;
    }
   } else {
    if(i20<4.64320182800293e-05){
     s0+=50.0;
     s1+=203.0;
    } else {
     s0+=1110.0;
     s1+=30.0;
    }
   }
  } else {
   if(i15<0.0009529928211122751){
    if(i61<-0.011804431676864624){
     s0+=30.0;
     s1+=129.0;
    } else {
     s0+=25.0;
     s1+=1530.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
} else {
 if(i0<-6.879034481244162e-05){
  if(i7<0.004952756687998772){
   if(i13<1.0147897005081177){
    if(i21<1.0127637386322021){
     s0+=90.0;
     s1+=1.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i52<1.0016756057739258){
     s0+=38.0;
    } else {
     s0+=19.0;
     s1+=579.0;
    }
   }
  } else {
   if(i14<0.04019463062286377){
    if(i33<0.0007328391075134277){
     s1+=13.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i53<-0.0005375146865844727){
     s0+=4.0;
    } else {
     s0+=34.0;
     s1+=12746.0;
    }
   }
  }
 } else {
  if(i53<1.245737075805664e-05){
   if(i5<1.0015215873718262){
    if(i66<0.0019747018814086914){
     s0+=60.0;
     s1+=58.0;
    } else {
     s0+=247.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.00582911865785718){
     s0+=115.0;
     s1+=1064.0;
    } else {
     s0+=45.0;
     s1+=24.0;
    }
   }
  } else {
   if(i33<0.0007178187370300293){
    if(i3<0.0006049871444702148){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=56.0;
    }
   } else {
    if(i23<0.24098867177963257){
     s0+=599.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i3<0.0005691647529602051){
 if(i23<0.2165270447731018){
  if(i25<0.006546176038682461){
   if(i20<-5.5849552154541016e-05){
    if(i38<0.0006851606303825974){
     s0+=2636.0;
     s1+=354.0;
    } else {
     s0+=6009.0;
     s1+=26.0;
    }
   } else {
    if(i10<1.0072519779205322){
     s0+=56953.0;
     s1+=60.0;
    } else {
     s0+=2021.0;
     s1+=80.0;
    }
   }
  } else {
   if(i26<0.0009718164801597595){
    if(i4<1.0000066757202148){
     s0+=7839.0;
     s1+=509.0;
    } else {
     s0+=406.0;
     s1+=2165.0;
    }
   } else {
    if(i0<-5.644349585054442e-05){
     s0+=1936.0;
     s1+=757.0;
    } else {
     s0+=31749.0;
     s1+=547.0;
    }
   }
  }
 } else {
  if(i51<-3.950420705223223e-06){
   if(i7<0.004616668447852135){
    if(i5<1.0036016702651978){
     s0+=29.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i39<0.01213680300861597){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=602.0;
    }
   }
  } else {
   if(i51<-2.7985897759208456e-06){
    if(i39<0.07887689024209976){
     s0+=20.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i20<-0.0007938742637634277){
     s1+=2.0;
    } else {
     s0+=105.0;
    }
   }
  }
 }
} else {
 if(i25<0.007696944288909435){
  if(i45<-8.89039074536413e-06){
   if(i1<0.0018035173416137695){
    if(i30<0.0011378969065845013){
     s0+=4.0;
     s1+=309.0;
    } else {
     s0+=229.0;
     s1+=6.0;
    }
   } else {
    if(i20<0.0002084970474243164){
     s0+=26.0;
     s1+=16.0;
    } else {
     s0+=42.0;
     s1+=1131.0;
    }
   }
  } else {
   if(i7<0.003633808344602585){
    if(i34<1.1843671798706055){
     s0+=3890.0;
     s1+=28.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.0007262729341164231){
     s0+=14.0;
     s1+=415.0;
    } else {
     s0+=533.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i5<1.0017435550689697){
   if(i59<0.002618372905999422){
    if(i23<0.09447070956230164){
     s0+=701.0;
     s1+=106.0;
    } else {
     s0+=152.0;
     s1+=142.0;
    }
   } else {
    if(i71<-0.015696674585342407){
     s0+=79.0;
     s1+=25.0;
    } else {
     s0+=103.0;
     s1+=345.0;
    }
   }
  } else {
   if(i38<0.003007161198183894){
    if(i38<0.001200889004394412){
     s0+=38.0;
     s1+=1147.0;
    } else {
     s0+=562.0;
     s1+=699.0;
    }
   } else {
    if(i19<-0.0017082691192626953){
     s0+=252.0;
     s1+=932.0;
    } else {
     s0+=79.0;
     s1+=13869.0;
    }
   }
  }
 }
}
if(i6<2.282857894897461e-05){
 if(i14<0.22431331872940063){
  if(i6<1.245737075805664e-05){
   if(i7<0.0027853732462972403){
    if(i9<0.9947776794433594){
     s0+=13523.0;
     s1+=357.0;
    } else {
     s0+=61194.0;
     s1+=242.0;
    }
   } else {
    if(i43<0.999435544013977){
     s0+=22006.0;
     s1+=254.0;
    } else {
     s0+=7672.0;
     s1+=2090.0;
    }
   }
  } else {
   if(i18<0.001933517400175333){
    if(i38<0.002369001042097807){
     s0+=3161.0;
     s1+=29.0;
    } else {
     s0+=76.0;
     s1+=69.0;
    }
   } else {
    if(i33<0.0002536475658416748){
     s0+=185.0;
     s1+=1050.0;
    } else {
     s0+=2116.0;
     s1+=605.0;
    }
   }
  }
 } else {
  if(i41<-9.554288226354402e-06){
   if(i0<-4.2208590457448736e-05){
    if(i30<0.0020486628636717796){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=602.0;
    }
   } else {
    if(i68<1.0039938688278198){
     s0+=8.0;
     s1+=39.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i27<0.9833534359931946){
    if(i1<-0.0014781355857849121){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=144.0;
   }
  }
 }
} else {
 if(i40<-0.0002762694493867457){
  if(i23<0.07114273309707642){
   if(i59<0.0005501304985955358){
    if(i26<0.0011718785390257835){
     s1+=70.0;
    } else {
     s0+=396.0;
     s1+=4.0;
    }
   } else {
    if(i10<0.9565882682800293){
     s0+=46.0;
     s1+=21.0;
    } else {
     s0+=40.0;
     s1+=269.0;
    }
   }
  } else {
   if(i51<-6.007454794598743e-05){
    s0+=65.0;
   } else {
    if(i38<0.007531138136982918){
     s0+=277.0;
     s1+=4218.0;
    } else {
     s0+=36.0;
     s1+=10330.0;
    }
   }
  }
 } else {
  if(i25<0.007696944288909435){
   if(i33<0.0005105137825012207){
    if(i2<6.186962127685547e-05){
     s0+=593.0;
     s1+=57.0;
    } else {
     s0+=37.0;
     s1+=1221.0;
    }
   } else {
    if(i27<1.0157341957092285){
     s0+=3587.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=109.0;
    }
   }
  } else {
   if(i20<-0.00021725893020629883){
    if(i2<4.64320182800293e-05){
     s0+=807.0;
     s1+=183.0;
    } else {
     s0+=109.0;
     s1+=344.0;
    }
   } else {
    if(i0<-6.621883949264884e-05){
     s0+=33.0;
     s1+=1664.0;
    } else {
     s0+=378.0;
     s1+=486.0;
    }
   }
  }
 }
}
if(i12<1.0181176662445068){
 if(i7<0.01363417413085699){
  if(i19<0.0013867020606994629){
   if(i4<1.0021886825561523){
    if(i31<0.0007107780547812581){
     s0+=77277.0;
     s1+=413.0;
    } else {
     s0+=29314.0;
     s1+=3096.0;
    }
   } else {
    if(i58<0.0370677225291729){
     s0+=5768.0;
     s1+=1248.0;
    } else {
     s0+=572.0;
     s1+=758.0;
    }
   }
  } else {
   if(i44<0.99985671043396){
    if(i8<1.0390346050262451){
     s0+=474.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i7<0.0020652811508625746){
     s0+=139.0;
     s1+=117.0;
    } else {
     s0+=83.0;
     s1+=1629.0;
    }
   }
  }
 } else {
  if(i2<-1.7404556274414062e-05){
   if(i20<-0.0006820857524871826){
    if(i25<0.06031063571572304){
     s0+=852.0;
     s1+=91.0;
    } else {
     s0+=24.0;
     s1+=92.0;
    }
   } else {
    if(i39<0.08250784873962402){
     s0+=97.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=193.0;
    }
   }
  } else {
   if(i64<0.8634986877441406){
    if(i49<0.00029171304777264595){
     s0+=1.0;
     s1+=129.0;
    } else {
     s0+=133.0;
     s1+=70.0;
    }
   } else {
    if(i24<0.8913763165473938){
     s0+=33.0;
     s1+=40.0;
    } else {
     s0+=76.0;
     s1+=2349.0;
    }
   }
  }
 }
} else {
 if(i3<0.0003140270709991455){
  if(i25<0.027663879096508026){
   if(i20<-0.00041753053665161133){
    s1+=20.0;
   } else {
    if(i38<0.000905401015188545){
     s1+=6.0;
    } else {
     s0+=569.0;
     s1+=40.0;
    }
   }
  } else {
   if(i36<1.114428162574768){
    if(i5<0.9977480173110962){
     s0+=33.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i18<0.0023767075035721064){
     s0+=18.0;
    } else {
     s0+=1.0;
     s1+=278.0;
    }
   }
  }
 } else {
  if(i0<-6.918961298651993e-05){
   if(i44<0.9984792470932007){
    s0+=91.0;
   } else {
    if(i72<2.503700125089381e-05){
     s0+=104.0;
     s1+=12787.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i54<0.0005272579146549106){
    if(i45<1.4314125110104214e-05){
     s0+=2.0;
     s1+=436.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.024904396384954453){
     s0+=473.0;
     s1+=83.0;
    } else {
     s0+=193.0;
     s1+=549.0;
    }
   }
  }
 }
}
if(i12<1.0167311429977417){
 if(i5<1.0038710832595825){
  if(i29<1.140138864517212){
   if(i39<0.012177710421383381){
    if(i22<1.0128135681152344){
     s0+=212.0;
     s1+=83.0;
    } else {
     s0+=68824.0;
     s1+=609.0;
    }
   } else {
    if(i2<-3.629922866821289e-05){
     s0+=29571.0;
     s1+=629.0;
    } else {
     s0+=11894.0;
     s1+=3331.0;
    }
   }
  } else {
   if(i51<-2.8305116757110227e-06){
    if(i69<0.15216854214668274){
     s0+=30.0;
     s1+=4.0;
    } else {
     s0+=23.0;
     s1+=677.0;
    }
   } else {
    s0+=345.0;
   }
  }
 } else {
  if(i7<0.004285869188606739){
   if(i5<1.0106797218322754){
    if(i42<0.057284265756607056){
     s0+=1197.0;
     s1+=356.0;
    } else {
     s0+=2113.0;
     s1+=36.0;
    }
   } else {
    s1+=170.0;
   }
  } else {
   if(i15<0.0007042873185127974){
    if(i27<1.0021573305130005){
     s0+=63.0;
     s1+=458.0;
    } else {
     s0+=44.0;
     s1+=3393.0;
    }
   } else {
    s0+=155.0;
   }
  }
 }
} else {
 if(i6<1.1980533599853516e-05){
  if(i71<0.011184453964233398){
   if(i45<1.1100069059466477e-05){
    if(i3<0.0002816915512084961){
     s0+=534.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=13.0;
    }
   } else {
    if(i0<-5.0362701585981995e-05){
     s0+=55.0;
     s1+=153.0;
    } else {
     s0+=247.0;
     s1+=50.0;
    }
   }
  } else {
   if(i37<0.0034340382553637028){
    s0+=24.0;
   } else {
    s1+=145.0;
   }
  }
 } else {
  if(i40<-0.00029026076663285494){
   if(i2<1.138448715209961e-05){
    if(i23<0.20843937993049622){
     s0+=186.0;
     s1+=63.0;
    } else {
     s0+=11.0;
     s1+=164.0;
    }
   } else {
    if(i48<-6.2383332988247275e-06){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=119.0;
     s1+=12456.0;
    }
   }
  } else {
   if(i1<0.002156198024749756){
    if(i28<1.116804838180542){
     s1+=293.0;
    } else {
     s0+=730.0;
     s1+=211.0;
    }
   } else {
    if(i48<-7.184120022429852e-06){
     s0+=12.0;
    } else {
     s1+=1113.0;
    }
   }
  }
 }
}
if(i23<0.19272729754447937){
 if(i22<1.1293236017227173){
  if(i64<1.021103858947754){
   if(i2<6.502866744995117e-05){
    if(i26<0.0008908312302082777){
     s0+=31674.0;
     s1+=3387.0;
    } else {
     s0+=77462.0;
     s1+=1212.0;
    }
   } else {
    if(i53<1.4722347259521484e-05){
     s0+=431.0;
     s1+=2295.0;
    } else {
     s0+=936.0;
     s1+=199.0;
    }
   }
  } else {
   if(i13<1.0155744552612305){
    if(i28<1.1164028644561768){
     s0+=112.0;
     s1+=341.0;
    } else {
     s0+=2280.0;
     s1+=145.0;
    }
   } else {
    if(i33<0.0006197690963745117){
     s0+=120.0;
     s1+=1185.0;
    } else {
     s0+=225.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i7<0.006037795916199684){
   if(i8<1.014496922492981){
    if(i40<-0.00032538725645281374){
     s0+=566.0;
     s1+=95.0;
    } else {
     s0+=1650.0;
     s1+=31.0;
    }
   } else {
    s1+=190.0;
   }
  } else {
   if(i21<0.9985871315002441){
    if(i41<-2.9144619475118816e-05){
     s0+=13.0;
     s1+=82.0;
    } else {
     s0+=97.0;
     s1+=39.0;
    }
   } else {
    if(i9<0.9077591896057129){
     s0+=89.0;
     s1+=187.0;
    } else {
     s0+=22.0;
     s1+=1914.0;
    }
   }
  }
 }
} else {
 if(i1<0.00022286176681518555){
  if(i36<1.1231228113174438){
   if(i65<0.0009500401210971177){
    if(i7<0.010455486364662647){
     s0+=443.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i46<0.01118159294128418){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i31<0.0009461494628340006){
    if(i5<1.001723289489746){
     s0+=150.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i16<0.1927119791507721){
     s0+=26.0;
     s1+=6.0;
    } else {
     s0+=52.0;
     s1+=670.0;
    }
   }
  }
 } else {
  if(i18<0.0010262459982186556){
   if(i20<0.0003905296325683594){
    s0+=103.0;
   } else {
    s1+=140.0;
   }
  } else {
   if(i32<1.1457456350326538){
    if(i77<0.015805304050445557){
     s0+=36.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i37<0.0015714524779468775){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=12088.0;
    }
   }
  }
 }
}
if(i5<1.003873586654663){
 if(i16<0.2076631784439087){
  if(i52<1.0001847743988037){
   if(i33<6.747245788574219e-05){
    if(i25<0.0901748463511467){
     s0+=58035.0;
     s1+=337.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i66<-0.000453263521194458){
     s0+=595.0;
     s1+=362.0;
    } else {
     s0+=3797.0;
     s1+=56.0;
    }
   }
  } else {
   if(i9<1.0153400897979736){
    if(i22<1.1416184902191162){
     s0+=48980.0;
     s1+=3626.0;
    } else {
     s0+=352.0;
     s1+=504.0;
    }
   } else {
    if(i45<2.4837394448695704e-05){
     s0+=230.0;
     s1+=665.0;
    } else {
     s0+=409.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i49<4.384481508168392e-05){
   if(i41<-1.542344944027718e-05){
    if(i53<8.344650268554688e-06){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i21<1.004112720489502){
     s0+=109.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i29<1.6057538986206055){
    if(i25<0.029690910130739212){
     s0+=63.0;
     s1+=67.0;
    } else {
     s0+=14.0;
     s1+=1025.0;
    }
   } else {
    if(i63<9.34611125558149e-06){
     s0+=28.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i40<-0.00027981476159766316){
  if(i48<-6.515702352771768e-06){
   s0+=84.0;
  } else {
   if(i7<0.004377708770334721){
    if(i8<1.0145759582519531){
     s0+=145.0;
     s1+=27.0;
    } else {
     s1+=165.0;
    }
   } else {
    if(i24<0.8960224390029907){
     s0+=17.0;
     s1+=53.0;
    } else {
     s0+=32.0;
     s1+=13364.0;
    }
   }
  }
 } else {
  if(i2<0.00011986494064331055){
   if(i28<1.116804838180542){
    if(i38<0.00021110517263878137){
     s0+=595.0;
    } else {
     s1+=862.0;
    }
   } else {
    if(i39<0.030713677406311035){
     s0+=2988.0;
     s1+=10.0;
    } else {
     s0+=68.0;
     s1+=417.0;
    }
   }
  } else {
   if(i48<-6.282208232732955e-06){
    s0+=304.0;
   } else {
    if(i28<1.629280686378479){
     s0+=7.0;
     s1+=2333.0;
    } else {
     s0+=18.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i5<1.0037095546722412){
 if(i24<1.024177074432373){
  if(i4<1.0023908615112305){
   if(i16<0.2314072847366333){
    if(i33<7.075071334838867e-05){
     s0+=75785.0;
     s1+=830.0;
    } else {
     s0+=32604.0;
     s1+=3125.0;
    }
   } else {
    if(i39<0.06611938774585724){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=215.0;
    }
   }
  } else {
   if(i55<0.008291861042380333){
    if(i1<0.00014978647232055664){
     s0+=1950.0;
     s1+=293.0;
    } else {
     s0+=598.0;
     s1+=488.0;
    }
   } else {
    if(i40<-0.00026918103685602546){
     s0+=23.0;
     s1+=481.0;
    } else {
     s0+=170.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i31<0.0005305279046297073){
   if(i6<2.676248550415039e-05){
    if(i45<1.2016208529530559e-05){
     s0+=348.0;
    } else {
     s0+=18.0;
     s1+=6.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i68<1.003216028213501){
    if(i49<1.342170435236767e-06){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=96.0;
     s1+=819.0;
    }
   } else {
    if(i0<-6.755781214451417e-05){
     s0+=5.0;
     s1+=143.0;
    } else {
     s0+=284.0;
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i7<0.0034542675130069256){
  if(i45<-1.351606442767661e-05){
   if(i59<0.0004085687396582216){
    if(i44<0.9997180700302124){
     s0+=4.0;
    } else {
     s1+=426.0;
    }
   } else {
    if(i48<-6.260862846829696e-06){
     s0+=101.0;
    } else {
     s0+=26.0;
     s1+=206.0;
    }
   }
  } else {
   if(i67<-0.001057785702869296){
    if(i20<2.7954578399658203e-05){
     s0+=2.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i5<1.0118708610534668){
     s0+=3679.0;
     s1+=48.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i48<-6.419467354135122e-06){
   if(i66<-0.005284041166305542){
    s1+=2.0;
   } else {
    s0+=280.0;
   }
  } else {
   if(i16<0.15842902660369873){
    if(i8<1.012258529663086){
     s0+=415.0;
     s1+=2105.0;
    } else {
     s0+=10.0;
     s1+=2370.0;
    }
   } else {
    if(i32<1.1432669162750244){
     s0+=29.0;
    } else {
     s0+=2.0;
     s1+=12614.0;
    }
   }
  }
 }
}
if(i13<1.0154218673706055){
 if(i2<6.431341171264648e-05){
  if(i16<0.20414790511131287){
   if(i6<9.238719940185547e-06){
    if(i32<1.0905301570892334){
     s0+=26175.0;
     s1+=1785.0;
    } else {
     s0+=74085.0;
     s1+=641.0;
    }
   } else {
    if(i7<0.004132605157792568){
     s0+=10581.0;
     s1+=199.0;
    } else {
     s0+=2797.0;
     s1+=3136.0;
    }
   }
  } else {
   if(i39<0.051045648753643036){
    if(i0<-7.120104419300333e-05){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=172.0;
     s1+=6.0;
    }
   } else {
    if(i18<0.0011729709804058075){
     s0+=35.0;
    } else {
     s0+=33.0;
     s1+=911.0;
    }
   }
  }
 } else {
  if(i66<-0.00015851855278015137){
   if(i51<-3.661937444121577e-05){
    if(i41<-0.00010279129492118955){
     s1+=5.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i10<0.9566062688827515){
     s0+=60.0;
     s1+=152.0;
    } else {
     s0+=143.0;
     s1+=2698.0;
    }
   }
  } else {
   if(i15<0.0004299512947909534){
    if(i0<-0.0003042009484488517){
     s0+=43.0;
    } else {
     s0+=81.0;
     s1+=921.0;
    }
   } else {
    if(i7<0.011889073066413403){
     s0+=1311.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i2<1.4603137969970703e-05){
  if(i25<0.03428104519844055){
   if(i25<0.025051817297935486){
    if(i27<0.9839788675308228){
     s1+=2.0;
    } else {
     s0+=322.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.005551081150770187){
     s0+=63.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i53<9.834766387939453e-06){
    if(i74<-0.017033815383911133){
     s0+=2.0;
    } else {
     s1+=154.0;
    }
   } else {
    if(i21<1.002272367477417){
     s1+=31.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i0<-6.71356829116121e-05){
   if(i13<1.0174541473388672){
    if(i7<0.004950361326336861){
     s0+=65.0;
     s1+=75.0;
    } else {
     s0+=16.0;
     s1+=361.0;
    }
   } else {
    if(i53<-3.17990779876709e-05){
     s0+=7.0;
    } else {
     s0+=26.0;
     s1+=12491.0;
    }
   }
  } else {
   if(i38<0.0012333514168858528){
    if(i32<1.1197539567947388){
     s1+=409.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i48<-4.121243819099618e-06){
     s0+=245.0;
     s1+=2.0;
    } else {
     s0+=95.0;
     s1+=377.0;
    }
   }
  }
 }
}
if(i22<1.127976417541504){
 if(i1<0.0009953081607818604){
  if(i5<1.0026378631591797){
   if(i11<1.0124261379241943){
    if(i6<1.8417835235595703e-05){
     s0+=103426.0;
     s1+=3112.0;
    } else {
     s0+=2683.0;
     s1+=573.0;
    }
   } else {
    if(i31<0.000724626355804503){
     s0+=233.0;
    } else {
     s0+=149.0;
     s1+=196.0;
    }
   }
  } else {
   if(i0<-4.514177271630615e-05){
    if(i33<0.0006710290908813477){
     s0+=164.0;
     s1+=886.0;
    } else {
     s0+=301.0;
     s1+=160.0;
    }
   } else {
    if(i30<0.0009847960900515318){
     s0+=1348.0;
     s1+=412.0;
    } else {
     s0+=3628.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i63<8.968863767222501e-07){
   if(i20<0.00030153989791870117){
    if(i7<0.0037187887355685234){
     s0+=1144.0;
     s1+=434.0;
    } else {
     s0+=163.0;
     s1+=1820.0;
    }
   } else {
    if(i72<-4.45275964011671e-06){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=33.0;
     s1+=2823.0;
    }
   }
  } else {
   if(i49<9.919323929352686e-05){
    if(i30<0.002489685080945492){
     s0+=422.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i28<1.2094390392303467){
     s0+=27.0;
    } else {
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i37<0.00205531669780612){
  if(i72<-2.7637520361167844e-06){
   s1+=5.0;
  } else {
   if(i9<1.0445642471313477){
    if(i37<0.001953617436811328){
     s0+=1443.0;
    } else {
     s0+=83.0;
     s1+=9.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i5<1.0010662078857422){
   if(i16<0.16769328713417053){
    if(i4<1.0008574724197388){
     s0+=643.0;
     s1+=58.0;
    } else {
     s0+=264.0;
     s1+=270.0;
    }
   } else {
    if(i76<0.07935687899589539){
     s1+=338.0;
    } else {
     s0+=144.0;
     s1+=218.0;
    }
   }
  } else {
   if(i31<0.00014914770144969225){
    if(i45<-1.084233372239396e-05){
     s1+=41.0;
    } else {
     s0+=58.0;
    }
   } else {
    if(i36<1.134283423423767){
     s0+=33.0;
     s1+=243.0;
    } else {
     s0+=83.0;
     s1+=12619.0;
    }
   }
  }
 }
}
if(i2<6.443262100219727e-05){
 if(i24<1.0217894315719604){
  if(i18<0.001712622120976448){
   if(i37<0.0004941285587847233){
    if(i17<0.994924783706665){
     s0+=1958.0;
     s1+=437.0;
    } else {
     s0+=22585.0;
     s1+=279.0;
    }
   } else {
    if(i32<1.1354830265045166){
     s0+=48438.0;
     s1+=28.0;
    } else {
     s0+=17564.0;
     s1+=210.0;
    }
   }
  } else {
   if(i30<0.0011116763344034553){
    if(i22<1.037890076637268){
     s0+=2324.0;
     s1+=1179.0;
    } else {
     s0+=164.0;
     s1+=1457.0;
    }
   } else {
    if(i1<-0.00010707974433898926){
     s0+=18815.0;
     s1+=944.0;
    } else {
     s0+=1383.0;
     s1+=1605.0;
    }
   }
  }
 } else {
  if(i4<1.0012307167053223){
   if(i41<-7.720154826529324e-06){
    if(i58<0.04994739219546318){
     s0+=110.0;
     s1+=66.0;
    } else {
     s0+=4.0;
     s1+=168.0;
    }
   } else {
    if(i41<-6.638330887653865e-06){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=539.0;
    }
   }
  } else {
   if(i18<0.0010890408884733915){
    s0+=112.0;
   } else {
    if(i0<-6.070185190765187e-05){
     s0+=59.0;
     s1+=1154.0;
    } else {
     s0+=336.0;
     s1+=402.0;
    }
   }
  }
 }
} else {
 if(i26<0.002331655938178301){
  if(i35<1.116804838180542){
   if(i41<-5.5146032536868006e-05){
    s0+=66.0;
   } else {
    if(i30<0.00022223932319320738){
     s0+=52.0;
    } else {
     s0+=31.0;
     s1+=2297.0;
    }
   }
  } else {
   s0+=1793.0;
  }
 } else {
  if(i13<0.9381884336471558){
   if(i52<1.0027414560317993){
    if(i18<0.0055733295157551765){
     s0+=30.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i36<1.367236852645874){
     s0+=2.0;
     s1+=71.0;
    } else {
     s0+=8.0;
     s1+=12.0;
    }
   }
  } else {
   if(i23<0.04566079378128052){
    if(i78<-0.002872377634048462){
     s0+=6.0;
     s1+=80.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i32<1.4731788635253906){
     s0+=7.0;
     s1+=11893.0;
    } else {
     s0+=34.0;
     s1+=2107.0;
    }
   }
  }
 }
}
if(i2<6.431341171264648e-05){
 if(i4<1.0020549297332764){
  if(i42<0.22628915309906006){
   if(i11<1.0124787092208862){
    if(i35<1.0905578136444092){
     s0+=25898.0;
     s1+=2392.0;
    } else {
     s0+=81292.0;
     s1+=1248.0;
    }
   } else {
    if(i18<0.0022587203420698643){
     s0+=378.0;
    } else {
     s0+=32.0;
     s1+=342.0;
    }
   }
  } else {
   if(i38<0.006508701480925083){
    if(i28<1.3924143314361572){
     s0+=23.0;
     s1+=53.0;
    } else {
     s0+=44.0;
    }
   } else {
    s1+=277.0;
   }
  }
 } else {
  if(i40<-0.0002115819079335779){
   if(i2<2.682209014892578e-06){
    if(i50<0.12344427406787872){
     s0+=888.0;
     s1+=130.0;
    } else {
     s0+=70.0;
     s1+=387.0;
    }
   } else {
    if(i58<0.024262292310595512){
     s0+=417.0;
     s1+=478.0;
    } else {
     s0+=93.0;
     s1+=1649.0;
    }
   }
  } else {
   if(i39<0.03829557076096535){
    if(i31<0.0008207177743315697){
     s0+=3141.0;
     s1+=2.0;
    } else {
     s0+=1280.0;
     s1+=341.0;
    }
   } else {
    if(i27<0.9994932413101196){
     s0+=1237.0;
     s1+=262.0;
    } else {
     s0+=66.0;
     s1+=288.0;
    }
   }
  }
 }
} else {
 if(i38<0.0023648133501410484){
  if(i53<1.1980533599853516e-05){
   if(i30<0.0012791795888915658){
    if(i35<1.116804838180542){
     s0+=2.0;
     s1+=2184.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i32<1.0970759391784668){
     s1+=99.0;
    } else {
     s0+=288.0;
     s1+=37.0;
    }
   }
  } else {
   if(i30<0.0011130304774269462){
    if(i4<1.0036717653274536){
     s0+=55.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i21<1.0126854181289673){
     s0+=1633.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i14<0.041255444288253784){
   if(i52<1.0023436546325684){
    if(i7<0.02253183349967003){
     s0+=32.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i45<1.039055860019289e-06){
     s1+=83.0;
    } else {
     s0+=24.0;
     s1+=18.0;
    }
   }
  } else {
   if(i16<0.0929172933101654){
    if(i64<1.0181338787078857){
     s0+=14.0;
     s1+=395.0;
    } else {
     s0+=39.0;
     s1+=18.0;
    }
   } else {
    if(i9<0.9043526649475098){
     s0+=5.0;
     s1+=33.0;
    } else {
     s0+=9.0;
     s1+=13105.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i9<1.016850233078003){
  if(i0<-0.00012527969374787062){
   if(i16<0.0023296475410461426){
    if(i7<0.020428545773029327){
     s0+=86.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i29<0.9874077439308167){
     s0+=10.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=257.0;
    }
   }
  } else {
   if(i18<0.0015701677184551954){
    if(i29<1.0178465843200684){
     s0+=10270.0;
     s1+=375.0;
    } else {
     s0+=75666.0;
     s1+=325.0;
    }
   } else {
    if(i8<0.9916950464248657){
     s0+=14487.0;
     s1+=597.0;
    } else {
     s0+=8557.0;
     s1+=2772.0;
    }
   }
  }
 } else {
  if(i7<0.005218770354986191){
   if(i68<1.0013737678527832){
    s0+=492.0;
   } else {
    if(i30<0.0028320394922047853){
     s0+=40.0;
     s1+=49.0;
    } else {
     s0+=192.0;
     s1+=13.0;
    }
   }
  } else {
   if(i2<-4.6253204345703125e-05){
    if(i29<1.113267183303833){
     s0+=34.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i43<1.0000989437103271){
     s0+=6.0;
     s1+=119.0;
    } else {
     s1+=674.0;
    }
   }
  }
 }
} else {
 if(i7<0.004241705406457186){
  if(i7<0.0021685324609279633){
   if(i43<1.007765769958496){
    if(i23<0.2693312168121338){
     s0+=3324.0;
     s1+=55.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i2<0.00013136863708496094){
     s0+=218.0;
    } else {
     s0+=6.0;
     s1+=223.0;
    }
   }
  } else {
   if(i49<-1.505057116446551e-05){
    if(i26<0.0010901268105953932){
     s0+=18.0;
     s1+=594.0;
    } else {
     s0+=123.0;
     s1+=231.0;
    }
   } else {
    if(i64<1.0319370031356812){
     s0+=1155.0;
     s1+=32.0;
    } else {
     s0+=88.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i20<-0.0003287196159362793){
   if(i16<0.08138284087181091){
    if(i22<1.0850330591201782){
     s0+=849.0;
     s1+=77.0;
    } else {
     s0+=135.0;
     s1+=205.0;
    }
   } else {
    if(i54<0.0027154991403222084){
     s0+=134.0;
     s1+=143.0;
    } else {
     s0+=76.0;
     s1+=683.0;
    }
   }
  } else {
   if(i26<0.0027225373778492212){
    if(i4<1.0013015270233154){
     s0+=126.0;
     s1+=2.0;
    } else {
     s0+=274.0;
     s1+=2477.0;
    }
   } else {
    if(i16<0.06943437457084656){
     s0+=78.0;
     s1+=274.0;
    } else {
     s0+=63.0;
     s1+=14057.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i0<-8.068525494309142e-05){
  if(i29<1.0454806089401245){
   if(i66<-0.006961733102798462){
    if(i51<-1.9447263184702024e-05){
     s0+=24.0;
     s1+=15.0;
    } else {
     s0+=844.0;
     s1+=29.0;
    }
   } else {
    if(i31<0.002475425135344267){
     s0+=196.0;
     s1+=50.0;
    } else {
     s0+=1.0;
     s1+=65.0;
    }
   }
  } else {
   if(i22<1.0990242958068848){
    if(i53<-1.430511474609375e-06){
     s0+=64.0;
    } else {
     s0+=99.0;
     s1+=268.0;
    }
   } else {
    if(i26<0.0022782483138144016){
     s0+=18.0;
    } else {
     s0+=34.0;
     s1+=2031.0;
    }
   }
  }
 } else {
  if(i21<1.0026628971099854){
   if(i13<1.0090327262878418){
    if(i12<1.0306470394134521){
     s0+=103654.0;
     s1+=3432.0;
    } else {
     s0+=4.0;
     s1+=49.0;
    }
   } else {
    if(i28<1.1178560256958008){
     s0+=30.0;
     s1+=459.0;
    } else {
     s0+=1466.0;
     s1+=303.0;
    }
   }
  } else {
   if(i38<0.0018650215351954103){
    if(i26<0.0009430244099348783){
     s0+=1299.0;
     s1+=619.0;
    } else {
     s0+=5126.0;
     s1+=4.0;
    }
   } else {
    if(i22<1.1087467670440674){
     s0+=1202.0;
     s1+=370.0;
    } else {
     s0+=112.0;
     s1+=461.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0002864956040866673){
  if(i26<0.002348781330510974){
   if(i31<0.0011467239819467068){
    if(i48<-4.554198767436901e-06){
     s0+=35.0;
    } else {
     s1+=812.0;
    }
   } else {
    s0+=126.0;
   }
  } else {
   if(i64<0.8299852013587952){
    if(i19<-0.0022662878036499023){
     s0+=16.0;
     s1+=4.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i9<0.8903911113739014){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=12168.0;
    }
   }
  }
 } else {
  if(i49<-2.7674876037053764e-05){
   if(i2<0.00014221668243408203){
    if(i38<0.0012660726206377149){
     s1+=353.0;
    } else {
     s0+=50.0;
     s1+=2.0;
    }
   } else {
    if(i72<6.699139339616522e-05){
     s1+=1510.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i7<0.0039032245986163616){
    if(i36<1.067433476448059){
     s0+=77.0;
     s1+=226.0;
    } else {
     s0+=1516.0;
     s1+=33.0;
    }
   } else {
    if(i32<1.1778032779693604){
     s0+=181.0;
     s1+=403.0;
    } else {
     s0+=75.0;
     s1+=917.0;
    }
   }
  }
 }
}
if(i40<-0.0009843680309131742){
 if(i2<-4.547834396362305e-05){
  if(i25<0.08799605816602707){
   if(i67<0.0024193106219172478){
    s0+=1296.0;
   } else {
    if(i68<1.0051718950271606){
     s1+=13.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   s1+=50.0;
  }
 } else {
  if(i7<0.004936552606523037){
   if(i14<0.22776824235916138){
    if(i34<1.1395916938781738){
     s0+=43.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i14<0.13609439134597778){
    if(i10<0.9260517358779907){
     s0+=5.0;
    } else {
     s1+=264.0;
    }
   } else {
    s1+=8171.0;
   }
  }
 }
} else {
 if(i3<0.0005689263343811035){
  if(i3<0.00027042627334594727){
   if(i68<1.0003726482391357){
    if(i14<0.2487059235572815){
     s0+=56619.0;
     s1+=443.0;
    } else {
     s0+=57.0;
     s1+=60.0;
    }
   } else {
    if(i30<0.0010492117144167423){
     s0+=8277.0;
     s1+=1606.0;
    } else {
     s0+=36438.0;
     s1+=728.0;
    }
   }
  } else {
   if(i24<1.0205919742584229){
    if(i58<0.02664952166378498){
     s0+=6330.0;
     s1+=707.0;
    } else {
     s0+=830.0;
     s1+=715.0;
    }
   } else {
    if(i58<0.01799849420785904){
     s0+=76.0;
     s1+=38.0;
    } else {
     s0+=35.0;
     s1+=440.0;
    }
   }
  }
 } else {
  if(i25<0.007680768147110939){
   if(i8<1.0140836238861084){
    if(i38<0.0008316008024848998){
     s0+=1457.0;
     s1+=1049.0;
    } else {
     s0+=3251.0;
     s1+=34.0;
    }
   } else {
    if(i7<0.0019507246324792504){
     s0+=83.0;
     s1+=55.0;
    } else {
     s0+=13.0;
     s1+=854.0;
    }
   }
  } else {
   if(i1<5.990266799926758e-05){
    if(i60<1.0804510116577148){
     s0+=840.0;
     s1+=186.0;
    } else {
     s0+=107.0;
     s1+=151.0;
    }
   } else {
    if(i13<1.0144643783569336){
     s0+=889.0;
     s1+=3567.0;
    } else {
     s0+=79.0;
     s1+=4960.0;
    }
   }
  }
 }
}
if(i5<1.0037096738815308){
 if(i16<0.20642241835594177){
  if(i62<0.004853119142353535){
   if(i34<1.0902695655822754){
    if(i10<1.0068023204803467){
     s0+=38184.0;
     s1+=2585.0;
    } else {
     s0+=325.0;
     s1+=661.0;
    }
   } else {
    if(i3<0.00046497583389282227){
     s0+=67654.0;
     s1+=636.0;
    } else {
     s0+=2469.0;
     s1+=433.0;
    }
   }
  } else {
   if(i25<0.051092252135276794){
    if(i17<0.9360323548316956){
     s0+=1704.0;
     s1+=94.0;
    } else {
     s0+=1305.0;
     s1+=508.0;
    }
   } else {
    if(i11<0.9314500093460083){
     s0+=137.0;
     s1+=113.0;
    } else {
     s0+=15.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i26<0.002562624868005514){
   if(i41<-1.312622771365568e-05){
    if(i59<0.001604963792487979){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i64<1.0021613836288452){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=195.0;
     s1+=3.0;
    }
   }
  } else {
   if(i39<0.023197554051876068){
    if(i12<0.9715362191200256){
     s1+=1.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i36<1.1223869323730469){
     s0+=22.0;
     s1+=22.0;
    } else {
     s0+=27.0;
     s1+=1104.0;
    }
   }
  }
 }
} else {
 if(i10<1.017743706703186){
  if(i38<0.0021254108287394047){
   if(i55<0.00078285310883075){
    if(i36<1.040388822555542){
     s0+=641.0;
     s1+=17.0;
    } else {
     s0+=140.0;
     s1+=1604.0;
    }
   } else {
    if(i37<0.0009799747494980693){
     s1+=81.0;
    } else {
     s0+=3483.0;
     s1+=36.0;
    }
   }
  } else {
   if(i34<1.1269173622131348){
    if(i9<0.9627946615219116){
     s1+=16.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i16<0.09757450222969055){
     s0+=148.0;
     s1+=530.0;
    } else {
     s0+=28.0;
     s1+=3378.0;
    }
   }
  }
 } else {
  if(i13<1.0208858251571655){
   if(i23<0.05579155683517456){
    if(i28<1.4586446285247803){
     s0+=4.0;
     s1+=34.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i33<0.0012865066528320312){
     s0+=9.0;
     s1+=751.0;
    } else {
     s0+=37.0;
     s1+=9.0;
    }
   }
  } else {
   if(i0<-7.481149805244058e-05){
    if(i45<1.673799124546349e-05){
     s1+=10181.0;
    } else {
     s0+=2.0;
     s1+=654.0;
    }
   } else {
    if(i28<1.4586446285247803){
     s1+=350.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
}
if(i10<1.0149832963943481){
 if(i42<0.1903238296508789){
  if(i21<1.0075172185897827){
   if(i3<0.0003293752670288086){
    if(i30<0.0010657792445272207){
     s0+=29788.0;
     s1+=2188.0;
    } else {
     s0+=74717.0;
     s1+=730.0;
    }
   } else {
    if(i39<0.020553896203637123){
     s0+=7481.0;
     s1+=1119.0;
    } else {
     s0+=2225.0;
     s1+=2385.0;
    }
   }
  } else {
   if(i65<8.425328269368038e-05){
    if(i30<0.0012004401069134474){
     s1+=186.0;
    } else {
     s0+=619.0;
     s1+=39.0;
    }
   } else {
    if(i14<0.03207436203956604){
     s0+=197.0;
     s1+=89.0;
    } else {
     s0+=294.0;
     s1+=2191.0;
    }
   }
  }
 } else {
  if(i31<0.0007392093539237976){
   if(i26<0.002930162940174341){
    if(i29<1.076655626296997){
     s1+=3.0;
    } else {
     s0+=226.0;
     s1+=7.0;
    }
   } else {
    if(i4<1.0009840726852417){
     s0+=13.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i55<0.002085313433781266){
    if(i7<0.006572500802576542){
     s0+=93.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   } else {
    if(i37<0.0032050861045718193){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=56.0;
     s1+=2030.0;
    }
   }
  }
 }
} else {
 if(i7<0.004239044152200222){
  if(i20<0.0002543926239013672){
   if(i38<0.000684260216075927){
    s1+=46.0;
   } else {
    if(i14<0.18142026662826538){
     s0+=631.0;
     s1+=18.0;
    } else {
     s0+=65.0;
     s1+=24.0;
    }
   }
  } else {
   if(i27<1.0122308731079102){
    if(i30<0.0008431703899987042){
     s1+=68.0;
    } else {
     s0+=77.0;
    }
   } else {
    if(i41<-3.3891301427502185e-05){
     s0+=6.0;
     s1+=398.0;
    } else {
     s0+=7.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i43<1.0001912117004395){
   if(i27<1.0082831382751465){
    if(i23<0.2987421154975891){
     s0+=95.0;
     s1+=8.0;
    } else {
     s1+=47.0;
    }
   } else {
    s1+=605.0;
   }
  } else {
   if(i63<0.00016905406664591283){
    if(i0<-0.0001075249892892316){
     s1+=9999.0;
    } else {
     s0+=24.0;
     s1+=1948.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
}
if(i5<1.0037174224853516){
 if(i16<0.20496979355812073){
  if(i7<0.003599122865125537){
   if(i28<1.1162974834442139){
    if(i18<0.000977981835603714){
     s0+=22429.0;
     s1+=73.0;
    } else {
     s0+=4303.0;
     s1+=738.0;
    }
   } else {
    if(i0<-5.4761880164733157e-05){
     s0+=539.0;
     s1+=63.0;
    } else {
     s0+=60141.0;
     s1+=144.0;
    }
   }
  } else {
   if(i1<-0.0003929734230041504){
    if(i4<0.9992649555206299){
     s0+=16240.0;
     s1+=61.0;
    } else {
     s0+=5738.0;
     s1+=783.0;
    }
   } else {
    if(i34<1.0904077291488647){
     s0+=572.0;
     s1+=2148.0;
    } else {
     s0+=1899.0;
     s1+=1327.0;
    }
   }
  }
 } else {
  if(i36<1.1279923915863037){
   if(i58<0.043687984347343445){
    if(i42<0.24601751565933228){
     s0+=126.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i41<-1.0115441000380088e-05){
     s0+=2.0;
     s1+=33.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i18<0.0013581971870735288){
    if(i36<1.1374742984771729){
     s0+=7.0;
     s1+=8.0;
    } else {
     s0+=123.0;
    }
   } else {
    if(i63<2.041109837591648e-05){
     s0+=20.0;
     s1+=1130.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i0<-7.233471842482686e-05){
  if(i25<0.003750582691282034){
   if(i31<0.002224517986178398){
    if(i51<-8.686321962159127e-05){
     s0+=7.0;
    } else {
     s0+=10.0;
     s1+=246.0;
    }
   } else {
    if(i16<0.2716046869754791){
     s0+=229.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i51<-5.289870023261756e-05){
    s0+=50.0;
   } else {
    if(i25<0.005514663178473711){
     s0+=74.0;
     s1+=346.0;
    } else {
     s0+=127.0;
     s1+=14809.0;
    }
   }
  }
 } else {
  if(i33<0.0005878210067749023){
   if(i26<0.0009701396338641644){
    if(i26<0.00024197460152208805){
     s0+=35.0;
    } else {
     s1+=1452.0;
    }
   } else {
    if(i25<0.014644943177700043){
     s0+=480.0;
     s1+=32.0;
    } else {
     s1+=429.0;
    }
   }
  } else {
   if(i39<0.029590044170618057){
    if(i37<0.0019306635949760675){
     s0+=3337.0;
    } else {
     s0+=48.0;
     s1+=68.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=31.0;
     s1+=348.0;
    } else {
     s0+=43.0;
    }
   }
  }
 }
}
if(i5<1.003865361213684){
 if(i18<0.001736646518111229){
  if(i24<0.9945292472839355){
   if(i38<0.00034116627648472786){
    if(i0<-4.330828232923523e-06){
     s0+=177.0;
     s1+=312.0;
    } else {
     s0+=1428.0;
     s1+=9.0;
    }
   } else {
    if(i41<-1.3958955605630763e-05){
     s0+=83.0;
     s1+=56.0;
    } else {
     s0+=17395.0;
     s1+=104.0;
    }
   }
  } else {
   if(i28<1.0817922353744507){
    if(i31<0.0006275367923080921){
     s0+=12602.0;
     s1+=77.0;
    } else {
     s0+=1212.0;
     s1+=236.0;
    }
   } else {
    if(i41<-1.986285496968776e-05){
     s0+=9.0;
     s1+=37.0;
    } else {
     s0+=56943.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i22<1.127666711807251){
   if(i26<0.0009228305425494909){
    if(i7<0.003672830993309617){
     s0+=1301.0;
     s1+=130.0;
    } else {
     s0+=888.0;
     s1+=2507.0;
    }
   } else {
    if(i6<6.496906280517578e-06){
     s0+=15715.0;
     s1+=264.0;
    } else {
     s0+=3944.0;
     s1+=853.0;
    }
   }
  } else {
   if(i58<0.04770011082291603){
    if(i17<0.9864580631256104){
     s0+=70.0;
     s1+=156.0;
    } else {
     s0+=312.0;
     s1+=106.0;
    }
   } else {
    if(i8<0.9671083688735962){
     s0+=70.0;
     s1+=64.0;
    } else {
     s0+=114.0;
     s1+=1559.0;
    }
   }
  }
 }
} else {
 if(i35<1.1766420602798462){
  if(i28<1.116804838180542){
   if(i15<0.0003249230794608593){
    s1+=2636.0;
   } else {
    s0+=601.0;
   }
  } else {
   if(i7<0.007033954374492168){
    s0+=3361.0;
   } else {
    if(i36<1.1182971000671387){
     s0+=17.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i46<0.0003864608006551862){
   if(i64<1.0386247634887695){
    s0+=130.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i23<0.10231369733810425){
    if(i47<1.0075044631958008){
     s0+=67.0;
     s1+=642.0;
    } else {
     s0+=119.0;
     s1+=90.0;
    }
   } else {
    if(i29<0.9382284283638){
     s0+=4.0;
    } else {
     s0+=36.0;
     s1+=14269.0;
    }
   }
  }
 }
}
if(i13<1.015453815460205){
 if(i5<1.0035070180892944){
  if(i0<-9.167767711915076e-05){
   if(i66<-0.007671386003494263){
    if(i16<0.07414510846138){
     s0+=587.0;
     s1+=42.0;
    } else {
     s0+=23.0;
     s1+=45.0;
    }
   } else {
    if(i29<1.0759963989257812){
     s0+=181.0;
     s1+=128.0;
    } else {
     s0+=46.0;
     s1+=922.0;
    }
   }
  } else {
   if(i18<0.0015704507241025567){
    if(i18<0.0010506820399314165){
     s0+=72726.0;
     s1+=215.0;
    } else {
     s0+=13326.0;
     s1+=485.0;
    }
   } else {
    if(i28<1.1164028644561768){
     s0+=3068.0;
     s1+=2601.0;
    } else {
     s0+=21381.0;
     s1+=1142.0;
    }
   }
  }
 } else {
  if(i30<0.002205150667577982){
   if(i37<0.0009802012937143445){
    if(i20<0.0001614093780517578){
     s0+=798.0;
     s1+=332.0;
    } else {
     s0+=8.0;
     s1+=1101.0;
    }
   } else {
    if(i21<1.0017156600952148){
     s1+=7.0;
    } else {
     s0+=3375.0;
     s1+=27.0;
    }
   }
  } else {
   if(i39<0.02327886037528515){
    if(i28<1.4505159854888916){
     s0+=22.0;
     s1+=153.0;
    } else {
     s0+=128.0;
     s1+=20.0;
    }
   } else {
    if(i28<1.629280686378479){
     s0+=95.0;
     s1+=2948.0;
    } else {
     s0+=58.0;
     s1+=118.0;
    }
   }
  }
 }
} else {
 if(i19<0.001914680004119873){
  if(i15<0.0007207495509646833){
   if(i41<-1.0473199836269487e-05){
    if(i68<1.005056619644165){
     s0+=113.0;
     s1+=2898.0;
    } else {
     s0+=145.0;
     s1+=264.0;
    }
   } else {
    s0+=275.0;
   }
  } else {
   s0+=323.0;
  }
 } else {
  if(i52<0.9966055750846863){
   s0+=7.0;
  } else {
   if(i48<-6.489233328466071e-06){
    s0+=3.0;
   } else {
    s1+=10724.0;
   }
  }
 }
}
if(i4<1.0026333332061768){
 if(i13<1.0110981464385986){
  if(i7<0.0036513074301183224){
   if(i26<0.0005714988801628351){
    if(i39<0.008529016748070717){
     s0+=20611.0;
     s1+=183.0;
    } else {
     s0+=7282.0;
     s1+=653.0;
    }
   } else {
    if(i12<1.018606424331665){
     s0+=58931.0;
     s1+=153.0;
    } else {
     s0+=160.0;
     s1+=19.0;
    }
   }
  } else {
   if(i1<-0.0003929734230041504){
    if(i23<0.20402869582176208){
     s0+=21023.0;
     s1+=574.0;
    } else {
     s0+=78.0;
     s1+=187.0;
    }
   } else {
    if(i20<5.048513412475586e-05){
     s0+=519.0;
     s1+=2110.0;
    } else {
     s0+=1046.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i7<0.0050931693986058235){
   if(i35<1.1016881465911865){
    s1+=37.0;
   } else {
    if(i68<1.001578450202942){
     s0+=608.0;
    } else {
     s0+=126.0;
     s1+=52.0;
    }
   }
  } else {
   if(i31<0.0029400410130620003){
    if(i52<0.9969189167022705){
     s0+=8.0;
    } else {
     s0+=17.0;
     s1+=1135.0;
    }
   } else {
    if(i37<0.005869009997695684){
     s0+=88.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i7<0.0037980377674102783){
  if(i33<0.000513911247253418){
   if(i49<-1.1488561540318187e-05){
    if(i51<-5.8663677918957546e-05){
     s0+=4.0;
    } else {
     s1+=683.0;
    }
   } else {
    if(i42<0.15544995665550232){
     s0+=256.0;
     s1+=21.0;
    } else {
     s0+=10.0;
     s1+=33.0;
    }
   }
  } else {
   if(i21<1.0123791694641113){
    s0+=4054.0;
   } else {
    s1+=175.0;
   }
  }
 } else {
  if(i23<0.05616292357444763){
   if(i45<9.052291716216132e-08){
    if(i68<1.0039366483688354){
     s0+=1.0;
     s1+=346.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i78<-0.0796506404876709){
     s0+=115.0;
     s1+=181.0;
    } else {
     s0+=708.0;
     s1+=78.0;
    }
   }
  } else {
   if(i61<0.0015627145767211914){
    if(i36<1.1286265850067139){
     s0+=656.0;
     s1+=1736.0;
    } else {
     s0+=191.0;
     s1+=4767.0;
    }
   } else {
    if(i48<-1.9164948753314093e-05){
     s0+=3.0;
    } else {
     s0+=32.0;
     s1+=10699.0;
    }
   }
  }
 }
}
if(i19<0.0012875199317932129){
 if(i6<1.6391277313232422e-05){
  if(i39<0.012177710421383381){
   if(i10<0.9944093823432922){
    if(i34<1.066776156425476){
     s0+=212.0;
     s1+=210.0;
    } else {
     s0+=1885.0;
     s1+=6.0;
    }
   } else {
    if(i13<1.008502721786499){
     s0+=63397.0;
     s1+=279.0;
    } else {
     s0+=1006.0;
     s1+=133.0;
    }
   }
  } else {
   if(i2<-2.9861927032470703e-05){
    if(i23<0.23398521542549133){
     s0+=30102.0;
     s1+=806.0;
    } else {
     s0+=32.0;
     s1+=178.0;
    }
   } else {
    if(i34<1.0868514776229858){
     s0+=830.0;
     s1+=1671.0;
    } else {
     s0+=9188.0;
     s1+=848.0;
    }
   }
  }
 } else {
  if(i14<0.18375161290168762){
   if(i0<-4.900949716102332e-05){
    if(i40<-0.00015931618690956384){
     s0+=626.0;
     s1+=1940.0;
    } else {
     s0+=1034.0;
     s1+=380.0;
    }
   } else {
    if(i7<0.004118964541703463){
     s0+=5689.0;
     s1+=132.0;
    } else {
     s0+=838.0;
     s1+=1201.0;
    }
   }
  } else {
   if(i58<0.023847276344895363){
    if(i35<1.1935834884643555){
     s0+=157.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=132.0;
    }
   } else {
    if(i58<0.041723720729351044){
     s0+=38.0;
     s1+=235.0;
    } else {
     s0+=23.0;
     s1+=2857.0;
    }
   }
  }
 }
} else {
 if(i0<-8.846142736729234e-05){
  if(i4<1.0033442974090576){
   if(i15<0.0006987842498347163){
    if(i63<1.6792389942565933e-05){
     s1+=487.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    s0+=172.0;
   }
  } else {
   if(i72<4.861464731220622e-06){
    if(i23<0.07326501607894897){
     s0+=9.0;
     s1+=175.0;
    } else {
     s0+=15.0;
     s1+=11263.0;
    }
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i28<1.1180615425109863){
   s1+=1284.0;
  } else {
   if(i46<0.0017389145214110613){
    if(i40<3.6882091080769897e-05){
     s0+=962.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    if(i37<0.006947731599211693){
     s0+=29.0;
     s1+=265.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i7<0.007552729919552803){
 if(i13<1.0152629613876343){
  if(i31<0.0006886067567393184){
   if(i3<0.0012074112892150879){
    if(i44<1.000159502029419){
     s0+=42064.0;
     s1+=11.0;
    } else {
     s0+=37216.0;
     s1+=420.0;
    }
   } else {
    if(i45<-8.183056706911884e-06){
     s0+=11.0;
     s1+=451.0;
    } else {
     s0+=117.0;
    }
   }
  } else {
   if(i19<-0.0013632476329803467){
    if(i28<1.1164028644561768){
     s0+=507.0;
     s1+=139.0;
    } else {
     s0+=16121.0;
     s1+=154.0;
    }
   } else {
    if(i58<0.010533738881349564){
     s0+=8820.0;
     s1+=1140.0;
    } else {
     s0+=5382.0;
     s1+=3029.0;
    }
   }
  }
 } else {
  if(i8<1.0162638425827026){
   if(i46<0.0008984912419691682){
    if(i15<0.0002741652133408934){
     s1+=388.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i51<-1.108987726183841e-05){
     s0+=555.0;
     s1+=15.0;
    } else {
     s0+=309.0;
     s1+=245.0;
    }
   }
  } else {
   if(i25<0.00022089526464696974){
    s0+=4.0;
   } else {
    s1+=1415.0;
   }
  }
 }
} else {
 if(i5<0.9989136457443237){
  if(i73<0.10400810837745667){
   if(i29<1.115910530090332){
    if(i0<-0.00015207870455924422){
     s0+=17.0;
     s1+=27.0;
    } else {
     s0+=4586.0;
     s1+=198.0;
    }
   } else {
    if(i7<0.010350685566663742){
     s0+=9.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=136.0;
    }
   }
  } else {
   if(i7<0.010699877515435219){
    if(i1<-0.0005025863647460938){
     s0+=92.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.0035710595548152924){
     s0+=7.0;
    } else {
     s0+=11.0;
     s1+=261.0;
    }
   }
  }
 } else {
  if(i5<1.003852128982544){
   if(i29<1.0242583751678467){
    if(i28<1.4667320251464844){
     s0+=249.0;
     s1+=69.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   } else {
    if(i48<-6.14101008977741e-06){
     s0+=37.0;
    } else {
     s0+=213.0;
     s1+=2243.0;
    }
   }
  } else {
   if(i60<0.9500585794448853){
    if(i45<9.436485925107263e-06){
     s1+=88.0;
    } else {
     s0+=24.0;
     s1+=32.0;
    }
   } else {
    if(i2<-0.0005725622177124023){
     s0+=2.0;
    } else {
     s0+=34.0;
     s1+=13939.0;
    }
   }
  }
 }
}
if(i0<-9.840834536589682e-05){
 if(i16<0.019162803888320923){
  if(i29<1.0529417991638184){
   if(i5<1.007636547088623){
    if(i74<-0.011878639459609985){
     s0+=17.0;
     s1+=19.0;
    } else {
     s0+=553.0;
     s1+=7.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i4<1.0034563541412354){
    if(i40<-0.0005061559495516121){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i66<-0.007693499326705933){
     s0+=2.0;
     s1+=4.0;
    } else {
     s1+=60.0;
    }
   }
  }
 } else {
  if(i66<-0.009048432111740112){
   if(i21<1.0097625255584717){
    if(i53<-7.18235969543457e-06){
     s1+=5.0;
    } else {
     s0+=89.0;
     s1+=2.0;
    }
   } else {
    if(i34<1.367675542831421){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   }
  } else {
   if(i72<5.833392606291454e-06){
    if(i30<0.00221178587526083){
     s0+=127.0;
     s1+=661.0;
    } else {
     s0+=52.0;
     s1+=14477.0;
    }
   } else {
    s0+=138.0;
   }
  }
 }
} else {
 if(i18<0.001741394167765975){
  if(i5<1.0080311298370361){
   if(i31<0.0005263877101242542){
    if(i30<0.0019061374478042126){
     s0+=65512.0;
     s1+=57.0;
    } else {
     s0+=3476.0;
     s1+=68.0;
    }
   } else {
    if(i32<1.0776758193969727){
     s0+=4181.0;
     s1+=647.0;
    } else {
     s0+=19564.0;
     s1+=208.0;
    }
   }
  } else {
   if(i34<1.094316005706787){
    s1+=357.0;
   } else {
    if(i7<0.004297303035855293){
     s0+=328.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i8<1.005842924118042){
   if(i21<0.9981770515441895){
    if(i16<0.23148459196090698){
     s0+=14161.0;
     s1+=338.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   } else {
    if(i15<0.0003444153699092567){
     s0+=3409.0;
     s1+=3278.0;
    } else {
     s0+=3794.0;
     s1+=445.0;
    }
   }
  } else {
   if(i25<0.007165422197431326){
    if(i53<9.357929229736328e-06){
     s0+=221.0;
     s1+=853.0;
    } else {
     s0+=917.0;
     s1+=104.0;
    }
   } else {
    if(i48<-4.383316536404891e-06){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=131.0;
     s1+=2318.0;
    }
   }
  }
 }
}
if(i3<0.0005705952644348145){
 if(i9<1.0184857845306396){
  if(i7<0.003651426872238517){
   if(i37<0.0006395583041012287){
    if(i27<0.9987365007400513){
     s0+=8947.0;
     s1+=664.0;
    } else {
     s0+=16282.0;
     s1+=129.0;
    }
   } else {
    if(i30<0.0019064306979998946){
     s0+=48543.0;
     s1+=15.0;
    } else {
     s0+=12771.0;
     s1+=201.0;
    }
   }
  } else {
   if(i5<0.9988847970962524){
    if(i16<0.20402869582176208){
     s0+=21449.0;
     s1+=674.0;
    } else {
     s0+=55.0;
     s1+=202.0;
    }
   } else {
    if(i25<0.009406901895999908){
     s0+=948.0;
     s1+=255.0;
    } else {
     s0+=370.0;
     s1+=2174.0;
    }
   }
  }
 } else {
  if(i0<-6.152100104372948e-05){
   if(i33<0.0004506707191467285){
    if(i51<-3.187855099895387e-06){
     s0+=10.0;
     s1+=527.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i20<-0.0001564323902130127){
     s1+=27.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   }
  } else {
   if(i6<1.436471939086914e-05){
    if(i33<0.00010102987289428711){
     s0+=401.0;
     s1+=4.0;
    } else {
     s0+=112.0;
     s1+=40.0;
    }
   } else {
    if(i2<-3.546476364135742e-05){
     s0+=32.0;
    } else {
     s0+=1.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i8<1.0136455297470093){
  if(i7<0.0043881554156541824){
   if(i49<-2.4122044123942032e-05){
    if(i34<1.0905089378356934){
     s1+=379.0;
    } else {
     s0+=140.0;
     s1+=3.0;
    }
   } else {
    if(i48<-4.172325134277344e-07){
     s0+=4716.0;
     s1+=242.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i14<0.04123270511627197){
    if(i20<-0.0002446770668029785){
     s0+=637.0;
     s1+=136.0;
    } else {
     s0+=18.0;
     s1+=118.0;
    }
   } else {
    if(i55<0.006382122170180082){
     s0+=888.0;
     s1+=3187.0;
    } else {
     s0+=143.0;
     s1+=2736.0;
    }
   }
  }
 } else {
  if(i33<0.0017088353633880615){
   if(i6<0.0002942085266113281){
    if(i37<0.0016918294131755829){
     s0+=98.0;
     s1+=1161.0;
    } else {
     s1+=11217.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   s0+=57.0;
  }
 }
}
if(i1<0.0009572505950927734){
 if(i14<0.2178003191947937){
  if(i3<0.0003120303153991699){
   if(i30<0.0010565380798652768){
    if(i39<0.009728842414915562){
     s0+=20784.0;
     s1+=247.0;
    } else {
     s0+=8826.0;
     s1+=1913.0;
    }
   } else {
    if(i7<0.019750643521547318){
     s0+=74213.0;
     s1+=679.0;
    } else {
     s0+=44.0;
     s1+=55.0;
    }
   }
  } else {
   if(i39<0.02033895254135132){
    if(i59<0.000340501923346892){
     s0+=2972.0;
     s1+=824.0;
    } else {
     s0+=4575.0;
     s1+=121.0;
    }
   } else {
    if(i14<0.06631729006767273){
     s0+=1445.0;
     s1+=374.0;
    } else {
     s0+=1030.0;
     s1+=2363.0;
    }
   }
  }
 } else {
  if(i31<0.0009703018586151302){
   if(i6<1.0907649993896484e-05){
    if(i60<1.1018846035003662){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=199.0;
     s1+=1.0;
    }
   } else {
    if(i41<-1.7350088455714285e-05){
     s0+=3.0;
     s1+=26.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i41<-8.040256034291815e-06){
    if(i58<0.042627524584531784){
     s0+=39.0;
     s1+=89.0;
    } else {
     s0+=17.0;
     s1+=1275.0;
    }
   } else {
    s0+=29.0;
   }
  }
 }
} else {
 if(i37<0.0019787342753261328){
  if(i26<0.0009706164710223675){
   if(i38<0.00019530199642758816){
    s0+=85.0;
   } else {
    s1+=2292.0;
   }
  } else {
   if(i26<0.002447307575494051){
    s0+=1868.0;
   } else {
    s1+=24.0;
   }
  }
 } else {
  if(i34<1.127323031425476){
   if(i30<0.0015182907227426767){
    s1+=18.0;
   } else {
    if(i10<0.9761009216308594){
     s1+=5.0;
    } else {
     s0+=68.0;
    }
   }
  } else {
   if(i14<0.018454670906066895){
    if(i32<1.4213035106658936){
     s0+=37.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   } else {
    if(i67<0.013870321214199066){
     s0+=57.0;
     s1+=14136.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i9<1.0170528888702393){
 if(i23<0.2033391296863556){
  if(i4<1.0025954246520996){
   if(i18<0.0016411293763667345){
    if(i18<0.0010444126091897488){
     s0+=72251.0;
     s1+=206.0;
    } else {
     s0+=14775.0;
     s1+=587.0;
    }
   } else {
    if(i4<1.0000370740890503){
     s0+=14806.0;
     s1+=454.0;
    } else {
     s0+=7438.0;
     s1+=2842.0;
    }
   }
  } else {
   if(i0<-7.220150291686878e-05){
    if(i24<0.8918793201446533){
     s0+=287.0;
     s1+=174.0;
    } else {
     s0+=427.0;
     s1+=2560.0;
    }
   } else {
    if(i45<-1.0023948561865836e-05){
     s0+=151.0;
     s1+=523.0;
    } else {
     s0+=4489.0;
     s1+=1093.0;
    }
   }
  }
 } else {
  if(i36<1.127637267112732){
   if(i4<1.0018367767333984){
    if(i26<0.010537568479776382){
     s0+=215.0;
     s1+=5.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i38<0.0030262658838182688){
     s0+=24.0;
     s1+=7.0;
    } else {
     s1+=96.0;
    }
   }
  } else {
   if(i0<-2.168637001886964e-05){
    if(i32<1.1457456350326538){
     s0+=12.0;
    } else {
     s0+=8.0;
     s1+=1525.0;
    }
   } else {
    if(i3<0.0003013014793395996){
     s0+=47.0;
    } else {
     s0+=7.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i6<1.0848045349121094e-05){
  if(i38<0.0083241518586874){
   if(i51<-2.711443812586367e-06){
    if(i63<6.366763500409434e-06){
     s0+=35.0;
     s1+=135.0;
    } else {
     s0+=150.0;
     s1+=1.0;
    }
   } else {
    if(i45<2.2031472326489165e-05){
     s0+=490.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i54<0.0016977598425000906){
    s0+=7.0;
   } else {
    s1+=169.0;
   }
  }
 } else {
  if(i15<0.000713865680154413){
   if(i30<0.007219747640192509){
    if(i5<1.0008190870285034){
     s0+=88.0;
     s1+=14.0;
    } else {
     s0+=269.0;
     s1+=4283.0;
    }
   } else {
    if(i16<0.09465053677558899){
     s0+=25.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=9647.0;
    }
   }
  } else {
   s0+=494.0;
  }
 }
}
if(i17<1.0179178714752197){
 if(i2<7.56382942199707e-05){
  if(i58<0.0918176993727684){
   if(i41<-4.35944166383706e-05){
    if(i39<0.0412122905254364){
     s0+=92.0;
     s1+=4.0;
    } else {
     s0+=123.0;
     s1+=356.0;
    }
   } else {
    if(i39<0.011388629674911499){
     s0+=68543.0;
     s1+=904.0;
    } else {
     s0+=43395.0;
     s1+=4072.0;
    }
   }
  } else {
   if(i8<0.9761797785758972){
    if(i73<0.1679762601852417){
     s0+=1795.0;
     s1+=147.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i0<1.0530758117965888e-05){
     s0+=30.0;
     s1+=1174.0;
    } else {
     s0+=91.0;
    }
   }
  }
 } else {
  if(i65<9.027399937622249e-05){
   if(i55<0.0007433343562297523){
    if(i20<0.0010216832160949707){
     s1+=529.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i66<0.0010353922843933105){
     s0+=884.0;
     s1+=28.0;
    } else {
     s0+=68.0;
     s1+=74.0;
    }
   }
  } else {
   if(i34<1.1453365087509155){
    if(i51<-1.3179738743929192e-05){
     s0+=181.0;
     s1+=58.0;
    } else {
     s0+=9.0;
     s1+=612.0;
    }
   } else {
    if(i22<1.0258264541625977){
     s0+=26.0;
     s1+=24.0;
    } else {
     s0+=52.0;
     s1+=2545.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007067971746437252){
  if(i7<0.005060822702944279){
   if(i19<0.0014865398406982422){
    if(i37<0.000733728869818151){
     s1+=51.0;
    } else {
     s0+=869.0;
     s1+=80.0;
    }
   } else {
    if(i1<0.0005494952201843262){
     s0+=8.0;
    } else {
     s0+=7.0;
     s1+=587.0;
    }
   }
  } else {
   if(i14<0.061158210039138794){
    if(i78<-0.042761385440826416){
     s1+=20.0;
    } else {
     s0+=26.0;
     s1+=5.0;
    }
   } else {
    if(i4<0.9954915046691895){
     s0+=7.0;
    } else {
     s0+=25.0;
     s1+=12916.0;
    }
   }
  }
 } else {
  s0+=403.0;
 }
}
if(i6<2.2113323211669922e-05){
 if(i18<0.0017270520329475403){
  if(i66<-0.0004975497722625732){
   if(i41<-1.4849565559416078e-05){
    if(i54<0.0005712003912776709){
     s1+=35.0;
    } else {
     s0+=58.0;
     s1+=16.0;
    }
   } else {
    if(i2<-4.476308822631836e-05){
     s0+=6849.0;
     s1+=26.0;
    } else {
     s0+=5298.0;
     s1+=409.0;
    }
   }
  } else {
   if(i31<0.0005259000463411212){
    if(i37<0.0018291790038347244){
     s0+=56061.0;
     s1+=39.0;
    } else {
     s0+=2399.0;
     s1+=60.0;
    }
   } else {
    if(i57<0.0959388017654419){
     s0+=18776.0;
     s1+=365.0;
    } else {
     s0+=19.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i2<-2.485513687133789e-05){
   if(i67<-0.0010032951831817627){
    if(i1<-0.002264052629470825){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=71.0;
    }
   } else {
    if(i29<1.140743374824524){
     s0+=18101.0;
     s1+=725.0;
    } else {
     s0+=40.0;
     s1+=154.0;
    }
   }
  } else {
   if(i30<0.00021712201123591512){
    if(i48<-7.163612281146925e-07){
     s0+=969.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<0.9994657039642334){
     s0+=961.0;
     s1+=183.0;
    } else {
     s0+=576.0;
     s1+=3080.0;
    }
   }
  }
 }
} else {
 if(i0<-7.230872142827138e-05){
  if(i19<-0.003787219524383545){
   if(i69<0.4980488419532776){
    if(i4<1.0062201023101807){
     s0+=279.0;
     s1+=44.0;
    } else {
     s0+=7.0;
     s1+=44.0;
    }
   } else {
    if(i29<1.1001770496368408){
     s0+=32.0;
     s1+=10.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i63<1.2185533705633134e-05){
    if(i34<1.141157627105713){
     s0+=414.0;
     s1+=1464.0;
    } else {
     s0+=178.0;
     s1+=14476.0;
    }
   } else {
    if(i65<0.0013293181546032429){
     s0+=80.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i1<0.0013666152954101562){
   if(i7<0.003960899543017149){
    if(i20<0.00019305944442749023){
     s0+=3921.0;
     s1+=28.0;
    } else {
     s0+=107.0;
     s1+=36.0;
    }
   } else {
    if(i28<1.1222262382507324){
     s0+=16.0;
     s1+=858.0;
    } else {
     s0+=1096.0;
     s1+=773.0;
    }
   }
  } else {
   if(i29<1.0648064613342285){
    if(i53<2.899765968322754e-05){
     s0+=23.0;
     s1+=722.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i36<1.1269601583480835){
     s0+=530.0;
     s1+=87.0;
    } else {
     s0+=15.0;
     s1+=226.0;
    }
   }
  }
 }
}
if(i3<0.0005905032157897949){
 if(i13<1.0102155208587646){
  if(i7<0.003652038984000683){
   if(i37<0.0006833666702732444){
    if(i65<0.0001675108214840293){
     s0+=23699.0;
     s1+=215.0;
    } else {
     s0+=2178.0;
     s1+=577.0;
    }
   } else {
    if(i55<0.002061239443719387){
     s0+=57876.0;
     s1+=95.0;
    } else {
     s0+=2582.0;
     s1+=106.0;
    }
   }
  } else {
   if(i4<1.000105857849121){
    if(i73<0.21389195322990417){
     s0+=18308.0;
     s1+=426.0;
    } else {
     s0+=14.0;
     s1+=61.0;
    }
   } else {
    if(i1<-0.0004730522632598877){
     s0+=3660.0;
     s1+=439.0;
    } else {
     s0+=598.0;
     s1+=2444.0;
    }
   }
  }
 } else {
  if(i18<0.0016010503750294447){
   if(i65<0.00013780106382910162){
    if(i65<-4.260964851710014e-05){
     s0+=635.0;
    } else {
     s0+=156.0;
     s1+=28.0;
    }
   } else {
    if(i52<1.0009689331054688){
     s0+=3.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i2<-2.1696090698242188e-05){
    if(i25<0.03369062393903732){
     s0+=201.0;
     s1+=8.0;
    } else {
     s1+=60.0;
    }
   } else {
    if(i17<1.0086359977722168){
     s0+=6.0;
    } else {
     s0+=30.0;
     s1+=854.0;
    }
   }
  }
 }
} else {
 if(i9<1.021944522857666){
  if(i5<1.0102424621582031){
   if(i57<0.06455959379673004){
    if(i54<0.0006897117709740996){
     s0+=1839.0;
     s1+=1691.0;
    } else {
     s0+=3407.0;
     s1+=549.0;
    }
   } else {
    if(i22<1.0869234800338745){
     s0+=701.0;
     s1+=301.0;
    } else {
     s0+=289.0;
     s1+=2208.0;
    }
   }
  } else {
   if(i48<-2.517421125958208e-05){
    s0+=2.0;
   } else {
    s1+=2017.0;
   }
  }
 } else {
  if(i8<1.013535976409912){
   if(i50<0.09828896820545197){
    if(i52<1.0029444694519043){
     s0+=28.0;
     s1+=352.0;
    } else {
     s0+=176.0;
     s1+=161.0;
    }
   } else {
    if(i57<0.011022321879863739){
     s0+=5.0;
    } else {
     s0+=12.0;
     s1+=1024.0;
    }
   }
  } else {
   if(i25<0.004594166297465563){
    if(i2<0.00012296438217163086){
     s0+=24.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=205.0;
    }
   } else {
    if(i72<-6.002398095006356e-06){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=10586.0;
    }
   }
  }
 }
}
if(i2<6.490945816040039e-05){
 if(i14<0.214928537607193){
  if(i18<0.0017412840388715267){
   if(i29<1.0179111957550049){
    if(i41<-1.1748588804039173e-05){
     s0+=110.0;
     s1+=74.0;
    } else {
     s0+=10467.0;
     s1+=393.0;
    }
   } else {
    if(i39<0.014643246307969093){
     s0+=65316.0;
     s1+=176.0;
    } else {
     s0+=15842.0;
     s1+=385.0;
    }
   }
  } else {
   if(i21<0.9981873035430908){
    if(i12<1.0426666736602783){
     s0+=14115.0;
     s1+=467.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i23<0.04432561993598938){
     s0+=4340.0;
     s1+=641.0;
    } else {
     s0+=4066.0;
     s1+=4389.0;
    }
   }
  }
 } else {
  if(i32<1.18253755569458){
   if(i24<1.0263817310333252){
    if(i41<-2.2147854906506836e-05){
     s1+=3.0;
    } else {
     s0+=189.0;
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i7<0.005551251582801342){
    if(i0<-6.342610868159682e-05){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=154.0;
     s1+=8.0;
    }
   } else {
    if(i7<0.00703670596703887){
     s0+=13.0;
     s1+=28.0;
    } else {
     s1+=1383.0;
    }
   }
  }
 }
} else {
 if(i35<1.176405668258667){
  if(i15<0.00024223740911111236){
   if(i28<1.1229777336120605){
    s1+=2312.0;
   } else {
    s0+=55.0;
   }
  } else {
   s0+=1814.0;
  }
 } else {
  if(i42<0.000132828950881958){
   if(i15<0.00011263466149102896){
    if(i23<0.0003789663314819336){
     s0+=25.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i78<-0.0069217681884765625){
     s0+=11.0;
     s1+=94.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i7<0.008489744737744331){
    if(i22<1.0742113590240479){
     s0+=21.0;
     s1+=37.0;
    } else {
     s0+=17.0;
     s1+=1537.0;
    }
   } else {
    if(i67<0.015356210991740227){
     s0+=17.0;
     s1+=12297.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i20<0.00020498037338256836){
 if(i16<0.1999807357788086){
  if(i3<0.0003425478935241699){
   if(i18<0.001444588415324688){
    if(i11<0.9961502552032471){
     s0+=17816.0;
     s1+=339.0;
    } else {
     s0+=63063.0;
     s1+=208.0;
    }
   } else {
    if(i35<1.0955833196640015){
     s0+=1838.0;
     s1+=1655.0;
    } else {
     s0+=21709.0;
     s1+=835.0;
    }
   }
  } else {
   if(i0<-6.276163185248151e-05){
    if(i14<0.05529382824897766){
     s0+=711.0;
     s1+=243.0;
    } else {
     s0+=395.0;
     s1+=2124.0;
    }
   } else {
    if(i50<0.037285465747117996){
     s0+=7736.0;
     s1+=1183.0;
    } else {
     s0+=1568.0;
     s1+=1259.0;
    }
   }
  }
 } else {
  if(i7<0.006278231739997864){
   if(i2<1.2159347534179688e-05){
    if(i12<1.015120029449463){
     s0+=271.0;
     s1+=5.0;
    } else {
     s0+=54.0;
     s1+=13.0;
    }
   } else {
    if(i26<0.001974219921976328){
     s0+=49.0;
    } else {
     s0+=2.0;
     s1+=51.0;
    }
   }
  } else {
   if(i0<1.1291930604784284e-05){
    if(i46<0.0016675995429977775){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=3239.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
} else {
 if(i30<0.0026138685643672943){
  if(i54<0.0007057955954223871){
   if(i26<0.0010826580692082644){
    s1+=1883.0;
   } else {
    s0+=70.0;
   }
  } else {
   if(i30<0.0011717180022969842){
    s1+=134.0;
   } else {
    if(i19<0.0027791261672973633){
     s0+=916.0;
     s1+=19.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i5<1.0038535594940186){
   if(i31<0.0009537270525470376){
    s0+=75.0;
   } else {
    s1+=41.0;
   }
  } else {
   s1+=11331.0;
  }
 }
}
if(i1<0.0009605884552001953){
 if(i0<-8.035823702812195e-05){
  if(i73<0.04352995753288269){
   if(i29<1.0453083515167236){
    if(i14<0.06766685843467712){
     s0+=990.0;
     s1+=70.0;
    } else {
     s0+=4.0;
     s1+=35.0;
    }
   } else {
    if(i22<1.072741985321045){
     s0+=33.0;
     s1+=20.0;
    } else {
     s0+=64.0;
     s1+=576.0;
    }
   }
  } else {
   if(i37<0.0018784593557938933){
    if(i32<1.0912904739379883){
     s1+=17.0;
    } else {
     s0+=79.0;
    }
   } else {
    if(i13<0.9263635277748108){
     s0+=61.0;
     s1+=22.0;
    } else {
     s0+=64.0;
     s1+=1672.0;
    }
   }
  }
 } else {
  if(i39<0.014019686728715897){
   if(i65<0.00023163655714597553){
    if(i7<0.003781460225582123){
     s0+=66856.0;
     s1+=260.0;
    } else {
     s0+=8673.0;
     s1+=816.0;
    }
   } else {
    if(i54<0.0003786854795180261){
     s0+=253.0;
     s1+=267.0;
    } else {
     s0+=892.0;
     s1+=33.0;
    }
   }
  } else {
   if(i21<0.9981840252876282){
    if(i29<1.1173977851867676){
     s0+=23956.0;
     s1+=296.0;
    } else {
     s0+=425.0;
     s1+=106.0;
    }
   } else {
    if(i40<-0.00011341216304572299){
     s0+=3609.0;
     s1+=2486.0;
    } else {
     s0+=8403.0;
     s1+=1426.0;
    }
   }
  }
 }
} else {
 if(i33<0.0016697049140930176){
  if(i30<0.0024050595238804817){
   if(i28<1.1180615425109863){
    if(i33<0.0006200969219207764){
     s1+=2334.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i32<1.1762815713882446){
     s0+=1400.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i8<0.976647138595581){
    if(i1<0.002047598361968994){
     s0+=44.0;
     s1+=49.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i27<1.0042450428009033){
     s0+=50.0;
     s1+=1325.0;
    } else {
     s0+=10.0;
     s1+=12529.0;
    }
   }
  }
 } else {
  if(i64<1.0887887477874756){
   s0+=512.0;
  } else {
   s1+=21.0;
  }
 }
}
if(i0<-9.841532300924882e-05){
 if(i19<-0.003987431526184082){
  if(i14<0.07682543992996216){
   if(i31<0.0031499569304287434){
    if(i3<0.001866161823272705){
     s0+=506.0;
     s1+=20.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i20<-0.0011831223964691162){
     s0+=24.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   }
  } else {
   if(i67<0.010313943959772587){
    if(i8<0.9493142366409302){
     s0+=1.0;
    } else {
     s1+=133.0;
    }
   } else {
    if(i5<0.9971153736114502){
     s1+=12.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i44<0.997994065284729){
   s0+=152.0;
  } else {
   if(i48<-6.389767804648727e-06){
    s0+=86.0;
   } else {
    if(i23<0.018527567386627197){
     s0+=111.0;
     s1+=73.0;
    } else {
     s0+=41.0;
     s1+=15001.0;
    }
   }
  }
 }
} else {
 if(i13<1.0105669498443604){
  if(i3<0.0003573298454284668){
   if(i61<-0.0006094872951507568){
    if(i18<0.0012627777177840471){
     s0+=14044.0;
     s1+=186.0;
    } else {
     s0+=10361.0;
     s1+=1415.0;
    }
   } else {
    if(i38<0.0010449818801134825){
     s0+=25138.0;
     s1+=1138.0;
    } else {
     s0+=55043.0;
     s1+=282.0;
    }
   }
  } else {
   if(i18<0.0018947826465591788){
    if(i50<0.051188718527555466){
     s0+=4636.0;
     s1+=145.0;
    } else {
     s0+=45.0;
     s1+=104.0;
    }
   } else {
    if(i23<0.049187541007995605){
     s0+=2024.0;
     s1+=375.0;
    } else {
     s0+=1420.0;
     s1+=2162.0;
    }
   }
  }
 } else {
  if(i35<1.1174830198287964){
   if(i59<0.0010165449930354953){
    if(i44<1.0009891986846924){
     s0+=14.0;
     s1+=1900.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i22<1.0928397178649902){
     s1+=2.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i38<0.0019849594682455063){
    if(i40<-0.00039380707312375307){
     s0+=179.0;
     s1+=2.0;
    } else {
     s0+=1889.0;
    }
   } else {
    if(i32<1.4586446285247803){
     s0+=416.0;
     s1+=1311.0;
    } else {
     s0+=375.0;
    }
   }
  }
 }
}
if(i27<1.0082969665527344){
 if(i22<1.1402404308319092){
  if(i41<-4.731311491923407e-05){
   if(i51<-3.023923454748001e-05){
    s0+=120.0;
   } else {
    if(i71<-0.01514655351638794){
     s0+=165.0;
     s1+=60.0;
    } else {
     s0+=24.0;
     s1+=685.0;
    }
   }
  } else {
   if(i33<0.00010412931442260742){
    if(i68<1.0003560781478882){
     s0+=53288.0;
     s1+=217.0;
    } else {
     s0+=27919.0;
     s1+=976.0;
    }
   } else {
    if(i32<1.0917774438858032){
     s0+=5464.0;
     s1+=2692.0;
    } else {
     s0+=26407.0;
     s1+=2467.0;
    }
   }
  }
 } else {
  if(i41<-1.5069563232827932e-05){
   if(i30<0.002032204531133175){
    s0+=69.0;
   } else {
    if(i7<0.006063672713935375){
     s0+=94.0;
     s1+=37.0;
    } else {
     s0+=135.0;
     s1+=3233.0;
    }
   }
  } else {
   if(i3<0.0002701282501220703){
    if(i41<-1.2975600839126855e-05){
     s0+=16.0;
     s1+=15.0;
    } else {
     s0+=850.0;
     s1+=6.0;
    }
   } else {
    if(i25<0.024836912751197815){
     s0+=160.0;
    } else {
     s1+=92.0;
    }
   }
  }
 }
} else {
 if(i20<0.0003007054328918457){
  if(i32<1.17277193069458){
   if(i37<0.0010523092932999134){
    if(i28<1.2954673767089844){
     s1+=943.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i66<0.0014191865921020508){
     s0+=1661.0;
     s1+=41.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i7<0.003754270263016224){
    s0+=79.0;
   } else {
    s1+=1827.0;
   }
  }
 } else {
  if(i53<3.37064266204834e-05){
   if(i72<5.428404620033689e-06){
    s1+=10996.0;
   } else {
    s0+=39.0;
   }
  } else {
   s0+=30.0;
  }
 }
}
if(i12<1.0167311429977417){
 if(i0<-8.064847497735173e-05){
  if(i20<-0.0005542635917663574){
   if(i14<0.08229577541351318){
    if(i8<0.9708556532859802){
     s0+=849.0;
     s1+=56.0;
    } else {
     s0+=44.0;
     s1+=45.0;
    }
   } else {
    if(i60<0.8969115614891052){
     s0+=14.0;
    } else {
     s0+=29.0;
     s1+=219.0;
    }
   }
  } else {
   if(i25<0.0067752813920378685){
    if(i5<1.0082517862319946){
     s0+=256.0;
     s1+=30.0;
    } else {
     s0+=11.0;
     s1+=180.0;
    }
   } else {
    if(i16<0.01931658387184143){
     s0+=179.0;
     s1+=128.0;
    } else {
     s0+=141.0;
     s1+=3450.0;
    }
   }
  }
 } else {
  if(i18<0.0017125923186540604){
   if(i63<-5.71311466046609e-06){
    if(i68<1.002677083015442){
     s1+=204.0;
    } else {
     s0+=77.0;
    }
   } else {
    if(i31<0.0005737334722653031){
     s0+=71516.0;
     s1+=154.0;
    } else {
     s0+=19426.0;
     s1+=725.0;
    }
   }
  } else {
   if(i15<0.00025371555238962173){
    if(i19<-0.001386404037475586){
     s0+=4319.0;
     s1+=320.0;
    } else {
     s0+=1877.0;
     s1+=3510.0;
    }
   } else {
    if(i38<0.0207208264619112){
     s0+=15709.0;
     s1+=752.0;
    } else {
     s0+=89.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i18<0.0013879041653126478){
  if(i63<-7.1591321102459915e-06){
   if(i48<-7.649694452993572e-06){
    s0+=14.0;
   } else {
    s1+=407.0;
   }
  } else {
   if(i41<-7.154405466280878e-06){
    if(i35<1.1729364395141602){
     s0+=395.0;
    } else {
     s0+=55.0;
     s1+=29.0;
    }
   } else {
    s0+=538.0;
   }
  }
 } else {
  if(i1<-8.52346420288086e-06){
   if(i7<0.006301501765847206){
    if(i40<-0.00044322741450741887){
     s0+=202.0;
     s1+=22.0;
    } else {
     s0+=170.0;
    }
   } else {
    if(i22<1.1078033447265625){
     s0+=22.0;
     s1+=32.0;
    } else {
     s0+=3.0;
     s1+=266.0;
    }
   }
  } else {
   if(i16<0.14468562602996826){
    if(i53<1.2814998626708984e-05){
     s0+=164.0;
     s1+=1887.0;
    } else {
     s0+=279.0;
     s1+=104.0;
    }
   } else {
    if(i33<0.0017467737197875977){
     s0+=40.0;
     s1+=11823.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
}
if(i8<1.0126030445098877){
 if(i55<0.004553691949695349){
  if(i4<1.002237319946289){
   if(i24<1.021618366241455){
    if(i28<1.1162974834442139){
     s0+=29283.0;
     s1+=3050.0;
    } else {
     s0+=74464.0;
     s1+=429.0;
    }
   } else {
    if(i28<1.116804838180542){
     s0+=21.0;
     s1+=343.0;
    } else {
     s0+=567.0;
     s1+=92.0;
    }
   }
  } else {
   if(i18<0.0017991667846217752){
    if(i63<-5.027289716963423e-06){
     s0+=148.0;
     s1+=251.0;
    } else {
     s0+=3882.0;
     s1+=87.0;
    }
   } else {
    if(i16<0.17153429985046387){
     s0+=2667.0;
     s1+=2131.0;
    } else {
     s0+=91.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i5<0.9999324083328247){
   if(i40<-0.00033050551428459585){
    if(i41<-5.602395503956359e-06){
     s0+=113.0;
     s1+=530.0;
    } else {
     s0+=125.0;
     s1+=2.0;
    }
   } else {
    if(i16<0.15334239602088928){
     s0+=4033.0;
     s1+=102.0;
    } else {
     s0+=125.0;
     s1+=94.0;
    }
   }
  } else {
   if(i25<0.030814096331596375){
    if(i4<1.0045180320739746){
     s0+=175.0;
     s1+=52.0;
    } else {
     s0+=70.0;
     s1+=166.0;
    }
   } else {
    if(i23<0.01815354824066162){
     s0+=62.0;
     s1+=54.0;
    } else {
     s0+=98.0;
     s1+=3222.0;
    }
   }
  }
 }
} else {
 if(i38<0.0024835215881466866){
  if(i46<0.0008781306096352637){
   if(i33<0.0006684064865112305){
    s1+=1397.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i51<-1.0970744369842578e-05){
    s0+=374.0;
   } else {
    if(i24<1.060882806777954){
     s1+=27.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i7<0.0035465445835143328){
   if(i51<-5.92504102314706e-06){
    if(i8<1.0136232376098633){
     s0+=14.0;
     s1+=3.0;
    } else {
     s1+=213.0;
    }
   } else {
    s0+=31.0;
   }
  } else {
   if(i1<9.047985076904297e-05){
    if(i39<0.025722485035657883){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=11634.0;
   }
  }
 }
}
if(i10<1.0143951177597046){
 if(i0<-8.455271017737687e-05){
  if(i56<-0.0005796179175376892){
   if(i38<0.0024202032946050167){
    if(i38<0.0010573983890935779){
     s1+=6.0;
    } else {
     s0+=82.0;
     s1+=1.0;
    }
   } else {
    if(i13<0.9285534620285034){
     s0+=89.0;
     s1+=28.0;
    } else {
     s0+=87.0;
     s1+=3374.0;
    }
   }
  } else {
   if(i49<0.0002881808904930949){
    if(i48<-6.578118245670339e-06){
     s0+=177.0;
    } else {
     s0+=172.0;
     s1+=806.0;
    }
   } else {
    if(i25<0.05627308785915375){
     s0+=732.0;
     s1+=19.0;
    } else {
     s0+=47.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i3<0.00032657384872436523){
   if(i33<6.216764450073242e-05){
    if(i7<0.013996429741382599){
     s0+=73911.0;
     s1+=721.0;
    } else {
     s0+=5.0;
     s1+=32.0;
    }
   } else {
    if(i38<0.0010463539510965347){
     s0+=4221.0;
     s1+=1457.0;
    } else {
     s0+=25518.0;
     s1+=693.0;
    }
   }
  } else {
   if(i25<0.007955718785524368){
    if(i19<0.0011319518089294434){
     s0+=7166.0;
     s1+=222.0;
    } else {
     s0+=582.0;
     s1+=709.0;
    }
   } else {
    if(i33<0.000424802303314209){
     s0+=419.0;
     s1+=1793.0;
    } else {
     s0+=2002.0;
     s1+=950.0;
    }
   }
  }
 }
} else {
 if(i0<-4.7452504077227786e-05){
  if(i0<-8.8343265815638e-05){
   if(i41<-0.00018586553051136434){
    s0+=4.0;
   } else {
    if(i48<-6.519388534798054e-06){
     s0+=55.0;
    } else {
     s0+=10.0;
     s1+=12207.0;
    }
   }
  } else {
   if(i34<1.0965585708618164){
    s1+=691.0;
   } else {
    if(i15<0.00031881200266070664){
     s0+=84.0;
     s1+=592.0;
    } else {
     s0+=321.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i35<1.100994348526001){
   s1+=106.0;
  } else {
   if(i17<1.0437676906585693){
    if(i17<1.0275665521621704){
     s0+=414.0;
     s1+=8.0;
    } else {
     s0+=102.0;
     s1+=25.0;
    }
   } else {
    if(i51<-4.362761956144823e-06){
     s0+=9.0;
     s1+=49.0;
    } else {
     s0+=53.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i9<1.018571138381958){
  if(i25<0.08946572244167328){
   if(i25<0.006728184875100851){
    if(i9<0.9911508560180664){
     s0+=3725.0;
     s1+=219.0;
    } else {
     s0+=64367.0;
     s1+=297.0;
    }
   } else {
    if(i52<0.9999536871910095){
     s0+=23692.0;
     s1+=187.0;
    } else {
     s0+=17527.0;
     s1+=3415.0;
    }
   }
  } else {
   s1+=197.0;
  }
 } else {
  if(i25<0.027271054685115814){
   if(i43<1.001552700996399){
    if(i29<1.0640615224838257){
     s0+=8.0;
     s1+=39.0;
    } else {
     s0+=421.0;
     s1+=11.0;
    }
   } else {
    if(i7<0.0034803797025233507){
     s0+=108.0;
     s1+=15.0;
    } else {
     s0+=10.0;
     s1+=128.0;
    }
   }
  } else {
   if(i27<0.9965378642082214){
    if(i0<-5.1306720706634223e-05){
     s0+=7.0;
     s1+=171.0;
    } else {
     s0+=98.0;
     s1+=5.0;
    }
   } else {
    s1+=475.0;
   }
  }
 }
} else {
 if(i40<-0.0002480829425621778){
  if(i29<1.0379568338394165){
   if(i45<1.1035543138859794e-05){
    if(i4<0.9995427131652832){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=177.0;
    }
   } else {
    if(i67<0.0017310203984379768){
     s0+=217.0;
    } else {
     s0+=137.0;
     s1+=107.0;
    }
   }
  } else {
   if(i16<0.14035621285438538){
    if(i53<1.4722347259521484e-05){
     s0+=332.0;
     s1+=2301.0;
    } else {
     s0+=254.0;
     s1+=183.0;
    }
   } else {
    if(i15<0.00071191496681422){
     s0+=68.0;
     s1+=12399.0;
    } else {
     s0+=29.0;
    }
   }
  }
 } else {
  if(i7<0.0028997729532420635){
   if(i15<0.00018613511929288507){
    if(i20<0.0001690387725830078){
     s0+=63.0;
    } else {
     s1+=372.0;
    }
   } else {
    if(i3<0.0028690099716186523){
     s0+=3734.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.0012764334678649902){
    if(i30<0.0009516242425888777){
     s0+=112.0;
     s1+=437.0;
    } else {
     s0+=1486.0;
     s1+=636.0;
    }
   } else {
    if(i44<0.9990003108978271){
     s0+=154.0;
    } else {
     s0+=98.0;
     s1+=2435.0;
    }
   }
  }
 }
}
if(i21<1.0044828653335571){
 if(i12<1.020301103591919){
  if(i4<1.002340316772461){
   if(i7<0.003451756201684475){
    if(i29<1.0179111957550049){
     s0+=10184.0;
     s1+=473.0;
    } else {
     s0+=74232.0;
     s1+=373.0;
    }
   } else {
    if(i2<-2.485513687133789e-05){
     s0+=22253.0;
     s1+=717.0;
    } else {
     s0+=1850.0;
     s1+=2564.0;
    }
   }
  } else {
   if(i40<-0.00020662948372773826){
    if(i7<0.004459412768483162){
     s0+=605.0;
     s1+=47.0;
    } else {
     s0+=197.0;
     s1+=1102.0;
    }
   } else {
    if(i18<0.0020843411330133677){
     s0+=1183.0;
     s1+=16.0;
    } else {
     s0+=1040.0;
     s1+=376.0;
    }
   }
  }
 } else {
  if(i51<-2.8108061087550595e-06){
   if(i23<0.0998501181602478){
    if(i28<1.122528314590454){
     s1+=44.0;
    } else {
     s0+=120.0;
     s1+=24.0;
    }
   } else {
    if(i44<1.0016868114471436){
     s0+=54.0;
     s1+=2018.0;
    } else {
     s0+=133.0;
     s1+=253.0;
    }
   }
  } else {
   if(i49<7.775578706059605e-05){
    s0+=342.0;
   } else {
    if(i16<0.14805179834365845){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007044356898404658){
  if(i0<-4.064301174366847e-05){
   if(i27<0.9954243302345276){
    if(i9<0.9932278394699097){
     s0+=338.0;
     s1+=139.0;
    } else {
     s0+=8.0;
     s1+=171.0;
    }
   } else {
    if(i48<-6.421660145861097e-06){
     s0+=47.0;
    } else {
     s0+=578.0;
     s1+=15242.0;
    }
   }
  } else {
   if(i7<0.0027106902562081814){
    if(i20<0.00019061565399169922){
     s0+=940.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i45<1.4498473319690675e-05){
     s0+=59.0;
     s1+=525.0;
    } else {
     s0+=192.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i13<1.0776736736297607){
   s0+=2304.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i5<1.003873586654663){
 if(i55<0.011820871382951736){
  if(i4<1.002388596534729){
   if(i9<1.0153400897979736){
    if(i34<1.0902695655822754){
     s0+=38562.0;
     s1+=2894.0;
    } else {
     s0+=68952.0;
     s1+=692.0;
    }
   } else {
    if(i28<1.1173481941223145){
     s0+=19.0;
     s1+=391.0;
    } else {
     s0+=800.0;
     s1+=195.0;
    }
   }
  } else {
   if(i22<1.104677438735962){
    if(i1<0.00021404027938842773){
     s0+=2049.0;
     s1+=199.0;
    } else {
     s0+=499.0;
     s1+=309.0;
    }
   } else {
    if(i1<-0.00039076805114746094){
     s0+=207.0;
     s1+=108.0;
    } else {
     s0+=150.0;
     s1+=682.0;
    }
   }
  }
 } else {
  if(i40<-0.0003610988787841052){
   if(i26<0.0027833390049636364){
    s0+=41.0;
   } else {
    if(i24<0.8179380893707275){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=970.0;
    }
   }
  } else {
   if(i14<0.08769774436950684){
    if(i41<-4.7223755245795473e-05){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=815.0;
     s1+=16.0;
    }
   } else {
    if(i18<0.0020264247432351112){
     s0+=66.0;
    } else {
     s0+=46.0;
     s1+=186.0;
    }
   }
  }
 }
} else {
 if(i37<0.0019344445317983627){
  if(i35<1.116804838180542){
   if(i26<0.00024030767963267863){
    s0+=608.0;
   } else {
    if(i48<-3.8899233913980424e-06){
     s0+=67.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=2723.0;
    }
   }
  } else {
   if(i34<1.1856396198272705){
    s0+=3412.0;
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i14<0.08377152681350708){
   if(i20<9.97781753540039e-05){
    if(i12<1.0052006244659424){
     s0+=49.0;
     s1+=239.0;
    } else {
     s0+=72.0;
    }
   } else {
    if(i34<1.126753330230713){
     s0+=4.0;
    } else {
     s1+=208.0;
    }
   }
  } else {
   if(i15<0.0016929064877331257){
    if(i23<0.12081006169319153){
     s0+=48.0;
     s1+=741.0;
    } else {
     s0+=18.0;
     s1+=13734.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i13<1.014170527458191){
 if(i14<0.205267995595932){
  if(i3<0.0003962516784667969){
   if(i26<0.0008751751738600433){
    if(i3<0.0002059340476989746){
     s0+=29366.0;
     s1+=1822.0;
    } else {
     s0+=695.0;
     s1+=753.0;
    }
   } else {
    if(i41<-3.625684621511027e-05){
     s0+=300.0;
     s1+=95.0;
    } else {
     s0+=75402.0;
     s1+=649.0;
    }
   }
  } else {
   if(i39<0.020953748375177383){
    if(i20<0.00016671419143676758){
     s0+=6115.0;
     s1+=682.0;
    } else {
     s0+=712.0;
     s1+=872.0;
    }
   } else {
    if(i27<0.9968438148498535){
     s0+=1375.0;
     s1+=516.0;
    } else {
     s0+=772.0;
     s1+=2636.0;
    }
   }
  }
 } else {
  if(i51<-3.92071160604246e-06){
   if(i7<0.006278231739997864){
    if(i58<0.0391446053981781){
     s0+=155.0;
     s1+=13.0;
    } else {
     s0+=27.0;
     s1+=22.0;
    }
   } else {
    if(i26<0.001960918540135026){
     s0+=1.0;
    } else {
     s0+=12.0;
     s1+=1913.0;
    }
   }
  } else {
   if(i0<-5.251332913758233e-05){
    if(i46<0.0028871246613562107){
     s0+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i66<-0.006715446710586548){
     s1+=2.0;
    } else {
     s0+=318.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i0<-6.782143464079127e-05){
  if(i44<0.9983311891555786){
   s0+=92.0;
  } else {
   if(i48<-6.2567542045144364e-06){
    s0+=55.0;
   } else {
    if(i15<0.0009054678957909346){
     s0+=49.0;
     s1+=13332.0;
    } else {
     s0+=55.0;
    }
   }
  }
 } else {
  if(i46<0.0010477002942934632){
   if(i34<1.121293544769287){
    s1+=514.0;
   } else {
    s0+=21.0;
   }
  } else {
   if(i46<0.0020093678031116724){
    if(i32<1.0987343788146973){
     s1+=38.0;
    } else {
     s0+=597.0;
     s1+=41.0;
    }
   } else {
    if(i1<0.0003910660743713379){
     s0+=379.0;
     s1+=80.0;
    } else {
     s0+=24.0;
     s1+=337.0;
    }
   }
  }
 }
}
if(i21<1.004654884338379){
 if(i11<1.0135915279388428){
  if(i6<1.8537044525146484e-05){
   if(i42<0.2062024176120758){
    if(i18<0.0014909671153873205){
     s0+=83801.0;
     s1+=595.0;
    } else {
     s0+=23670.0;
     s1+=3076.0;
    }
   } else {
    if(i7<0.004927515517920256){
     s0+=123.0;
     s1+=19.0;
    } else {
     s0+=9.0;
     s1+=229.0;
    }
   }
  } else {
   if(i16<0.1644105613231659){
    if(i25<0.007578396704047918){
     s0+=2687.0;
     s1+=67.0;
    } else {
     s0+=1366.0;
     s1+=1124.0;
    }
   } else {
    if(i46<0.002721410244703293){
     s0+=52.0;
     s1+=10.0;
    } else {
     s0+=17.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i18<0.0013968301936984062){
   if(i68<1.0013865232467651){
    s0+=222.0;
   } else {
    if(i6<1.895427703857422e-05){
     s0+=30.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  } else {
   if(i39<0.0178852342069149){
    if(i68<0.9999440908432007){
     s0+=76.0;
     s1+=7.0;
    } else {
     s0+=57.0;
     s1+=383.0;
    }
   } else {
    if(i7<0.004202194977551699){
     s0+=94.0;
     s1+=15.0;
    } else {
     s0+=12.0;
     s1+=1830.0;
    }
   }
  }
 }
} else {
 if(i37<0.0019538498017936945){
  if(i20<0.00018197298049926758){
   if(i34<1.0905089378356934){
    if(i22<1.0457782745361328){
     s0+=330.0;
     s1+=52.0;
    } else {
     s0+=2.0;
     s1+=180.0;
    }
   } else {
    if(i18<0.002447696402668953){
     s0+=2044.0;
    } else {
     s0+=91.0;
     s1+=27.0;
    }
   }
  } else {
   if(i35<1.1174830198287964){
    if(i0<-0.00018355136853642762){
     s0+=11.0;
    } else {
     s0+=12.0;
     s1+=1790.0;
    }
   } else {
    if(i16<0.24058470129966736){
     s0+=825.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i1<0.0002454519271850586){
   if(i2<-1.5437602996826172e-05){
    if(i25<0.0558459535241127){
     s0+=353.0;
     s1+=19.0;
    } else {
     s0+=12.0;
     s1+=77.0;
    }
   } else {
    if(i16<0.07181739807128906){
     s0+=112.0;
     s1+=15.0;
    } else {
     s0+=48.0;
     s1+=162.0;
    }
   }
  } else {
   if(i9<0.9414345026016235){
    if(i14<0.031302958726882935){
     s0+=96.0;
     s1+=48.0;
    } else {
     s0+=46.0;
     s1+=344.0;
    }
   } else {
    if(i19<-0.0013486146926879883){
     s0+=161.0;
     s1+=582.0;
    } else {
     s0+=64.0;
     s1+=13184.0;
    }
   }
  }
 }
}
if(i36<1.1402404308319092){
 if(i11<1.0131568908691406){
  if(i8<1.0064759254455566){
   if(i50<0.04231034964323044){
    if(i65<0.00023611454525962472){
     s0+=85511.0;
     s1+=1621.0;
    } else {
     s0+=5073.0;
     s1+=705.0;
    }
   } else {
    if(i23<0.04880174994468689){
     s0+=8912.0;
     s1+=236.0;
    } else {
     s0+=8213.0;
     s1+=1916.0;
    }
   }
  } else {
   if(i28<1.116804838180542){
    if(i38<0.00021387278684414923){
     s0+=269.0;
    } else {
     s0+=1.0;
     s1+=1184.0;
    }
   } else {
    if(i7<0.004890850745141506){
     s0+=2311.0;
     s1+=45.0;
    } else {
     s0+=121.0;
     s1+=241.0;
    }
   }
  }
 } else {
  if(i32<1.0905578136444092){
   s1+=1529.0;
  } else {
   if(i15<0.0005641414318233728){
    if(i19<0.0010969042778015137){
     s0+=400.0;
     s1+=394.0;
    } else {
     s0+=24.0;
     s1+=1448.0;
    }
   } else {
    s0+=750.0;
   }
  }
 }
} else {
 if(i26<0.002566900569945574){
  if(i7<0.005891930311918259){
   s0+=2163.0;
  } else {
   s1+=19.0;
  }
 } else {
  if(i9<0.9533531069755554){
   if(i14<0.08314666152000427){
    if(i2<1.8477439880371094e-06){
     s0+=1701.0;
     s1+=127.0;
    } else {
     s0+=160.0;
     s1+=229.0;
    }
   } else {
    if(i28<1.2916609048843384){
     s0+=69.0;
     s1+=14.0;
    } else {
     s0+=113.0;
     s1+=681.0;
    }
   }
  } else {
   if(i12<1.010193109512329){
    if(i4<1.0019763708114624){
     s0+=323.0;
     s1+=177.0;
    } else {
     s0+=94.0;
     s1+=1962.0;
    }
   } else {
    if(i19<-0.0018921494483947754){
     s0+=107.0;
     s1+=273.0;
    } else {
     s0+=38.0;
     s1+=11706.0;
    }
   }
  }
 }
}
if(i0<-8.038502710405737e-05){
 if(i23<0.05869317054748535){
  if(i75<0.029069557785987854){
   if(i63<-3.1199601835396606e-06){
    if(i55<0.006190834101289511){
     s0+=2.0;
     s1+=53.0;
    } else {
     s0+=23.0;
     s1+=6.0;
    }
   } else {
    if(i51<-1.9474697182886302e-05){
     s0+=72.0;
     s1+=19.0;
    } else {
     s0+=968.0;
     s1+=24.0;
    }
   }
  } else {
   if(i38<0.011599116027355194){
    if(i2<-2.8789043426513672e-05){
     s0+=17.0;
     s1+=12.0;
    } else {
     s0+=11.0;
     s1+=158.0;
    }
   } else {
    if(i9<0.8973023295402527){
     s0+=157.0;
     s1+=57.0;
    } else {
     s1+=51.0;
    }
   }
  }
 } else {
  if(i15<0.0007051074644550681){
   if(i8<0.9582129716873169){
    if(i68<1.0010713338851929){
     s1+=27.0;
    } else {
     s0+=40.0;
     s1+=8.0;
    }
   } else {
    if(i51<-6.022286106599495e-05){
     s0+=76.0;
    } else {
     s0+=148.0;
     s1+=16249.0;
    }
   }
  } else {
   s0+=285.0;
  }
 }
} else {
 if(i18<0.0017557633109390736){
  if(i28<1.0817922353744507){
   if(i45<-9.120934919337742e-06){
    s1+=297.0;
   } else {
    if(i44<1.000214695930481){
     s0+=10616.0;
     s1+=30.0;
    } else {
     s0+=6680.0;
     s1+=597.0;
    }
   }
  } else {
   if(i27<1.0155775547027588){
    if(i18<0.0012004163581877947){
     s0+=64980.0;
     s1+=124.0;
    } else {
     s0+=10656.0;
     s1+=267.0;
    }
   } else {
    if(i17<1.0039598941802979){
     s0+=4.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i26<0.0009599950863048434){
   if(i32<1.0498223304748535){
    if(i60<1.0086312294006348){
     s0+=96.0;
     s1+=7.0;
    } else {
     s0+=2033.0;
     s1+=5.0;
    }
   } else {
    if(i41<-5.508959475264419e-06){
     s0+=94.0;
     s1+=3772.0;
    } else {
     s0+=60.0;
     s1+=12.0;
    }
   }
  } else {
   if(i4<1.0024138689041138){
    if(i14<0.23054799437522888){
     s0+=17060.0;
     s1+=428.0;
    } else {
     s0+=30.0;
     s1+=98.0;
    }
   } else {
    if(i46<0.0015754757914692163){
     s0+=1085.0;
     s1+=43.0;
    } else {
     s0+=1487.0;
     s1+=1813.0;
    }
   }
  }
 }
}
if(i6<2.2113323211669922e-05){
 if(i42<0.19833070039749146){
  if(i8<1.0060362815856934){
   if(i4<0.9995337724685669){
    if(i0<-0.00010449177352711558){
     s0+=85.0;
     s1+=41.0;
    } else {
     s0+=53518.0;
     s1+=313.0;
    }
   } else {
    if(i25<0.008042789995670319){
     s0+=45217.0;
     s1+=513.0;
    } else {
     s0+=9427.0;
     s1+=3016.0;
    }
   }
  } else {
   if(i28<1.117018461227417){
    if(i51<-4.253383394825505e-06){
     s0+=27.0;
     s1+=415.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i37<0.002187903970479965){
     s0+=996.0;
    } else {
     s0+=420.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i7<0.005792936310172081){
   if(i0<-4.572643229039386e-05){
    if(i27<1.0025179386138916){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i76<0.12649092078208923){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=212.0;
     s1+=4.0;
    }
   }
  } else {
   if(i26<0.0020286468788981438){
    s0+=4.0;
   } else {
    if(i68<1.0101776123046875){
     s0+=2.0;
     s1+=705.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i8<1.0132980346679688){
  if(i18<0.0019725149031728506){
   if(i45<-1.1530803021742031e-05){
    if(i31<0.0010041289497166872){
     s0+=24.0;
     s1+=387.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i21<1.0006859302520752){
     s0+=9.0;
     s1+=34.0;
    } else {
     s0+=3271.0;
     s1+=54.0;
    }
   }
  } else {
   if(i16<0.14200711250305176){
    if(i34<1.0951786041259766){
     s0+=418.0;
     s1+=1075.0;
    } else {
     s0+=2484.0;
     s1+=1578.0;
    }
   } else {
    if(i38<0.0024354890920221806){
     s0+=118.0;
     s1+=15.0;
    } else {
     s0+=109.0;
     s1+=3308.0;
    }
   }
  }
 } else {
  if(i37<0.0017462284304201603){
   if(i48<-3.868132353090914e-06){
    s0+=172.0;
   } else {
    if(i2<5.042552947998047e-05){
     s0+=2.0;
    } else {
     s1+=1182.0;
    }
   }
  } else {
   if(i20<9.137392044067383e-05){
    if(i20<9.101629257202148e-05){
     s1+=219.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=11138.0;
   }
  }
 }
}
if(i2<6.335973739624023e-05){
 if(i29<1.1403393745422363){
  if(i13<1.0111514329910278){
   if(i28<1.1162974834442139){
    if(i33<7.408857345581055e-05){
     s0+=23356.0;
     s1+=659.0;
    } else {
     s0+=6871.0;
     s1+=2549.0;
    }
   } else {
    if(i0<-8.890454046195373e-05){
     s0+=966.0;
     s1+=677.0;
    } else {
     s0+=81196.0;
     s1+=1249.0;
    }
   }
  } else {
   if(i28<1.1180615425109863){
    if(i30<0.0012978485319763422){
     s1+=607.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i49<1.0568600373517256e-05){
     s0+=776.0;
     s1+=17.0;
    } else {
     s0+=479.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i18<0.0015935597475618124){
   s0+=570.0;
  } else {
   if(i7<0.006745024584233761){
    if(i5<1.0022525787353516){
     s0+=60.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i36<1.1672112941741943){
     s0+=22.0;
     s1+=88.0;
    } else {
     s1+=1434.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i59<0.00042878766544163227){
   if(i15<0.000328137946780771){
    if(i28<1.1279523372650146){
     s1+=2137.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=156.0;
   }
  } else {
   if(i35<1.0958912372589111){
    s1+=179.0;
   } else {
    if(i71<0.0027327537536621094){
     s0+=1843.0;
     s1+=20.0;
    } else {
     s0+=18.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i29<1.074486494064331){
   if(i28<1.629280686378479){
    if(i65<0.003024289384484291){
     s0+=21.0;
     s1+=871.0;
    } else {
     s0+=36.0;
     s1+=66.0;
    }
   } else {
    if(i41<-5.1045142754446715e-05){
     s1+=18.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   if(i16<0.0046884119510650635){
    if(i49<0.00027946854243054986){
     s0+=2.0;
     s1+=14.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i14<0.12870612740516663){
     s0+=31.0;
     s1+=679.0;
    } else {
     s0+=4.0;
     s1+=12580.0;
    }
   }
  }
 }
}
if(i8<1.0125844478607178){
 if(i21<1.004654884338379){
  if(i0<-9.137162123806775e-05){
   if(i22<1.1179827451705933){
    if(i17<0.916429877281189){
     s0+=451.0;
     s1+=26.0;
    } else {
     s0+=160.0;
     s1+=222.0;
    }
   } else {
    if(i29<1.0570836067199707){
     s0+=44.0;
     s1+=30.0;
    } else {
     s0+=8.0;
     s1+=1073.0;
    }
   }
  } else {
   if(i6<1.5079975128173828e-05){
    if(i26<0.0008788029663264751){
     s0+=29876.0;
     s1+=2600.0;
    } else {
     s0+=75913.0;
     s1+=710.0;
    }
   } else {
    if(i13<1.0090621709823608){
     s0+=5237.0;
     s1+=899.0;
    } else {
     s0+=614.0;
     s1+=1076.0;
    }
   }
  }
 } else {
  if(i28<1.1979892253875732){
   if(i35<1.116804838180542){
    if(i21<1.0061366558074951){
     s0+=309.0;
     s1+=218.0;
    } else {
     s0+=44.0;
     s1+=658.0;
    }
   } else {
    s0+=2635.0;
   }
  } else {
   if(i16<0.07159480452537537){
    if(i22<1.0561336278915405){
     s0+=462.0;
     s1+=39.0;
    } else {
     s0+=258.0;
     s1+=315.0;
    }
   } else {
    if(i0<-8.708739187568426e-05){
     s0+=23.0;
     s1+=2397.0;
    } else {
     s0+=240.0;
     s1+=829.0;
    }
   }
  }
 }
} else {
 if(i38<0.00248783640563488){
  if(i30<0.0013283221051096916){
   if(i15<0.0006345746223814785){
    if(i35<1.1197539567947388){
     s1+=1416.0;
    } else {
     s0+=14.0;
    }
   } else {
    s0+=41.0;
   }
  } else {
   if(i46<0.0006320206448435783){
    s1+=67.0;
   } else {
    if(i24<1.0372475385665894){
     s0+=344.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<1.0032552480697632){
   if(i26<0.0025770131032913923){
    s0+=38.0;
   } else {
    s1+=63.0;
   }
  } else {
   if(i11<1.0195730924606323){
    if(i55<0.0011207801289856434){
     s0+=14.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=874.0;
    }
   } else {
    s1+=10595.0;
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i47<1.035853624343872){
  if(i33<0.00010639429092407227){
   if(i7<0.02037910558283329){
    if(i35<1.0905578136444092){
     s0+=22059.0;
     s1+=984.0;
    } else {
     s0+=60336.0;
     s1+=242.0;
    }
   } else {
    if(i10<0.9029557704925537){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i7<0.004116857890039682){
    if(i7<0.0028516114689409733){
     s0+=20932.0;
     s1+=228.0;
    } else {
     s0+=3722.0;
     s1+=412.0;
    }
   } else {
    if(i6<3.039836883544922e-06){
     s0+=3038.0;
     s1+=260.0;
    } else {
     s0+=3526.0;
     s1+=4200.0;
    }
   }
  }
 } else {
  if(i1<0.0002351999282836914){
   if(i58<0.0392879955470562){
    if(i6<4.595518112182617e-05){
     s0+=522.0;
     s1+=34.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    if(i49<4.2850682802964e-05){
     s0+=108.0;
     s1+=2.0;
    } else {
     s0+=119.0;
     s1+=460.0;
    }
   }
  } else {
   if(i45<1.0798014500323916e-06){
    if(i51<-4.727616214950103e-06){
     s0+=28.0;
     s1+=51.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i37<0.0045927744358778){
     s0+=69.0;
     s1+=321.0;
    } else {
     s0+=9.0;
     s1+=627.0;
    }
   }
  }
 }
} else {
 if(i40<-0.0002815466723404825){
  if(i7<0.004396804608404636){
   if(i10<1.0198051929473877){
    if(i55<0.0004601942200679332){
     s1+=2.0;
    } else {
     s0+=85.0;
    }
   } else {
    if(i3<0.0014238357543945312){
     s0+=3.0;
    } else {
     s1+=174.0;
    }
   }
  } else {
   if(i48<-6.574159669980872e-06){
    s0+=57.0;
   } else {
    if(i72<0.00010503967496333644){
     s0+=44.0;
     s1+=12772.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i19<0.0019922852516174316){
   if(i28<1.116804838180542){
    if(i36<1.0328443050384521){
     s0+=69.0;
    } else {
     s0+=3.0;
     s1+=926.0;
    }
   } else {
    if(i35<1.1789745092391968){
     s0+=1681.0;
    } else {
     s0+=96.0;
     s1+=757.0;
    }
   }
  } else {
   if(i49<5.206757123232819e-06){
    s1+=1644.0;
   } else {
    if(i48<-6.043781468179077e-06){
     s0+=39.0;
    } else {
     s1+=53.0;
    }
   }
  }
 }
}
if(i21<1.0046117305755615){
 if(i12<1.0196788311004639){
  if(i4<1.0023819208145142){
   if(i59<0.007720611523836851){
    if(i34<1.0902695655822754){
     s0+=38209.0;
     s1+=2950.0;
    } else {
     s0+=69780.0;
     s1+=803.0;
    }
   } else {
    if(i16<0.052341848611831665){
     s0+=233.0;
     s1+=4.0;
    } else {
     s0+=88.0;
     s1+=215.0;
    }
   }
  } else {
   if(i23<0.17088744044303894){
    if(i62<0.004485998302698135){
     s0+=2596.0;
     s1+=685.0;
    } else {
     s0+=391.0;
     s1+=505.0;
    }
   } else {
    if(i38<0.0038189899642020464){
     s0+=61.0;
     s1+=40.0;
    } else {
     s0+=18.0;
     s1+=420.0;
    }
   }
  }
 } else {
  if(i6<1.0311603546142578e-05){
   if(i26<0.007863972336053848){
    if(i51<-3.0142600735416636e-06){
     s0+=122.0;
     s1+=100.0;
    } else {
     s0+=338.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.05443033203482628){
     s0+=2.0;
    } else {
     s1+=122.0;
    }
   }
  } else {
   if(i7<0.004996602423489094){
    if(i31<0.0008389093563891947){
     s0+=22.0;
     s1+=65.0;
    } else {
     s0+=176.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.9987137317657471){
     s0+=22.0;
     s1+=71.0;
    } else {
     s0+=3.0;
     s1+=1952.0;
    }
   }
  }
 }
} else {
 if(i28<1.1979892253875732){
  if(i37<0.0010356984566897154){
   if(i34<1.0499491691589355){
    s0+=340.0;
   } else {
    if(i28<1.116804838180542){
     s1+=1941.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i61<0.0021469593048095703){
    if(i15<9.950887761078775e-05){
     s0+=5.0;
     s1+=36.0;
    } else {
     s0+=2959.0;
     s1+=3.0;
    }
   } else {
    if(i68<1.0025341510772705){
     s1+=159.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i16<0.0606500506401062){
   if(i4<1.005773663520813){
    if(i20<-0.00035750865936279297){
     s0+=503.0;
     s1+=41.0;
    } else {
     s0+=145.0;
     s1+=102.0;
    }
   } else {
    if(i77<-0.016566932201385498){
     s0+=6.0;
     s1+=179.0;
    } else {
     s0+=35.0;
     s1+=35.0;
    }
   }
  } else {
   if(i22<1.0744926929473877){
    if(i6<2.7835369110107422e-05){
     s0+=47.0;
     s1+=6.0;
    } else {
     s0+=63.0;
     s1+=288.0;
    }
   } else {
    if(i16<0.12231382727622986){
     s0+=150.0;
     s1+=885.0;
    } else {
     s0+=67.0;
     s1+=12862.0;
    }
   }
  }
 }
}
if(i33<0.00025206804275512695){
 if(i0<-8.179136784747243e-05){
  if(i20<-0.0006093680858612061){
   if(i25<0.06121581047773361){
    if(i78<-0.20578545331954956){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=413.0;
     s1+=4.0;
    }
   } else {
    if(i37<0.057310208678245544){
     s1+=59.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i6<0.00020867586135864258){
    if(i6<-1.659989356994629e-05){
     s0+=41.0;
     s1+=43.0;
    } else {
     s0+=19.0;
     s1+=1430.0;
    }
   } else {
    s0+=24.0;
   }
  }
 } else {
  if(i3<0.00032979249954223633){
   if(i35<1.0905578136444092){
    if(i34<1.0545225143432617){
     s0+=21478.0;
     s1+=683.0;
    } else {
     s0+=2534.0;
     s1+=1213.0;
    }
   } else {
    if(i24<1.0247498750686646){
     s0+=71912.0;
     s1+=668.0;
    } else {
     s0+=443.0;
     s1+=110.0;
    }
   }
  } else {
   if(i55<0.0006512877298519015){
    if(i52<1.0002021789550781){
     s0+=93.0;
    } else {
     s0+=7.0;
     s1+=762.0;
    }
   } else {
    if(i25<0.013166885823011398){
     s0+=1682.0;
     s1+=14.0;
    } else {
     s0+=35.0;
     s1+=365.0;
    }
   }
  }
 }
} else {
 if(i0<-7.454843580489978e-05){
  if(i13<0.9439002275466919){
   if(i28<1.4505159854888916){
    if(i44<1.0025179386138916){
     s0+=565.0;
     s1+=61.0;
    } else {
     s0+=20.0;
     s1+=55.0;
    }
   } else {
    if(i55<0.00796186737716198){
     s0+=42.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=66.0;
    }
   }
  } else {
   if(i12<1.0205379724502563){
    if(i53<2.4378299713134766e-05){
     s0+=501.0;
     s1+=4146.0;
    } else {
     s0+=217.0;
     s1+=51.0;
    }
   } else {
    if(i6<-1.6510486602783203e-05){
     s0+=12.0;
    } else {
     s0+=64.0;
     s1+=11183.0;
    }
   }
  }
 } else {
  if(i1<0.000996232032775879){
   if(i2<-9.834766387939453e-06){
    if(i26<0.012449124827980995){
     s0+=8843.0;
     s1+=204.0;
    } else {
     s0+=98.0;
     s1+=59.0;
    }
   } else {
    if(i39<0.03265828639268875){
     s0+=5747.0;
     s1+=610.0;
    } else {
     s0+=359.0;
     s1+=883.0;
    }
   }
  } else {
   if(i45<-1.3019769539823756e-05){
    if(i54<0.0006774727953597903){
     s1+=466.0;
    } else {
     s0+=88.0;
     s1+=209.0;
    }
   } else {
    if(i37<0.0010768325300887227){
     s0+=34.0;
     s1+=520.0;
    } else {
     s0+=1238.0;
     s1+=452.0;
    }
   }
  }
 }
}
if(i1<0.0009595155715942383){
 if(i12<1.0181578397750854){
  if(i18<0.0017849882133305073){
   if(i55<0.0005786254769191146){
    if(i11<0.9960805177688599){
     s0+=4310.0;
     s1+=546.0;
    } else {
     s0+=29484.0;
     s1+=305.0;
    }
   } else {
    if(i11<1.015716314315796){
     s0+=57852.0;
     s1+=224.0;
    } else {
     s0+=59.0;
     s1+=14.0;
    }
   }
  } else {
   if(i22<1.1391525268554688){
    if(i35<1.1164028644561768){
     s0+=2730.0;
     s1+=2533.0;
    } else {
     s0+=18631.0;
     s1+=1401.0;
    }
   } else {
    if(i69<0.3423881530761719){
     s0+=143.0;
     s1+=120.0;
    } else {
     s0+=59.0;
     s1+=942.0;
    }
   }
  }
 } else {
  if(i51<-2.74805483968521e-06){
   if(i23<0.10309094190597534){
    if(i33<0.00043392181396484375){
     s0+=42.0;
     s1+=75.0;
    } else {
     s0+=213.0;
     s1+=4.0;
    }
   } else {
    if(i0<-2.858572406694293e-05){
     s0+=137.0;
     s1+=1683.0;
    } else {
     s0+=204.0;
     s1+=120.0;
    }
   }
  } else {
   if(i25<0.037091150879859924){
    s0+=379.0;
   } else {
    if(i29<1.097166657447815){
     s0+=18.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i35<1.176405668258667){
  if(i33<0.0005128085613250732){
   if(i3<0.0006608963012695312){
    if(i59<0.0002600196748971939){
     s1+=1.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i52<1.0008137226104736){
     s0+=44.0;
    } else {
     s0+=12.0;
     s1+=2348.0;
    }
   }
  } else {
   s0+=1904.0;
  }
 } else {
  if(i17<0.9146637916564941){
   if(i31<0.0014158523408696055){
    s0+=40.0;
   } else {
    if(i5<1.0045592784881592){
     s0+=10.0;
     s1+=26.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i16<0.09764117002487183){
    if(i26<0.009711211547255516){
     s0+=11.0;
     s1+=447.0;
    } else {
     s0+=47.0;
     s1+=52.0;
    }
   } else {
    if(i0<-9.604118531569839e-05){
     s1+=12671.0;
    } else {
     s0+=12.0;
     s1+=843.0;
    }
   }
  }
 }
}
if(i14<0.1999136507511139){
 if(i27<1.0095810890197754){
  if(i5<1.0030930042266846){
   if(i52<1.0000030994415283){
    if(i33<3.746151924133301e-05){
     s0+=51891.0;
     s1+=243.0;
    } else {
     s0+=3591.0;
     s1+=217.0;
    }
   } else {
    if(i7<0.0036318455822765827){
     s0+=45072.0;
     s1+=799.0;
    } else {
     s0+=9091.0;
     s1+=3619.0;
    }
   }
  } else {
   if(i18<0.0020782954525202513){
    if(i0<-6.578609463758767e-05){
     s0+=64.0;
     s1+=118.0;
    } else {
     s0+=4032.0;
     s1+=65.0;
    }
   } else {
    if(i26<0.00024181736807804555){
     s0+=144.0;
    } else {
     s0+=672.0;
     s1+=2687.0;
    }
   }
  }
 } else {
  if(i48<-8.296950909425505e-06){
   s0+=427.0;
  } else {
   if(i18<0.0018023716984316707){
    if(i15<0.00017699546879157424){
     s0+=75.0;
     s1+=814.0;
    } else {
     s0+=474.0;
     s1+=1.0;
    }
   } else {
    if(i15<0.0009085978381335735){
     s0+=25.0;
     s1+=3222.0;
    } else {
     s0+=199.0;
    }
   }
  }
 }
} else {
 if(i1<0.00024452805519104004){
  if(i30<0.006060583982616663){
   if(i7<0.006324684247374535){
    if(i73<0.12542125582695007){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=574.0;
     s1+=16.0;
    }
   } else {
    if(i60<1.092445731163025){
     s0+=18.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=91.0;
    }
   }
  } else {
   if(i0<-3.550029578036629e-05){
    if(i35<1.269250750541687){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=545.0;
    }
   } else {
    if(i1<-0.0012961030006408691){
     s0+=47.0;
    } else {
     s0+=19.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i0<-3.505478525767103e-05){
   if(i15<0.0007849900284782052){
    if(i25<0.0020423331297934055){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=11685.0;
    }
   } else {
    s0+=27.0;
   }
  } else {
   if(i35<1.176405668258667){
    s0+=116.0;
   } else {
    if(i30<0.0025282548740506172){
     s0+=4.0;
    } else {
     s1+=103.0;
    }
   }
  }
 }
}
if(i20<0.00020819902420043945){
 if(i23<0.19878938794136047){
  if(i33<0.00011044740676879883){
   if(i7<0.020750708878040314){
    if(i28<1.0905578136444092){
     s0+=19424.0;
     s1+=1042.0;
    } else {
     s0+=63840.0;
     s1+=252.0;
    }
   } else {
    if(i45<6.500235758721828e-05){
     s1+=32.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i26<0.0009349611354991794){
    if(i13<1.0086112022399902){
     s0+=4649.0;
     s1+=1909.0;
    } else {
     s0+=44.0;
     s1+=1167.0;
    }
   } else {
    if(i7<0.006360460072755814){
     s0+=23394.0;
     s1+=654.0;
    } else {
     s0+=3717.0;
     s1+=2750.0;
    }
   }
  }
 } else {
  if(i18<0.0023574824444949627){
   if(i41<-1.602258453203831e-05){
    if(i0<-5.3716743423137814e-05){
     s1+=52.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   } else {
    if(i52<1.0008264780044556){
     s0+=278.0;
    } else {
     s0+=114.0;
     s1+=3.0;
    }
   }
  } else {
   if(i16<0.2004859745502472){
    if(i7<0.007210200186818838){
     s0+=37.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=95.0;
    }
   } else {
    if(i2<-4.601478576660156e-05){
     s0+=40.0;
     s1+=157.0;
    } else {
     s0+=15.0;
     s1+=3126.0;
    }
   }
  }
 }
} else {
 if(i13<1.0179442167282104){
  if(i28<1.1180615425109863){
   s1+=1071.0;
  } else {
   if(i32<1.150090217590332){
    s0+=856.0;
   } else {
    if(i5<1.0039068460464478){
     s0+=74.0;
     s1+=4.0;
    } else {
     s1+=929.0;
    }
   }
  }
 } else {
  if(i13<1.0207395553588867){
   if(i65<-6.394743104465306e-05){
    if(i68<1.0035083293914795){
     s0+=10.0;
     s1+=115.0;
    } else {
     s0+=45.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.994354248046875){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=368.0;
    }
   }
  } else {
   if(i21<0.9976055026054382){
    if(i9<1.0271252393722534){
     s0+=4.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i18<0.0003326299483887851){
     s0+=3.0;
     s1+=18.0;
    } else {
     s1+=10486.0;
    }
   }
  }
 }
}
if(i0<-9.715493069961667e-05){
 if(i16<0.016375422477722168){
  if(i78<-0.15294787287712097){
   if(i52<1.0026359558105469){
    if(i7<0.022453537210822105){
     s0+=38.0;
     s1+=6.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i54<0.003598032519221306){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i13<0.9740461111068726){
    if(i50<0.10937570035457611){
     s0+=108.0;
     s1+=9.0;
    } else {
     s0+=413.0;
     s1+=1.0;
    }
   } else {
    if(i43<1.0024795532226562){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i60<0.9167795181274414){
   if(i10<0.9495968818664551){
    if(i24<0.8146295547485352){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=62.0;
     s1+=6.0;
    }
   } else {
    if(i57<0.036729596555233){
     s0+=2.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i51<-6.007454794598743e-05){
    s0+=60.0;
   } else {
    if(i23<0.097632497549057){
     s0+=161.0;
     s1+=786.0;
    } else {
     s0+=89.0;
     s1+=14498.0;
    }
   }
  }
 }
} else {
 if(i25<0.006728671956807375){
  if(i45<-8.944809451350011e-06){
   if(i15<0.000374833180103451){
    s1+=741.0;
   } else {
    s0+=232.0;
   }
  } else {
   if(i28<1.1162974834442139){
    if(i13<1.0091121196746826){
     s0+=22778.0;
     s1+=498.0;
    } else {
     s0+=32.0;
     s1+=308.0;
    }
   } else {
    if(i13<1.0291790962219238){
     s0+=49288.0;
     s1+=99.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i5<1.0004675388336182){
   if(i6<-5.364418029785156e-07){
    if(i30<0.00028652092441916466){
     s0+=1778.0;
     s1+=372.0;
    } else {
     s0+=33648.0;
     s1+=456.0;
    }
   } else {
    if(i35<1.116391897201538){
     s0+=246.0;
     s1+=830.0;
    } else {
     s0+=4326.0;
     s1+=430.0;
    }
   }
  } else {
   if(i41<-2.9750995054200757e-06){
    if(i30<0.0011221006279811263){
     s0+=197.0;
     s1+=2338.0;
    } else {
     s0+=2664.0;
     s1+=2814.0;
    }
   } else {
    s0+=417.0;
   }
  }
 }
}
if(i17<1.016754150390625){
 if(i0<-8.454031922155991e-05){
  if(i14<0.04174652695655823){
   if(i75<0.03676532953977585){
    if(i27<1.015360951423645){
     s0+=851.0;
     s1+=28.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i13<0.9446711540222168){
     s0+=98.0;
     s1+=39.0;
    } else {
     s0+=14.0;
     s1+=111.0;
    }
   }
  } else {
   if(i48<-6.152826244942844e-06){
    if(i10<0.9762247800827026){
     s1+=1.0;
    } else {
     s0+=263.0;
    }
   } else {
    if(i19<-0.004737198352813721){
     s0+=84.0;
     s1+=113.0;
    } else {
     s0+=101.0;
     s1+=3686.0;
    }
   }
  }
 } else {
  if(i1<0.001077413558959961){
   if(i30<0.001068255165591836){
    if(i7<0.003654017811641097){
     s0+=29887.0;
     s1+=891.0;
    } else {
     s0+=2793.0;
     s1+=2539.0;
    }
   } else {
    if(i67<0.0011500440305098891){
     s0+=73074.0;
     s1+=559.0;
    } else {
     s0+=6682.0;
     s1+=935.0;
    }
   }
  } else {
   if(i37<0.0011194662656635046){
    if(i38<0.0011859259102493525){
     s1+=793.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i13<1.0058741569519043){
     s0+=68.0;
     s1+=277.0;
    } else {
     s0+=827.0;
     s1+=105.0;
    }
   }
  }
 }
} else {
 if(i5<1.0019243955612183){
  if(i39<0.09508690983057022){
   if(i32<1.0905578136444092){
    if(i38<0.0006638573249801993){
     s0+=5.0;
    } else {
     s1+=50.0;
    }
   } else {
    if(i49<3.771347473957576e-05){
     s0+=436.0;
     s1+=3.0;
    } else {
     s0+=373.0;
     s1+=104.0;
    }
   }
  } else {
   if(i26<0.007421388290822506){
    if(i65<0.000535476952791214){
     s0+=30.0;
     s1+=14.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i36<1.1137999296188354){
     s0+=3.0;
    } else {
     s1+=184.0;
    }
   }
  }
 } else {
  if(i7<0.003934868145734072){
   if(i38<0.001070621539838612){
    s1+=226.0;
   } else {
    if(i20<0.0004070401191711426){
     s0+=720.0;
     s1+=55.0;
    } else {
     s0+=20.0;
     s1+=202.0;
    }
   }
  } else {
   if(i15<0.0008768632542341948){
    if(i5<1.0034122467041016){
     s0+=26.0;
     s1+=463.0;
    } else {
     s0+=22.0;
     s1+=13013.0;
    }
   } else {
    s0+=63.0;
   }
  }
 }
}
if(i36<1.1402404308319092){
 if(i8<1.0076661109924316){
  if(i0<-9.458341082790866e-05){
   if(i14<0.03632485866546631){
    if(i49<0.00026961113326251507){
     s0+=14.0;
     s1+=32.0;
    } else {
     s0+=145.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.0003314018249511719){
     s0+=44.0;
     s1+=543.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i38<0.0010552569292485714){
    if(i46<0.0001708876807242632){
     s0+=21116.0;
     s1+=578.0;
    } else {
     s0+=11365.0;
     s1+=2490.0;
    }
   } else {
    if(i7<0.007329173386096954){
     s0+=72790.0;
     s1+=694.0;
    } else {
     s0+=3720.0;
     s1+=709.0;
    }
   }
  }
 } else {
  if(i32<1.098123550415039){
   if(i36<1.0328443050384521){
    s0+=1.0;
   } else {
    s1+=2150.0;
   }
  } else {
   if(i37<0.002059383550658822){
    if(i1<0.0022890865802764893){
     s0+=2402.0;
     s1+=263.0;
    } else {
     s0+=23.0;
     s1+=332.0;
    }
   } else {
    if(i21<1.0024460554122925){
     s0+=184.0;
     s1+=89.0;
    } else {
     s0+=42.0;
     s1+=1333.0;
    }
   }
  }
 }
} else {
 if(i16<0.1285686194896698){
  if(i2<7.56978988647461e-05){
   if(i6<1.233816146850586e-05){
    if(i31<0.0029596625827252865){
     s0+=2716.0;
     s1+=56.0;
    } else {
     s0+=37.0;
     s1+=21.0;
    }
   } else {
    if(i59<0.003530711866915226){
     s0+=948.0;
     s1+=278.0;
    } else {
     s0+=164.0;
     s1+=276.0;
    }
   }
  } else {
   if(i26<0.0021418845281004906){
    s0+=18.0;
   } else {
    if(i74<0.002866804599761963){
     s0+=32.0;
     s1+=805.0;
    } else {
     s0+=18.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i28<1.1836955547332764){
   s0+=289.0;
  } else {
   if(i0<-3.196694888174534e-05){
    if(i28<1.7041046619415283){
     s0+=97.0;
     s1+=13488.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i3<0.00034302473068237305){
     s0+=253.0;
     s1+=1.0;
    } else {
     s0+=61.0;
     s1+=177.0;
    }
   }
  }
 }
}
if(i17<1.0171232223510742){
 if(i0<-8.851208258420229e-05){
  if(i49<0.00031478458549827337){
   if(i37<0.0021377657540142536){
    if(i38<0.0013253326760604978){
     s0+=14.0;
     s1+=256.0;
    } else {
     s0+=222.0;
     s1+=33.0;
    }
   } else {
    if(i17<0.9136456847190857){
     s0+=75.0;
     s1+=99.0;
    } else {
     s0+=146.0;
     s1+=3334.0;
    }
   }
  } else {
   if(i17<0.9207584857940674){
    if(i25<0.061080202460289){
     s0+=644.0;
     s1+=20.0;
    } else {
     s0+=80.0;
     s1+=134.0;
    }
   } else {
    if(i16<0.052864402532577515){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i1<0.0010300874710083008){
   if(i28<1.1162974834442139){
    if(i9<1.0086987018585205){
     s0+=29986.0;
     s1+=2643.0;
    } else {
     s0+=410.0;
     s1+=794.0;
    }
   } else {
    if(i3<0.0004341006278991699){
     s0+=78025.0;
     s1+=668.0;
    } else {
     s0+=4235.0;
     s1+=844.0;
    }
   }
  } else {
   if(i32<1.117074966430664){
    if(i48<-3.696287421917077e-06){
     s0+=101.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=913.0;
    }
   } else {
    if(i7<0.0054352907463908195){
     s0+=940.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=436.0;
    }
   }
  }
 }
} else {
 if(i13<1.0185505151748657){
  if(i14<0.20817306637763977){
   if(i35<1.1176170110702515){
    if(i22<1.0905578136444092){
     s0+=6.0;
     s1+=546.0;
    } else {
     s0+=34.0;
     s1+=4.0;
    }
   } else {
    if(i26<0.0019769819919019938){
     s0+=634.0;
    } else {
     s0+=331.0;
     s1+=325.0;
    }
   }
  } else {
   if(i25<0.028749460354447365){
    if(i7<0.004661653656512499){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i58<0.01570415124297142){
     s0+=4.0;
    } else {
     s0+=12.0;
     s1+=548.0;
    }
   }
  }
 } else {
  if(i0<-3.250487134209834e-05){
   if(i51<-3.436735823925119e-06){
    if(i48<-6.080845196265727e-06){
     s0+=45.0;
     s1+=3.0;
    } else {
     s0+=60.0;
     s1+=12602.0;
    }
   } else {
    if(i34<1.4076735973358154){
     s1+=3.0;
    } else {
     s0+=89.0;
    }
   }
  } else {
   if(i16<0.21686729788780212){
    if(i66<0.0020128488540649414){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=191.0;
     s1+=5.0;
    }
   } else {
    if(i32<1.2196855545043945){
     s1+=16.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  }
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
