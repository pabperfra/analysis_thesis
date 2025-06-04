/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 laplace_box_of_gaussian_blur=15 top_hat_box=30 difference_of_gaussian=15 top_hat_box=15 gaussian_blur=10 top_hat_box=10 small_hessian_eigenvalue_of_gaussian_blur=10 median_box=5 maximum_box=2 gaussian_blur=5 gaussian_blur=15 sobel_of_gaussian_blur=10 maximum_box=3 difference_of_gaussian=20 difference_of_gaussian=10 mean_box=15 laplace_box_of_gaussian_blur=20 gaussian_blur=3 laplace_box_of_gaussian_blur=10 maximum_box=1 sobel_of_median_box=5 median_box=3 mean_box=3 maximum_box=5 mean_box=2 variance_box=3 gaussian_blur=1 mean_box=1 mean_box=10 gaussian_blur=2 variance_box=2 maximum_box=30 sobel_of_gaussian_blur=5 maximum_box=10 mean_box=5 variance_box=30 gaussian_blur=20 maximum_box=20 sobel_of_median_box=3 variance_box=20 variance_box=15 variance_box=10 small_hessian_eigenvalue_of_gaussian_blur=15 top_hat_box=2 maximum_box=15 top_hat_box=5 top_hat_box=3 variance_box=5 laplace_box_of_gaussian_blur=2 difference_of_gaussian=30 difference_of_gaussian=2 large_hessian_eigenvalue_of_gaussian_blur=1 laplace_box_of_gaussian_blur=1 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=15 top_hat_box=1 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=5 gaussian_blur=30 laplace_box_of_gaussian_blur=3 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=2 sobel_of_gaussian_blur=1 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=15 large_hessian_eigenvalue_of_gaussian_blur=2 mean_box=30 mean_box=20 sobel_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=30 sobel_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=20 variance_box=1 difference_of_gaussian=5 small_hessian_eigenvalue_of_gaussian_blur=3 laplace_box_of_gaussian_blur=5 laplace_box_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 83
max_depth = 5
num_trees = 250
feature_importances = 0.10386389422968377,0.0781049596234662,0.10667699013625785,0.06911763878989477,0.12007507165070841,0.050289413814282716,0.05968351421909521,0.04232011626124664,0.025083338020910156,0.02699221385760589,0.017689014386175487,0.012966596087998146,0.012289092133530358,0.040795199775039495,0.027758519279396716,0.011529672243110575,0.012222324368041264,0.011091735629890782,0.009921653789521142,0.015980850038274416,0.00623312650918417,0.00549374308579398,0.012423611373369505,0.007812901046691568,0.0073362763109253775,0.0022044674944436283,0.005565869694310252,0.0012405709118061476,0.0006241687113578523,0.019427511240901384,0.005767428487466432,0.0016542614146809842,0.0035893688932561335,0.003181858379794082,0.002251067614157395,0.0008382104108981347,0.0027066356001572253,0.003029970319646218,0.0022963622801789704,0.0015121912067311116,0.0025415549922295512,0.002360916666748833,0.002248027203644436,0.0019095561472191555,0.002977969890491164,0.002328729464523374,0.0023368740611108755,0.002107664087643871,0.0020936412134655914,0.002058983689206605,0.0017864247382201209,0.001827228663105416,0.0010691990760922027,0.0012927871387659294,0.0009594531915720714,0.0014908900225345976,0.0006053575198701076,0.001261913718800762,0.0008756626483387264,0.0006944748948366174,0.0013729733626205122,0.0007228333871684294,0.0010608974034822052,0.0009658870549672395,0.0010323283759793628,0.0004561640549708868,0.0008621991190812335,0.0008415821778466562,0.0012954662004258201,0.0010953857347924091,0.000531344153611218,0.0009082485706747173,0.0008904030732953538,0.0007917174534607923,0.0005180284954207067,0.0008178241294526929,0.00030586882172335325,0.00011172399011164824,0.00019593437604379358,0.0003042405821639443,0.0002649568481874354,0.00017435522380013156,1.0919062418945892e-05
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_in78_TYPE in78, IMAGE_in79_TYPE in79, IMAGE_in80_TYPE in80, IMAGE_in81_TYPE in81, IMAGE_in82_TYPE in82, IMAGE_out_TYPE out) {
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
 float i79 = READ_IMAGE(in79, sampler, POS_in79_INSTANCE(x,y,z,0)).x;
 float i80 = READ_IMAGE(in80, sampler, POS_in80_INSTANCE(x,y,z,0)).x;
 float i81 = READ_IMAGE(in81, sampler, POS_in81_INSTANCE(x,y,z,0)).x;
 float i82 = READ_IMAGE(in82, sampler, POS_in82_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i5<1.0024573802947998){
 if(i6<0.07198938727378845){
  if(i9<1.0410068035125732){
   if(i49<-0.005920350551605225){
    if(i65<0.30647051334381104){
     s0+=1689.0;
     s1+=542.0;
    } else {
     s0+=1104.0;
     s1+=6.0;
    }
   } else {
    if(i26<0.00026726018404588103){
     s0+=50064.0;
     s1+=157.0;
    } else {
     s0+=10343.0;
     s1+=629.0;
    }
   }
  } else {
   if(i19<0.00011140108108520508){
    if(i5<0.9982677698135376){
     s0+=2710.0;
     s1+=170.0;
    } else {
     s0+=2723.0;
     s1+=1020.0;
    }
   } else {
    if(i2<0.07034862041473389){
     s0+=115.0;
     s1+=37.0;
    } else {
     s0+=12.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i37<0.9987839460372925){
   if(i40<0.02156231179833412){
    if(i11<0.9980416297912598){
     s0+=393.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i6<0.12505272030830383){
    if(i64<-0.0055059753358364105){
     s0+=709.0;
     s1+=141.0;
    } else {
     s0+=474.0;
     s1+=1286.0;
    }
   } else {
    if(i12<0.0031563923694193363){
     s0+=274.0;
     s1+=261.0;
    } else {
     s0+=37.0;
     s1+=1531.0;
    }
   }
  }
 }
} else {
 if(i5<1.0041333436965942){
  if(i31<0.00019502593204379082){
   if(i76<-5.933889610787446e-07){
    if(i57<0.0012274879263713956){
     s0+=81.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i20<1.0163018703460693){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   }
  } else {
   if(i12<0.0029115420766174793){
    if(i73<-4.830802026845049e-06){
     s0+=8.0;
     s1+=31.0;
    } else {
     s0+=103.0;
     s1+=6.0;
    }
   } else {
    if(i17<3.212690353393555e-05){
     s0+=10.0;
     s1+=1139.0;
    } else {
     s0+=82.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i4<0.005497246980667114){
   if(i29<1.0048621892929077){
    if(i65<0.31122350692749023){
     s1+=1.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i50<0.0001780986785888672){
     s0+=2.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i15<3.1828880310058594e-05){
    if(i11<1.003460168838501){
     s0+=31.0;
     s1+=118.0;
    } else {
     s0+=5.0;
     s1+=464.0;
    }
   } else {
    if(i54<0.010694622993469238){
     s0+=1.0;
     s1+=8090.0;
    } else {
     s0+=4.0;
     s1+=1040.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i26<0.000308314454741776){
  if(i30<1.008420705795288){
   if(i5<1.002955675125122){
    if(i30<1.0073332786560059){
     s0+=53574.0;
     s1+=209.0;
    } else {
     s0+=168.0;
     s1+=20.0;
    }
   } else {
    if(i13<1.0336023569107056){
     s0+=28.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i38<1.1063789129257202){
    if(i73<-2.995861450472148e-06){
     s0+=7.0;
     s1+=141.0;
    } else {
     s0+=33.0;
     s1+=2.0;
    }
   } else {
    if(i12<0.0030699940398335457){
     s0+=157.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i1<3.319978713989258e-05){
   if(i51<0.002275526523590088){
    if(i34<1.1036889553070068){
     s0+=3467.0;
     s1+=1306.0;
    } else {
     s0+=5070.0;
     s1+=380.0;
    }
   } else {
    if(i35<0.9938331246376038){
     s0+=5914.0;
     s1+=11.0;
    } else {
     s0+=768.0;
     s1+=55.0;
    }
   }
  } else {
   if(i51<0.0013958513736724854){
    if(i66<0.0017554163932800293){
     s0+=104.0;
     s1+=824.0;
    } else {
     s0+=40.0;
     s1+=16.0;
    }
   } else {
    if(i41<0.0017804570961743593){
     s0+=10.0;
     s1+=14.0;
    } else {
     s0+=143.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i41<0.006194949150085449){
  if(i44<0.054081857204437256){
   if(i5<0.9963666796684265){
    if(i16<0.9975413680076599){
     s0+=111.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i48<0.004118796903640032){
     s0+=57.0;
     s1+=3100.0;
    } else {
     s0+=113.0;
     s1+=481.0;
    }
   }
  } else {
   if(i15<0.0005356669425964355){
    if(i16<1.0033773183822632){
     s0+=1166.0;
     s1+=384.0;
    } else {
     s0+=43.0;
     s1+=121.0;
    }
   } else {
    if(i43<-2.121380930475425e-06){
     s0+=27.0;
     s1+=447.0;
    } else {
     s0+=37.0;
    }
   }
  }
 } else {
  if(i26<0.0003153444267809391){
   s0+=8.0;
  } else {
   if(i13<1.0624333620071411){
    if(i62<0.0035560131072998047){
     s0+=4.0;
     s1+=139.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.0021156975999474525){
     s0+=34.0;
     s1+=57.0;
    } else {
     s0+=58.0;
     s1+=9296.0;
    }
   }
  }
 }
}
if(i20<1.0406770706176758){
 if(i1<3.844499588012695e-05){
  if(i31<0.00029555667424574494){
   if(i10<1.003646969795227){
    if(i6<0.07133665680885315){
     s0+=54978.0;
     s1+=497.0;
    } else {
     s0+=157.0;
     s1+=84.0;
    }
   } else {
    if(i0<0.06778249144554138){
     s0+=845.0;
     s1+=51.0;
    } else {
     s0+=14.0;
     s1+=102.0;
    }
   }
  } else {
   if(i0<0.07653090357780457){
    if(i34<1.154393196105957){
     s0+=4129.0;
     s1+=1021.0;
    } else {
     s0+=6244.0;
     s1+=168.0;
    }
   } else {
    if(i76<7.615649792569457e-06){
     s0+=100.0;
     s1+=883.0;
    } else {
     s0+=110.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i45<1.0611095428466797){
   s0+=280.0;
  } else {
   if(i26<0.0001930308062583208){
    if(i38<1.175731897354126){
     s1+=6.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i43<-1.4089584510657005e-05){
     s0+=59.0;
     s1+=1936.0;
    } else {
     s0+=37.0;
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i2<0.1126360297203064){
  if(i0<0.08367037773132324){
   if(i43<-6.532270163006615e-06){
    if(i15<-0.0005429983139038086){
     s0+=674.0;
     s1+=89.0;
    } else {
     s0+=280.0;
     s1+=407.0;
    }
   } else {
    if(i48<0.0014226613566279411){
     s0+=781.0;
     s1+=62.0;
    } else {
     s0+=1009.0;
     s1+=8.0;
    }
   }
  } else {
   if(i44<0.046901553869247437){
    if(i43<-1.327596919509233e-06){
     s0+=41.0;
     s1+=688.0;
    } else {
     s0+=28.0;
     s1+=9.0;
    }
   } else {
    if(i41<0.0011346543906256557){
     s0+=105.0;
     s1+=98.0;
    } else {
     s0+=533.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i1<3.7550926208496094e-06){
   if(i37<0.9993237853050232){
    if(i14<-0.0004030168056488037){
     s0+=212.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=7.0;
    }
   } else {
    if(i45<1.3114159107208252){
     s0+=290.0;
     s1+=487.0;
    } else {
     s0+=9.0;
     s1+=322.0;
    }
   }
  } else {
   if(i7<-4.6442553866654634e-05){
    if(i4<0.1407366693019867){
     s0+=68.0;
     s1+=679.0;
    } else {
     s0+=14.0;
     s1+=8862.0;
    }
   } else {
    if(i26<0.004846422001719475){
     s0+=16.0;
     s1+=279.0;
    } else {
     s0+=158.0;
     s1+=136.0;
    }
   }
  }
 }
}
if(i7<-7.876839663367718e-05){
 if(i80<-0.006860852241516113){
  if(i12<0.022768724709749222){
   if(i10<0.9811683893203735){
    if(i45<1.5541603565216064){
     s0+=124.0;
     s1+=16.0;
    } else {
     s0+=296.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i15<-0.004857927560806274){
    s0+=2.0;
   } else {
    s1+=83.0;
   }
  }
 } else {
  if(i0<0.06466794013977051){
   if(i5<1.004570722579956){
    if(i52<0.015779653564095497){
     s0+=278.0;
     s1+=19.0;
    } else {
     s0+=10.0;
     s1+=39.0;
    }
   } else {
    if(i65<0.3705691695213318){
     s1+=164.0;
    } else {
     s0+=12.0;
     s1+=27.0;
    }
   }
  } else {
   if(i38<1.0762357711791992){
    s0+=26.0;
   } else {
    if(i35<0.9967862367630005){
     s0+=92.0;
     s1+=1407.0;
    } else {
     s0+=10.0;
     s1+=9175.0;
    }
   }
  }
 }
} else {
 if(i6<0.06980457901954651){
  if(i13<1.0446083545684814){
   if(i4<0.07663029432296753){
    if(i3<0.0007367730140686035){
     s0+=60971.0;
     s1+=745.0;
    } else {
     s0+=30.0;
     s1+=66.0;
    }
   } else {
    if(i29<0.9935736060142517){
     s0+=81.0;
    } else {
     s0+=10.0;
     s1+=102.0;
    }
   }
  } else {
   if(i1<1.4960765838623047e-05){
    if(i41<0.001135295256972313){
     s0+=2112.0;
     s1+=842.0;
    } else {
     s0+=4272.0;
     s1+=381.0;
    }
   } else {
    if(i34<1.139992117881775){
     s0+=184.0;
     s1+=830.0;
    } else {
     s0+=510.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i12<0.004640925209969282){
   if(i49<0.012964248657226562){
    if(i32<1.0840110778808594){
     s0+=229.0;
    } else {
     s0+=499.0;
     s1+=942.0;
    }
   } else {
    if(i41<0.005356170702725649){
     s0+=959.0;
     s1+=141.0;
    } else {
     s0+=149.0;
     s1+=157.0;
    }
   }
  } else {
   if(i67<1.4093141544435639e-05){
    if(i16<0.9950841665267944){
     s0+=24.0;
     s1+=22.0;
    } else {
     s0+=48.0;
     s1+=1309.0;
    }
   } else {
    if(i11<0.997877836227417){
     s0+=78.0;
    } else {
     s0+=187.0;
     s1+=384.0;
    }
   }
  }
 }
}
if(i6<0.07381513714790344){
 if(i19<0.00016131997108459473){
  if(i75<0.0111148776486516){
   if(i8<1.0081498622894287){
    if(i78<-0.002131432294845581){
     s0+=139.0;
     s1+=172.0;
    } else {
     s0+=47098.0;
     s1+=173.0;
    }
   } else {
    if(i34<1.083398699760437){
     s0+=2.0;
     s1+=147.0;
    } else {
     s0+=122.0;
     s1+=19.0;
    }
   }
  } else {
   if(i29<0.9949454069137573){
    if(i4<0.09095025062561035){
     s0+=14936.0;
     s1+=290.0;
    } else {
     s0+=60.0;
     s1+=65.0;
    }
   } else {
    if(i33<0.012909410521388054){
     s0+=5308.0;
     s1+=873.0;
    } else {
     s0+=1222.0;
     s1+=1542.0;
    }
   }
  }
 } else {
  if(i38<1.0762357711791992){
   s0+=179.0;
  } else {
   if(i43<-1.4140128769213334e-05){
    if(i48<0.00032628874760121107){
     s0+=2.0;
     s1+=49.0;
    } else {
     s0+=2.0;
     s1+=1277.0;
    }
   } else {
    if(i4<0.07139891386032104){
     s0+=164.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i11<0.9985275268554688){
  if(i69<1.001167893409729){
   if(i9<1.0413352251052856){
    if(i5<0.9969775080680847){
     s0+=84.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   } else {
    if(i40<0.021084342151880264){
     s0+=383.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.10461455583572388){
    s0+=31.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i40<0.0060746679082512856){
   if(i51<0.004384726285934448){
    if(i44<0.05451768636703491){
     s0+=105.0;
     s1+=1829.0;
    } else {
     s0+=235.0;
     s1+=459.0;
    }
   } else {
    if(i4<0.12712717056274414){
     s0+=542.0;
     s1+=83.0;
    } else {
     s0+=278.0;
     s1+=721.0;
    }
   }
  } else {
   if(i4<0.11205431818962097){
    if(i47<0.060580044984817505){
     s0+=18.0;
     s1+=216.0;
    } else {
     s0+=104.0;
     s1+=46.0;
    }
   } else {
    if(i69<1.0018988847732544){
     s0+=18.0;
     s1+=8552.0;
    } else {
     s0+=27.0;
     s1+=414.0;
    }
   }
  }
 }
}
if(i2<0.08355346322059631){
 if(i68<0.0018146834336221218){
  if(i23<1.0067355632781982){
   if(i26<0.0002688700915314257){
    if(i80<-0.0009267032146453857){
     s0+=443.0;
     s1+=31.0;
    } else {
     s0+=50381.0;
     s1+=98.0;
    }
   } else {
    if(i5<1.0007541179656982){
     s0+=10263.0;
     s1+=475.0;
    } else {
     s0+=165.0;
     s1+=202.0;
    }
   }
  } else {
   if(i42<0.0014063026756048203){
    if(i32<1.0952131748199463){
     s0+=575.0;
     s1+=123.0;
    } else {
     s0+=151.0;
     s1+=433.0;
    }
   } else {
    if(i7<-6.685433618258685e-05){
     s0+=42.0;
     s1+=44.0;
    } else {
     s0+=1592.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i10<0.9874305725097656){
   if(i11<1.00113844871521){
    if(i10<0.982546329498291){
     s0+=1967.0;
     s1+=25.0;
    } else {
     s0+=510.0;
     s1+=76.0;
    }
   } else {
    if(i13<1.082106590270996){
     s0+=217.0;
     s1+=39.0;
    } else {
     s0+=16.0;
     s1+=110.0;
    }
   }
  } else {
   if(i70<1.0003776550292969){
    if(i60<0.00046523904893547297){
     s0+=1875.0;
     s1+=239.0;
    } else {
     s0+=305.0;
     s1+=241.0;
    }
   } else {
    if(i14<0.0004413723945617676){
     s0+=396.0;
     s1+=369.0;
    } else {
     s0+=41.0;
     s1+=574.0;
    }
   }
  }
 }
} else {
 if(i7<-1.5567755326628685e-05){
  if(i2<0.12466588616371155){
   if(i64<-0.005190137308090925){
    if(i12<0.00998867116868496){
     s0+=376.0;
     s1+=37.0;
    } else {
     s0+=13.0;
     s1+=85.0;
    }
   } else {
    if(i53<0.05832409858703613){
     s0+=71.0;
     s1+=2054.0;
    } else {
     s0+=59.0;
     s1+=35.0;
    }
   }
  } else {
   if(i29<1.0012305974960327){
    if(i50<-0.00014230608940124512){
     s0+=25.0;
     s1+=16.0;
    } else {
     s0+=149.0;
     s1+=2439.0;
    }
   } else {
    if(i73<-5.939457992099051e-07){
     s0+=31.0;
     s1+=9048.0;
    } else {
     s0+=7.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i32<1.255998969078064){
   if(i81<-6.020069122314453e-06){
    if(i32<1.1526668071746826){
     s0+=320.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i21<0.023259103298187256){
     s0+=355.0;
     s1+=132.0;
    } else {
     s0+=72.0;
     s1+=285.0;
    }
   }
  } else {
   if(i28<0.9390405416488647){
    if(i49<-0.02646636962890625){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i36<0.005010303109884262){
     s0+=482.0;
    } else {
     s0+=54.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i2<0.08351385593414307){
 if(i10<1.0060358047485352){
  if(i5<1.002474308013916){
   if(i54<-0.0027199983596801758){
    if(i50<-3.260374069213867e-05){
     s0+=892.0;
     s1+=67.0;
    } else {
     s0+=803.0;
     s1+=417.0;
    }
   } else {
    if(i66<-0.0013805031776428223){
     s0+=4393.0;
     s1+=653.0;
    } else {
     s0+=62242.0;
     s1+=839.0;
    }
   }
  } else {
   if(i33<0.0083200354129076){
    if(i20<0.9981696009635925){
     s1+=12.0;
    } else {
     s0+=55.0;
     s1+=6.0;
    }
   } else {
    if(i62<0.0023053884506225586){
     s0+=30.0;
     s1+=295.0;
    } else {
     s0+=25.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i43<-1.4109648873272818e-05){
   if(i78<0.002834022045135498){
    if(i19<7.927417755126953e-06){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=616.0;
    }
   } else {
    if(i12<0.005236940458416939){
     s0+=16.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i42<0.0011387335835024714){
    if(i41<0.0016394678968936205){
     s1+=60.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i19<0.00022977590560913086){
     s0+=659.0;
     s1+=3.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i33<0.025252580642700195){
  if(i11<0.998519778251648){
   if(i19<-0.00046452879905700684){
    if(i37<0.9991846084594727){
     s0+=13.0;
    } else {
     s0+=7.0;
     s1+=15.0;
    }
   } else {
    if(i36<0.001722568180412054){
     s0+=540.0;
    } else {
     s0+=45.0;
     s1+=8.0;
    }
   }
  } else {
   if(i53<0.045220255851745605){
    if(i0<0.08529368042945862){
     s0+=110.0;
     s1+=173.0;
    } else {
     s0+=173.0;
     s1+=3374.0;
    }
   } else {
    if(i55<-1.641791095607914e-05){
     s0+=17.0;
     s1+=263.0;
    } else {
     s0+=851.0;
     s1+=594.0;
    }
   }
  }
 } else {
  if(i50<-0.00029203295707702637){
   if(i5<0.9962588548660278){
    s0+=115.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i67<4.0116508898790926e-05){
    if(i11<0.9988717436790466){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=93.0;
     s1+=9424.0;
    }
   } else {
    if(i4<0.10945636034011841){
     s0+=62.0;
     s1+=17.0;
    } else {
     s1+=175.0;
    }
   }
  }
 }
}
if(i22<1.0107395648956299){
 if(i14<0.0004481673240661621){
  if(i6<0.0755089819431305){
   if(i24<1.0486011505126953){
    if(i78<-0.0010583996772766113){
     s0+=6576.0;
     s1+=299.0;
    } else {
     s0+=48871.0;
     s1+=78.0;
    }
   } else {
    if(i29<0.9942043423652649){
     s0+=4677.0;
     s1+=152.0;
    } else {
     s0+=6762.0;
     s1+=1645.0;
    }
   }
  } else {
   if(i50<-0.00013932585716247559){
    if(i48<0.030928928405046463){
     s0+=315.0;
     s1+=14.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i71<0.00013947352999821305){
     s0+=193.0;
     s1+=86.0;
    } else {
     s0+=205.0;
     s1+=991.0;
    }
   }
  }
 } else {
  if(i29<1.0011943578720093){
   if(i5<1.0011690855026245){
    if(i13<1.0937840938568115){
     s0+=1087.0;
     s1+=90.0;
    } else {
     s0+=13.0;
     s1+=155.0;
    }
   } else {
    if(i13<1.115757703781128){
     s0+=200.0;
     s1+=278.0;
    } else {
     s1+=338.0;
    }
   }
  } else {
   if(i48<0.00021549852681346238){
    s0+=64.0;
   } else {
    if(i6<0.031200647354125977){
     s0+=30.0;
     s1+=235.0;
    } else {
     s0+=29.0;
     s1+=1961.0;
    }
   }
  }
 }
} else {
 if(i22<1.0371801853179932){
  if(i5<1.0020502805709839){
   if(i4<0.09095105528831482){
    if(i34<1.083398699760437){
     s0+=82.0;
     s1+=225.0;
    } else {
     s0+=1201.0;
     s1+=103.0;
    }
   } else {
    if(i53<0.08566242456436157){
     s0+=102.0;
     s1+=905.0;
    } else {
     s0+=270.0;
     s1+=160.0;
    }
   }
  } else {
   if(i12<0.0025645617861300707){
    if(i7<-4.947013076161966e-05){
     s0+=2.0;
     s1+=198.0;
    } else {
     s0+=134.0;
     s1+=3.0;
    }
   } else {
    if(i43<-7.229838956845924e-06){
     s0+=71.0;
     s1+=2709.0;
    } else {
     s0+=11.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i36<0.0016761423321440816){
   s0+=124.0;
  } else {
   if(i5<1.0016632080078125){
    if(i75<0.13177184760570526){
     s0+=54.0;
     s1+=165.0;
    } else {
     s0+=2.0;
     s1+=274.0;
    }
   } else {
    if(i2<0.16669359803199768){
     s0+=18.0;
     s1+=135.0;
    } else {
     s1+=5935.0;
    }
   }
  }
 }
}
if(i30<1.0088496208190918){
 if(i13<1.057713270187378){
  if(i4<0.07766672968864441){
   if(i62<-0.0020501315593719482){
    if(i41<0.0010121806990355253){
     s0+=1378.0;
     s1+=607.0;
    } else {
     s0+=3403.0;
     s1+=153.0;
    }
   } else {
    if(i4<0.060728222131729126){
     s0+=56398.0;
     s1+=345.0;
    } else {
     s0+=3000.0;
     s1+=250.0;
    }
   }
  } else {
   if(i37<0.9992842674255371){
    if(i28<1.0146136283874512){
     s0+=166.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i52<-0.0007038144976831973){
     s0+=184.0;
     s1+=251.0;
    } else {
     s0+=21.0;
     s1+=356.0;
    }
   }
  }
 } else {
  if(i4<0.07532352209091187){
   if(i16<1.0007870197296143){
    if(i45<1.103413462638855){
     s0+=492.0;
     s1+=301.0;
    } else {
     s0+=2277.0;
     s1+=173.0;
    }
   } else {
    if(i19<-0.00013786554336547852){
     s0+=417.0;
     s1+=178.0;
    } else {
     s0+=82.0;
     s1+=539.0;
    }
   }
  } else {
   if(i47<0.057165682315826416){
    if(i38<1.0755670070648193){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=2052.0;
    }
   } else {
    if(i12<0.006499894894659519){
     s0+=585.0;
     s1+=284.0;
    } else {
     s0+=71.0;
     s1+=717.0;
    }
   }
  }
 }
} else {
 if(i1<3.3736228942871094e-05){
  if(i12<0.004294299986213446){
   if(i24<1.0737545490264893){
    if(i35<1.0063469409942627){
     s0+=164.0;
     s1+=112.0;
    } else {
     s0+=14.0;
     s1+=317.0;
    }
   } else {
    if(i60<-0.00014403904788196087){
     s0+=116.0;
     s1+=125.0;
    } else {
     s0+=1738.0;
     s1+=155.0;
    }
   }
  } else {
   if(i73<1.2184752904431662e-06){
    if(i18<1.0030827522277832){
     s0+=38.0;
     s1+=108.0;
    } else {
     s0+=8.0;
     s1+=1051.0;
    }
   } else {
    s0+=143.0;
   }
  }
 } else {
  if(i15<0.001430511474609375){
   if(i0<0.1326313316822052){
    if(i13<1.0833278894424438){
     s0+=51.0;
     s1+=360.0;
    } else {
     s0+=150.0;
     s1+=42.0;
    }
   } else {
    if(i10<1.0006797313690186){
     s0+=14.0;
     s1+=241.0;
    } else {
     s0+=4.0;
     s1+=1001.0;
    }
   }
  } else {
   s1+=7560.0;
  }
 }
}
if(i8<1.0081671476364136){
 if(i3<0.0005682110786437988){
  if(i42<0.0003853418165817857){
   if(i8<1.0064079761505127){
    if(i0<0.07006591558456421){
     s0+=40525.0;
     s1+=59.0;
    } else {
     s0+=576.0;
     s1+=31.0;
    }
   } else {
    if(i9<1.0383849143981934){
     s0+=30.0;
     s1+=3.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i46<0.060186564922332764){
    if(i16<0.9978972673416138){
     s0+=16526.0;
     s1+=405.0;
    } else {
     s0+=10036.0;
     s1+=2072.0;
    }
   } else {
    if(i7<-1.2704282198683359e-05){
     s0+=594.0;
     s1+=1118.0;
    } else {
     s0+=1064.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i38<1.0657644271850586){
   s0+=131.0;
  } else {
   if(i19<-8.869171142578125e-05){
    if(i4<0.1243475079536438){
     s0+=135.0;
     s1+=281.0;
    } else {
     s0+=11.0;
     s1+=383.0;
    }
   } else {
    if(i26<0.0001662364520598203){
     s0+=12.0;
    } else {
     s0+=32.0;
     s1+=1667.0;
    }
   }
  }
 }
} else {
 if(i7<-4.303545210859738e-05){
  if(i17<-1.3768672943115234e-05){
   s0+=7.0;
  } else {
   if(i2<0.0740794837474823){
    if(i66<0.0023148059844970703){
     s0+=19.0;
     s1+=383.0;
    } else {
     s0+=39.0;
     s1+=13.0;
    }
   } else {
    if(i16<0.9977385997772217){
     s0+=27.0;
     s1+=394.0;
    } else {
     s0+=21.0;
     s1+=9554.0;
    }
   }
  }
 } else {
  if(i6<0.1866302192211151){
   if(i45<1.1752636432647705){
    if(i0<0.06132468581199646){
     s0+=109.0;
     s1+=25.0;
    } else {
     s0+=38.0;
     s1+=390.0;
    }
   } else {
    if(i15<-0.0020250678062438965){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1034.0;
     s1+=86.0;
    }
   }
  } else {
   if(i72<-0.07081204652786255){
    if(i75<0.12737441062927246){
     s0+=32.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i36<0.0016819253796711564){
     s0+=5.0;
    } else {
     s1+=219.0;
    }
   }
  }
 }
}
if(i29<1.003859043121338){
 if(i13<1.0452277660369873){
  if(i78<-0.0010313689708709717){
   if(i48<0.002205598633736372){
    if(i24<1.0406032800674438){
     s0+=3223.0;
     s1+=97.0;
    } else {
     s0+=707.0;
     s1+=589.0;
    }
   } else {
    if(i10<0.9874374866485596){
     s0+=5837.0;
     s1+=45.0;
    } else {
     s0+=199.0;
     s1+=47.0;
    }
   }
  } else {
   if(i16<1.0030999183654785){
    if(i31<0.0003068549558520317){
     s0+=50312.0;
     s1+=162.0;
    } else {
     s0+=1577.0;
     s1+=163.0;
    }
   } else {
    if(i50<0.00016883015632629395){
     s0+=50.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i6<0.06529203057289124){
   if(i1<1.710653305053711e-05){
    if(i21<0.017081189900636673){
     s0+=4375.0;
     s1+=312.0;
    } else {
     s0+=1621.0;
     s1+=796.0;
    }
   } else {
    if(i55<4.134142727707513e-06){
     s0+=254.0;
     s1+=33.0;
    } else {
     s0+=291.0;
     s1+=557.0;
    }
   }
  } else {
   if(i41<0.006123469676822424){
    if(i12<0.004687995184212923){
     s0+=1532.0;
     s1+=834.0;
    } else {
     s0+=224.0;
     s1+=1090.0;
    }
   } else {
    if(i36<0.01099392119795084){
     s0+=90.0;
     s1+=2173.0;
    } else {
     s0+=59.0;
     s1+=183.0;
    }
   }
  }
 }
} else {
 if(i31<0.0001779396552592516){
  if(i4<0.054583221673965454){
   if(i40<0.0006506327772513032){
    if(i8<1.0067763328552246){
     s0+=20.0;
    } else {
     s1+=5.0;
    }
   } else {
    s0+=372.0;
   }
  } else {
   if(i1<8.821487426757812e-06){
    s0+=6.0;
   } else {
    if(i45<1.2369153499603271){
     s0+=1.0;
     s1+=62.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i12<0.0012526039499789476){
   if(i35<1.0135598182678223){
    s0+=123.0;
   } else {
    if(i0<0.06749311089515686){
     s0+=7.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i43<-1.2960337699041702e-05){
    if(i1<-3.272294998168945e-05){
     s0+=17.0;
    } else {
     s0+=49.0;
     s1+=9459.0;
    }
   } else {
    if(i42<0.0022370934020727873){
     s1+=273.0;
    } else {
     s0+=146.0;
     s1+=130.0;
    }
   }
  }
 }
}
if(i19<0.00011140108108520508){
 if(i6<0.07198938727378845){
  if(i2<0.08219277858734131){
   if(i51<-0.0014520883560180664){
    if(i10<0.9825515747070312){
     s0+=1444.0;
     s1+=94.0;
    } else {
     s0+=2680.0;
     s1+=958.0;
    }
   } else {
    if(i2<0.06723096966743469){
     s0+=60709.0;
     s1+=841.0;
    } else {
     s0+=2776.0;
     s1+=410.0;
    }
   }
  } else {
   if(i14<-0.0003446042537689209){
    if(i50<-0.00011512637138366699){
     s0+=298.0;
    } else {
     s0+=13.0;
     s1+=18.0;
    }
   } else {
    if(i0<0.08318749070167542){
     s0+=104.0;
     s1+=62.0;
    } else {
     s0+=27.0;
     s1+=644.0;
    }
   }
  }
 } else {
  if(i7<-1.8090218873112462e-05){
   if(i2<0.1312570571899414){
    if(i59<0.002177957445383072){
     s0+=545.0;
     s1+=619.0;
    } else {
     s0+=9.0;
     s1+=317.0;
    }
   } else {
    if(i55<-6.931648385943845e-06){
     s0+=16.0;
     s1+=4.0;
    } else {
     s0+=105.0;
     s1+=2715.0;
    }
   }
  } else {
   if(i44<0.04140514135360718){
    if(i2<0.08949050307273865){
     s0+=56.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=151.0;
    }
   } else {
    if(i7<-1.0129371730727144e-05){
     s0+=254.0;
     s1+=163.0;
    } else {
     s0+=1005.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i42<0.0003444876929279417){
  s0+=337.0;
 } else {
  if(i77<0.00014576342073269188){
   if(i6<0.05107945203781128){
    if(i45<1.1463401317596436){
     s1+=53.0;
    } else {
     s0+=349.0;
     s1+=23.0;
    }
   } else {
    if(i7<-4.251804784871638e-05){
     s0+=3.0;
     s1+=341.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   }
  } else {
   if(i11<0.9986585378646851){
    s0+=51.0;
   } else {
    if(i4<0.05435490608215332){
     s0+=96.0;
     s1+=248.0;
    } else {
     s0+=74.0;
     s1+=9475.0;
    }
   }
  }
 }
}
if(i6<0.07196682691574097){
 if(i0<0.07873639464378357){
  if(i14<0.0006254315376281738){
   if(i52<0.00743240537121892){
    if(i21<0.014295065775513649){
     s0+=54299.0;
     s1+=445.0;
    } else {
     s0+=10631.0;
     s1+=803.0;
    }
   } else {
    if(i11<0.9983209371566772){
     s0+=1097.0;
     s1+=4.0;
    } else {
     s0+=2237.0;
     s1+=763.0;
    }
   }
  } else {
   if(i53<0.00042560696601867676){
    if(i3<0.00041788816452026367){
     s0+=118.0;
     s1+=32.0;
    } else {
     s0+=89.0;
     s1+=671.0;
    }
   } else {
    if(i26<0.0008515138761140406){
     s0+=63.0;
     s1+=50.0;
    } else {
     s0+=344.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i1<-4.789233207702637e-05){
   if(i8<0.9831746220588684){
    if(i65<0.08799557387828827){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i13<1.0934338569641113){
     s0+=124.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i41<0.00038717917050234973){
    if(i10<1.0031814575195312){
     s0+=18.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i53<0.06159031391143799){
     s0+=26.0;
     s1+=1903.0;
    } else {
     s0+=21.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i1<3.427267074584961e-05){
  if(i44<0.042453110218048096){
   if(i4<0.08590593934059143){
    if(i51<0.003973811864852905){
     s0+=32.0;
     s1+=187.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i34<1.0607655048370361){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=1187.0;
    }
   }
  } else {
   if(i43<-6.767390914319549e-06){
    if(i0<0.10920849442481995){
     s0+=408.0;
     s1+=118.0;
    } else {
     s0+=183.0;
     s1+=760.0;
    }
   } else {
    if(i61<0.9995814561843872){
     s0+=419.0;
    } else {
     s0+=748.0;
     s1+=460.0;
    }
   }
  }
 } else {
  if(i0<0.11709657311439514){
   if(i62<0.006072431802749634){
    if(i7<-7.296676631085575e-05){
     s0+=16.0;
     s1+=391.0;
    } else {
     s0+=67.0;
     s1+=131.0;
    }
   } else {
    if(i21<0.0569763109087944){
     s0+=67.0;
     s1+=2.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i81<0.0001359879970550537){
    if(i3<0.0005090236663818359){
     s0+=8.0;
     s1+=26.0;
    } else {
     s0+=42.0;
     s1+=9138.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i1<3.7610530853271484e-05){
 if(i63<0.02583969011902809){
  if(i13<1.0452277660369873){
   if(i28<0.9641443490982056){
    if(i59<0.0022385502234101295){
     s0+=31.0;
    } else {
     s0+=13.0;
     s1+=30.0;
    }
   } else {
    if(i56<0.00010281788854626939){
     s0+=51658.0;
     s1+=237.0;
    } else {
     s0+=103.0;
     s1+=33.0;
    }
   }
  } else {
   if(i2<0.08016714453697205){
    if(i5<1.0011708736419678){
     s0+=2706.0;
     s1+=162.0;
    } else {
     s0+=135.0;
     s1+=174.0;
    }
   } else {
    if(i47<0.05366712808609009){
     s0+=10.0;
     s1+=402.0;
    } else {
     s0+=154.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i3<-0.0002885162830352783){
   if(i6<0.08110073208808899){
    if(i29<0.9935585856437683){
     s0+=8406.0;
     s1+=124.0;
    } else {
     s0+=2661.0;
     s1+=510.0;
    }
   } else {
    if(i43<2.934084477601573e-06){
     s0+=194.0;
     s1+=549.0;
    } else {
     s0+=255.0;
     s1+=10.0;
    }
   }
  } else {
   if(i6<0.08099329471588135){
    if(i0<0.08390545845031738){
     s0+=3479.0;
     s1+=990.0;
    } else {
     s0+=64.0;
     s1+=467.0;
    }
   } else {
    if(i2<0.12575164437294006){
     s0+=344.0;
     s1+=302.0;
    } else {
     s0+=254.0;
     s1+=1305.0;
    }
   }
  }
 }
} else {
 if(i38<1.0795294046401978){
  s0+=310.0;
 } else {
  if(i2<0.06269580125808716){
   if(i50<0.00017955899238586426){
    if(i12<0.00312235951423645){
     s0+=108.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=57.0;
    }
   } else {
    if(i69<1.00184965133667){
     s0+=31.0;
     s1+=384.0;
    } else {
     s0+=71.0;
     s1+=22.0;
    }
   }
  } else {
   if(i41<0.009092065505683422){
    if(i53<0.050236403942108154){
     s0+=59.0;
     s1+=3163.0;
    } else {
     s0+=132.0;
     s1+=769.0;
    }
   } else {
    if(i4<0.06260186433792114){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=7173.0;
    }
   }
  }
 }
}
if(i2<0.08352804183959961){
 if(i5<1.0024782419204712){
  if(i26<0.0003074642736464739){
   if(i23<1.008404016494751){
    if(i59<0.000856701866723597){
     s0+=53044.0;
     s1+=117.0;
    } else {
     s0+=284.0;
     s1+=93.0;
    }
   } else {
    if(i7<-3.2953139452729374e-05){
     s0+=19.0;
     s1+=92.0;
    } else {
     s0+=189.0;
     s1+=9.0;
    }
   }
  } else {
   if(i48<0.001733536715619266){
    if(i60<0.0004036234749946743){
     s0+=5065.0;
     s1+=923.0;
    } else {
     s0+=495.0;
     s1+=497.0;
    }
   } else {
    if(i3<0.00046712160110473633){
     s0+=9536.0;
     s1+=292.0;
    } else {
     s0+=80.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i38<1.2314128875732422){
   if(i1<2.7239322662353516e-05){
    s0+=2.0;
   } else {
    s1+=558.0;
   }
  } else {
   if(i28<0.998915433883667){
    if(i33<0.019984878599643707){
     s0+=49.0;
     s1+=100.0;
    } else {
     s1+=176.0;
    }
   } else {
    if(i61<0.9999377727508545){
     s1+=20.0;
    } else {
     s0+=218.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i15<0.00024273991584777832){
  if(i37<0.9992820024490356){
   if(i12<0.006031520199030638){
    if(i67<4.56537127320189e-05){
     s0+=664.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i42<0.008102597668766975){
    if(i28<1.0312855243682861){
     s0+=423.0;
     s1+=1625.0;
    } else {
     s0+=601.0;
     s1+=367.0;
    }
   } else {
    if(i11<0.9986392259597778){
     s0+=21.0;
     s1+=4.0;
    } else {
     s0+=107.0;
     s1+=1709.0;
    }
   }
  }
 } else {
  if(i36<0.0005815459880977869){
   if(i24<1.1510581970214844){
    if(i81<-4.857778549194336e-06){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=182.0;
    }
   } else {
    s0+=68.0;
   }
  } else {
   if(i1<-3.0279159545898438e-05){
    if(i14<-0.00011327862739562988){
     s0+=14.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i1<5.143880844116211e-05){
     s0+=88.0;
     s1+=1384.0;
    } else {
     s0+=8.0;
     s1+=8977.0;
    }
   }
  }
 }
}
if(i17<1.8775463104248047e-05){
 if(i0<0.0841948390007019){
  if(i21<0.014471948146820068){
   if(i5<1.0025181770324707){
    if(i60<-0.00010577340435702354){
     s0+=85.0;
     s1+=67.0;
    } else {
     s0+=56400.0;
     s1+=510.0;
    }
   } else {
    if(i56<-0.000244410359300673){
     s0+=7.0;
     s1+=54.0;
    } else {
     s0+=40.0;
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.9942145347595215){
    if(i49<-0.005168616771697998){
     s0+=989.0;
     s1+=79.0;
    } else {
     s0+=7078.0;
     s1+=26.0;
    }
   } else {
    if(i14<-6.288290023803711e-05){
     s0+=1953.0;
     s1+=319.0;
    } else {
     s0+=1541.0;
     s1+=937.0;
    }
   }
  }
 } else {
  if(i7<-1.3797138308291323e-05){
   if(i64<-0.0053482139483094215){
    if(i2<0.12385293841362){
     s0+=188.0;
     s1+=49.0;
    } else {
     s0+=140.0;
     s1+=1505.0;
    }
   } else {
    if(i73<1.3393296285357792e-06){
     s0+=87.0;
     s1+=2446.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i51<0.002860456705093384){
    if(i14<-0.00038808584213256836){
     s0+=210.0;
    } else {
     s0+=81.0;
     s1+=215.0;
    }
   } else {
    if(i41<0.005317953880876303){
     s0+=554.0;
     s1+=29.0;
    } else {
     s0+=60.0;
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i0<0.07430198788642883){
  if(i29<1.0033361911773682){
   if(i34<1.065237283706665){
    s0+=349.0;
   } else {
    if(i52<0.012577349320054054){
     s0+=942.0;
     s1+=133.0;
    } else {
     s0+=53.0;
     s1+=199.0;
    }
   }
  } else {
   if(i12<0.00182448816485703){
    if(i11<1.0031265020370483){
     s0+=32.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<0.0003674797189887613){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=501.0;
    }
   }
  }
 } else {
  if(i16<1.002190351486206){
   if(i52<0.004407774657011032){
    if(i46<0.15224090218544006){
     s0+=203.0;
     s1+=206.0;
    } else {
     s0+=2.0;
     s1+=217.0;
    }
   } else {
    if(i7<-0.0005968037294223905){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=523.0;
    }
   }
  } else {
   if(i67<1.278866966458736e-05){
    if(i19<-0.00036469101905822754){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=34.0;
     s1+=8252.0;
    }
   } else {
    if(i12<0.008986208587884903){
     s0+=60.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=764.0;
    }
   }
  }
 }
}
if(i2<0.08442407846450806){
 if(i14<0.0006350874900817871){
  if(i13<1.0428826808929443){
   if(i65<0.04137524962425232){
    if(i62<-0.004568964242935181){
     s0+=21.0;
     s1+=52.0;
    } else {
     s0+=51592.0;
     s1+=207.0;
    }
   } else {
    if(i45<1.1550614833831787){
     s0+=3616.0;
     s1+=442.0;
    } else {
     s0+=5247.0;
     s1+=12.0;
    }
   }
  } else {
   if(i42<0.002014040481299162){
    if(i32<1.0850647687911987){
     s0+=1412.0;
    } else {
     s0+=2208.0;
     s1+=1246.0;
    }
   } else {
    if(i12<0.008345919661223888){
     s0+=4341.0;
     s1+=181.0;
    } else {
     s0+=131.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i3<0.0004839897155761719){
   if(i49<-0.03890916705131531){
    if(i57<0.006182417739182711){
     s0+=10.0;
     s1+=5.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i34<1.1270583868026733){
     s0+=5.0;
     s1+=21.0;
    } else {
     s0+=383.0;
     s1+=28.0;
    }
   }
  } else {
   if(i53<0.03388822078704834){
    if(i34<1.0535550117492676){
     s0+=43.0;
    } else {
     s0+=84.0;
     s1+=791.0;
    }
   } else {
    if(i5<1.0063203573226929){
     s0+=55.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i12<0.004822907969355583){
  if(i69<0.9971832036972046){
   s0+=346.0;
  } else {
   if(i72<-0.02061127871274948){
    if(i2<0.1757563054561615){
     s0+=537.0;
     s1+=39.0;
    } else {
     s0+=234.0;
     s1+=261.0;
    }
   } else {
    if(i79<-0.001609008526429534){
     s0+=283.0;
     s1+=299.0;
    } else {
     s0+=218.0;
     s1+=1810.0;
    }
   }
  }
 } else {
  if(i73<2.2062845346226823e-06){
   if(i5<0.9942900538444519){
    if(i61<0.9998298287391663){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=39.0;
    }
   } else {
    if(i35<0.9958058595657349){
     s0+=187.0;
     s1+=1949.0;
    } else {
     s0+=7.0;
     s1+=9693.0;
    }
   }
  } else {
   s0+=46.0;
  }
 }
}
if(i0<0.08314955234527588){
 if(i3<0.0006384849548339844){
  if(i34<1.0556960105895996){
   s0+=43134.0;
  } else {
   if(i52<0.0074124643579125404){
    if(i2<0.06308621168136597){
     s0+=20186.0;
     s1+=637.0;
    } else {
     s0+=3098.0;
     s1+=617.0;
    }
   } else {
    if(i38<1.1037919521331787){
     s0+=363.0;
     s1+=498.0;
    } else {
     s0+=2472.0;
     s1+=376.0;
    }
   }
  }
 } else {
  if(i5<1.0041346549987793){
   if(i45<1.2160736322402954){
    if(i5<1.0018208026885986){
     s0+=42.0;
    } else {
     s0+=7.0;
     s1+=193.0;
    }
   } else {
    if(i54<-0.003941714763641357){
     s0+=3.0;
     s1+=69.0;
    } else {
     s0+=198.0;
     s1+=24.0;
    }
   }
  } else {
   if(i69<0.9975879192352295){
    if(i5<1.0084128379821777){
     s0+=15.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i71<2.253484126413241e-05){
     s0+=1.0;
    } else {
     s0+=5.0;
     s1+=652.0;
    }
   }
  }
 }
} else {
 if(i14<-0.0004030168056488037){
  if(i14<-0.00045925378799438477){
   if(i41<0.008720189332962036){
    s0+=431.0;
   } else {
    if(i23<0.993000328540802){
     s1+=5.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i54<0.0017749369144439697){
    s1+=4.0;
   } else {
    if(i10<0.9949361681938171){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i7<-1.3797138308291323e-05){
   if(i33<0.023409783840179443){
    if(i15<0.0007005929946899414){
     s0+=522.0;
     s1+=1324.0;
    } else {
     s0+=54.0;
     s1+=2475.0;
    }
   } else {
    if(i2<0.11263984441757202){
     s0+=42.0;
     s1+=321.0;
    } else {
     s0+=27.0;
     s1+=9419.0;
    }
   }
  } else {
   if(i47<0.06095987558364868){
    if(i36<0.00045900943223387003){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=258.0;
    }
   } else {
    if(i40<0.0018912656232714653){
     s0+=462.0;
     s1+=25.0;
    } else {
     s0+=136.0;
     s1+=103.0;
    }
   }
  }
 }
}
if(i3<0.0005483627319335938){
 if(i6<0.07196459174156189){
  if(i0<0.08206948637962341){
   if(i53<-0.03105112910270691){
    if(i45<1.191659927368164){
     s0+=895.0;
     s1+=409.0;
    } else {
     s0+=1116.0;
     s1+=138.0;
    }
   } else {
    if(i26<0.0002810187288559973){
     s0+=51959.0;
     s1+=258.0;
    } else {
     s0+=14632.0;
     s1+=1145.0;
    }
   }
  } else {
   if(i17<-2.1189451217651367e-05){
    s0+=77.0;
   } else {
    if(i49<0.016166508197784424){
     s0+=32.0;
     s1+=775.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i44<0.04310476779937744){
   if(i6<0.08095124363899231){
    if(i45<1.2048285007476807){
     s0+=11.0;
     s1+=237.0;
    } else {
     s0+=61.0;
     s1+=30.0;
    }
   } else {
    if(i47<0.14441299438476562){
     s0+=27.0;
     s1+=1113.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   }
  } else {
   if(i2<0.11977532505989075){
    if(i64<-0.004283909685909748){
     s0+=742.0;
     s1+=16.0;
    } else {
     s0+=413.0;
     s1+=232.0;
    }
   } else {
    if(i14<-0.0005323290824890137){
     s0+=191.0;
     s1+=2.0;
    } else {
     s0+=348.0;
     s1+=1066.0;
    }
   }
  }
 }
} else {
 if(i12<0.002189040184020996){
  if(i2<0.10384279489517212){
   if(i76<-4.249046469340101e-06){
    s1+=19.0;
   } else {
    if(i43<-1.4819078387517948e-05){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=292.0;
    }
   }
  } else {
   if(i35<1.0058636665344238){
    if(i44<0.05503702163696289){
     s1+=4.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=119.0;
   }
  }
 } else {
  if(i41<0.00036295480094850063){
   s0+=38.0;
  } else {
   if(i19<-9.22083854675293e-05){
    if(i4<0.1301957070827484){
     s0+=182.0;
     s1+=300.0;
    } else {
     s0+=10.0;
     s1+=496.0;
    }
   } else {
    if(i69<1.0022634267807007){
     s0+=43.0;
     s1+=10416.0;
    } else {
     s0+=37.0;
     s1+=300.0;
    }
   }
  }
 }
}
if(i13<1.0564017295837402){
 if(i8<1.0080074071884155){
  if(i66<-0.0012664198875427246){
   if(i4<0.05655971169471741){
    if(i42<0.0016543501988053322){
     s0+=1559.0;
     s1+=475.0;
    } else {
     s0+=2892.0;
     s1+=42.0;
    }
   } else {
    if(i31<0.002541585126891732){
     s0+=94.0;
     s1+=385.0;
    } else {
     s0+=125.0;
     s1+=50.0;
    }
   }
  } else {
   if(i6<0.07287508249282837){
    if(i5<1.0025041103363037){
     s0+=59530.0;
     s1+=610.0;
    } else {
     s0+=31.0;
     s1+=86.0;
    }
   } else {
    if(i1<-4.217028617858887e-05){
     s0+=158.0;
     s1+=9.0;
    } else {
     s0+=158.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i0<0.06266719102859497){
   if(i63<0.010895254090428352){
    if(i41<0.0012606114614754915){
     s1+=38.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i64<0.0005615722620859742){
     s0+=144.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=25.0;
    }
   }
  } else {
   if(i61<0.99924236536026){
    s0+=4.0;
   } else {
    if(i7<-1.85746030183509e-05){
     s0+=4.0;
     s1+=419.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i3<0.00048488378524780273){
  if(i42<0.010443493723869324){
   if(i7<-3.248462962801568e-05){
    if(i32<1.2371783256530762){
     s0+=3.0;
     s1+=841.0;
    } else {
     s0+=864.0;
     s1+=600.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=2424.0;
     s1+=1045.0;
    } else {
     s0+=2477.0;
     s1+=125.0;
    }
   }
  } else {
   if(i0<0.08387261629104614){
    if(i75<0.14434915781021118){
     s0+=198.0;
     s1+=25.0;
    } else {
     s0+=6.0;
     s1+=31.0;
    }
   } else {
    if(i43<6.926592504896689e-06){
     s0+=7.0;
     s1+=710.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i19<-9.167194366455078e-05){
   if(i4<0.11818474531173706){
    if(i68<0.0050133224576711655){
     s0+=179.0;
     s1+=41.0;
    } else {
     s0+=14.0;
     s1+=187.0;
    }
   } else {
    if(i38<1.3059041500091553){
     s0+=21.0;
     s1+=43.0;
    } else {
     s0+=3.0;
     s1+=459.0;
    }
   }
  } else {
   if(i16<1.0056058168411255){
    if(i33<0.012332310900092125){
     s0+=175.0;
     s1+=575.0;
    } else {
     s0+=22.0;
     s1+=2610.0;
    }
   } else {
    if(i4<0.0041693150997161865){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=7416.0;
    }
   }
  }
 }
}
if(i16<1.0028033256530762){
 if(i23<1.0081645250320435){
  if(i4<0.08287349343299866){
   if(i65<0.04914187639951706){
    if(i78<-0.0013401508331298828){
     s0+=2447.0;
     s1+=267.0;
    } else {
     s0+=54218.0;
     s1+=336.0;
    }
   } else {
    if(i4<0.05786609649658203){
     s0+=8447.0;
     s1+=654.0;
    } else {
     s0+=1076.0;
     s1+=508.0;
    }
   }
  } else {
   if(i11<0.998519778251648){
    if(i12<0.007078313268721104){
     s0+=350.0;
     s1+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i58<0.04021871089935303){
     s0+=115.0;
     s1+=1236.0;
    } else {
     s0+=419.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i2<0.08376079797744751){
   if(i40<0.0011060961987823248){
    if(i43<-7.721401743765455e-06){
     s0+=4.0;
     s1+=216.0;
    } else {
     s0+=470.0;
     s1+=94.0;
    }
   } else {
    if(i76<5.997064363327809e-06){
     s0+=1412.0;
     s1+=61.0;
    } else {
     s0+=31.0;
     s1+=23.0;
    }
   }
  } else {
   if(i44<0.04317659139633179){
    if(i43<2.730647565840627e-06){
     s0+=37.0;
     s1+=1609.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i7<-2.1036785256001167e-05){
     s0+=145.0;
     s1+=1194.0;
    } else {
     s0+=442.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i7<-6.951615796424448e-05){
  if(i55<0.0003106842050328851){
   if(i29<1.0004760026931763){
    if(i33<0.028812069445848465){
     s0+=138.0;
     s1+=103.0;
    } else {
     s0+=30.0;
     s1+=626.0;
    }
   } else {
    if(i56<-0.00011600621655816212){
     s0+=12.0;
     s1+=8031.0;
    } else {
     s0+=26.0;
     s1+=841.0;
    }
   }
  } else {
   if(i67<3.30235852743499e-05){
    if(i38<1.5444563627243042){
     s0+=10.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i28<1.0286104679107666){
     s0+=215.0;
     s1+=27.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i10<0.982607364654541){
   if(i1<7.897615432739258e-06){
    if(i58<0.04800534248352051){
     s0+=450.0;
     s1+=11.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i45<1.234969139099121){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=41.0;
    }
   }
  } else {
   if(i32<1.2385294437408447){
    if(i12<0.001146038994193077){
     s0+=86.0;
     s1+=18.0;
    } else {
     s0+=5.0;
     s1+=655.0;
    }
   } else {
    if(i30<0.9821527004241943){
     s0+=23.0;
     s1+=151.0;
    } else {
     s0+=385.0;
     s1+=123.0;
    }
   }
  }
 }
}
if(i6<0.07161784172058105){
 if(i63<0.018144235014915466){
  if(i10<1.0049314498901367){
   if(i5<1.0025041103363037){
    if(i59<0.0008590536890551448){
     s0+=50948.0;
     s1+=255.0;
    } else {
     s0+=137.0;
     s1+=171.0;
    }
   } else {
    if(i74<0.0001515447220299393){
     s1+=47.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i8<1.0080180168151855){
    if(i32<1.1386182308197021){
     s0+=1.0;
     s1+=62.0;
    } else {
     s0+=147.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.0001186342051369138){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i0<0.07543271780014038){
   if(i11<1.0018912553787231){
    if(i42<0.0016381869791075587){
     s0+=5193.0;
     s1+=1150.0;
    } else {
     s0+=11785.0;
     s1+=265.0;
    }
   } else {
    if(i45<1.174884557723999){
     s1+=303.0;
    } else {
     s0+=563.0;
     s1+=314.0;
    }
   }
  } else {
   if(i45<1.0670123100280762){
    if(i10<1.0017309188842773){
     s0+=92.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i54<0.0021123290061950684){
     s0+=41.0;
     s1+=1538.0;
    } else {
     s0+=129.0;
     s1+=118.0;
    }
   }
  }
 }
} else {
 if(i17<-1.3709068298339844e-05){
  if(i37<0.9996585845947266){
   if(i73<-3.246312871851842e-06){
    if(i26<0.0008339618216268718){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i7<-4.270498175173998e-05){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=407.0;
    }
   }
  } else {
   if(i50<-2.9653310775756836e-05){
    if(i4<0.12988188862800598){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i12<0.007370106875896454){
     s0+=36.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i33<0.02369127795100212){
   if(i7<-1.4583784832211677e-05){
    if(i62<0.006073087453842163){
     s0+=331.0;
     s1+=2440.0;
    } else {
     s0+=318.0;
     s1+=381.0;
    }
   } else {
    if(i62<-0.0023179054260253906){
     s0+=61.0;
     s1+=105.0;
    } else {
     s0+=613.0;
     s1+=102.0;
    }
   }
  } else {
   if(i12<0.0035879630595445633){
    if(i15<-7.82012939453125e-05){
     s0+=136.0;
     s1+=43.0;
    } else {
     s0+=5.0;
     s1+=117.0;
    }
   } else {
    if(i5<0.997011661529541){
     s0+=37.0;
     s1+=123.0;
    } else {
     s0+=20.0;
     s1+=9152.0;
    }
   }
  }
 }
}
if(i1<3.641843795776367e-05){
 if(i60<-8.872533362591639e-05){
  if(i33<0.011142440140247345){
   if(i7<-4.728876956505701e-05){
    if(i2<0.06372085213661194){
     s0+=21.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=137.0;
    }
   } else {
    if(i35<1.0331027507781982){
     s0+=259.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i24<1.1870136260986328){
    if(i17<-1.6033649444580078e-05){
     s0+=13.0;
    } else {
     s0+=11.0;
     s1+=549.0;
    }
   } else {
    if(i43<-8.856435442794464e-07){
     s0+=33.0;
     s1+=147.0;
    } else {
     s0+=85.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i0<0.08534649014472961){
   if(i13<1.0428826808929443){
    if(i66<-0.0013701319694519043){
     s0+=4040.0;
     s1+=447.0;
    } else {
     s0+=56115.0;
     s1+=271.0;
    }
   } else {
    if(i41<0.0010661464184522629){
     s0+=2662.0;
     s1+=877.0;
    } else {
     s0+=5678.0;
     s1+=440.0;
    }
   }
  } else {
   if(i37<0.9987093210220337){
    if(i45<1.5840919017791748){
     s0+=346.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i6<0.17391285300254822){
     s0+=763.0;
     s1+=1661.0;
    } else {
     s0+=97.0;
     s1+=951.0;
    }
   }
  }
 }
} else {
 if(i37<0.9990397691726685){
  if(i10<1.0065786838531494){
   s0+=395.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i0<0.06272318959236145){
   if(i28<0.9963146448135376){
    if(i63<0.10948960483074188){
     s0+=4.0;
     s1+=291.0;
    } else {
     s0+=64.0;
     s1+=82.0;
    }
   } else {
    if(i45<1.2072352170944214){
     s0+=16.0;
     s1+=101.0;
    } else {
     s0+=171.0;
     s1+=2.0;
    }
   }
  } else {
   if(i56<-0.0004234232474118471){
    if(i12<0.00645125936716795){
     s0+=29.0;
     s1+=659.0;
    } else {
     s0+=5.0;
     s1+=7661.0;
    }
   } else {
    if(i3<0.0008944869041442871){
     s0+=156.0;
     s1+=542.0;
    } else {
     s0+=41.0;
     s1+=2378.0;
    }
   }
  }
 }
}
if(i6<0.07121574878692627){
 if(i5<1.0024573802947998){
  if(i60<-9.295069321524352e-05){
   if(i34<1.1488807201385498){
    if(i41<0.000563239271286875){
     s0+=38.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=347.0;
    }
   } else {
    if(i0<0.11463013291358948){
     s0+=198.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i31<0.00029869808349758387){
    if(i27<1.0100929737091064){
     s0+=55600.0;
     s1+=458.0;
    } else {
     s0+=698.0;
     s1+=98.0;
    }
   } else {
    if(i0<0.08028870820999146){
     s0+=12130.0;
     s1+=1339.0;
    } else {
     s0+=72.0;
     s1+=440.0;
    }
   }
  }
 } else {
  if(i5<1.004115104675293){
   if(i26<0.00020090542966499925){
    if(i41<0.0010017134482041001){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=79.0;
    }
   } else {
    if(i42<0.0022890351247042418){
     s0+=6.0;
     s1+=290.0;
    } else {
     s0+=155.0;
     s1+=107.0;
    }
   }
  } else {
   if(i15<-0.0030030012130737305){
    s0+=6.0;
   } else {
    if(i52<-0.0025596285704523325){
     s0+=5.0;
     s1+=10.0;
    } else {
     s0+=15.0;
     s1+=1407.0;
    }
   }
  }
 }
} else {
 if(i0<0.11255711317062378){
  if(i51<0.004079163074493408){
   if(i44<0.04357239603996277){
    if(i43<-1.7265199403482256e-06){
     s0+=25.0;
     s1+=772.0;
    } else {
     s0+=47.0;
     s1+=29.0;
    }
   } else {
    if(i47<0.05484038591384888){
     s0+=52.0;
     s1+=115.0;
    } else {
     s0+=527.0;
     s1+=142.0;
    }
   }
  } else {
   if(i3<0.0017797350883483887){
    if(i47<0.03571039438247681){
     s1+=2.0;
    } else {
     s0+=788.0;
     s1+=18.0;
    }
   } else {
    if(i35<0.9922815561294556){
     s0+=1.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i5<0.9958594441413879){
   if(i17<-1.2189149856567383e-05){
    if(i32<1.434314250946045){
     s0+=175.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i12<0.0049817198887467384){
     s0+=17.0;
     s1+=3.0;
    } else {
     s1+=65.0;
    }
   }
  } else {
   if(i73<1.248387661689776e-06){
    if(i36<0.0005806618137285113){
     s0+=118.0;
     s1+=74.0;
    } else {
     s0+=318.0;
     s1+=11359.0;
    }
   } else {
    s0+=38.0;
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i31<0.00029522442491725087){
  if(i37<1.0005797147750854){
   if(i25<1.011582612991333){
    if(i49<-0.00678679347038269){
     s0+=179.0;
     s1+=68.0;
    } else {
     s0+=52882.0;
     s1+=294.0;
    }
   } else {
    if(i0<0.0719037652015686){
     s0+=79.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=90.0;
    }
   }
  } else {
   if(i17<2.390146255493164e-05){
    if(i74<8.50801807246171e-05){
     s0+=495.0;
     s1+=208.0;
    } else {
     s0+=1946.0;
     s1+=32.0;
    }
   } else {
    if(i76<-8.428037290286738e-08){
     s0+=3.0;
     s1+=161.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i1<7.68899917602539e-06){
   if(i29<0.994280219078064){
    if(i40<0.0014467728324234486){
     s0+=1138.0;
     s1+=56.0;
    } else {
     s0+=4862.0;
     s1+=28.0;
    }
   } else {
    if(i2<0.07077479362487793){
     s0+=2782.0;
     s1+=465.0;
    } else {
     s0+=183.0;
     s1+=420.0;
    }
   }
  } else {
   if(i38<1.0670123100280762){
    s0+=205.0;
   } else {
    if(i65<0.24826358258724213){
     s0+=102.0;
     s1+=667.0;
    } else {
     s0+=66.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i2<0.09137988090515137){
  if(i5<1.0035841464996338){
   if(i62<0.004099100828170776){
    if(i1<1.1920928955078125e-05){
     s0+=2733.0;
     s1+=667.0;
    } else {
     s0+=308.0;
     s1+=436.0;
    }
   } else {
    if(i47<0.01080659031867981){
     s0+=170.0;
     s1+=34.0;
    } else {
     s0+=1560.0;
     s1+=45.0;
    }
   }
  } else {
   if(i49<0.012657970190048218){
    if(i69<0.99757319688797){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=716.0;
    }
   } else {
    if(i19<0.00025838613510131836){
     s0+=24.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i7<-1.8268499843543395e-05){
   if(i1<5.6803226470947266e-05){
    if(i12<0.0025507821701467037){
     s0+=173.0;
     s1+=183.0;
    } else {
     s0+=236.0;
     s1+=2908.0;
    }
   } else {
    if(i33<0.01785009354352951){
     s0+=54.0;
     s1+=1275.0;
    } else {
     s0+=4.0;
     s1+=8071.0;
    }
   }
  } else {
   if(i72<-0.017458170652389526){
    if(i60<0.0011678359005600214){
     s0+=665.0;
     s1+=137.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i80<-5.957484245300293e-05){
     s0+=38.0;
     s1+=146.0;
    } else {
     s0+=89.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i10<1.0060046911239624){
 if(i17<1.9490718841552734e-05){
  if(i75<0.014552856795489788){
   if(i49<-0.011010020971298218){
    if(i4<0.01386713981628418){
     s0+=229.0;
     s1+=22.0;
    } else {
     s0+=76.0;
     s1+=153.0;
    }
   } else {
    if(i10<1.0043987035751343){
     s0+=49637.0;
     s1+=258.0;
    } else {
     s0+=169.0;
     s1+=114.0;
    }
   }
  } else {
   if(i24<1.0451428890228271){
    if(i1<5.424022674560547e-06){
     s0+=10414.0;
     s1+=157.0;
    } else {
     s0+=19.0;
     s1+=17.0;
    }
   } else {
    if(i38<1.1037919521331787){
     s0+=795.0;
     s1+=1471.0;
    } else {
     s0+=7592.0;
     s1+=2256.0;
    }
   }
  }
 } else {
  if(i0<0.09937843680381775){
   if(i62<-0.0015361309051513672){
    if(i53<0.0005415380001068115){
     s0+=100.0;
     s1+=404.0;
    } else {
     s0+=248.0;
     s1+=61.0;
    }
   } else {
    if(i19<-0.00017249584197998047){
     s0+=539.0;
     s1+=5.0;
    } else {
     s0+=462.0;
     s1+=175.0;
    }
   }
  } else {
   if(i39<0.05521620064973831){
    if(i58<0.03921753168106079){
     s0+=13.0;
     s1+=165.0;
    } else {
     s0+=63.0;
     s1+=38.0;
    }
   } else {
    if(i69<0.9954510927200317){
     s0+=2.0;
    } else {
     s0+=40.0;
     s1+=1502.0;
    }
   }
  }
 }
} else {
 if(i7<-4.353338590590283e-05){
  if(i43<-2.373217512285919e-06){
   if(i4<0.049546897411346436){
    if(i13<1.035828948020935){
     s0+=22.0;
    } else {
     s0+=42.0;
     s1+=264.0;
    }
   } else {
    if(i69<1.0031672716140747){
     s0+=4.0;
     s1+=9609.0;
    } else {
     s0+=19.0;
     s1+=161.0;
    }
   }
  } else {
   if(i14<-0.00023794174194335938){
    s0+=20.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i34<1.1105778217315674){
   if(i74<2.9997881938470528e-05){
    s0+=2.0;
   } else {
    s1+=159.0;
   }
  } else {
   if(i76<1.8255362874697312e-06){
    if(i21<0.049367696046829224){
     s0+=656.0;
     s1+=16.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i16<0.9996659159660339){
     s0+=3.0;
     s1+=50.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i29<1.003873348236084){
 if(i12<0.004971550311893225){
  if(i32<1.0856719017028809){
   s0+=38201.0;
  } else {
   if(i32<1.100313425064087){
    if(i41<0.0007729203789494932){
     s0+=2739.0;
     s1+=947.0;
    } else {
     s0+=287.0;
     s1+=874.0;
    }
   } else {
    if(i0<0.09859627485275269){
     s0+=23116.0;
     s1+=408.0;
    } else {
     s0+=717.0;
     s1+=892.0;
    }
   }
  }
 } else {
  if(i5<0.9982089996337891){
   if(i44<0.07469931244850159){
    if(i47<0.05652323365211487){
     s0+=4334.0;
     s1+=212.0;
    } else {
     s0+=119.0;
     s1+=101.0;
    }
   } else {
    if(i38<1.3712366819381714){
     s0+=45.0;
     s1+=13.0;
    } else {
     s0+=9.0;
     s1+=113.0;
    }
   }
  } else {
   if(i0<0.08179634809494019){
    if(i34<1.1756484508514404){
     s0+=74.0;
     s1+=387.0;
    } else {
     s0+=530.0;
     s1+=151.0;
    }
   } else {
    if(i2<0.11697441339492798){
     s0+=94.0;
     s1+=510.0;
    } else {
     s0+=22.0;
     s1+=2519.0;
    }
   }
  }
 }
} else {
 if(i6<0.0464167594909668){
  if(i0<0.05564203858375549){
   if(i7<-5.99421291553881e-05){
    if(i76<2.3040383894112892e-06){
     s0+=9.0;
     s1+=175.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i38<1.1016805171966553){
     s0+=19.0;
     s1+=35.0;
    } else {
     s0+=547.0;
     s1+=6.0;
    }
   }
  } else {
   if(i44<0.030252397060394287){
    s1+=440.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i33<0.0156913660466671){
   if(i15<0.001430511474609375){
    if(i73<-4.481149971979903e-06){
     s0+=53.0;
     s1+=284.0;
    } else {
     s0+=164.0;
     s1+=62.0;
    }
   } else {
    if(i4<0.05853751301765442){
     s0+=1.0;
     s1+=32.0;
    } else {
     s1+=1192.0;
    }
   }
  } else {
   if(i0<0.08005046844482422){
    if(i44<0.024163126945495605){
     s1+=78.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i3<-0.00017455220222473145){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=7710.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i24<1.0495078563690186){
  if(i60<0.0002718777395784855){
   if(i5<1.002547264099121){
    if(i0<0.07577896118164062){
     s0+=50368.0;
     s1+=97.0;
    } else {
     s0+=358.0;
     s1+=45.0;
    }
   } else {
    if(i59<0.00048397021600976586){
     s1+=9.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i49<0.00395280122756958){
    if(i74<0.0001408459502272308){
     s0+=1030.0;
     s1+=296.0;
    } else {
     s0+=648.0;
     s1+=1.0;
    }
   } else {
    if(i76<-1.0249692650177167e-06){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=4123.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i21<0.021800892427563667){
   if(i3<0.00016942620277404785){
    if(i22<0.9887522459030151){
     s0+=1391.0;
     s1+=465.0;
    } else {
     s0+=8254.0;
     s1+=514.0;
    }
   } else {
    if(i42<0.0014446575660258532){
     s0+=177.0;
     s1+=578.0;
    } else {
     s0+=753.0;
     s1+=189.0;
    }
   }
  } else {
   if(i15<-0.0016308426856994629){
    if(i5<0.9965810775756836){
     s0+=1755.0;
     s1+=130.0;
    } else {
     s0+=601.0;
     s1+=457.0;
    }
   } else {
    if(i34<1.1083450317382812){
     s0+=142.0;
     s1+=1162.0;
    } else {
     s0+=911.0;
     s1+=1559.0;
    }
   }
  }
 }
} else {
 if(i40<0.0003575368318706751){
  s0+=181.0;
 } else {
  if(i7<-4.33069872087799e-05){
   if(i6<0.12823012471199036){
    if(i5<1.003580093383789){
     s0+=166.0;
     s1+=537.0;
    } else {
     s0+=67.0;
     s1+=3103.0;
    }
   } else {
    if(i4<0.15718171000480652){
     s0+=19.0;
     s1+=222.0;
    } else {
     s0+=2.0;
     s1+=7488.0;
    }
   }
  } else {
   if(i35<1.011141300201416){
    if(i12<0.002399049699306488){
     s0+=61.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=213.0;
    }
   } else {
    if(i11<1.0018994808197021){
     s0+=93.0;
     s1+=14.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i4<0.08063453435897827){
  if(i53<-0.027763068675994873){
   if(i3<0.00028455257415771484){
    if(i0<0.03765779733657837){
     s0+=2092.0;
     s1+=290.0;
    } else {
     s0+=152.0;
     s1+=183.0;
    }
   } else {
    if(i11<1.0002775192260742){
     s0+=16.0;
    } else {
     s0+=38.0;
     s1+=341.0;
    }
   }
  } else {
   if(i3<0.0006918013095855713){
    if(i34<1.0556960105895996){
     s0+=42265.0;
     s1+=1.0;
    } else {
     s0+=23787.0;
     s1+=1398.0;
    }
   } else {
    if(i32<1.4786540269851685){
     s0+=27.0;
     s1+=220.0;
    } else {
     s0+=80.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i7<-8.309805707540363e-06){
   if(i41<0.006360701285302639){
    if(i62<0.006402760744094849){
     s0+=263.0;
     s1+=1315.0;
    } else {
     s0+=153.0;
     s1+=74.0;
    }
   } else {
    if(i3<-0.0014965236186981201){
     s0+=13.0;
     s1+=17.0;
    } else {
     s0+=42.0;
     s1+=2029.0;
    }
   }
  } else {
   if(i72<-0.01856517419219017){
    if(i42<0.005779529921710491){
     s0+=370.0;
     s1+=2.0;
    } else {
     s0+=156.0;
     s1+=25.0;
    }
   } else {
    if(i3<-0.0008538365364074707){
     s0+=124.0;
    } else {
     s0+=67.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i12<0.0033272532746195793){
  if(i5<1.0041539669036865){
   if(i63<0.01691383868455887){
    if(i34<1.0924489498138428){
     s0+=8.0;
     s1+=327.0;
    } else {
     s0+=52.0;
     s1+=6.0;
    }
   } else {
    if(i17<3.039836883544922e-06){
     s0+=170.0;
     s1+=279.0;
    } else {
     s0+=928.0;
     s1+=103.0;
    }
   }
  } else {
   s1+=424.0;
  }
 } else {
  if(i5<0.9970651268959045){
   if(i11<0.9989851713180542){
    s0+=94.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i73<9.052614586835261e-07){
    if(i43<2.7971445888397284e-06){
     s0+=59.0;
     s1+=10117.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i4<0.1934935450553894){
     s0+=19.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i4<0.07745593786239624){
 if(i3<0.0006918013095855713){
  if(i21<0.014130311086773872){
   if(i60<0.00025688076857477427){
    if(i8<1.0081470012664795){
     s0+=52185.0;
     s1+=131.0;
    } else {
     s0+=334.0;
     s1+=122.0;
    }
   } else {
    if(i50<-4.51207160949707e-05){
     s0+=2365.0;
     s1+=35.0;
    } else {
     s0+=1546.0;
     s1+=350.0;
    }
   }
  } else {
   if(i5<0.9978663325309753){
    if(i0<0.06627392768859863){
     s0+=9106.0;
     s1+=173.0;
    } else {
     s0+=468.0;
     s1+=83.0;
    }
   } else {
    if(i55<2.878016312024556e-05){
     s0+=2113.0;
     s1+=380.0;
    } else {
     s0+=882.0;
     s1+=943.0;
    }
   }
  }
 } else {
  if(i43<-1.3894237781642005e-05){
   if(i75<0.03349100053310394){
    if(i74<0.0001343404146609828){
     s0+=4.0;
     s1+=679.0;
    } else {
     s0+=26.0;
     s1+=61.0;
    }
   } else {
    if(i12<0.01692723110318184){
     s0+=78.0;
     s1+=142.0;
    } else {
     s1+=65.0;
    }
   }
  } else {
   if(i12<0.0039717149920761585){
    s0+=101.0;
   } else {
    s1+=19.0;
   }
  }
 }
} else {
 if(i29<1.0006675720214844){
  if(i7<-1.3548056813306175e-05){
   if(i0<0.09978297352790833){
    if(i46<0.0637630820274353){
     s0+=35.0;
     s1+=250.0;
    } else {
     s0+=291.0;
     s1+=83.0;
    }
   } else {
    if(i33<0.02344355918467045){
     s0+=271.0;
     s1+=742.0;
    } else {
     s0+=38.0;
     s1+=1934.0;
    }
   }
  } else {
   if(i41<0.00532741891220212){
    if(i72<-0.018023692071437836){
     s0+=687.0;
     s1+=54.0;
    } else {
     s0+=315.0;
     s1+=192.0;
    }
   } else {
    if(i19<-0.00034162402153015137){
     s0+=21.0;
     s1+=4.0;
    } else {
     s0+=31.0;
     s1+=122.0;
    }
   }
  }
 } else {
  if(i5<1.0020976066589355){
   if(i0<0.09566140174865723){
    if(i27<1.0245139598846436){
     s0+=32.0;
     s1+=130.0;
    } else {
     s0+=46.0;
     s1+=4.0;
    }
   } else {
    if(i27<1.0376750230789185){
     s0+=21.0;
     s1+=691.0;
    } else {
     s0+=61.0;
     s1+=190.0;
    }
   }
  } else {
   if(i19<0.00021332502365112305){
    if(i33<0.017343662679195404){
     s0+=79.0;
     s1+=270.0;
    } else {
     s1+=1410.0;
    }
   } else {
    s1+=7857.0;
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i9<1.0452215671539307){
  if(i26<0.0002819825313054025){
   if(i8<1.0094983577728271){
    if(i66<-0.0028696954250335693){
     s1+=16.0;
    } else {
     s0+=51999.0;
     s1+=182.0;
    }
   } else {
    if(i49<-0.004573702812194824){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   }
  } else {
   if(i4<0.07770508527755737){
    if(i19<-0.0002904534339904785){
     s0+=6974.0;
     s1+=58.0;
    } else {
     s0+=5863.0;
     s1+=1061.0;
    }
   } else {
    if(i3<-0.0007605552673339844){
     s0+=122.0;
     s1+=26.0;
    } else {
     s0+=82.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i3<0.0001513957977294922){
   if(i4<0.09208527207374573){
    if(i41<0.0010933687444776297){
     s0+=1145.0;
     s1+=391.0;
    } else {
     s0+=2646.0;
     s1+=216.0;
    }
   } else {
    if(i40<0.0031366313342005014){
     s0+=688.0;
     s1+=492.0;
    } else {
     s0+=96.0;
     s1+=871.0;
    }
   }
  } else {
   if(i61<0.9998754858970642){
    if(i42<0.0003238092176616192){
     s0+=37.0;
    } else {
     s0+=48.0;
     s1+=831.0;
    }
   } else {
    if(i0<0.11893871426582336){
     s0+=682.0;
     s1+=327.0;
    } else {
     s0+=98.0;
     s1+=363.0;
    }
   }
  }
 }
} else {
 if(i41<0.0003399006091058254){
  s0+=174.0;
 } else {
  if(i2<0.07004934549331665){
   if(i42<0.002224802738055587){
    if(i73<-5.067746769782389e-06){
     s0+=1.0;
     s1+=334.0;
    } else {
     s0+=9.0;
     s1+=11.0;
    }
   } else {
    if(i62<-0.0016472935676574707){
     s0+=67.0;
     s1+=254.0;
    } else {
     s0+=151.0;
     s1+=14.0;
    }
   }
  } else {
   if(i15<-6.0498714447021484e-05){
    if(i0<0.12754890322685242){
     s0+=105.0;
     s1+=233.0;
    } else {
     s0+=20.0;
     s1+=841.0;
    }
   } else {
    if(i5<1.0038886070251465){
     s0+=43.0;
     s1+=896.0;
    } else {
     s0+=6.0;
     s1+=9199.0;
    }
   }
  }
 }
}
if(i22<1.0099639892578125){
 if(i26<0.0003285468555986881){
  if(i18<1.007004737854004){
   if(i16<1.0034899711608887){
    if(i2<0.08219277858734131){
     s0+=53839.0;
     s1+=261.0;
    } else {
     s0+=253.0;
     s1+=61.0;
    }
   } else {
    if(i1<2.104043960571289e-05){
     s0+=23.0;
    } else {
     s0+=2.0;
     s1+=63.0;
    }
   }
  } else {
   if(i73<-4.87239049107302e-06){
    if(i56<-0.0003423515590839088){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=109.0;
    }
   } else {
    if(i32<1.1108002662658691){
     s0+=21.0;
     s1+=45.0;
    } else {
     s0+=290.0;
    }
   }
  }
 } else {
  if(i4<0.07653090357780457){
   if(i3<0.0002066493034362793){
    if(i45<1.103413462638855){
     s0+=3262.0;
     s1+=964.0;
    } else {
     s0+=9897.0;
     s1+=304.0;
    }
   } else {
    if(i5<1.0023193359375){
     s0+=210.0;
     s1+=245.0;
    } else {
     s0+=73.0;
     s1+=667.0;
    }
   }
  } else {
   if(i11<0.9985270500183105){
    if(i73<-2.4206524358305614e-06){
     s0+=23.0;
     s1+=14.0;
    } else {
     s0+=336.0;
    }
   } else {
    if(i44<0.052261799573898315){
     s0+=70.0;
     s1+=2845.0;
    } else {
     s0+=444.0;
     s1+=725.0;
    }
   }
  }
 }
} else {
 if(i18<1.0223426818847656){
  if(i0<0.07771003246307373){
   if(i41<0.0011297119781374931){
    if(i71<0.000159264454850927){
     s0+=194.0;
     s1+=43.0;
    } else {
     s0+=11.0;
     s1+=276.0;
    }
   } else {
    if(i14<0.001014411449432373){
     s0+=1125.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   }
  } else {
   if(i15<0.0001628398895263672){
    if(i56<-0.0001948944991454482){
     s0+=336.0;
     s1+=1051.0;
    } else {
     s0+=286.0;
     s1+=128.0;
    }
   } else {
    if(i36<0.0005058578681200743){
     s0+=25.0;
     s1+=29.0;
    } else {
     s0+=100.0;
     s1+=2243.0;
    }
   }
  }
 } else {
  if(i1<3.4332275390625e-05){
   if(i57<0.000880017236340791){
    if(i3<-0.00032976269721984863){
     s1+=8.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i40<0.003156546503305435){
     s0+=8.0;
     s1+=33.0;
    } else {
     s0+=1.0;
     s1+=253.0;
    }
   }
  } else {
   if(i35<0.9950077533721924){
    if(i43<-1.7863600078271702e-05){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i19<-8.046627044677734e-06){
     s0+=7.0;
     s1+=77.0;
    } else {
     s1+=6680.0;
    }
   }
  }
 }
}
if(i4<0.0779992938041687){
 if(i67<-7.458674645022256e-06){
  if(i5<1.00416898727417){
   if(i37<1.0010524988174438){
    s0+=7.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i36<0.010384402237832546){
    s1+=416.0;
   } else {
    if(i4<0.022641867399215698){
     s0+=5.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i24<1.0486011505126953){
   if(i24<1.0417436361312866){
    if(i60<0.00026648829225450754){
     s0+=45755.0;
     s1+=24.0;
    } else {
     s0+=5047.0;
     s1+=97.0;
    }
   } else {
    if(i62<-0.0020241141319274902){
     s0+=278.0;
     s1+=168.0;
    } else {
     s0+=4896.0;
     s1+=97.0;
    }
   }
  } else {
   if(i17<1.8894672393798828e-05){
    if(i42<0.0016498253680765629){
     s0+=4431.0;
     s1+=1429.0;
    } else {
     s0+=8058.0;
     s1+=233.0;
    }
   } else {
    if(i3<0.0005255937576293945){
     s0+=781.0;
     s1+=172.0;
    } else {
     s0+=154.0;
     s1+=562.0;
    }
   }
  }
 }
} else {
 if(i19<3.534555435180664e-05){
  if(i44<0.045011430978775024){
   if(i55<1.404278191330377e-05){
    if(i8<1.0093870162963867){
     s0+=16.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i14<-0.00046125054359436035){
     s0+=78.0;
    } else {
     s0+=58.0;
     s1+=2263.0;
    }
   }
  } else {
   if(i38<1.37147855758667){
    if(i4<0.11973932385444641){
     s0+=800.0;
     s1+=189.0;
    } else {
     s0+=507.0;
     s1+=497.0;
    }
   } else {
    if(i39<0.06969860196113586){
     s0+=137.0;
     s1+=93.0;
    } else {
     s0+=55.0;
     s1+=654.0;
    }
   }
  }
 } else {
  if(i19<0.00010210275650024414){
   if(i11<0.9987739324569702){
    s0+=22.0;
   } else {
    if(i12<0.001715268474072218){
     s0+=101.0;
     s1+=8.0;
    } else {
     s0+=11.0;
     s1+=836.0;
    }
   }
  } else {
   if(i5<0.9998650550842285){
    if(i69<1.000036597251892){
     s0+=13.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i43<-1.3710848634218564e-06){
     s0+=34.0;
     s1+=9249.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i5<1.0024561882019043){
 if(i22<1.0107730627059937){
  if(i49<-0.006174176931381226){
   if(i4<0.05668455362319946){
    if(i6<0.017026305198669434){
     s0+=2563.0;
     s1+=246.0;
    } else {
     s0+=909.0;
     s1+=353.0;
    }
   } else {
    if(i40<0.0004797030705958605){
     s0+=40.0;
    } else {
     s0+=96.0;
     s1+=820.0;
    }
   }
  } else {
   if(i24<1.0495078563690186){
    if(i48<0.00027856684755533934){
     s0+=44409.0;
     s1+=26.0;
    } else {
     s0+=11162.0;
     s1+=292.0;
    }
   } else {
    if(i4<0.07324039936065674){
     s0+=8567.0;
     s1+=793.0;
    } else {
     s0+=779.0;
     s1+=1397.0;
    }
   }
  }
 } else {
  if(i6<0.16907232999801636){
   if(i48<0.0014358379412442446){
    if(i0<0.07678765058517456){
     s0+=231.0;
     s1+=138.0;
    } else {
     s0+=46.0;
     s1+=735.0;
    }
   } else {
    if(i21<0.046706460416316986){
     s0+=1439.0;
     s1+=124.0;
    } else {
     s0+=42.0;
     s1+=154.0;
    }
   }
  } else {
   if(i43<-2.36025744015933e-06){
    if(i2<0.24177420139312744){
     s0+=42.0;
     s1+=156.0;
    } else {
     s0+=13.0;
     s1+=738.0;
    }
   } else {
    if(i42<0.005813343450427055){
     s0+=74.0;
    } else {
     s0+=33.0;
     s1+=82.0;
    }
   }
  }
 }
} else {
 if(i15<0.0015930533409118652){
  if(i55<-1.289644387725275e-05){
   if(i36<0.0011168046621605754){
    s1+=65.0;
   } else {
    if(i12<0.0024700872600078583){
     s0+=157.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i71<0.00046315102372318506){
    if(i69<1.0004749298095703){
     s0+=70.0;
     s1+=633.0;
    } else {
     s0+=85.0;
     s1+=14.0;
    }
   } else {
    if(i33<0.009627114981412888){
     s0+=41.0;
     s1+=177.0;
    } else {
     s0+=20.0;
     s1+=2260.0;
    }
   }
  }
 } else {
  s1+=8210.0;
 }
}
if(i0<0.0819428563117981){
 if(i3<0.000616908073425293){
  if(i52<0.007584135979413986){
   if(i13<1.042891263961792){
    if(i66<-0.0011185109615325928){
     s0+=4091.0;
     s1+=348.0;
    } else {
     s0+=55279.0;
     s1+=214.0;
    }
   } else {
    if(i32<1.1013743877410889){
     s0+=1870.0;
     s1+=631.0;
    } else {
     s0+=4383.0;
     s1+=131.0;
    }
   }
  } else {
   if(i0<0.037722885608673096){
    if(i50<-6.148219108581543e-05){
     s0+=1186.0;
     s1+=23.0;
    } else {
     s0+=1467.0;
     s1+=329.0;
    }
   } else {
    if(i7<-3.8547394069610164e-05){
     s0+=70.0;
     s1+=225.0;
    } else {
     s0+=598.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i43<-1.4100647604209371e-05){
   if(i29<1.0016484260559082){
    if(i54<0.0009265542030334473){
     s0+=49.0;
     s1+=132.0;
    } else {
     s0+=66.0;
     s1+=4.0;
    }
   } else {
    if(i36<0.009066482074558735){
     s0+=6.0;
     s1+=730.0;
    } else {
     s0+=21.0;
     s1+=49.0;
    }
   }
  } else {
   if(i70<1.0025379657745361){
    if(i52<0.015319021418690681){
     s0+=183.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i32<1.175731897354126){
     s1+=23.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i45<1.3733716011047363){
  if(i50<-0.00013685226440429688){
   if(i37<0.9988065958023071){
    if(i1<-3.147125244140625e-05){
     s0+=348.0;
    } else {
     s0+=44.0;
     s1+=3.0;
    }
   } else {
    if(i24<1.1020084619522095){
     s0+=7.0;
     s1+=24.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i58<0.03612470626831055){
    if(i64<-0.0074869669042527676){
     s0+=315.0;
     s1+=645.0;
    } else {
     s0+=154.0;
     s1+=4825.0;
    }
   } else {
    if(i6<0.1698097586631775){
     s0+=706.0;
     s1+=506.0;
    } else {
     s0+=114.0;
     s1+=648.0;
    }
   }
  }
 } else {
  if(i24<1.0707495212554932){
   if(i33<0.010942082852125168){
    s1+=1.0;
   } else {
    s0+=41.0;
   }
  } else {
   if(i40<0.006592531688511372){
    if(i12<0.0058706095442175865){
     s0+=9.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i71<0.00019163783872500062){
     s0+=4.0;
     s1+=93.0;
    } else {
     s0+=2.0;
     s1+=7370.0;
    }
   }
  }
 }
}
if(i0<0.08532509207725525){
 if(i3<0.0006218850612640381){
  if(i21<0.016617346554994583){
   if(i59<0.0008427885477431118){
    if(i10<1.0056182146072388){
     s0+=56040.0;
     s1+=275.0;
    } else {
     s0+=239.0;
     s1+=116.0;
    }
   } else {
    if(i40<0.0008319523185491562){
     s0+=774.0;
     s1+=370.0;
    } else {
     s0+=2255.0;
     s1+=89.0;
    }
   }
  } else {
   if(i24<1.0447213649749756){
    if(i29<0.9941720962524414){
     s0+=4623.0;
     s1+=4.0;
    } else {
     s0+=899.0;
     s1+=83.0;
    }
   } else {
    if(i48<0.0021592408884316683){
     s0+=1085.0;
     s1+=1092.0;
    } else {
     s0+=3375.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i5<1.0041494369506836){
   if(i7<-4.3808657210320234e-05){
    if(i51<0.0014976561069488525){
     s0+=64.0;
     s1+=246.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i53<-0.014912068843841553){
     s0+=15.0;
     s1+=39.0;
    } else {
     s0+=185.0;
     s1+=19.0;
    }
   }
  } else {
   if(i19<-0.00041228532791137695){
    s0+=5.0;
   } else {
    if(i51<0.005171418190002441){
     s0+=11.0;
     s1+=691.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i14<-0.00038823485374450684){
  if(i69<1.0002942085266113){
   if(i1<-3.197789192199707e-05){
    s0+=392.0;
   } else {
    if(i1<-2.7477741241455078e-05){
     s1+=2.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i31<0.0006484336918219924){
    s0+=12.0;
   } else {
    s1+=17.0;
   }
  }
 } else {
  if(i3<0.00048679113388061523){
   if(i12<0.0016902622301131487){
    if(i9<1.0609493255615234){
     s0+=51.0;
     s1+=139.0;
    } else {
     s0+=430.0;
     s1+=93.0;
    }
   } else {
    if(i19<-5.0961971282958984e-06){
     s0+=438.0;
     s1+=1715.0;
    } else {
     s0+=41.0;
     s1+=1052.0;
    }
   }
  } else {
   if(i19<6.020069122314453e-06){
    if(i33<0.022399989888072014){
     s0+=115.0;
     s1+=194.0;
    } else {
     s0+=6.0;
     s1+=956.0;
    }
   } else {
    if(i7<-4.214317232253961e-05){
     s0+=3.0;
     s1+=9530.0;
    } else {
     s0+=35.0;
     s1+=84.0;
    }
   }
  }
 }
}
if(i1<3.641843795776367e-05){
 if(i27<1.0108590126037598){
  if(i2<0.08346298336982727){
   if(i51<-0.0015699565410614014){
    if(i2<0.03775167465209961){
     s0+=3322.0;
     s1+=392.0;
    } else {
     s0+=581.0;
     s1+=402.0;
    }
   } else {
    if(i63<0.018550656735897064){
     s0+=49994.0;
     s1+=256.0;
    } else {
     s0+=12720.0;
     s1+=846.0;
    }
   }
  } else {
   if(i14<-0.0003789663314819336){
    if(i37<0.9992893934249878){
     s0+=464.0;
     s1+=1.0;
    } else {
     s0+=32.0;
     s1+=13.0;
    }
   } else {
    if(i42<0.0004265800234861672){
     s0+=43.0;
     s1+=2.0;
    } else {
     s0+=137.0;
     s1+=1352.0;
    }
   }
  }
 } else {
  if(i12<0.004692530259490013){
   if(i56<-0.00010803283657878637){
    if(i2<0.08962762355804443){
     s0+=1384.0;
     s1+=161.0;
    } else {
     s0+=569.0;
     s1+=717.0;
    }
   } else {
    if(i7<-1.7092843336286023e-05){
     s0+=168.0;
     s1+=36.0;
    } else {
     s0+=756.0;
     s1+=3.0;
    }
   }
  } else {
   if(i0<0.10641586780548096){
    if(i19<-0.00012892484664916992){
     s0+=310.0;
     s1+=6.0;
    } else {
     s0+=40.0;
     s1+=181.0;
    }
   } else {
    if(i14<-0.0004858672618865967){
     s0+=37.0;
    } else {
     s0+=14.0;
     s1+=1064.0;
    }
   }
  }
 }
} else {
 if(i32<1.082350254058838){
  s0+=294.0;
 } else {
  if(i37<0.9983712434768677){
   s0+=50.0;
  } else {
   if(i21<0.02895371988415718){
    if(i55<0.00010622042464092374){
     s0+=185.0;
     s1+=3103.0;
    } else {
     s0+=158.0;
     s1+=269.0;
    }
   } else {
    if(i21<0.06213795393705368){
     s0+=76.0;
     s1+=2678.0;
    } else {
     s0+=6.0;
     s1+=5430.0;
    }
   }
  }
 }
}
if(i4<0.0780104398727417){
 if(i17<1.8775463104248047e-05){
  if(i24<1.0486011505126953){
   if(i80<-0.0005589723587036133){
    if(i10<0.990065336227417){
     s0+=6137.0;
     s1+=34.0;
    } else {
     s0+=1389.0;
     s1+=273.0;
    }
   } else {
    if(i22<1.012018084526062){
     s0+=47655.0;
     s1+=50.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i32<1.1013743877410889){
    if(i36<0.0005130393547005951){
     s0+=2425.0;
     s1+=434.0;
    } else {
     s0+=94.0;
     s1+=886.0;
    }
   } else {
    if(i4<0.06312254071235657){
     s0+=9258.0;
     s1+=254.0;
    } else {
     s0+=708.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i15<0.0006112456321716309){
   if(i3<0.0006216764450073242){
    if(i51<-0.0008562803268432617){
     s0+=211.0;
     s1+=122.0;
    } else {
     s0+=990.0;
     s1+=77.0;
    }
   } else {
    if(i74<0.00013321955339051783){
     s0+=62.0;
     s1+=259.0;
    } else {
     s0+=102.0;
     s1+=77.0;
    }
   }
  } else {
   if(i7<-4.229134356137365e-05){
    s1+=637.0;
   } else {
    if(i60<9.614150258130394e-06){
     s0+=38.0;
     s1+=8.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i17<-1.475214958190918e-05){
  if(i5<0.996305525302887){
   if(i43<-9.034853064804338e-06){
    if(i33<0.012726213783025742){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=14.0;
    }
   } else {
    s0+=424.0;
   }
  } else {
   if(i55<5.249430614640005e-05){
    s0+=37.0;
   } else {
    if(i64<-0.0023178830742836){
     s1+=12.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i40<0.006057111546397209){
   if(i72<-0.019221853464841843){
    if(i33<0.023802321404218674){
     s0+=737.0;
     s1+=278.0;
    } else {
     s0+=88.0;
     s1+=384.0;
    }
   } else {
    if(i64<-0.00961267203092575){
     s0+=106.0;
     s1+=49.0;
    } else {
     s0+=279.0;
     s1+=3530.0;
    }
   }
  } else {
   if(i67<3.417926927795634e-05){
    if(i0<0.13857463002204895){
     s0+=79.0;
     s1+=543.0;
    } else {
     s0+=26.0;
     s1+=8968.0;
    }
   } else {
    if(i24<1.1251091957092285){
     s0+=61.0;
    } else {
     s0+=1.0;
     s1+=265.0;
    }
   }
  }
 }
}
if(i13<1.0555626153945923){
 if(i13<1.0449585914611816){
  if(i78<-0.0008091330528259277){
   if(i6<0.07045120000839233){
    if(i29<0.9942458271980286){
     s0+=9215.0;
     s1+=54.0;
    } else {
     s0+=2283.0;
     s1+=624.0;
    }
   } else {
    if(i67<1.3606571883428842e-05){
     s0+=6.0;
     s1+=102.0;
    } else {
     s0+=122.0;
     s1+=71.0;
    }
   }
  } else {
   if(i7<-4.5065535232424736e-05){
    if(i38<1.0762357711791992){
     s0+=221.0;
    } else {
     s0+=96.0;
     s1+=146.0;
    }
   } else {
    if(i14<0.0007816851139068604){
     s0+=50112.0;
     s1+=258.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i3<0.0002294778823852539){
   if(i7<-1.1427485333115328e-05){
    if(i38<1.1118383407592773){
     s0+=112.0;
     s1+=291.0;
    } else {
     s0+=571.0;
     s1+=90.0;
    }
   } else {
    if(i62<-0.002386808395385742){
     s0+=103.0;
     s1+=81.0;
    } else {
     s0+=1331.0;
     s1+=39.0;
    }
   }
  } else {
   if(i41<0.00028492655837908387){
    s0+=112.0;
   } else {
    if(i45<1.175590991973877){
     s0+=3.0;
     s1+=388.0;
    } else {
     s0+=76.0;
     s1+=161.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004850625991821289){
  if(i41<0.005971281789243221){
   if(i15<0.000936657190322876){
    if(i0<0.07489678263664246){
     s0+=4275.0;
     s1+=555.0;
    } else {
     s0+=1415.0;
     s1+=1337.0;
    }
   } else {
    if(i4<0.05643919110298157){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=260.0;
    }
   }
  } else {
   if(i4<0.09161996841430664){
    if(i54<-0.002810060977935791){
     s0+=90.0;
     s1+=106.0;
    } else {
     s0+=460.0;
     s1+=29.0;
    }
   } else {
    if(i38<1.3212339878082275){
     s0+=45.0;
     s1+=259.0;
    } else {
     s0+=18.0;
     s1+=821.0;
    }
   }
  }
 } else {
  if(i2<0.08259889483451843){
   if(i51<0.0007736086845397949){
    if(i32<1.5682398080825806){
     s0+=53.0;
     s1+=621.0;
    } else {
     s0+=67.0;
     s1+=74.0;
    }
   } else {
    if(i34<1.136949896812439){
     s0+=3.0;
     s1+=37.0;
    } else {
     s0+=146.0;
     s1+=3.0;
    }
   }
  } else {
   if(i12<0.0037535398732870817){
    if(i7<-5.606815830105916e-05){
     s0+=4.0;
     s1+=563.0;
    } else {
     s0+=78.0;
     s1+=26.0;
    }
   } else {
    if(i24<1.1222221851348877){
     s0+=68.0;
     s1+=1595.0;
    } else {
     s0+=14.0;
     s1+=8519.0;
    }
   }
  }
 }
}
if(i0<0.08316662907600403){
 if(i49<-0.006162106990814209){
  if(i17<1.6748905181884766e-05){
   if(i26<0.002332518342882395){
    if(i40<0.0003946007927879691){
     s0+=745.0;
     s1+=4.0;
    } else {
     s0+=759.0;
     s1+=535.0;
    }
   } else {
    if(i6<0.03379225730895996){
     s0+=1911.0;
     s1+=81.0;
    } else {
     s0+=168.0;
     s1+=76.0;
    }
   }
  } else {
   if(i5<1.001352310180664){
    if(i68<0.013575556688010693){
     s0+=142.0;
     s1+=30.0;
    } else {
     s0+=26.0;
     s1+=48.0;
    }
   } else {
    if(i80<0.0015200376510620117){
     s0+=35.0;
     s1+=570.0;
    } else {
     s0+=13.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<0.06599622964859009){
   if(i11<1.0015145540237427){
    if(i24<1.0485899448394775){
     s0+=53193.0;
     s1+=157.0;
    } else {
     s0+=8888.0;
     s1+=568.0;
    }
   } else {
    if(i67<2.033281089097727e-05){
     s0+=373.0;
     s1+=200.0;
    } else {
     s0+=521.0;
     s1+=13.0;
    }
   }
  } else {
   if(i35<1.0043566226959229){
    if(i39<0.026784537360072136){
     s0+=1886.0;
     s1+=107.0;
    } else {
     s0+=716.0;
     s1+=298.0;
    }
   } else {
    if(i47<0.03630775213241577){
     s0+=16.0;
     s1+=389.0;
    } else {
     s0+=203.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i3<0.0001462996006011963){
  if(i37<0.9989747405052185){
   if(i75<0.2509811818599701){
    if(i14<-0.0004056990146636963){
     s0+=400.0;
    } else {
     s0+=23.0;
     s1+=4.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i58<0.0313166081905365){
    if(i7<-1.4511118934024125e-05){
     s0+=63.0;
     s1+=1103.0;
    } else {
     s0+=128.0;
     s1+=246.0;
    }
   } else {
    if(i41<0.005731471814215183){
     s0+=576.0;
     s1+=257.0;
    } else {
     s0+=76.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i0<0.123960942029953){
   if(i54<0.0042084455490112305){
    if(i3<0.00046306848526000977){
     s0+=88.0;
     s1+=385.0;
    } else {
     s0+=33.0;
     s1+=1148.0;
    }
   } else {
    if(i48<0.0013763327151536942){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=162.0;
     s1+=11.0;
    }
   }
  } else {
   if(i7<-4.2727140680653974e-05){
    if(i33<0.022078588604927063){
     s0+=33.0;
     s1+=1556.0;
    } else {
     s1+=8597.0;
    }
   } else {
    if(i44<0.08635920286178589){
     s0+=1.0;
     s1+=198.0;
    } else {
     s0+=79.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i10<1.0055609941482544){
 if(i0<0.08195626735687256){
  if(i68<0.0020280303433537483){
   if(i13<1.0428826808929443){
    if(i24<1.0428826808929443){
     s0+=51149.0;
     s1+=106.0;
    } else {
     s0+=7012.0;
     s1+=322.0;
    }
   } else {
    if(i15<-0.0012332797050476074){
     s0+=1781.0;
     s1+=15.0;
    } else {
     s0+=4104.0;
     s1+=763.0;
    }
   }
  } else {
   if(i3<0.0002968311309814453){
    if(i50<-3.695487976074219e-05){
     s0+=2359.0;
     s1+=104.0;
    } else {
     s0+=2134.0;
     s1+=726.0;
    }
   } else {
    if(i53<0.0037522315979003906){
     s0+=25.0;
     s1+=348.0;
    } else {
     s0+=47.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i11<0.998518705368042){
   if(i42<0.0111928042024374){
    if(i32<1.4901387691497803){
     s0+=494.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=12.0;
    }
   } else {
    if(i12<0.0046369112096726894){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i60<0.0004873287689406425){
    if(i49<0.016230404376983643){
     s0+=246.0;
     s1+=1130.0;
    } else {
     s0+=644.0;
     s1+=465.0;
    }
   } else {
    if(i54<0.00409504771232605){
     s0+=9.0;
     s1+=1595.0;
    } else {
     s0+=220.0;
     s1+=1136.0;
    }
   }
  }
 }
} else {
 if(i0<0.06566488742828369){
  if(i45<1.1463401317596436){
   if(i57<7.832193659851328e-05){
    s0+=7.0;
   } else {
    s1+=273.0;
   }
  } else {
   if(i11<1.0027425289154053){
    if(i14<0.0006410479545593262){
     s0+=634.0;
     s1+=8.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   } else {
    if(i23<1.0313775539398193){
     s1+=46.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i2<0.10335138440132141){
   if(i79<-0.0019208311568945646){
    if(i11<1.0029116868972778){
     s0+=105.0;
     s1+=4.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i1<1.1622905731201172e-06){
     s0+=12.0;
    } else {
     s0+=26.0;
     s1+=914.0;
    }
   }
  } else {
   if(i11<0.999835729598999){
    if(i43<-5.721105935663218e-07){
     s0+=3.0;
     s1+=216.0;
    } else {
     s0+=32.0;
     s1+=12.0;
    }
   } else {
    if(i35<1.0173051357269287){
     s0+=52.0;
     s1+=1737.0;
    } else {
     s0+=7.0;
     s1+=7133.0;
    }
   }
  }
 }
}
if(i5<1.0024782419204712){
 if(i48<0.00039810454472899437){
  if(i48<0.00028903206111863256){
   if(i3<0.00021702051162719727){
    if(i78<-0.0011799633502960205){
     s0+=931.0;
     s1+=17.0;
    } else {
     s0+=41571.0;
    }
   } else {
    if(i7<-3.8890877476660535e-05){
     s0+=4.0;
     s1+=52.0;
    } else {
     s0+=3738.0;
     s1+=21.0;
    }
   }
  } else {
   if(i3<0.0002052783966064453){
    if(i62<-0.0028083622455596924){
     s0+=38.0;
     s1+=22.0;
    } else {
     s0+=3207.0;
     s1+=68.0;
    }
   } else {
    if(i38<1.1470013856887817){
     s0+=24.0;
     s1+=126.0;
    } else {
     s0+=39.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i29<0.9945558309555054){
   if(i1<-4.172325134277344e-07){
    if(i0<0.09400123357772827){
     s0+=12252.0;
     s1+=222.0;
    } else {
     s0+=376.0;
     s1+=405.0;
    }
   } else {
    if(i34<1.2248268127441406){
     s0+=289.0;
     s1+=53.0;
    } else {
     s0+=111.0;
     s1+=266.0;
    }
   }
  } else {
   if(i13<1.0380855798721313){
    if(i2<0.08307921886444092){
     s0+=2628.0;
     s1+=286.0;
    } else {
     s0+=5.0;
     s1+=127.0;
    }
   } else {
    if(i7<-2.8069705876987427e-05){
     s0+=1235.0;
     s1+=2666.0;
    } else {
     s0+=4292.0;
     s1+=1477.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019104243256151676){
  if(i74<5.302063800627366e-05){
   s1+=10.0;
  } else {
   if(i60<0.00011340716446284205){
    s0+=93.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i1<6.16908073425293e-05){
   if(i57<0.0010406330693513155){
    if(i61<0.9999246597290039){
     s1+=185.0;
    } else {
     s0+=113.0;
     s1+=20.0;
    }
   } else {
    if(i12<0.004566153511404991){
     s0+=36.0;
     s1+=88.0;
    } else {
     s0+=42.0;
     s1+=820.0;
    }
   }
  } else {
   if(i2<0.05146622657775879){
    if(i55<0.00026772666024044156){
     s0+=27.0;
     s1+=190.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i4<0.1274447739124298){
     s0+=60.0;
     s1+=1492.0;
    } else {
     s0+=5.0;
     s1+=8485.0;
    }
   }
  }
 }
}
if(i2<0.08353149890899658){
 if(i17<2.0563602447509766e-05){
  if(i52<0.007526296190917492){
   if(i10<1.0036720037460327){
    if(i24<1.0451585054397583){
     s0+=52655.0;
     s1+=176.0;
    } else {
     s0+=11053.0;
     s1+=893.0;
    }
   } else {
    if(i36<0.0007289394270628691){
     s0+=214.0;
     s1+=220.0;
    } else {
     s0+=877.0;
     s1+=4.0;
    }
   }
  } else {
   if(i11<0.9983083009719849){
    if(i32<1.4901387691497803){
     s0+=1041.0;
     s1+=3.0;
    } else {
     s0+=103.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.03759753704071045){
     s0+=1719.0;
     s1+=337.0;
    } else {
     s0+=439.0;
     s1+=454.0;
    }
   }
  }
 } else {
  if(i49<0.0004886388778686523){
   if(i15<-0.0024719536304473877){
    if(i2<0.02226516604423523){
     s0+=142.0;
     s1+=3.0;
    } else {
     s0+=36.0;
     s1+=55.0;
    }
   } else {
    if(i26<0.00019916106248274446){
     s0+=59.0;
     s1+=1.0;
    } else {
     s0+=100.0;
     s1+=788.0;
    }
   }
  } else {
   if(i40<0.002056605415418744){
    if(i11<1.0012966394424438){
     s0+=199.0;
    } else {
     s1+=110.0;
    }
   } else {
    if(i45<1.1748476028442383){
     s0+=9.0;
     s1+=16.0;
    } else {
     s0+=555.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i3<-0.0007499754428863525){
  if(i71<0.001735965022817254){
   if(i5<0.9963238835334778){
    if(i78<-0.0025340914726257324){
     s0+=232.0;
     s1+=46.0;
    } else {
     s0+=542.0;
     s1+=1.0;
    }
   } else {
    if(i63<0.06673359125852585){
     s0+=26.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=40.0;
    }
   }
  } else {
   if(i48<0.005717243999242783){
    s0+=4.0;
   } else {
    s1+=77.0;
   }
  }
 } else {
  if(i12<0.001723350491374731){
   if(i29<1.0061712265014648){
    if(i47<0.05816444754600525){
     s0+=31.0;
     s1+=87.0;
    } else {
     s0+=544.0;
     s1+=89.0;
    }
   } else {
    if(i7<-4.846965748583898e-05){
     s1+=155.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i0<0.11795270442962646){
    if(i47<0.06019991636276245){
     s0+=77.0;
     s1+=1726.0;
    } else {
     s0+=444.0;
     s1+=163.0;
    }
   } else {
    if(i53<0.10888108611106873){
     s0+=16.0;
     s1+=9138.0;
    } else {
     s0+=174.0;
     s1+=2348.0;
    }
   }
  }
 }
}
if(i15<0.0007714033126831055){
 if(i3<0.0005512535572052002){
  if(i8<1.0067918300628662){
   if(i6<0.07082092761993408){
    if(i63<0.026010368019342422){
     s0+=53827.0;
     s1+=507.0;
    } else {
     s0+=13234.0;
     s1+=1461.0;
    }
   } else {
    if(i7<-9.648835657571908e-06){
     s0+=609.0;
     s1+=1363.0;
    } else {
     s0+=939.0;
     s1+=132.0;
    }
   }
  } else {
   if(i71<0.0005776783218607306){
    if(i6<0.18700793385505676){
     s0+=1358.0;
     s1+=451.0;
    } else {
     s0+=35.0;
     s1+=321.0;
    }
   } else {
    if(i37<0.9979661703109741){
     s0+=63.0;
    } else {
     s0+=55.0;
     s1+=660.0;
    }
   }
  }
 } else {
  if(i33<0.008056515827775002){
   if(i66<-0.004676759243011475){
    if(i12<0.011713545769453049){
     s1+=38.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i67<6.136563115433091e-06){
     s0+=195.0;
    } else {
     s0+=53.0;
     s1+=25.0;
    }
   }
  } else {
   if(i69<0.9976435899734497){
    if(i48<0.01432725228369236){
     s0+=45.0;
     s1+=2.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i48<0.01164214126765728){
     s0+=115.0;
     s1+=1162.0;
    } else {
     s0+=2.0;
     s1+=1052.0;
    }
   }
  }
 }
} else {
 if(i24<1.0540467500686646){
  if(i30<1.0068711042404175){
   if(i37<1.001042366027832){
    s0+=245.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=43.0;
  }
 } else {
  if(i1<6.109476089477539e-05){
   if(i33<0.013813041150569916){
    if(i75<0.009873778559267521){
     s0+=31.0;
     s1+=304.0;
    } else {
     s0+=370.0;
     s1+=171.0;
    }
   } else {
    if(i12<0.001525392639450729){
     s0+=5.0;
    } else {
     s1+=796.0;
    }
   }
  } else {
   if(i48<0.00027394352946430445){
    s0+=2.0;
   } else {
    if(i7<-4.0123115468304604e-05){
     s0+=2.0;
     s1+=8531.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i2<0.08442407846450806){
 if(i15<0.00115889310836792){
  if(i53<-0.030874520540237427){
   if(i3<0.00022327899932861328){
    if(i5<0.9962749481201172){
     s0+=856.0;
     s1+=40.0;
    } else {
     s0+=1183.0;
     s1+=401.0;
    }
   } else {
    if(i68<0.0010587219148874283){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=38.0;
     s1+=358.0;
    }
   }
  } else {
   if(i21<0.014449230395257473){
    if(i10<1.005542278289795){
     s0+=55625.0;
     s1+=520.0;
    } else {
     s0+=279.0;
     s1+=117.0;
    }
   } else {
    if(i0<0.0654531717300415){
     s0+=10326.0;
     s1+=660.0;
    } else {
     s0+=843.0;
     s1+=556.0;
    }
   }
  }
 } else {
  if(i32<1.2392117977142334){
   s1+=443.0;
  } else {
   if(i41<0.005261200480163097){
    s0+=118.0;
   } else {
    s1+=73.0;
   }
  }
 }
} else {
 if(i14<-0.0004025697708129883){
  if(i38<1.476589322090149){
   if(i3<-0.0004886984825134277){
    if(i37<0.9997351169586182){
     s0+=550.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i72<-0.014694211073219776){
     s1+=3.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i33<0.012386452406644821){
    if(i29<0.9900131821632385){
     s1+=15.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i65<0.5867477655410767){
     s0+=56.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.12206313014030457){
   if(i64<-0.005210443399846554){
    if(i22<0.9763860702514648){
     s1+=53.0;
    } else {
     s0+=566.0;
     s1+=63.0;
    }
   } else {
    if(i44<0.05669239163398743){
     s0+=83.0;
     s1+=2086.0;
    } else {
     s0+=195.0;
     s1+=102.0;
    }
   }
  } else {
   if(i40<0.0011684107594192028){
    if(i13<1.1039612293243408){
     s0+=15.0;
     s1+=279.0;
    } else {
     s0+=158.0;
    }
   } else {
    if(i36<0.0008841854287311435){
     s0+=18.0;
    } else {
     s0+=222.0;
     s1+=11281.0;
    }
   }
  }
 }
}
if(i6<0.07132148742675781){
 if(i0<0.0756051242351532){
  if(i17<2.3066997528076172e-05){
   if(i48<0.0002778609050437808){
    if(i8<1.0081498622894287){
     s0+=45597.0;
     s1+=30.0;
    } else {
     s0+=9.0;
     s1+=68.0;
    }
   } else {
    if(i36<0.001444727648049593){
     s0+=9053.0;
     s1+=1533.0;
    } else {
     s0+=13183.0;
     s1+=225.0;
    }
   }
  } else {
   if(i51<-0.000850677490234375){
    if(i3<0.00015777349472045898){
     s0+=89.0;
     s1+=14.0;
    } else {
     s0+=60.0;
     s1+=555.0;
    }
   } else {
    if(i10<1.000467300415039){
     s0+=615.0;
     s1+=25.0;
    } else {
     s0+=41.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i37<0.9993610382080078){
   if(i8<0.9819734692573547){
    s1+=1.0;
   } else {
    if(i21<0.05661097168922424){
     s0+=179.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i72<-0.013039570301771164){
    if(i2<0.09044438600540161){
     s0+=71.0;
    } else {
     s1+=66.0;
    }
   } else {
    if(i0<0.08202585577964783){
     s0+=137.0;
     s1+=319.0;
    } else {
     s0+=11.0;
     s1+=1681.0;
    }
   }
  }
 }
} else {
 if(i16<1.0021915435791016){
  if(i33<0.040245652198791504){
   if(i44<0.04244464635848999){
    if(i0<0.0891886055469513){
     s0+=104.0;
     s1+=161.0;
    } else {
     s0+=16.0;
     s1+=1072.0;
    }
   } else {
    if(i7<-9.366965969093144e-06){
     s0+=711.0;
     s1+=878.0;
    } else {
     s0+=969.0;
     s1+=78.0;
    }
   }
  } else {
   if(i0<0.08567941188812256){
    if(i22<0.9727436900138855){
     s1+=14.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i13<1.0643413066864014){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=1243.0;
    }
   }
  }
 } else {
  if(i56<-0.00012694310862571){
   if(i17<1.7940998077392578e-05){
    if(i0<0.11889049410820007){
     s0+=49.0;
     s1+=39.0;
    } else {
     s0+=32.0;
     s1+=954.0;
    }
   } else {
    if(i0<0.09388971328735352){
     s0+=7.0;
     s1+=97.0;
    } else {
     s0+=5.0;
     s1+=7130.0;
    }
   }
  } else {
   if(i64<-0.00472803832963109){
    if(i39<0.0721973329782486){
     s0+=110.0;
     s1+=56.0;
    } else {
     s0+=35.0;
     s1+=246.0;
    }
   } else {
    if(i58<0.05310380458831787){
     s0+=10.0;
     s1+=494.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i2<0.08509460091590881){
 if(i5<1.0024954080581665){
  if(i51<-0.0015548169612884521){
   if(i5<0.9975679516792297){
    if(i4<0.04319903254508972){
     s0+=1946.0;
     s1+=73.0;
    } else {
     s0+=71.0;
     s1+=63.0;
    }
   } else {
    if(i55<3.206360270269215e-05){
     s0+=1462.0;
     s1+=162.0;
    } else {
     s0+=457.0;
     s1+=567.0;
    }
   }
  } else {
   if(i9<1.0401175022125244){
    if(i0<0.06923821568489075){
     s0+=58811.0;
     s1+=401.0;
    } else {
     s0+=1104.0;
     s1+=191.0;
    }
   } else {
    if(i38<1.1037919521331787){
     s0+=1653.0;
     s1+=590.0;
    } else {
     s0+=3516.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i71<0.0004608329327311367){
   if(i73<-5.226956091064494e-06){
    if(i66<0.0024483203887939453){
     s0+=18.0;
     s1+=262.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   } else {
    if(i35<1.0222852230072021){
     s0+=177.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  } else {
   if(i38<1.2646260261535645){
    if(i1<2.3365020751953125e-05){
     s0+=1.0;
    } else {
     s1+=456.0;
    }
   } else {
    if(i38<1.3524047136306763){
     s0+=28.0;
     s1+=29.0;
    } else {
     s0+=27.0;
     s1+=203.0;
    }
   }
  }
 }
} else {
 if(i14<-0.0004031956195831299){
  if(i67<4.501326475292444e-05){
   if(i16<0.9948320388793945){
    s0+=511.0;
   } else {
    if(i82<2.626494733704021e-06){
     s0+=107.0;
     s1+=4.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i19<-0.0005089640617370605){
    if(i31<0.010660174302756786){
     s0+=20.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.00015362881822511554){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i3<0.00048476457595825195){
   if(i49<0.01678144931793213){
    if(i7<-1.4224628102965653e-05){
     s0+=96.0;
     s1+=1958.0;
    } else {
     s0+=241.0;
     s1+=300.0;
    }
   } else {
    if(i56<-0.0005201128078624606){
     s0+=150.0;
     s1+=571.0;
    } else {
     s0+=627.0;
     s1+=284.0;
    }
   }
  } else {
   if(i19<1.1146068572998047e-05){
    if(i44<0.05327191948890686){
     s0+=3.0;
     s1+=842.0;
    } else {
     s0+=114.0;
     s1+=424.0;
    }
   } else {
    if(i12<0.0025939950719475746){
     s0+=34.0;
     s1+=205.0;
    } else {
     s0+=4.0;
     s1+=9274.0;
    }
   }
  }
 }
}
if(i1<3.6776065826416016e-05){
 if(i13<1.0451740026474){
  if(i45<1.067622423171997){
   if(i63<0.018960054963827133){
    if(i13<1.0437114238739014){
     s0+=35438.0;
     s1+=2.0;
    } else {
     s0+=121.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.00010120868682861328){
     s0+=2485.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=27.0;
    }
   }
  } else {
   if(i2<0.08262783288955688){
    if(i66<-0.0008011162281036377){
     s0+=3916.0;
     s1+=511.0;
    } else {
     s0+=19464.0;
     s1+=218.0;
    }
   } else {
    if(i76<5.64162428418058e-06){
     s0+=75.0;
     s1+=239.0;
    } else {
     s0+=147.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i21<0.022702932357788086){
   if(i4<0.07809340953826904){
    if(i3<0.00021308660507202148){
     s0+=5429.0;
     s1+=353.0;
    } else {
     s0+=508.0;
     s1+=245.0;
    }
   } else {
    if(i44<0.04519784450531006){
     s0+=74.0;
     s1+=629.0;
    } else {
     s0+=815.0;
     s1+=287.0;
    }
   }
  } else {
   if(i5<0.9964578151702881){
    if(i34<1.4310393333435059){
     s0+=772.0;
     s1+=83.0;
    } else {
     s0+=23.0;
     s1+=52.0;
    }
   } else {
    if(i10<0.9877948760986328){
     s0+=277.0;
     s1+=276.0;
    } else {
     s0+=648.0;
     s1+=2535.0;
    }
   }
  }
 }
} else {
 if(i48<0.00027985696215182543){
  if(i8<1.0086042881011963){
   if(i13<1.0340795516967773){
    s0+=296.0;
   } else {
    if(i10<1.005265712738037){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i13<1.0330078601837158){
    s0+=8.0;
   } else {
    s1+=41.0;
   }
  }
 } else {
  if(i69<0.9961848258972168){
   s0+=50.0;
  } else {
   if(i2<0.0708405077457428){
    if(i34<1.1961640119552612){
     s0+=24.0;
     s1+=481.0;
    } else {
     s0+=199.0;
     s1+=169.0;
    }
   } else {
    if(i7<-7.07379003870301e-05){
     s0+=56.0;
     s1+=10330.0;
    } else {
     s0+=116.0;
     s1+=756.0;
    }
   }
  }
 }
}
if(i7<-6.255788321141154e-05){
 if(i4<0.05290094017982483){
  if(i29<1.0017123222351074){
   if(i56<-0.00047090958105400205){
    if(i53<-0.024358123540878296){
     s0+=13.0;
     s1+=64.0;
    } else {
     s0+=89.0;
     s1+=5.0;
    }
   } else {
    if(i65<0.17559441924095154){
     s0+=115.0;
     s1+=25.0;
    } else {
     s0+=973.0;
     s1+=12.0;
    }
   }
  } else {
   if(i65<0.3283888101577759){
    if(i51<0.0029932260513305664){
     s0+=8.0;
     s1+=268.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i5<1.0001938343048096){
     s0+=17.0;
    } else {
     s0+=8.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i42<0.00035947037395089865){
   s0+=74.0;
  } else {
   if(i4<0.11058789491653442){
    if(i53<0.0494762659072876){
     s0+=78.0;
     s1+=1461.0;
    } else {
     s0+=178.0;
     s1+=9.0;
    }
   } else {
    if(i34<1.0603303909301758){
     s0+=17.0;
    } else {
     s0+=28.0;
     s1+=10433.0;
    }
   }
  }
 }
} else {
 if(i4<0.07483020424842834){
  if(i11<1.0019056797027588){
   if(i48<0.0003100628964602947){
    if(i11<1.0006616115570068){
     s0+=45046.0;
     s1+=31.0;
    } else {
     s0+=1819.0;
     s1+=76.0;
    }
   } else {
    if(i1<-7.331371307373047e-06){
     s0+=16325.0;
     s1+=876.0;
    } else {
     s0+=3903.0;
     s1+=949.0;
    }
   }
  } else {
   if(i5<1.0018746852874756){
    if(i28<0.9850850105285645){
     s0+=16.0;
     s1+=31.0;
    } else {
     s0+=236.0;
     s1+=7.0;
    }
   } else {
    if(i34<1.1353518962860107){
     s0+=4.0;
     s1+=188.0;
    } else {
     s0+=28.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i49<0.017681032419204712){
   if(i14<-0.00038439035415649414){
    if(i57<0.0036848876625299454){
     s0+=374.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i33<0.004800491034984589){
     s0+=155.0;
     s1+=52.0;
    } else {
     s0+=400.0;
     s1+=2202.0;
    }
   }
  } else {
   if(i8<1.0253968238830566){
    if(i41<0.006364732980728149){
     s0+=970.0;
     s1+=278.0;
    } else {
     s0+=102.0;
     s1+=160.0;
    }
   } else {
    if(i25<1.0297560691833496){
     s0+=6.0;
     s1+=10.0;
    } else {
     s1+=76.0;
    }
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i2<0.08237043023109436){
  if(i49<-0.0061759352684021){
   if(i63<0.09882237017154694){
    if(i32<1.0835556983947754){
     s0+=627.0;
    } else {
     s0+=519.0;
     s1+=489.0;
    }
   } else {
    if(i0<0.043861836194992065){
     s0+=938.0;
     s1+=10.0;
    } else {
     s0+=13.0;
     s1+=10.0;
    }
   }
  } else {
   if(i5<1.0025382041931152){
    if(i34<1.0557184219360352){
     s0+=42319.0;
     s1+=4.0;
    } else {
     s0+=19839.0;
     s1+=860.0;
    }
   } else {
    if(i71<0.0003178352490067482){
     s0+=52.0;
    } else {
     s0+=37.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i76<5.796585810458055e-06){
   if(i61<0.9993069171905518){
    s0+=40.0;
   } else {
    if(i24<1.0486564636230469){
     s0+=79.0;
     s1+=40.0;
    } else {
     s0+=101.0;
     s1+=974.0;
    }
   }
  } else {
   if(i8<1.002183198928833){
    if(i6<0.09205272793769836){
     s0+=407.0;
     s1+=5.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   } else {
    if(i48<0.00044779927702620625){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i40<0.0059245433658361435){
  if(i15<0.0008071064949035645){
   if(i0<0.07925170660018921){
    if(i38<1.1037919521331787){
     s0+=806.0;
     s1+=443.0;
    } else {
     s0+=3290.0;
     s1+=280.0;
    }
   } else {
    if(i12<0.004720574244856834){
     s0+=1082.0;
     s1+=835.0;
    } else {
     s0+=140.0;
     s1+=947.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    if(i1<2.765655517578125e-05){
     s0+=3.0;
     s1+=236.0;
    } else {
     s1+=1675.0;
    }
   } else {
    if(i7<-7.463381916750222e-05){
     s1+=155.0;
    } else {
     s0+=165.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i2<0.09164327383041382){
   if(i68<0.002519735600799322){
    if(i72<0.011314515955746174){
     s0+=336.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i15<-0.0006597936153411865){
     s0+=217.0;
     s1+=210.0;
    } else {
     s0+=6.0;
     s1+=188.0;
    }
   }
  } else {
   if(i12<0.006474495865404606){
    if(i47<0.06854933500289917){
     s1+=543.0;
    } else {
     s0+=78.0;
     s1+=144.0;
    }
   } else {
    if(i19<-0.0006074011325836182){
     s0+=16.0;
     s1+=55.0;
    } else {
     s0+=34.0;
     s1+=8751.0;
    }
   }
  }
 }
}
if(i4<0.07800713181495667){
 if(i11<1.0018954277038574){
  if(i66<-0.0012745559215545654){
   if(i4<0.03972560167312622){
    if(i31<0.0018806757871061563){
     s0+=1945.0;
     s1+=394.0;
    } else {
     s0+=3000.0;
     s1+=57.0;
    }
   } else {
    if(i72<-0.010814206674695015){
     s0+=583.0;
     s1+=35.0;
    } else {
     s0+=253.0;
     s1+=419.0;
    }
   }
  } else {
   if(i13<1.0452215671539307){
    if(i0<0.0842466950416565){
     s0+=57452.0;
     s1+=301.0;
    } else {
     s0+=7.0;
     s1+=18.0;
    }
   } else {
    if(i12<0.003910960629582405){
     s0+=4764.0;
     s1+=404.0;
    } else {
     s0+=567.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i29<1.000489592552185){
   if(i5<1.0018858909606934){
    if(i68<0.00793843250721693){
     s0+=477.0;
     s1+=25.0;
    } else {
     s0+=39.0;
     s1+=31.0;
    }
   } else {
    if(i68<0.0030441652052104473){
     s0+=72.0;
     s1+=24.0;
    } else {
     s0+=13.0;
     s1+=86.0;
    }
   }
  } else {
   if(i14<0.0005835294723510742){
    if(i48<0.0002381361264269799){
     s0+=20.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i29<1.0046782493591309){
     s0+=43.0;
     s1+=153.0;
    } else {
     s0+=2.0;
     s1+=740.0;
    }
   }
  }
 }
} else {
 if(i0<0.10779157280921936){
  if(i49<0.013677656650543213){
   if(i11<0.9982267022132874){
    if(i14<-0.0004121065139770508){
     s0+=138.0;
    } else {
     s0+=24.0;
     s1+=5.0;
    }
   } else {
    if(i72<-0.019020110368728638){
     s0+=108.0;
     s1+=11.0;
    } else {
     s0+=149.0;
     s1+=1392.0;
    }
   }
  } else {
   if(i58<0.014640092849731445){
    if(i79<-0.0019824018236249685){
     s0+=100.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    if(i49<0.016987502574920654){
     s0+=100.0;
     s1+=8.0;
    } else {
     s0+=466.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i11<0.9985154867172241){
   if(i36<0.004256099928170443){
    s0+=285.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i12<0.001685795490629971){
    if(i9<1.1754474639892578){
     s0+=127.0;
     s1+=193.0;
    } else {
     s0+=162.0;
     s1+=1.0;
    }
   } else {
    if(i73<1.041045493366255e-06){
     s0+=262.0;
     s1+=12194.0;
    } else {
     s0+=25.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i16<1.0026427507400513){
 if(i6<0.07075187563896179){
  if(i4<0.07754036784172058){
   if(i48<0.0003166829119436443){
    if(i7<-4.452571738511324e-05){
     s0+=300.0;
     s1+=59.0;
    } else {
     s0+=46485.0;
     s1+=69.0;
    }
   } else {
    if(i42<0.0015668218256905675){
     s0+=6472.0;
     s1+=1518.0;
    } else {
     s0+=14272.0;
     s1+=311.0;
    }
   }
  } else {
   if(i17<-1.2993812561035156e-05){
    if(i4<0.07774394750595093){
     s1+=2.0;
    } else {
     s0+=82.0;
    }
   } else {
    if(i3<-0.0007598996162414551){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=614.0;
    }
   }
  }
 } else {
  if(i17<-1.4722347259521484e-05){
   if(i14<-0.0003840029239654541){
    if(i43<-1.0080972970172297e-05){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=483.0;
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i0<0.10780218243598938){
    if(i51<0.003940880298614502){
     s0+=372.0;
     s1+=602.0;
    } else {
     s0+=575.0;
     s1+=38.0;
    }
   } else {
    if(i74<0.00011055546201532707){
     s0+=413.0;
     s1+=1506.0;
    } else {
     s0+=76.0;
     s1+=1664.0;
    }
   }
  }
 }
} else {
 if(i13<1.041883945465088){
  if(i65<0.15762177109718323){
   if(i2<0.0907144844532013){
    if(i43<-1.6077825421234593e-05){
     s0+=94.0;
     s1+=88.0;
    } else {
     s0+=232.0;
     s1+=6.0;
    }
   } else {
    if(i27<1.0117337703704834){
     s1+=83.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i6<0.07855290174484253){
    if(i5<1.003730297088623){
     s0+=537.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i56<-0.00012694092583842576){
   if(i1<5.751848220825195e-05){
    if(i4<0.06627404689788818){
     s0+=167.0;
     s1+=106.0;
    } else {
     s0+=61.0;
     s1+=846.0;
    }
   } else {
    if(i29<1.0058976411819458){
     s0+=40.0;
     s1+=1262.0;
    } else {
     s0+=1.0;
     s1+=7107.0;
    }
   }
  } else {
   if(i67<2.7440696612757165e-06){
    if(i38<1.070241093635559){
     s0+=20.0;
    } else {
     s0+=51.0;
     s1+=1051.0;
    }
   } else {
    if(i3<0.0009626150131225586){
     s0+=291.0;
     s1+=136.0;
    } else {
     s0+=1.0;
     s1+=85.0;
    }
   }
  }
 }
}
if(i1<3.629922866821289e-05){
 if(i4<0.0775662362575531){
  if(i26<0.0002815862826537341){
   if(i8<1.008400321006775){
    if(i30<1.0084257125854492){
     s0+=51961.0;
     s1+=182.0;
    } else {
     s0+=70.0;
     s1+=28.0;
    }
   } else {
    if(i36<0.0007271909271366894){
     s0+=4.0;
     s1+=72.0;
    } else {
     s0+=80.0;
    }
   }
  } else {
   if(i3<-0.00030353665351867676){
    if(i38<1.1034480333328247){
     s0+=2173.0;
     s1+=341.0;
    } else {
     s0+=9180.0;
     s1+=155.0;
    }
   } else {
    if(i50<-3.376603126525879e-05){
     s0+=1425.0;
     s1+=32.0;
    } else {
     s0+=3699.0;
     s1+=1230.0;
    }
   }
  }
 } else {
  if(i12<0.004999159835278988){
   if(i46<0.06303709745407104){
    if(i67<2.4041757569648325e-05){
     s0+=36.0;
     s1+=855.0;
    } else {
     s0+=74.0;
     s1+=6.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=558.0;
     s1+=655.0;
    } else {
     s0+=835.0;
     s1+=151.0;
    }
   }
  } else {
   if(i56<-0.000103948732430581){
    if(i50<-0.0002638697624206543){
     s0+=38.0;
     s1+=14.0;
    } else {
     s0+=26.0;
     s1+=1564.0;
    }
   } else {
    if(i58<0.03560185432434082){
     s0+=36.0;
     s1+=136.0;
    } else {
     s0+=101.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i11<0.9988285303115845){
  s0+=362.0;
 } else {
  if(i18<1.0208992958068848){
   if(i26<0.00020304648205637932){
    if(i0<0.06215521693229675){
     s0+=64.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i3<0.0009459257125854492){
     s0+=298.0;
     s1+=1233.0;
    } else {
     s0+=89.0;
     s1+=3281.0;
    }
   }
  } else {
   if(i10<1.0015331506729126){
    if(i38<1.4559085369110107){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i71<6.963391206227243e-05){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=5.0;
     s1+=7129.0;
    }
   }
  }
 }
}
if(i13<1.0576403141021729){
 if(i2<0.08210253715515137){
  if(i23<1.0084667205810547){
   if(i62<-0.002236306667327881){
    if(i26<0.002464028773829341){
     s0+=1783.0;
     s1+=706.0;
    } else {
     s0+=2537.0;
     s1+=30.0;
    }
   } else {
    if(i32<1.0856719017028809){
     s0+=36689.0;
    } else {
     s0+=22950.0;
     s1+=581.0;
    }
   }
  } else {
   if(i40<0.0007062252843752503){
    if(i50<3.641843795776367e-05){
     s0+=45.0;
    } else {
     s0+=11.0;
     s1+=167.0;
    }
   } else {
    if(i45<1.1063789129257202){
     s0+=3.0;
     s1+=36.0;
    } else {
     s0+=222.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i14<-0.00036197900772094727){
   if(i59<0.001970035955309868){
    if(i46<0.07962295413017273){
     s0+=347.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    if(i81<-4.172325134277344e-07){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  } else {
   if(i34<1.0596027374267578){
    if(i75<0.029061652719974518){
     s0+=74.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i55<0.00014264474157243967){
     s0+=93.0;
     s1+=956.0;
    } else {
     s0+=88.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i32<1.4174593687057495){
  if(i16<1.0005311965942383){
   if(i3<0.00020250678062438965){
    if(i7<-1.558248004585039e-05){
     s0+=713.0;
     s1+=871.0;
    } else {
     s0+=3362.0;
     s1+=354.0;
    }
   } else {
    if(i69<1.0003361701965332){
     s0+=24.0;
     s1+=601.0;
    } else {
     s0+=87.0;
     s1+=15.0;
    }
   }
  } else {
   if(i1<3.4749507904052734e-05){
    if(i45<1.175590991973877){
     s0+=10.0;
     s1+=461.0;
    } else {
     s0+=561.0;
     s1+=390.0;
    }
   } else {
    if(i12<0.002268371870741248){
     s0+=78.0;
     s1+=122.0;
    } else {
     s0+=16.0;
     s1+=2380.0;
    }
   }
  }
 } else {
  if(i33<0.027714356780052185){
   if(i15<0.00026530027389526367){
    if(i4<0.1411432921886444){
     s0+=1189.0;
     s1+=281.0;
    } else {
     s0+=23.0;
     s1+=168.0;
    }
   } else {
    if(i40<0.002673172391951084){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=996.0;
    }
   }
  } else {
   if(i2<0.0860668420791626){
    if(i5<1.0004923343658447){
     s0+=176.0;
     s1+=58.0;
    } else {
     s0+=2.0;
     s1+=159.0;
    }
   } else {
    if(i15<-0.005451381206512451){
     s0+=14.0;
     s1+=6.0;
    } else {
     s0+=11.0;
     s1+=7699.0;
    }
   }
  }
 }
}
if(i1<3.725290298461914e-05){
 if(i23<1.0074392557144165){
  if(i6<0.08099564909934998){
   if(i2<0.08352836966514587){
    if(i62<-0.0022295713424682617){
     s0+=5615.0;
     s1+=933.0;
    } else {
     s0+=60890.0;
     s1+=703.0;
    }
   } else {
    if(i70<0.998005747795105){
     s0+=314.0;
     s1+=5.0;
    } else {
     s0+=253.0;
     s1+=465.0;
    }
   }
  } else {
   if(i47<0.058495670557022095){
    if(i62<0.007239162921905518){
     s0+=12.0;
     s1+=686.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    if(i21<0.051842231303453445){
     s0+=626.0;
     s1+=303.0;
    } else {
     s0+=82.0;
     s1+=311.0;
    }
   }
  }
 } else {
  if(i7<-3.35324220941402e-05){
   if(i32<1.2371783256530762){
    s1+=1004.0;
   } else {
    if(i0<0.09864428639411926){
     s0+=362.0;
     s1+=47.0;
    } else {
     s0+=31.0;
     s1+=520.0;
    }
   }
  } else {
   if(i8<1.0253968238830566){
    if(i0<0.0837780237197876){
     s0+=1823.0;
     s1+=111.0;
    } else {
     s0+=498.0;
     s1+=318.0;
    }
   } else {
    if(i70<1.00062894821167){
     s1+=64.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i69<0.9970542788505554){
  s0+=234.0;
 } else {
  if(i7<-4.698154953075573e-05){
   if(i5<1.0029356479644775){
    if(i26<0.00918472558259964){
     s0+=164.0;
     s1+=330.0;
    } else {
     s0+=9.0;
     s1+=390.0;
    }
   } else {
    if(i32<1.613681674003601){
     s0+=40.0;
     s1+=8966.0;
    } else {
     s0+=76.0;
     s1+=1566.0;
    }
   }
  } else {
   if(i34<1.133939266204834){
    if(i34<1.055294156074524){
     s0+=24.0;
    } else {
     s0+=5.0;
     s1+=212.0;
    }
   } else {
    if(i0<0.15457573533058167){
     s0+=167.0;
     s1+=21.0;
    } else {
     s1+=58.0;
    }
   }
  }
 }
}
if(i0<0.08135956525802612){
 if(i18<1.0058009624481201){
  if(i68<0.0017023577820509672){
   if(i2<0.0634080171585083){
    if(i24<1.0475225448608398){
     s0+=49994.0;
     s1+=117.0;
    } else {
     s0+=7100.0;
     s1+=367.0;
    }
   } else {
    if(i47<0.028123795986175537){
     s0+=133.0;
     s1+=224.0;
    } else {
     s0+=4844.0;
     s1+=211.0;
    }
   }
  } else {
   if(i3<0.0002968311309814453){
    if(i29<0.9928200840950012){
     s0+=2387.0;
     s1+=85.0;
    } else {
     s0+=2747.0;
     s1+=745.0;
    }
   } else {
    if(i15<-0.0028974413871765137){
     s0+=27.0;
     s1+=27.0;
    } else {
     s0+=58.0;
     s1+=463.0;
    }
   }
  }
 } else {
  if(i41<0.00116822705604136){
   if(i10<1.0039668083190918){
    if(i67<5.864078048034571e-06){
     s0+=255.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=69.0;
    }
   } else {
    if(i43<-3.264198312535882e-06){
     s0+=16.0;
     s1+=620.0;
    } else {
     s0+=43.0;
     s1+=3.0;
    }
   }
  } else {
   if(i71<0.0006680042715743184){
    if(i1<8.863210678100586e-05){
     s0+=1644.0;
     s1+=16.0;
    } else {
     s1+=28.0;
    }
   } else {
    s1+=82.0;
   }
  }
 }
} else {
 if(i7<-1.3797138308291323e-05){
  if(i1<5.561113357543945e-05){
   if(i54<0.002848803997039795){
    if(i79<-0.0028403387404978275){
     s0+=88.0;
     s1+=429.0;
    } else {
     s0+=22.0;
     s1+=1911.0;
    }
   } else {
    if(i39<0.03764853999018669){
     s0+=325.0;
     s1+=278.0;
    } else {
     s0+=234.0;
     s1+=1377.0;
    }
   }
  } else {
   if(i34<1.0577372312545776){
    s0+=12.0;
   } else {
    if(i55<0.00010735061368905008){
     s0+=4.0;
     s1+=8223.0;
    } else {
     s0+=55.0;
     s1+=1522.0;
    }
   }
  }
 } else {
  if(i3<-0.0008652210235595703){
   if(i32<1.639693260192871){
    if(i14<-0.00035831332206726074){
     s0+=351.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i8<0.9885612726211548){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i6<0.0715247392654419){
    if(i0<0.08402499556541443){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   } else {
    if(i47<0.05498412251472473){
     s0+=12.0;
     s1+=116.0;
    } else {
     s0+=629.0;
     s1+=164.0;
    }
   }
  }
 }
}
if(i1<3.7729740142822266e-05){
 if(i13<1.0452277660369873){
  if(i0<0.08200076222419739){
   if(i68<0.001569605665281415){
    if(i39<0.029301036149263382){
     s0+=53442.0;
     s1+=188.0;
    } else {
     s0+=4484.0;
     s1+=220.0;
    }
   } else {
    if(i42<0.0016952457372099161){
     s0+=1218.0;
     s1+=348.0;
    } else {
     s0+=2526.0;
     s1+=31.0;
    }
   }
  } else {
   if(i14<-0.0003769099712371826){
    if(i7<-3.292143810540438e-05){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=113.0;
    }
   } else {
    if(i44<0.04324731230735779){
     s0+=4.0;
     s1+=167.0;
    } else {
     s0+=85.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i2<0.08951902389526367){
   if(i32<1.1013743877410889){
    if(i73<-3.5922778351960005e-06){
     s0+=86.0;
     s1+=374.0;
    } else {
     s0+=1666.0;
     s1+=580.0;
    }
   } else {
    if(i22<0.9792162775993347){
     s0+=728.0;
     s1+=286.0;
    } else {
     s0+=4751.0;
     s1+=234.0;
    }
   }
  } else {
   if(i11<0.9985270500183105){
    if(i12<0.00608003418892622){
     s0+=389.0;
     s1+=9.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i58<0.02675837278366089){
     s0+=187.0;
     s1+=2041.0;
    } else {
     s0+=662.0;
     s1+=904.0;
    }
   }
  }
 }
} else {
 if(i5<0.9998468160629272){
  s0+=309.0;
 } else {
  if(i56<-0.0005583203164860606){
   if(i69<1.003401756286621){
    if(i19<-5.429983139038086e-05){
     s0+=2.0;
     s1+=342.0;
    } else {
     s1+=7076.0;
    }
   } else {
    if(i71<0.0006264763651415706){
     s0+=3.0;
    } else {
     s1+=132.0;
    }
   }
  } else {
   if(i5<1.0041333436965942){
    if(i0<0.06776529550552368){
     s0+=266.0;
     s1+=191.0;
    } else {
     s0+=137.0;
     s1+=869.0;
    }
   } else {
    if(i29<1.0061819553375244){
     s0+=56.0;
     s1+=429.0;
    } else {
     s0+=1.0;
     s1+=2650.0;
    }
   }
  }
 }
}
if(i17<1.9252300262451172e-05){
 if(i46<0.06522324681282043){
  if(i22<1.0107624530792236){
   if(i0<0.07980018854141235){
    if(i13<1.0401363372802734){
     s0+=57952.0;
     s1+=502.0;
    } else {
     s0+=8537.0;
     s1+=1203.0;
    }
   } else {
    if(i1<-4.8100948333740234e-05){
     s0+=141.0;
     s1+=21.0;
    } else {
     s0+=34.0;
     s1+=987.0;
    }
   }
  } else {
   if(i62<0.0036866068840026855){
    if(i34<1.1988065242767334){
     s0+=65.0;
     s1+=568.0;
    } else {
     s0+=141.0;
     s1+=154.0;
    }
   } else {
    if(i75<0.05346940457820892){
     s0+=781.0;
     s1+=333.0;
    } else {
     s0+=60.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i0<0.10788935422897339){
   if(i12<0.00526189710944891){
    if(i6<0.08825325965881348){
     s0+=702.0;
     s1+=55.0;
    } else {
     s0+=225.0;
     s1+=71.0;
    }
   } else {
    if(i53<0.056315600872039795){
     s0+=15.0;
     s1+=83.0;
    } else {
     s0+=48.0;
     s1+=3.0;
    }
   }
  } else {
   if(i33<0.03915080428123474){
    if(i64<-0.011028172448277473){
     s0+=390.0;
     s1+=66.0;
    } else {
     s0+=314.0;
     s1+=1142.0;
    }
   } else {
    if(i7<-2.6846633772947825e-05){
     s0+=2.0;
     s1+=1214.0;
    } else {
     s0+=10.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i2<0.0845000147819519){
  if(i1<3.904104232788086e-05){
   if(i54<-0.0034533441066741943){
    if(i13<1.0774409770965576){
     s0+=11.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=45.0;
    }
   } else {
    if(i45<1.1731131076812744){
     s0+=106.0;
     s1+=57.0;
    } else {
     s0+=760.0;
     s1+=35.0;
    }
   }
  } else {
   if(i34<1.0577372312545776){
    s0+=205.0;
   } else {
    if(i32<1.5682398080825806){
     s0+=72.0;
     s1+=819.0;
    } else {
     s0+=131.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i3<0.0006889104843139648){
   if(i0<0.10955208539962769){
    if(i51<0.0025021135807037354){
     s0+=10.0;
     s1+=86.0;
    } else {
     s0+=150.0;
     s1+=8.0;
    }
   } else {
    if(i32<1.082350254058838){
     s0+=9.0;
    } else {
     s0+=32.0;
     s1+=439.0;
    }
   }
  } else {
   if(i69<1.0058143138885498){
    if(i19<3.743171691894531e-05){
     s0+=66.0;
     s1+=1008.0;
    } else {
     s1+=8115.0;
    }
   } else {
    if(i64<-0.014107744209468365){
     s1+=1.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i20<1.040831446647644){
 if(i4<0.07540696859359741){
  if(i11<1.0018281936645508){
   if(i21<0.01653265580534935){
    if(i8<1.0082473754882812){
     s0+=57091.0;
     s1+=529.0;
    } else {
     s0+=221.0;
     s1+=110.0;
    }
   } else {
    if(i5<0.9970133304595947){
     s0+=6853.0;
     s1+=91.0;
    } else {
     s0+=2063.0;
     s1+=964.0;
    }
   }
  } else {
   if(i29<0.9989638328552246){
    if(i51<-0.013938069343566895){
     s0+=7.0;
     s1+=47.0;
    } else {
     s0+=384.0;
     s1+=50.0;
    }
   } else {
    if(i57<0.0005291168345138431){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=41.0;
     s1+=631.0;
    }
   }
  }
 } else {
  if(i17<-1.2606382369995117e-05){
   if(i7<-6.076941645005718e-05){
    s1+=2.0;
   } else {
    if(i59<0.003205094952136278){
     s0+=223.0;
     s1+=10.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i48<0.00023831389262340963){
    if(i46<0.046094655990600586){
     s1+=6.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i24<1.049466609954834){
     s0+=59.0;
     s1+=45.0;
    } else {
     s0+=66.0;
     s1+=2320.0;
    }
   }
  }
 }
} else {
 if(i35<1.008882999420166){
  if(i39<0.07043404877185822){
   if(i0<0.08946725726127625){
    if(i49<0.010601431131362915){
     s0+=1014.0;
     s1+=286.0;
    } else {
     s0+=1208.0;
     s1+=21.0;
    }
   } else {
    if(i12<0.0042768558487296104){
     s0+=503.0;
     s1+=204.0;
    } else {
     s0+=113.0;
     s1+=529.0;
    }
   }
  } else {
   if(i2<0.11911991238594055){
    if(i53<0.058507174253463745){
     s0+=338.0;
     s1+=267.0;
    } else {
     s0+=219.0;
     s1+=5.0;
    }
   } else {
    if(i37<0.9993206262588501){
     s0+=136.0;
     s1+=16.0;
    } else {
     s0+=149.0;
     s1+=2424.0;
    }
   }
  }
 } else {
  if(i1<3.1620264053344727e-05){
   if(i57<0.001578015391714871){
    if(i48<0.0015698163770139217){
     s0+=50.0;
     s1+=231.0;
    } else {
     s0+=417.0;
     s1+=109.0;
    }
   } else {
    if(i12<0.0025878623127937317){
     s0+=1.0;
    } else {
     s1+=302.0;
    }
   }
  } else {
   if(i4<0.0735291838645935){
    if(i41<0.002629473339766264){
     s1+=160.0;
    } else {
     s0+=50.0;
     s1+=27.0;
    }
   } else {
    if(i5<1.0038079023361206){
     s0+=10.0;
     s1+=521.0;
    } else {
     s1+=7044.0;
    }
   }
  }
 }
}
if(i5<1.0023996829986572){
 if(i2<0.08580896258354187){
  if(i48<0.00031232438050210476){
   if(i27<1.0133012533187866){
    if(i30<1.0090330839157104){
     s0+=47172.0;
     s1+=61.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i43<-8.594348400947638e-06){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   if(i29<0.993922233581543){
    if(i53<-0.03626486659049988){
     s0+=574.0;
     s1+=101.0;
    } else {
     s0+=11796.0;
     s1+=42.0;
    }
   } else {
    if(i55<3.413767626625486e-05){
     s0+=6272.0;
     s1+=589.0;
    } else {
     s0+=2972.0;
     s1+=1326.0;
    }
   }
  }
 } else {
  if(i14<-0.0004025697708129883){
   if(i50<-0.00011727213859558105){
    if(i8<0.9985525608062744){
     s0+=524.0;
    } else {
     s0+=93.0;
     s1+=2.0;
    }
   } else {
    if(i9<1.0446126461029053){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i61<0.9998685121536255){
    if(i69<0.9971526861190796){
     s0+=31.0;
    } else {
     s0+=241.0;
     s1+=2035.0;
    }
   } else {
    if(i72<-0.019363809376955032){
     s0+=630.0;
     s1+=651.0;
    } else {
     s0+=270.0;
     s1+=1020.0;
    }
   }
  }
 }
} else {
 if(i5<1.0041437149047852){
  if(i13<1.1368224620819092){
   if(i2<0.08462488651275635){
    if(i24<1.0837571620941162){
     s0+=104.0;
     s1+=276.0;
    } else {
     s0+=196.0;
     s1+=51.0;
    }
   } else {
    if(i64<-0.008909640833735466){
     s0+=37.0;
     s1+=35.0;
    } else {
     s0+=39.0;
     s1+=632.0;
    }
   }
  } else {
   if(i48<0.010147692635655403){
    if(i64<0.0021128440275788307){
     s0+=2.0;
     s1+=125.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=534.0;
   }
  }
 } else {
  if(i35<0.9966886639595032){
   if(i16<0.9985184669494629){
    s0+=10.0;
   } else {
    if(i33<0.019947655498981476){
     s0+=50.0;
     s1+=41.0;
    } else {
     s1+=829.0;
    }
   }
  } else {
   if(i1<8.636713027954102e-05){
    if(i36<0.009574992582201958){
     s1+=939.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   } else {
    s1+=7812.0;
   }
  }
 }
}
if(i0<0.08281055092811584){
 if(i1<4.190206527709961e-05){
  if(i66<-0.0013231635093688965){
   if(i32<1.1991922855377197){
    if(i50<-3.579258918762207e-05){
     s0+=1329.0;
     s1+=85.0;
    } else {
     s0+=449.0;
     s1+=712.0;
    }
   } else {
    if(i4<0.057335346937179565){
     s0+=3843.0;
     s1+=174.0;
    } else {
     s0+=138.0;
     s1+=103.0;
    }
   }
  } else {
   if(i24<1.0485899448394775){
    if(i76<-3.0603373488702346e-06){
     s1+=5.0;
    } else {
     s0+=53949.0;
     s1+=127.0;
    }
   } else {
    if(i4<0.05878245830535889){
     s0+=7709.0;
     s1+=531.0;
    } else {
     s0+=1459.0;
     s1+=524.0;
    }
   }
  }
 } else {
  if(i50<0.00013807415962219238){
   if(i59<0.000744653632864356){
    if(i49<-0.008379518985748291){
     s1+=1.0;
    } else {
     s0+=287.0;
    }
   } else {
    if(i54<0.0004736483097076416){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i34<1.1353518962860107){
    if(i12<0.00157459219917655){
     s0+=26.0;
    } else {
     s1+=591.0;
    }
   } else {
    if(i51<-0.00292050838470459){
     s0+=21.0;
     s1+=274.0;
    } else {
     s0+=164.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i7<-1.5374806025647558e-05){
  if(i19<0.0001093745231628418){
   if(i4<0.11725476384162903){
    if(i25<1.0424518585205078){
     s0+=337.0;
     s1+=1080.0;
    } else {
     s0+=98.0;
     s1+=2.0;
    }
   } else {
    if(i45<1.2680565118789673){
     s0+=146.0;
     s1+=1176.0;
    } else {
     s0+=18.0;
     s1+=1878.0;
    }
   }
  } else {
   if(i12<0.0030356126371771097){
    if(i5<1.0004924535751343){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=527.0;
    }
   } else {
    if(i73<-0.00012035860709147528){
     s0+=1.0;
    } else {
     s1+=8884.0;
    }
   }
  }
 } else {
  if(i46<0.06688421964645386){
   if(i1<-5.459785461425781e-05){
    s0+=102.0;
   } else {
    if(i45<1.0663974285125732){
     s0+=5.0;
    } else {
     s0+=12.0;
     s1+=211.0;
    }
   }
  } else {
   if(i41<0.005335341207683086){
    if(i2<0.11039483547210693){
     s0+=364.0;
     s1+=8.0;
    } else {
     s0+=477.0;
     s1+=103.0;
    }
   } else {
    if(i44<0.05592033267021179){
     s0+=2.0;
     s1+=47.0;
    } else {
     s0+=76.0;
     s1+=63.0;
    }
   }
  }
 }
}
if(i0<0.08215740323066711){
 if(i8<1.0081498622894287){
  if(i24<1.0485899448394775){
   if(i51<-0.0017104148864746094){
    if(i40<0.0003421972505748272){
     s0+=521.0;
    } else {
     s0+=245.0;
     s1+=122.0;
    }
   } else {
    if(i66<-0.0013609826564788818){
     s0+=972.0;
     s1+=127.0;
    } else {
     s0+=54358.0;
     s1+=128.0;
    }
   }
  } else {
   if(i16<1.0006518363952637){
    if(i11<0.9988812208175659){
     s0+=3587.0;
     s1+=70.0;
    } else {
     s0+=6801.0;
     s1+=897.0;
    }
   } else {
    if(i19<-0.00021886825561523438){
     s0+=1303.0;
     s1+=131.0;
    } else {
     s0+=836.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i32<1.1039612293243408){
   if(i48<0.0014903751434758306){
    if(i56<-0.0004535685293376446){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=614.0;
    }
   } else {
    s0+=31.0;
   }
  } else {
   if(i5<1.004171371459961){
    if(i21<0.03853365033864975){
     s0+=810.0;
     s1+=29.0;
    } else {
     s0+=26.0;
     s1+=32.0;
    }
   } else {
    s1+=105.0;
   }
  }
 }
} else {
 if(i29<1.000990867614746){
  if(i37<0.9988040328025818){
   if(i5<0.9969775080680847){
    s0+=393.0;
   } else {
    if(i73<-1.9047761270485353e-06){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i42<0.008252923376858234){
    if(i72<-0.01860462687909603){
     s0+=719.0;
     s1+=385.0;
    } else {
     s0+=290.0;
     s1+=1543.0;
    }
   } else {
    if(i24<1.0819685459136963){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=1689.0;
    }
   }
  }
 } else {
  if(i45<1.0570924282073975){
   s0+=8.0;
  } else {
   if(i12<0.0018941687885671854){
    if(i10<1.0089523792266846){
     s0+=99.0;
     s1+=52.0;
    } else {
     s1+=170.0;
    }
   } else {
    if(i71<0.00019556986808311194){
     s0+=34.0;
     s1+=396.0;
    } else {
     s0+=58.0;
     s1+=9763.0;
    }
   }
  }
 }
}
if(i0<0.081397145986557){
 if(i17<1.8775463104248047e-05){
  if(i13<1.0401363372802734){
   if(i68<0.002074275631457567){
    if(i11<1.0005745887756348){
     s0+=53569.0;
     s1+=215.0;
    } else {
     s0+=2543.0;
     s1+=101.0;
    }
   } else {
    if(i41<0.0017956338124349713){
     s0+=723.0;
     s1+=188.0;
    } else {
     s0+=1363.0;
     s1+=4.0;
    }
   }
  } else {
   if(i3<0.00021630525588989258){
    if(i8<0.9953365325927734){
     s0+=1667.0;
     s1+=528.0;
    } else {
     s0+=7467.0;
     s1+=541.0;
    }
   } else {
    if(i74<3.655298496596515e-05){
     s0+=9.0;
     s1+=127.0;
    } else {
     s0+=696.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i29<1.003661036491394){
   if(i62<-0.0007230043411254883){
    if(i55<0.00014861150702927262){
     s0+=35.0;
     s1+=170.0;
    } else {
     s0+=350.0;
     s1+=97.0;
    }
   } else {
    if(i29<0.9989301562309265){
     s0+=770.0;
     s1+=28.0;
    } else {
     s0+=222.0;
     s1+=75.0;
    }
   }
  } else {
   if(i71<0.00034641477395780385){
    if(i68<0.0014140979619696736){
     s0+=23.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=95.0;
    }
   } else {
    if(i61<1.0007848739624023){
     s0+=3.0;
     s1+=574.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i14<-0.00040227174758911133){
  if(i43<-1.003835041046841e-05){
   if(i24<1.050245761871338){
    if(i82<2.286874178025755e-06){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   s0+=425.0;
  }
 } else {
  if(i19<6.467103958129883e-05){
   if(i58<0.0313166081905365){
    if(i23<1.0160605907440186){
     s0+=124.0;
     s1+=2430.0;
    } else {
     s0+=146.0;
     s1+=592.0;
    }
   } else {
    if(i46<0.16732445359230042){
     s0+=816.0;
     s1+=564.0;
    } else {
     s0+=87.0;
     s1+=487.0;
    }
   }
  } else {
   if(i19<0.00010496377944946289){
    if(i55<-4.343139153206721e-06){
     s0+=48.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=505.0;
    }
   } else {
    if(i12<0.002376152900978923){
     s0+=41.0;
     s1+=267.0;
    } else {
     s0+=5.0;
     s1+=9237.0;
    }
   }
  }
 }
}
if(i1<3.463029861450195e-05){
 if(i6<0.07074698805809021){
  if(i0<0.07850030064582825){
   if(i59<0.0007821143371984363){
    if(i0<0.06930804252624512){
     s0+=59669.0;
     s1+=600.0;
    } else {
     s0+=1002.0;
     s1+=215.0;
    }
   } else {
    if(i35<0.9763761162757874){
     s0+=4177.0;
     s1+=68.0;
    } else {
     s0+=3115.0;
     s1+=860.0;
    }
   }
  } else {
   if(i34<1.0670123100280762){
    if(i3<0.00020068883895874023){
     s0+=101.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i32<1.1824603080749512){
     s0+=9.0;
     s1+=658.0;
    } else {
     s0+=66.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i0<0.10779300332069397){
   if(i47<0.04744499921798706){
    if(i3<-0.0008330643177032471){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=15.0;
     s1+=340.0;
    }
   } else {
    if(i32<1.1013743877410889){
     s0+=315.0;
     s1+=163.0;
    } else {
     s0+=915.0;
     s1+=103.0;
    }
   }
  } else {
   if(i11<0.9979477524757385){
    if(i61<0.9996968507766724){
     s0+=240.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i44<0.07825705409049988){
     s0+=68.0;
     s1+=1679.0;
    } else {
     s0+=395.0;
     s1+=548.0;
    }
   }
  }
 }
} else {
 if(i13<1.0336670875549316){
  if(i30<0.9828945398330688){
   s1+=48.0;
  } else {
   if(i33<0.010950133204460144){
    if(i69<1.000291347503662){
     s0+=430.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   } else {
    if(i50<0.00012072920799255371){
     s0+=6.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i12<0.0022362954914569855){
   if(i11<1.0018436908721924){
    if(i34<1.208042025566101){
     s0+=38.0;
     s1+=60.0;
    } else {
     s0+=129.0;
     s1+=7.0;
    }
   } else {
    if(i1<0.00010138750076293945){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=117.0;
    }
   }
  } else {
   if(i19<-7.992982864379883e-05){
    if(i57<0.005296147428452969){
     s0+=239.0;
     s1+=444.0;
    } else {
     s1+=456.0;
    }
   } else {
    if(i69<0.9955549240112305){
     s0+=6.0;
    } else {
     s0+=68.0;
     s1+=10732.0;
    }
   }
  }
 }
}
if(i5<1.002378225326538){
 if(i26<0.00031641291570849717){
  if(i22<1.0113357305526733){
   if(i59<0.000857894541695714){
    if(i30<1.0076525211334229){
     s0+=53475.0;
     s1+=167.0;
    } else {
     s0+=238.0;
     s1+=75.0;
    }
   } else {
    if(i71<7.583855767734349e-05){
     s0+=14.0;
     s1+=27.0;
    } else {
     s0+=305.0;
     s1+=48.0;
    }
   }
  } else {
   if(i5<0.9991147518157959){
    s0+=10.0;
   } else {
    if(i32<1.0821808576583862){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i13<1.0412344932556152){
   if(i41<0.0009837044635787606){
    if(i7<-8.101910680125002e-06){
     s0+=120.0;
     s1+=275.0;
    } else {
     s0+=1873.0;
     s1+=194.0;
    }
   } else {
    if(i16<1.0112806558609009){
     s0+=6889.0;
     s1+=101.0;
    } else {
     s0+=7.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<0.0852128267288208){
    if(i48<0.0018437794642522931){
     s0+=2505.0;
     s1+=1071.0;
    } else {
     s0+=3954.0;
     s1+=391.0;
    }
   } else {
    if(i37<0.9989378452301025){
     s0+=323.0;
     s1+=11.0;
    } else {
     s0+=953.0;
     s1+=3342.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005484223365783691){
  if(i0<0.06810525059700012){
   if(i43<-1.3247043170849793e-05){
    if(i35<0.9954281449317932){
     s0+=3.0;
    } else {
     s1+=26.0;
    }
   } else {
    s0+=123.0;
   }
  } else {
   if(i10<1.0042136907577515){
    if(i71<0.001223811530508101){
     s0+=11.0;
     s1+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    s1+=69.0;
   }
  }
 } else {
  if(i0<0.06888946890830994){
   if(i45<1.2160736322402954){
    if(i62<0.003388911485671997){
     s0+=1.0;
     s1+=377.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i59<0.0011302498169243336){
     s0+=150.0;
     s1+=7.0;
    } else {
     s0+=42.0;
     s1+=227.0;
    }
   }
  } else {
   if(i12<0.0019669877365231514){
    if(i48<0.0032827036920934916){
     s0+=2.0;
     s1+=102.0;
    } else {
     s0+=37.0;
     s1+=4.0;
    }
   } else {
    if(i0<0.1316651701927185){
     s0+=70.0;
     s1+=1495.0;
    } else {
     s0+=7.0;
     s1+=9009.0;
    }
   }
  }
 }
}
if(i3<0.000546872615814209){
 if(i27<1.0101500749588013){
  if(i13<1.0452277660369873){
   if(i66<-0.0012702345848083496){
    if(i78<-0.005604356527328491){
     s0+=2183.0;
     s1+=28.0;
    } else {
     s0+=2234.0;
     s1+=527.0;
    }
   } else {
    if(i34<1.0598037242889404){
     s0+=41378.0;
     s1+=2.0;
    } else {
     s0+=15496.0;
     s1+=389.0;
    }
   }
  } else {
   if(i2<0.07475808262825012){
    if(i11<0.9986560344696045){
     s0+=1469.0;
     s1+=14.0;
    } else {
     s0+=3654.0;
     s1+=907.0;
    }
   } else {
    if(i14<-0.00035840272903442383){
     s0+=240.0;
     s1+=14.0;
    } else {
     s0+=162.0;
     s1+=1364.0;
    }
   }
  }
 } else {
  if(i12<0.004166689235717058){
   if(i4<0.08787199854850769){
    if(i48<0.0007717838743701577){
     s0+=645.0;
     s1+=168.0;
    } else {
     s0+=1594.0;
     s1+=20.0;
    }
   } else {
    if(i44<0.05046212673187256){
     s0+=29.0;
     s1+=427.0;
    } else {
     s0+=723.0;
     s1+=242.0;
    }
   }
  } else {
   if(i15<-0.0009194910526275635){
    if(i39<0.07061920315027237){
     s0+=338.0;
     s1+=63.0;
    } else {
     s0+=98.0;
     s1+=267.0;
    }
   } else {
    if(i73<9.246357421943685e-07){
     s0+=13.0;
     s1+=1076.0;
    } else {
     s0+=84.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i40<0.0003575787995941937){
  s0+=187.0;
 } else {
  if(i4<0.05853426456451416){
   if(i34<1.1353518962860107){
    if(i64<-0.0020811569411307573){
     s0+=2.0;
     s1+=15.0;
    } else {
     s1+=409.0;
    }
   } else {
    if(i71<0.000611042371019721){
     s0+=180.0;
     s1+=61.0;
    } else {
     s0+=40.0;
     s1+=170.0;
    }
   }
  } else {
   if(i3<0.0008815526962280273){
    if(i0<0.12877166271209717){
     s0+=123.0;
     s1+=371.0;
    } else {
     s0+=20.0;
     s1+=858.0;
    }
   } else {
    if(i4<0.12754890322685242){
     s0+=60.0;
     s1+=1380.0;
    } else {
     s0+=6.0;
     s1+=8520.0;
    }
   }
  }
 }
}
if(i4<0.07745698094367981){
 if(i1<4.1544437408447266e-05){
  if(i80<-0.0006866157054901123){
   if(i32<1.1991922855377197){
    if(i45<1.0681204795837402){
     s0+=2251.0;
     s1+=5.0;
    } else {
     s0+=965.0;
     s1+=802.0;
    }
   } else {
    if(i7<-7.742899470031261e-05){
     s0+=552.0;
     s1+=73.0;
    } else {
     s0+=7198.0;
     s1+=149.0;
    }
   }
  } else {
   if(i7<-4.2408348235767335e-05){
    if(i32<1.2371783256530762){
     s0+=37.0;
     s1+=314.0;
    } else {
     s0+=588.0;
     s1+=49.0;
    }
   } else {
    if(i65<0.04727187752723694){
     s0+=52921.0;
     s1+=372.0;
    } else {
     s0+=4191.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i70<0.9990018606185913){
   if(i51<-0.003930151462554932){
    s1+=4.0;
   } else {
    s0+=187.0;
   }
  } else {
   if(i12<0.0020543746650218964){
    if(i17<3.629922866821289e-05){
     s0+=133.0;
     s1+=3.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i62<0.00726318359375){
     s0+=101.0;
     s1+=1029.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i12<0.0046868957579135895){
  if(i79<-0.001533383154310286){
   if(i8<1.0253968238830566){
    if(i60<0.000442874530563131){
     s0+=799.0;
     s1+=143.0;
    } else {
     s0+=90.0;
     s1+=114.0;
    }
   } else {
    if(i44<0.21180394291877747){
     s0+=2.0;
     s1+=198.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i1<-4.696846008300781e-05){
    if(i57<0.0002182414464186877){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=249.0;
     s1+=15.0;
    }
   } else {
    if(i12<0.0009000987629406154){
     s0+=151.0;
     s1+=56.0;
    } else {
     s0+=265.0;
     s1+=1917.0;
    }
   }
  }
 } else {
  if(i14<-0.0005289316177368164){
   s0+=84.0;
  } else {
   if(i18<1.0025278329849243){
    if(i33<0.012165628373622894){
     s0+=103.0;
     s1+=46.0;
    } else {
     s0+=105.0;
     s1+=2274.0;
    }
   } else {
    if(i35<0.9967970252037048){
     s0+=21.0;
     s1+=363.0;
    } else {
     s1+=8935.0;
    }
   }
  }
 }
}
if(i13<1.0527000427246094){
 if(i59<0.0007204792927950621){
  if(i10<1.004640817642212){
   if(i4<0.08163243532180786){
    if(i24<1.048384666442871){
     s0+=52399.0;
     s1+=106.0;
    } else {
     s0+=4697.0;
     s1+=383.0;
    }
   } else {
    if(i11<0.999014139175415){
     s0+=88.0;
     s1+=4.0;
    } else {
     s0+=56.0;
     s1+=276.0;
    }
   }
  } else {
   if(i41<0.0011813631281256676){
    if(i74<0.0003095860010944307){
     s0+=5.0;
     s1+=219.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i43<-1.6583620890742168e-05){
     s1+=29.0;
    } else {
     s0+=202.0;
    }
   }
  }
 } else {
  if(i29<0.9942127466201782){
   if(i6<0.08929350972175598){
    if(i10<0.9924745559692383){
     s0+=4235.0;
     s1+=50.0;
    } else {
     s0+=34.0;
     s1+=11.0;
    }
   } else {
    if(i5<0.9920569658279419){
     s0+=16.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i4<0.05550900101661682){
    if(i75<0.027788855135440826){
     s0+=783.0;
     s1+=397.0;
    } else {
     s0+=1138.0;
     s1+=104.0;
    }
   } else {
    if(i72<-0.02001245506107807){
     s0+=50.0;
     s1+=13.0;
    } else {
     s0+=78.0;
     s1+=511.0;
    }
   }
  }
 }
} else {
 if(i55<-1.5987610822776332e-05){
  if(i3<0.0009223818778991699){
   if(i60<-9.558887541061267e-05){
    if(i34<1.1707921028137207){
     s1+=278.0;
    } else {
     s0+=16.0;
     s1+=25.0;
    }
   } else {
    if(i12<0.0025351070798933506){
     s0+=90.0;
    } else {
     s1+=34.0;
    }
   }
  } else {
   if(i31<0.00013855713768862188){
    if(i6<0.04295942187309265){
     s0+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=5244.0;
   }
  }
 } else {
  if(i11<1.0015031099319458){
   if(i21<0.029029421508312225){
    if(i19<0.00010141730308532715){
     s0+=5059.0;
     s1+=1035.0;
    } else {
     s0+=215.0;
     s1+=386.0;
    }
   } else {
    if(i0<0.05299612879753113){
     s0+=476.0;
     s1+=135.0;
    } else {
     s0+=467.0;
     s1+=2507.0;
    }
   }
  } else {
   if(i48<0.009038862772285938){
    if(i69<1.0017447471618652){
     s0+=250.0;
     s1+=2122.0;
    } else {
     s0+=527.0;
     s1+=420.0;
    }
   } else {
    if(i9<1.063843011856079){
     s0+=55.0;
     s1+=103.0;
    } else {
     s0+=11.0;
     s1+=2860.0;
    }
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i5<1.0024800300598145){
  if(i59<0.0008178165298886597){
   if(i26<0.00030642509227618575){
    if(i22<1.011582374572754){
     s0+=53075.0;
     s1+=150.0;
    } else {
     s0+=11.0;
     s1+=54.0;
    }
   } else {
    if(i32<1.100754976272583){
     s0+=2285.0;
     s1+=598.0;
    } else {
     s0+=6257.0;
     s1+=108.0;
    }
   }
  } else {
   if(i38<1.1037919521331787){
    if(i38<1.0703742504119873){
     s0+=1249.0;
    } else {
     s0+=170.0;
     s1+=683.0;
    }
   } else {
    if(i52<0.010123586282134056){
     s0+=4617.0;
     s1+=112.0;
    } else {
     s0+=1149.0;
     s1+=355.0;
    }
   }
  }
 } else {
  if(i12<0.0019465598743408918){
   if(i67<3.0462376798823243e-06){
    if(i5<1.004716157913208){
     s0+=150.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i51<0.0026490092277526855){
    if(i66<0.0026794075965881348){
     s0+=53.0;
     s1+=828.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   } else {
    s0+=43.0;
   }
  }
 }
} else {
 if(i1<3.0100345611572266e-05){
  if(i58<0.03612470626831055){
   if(i11<0.9980384111404419){
    if(i7<-2.414657319604885e-05){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=192.0;
    }
   } else {
    if(i12<0.0016556414775550365){
     s0+=238.0;
     s1+=179.0;
    } else {
     s0+=189.0;
     s1+=2305.0;
    }
   }
  } else {
   if(i12<0.005838187411427498){
    if(i19<0.00010138750076293945){
     s0+=1029.0;
     s1+=280.0;
    } else {
     s0+=2.0;
     s1+=58.0;
    }
   } else {
    if(i61<1.0003547668457031){
     s0+=32.0;
     s1+=285.0;
    } else {
     s0+=48.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i45<1.0611095428466797){
   s0+=14.0;
  } else {
   if(i10<1.0071847438812256){
    if(i4<0.13700878620147705){
     s0+=171.0;
     s1+=643.0;
    } else {
     s0+=37.0;
     s1+=1714.0;
    }
   } else {
    if(i7<-4.317488128435798e-05){
     s0+=1.0;
     s1+=8763.0;
    } else {
     s0+=10.0;
     s1+=43.0;
    }
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i2<0.08391055464744568){
  if(i28<0.9740670919418335){
   if(i5<1.0008676052093506){
    if(i1<-2.2470951080322266e-05){
     s0+=2974.0;
     s1+=137.0;
    } else {
     s0+=916.0;
     s1+=384.0;
    }
   } else {
    if(i19<-0.0004850029945373535){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=37.0;
     s1+=286.0;
    }
   }
  } else {
   if(i1<4.3720006942749023e-05){
    if(i13<1.0428826808929443){
     s0+=57521.0;
     s1+=556.0;
    } else {
     s0+=6323.0;
     s1+=763.0;
    }
   } else {
    if(i10<0.9991707801818848){
     s0+=238.0;
     s1+=19.0;
    } else {
     s0+=49.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i17<-1.2755393981933594e-05){
   if(i61<0.9998055696487427){
    if(i24<1.398578405380249){
     s0+=557.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i13<1.063066005706787){
     s0+=46.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=27.0;
    }
   }
  } else {
   if(i7<-1.3791455785394646e-05){
    if(i58<0.04253321886062622){
     s0+=194.0;
     s1+=2987.0;
    } else {
     s0+=236.0;
     s1+=495.0;
    }
   } else {
    if(i79<-0.001375954132527113){
     s0+=269.0;
     s1+=33.0;
    } else {
     s0+=219.0;
     s1+=264.0;
    }
   }
  }
 }
} else {
 if(i7<-4.387145600048825e-05){
  if(i4<0.050612807273864746){
   if(i32<1.2908036708831787){
    s1+=202.0;
   } else {
    if(i25<1.002196192741394){
     s0+=1.0;
     s1+=43.0;
    } else {
     s0+=46.0;
     s1+=3.0;
    }
   }
  } else {
   if(i14<-0.00036975741386413574){
    s0+=3.0;
   } else {
    if(i29<1.0006563663482666){
     s0+=38.0;
     s1+=1075.0;
    } else {
     s0+=8.0;
     s1+=9020.0;
    }
   }
  }
 } else {
  if(i32<1.255998969078064){
   if(i12<0.0027057931292802095){
    if(i11<1.0000759363174438){
     s0+=137.0;
     s1+=171.0;
    } else {
     s0+=414.0;
     s1+=24.0;
    }
   } else {
    if(i61<1.0001916885375977){
     s0+=11.0;
     s1+=497.0;
    } else {
     s0+=15.0;
     s1+=3.0;
    }
   }
  } else {
   if(i0<0.16460901498794556){
    if(i18<0.9849181175231934){
     s0+=31.0;
     s1+=19.0;
    } else {
     s0+=613.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.00929570198059082){
     s0+=4.0;
     s1+=43.0;
    } else {
     s0+=51.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i23<1.0082120895385742){
 if(i2<0.08306422829627991){
  if(i68<0.001977464184165001){
   if(i11<1.0006043910980225){
    if(i24<1.0477051734924316){
     s0+=52030.0;
     s1+=120.0;
    } else {
     s0+=6795.0;
     s1+=453.0;
    }
   } else {
    if(i12<0.002356423996388912){
     s0+=2457.0;
     s1+=76.0;
    } else {
     s0+=1036.0;
     s1+=332.0;
    }
   }
  } else {
   if(i17<1.6748905181884766e-05){
    if(i41<0.0009841469582170248){
     s0+=1002.0;
     s1+=510.0;
    } else {
     s0+=3319.0;
     s1+=228.0;
    }
   } else {
    if(i3<0.00029963254928588867){
     s0+=212.0;
     s1+=66.0;
    } else {
     s0+=69.0;
     s1+=540.0;
    }
   }
  }
 } else {
  if(i33<0.022536750882864){
   if(i16<0.996288537979126){
    if(i8<1.0124280452728271){
     s0+=525.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   } else {
    if(i44<0.04691356420516968){
     s0+=53.0;
     s1+=928.0;
    } else {
     s0+=600.0;
     s1+=354.0;
    }
   }
  } else {
   if(i37<0.99910569190979){
    if(i7<-5.148531272425316e-05){
     s1+=6.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i7<1.0977853889926337e-05){
     s0+=100.0;
     s1+=2501.0;
    } else {
     s0+=36.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i1<3.36766242980957e-05){
  if(i10<1.00270676612854){
   if(i2<0.08366003632545471){
    if(i79<-0.00110229616984725){
     s0+=984.0;
     s1+=55.0;
    } else {
     s0+=126.0;
     s1+=75.0;
    }
   } else {
    if(i44<0.05090188980102539){
     s0+=38.0;
     s1+=330.0;
    } else {
     s0+=287.0;
     s1+=199.0;
    }
   }
  } else {
   if(i2<0.06773632764816284){
    if(i73<-7.284163075382821e-06){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=619.0;
     s1+=97.0;
    }
   } else {
    if(i57<0.0008817229536361992){
     s0+=346.0;
     s1+=353.0;
    } else {
     s0+=60.0;
     s1+=781.0;
    }
   }
  }
 } else {
  if(i3<0.0009857416152954102){
   if(i0<0.06448769569396973){
    if(i42<0.002592538483440876){
     s0+=3.0;
     s1+=56.0;
    } else {
     s0+=109.0;
    }
   } else {
    if(i0<0.09182319045066833){
     s0+=39.0;
     s1+=122.0;
    } else {
     s0+=24.0;
     s1+=967.0;
    }
   }
  } else {
   if(i8<1.0123751163482666){
    if(i5<1.0044997930526733){
     s0+=27.0;
     s1+=55.0;
    } else {
     s0+=5.0;
     s1+=730.0;
    }
   } else {
    if(i8<1.014658808708191){
     s0+=2.0;
     s1+=192.0;
    } else {
     s1+=7073.0;
    }
   }
  }
 }
}
if(i1<3.463029861450195e-05){
 if(i4<0.0828717052936554){
  if(i21<0.01676514744758606){
   if(i51<-0.0017886161804199219){
    if(i24<1.0928089618682861){
     s0+=755.0;
     s1+=224.0;
    } else {
     s0+=910.0;
     s1+=37.0;
    }
   } else {
    if(i0<0.08837053179740906){
     s0+=57485.0;
     s1+=567.0;
    } else {
     s0+=19.0;
     s1+=44.0;
    }
   }
  } else {
   if(i13<1.0398929119110107){
    if(i40<0.0009002989390864968){
     s0+=1265.0;
     s1+=234.0;
    } else {
     s0+=5703.0;
     s1+=28.0;
    }
   } else {
    if(i24<1.0920991897583008){
     s0+=1062.0;
     s1+=867.0;
    } else {
     s0+=1472.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i44<0.05413508415222168){
   if(i11<0.9981733560562134){
    s0+=78.0;
   } else {
    if(i51<0.005552500486373901){
     s0+=45.0;
     s1+=1927.0;
    } else {
     s0+=58.0;
     s1+=249.0;
    }
   }
  } else {
   if(i41<0.00532741891220212){
    if(i12<0.004997630603611469){
     s0+=896.0;
     s1+=184.0;
    } else {
     s0+=85.0;
     s1+=164.0;
    }
   } else {
    if(i42<0.010376594960689545){
     s0+=144.0;
     s1+=242.0;
    } else {
     s0+=9.0;
     s1+=372.0;
    }
   }
  }
 }
} else {
 if(i45<1.0624027252197266){
  s0+=475.0;
 } else {
  if(i48<0.0001885492238216102){
   s0+=24.0;
  } else {
   if(i7<-4.353338590590283e-05){
    if(i2<0.07555744051933289){
     s0+=169.0;
     s1+=698.0;
    } else {
     s0+=112.0;
     s1+=10920.0;
    }
   } else {
    if(i71<0.00046521297190338373){
     s0+=147.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=237.0;
    }
   }
  }
 }
}
if(i2<0.08468392491340637){
 if(i13<1.0452215671539307){
  if(i24<1.0451585054397583){
   if(i68<0.0015900211874395609){
    if(i5<1.0026986598968506){
     s0+=52523.0;
     s1+=124.0;
    } else {
     s0+=15.0;
     s1+=12.0;
    }
   } else {
    if(i32<1.0821808576583862){
     s0+=955.0;
    } else {
     s0+=575.0;
     s1+=99.0;
    }
   }
  } else {
   if(i36<0.0014610046055167913){
    if(i27<0.9848880767822266){
     s0+=229.0;
     s1+=285.0;
    } else {
     s0+=2891.0;
     s1+=342.0;
    }
   } else {
    if(i4<0.07638373970985413){
     s0+=4576.0;
     s1+=86.0;
    } else {
     s0+=31.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i1<3.2842159271240234e-05){
   if(i21<0.017013967037200928){
    if(i19<9.652972221374512e-05){
     s0+=4871.0;
     s1+=265.0;
    } else {
     s0+=175.0;
     s1+=102.0;
    }
   } else {
    if(i7<5.108642199047608e-06){
     s0+=1352.0;
     s1+=856.0;
    } else {
     s0+=573.0;
     s1+=11.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    if(i49<0.03181421756744385){
     s1+=537.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i33<0.024647463113069534){
     s0+=280.0;
     s1+=159.0;
    } else {
     s0+=2.0;
     s1+=222.0;
    }
   }
  }
 }
} else {
 if(i0<0.10640496015548706){
  if(i47<0.058077067136764526){
   if(i5<0.9935308694839478){
    if(i9<1.1272096633911133){
     s0+=218.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i32<1.0840110778808594){
     s0+=11.0;
    } else {
     s0+=80.0;
     s1+=1367.0;
    }
   }
  } else {
   if(i59<0.0033000274561345577){
    if(i3<0.00147324800491333){
     s0+=756.0;
     s1+=75.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i20<1.1009408235549927){
     s1+=18.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i81<-6.4373016357421875e-06){
   if(i29<0.9954075813293457){
    if(i70<0.9996479749679565){
     s0+=165.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i37<0.99728924036026){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  } else {
   if(i43<3.988054231740534e-06){
    if(i12<0.0016509115230292082){
     s0+=267.0;
     s1+=191.0;
    } else {
     s0+=297.0;
     s1+=12410.0;
    }
   } else {
    if(i9<1.0487902164459229){
     s1+=5.0;
    } else {
     s0+=149.0;
    }
   }
  }
 }
}
if(i10<1.0059480667114258){
 if(i4<0.07913649082183838){
  if(i13<1.040665864944458){
   if(i42<0.00033834055648185313){
    if(i31<0.0004004130023531616){
     s0+=37167.0;
     s1+=2.0;
    } else {
     s0+=294.0;
     s1+=2.0;
    }
   } else {
    if(i66<-0.0007908046245574951){
     s0+=4016.0;
     s1+=488.0;
    } else {
     s0+=17657.0;
     s1+=163.0;
    }
   }
  } else {
   if(i5<1.0012927055358887){
    if(i41<0.0011272118426859379){
     s0+=3276.0;
     s1+=867.0;
    } else {
     s0+=5780.0;
     s1+=403.0;
    }
   } else {
    if(i45<1.0570924282073975){
     s0+=105.0;
    } else {
     s0+=308.0;
     s1+=543.0;
    }
   }
  }
 } else {
  if(i11<0.9985270500183105){
   if(i39<0.7353053092956543){
    if(i0<0.07930034399032593){
     s1+=1.0;
    } else {
     s0+=501.0;
     s1+=10.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i2<0.13471201062202454){
    if(i47<0.05683034658432007){
     s0+=62.0;
     s1+=1242.0;
    } else {
     s0+=843.0;
     s1+=349.0;
    }
   } else {
    if(i60<0.0003405024763196707){
     s0+=251.0;
     s1+=545.0;
    } else {
     s0+=30.0;
     s1+=2272.0;
    }
   }
  }
 }
} else {
 if(i13<1.0466935634613037){
  if(i34<1.1224223375320435){
   s1+=88.0;
  } else {
   if(i2<0.08119630813598633){
    s0+=226.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i15<0.000950157642364502){
   if(i43<-1.30191765492782e-05){
    if(i19<5.364418029785156e-07){
     s0+=34.0;
     s1+=122.0;
    } else {
     s0+=9.0;
     s1+=621.0;
    }
   } else {
    if(i69<0.9999591112136841){
     s0+=60.0;
     s1+=156.0;
    } else {
     s0+=322.0;
     s1+=78.0;
    }
   }
  } else {
   if(i14<0.0005099177360534668){
    if(i6<0.05261602997779846){
     s0+=89.0;
     s1+=157.0;
    } else {
     s0+=42.0;
     s1+=1347.0;
    }
   } else {
    s1+=7700.0;
   }
  }
 }
}
if(i0<0.08109799027442932){
 if(i7<-5.21506299264729e-05){
  if(i42<0.004746646620333195){
   if(i37<0.9994890689849854){
    if(i25<1.0080451965332031){
     s0+=254.0;
     s1+=5.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i29<1.0009641647338867){
     s0+=166.0;
     s1+=103.0;
    } else {
     s0+=34.0;
     s1+=728.0;
    }
   }
  } else {
   if(i53<-0.05400589108467102){
    if(i76<2.577302893769229e-06){
     s0+=17.0;
     s1+=171.0;
    } else {
     s0+=65.0;
     s1+=34.0;
    }
   } else {
    if(i0<0.058473944664001465){
     s0+=1319.0;
     s1+=29.0;
    } else {
     s0+=106.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i24<1.0467959642410278){
   if(i0<0.06858852505683899){
    if(i40<0.00030425857403315604){
     s0+=33573.0;
    } else {
     s0+=19833.0;
     s1+=218.0;
    }
   } else {
    if(i28<0.9820716977119446){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=1012.0;
     s1+=34.0;
    }
   }
  } else {
   if(i74<0.00014592838124372065){
    if(i32<1.1067204475402832){
     s0+=2206.0;
     s1+=1271.0;
    } else {
     s0+=6984.0;
     s1+=302.0;
    }
   } else {
    if(i4<0.06487622857093811){
     s0+=3489.0;
     s1+=56.0;
    } else {
     s0+=228.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i11<0.9985270500183105){
  if(i36<0.0017424665857106447){
   s0+=465.0;
  } else {
   if(i39<0.029519587755203247){
    if(i43<-1.0999937330780085e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i24<1.0400927066802979){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i7<-1.3781947927782312e-05){
   if(i12<0.0031356089748442173){
    if(i28<1.0375372171401978){
     s0+=98.0;
     s1+=996.0;
    } else {
     s0+=243.0;
     s1+=151.0;
    }
   } else {
    if(i56<-0.0001178065431304276){
     s0+=125.0;
     s1+=11558.0;
    } else {
     s0+=179.0;
     s1+=998.0;
    }
   }
  } else {
   if(i12<0.0017300168983638287){
    if(i60<0.00030115857953205705){
     s0+=356.0;
     s1+=6.0;
    } else {
     s0+=54.0;
     s1+=57.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=58.0;
     s1+=305.0;
    } else {
     s0+=150.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i4<0.08135956525802612){
 if(i15<0.00103759765625){
  if(i14<0.0005123019218444824){
   if(i36<0.000333352480083704){
    if(i10<1.0029675960540771){
     s0+=35754.0;
     s1+=2.0;
    } else {
     s0+=517.0;
     s1+=5.0;
    }
   } else {
    if(i5<0.9978569746017456){
     s0+=22623.0;
     s1+=418.0;
    } else {
     s0+=9207.0;
     s1+=1663.0;
    }
   }
  } else {
   if(i5<1.0015428066253662){
    if(i48<0.015940962359309196){
     s0+=825.0;
     s1+=98.0;
    } else {
     s0+=12.0;
     s1+=24.0;
    }
   } else {
    if(i12<0.00470317155122757){
     s0+=109.0;
     s1+=23.0;
    } else {
     s0+=132.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i42<0.0017529360484331846){
   if(i5<0.9996578693389893){
    s0+=4.0;
   } else {
    if(i48<0.0001730798394419253){
     s0+=3.0;
    } else {
     s1+=674.0;
    }
   }
  } else {
   if(i16<1.0058131217956543){
    if(i14<0.0006723999977111816){
     s0+=209.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=88.0;
   }
  }
 }
} else {
 if(i11<0.9985275268554688){
  if(i55<0.00019289688498247415){
   if(i1<-3.463029861450195e-05){
    s0+=377.0;
   } else {
    if(i36<0.0016456798184663057){
     s0+=65.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i45<1.4989960193634033){
    s0+=3.0;
   } else {
    if(i10<0.9699889421463013){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i44<0.046846210956573486){
   if(i57<0.0003000063879881054){
    if(i36<0.0005850238376297057){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=299.0;
    }
   } else {
    if(i31<0.00015008091577328742){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=39.0;
     s1+=7937.0;
    }
   }
  } else {
   if(i41<0.006140701472759247){
    if(i71<0.0003641792281996459){
     s0+=673.0;
     s1+=361.0;
    } else {
     s0+=320.0;
     s1+=956.0;
    }
   } else {
    if(i21<0.036239802837371826){
     s0+=92.0;
     s1+=549.0;
    } else {
     s0+=20.0;
     s1+=3631.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i9<1.0436272621154785){
  if(i13<1.0433766841888428){
   if(i62<-0.0020244717597961426){
    if(i63<0.11275430023670197){
     s0+=2149.0;
     s1+=524.0;
    } else {
     s0+=2393.0;
     s1+=4.0;
    }
   } else {
    if(i4<0.08471304178237915){
     s0+=56639.0;
     s1+=296.0;
    } else {
     s0+=67.0;
     s1+=71.0;
    }
   }
  } else {
   if(i80<-0.0004756748676300049){
    if(i31<0.00467562023550272){
     s0+=632.0;
     s1+=517.0;
    } else {
     s0+=358.0;
     s1+=8.0;
    }
   } else {
    if(i16<1.0006918907165527){
     s0+=2264.0;
     s1+=225.0;
    } else {
     s0+=226.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i1<9.715557098388672e-06){
   if(i14<-0.00036278367042541504){
    if(i79<-0.008738124743103981){
     s1+=4.0;
    } else {
     s0+=1322.0;
     s1+=25.0;
    }
   } else {
    if(i55<3.2591116905678064e-05){
     s0+=2350.0;
     s1+=430.0;
    } else {
     s0+=1472.0;
     s1+=1593.0;
    }
   }
  } else {
   if(i2<0.10967686772346497){
    if(i29<0.9992539882659912){
     s0+=370.0;
     s1+=64.0;
    } else {
     s0+=434.0;
     s1+=454.0;
    }
   } else {
    if(i49<0.020960599184036255){
     s0+=15.0;
     s1+=692.0;
    } else {
     s0+=149.0;
     s1+=392.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019894546130672097){
  if(i4<0.06190735101699829){
   if(i30<1.0088210105895996){
    s0+=188.0;
   } else {
    if(i39<0.012209797278046608){
     s1+=4.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   s1+=12.0;
  }
 } else {
  if(i5<1.004073143005371){
   if(i2<0.11729338765144348){
    if(i72<-0.01582590863108635){
     s0+=95.0;
     s1+=10.0;
    } else {
     s0+=186.0;
     s1+=531.0;
    }
   } else {
    if(i12<0.0023876791819930077){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=19.0;
     s1+=1175.0;
    }
   }
  } else {
   if(i55<0.00011022015678463504){
    if(i33<0.0019338864367455244){
     s0+=3.0;
     s1+=63.0;
    } else {
     s1+=8279.0;
    }
   } else {
    if(i73<-8.213716682803351e-06){
     s0+=10.0;
     s1+=1250.0;
    } else {
     s0+=29.0;
     s1+=80.0;
    }
   }
  }
 }
}
if(i2<0.0844140350818634){
 if(i1<4.184246063232422e-05){
  if(i65<0.0426798090338707){
   if(i8<1.0081498622894287){
    if(i24<1.0487183332443237){
     s0+=49936.0;
     s1+=116.0;
    } else {
     s0+=5241.0;
     s1+=385.0;
    }
   } else {
    if(i63<0.01595243066549301){
     s0+=6.0;
     s1+=118.0;
    } else {
     s0+=122.0;
     s1+=24.0;
    }
   }
  } else {
   if(i42<0.0018870453350245953){
    if(i32<1.0850647687911987){
     s0+=2611.0;
    } else {
     s0+=2161.0;
     s1+=1182.0;
    }
   } else {
    if(i49<-0.03594410419464111){
     s0+=725.0;
     s1+=148.0;
    } else {
     s0+=7910.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i40<0.0004962342791259289){
   s0+=188.0;
  } else {
   if(i36<0.0015467345947399735){
    s1+=481.0;
   } else {
    if(i57<0.0015980945900082588){
     s0+=128.0;
     s1+=28.0;
    } else {
     s0+=104.0;
     s1+=426.0;
    }
   }
  }
 }
} else {
 if(i1<1.0907649993896484e-05){
  if(i7<-1.2009702913928777e-05){
   if(i72<-0.016390057280659676){
    if(i41<0.005233751609921455){
     s0+=211.0;
     s1+=149.0;
    } else {
     s0+=79.0;
     s1+=493.0;
    }
   } else {
    if(i24<1.049512505531311){
     s0+=38.0;
     s1+=2.0;
    } else {
     s0+=89.0;
     s1+=1108.0;
    }
   }
  } else {
   if(i37<0.9993038177490234){
    s0+=557.0;
   } else {
    if(i9<1.0423246622085571){
     s0+=43.0;
     s1+=122.0;
    } else {
     s0+=484.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i16<1.0029364824295044){
   if(i60<-3.528098022798076e-05){
    if(i73<-3.483449836494401e-05){
     s0+=3.0;
    } else {
     s0+=18.0;
     s1+=1431.0;
    }
   } else {
    if(i7<-6.518339068861678e-05){
     s0+=48.0;
     s1+=811.0;
    } else {
     s0+=285.0;
     s1+=380.0;
    }
   }
  } else {
   if(i56<-0.00012135271390434355){
    if(i1<3.6776065826416016e-05){
     s0+=22.0;
     s1+=243.0;
    } else {
     s0+=11.0;
     s1+=8267.0;
    }
   } else {
    if(i21<0.014956943690776825){
     s0+=51.0;
     s1+=93.0;
    } else {
     s0+=29.0;
     s1+=828.0;
    }
   }
  }
 }
}
if(i4<0.07739865779876709){
 if(i3<0.0006017684936523438){
  if(i42<0.0003551722038537264){
   if(i20<1.039496898651123){
    if(i22<1.0111949443817139){
     s0+=39320.0;
     s1+=34.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i10<1.0029338598251343){
     s0+=478.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   }
  } else {
   if(i49<-0.0038253962993621826){
    if(i36<0.0013515126192942262){
     s0+=1645.0;
     s1+=744.0;
    } else {
     s0+=2776.0;
     s1+=246.0;
    }
   } else {
    if(i0<0.06922271847724915){
     s0+=23518.0;
     s1+=677.0;
    } else {
     s0+=1074.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i11<1.0018912553787231){
   if(i32<1.2392117977142334){
    if(i71<0.001022733747959137){
     s1+=148.0;
    } else {
     s0+=74.0;
    }
   } else {
    if(i32<1.2648893594741821){
     s0+=134.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  } else {
   if(i29<1.001577377319336){
    if(i51<-0.0032321512699127197){
     s0+=14.0;
     s1+=88.0;
    } else {
     s0+=87.0;
     s1+=38.0;
    }
   } else {
    if(i14<0.0005868673324584961){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=15.0;
     s1+=765.0;
    }
   }
  }
 }
} else {
 if(i43<2.0882291664747754e-06){
  if(i0<0.09899947047233582){
   if(i44<0.04504716396331787){
    if(i49<0.013926297426223755){
     s0+=40.0;
     s1+=830.0;
    } else {
     s0+=75.0;
     s1+=11.0;
    }
   } else {
    if(i46<0.06285467743873596){
     s0+=46.0;
     s1+=50.0;
    } else {
     s0+=603.0;
     s1+=66.0;
    }
   }
  } else {
   if(i3<0.0004684925079345703){
    if(i37<0.9988981485366821){
     s0+=137.0;
     s1+=13.0;
    } else {
     s0+=519.0;
     s1+=2478.0;
    }
   } else {
    if(i5<1.0038368701934814){
     s0+=104.0;
     s1+=1510.0;
    } else {
     s0+=23.0;
     s1+=8934.0;
    }
   }
  }
 } else {
  if(i69<1.0002702474594116){
   if(i6<0.05890956521034241){
    if(i76<9.367432539875153e-06){
     s1+=11.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i46<0.05898076295852661){
     s1+=10.0;
    } else {
     s0+=372.0;
     s1+=3.0;
    }
   }
  } else {
   if(i39<0.1146434023976326){
    s0+=8.0;
   } else {
    s1+=13.0;
   }
  }
 }
}
if(i0<0.08297458291053772){
 if(i14<0.0005766749382019043){
  if(i9<1.0401519536972046){
   if(i68<0.001719954190775752){
    if(i5<1.0025479793548584){
     s0+=58532.0;
     s1+=514.0;
    } else {
     s0+=71.0;
     s1+=50.0;
    }
   } else {
    if(i36<0.0014381192158907652){
     s0+=1699.0;
     s1+=553.0;
    } else {
     s0+=2472.0;
     s1+=44.0;
    }
   }
  } else {
   if(i17<-1.0073184967041016e-05){
    if(i13<1.0402154922485352){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=1669.0;
     s1+=47.0;
    }
   } else {
    if(i7<-4.302400702727027e-05){
     s0+=183.0;
     s1+=359.0;
    } else {
     s0+=4044.0;
     s1+=589.0;
    }
   }
  }
 } else {
  if(i69<1.0021698474884033){
   if(i15<-0.0008135437965393066){
    if(i75<0.15622073411941528){
     s0+=248.0;
     s1+=119.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i40<0.00038456189213320613){
     s0+=78.0;
    } else {
     s0+=15.0;
     s1+=759.0;
    }
   }
  } else {
   if(i53<-0.07721295952796936){
    s1+=29.0;
   } else {
    if(i45<1.1480928659439087){
     s1+=9.0;
    } else {
     s0+=524.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i15<0.00024759769439697266){
  if(i42<0.010467801243066788){
   if(i21<0.020606063306331635){
    if(i58<0.03130841255187988){
     s0+=232.0;
     s1+=344.0;
    } else {
     s0+=602.0;
     s1+=89.0;
    }
   } else {
    if(i37<0.9988032579421997){
     s0+=218.0;
     s1+=2.0;
    } else {
     s0+=351.0;
     s1+=2068.0;
    }
   }
  } else {
   if(i12<0.001737150945700705){
    s0+=7.0;
   } else {
    if(i6<0.1003628671169281){
     s0+=15.0;
     s1+=101.0;
    } else {
     s1+=1102.0;
    }
   }
  }
 } else {
  if(i73<7.352914508373942e-07){
   if(i3<0.0001378953456878662){
    if(i57<0.00030288632842712104){
     s0+=62.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=177.0;
    }
   } else {
    if(i34<1.054610252380371){
     s0+=6.0;
    } else {
     s0+=79.0;
     s1+=10033.0;
    }
   }
  } else {
   s0+=16.0;
  }
 }
}
if(i7<-6.216902693267912e-05){
 if(i3<-0.0001246333122253418){
  if(i13<1.0941665172576904){
   if(i35<1.0042715072631836){
    if(i13<1.0460412502288818){
     s0+=934.0;
     s1+=6.0;
    } else {
     s0+=139.0;
     s1+=21.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i59<0.006432154681533575){
    if(i9<1.0166761875152588){
     s0+=2.0;
    } else {
     s1+=208.0;
    }
   } else {
    if(i43<-3.22551277349703e-05){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=27.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i0<0.013407260179519653){
   if(i29<1.004676342010498){
    if(i18<0.9669130444526672){
     s0+=152.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=6.0;
    }
   } else {
    if(i74<0.00016350422811228782){
     s1+=27.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i19<-0.00038740038871765137){
    if(i13<1.103467583656311){
     s0+=107.0;
     s1+=22.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i0<0.08442392945289612){
     s0+=133.0;
     s1+=796.0;
    } else {
     s0+=63.0;
     s1+=11033.0;
    }
   }
  }
 }
} else {
 if(i48<0.00035218807170167565){
  if(i22<1.010456919670105){
   if(i60<0.0003125505172647536){
    if(i18<1.0063247680664062){
     s0+=48336.0;
     s1+=77.0;
    } else {
     s0+=93.0;
     s1+=61.0;
    }
   } else {
    if(i1<-4.1991472244262695e-05){
     s0+=116.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   }
  } else {
   if(i33<0.0016179699450731277){
    s0+=1.0;
   } else {
    s1+=55.0;
   }
  }
 } else {
  if(i20<1.0335493087768555){
   if(i2<0.07738339900970459){
    if(i62<-0.0007650256156921387){
     s0+=5009.0;
     s1+=899.0;
    } else {
     s0+=10800.0;
     s1+=279.0;
    }
   } else {
    if(i69<0.9975676536560059){
     s0+=221.0;
    } else {
     s0+=187.0;
     s1+=791.0;
    }
   }
  } else {
   if(i32<1.255998969078064){
    if(i1<8.761882781982422e-06){
     s0+=1768.0;
     s1+=1050.0;
    } else {
     s0+=319.0;
     s1+=985.0;
    }
   } else {
    if(i4<0.13634467124938965){
     s0+=2419.0;
     s1+=139.0;
    } else {
     s0+=353.0;
     s1+=384.0;
    }
   }
  }
 }
}
if(i10<1.0058752298355103){
 if(i26<0.0003352218773216009){
  if(i4<0.09062856435775757){
   if(i9<1.0576179027557373){
    if(i30<1.0087099075317383){
     s0+=54500.0;
     s1+=356.0;
    } else {
     s0+=110.0;
     s1+=74.0;
    }
   } else {
    if(i73<-2.6432244339957833e-06){
     s0+=2.0;
     s1+=47.0;
    } else {
     s0+=33.0;
    }
   }
  } else {
   if(i11<0.9991031885147095){
    if(i66<0.0018494129180908203){
     s0+=17.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=80.0;
   }
  }
 } else {
  if(i1<1.0907649993896484e-05){
   if(i29<0.9938888549804688){
    if(i9<1.0735540390014648){
     s0+=7843.0;
     s1+=133.0;
    } else {
     s0+=639.0;
     s1+=409.0;
    }
   } else {
    if(i24<1.0428757667541504){
     s0+=1238.0;
     s1+=81.0;
    } else {
     s0+=4798.0;
     s1+=2412.0;
    }
   }
  } else {
   if(i5<1.0023688077926636){
    if(i37<1.0003526210784912){
     s0+=186.0;
     s1+=721.0;
    } else {
     s0+=733.0;
     s1+=701.0;
    }
   } else {
    if(i2<0.13191434741020203){
     s0+=155.0;
     s1+=625.0;
    } else {
     s0+=12.0;
     s1+=1239.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005164742469787598){
  if(i2<0.0789041519165039){
   if(i48<0.0008071011397987604){
    if(i41<0.0012432239018380642){
     s0+=2.0;
     s1+=91.0;
    } else {
     s0+=154.0;
    }
   } else {
    if(i72<-0.008434612303972244){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=346.0;
     s1+=1.0;
    }
   }
  } else {
   if(i69<0.9998837113380432){
    if(i73<1.0809425248226034e-06){
     s0+=7.0;
     s1+=461.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i33<0.024322815239429474){
     s0+=131.0;
     s1+=117.0;
    } else {
     s0+=2.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i17<2.2232532501220703e-05){
   if(i61<0.9999164342880249){
    if(i9<1.0264936685562134){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=1431.0;
    }
   } else {
    if(i55<-6.525117896671873e-06){
     s0+=147.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=173.0;
    }
   }
  } else {
   if(i45<1.2590415477752686){
    if(i16<0.9976963400840759){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=1707.0;
    }
   } else {
    s1+=6108.0;
   }
  }
 }
}
if(i4<0.07786303758621216){
 if(i3<0.0006022751331329346){
  if(i34<1.0557184219360352){
   s0+=43024.0;
  } else {
   if(i34<1.1031841039657593){
    if(i62<-0.0024030208587646484){
     s0+=462.0;
     s1+=630.0;
    } else {
     s0+=7363.0;
     s1+=1071.0;
    }
   } else {
    if(i52<0.008205058053135872){
     s0+=15945.0;
     s1+=122.0;
    } else {
     s0+=2015.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i5<1.004202127456665){
   if(i71<0.00046574146836064756){
    if(i36<0.001453491160646081){
     s1+=35.0;
    } else {
     s0+=189.0;
     s1+=16.0;
    }
   } else {
    if(i36<0.00039275275776162744){
     s0+=53.0;
    } else {
     s0+=76.0;
     s1+=293.0;
    }
   }
  } else {
   if(i10<0.9965699911117554){
    if(i33<0.020709935575723648){
     s0+=24.0;
     s1+=23.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i69<0.9975759983062744){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=702.0;
    }
   }
  }
 }
} else {
 if(i3<0.00010448694229125977){
  if(i11<0.9985203742980957){
   if(i5<0.9970239400863647){
    if(i45<1.4989960193634033){
     s0+=470.0;
    } else {
     s0+=16.0;
     s1+=6.0;
    }
   } else {
    if(i71<0.0005881137913092971){
     s0+=29.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   }
  } else {
   if(i7<-1.1408530554035679e-05){
    if(i53<0.04272332787513733){
     s0+=75.0;
     s1+=883.0;
    } else {
     s0+=249.0;
     s1+=565.0;
    }
   } else {
    if(i27<0.9920985698699951){
     s0+=21.0;
     s1+=102.0;
    } else {
     s0+=547.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i1<5.0961971282958984e-05){
   if(i61<0.9998854398727417){
    if(i74<0.00036919210106134415){
     s0+=21.0;
     s1+=1395.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i21<0.03067035600543022){
     s0+=330.0;
     s1+=356.0;
    } else {
     s0+=55.0;
     s1+=567.0;
    }
   }
  } else {
   if(i4<0.1316651701927185){
    if(i32<1.594835877418518){
     s0+=17.0;
     s1+=1067.0;
    } else {
     s0+=52.0;
     s1+=61.0;
    }
   } else {
    if(i45<1.178355097770691){
     s0+=3.0;
     s1+=157.0;
    } else {
     s0+=6.0;
     s1+=8679.0;
    }
   }
  }
 }
}
if(i2<0.08391568064689636){
 if(i29<1.0052785873413086){
  if(i26<0.00028051616391167045){
   if(i8<1.0094983577728271){
    if(i30<1.0091331005096436){
     s0+=52054.0;
     s1+=203.0;
    } else {
     s0+=42.0;
     s1+=30.0;
    }
   } else {
    if(i36<0.0007271909271366894){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=59.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<1.0669231414794922e-05){
    if(i34<1.1036889553070068){
     s0+=5128.0;
     s1+=1055.0;
    } else {
     s0+=10359.0;
     s1+=240.0;
    }
   } else {
    if(i68<0.005507288966327906){
     s0+=921.0;
     s1+=450.0;
    } else {
     s0+=84.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i43<-1.3814169506076723e-05){
   if(i5<0.9998857378959656){
    s0+=10.0;
   } else {
    if(i20<1.0794851779937744){
     s0+=1.0;
     s1+=634.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i45<1.0985562801361084){
    s1+=24.0;
   } else {
    if(i65<0.13424646854400635){
     s0+=342.0;
    } else {
     s0+=7.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i7<-1.5773175618960522e-05){
  if(i0<0.13196426630020142){
   if(i64<-0.0051193758845329285){
    if(i7<-0.00012403770233504474){
     s0+=6.0;
     s1+=53.0;
    } else {
     s0+=422.0;
     s1+=93.0;
    }
   } else {
    if(i29<0.9942806959152222){
     s0+=42.0;
     s1+=79.0;
    } else {
     s0+=66.0;
     s1+=2401.0;
    }
   }
  } else {
   if(i81<0.00012731552124023438){
    if(i12<0.0025628593284636736){
     s0+=94.0;
     s1+=210.0;
    } else {
     s0+=42.0;
     s1+=11007.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i73<2.517342181818094e-06){
   if(i5<0.996038556098938){
    if(i39<0.4348002076148987){
     s0+=325.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i60<0.00018678569176699966){
     s0+=408.0;
     s1+=106.0;
    } else {
     s0+=211.0;
     s1+=375.0;
    }
   }
  } else {
   s0+=304.0;
  }
 }
}
if(i6<0.07123780250549316){
 if(i16<1.0032527446746826){
  if(i26<0.00030562852043658495){
   if(i2<0.08386039733886719){
    if(i18<1.0068840980529785){
     s0+=52942.0;
     s1+=208.0;
    } else {
     s0+=295.0;
     s1+=93.0;
    }
   } else {
    if(i16<0.9982591867446899){
     s0+=108.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   }
  } else {
   if(i1<9.715557098388672e-06){
    if(i45<1.1812903881072998){
     s0+=5225.0;
     s1+=1409.0;
    } else {
     s0+=8558.0;
     s1+=158.0;
    }
   } else {
    if(i0<0.08008790016174316){
     s0+=771.0;
     s1+=467.0;
    } else {
     s0+=12.0;
     s1+=390.0;
    }
   }
  }
 } else {
  if(i29<1.001197099685669){
   if(i1<1.8417835235595703e-05){
    if(i56<-0.00041753772529773414){
     s0+=6.0;
     s1+=11.0;
    } else {
     s0+=626.0;
     s1+=10.0;
    }
   } else {
    if(i49<-0.0014241039752960205){
     s0+=34.0;
     s1+=154.0;
    } else {
     s0+=90.0;
     s1+=48.0;
    }
   }
  } else {
   if(i73<-5.116484317113645e-06){
    if(i29<1.006178379058838){
     s0+=45.0;
     s1+=294.0;
    } else {
     s1+=1229.0;
    }
   } else {
    if(i37<1.0002777576446533){
     s0+=20.0;
     s1+=60.0;
    } else {
     s0+=102.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004839301109313965){
  if(i60<0.0010058836778625846){
   if(i0<0.10848399996757507){
    if(i42<0.0020632108207792044){
     s0+=474.0;
     s1+=439.0;
    } else {
     s0+=673.0;
     s1+=76.0;
    }
   } else {
    if(i50<-0.00021523237228393555){
     s0+=252.0;
    } else {
     s0+=480.0;
     s1+=1570.0;
    }
   }
  } else {
   if(i0<0.09136912226676941){
    if(i27<0.9785783290863037){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=53.0;
     s1+=3.0;
    }
   } else {
    if(i41<0.005335979629307985){
     s0+=12.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=516.0;
    }
   }
  }
 } else {
  if(i7<-4.750408697873354e-05){
   if(i29<1.0061008930206299){
    if(i33<0.008376806043088436){
     s0+=49.0;
     s1+=35.0;
    } else {
     s0+=53.0;
     s1+=2316.0;
    }
   } else {
    if(i15<-0.00017893314361572266){
     s0+=1.0;
     s1+=163.0;
    } else {
     s1+=7327.0;
    }
   }
  } else {
   if(i12<0.003682773094624281){
    if(i37<1.0003573894500732){
     s0+=21.0;
     s1+=21.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i36<0.005109403282403946){
     s1+=143.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  }
 }
}
if(i19<0.00011485815048217773){
 if(i3<0.0005484223365783691){
  if(i0<0.08502185344696045){
   if(i13<1.0410068035125732){
    if(i66<-0.0013231337070465088){
     s0+=3863.0;
     s1+=386.0;
    } else {
     s0+=55296.0;
     s1+=230.0;
    }
   } else {
    if(i45<1.103413462638855){
     s0+=3055.0;
     s1+=1002.0;
    } else {
     s0+=6491.0;
     s1+=410.0;
    }
   }
  } else {
   if(i33<0.04032256454229355){
    if(i53<0.07262909412384033){
     s0+=539.0;
     s1+=1711.0;
    } else {
     s0+=810.0;
     s1+=264.0;
    }
   } else {
    if(i24<1.0940723419189453){
     s0+=8.0;
    } else {
     s0+=12.0;
     s1+=779.0;
    }
   }
  }
 } else {
  if(i45<1.0646642446517944){
   s0+=175.0;
  } else {
   if(i69<0.9976881742477417){
    if(i40<0.015397489070892334){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=24.0;
    }
   } else {
    if(i71<0.00017284636851400137){
     s0+=51.0;
     s1+=62.0;
    } else {
     s0+=192.0;
     s1+=2109.0;
    }
   }
  }
 }
} else {
 if(i48<0.000293740420602262){
  if(i4<0.05760771036148071){
   if(i18<1.009236454963684){
    if(i3<0.0004918575286865234){
     s0+=341.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   } else {
    if(i74<5.211440293351188e-05){
     s1+=22.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i61<1.0001208782196045){
    s0+=40.0;
   } else {
    s1+=55.0;
   }
  }
 } else {
  if(i3<-4.607439041137695e-05){
   if(i24<1.3143563270568848){
    s0+=95.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i31<0.00016248287283815444){
    if(i57<0.0010123389074578881){
     s0+=139.0;
     s1+=6.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i16<1.005610466003418){
     s0+=166.0;
     s1+=3084.0;
    } else {
     s1+=6713.0;
    }
   }
  }
 }
}
if(i29<1.004004955291748){
 if(i5<1.0023716688156128){
  if(i42<0.0003823087317869067){
   if(i18<1.0073856115341187){
    if(i34<1.0596027374267578){
     s0+=38854.0;
    } else {
     s0+=2230.0;
     s1+=96.0;
    }
   } else {
    s1+=40.0;
   }
  } else {
   if(i24<1.0486011505126953){
    if(i66<-0.001013636589050293){
     s0+=1092.0;
     s1+=217.0;
    } else {
     s0+=15463.0;
     s1+=110.0;
    }
   } else {
    if(i6<0.06072813272476196){
     s0+=10104.0;
     s1+=1725.0;
    } else {
     s0+=2215.0;
     s1+=3124.0;
    }
   }
  }
 } else {
  if(i13<1.1223218441009521){
   if(i6<0.0503181517124176){
    if(i54<-0.0008935928344726562){
     s0+=48.0;
     s1+=100.0;
    } else {
     s0+=110.0;
     s1+=23.0;
    }
   } else {
    if(i16<0.9975889921188354){
     s0+=37.0;
     s1+=2.0;
    } else {
     s0+=61.0;
     s1+=562.0;
    }
   }
  } else {
   if(i4<0.07065519690513611){
    if(i7<-4.039199120597914e-05){
     s1+=48.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=1196.0;
   }
  }
 }
} else {
 if(i12<0.001456370111554861){
  if(i67<-1.2362368579488248e-05){
   s1+=52.0;
  } else {
   if(i55<-3.1932817364577204e-05){
    s1+=37.0;
   } else {
    if(i55<1.3703212061955128e-05){
     s0+=380.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i2<0.057666778564453125){
   if(i57<0.0016235392540693283){
    if(i50<0.00018075108528137207){
     s0+=121.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=57.0;
    }
   } else {
    if(i52<0.0028274066280573606){
     s0+=7.0;
    } else {
     s0+=6.0;
     s1+=222.0;
    }
   }
  } else {
   if(i0<0.12546730041503906){
    if(i72<-0.017886927351355553){
     s0+=57.0;
     s1+=19.0;
    } else {
     s0+=53.0;
     s1+=1561.0;
    }
   } else {
    if(i10<1.005746603012085){
     s0+=6.0;
     s1+=753.0;
    } else {
     s1+=7405.0;
    }
   }
  }
 }
}
if(i6<0.07239711284637451){
 if(i5<1.0024797916412354){
  if(i9<1.0401114225387573){
   if(i66<-0.0013009607791900635){
    if(i34<1.1792536973953247){
     s0+=1877.0;
     s1+=723.0;
    } else {
     s0+=3095.0;
     s1+=79.0;
    }
   } else {
    if(i30<1.0069135427474976){
     s0+=57334.0;
     s1+=415.0;
    } else {
     s0+=435.0;
     s1+=87.0;
    }
   }
  } else {
   if(i21<0.02179664745926857){
    if(i19<0.00011163949966430664){
     s0+=4842.0;
     s1+=480.0;
    } else {
     s0+=61.0;
     s1+=183.0;
    }
   } else {
    if(i5<0.9981103539466858){
     s0+=622.0;
     s1+=104.0;
    } else {
     s0+=383.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i26<0.0001881267235148698){
   if(i38<1.2388319969177246){
    if(i38<1.0713427066802979){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   } else {
    s0+=67.0;
   }
  } else {
   if(i53<0.033301472663879395){
    if(i12<0.0021283149253576994){
     s0+=69.0;
     s1+=41.0;
    } else {
     s0+=85.0;
     s1+=1854.0;
    }
   } else {
    if(i35<0.998170018196106){
     s0+=36.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i0<0.11749055981636047){
  if(i47<0.058368563652038574){
   if(i49<0.01364964246749878){
    if(i26<0.00026646419428288937){
     s0+=58.0;
     s1+=32.0;
    } else {
     s0+=65.0;
     s1+=973.0;
    }
   } else {
    if(i2<0.09204438328742981){
     s0+=125.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=38.0;
    }
   }
  } else {
   if(i64<-0.004341387189924717){
    if(i68<0.014340009540319443){
     s0+=751.0;
     s1+=29.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i16<1.001250982284546){
     s0+=316.0;
     s1+=123.0;
    } else {
     s0+=11.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i71<0.0001353733823634684){
   if(i43<-2.497305786164361e-06){
    if(i72<-0.03496977686882019){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=177.0;
    }
   } else {
    if(i33<0.013631019741296768){
     s0+=132.0;
     s1+=5.0;
    } else {
     s0+=40.0;
     s1+=45.0;
    }
   }
  } else {
   if(i36<0.00154977198690176){
    if(i7<-1.1613376955210697e-05){
     s0+=20.0;
     s1+=619.0;
    } else {
     s0+=266.0;
     s1+=14.0;
    }
   } else {
    if(i12<0.0038716234266757965){
     s0+=137.0;
     s1+=509.0;
    } else {
     s0+=43.0;
     s1+=9951.0;
    }
   }
  }
 }
}
if(i4<0.08189880847930908){
 if(i67<-7.91123602539301e-06){
  if(i26<0.00017894848133437335){
   s0+=2.0;
  } else {
   if(i67<-8.427697139268275e-06){
    if(i35<0.9715822339057922){
     s0+=1.0;
    } else {
     s1+=442.0;
    }
   } else {
    if(i51<-0.004671573638916016){
     s0+=2.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i1<3.832578659057617e-05){
   if(i63<0.018550656735897064){
    if(i22<1.0095628499984741){
     s0+=51326.0;
     s1+=323.0;
    } else {
     s0+=227.0;
     s1+=170.0;
    }
   } else {
    if(i0<0.06624934077262878){
     s0+=16313.0;
     s1+=1159.0;
    } else {
     s0+=1290.0;
     s1+=675.0;
    }
   }
  } else {
   if(i13<1.0339545011520386){
    if(i59<0.0008143832674250007){
     s0+=297.0;
     s1+=4.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i62<0.003446340560913086){
     s0+=140.0;
     s1+=736.0;
    } else {
     s0+=120.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i50<-0.0002504289150238037){
  if(i15<0.0007754266262054443){
   if(i40<0.011671021580696106){
    if(i11<0.9980583190917969){
     s0+=337.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   s1+=19.0;
  }
 } else {
  if(i29<1.0021934509277344){
   if(i7<-1.200800670630997e-05){
    if(i51<0.004017233848571777){
     s0+=71.0;
     s1+=2044.0;
    } else {
     s0+=462.0;
     s1+=1539.0;
    }
   } else {
    if(i12<0.0019003606867045164){
     s0+=389.0;
     s1+=76.0;
    } else {
     s0+=178.0;
     s1+=229.0;
    }
   }
  } else {
   if(i2<0.133265882730484){
    if(i49<0.018243074417114258){
     s0+=23.0;
     s1+=1107.0;
    } else {
     s0+=62.0;
     s1+=10.0;
    }
   } else {
    if(i7<-1.9228627934353426e-05){
     s0+=2.0;
     s1+=8404.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i4<0.07800492644309998){
 if(i17<1.8775463104248047e-05){
  if(i62<-0.0022163987159729004){
   if(i0<0.05399709939956665){
    if(i3<-0.0002779364585876465){
     s0+=3898.0;
     s1+=191.0;
    } else {
     s0+=1226.0;
     s1+=366.0;
    }
   } else {
    if(i48<0.0017833972815424204){
     s0+=79.0;
     s1+=193.0;
    } else {
     s0+=302.0;
     s1+=91.0;
    }
   }
  } else {
   if(i23<1.0067014694213867){
    if(i39<0.03268168494105339){
     s0+=56492.0;
     s1+=223.0;
    } else {
     s0+=3507.0;
     s1+=429.0;
    }
   } else {
    if(i48<0.0009250626899302006){
     s0+=792.0;
     s1+=408.0;
    } else {
     s0+=1625.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i64<-0.0029823435470461845){
   if(i29<1.001976728439331){
    if(i13<1.1282727718353271){
     s0+=623.0;
     s1+=28.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i49<0.01583784818649292){
     s0+=4.0;
     s1+=39.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.0022359390277415514){
    if(i11<1.0019803047180176){
     s0+=282.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=38.0;
    }
   } else {
    if(i5<1.001218318939209){
     s0+=338.0;
     s1+=79.0;
    } else {
     s0+=107.0;
     s1+=1037.0;
    }
   }
  }
 }
} else {
 if(i19<3.1888484954833984e-05){
  if(i17<-1.4781951904296875e-05){
   if(i50<-0.00014224648475646973){
    if(i43<-9.5623418019386e-06){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=416.0;
    }
   } else {
    if(i63<0.04276132583618164){
     s0+=38.0;
    } else {
     s0+=6.0;
     s1+=14.0;
    }
   }
  } else {
   if(i21<0.021910931915044785){
    if(i49<0.011188924312591553){
     s0+=155.0;
     s1+=429.0;
    } else {
     s0+=668.0;
     s1+=144.0;
    }
   } else {
    if(i4<0.11158892512321472){
     s0+=254.0;
     s1+=657.0;
    } else {
     s0+=135.0;
     s1+=2430.0;
    }
   }
  }
 } else {
  if(i11<0.9986620545387268){
   s0+=42.0;
  } else {
   if(i3<0.0001367330551147461){
    if(i55<-4.748389983433299e-07){
     s0+=79.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=184.0;
    }
   } else {
    if(i33<0.009802194312214851){
     s0+=56.0;
     s1+=678.0;
    } else {
     s0+=22.0;
     s1+=9308.0;
    }
   }
  }
 }
}
if(i3<0.0005478262901306152){
 if(i0<0.08543512225151062){
  if(i0<0.06633859872817993){
   if(i51<-0.0015814900398254395){
    if(i41<0.00105279590934515){
     s0+=1062.0;
     s1+=437.0;
    } else {
     s0+=2824.0;
     s1+=231.0;
    }
   } else {
    if(i53<-0.03553694486618042){
     s0+=337.0;
     s1+=74.0;
    } else {
     s0+=62193.0;
     s1+=618.0;
    }
   }
  } else {
   if(i52<0.002097494900226593){
    if(i21<0.01899108663201332){
     s0+=2014.0;
     s1+=105.0;
    } else {
     s0+=472.0;
     s1+=174.0;
    }
   } else {
    if(i66<0.0029188990592956543){
     s0+=209.0;
     s1+=431.0;
    } else {
     s0+=202.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i37<0.9988065958023071){
   if(i36<0.0017222859896719456){
    s0+=365.0;
   } else {
    if(i11<0.9970868825912476){
     s0+=4.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i44<0.050078392028808594){
    if(i58<0.03556108474731445){
     s0+=58.0;
     s1+=2045.0;
    } else {
     s0+=21.0;
     s1+=87.0;
    }
   } else {
    if(i21<0.029720287770032883){
     s0+=747.0;
     s1+=338.0;
    } else {
     s0+=149.0;
     s1+=772.0;
    }
   }
  }
 }
} else {
 if(i11<0.9987671971321106){
  s0+=135.0;
 } else {
  if(i12<0.0022362954914569855){
   if(i76<-4.335617632023059e-06){
    s1+=110.0;
   } else {
    if(i7<-6.555067375302315e-05){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=174.0;
     s1+=10.0;
    }
   }
  } else {
   if(i15<-0.000546872615814209){
    if(i33<0.023361094295978546){
     s0+=191.0;
     s1+=168.0;
    } else {
     s0+=3.0;
     s1+=693.0;
    }
   } else {
    if(i0<0.048145800828933716){
     s0+=24.0;
     s1+=154.0;
    } else {
     s0+=41.0;
     s1+=10462.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i21<0.016617346554994583){
  if(i51<-0.0018195509910583496){
   if(i3<0.00023701786994934082){
    if(i60<0.0004112352035008371){
     s0+=730.0;
     s1+=44.0;
    } else {
     s0+=631.0;
     s1+=188.0;
    }
   } else {
    if(i3<0.000548243522644043){
     s0+=13.0;
     s1+=25.0;
    } else {
     s0+=5.0;
     s1+=134.0;
    }
   }
  } else {
   if(i11<1.0018665790557861){
    if(i22<1.0116736888885498){
     s0+=55087.0;
     s1+=433.0;
    } else {
     s0+=26.0;
     s1+=43.0;
    }
   } else {
    if(i1<3.039836883544922e-05){
     s0+=90.0;
     s1+=11.0;
    } else {
     s0+=14.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i0<0.06927695870399475){
   if(i55<9.018888522405177e-05){
    if(i50<-3.4749507904052734e-05){
     s0+=1495.0;
     s1+=35.0;
    } else {
     s0+=858.0;
     s1+=527.0;
    }
   } else {
    if(i19<-0.00014916062355041504){
     s0+=6126.0;
     s1+=82.0;
    } else {
     s0+=9.0;
     s1+=37.0;
    }
   }
  } else {
   if(i1<-4.655122756958008e-05){
    if(i51<0.0020778775215148926){
     s0+=44.0;
     s1+=18.0;
    } else {
     s0+=208.0;
     s1+=3.0;
    }
   } else {
    if(i44<0.04255545139312744){
     s0+=11.0;
     s1+=841.0;
    } else {
     s0+=88.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i16<1.000713586807251){
  if(i8<1.0126827955245972){
   if(i7<-1.6161255189217627e-05){
    if(i14<-0.00036263465881347656){
     s0+=284.0;
     s1+=7.0;
    } else {
     s0+=841.0;
     s1+=1275.0;
    }
   } else {
    if(i12<0.005904344376176596){
     s0+=3335.0;
     s1+=237.0;
    } else {
     s0+=7.0;
     s1+=30.0;
    }
   }
  } else {
   if(i60<-0.00012138953024987131){
    if(i19<1.9073486328125e-06){
     s0+=19.0;
     s1+=44.0;
    } else {
     s1+=816.0;
    }
   } else {
    if(i69<0.9995138645172119){
     s0+=22.0;
     s1+=276.0;
    } else {
     s0+=172.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i1<3.808736801147461e-05){
   if(i2<0.1020287275314331){
    if(i34<1.101383090019226){
     s0+=78.0;
     s1+=259.0;
    } else {
     s0+=598.0;
     s1+=123.0;
    }
   } else {
    if(i57<0.0012107042130082846){
     s0+=130.0;
     s1+=230.0;
    } else {
     s0+=38.0;
     s1+=688.0;
    }
   }
  } else {
   if(i43<-1.3152179235476069e-05){
    if(i24<1.0629007816314697){
     s0+=21.0;
     s1+=26.0;
    } else {
     s0+=178.0;
     s1+=9870.0;
    }
   } else {
    if(i34<1.2015411853790283){
     s1+=88.0;
    } else {
     s0+=78.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i4<0.07806527614593506){
 if(i17<1.8775463104248047e-05){
  if(i31<0.00029642967274412513){
   if(i68<0.0015338261146098375){
    if(i22<1.0090851783752441){
     s0+=54261.0;
     s1+=289.0;
    } else {
     s0+=313.0;
     s1+=132.0;
    }
   } else {
    if(i62<-0.004269063472747803){
     s0+=56.0;
     s1+=74.0;
    } else {
     s0+=1224.0;
     s1+=92.0;
    }
   }
  } else {
   if(i0<0.06635221838951111){
    if(i1<-3.2007694244384766e-05){
     s0+=6372.0;
     s1+=180.0;
    } else {
     s0+=4556.0;
     s1+=748.0;
    }
   } else {
    if(i47<0.039703309535980225){
     s0+=65.0;
     s1+=361.0;
    } else {
     s0+=832.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i29<1.0027731657028198){
   if(i24<1.064502239227295){
    if(i0<0.07948362827301025){
     s0+=692.0;
     s1+=20.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i52<0.015459192916750908){
     s0+=607.0;
     s1+=166.0;
    } else {
     s0+=38.0;
     s1+=155.0;
    }
   }
  } else {
   if(i57<0.0008929554605856538){
    if(i1<9.965896606445312e-05){
     s0+=55.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i49<0.009289354085922241){
     s0+=17.0;
     s1+=827.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i1<3.36766242980957e-05){
  if(i46<0.06137087941169739){
   if(i41<0.0006739315576851368){
    if(i82<1.29039210605697e-06){
     s0+=2.0;
     s1+=60.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i32<1.5754120349884033){
     s0+=24.0;
     s1+=1162.0;
    } else {
     s0+=13.0;
     s1+=26.0;
    }
   }
  } else {
   if(i7<-1.3823204426444136e-05){
    if(i2<0.10345196723937988){
     s0+=313.0;
     s1+=148.0;
    } else {
     s0+=269.0;
     s1+=1745.0;
    }
   } else {
    if(i41<0.00532741891220212){
     s0+=901.0;
     s1+=82.0;
    } else {
     s0+=73.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i7<-6.913485412951559e-05){
   if(i36<0.00048725458327680826){
    s0+=11.0;
   } else {
    if(i32<1.613681674003601){
     s0+=13.0;
     s1+=8617.0;
    } else {
     s0+=60.0;
     s1+=1561.0;
    }
   }
  } else {
   if(i53<0.08842766284942627){
    if(i67<1.3843425222148653e-05){
     s0+=19.0;
     s1+=480.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   } else {
    if(i2<0.17630547285079956){
     s0+=67.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=105.0;
    }
   }
  }
 }
}
if(i29<1.00413179397583){
 if(i7<-6.290916644502431e-05){
  if(i2<0.09573391079902649){
   if(i54<-0.00026991963386535645){
    if(i67<3.7401092413347214e-05){
     s0+=156.0;
     s1+=285.0;
    } else {
     s0+=157.0;
     s1+=22.0;
    }
   } else {
    if(i0<0.061828792095184326){
     s0+=889.0;
     s1+=11.0;
    } else {
     s0+=159.0;
     s1+=62.0;
    }
   }
  } else {
   if(i45<1.0762633085250854){
    s0+=15.0;
   } else {
    if(i44<0.06091028451919556){
     s0+=8.0;
     s1+=1503.0;
    } else {
     s0+=80.0;
     s1+=850.0;
    }
   }
  }
 } else {
  if(i26<0.0003149877011310309){
   if(i10<1.0042229890823364){
    if(i66<-0.0017223656177520752){
     s0+=81.0;
     s1+=71.0;
    } else {
     s0+=53329.0;
     s1+=254.0;
    }
   } else {
    if(i0<0.06564271450042725){
     s0+=318.0;
     s1+=43.0;
    } else {
     s0+=11.0;
     s1+=80.0;
    }
   }
  } else {
   if(i4<0.0755770206451416){
    if(i41<0.0011357873445376754){
     s0+=3677.0;
     s1+=1249.0;
    } else {
     s0+=10127.0;
     s1+=317.0;
    }
   } else {
    if(i11<0.9985275268554688){
     s0+=417.0;
     s1+=16.0;
    } else {
     s0+=1186.0;
     s1+=2354.0;
    }
   }
  }
 }
} else {
 if(i12<0.00132820347789675){
  if(i6<0.0700964629650116){
   if(i0<0.07880228757858276){
    if(i15<0.0019128918647766113){
     s0+=353.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i0<0.09904319047927856){
    s0+=9.0;
   } else {
    if(i51<0.004192769527435303){
     s1+=55.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i16<0.994803249835968){
   if(i80<0.0024153590202331543){
    if(i25<1.0230401754379272){
     s0+=82.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=43.0;
   }
  } else {
   if(i14<0.0003985762596130371){
    if(i19<0.00021463632583618164){
     s0+=190.0;
     s1+=294.0;
    } else {
     s0+=5.0;
     s1+=709.0;
    }
   } else {
    if(i15<-0.00017893314361572266){
     s0+=27.0;
     s1+=318.0;
    } else {
     s0+=9.0;
     s1+=8404.0;
    }
   }
  }
 }
}
if(i1<3.7729740142822266e-05){
 if(i24<1.0495078563690186){
  if(i49<-0.005039483308792114){
   if(i32<1.0821808576583862){
    s0+=1031.0;
   } else {
    if(i67<1.9307972252136096e-05){
     s0+=43.0;
     s1+=130.0;
    } else {
     s0+=248.0;
     s1+=10.0;
    }
   }
  } else {
   if(i23<1.0087990760803223){
    if(i4<0.06108444929122925){
     s0+=52501.0;
     s1+=152.0;
    } else {
     s0+=2633.0;
     s1+=105.0;
    }
   } else {
    if(i1<1.704692840576172e-05){
     s0+=44.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i13<1.0417430400848389){
   if(i2<0.07655644416809082){
    if(i42<0.0013786682393401861){
     s0+=1751.0;
     s1+=271.0;
    } else {
     s0+=3855.0;
     s1+=31.0;
    }
   } else {
    if(i76<7.965638360474259e-06){
     s0+=37.0;
     s1+=168.0;
    } else {
     s0+=59.0;
     s1+=5.0;
    }
   }
  } else {
   if(i4<0.07536250352859497){
    if(i32<1.1013743877410889){
     s0+=1320.0;
     s1+=906.0;
    } else {
     s0+=5180.0;
     s1+=388.0;
    }
   } else {
    if(i49<0.012680470943450928){
     s0+=359.0;
     s1+=2076.0;
    } else {
     s0+=1170.0;
     s1+=1269.0;
    }
   }
  }
 }
} else {
 if(i48<0.00027985696215182543){
  if(i23<1.0089094638824463){
   if(i30<1.0083122253417969){
    if(i80<-0.00016993284225463867){
     s1+=1.0;
    } else {
     s0+=303.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   s1+=24.0;
  }
 } else {
  if(i12<0.0023686012718826532){
   if(i10<1.011061191558838){
    if(i27<0.9836688041687012){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=180.0;
     s1+=4.0;
    }
   } else {
    s1+=186.0;
   }
  } else {
   if(i29<1.000957727432251){
    if(i13<1.122573733329773){
     s0+=224.0;
     s1+=430.0;
    } else {
     s0+=6.0;
     s1+=866.0;
    }
   } else {
    if(i69<1.005753517150879){
     s0+=51.0;
     s1+=10175.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i4<0.07868939638137817){
 if(i11<1.0016260147094727){
  if(i26<0.00030670006526634097){
   if(i30<1.0088374614715576){
    if(i11<1.000554084777832){
     s0+=50424.0;
     s1+=153.0;
    } else {
     s0+=2818.0;
     s1+=90.0;
    }
   } else {
    if(i24<1.0600557327270508){
     s0+=18.0;
     s1+=88.0;
    } else {
     s0+=97.0;
     s1+=15.0;
    }
   }
  } else {
   if(i5<0.9978666305541992){
    if(i38<1.1037919521331787){
     s0+=1450.0;
     s1+=188.0;
    } else {
     s0+=8383.0;
     s1+=103.0;
    }
   } else {
    if(i12<0.0034119528718292713){
     s0+=4593.0;
     s1+=787.0;
    } else {
     s0+=451.0;
     s1+=631.0;
    }
   }
  }
 } else {
  if(i5<1.0024199485778809){
   if(i52<0.013191236183047295){
    if(i34<1.1476316452026367){
     s0+=206.0;
     s1+=79.0;
    } else {
     s0+=627.0;
     s1+=12.0;
    }
   } else {
    if(i37<1.0017406940460205){
     s0+=11.0;
     s1+=85.0;
    } else {
     s0+=21.0;
     s1+=8.0;
    }
   }
  } else {
   if(i29<1.0047661066055298){
    if(i32<1.5876636505126953){
     s0+=87.0;
     s1+=255.0;
    } else {
     s0+=51.0;
     s1+=5.0;
    }
   } else {
    if(i57<0.00038058258360251784){
     s0+=15.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=748.0;
    }
   }
  }
 }
} else {
 if(i3<0.00010448694229125977){
  if(i37<0.9987901449203491){
   if(i20<1.3863475322723389){
    if(i65<0.0930519700050354){
     s0+=132.0;
     s1+=1.0;
    } else {
     s0+=321.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i12<0.0017048442969098687){
    if(i15<-0.0004337728023529053){
     s0+=191.0;
     s1+=134.0;
    } else {
     s0+=321.0;
     s1+=26.0;
    }
   } else {
    if(i0<0.092325359582901){
     s0+=202.0;
     s1+=150.0;
    } else {
     s0+=187.0;
     s1+=1460.0;
    }
   }
  }
 } else {
  if(i0<0.13196426630020142){
   if(i51<0.004667997360229492){
    if(i42<0.000258014042628929){
     s0+=8.0;
    } else {
     s0+=70.0;
     s1+=1733.0;
    }
   } else {
    if(i34<1.1005322933197021){
     s1+=26.0;
    } else {
     s0+=273.0;
     s1+=28.0;
    }
   }
  } else {
   if(i12<0.0031400262378156185){
    if(i72<-0.04355407506227493){
     s0+=97.0;
     s1+=7.0;
    } else {
     s0+=11.0;
     s1+=316.0;
    }
   } else {
    if(i16<1.0015323162078857){
     s0+=18.0;
     s1+=1286.0;
    } else {
     s0+=1.0;
     s1+=8735.0;
    }
   }
  }
 }
}
if(i2<0.0836833119392395){
 if(i17<2.2113323211669922e-05){
  if(i9<1.0401476621627808){
   if(i49<-0.006746768951416016){
    if(i36<0.0013515126192942262){
     s0+=914.0;
     s1+=427.0;
    } else {
     s0+=1472.0;
     s1+=48.0;
    }
   } else {
    if(i60<0.0002414049522485584){
     s0+=51932.0;
     s1+=251.0;
    } else {
     s0+=7874.0;
     s1+=374.0;
    }
   }
  } else {
   if(i38<1.1037919521331787){
    if(i3<0.0002059638500213623){
     s0+=1587.0;
     s1+=419.0;
    } else {
     s0+=138.0;
     s1+=291.0;
    }
   } else {
    if(i12<0.0071775889955461025){
     s0+=4058.0;
     s1+=178.0;
    } else {
     s0+=75.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i16<1.002853512763977){
   if(i70<1.0003818273544312){
    if(i59<0.001589160063304007){
     s0+=352.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i1<1.990795135498047e-05){
     s0+=256.0;
     s1+=36.0;
    } else {
     s0+=107.0;
     s1+=126.0;
    }
   }
  } else {
   if(i54<0.0003927648067474365){
    if(i19<-5.429983139038086e-05){
     s0+=97.0;
     s1+=162.0;
    } else {
     s0+=7.0;
     s1+=569.0;
    }
   } else {
    if(i10<1.0007734298706055){
     s0+=169.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i1<1.1026859283447266e-05){
  if(i37<0.9991060495376587){
   if(i24<1.398578405380249){
    if(i37<0.9988040328025818){
     s0+=552.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=10.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i49<0.017139017581939697){
    if(i0<0.08414876461029053){
     s0+=94.0;
     s1+=41.0;
    } else {
     s0+=252.0;
     s1+=1462.0;
    }
   } else {
    if(i36<0.0011154764797538519){
     s0+=280.0;
     s1+=4.0;
    } else {
     s0+=288.0;
     s1+=472.0;
    }
   }
  }
 } else {
  if(i7<-4.791959509020671e-05){
   if(i38<1.0696141719818115){
    s0+=12.0;
   } else {
    if(i35<1.002203345298767){
     s0+=158.0;
     s1+=2049.0;
    } else {
     s0+=6.0;
     s1+=9510.0;
    }
   }
  } else {
   if(i12<0.004847648553550243){
    if(i13<1.073185682296753){
     s0+=38.0;
     s1+=224.0;
    } else {
     s0+=256.0;
     s1+=70.0;
    }
   } else {
    if(i55<0.00012986645742785186){
     s0+=1.0;
     s1+=348.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   }
  }
 }
}
if(i6<0.07126259803771973){
 if(i1<3.916025161743164e-05){
  if(i9<1.0410068035125732){
   if(i0<0.07865238189697266){
    if(i66<-0.0012906789779663086){
     s0+=4983.0;
     s1+=685.0;
    } else {
     s0+=58142.0;
     s1+=382.0;
    }
   } else {
    if(i36<0.0004232186183799058){
     s0+=78.0;
    } else {
     s0+=58.0;
     s1+=234.0;
    }
   }
  } else {
   if(i8<1.0108309984207153){
    if(i4<0.07861673831939697){
     s0+=5049.0;
     s1+=791.0;
    } else {
     s0+=25.0;
     s1+=272.0;
    }
   } else {
    if(i24<1.094369649887085){
     s0+=3.0;
     s1+=291.0;
    } else {
     s0+=301.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i40<0.0004864413058385253){
   s0+=262.0;
  } else {
   if(i12<0.0016092330915853381){
    if(i38<1.2388319969177246){
     s1+=13.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i49<0.011861234903335571){
     s0+=132.0;
     s1+=1808.0;
    } else {
     s0+=49.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i12<0.0048148175701498985){
  if(i15<0.0006978809833526611){
   if(i58<0.03484782576560974){
    if(i66<0.004177272319793701){
     s0+=225.0;
     s1+=701.0;
    } else {
     s0+=303.0;
     s1+=78.0;
    }
   } else {
    if(i70<0.9983227252960205){
     s0+=350.0;
     s1+=13.0;
    } else {
     s0+=747.0;
     s1+=230.0;
    }
   }
  } else {
   if(i15<0.0014224052429199219){
    if(i34<1.1976436376571655){
     s0+=3.0;
     s1+=112.0;
    } else {
     s0+=66.0;
     s1+=39.0;
    }
   } else {
    s1+=627.0;
   }
  }
 } else {
  if(i37<0.9988099932670593){
   if(i75<0.26573890447616577){
    s0+=79.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i35<0.98977130651474){
    if(i33<0.024713709950447083){
     s0+=184.0;
     s1+=209.0;
    } else {
     s0+=45.0;
     s1+=1289.0;
    }
   } else {
    if(i14<-0.00042998790740966797){
     s0+=5.0;
    } else {
     s0+=42.0;
     s1+=9149.0;
    }
   }
  }
 }
}
if(i0<0.08522835373878479){
 if(i7<-5.6474553275620565e-05){
  if(i54<0.0002835392951965332){
   if(i13<1.0388109683990479){
    if(i35<1.002753496170044){
     s0+=277.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=13.0;
    }
   } else {
    if(i67<4.941205588693265e-06){
     s0+=23.0;
     s1+=622.0;
    } else {
     s0+=215.0;
     s1+=345.0;
    }
   }
  } else {
   if(i5<1.002357006072998){
    if(i9<1.1112480163574219){
     s0+=1176.0;
     s1+=19.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i34<1.171011209487915){
     s0+=1.0;
     s1+=84.0;
    } else {
     s0+=65.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i62<-0.0022163987159729004){
   if(i0<0.05259031057357788){
    if(i42<0.0017015209887176752){
     s0+=1402.0;
     s1+=467.0;
    } else {
     s0+=2968.0;
     s1+=94.0;
    }
   } else {
    if(i54<0.003185451030731201){
     s0+=108.0;
     s1+=348.0;
    } else {
     s0+=288.0;
     s1+=12.0;
    }
   }
  } else {
   if(i24<1.0486011505126953){
    if(i24<1.042891263961792){
     s0+=50332.0;
     s1+=53.0;
    } else {
     s0+=3657.0;
     s1+=68.0;
    }
   } else {
    if(i40<0.0013163252733647823){
     s0+=4393.0;
     s1+=952.0;
    } else {
     s0+=4728.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i12<0.004636975470930338){
  if(i31<0.002256433479487896){
   if(i54<0.002929508686065674){
    if(i5<0.9962320327758789){
     s0+=38.0;
     s1+=2.0;
    } else {
     s0+=60.0;
     s1+=1358.0;
    }
   } else {
    if(i0<0.11787018179893494){
     s0+=237.0;
     s1+=111.0;
    } else {
     s0+=26.0;
     s1+=285.0;
    }
   }
  } else {
   if(i49<-0.0023298561573028564){
    if(i50<-0.00013631582260131836){
     s0+=43.0;
    } else {
     s0+=12.0;
     s1+=238.0;
    }
   } else {
    if(i40<0.003860795870423317){
     s0+=635.0;
     s1+=24.0;
    } else {
     s0+=179.0;
     s1+=188.0;
    }
   }
  }
 } else {
  if(i11<0.9982175827026367){
   s0+=93.0;
  } else {
   if(i2<0.13113391399383545){
    if(i44<0.056427061557769775){
     s0+=23.0;
     s1+=1420.0;
    } else {
     s0+=136.0;
     s1+=92.0;
    }
   } else {
    if(i33<0.011453025974333286){
     s0+=12.0;
     s1+=324.0;
    } else {
     s0+=4.0;
     s1+=9904.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i5<1.0024747848510742){
  if(i60<0.00028185732662677765){
   if(i9<1.0405423641204834){
    if(i63<0.02644713968038559){
     s0+=51599.0;
     s1+=178.0;
    } else {
     s0+=2985.0;
     s1+=273.0;
    }
   } else {
    if(i0<0.09092828631401062){
     s0+=1419.0;
     s1+=158.0;
    } else {
     s0+=8.0;
     s1+=95.0;
    }
   }
  } else {
   if(i57<0.0009129342506639659){
    if(i13<1.0379663705825806){
     s0+=1396.0;
     s1+=222.0;
    } else {
     s0+=444.0;
     s1+=482.0;
    }
   } else {
    if(i45<1.2240469455718994){
     s0+=1374.0;
     s1+=408.0;
    } else {
     s0+=5929.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i34<1.1270583868026733){
   if(i61<1.0002939701080322){
    s1+=452.0;
   } else {
    s0+=3.0;
   }
  } else {
   if(i17<2.2590160369873047e-05){
    if(i12<0.002469378989189863){
     s0+=105.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i77<0.00398681778460741){
     s0+=6.0;
     s1+=274.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018714666366577){
  if(i4<0.09205827116966248){
   if(i38<1.1037919521331787){
    if(i33<0.012481161393225193){
     s0+=1005.0;
     s1+=185.0;
    } else {
     s0+=68.0;
     s1+=389.0;
    }
   } else {
    if(i7<-4.907723268843256e-05){
     s0+=321.0;
     s1+=207.0;
    } else {
     s0+=3002.0;
     s1+=138.0;
    }
   }
  } else {
   if(i11<0.9988356828689575){
    if(i41<0.007858087308704853){
     s0+=307.0;
     s1+=7.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i12<0.0017418635543435812){
     s0+=378.0;
     s1+=111.0;
    } else {
     s0+=311.0;
     s1+=2252.0;
    }
   }
  }
 } else {
  if(i6<0.06798040866851807){
   if(i0<0.06951513886451721){
    if(i7<-4.400812758831307e-05){
     s0+=121.0;
     s1+=355.0;
    } else {
     s0+=124.0;
     s1+=47.0;
    }
   } else {
    if(i51<0.006284534931182861){
     s0+=14.0;
     s1+=971.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<0.11708465218544006){
    if(i53<0.04942464828491211){
     s0+=36.0;
     s1+=567.0;
    } else {
     s0+=94.0;
     s1+=9.0;
    }
   } else {
    if(i3<0.0007748603820800781){
     s0+=20.0;
     s1+=586.0;
    } else {
     s0+=13.0;
     s1+=8591.0;
    }
   }
  }
 }
}
if(i29<1.0040111541748047){
 if(i31<0.0003148145042359829){
  if(i0<0.08263814449310303){
   if(i59<0.0007542538223788142){
    if(i30<1.0073213577270508){
     s0+=54994.0;
     s1+=290.0;
    } else {
     s0+=744.0;
     s1+=157.0;
    }
   } else {
    if(i61<0.9998009204864502){
     s0+=403.0;
     s1+=235.0;
    } else {
     s0+=644.0;
     s1+=28.0;
    }
   }
  } else {
   if(i38<1.0724589824676514){
    if(i34<1.0581047534942627){
     s0+=50.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i48<0.00027130948728881776){
     s0+=33.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=322.0;
    }
   }
  }
 } else {
  if(i3<0.00014632940292358398){
   if(i6<0.07075154781341553){
    if(i4<0.07606875896453857){
     s0+=10904.0;
     s1+=1042.0;
    } else {
     s0+=62.0;
     s1+=274.0;
    }
   } else {
    if(i41<0.005440520588308573){
     s0+=1241.0;
     s1+=782.0;
    } else {
     s0+=167.0;
     s1+=796.0;
    }
   }
  } else {
   if(i75<0.11427576839923859){
    if(i6<0.11398929357528687){
     s0+=960.0;
     s1+=1055.0;
    } else {
     s0+=105.0;
     s1+=884.0;
    }
   } else {
    if(i61<1.0006893873214722){
     s0+=16.0;
     s1+=1347.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i12<0.0014300714246928692){
  if(i2<0.07461994886398315){
   if(i43<-1.5682593584642746e-05){
    s1+=2.0;
   } else {
    if(i10<1.0123581886291504){
     s0+=395.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i64<-0.004014370962977409){
    if(i7<-6.79410295560956e-05){
     s1+=8.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i3<0.00031828880310058594){
     s0+=2.0;
    } else {
     s1+=87.0;
    }
   }
  }
 } else {
  if(i2<0.05915933847427368){
   if(i11<1.0012059211730957){
    if(i32<1.1386182308197021){
     s1+=14.0;
    } else {
     s0+=173.0;
     s1+=2.0;
    }
   } else {
    if(i62<0.0035985708236694336){
     s0+=6.0;
     s1+=297.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i15<0.0013995170593261719){
    if(i5<0.9988552331924438){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=1631.0;
    }
   } else {
    s1+=7920.0;
   }
  }
 }
}
if(i18<1.0066330432891846){
 if(i4<0.08148184418678284){
  if(i65<0.0444912314414978){
   if(i16<1.0036910772323608){
    if(i66<-0.001779317855834961){
     s0+=205.0;
     s1+=185.0;
    } else {
     s0+=55537.0;
     s1+=395.0;
    }
   } else {
    if(i49<-0.0004995465278625488){
     s0+=5.0;
     s1+=70.0;
    } else {
     s0+=46.0;
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.9943428039550781){
    if(i1<2.682209014892578e-05){
     s0+=7073.0;
     s1+=149.0;
    } else {
     s0+=72.0;
     s1+=40.0;
    }
   } else {
    if(i2<0.05616796016693115){
     s0+=3942.0;
     s1+=768.0;
    } else {
     s0+=1022.0;
     s1+=778.0;
    }
   }
  }
 } else {
  if(i47<0.06088680028915405){
   if(i17<-1.7702579498291016e-05){
    s0+=76.0;
   } else {
    if(i34<1.0526313781738281){
     s0+=9.0;
    } else {
     s0+=51.0;
     s1+=2327.0;
    }
   }
  } else {
   if(i61<0.9995812177658081){
    if(i33<0.04634959250688553){
     s0+=266.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i4<0.12386459112167358){
     s0+=546.0;
     s1+=161.0;
    } else {
     s0+=151.0;
     s1+=1093.0;
    }
   }
  }
 }
} else {
 if(i10<1.0096920728683472){
  if(i4<0.05904632806777954){
   if(i34<1.0778491497039795){
    if(i50<0.000398784875869751){
     s1+=133.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i71<0.0006392098730430007){
     s0+=1116.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   }
  } else {
   if(i7<-2.7995705750072375e-05){
    if(i57<0.0017840554937720299){
     s0+=247.0;
     s1+=808.0;
    } else {
     s0+=3.0;
     s1+=1279.0;
    }
   } else {
    if(i74<9.037720155902207e-05){
     s0+=456.0;
     s1+=42.0;
    } else {
     s0+=107.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i0<0.05847156047821045){
   if(i11<1.0016303062438965){
    if(i41<0.0014447120483964682){
     s1+=5.0;
    } else {
     s0+=111.0;
    }
   } else {
    s1+=81.0;
   }
  } else {
   if(i71<0.00013132358435541391){
    if(i69<0.9999110698699951){
     s0+=1.0;
     s1+=108.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.06462052464485168){
     s0+=8.0;
     s1+=36.0;
    } else {
     s0+=14.0;
     s1+=8423.0;
    }
   }
  }
 }
}
if(i2<0.08355417847633362){
 if(i11<1.0018949508666992){
  if(i24<1.0451585054397583){
   if(i59<0.0007179004023782909){
    if(i0<0.07876202464103699){
     s0+=50901.0;
     s1+=71.0;
    } else {
     s0+=90.0;
     s1+=13.0;
    }
   } else {
    if(i63<0.030078019946813583){
     s0+=304.0;
     s1+=88.0;
    } else {
     s0+=2531.0;
     s1+=64.0;
    }
   }
  } else {
   if(i0<0.06546473503112793){
    if(i51<-0.0015439391136169434){
     s0+=2950.0;
     s1+=656.0;
    } else {
     s0+=10501.0;
     s1+=626.0;
    }
   } else {
    if(i79<-0.001130820019170642){
     s0+=556.0;
     s1+=76.0;
    } else {
     s0+=457.0;
     s1+=580.0;
    }
   }
  }
 } else {
  if(i1<3.49879264831543e-05){
   if(i53<-0.04922834038734436){
    if(i75<0.027340896427631378){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=29.0;
    }
   } else {
    if(i14<0.0012447834014892578){
     s0+=489.0;
     s1+=45.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i53<0.03388822078704834){
    if(i12<0.001253706868737936){
     s0+=17.0;
    } else {
     s0+=89.0;
     s1+=854.0;
    }
   } else {
    s0+=52.0;
   }
  }
 }
} else {
 if(i11<0.9985139966011047){
  if(i73<-3.0435244298132602e-06){
   if(i13<1.0401077270507812){
    s0+=46.0;
   } else {
    if(i39<0.025261670351028442){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   }
  } else {
   if(i57<0.003231124486774206){
    s0+=677.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i3<0.0004690587520599365){
   if(i49<0.016312330961227417){
    if(i7<-1.3817661965731531e-05){
     s0+=127.0;
     s1+=1943.0;
    } else {
     s0+=229.0;
     s1+=321.0;
    }
   } else {
    if(i4<0.15861818194389343){
     s0+=637.0;
     s1+=110.0;
    } else {
     s0+=150.0;
     s1+=788.0;
    }
   }
  } else {
   if(i7<-4.6575572923757136e-05){
    if(i1<0.00010246038436889648){
     s0+=98.0;
     s1+=2989.0;
    } else {
     s0+=10.0;
     s1+=7672.0;
    }
   } else {
    if(i12<0.004145922139286995){
     s0+=67.0;
     s1+=57.0;
    } else {
     s0+=1.0;
     s1+=241.0;
    }
   }
  }
 }
}
if(i29<1.0041253566741943){
 if(i27<1.014481782913208){
  if(i26<0.00031929431133903563){
   if(i26<0.0002676956355571747){
    if(i22<1.0108616352081299){
     s0+=51234.0;
     s1+=205.0;
    } else {
     s0+=16.0;
     s1+=40.0;
    }
   } else {
    if(i0<0.08023607730865479){
     s0+=2481.0;
     s1+=125.0;
    } else {
     s0+=17.0;
     s1+=54.0;
    }
   }
  } else {
   if(i29<0.9939217567443848){
    if(i16<1.0070008039474487){
     s0+=8154.0;
     s1+=484.0;
    } else {
     s0+=70.0;
     s1+=93.0;
    }
   } else {
    if(i55<2.8798600396839902e-05){
     s0+=3440.0;
     s1+=594.0;
    } else {
     s0+=2476.0;
     s1+=2842.0;
    }
   }
  }
 } else {
  if(i6<0.16732174158096313){
   if(i32<1.2392117977142334){
    if(i12<0.0025454624556005){
     s0+=754.0;
     s1+=125.0;
    } else {
     s0+=9.0;
     s1+=757.0;
    }
   } else {
    if(i71<0.0015810024924576283){
     s0+=1300.0;
     s1+=137.0;
    } else {
     s1+=80.0;
    }
   }
  } else {
   if(i71<0.00023722699552308768){
    if(i55<3.6474513763096184e-05){
     s0+=135.0;
     s1+=19.0;
    } else {
     s0+=39.0;
     s1+=98.0;
    }
   } else {
    if(i3<-0.0008139610290527344){
     s0+=82.0;
     s1+=53.0;
    } else {
     s0+=17.0;
     s1+=1676.0;
    }
   }
  }
 }
} else {
 if(i43<-1.2345259165158495e-05){
  if(i26<0.00014356858446262777){
   if(i56<-0.0003044860204681754){
    s1+=3.0;
   } else {
    s0+=15.0;
   }
  } else {
   if(i5<0.9997351169586182){
    if(i70<0.9987756013870239){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.08529350161552429){
     s0+=63.0;
     s1+=757.0;
    } else {
     s0+=30.0;
     s1+=8837.0;
    }
   }
  }
 } else {
  if(i30<1.0088770389556885){
   if(i2<0.08156153559684753){
    if(i64<0.0015388301108032465){
     s0+=421.0;
     s1+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i22<1.0184135437011719){
     s1+=38.0;
    } else {
     s0+=12.0;
     s1+=6.0;
    }
   }
  } else {
   if(i37<1.0000578165054321){
    if(i50<-0.0001716017723083496){
     s0+=26.0;
    } else {
     s0+=1.0;
     s1+=302.0;
    }
   } else {
    if(i57<0.001145619316957891){
     s0+=82.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
}
if(i14<0.00043660402297973633){
 if(i24<1.0526776313781738){
  if(i66<-0.001290738582611084){
   if(i50<-5.21540641784668e-05){
    if(i30<0.9878555536270142){
     s0+=1242.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=5.0;
    }
   } else {
    if(i63<0.0921488106250763){
     s0+=369.0;
     s1+=258.0;
    } else {
     s0+=349.0;
     s1+=1.0;
    }
   }
  } else {
   if(i27<1.0158846378326416){
    if(i8<1.0081672668457031){
     s0+=55264.0;
     s1+=228.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   } else {
    if(i10<0.9993505477905273){
     s0+=31.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i15<0.0010205209255218506){
   if(i8<1.010773777961731){
    if(i0<0.07477357983589172){
     s0+=10265.0;
     s1+=1088.0;
    } else {
     s0+=1167.0;
     s1+=1955.0;
    }
   } else {
    if(i7<-3.652944724308327e-05){
     s0+=13.0;
     s1+=702.0;
    } else {
     s0+=526.0;
     s1+=289.0;
    }
   }
  } else {
   if(i23<1.0117239952087402){
    if(i65<0.04328224062919617){
     s0+=81.0;
     s1+=23.0;
    } else {
     s0+=23.0;
     s1+=99.0;
    }
   } else {
    if(i50<6.67870044708252e-05){
     s0+=2.0;
     s1+=1096.0;
    } else {
     s0+=52.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i15<0.00041735172271728516){
  if(i5<1.0015952587127686){
   if(i9<1.0978360176086426){
    if(i22<0.9876249432563782){
     s0+=287.0;
     s1+=143.0;
    } else {
     s0+=1113.0;
     s1+=125.0;
    }
   } else {
    if(i12<0.004534476902335882){
     s0+=44.0;
     s1+=1.0;
    } else {
     s1+=277.0;
    }
   }
  } else {
   if(i56<-0.0006206589750945568){
    if(i12<0.006209778133779764){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=667.0;
    }
   } else {
    if(i75<0.0915728360414505){
     s0+=259.0;
     s1+=665.0;
    } else {
     s0+=2.0;
     s1+=462.0;
    }
   }
  }
 } else {
  if(i12<0.001978855114430189){
   if(i55<-2.965694511658512e-05){
    s1+=86.0;
   } else {
    if(i55<7.156161700550001e-06){
     s0+=120.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i48<0.0002156467962777242){
    s0+=6.0;
   } else {
    s1+=8725.0;
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i6<0.07106649875640869){
  if(i21<0.016802862286567688){
   if(i80<-0.0009840726852416992){
    if(i41<0.0009859728161245584){
     s0+=612.0;
     s1+=299.0;
    } else {
     s0+=2544.0;
     s1+=105.0;
    }
   } else {
    if(i15<0.001153796911239624){
     s0+=55884.0;
     s1+=455.0;
    } else {
     s0+=22.0;
     s1+=116.0;
    }
   }
  } else {
   if(i32<1.2371783256530762){
    if(i34<1.05495023727417){
     s0+=1159.0;
    } else {
     s0+=1021.0;
     s1+=1435.0;
    }
   } else {
    if(i51<-0.01040947437286377){
     s0+=340.0;
     s1+=93.0;
    } else {
     s0+=6938.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i37<0.9990028142929077){
   if(i9<1.3863475322723389){
    if(i43<-1.0033487342298031e-05){
     s0+=16.0;
     s1+=13.0;
    } else {
     s0+=464.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i57<0.0007625967264175415){
    if(i44<0.05259758234024048){
     s0+=174.0;
     s1+=298.0;
    } else {
     s0+=601.0;
     s1+=163.0;
    }
   } else {
    if(i58<0.02788567543029785){
     s0+=149.0;
     s1+=1562.0;
    } else {
     s0+=521.0;
     s1+=794.0;
    }
   }
  }
 }
} else {
 if(i42<0.00042525172466412187){
  if(i30<1.0075101852416992){
   s0+=178.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i33<0.01686345785856247){
   if(i15<0.001430511474609375){
    if(i34<1.1509422063827515){
     s0+=7.0;
     s1+=475.0;
    } else {
     s0+=366.0;
     s1+=156.0;
    }
   } else {
    s1+=1582.0;
   }
  } else {
   if(i29<0.9980611801147461){
    if(i13<1.1202845573425293){
     s0+=35.0;
     s1+=141.0;
    } else {
     s0+=2.0;
     s1+=504.0;
    }
   } else {
    if(i80<-0.006205648183822632){
     s0+=6.0;
     s1+=111.0;
    } else {
     s0+=8.0;
     s1+=8752.0;
    }
   }
  }
 }
}
if(i1<3.8564205169677734e-05){
 if(i0<0.08468136191368103){
  if(i34<1.0598037242889404){
   if(i24<1.055511236190796){
    if(i60<0.0004094894393347204){
     s0+=43082.0;
     s1+=4.0;
    } else {
     s0+=494.0;
     s1+=26.0;
    }
   } else {
    if(i60<0.00028762640431523323){
     s0+=323.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i29<0.9939218759536743){
    if(i71<0.0022421889007091522){
     s0+=13639.0;
     s1+=115.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i38<1.103413462638855){
     s0+=2411.0;
     s1+=1544.0;
    } else {
     s0+=9125.0;
     s1+=487.0;
    }
   }
  }
 } else {
  if(i11<0.9985139966011047){
   if(i43<-1.0199353710049763e-05){
    if(i24<1.047762155532837){
     s0+=2.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i55<0.00017937980010174215){
     s0+=402.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  } else {
   if(i51<0.004343092441558838){
    if(i44<0.054458022117614746){
     s0+=43.0;
     s1+=1980.0;
    } else {
     s0+=159.0;
     s1+=338.0;
    }
   } else {
    if(i26<0.017831748351454735){
     s0+=741.0;
     s1+=715.0;
    } else {
     s0+=40.0;
     s1+=332.0;
    }
   }
  }
 }
} else {
 if(i34<1.0577372312545776){
  s0+=299.0;
 } else {
  if(i12<0.002195025561377406){
   if(i43<-1.4807534171268344e-05){
    if(i0<0.054825276136398315){
     s0+=2.0;
     s1+=4.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i67<-2.028255721597816e-06){
     s0+=165.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i18<1.0044751167297363){
    if(i75<0.11578332632780075){
     s0+=188.0;
     s1+=1102.0;
    } else {
     s0+=1.0;
     s1+=928.0;
    }
   } else {
    if(i55<6.871184450574219e-05){
     s0+=4.0;
     s1+=7699.0;
    } else {
     s0+=66.0;
     s1+=1594.0;
    }
   }
  }
 }
}
if(i2<0.08523821830749512){
 if(i7<-5.95716483076103e-05){
  if(i53<0.004292607307434082){
   if(i0<0.013944029808044434){
    if(i29<1.0012277364730835){
     s0+=269.0;
     s1+=8.0;
    } else {
     s0+=15.0;
     s1+=44.0;
    }
   } else {
    if(i45<1.0634281635284424){
     s0+=48.0;
    } else {
     s0+=96.0;
     s1+=878.0;
    }
   }
  } else {
   if(i3<0.000894010066986084){
    if(i5<1.0023648738861084){
     s0+=1072.0;
     s1+=20.0;
    } else {
     s0+=21.0;
     s1+=19.0;
    }
   } else {
    if(i63<0.0677485466003418){
     s0+=2.0;
     s1+=73.0;
    } else {
     s0+=27.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i68<0.0015179261099547148){
   if(i26<0.0002816471678670496){
    if(i27<1.0100953578948975){
     s0+=51216.0;
     s1+=197.0;
    } else {
     s0+=413.0;
     s1+=61.0;
    }
   } else {
    if(i32<1.100754976272583){
     s0+=2485.0;
     s1+=752.0;
    } else {
     s0+=7639.0;
     s1+=118.0;
    }
   }
  } else {
   if(i50<-3.546476364135742e-05){
    if(i60<0.00039357549394480884){
     s0+=1290.0;
     s1+=2.0;
    } else {
     s0+=1593.0;
     s1+=110.0;
    }
   } else {
    if(i35<0.9971341490745544){
     s0+=1426.0;
     s1+=776.0;
    } else {
     s0+=1595.0;
     s1+=215.0;
    }
   }
  }
 }
} else {
 if(i15<0.00023871660232543945){
  if(i14<-0.0003857910633087158){
   if(i43<-8.792273547442164e-06){
    if(i19<-0.0005089640617370605){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=25.0;
    }
   } else {
    if(i40<0.0038792386185377836){
     s0+=571.0;
    } else {
     s0+=38.0;
     s1+=3.0;
    }
   }
  } else {
   if(i21<0.023232456296682358){
    if(i44<0.04648074507713318){
     s0+=49.0;
     s1+=449.0;
    } else {
     s0+=686.0;
     s1+=168.0;
    }
   } else {
    if(i36<0.0005097823450341821){
     s0+=60.0;
     s1+=34.0;
    } else {
     s0+=280.0;
     s1+=2962.0;
    }
   }
  }
 } else {
  if(i1<9.357929229736328e-06){
   if(i32<1.2604451179504395){
    if(i41<0.0005381755181588233){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=219.0;
    }
   } else {
    if(i42<0.01036243885755539){
     s0+=82.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i40<0.00027437187964096665){
    s0+=4.0;
   } else {
    if(i33<0.014677818864583969){
     s0+=66.0;
     s1+=1540.0;
    } else {
     s0+=3.0;
     s1+=8441.0;
    }
   }
  }
 }
}
if(i1<3.713369369506836e-05){
 if(i20<1.0401114225387573){
  if(i39<0.026191605255007744){
   if(i35<1.0094479322433472){
    if(i60<0.0003296497161500156){
     s0+=53822.0;
     s1+=387.0;
    } else {
     s0+=1699.0;
     s1+=319.0;
    }
   } else {
    if(i4<0.0572625994682312){
     s0+=210.0;
     s1+=22.0;
    } else {
     s0+=6.0;
     s1+=175.0;
    }
   }
  } else {
   if(i5<0.9968686103820801){
    if(i0<0.08607324957847595){
     s0+=6563.0;
     s1+=141.0;
    } else {
     s0+=39.0;
     s1+=50.0;
    }
   } else {
    if(i33<0.011045169085264206){
     s0+=2866.0;
     s1+=479.0;
    } else {
     s0+=954.0;
     s1+=1100.0;
    }
   }
  }
 } else {
  if(i36<0.0004486458492465317){
   if(i73<-3.75931995222345e-06){
    if(i18<1.0032522678375244){
     s0+=32.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i37<1.0003972053527832){
     s0+=861.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.09904521703720093){
    if(i38<1.100754976272583){
     s0+=256.0;
     s1+=334.0;
    } else {
     s0+=2239.0;
     s1+=164.0;
    }
   } else {
    if(i47<0.07376644015312195){
     s0+=26.0;
     s1+=1262.0;
    } else {
     s0+=766.0;
     s1+=998.0;
    }
   }
  }
 }
} else {
 if(i24<1.0428509712219238){
  if(i60<0.00022597979113925248){
   s0+=333.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i4<0.05587753653526306){
   if(i57<0.0009542042389512062){
    if(i15<0.001736760139465332){
     s0+=120.0;
     s1+=5.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i45<1.2510931491851807){
     s0+=7.0;
     s1+=349.0;
    } else {
     s0+=115.0;
     s1+=154.0;
    }
   }
  } else {
   if(i73<-0.0001149427771451883){
    s0+=11.0;
   } else {
    if(i12<0.0025939950719475746){
     s0+=72.0;
     s1+=275.0;
    } else {
     s0+=134.0;
     s1+=10825.0;
    }
   }
  }
 }
}
if(i3<0.0005536079406738281){
 if(i21<0.02196212112903595){
  if(i24<1.0485899448394775){
   if(i59<0.0007554180338047445){
    if(i39<0.08900532871484756){
     s0+=50687.0;
     s1+=63.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i3<-0.0009567439556121826){
     s0+=591.0;
     s1+=5.0;
    } else {
     s0+=956.0;
     s1+=178.0;
    }
   }
  } else {
   if(i8<1.0092737674713135){
    if(i45<1.103413462638855){
     s0+=2870.0;
     s1+=802.0;
    } else {
     s0+=7861.0;
     s1+=375.0;
    }
   } else {
    if(i19<6.246566772460938e-05){
     s0+=476.0;
     s1+=134.0;
    } else {
     s0+=89.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i2<0.07548430562019348){
   if(i19<-0.00021961331367492676){
    if(i27<0.891729474067688){
     s0+=365.0;
     s1+=60.0;
    } else {
     s0+=4686.0;
     s1+=48.0;
    }
   } else {
    if(i43<-7.592033739456383e-07){
     s0+=493.0;
     s1+=602.0;
    } else {
     s0+=561.0;
     s1+=88.0;
    }
   }
  } else {
   if(i1<-4.9620866775512695e-05){
    if(i57<0.0046769725158810616){
     s0+=345.0;
     s1+=66.0;
    } else {
     s0+=8.0;
     s1+=55.0;
    }
   } else {
    if(i44<0.044185906648635864){
     s0+=45.0;
     s1+=1538.0;
    } else {
     s0+=404.0;
     s1+=1017.0;
    }
   }
  }
 }
} else {
 if(i34<1.0533727407455444){
  s0+=142.0;
 } else {
  if(i2<0.05929875373840332){
   if(i73<-4.622661435860209e-06){
    if(i36<0.007757736369967461){
     s0+=16.0;
     s1+=336.0;
    } else {
     s0+=94.0;
     s1+=78.0;
    }
   } else {
    if(i67<1.2275609151402023e-07){
     s0+=93.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i5<1.0039985179901123){
    if(i7<-4.246864409651607e-05){
     s0+=100.0;
     s1+=1480.0;
    } else {
     s0+=70.0;
     s1+=135.0;
    }
   } else {
    if(i33<0.01686994358897209){
     s0+=31.0;
     s1+=1567.0;
    } else {
     s1+=8144.0;
    }
   }
  }
 }
}
if(i5<1.002474308013916){
 if(i0<0.0832146406173706){
  if(i9<1.0401519536972046){
   if(i27<0.9775162935256958){
    if(i10<0.987910807132721){
     s0+=3693.0;
     s1+=104.0;
    } else {
     s0+=627.0;
     s1+=343.0;
    }
   } else {
    if(i26<0.00028051616391167045){
     s0+=50223.0;
     s1+=146.0;
    } else {
     s0+=8445.0;
     s1+=558.0;
    }
   }
  } else {
   if(i42<0.002014681464061141){
    if(i43<-7.4749195846379735e-06){
     s0+=451.0;
     s1+=448.0;
    } else {
     s0+=2250.0;
     s1+=345.0;
    }
   } else {
    if(i33<0.051316037774086){
     s0+=3371.0;
     s1+=170.0;
    } else {
     s0+=14.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i7<-1.3805152775603347e-05){
   if(i4<0.11056208610534668){
    if(i45<1.140648365020752){
     s0+=15.0;
     s1+=604.0;
    } else {
     s0+=351.0;
     s1+=281.0;
    }
   } else {
    if(i58<0.06062901020050049){
     s0+=67.0;
     s1+=2190.0;
    } else {
     s0+=137.0;
     s1+=299.0;
    }
   }
  } else {
   if(i44<0.043653130531311035){
    if(i14<-0.0004881322383880615){
     s0+=68.0;
    } else {
     s0+=23.0;
     s1+=224.0;
    }
   } else {
    if(i21<0.029468301683664322){
     s0+=640.0;
     s1+=49.0;
    } else {
     s0+=243.0;
     s1+=106.0;
    }
   }
  }
 }
} else {
 if(i7<-4.328748764237389e-05){
  if(i48<0.000187243043910712){
   s0+=17.0;
  } else {
   if(i0<0.04893064498901367){
    if(i71<0.00024721218505874276){
     s0+=41.0;
     s1+=10.0;
    } else {
     s0+=50.0;
     s1+=268.0;
    }
   } else {
    if(i15<-0.0005464553833007812){
     s0+=76.0;
     s1+=505.0;
    } else {
     s0+=27.0;
     s1+=10316.0;
    }
   }
  }
 } else {
  if(i11<1.0020415782928467){
   if(i42<0.0015922889579087496){
    if(i40<0.0014592752559110522){
     s0+=3.0;
     s1+=45.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i15<0.0002211928367614746){
     s1+=3.0;
    } else {
     s0+=166.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=163.0;
  }
 }
}
if(i15<0.0007561445236206055){
 if(i21<0.022416934370994568){
  if(i2<0.08195340633392334){
   if(i52<0.007568643428385258){
    if(i66<-0.0011028051376342773){
     s0+=2908.0;
     s1+=409.0;
    } else {
     s0+=56723.0;
     s1+=416.0;
    }
   } else {
    if(i11<1.0019121170043945){
     s0+=2396.0;
     s1+=287.0;
    } else {
     s0+=66.0;
     s1+=116.0;
    }
   }
  } else {
   if(i37<0.9991589784622192){
    if(i7<-4.4379528844729066e-05){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=479.0;
    }
   } else {
    if(i64<-0.004486359655857086){
     s0+=669.0;
     s1+=207.0;
    } else {
     s0+=256.0;
     s1+=746.0;
    }
   }
  }
 } else {
  if(i20<1.033656120300293){
   if(i3<-0.0002786219120025635){
    if(i42<0.0026137884706258774){
     s0+=576.0;
     s1+=274.0;
    } else {
     s0+=4307.0;
     s1+=83.0;
    }
   } else {
    if(i2<0.057235151529312134){
     s0+=426.0;
     s1+=356.0;
    } else {
     s0+=32.0;
     s1+=872.0;
    }
   }
  } else {
   if(i3<-0.0007292628288269043){
    if(i69<1.0002830028533936){
     s0+=393.0;
     s1+=7.0;
    } else {
     s0+=201.0;
     s1+=126.0;
    }
   } else {
    if(i40<0.005762249231338501){
     s0+=655.0;
     s1+=1462.0;
    } else {
     s0+=163.0;
     s1+=1867.0;
    }
   }
  }
 }
} else {
 if(i4<0.05435490608215332){
  if(i17<2.2351741790771484e-05){
   if(i43<-1.444558711227728e-05){
    s1+=84.0;
   } else {
    if(i77<0.0007383720949292183){
     s0+=590.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i31<0.00017129794287029654){
    s0+=5.0;
   } else {
    s1+=211.0;
   }
  }
 } else {
  if(i2<0.08339256048202515){
   if(i12<0.0022395234555006027){
    if(i75<0.00878695398569107){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=48.0;
     s1+=4.0;
    }
   } else {
    if(i5<0.9999279975891113){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=288.0;
    }
   }
  } else {
   if(i19<0.0001125335693359375){
    if(i57<0.0003076008870266378){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   } else {
    if(i14<-0.0004023313522338867){
     s0+=2.0;
    } else {
     s0+=33.0;
     s1+=9376.0;
    }
   }
  }
 }
}
if(i4<0.07752740383148193){
 if(i7<-6.362290150718763e-05){
  if(i8<1.002960443496704){
   if(i16<1.0069376230239868){
    if(i9<1.0882463455200195){
     s0+=1200.0;
     s1+=124.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i52<0.008221606723964214){
     s0+=46.0;
     s1+=11.0;
    } else {
     s0+=29.0;
     s1+=135.0;
    }
   }
  } else {
   if(i16<1.0003998279571533){
    if(i42<0.0041625178419053555){
     s0+=12.0;
     s1+=51.0;
    } else {
     s0+=36.0;
     s1+=5.0;
    }
   } else {
    if(i10<0.9981343746185303){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=619.0;
    }
   }
  }
 } else {
  if(i52<0.0082249091938138){
   if(i0<0.07901215553283691){
    if(i51<-0.0015021562576293945){
     s0+=2108.0;
     s1+=347.0;
    } else {
     s0+=62902.0;
     s1+=972.0;
    }
   } else {
    if(i47<0.048660725355148315){
     s0+=12.0;
     s1+=208.0;
    } else {
     s0+=92.0;
     s1+=13.0;
    }
   }
  } else {
   if(i2<0.03657186031341553){
    if(i76<-2.4009725620999234e-06){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=2055.0;
     s1+=305.0;
    }
   } else {
    if(i49<0.0062687695026397705){
     s0+=413.0;
     s1+=451.0;
    } else {
     s0+=268.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i12<0.004695484880357981){
  if(i3<-0.0007641315460205078){
   if(i17<-2.0802021026611328e-05){
    s0+=269.0;
   } else {
    if(i24<1.0685780048370361){
     s0+=64.0;
     s1+=2.0;
    } else {
     s0+=48.0;
     s1+=26.0;
    }
   }
  } else {
   if(i29<1.0018575191497803){
    if(i79<-0.001752769574522972){
     s0+=616.0;
     s1+=203.0;
    } else {
     s0+=420.0;
     s1+=951.0;
    }
   } else {
    if(i51<0.008411884307861328){
     s0+=59.0;
     s1+=1152.0;
    } else {
     s0+=48.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i73<1.2917136018586461e-06){
   if(i15<-0.0009031891822814941){
    if(i4<0.09726226329803467){
     s0+=157.0;
     s1+=142.0;
    } else {
     s0+=50.0;
     s1+=1096.0;
    }
   } else {
    if(i32<1.613681674003601){
     s0+=4.0;
     s1+=8855.0;
    } else {
     s0+=22.0;
     s1+=1467.0;
    }
   }
  } else {
   if(i76<2.7872981718246592e-06){
    s1+=1.0;
   } else {
    s0+=69.0;
   }
  }
 }
}
if(i12<0.004974018316715956){
 if(i16<1.003190517425537){
  if(i6<0.06627815961837769){
   if(i24<1.0485899448394775){
    if(i59<0.0008515098597854376){
     s0+=51304.0;
     s1+=94.0;
    } else {
     s0+=1587.0;
     s1+=172.0;
    }
   } else {
    if(i0<0.0745844841003418){
     s0+=10255.0;
     s1+=1077.0;
    } else {
     s0+=79.0;
     s1+=496.0;
    }
   }
  } else {
   if(i5<0.9963351488113403){
    if(i9<1.0142707824707031){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=739.0;
     s1+=16.0;
    }
   } else {
    if(i44<0.04201626777648926){
     s0+=169.0;
     s1+=927.0;
    } else {
     s0+=1462.0;
     s1+=674.0;
    }
   }
  }
 } else {
  if(i5<1.004152774810791){
   if(i74<8.9644716354087e-05){
    if(i3<0.0004813671112060547){
     s0+=101.0;
     s1+=76.0;
    } else {
     s0+=9.0;
     s1+=216.0;
    }
   } else {
    if(i40<0.0015022240113466978){
     s0+=6.0;
     s1+=6.0;
    } else {
     s0+=153.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=780.0;
  }
 }
} else {
 if(i15<-0.0013150572776794434){
  if(i5<0.9981284737586975){
   if(i4<0.09419244527816772){
    if(i36<0.0010255258530378342){
     s0+=11.0;
     s1+=28.0;
    } else {
     s0+=3633.0;
     s1+=88.0;
    }
   } else {
    if(i71<0.0004359306476544589){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=203.0;
    }
   }
  } else {
   if(i56<-0.0002133107918780297){
    if(i2<0.014734715223312378){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=594.0;
    }
   } else {
    if(i9<1.0819685459136963){
     s0+=565.0;
     s1+=103.0;
    } else {
     s0+=17.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i7<-9.856152246356942e-06){
   if(i17<-1.627206802368164e-05){
    s0+=210.0;
   } else {
    if(i0<0.005473315715789795){
     s0+=50.0;
     s1+=20.0;
    } else {
     s0+=120.0;
     s1+=11383.0;
    }
   }
  } else {
   if(i11<0.999123752117157){
    s0+=463.0;
   } else {
    s1+=97.0;
   }
  }
 }
}
if(i1<3.7729740142822266e-05){
 if(i0<0.08393236994743347){
  if(i40<0.0003177562903147191){
   if(i8<1.0064079761505127){
    if(i80<0.0006116032600402832){
     s0+=36429.0;
     s1+=3.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   } else {
    if(i57<0.0004363184270914644){
     s1+=3.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i24<1.0451428890228271){
    if(i28<0.9832985997200012){
     s0+=1091.0;
     s1+=122.0;
    } else {
     s0+=19007.0;
     s1+=111.0;
    }
   } else {
    if(i40<0.0008704282809048891){
     s0+=2313.0;
     s1+=1240.0;
    } else {
     s0+=10055.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i3<-0.000850677490234375){
   if(i38<1.4274868965148926){
    if(i45<1.255998969078064){
     s0+=147.0;
     s1+=6.0;
    } else {
     s0+=202.0;
    }
   } else {
    if(i37<1.0011942386627197){
     s0+=12.0;
     s1+=108.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i7<-1.3935436072642915e-05){
    if(i47<0.058222174644470215){
     s0+=19.0;
     s1+=1680.0;
    } else {
     s0+=465.0;
     s1+=1160.0;
    }
   } else {
    if(i22<0.9940117597579956){
     s0+=60.0;
     s1+=173.0;
    } else {
     s0+=520.0;
     s1+=192.0;
    }
   }
  }
 }
} else {
 if(i2<0.06234583258628845){
  if(i24<1.0407118797302246){
   s0+=267.0;
  } else {
   if(i45<1.2160736322402954){
    if(i63<0.11298549920320511){
     s1+=246.0;
    } else {
     s0+=7.0;
     s1+=11.0;
    }
   } else {
    if(i66<-0.0011625289916992188){
     s0+=73.0;
     s1+=180.0;
    } else {
     s0+=139.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i37<0.9979187250137329){
   s0+=60.0;
  } else {
   if(i16<1.0027780532836914){
    if(i80<0.0014608502388000488){
     s0+=120.0;
     s1+=398.0;
    } else {
     s0+=11.0;
     s1+=1112.0;
    }
   } else {
    if(i43<-1.2059867003699765e-05){
     s0+=62.0;
     s1+=9712.0;
    } else {
     s0+=15.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i22<1.0103590488433838){
 if(i68<0.003032657317817211){
  if(i13<1.0452277660369873){
   if(i62<-0.0020548999309539795){
    if(i38<1.135884165763855){
     s0+=979.0;
     s1+=355.0;
    } else {
     s0+=2215.0;
     s1+=84.0;
    }
   } else {
    if(i11<1.0020105838775635){
     s0+=57627.0;
     s1+=495.0;
    } else {
     s0+=95.0;
     s1+=83.0;
    }
   }
  } else {
   if(i39<0.0325496532022953){
    if(i5<1.0012428760528564){
     s0+=3549.0;
     s1+=274.0;
    } else {
     s0+=202.0;
     s1+=461.0;
    }
   } else {
    if(i6<0.04771322011947632){
     s0+=590.0;
     s1+=268.0;
    } else {
     s0+=677.0;
     s1+=1201.0;
    }
   }
  }
 } else {
  if(i6<0.03915327787399292){
   if(i2<0.02138841152191162){
    if(i14<0.0008647441864013672){
     s0+=2093.0;
     s1+=173.0;
    } else {
     s0+=41.0;
     s1+=57.0;
    }
   } else {
    if(i21<0.022303998470306396){
     s0+=495.0;
     s1+=198.0;
    } else {
     s0+=129.0;
     s1+=326.0;
    }
   }
  } else {
   if(i61<0.9995570182800293){
    if(i43<-6.6266247813473456e-06){
     s0+=3.0;
     s1+=44.0;
    } else {
     s0+=211.0;
     s1+=3.0;
    }
   } else {
    if(i41<0.004868204705417156){
     s0+=196.0;
     s1+=380.0;
    } else {
     s0+=26.0;
     s1+=1886.0;
    }
   }
  }
 }
} else {
 if(i1<3.36766242980957e-05){
  if(i60<-9.055488044396043e-05){
   if(i43<-1.724119329082896e-06){
    if(i12<0.0017336398595944047){
     s0+=59.0;
     s1+=37.0;
    } else {
     s0+=25.0;
     s1+=637.0;
    }
   } else {
    if(i36<0.0017020136583596468){
     s0+=142.0;
     s1+=21.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i50<-1.531839370727539e-05){
    if(i40<0.003316312562674284){
     s0+=306.0;
     s1+=271.0;
    } else {
     s0+=13.0;
     s1+=253.0;
    }
   } else {
    if(i4<0.1795787215232849){
     s0+=1271.0;
     s1+=325.0;
    } else {
     s0+=48.0;
     s1+=327.0;
    }
   }
  }
 } else {
  if(i10<1.0099446773529053){
   if(i33<0.022401563823223114){
    if(i41<0.0021646753884851933){
     s0+=2.0;
     s1+=167.0;
    } else {
     s0+=248.0;
     s1+=37.0;
    }
   } else {
    if(i2<0.046327948570251465){
     s0+=1.0;
    } else {
     s0+=10.0;
     s1+=1106.0;
    }
   }
  } else {
   if(i26<0.00038889108691364527){
    if(i26<0.0003863649908453226){
     s1+=197.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=7316.0;
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i30<1.0081018209457397){
  if(i75<0.016291918233036995){
   if(i27<0.9702106714248657){
    if(i14<-0.00016194581985473633){
     s0+=158.0;
     s1+=16.0;
    } else {
     s0+=125.0;
     s1+=174.0;
    }
   } else {
    if(i62<-0.002698570489883423){
     s0+=287.0;
     s1+=137.0;
    } else {
     s0+=50181.0;
     s1+=201.0;
    }
   }
  } else {
   if(i5<0.9982209205627441){
    if(i9<1.0676898956298828){
     s0+=13686.0;
     s1+=549.0;
    } else {
     s0+=897.0;
     s1+=303.0;
    }
   } else {
    if(i0<0.06830140948295593){
     s0+=2526.0;
     s1+=716.0;
    } else {
     s0+=389.0;
     s1+=1673.0;
    }
   }
  }
 } else {
  if(i42<0.010404346510767937){
   if(i79<-0.0017717333976179361){
    if(i12<0.004739715717732906){
     s0+=1484.0;
     s1+=189.0;
    } else {
     s0+=88.0;
     s1+=433.0;
    }
   } else {
    if(i69<0.9999029636383057){
     s0+=277.0;
     s1+=733.0;
    } else {
     s0+=570.0;
     s1+=353.0;
    }
   }
  } else {
   if(i73<2.2919382445252268e-06){
    if(i70<1.0070165395736694){
     s1+=507.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
} else {
 if(i13<1.0343151092529297){
  if(i0<0.06252995133399963){
   if(i71<0.0005329923005774617){
    s0+=61.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i4<0.061725348234176636){
    s0+=1.0;
   } else {
    s1+=42.0;
   }
  }
 } else {
  if(i1<6.121397018432617e-05){
   if(i38<1.2314128875732422){
    if(i40<0.0003097851586062461){
     s0+=2.0;
    } else {
     s1+=602.0;
    }
   } else {
    if(i38<1.2582037448883057){
     s0+=171.0;
     s1+=17.0;
    } else {
     s0+=29.0;
     s1+=510.0;
    }
   }
  } else {
   if(i2<0.036361485719680786){
    if(i63<0.08288994431495667){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=35.0;
     s1+=42.0;
    }
   } else {
    if(i69<1.005791425704956){
     s0+=67.0;
     s1+=9936.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i21<0.022736262530088425){
  if(i8<1.0081498622894287){
   if(i0<0.08208948373794556){
    if(i51<-0.0016703605651855469){
     s0+=2274.0;
     s1+=366.0;
    } else {
     s0+=60128.0;
     s1+=582.0;
    }
   } else {
    if(i64<-0.0034893506672233343){
     s0+=541.0;
     s1+=85.0;
    } else {
     s0+=211.0;
     s1+=326.0;
    }
   }
  } else {
   if(i24<1.0851125717163086){
    if(i34<1.0922304391860962){
     s0+=29.0;
     s1+=465.0;
    } else {
     s0+=60.0;
     s1+=69.0;
    }
   } else {
    if(i19<-0.0002282261848449707){
     s1+=42.0;
    } else {
     s0+=700.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i24<1.0452215671539307){
   if(i10<0.9903900623321533){
    if(i4<0.09412002563476562){
     s0+=2875.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.05495023727417){
     s0+=276.0;
    } else {
     s0+=90.0;
     s1+=55.0;
    }
   }
  } else {
   if(i0<0.06180742383003235){
    if(i32<1.1039612293243408){
     s0+=68.0;
     s1+=303.0;
    } else {
     s0+=2364.0;
     s1+=173.0;
    }
   } else {
    if(i17<-2.0742416381835938e-05){
     s0+=213.0;
    } else {
     s0+=645.0;
     s1+=2818.0;
    }
   }
  }
 }
} else {
 if(i74<0.00044625435839407146){
  if(i5<1.004209041595459){
   if(i33<0.010291839949786663){
    if(i38<1.2247824668884277){
     s1+=212.0;
    } else {
     s0+=274.0;
     s1+=50.0;
    }
   } else {
    if(i56<-0.0004406724183354527){
     s0+=7.0;
     s1+=1015.0;
    } else {
     s0+=102.0;
     s1+=731.0;
    }
   }
  } else {
   if(i6<0.003758668899536133){
    if(i51<-0.005570352077484131){
     s0+=3.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   } else {
    if(i19<6.079673767089844e-06){
     s0+=27.0;
     s1+=497.0;
    } else {
     s0+=2.0;
     s1+=9145.0;
    }
   }
  }
 } else {
  s0+=173.0;
 }
}
if(i16<1.0026135444641113){
 if(i46<0.06520426273345947){
  if(i30<1.007267713546753){
   if(i51<-0.0018887817859649658){
    if(i0<0.041391342878341675){
     s0+=2646.0;
     s1+=376.0;
    } else {
     s0+=195.0;
     s1+=524.0;
    }
   } else {
    if(i4<0.07751622796058655){
     s0+=62948.0;
     s1+=951.0;
    } else {
     s0+=112.0;
     s1+=451.0;
    }
   }
  } else {
   if(i55<-1.6414651327067986e-05){
    if(i50<6.026029586791992e-05){
     s1+=286.0;
    } else {
     s0+=35.0;
     s1+=52.0;
    }
   } else {
    if(i2<0.08373850584030151){
     s0+=1858.0;
     s1+=355.0;
    } else {
     s0+=20.0;
     s1+=637.0;
    }
   }
  }
 } else {
  if(i36<0.004773781634867191){
   if(i2<0.11069047451019287){
    if(i26<0.0011768399272114038){
     s0+=342.0;
     s1+=157.0;
    } else {
     s0+=561.0;
     s1+=32.0;
    }
   } else {
    if(i54<0.006622970104217529){
     s0+=152.0;
     s1+=813.0;
    } else {
     s0+=477.0;
     s1+=163.0;
    }
   }
  } else {
   if(i33<0.04261229932308197){
    if(i4<0.1253897249698639){
     s0+=248.0;
     s1+=100.0;
    } else {
     s0+=43.0;
     s1+=363.0;
    }
   } else {
    if(i24<1.0885419845581055){
     s0+=24.0;
    } else {
     s0+=4.0;
     s1+=1025.0;
    }
   }
  }
 }
} else {
 if(i13<1.041278600692749){
  if(i0<0.08049353957176208){
   if(i38<1.2146494388580322){
    if(i5<1.0025479793548584){
     s0+=137.0;
     s1+=21.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i14<0.0009391307830810547){
     s0+=745.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   }
  } else {
   if(i5<0.9987092018127441){
    if(i32<1.4917018413543701){
     s0+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i29<0.9946305751800537){
     s0+=1.0;
    } else {
     s1+=84.0;
    }
   }
  }
 } else {
  if(i1<4.166364669799805e-05){
   if(i6<0.11821416020393372){
    if(i51<0.004787087440490723){
     s0+=278.0;
     s1+=247.0;
    } else {
     s0+=144.0;
     s1+=15.0;
    }
   } else {
    if(i21<0.018010567873716354){
     s0+=28.0;
     s1+=23.0;
    } else {
     s0+=9.0;
     s1+=413.0;
    }
   }
  } else {
   if(i8<1.0231446027755737){
    if(i43<-1.2959104424226098e-05){
     s0+=111.0;
     s1+=3932.0;
    } else {
     s0+=59.0;
     s1+=31.0;
    }
   } else {
    if(i18<1.0034515857696533){
     s0+=1.0;
     s1+=83.0;
    } else {
     s1+=5845.0;
    }
   }
  }
 }
}
if(i23<1.0085142850875854){
 if(i3<0.000570446252822876){
  if(i13<1.0451585054397583){
   if(i62<-0.0023179054260253906){
    if(i4<0.05668124556541443){
     s0+=3874.0;
     s1+=360.0;
    } else {
     s0+=179.0;
     s1+=220.0;
    }
   } else {
    if(i0<0.08912733197212219){
     s0+=58085.0;
     s1+=349.0;
    } else {
     s0+=61.0;
     s1+=101.0;
    }
   }
  } else {
   if(i60<0.0003828320186585188){
    if(i11<0.9991481304168701){
     s0+=1522.0;
     s1+=30.0;
    } else {
     s0+=2667.0;
     s1+=743.0;
    }
   } else {
    if(i3<-0.0003940463066101074){
     s0+=1217.0;
     s1+=353.0;
    } else {
     s0+=657.0;
     s1+=1386.0;
    }
   }
  }
 } else {
  if(i60<2.263258647872135e-05){
   if(i43<-1.4896740140102338e-05){
    s1+=75.0;
   } else {
    if(i69<1.0008172988891602){
     s0+=119.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i41<0.0003419689601287246){
    s0+=34.0;
   } else {
    if(i49<0.007142364978790283){
     s0+=63.0;
     s1+=1999.0;
    } else {
     s0+=112.0;
     s1+=564.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004884600639343262){
  if(i15<0.0006482303142547607){
   if(i21<0.02345849946141243){
    if(i0<0.07700571417808533){
     s0+=1392.0;
     s1+=78.0;
    } else {
     s0+=420.0;
     s1+=276.0;
    }
   } else {
    if(i7<-2.3531874830950983e-05){
     s0+=40.0;
     s1+=748.0;
    } else {
     s0+=305.0;
     s1+=98.0;
    }
   }
  } else {
   if(i32<1.2604451179504395){
    if(i37<1.0003037452697754){
     s0+=3.0;
     s1+=444.0;
    } else {
     s0+=28.0;
     s1+=52.0;
    }
   } else {
    if(i6<0.19145101308822632){
     s0+=153.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i3<0.000944972038269043){
   if(i50<3.36766242980957e-05){
    if(i50<2.3156404495239258e-05){
     s1+=465.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   } else {
    if(i0<0.06922590732574463){
     s0+=144.0;
     s1+=55.0;
    } else {
     s0+=55.0;
     s1+=517.0;
    }
   }
  } else {
   if(i15<3.6835670471191406e-05){
    if(i0<0.13065916299819946){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=186.0;
    }
   } else {
    s1+=7841.0;
   }
  }
 }
}
if(i4<0.07710838317871094){
 if(i1<4.190206527709961e-05){
  if(i48<0.00030141574097797275){
   if(i35<1.0087363719940186){
    if(i0<0.07967320084571838){
     s0+=46504.0;
     s1+=55.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i63<0.014485718682408333){
     s1+=50.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i34<1.1031841039657593){
    if(i1<1.0788440704345703e-05){
     s0+=6887.0;
     s1+=1296.0;
    } else {
     s0+=114.0;
     s1+=334.0;
    }
   } else {
    if(i54<-0.002293825149536133){
     s0+=1458.0;
     s1+=205.0;
    } else {
     s0+=13622.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i16<0.9985787868499756){
   if(i55<0.00010701164865167812){
    if(i29<1.003981590270996){
     s0+=215.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i2<0.025027692317962646){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i5<1.0042097568511963){
    if(i34<1.1353518962860107){
     s0+=11.0;
     s1+=198.0;
    } else {
     s0+=220.0;
     s1+=117.0;
    }
   } else {
    if(i55<0.00013303513696882874){
     s1+=750.0;
    } else {
     s0+=17.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i32<1.0840110778808594){
  s0+=236.0;
 } else {
  if(i29<0.9993862509727478){
   if(i50<-0.0001392960548400879){
    if(i44<0.04101118445396423){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=353.0;
     s1+=11.0;
    }
   } else {
    if(i41<0.006664891727268696){
     s0+=892.0;
     s1+=1341.0;
    } else {
     s0+=130.0;
     s1+=1427.0;
    }
   }
  } else {
   if(i7<-4.3320978875271976e-05){
    if(i15<3.1113624572753906e-05){
     s0+=81.0;
     s1+=965.0;
    } else {
     s0+=6.0;
     s1+=9597.0;
    }
   } else {
    if(i36<0.0020979009568691254){
     s0+=162.0;
     s1+=574.0;
    } else {
     s0+=131.0;
     s1+=14.0;
    }
   }
  }
 }
}
if(i6<0.07385113835334778){
 if(i2<0.08236876130104065){
  if(i68<0.0018146834336221218){
   if(i3<0.000652700662612915){
    if(i13<1.0436501502990723){
     s0+=58019.0;
     s1+=355.0;
    } else {
     s0+=5235.0;
     s1+=687.0;
    }
   } else {
    if(i43<-1.5511890524066985e-05){
     s0+=45.0;
     s1+=256.0;
    } else {
     s0+=134.0;
     s1+=7.0;
    }
   }
  } else {
   if(i1<3.5822391510009766e-05){
    if(i41<0.0009778410894796252){
     s0+=1155.0;
     s1+=520.0;
    } else {
     s0+=4186.0;
     s1+=345.0;
    }
   } else {
    if(i36<0.00850759632885456){
     s0+=24.0;
     s1+=517.0;
    } else {
     s0+=54.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i29<0.9929322004318237){
   if(i13<1.1149210929870605){
    if(i24<1.1149210929870605){
     s0+=331.0;
     s1+=2.0;
    } else {
     s0+=21.0;
     s1+=15.0;
    }
   } else {
    if(i5<0.9944640398025513){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   }
  } else {
   if(i40<0.00045544037129729986){
    s0+=42.0;
   } else {
    if(i53<0.06091737747192383){
     s0+=66.0;
     s1+=1926.0;
    } else {
     s0+=35.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i12<0.004643522202968597){
  if(i7<-1.3791177480015904e-05){
   if(i44<0.04564991593360901){
    if(i4<0.09008428454399109){
     s0+=62.0;
     s1+=150.0;
    } else {
     s0+=10.0;
     s1+=710.0;
    }
   } else {
    if(i4<0.11734482645988464){
     s0+=311.0;
     s1+=139.0;
    } else {
     s0+=161.0;
     s1+=416.0;
    }
   }
  } else {
   if(i60<0.00037419365253299475){
    if(i32<1.255998969078064){
     s0+=436.0;
     s1+=67.0;
    } else {
     s0+=283.0;
    }
   } else {
    if(i11<0.998525083065033){
     s0+=161.0;
    } else {
     s0+=119.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i37<0.9988064169883728){
   if(i1<-2.3752450942993164e-05){
    s0+=90.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i69<1.0022363662719727){
    if(i0<0.10019460320472717){
     s0+=84.0;
     s1+=308.0;
    } else {
     s0+=37.0;
     s1+=9679.0;
    }
   } else {
    if(i2<0.1369745135307312){
     s0+=131.0;
     s1+=86.0;
    } else {
     s0+=1.0;
     s1+=526.0;
    }
   }
  }
 }
}
if(i5<1.0024573802947998){
 if(i21<0.021963097155094147){
  if(i18<1.0074682235717773){
   if(i66<-0.0014188587665557861){
    if(i14<0.0004589557647705078){
     s0+=3147.0;
     s1+=620.0;
    } else {
     s0+=74.0;
     s1+=115.0;
    }
   } else {
    if(i63<0.0250717680901289){
     s0+=53451.0;
     s1+=195.0;
    } else {
     s0+=5790.0;
     s1+=409.0;
    }
   }
  } else {
   if(i24<1.073743224143982){
    if(i40<0.0023720311000943184){
     s0+=30.0;
     s1+=452.0;
    } else {
     s0+=21.0;
     s1+=4.0;
    }
   } else {
    if(i12<0.0051154568791389465){
     s0+=1204.0;
     s1+=93.0;
    } else {
     s0+=20.0;
     s1+=187.0;
    }
   }
  }
 } else {
  if(i6<0.06278771162033081){
   if(i1<-2.3543834686279297e-05){
    if(i55<9.074053377844393e-05){
     s0+=653.0;
     s1+=171.0;
    } else {
     s0+=4416.0;
     s1+=42.0;
    }
   } else {
    if(i4<0.06291389465332031){
     s0+=937.0;
     s1+=479.0;
    } else {
     s0+=28.0;
     s1+=385.0;
    }
   }
  } else {
   if(i14<-0.0004042983055114746){
    if(i57<0.004100579768419266){
     s0+=302.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i19<-0.0005916357040405273){
     s0+=111.0;
     s1+=70.0;
    } else {
     s0+=511.0;
     s1+=2695.0;
    }
   }
  }
 }
} else {
 if(i1<6.824731826782227e-05){
  if(i31<0.00020508313900791109){
   if(i73<-5.276738647808088e-06){
    s1+=61.0;
   } else {
    if(i71<0.0005752412835136056){
     s0+=115.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    if(i36<0.0003317231312394142){
     s0+=3.0;
    } else {
     s1+=705.0;
    }
   } else {
    if(i4<0.11605095863342285){
     s0+=160.0;
     s1+=97.0;
    } else {
     s0+=17.0;
     s1+=694.0;
    }
   }
  }
 } else {
  if(i19<6.020069122314453e-06){
   if(i32<1.613681674003601){
    if(i55<0.00027249136473983526){
     s1+=498.0;
    } else {
     s0+=13.0;
     s1+=120.0;
    }
   } else {
    if(i42<0.009652143344283104){
     s0+=59.0;
     s1+=15.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i0<0.0036190152168273926){
    if(i77<0.005070198327302933){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i18<1.0043399333953857){
     s0+=4.0;
     s1+=734.0;
    } else {
     s1+=8223.0;
    }
   }
  }
 }
}
if(i6<0.07261297106742859){
 if(i3<0.000570446252822876){
  if(i0<0.07874760031700134){
   if(i62<-0.0023456215858459473){
    if(i34<1.1804440021514893){
     s0+=1961.0;
     s1+=757.0;
    } else {
     s0+=3634.0;
     s1+=148.0;
    }
   } else {
    if(i23<1.0071455240249634){
     s0+=60851.0;
     s1+=636.0;
    } else {
     s0+=2313.0;
     s1+=395.0;
    }
   }
  } else {
   if(i19<-0.0002033710479736328){
    if(i16<0.9953746795654297){
     s0+=88.0;
     s1+=1.0;
    } else {
     s0+=49.0;
     s1+=76.0;
    }
   } else {
    if(i61<0.9995747804641724){
     s0+=42.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=771.0;
    }
   }
  }
 } else {
  if(i43<-1.4089584510657005e-05){
   if(i35<0.9948978424072266){
    if(i8<0.980658233165741){
     s0+=1.0;
     s1+=134.0;
    } else {
     s0+=95.0;
     s1+=118.0;
    }
   } else {
    if(i69<1.002142071723938){
     s0+=19.0;
     s1+=1489.0;
    } else {
     s0+=19.0;
     s1+=42.0;
    }
   }
  } else {
   if(i74<9.623714140616357e-05){
    if(i48<0.0003365759621374309){
     s0+=2.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i0<0.0809715986251831){
     s0+=225.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i14<-0.00039246678352355957){
  if(i7<-3.8861231587361544e-05){
   if(i38<1.476589322090149){
    if(i33<0.012463381513953209){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i11<0.998825192451477){
    if(i43<-9.034853064804338e-06){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=398.0;
    }
   } else {
    if(i13<1.197305679321289){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i12<0.003333259839564562){
   if(i44<0.04290282726287842){
    if(i49<0.020034193992614746){
     s0+=36.0;
     s1+=475.0;
    } else {
     s0+=32.0;
     s1+=26.0;
    }
   } else {
    if(i5<1.0038816928863525){
     s0+=1041.0;
     s1+=374.0;
    } else {
     s1+=113.0;
    }
   }
  } else {
   if(i0<0.1075187623500824){
    if(i55<9.236251207767054e-05){
     s0+=19.0;
     s1+=398.0;
    } else {
     s0+=295.0;
     s1+=246.0;
    }
   } else {
    if(i5<1.0004112720489502){
     s0+=49.0;
     s1+=986.0;
    } else {
     s0+=41.0;
     s1+=9659.0;
    }
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i7<-4.9391215725336224e-05){
  if(i4<0.06331336498260498){
   if(i19<-0.00030347704887390137){
    if(i33<0.0625973790884018){
     s0+=1469.0;
     s1+=41.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   } else {
    if(i76<1.2547716323751956e-06){
     s0+=178.0;
     s1+=278.0;
    } else {
     s0+=389.0;
     s1+=49.0;
    }
   }
  } else {
   if(i38<1.0762357711791992){
    s0+=56.0;
   } else {
    if(i13<1.1223218441009521){
     s0+=314.0;
     s1+=970.0;
    } else {
     s1+=1771.0;
    }
   }
  }
 } else {
  if(i0<0.07908812165260315){
   if(i26<0.00030992619576863945){
    if(i60<0.00027548003708943725){
     s0+=51913.0;
     s1+=118.0;
    } else {
     s0+=1273.0;
     s1+=125.0;
    }
   } else {
    if(i41<0.0010666765738278627){
     s0+=3660.0;
     s1+=1090.0;
    } else {
     s0+=9248.0;
     s1+=248.0;
    }
   }
  } else {
   if(i40<0.00048159860307350755){
    if(i73<-2.872216327887145e-06){
     s0+=9.0;
     s1+=16.0;
    } else {
     s0+=258.0;
     s1+=6.0;
    }
   } else {
    if(i20<1.084590196609497){
     s0+=495.0;
     s1+=1225.0;
    } else {
     s0+=573.0;
     s1+=169.0;
    }
   }
  }
 }
} else {
 if(i10<1.0100727081298828){
  if(i41<0.006356353405863047){
   if(i11<1.0018460750579834){
    if(i12<0.003338780254125595){
     s0+=996.0;
     s1+=456.0;
    } else {
     s0+=137.0;
     s1+=794.0;
    }
   } else {
    if(i31<0.00012227505794726312){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=31.0;
     s1+=506.0;
    }
   }
  } else {
   if(i24<1.1237890720367432){
    if(i12<0.005723738111555576){
     s0+=31.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=84.0;
    }
   } else {
    if(i71<0.0002354695025132969){
     s0+=14.0;
     s1+=40.0;
    } else {
     s0+=13.0;
     s1+=809.0;
    }
   }
  }
 } else {
  if(i0<0.06495597958564758){
   if(i14<0.00048410892486572266){
    if(i69<0.9998777508735657){
     s1+=11.0;
    } else {
     s0+=78.0;
    }
   } else {
    s1+=110.0;
   }
  } else {
   if(i12<0.0030668615363538265){
    if(i7<-4.330154479248449e-05){
     s1+=428.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    s1+=7703.0;
   }
  }
 }
}
if(i3<0.0005491375923156738){
 if(i46<0.06180089712142944){
  if(i31<0.0003217848134227097){
   if(i27<1.0102417469024658){
    if(i0<0.07995718717575073){
     s0+=56221.0;
     s1+=561.0;
    } else {
     s0+=44.0;
     s1+=116.0;
    }
   } else {
    if(i4<0.07247382402420044){
     s0+=731.0;
     s1+=66.0;
    } else {
     s0+=15.0;
     s1+=141.0;
    }
   }
  } else {
   if(i19<-0.00021973252296447754){
    if(i6<0.08734199404716492){
     s0+=6301.0;
     s1+=232.0;
    } else {
     s0+=1.0;
     s1+=94.0;
    }
   } else {
    if(i32<1.0840110778808594){
     s0+=1735.0;
    } else {
     s0+=3128.0;
     s1+=2102.0;
    }
   }
  }
 } else {
  if(i7<-2.2920972696738318e-05){
   if(i56<-0.00012007504119537771){
    if(i21<0.026892084628343582){
     s0+=233.0;
     s1+=492.0;
    } else {
     s0+=31.0;
     s1+=1182.0;
    }
   } else {
    if(i0<0.12318313121795654){
     s0+=272.0;
     s1+=30.0;
    } else {
     s0+=42.0;
     s1+=84.0;
    }
   }
  } else {
   if(i21<0.02934950590133667){
    if(i51<-0.008218616247177124){
     s0+=1.0;
     s1+=21.0;
    } else {
     s0+=1346.0;
     s1+=131.0;
    }
   } else {
    if(i5<0.9963209629058838){
     s0+=193.0;
     s1+=9.0;
    } else {
     s0+=128.0;
     s1+=248.0;
    }
   }
  }
 }
} else {
 if(i7<-4.3328698666300625e-05){
  if(i19<6.258487701416016e-06){
   if(i68<0.004026142880320549){
    if(i2<0.13207507133483887){
     s0+=188.0;
     s1+=85.0;
    } else {
     s0+=13.0;
     s1+=444.0;
    }
   } else {
    if(i57<0.005398602224886417){
     s0+=25.0;
     s1+=275.0;
    } else {
     s1+=369.0;
    }
   }
  } else {
   if(i30<0.9739223718643188){
    if(i12<0.009386217221617699){
     s0+=5.0;
     s1+=39.0;
    } else {
     s1+=252.0;
    }
   } else {
    if(i18<0.991288423538208){
     s0+=3.0;
     s1+=131.0;
    } else {
     s0+=3.0;
     s1+=9868.0;
    }
   }
  }
 } else {
  if(i12<0.0037928868550807238){
   if(i18<0.9919034242630005){
    s1+=18.0;
   } else {
    if(i2<0.16154924035072327){
     s0+=327.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<3.796815872192383e-05){
    if(i8<1.0050525665283203){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i67<5.668190624419367e-06){
     s1+=261.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i3<0.0005491375923156738){
 if(i39<0.030410489067435265){
  if(i18<1.007434368133545){
   if(i49<-0.007474631071090698){
    if(i35<0.994606077671051){
     s0+=278.0;
     s1+=253.0;
    } else {
     s0+=348.0;
     s1+=21.0;
    }
   } else {
    if(i4<0.07765385508537292){
     s0+=57749.0;
     s1+=458.0;
    } else {
     s0+=513.0;
     s1+=235.0;
    }
   }
  } else {
   if(i25<1.0078871250152588){
    if(i61<0.9998526573181152){
     s0+=40.0;
     s1+=36.0;
    } else {
     s0+=184.0;
     s1+=10.0;
    }
   } else {
    if(i7<-3.140314220217988e-05){
     s0+=110.0;
     s1+=721.0;
    } else {
     s0+=269.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i9<1.0401077270507812){
   if(i35<0.9776546955108643){
    if(i10<0.9882880449295044){
     s0+=4968.0;
     s1+=85.0;
    } else {
     s0+=8.0;
     s1+=22.0;
    }
   } else {
    if(i36<0.00043559784535318613){
     s0+=1054.0;
     s1+=15.0;
    } else {
     s0+=1566.0;
     s1+=775.0;
    }
   }
  } else {
   if(i74<0.00011049791646655649){
    if(i11<0.9987894892692566){
     s0+=601.0;
     s1+=11.0;
    } else {
     s0+=1930.0;
     s1+=1369.0;
    }
   } else {
    if(i36<0.0004532142775133252){
     s0+=114.0;
    } else {
     s0+=562.0;
     s1+=1557.0;
    }
   }
  }
 }
} else {
 if(i7<-4.330423689680174e-05){
  if(i4<0.040035396814346313){
   if(i45<1.2563519477844238){
    if(i70<0.9990644454956055){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=148.0;
    }
   } else {
    if(i32<1.5682398080825806){
     s0+=17.0;
     s1+=75.0;
    } else {
     s0+=71.0;
     s1+=19.0;
    }
   }
  } else {
   if(i5<1.0037859678268433){
    if(i14<0.0007506608963012695){
     s0+=8.0;
     s1+=1096.0;
    } else {
     s0+=122.0;
     s1+=358.0;
    }
   } else {
    if(i0<0.13810288906097412){
     s0+=33.0;
     s1+=1663.0;
    } else {
     s0+=4.0;
     s1+=8140.0;
    }
   }
  }
 } else {
  if(i15<0.0002702772617340088){
   if(i16<1.0010915994644165){
    s0+=1.0;
   } else {
    if(i1<3.898143768310547e-05){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=148.0;
    }
   }
  } else {
   if(i73<-6.917746759427246e-06){
    if(i69<0.9970746636390686){
     s0+=2.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i76<-3.7395727758848807e-06){
     s1+=19.0;
    } else {
     s0+=309.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i7<-8.167201303876936e-05){
 if(i0<0.06310707330703735){
  if(i52<0.010514074936509132){
   if(i18<1.0030803680419922){
    if(i8<1.002960443496704){
     s0+=609.0;
     s1+=11.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i18<0.9019684791564941){
    if(i9<1.0528351068496704){
     s0+=31.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i17<2.5272369384765625e-05){
     s0+=29.0;
     s1+=33.0;
    } else {
     s0+=23.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i50<-0.000388413667678833){
   s0+=29.0;
  } else {
   if(i3<0.00018262863159179688){
    if(i17<3.260374069213867e-05){
     s0+=7.0;
     s1+=283.0;
    } else {
     s0+=41.0;
     s1+=2.0;
    }
   } else {
    if(i19<6.020069122314453e-06){
     s0+=67.0;
     s1+=1061.0;
    } else {
     s0+=1.0;
     s1+=9271.0;
    }
   }
  }
 }
} else {
 if(i24<1.0526776313781738){
  if(i66<-0.0014558732509613037){
   if(i38<1.0703742504119873){
    s0+=925.0;
   } else {
    if(i67<1.9928920664824545e-05){
     s0+=149.0;
     s1+=224.0;
    } else {
     s0+=464.0;
     s1+=28.0;
    }
   }
  } else {
   if(i22<1.0116345882415771){
    if(i5<1.0025265216827393){
     s0+=55752.0;
     s1+=261.0;
    } else {
     s0+=18.0;
     s1+=38.0;
    }
   } else {
    if(i42<0.0017899519298225641){
     s0+=3.0;
     s1+=52.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  if(i5<1.0009362697601318){
   if(i11<0.9988558292388916){
    if(i11<0.9983083605766296){
     s0+=2428.0;
     s1+=16.0;
    } else {
     s0+=1064.0;
     s1+=131.0;
    }
   } else {
    if(i2<0.08564203977584839){
     s0+=7624.0;
     s1+=1115.0;
    } else {
     s0+=775.0;
     s1+=1874.0;
    }
   }
  } else {
   if(i77<0.00015091165550984442){
    if(i40<0.0010982914827764034){
     s0+=14.0;
     s1+=201.0;
    } else {
     s0+=420.0;
     s1+=59.0;
    }
   } else {
    if(i45<1.139992117881775){
     s0+=14.0;
     s1+=1266.0;
    } else {
     s0+=775.0;
     s1+=820.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i2<0.08410724997520447){
  if(i3<0.0005857646465301514){
   if(i13<1.0412344932556152){
    if(i26<0.00026373728178441525){
     s0+=48948.0;
     s1+=138.0;
    } else {
     s0+=10523.0;
     s1+=458.0;
    }
   } else {
    if(i8<0.9953365325927734){
     s0+=945.0;
     s1+=427.0;
    } else {
     s0+=4154.0;
     s1+=377.0;
    }
   }
  } else {
   if(i12<0.002064259722828865){
    if(i54<0.0014287233352661133){
     s0+=124.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   } else {
    if(i34<1.0533727407455444){
     s0+=22.0;
    } else {
     s0+=16.0;
     s1+=364.0;
    }
   }
  }
 } else {
  if(i14<-0.0003616809844970703){
   if(i47<0.07071635127067566){
    if(i27<1.0172852277755737){
     s0+=331.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<0.054852306842803955){
     s1+=2.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i42<0.0004199481918476522){
    if(i25<1.0070557594299316){
     s0+=50.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i15<-0.002267509698867798){
     s0+=60.0;
     s1+=34.0;
    } else {
     s0+=35.0;
     s1+=987.0;
    }
   }
  }
 }
} else {
 if(i3<0.00045293569564819336){
  if(i37<0.9993027448654175){
   if(i43<-7.975681000971235e-06){
    if(i43<-0.00019850305397994816){
     s0+=5.0;
    } else {
     s1+=53.0;
    }
   } else {
    s0+=1332.0;
   }
  } else {
   if(i12<0.002926994115114212){
    if(i29<1.0039026737213135){
     s0+=3085.0;
     s1+=684.0;
    } else {
     s0+=64.0;
     s1+=164.0;
    }
   } else {
    if(i4<0.09339284896850586){
     s0+=772.0;
     s1+=579.0;
    } else {
     s0+=146.0;
     s1+=1701.0;
    }
   }
  }
 } else {
  if(i15<-0.0006311535835266113){
   if(i71<0.001376712927594781){
    if(i68<0.004422341473400593){
     s0+=230.0;
     s1+=150.0;
    } else {
     s0+=11.0;
     s1+=109.0;
    }
   } else {
    s1+=409.0;
   }
  } else {
   if(i14<0.0004877448081970215){
    if(i43<-1.586810321896337e-05){
     s1+=1032.0;
    } else {
     s0+=109.0;
     s1+=528.0;
    }
   } else {
    if(i77<7.852454291423783e-05){
     s0+=8.0;
     s1+=40.0;
    } else {
     s0+=53.0;
     s1+=8967.0;
    }
   }
  }
 }
}
if(i14<0.00043314695358276367){
 if(i0<0.08223840594291687){
  if(i31<0.00029909430304542184){
   if(i62<-0.004269063472747803){
    if(i8<0.985098659992218){
     s0+=11.0;
     s1+=70.0;
    } else {
     s0+=65.0;
     s1+=17.0;
    }
   } else {
    if(i9<1.0460114479064941){
     s0+=55442.0;
     s1+=389.0;
    } else {
     s0+=591.0;
     s1+=103.0;
    }
   }
  } else {
   if(i36<0.0014314900618046522){
    if(i43<-8.694347343407571e-06){
     s0+=50.0;
     s1+=391.0;
    } else {
     s0+=4988.0;
     s1+=816.0;
    }
   } else {
    if(i41<0.00357663631439209){
     s0+=1117.0;
     s1+=100.0;
    } else {
     s0+=5607.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i32<1.0840110778808594){
   s0+=201.0;
  } else {
   if(i12<0.001723350491374731){
    if(i44<0.0397258996963501){
     s0+=11.0;
     s1+=148.0;
    } else {
     s0+=563.0;
     s1+=155.0;
    }
   } else {
    if(i17<-1.633167266845703e-05){
     s0+=255.0;
     s1+=15.0;
    } else {
     s0+=396.0;
     s1+=3661.0;
    }
   }
  }
 }
} else {
 if(i9<1.0645322799682617){
  if(i71<0.0008421550737693906){
   if(i12<0.0024305530823767185){
    if(i7<-4.389321111375466e-05){
     s0+=1.0;
     s1+=51.0;
    } else {
     s0+=239.0;
    }
   } else {
    if(i66<0.0022559762001037598){
     s0+=64.0;
     s1+=1430.0;
    } else {
     s0+=75.0;
     s1+=51.0;
    }
   }
  } else {
   if(i3<0.0008117556571960449){
    if(i56<-0.0003898483992088586){
     s0+=17.0;
     s1+=73.0;
    } else {
     s0+=963.0;
     s1+=99.0;
    }
   } else {
    if(i0<0.031083732843399048){
     s0+=23.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=340.0;
    }
   }
  }
 } else {
  if(i0<0.11789405345916748){
   if(i29<1.0015869140625){
    if(i49<0.0005165338516235352){
     s0+=31.0;
     s1+=159.0;
    } else {
     s0+=338.0;
     s1+=43.0;
    }
   } else {
    if(i51<0.0037605464458465576){
     s0+=20.0;
     s1+=573.0;
    } else {
     s0+=29.0;
     s1+=15.0;
    }
   }
  } else {
   if(i33<0.02314145863056183){
    if(i55<5.670627433573827e-05){
     s1+=938.0;
    } else {
     s0+=65.0;
     s1+=125.0;
    }
   } else {
    if(i3<0.0005384087562561035){
     s0+=6.0;
     s1+=278.0;
    } else {
     s1+=6921.0;
    }
   }
  }
 }
}
if(i4<0.07866418361663818){
 if(i0<0.06989964842796326){
  if(i52<0.008470702916383743){
   if(i59<0.0007178890518844128){
    if(i8<1.0077199935913086){
     s0+=58340.0;
     s1+=422.0;
    } else {
     s0+=523.0;
     s1+=160.0;
    }
   } else {
    if(i32<1.100754976272583){
     s0+=1235.0;
     s1+=487.0;
    } else {
     s0+=4950.0;
     s1+=137.0;
    }
   }
  } else {
   if(i67<-1.5954848322508042e-06){
    if(i30<1.0163965225219727){
     s0+=18.0;
     s1+=235.0;
    } else {
     s0+=10.0;
     s1+=3.0;
    }
   } else {
    if(i70<1.0004825592041016){
     s0+=2203.0;
     s1+=302.0;
    } else {
     s0+=549.0;
     s1+=473.0;
    }
   }
  }
 } else {
  if(i54<0.000987708568572998){
   if(i46<0.05504113435745239){
    if(i11<0.9984413385391235){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=56.0;
     s1+=759.0;
    }
   } else {
    if(i0<0.08237043023109436){
     s0+=148.0;
     s1+=25.0;
    } else {
     s0+=12.0;
     s1+=36.0;
    }
   }
  } else {
   if(i46<0.048328250646591187){
    if(i14<-0.00023409724235534668){
     s0+=41.0;
     s1+=7.0;
    } else {
     s0+=29.0;
     s1+=126.0;
    }
   } else {
    if(i27<0.9787496328353882){
     s0+=10.0;
     s1+=23.0;
    } else {
     s0+=1179.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i12<0.004822907969355583){
  if(i49<0.014474630355834961){
   if(i16<0.996283233165741){
    if(i3<-0.0006435811519622803){
     s0+=218.0;
     s1+=6.0;
    } else {
     s0+=31.0;
     s1+=62.0;
    }
   } else {
    if(i41<0.00031839869916439056){
     s0+=51.0;
    } else {
     s0+=208.0;
     s1+=1926.0;
    }
   }
  } else {
   if(i29<1.0021957159042358){
    if(i8<1.0236752033233643){
     s0+=871.0;
     s1+=187.0;
    } else {
     s0+=11.0;
     s1+=54.0;
    }
   } else {
    if(i6<0.12072476744651794){
     s0+=64.0;
     s1+=39.0;
    } else {
     s0+=16.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i17<-1.7911195755004883e-05){
   s0+=93.0;
  } else {
   if(i24<1.0640453100204468){
    if(i31<0.0006406982429325581){
     s0+=20.0;
     s1+=138.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i22<1.0143113136291504){
     s0+=120.0;
     s1+=2761.0;
    } else {
     s0+=28.0;
     s1+=8524.0;
    }
   }
  }
 }
}
if(i2<0.08676877617835999){
 if(i3<0.0005736351013183594){
  if(i48<0.0002996420953422785){
   if(i25<1.0116220712661743){
    if(i18<1.0074673891067505){
     s0+=46681.0;
     s1+=46.0;
    } else {
     s0+=14.0;
     s1+=39.0;
    }
   } else {
    if(i45<1.0558756589889526){
     s0+=6.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i38<1.103413462638855){
    if(i36<0.00043022469617426395){
     s0+=3564.0;
     s1+=163.0;
    } else {
     s0+=1628.0;
     s1+=1419.0;
    }
   } else {
    if(i52<0.01570303365588188){
     s0+=15883.0;
     s1+=337.0;
    } else {
     s0+=1010.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i7<-4.3112780986120924e-05){
   if(i29<1.0013952255249023){
    if(i20<1.0159692764282227){
     s0+=8.0;
     s1+=89.0;
    } else {
     s0+=96.0;
     s1+=39.0;
    }
   } else {
    if(i32<1.5682398080825806){
     s0+=4.0;
     s1+=815.0;
    } else {
     s0+=24.0;
     s1+=40.0;
    }
   }
  } else {
   if(i12<0.004324952140450478){
    s0+=221.0;
   } else {
    if(i19<-0.000274658203125){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i19<3.248453140258789e-05){
  if(i11<0.998518705368042){
   if(i9<1.398578405380249){
    if(i69<1.0010998249053955){
     s0+=575.0;
     s1+=6.0;
    } else {
     s0+=39.0;
     s1+=17.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i7<-1.2607745702553075e-05){
    if(i49<0.015368372201919556){
     s0+=96.0;
     s1+=2060.0;
    } else {
     s0+=406.0;
     s1+=1159.0;
    }
   } else {
    if(i51<0.0028610527515411377){
     s0+=102.0;
     s1+=238.0;
    } else {
     s0+=395.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i32<1.0762357711791992){
   s0+=32.0;
  } else {
   if(i57<0.00030108887585811317){
    if(i69<0.9999028444290161){
     s1+=209.0;
    } else {
     s0+=91.0;
     s1+=3.0;
    }
   } else {
    if(i50<-0.0002504289150238037){
     s0+=15.0;
     s1+=37.0;
    } else {
     s0+=77.0;
     s1+=10118.0;
    }
   }
  }
 }
}
if(i1<3.701448440551758e-05){
 if(i2<0.08502998948097229){
  if(i24<1.0451585054397583){
   if(i80<-0.0007078647613525391){
    if(i5<0.9965431094169617){
     s0+=4782.0;
     s1+=21.0;
    } else {
     s0+=1227.0;
     s1+=161.0;
    }
   } else {
    if(i41<0.0002965618041343987){
     s0+=32261.0;
    } else {
     s0+=15222.0;
     s1+=58.0;
    }
   }
  } else {
   if(i34<1.1036889553070068){
    if(i63<0.034696366637945175){
     s0+=4668.0;
     s1+=699.0;
    } else {
     s0+=787.0;
     s1+=857.0;
    }
   } else {
    if(i71<0.0019694697111845016){
     s0+=9606.0;
     s1+=361.0;
    } else {
     s0+=24.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i37<0.9993027448654175){
   if(i73<-2.2665205960947787e-06){
    if(i6<0.09644031524658203){
     s0+=29.0;
     s1+=6.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i63<0.562595009803772){
     s0+=624.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.02818235382437706){
    if(i49<0.016304612159729004){
     s0+=269.0;
     s1+=1096.0;
    } else {
     s0+=614.0;
     s1+=128.0;
    }
   } else {
    if(i56<4.0121551137417555e-05){
     s0+=146.0;
     s1+=1935.0;
    } else {
     s0+=63.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i40<0.0005015862989239395){
  s0+=327.0;
 } else {
  if(i4<0.05846378207206726){
   if(i36<0.0015346844447776675){
    if(i17<1.0401010513305664e-05){
     s0+=2.0;
    } else {
     s1+=354.0;
    }
   } else {
    if(i5<1.0042171478271484){
     s0+=212.0;
     s1+=100.0;
    } else {
     s0+=17.0;
     s1+=159.0;
    }
   }
  } else {
   if(i4<0.1316651701927185){
    if(i28<1.051924705505371){
     s0+=131.0;
     s1+=1763.0;
    } else {
     s0+=55.0;
     s1+=13.0;
    }
   } else {
    if(i11<0.9956851601600647){
     s0+=6.0;
    } else {
     s0+=19.0;
     s1+=9297.0;
    }
   }
  }
 }
}
if(i6<0.06989145278930664){
 if(i3<0.0005639195442199707){
  if(i8<1.0081498622894287){
   if(i2<0.07844924926757812){
    if(i53<-0.028778642416000366){
     s0+=2074.0;
     s1+=430.0;
    } else {
     s0+=65346.0;
     s1+=1099.0;
    }
   } else {
    if(i37<0.9993386268615723){
     s0+=346.0;
     s1+=2.0;
    } else {
     s0+=218.0;
     s1+=483.0;
    }
   }
  } else {
   if(i60<-0.00013577257050201297){
    if(i13<1.1405489444732666){
     s0+=16.0;
     s1+=214.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i42<0.0017805318348109722){
     s0+=64.0;
     s1+=229.0;
    } else {
     s0+=630.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i26<0.00020218602730892599){
   if(i37<1.0008368492126465){
    if(i61<1.0001752376556396){
     s0+=103.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i57<0.0006970840040594339){
     s0+=16.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i50<0.000152587890625){
    if(i40<0.002691738773137331){
     s0+=13.0;
     s1+=146.0;
    } else {
     s0+=90.0;
     s1+=44.0;
    }
   } else {
    if(i67<3.5303296499478165e-06){
     s0+=14.0;
     s1+=1334.0;
    } else {
     s0+=85.0;
     s1+=297.0;
    }
   }
  }
 }
} else {
 if(i5<1.0017051696777344){
  if(i33<0.04072156548500061){
   if(i58<0.03166228532791138){
    if(i51<0.006104171276092529){
     s0+=279.0;
     s1+=1141.0;
    } else {
     s0+=301.0;
     s1+=149.0;
    }
   } else {
    if(i56<-9.564043284626678e-05){
     s0+=663.0;
     s1+=433.0;
    } else {
     s0+=751.0;
     s1+=93.0;
    }
   }
  } else {
   if(i5<0.9937955141067505){
    if(i8<0.9852843284606934){
     s1+=6.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i7<-3.0048944609006867e-05){
     s0+=1.0;
     s1+=757.0;
    } else {
     s0+=8.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i7<-6.368479080265388e-05){
   if(i2<0.13185465335845947){
    if(i47<0.07369580864906311){
     s0+=31.0;
     s1+=675.0;
    } else {
     s0+=49.0;
     s1+=43.0;
    }
   } else {
    if(i8<1.0154120922088623){
     s0+=10.0;
     s1+=1708.0;
    } else {
     s1+=7107.0;
    }
   }
  } else {
   if(i38<1.2261788845062256){
    if(i2<0.08980464935302734){
     s0+=13.0;
     s1+=30.0;
    } else {
     s0+=12.0;
     s1+=320.0;
    }
   } else {
    if(i22<1.0046825408935547){
     s0+=1.0;
     s1+=85.0;
    } else {
     s0+=83.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i4<0.07899519801139832){
 if(i1<4.166364669799805e-05){
  if(i24<1.0486011505126953){
   if(i51<-0.0017419755458831787){
    if(i32<1.0821808576583862){
     s0+=626.0;
    } else {
     s0+=153.0;
     s1+=98.0;
    }
   } else {
    if(i32<1.0850647687911987){
     s0+=35720.0;
    } else {
     s0+=19357.0;
     s1+=266.0;
    }
   }
  } else {
   if(i2<0.06630611419677734){
    if(i53<-0.02485904097557068){
     s0+=1834.0;
     s1+=518.0;
    } else {
     s0+=9877.0;
     s1+=640.0;
    }
   } else {
    if(i45<1.103413462638855){
     s0+=232.0;
     s1+=510.0;
    } else {
     s0+=1161.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i13<1.034064531326294){
   if(i31<0.0004769462102558464){
    if(i66<-0.0012083649635314941){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=230.0;
     s1+=4.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i36<0.0018567908555269241){
    if(i45<1.0633710622787476){
     s0+=11.0;
    } else {
     s1+=628.0;
    }
   } else {
    if(i54<-0.001858741044998169){
     s0+=36.0;
     s1+=311.0;
    } else {
     s0+=178.0;
     s1+=106.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3817661965731531e-05){
  if(i14<-0.00042620301246643066){
   if(i41<0.007211873307824135){
    s0+=60.0;
   } else {
    if(i55<0.00021258622291497886){
     s1+=2.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i4<0.13040423393249512){
    if(i51<0.004782646894454956){
     s0+=140.0;
     s1+=2481.0;
    } else {
     s0+=380.0;
     s1+=75.0;
    }
   } else {
    if(i40<0.001128680189140141){
     s0+=46.0;
     s1+=52.0;
    } else {
     s0+=96.0;
     s1+=10779.0;
    }
   }
  }
 } else {
  if(i47<0.058077067136764526){
   if(i29<0.992243766784668){
    if(i39<0.07613508403301239){
     s0+=69.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   } else {
    if(i3<-0.0008299946784973145){
     s0+=10.0;
    } else {
     s0+=26.0;
     s1+=237.0;
    }
   }
  } else {
   if(i4<0.23569437861442566){
    if(i43<-1.524939580122009e-05){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=833.0;
     s1+=39.0;
    }
   } else {
    if(i1<-5.5223703384399414e-05){
     s0+=87.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=79.0;
    }
   }
  }
 }
}
if(i1<3.701448440551758e-05){
 if(i8<1.0081751346588135){
  if(i21<0.02196754701435566){
   if(i80<-0.0008600056171417236){
    if(i5<0.9979681372642517){
     s0+=3849.0;
     s1+=223.0;
    } else {
     s0+=1080.0;
     s1+=496.0;
    }
   } else {
    if(i27<1.0101215839385986){
     s0+=55718.0;
     s1+=476.0;
    } else {
     s0+=1746.0;
     s1+=198.0;
    }
   }
  } else {
   if(i0<0.07223767042160034){
    if(i19<-0.00022032856941223145){
     s0+=5106.0;
     s1+=71.0;
    } else {
     s0+=849.0;
     s1+=601.0;
    }
   } else {
    if(i44<0.04385870695114136){
     s0+=54.0;
     s1+=1045.0;
    } else {
     s0+=594.0;
     s1+=606.0;
    }
   }
  }
 } else {
  if(i6<0.18687811493873596){
   if(i34<1.1514935493469238){
    if(i56<-7.236179226310924e-05){
     s0+=135.0;
     s1+=998.0;
    } else {
     s0+=75.0;
    }
   } else {
    if(i2<0.12552595138549805){
     s0+=792.0;
     s1+=69.0;
    } else {
     s0+=112.0;
     s1+=143.0;
    }
   }
  } else {
   if(i73<2.2073675154388184e-06){
    if(i7<-1.3114881767251063e-05){
     s0+=9.0;
     s1+=593.0;
    } else {
     s0+=19.0;
     s1+=62.0;
    }
   } else {
    s0+=9.0;
   }
  }
 }
} else {
 if(i37<0.9991601705551147){
  if(i32<1.3670148849487305){
   s0+=327.0;
  } else {
   s1+=10.0;
  }
 } else {
  if(i5<1.0041282176971436){
   if(i0<0.06520700454711914){
    if(i32<1.2392117977142334){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=221.0;
     s1+=102.0;
    }
   } else {
    if(i61<0.9999004006385803){
     s1+=878.0;
    } else {
     s0+=139.0;
     s1+=802.0;
    }
   }
  } else {
   if(i71<0.00019401745521463454){
    if(i79<-0.0036903508007526398){
     s0+=12.0;
    } else {
     s0+=6.0;
     s1+=290.0;
    }
   } else {
    if(i15<-0.003120899200439453){
     s0+=3.0;
    } else {
     s0+=25.0;
     s1+=9619.0;
    }
   }
  }
 }
}
if(i14<0.00043660402297973633){
 if(i2<0.08502998948097229){
  if(i0<0.07115575671195984){
   if(i54<-0.0024972856044769287){
    if(i4<0.017024695873260498){
     s0+=1642.0;
     s1+=146.0;
    } else {
     s0+=459.0;
     s1+=294.0;
    }
   } else {
    if(i24<1.0451585054397583){
     s0+=51962.0;
     s1+=183.0;
    } else {
     s0+=12159.0;
     s1+=888.0;
    }
   }
  } else {
   if(i46<0.049766093492507935){
    if(i67<2.613060496514663e-05){
     s0+=37.0;
     s1+=375.0;
    } else {
     s0+=61.0;
     s1+=2.0;
    }
   } else {
    if(i43<-7.1240215220313985e-06){
     s0+=294.0;
     s1+=77.0;
    } else {
     s0+=859.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i7<-1.3817661965731531e-05){
   if(i14<-0.00042638182640075684){
    if(i57<0.0021545521449297667){
     s0+=83.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=13.0;
    }
   } else {
    if(i58<0.028282523155212402){
     s0+=108.0;
     s1+=2566.0;
    } else {
     s0+=268.0;
     s1+=1029.0;
    }
   }
  } else {
   if(i50<-0.00013405084609985352){
    if(i50<-0.00013786554336547852){
     s0+=560.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i55<3.6180048482492566e-05){
     s0+=420.0;
     s1+=46.0;
    } else {
     s0+=132.0;
     s1+=295.0;
    }
   }
  }
 }
} else {
 if(i13<1.0656497478485107){
  if(i10<1.001359462738037){
   if(i5<1.000924825668335){
    if(i71<0.001998860388994217){
     s0+=950.0;
     s1+=47.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i27<0.9972383975982666){
     s0+=48.0;
     s1+=225.0;
    } else {
     s0+=125.0;
     s1+=54.0;
    }
   }
  } else {
   if(i26<0.0002009785530390218){
    if(i7<-4.926710607833229e-05){
     s1+=15.0;
    } else {
     s0+=120.0;
    }
   } else {
    if(i11<1.0014817714691162){
     s0+=50.0;
     s1+=23.0;
    } else {
     s0+=18.0;
     s1+=847.0;
    }
   }
  }
 } else {
  if(i15<3.5643577575683594e-05){
   if(i6<0.12100544571876526){
    if(i57<0.0026728175580501556){
     s0+=374.0;
     s1+=67.0;
    } else {
     s0+=158.0;
     s1+=591.0;
    }
   } else {
    if(i58<0.07041239738464355){
     s0+=10.0;
     s1+=851.0;
    } else {
     s0+=38.0;
     s1+=155.0;
    }
   }
  } else {
   if(i3<0.000916898250579834){
    if(i57<0.0008713340503163636){
     s0+=19.0;
    } else {
     s0+=3.0;
     s1+=298.0;
    }
   } else {
    if(i0<0.006884932518005371){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=8120.0;
    }
   }
  }
 }
}
if(i11<1.0016392469406128){
 if(i0<0.08202600479125977){
  if(i45<1.0598037242889404){
   s0+=36954.0;
  } else {
   if(i3<0.00021162629127502441){
    if(i32<1.100754976272583){
     s0+=5235.0;
     s1+=1186.0;
    } else {
     s0+=25261.0;
     s1+=363.0;
    }
   } else {
    if(i36<0.0007630371255800128){
     s0+=285.0;
     s1+=343.0;
    } else {
     s0+=724.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i50<-0.0002555251121520996){
   if(i3<3.6329030990600586e-05){
    if(i60<0.002040548250079155){
     s0+=430.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i38<1.3424272537231445){
     s0+=7.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i7<-2.2307223844109103e-05){
    if(i41<0.007287668529897928){
     s0+=244.0;
     s1+=2094.0;
    } else {
     s0+=18.0;
     s1+=1861.0;
    }
   } else {
    if(i44<0.04318714141845703){
     s0+=43.0;
     s1+=423.0;
    } else {
     s0+=764.0;
     s1+=269.0;
    }
   }
  }
 }
} else {
 if(i2<0.0845000147819519){
  if(i41<0.0015731349121779203){
   if(i48<0.0002307485556229949){
    s0+=53.0;
   } else {
    if(i5<1.0006890296936035){
     s0+=1.0;
    } else {
     s1+=551.0;
    }
   }
  } else {
   if(i29<1.0002162456512451){
    if(i33<0.04779943823814392){
     s0+=844.0;
     s1+=103.0;
    } else {
     s0+=1.0;
     s1+=65.0;
    }
   } else {
    if(i33<0.011006445623934269){
     s0+=99.0;
     s1+=21.0;
    } else {
     s0+=40.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i6<0.12161138653755188){
   if(i19<-8.040666580200195e-05){
    if(i27<1.0088117122650146){
     s0+=14.0;
     s1+=221.0;
    } else {
     s0+=195.0;
     s1+=37.0;
    }
   } else {
    if(i79<-0.0036937862168997526){
     s0+=11.0;
     s1+=124.0;
    } else {
     s0+=9.0;
     s1+=2020.0;
    }
   }
  } else {
   if(i35<1.0014159679412842){
    if(i38<1.2432942390441895){
     s0+=10.0;
     s1+=46.0;
    } else {
     s0+=15.0;
     s1+=1108.0;
    }
   } else {
    s1+=5714.0;
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i9<1.0409057140350342){
  if(i1<3.93986701965332e-05){
   if(i66<-0.001301884651184082){
    if(i0<0.05671527981758118){
     s0+=4087.0;
     s1+=384.0;
    } else {
     s0+=196.0;
     s1+=273.0;
    }
   } else {
    if(i63<0.025070413947105408){
     s0+=51101.0;
     s1+=172.0;
    } else {
     s0+=6788.0;
     s1+=354.0;
    }
   }
  } else {
   if(i38<1.0762357711791992){
    s0+=281.0;
   } else {
    if(i33<0.007436627522110939){
     s0+=52.0;
     s1+=44.0;
    } else {
     s0+=5.0;
     s1+=259.0;
    }
   }
  }
 } else {
  if(i8<1.0054206848144531){
   if(i2<0.0823482871055603){
    if(i16<1.0006457567214966){
     s0+=1955.0;
     s1+=140.0;
    } else {
     s0+=200.0;
     s1+=118.0;
    }
   } else {
    if(i32<1.0840110778808594){
     s0+=58.0;
    } else {
     s0+=109.0;
     s1+=233.0;
    }
   }
  } else {
   if(i10<0.9974260926246643){
    if(i23<0.9425390362739563){
     s1+=1.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.048083484172821045){
     s0+=31.0;
     s1+=18.0;
    } else {
     s0+=19.0;
     s1+=513.0;
    }
   }
  }
 }
} else {
 if(i19<0.00010198354721069336){
  if(i2<0.10013291239738464){
   if(i3<0.00046688318252563477){
    if(i34<1.1036889553070068){
     s0+=910.0;
     s1+=600.0;
    } else {
     s0+=3775.0;
     s1+=363.0;
    }
   } else {
    if(i49<0.0009108185768127441){
     s0+=61.0;
     s1+=344.0;
    } else {
     s0+=141.0;
     s1+=43.0;
    }
   }
  } else {
   if(i7<-1.2283208889130037e-05){
    if(i54<0.00510096549987793){
     s0+=82.0;
     s1+=2167.0;
    } else {
     s0+=297.0;
     s1+=1186.0;
    }
   } else {
    if(i16<1.0027722120285034){
     s0+=604.0;
     s1+=149.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i19<0.00021499395370483398){
   if(i12<0.002551563549786806){
    if(i32<1.1386182308197021){
     s1+=33.0;
    } else {
     s0+=246.0;
    }
   } else {
    if(i37<0.9990912675857544){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=1258.0;
    }
   }
  } else {
   s1+=8463.0;
  }
 }
}
if(i2<0.08511286973953247){
 if(i16<1.0027871131896973){
  if(i26<0.0003096904547419399){
   if(i30<1.0083980560302734){
    if(i62<-0.004569888114929199){
     s0+=10.0;
     s1+=38.0;
    } else {
     s0+=53532.0;
     s1+=178.0;
    }
   } else {
    if(i6<0.05047270655632019){
     s0+=124.0;
     s1+=30.0;
    } else {
     s0+=38.0;
     s1+=96.0;
    }
   }
  } else {
   if(i38<1.1037919521331787){
    if(i50<-3.451108932495117e-05){
     s0+=2008.0;
     s1+=23.0;
    } else {
     s0+=1523.0;
     s1+=1289.0;
    }
   } else {
    if(i45<1.2048285007476807){
     s0+=2347.0;
     s1+=330.0;
    } else {
     s0+=8444.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i15<-0.0016483664512634277){
   if(i56<-0.00038694971590302885){
    if(i22<0.9850863814353943){
     s1+=41.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i9<1.0942044258117676){
     s0+=808.0;
     s1+=35.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i43<-1.4442899555433542e-05){
    if(i40<0.002090450841933489){
     s1+=514.0;
    } else {
     s0+=119.0;
     s1+=305.0;
    }
   } else {
    if(i70<1.0024266242980957){
     s0+=254.0;
     s1+=12.0;
    } else {
     s0+=7.0;
     s1+=53.0;
    }
   }
  }
 }
} else {
 if(i37<0.9993038177490234){
  if(i11<0.9985378980636597){
   if(i9<1.3700618743896484){
    if(i11<0.9977935552597046){
     s0+=599.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=8.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i41<0.0008355083991773427){
    s0+=9.0;
   } else {
    s1+=57.0;
   }
  }
 } else {
  if(i16<1.0028212070465088){
   if(i57<0.0003008150961250067){
    if(i54<0.004985451698303223){
     s0+=109.0;
     s1+=284.0;
    } else {
     s0+=244.0;
     s1+=20.0;
    }
   } else {
    if(i7<-1.4167999324854463e-05){
     s0+=396.0;
     s1+=3690.0;
    } else {
     s0+=314.0;
     s1+=309.0;
    }
   }
  } else {
   if(i1<4.07099723815918e-05){
    if(i79<0.00025655614444985986){
     s0+=106.0;
     s1+=546.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   } else {
    if(i0<0.12331458926200867){
     s0+=40.0;
     s1+=895.0;
    } else {
     s0+=7.0;
     s1+=8176.0;
    }
   }
  }
 }
}
if(i2<0.08541274070739746){
 if(i29<1.0052235126495361){
  if(i3<0.0005654096603393555){
   if(i21<0.014118511229753494){
    if(i62<-0.0024039745330810547){
     s0+=1883.0;
     s1+=334.0;
    } else {
     s0+=54151.0;
     s1+=285.0;
    }
   } else {
    if(i52<0.0058776456862688065){
     s0+=10159.0;
     s1+=751.0;
    } else {
     s0+=2269.0;
     s1+=751.0;
    }
   }
  } else {
   if(i12<0.004112380091100931){
    if(i6<0.06279852986335754){
     s0+=245.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i72<-0.010194935835897923){
     s0+=81.0;
     s1+=22.0;
    } else {
     s0+=43.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i5<1.0029833316802979){
   if(i9<1.0364320278167725){
    if(i11<1.0012415647506714){
     s0+=248.0;
     s1+=5.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i41<0.0015321298269554973){
     s1+=50.0;
    } else {
     s0+=69.0;
     s1+=13.0;
    }
   }
  } else {
   if(i3<0.0009276270866394043){
    if(i36<0.001508869812823832){
     s1+=94.0;
    } else {
     s0+=39.0;
     s1+=10.0;
    }
   } else {
    if(i51<0.003606557846069336){
     s0+=3.0;
     s1+=568.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i1<6.020069122314453e-06){
  if(i37<0.999309241771698){
   if(i29<0.9983794093132019){
    if(i43<-8.72418695507804e-06){
     s0+=8.0;
     s1+=16.0;
    } else {
     s0+=624.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.10321629047393799){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i12<0.0017346350941807032){
    if(i21<0.03411956503987312){
     s0+=400.0;
     s1+=46.0;
    } else {
     s0+=42.0;
     s1+=80.0;
    }
   } else {
    if(i51<0.004768252372741699){
     s0+=83.0;
     s1+=1066.0;
    } else {
     s0+=232.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i15<0.00032001733779907227){
   if(i21<0.023174963891506195){
    if(i49<0.013627469539642334){
     s0+=43.0;
     s1+=278.0;
    } else {
     s0+=274.0;
     s1+=64.0;
    }
   } else {
    if(i4<0.11282500624656677){
     s0+=59.0;
     s1+=256.0;
    } else {
     s0+=52.0;
     s1+=1738.0;
    }
   }
  } else {
   if(i48<0.00022676298976875842){
    s0+=8.0;
   } else {
    if(i33<0.014475712552666664){
     s0+=73.0;
     s1+=1423.0;
    } else {
     s0+=4.0;
     s1+=8558.0;
    }
   }
  }
 }
}
if(i5<1.0024337768554688){
 if(i4<0.07771864533424377){
  if(i63<0.018491171300411224){
   if(i8<1.007720708847046){
    if(i51<-0.0034763216972351074){
     s0+=74.0;
     s1+=58.0;
    } else {
     s0+=51175.0;
     s1+=262.0;
    }
   } else {
    if(i19<2.339482307434082e-05){
     s0+=62.0;
     s1+=5.0;
    } else {
     s0+=22.0;
     s1+=129.0;
    }
   }
  } else {
   if(i29<0.9939237833023071){
    if(i33<0.07258159667253494){
     s0+=10180.0;
     s1+=134.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i34<1.1036889553070068){
     s0+=3044.0;
     s1+=1310.0;
    } else {
     s0+=4122.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i58<0.03096240758895874){
   if(i36<0.00044872204307466745){
    if(i4<0.07778370380401611){
     s1+=3.0;
    } else {
     s0+=91.0;
     s1+=1.0;
    }
   } else {
    if(i23<1.029414176940918){
     s0+=291.0;
     s1+=2444.0;
    } else {
     s0+=145.0;
     s1+=252.0;
    }
   }
  } else {
   if(i11<0.9986084699630737){
    if(i13<1.0415223836898804){
     s0+=78.0;
     s1+=11.0;
    } else {
     s0+=292.0;
     s1+=1.0;
    }
   } else {
    if(i21<0.040299370884895325){
     s0+=804.0;
     s1+=458.0;
    } else {
     s0+=69.0;
     s1+=591.0;
    }
   }
  }
 }
} else {
 if(i12<0.0018958600703626871){
  if(i69<0.9995010495185852){
   if(i15<0.0018423199653625488){
    s0+=13.0;
   } else {
    s1+=89.0;
   }
  } else {
   if(i38<1.1386182308197021){
    if(i25<1.0054019689559937){
     s0+=13.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i3<0.002059459686279297){
     s0+=152.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i2<0.051438331604003906){
   if(i57<0.0016215854557231069){
    if(i13<1.0825579166412354){
     s0+=11.0;
     s1+=24.0;
    } else {
     s0+=39.0;
     s1+=4.0;
    }
   } else {
    if(i68<0.0016600474482402205){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=242.0;
    }
   }
  } else {
   if(i10<1.007953405380249){
    if(i13<1.1223218441009521){
     s0+=113.0;
     s1+=1048.0;
    } else {
     s0+=3.0;
     s1+=1113.0;
    }
   } else {
    if(i77<0.00010088158887811005){
     s0+=1.0;
     s1+=127.0;
    } else {
     s1+=8774.0;
    }
   }
  }
 }
}
if(i3<0.0005737543106079102){
 if(i30<1.0074725151062012){
  if(i7<-4.5052325731376186e-05){
   if(i15<-0.0035936832427978516){
    if(i9<1.081282138824463){
     s0+=1341.0;
     s1+=17.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i11<0.9989596605300903){
     s0+=467.0;
     s1+=42.0;
    } else {
     s0+=628.0;
     s1+=847.0;
    }
   }
  } else {
   if(i9<1.0398929119110107){
    if(i0<0.08198222517967224){
     s0+=60547.0;
     s1+=935.0;
    } else {
     s0+=149.0;
     s1+=278.0;
    }
   } else {
    if(i75<0.023343924432992935){
     s0+=2435.0;
     s1+=138.0;
    } else {
     s0+=2390.0;
     s1+=1011.0;
    }
   }
  }
 } else {
  if(i6<0.056847214698791504){
   if(i48<0.0007534176111221313){
    if(i18<1.007487177848816){
     s0+=194.0;
     s1+=35.0;
    } else {
     s0+=114.0;
     s1+=232.0;
    }
   } else {
    if(i7<-6.759211828466505e-05){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=1136.0;
     s1+=60.0;
    }
   }
  } else {
   if(i7<-3.035022564290557e-05){
    if(i14<-0.00042957067489624023){
     s0+=54.0;
    } else {
     s0+=194.0;
     s1+=1529.0;
    }
   } else {
    if(i71<0.0007436315063387156){
     s0+=976.0;
     s1+=258.0;
    } else {
     s0+=18.0;
     s1+=90.0;
    }
   }
  }
 }
} else {
 if(i45<1.0614044666290283){
  s0+=99.0;
 } else {
  if(i33<0.01799534633755684){
   if(i43<-1.4434387594519649e-05){
    if(i19<6.318092346191406e-06){
     s0+=208.0;
     s1+=187.0;
    } else {
     s0+=7.0;
     s1+=1979.0;
    }
   } else {
    if(i45<1.1983051300048828){
     s1+=113.0;
    } else {
     s0+=175.0;
     s1+=1.0;
    }
   }
  } else {
   if(i55<0.0003171411226503551){
    if(i3<0.0008251070976257324){
     s0+=21.0;
     s1+=679.0;
    } else {
     s0+=6.0;
     s1+=8510.0;
    }
   } else {
    if(i50<0.0005402565002441406){
     s1+=62.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i4<0.08024245500564575){
 if(i17<1.9252300262451172e-05){
  if(i24<1.0451585054397583){
   if(i49<-0.005851387977600098){
    if(i4<0.030891388654708862){
     s0+=651.0;
     s1+=22.0;
    } else {
     s0+=80.0;
     s1+=40.0;
    }
   } else {
    if(i5<1.002955675125122){
     s0+=52693.0;
     s1+=157.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i21<0.014410720206797123){
    if(i20<0.9997248649597168){
     s0+=460.0;
     s1+=141.0;
    } else {
     s0+=9383.0;
     s1+=439.0;
    }
   } else {
    if(i15<-0.0015879273414611816){
     s0+=2533.0;
     s1+=79.0;
    } else {
     s0+=2137.0;
     s1+=1326.0;
    }
   }
  }
 } else {
  if(i32<1.5682398080825806){
   if(i16<1.0025897026062012){
    if(i12<0.004431192763149738){
     s0+=500.0;
     s1+=18.0;
    } else {
     s0+=144.0;
     s1+=151.0;
    }
   } else {
    if(i64<-0.0034736853558570147){
     s0+=66.0;
     s1+=35.0;
    } else {
     s0+=84.0;
     s1+=971.0;
    }
   }
  } else {
   if(i68<0.01371854543685913){
    if(i15<0.000514686107635498){
     s0+=595.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i78<-0.022342532873153687){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015792846679688){
  if(i53<0.0623989999294281){
   if(i14<-0.0004131197929382324){
    if(i53<0.06159833073616028){
     s0+=209.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i24<1.0452029705047607){
     s0+=70.0;
     s1+=10.0;
    } else {
     s0+=260.0;
     s1+=2114.0;
    }
   }
  } else {
   if(i33<0.039454277604818344){
    if(i21<0.039167650043964386){
     s0+=801.0;
     s1+=151.0;
    } else {
     s0+=181.0;
     s1+=174.0;
    }
   } else {
    if(i61<1.0003845691680908){
     s0+=16.0;
     s1+=441.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<0.14087894558906555){
   if(i51<0.0046103596687316895){
    if(i4<0.0808556079864502){
     s0+=7.0;
     s1+=26.0;
    } else {
     s0+=21.0;
     s1+=1581.0;
    }
   } else {
    if(i41<0.001711905701085925){
     s0+=2.0;
     s1+=62.0;
    } else {
     s0+=140.0;
     s1+=24.0;
    }
   }
  } else {
   if(i7<-6.153638241812587e-05){
    if(i33<0.011453025974333286){
     s0+=8.0;
     s1+=338.0;
    } else {
     s1+=8643.0;
    }
   } else {
    if(i2<0.17541742324829102){
     s0+=9.0;
     s1+=25.0;
    } else {
     s1+=120.0;
    }
   }
  }
 }
}
if(i4<0.0782729983329773){
 if(i19<0.00016170740127563477){
  if(i5<1.0024793148040771){
   if(i59<0.0007179004023782909){
    if(i13<1.042891263961792){
     s0+=54876.0;
     s1+=204.0;
    } else {
     s0+=6068.0;
     s1+=783.0;
    }
   } else {
    if(i40<0.0008705950458534062){
     s0+=1625.0;
     s1+=704.0;
    } else {
     s0+=6424.0;
     s1+=449.0;
    }
   }
  } else {
   if(i49<0.0070893168449401855){
    if(i12<0.0029483172111213207){
     s0+=59.0;
     s1+=33.0;
    } else {
     s0+=59.0;
     s1+=450.0;
    }
   } else {
    if(i45<1.233781337738037){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=50.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i3<0.0009329319000244141){
   if(i31<0.00045407196739688516){
    if(i11<1.0013103485107422){
     s0+=247.0;
     s1+=7.0;
    } else {
     s0+=47.0;
     s1+=40.0;
    }
   } else {
    if(i13<1.0987846851348877){
     s0+=3.0;
     s1+=60.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   s1+=536.0;
  }
 }
} else {
 if(i1<9.775161743164062e-06){
  if(i47<0.05732065439224243){
   if(i3<-0.0008339881896972656){
    if(i63<0.15130135416984558){
     s0+=99.0;
     s1+=1.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i12<0.0014301927294582129){
     s0+=27.0;
     s1+=33.0;
    } else {
     s0+=23.0;
     s1+=991.0;
    }
   }
  } else {
   if(i36<0.0018562364857643843){
    if(i72<-0.023440051823854446){
     s0+=586.0;
     s1+=7.0;
    } else {
     s0+=281.0;
     s1+=192.0;
    }
   } else {
    if(i6<0.12572962045669556){
     s0+=290.0;
     s1+=65.0;
    } else {
     s0+=30.0;
     s1+=520.0;
    }
   }
  }
 } else {
  if(i1<5.5670738220214844e-05){
   if(i64<-0.005529626272618771){
    if(i71<0.00025395944248884916){
     s0+=146.0;
     s1+=29.0;
    } else {
     s0+=226.0;
     s1+=916.0;
    }
   } else {
    if(i69<1.003273606300354){
     s0+=52.0;
     s1+=1365.0;
    } else {
     s0+=14.0;
     s1+=13.0;
    }
   }
  } else {
   if(i45<1.0633710622787476){
    s0+=9.0;
   } else {
    if(i69<1.0059025287628174){
     s0+=56.0;
     s1+=9492.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i7<-8.144946332322434e-05){
 if(i3<0.00019937753677368164){
  if(i9<1.0696518421173096){
   if(i13<1.0696518421173096){
    if(i71<0.00199544383212924){
     s0+=605.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i23<0.9053553342819214){
     s0+=21.0;
    } else {
     s0+=8.0;
     s1+=29.0;
    }
   }
  } else {
   if(i37<1.001912236213684){
    s1+=268.0;
   } else {
    if(i3<0.00019657611846923828){
     s0+=16.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<0.0659954845905304){
   if(i53<-0.0035481154918670654){
    if(i39<0.20825351774692535){
     s0+=8.0;
     s1+=222.0;
    } else {
     s0+=25.0;
     s1+=50.0;
    }
   } else {
    if(i31<0.0011224602349102497){
     s1+=7.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i19<1.1146068572998047e-05){
    if(i12<0.009835483506321907){
     s0+=60.0;
     s1+=124.0;
    } else {
     s0+=7.0;
     s1+=932.0;
    }
   } else {
    if(i19<4.9233436584472656e-05){
     s0+=3.0;
     s1+=209.0;
    } else {
     s1+=9084.0;
    }
   }
  }
 }
} else {
 if(i4<0.07544058561325073){
  if(i24<1.0451585054397583){
   if(i49<-0.005940884351730347){
    if(i6<0.04187294840812683){
     s0+=742.0;
     s1+=55.0;
    } else {
     s0+=12.0;
     s1+=17.0;
    }
   } else {
    if(i66<-0.0013791322708129883){
     s0+=829.0;
     s1+=68.0;
    } else {
     s0+=52310.0;
     s1+=112.0;
    }
   }
  } else {
   if(i38<1.1037919521331787){
    if(i36<0.0005125736352056265){
     s0+=3336.0;
     s1+=442.0;
    } else {
     s0+=273.0;
     s1+=1326.0;
    }
   } else {
    if(i14<0.0008799433708190918){
     s0+=10747.0;
     s1+=423.0;
    } else {
     s0+=63.0;
     s1+=93.0;
    }
   }
  }
 } else {
  if(i5<0.9965636730194092){
   if(i69<0.9998834729194641){
    if(i44<0.04615908861160278){
     s0+=84.0;
     s1+=4.0;
    } else {
     s0+=404.0;
    }
   } else {
    if(i6<0.09861251711845398){
     s0+=124.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=72.0;
    }
   }
  } else {
   if(i12<0.001723350491374731){
    if(i20<1.048902988433838){
     s0+=120.0;
     s1+=216.0;
    } else {
     s0+=549.0;
     s1+=80.0;
    }
   } else {
    if(i54<0.004178643226623535){
     s0+=196.0;
     s1+=2468.0;
    } else {
     s0+=469.0;
     s1+=812.0;
    }
   }
  }
 }
}
if(i14<0.0004564523696899414){
 if(i26<0.0003186626126989722){
  if(i59<0.000897154794074595){
   if(i35<1.008370280265808){
    if(i21<0.01615123264491558){
     s0+=50982.0;
     s1+=98.0;
    } else {
     s0+=2205.0;
     s1+=113.0;
    }
   } else {
    if(i63<0.011810430325567722){
     s0+=14.0;
     s1+=116.0;
    } else {
     s0+=311.0;
     s1+=20.0;
    }
   }
  } else {
   if(i41<0.0010405408684164286){
    if(i34<1.0683749914169312){
     s0+=44.0;
    } else {
     s0+=3.0;
     s1+=105.0;
    }
   } else {
    s0+=267.0;
   }
  }
 } else {
  if(i0<0.0819295346736908){
   if(i5<0.9967585206031799){
    if(i52<0.011843645013868809){
     s0+=7071.0;
     s1+=57.0;
    } else {
     s0+=894.0;
     s1+=62.0;
    }
   } else {
    if(i21<0.028201822191476822){
     s0+=5774.0;
     s1+=914.0;
    } else {
     s0+=392.0;
     s1+=514.0;
    }
   }
  } else {
   if(i50<-0.0002504289150238037){
    if(i36<0.0016459620092064142){
     s0+=365.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   } else {
    if(i47<0.06254848837852478){
     s0+=93.0;
     s1+=2491.0;
    } else {
     s0+=851.0;
     s1+=1570.0;
    }
   }
  }
 }
} else {
 if(i0<0.07000383734703064){
  if(i28<0.9936257004737854){
   if(i19<-0.00030666589736938477){
    if(i22<0.8955580592155457){
     s0+=19.0;
     s1+=37.0;
    } else {
     s0+=291.0;
     s1+=22.0;
    }
   } else {
    if(i3<-0.00021499395370483398){
     s0+=10.0;
    } else {
     s0+=45.0;
     s1+=422.0;
    }
   }
  } else {
   if(i1<6.860494613647461e-05){
    if(i36<0.0017599135171622038){
     s0+=241.0;
     s1+=98.0;
    } else {
     s0+=547.0;
     s1+=19.0;
    }
   } else {
    if(i32<1.476589322090149){
     s1+=101.0;
    } else {
     s0+=20.0;
    }
   }
  }
 } else {
  if(i1<4.011392593383789e-05){
   if(i21<0.036900267004966736){
    if(i4<0.12270036339759827){
     s0+=269.0;
     s1+=102.0;
    } else {
     s0+=22.0;
     s1+=80.0;
    }
   } else {
    if(i7<-4.07615807489492e-05){
     s0+=21.0;
     s1+=355.0;
    } else {
     s0+=18.0;
     s1+=21.0;
    }
   }
  } else {
   if(i14<0.0011715888977050781){
    if(i29<1.0002453327178955){
     s0+=79.0;
     s1+=524.0;
    } else {
     s0+=31.0;
     s1+=3424.0;
    }
   } else {
    if(i10<1.0009334087371826){
     s0+=6.0;
     s1+=424.0;
    } else {
     s1+=5645.0;
    }
   }
  }
 }
}
if(i12<0.0050735147669911385){
 if(i0<0.07904142141342163){
  if(i59<0.000788228353485465){
   if(i23<1.0067427158355713){
    if(i39<0.04835192486643791){
     s0+=56311.0;
     s1+=232.0;
    } else {
     s0+=702.0;
     s1+=175.0;
    }
   } else {
    if(i5<1.0023117065429688){
     s0+=2389.0;
     s1+=240.0;
    } else {
     s0+=147.0;
     s1+=221.0;
    }
   }
  } else {
   if(i19<-0.00020438432693481445){
    if(i17<2.1576881408691406e-05){
     s0+=2145.0;
     s1+=66.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i7<6.277210559346713e-06){
     s0+=1346.0;
     s1+=805.0;
    } else {
     s0+=1185.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i5<0.9962878227233887){
   if(i70<0.9980954527854919){
    s0+=414.0;
   } else {
    if(i59<0.0011809112038463354){
     s0+=104.0;
    } else {
     s0+=15.0;
     s1+=18.0;
    }
   }
  } else {
   if(i10<1.0075528621673584){
    if(i26<0.0018501929007470608){
     s0+=307.0;
     s1+=979.0;
    } else {
     s0+=801.0;
     s1+=565.0;
    }
   } else {
    if(i9<1.1962807178497314){
     s0+=21.0;
     s1+=1279.0;
    } else {
     s0+=51.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i3<-9.682774543762207e-05){
  if(i46<0.06978628039360046){
   if(i32<1.250974416732788){
    if(i71<0.0009731472237035632){
     s0+=11.0;
     s1+=173.0;
    } else {
     s0+=133.0;
    }
   } else {
    if(i6<0.0841180682182312){
     s0+=4318.0;
     s1+=123.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   }
  } else {
   if(i11<0.998073160648346){
    s0+=54.0;
   } else {
    if(i4<0.10696500539779663){
     s0+=66.0;
     s1+=52.0;
    } else {
     s0+=2.0;
     s1+=340.0;
    }
   }
  }
 } else {
  if(i29<0.9988089203834534){
   if(i0<0.08674916625022888){
    if(i32<1.304537057876587){
     s0+=4.0;
     s1+=74.0;
    } else {
     s0+=386.0;
     s1+=135.0;
    }
   } else {
    if(i24<1.124053955078125){
     s0+=57.0;
     s1+=241.0;
    } else {
     s0+=5.0;
     s1+=1040.0;
    }
   }
  } else {
   if(i2<0.009185940027236938){
    if(i70<1.0059857368469238){
     s0+=42.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i0<0.11660927534103394){
     s0+=90.0;
     s1+=1430.0;
    } else {
     s0+=7.0;
     s1+=8788.0;
    }
   }
  }
 }
}
if(i0<0.0816357433795929){
 if(i29<1.0052664279937744){
  if(i26<0.0002916561788879335){
   if(i5<1.002470850944519){
    if(i66<-0.0026090145111083984){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=52786.0;
     s1+=253.0;
    }
   } else {
    if(i32<1.2392117977142334){
     s0+=5.0;
     s1+=44.0;
    } else {
     s0+=63.0;
    }
   }
  } else {
   if(i19<-0.000232011079788208){
    if(i53<-0.0381259024143219){
     s0+=580.0;
     s1+=165.0;
    } else {
     s0+=7976.0;
     s1+=81.0;
    }
   } else {
    if(i16<1.000563383102417){
     s0+=6893.0;
     s1+=1046.0;
    } else {
     s0+=751.0;
     s1+=725.0;
    }
   }
  }
 } else {
  if(i17<1.5556812286376953e-05){
   if(i45<1.0985562801361084){
    s1+=41.0;
   } else {
    if(i35<1.0229947566986084){
     s0+=289.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i24<1.0415534973144531){
    s0+=14.0;
   } else {
    if(i62<0.00491178035736084){
     s0+=10.0;
     s1+=602.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i3<0.00010436773300170898){
  if(i36<0.00045606427011080086){
   if(i46<0.06542080640792847){
    if(i35<0.9845026135444641){
     s0+=75.0;
    } else {
     s0+=20.0;
     s1+=6.0;
    }
   } else {
    s0+=231.0;
   }
  } else {
   if(i72<-0.01954205334186554){
    if(i7<-2.1968668079352938e-05){
     s0+=109.0;
     s1+=418.0;
    } else {
     s0+=561.0;
     s1+=134.0;
    }
   } else {
    if(i1<-5.555152893066406e-05){
     s0+=113.0;
     s1+=55.0;
    } else {
     s0+=148.0;
     s1+=1249.0;
    }
   }
  }
 } else {
  if(i5<1.001988172531128){
   if(i44<0.045649439096450806){
    if(i7<-4.150890890741721e-05){
     s0+=2.0;
     s1+=754.0;
    } else {
     s0+=13.0;
     s1+=277.0;
    }
   } else {
    if(i6<0.1739402711391449){
     s0+=302.0;
     s1+=227.0;
    } else {
     s0+=22.0;
     s1+=301.0;
    }
   }
  } else {
   if(i15<3.5822391510009766e-05){
    if(i33<0.012152649462223053){
     s0+=41.0;
     s1+=28.0;
    } else {
     s0+=28.0;
     s1+=987.0;
    }
   } else {
    if(i7<-4.322710447013378e-05){
     s0+=3.0;
     s1+=9629.0;
    } else {
     s0+=34.0;
     s1+=112.0;
    }
   }
  }
 }
}
if(i13<1.055552363395691){
 if(i0<0.07908174395561218){
  if(i3<0.0006021857261657715){
   if(i60<0.000252638419624418){
    if(i5<1.0024893283843994){
     s0+=54307.0;
     s1+=378.0;
    } else {
     s0+=47.0;
     s1+=50.0;
    }
   } else {
    if(i45<1.1812903881072998){
     s0+=2589.0;
     s1+=726.0;
    } else {
     s0+=6988.0;
     s1+=38.0;
    }
   }
  } else {
   if(i24<1.0415534973144531){
    s0+=83.0;
   } else {
    if(i12<0.0017781280912458897){
     s0+=46.0;
    } else {
     s0+=12.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i1<-3.8623809814453125e-05){
   if(i1<-5.4776668548583984e-05){
    if(i59<0.0034228647127747536){
     s0+=220.0;
     s1+=11.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i20<1.0266752243041992){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=36.0;
     s1+=10.0;
    }
   }
  } else {
   if(i36<0.00043331150664016604){
    if(i14<0.00012737512588500977){
     s0+=94.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=12.0;
    }
   } else {
    if(i15<-0.0018562674522399902){
     s0+=31.0;
     s1+=34.0;
    } else {
     s0+=57.0;
     s1+=891.0;
    }
   }
  }
 }
} else {
 if(i7<-4.505901597440243e-05){
  if(i3<0.0005069375038146973){
   if(i15<-0.000797659158706665){
    if(i56<-0.00038196888635866344){
     s0+=35.0;
     s1+=443.0;
    } else {
     s0+=487.0;
     s1+=227.0;
    }
   } else {
    if(i70<0.9969885945320129){
     s0+=53.0;
     s1+=106.0;
    } else {
     s0+=68.0;
     s1+=986.0;
    }
   }
  } else {
   if(i29<1.000479817390442){
    if(i6<0.12948071956634521){
     s0+=157.0;
     s1+=286.0;
    } else {
     s0+=4.0;
     s1+=831.0;
    }
   } else {
    if(i4<0.15209072828292847){
     s0+=66.0;
     s1+=2150.0;
    } else {
     s0+=2.0;
     s1+=7811.0;
    }
   }
  }
 } else {
  if(i4<0.0921301543712616){
   if(i36<0.001410041586495936){
    if(i16<1.0004732608795166){
     s0+=2358.0;
     s1+=424.0;
    } else {
     s0+=145.0;
     s1+=322.0;
    }
   } else {
    if(i17<3.135204315185547e-05){
     s0+=2184.0;
     s1+=64.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   }
  } else {
   if(i11<0.9985629320144653){
    if(i37<0.9996902942657471){
     s0+=271.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i53<0.0757574737071991){
     s0+=140.0;
     s1+=938.0;
    } else {
     s0+=462.0;
     s1+=317.0;
    }
   }
  }
 }
}
if(i1<3.641843795776367e-05){
 if(i0<0.08195626735687256){
  if(i48<0.00030279840575531125){
   if(i30<1.0087716579437256){
    if(i11<1.0009467601776123){
     s0+=45443.0;
     s1+=27.0;
    } else {
     s0+=1129.0;
     s1+=20.0;
    }
   } else {
    if(i73<-2.7158284865436144e-06){
     s0+=1.0;
     s1+=41.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i40<0.0008785824757069349){
    if(i41<0.0003952868573833257){
     s0+=3133.0;
     s1+=79.0;
    } else {
     s0+=2618.0;
     s1+=1355.0;
    }
   } else {
    if(i68<0.006650315131992102){
     s0+=14858.0;
     s1+=377.0;
    } else {
     s0+=1444.0;
     s1+=245.0;
    }
   }
  }
 } else {
  if(i21<0.022570330649614334){
   if(i72<-0.016152411699295044){
    if(i41<0.007422514259815216){
     s0+=702.0;
     s1+=112.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    if(i32<1.0840110778808594){
     s0+=100.0;
    } else {
     s0+=230.0;
     s1+=874.0;
    }
   }
  } else {
   if(i73<1.8609644030220807e-06){
    if(i54<0.005560457706451416){
     s0+=117.0;
     s1+=1625.0;
    } else {
     s0+=236.0;
     s1+=710.0;
    }
   } else {
    s0+=173.0;
   }
  }
 }
} else {
 if(i69<0.9970526695251465){
  s0+=319.0;
 } else {
  if(i12<0.0021814964711666107){
   if(i5<1.0046184062957764){
    if(i60<0.00039436237420886755){
     s0+=219.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=159.0;
   }
  } else {
   if(i8<1.0051665306091309){
    if(i8<0.9955044984817505){
     s0+=43.0;
     s1+=1302.0;
    } else {
     s0+=173.0;
     s1+=700.0;
    }
   } else {
    if(i1<4.190206527709961e-05){
     s0+=29.0;
     s1+=205.0;
    } else {
     s0+=38.0;
     s1+=9358.0;
    }
   }
  }
 }
}
if(i7<-7.877488678786904e-05){
 if(i5<0.9988958239555359){
  if(i30<1.0021642446517944){
   if(i9<1.078019380569458){
    if(i20<1.0311622619628906){
     s0+=548.0;
     s1+=23.0;
    } else {
     s0+=19.0;
     s1+=10.0;
    }
   } else {
    s1+=63.0;
   }
  } else {
   s1+=66.0;
  }
 } else {
  if(i2<0.05322977900505066){
   if(i15<-0.0010723471641540527){
    if(i53<-0.07209038734436035){
     s0+=11.0;
     s1+=60.0;
    } else {
     s0+=127.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.0166703462600708){
     s0+=22.0;
     s1+=42.0;
    } else {
     s0+=1.0;
     s1+=98.0;
    }
   }
  } else {
   if(i0<0.09102347493171692){
    if(i67<3.492333780741319e-05){
     s0+=39.0;
     s1+=514.0;
    } else {
     s0+=37.0;
     s1+=4.0;
    }
   } else {
    if(i29<0.9977729320526123){
     s0+=28.0;
     s1+=675.0;
    } else {
     s0+=23.0;
     s1+=9415.0;
    }
   }
  }
 }
} else {
 if(i0<0.07791456580162048){
  if(i11<1.0016484260559082){
   if(i78<-0.0014259815216064453){
    if(i42<0.0015613820869475603){
     s0+=1650.0;
     s1+=681.0;
    } else {
     s0+=7027.0;
     s1+=173.0;
    }
   } else {
    if(i38<1.067622423171997){
     s0+=35153.0;
     s1+=11.0;
    } else {
     s0+=23853.0;
     s1+=936.0;
    }
   }
  } else {
   if(i61<1.0002539157867432){
    if(i49<0.009254932403564453){
     s0+=121.0;
     s1+=381.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i62<-0.010617196559906006){
     s0+=30.0;
     s1+=22.0;
    } else {
     s0+=471.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i44<0.04630160331726074){
   if(i37<0.9990780353546143){
    if(i3<-0.0005644261837005615){
     s0+=97.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i51<0.005614519119262695){
     s0+=96.0;
     s1+=2376.0;
    } else {
     s0+=67.0;
     s1+=187.0;
    }
   }
  } else {
   if(i7<-1.2289448932278901e-05){
    if(i1<5.7220458984375e-05){
     s0+=719.0;
     s1+=910.0;
    } else {
     s0+=9.0;
     s1+=192.0;
    }
   } else {
    if(i16<1.0028631687164307){
     s0+=1024.0;
     s1+=120.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i4<0.07653620839118958){
 if(i3<0.0006022751331329346){
  if(i31<0.0002956066164188087){
   if(i16<1.00090491771698){
    if(i66<-0.0015636682510375977){
     s0+=373.0;
     s1+=126.0;
    } else {
     s0+=52998.0;
     s1+=285.0;
    }
   } else {
    if(i24<1.0468677282333374){
     s0+=2155.0;
     s1+=26.0;
    } else {
     s0+=517.0;
     s1+=167.0;
    }
   }
  } else {
   if(i45<1.1032289266586304){
    if(i74<0.00014658173313364387){
     s0+=2396.0;
     s1+=991.0;
    } else {
     s0+=906.0;
     s1+=22.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=1594.0;
     s1+=166.0;
    } else {
     s0+=7714.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i5<1.0042133331298828){
   if(i43<-1.4114700206846464e-05){
    if(i32<1.5682398080825806){
     s0+=27.0;
     s1+=295.0;
    } else {
     s0+=88.0;
     s1+=21.0;
    }
   } else {
    if(i12<0.004015547223389149){
     s0+=195.0;
     s1+=3.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i61<1.0007829666137695){
    if(i55<0.00013776833657175303){
     s0+=2.0;
     s1+=667.0;
    } else {
     s0+=15.0;
     s1+=44.0;
    }
   } else {
    if(i13<1.1684364080429077){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i1<7.092952728271484e-06){
  if(i56<-7.185254798969254e-05){
   if(i37<0.9987826943397522){
    if(i34<1.453892469406128){
     s0+=236.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i44<0.04917263984680176){
     s0+=81.0;
     s1+=1043.0;
    } else {
     s0+=504.0;
     s1+=598.0;
    }
   }
  } else {
   if(i47<0.04866570234298706){
    if(i6<0.0376410186290741){
     s0+=31.0;
     s1+=7.0;
    } else {
     s0+=24.0;
     s1+=114.0;
    }
   } else {
    if(i2<0.12120479345321655){
     s0+=433.0;
     s1+=28.0;
    } else {
     s0+=171.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i15<0.00023370981216430664){
   if(i28<1.015091896057129){
    if(i34<1.0545824766159058){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=1187.0;
    }
   } else {
    if(i21<0.026351377367973328){
     s0+=345.0;
     s1+=120.0;
    } else {
     s0+=92.0;
     s1+=837.0;
    }
   }
  } else {
   if(i0<0.09743210673332214){
    if(i34<1.2095597982406616){
     s0+=21.0;
     s1+=324.0;
    } else {
     s0+=46.0;
     s1+=24.0;
    }
   } else {
    if(i10<1.0069150924682617){
     s0+=36.0;
     s1+=983.0;
    } else {
     s0+=4.0;
     s1+=8760.0;
    }
   }
  }
 }
}
if(i17<2.008676528930664e-05){
 if(i9<1.0452215671539307){
  if(i34<1.0557184219360352){
   s0+=42413.0;
  } else {
   if(i29<0.994338870048523){
    if(i9<1.0450997352600098){
     s0+=12733.0;
     s1+=152.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   } else {
    if(i4<0.06948059797286987){
     s0+=9111.0;
     s1+=1097.0;
    } else {
     s0+=142.0;
     s1+=694.0;
    }
   }
  }
 } else {
  if(i15<0.0006514787673950195){
   if(i2<0.09944140911102295){
    if(i0<0.0661783218383789){
     s0+=3014.0;
     s1+=363.0;
    } else {
     s0+=907.0;
     s1+=435.0;
    }
   } else {
    if(i37<0.9988981485366821){
     s0+=259.0;
     s1+=7.0;
    } else {
     s0+=596.0;
     s1+=1941.0;
    }
   }
  } else {
   if(i15<0.001430511474609375){
    if(i5<1.000111699104309){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=205.0;
     s1+=780.0;
    }
   } else {
    if(i0<0.04641416668891907){
     s0+=1.0;
    } else {
     s1+=1339.0;
    }
   }
  }
 }
} else {
 if(i29<1.0001822710037231){
  if(i33<0.02892637625336647){
   if(i5<1.0015249252319336){
    if(i46<0.11062389612197876){
     s0+=976.0;
     s1+=51.0;
    } else {
     s0+=8.0;
     s1+=27.0;
    }
   } else {
    if(i24<1.124168038368225){
     s0+=166.0;
     s1+=96.0;
    } else {
     s0+=24.0;
     s1+=138.0;
    }
   }
  } else {
   if(i29<0.9890663027763367){
    if(i24<1.202110767364502){
     s0+=59.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   } else {
    if(i4<0.007006287574768066){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=726.0;
    }
   }
  }
 } else {
  if(i41<0.00036794229527004063){
   s0+=50.0;
  } else {
   if(i26<0.00017894848133437335){
    s0+=15.0;
   } else {
    if(i1<3.325939178466797e-05){
     s0+=40.0;
     s1+=117.0;
    } else {
     s0+=77.0;
     s1+=9324.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i14<0.000704348087310791){
  if(i0<0.08415213227272034){
   if(i24<1.0451585054397583){
    if(i26<0.00029204069869592786){
     s0+=47522.0;
     s1+=67.0;
    } else {
     s0+=6341.0;
     s1+=208.0;
    }
   } else {
    if(i53<-0.02181747555732727){
     s0+=918.0;
     s1+=383.0;
    } else {
     s0+=9871.0;
     s1+=846.0;
    }
   }
  } else {
   if(i14<-0.00046631693840026855){
    if(i19<-0.00047898292541503906){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=107.0;
    }
   } else {
    if(i0<0.09294065833091736){
     s0+=76.0;
     s1+=153.0;
    } else {
     s0+=10.0;
     s1+=500.0;
    }
   }
  }
 } else {
  if(i15<-0.0024037063121795654){
   if(i56<-0.0002902745036408305){
    s1+=26.0;
   } else {
    if(i79<0.000858956016600132){
     s0+=148.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   }
  } else {
   if(i66<0.0017867982387542725){
    if(i74<0.0006117490120232105){
     s0+=7.0;
     s1+=587.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i45<1.229825496673584){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
} else {
 if(i33<0.025072921067476273){
  if(i16<1.0005630254745483){
   if(i2<0.08800205588340759){
    if(i29<1.0014638900756836){
     s0+=3293.0;
     s1+=322.0;
    } else {
     s0+=185.0;
     s1+=103.0;
    }
   } else {
    if(i49<0.018465638160705566){
     s0+=356.0;
     s1+=872.0;
    } else {
     s0+=483.0;
     s1+=115.0;
    }
   }
  } else {
   if(i16<1.0041706562042236){
    if(i34<1.139474630355835){
     s0+=195.0;
     s1+=935.0;
    } else {
     s0+=668.0;
     s1+=351.0;
    }
   } else {
    if(i67<-4.573069418256637e-06){
     s0+=22.0;
     s1+=1574.0;
    } else {
     s0+=180.0;
     s1+=443.0;
    }
   }
  }
 } else {
  if(i17<-9.775161743164062e-06){
   if(i75<0.23507197201251984){
    if(i69<0.9998732805252075){
     s0+=261.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i6<0.08084702491760254){
    if(i5<0.9981606006622314){
     s0+=165.0;
     s1+=59.0;
    } else {
     s0+=39.0;
     s1+=742.0;
    }
   } else {
    if(i67<4.007842653663829e-05){
     s0+=68.0;
     s1+=8724.0;
    } else {
     s0+=23.0;
     s1+=206.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08468303084373474){
  if(i3<0.0006022751331329346){
   if(i49<-0.0058526694774627686){
    if(i34<1.1792536973953247){
     s0+=1271.0;
     s1+=510.0;
    } else {
     s0+=1632.0;
     s1+=66.0;
    }
   } else {
    if(i39<0.026271212846040726){
     s0+=55076.0;
     s1+=322.0;
    } else {
     s0+=7076.0;
     s1+=533.0;
    }
   }
  } else {
   if(i13<1.034262776374817){
    if(i67<1.403567694069352e-06){
     s0+=96.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i43<-1.417127077729674e-05){
     s0+=15.0;
     s1+=352.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i61<0.9993659257888794){
   s0+=92.0;
  } else {
   if(i44<0.049452394247055054){
    if(i51<0.005453646183013916){
     s0+=1.0;
     s1+=786.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i69<1.0003740787506104){
     s0+=14.0;
     s1+=91.0;
    } else {
     s0+=41.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i15<0.0006553530693054199){
  if(i7<-2.4741364541114308e-05){
   if(i0<0.10961803793907166){
    if(i34<1.1083450317382812){
     s0+=61.0;
     s1+=394.0;
    } else {
     s0+=1157.0;
     s1+=564.0;
    }
   } else {
    if(i73<1.369636947856634e-06){
     s0+=165.0;
     s1+=2833.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i4<0.09134462475776672){
    if(i70<1.000483751296997){
     s0+=2836.0;
     s1+=101.0;
    } else {
     s0+=594.0;
     s1+=247.0;
    }
   } else {
    if(i14<-0.0004056096076965332){
     s0+=282.0;
    } else {
     s0+=540.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i45<1.0569010972976685){
   s0+=27.0;
  } else {
   if(i14<-0.00030475854873657227){
    s0+=22.0;
   } else {
    if(i40<0.003897120477631688){
     s0+=201.0;
     s1+=2067.0;
    } else {
     s0+=2.0;
     s1+=7565.0;
    }
   }
  }
 }
}
if(i4<0.07771864533424377){
 if(i29<1.0052664279937744){
  if(i3<0.0006022751331329346){
   if(i62<-0.0020736753940582275){
    if(i45<1.185624122619629){
     s0+=2064.0;
     s1+=772.0;
    } else {
     s0+=3747.0;
     s1+=156.0;
    }
   } else {
    if(i18<1.0051676034927368){
     s0+=61053.0;
     s1+=737.0;
    } else {
     s0+=1898.0;
     s1+=363.0;
    }
   }
  } else {
   if(i33<0.0068084681406617165){
    if(i20<1.001344919204712){
     s1+=13.0;
    } else {
     s0+=165.0;
     s1+=7.0;
    }
   } else {
    if(i51<0.0017824172973632812){
     s0+=74.0;
     s1+=328.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<0.0004884600639343262){
   if(i45<1.1016805171966553){
    s1+=58.0;
   } else {
    if(i15<0.0020446181297302246){
     s0+=329.0;
     s1+=4.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i26<0.00015445094322785735){
    s0+=18.0;
   } else {
    if(i64<-0.007274519186466932){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=774.0;
    }
   }
  }
 }
} else {
 if(i3<0.00010463595390319824){
  if(i11<0.9985270500183105){
   if(i38<1.5756378173828125){
    if(i71<0.0006152731948532164){
     s0+=352.0;
    } else {
     s0+=141.0;
     s1+=15.0;
    }
   } else {
    if(i20<1.1225571632385254){
     s0+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i33<0.015687085688114166){
    if(i49<0.013520032167434692){
     s0+=188.0;
     s1+=427.0;
    } else {
     s0+=397.0;
     s1+=64.0;
    }
   } else {
    if(i21<0.024447211995720863){
     s0+=205.0;
     s1+=252.0;
    } else {
     s0+=116.0;
     s1+=1073.0;
    }
   }
  }
 } else {
  if(i2<0.12177395820617676){
   if(i32<1.2392117977142334){
    if(i54<0.005367368459701538){
     s0+=25.0;
     s1+=971.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    if(i7<-6.932893302291632e-05){
     s0+=64.0;
     s1+=404.0;
    } else {
     s0+=232.0;
     s1+=30.0;
    }
   }
  } else {
   if(i29<1.0018138885498047){
    if(i44<0.08745896816253662){
     s0+=16.0;
     s1+=1468.0;
    } else {
     s0+=125.0;
     s1+=470.0;
    }
   } else {
    if(i19<0.00020998716354370117){
     s0+=31.0;
     s1+=1526.0;
    } else {
     s1+=7023.0;
    }
   }
  }
 }
}
if(i19<0.00011530518531799316){
 if(i0<0.08135673403739929){
  if(i1<4.190206527709961e-05){
   if(i26<0.00030580812017433345){
    if(i48<0.00026075198547914624){
     s0+=44415.0;
     s1+=37.0;
    } else {
     s0+=8562.0;
     s1+=286.0;
    }
   } else {
    if(i45<1.103413462638855){
     s0+=3808.0;
     s1+=1204.0;
    } else {
     s0+=11705.0;
     s1+=468.0;
    }
   }
  } else {
   if(i28<0.9856075644493103){
    if(i53<0.013171762228012085){
     s0+=15.0;
     s1+=286.0;
    } else {
     s0+=25.0;
     s1+=6.0;
    }
   } else {
    if(i10<1.000090479850769){
     s0+=105.0;
     s1+=9.0;
    } else {
     s0+=29.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i33<0.023490717634558678){
   if(i70<0.9973286390304565){
    if(i50<-0.0002566874027252197){
     s0+=220.0;
    } else {
     s0+=36.0;
     s1+=10.0;
    }
   } else {
    if(i27<1.02460777759552){
     s0+=410.0;
     s1+=1331.0;
    } else {
     s0+=673.0;
     s1+=329.0;
    }
   }
  } else {
   if(i73<9.246357421943685e-07){
    if(i1<-2.6047229766845703e-05){
     s0+=80.0;
     s1+=269.0;
    } else {
     s0+=98.0;
     s1+=2790.0;
    }
   } else {
    if(i31<0.0013224058784544468){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=146.0;
    }
   }
  }
 }
} else {
 if(i2<0.06415516138076782){
  if(i32<1.1386182308197021){
   if(i50<-2.6941299438476562e-05){
    s0+=150.0;
   } else {
    s1+=203.0;
   }
  } else {
   if(i52<0.014604602009057999){
    if(i57<0.0018405228620395064){
     s0+=564.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i12<0.0024817539379000664){
     s0+=2.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i32<1.0762357711791992){
   s0+=41.0;
  } else {
   if(i7<-4.330423689680174e-05){
    if(i17<-1.3202428817749023e-05){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=9547.0;
    }
   } else {
    if(i41<0.0019160558003932238){
     s0+=1.0;
     s1+=101.0;
    } else {
     s0+=61.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i6<0.07196682691574097){
 if(i4<0.07645988464355469){
  if(i14<0.0006601214408874512){
   if(i52<0.007412450388073921){
    if(i5<1.002468466758728){
     s0+=64787.0;
     s1+=1174.0;
    } else {
     s0+=156.0;
     s1+=166.0;
    }
   } else {
    if(i0<0.04171547293663025){
     s0+=2963.0;
     s1+=423.0;
    } else {
     s0+=500.0;
     s1+=437.0;
    }
   }
  } else {
   if(i67<2.5475960683252197e-06){
    if(i48<0.00024218903854489326){
     s0+=31.0;
    } else {
     s0+=24.0;
     s1+=673.0;
    }
   } else {
    if(i20<1.0148155689239502){
     s0+=109.0;
     s1+=148.0;
    } else {
     s0+=350.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i16<0.9971921443939209){
   if(i3<-0.000596165657043457){
    if(i22<0.9624212980270386){
     s1+=2.0;
    } else {
     s0+=132.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.000797569751739502){
     s0+=1.0;
     s1+=21.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i44<0.04736703634262085){
    if(i47<0.04813629388809204){
     s0+=1.0;
     s1+=1526.0;
    } else {
     s0+=29.0;
     s1+=29.0;
    }
   } else {
    if(i30<0.9851247072219849){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=24.0;
    }
   }
  }
 }
} else {
 if(i40<0.005422883667051792){
  if(i44<0.04630386829376221){
   if(i50<-0.00020873546600341797){
    if(i43<-7.939868737594225e-06){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i2<0.09085133671760559){
     s0+=135.0;
     s1+=182.0;
    } else {
     s0+=30.0;
     s1+=1457.0;
    }
   }
  } else {
   if(i5<1.0015729665756226){
    if(i38<1.253311276435852){
     s0+=817.0;
     s1+=513.0;
    } else {
     s0+=552.0;
     s1+=49.0;
    }
   } else {
    if(i0<0.10162821412086487){
     s0+=58.0;
     s1+=25.0;
    } else {
     s0+=45.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i0<0.1075187623500824){
   if(i25<0.9953163862228394){
    if(i52<0.002098399680107832){
     s0+=45.0;
     s1+=18.0;
    } else {
     s0+=7.0;
     s1+=214.0;
    }
   } else {
    if(i52<0.0050102900713682175){
     s0+=137.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=27.0;
    }
   }
  } else {
   if(i4<0.13369223475456238){
    if(i28<1.0416483879089355){
     s0+=15.0;
     s1+=283.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   } else {
    if(i57<0.0009755057981237769){
     s0+=26.0;
     s1+=563.0;
    } else {
     s0+=8.0;
     s1+=8596.0;
    }
   }
  }
 }
}
if(i6<0.07109606266021729){
 if(i0<0.07543563842773438){
  if(i3<0.0006018579006195068){
   if(i51<-0.0016186535358428955){
    if(i4<0.036614686250686646){
     s0+=3329.0;
     s1+=371.0;
    } else {
     s0+=425.0;
     s1+=331.0;
    }
   } else {
    if(i30<1.006680965423584){
     s0+=62641.0;
     s1+=782.0;
    } else {
     s0+=1849.0;
     s1+=267.0;
    }
   }
  } else {
   if(i17<1.8835067749023438e-05){
    if(i69<1.0002005100250244){
     s0+=130.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=38.0;
    }
   } else {
    if(i69<0.9975892901420593){
     s0+=57.0;
     s1+=1.0;
    } else {
     s0+=150.0;
     s1+=743.0;
    }
   }
  }
 } else {
  if(i47<0.046944111585617065){
   if(i29<0.9906057119369507){
    if(i70<1.002049207687378){
     s0+=85.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i48<0.00021188650862313807){
     s0+=7.0;
    } else {
     s0+=32.0;
     s1+=1954.0;
    }
   }
  } else {
   if(i10<1.0070421695709229){
    if(i61<0.9998669624328613){
     s0+=108.0;
     s1+=52.0;
    } else {
     s0+=167.0;
     s1+=8.0;
    }
   } else {
    if(i56<-0.00086631765589118){
     s0+=1.0;
    } else {
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i0<0.10825455188751221){
  if(i49<0.013666898012161255){
   if(i50<-3.063678741455078e-05){
    if(i73<-3.196171746822074e-06){
     s0+=9.0;
     s1+=34.0;
    } else {
     s0+=287.0;
     s1+=23.0;
    }
   } else {
    if(i72<-0.015831362456083298){
     s0+=148.0;
     s1+=50.0;
    } else {
     s0+=186.0;
     s1+=833.0;
    }
   }
  } else {
   if(i31<0.0008428822038695216){
    if(i45<1.150450348854065){
     s0+=65.0;
     s1+=25.0;
    } else {
     s0+=147.0;
     s1+=4.0;
    }
   } else {
    if(i54<0.004009425640106201){
     s0+=163.0;
     s1+=5.0;
    } else {
     s0+=374.0;
    }
   }
  }
 } else {
  if(i12<0.00468905596062541){
   if(i9<1.084590196609497){
    if(i36<0.0005053612403571606){
     s0+=45.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=787.0;
    }
   } else {
    if(i47<0.0791073739528656){
     s0+=6.0;
     s1+=285.0;
    } else {
     s0+=615.0;
     s1+=209.0;
    }
   }
  } else {
   if(i37<0.9986838698387146){
    if(i11<0.9978760480880737){
     s0+=49.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i24<1.1227065324783325){
     s0+=49.0;
     s1+=1407.0;
    } else {
     s0+=9.0;
     s1+=8821.0;
    }
   }
  }
 }
}
if(i1<3.629922866821289e-05){
 if(i63<0.025539018213748932){
  if(i8<1.0080897808074951){
   if(i2<0.08819770812988281){
    if(i22<0.9740207195281982){
     s0+=130.0;
     s1+=77.0;
    } else {
     s0+=54111.0;
     s1+=403.0;
    }
   } else {
    if(i37<0.9995220899581909){
     s0+=147.0;
     s1+=2.0;
    } else {
     s0+=74.0;
     s1+=147.0;
    }
   }
  } else {
   if(i49<0.015719950199127197){
    if(i19<-2.422928810119629e-05){
     s0+=40.0;
     s1+=10.0;
    } else {
     s0+=27.0;
     s1+=594.0;
    }
   } else {
    if(i60<-6.922776810824871e-05){
     s0+=2.0;
     s1+=11.0;
    } else {
     s0+=70.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i3<-0.0002187490463256836){
   if(i4<0.0854572057723999){
    if(i2<0.06983831524848938){
     s0+=10664.0;
     s1+=396.0;
    } else {
     s0+=859.0;
     s1+=265.0;
    }
   } else {
    if(i43<1.71999954545754e-06){
     s0+=219.0;
     s1+=693.0;
    } else {
     s0+=304.0;
     s1+=47.0;
    }
   }
  } else {
   if(i55<2.467213198542595e-05){
    if(i0<0.08597847819328308){
     s0+=1990.0;
     s1+=190.0;
    } else {
     s0+=318.0;
     s1+=302.0;
    }
   } else {
    if(i36<0.002029743744060397){
     s0+=168.0;
     s1+=1215.0;
    } else {
     s0+=1209.0;
     s1+=1089.0;
    }
   }
  }
 }
} else {
 if(i24<1.0409044027328491){
  if(i40<0.0008519121911376715){
   s0+=341.0;
  } else {
   if(i66<-7.224082946777344e-05){
    s0+=15.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i35<1.0149405002593994){
   if(i4<0.13139590620994568){
    if(i12<0.0021814964711666107){
     s0+=129.0;
     s1+=28.0;
    } else {
     s0+=258.0;
     s1+=1685.0;
    }
   } else {
    if(i50<-0.0005249977111816406){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=2345.0;
    }
   }
  } else {
   if(i26<0.00018894026288762689){
    s0+=13.0;
   } else {
    if(i33<0.004400765057653189){
     s0+=34.0;
     s1+=132.0;
    } else {
     s0+=15.0;
     s1+=7440.0;
    }
   }
  }
 }
}
if(i4<0.07745996117591858){
 if(i5<1.0024913549423218){
  if(i13<1.0410068035125732){
   if(i36<0.0003529550158418715){
    s0+=35195.0;
   } else {
    if(i80<-0.0001647472381591797){
     s0+=8759.0;
     s1+=580.0;
    } else {
     s0+=15465.0;
     s1+=45.0;
    }
   }
  } else {
   if(i42<0.002012640703469515){
    if(i75<0.022503411397337914){
     s0+=3962.0;
     s1+=501.0;
    } else {
     s0+=557.0;
     s1+=710.0;
    }
   } else {
    if(i75<0.16872143745422363){
     s0+=4966.0;
     s1+=272.0;
    } else {
     s0+=4.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i32<1.2392117977142334){
   if(i38<1.069656252861023){
    s0+=3.0;
   } else {
    s1+=816.0;
   }
  } else {
   if(i11<1.0019960403442383){
    if(i61<0.9999246597290039){
     s1+=6.0;
    } else {
     s0+=178.0;
    }
   } else {
    if(i68<0.0050133224576711655){
     s0+=79.0;
     s1+=62.0;
    } else {
     s0+=9.0;
     s1+=220.0;
    }
   }
  }
 }
} else {
 if(i33<0.024052420631051064){
  if(i36<0.00045606427011080086){
   if(i29<1.0010697841644287){
    s0+=374.0;
   } else {
    if(i36<0.00026583089493215084){
     s0+=3.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i31<0.002357809105888009){
    if(i72<-0.018050841987133026){
     s0+=240.0;
     s1+=249.0;
    } else {
     s0+=282.0;
     s1+=3043.0;
    }
   } else {
    if(i12<0.005471907556056976){
     s0+=640.0;
     s1+=325.0;
    } else {
     s0+=50.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i29<0.9899688959121704){
   if(i7<-1.5725792763987556e-05){
    if(i61<1.0004236698150635){
     s0+=13.0;
     s1+=280.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i47<0.025518089532852173){
     s1+=2.0;
    } else {
     s0+=148.0;
     s1+=3.0;
    }
   }
  } else {
   if(i71<0.0002659972233232111){
    if(i36<0.0009331209002994001){
     s0+=41.0;
    } else {
     s0+=58.0;
     s1+=699.0;
    }
   } else {
    if(i3<-2.4318695068359375e-05){
     s0+=29.0;
     s1+=453.0;
    } else {
     s0+=10.0;
     s1+=8538.0;
    }
   }
  }
 }
}
if(i4<0.07774654030799866){
 if(i3<0.0006218850612640381){
  if(i24<1.0486011505126953){
   if(i62<-0.0022433698177337646){
    if(i4<0.04371669888496399){
     s0+=1522.0;
     s1+=119.0;
    } else {
     s0+=179.0;
     s1+=98.0;
    }
   } else {
    if(i65<0.04252957925200462){
     s0+=49610.0;
     s1+=55.0;
    } else {
     s0+=4295.0;
     s1+=85.0;
    }
   }
  } else {
   if(i38<1.1037919521331787){
    if(i48<0.00046423569438047707){
     s0+=1664.0;
     s1+=255.0;
    } else {
     s0+=963.0;
     s1+=1076.0;
    }
   } else {
    if(i1<1.7344951629638672e-05){
     s0+=10035.0;
     s1+=330.0;
    } else {
     s0+=537.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i7<-4.330423689680174e-05){
   if(i32<1.5682398080825806){
    if(i51<0.002151697874069214){
     s0+=20.0;
     s1+=968.0;
    } else {
     s0+=12.0;
     s1+=12.0;
    }
   } else {
    if(i75<0.11338235437870026){
     s0+=94.0;
     s1+=15.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i70<1.0025379657745361){
    if(i67<-1.6868004877323983e-06){
     s0+=173.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i12<0.005086022429168224){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i12<0.004690013825893402){
  if(i54<0.004279911518096924){
   if(i37<0.999293327331543){
    if(i27<1.012523889541626){
     s0+=154.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=15.0;
    }
   } else {
    if(i79<-0.002067392459139228){
     s0+=267.0;
     s1+=198.0;
    } else {
     s0+=115.0;
     s1+=1765.0;
    }
   }
  } else {
   if(i44<0.03995847702026367){
    if(i36<0.0005488588940352201){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=70.0;
    }
   } else {
    if(i15<0.0015416741371154785){
     s0+=947.0;
     s1+=225.0;
    } else {
     s1+=65.0;
    }
   }
  }
 } else {
  if(i14<-0.0005289316177368164){
   s0+=102.0;
  } else {
   if(i56<-0.00011510305921547115){
    if(i10<1.0053062438964844){
     s0+=70.0;
     s1+=2515.0;
    } else {
     s0+=1.0;
     s1+=8271.0;
    }
   } else {
    if(i0<0.10950520634651184){
     s0+=175.0;
     s1+=146.0;
    } else {
     s0+=12.0;
     s1+=702.0;
    }
   }
  }
 }
}
if(i4<0.08138653635978699){
 if(i55<-2.1662192011717707e-05){
  if(i43<-1.4807534171268344e-05){
   s1+=327.0;
  } else {
   if(i14<0.00022476911544799805){
    s1+=21.0;
   } else {
    if(i36<0.001217247685417533){
     s1+=5.0;
    } else {
     s0+=53.0;
    }
   }
  }
 } else {
  if(i3<0.0006022751331329346){
   if(i52<0.00803966261446476){
    if(i2<0.06915983557701111){
     s0+=63481.0;
     s1+=896.0;
    } else {
     s0+=2829.0;
     s1+=586.0;
    }
   } else {
    if(i3<0.00016927719116210938){
     s0+=2856.0;
     s1+=577.0;
    } else {
     s0+=186.0;
     s1+=219.0;
    }
   }
  } else {
   if(i26<0.0001893652806757018){
    if(i7<-5.395807602326386e-05){
     s1+=8.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i49<0.008376538753509521){
     s0+=133.0;
     s1+=778.0;
    } else {
     s0+=68.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i36<0.0005144427996128798){
  if(i13<1.0601624250411987){
   if(i45<1.0670123100280762){
    if(i5<1.001075029373169){
     s0+=142.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i43<-3.262372047174722e-06){
     s0+=2.0;
     s1+=60.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i31<0.0002701293851714581){
    s1+=3.0;
   } else {
    if(i69<1.0009145736694336){
     s0+=253.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i7<-1.3542743545258418e-05){
   if(i17<-1.5616416931152344e-05){
    if(i43<-9.154518011200707e-06){
     s0+=4.0;
     s1+=7.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i21<0.034089818596839905){
     s0+=494.0;
     s1+=4176.0;
    } else {
     s0+=80.0;
     s1+=8901.0;
    }
   }
  } else {
   if(i3<-0.000850677490234375){
    if(i44<0.006791234016418457){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=252.0;
     s1+=1.0;
    }
   } else {
    if(i64<-0.0042671747505664825){
     s0+=326.0;
     s1+=92.0;
    } else {
     s0+=42.0;
     s1+=243.0;
    }
   }
  }
 }
}
if(i0<0.0834648609161377){
 if(i16<1.002916693687439){
  if(i51<-0.0016703605651855469){
   if(i42<0.0019837142899632454){
    if(i61<0.9999536275863647){
     s0+=453.0;
     s1+=496.0;
    } else {
     s0+=689.0;
     s1+=54.0;
    }
   } else {
    if(i33<0.04985794797539711){
     s0+=2325.0;
     s1+=153.0;
    } else {
     s0+=5.0;
     s1+=43.0;
    }
   }
  } else {
   if(i0<0.06722939014434814){
    if(i24<1.0475225448608398){
     s0+=53205.0;
     s1+=160.0;
    } else {
     s0+=9461.0;
     s1+=674.0;
    }
   } else {
    if(i53<0.0033656954765319824){
     s0+=186.0;
     s1+=258.0;
    } else {
     s0+=2034.0;
     s1+=289.0;
    }
   }
  }
 } else {
  if(i3<0.00045305490493774414){
   if(i1<1.2993812561035156e-05){
    if(i13<1.149401307106018){
     s0+=774.0;
     s1+=10.0;
    } else {
     s0+=13.0;
     s1+=22.0;
    }
   } else {
    if(i8<0.9887660145759583){
     s0+=20.0;
     s1+=40.0;
    } else {
     s0+=133.0;
     s1+=17.0;
    }
   }
  } else {
   if(i40<0.00223548524081707){
    if(i40<0.00035971126635558903){
     s0+=5.0;
    } else {
     s1+=599.0;
    }
   } else {
    if(i20<1.015784502029419){
     s0+=12.0;
     s1+=196.0;
    } else {
     s0+=176.0;
     s1+=150.0;
    }
   }
  }
 }
} else {
 if(i16<1.0030031204223633){
  if(i7<-1.3797138308291323e-05){
   if(i72<-0.017061825841665268){
    if(i39<0.05893310159444809){
     s0+=264.0;
     s1+=199.0;
    } else {
     s0+=129.0;
     s1+=1182.0;
    }
   } else {
    if(i12<0.0016123196110129356){
     s0+=56.0;
     s1+=103.0;
    } else {
     s0+=95.0;
     s1+=2717.0;
    }
   }
  } else {
   if(i46<0.06480750441551208){
    if(i67<2.0355308151920326e-05){
     s0+=4.0;
     s1+=182.0;
    } else {
     s0+=61.0;
     s1+=4.0;
    }
   } else {
    if(i47<0.057545989751815796){
     s0+=13.0;
     s1+=59.0;
    } else {
     s0+=852.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i7<-4.633617209037766e-05){
   if(i2<0.11830508708953857){
    if(i53<0.053568243980407715){
     s0+=2.0;
     s1+=768.0;
    } else {
     s0+=46.0;
     s1+=2.0;
    }
   } else {
    if(i8<1.0036773681640625){
     s0+=7.0;
     s1+=1180.0;
    } else {
     s1+=7229.0;
    }
   }
  } else {
   if(i11<1.0017807483673096){
    if(i78<-0.002088576555252075){
     s0+=14.0;
     s1+=111.0;
    } else {
     s0+=50.0;
     s1+=24.0;
    }
   } else {
    s1+=129.0;
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i21<0.025294862687587738){
  if(i16<1.0025867223739624){
   if(i59<0.000736340181902051){
    if(i11<1.0006074905395508){
     s0+=55806.0;
     s1+=323.0;
    } else {
     s0+=3062.0;
     s1+=362.0;
    }
   } else {
    if(i10<0.9874667525291443){
     s0+=2309.0;
     s1+=124.0;
    } else {
     s0+=2644.0;
     s1+=797.0;
    }
   }
  } else {
   if(i5<1.0025041103363037){
    if(i4<0.1270102858543396){
     s0+=638.0;
     s1+=95.0;
    } else {
     s0+=3.0;
     s1+=57.0;
    }
   } else {
    if(i32<1.4786540269851685){
     s0+=24.0;
     s1+=385.0;
    } else {
     s0+=62.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<0.06729453802108765){
   if(i32<1.1860926151275635){
    if(i7<1.701242581475526e-06){
     s0+=76.0;
     s1+=593.0;
    } else {
     s0+=307.0;
     s1+=104.0;
    }
   } else {
    if(i52<0.013500340282917023){
     s0+=4050.0;
     s1+=99.0;
    } else {
     s0+=369.0;
     s1+=291.0;
    }
   }
  } else {
   if(i1<-4.920363426208496e-05){
    if(i71<0.0016897809691727161){
     s0+=285.0;
     s1+=35.0;
    } else {
     s0+=6.0;
     s1+=85.0;
    }
   } else {
    if(i33<0.014374228194355965){
     s0+=164.0;
     s1+=263.0;
    } else {
     s0+=83.0;
     s1+=2462.0;
    }
   }
  }
 }
} else {
 if(i2<0.09109890460968018){
  if(i45<1.1063789129257202){
   if(i32<1.089235782623291){
    if(i43<-7.867209205869585e-06){
     s1+=20.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i43<-1.5931524330881075e-06){
     s1+=609.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<-6.285290874075145e-05){
    if(i66<0.0038637518882751465){
     s0+=9.0;
     s1+=224.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   } else {
    if(i17<3.325939178466797e-05){
     s0+=863.0;
     s1+=20.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i43<2.612126309031737e-06){
   if(i45<1.259662389755249){
    if(i64<-0.009725786745548248){
     s0+=242.0;
     s1+=204.0;
    } else {
     s0+=101.0;
     s1+=2643.0;
    }
   } else {
    if(i15<0.0003267526626586914){
     s0+=4.0;
     s1+=534.0;
    } else {
     s1+=6630.0;
    }
   }
  } else {
   s0+=45.0;
  }
 }
}
if(i8<1.0080132484436035){
 if(i6<0.07537484169006348){
  if(i0<0.08022007346153259){
   if(i11<1.0019540786743164){
    if(i13<1.0398929119110107){
     s0+=58305.0;
     s1+=504.0;
    } else {
     s0+=9303.0;
     s1+=1243.0;
    }
   } else {
    if(i69<1.0021694898605347){
     s0+=219.0;
     s1+=429.0;
    } else {
     s0+=430.0;
     s1+=56.0;
    }
   }
  } else {
   if(i50<-0.00014162063598632812){
    s0+=104.0;
   } else {
    if(i53<0.052519768476486206){
     s0+=56.0;
     s1+=706.0;
    } else {
     s0+=56.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i60<0.0006980820326134562){
   if(i12<0.004563730210065842){
    if(i13<1.09038245677948){
     s0+=399.0;
     s1+=327.0;
    } else {
     s0+=495.0;
     s1+=53.0;
    }
   } else {
    if(i37<0.9989867210388184){
     s0+=57.0;
    } else {
     s0+=115.0;
     s1+=681.0;
    }
   }
  } else {
   if(i1<-4.0411949157714844e-05){
    if(i38<1.4901387691497803){
     s0+=85.0;
     s1+=14.0;
    } else {
     s0+=5.0;
     s1+=93.0;
    }
   } else {
    if(i0<0.09945693612098694){
     s0+=46.0;
     s1+=114.0;
    } else {
     s0+=25.0;
     s1+=1794.0;
    }
   }
  }
 }
} else {
 if(i7<-4.303509558667429e-05){
  if(i3<0.0009450912475585938){
   if(i69<1.0023505687713623){
    if(i0<0.05926576256752014){
     s0+=26.0;
     s1+=107.0;
    } else {
     s0+=14.0;
     s1+=1836.0;
    }
   } else {
    if(i2<0.14836055040359497){
     s0+=45.0;
     s1+=14.0;
    } else {
     s1+=125.0;
    }
   }
  } else {
   if(i16<0.997504472732544){
    if(i6<0.1668294370174408){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=140.0;
    }
   } else {
    if(i54<0.012844741344451904){
     s1+=7366.0;
    } else {
     s0+=1.0;
     s1+=813.0;
    }
   }
  }
 } else {
  if(i12<0.002712855115532875){
   if(i17<5.900859832763672e-06){
    if(i14<-0.00026929378509521484){
     s0+=1.0;
     s1+=71.0;
    } else {
     s0+=208.0;
     s1+=111.0;
    }
   } else {
    if(i24<1.0611289739608765){
     s0+=8.0;
     s1+=17.0;
    } else {
     s0+=757.0;
     s1+=5.0;
    }
   }
  } else {
   if(i73<9.246357421943685e-07){
    if(i40<0.004003584384918213){
     s0+=58.0;
     s1+=508.0;
    } else {
     s0+=84.0;
     s1+=62.0;
    }
   } else {
    if(i67<3.999733962700702e-06){
     s1+=2.0;
    } else {
     s0+=133.0;
    }
   }
  }
 }
}
if(i10<1.0056257247924805){
 if(i5<1.0023783445358276){
  if(i2<0.08524474501609802){
   if(i54<-0.002860039472579956){
    if(i0<0.022237658500671387){
     s0+=1323.0;
     s1+=177.0;
    } else {
     s0+=221.0;
     s1+=309.0;
    }
   } else {
    if(i4<0.06297677755355835){
     s0+=63670.0;
     s1+=1038.0;
    } else {
     s0+=2958.0;
     s1+=552.0;
    }
   }
  } else {
   if(i7<-1.2268309546925593e-05){
    if(i58<0.03253751993179321){
     s0+=173.0;
     s1+=1903.0;
    } else {
     s0+=396.0;
     s1+=625.0;
    }
   } else {
    if(i70<0.9973198175430298){
     s0+=509.0;
    } else {
     s0+=612.0;
     s1+=326.0;
    }
   }
  }
 } else {
  if(i12<0.0024146619252860546){
   s0+=73.0;
  } else {
   if(i33<0.019121291115880013){
    if(i64<-0.0036834641359746456){
     s0+=88.0;
     s1+=37.0;
    } else {
     s0+=53.0;
     s1+=312.0;
    }
   } else {
    if(i32<1.613681674003601){
     s0+=1.0;
     s1+=1357.0;
    } else {
     s0+=4.0;
     s1+=174.0;
    }
   }
  }
 }
} else {
 if(i57<0.0008409160654991865){
  if(i69<0.9998887777328491){
   if(i4<0.05625733733177185){
    if(i5<1.0064711570739746){
     s0+=80.0;
     s1+=18.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i66<0.005993545055389404){
     s0+=11.0;
     s1+=770.0;
    } else {
     s0+=31.0;
     s1+=27.0;
    }
   }
  } else {
   if(i38<1.1386182308197021){
    if(i5<1.0007719993591309){
     s0+=9.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i76<3.238131284888368e-06){
     s0+=675.0;
     s1+=3.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i37<0.9990329742431641){
   if(i55<2.1091018425067887e-05){
    s0+=20.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i19<1.5974044799804688e-05){
    if(i57<0.001648993231356144){
     s0+=54.0;
     s1+=20.0;
    } else {
     s1+=157.0;
    }
   } else {
    if(i12<0.0022362954914569855){
     s0+=55.0;
     s1+=93.0;
    } else {
     s0+=10.0;
     s1+=9278.0;
    }
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i14<0.000655829906463623){
  if(i6<0.07131022214889526){
   if(i48<0.00030214566504582763){
    if(i16<1.0035502910614014){
     s0+=46735.0;
     s1+=75.0;
    } else {
     s0+=23.0;
     s1+=24.0;
    }
   } else {
    if(i55<8.713144052308053e-05){
     s0+=7959.0;
     s1+=1337.0;
    } else {
     s0+=9563.0;
     s1+=49.0;
    }
   }
  } else {
   if(i32<1.0840110778808594){
    s0+=168.0;
   } else {
    if(i29<0.9938920736312866){
     s0+=161.0;
     s1+=32.0;
    } else {
     s0+=125.0;
     s1+=457.0;
    }
   }
  }
 } else {
  if(i1<4.863739013671875e-05){
   if(i61<1.0003321170806885){
    if(i24<1.0577802658081055){
     s0+=70.0;
     s1+=8.0;
    } else {
     s0+=19.0;
     s1+=58.0;
    }
   } else {
    if(i4<0.10448324680328369){
     s0+=196.0;
     s1+=4.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i19<-0.0002472996711730957){
    if(i39<0.19358494877815247){
     s1+=14.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i3<0.0007385015487670898){
     s0+=1.0;
     s1+=6.0;
    } else {
     s1+=357.0;
    }
   }
  }
 }
} else {
 if(i0<0.0850517749786377){
  if(i7<-4.671976785175502e-05){
   if(i15<-0.0007852315902709961){
    if(i52<0.013301268219947815){
     s0+=426.0;
     s1+=39.0;
    } else {
     s0+=64.0;
     s1+=197.0;
    }
   } else {
    if(i45<1.2280436754226685){
     s0+=18.0;
     s1+=573.0;
    } else {
     s0+=111.0;
     s1+=172.0;
    }
   }
  } else {
   if(i42<0.0014563803561031818){
    if(i75<0.02727852389216423){
     s0+=955.0;
     s1+=258.0;
    } else {
     s0+=61.0;
     s1+=255.0;
    }
   } else {
    if(i14<0.0008260607719421387){
     s0+=3221.0;
     s1+=147.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i7<-1.4285240467870608e-05){
   if(i4<0.12124663591384888){
    if(i20<1.0738338232040405){
     s0+=138.0;
     s1+=1479.0;
    } else {
     s0+=219.0;
     s1+=218.0;
    }
   } else {
    if(i40<0.0011288097593933344){
     s0+=32.0;
     s1+=104.0;
    } else {
     s0+=125.0;
     s1+=10966.0;
    }
   }
  } else {
   if(i64<-0.0038421093486249447){
    if(i37<1.0009324550628662){
     s0+=613.0;
     s1+=99.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i50<-0.00014322996139526367){
     s0+=62.0;
    } else {
     s0+=42.0;
     s1+=157.0;
    }
   }
  }
 }
}
if(i2<0.08237043023109436){
 if(i17<1.9252300262451172e-05){
  if(i24<1.0467959642410278){
   if(i78<-0.0009112954139709473){
    if(i1<-4.947185516357422e-05){
     s0+=5299.0;
     s1+=23.0;
    } else {
     s0+=2133.0;
     s1+=208.0;
    }
   } else {
    if(i48<0.0002833615290001035){
     s0+=41297.0;
     s1+=5.0;
    } else {
     s0+=5489.0;
     s1+=57.0;
    }
   }
  } else {
   if(i45<1.103413462638855){
    if(i40<0.00029505687416531146){
     s0+=1919.0;
    } else {
     s0+=1516.0;
     s1+=1349.0;
    }
   } else {
    if(i6<0.07113996148109436){
     s0+=9755.0;
     s1+=343.0;
    } else {
     s0+=146.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i10<1.0059412717819214){
   if(i52<0.016550373286008835){
    if(i55<0.00014157150872051716){
     s0+=548.0;
     s1+=260.0;
    } else {
     s0+=677.0;
     s1+=18.0;
    }
   } else {
    if(i0<0.006121546030044556){
     s0+=28.0;
     s1+=34.0;
    } else {
     s1+=205.0;
    }
   }
  } else {
   if(i12<0.0015762727707624435){
    s0+=32.0;
   } else {
    if(i32<1.613681674003601){
     s1+=467.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i0<0.09925583004951477){
  if(i24<1.0452029705047607){
   if(i14<-7.924437522888184e-05){
    if(i39<0.10091082751750946){
     s0+=291.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i44<0.042452991008758545){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=49.0;
    }
   }
  } else {
   if(i44<0.04144689440727234){
    if(i64<-0.005236605182290077){
     s0+=73.0;
     s1+=27.0;
    } else {
     s0+=70.0;
     s1+=1008.0;
    }
   } else {
    if(i26<0.0012571981642395258){
     s0+=143.0;
     s1+=149.0;
    } else {
     s0+=472.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i14<-0.0004024505615234375){
   if(i36<0.0043329838663339615){
    s0+=299.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i10<1.006913661956787){
    if(i44<0.0597858726978302){
     s0+=28.0;
     s1+=2789.0;
    } else {
     s0+=649.0;
     s1+=1263.0;
    }
   } else {
    if(i71<0.00013640723773278296){
     s0+=29.0;
     s1+=117.0;
    } else {
     s0+=11.0;
     s1+=8851.0;
    }
   }
  }
 }
}
if(i0<0.08223742246627808){
 if(i13<1.0452277660369873){
  if(i49<-0.005504220724105835){
   if(i41<0.0017711082473397255){
    if(i40<0.00038775839493609965){
     s0+=760.0;
     s1+=8.0;
    } else {
     s0+=207.0;
     s1+=287.0;
    }
   } else {
    if(i1<4.8279762268066406e-05){
     s0+=1268.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   }
  } else {
   if(i1<3.8951635360717773e-05){
    if(i24<1.0451585054397583){
     s0+=53015.0;
     s1+=164.0;
    } else {
     s0+=6574.0;
     s1+=361.0;
    }
   } else {
    if(i41<0.000395697308704257){
     s0+=226.0;
    } else {
     s0+=39.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i17<1.8894672393798828e-05){
   if(i7<-3.152010322082788e-05){
    if(i24<1.0731133222579956){
     s0+=204.0;
     s1+=375.0;
    } else {
     s0+=618.0;
     s1+=174.0;
    }
   } else {
    if(i20<1.0105414390563965){
     s0+=985.0;
     s1+=298.0;
    } else {
     s0+=4791.0;
     s1+=333.0;
    }
   }
  } else {
   if(i45<1.1480928659439087){
    if(i11<1.0012092590332031){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=457.0;
    }
   } else {
    if(i62<0.0009482502937316895){
     s0+=194.0;
     s1+=453.0;
    } else {
     s0+=472.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i37<0.9988102912902832){
  if(i41<0.027536440640687943){
   if(i16<0.9964806437492371){
    s0+=389.0;
   } else {
    if(i29<0.9951848983764648){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i3<0.0005117058753967285){
   if(i51<0.004277348518371582){
    if(i42<0.000434411340393126){
     s0+=85.0;
     s1+=25.0;
    } else {
     s0+=211.0;
     s1+=2199.0;
    }
   } else {
    if(i6<0.15830513834953308){
     s0+=698.0;
     s1+=226.0;
    } else {
     s0+=172.0;
     s1+=790.0;
    }
   }
  } else {
   if(i57<0.0018941445741802454){
    if(i67<5.555235929932678e-06){
     s0+=76.0;
     s1+=2737.0;
    } else {
     s0+=32.0;
     s1+=38.0;
    }
   } else {
    if(i70<1.018052577972412){
     s0+=18.0;
     s1+=7769.0;
    } else {
     s0+=9.0;
     s1+=335.0;
    }
   }
  }
 }
}
if(i4<0.08032220602035522){
 if(i5<1.0024782419204712){
  if(i39<0.026235653087496758){
   if(i27<0.9693883657455444){
    if(i45<1.0696015357971191){
     s0+=125.0;
    } else {
     s0+=132.0;
     s1+=117.0;
    }
   } else {
    if(i30<1.0073661804199219){
     s0+=56549.0;
     s1+=397.0;
    } else {
     s0+=829.0;
     s1+=203.0;
    }
   }
  } else {
   if(i32<1.100754976272583){
    if(i32<1.084442138671875){
     s0+=1704.0;
    } else {
     s0+=643.0;
     s1+=966.0;
    }
   } else {
    if(i1<1.5437602996826172e-05){
     s0+=8841.0;
     s1+=317.0;
    } else {
     s0+=454.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i14<0.0005282759666442871){
   if(i40<0.0025170110166072845){
    if(i32<1.0757708549499512){
     s0+=4.0;
    } else {
     s1+=134.0;
    }
   } else {
    if(i76<4.887166937805887e-07){
     s0+=155.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i51<0.002749502658843994){
    if(i32<1.5682398080825806){
     s0+=34.0;
     s1+=973.0;
    } else {
     s0+=39.0;
     s1+=63.0;
    }
   } else {
    if(i18<1.0049493312835693){
     s0+=34.0;
    } else {
     s0+=6.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i7<-1.871796303021256e-05){
  if(i37<0.9987826943397522){
   if(i14<-0.00047129392623901367){
    s0+=42.0;
   } else {
    if(i65<0.0327160470187664){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.0008671879768371582){
    if(i4<0.1077883243560791){
     s0+=327.0;
     s1+=823.0;
    } else {
     s0+=176.0;
     s1+=2922.0;
    }
   } else {
    if(i57<0.0021671359427273273){
     s0+=38.0;
     s1+=2627.0;
    } else {
     s0+=3.0;
     s1+=6772.0;
    }
   }
  }
 } else {
  if(i37<0.9992890357971191){
   s0+=395.0;
  } else {
   if(i27<1.009687066078186){
    if(i67<2.2733838704880327e-05){
     s0+=75.0;
     s1+=355.0;
    } else {
     s0+=31.0;
     s1+=6.0;
    }
   } else {
    if(i36<0.0017960772383958101){
     s0+=436.0;
     s1+=51.0;
    } else {
     s0+=143.0;
     s1+=136.0;
    }
   }
  }
 }
}
if(i22<1.0103590488433838){
 if(i6<0.07206261157989502){
  if(i29<1.0044496059417725){
   if(i0<0.07865980267524719){
    if(i24<1.0485899448394775){
     s0+=55681.0;
     s1+=342.0;
    } else {
     s0+=11435.0;
     s1+=1506.0;
    }
   } else {
    if(i36<0.00044936328777112067){
     s0+=115.0;
     s1+=5.0;
    } else {
     s0+=82.0;
     s1+=603.0;
    }
   }
  } else {
   if(i73<-4.539624569588341e-06){
    if(i43<-1.3566190318670124e-05){
     s0+=13.0;
     s1+=789.0;
    } else {
     s0+=20.0;
     s1+=9.0;
    }
   } else {
    if(i9<1.0401972532272339){
     s0+=357.0;
     s1+=5.0;
    } else {
     s0+=33.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i58<0.03730681538581848){
   if(i7<-7.336041562666651e-06){
    if(i4<0.08515381813049316){
     s0+=97.0;
     s1+=219.0;
    } else {
     s0+=41.0;
     s1+=2216.0;
    }
   } else {
    if(i14<-0.00039649009704589844){
     s0+=84.0;
    } else {
     s0+=62.0;
     s1+=62.0;
    }
   }
  } else {
   if(i12<0.010007877834141254){
    if(i3<0.0001723170280456543){
     s0+=715.0;
     s1+=156.0;
    } else {
     s0+=75.0;
     s1+=142.0;
    }
   } else {
    if(i19<-0.0006336867809295654){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=242.0;
    }
   }
  }
 }
} else {
 if(i15<0.0006209015846252441){
  if(i7<-3.3182092010974884e-05){
   if(i5<0.9978024363517761){
    if(i46<0.13391751050949097){
     s0+=52.0;
     s1+=3.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i15<-0.0004983246326446533){
     s0+=210.0;
     s1+=513.0;
    } else {
     s0+=78.0;
     s1+=1114.0;
    }
   }
  } else {
   if(i41<0.006350289098918438){
    if(i76<-2.754860133791226e-06){
     s1+=58.0;
    } else {
     s0+=1583.0;
     s1+=234.0;
    }
   } else {
    if(i4<0.1395409107208252){
     s0+=51.0;
    } else {
     s0+=2.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i12<0.0027002557180821896){
   if(i24<1.0945417881011963){
    if(i45<1.1417820453643799){
     s1+=331.0;
    } else {
     s0+=13.0;
     s1+=11.0;
    }
   } else {
    if(i15<0.0023293495178222656){
     s0+=226.0;
     s1+=8.0;
    } else {
     s1+=126.0;
    }
   }
  } else {
   if(i1<-2.2143125534057617e-05){
    s0+=19.0;
   } else {
    if(i17<-1.6450881958007812e-05){
     s0+=1.0;
    } else {
     s0+=8.0;
     s1+=8297.0;
    }
   }
  }
 }
}
if(i11<1.0016393661499023){
 if(i9<1.0450963973999023){
  if(i21<0.016997937113046646){
   if(i30<1.009229063987732){
    if(i68<0.0020515164360404015){
     s0+=54638.0;
     s1+=341.0;
    } else {
     s0+=1794.0;
     s1+=295.0;
    }
   } else {
    if(i3<0.0001761317253112793){
     s0+=166.0;
     s1+=20.0;
    } else {
     s0+=18.0;
     s1+=79.0;
    }
   }
  } else {
   if(i42<0.0027402457781136036){
    if(i38<1.0724589824676514){
     s0+=1031.0;
     s1+=4.0;
    } else {
     s0+=1247.0;
     s1+=1059.0;
    }
   } else {
    if(i10<0.9887660145759583){
     s0+=5287.0;
     s1+=72.0;
    } else {
     s0+=395.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i0<0.0915621817111969){
   if(i38<1.1037919521331787){
    if(i36<0.0005224430351518095){
     s0+=1005.0;
     s1+=178.0;
    } else {
     s0+=118.0;
     s1+=442.0;
    }
   } else {
    if(i49<-0.00046437978744506836){
     s0+=1077.0;
     s1+=230.0;
    } else {
     s0+=2124.0;
     s1+=54.0;
    }
   }
  } else {
   if(i47<0.06769761443138123){
    if(i37<0.9991308450698853){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=35.0;
     s1+=2230.0;
    }
   } else {
    if(i74<9.459756984142587e-05){
     s0+=754.0;
     s1+=539.0;
    } else {
     s0+=212.0;
     s1+=1084.0;
    }
   }
  }
 }
} else {
 if(i5<1.0023622512817383){
  if(i71<0.0017115355003625154){
   if(i50<0.0002613365650177002){
    if(i41<0.0003528278321027756){
     s0+=44.0;
    } else {
     s0+=140.0;
     s1+=207.0;
    }
   } else {
    if(i41<0.0015690024010837078){
     s0+=13.0;
     s1+=24.0;
    } else {
     s0+=806.0;
     s1+=70.0;
    }
   }
  } else {
   if(i3<-0.0005304813385009766){
    if(i61<1.0001932382583618){
     s1+=1.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i10<0.9481430053710938){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=306.0;
    }
   }
  }
 } else {
  if(i5<1.004209041595459){
   if(i57<0.0008069845498539507){
    s0+=66.0;
   } else {
    if(i69<1.0031037330627441){
     s0+=78.0;
     s1+=790.0;
    } else {
     s0+=52.0;
     s1+=76.0;
    }
   }
  } else {
   if(i69<0.9975413084030151){
    if(i2<0.09774374961853027){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=318.0;
    }
   } else {
    if(i15<-0.0031030774116516113){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=27.0;
     s1+=8549.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i24<1.0494916439056396){
  if(i65<0.04264352098107338){
   if(i62<-0.0025294721126556396){
    if(i50<-5.97536563873291e-05){
     s0+=151.0;
    } else {
     s0+=39.0;
     s1+=55.0;
    }
   } else {
    if(i37<1.000609278678894){
     s0+=48677.0;
     s1+=73.0;
    } else {
     s0+=1663.0;
     s1+=57.0;
    }
   }
  } else {
   if(i3<-0.00028905272483825684){
    if(i10<0.9895128011703491){
     s0+=3123.0;
     s1+=9.0;
    } else {
     s0+=1676.0;
     s1+=101.0;
    }
   } else {
    if(i40<0.00035301753086969256){
     s0+=905.0;
     s1+=3.0;
    } else {
     s0+=206.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i46<0.053150475025177){
   if(i4<0.06660419702529907){
    if(i13<1.0368338823318481){
     s0+=4818.0;
     s1+=135.0;
    } else {
     s0+=6775.0;
     s1+=1150.0;
    }
   } else {
    if(i14<-0.00035321712493896484){
     s0+=44.0;
    } else {
     s0+=84.0;
     s1+=1256.0;
    }
   }
  } else {
   if(i0<0.09875437617301941){
    if(i42<0.001774799544364214){
     s0+=391.0;
     s1+=244.0;
    } else {
     s0+=1105.0;
     s1+=82.0;
    }
   } else {
    if(i47<0.07740437984466553){
     s0+=53.0;
     s1+=1254.0;
    } else {
     s0+=794.0;
     s1+=895.0;
    }
   }
  }
 }
} else {
 if(i12<0.0019228286109864712){
  if(i10<1.0116831064224243){
   if(i76<7.951740599310142e-07){
    if(i23<0.9885462522506714){
     s1+=2.0;
    } else {
     s0+=231.0;
    }
   } else {
    if(i16<0.9996012449264526){
     s0+=6.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   s1+=106.0;
  }
 } else {
  if(i48<0.00023369134578388184){
   if(i13<1.0357571840286255){
    s0+=29.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i4<0.13068589568138123){
    if(i34<1.2007768154144287){
     s0+=47.0;
     s1+=1730.0;
    } else {
     s0+=209.0;
     s1+=578.0;
    }
   } else {
    if(i4<0.16144642233848572){
     s0+=19.0;
     s1+=769.0;
    } else {
     s0+=2.0;
     s1+=8547.0;
    }
   }
  }
 }
}
if(i22<1.0107624530792236){
 if(i16<1.0028449296951294){
  if(i24<1.0495078563690186){
   if(i26<0.0003185856912750751){
    if(i78<-0.0016605556011199951){
     s0+=399.0;
     s1+=37.0;
    } else {
     s0+=49838.0;
     s1+=79.0;
    }
   } else {
    if(i5<1.0003299713134766){
     s0+=6153.0;
     s1+=247.0;
    } else {
     s0+=14.0;
     s1+=72.0;
    }
   }
  } else {
   if(i2<0.07832589745521545){
    if(i4<0.056519001722335815){
     s0+=9605.0;
     s1+=837.0;
    } else {
     s0+=1147.0;
     s1+=449.0;
    }
   } else {
    if(i3<-0.0006571412086486816){
     s0+=424.0;
     s1+=116.0;
    } else {
     s0+=448.0;
     s1+=1523.0;
    }
   }
  }
 } else {
  if(i3<0.00022298097610473633){
   if(i13<1.0819685459136963){
    if(i9<0.9371336698532104){
     s1+=2.0;
    } else {
     s0+=833.0;
     s1+=18.0;
    }
   } else {
    if(i4<0.005939692258834839){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=105.0;
    }
   }
  } else {
   if(i6<0.0465562641620636){
    if(i51<-0.0011694133281707764){
     s0+=52.0;
     s1+=460.0;
    } else {
     s0+=138.0;
     s1+=108.0;
    }
   } else {
    if(i38<1.070241093635559){
     s0+=7.0;
    } else {
     s0+=95.0;
     s1+=2220.0;
    }
   }
  }
 }
} else {
 if(i12<0.003318376373499632){
  if(i7<-4.306940536480397e-05){
   if(i69<1.0013413429260254){
    if(i19<-5.137920379638672e-05){
     s0+=7.0;
    } else {
     s0+=6.0;
     s1+=593.0;
    }
   } else {
    if(i59<0.0012683612294495106){
     s0+=36.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i6<0.21075937151908875){
    if(i37<0.9998499155044556){
     s0+=331.0;
     s1+=155.0;
    } else {
     s0+=1169.0;
     s1+=29.0;
    }
   } else {
    if(i41<0.0053232042118906975){
     s0+=69.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i50<-0.00023868680000305176){
   if(i3<-0.00020119547843933105){
    s0+=143.0;
   } else {
    s1+=29.0;
   }
  } else {
   if(i8<1.0077698230743408){
    if(i12<0.00722631486132741){
     s0+=178.0;
     s1+=283.0;
    } else {
     s0+=22.0;
     s1+=565.0;
    }
   } else {
    if(i11<0.9990421533584595){
     s0+=18.0;
     s1+=21.0;
    } else {
     s0+=42.0;
     s1+=8940.0;
    }
   }
  }
 }
}
if(i5<1.0024340152740479){
 if(i0<0.08223840594291687){
  if(i62<-0.0023286044597625732){
   if(i41<0.0009905935730785131){
    if(i34<1.0670123100280762){
     s0+=950.0;
     s1+=49.0;
    } else {
     s0+=177.0;
     s1+=594.0;
    }
   } else {
    if(i57<0.006521731615066528){
     s0+=4449.0;
     s1+=319.0;
    } else {
     s0+=6.0;
     s1+=32.0;
    }
   }
  } else {
   if(i23<1.0067009925842285){
    if(i24<1.0487468242645264){
     s0+=54205.0;
     s1+=105.0;
    } else {
     s0+=6789.0;
     s1+=538.0;
    }
   } else {
    if(i41<0.00116822705604136){
     s0+=548.0;
     s1+=347.0;
    } else {
     s0+=2004.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i47<0.058552324771881104){
   if(i14<-0.0004863440990447998){
    s0+=79.0;
   } else {
    if(i5<0.9963703155517578){
     s0+=18.0;
     s1+=51.0;
    } else {
     s0+=52.0;
     s1+=2056.0;
    }
   }
  } else {
   if(i21<0.029720287770032883){
    if(i43<-1.913177129608812e-06){
     s0+=600.0;
     s1+=401.0;
    } else {
     s0+=507.0;
     s1+=37.0;
    }
   } else {
    if(i73<1.0952292086585658e-06){
     s0+=186.0;
     s1+=1236.0;
    } else {
     s0+=153.0;
    }
   }
  }
 }
} else {
 if(i12<0.0023671393282711506){
  if(i15<0.0019002556800842285){
   if(i67<1.9972046629845863e-06){
    s0+=245.0;
   } else {
    if(i11<1.0022611618041992){
     s1+=56.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   s1+=178.0;
  }
 } else {
  if(i18<1.0002999305725098){
   if(i69<1.0045174360275269){
    if(i2<0.08456242084503174){
     s0+=66.0;
     s1+=271.0;
    } else {
     s0+=17.0;
     s1+=1052.0;
    }
   } else {
    if(i52<0.0077836038544774055){
     s0+=32.0;
     s1+=4.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i15<3.5822391510009766e-05){
    if(i71<0.0003918600268661976){
     s0+=51.0;
     s1+=18.0;
    } else {
     s0+=7.0;
     s1+=330.0;
    }
   } else {
    if(i2<0.06528717279434204){
     s0+=3.0;
     s1+=232.0;
    } else {
     s0+=2.0;
     s1+=9094.0;
    }
   }
  }
 }
}
if(i1<3.820657730102539e-05){
 if(i26<0.00031646830029785633){
  if(i30<1.008840560913086){
   if(i2<0.08219277858734131){
    if(i7<-4.04150050599128e-05){
     s0+=380.0;
     s1+=51.0;
    } else {
     s0+=53115.0;
     s1+=193.0;
    }
   } else {
    if(i21<0.016711607575416565){
     s0+=240.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=41.0;
    }
   }
  } else {
   if(i0<0.0644611120223999){
    if(i11<1.000702142715454){
     s0+=105.0;
     s1+=2.0;
    } else {
     s0+=28.0;
     s1+=41.0;
    }
   } else {
    if(i42<0.0027969698421657085){
     s0+=5.0;
     s1+=131.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<0.08142024278640747){
   if(i45<1.103413462638855){
    if(i38<1.081458568572998){
     s0+=2606.0;
     s1+=131.0;
    } else {
     s0+=991.0;
     s1+=1111.0;
    }
   } else {
    if(i54<-0.0027861595153808594){
     s0+=1183.0;
     s1+=251.0;
    } else {
     s0+=10234.0;
     s1+=182.0;
    }
   }
  } else {
   if(i37<0.9989378452301025){
    if(i7<-4.8017311200965196e-05){
     s1+=14.0;
    } else {
     s0+=382.0;
     s1+=3.0;
    }
   } else {
    if(i51<0.0042279064655303955){
     s0+=236.0;
     s1+=2318.0;
    } else {
     s0+=911.0;
     s1+=1048.0;
    }
   }
  }
 }
} else {
 if(i34<1.0590304136276245){
  s0+=306.0;
 } else {
  if(i0<0.0688396692276001){
   if(i45<1.2160736322402954){
    if(i20<1.0808615684509277){
     s0+=2.0;
     s1+=406.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i49<-0.006051391363143921){
     s0+=35.0;
     s1+=206.0;
    } else {
     s0+=204.0;
     s1+=14.0;
    }
   }
  } else {
   if(i0<0.1274578869342804){
    if(i28<1.0387961864471436){
     s0+=67.0;
     s1+=1489.0;
    } else {
     s0+=78.0;
     s1+=29.0;
    }
   } else {
    if(i0<0.1542743444442749){
     s0+=22.0;
     s1+=717.0;
    } else {
     s0+=3.0;
     s1+=8695.0;
    }
   }
  }
 }
}
if(i3<0.000564277172088623){
 if(i9<1.0452277660369873){
  if(i66<-0.0013577640056610107){
   if(i32<1.1991922855377197){
    if(i50<-4.83393669128418e-05){
     s0+=1188.0;
     s1+=76.0;
    } else {
     s0+=395.0;
     s1+=653.0;
    }
   } else {
    if(i1<1.5914440155029297e-05){
     s0+=3213.0;
     s1+=129.0;
    } else {
     s0+=101.0;
     s1+=71.0;
    }
   }
  } else {
   if(i0<0.08525598049163818){
    if(i48<0.00028970561106689274){
     s0+=45634.0;
     s1+=48.0;
    } else {
     s0+=14536.0;
     s1+=564.0;
    }
   } else {
    if(i29<0.9919923543930054){
     s0+=90.0;
     s1+=10.0;
    } else {
     s0+=31.0;
     s1+=350.0;
    }
   }
  }
 } else {
  if(i45<1.3733716011047363){
   if(i2<0.09585550427436829){
    if(i32<1.1013743877410889){
     s0+=1050.0;
     s1+=667.0;
    } else {
     s0+=3327.0;
     s1+=238.0;
    }
   } else {
    if(i53<0.07340192794799805){
     s0+=265.0;
     s1+=1583.0;
    } else {
     s0+=778.0;
     s1+=443.0;
    }
   }
  } else {
   if(i4<0.07506740093231201){
    if(i52<0.012096541002392769){
     s0+=135.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i2<0.10106101632118225){
     s0+=15.0;
     s1+=41.0;
    } else {
     s1+=616.0;
    }
   }
  }
 }
} else {
 if(i24<1.0409044027328491){
  if(i61<1.0001929998397827){
   s0+=114.0;
  } else {
   if(i41<0.0014444307889789343){
    s1+=4.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i5<1.0041334629058838){
   if(i61<0.9999135732650757){
    if(i70<1.013580322265625){
     s0+=1.0;
     s1+=925.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i33<0.023361094295978546){
     s0+=359.0;
     s1+=345.0;
    } else {
     s0+=4.0;
     s1+=559.0;
    }
   }
  } else {
   if(i12<0.00012433381925802678){
    s0+=1.0;
   } else {
    if(i5<1.0050512552261353){
     s0+=29.0;
     s1+=816.0;
    } else {
     s0+=16.0;
     s1+=8775.0;
    }
   }
  }
 }
}
if(i3<0.000546187162399292){
 if(i28<1.0129121541976929){
  if(i46<0.07491299510002136){
   if(i60<0.0002715747687034309){
    if(i31<0.00034680977114476264){
     s0+=54490.0;
     s1+=543.0;
    } else {
     s0+=2399.0;
     s1+=628.0;
    }
   } else {
    if(i6<0.06982883810997009){
     s0+=10160.0;
     s1+=1333.0;
    } else {
     s0+=134.0;
     s1+=524.0;
    }
   }
  } else {
   if(i11<0.9985290765762329){
    if(i20<1.032604455947876){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=120.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.10535085201263428){
     s0+=64.0;
     s1+=34.0;
    } else {
     s0+=11.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i0<0.0921335518360138){
   if(i48<0.0013645539293065667){
    if(i12<0.0012567068915814161){
     s0+=409.0;
     s1+=20.0;
    } else {
     s0+=266.0;
     s1+=219.0;
    }
   } else {
    if(i51<0.002315342426300049){
     s0+=224.0;
     s1+=7.0;
    } else {
     s0+=1155.0;
    }
   }
  } else {
   if(i57<0.0011106894817203283){
    if(i28<1.042354702949524){
     s0+=182.0;
     s1+=473.0;
    } else {
     s0+=504.0;
     s1+=68.0;
    }
   } else {
    if(i73<3.7079783510307607e-07){
     s0+=176.0;
     s1+=1283.0;
    } else {
     s0+=86.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i12<0.002219344489276409){
  if(i3<0.0009688138961791992){
   if(i21<0.031264230608940125){
    if(i55<9.650729225541e-06){
     s0+=305.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i20<1.0796864032745361){
     s1+=12.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s1+=161.0;
  }
 } else {
  if(i74<0.0007072425214573741){
   if(i8<1.0156707763671875){
    if(i32<1.594835877418518){
     s0+=118.0;
     s1+=3138.0;
    } else {
     s0+=139.0;
     s1+=484.0;
    }
   } else {
    if(i4<0.066383957862854){
     s0+=4.0;
     s1+=107.0;
    } else {
     s0+=2.0;
     s1+=7819.0;
    }
   }
  } else {
   s0+=38.0;
  }
 }
}
if(i6<0.07262939214706421){
 if(i10<1.006026029586792){
  if(i2<0.08341556787490845){
   if(i11<1.0019018650054932){
    if(i26<0.00030515698017552495){
     s0+=53250.0;
     s1+=268.0;
    } else {
     s0+=14325.0;
     s1+=1491.0;
    }
   } else {
    if(i69<1.0022355318069458){
     s0+=167.0;
     s1+=373.0;
    } else {
     s0+=423.0;
     s1+=60.0;
    }
   }
  } else {
   if(i10<0.9882255792617798){
    if(i22<0.9734493494033813){
     s0+=17.0;
     s1+=39.0;
    } else {
     s0+=352.0;
     s1+=12.0;
    }
   } else {
    if(i21<0.010757878422737122){
     s0+=75.0;
     s1+=57.0;
    } else {
     s0+=32.0;
     s1+=594.0;
    }
   }
  }
 } else {
  if(i7<-4.351775351096876e-05){
   if(i2<0.0533653199672699){
    if(i28<0.9985648393630981){
     s0+=2.0;
     s1+=114.0;
    } else {
     s0+=55.0;
     s1+=27.0;
    }
   } else {
    if(i76<3.403563823667355e-06){
     s0+=18.0;
     s1+=1551.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i34<1.111814260482788){
    if(i57<5.318064722814597e-05){
     s0+=1.0;
    } else {
     s1+=116.0;
    }
   } else {
    s0+=569.0;
   }
  }
 }
} else {
 if(i7<-1.6402944311266765e-05){
  if(i4<0.1007106602191925){
   if(i64<-0.005292583256959915){
    if(i22<0.9857316017150879){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=312.0;
     s1+=17.0;
    }
   } else {
    if(i58<0.04286777973175049){
     s0+=63.0;
     s1+=676.0;
    } else {
     s0+=72.0;
     s1+=32.0;
    }
   }
  } else {
   if(i12<0.0031433519907295704){
    if(i27<1.0434696674346924){
     s0+=24.0;
     s1+=407.0;
    } else {
     s0+=141.0;
     s1+=100.0;
    }
   } else {
    if(i37<0.998794674873352){
     s0+=10.0;
     s1+=7.0;
    } else {
     s0+=117.0;
     s1+=10676.0;
    }
   }
  }
 } else {
  if(i41<0.005448989570140839){
   if(i44<0.050522297620773315){
    if(i0<0.09087479114532471){
     s0+=107.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=98.0;
    }
   } else {
    if(i37<1.000940203666687){
     s0+=959.0;
     s1+=84.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  } else {
   if(i69<1.0009264945983887){
    if(i70<1.001145839691162){
     s0+=3.0;
     s1+=129.0;
    } else {
     s0+=29.0;
     s1+=17.0;
    }
   } else {
    if(i28<0.9869847297668457){
     s1+=4.0;
    } else {
     s0+=56.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i23<1.0082027912139893){
 if(i5<1.0024776458740234){
  if(i13<1.0450963973999023){
   if(i39<0.026787184178829193){
    if(i65<0.04943540692329407){
     s0+=52725.0;
     s1+=248.0;
    } else {
     s0+=1444.0;
     s1+=142.0;
    }
   } else {
    if(i29<0.9939254522323608){
     s0+=5562.0;
     s1+=56.0;
    } else {
     s0+=2375.0;
     s1+=623.0;
    }
   }
  } else {
   if(i41<0.005943095777183771){
    if(i40<0.0002943938015960157){
     s0+=1259.0;
    } else {
     s0+=4164.0;
     s1+=1718.0;
    }
   } else {
    if(i56<-0.0002482424897607416){
     s0+=216.0;
     s1+=790.0;
    } else {
     s0+=528.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i1<6.192922592163086e-05){
   if(i45<1.1773569583892822){
    if(i32<1.0757708549499512){
     s0+=4.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i56<-0.00036513424129225314){
     s0+=3.0;
     s1+=80.0;
    } else {
     s0+=122.0;
     s1+=58.0;
    }
   }
  } else {
   if(i69<1.002830982208252){
    if(i74<1.313497432420263e-05){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=37.0;
     s1+=1939.0;
    }
   } else {
    if(i29<1.0010743141174316){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i5<1.0020051002502441){
  if(i7<-2.373231473029591e-05){
   if(i0<0.07225161790847778){
    if(i48<0.0008294857107102871){
     s0+=90.0;
     s1+=114.0;
    } else {
     s0+=465.0;
     s1+=28.0;
    }
   } else {
    if(i45<1.1550614833831787){
     s0+=2.0;
     s1+=735.0;
    } else {
     s0+=140.0;
     s1+=715.0;
    }
   }
  } else {
   if(i75<0.03337879478931427){
    if(i0<0.09197431802749634){
     s0+=1041.0;
     s1+=17.0;
    } else {
     s0+=72.0;
     s1+=37.0;
    }
   } else {
    if(i48<0.0017900665989145637){
     s0+=7.0;
     s1+=50.0;
    } else {
     s0+=617.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i5<1.0040910243988037){
   if(i72<-0.004360508173704147){
    if(i7<-5.420201341621578e-05){
     s0+=14.0;
     s1+=617.0;
    } else {
     s0+=37.0;
     s1+=107.0;
    }
   } else {
    if(i45<1.2046691179275513){
     s0+=10.0;
     s1+=278.0;
    } else {
     s0+=158.0;
     s1+=142.0;
    }
   }
  } else {
   if(i8<1.0119621753692627){
    if(i32<1.613681674003601){
     s0+=2.0;
     s1+=648.0;
    } else {
     s0+=18.0;
     s1+=106.0;
    }
   } else {
    if(i19<-3.4570693969726562e-06){
     s0+=3.0;
     s1+=98.0;
    } else {
     s1+=7224.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i2<0.08264222741127014){
  if(i49<-0.005798637866973877){
   if(i4<0.03807219862937927){
    if(i76<-3.0410915314860176e-06){
     s0+=7.0;
     s1+=60.0;
    } else {
     s0+=2741.0;
     s1+=340.0;
    }
   } else {
    if(i52<0.004964791238307953){
     s0+=239.0;
     s1+=132.0;
    } else {
     s0+=42.0;
     s1+=254.0;
    }
   }
  } else {
   if(i11<1.001828908920288){
    if(i59<0.0006775606307201087){
     s0+=56825.0;
     s1+=430.0;
    } else {
     s0+=4554.0;
     s1+=346.0;
    }
   } else {
    if(i36<0.0017964979633688927){
     s0+=27.0;
     s1+=103.0;
    } else {
     s0+=267.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i38<1.0727559328079224){
   if(i5<1.0010757446289062){
    s0+=228.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i0<0.08468303084373474){
    if(i32<1.1013743877410889){
     s0+=7.0;
     s1+=61.0;
    } else {
     s0+=197.0;
     s1+=22.0;
    }
   } else {
    if(i49<0.017872899770736694){
     s0+=42.0;
     s1+=973.0;
    } else {
     s0+=25.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i4<0.09212127327919006){
  if(i7<-2.9940594686195254e-05){
   if(i40<0.0013532679295167327){
    if(i32<1.3323417901992798){
     s0+=2.0;
     s1+=958.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i49<0.0036554336547851562){
     s0+=287.0;
     s1+=643.0;
    } else {
     s0+=715.0;
     s1+=76.0;
    }
   }
  } else {
   if(i16<1.0005288124084473){
    if(i70<1.0004769563674927){
     s0+=2825.0;
     s1+=98.0;
    } else {
     s0+=485.0;
     s1+=140.0;
    }
   } else {
    if(i8<0.9945491552352905){
     s1+=55.0;
    } else {
     s0+=394.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i19<3.3915042877197266e-05){
   if(i44<0.054205119609832764){
    if(i36<0.00045408232836052775){
     s0+=13.0;
    } else {
     s0+=34.0;
     s1+=1749.0;
    }
   } else {
    if(i71<0.0006951643736101687){
     s0+=832.0;
     s1+=357.0;
    } else {
     s0+=102.0;
     s1+=750.0;
    }
   }
  } else {
   if(i3<0.00011882185935974121){
    if(i8<1.0067521333694458){
     s0+=53.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=139.0;
    }
   } else {
    if(i56<-9.576463344274089e-05){
     s0+=13.0;
     s1+=8994.0;
    } else {
     s0+=19.0;
     s1+=359.0;
    }
   }
  }
 }
}
if(i2<0.08347609639167786){
 if(i5<1.0024950504302979){
  if(i68<0.0015700520016252995){
   if(i24<1.0483907461166382){
    if(i25<1.013344168663025){
     s0+=53849.0;
     s1+=171.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.06722107529640198){
     s0+=7722.0;
     s1+=415.0;
    } else {
     s0+=991.0;
     s1+=412.0;
    }
   }
  } else {
   if(i42<0.00216669705696404){
    if(i61<0.9998553991317749){
     s0+=634.0;
     s1+=637.0;
    } else {
     s0+=1299.0;
     s1+=100.0;
    }
   } else {
    if(i57<0.006478466093540192){
     s0+=4342.0;
     s1+=265.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i50<0.00016129016876220703){
   if(i67<-2.9049829208815936e-07){
    if(i32<1.2160128355026245){
     s1+=15.0;
    } else {
     s0+=161.0;
     s1+=3.0;
    }
   } else {
    if(i35<0.9899270534515381){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i29<1.0015323162078857){
    if(i33<0.009575488045811653){
     s0+=44.0;
     s1+=17.0;
    } else {
     s0+=15.0;
     s1+=71.0;
    }
   } else {
    if(i66<0.004019618034362793){
     s0+=31.0;
     s1+=798.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i3<0.0001443028450012207){
  if(i3<-0.000812828540802002){
   if(i11<0.9985139966011047){
    if(i7<-3.670365913421847e-05){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=648.0;
     s1+=3.0;
    }
   } else {
    if(i39<0.06537742912769318){
     s0+=61.0;
     s1+=18.0;
    } else {
     s0+=15.0;
     s1+=113.0;
    }
   }
  } else {
   if(i53<0.058954715728759766){
    if(i21<0.011727146804332733){
     s0+=137.0;
     s1+=73.0;
    } else {
     s0+=142.0;
     s1+=1210.0;
    }
   } else {
    if(i4<0.1700267493724823){
     s0+=480.0;
     s1+=93.0;
    } else {
     s0+=120.0;
     s1+=407.0;
    }
   }
  }
 } else {
  if(i3<0.0005480647087097168){
   if(i7<-1.8491187802283093e-05){
    if(i37<1.0003294944763184){
     s0+=25.0;
     s1+=958.0;
    } else {
     s0+=166.0;
     s1+=473.0;
    }
   } else {
    if(i27<1.0192458629608154){
     s0+=24.0;
     s1+=32.0;
    } else {
     s0+=108.0;
     s1+=3.0;
    }
   }
  } else {
   if(i7<-4.922334846924059e-05){
    if(i15<-2.0742416381835938e-05){
     s0+=70.0;
     s1+=979.0;
    } else {
     s0+=4.0;
     s1+=9471.0;
    }
   } else {
    if(i70<1.0016376972198486){
     s0+=37.0;
     s1+=11.0;
    } else {
     s0+=12.0;
     s1+=238.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i3<0.0005841255187988281){
  if(i26<0.00030210314434953034){
   if(i25<1.0104665756225586){
    if(i8<1.0098705291748047){
     s0+=52960.0;
     s1+=255.0;
    } else {
     s0+=22.0;
     s1+=27.0;
    }
   } else {
    if(i66<0.0031987428665161133){
     s0+=33.0;
     s1+=49.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<0.9969233274459839){
    if(i32<1.2049367427825928){
     s0+=1458.0;
     s1+=140.0;
    } else {
     s0+=6390.0;
     s1+=55.0;
    }
   } else {
    if(i2<0.07632523775100708){
     s0+=4126.0;
     s1+=847.0;
    } else {
     s0+=151.0;
     s1+=627.0;
    }
   }
  }
 } else {
  if(i43<-1.3572649550042115e-05){
   if(i15<-0.002899765968322754){
    if(i37<1.0018889904022217){
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.00015949465159792453){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=714.0;
    }
   }
  } else {
   if(i33<0.00950026698410511){
    s0+=174.0;
   } else {
    s1+=34.0;
   }
  }
 }
} else {
 if(i1<3.36766242980957e-05){
  if(i33<0.039975471794605255){
   if(i21<0.02239619940519333){
    if(i7<-3.111307887593284e-05){
     s0+=671.0;
     s1+=741.0;
    } else {
     s0+=3464.0;
     s1+=280.0;
    }
   } else {
    if(i24<1.2538942098617554){
     s0+=820.0;
     s1+=1497.0;
    } else {
     s0+=390.0;
     s1+=15.0;
    }
   }
  } else {
   if(i13<1.0716400146484375){
    s0+=54.0;
   } else {
    if(i34<1.2529315948486328){
     s0+=6.0;
     s1+=119.0;
    } else {
     s0+=1.0;
     s1+=757.0;
    }
   }
  }
 } else {
  if(i16<1.0047059059143066){
   if(i12<0.002370916772633791){
    if(i43<-1.4695903701067436e-05){
     s0+=13.0;
     s1+=74.0;
    } else {
     s0+=96.0;
    }
   } else {
    if(i29<1.0006725788116455){
     s0+=162.0;
     s1+=570.0;
    } else {
     s0+=41.0;
     s1+=2185.0;
    }
   }
  } else {
   if(i2<0.07004639506340027){
    if(i51<0.0006659030914306641){
     s0+=21.0;
     s1+=217.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i5<1.0034562349319458){
     s0+=29.0;
     s1+=370.0;
    } else {
     s0+=17.0;
     s1+=7485.0;
    }
   }
  }
 }
}
if(i0<0.081397145986557){
 if(i10<1.0043445825576782){
  if(i51<-0.0015562474727630615){
   if(i36<0.0003834666567854583){
    s0+=914.0;
   } else {
    if(i1<2.2590160369873047e-05){
     s0+=2651.0;
     s1+=693.0;
    } else {
     s0+=60.0;
     s1+=347.0;
    }
   }
  } else {
   if(i13<1.0428826808929443){
    if(i78<-0.0010069608688354492){
     s0+=8129.0;
     s1+=310.0;
    } else {
     s0+=50224.0;
     s1+=155.0;
    }
   } else {
    if(i21<0.02253963053226471){
     s0+=5433.0;
     s1+=297.0;
    } else {
     s0+=703.0;
     s1+=426.0;
    }
   }
  }
 } else {
  if(i1<6.222724914550781e-05){
   if(i48<0.0009568787645548582){
    if(i36<0.0007338716532103717){
     s0+=76.0;
     s1+=301.0;
    } else {
     s0+=425.0;
     s1+=14.0;
    }
   } else {
    if(i60<0.00017582128930371255){
     s0+=593.0;
     s1+=18.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   }
  } else {
   if(i3<0.0009474754333496094){
    if(i21<0.012242747470736504){
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i36<0.008756356313824654){
     s1+=423.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i35<1.0055193901062012){
  if(i12<0.005536166951060295){
   if(i47<0.05790707468986511){
    if(i37<0.9992889761924744){
     s0+=89.0;
     s1+=3.0;
    } else {
     s0+=51.0;
     s1+=931.0;
    }
   } else {
    if(i58<0.03674185276031494){
     s0+=327.0;
     s1+=270.0;
    } else {
     s0+=826.0;
     s1+=176.0;
    }
   }
  } else {
   if(i4<0.1001429557800293){
    if(i58<0.028143614530563354){
     s0+=19.0;
     s1+=233.0;
    } else {
     s0+=94.0;
     s1+=46.0;
    }
   } else {
    if(i36<0.0004807287477888167){
     s0+=5.0;
    } else {
     s0+=47.0;
     s1+=2754.0;
    }
   }
  }
 } else {
  if(i57<0.00046150130219757557){
   if(i64<-0.0057079182006418705){
    if(i67<-6.614985068154056e-06){
     s1+=12.0;
    } else {
     s0+=139.0;
     s1+=4.0;
    }
   } else {
    if(i48<0.0026756173465400934){
     s0+=7.0;
     s1+=395.0;
    } else {
     s0+=28.0;
     s1+=9.0;
    }
   }
  } else {
   if(i37<0.9987766742706299){
    if(i6<0.5331844091415405){
     s0+=26.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i19<-6.496906280517578e-06){
     s0+=48.0;
     s1+=357.0;
    } else {
     s0+=40.0;
     s1+=9070.0;
    }
   }
  }
 }
}
if(i1<3.463029861450195e-05){
 if(i24<1.0494916439056396){
  if(i75<0.010150126181542873){
   if(i59<0.0008572849328629673){
    if(i10<1.006242036819458){
     s0+=42709.0;
     s1+=20.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i40<0.00029694405384361744){
     s0+=27.0;
    } else {
     s0+=18.0;
     s1+=58.0;
    }
   }
  } else {
   if(i14<-9.772181510925293e-05){
    if(i28<0.9916510581970215){
     s0+=3177.0;
     s1+=93.0;
    } else {
     s0+=8509.0;
     s1+=22.0;
    }
   } else {
    if(i38<1.2007557153701782){
     s0+=636.0;
     s1+=225.0;
    } else {
     s0+=1261.0;
    }
   }
  }
 } else {
  if(i3<0.00015681982040405273){
   if(i33<0.04351422190666199){
    if(i4<0.06773602962493896){
     s0+=11054.0;
     s1+=959.0;
    } else {
     s0+=1573.0;
     s1+=1742.0;
    }
   } else {
    if(i5<0.993173360824585){
     s0+=76.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=444.0;
    }
   }
  } else {
   if(i4<0.07759344577789307){
    if(i42<0.000987878767773509){
     s0+=174.0;
     s1+=301.0;
    } else {
     s0+=793.0;
     s1+=114.0;
    }
   } else {
    if(i49<0.01446598768234253){
     s0+=29.0;
     s1+=835.0;
    } else {
     s0+=243.0;
     s1+=408.0;
    }
   }
  }
 }
} else {
 if(i11<0.9996492266654968){
  s0+=450.0;
 } else {
  if(i7<-4.694504968938418e-05){
   if(i13<1.1223218441009521){
    if(i5<1.0033437013626099){
     s0+=182.0;
     s1+=492.0;
    } else {
     s0+=94.0;
     s1+=3543.0;
    }
   } else {
    s1+=7365.0;
   }
  } else {
   if(i14<0.0006107985973358154){
    if(i29<1.0015499591827393){
     s0+=15.0;
     s1+=70.0;
    } else {
     s0+=197.0;
     s1+=50.0;
    }
   } else {
    if(i1<4.1872262954711914e-05){
     s0+=22.0;
     s1+=24.0;
    } else {
     s0+=6.0;
     s1+=214.0;
    }
   }
  }
 }
}
if(i13<1.0576403141021729){
 if(i8<1.0081508159637451){
  if(i4<0.08139219880104065){
   if(i26<0.00028167199343442917){
    if(i3<0.000762641429901123){
     s0+=52459.0;
     s1+=233.0;
    } else {
     s0+=10.0;
     s1+=13.0;
    }
   } else {
    if(i36<0.0014575893292203546){
     s0+=4409.0;
     s1+=1000.0;
    } else {
     s0+=7735.0;
     s1+=158.0;
    }
   }
  } else {
   if(i29<0.9940632581710815){
    if(i18<0.9732537269592285){
     s0+=26.0;
     s1+=32.0;
    } else {
     s0+=153.0;
     s1+=5.0;
    }
   } else {
    if(i42<0.0002819439978338778){
     s0+=41.0;
    } else {
     s0+=41.0;
     s1+=582.0;
    }
   }
  }
 } else {
  if(i41<0.0011812177253887057){
   if(i3<-6.115436553955078e-05){
    s0+=3.0;
   } else {
    s1+=402.0;
   }
  } else {
   if(i2<0.07649409770965576){
    if(i7<-6.134471186669543e-05){
     s1+=11.0;
    } else {
     s0+=130.0;
     s1+=2.0;
    }
   } else {
    if(i36<0.0008847287390381098){
     s0+=3.0;
    } else {
     s1+=116.0;
    }
   }
  }
 }
} else {
 if(i4<0.08313530683517456){
  if(i1<3.784894943237305e-05){
   if(i32<1.1013743877410889){
    if(i5<1.0006849765777588){
     s0+=819.0;
     s1+=355.0;
    } else {
     s0+=1.0;
     s1+=111.0;
    }
   } else {
    if(i12<0.006234229542315006){
     s0+=3581.0;
     s1+=193.0;
    } else {
     s0+=360.0;
     s1+=160.0;
    }
   }
  } else {
   if(i38<1.2510931491851807){
    if(i54<0.003245532512664795){
     s1+=640.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i28<0.9951441287994385){
     s0+=48.0;
     s1+=289.0;
    } else {
     s0+=152.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i14<-0.0003968775272369385){
   if(i69<1.0005919933319092){
    s0+=266.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i41<0.006181949283927679){
    if(i53<0.07238191366195679){
     s0+=274.0;
     s1+=2905.0;
    } else {
     s0+=637.0;
     s1+=405.0;
    }
   } else {
    if(i24<1.0775209665298462){
     s0+=14.0;
     s1+=9.0;
    } else {
     s0+=87.0;
     s1+=9358.0;
    }
   }
  }
 }
}
if(i14<0.00044038891792297363){
 if(i7<-5.356239853426814e-05){
  if(i6<0.05870142579078674){
   if(i0<0.06464570760726929){
    if(i9<1.040524959564209){
     s0+=1245.0;
     s1+=20.0;
    } else {
     s0+=65.0;
     s1+=64.0;
    }
   } else {
    if(i15<-0.0006706118583679199){
     s0+=19.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=170.0;
    }
   }
  } else {
   if(i37<0.9978577494621277){
    s0+=20.0;
   } else {
    if(i15<-0.004911988973617554){
     s0+=16.0;
    } else {
     s0+=25.0;
     s1+=1962.0;
    }
   }
  }
 } else {
  if(i13<1.0451585054397583){
   if(i78<-0.0010315477848052979){
    if(i10<0.9896975755691528){
     s0+=7015.0;
     s1+=101.0;
    } else {
     s0+=1698.0;
     s1+=587.0;
    }
   } else {
    if(i39<0.05226029083132744){
     s0+=51507.0;
     s1+=265.0;
    } else {
     s0+=43.0;
     s1+=71.0;
    }
   }
  } else {
   if(i4<0.07553079724311829){
    if(i36<0.001349412719719112){
     s0+=3543.0;
     s1+=905.0;
    } else {
     s0+=2684.0;
     s1+=79.0;
    }
   } else {
    if(i44<0.050756484270095825){
     s0+=193.0;
     s1+=1281.0;
    } else {
     s0+=1130.0;
     s1+=482.0;
    }
   }
  }
 }
} else {
 if(i10<1.0043566226959229){
  if(i48<0.007895334623754025){
   if(i24<1.0819685459136963){
    if(i50<0.00033780932426452637){
     s0+=344.0;
     s1+=190.0;
    } else {
     s0+=630.0;
     s1+=18.0;
    }
   } else {
    if(i4<0.13081911206245422){
     s0+=488.0;
     s1+=453.0;
    } else {
     s0+=7.0;
     s1+=319.0;
    }
   }
  } else {
   if(i13<1.0656132698059082){
    if(i7<-0.00016133562894538045){
     s0+=5.0;
     s1+=22.0;
    } else {
     s0+=131.0;
     s1+=11.0;
    }
   } else {
    if(i38<1.223900556564331){
     s0+=28.0;
     s1+=22.0;
    } else {
     s0+=38.0;
     s1+=1319.0;
    }
   }
  }
 } else {
  if(i13<1.0384175777435303){
   if(i73<-5.344496003090171e-06){
    s1+=17.0;
   } else {
    s0+=45.0;
   }
  } else {
   if(i7<-4.329586590756662e-05){
    if(i5<1.0044469833374023){
     s0+=32.0;
     s1+=536.0;
    } else {
     s0+=1.0;
     s1+=8191.0;
    }
   } else {
    if(i12<0.0030834218487143517){
     s0+=73.0;
    } else {
     s1+=131.0;
    }
   }
  }
 }
}
if(i19<0.00011485815048217773){
 if(i2<0.08502998948097229){
  if(i5<1.0025439262390137){
   if(i24<1.0486011505126953){
    if(i50<-5.799531936645508e-05){
     s0+=32690.0;
     s1+=8.0;
    } else {
     s0+=22746.0;
     s1+=308.0;
    }
   } else {
    if(i41<0.0010645575821399689){
     s0+=3238.0;
     s1+=1129.0;
    } else {
     s0+=9595.0;
     s1+=588.0;
    }
   }
  } else {
   if(i49<0.003786534070968628){
    if(i70<1.0004032850265503){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=35.0;
     s1+=341.0;
    }
   } else {
    if(i76<-8.02365320851095e-07){
     s0+=39.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i7<-1.5005834939074703e-05){
   if(i37<0.999174177646637){
    if(i5<0.9978853464126587){
     s0+=87.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i27<1.0127758979797363){
     s0+=81.0;
     s1+=1986.0;
    } else {
     s0+=490.0;
     s1+=2261.0;
    }
   }
  } else {
   if(i64<-0.0036491439677774906){
    if(i75<0.16859683394432068){
     s0+=856.0;
     s1+=145.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i3<-0.000850677490234375){
     s0+=246.0;
     s1+=1.0;
    } else {
     s0+=120.0;
     s1+=295.0;
    }
   }
  }
 }
} else {
 if(i0<0.06512400507926941){
  if(i14<0.0005838274955749512){
   if(i57<0.0016780279111117125){
    if(i5<1.0027579069137573){
     s0+=625.0;
     s1+=18.0;
    } else {
     s0+=93.0;
     s1+=36.0;
    }
   } else {
    if(i61<0.9980549812316895){
     s0+=13.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   s1+=216.0;
  }
 } else {
  if(i73<-3.730066600837745e-05){
   s0+=33.0;
  } else {
   if(i42<0.00028810114599764347){
    s0+=4.0;
   } else {
    if(i56<-0.00013438938185572624){
     s0+=35.0;
     s1+=9088.0;
    } else {
     s0+=36.0;
     s1+=656.0;
    }
   }
  }
 }
}
if(i6<0.0716162919998169){
 if(i10<1.0060200691223145){
  if(i2<0.08217573165893555){
   if(i1<4.190206527709961e-05){
    if(i48<0.0002996927942149341){
     s0+=46261.0;
     s1+=84.0;
    } else {
     s0+=21274.0;
     s1+=1717.0;
    }
   } else {
    if(i51<-0.001128166913986206){
     s0+=58.0;
     s1+=283.0;
    } else {
     s0+=253.0;
     s1+=55.0;
    }
   }
  } else {
   if(i69<0.9975389242172241){
    s0+=250.0;
   } else {
    if(i47<0.0480799674987793){
     s0+=78.0;
     s1+=700.0;
    } else {
     s0+=109.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i7<-4.2832893086597323e-05){
   if(i50<-0.00017371773719787598){
    s0+=18.0;
   } else {
    if(i71<7.735237886663526e-05){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=51.0;
     s1+=1660.0;
    }
   }
  } else {
   if(i34<1.111814260482788){
    s1+=91.0;
   } else {
    s0+=535.0;
   }
  }
 }
} else {
 if(i5<1.001535177230835){
  if(i11<0.9985312223434448){
   if(i60<0.002342010848224163){
    if(i76<6.679809757770272e-06){
     s0+=316.0;
    } else {
     s0+=169.0;
     s1+=19.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i57<0.0010828024242073298){
    if(i20<1.084590196609497){
     s0+=339.0;
     s1+=589.0;
    } else {
     s0+=523.0;
     s1+=91.0;
    }
   } else {
    if(i56<-0.00012031325604766607){
     s0+=113.0;
     s1+=1560.0;
    } else {
     s0+=266.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i45<1.3005231618881226){
   if(i19<3.7789344787597656e-05){
    if(i0<0.14244425296783447){
     s0+=129.0;
     s1+=128.0;
    } else {
     s0+=15.0;
     s1+=313.0;
    }
   } else {
    if(i1<1.7642974853515625e-05){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=62.0;
     s1+=2030.0;
    }
   }
  } else {
   if(i4<0.0971122682094574){
    if(i33<0.01905539259314537){
     s0+=15.0;
     s1+=5.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i6<0.12219488620758057){
     s0+=8.0;
     s1+=671.0;
    } else {
     s1+=7044.0;
    }
   }
  }
 }
}
if(i1<3.725290298461914e-05){
 if(i2<0.08556181192398071){
  if(i26<0.00027992381365038455){
   if(i10<1.0043522119522095){
    if(i39<0.04903517663478851){
     s0+=51554.0;
     s1+=186.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i45<1.0841481685638428){
     s0+=4.0;
     s1+=76.0;
    } else {
     s0+=427.0;
     s1+=8.0;
    }
   }
  } else {
   if(i64<-0.003034935798496008){
    if(i52<0.015852587297558784){
     s0+=7042.0;
     s1+=66.0;
    } else {
     s0+=280.0;
     s1+=56.0;
    }
   } else {
    if(i14<-0.0001131594181060791){
     s0+=4621.0;
     s1+=387.0;
    } else {
     s0+=4492.0;
     s1+=1318.0;
    }
   }
  }
 } else {
  if(i3<-0.0008024275302886963){
   if(i12<0.0073620290495455265){
    if(i17<-1.9729137420654297e-05){
     s0+=554.0;
     s1+=1.0;
    } else {
     s0+=109.0;
     s1+=35.0;
    }
   } else {
    if(i80<-0.004619956016540527){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=103.0;
    }
   }
  } else {
   if(i47<0.05671444535255432){
    if(i14<-0.00038424134254455566){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=1762.0;
    }
   } else {
    if(i4<0.1190640926361084){
     s0+=758.0;
     s1+=231.0;
    } else {
     s0+=361.0;
     s1+=1236.0;
    }
   }
  }
 }
} else {
 if(i61<0.9992542862892151){
  s0+=323.0;
 } else {
  if(i15<0.0014304518699645996){
   if(i43<-1.3892476999899372e-05){
    if(i2<0.1306760609149933){
     s0+=250.0;
     s1+=1148.0;
    } else {
     s0+=29.0;
     s1+=2029.0;
    }
   } else {
    if(i0<0.10678508877754211){
     s0+=159.0;
     s1+=34.0;
    } else {
     s0+=9.0;
     s1+=123.0;
    }
   }
  } else {
   if(i1<3.987550735473633e-05){
    if(i62<-0.002311527729034424){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   } else {
    s1+=8384.0;
   }
  }
 }
}
if(i1<3.796815872192383e-05){
 if(i20<1.0398966073989868){
  if(i31<0.0002955581876449287){
   if(i5<1.0024954080581665){
    if(i31<0.00025736558018252254){
     s0+=52597.0;
     s1+=463.0;
    } else {
     s0+=3016.0;
     s1+=191.0;
    }
   } else {
    if(i55<1.0169625056732912e-05){
     s0+=35.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i35<0.9747024774551392){
    if(i6<0.08586642146110535){
     s0+=4934.0;
     s1+=110.0;
    } else {
     s1+=65.0;
    }
   } else {
    if(i41<0.00034072704147547483){
     s0+=2013.0;
     s1+=9.0;
    } else {
     s0+=3561.0;
     s1+=1898.0;
    }
   }
  }
 } else {
  if(i59<-0.00045233266428112984){
   if(i12<0.0017509676981717348){
    if(i30<1.0103645324707031){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=110.0;
     s1+=7.0;
    }
   } else {
    if(i73<1.1836627891170792e-06){
     s0+=56.0;
     s1+=713.0;
    } else {
     s0+=87.0;
    }
   }
  } else {
   if(i63<0.26676633954048157){
    if(i12<0.004845863673835993){
     s0+=3315.0;
     s1+=828.0;
    } else {
     s0+=457.0;
     s1+=749.0;
    }
   } else {
    if(i7<-6.3273755586124025e-06){
     s0+=17.0;
     s1+=506.0;
    } else {
     s0+=70.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i48<0.0002719114418141544){
  if(i24<1.0481898784637451){
   if(i12<0.004776590503752232){
    s0+=236.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i43<-1.7090893379645422e-05){
    s1+=31.0;
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i3<0.0005090832710266113){
   s0+=71.0;
  } else {
   if(i0<0.06785306334495544){
    if(i66<0.00125160813331604){
     s0+=125.0;
     s1+=558.0;
    } else {
     s0+=88.0;
     s1+=8.0;
    }
   } else {
    if(i15<3.5643577575683594e-05){
     s0+=133.0;
     s1+=1210.0;
    } else {
     s0+=49.0;
     s1+=9864.0;
    }
   }
  }
 }
}
if(i13<1.0527000427246094){
 if(i1<3.892183303833008e-05){
  if(i0<0.08108657598495483){
   if(i26<0.00028711516642943025){
    if(i10<1.0050078630447388){
     s0+=52143.0;
     s1+=177.0;
    } else {
     s0+=275.0;
     s1+=65.0;
    }
   } else {
    if(i32<1.100754976272583){
     s0+=2919.0;
     s1+=705.0;
    } else {
     s0+=8237.0;
     s1+=167.0;
    }
   }
  } else {
   if(i24<1.049466609954834){
    if(i17<9.5367431640625e-06){
     s0+=205.0;
     s1+=16.0;
    } else {
     s0+=16.0;
     s1+=37.0;
    }
   } else {
    if(i11<0.9971791505813599){
     s0+=26.0;
    } else {
     s0+=61.0;
     s1+=498.0;
    }
   }
  }
 } else {
  if(i38<1.0762357711791992){
   s0+=261.0;
  } else {
   if(i0<0.05765154957771301){
    if(i80<6.735324859619141e-06){
     s0+=4.0;
     s1+=70.0;
    } else {
     s0+=53.0;
     s1+=9.0;
    }
   } else {
    if(i26<0.00019046937813982368){
     s0+=3.0;
     s1+=7.0;
    } else {
     s1+=292.0;
    }
   }
  }
 }
} else {
 if(i19<8.70823860168457e-05){
  if(i4<0.09391182661056519){
   if(i7<-2.0100560504943132e-05){
    if(i41<0.0010776324197649956){
     s0+=61.0;
     s1+=329.0;
    } else {
     s0+=1661.0;
     s1+=728.0;
    }
   } else {
    if(i14<0.0005428791046142578){
     s0+=3814.0;
     s1+=388.0;
    } else {
     s0+=5.0;
     s1+=45.0;
    }
   }
  } else {
   if(i5<0.9963757991790771){
    if(i12<0.006514617241919041){
     s0+=274.0;
     s1+=1.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i55<3.2730116799939424e-05){
     s0+=373.0;
     s1+=293.0;
    } else {
     s0+=342.0;
     s1+=2964.0;
    }
   }
  }
 } else {
  if(i0<0.06429028511047363){
   if(i11<1.001702904701233){
    if(i41<0.0012831584317609668){
     s0+=29.0;
     s1+=58.0;
    } else {
     s0+=262.0;
     s1+=4.0;
    }
   } else {
    if(i78<0.001533806324005127){
     s1+=204.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   if(i1<5.3942203521728516e-06){
    if(i43<-1.9040420511373668e-06){
     s0+=3.0;
     s1+=42.0;
    } else {
     s0+=36.0;
     s1+=2.0;
    }
   } else {
    if(i7<-4.368840018287301e-05){
     s1+=9713.0;
    } else {
     s0+=88.0;
     s1+=206.0;
    }
   }
  }
 }
}
if(i26<0.00033400184474885464){
 if(i3<0.0006027519702911377){
  if(i4<0.0822550356388092){
   if(i11<1.0006418228149414){
    if(i79<0.0003543536877259612){
     s0+=51757.0;
     s1+=206.0;
    } else {
     s0+=25.0;
     s1+=21.0;
    }
   } else {
    if(i9<1.046199083328247){
     s0+=2486.0;
     s1+=140.0;
    } else {
     s0+=29.0;
     s1+=77.0;
    }
   }
  } else {
   if(i76<2.9141519917175174e-06){
    if(i74<0.0002187342761317268){
     s0+=7.0;
     s1+=134.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i18<1.006073236465454){
     s0+=73.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i31<0.00016130757285282016){
   if(i43<-1.6303223674185574e-05){
    s1+=19.0;
   } else {
    if(i15<0.00020325183868408203){
     s1+=2.0;
    } else {
     s0+=95.0;
    }
   }
  } else {
   if(i12<0.0020582331344485283){
    if(i2<0.0633370578289032){
     s0+=24.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i69<0.9949718713760376){
     s0+=11.0;
    } else {
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i15<0.0005908012390136719){
  if(i14<6.312131881713867e-05){
   if(i8<1.0111910104751587){
    if(i15<-0.001489102840423584){
     s0+=6669.0;
     s1+=221.0;
    } else {
     s0+=5232.0;
     s1+=1582.0;
    }
   } else {
    if(i0<0.10007280111312866){
     s0+=82.0;
     s1+=12.0;
    } else {
     s0+=24.0;
     s1+=361.0;
    }
   }
  } else {
   if(i12<0.011862051673233509){
    if(i71<0.0012396194506436586){
     s0+=2769.0;
     s1+=2358.0;
    } else {
     s0+=986.0;
     s1+=134.0;
    }
   } else {
    if(i10<0.9796841144561768){
     s0+=340.0;
     s1+=162.0;
    } else {
     s0+=11.0;
     s1+=1446.0;
    }
   }
  }
 } else {
  if(i2<0.06987330317497253){
   if(i40<0.0011100723640993237){
    if(i31<0.0001938471250468865){
     s0+=1.0;
    } else {
     s1+=217.0;
    }
   } else {
    if(i40<0.005560107529163361){
     s0+=228.0;
     s1+=27.0;
    } else {
     s1+=64.0;
    }
   }
  } else {
   if(i5<1.0005810260772705){
    if(i43<-1.8899398810390267e-06){
     s1+=52.0;
    } else {
     s0+=39.0;
     s1+=3.0;
    }
   } else {
    if(i19<0.00021392107009887695){
     s0+=90.0;
     s1+=1378.0;
    } else {
     s1+=8332.0;
    }
   }
  }
 }
}
if(i2<0.0851379930973053){
 if(i13<1.0436501502990723){
  if(i1<3.898143768310547e-05){
   if(i66<-0.0012906789779663086){
    if(i10<0.9897081851959229){
     s0+=2980.0;
     s1+=58.0;
    } else {
     s0+=1350.0;
     s1+=401.0;
    }
   } else {
    if(i24<1.048384666442871){
     s0+=52620.0;
     s1+=93.0;
    } else {
     s0+=4066.0;
     s1+=203.0;
    }
   }
  } else {
   if(i32<1.078822374343872){
    s0+=246.0;
   } else {
    if(i43<-1.5608522517140955e-05){
     s0+=3.0;
     s1+=107.0;
    } else {
     s0+=47.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i14<0.0006192922592163086){
   if(i38<1.1034480333328247){
    if(i32<1.0877101421356201){
     s0+=1560.0;
     s1+=117.0;
    } else {
     s0+=541.0;
     s1+=989.0;
    }
   } else {
    if(i33<0.057299450039863586){
     s0+=5595.0;
     s1+=331.0;
    } else {
     s0+=3.0;
     s1+=23.0;
    }
   }
  } else {
   if(i15<-0.00069427490234375){
    if(i9<1.0884358882904053){
     s0+=400.0;
     s1+=151.0;
    } else {
     s0+=11.0;
     s1+=78.0;
    }
   } else {
    if(i25<1.025229811668396){
     s0+=26.0;
     s1+=608.0;
    } else {
     s0+=25.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i12<0.004565384704619646){
  if(i44<0.05653184652328491){
   if(i11<0.9977176189422607){
    s0+=283.0;
   } else {
    if(i79<-0.0020614168606698513){
     s0+=138.0;
     s1+=151.0;
    } else {
     s0+=79.0;
     s1+=1596.0;
    }
   }
  } else {
   if(i5<1.003699541091919){
    if(i40<0.0038796095177531242){
     s0+=855.0;
     s1+=121.0;
    } else {
     s0+=174.0;
     s1+=167.0;
    }
   } else {
    if(i10<1.0085757970809937){
     s0+=2.0;
    } else {
     s1+=98.0;
    }
   }
  }
 } else {
  if(i0<0.08946084976196289){
   if(i40<0.002737764734774828){
    if(i10<0.986274003982544){
     s0+=8.0;
    } else {
     s1+=177.0;
    }
   } else {
    if(i27<0.9845166206359863){
     s0+=11.0;
     s1+=41.0;
    } else {
     s0+=115.0;
     s1+=18.0;
    }
   }
  } else {
   if(i3<-0.0008796453475952148){
    if(i14<-0.000544428825378418){
     s0+=80.0;
    } else {
     s0+=7.0;
     s1+=79.0;
    }
   } else {
    if(i14<-0.0004767477512359619){
     s0+=6.0;
    } else {
     s0+=105.0;
     s1+=11286.0;
    }
   }
  }
 }
}
if(i0<0.08468136191368103){
 if(i4<0.061445772647857666){
  if(i51<-0.0015491843223571777){
   if(i37<1.0007705688476562){
    if(i45<1.191659927368164){
     s0+=1568.0;
     s1+=580.0;
    } else {
     s0+=2043.0;
     s1+=55.0;
    }
   } else {
    if(i3<0.0003955960273742676){
     s0+=361.0;
     s1+=55.0;
    } else {
     s0+=36.0;
     s1+=413.0;
    }
   }
  } else {
   if(i14<0.0006604194641113281){
    if(i18<1.0062503814697266){
     s0+=60570.0;
     s1+=633.0;
    } else {
     s0+=1034.0;
     s1+=160.0;
    }
   } else {
    if(i38<1.2633458375930786){
     s0+=39.0;
     s1+=144.0;
    } else {
     s0+=285.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i58<0.016459167003631592){
   if(i51<0.0029644370079040527){
    if(i27<1.0234427452087402){
     s0+=135.0;
     s1+=737.0;
    } else {
     s0+=23.0;
     s1+=4.0;
    }
   } else {
    if(i44<0.018073588609695435){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=327.0;
     s1+=4.0;
    }
   }
  } else {
   if(i39<0.02595672756433487){
    if(i3<0.0005555152893066406){
     s0+=2480.0;
     s1+=80.0;
    } else {
     s0+=9.0;
     s1+=33.0;
    }
   } else {
    if(i54<0.0009593069553375244){
     s0+=91.0;
     s1+=126.0;
    } else {
     s0+=780.0;
     s1+=97.0;
    }
   }
  }
 }
} else {
 if(i19<5.8144330978393555e-05){
  if(i7<-1.4055839528737124e-05){
   if(i28<1.022820234298706){
    if(i37<0.9990028142929077){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=97.0;
     s1+=2060.0;
    }
   } else {
    if(i59<-0.0005634150002151728){
     s0+=28.0;
     s1+=589.0;
    } else {
     s0+=381.0;
     s1+=826.0;
    }
   }
  } else {
   if(i28<1.015242338180542){
    if(i67<1.593164779478684e-05){
     s0+=58.0;
     s1+=225.0;
    } else {
     s0+=200.0;
     s1+=21.0;
    }
   } else {
    if(i76<-2.7884802875632886e-06){
     s1+=43.0;
    } else {
     s0+=592.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i12<0.0017183915479108691){
   if(i79<-0.001338074915111065){
    if(i15<0.002059340476989746){
     s0+=70.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i63<0.14586785435676575){
     s1+=115.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i43<-0.00022686913143843412){
    s0+=8.0;
   } else {
    if(i12<0.0027463207952678204){
     s0+=25.0;
     s1+=327.0;
    } else {
     s0+=8.0;
     s1+=9517.0;
    }
   }
  }
 }
}
if(i14<0.00043004751205444336){
 if(i24<1.0495078563690186){
  if(i62<-0.0025300681591033936){
   if(i39<0.039091333746910095){
    if(i36<0.0003486407222226262){
     s0+=242.0;
    } else {
     s0+=178.0;
     s1+=139.0;
    }
   } else {
    if(i35<0.9913166761398315){
     s0+=1000.0;
     s1+=42.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   }
  } else {
   if(i30<1.0088530778884888){
    if(i11<1.0006006956100464){
     s0+=52777.0;
     s1+=111.0;
    } else {
     s0+=2058.0;
     s1+=85.0;
    }
   } else {
    if(i11<1.0004836320877075){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i33<0.040952689945697784){
   if(i5<1.0009379386901855){
    if(i46<0.04465574026107788){
     s0+=9257.0;
     s1+=1251.0;
    } else {
     s0+=2724.0;
     s1+=1582.0;
    }
   } else {
    if(i0<0.06695139408111572){
     s0+=640.0;
     s1+=189.0;
    } else {
     s0+=221.0;
     s1+=1253.0;
    }
   }
  } else {
   if(i24<1.1074588298797607){
    s0+=113.0;
   } else {
    if(i9<1.0235633850097656){
     s0+=42.0;
    } else {
     s0+=8.0;
     s1+=1161.0;
    }
   }
  }
 }
} else {
 if(i0<0.07138198614120483){
  if(i1<4.6312808990478516e-05){
   if(i52<0.015074538066983223){
    if(i35<1.0076578855514526){
     s0+=1152.0;
     s1+=68.0;
    } else {
     s0+=66.0;
     s1+=36.0;
    }
   } else {
    if(i3<0.00014740228652954102){
     s0+=31.0;
     s1+=21.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   }
  } else {
   if(i57<0.0007646885933354497){
    if(i28<1.0002161264419556){
     s1+=8.0;
    } else {
     s0+=72.0;
     s1+=1.0;
    }
   } else {
    if(i72<-0.006334275007247925){
     s0+=70.0;
     s1+=63.0;
    } else {
     s0+=62.0;
     s1+=558.0;
    }
   }
  }
 } else {
  if(i0<0.11789542436599731){
   if(i66<0.003159165382385254){
    if(i64<-0.004118070472031832){
     s0+=120.0;
     s1+=83.0;
    } else {
     s0+=36.0;
     s1+=1189.0;
    }
   } else {
    if(i49<0.014839231967926025){
     s0+=20.0;
     s1+=64.0;
    } else {
     s0+=210.0;
     s1+=12.0;
    }
   }
  } else {
   if(i3<0.0007536411285400391){
    if(i72<-0.032145846635103226){
     s0+=53.0;
     s1+=180.0;
    } else {
     s0+=1.0;
     s1+=408.0;
    }
   } else {
    if(i1<0.00011432170867919922){
     s0+=10.0;
     s1+=1935.0;
    } else {
     s1+=6511.0;
    }
   }
  }
 }
}
if(i2<0.08346298336982727){
 if(i15<0.001284778118133545){
  if(i52<0.007415952626615763){
   if(i11<1.0006349086761475){
    if(i66<-0.0013270676136016846){
     s0+=3489.0;
     s1+=446.0;
    } else {
     s0+=57665.0;
     s1+=467.0;
    }
   } else {
    if(i2<0.0627206563949585){
     s0+=3313.0;
     s1+=243.0;
    } else {
     s0+=735.0;
     s1+=355.0;
    }
   }
  } else {
   if(i17<1.7583370208740234e-05){
    if(i11<0.998370885848999){
     s0+=1145.0;
     s1+=4.0;
    } else {
     s0+=2204.0;
     s1+=653.0;
    }
   } else {
    if(i3<0.00039273500442504883){
     s0+=183.0;
     s1+=79.0;
    } else {
     s0+=61.0;
     s1+=356.0;
    }
   }
  }
 } else {
  if(i12<0.0017478102818131447){
   if(i50<4.2766332626342773e-05){
    s1+=6.0;
   } else {
    if(i55<-3.490262679406442e-05){
     s1+=3.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i19<0.00020509958267211914){
    if(i18<1.0145320892333984){
     s1+=23.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=403.0;
   }
  }
 }
} else {
 if(i36<0.0004476824833545834){
  if(i11<1.0006065368652344){
   if(i69<1.0002827644348145){
    s0+=417.0;
   } else {
    if(i60<0.00019740741117857397){
     s0+=19.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i70<1.0007264614105225){
    s1+=10.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i3<0.0004418492317199707){
   if(i47<0.057319045066833496){
    if(i6<0.04555696249008179){
     s0+=79.0;
     s1+=126.0;
    } else {
     s0+=96.0;
     s1+=1730.0;
    }
   } else {
    if(i12<0.005300096236169338){
     s0+=1113.0;
     s1+=552.0;
    } else {
     s0+=150.0;
     s1+=755.0;
    }
   }
  } else {
   if(i15<3.5822391510009766e-05){
    if(i12<0.006757435388863087){
     s0+=127.0;
     s1+=223.0;
    } else {
     s0+=21.0;
     s1+=1093.0;
    }
   } else {
    if(i12<0.0025380640290677547){
     s0+=38.0;
     s1+=218.0;
    } else {
     s0+=1.0;
     s1+=9583.0;
    }
   }
  }
 }
}
if(i4<0.07771384716033936){
 if(i13<1.0451608896255493){
  if(i49<-0.005852222442626953){
   if(i6<0.03107568621635437){
    if(i26<0.0024545970372855663){
     s0+=843.0;
     s1+=189.0;
    } else {
     s0+=968.0;
     s1+=6.0;
    }
   } else {
    if(i70<0.9989035129547119){
     s0+=85.0;
     s1+=10.0;
    } else {
     s0+=97.0;
     s1+=143.0;
    }
   }
  } else {
   if(i3<0.00060233473777771){
    if(i6<0.0604119598865509){
     s0+=58122.0;
     s1+=356.0;
    } else {
     s0+=1703.0;
     s1+=118.0;
    }
   } else {
    if(i73<-6.527150617330335e-06){
     s0+=11.0;
     s1+=48.0;
    } else {
     s0+=100.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i29<1.0049419403076172){
   if(i5<1.0012601613998413){
    if(i32<1.1013743877410889){
     s0+=1643.0;
     s1+=666.0;
    } else {
     s0+=4891.0;
     s1+=337.0;
    }
   } else {
    if(i57<0.0017467211000621319){
     s0+=512.0;
     s1+=152.0;
    } else {
     s0+=133.0;
     s1+=332.0;
    }
   }
  } else {
   if(i50<0.0001372992992401123){
    if(i34<1.158913493156433){
     s1+=45.0;
    } else {
     s0+=136.0;
     s1+=11.0;
    }
   } else {
    if(i37<1.000638484954834){
     s0+=3.0;
     s1+=45.0;
    } else {
     s0+=1.0;
     s1+=694.0;
    }
   }
  }
 }
} else {
 if(i36<0.0005117687396705151){
  if(i11<1.000472068786621){
   if(i78<0.001255810260772705){
    if(i54<0.002984285354614258){
     s0+=108.0;
     s1+=17.0;
    } else {
     s0+=251.0;
     s1+=3.0;
    }
   } else {
    if(i38<1.0862454175949097){
     s1+=50.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   if(i48<0.00018577493028715253){
    s0+=1.0;
   } else {
    s1+=32.0;
   }
  }
 } else {
  if(i21<0.02404128760099411){
   if(i15<0.0003685951232910156){
    if(i7<-1.1431382517912425e-05){
     s0+=446.0;
     s1+=637.0;
    } else {
     s0+=358.0;
     s1+=92.0;
    }
   } else {
    if(i37<0.9989923238754272){
     s0+=7.0;
    } else {
     s0+=75.0;
     s1+=2297.0;
    }
   }
  } else {
   if(i8<1.0196276903152466){
    if(i1<-5.167722702026367e-05){
     s0+=206.0;
     s1+=117.0;
    } else {
     s0+=283.0;
     s1+=4124.0;
    }
   } else {
    if(i10<0.9872641563415527){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=6671.0;
    }
   }
  }
 }
}
if(i7<-8.167904161382467e-05){
 if(i13<1.042243480682373){
  if(i9<0.9534680843353271){
   if(i34<1.580256700515747){
    s1+=15.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i4<0.07700455188751221){
    if(i8<1.0028481483459473){
     s0+=492.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i36<0.0010294952662661672){
     s0+=6.0;
    } else {
     s1+=35.0;
    }
   }
  }
 } else {
  if(i19<-0.0003978610038757324){
   if(i56<-0.000450506922788918){
    if(i18<0.9034289121627808){
     s0+=5.0;
    } else {
     s1+=102.0;
    }
   } else {
    if(i37<1.0016510486602783){
     s0+=10.0;
     s1+=32.0;
    } else {
     s0+=128.0;
     s1+=6.0;
    }
   }
  } else {
   if(i9<1.017249345779419){
    if(i43<-2.3536846128990874e-05){
     s1+=59.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i4<0.015228331089019775){
     s0+=36.0;
     s1+=28.0;
    } else {
     s0+=102.0;
     s1+=10642.0;
    }
   }
  }
 }
} else {
 if(i13<1.0452215671539307){
  if(i0<0.08263316750526428){
   if(i5<1.0025544166564941){
    if(i39<0.019698746502399445){
     s0+=49758.0;
     s1+=222.0;
    } else {
     s0+=11822.0;
     s1+=582.0;
    }
   } else {
    if(i31<0.00017038217629306018){
     s0+=56.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=92.0;
    }
   }
  } else {
   if(i24<1.0452029705047607){
    if(i34<1.0705182552337646){
     s0+=99.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=17.0;
    }
   } else {
    if(i37<0.9961002469062805){
     s0+=16.0;
    } else {
     s0+=28.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i4<0.07919394969940186){
   if(i67<-3.6999877011112403e-06){
    if(i38<1.2392117977142334){
     s1+=225.0;
    } else {
     s0+=68.0;
     s1+=12.0;
    }
   } else {
    if(i7<-2.5108267436735332e-05){
     s0+=1576.0;
     s1+=944.0;
    } else {
     s0+=5419.0;
     s1+=536.0;
    }
   }
  } else {
   if(i11<0.9985539317131042){
    if(i13<1.0473206043243408){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=330.0;
    }
   } else {
    if(i28<1.0282297134399414){
     s0+=287.0;
     s1+=2292.0;
    } else {
     s0+=782.0;
     s1+=1017.0;
    }
   }
  }
 }
}
if(i1<3.832578659057617e-05){
 if(i4<0.0805407464504242){
  if(i13<1.040665864944458){
   if(i66<-0.0013020038604736328){
    if(i48<0.001461565145291388){
     s0+=1464.0;
     s1+=300.0;
    } else {
     s0+=2551.0;
     s1+=35.0;
    }
   } else {
    if(i5<1.0025386810302734){
     s0+=55249.0;
     s1+=223.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   }
  } else {
   if(i4<0.0586930513381958){
    if(i45<1.1037919521331787){
     s0+=2652.0;
     s1+=686.0;
    } else {
     s0+=5332.0;
     s1+=252.0;
    }
   } else {
    if(i41<0.0011236409191042185){
     s0+=403.0;
     s1+=484.0;
    } else {
     s0+=1223.0;
     s1+=201.0;
    }
   }
  }
 } else {
  if(i11<0.9985275268554688){
   if(i11<0.9980583190917969){
    if(i29<0.9840458631515503){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=393.0;
    }
   } else {
    if(i71<0.0006152731948532164){
     s0+=25.0;
    } else {
     s0+=6.0;
     s1+=18.0;
    }
   }
  } else {
   if(i51<0.004344075918197632){
    if(i26<0.0002469375031068921){
     s0+=28.0;
     s1+=14.0;
    } else {
     s0+=222.0;
     s1+=2265.0;
    }
   } else {
    if(i12<0.0032019675709307194){
     s0+=595.0;
     s1+=114.0;
    } else {
     s0+=204.0;
     s1+=908.0;
    }
   }
  }
 }
} else {
 if(i38<1.0795294046401978){
  s0+=256.0;
 } else {
  if(i7<-4.330423689680174e-05){
   if(i5<1.002935528755188){
    if(i69<1.0018939971923828){
     s0+=81.0;
     s1+=657.0;
    } else {
     s0+=53.0;
     s1+=25.0;
    }
   } else {
    if(i0<0.04734283685684204){
     s0+=51.0;
     s1+=191.0;
    } else {
     s0+=66.0;
     s1+=10553.0;
    }
   }
  } else {
   if(i71<0.0004696543619502336){
    if(i19<8.58306884765625e-05){
     s0+=3.0;
     s1+=46.0;
    } else {
     s0+=163.0;
     s1+=2.0;
    }
   } else {
    if(i73<-2.8046979423379526e-06){
     s0+=1.0;
     s1+=213.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i19<0.00011414289474487305){
 if(i3<0.0005737543106079102){
  if(i4<0.08163893222808838){
   if(i51<-0.0015491843223571777){
    if(i40<0.00086387520423159){
     s0+=1188.0;
     s1+=510.0;
    } else {
     s0+=2671.0;
     s1+=308.0;
    }
   } else {
    if(i9<1.0410068035125732){
     s0+=59915.0;
     s1+=687.0;
    } else {
     s0+=4664.0;
     s1+=697.0;
    }
   }
  } else {
   if(i11<0.9980508089065552){
    if(i40<0.008615576662123203){
     s0+=396.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i7<-1.2001353752566501e-05){
     s0+=509.0;
     s1+=2533.0;
    } else {
     s0+=530.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i41<0.00037497602170333266){
   s0+=95.0;
  } else {
   if(i33<0.022051971405744553){
    if(i32<1.5682398080825806){
     s0+=83.0;
     s1+=470.0;
    } else {
     s0+=154.0;
    }
   } else {
    if(i7<-5.635504930978641e-05){
     s1+=1565.0;
    } else {
     s0+=3.0;
     s1+=202.0;
    }
   }
  }
 }
} else {
 if(i31<0.00022141862427815795){
  if(i5<1.0042204856872559){
   if(i30<1.008303165435791){
    if(i50<0.00023943185806274414){
     s0+=418.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i34<1.1334967613220215){
     s1+=61.0;
    } else {
     s0+=80.0;
     s1+=3.0;
    }
   }
  } else {
   s1+=105.0;
  }
 } else {
  if(i40<0.0005079566035419703){
   if(i25<1.0082061290740967){
    s0+=126.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i1<-2.2351741790771484e-06){
    if(i45<1.3712366819381714){
     s0+=46.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i2<0.0666925311088562){
     s0+=85.0;
     s1+=274.0;
    } else {
     s0+=79.0;
     s1+=9500.0;
    }
   }
  }
 }
}
if(i30<1.0081071853637695){
 if(i14<0.0004321932792663574){
  if(i62<-0.0023209452629089355){
   if(i56<4.2347302951384336e-05){
    if(i4<0.053690940141677856){
     s0+=2310.0;
     s1+=408.0;
    } else {
     s0+=133.0;
     s1+=840.0;
    }
   } else {
    if(i67<8.336694463650929e-07){
     s0+=12.0;
     s1+=47.0;
    } else {
     s0+=2964.0;
     s1+=218.0;
    }
   }
  } else {
   if(i0<0.08408311009407043){
    if(i31<0.00031705541186966){
     s0+=55762.0;
     s1+=262.0;
    } else {
     s0+=5259.0;
     s1+=467.0;
    }
   } else {
    if(i50<-0.00013679265975952148){
     s0+=205.0;
     s1+=12.0;
    } else {
     s0+=272.0;
     s1+=767.0;
    }
   }
  }
 } else {
  if(i69<1.0024096965789795){
   if(i7<-5.1820763474097475e-05){
    if(i19<-0.00012230873107910156){
     s0+=242.0;
     s1+=563.0;
    } else {
     s0+=26.0;
     s1+=1784.0;
    }
   } else {
    if(i12<0.004138298332691193){
     s0+=382.0;
     s1+=16.0;
    } else {
     s0+=129.0;
     s1+=329.0;
    }
   }
  } else {
   if(i68<0.003318215487524867){
    if(i4<0.1278841197490692){
     s0+=605.0;
     s1+=22.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i80<-0.004314064979553223){
     s0+=60.0;
     s1+=20.0;
    } else {
     s0+=18.0;
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i57<0.0015865295426920056){
  if(i55<-2.644323103595525e-05){
   if(i66<0.0030107498168945312){
    if(i15<0.0013521909713745117){
     s0+=1.0;
    } else {
     s1+=1005.0;
    }
   } else {
    if(i43<-1.4332340469991323e-05){
     s1+=322.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<3.883242607116699e-05){
    if(i21<0.035445064306259155){
     s0+=2003.0;
     s1+=650.0;
    } else {
     s0+=159.0;
     s1+=407.0;
    }
   } else {
    if(i4<0.05868375301361084){
     s0+=79.0;
     s1+=38.0;
    } else {
     s0+=53.0;
     s1+=515.0;
    }
   }
  }
 } else {
  if(i15<-3.987550735473633e-05){
   if(i4<0.13439428806304932){
    if(i35<0.9999457001686096){
     s0+=215.0;
     s1+=37.0;
    } else {
     s0+=93.0;
     s1+=209.0;
    }
   } else {
    if(i71<0.0004059507045894861){
     s0+=6.0;
     s1+=26.0;
    } else {
     s0+=4.0;
     s1+=625.0;
    }
   }
  } else {
   if(i43<-5.033749630456441e-07){
    s1+=7497.0;
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i6<0.072673499584198){
 if(i0<0.07803171873092651){
  if(i52<0.008425895124673843){
   if(i11<1.0016478300094604){
    if(i0<0.0663345456123352){
     s0+=63202.0;
     s1+=807.0;
    } else {
     s0+=1958.0;
     s1+=342.0;
    }
   } else {
    if(i5<1.0026593208312988){
     s0+=745.0;
     s1+=39.0;
    } else {
     s0+=91.0;
     s1+=281.0;
    }
   }
  } else {
   if(i5<1.0018129348754883){
    if(i5<0.996675431728363){
     s0+=1158.0;
     s1+=75.0;
    } else {
     s0+=1535.0;
     s1+=571.0;
    }
   } else {
    if(i78<0.002834022045135498){
     s0+=38.0;
     s1+=507.0;
    } else {
     s0+=21.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i70<0.9946768879890442){
   s0+=106.0;
  } else {
   if(i47<0.048689424991607666){
    if(i1<-5.9664249420166016e-05){
     s0+=7.0;
    } else {
     s0+=19.0;
     s1+=1930.0;
    }
   } else {
    if(i24<1.055673599243164){
     s0+=75.0;
     s1+=7.0;
    } else {
     s0+=47.0;
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i2<0.11511179804801941){
  if(i5<1.0018022060394287){
   if(i51<0.0042604804039001465){
    if(i21<0.014464758336544037){
     s0+=329.0;
     s1+=89.0;
    } else {
     s0+=222.0;
     s1+=471.0;
    }
   } else {
    if(i64<-0.00365630560554564){
     s0+=652.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  } else {
   if(i72<-0.0178510844707489){
    if(i43<-3.551720510586165e-05){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.0037711262702941895){
     s0+=7.0;
     s1+=460.0;
    } else {
     s0+=20.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i11<0.9978978037834167){
   if(i50<-0.00018715858459472656){
    s0+=225.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i57<0.00032114877831190825){
    if(i24<1.1754474639892578){
     s0+=53.0;
     s1+=181.0;
    } else {
     s0+=156.0;
     s1+=8.0;
    }
   } else {
    if(i43<3.6601336432795506e-06){
     s0+=246.0;
     s1+=11363.0;
    } else {
     s0+=25.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i5<1.0024676322937012){
 if(i6<0.07534408569335938){
  if(i0<0.0832001268863678){
   if(i49<-0.0058502256870269775){
    if(i1<-2.2470951080322266e-05){
     s0+=2180.0;
     s1+=171.0;
    } else {
     s0+=1605.0;
     s1+=641.0;
    }
   } else {
    if(i26<0.0003013049135915935){
     s0+=53041.0;
     s1+=255.0;
    } else {
     s0+=12157.0;
     s1+=971.0;
    }
   }
  } else {
   if(i36<0.00045207416405901313){
    if(i36<0.0004268006596248597){
     s0+=87.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i49<0.017907559871673584){
     s0+=36.0;
     s1+=831.0;
    } else {
     s0+=32.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i50<-0.0001308917999267578){
   if(i43<-1.0033487342298031e-05){
    if(i3<-0.0005398094654083252){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=58.0;
    }
   } else {
    if(i74<2.3165286620496772e-05){
     s0+=5.0;
     s1+=12.0;
    } else {
     s0+=433.0;
     s1+=5.0;
    }
   }
  } else {
   if(i6<0.12486213445663452){
    if(i49<0.017201006412506104){
     s0+=391.0;
     s1+=1064.0;
    } else {
     s0+=509.0;
     s1+=78.0;
    }
   } else {
    if(i33<0.029249556362628937){
     s0+=229.0;
     s1+=646.0;
    } else {
     s0+=31.0;
     s1+=1137.0;
    }
   }
  }
 }
} else {
 if(i26<0.0001879951305454597){
  if(i57<0.0007877834141254425){
   s0+=79.0;
  } else {
   if(i73<-4.933054697175976e-06){
    s1+=14.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i12<0.0020491364412009716){
   if(i10<1.013892650604248){
    if(i43<-1.5140992218221072e-05){
     s1+=19.0;
    } else {
     s0+=99.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i0<0.12855765223503113){
    if(i67<2.97796941595152e-06){
     s0+=56.0;
     s1+=1577.0;
    } else {
     s0+=113.0;
     s1+=519.0;
    }
   } else {
    if(i49<0.043219923973083496){
     s1+=6795.0;
    } else {
     s0+=5.0;
     s1+=2217.0;
    }
   }
  }
 }
}
if(i11<1.0016210079193115){
 if(i60<-8.273014100268483e-05){
  if(i2<0.0749674141407013){
   if(i34<1.0862454175949097){
    if(i3<-0.00019976496696472168){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   } else {
    if(i45<1.196258783340454){
     s0+=57.0;
     s1+=24.0;
    } else {
     s0+=235.0;
    }
   }
  } else {
   if(i43<-2.138325953637832e-06){
    if(i37<1.0001235008239746){
     s0+=2.0;
     s1+=1352.0;
    } else {
     s0+=39.0;
     s1+=276.0;
    }
   } else {
    if(i44<0.05268043279647827){
     s0+=27.0;
     s1+=45.0;
    } else {
     s0+=100.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i0<0.08225274085998535){
   if(i13<1.0401476621627808){
    if(i34<1.0557184219360352){
     s0+=40801.0;
    } else {
     s0+=17563.0;
     s1+=554.0;
    }
   } else {
    if(i8<0.9947928190231323){
     s0+=1528.0;
     s1+=582.0;
    } else {
     s0+=7937.0;
     s1+=798.0;
    }
   }
  } else {
   if(i12<0.004690013825893402){
    if(i46<0.06299996376037598){
     s0+=74.0;
     s1+=635.0;
    } else {
     s0+=1141.0;
     s1+=605.0;
    }
   } else {
    if(i14<-0.0005460381507873535){
     s0+=89.0;
    } else {
     s0+=44.0;
     s1+=2006.0;
    }
   }
  }
 }
} else {
 if(i5<1.0023677349090576){
  if(i71<0.001699634245596826){
   if(i15<-0.0023180246353149414){
    if(i0<0.14736148715019226){
     s0+=553.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i33<0.023043114691972733){
     s0+=411.0;
     s1+=168.0;
    } else {
     s0+=9.0;
     s1+=144.0;
    }
   }
  } else {
   if(i1<-2.664327621459961e-05){
    if(i37<1.0014526844024658){
     s1+=6.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i46<0.004485428333282471){
     s0+=10.0;
     s1+=37.0;
    } else {
     s0+=1.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i0<0.05765557289123535){
   if(i73<-5.169854375708383e-06){
    if(i53<0.010893315076828003){
     s0+=51.0;
     s1+=343.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i68<0.0024843625724315643){
     s0+=67.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i0<0.09701377153396606){
    if(i64<-0.0035344096831977367){
     s0+=44.0;
     s1+=42.0;
    } else {
     s0+=22.0;
     s1+=834.0;
    }
   } else {
    if(i41<0.008836107328534126){
     s0+=24.0;
     s1+=2375.0;
    } else {
     s0+=1.0;
     s1+=6224.0;
    }
   }
  }
 }
}
if(i0<0.0836833119392395){
 if(i5<1.0024782419204712){
  if(i21<0.01615365594625473){
   if(i26<0.00028183567337691784){
    if(i22<1.0112978219985962){
     s0+=50466.0;
     s1+=121.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   } else {
    if(i3<0.0002321004867553711){
     s0+=8139.0;
     s1+=451.0;
    } else {
     s0+=272.0;
     s1+=146.0;
    }
   }
  } else {
   if(i5<0.9972833395004272){
    if(i57<0.006420840509235859){
     s0+=7543.0;
     s1+=112.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i2<0.05764731764793396){
     s0+=2171.0;
     s1+=610.0;
    } else {
     s0+=655.0;
     s1+=636.0;
    }
   }
  }
 } else {
  if(i32<1.2392117977142334){
   if(i74<0.00020381389185786247){
    s1+=710.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i30<1.002507209777832){
    if(i51<-0.0012991726398468018){
     s0+=18.0;
     s1+=262.0;
    } else {
     s0+=44.0;
     s1+=16.0;
    }
   } else {
    if(i5<1.0042107105255127){
     s0+=210.0;
     s1+=17.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i40<0.005398971494287252){
  if(i50<-0.0001392960548400879){
   if(i11<0.9988566040992737){
    if(i36<0.0017424665857106447){
     s0+=427.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i47<0.06099840998649597){
    if(i0<0.0869651734828949){
     s0+=64.0;
     s1+=201.0;
    } else {
     s0+=28.0;
     s1+=2637.0;
    }
   } else {
    if(i12<0.0027135717682540417){
     s0+=660.0;
     s1+=193.0;
    } else {
     s0+=261.0;
     s1+=914.0;
    }
   }
  }
 } else {
  if(i69<1.0015368461608887){
   if(i2<0.13113737106323242){
    if(i51<0.0060423314571380615){
     s0+=14.0;
     s1+=437.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   } else {
    if(i11<1.0011425018310547){
     s0+=22.0;
     s1+=1298.0;
    } else {
     s0+=6.0;
     s1+=7581.0;
    }
   }
  } else {
   if(i6<0.13181954622268677){
    if(i54<0.001622706651687622){
     s0+=8.0;
     s1+=97.0;
    } else {
     s0+=106.0;
     s1+=27.0;
    }
   } else {
    if(i38<1.3184399604797363){
     s0+=16.0;
     s1+=14.0;
    } else {
     s1+=488.0;
    }
   }
  }
 }
}
if(i4<0.07981711626052856){
 if(i17<2.4020671844482422e-05){
  if(i53<-0.02784949541091919){
   if(i4<0.02972400188446045){
    if(i5<0.997524619102478){
     s0+=1111.0;
     s1+=41.0;
    } else {
     s0+=1005.0;
     s1+=232.0;
    }
   } else {
    if(i25<1.0195780992507935){
     s0+=186.0;
     s1+=369.0;
    } else {
     s0+=111.0;
     s1+=5.0;
    }
   }
  } else {
   if(i2<0.06916067004203796){
    if(i49<-0.005851387977600098){
     s0+=2203.0;
     s1+=318.0;
    } else {
     s0+=61303.0;
     s1+=701.0;
    }
   } else {
    if(i46<0.046165674924850464){
     s0+=323.0;
     s1+=401.0;
    } else {
     s0+=2351.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i15<0.000430375337600708){
   if(i3<0.000486910343170166){
    if(i57<0.005772506818175316){
     s0+=633.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i54<-0.00029146671295166016){
     s0+=71.0;
     s1+=289.0;
    } else {
     s0+=119.0;
     s1+=43.0;
    }
   }
  } else {
   if(i48<0.0002547609619796276){
    s0+=11.0;
   } else {
    s1+=709.0;
   }
  }
 }
} else {
 if(i7<-1.388082091580145e-05){
  if(i14<-0.000432431697845459){
   if(i45<1.498544454574585){
    s0+=62.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i0<0.1174226701259613){
    if(i32<1.2371783256530762){
     s0+=14.0;
     s1+=1145.0;
    } else {
     s0+=387.0;
     s1+=471.0;
    }
   } else {
    if(i41<0.007218952290713787){
     s0+=188.0;
     s1+=3088.0;
    } else {
     s0+=10.0;
     s1+=8653.0;
    }
   }
  }
 } else {
  if(i46<0.06298002600669861){
   if(i5<0.996037483215332){
    s0+=72.0;
   } else {
    if(i47<0.04851263761520386){
     s0+=3.0;
     s1+=126.0;
    } else {
     s0+=12.0;
     s1+=9.0;
    }
   }
  } else {
   if(i5<1.001701831817627){
    if(i47<0.05482262372970581){
     s0+=13.0;
     s1+=40.0;
    } else {
     s0+=944.0;
     s1+=107.0;
    }
   } else {
    s1+=29.0;
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i0<0.08264681696891785){
  if(i17<1.9490718841552734e-05){
   if(i26<0.0003066366771236062){
    if(i26<0.0002559666754677892){
     s0+=50385.0;
     s1+=136.0;
    } else {
     s0+=3162.0;
     s1+=100.0;
    }
   } else {
    if(i51<0.0018905401229858398){
     s0+=7462.0;
     s1+=1379.0;
    } else {
     s0+=6484.0;
     s1+=107.0;
    }
   }
  } else {
   if(i52<0.00835815817117691){
    if(i10<1.0011446475982666){
     s0+=1006.0;
     s1+=87.0;
    } else {
     s0+=80.0;
     s1+=142.0;
    }
   } else {
    if(i69<1.0029056072235107){
     s0+=56.0;
     s1+=340.0;
    } else {
     s0+=77.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i37<0.9988100528717041){
   if(i11<0.9980455040931702){
    s0+=401.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i60<0.0003211448492947966){
    if(i46<0.06694436073303223){
     s0+=41.0;
     s1+=483.0;
    } else {
     s0+=537.0;
     s1+=347.0;
    }
   } else {
    if(i0<0.12386459112167358){
     s0+=275.0;
     s1+=660.0;
    } else {
     s0+=46.0;
     s1+=2237.0;
    }
   }
  }
 }
} else {
 if(i40<0.005826801992952824){
  if(i3<0.0005218386650085449){
   if(i0<0.07532358169555664){
    if(i24<1.0731005668640137){
     s0+=11.0;
     s1+=123.0;
    } else {
     s0+=692.0;
     s1+=47.0;
    }
   } else {
    if(i48<0.00356987863779068){
     s0+=57.0;
     s1+=858.0;
    } else {
     s0+=350.0;
     s1+=301.0;
    }
   }
  } else {
   if(i12<0.002379603683948517){
    if(i40<0.002457946538925171){
     s1+=101.0;
    } else {
     s0+=141.0;
     s1+=56.0;
    }
   } else {
    if(i80<-0.0012801587581634521){
     s0+=5.0;
     s1+=58.0;
    } else {
     s0+=10.0;
     s1+=1886.0;
    }
   }
  }
 } else {
  if(i2<0.16907760500907898){
   if(i45<1.2592661380767822){
    if(i62<0.004312396049499512){
     s0+=5.0;
     s1+=23.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i28<1.0697427988052368){
     s0+=2.0;
     s1+=395.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i45<1.2529315948486328){
    if(i72<-0.07944488525390625){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=270.0;
    }
   } else {
    s1+=6709.0;
   }
  }
 }
}
if(i25<1.0103960037231445){
 if(i2<0.08225265145301819){
  if(i14<0.0006142258644104004){
   if(i53<-0.028919517993927002){
    if(i70<1.000370740890503){
     s0+=1716.0;
     s1+=279.0;
    } else {
     s0+=333.0;
     s1+=265.0;
    }
   } else {
    if(i68<0.0019798099528998137){
     s0+=61508.0;
     s1+=805.0;
    } else {
     s0+=3166.0;
     s1+=448.0;
    }
   }
  } else {
   if(i10<1.0001592636108398){
    if(i68<0.0050302110612392426){
     s0+=466.0;
     s1+=63.0;
    } else {
     s0+=65.0;
     s1+=237.0;
    }
   } else {
    if(i5<1.0017507076263428){
     s0+=9.0;
    } else {
     s0+=6.0;
     s1+=397.0;
    }
   }
  }
 } else {
  if(i17<-1.3440847396850586e-05){
   if(i70<0.9980853796005249){
    if(i17<-1.379847526550293e-05){
     s0+=476.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i61<0.9998003244400024){
     s0+=61.0;
     s1+=4.0;
    } else {
     s0+=21.0;
     s1+=20.0;
    }
   }
  } else {
   if(i54<0.005334824323654175){
    if(i24<1.0494358539581299){
     s0+=132.0;
     s1+=37.0;
    } else {
     s0+=96.0;
     s1+=3198.0;
    }
   } else {
    if(i75<0.10074149072170258){
     s0+=345.0;
     s1+=207.0;
    } else {
     s0+=33.0;
     s1+=360.0;
    }
   }
  }
 }
} else {
 if(i5<1.0020736455917358){
  if(i74<0.0001105207484215498){
   if(i7<-3.108327655354515e-05){
    if(i37<1.0001685619354248){
     s0+=36.0;
     s1+=628.0;
    } else {
     s0+=341.0;
     s1+=168.0;
    }
   } else {
    if(i68<-0.0009442882728762925){
     s0+=313.0;
     s1+=121.0;
    } else {
     s0+=1354.0;
     s1+=119.0;
    }
   }
  } else {
   if(i80<0.0006955265998840332){
    if(i39<0.0399019718170166){
     s0+=359.0;
     s1+=47.0;
    } else {
     s0+=24.0;
     s1+=243.0;
    }
   } else {
    if(i6<0.05675220489501953){
     s0+=71.0;
     s1+=34.0;
    } else {
     s0+=46.0;
     s1+=597.0;
    }
   }
  }
 } else {
  if(i24<1.1365801095962524){
   if(i48<0.0025789779610931873){
    if(i19<-0.0001480579376220703){
     s0+=15.0;
    } else {
     s0+=31.0;
     s1+=1889.0;
    }
   } else {
    if(i75<0.06288351118564606){
     s0+=80.0;
     s1+=37.0;
    } else {
     s0+=20.0;
     s1+=217.0;
    }
   }
  } else {
   if(i33<0.0022963592782616615){
    if(i20<1.0527927875518799){
     s0+=21.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i43<-1.2660666470765136e-05){
     s0+=4.0;
     s1+=6574.0;
    } else {
     s0+=32.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i0<0.08203884959220886){
 if(i24<1.0485899448394775){
  if(i59<0.0007362901233136654){
   if(i62<-0.003580152988433838){
    if(i35<0.9887771606445312){
     s0+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i0<0.07876202464103699){
     s0+=52829.0;
     s1+=97.0;
    } else {
     s0+=107.0;
     s1+=15.0;
    }
   }
  } else {
   if(i75<0.02964765578508377){
    if(i40<0.0003875603142660111){
     s0+=426.0;
     s1+=10.0;
    } else {
     s0+=261.0;
     s1+=192.0;
    }
   } else {
    if(i18<0.998729944229126){
     s0+=2234.0;
     s1+=37.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i7<-4.886289389105514e-05){
   if(i3<0.00033479928970336914){
    if(i45<1.2011767625808716){
     s0+=81.0;
     s1+=111.0;
    } else {
     s0+=1241.0;
     s1+=89.0;
    }
   } else {
    if(i29<1.0008240938186646){
     s0+=166.0;
     s1+=148.0;
    } else {
     s0+=78.0;
     s1+=887.0;
    }
   }
  } else {
   if(i22<0.9907543659210205){
    if(i24<1.0921459197998047){
     s0+=532.0;
     s1+=588.0;
    } else {
     s0+=1960.0;
     s1+=145.0;
    }
   } else {
    if(i4<0.05386161804199219){
     s0+=7313.0;
     s1+=356.0;
    } else {
     s0+=2038.0;
     s1+=456.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015757083892822){
  if(i70<0.9974271059036255){
   if(i50<-0.0001456737518310547){
    if(i11<0.9980716705322266){
     s0+=382.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i0<0.10525396466255188){
     s0+=29.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=83.0;
    }
   }
  } else {
   if(i12<0.001689004828222096){
    if(i44<0.045243293046951294){
     s0+=34.0;
     s1+=113.0;
    } else {
     s0+=493.0;
     s1+=60.0;
    }
   } else {
    if(i44<0.04848277568817139){
     s0+=46.0;
     s1+=1827.0;
    } else {
     s0+=526.0;
     s1+=939.0;
    }
   }
  }
 } else {
  if(i1<1.8358230590820312e-05){
   if(i61<1.000413417816162){
    if(i7<-4.047833499498665e-05){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=15.0;
   }
  } else {
   if(i12<0.006237741559743881){
    if(i49<0.03202828764915466){
     s0+=74.0;
     s1+=1701.0;
    } else {
     s0+=55.0;
     s1+=20.0;
    }
   } else {
    if(i0<0.11540913581848145){
     s0+=21.0;
     s1+=511.0;
    } else {
     s0+=6.0;
     s1+=8856.0;
    }
   }
  }
 }
}
if(i4<0.07832354307174683){
 if(i7<-5.035657522967085e-05){
  if(i13<1.0405617952346802){
   if(i29<1.0009241104125977){
    if(i14<0.0004197359085083008){
     s0+=1111.0;
     s1+=3.0;
    } else {
     s0+=219.0;
     s1+=15.0;
    }
   } else {
    if(i45<1.2388319969177246){
     s0+=2.0;
     s1+=83.0;
    } else {
     s0+=66.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.00040286779403686523){
    if(i56<-0.000251477409619838){
     s0+=116.0;
     s1+=186.0;
    } else {
     s0+=404.0;
     s1+=51.0;
    }
   } else {
    if(i53<0.0314154326915741){
     s0+=110.0;
     s1+=981.0;
    } else {
     s0+=72.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i68<0.0014991707867011428){
   if(i31<0.0002988161868415773){
    if(i25<1.0083067417144775){
     s0+=54103.0;
     s1+=260.0;
    } else {
     s0+=668.0;
     s1+=148.0;
    }
   } else {
    if(i1<-1.1563301086425781e-05){
     s0+=4716.0;
     s1+=228.0;
    } else {
     s0+=1804.0;
     s1+=432.0;
    }
   }
  } else {
   if(i16<1.0007638931274414){
    if(i38<1.1037919521331787){
     s0+=1746.0;
     s1+=480.0;
    } else {
     s0+=3555.0;
     s1+=131.0;
    }
   } else {
    if(i32<1.2392117977142334){
     s0+=52.0;
     s1+=254.0;
    } else {
     s0+=411.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i29<1.0004987716674805){
  if(i37<0.9988040328025818){
   if(i15<-0.0005361437797546387){
    if(i13<1.398578405380249){
     s0+=352.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i67<1.8694132450036705e-05){
     s0+=64.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i47<0.04909595847129822){
    if(i47<0.04288095235824585){
     s1+=1289.0;
    } else {
     s0+=28.0;
     s1+=189.0;
    }
   } else {
    if(i74<9.911950473906472e-05){
     s0+=824.0;
     s1+=665.0;
    } else {
     s0+=313.0;
     s1+=1369.0;
    }
   }
  }
 } else {
  if(i17<1.913309097290039e-05){
   if(i40<0.005399052053689957){
    if(i27<1.0443408489227295){
     s0+=97.0;
     s1+=1015.0;
    } else {
     s0+=119.0;
     s1+=96.0;
    }
   } else {
    s1+=1003.0;
   }
  } else {
   if(i12<0.007300524041056633){
    if(i69<1.0023531913757324){
     s0+=20.0;
     s1+=1389.0;
    } else {
     s0+=21.0;
     s1+=10.0;
    }
   } else {
    s1+=6917.0;
   }
  }
 }
}
if(i7<-4.36950649600476e-05){
 if(i3<-0.00010356307029724121){
  if(i78<-0.00556182861328125){
   if(i4<0.08585339784622192){
    if(i22<0.9263681173324585){
     s0+=339.0;
     s1+=21.0;
    } else {
     s0+=1151.0;
     s1+=3.0;
    }
   } else {
    if(i70<1.010582685470581){
     s1+=45.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i13<1.093557357788086){
    if(i38<1.2381287813186646){
     s0+=266.0;
     s1+=111.0;
    } else {
     s0+=446.0;
     s1+=28.0;
    }
   } else {
    if(i73<2.588078018561646e-07){
     s0+=5.0;
     s1+=278.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i15<-0.0006194114685058594){
   if(i75<0.12443099915981293){
    if(i14<0.001557469367980957){
     s0+=638.0;
     s1+=579.0;
    } else {
     s0+=4.0;
     s1+=81.0;
    }
   } else {
    s1+=611.0;
   }
  } else {
   if(i34<1.0569010972976685){
    s0+=27.0;
   } else {
    if(i0<0.05937322974205017){
     s0+=101.0;
     s1+=422.0;
    } else {
     s0+=56.0;
     s1+=11366.0;
    }
   }
  }
 }
} else {
 if(i2<0.08355346322059631){
  if(i49<-0.00612872838973999){
   if(i42<0.0021434430964291096){
    if(i36<0.00041922059608623385){
     s0+=829.0;
     s1+=33.0;
    } else {
     s0+=304.0;
     s1+=491.0;
    }
   } else {
    if(i1<1.1026859283447266e-05){
     s0+=1668.0;
     s1+=58.0;
    } else {
     s0+=90.0;
     s1+=58.0;
    }
   }
  } else {
   if(i52<0.00756441755220294){
    if(i66<-0.0013793110847473145){
     s0+=1774.0;
     s1+=217.0;
    } else {
     s0+=60300.0;
     s1+=600.0;
    }
   } else {
    if(i0<0.05821681022644043){
     s0+=1297.0;
     s1+=117.0;
    } else {
     s0+=186.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i11<0.9985202550888062){
   if(i36<0.006805916782468557){
    if(i3<-0.0004825592041015625){
     s0+=604.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.07045125961303711){
     s0+=39.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i47<0.058077067136764526){
    if(i64<-0.010200260207057){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=81.0;
     s1+=1135.0;
    }
   } else {
    if(i12<0.0027842328418046236){
     s0+=733.0;
     s1+=166.0;
    } else {
     s0+=206.0;
     s1+=481.0;
    }
   }
  }
 }
}
if(i4<0.0782729983329773){
 if(i3<0.0006022453308105469){
  if(i51<-0.001549065113067627){
   if(i2<0.04367759823799133){
    if(i2<0.01163586974143982){
     s0+=2057.0;
     s1+=87.0;
    } else {
     s0+=1453.0;
     s1+=338.0;
    }
   } else {
    if(i22<0.9865289926528931){
     s0+=100.0;
     s1+=265.0;
    } else {
     s0+=368.0;
     s1+=73.0;
    }
   }
  } else {
   if(i0<0.06659066677093506){
    if(i39<0.02681606635451317){
     s0+=55158.0;
     s1+=337.0;
    } else {
     s0+=7740.0;
     s1+=481.0;
    }
   } else {
    if(i45<1.1032289266586304){
     s0+=1055.0;
     s1+=515.0;
    } else {
     s0+=1290.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i69<0.9976924061775208){
   if(i8<1.016006350517273){
    s0+=101.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i3<0.0009805560111999512){
    if(i7<-4.394689676701091e-05){
     s0+=75.0;
     s1+=235.0;
    } else {
     s0+=147.0;
     s1+=76.0;
    }
   } else {
    if(i36<0.009237425401806831){
     s0+=4.0;
     s1+=726.0;
    } else {
     s0+=20.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015792846679688){
  if(i47<0.05727726221084595){
   if(i36<0.00045606427011080086){
    if(i74<2.822010537784081e-05){
     s1+=11.0;
    } else {
     s0+=76.0;
     s1+=6.0;
    }
   } else {
    if(i3<-0.0008643865585327148){
     s0+=44.0;
     s1+=12.0;
    } else {
     s0+=34.0;
     s1+=1599.0;
    }
   }
  } else {
   if(i21<0.029485322535037994){
    if(i64<-0.004486807622015476){
     s0+=784.0;
     s1+=97.0;
    } else {
     s0+=323.0;
     s1+=230.0;
    }
   } else {
    if(i14<-0.0004037022590637207){
     s0+=173.0;
     s1+=1.0;
    } else {
     s0+=212.0;
     s1+=946.0;
    }
   }
  }
 } else {
  if(i12<0.0027273017913103104){
   if(i53<0.06983828544616699){
    if(i49<0.016539812088012695){
     s0+=10.0;
     s1+=281.0;
    } else {
     s0+=38.0;
     s1+=8.0;
    }
   } else {
    if(i10<1.0133264064788818){
     s0+=46.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i3<0.0008535385131835938){
    if(i15<-0.0006325244903564453){
     s0+=69.0;
     s1+=192.0;
    } else {
     s0+=9.0;
     s1+=1026.0;
    }
   } else {
    if(i71<0.00043870595982298255){
     s0+=38.0;
     s1+=1485.0;
    } else {
     s0+=5.0;
     s1+=7672.0;
    }
   }
  }
 }
}
if(i13<1.052894115447998){
 if(i4<0.07766672968864441){
  if(i0<0.06724727153778076){
   if(i49<-0.005067229270935059){
    if(i77<0.0012906498741358519){
     s0+=1667.0;
     s1+=372.0;
    } else {
     s0+=1046.0;
     s1+=20.0;
    }
   } else {
    if(i3<0.0009481906890869141){
     s0+=59552.0;
     s1+=523.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i47<0.03586849570274353){
    if(i67<2.2879135940456763e-05){
     s0+=4.0;
     s1+=297.0;
    } else {
     s0+=54.0;
     s1+=6.0;
    }
   } else {
    if(i62<-0.001102447509765625){
     s0+=100.0;
     s1+=47.0;
    } else {
     s0+=1474.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i5<0.9981858730316162){
   if(i50<-0.00013127923011779785){
    if(i5<0.9969729781150818){
     s0+=141.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   } else {
    if(i62<-0.00043329596519470215){
     s0+=15.0;
     s1+=68.0;
    } else {
     s0+=112.0;
     s1+=23.0;
    }
   }
  } else {
   if(i42<0.0003607840044423938){
    if(i74<2.6749412427307107e-05){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i37<1.0016603469848633){
     s0+=23.0;
     s1+=598.0;
    } else {
     s0+=10.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i0<0.08318096399307251){
  if(i11<1.0018457174301147){
   if(i12<0.004095894284546375){
    if(i7<-3.24757638736628e-05){
     s0+=419.0;
     s1+=152.0;
    } else {
     s0+=3899.0;
     s1+=339.0;
    }
   } else {
    if(i42<0.0020140809938311577){
     s0+=11.0;
     s1+=306.0;
    } else {
     s0+=683.0;
     s1+=121.0;
    }
   }
  } else {
   if(i69<1.001910924911499){
    if(i44<0.02688300609588623){
     s0+=95.0;
     s1+=678.0;
    } else {
     s0+=66.0;
     s1+=38.0;
    }
   } else {
    if(i54<-0.005003809928894043){
     s1+=35.0;
    } else {
     s0+=280.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i16<1.0022125244140625){
   if(i44<0.053378939628601074){
    if(i0<0.09727221727371216){
     s0+=109.0;
     s1+=316.0;
    } else {
     s0+=33.0;
     s1+=2134.0;
    }
   } else {
    if(i41<0.006154434755444527){
     s0+=1033.0;
     s1+=455.0;
    } else {
     s0+=84.0;
     s1+=642.0;
    }
   }
  } else {
   if(i41<0.006914828903973103){
    if(i11<1.0015337467193604){
     s0+=133.0;
     s1+=458.0;
    } else {
     s0+=49.0;
     s1+=2061.0;
    }
   } else {
    if(i21<0.0017756982706487179){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=7273.0;
    }
   }
  }
 }
}
if(i4<0.07772430777549744){
 if(i16<1.0032095909118652){
  if(i13<1.0449585914611816){
   if(i49<-0.005714327096939087){
    if(i41<0.0016401142347604036){
     s0+=881.0;
     s1+=270.0;
    } else {
     s0+=1033.0;
     s1+=22.0;
    }
   } else {
    if(i26<0.00027133774710819125){
     s0+=50432.0;
     s1+=115.0;
    } else {
     s0+=9105.0;
     s1+=379.0;
    }
   }
  } else {
   if(i12<0.004368890076875687){
    if(i8<0.9917707443237305){
     s0+=497.0;
     s1+=243.0;
    } else {
     s0+=5444.0;
     s1+=508.0;
    }
   } else {
    if(i42<0.0019983602687716484){
     s0+=101.0;
     s1+=494.0;
    } else {
     s0+=815.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i3<0.0004565119743347168){
   if(i53<-0.026938199996948242){
    if(i4<0.01739540696144104){
     s0+=73.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=37.0;
    }
   } else {
    if(i32<1.246530294418335){
     s0+=15.0;
     s1+=8.0;
    } else {
     s0+=657.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<1.2510931491851807){
    if(i38<1.0652282238006592){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=689.0;
    }
   } else {
    if(i22<1.001910924911499){
     s0+=49.0;
     s1+=247.0;
    } else {
     s0+=146.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015735626220703){
  if(i1<-5.21540641784668e-05){
   if(i12<0.006810099817812443){
    if(i29<0.992059588432312){
     s0+=418.0;
     s1+=13.0;
    } else {
     s0+=46.0;
     s1+=22.0;
    }
   } else {
    if(i80<-0.003522425889968872){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=88.0;
    }
   }
  } else {
   if(i12<0.0017158968839794397){
    if(i9<1.049645185470581){
     s0+=48.0;
     s1+=117.0;
    } else {
     s0+=497.0;
     s1+=85.0;
    }
   } else {
    if(i46<0.06374040246009827){
     s0+=18.0;
     s1+=1084.0;
    } else {
     s0+=621.0;
     s1+=1538.0;
    }
   }
  }
 } else {
  if(i15<0.0006896853446960449){
   if(i48<0.009743805974721909){
    if(i21<0.015069539658725262){
     s0+=98.0;
     s1+=82.0;
    } else {
     s0+=72.0;
     s1+=760.0;
    }
   } else {
    if(i48<0.010837409645318985){
     s0+=3.0;
     s1+=77.0;
    } else {
     s1+=1004.0;
    }
   }
  } else {
   if(i36<0.0018854285590350628){
    if(i64<-0.007534097880125046){
     s0+=19.0;
     s1+=9.0;
    } else {
     s0+=10.0;
     s1+=873.0;
    }
   } else {
    if(i33<0.005020731594413519){
     s0+=1.0;
     s1+=81.0;
    } else {
     s1+=8076.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i7<-4.5769182179355994e-05){
  if(i19<-0.0002504587173461914){
   if(i2<0.09730455279350281){
    if(i1<3.165006637573242e-05){
     s0+=1592.0;
     s1+=27.0;
    } else {
     s0+=16.0;
     s1+=31.0;
    }
   } else {
    if(i46<0.01289549469947815){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=56.0;
    }
   }
  } else {
   if(i29<1.0011074542999268){
    if(i21<0.013229988515377045){
     s0+=315.0;
     s1+=10.0;
    } else {
     s0+=87.0;
     s1+=169.0;
    }
   } else {
    if(i81<-1.9371509552001953e-06){
     s0+=72.0;
     s1+=18.0;
    } else {
     s0+=65.0;
     s1+=718.0;
    }
   }
  }
 } else {
  if(i48<0.00034491257974877954){
   if(i30<1.0097107887268066){
    if(i48<0.00030276738107204437){
     s0+=46376.0;
     s1+=37.0;
    } else {
     s0+=1379.0;
     s1+=56.0;
    }
   } else {
    if(i70<1.0002071857452393){
     s1+=8.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i14<-0.00014221668243408203){
    if(i0<0.08216655254364014){
     s0+=9992.0;
     s1+=277.0;
    } else {
     s0+=99.0;
     s1+=91.0;
    }
   } else {
    if(i10<0.9882069826126099){
     s0+=1714.0;
     s1+=48.0;
    } else {
     s0+=3619.0;
     s1+=1155.0;
    }
   }
  }
 }
} else {
 if(i19<0.00010401010513305664){
  if(i0<0.10984665155410767){
   if(i16<1.0003856420516968){
    if(i71<0.0005554017843678594){
     s0+=2770.0;
     s1+=267.0;
    } else {
     s0+=1105.0;
     s1+=473.0;
    }
   } else {
    if(i45<1.1065986156463623){
     s0+=97.0;
     s1+=312.0;
    } else {
     s0+=938.0;
     s1+=385.0;
    }
   }
  } else {
   if(i50<-0.0001328587532043457){
    if(i16<0.9982813000679016){
     s0+=249.0;
     s1+=3.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i57<0.0003964221978094429){
     s0+=229.0;
     s1+=136.0;
    } else {
     s0+=237.0;
     s1+=3109.0;
    }
   }
  }
 } else {
  if(i0<0.06460526585578918){
   if(i17<1.8835067749023438e-05){
    if(i36<0.0008501227130182087){
     s0+=5.0;
     s1+=45.0;
    } else {
     s0+=150.0;
     s1+=2.0;
    }
   } else {
    if(i43<-1.53665678226389e-05){
     s1+=177.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i5<0.9988351464271545){
    s0+=7.0;
   } else {
    if(i14<0.00046050548553466797){
     s0+=75.0;
     s1+=1574.0;
    } else {
     s0+=2.0;
     s1+=7835.0;
    }
   }
  }
 }
}
if(i7<-8.167904161382467e-05){
 if(i0<0.06488946080207825){
  if(i76<-3.4203844734292943e-06){
   if(i69<0.9976493120193481){
    if(i66<-0.01569017767906189){
     s1+=1.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i30<1.0200209617614746){
     s0+=8.0;
     s1+=173.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i10<0.9976322054862976){
    if(i33<0.05005916208028793){
     s0+=618.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=52.0;
    }
   } else {
    if(i79<0.00035644526360556483){
     s1+=60.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i45<1.0677311420440674){
   s0+=35.0;
  } else {
   if(i67<3.417926927795634e-05){
    if(i55<0.00010452876449562609){
     s0+=3.0;
     s1+=8136.0;
    } else {
     s0+=70.0;
     s1+=2044.0;
    }
   } else {
    if(i45<1.401505470275879){
     s0+=38.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=218.0;
    }
   }
  }
 }
} else {
 if(i9<1.0452277660369873){
  if(i5<1.0024782419204712){
   if(i4<0.07774066925048828){
    if(i62<-0.0023064017295837402){
     s0+=4389.0;
     s1+=733.0;
    } else {
     s0+=60008.0;
     s1+=613.0;
    }
   } else {
    if(i16<0.9966412782669067){
     s0+=146.0;
     s1+=19.0;
    } else {
     s0+=121.0;
     s1+=594.0;
    }
   }
  } else {
   if(i45<1.217149257659912){
    if(i40<0.0003351916966494173){
     s0+=5.0;
    } else {
     s1+=284.0;
    }
   } else {
    if(i12<0.003593119792640209){
     s0+=93.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i29<1.00099778175354){
   if(i16<1.0003843307495117){
    if(i21<0.024764634668827057){
     s0+=3264.0;
     s1+=325.0;
    } else {
     s0+=852.0;
     s1+=896.0;
    }
   } else {
    if(i38<1.1423697471618652){
     s0+=55.0;
     s1+=333.0;
    } else {
     s0+=733.0;
     s1+=742.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    if(i57<0.0006426802137866616){
     s0+=182.0;
     s1+=310.0;
    } else {
     s0+=9.0;
     s1+=1074.0;
    }
   } else {
    if(i78<-0.0007919669151306152){
     s0+=39.0;
     s1+=253.0;
    } else {
     s0+=473.0;
     s1+=139.0;
    }
   }
  }
 }
}
if(i14<0.0004399418830871582){
 if(i4<0.08162745833396912){
  if(i65<0.04082712158560753){
   if(i66<-0.0025421977043151855){
    if(i7<-4.911744326818734e-06){
     s0+=41.0;
     s1+=19.0;
    } else {
     s0+=24.0;
     s1+=91.0;
    }
   } else {
    if(i35<1.0065834522247314){
     s0+=53457.0;
     s1+=410.0;
    } else {
     s0+=778.0;
     s1+=144.0;
    }
   }
  } else {
   if(i1<-1.5795230865478516e-05){
    if(i40<0.0023917800281196833){
     s0+=3786.0;
     s1+=439.0;
    } else {
     s0+=5855.0;
     s1+=71.0;
    }
   } else {
    if(i22<0.9904063940048218){
     s0+=684.0;
     s1+=444.0;
    } else {
     s0+=3180.0;
     s1+=531.0;
    }
   }
  }
 } else {
  if(i11<0.9985578060150146){
   if(i12<0.006271583028137684){
    if(i11<0.9980716705322266){
     s0+=427.0;
     s1+=4.0;
    } else {
     s0+=31.0;
     s1+=12.0;
    }
   } else {
    if(i0<0.09928581118583679){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i51<0.004743456840515137){
    if(i58<0.03955313563346863){
     s0+=63.0;
     s1+=2523.0;
    } else {
     s0+=165.0;
     s1+=281.0;
    }
   } else {
    if(i0<0.17161545157432556){
     s0+=496.0;
     s1+=100.0;
    } else {
     s0+=138.0;
     s1+=1070.0;
    }
   }
  }
 }
} else {
 if(i19<7.349252700805664e-05){
  if(i6<0.09823289513587952){
   if(i33<0.03636086359620094){
    if(i29<1.0009582042694092){
     s0+=1497.0;
     s1+=277.0;
    } else {
     s0+=112.0;
     s1+=310.0;
    }
   } else {
    if(i5<0.9967356324195862){
     s0+=19.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=334.0;
    }
   }
  } else {
   if(i21<0.026319563388824463){
    if(i58<0.06294381618499756){
     s0+=56.0;
     s1+=199.0;
    } else {
     s0+=41.0;
     s1+=9.0;
    }
   } else {
    if(i4<0.12395617365837097){
     s0+=23.0;
     s1+=98.0;
    } else {
     s0+=13.0;
     s1+=1223.0;
    }
   }
  }
 } else {
  if(i43<-1.4146457942842972e-05){
   s1+=8601.0;
  } else {
   if(i57<0.0015596020966768265){
    if(i36<0.0032262341119349003){
     s0+=108.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=39.0;
   }
  }
 }
}
if(i1<3.7610530853271484e-05){
 if(i7<-6.49786670692265e-05){
  if(i13<1.0452001094818115){
   if(i45<1.2454195022583008){
    if(i51<-0.00033152103424072266){
     s1+=7.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i33<0.05968647450208664){
     s0+=732.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i9<1.0764936208724976){
    if(i15<-0.0007769167423248291){
     s0+=257.0;
     s1+=89.0;
    } else {
     s0+=10.0;
     s1+=218.0;
    }
   } else {
    if(i61<1.0004686117172241){
     s0+=14.0;
     s1+=825.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i4<0.07660335302352905){
   if(i0<0.0694366991519928){
    if(i77<0.0002961240825243294){
     s0+=57328.0;
     s1+=715.0;
    } else {
     s0+=8864.0;
     s1+=698.0;
    }
   } else {
    if(i24<1.045206069946289){
     s0+=812.0;
     s1+=49.0;
    } else {
     s0+=596.0;
     s1+=481.0;
    }
   }
  } else {
   if(i72<-0.022543031722307205){
    if(i59<0.0028587323613464832){
     s0+=919.0;
     s1+=233.0;
    } else {
     s0+=46.0;
     s1+=107.0;
    }
   } else {
    if(i7<-1.4510976143355947e-05){
     s0+=291.0;
     s1+=1713.0;
    } else {
     s0+=506.0;
     s1+=263.0;
    }
   }
  }
 }
} else {
 if(i11<0.9988232851028442){
  s0+=280.0;
 } else {
  if(i26<0.0001797717995941639){
   if(i31<0.00016187955043278635){
    if(i67<1.0506619219086133e-06){
     s0+=57.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i31<0.0001641773123992607){
     s1+=5.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i2<0.0666925311088562){
    if(i40<0.002529025310650468){
     s0+=1.0;
     s1+=250.0;
    } else {
     s0+=202.0;
     s1+=283.0;
    }
   } else {
    if(i2<0.13697117567062378){
     s0+=154.0;
     s1+=1800.0;
    } else {
     s0+=22.0;
     s1+=9389.0;
    }
   }
  }
 }
}
if(i0<0.08314955234527588){
 if(i39<0.02569625899195671){
  if(i10<1.004897952079773){
   if(i49<-0.010862380266189575){
    if(i50<-3.4689903259277344e-05){
     s0+=177.0;
     s1+=13.0;
    } else {
     s0+=127.0;
     s1+=195.0;
    }
   } else {
    if(i21<0.02211272157728672){
     s0+=55695.0;
     s1+=389.0;
    } else {
     s0+=879.0;
     s1+=144.0;
    }
   }
  } else {
   if(i43<-1.4163253581500612e-05){
    if(i58<0.04069647192955017){
     s0+=3.0;
     s1+=335.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i38<1.1657817363739014){
     s0+=4.0;
     s1+=69.0;
    } else {
     s0+=338.0;
    }
   }
  }
 } else {
  if(i54<-0.0015794634819030762){
   if(i16<1.000553846359253){
    if(i55<3.035903318959754e-05){
     s0+=744.0;
     s1+=45.0;
    } else {
     s0+=932.0;
     s1+=347.0;
    }
   } else {
    if(i13<1.0331623554229736){
     s0+=73.0;
    } else {
     s0+=199.0;
     s1+=690.0;
    }
   }
  } else {
   if(i42<0.0021347079891711473){
    if(i33<0.012149176560342312){
     s0+=2660.0;
     s1+=435.0;
    } else {
     s0+=287.0;
     s1+=468.0;
    }
   } else {
    if(i14<0.0009566545486450195){
     s0+=6996.0;
     s1+=45.0;
    } else {
     s0+=130.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i17<-1.6063451766967773e-05){
  if(i38<1.476589322090149){
   if(i11<0.9980377554893494){
    s0+=353.0;
   } else {
    if(i47<0.06077086925506592){
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   }
  } else {
   if(i60<0.0006515444256365299){
    s0+=16.0;
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i29<1.0021175146102905){
   if(i58<0.025299370288848877){
    if(i71<0.00013181022950448096){
     s0+=96.0;
     s1+=162.0;
    } else {
     s0+=149.0;
     s1+=2514.0;
    }
   } else {
    if(i21<0.02884378284215927){
     s0+=757.0;
     s1+=372.0;
    } else {
     s0+=177.0;
     s1+=1071.0;
    }
   }
  } else {
   if(i48<0.00021051902149338275){
    s0+=2.0;
   } else {
    if(i71<0.0002293480356456712){
     s0+=46.0;
     s1+=604.0;
    } else {
     s0+=56.0;
     s1+=9384.0;
    }
   }
  }
 }
}
if(i18<1.0066354274749756){
 if(i24<1.057713270187378){
  if(i13<1.042891263961792){
   if(i52<0.009473234415054321){
    if(i62<-0.0022396743297576904){
     s0+=1616.0;
     s1+=194.0;
    } else {
     s0+=54160.0;
     s1+=180.0;
    }
   } else {
    if(i50<-5.8203935623168945e-05){
     s0+=226.0;
     s1+=4.0;
    } else {
     s0+=120.0;
     s1+=55.0;
    }
   }
  } else {
   if(i48<0.0004002971400041133){
    if(i67<-3.1000026865513064e-06){
     s1+=5.0;
    } else {
     s0+=1725.0;
     s1+=25.0;
    }
   } else {
    if(i32<1.1013743877410889){
     s0+=321.0;
     s1+=245.0;
    } else {
     s0+=598.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i11<1.0016279220581055){
   if(i46<0.05676570534706116){
    if(i2<0.07550472021102905){
     s0+=8110.0;
     s1+=929.0;
    } else {
     s0+=146.0;
     s1+=817.0;
    }
   } else {
    if(i41<0.005353827029466629){
     s0+=1017.0;
     s1+=482.0;
    } else {
     s0+=154.0;
     s1+=752.0;
    }
   }
  } else {
   if(i2<0.10912227630615234){
    if(i5<1.0020873546600342){
     s0+=617.0;
     s1+=162.0;
    } else {
     s0+=131.0;
     s1+=591.0;
    }
   } else {
    if(i2<0.1306760609149933){
     s0+=42.0;
     s1+=182.0;
    } else {
     s0+=14.0;
     s1+=1258.0;
    }
   }
  }
 }
} else {
 if(i1<3.4332275390625e-05){
  if(i7<-3.694929910125211e-05){
   if(i6<0.04844847321510315){
    if(i4<0.05388134717941284){
     s0+=123.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=81.0;
    }
   } else {
    if(i3<-0.0002624690532684326){
     s0+=36.0;
     s1+=84.0;
    } else {
     s0+=55.0;
     s1+=1031.0;
    }
   }
  } else {
   if(i71<0.0006749723106622696){
    if(i2<0.11884701251983643){
     s0+=1491.0;
     s1+=88.0;
    } else {
     s0+=241.0;
     s1+=189.0;
    }
   } else {
    s1+=106.0;
   }
  }
 } else {
  if(i2<0.05764281749725342){
   if(i34<1.1222009658813477){
    if(i45<1.0624027252197266){
     s0+=2.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i43<-2.9834365705028176e-05){
     s1+=20.0;
    } else {
     s0+=119.0;
    }
   }
  } else {
   if(i15<-1.71661376953125e-05){
    if(i50<0.0002262592315673828){
     s0+=39.0;
     s1+=39.0;
    } else {
     s0+=10.0;
     s1+=211.0;
    }
   } else {
    if(i14<0.0005069971084594727){
     s0+=62.0;
     s1+=1325.0;
    } else {
     s0+=2.0;
     s1+=7861.0;
    }
   }
  }
 }
}
if(i2<0.08314889669418335){
 if(i15<0.001141965389251709){
  if(i51<-0.001922011375427246){
   if(i37<1.0010523796081543){
    if(i42<0.0015613820869475603){
     s0+=792.0;
     s1+=442.0;
    } else {
     s0+=2305.0;
     s1+=232.0;
    }
   } else {
    if(i0<0.010505348443984985){
     s0+=130.0;
     s1+=29.0;
    } else {
     s0+=37.0;
     s1+=288.0;
    }
   }
  } else {
   if(i23<1.0064899921417236){
    if(i48<0.0002895635552704334){
     s0+=46081.0;
     s1+=29.0;
    } else {
     s0+=17069.0;
     s1+=1022.0;
    }
   } else {
    if(i38<1.1037919521331787){
     s0+=694.0;
     s1+=430.0;
    } else {
     s0+=1894.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i73<-4.5565284381154925e-06){
   if(i77<7.326089689740911e-05){
    if(i33<0.003989737015217543){
     s0+=4.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i7<-3.947014920413494e-05){
     s1+=387.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i36<0.001413914025761187){
    s1+=45.0;
   } else {
    s0+=122.0;
   }
  }
 }
} else {
 if(i10<1.0065340995788574){
  if(i12<0.004805178847163916){
   if(i50<-0.00013875961303710938){
    if(i5<0.99703049659729){
     s0+=598.0;
    } else {
     s0+=27.0;
     s1+=7.0;
    }
   } else {
    if(i44<0.049031853675842285){
     s0+=102.0;
     s1+=1001.0;
    } else {
     s0+=906.0;
     s1+=350.0;
    }
   }
  } else {
   if(i11<0.9980086088180542){
    s0+=78.0;
   } else {
    if(i15<-0.002272486686706543){
     s0+=144.0;
     s1+=444.0;
    } else {
     s0+=80.0;
     s1+=2998.0;
    }
   }
  }
 } else {
  if(i57<0.0003018520656041801){
   if(i15<0.0008380413055419922){
    s0+=60.0;
   } else {
    s1+=180.0;
   }
  } else {
   if(i12<0.0019333071541041136){
    if(i30<1.032515048980713){
     s0+=4.0;
     s1+=88.0;
    } else {
     s0+=24.0;
     s1+=26.0;
    }
   } else {
    if(i71<0.0002601690939627588){
     s0+=20.0;
     s1+=508.0;
    } else {
     s0+=4.0;
     s1+=8476.0;
    }
   }
  }
 }
}
if(i6<0.072673499584198){
 if(i1<3.904104232788086e-05){
  if(i9<1.0401114225387573){
   if(i59<0.000727715902030468){
    if(i4<0.08314543962478638){
     s0+=56330.0;
     s1+=346.0;
    } else {
     s0+=22.0;
     s1+=101.0;
    }
   } else {
    if(i35<0.9762674570083618){
     s0+=4003.0;
     s1+=73.0;
    } else {
     s0+=2515.0;
     s1+=751.0;
    }
   }
  } else {
   if(i2<0.08375966548919678){
    if(i7<-2.370923539274372e-05){
     s0+=1179.0;
     s1+=562.0;
    } else {
     s0+=4550.0;
     s1+=324.0;
    }
   } else {
    if(i11<0.9976569414138794){
     s0+=49.0;
    } else {
     s0+=57.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i36<0.00046146224485710263){
   s0+=239.0;
  } else {
   if(i5<1.0042097568511963){
    if(i41<0.0028639037627726793){
     s0+=21.0;
     s1+=323.0;
    } else {
     s0+=213.0;
     s1+=169.0;
    }
   } else {
    if(i61<1.0007829666137695){
     s0+=16.0;
     s1+=1498.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i43<-8.166902262018993e-06){
  if(i1<3.978610038757324e-05){
   if(i61<0.9998854398727417){
    if(i81<-9.59634780883789e-06){
     s0+=4.0;
    } else {
     s0+=60.0;
     s1+=954.0;
    }
   } else {
    if(i51<0.004139065742492676){
     s0+=82.0;
     s1+=555.0;
    } else {
     s0+=445.0;
     s1+=434.0;
    }
   }
  } else {
   if(i4<0.1316651701927185){
    if(i15<2.276897430419922e-05){
     s0+=94.0;
     s1+=223.0;
    } else {
     s0+=23.0;
     s1+=588.0;
    }
   } else {
    if(i37<0.9963204860687256){
     s0+=4.0;
    } else {
     s0+=27.0;
     s1+=8618.0;
    }
   }
  }
 } else {
  if(i2<0.11255711317062378){
   if(i44<0.039920926094055176){
    if(i45<1.255998969078064){
     s0+=22.0;
     s1+=110.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   } else {
    if(i8<0.9959090948104858){
     s0+=124.0;
     s1+=40.0;
    } else {
     s0+=486.0;
     s1+=16.0;
    }
   }
  } else {
   if(i47<0.08560559153556824){
    if(i10<0.9825594425201416){
     s0+=12.0;
    } else {
     s0+=16.0;
     s1+=581.0;
    }
   } else {
    if(i8<1.0094637870788574){
     s0+=450.0;
     s1+=57.0;
    } else {
     s0+=76.0;
     s1+=162.0;
    }
   }
  }
 }
}
if(i5<1.0024573802947998){
 if(i20<1.0398095846176147){
  if(i34<1.0598037242889404){
   if(i80<-0.0010867416858673096){
    if(i34<1.0547096729278564){
     s0+=982.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=32.0;
    }
   } else {
    if(i65<0.0013085165992379189){
     s0+=133.0;
     s1+=2.0;
    } else {
     s0+=42541.0;
     s1+=7.0;
    }
   }
  } else {
   if(i4<0.07753211259841919){
    if(i45<1.103413462638855){
     s0+=3591.0;
     s1+=1211.0;
    } else {
     s0+=19006.0;
     s1+=437.0;
    }
   } else {
    if(i49<0.012471526861190796){
     s0+=68.0;
     s1+=1009.0;
    } else {
     s0+=76.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i12<0.004935057833790779){
   if(i15<0.0007718503475189209){
    if(i21<0.02850063517689705){
     s0+=3208.0;
     s1+=407.0;
    } else {
     s0+=592.0;
     s1+=593.0;
    }
   } else {
    if(i2<0.0823160707950592){
     s0+=35.0;
     s1+=19.0;
    } else {
     s0+=11.0;
     s1+=181.0;
    }
   }
  } else {
   if(i61<1.0003567934036255){
    if(i0<0.08650678396224976){
     s0+=222.0;
     s1+=129.0;
    } else {
     s0+=60.0;
     s1+=1728.0;
    }
   } else {
    if(i4<0.12232744693756104){
     s0+=238.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i7<-4.3997002649120986e-05){
  if(i3<0.0005462765693664551){
   if(i62<-0.0015628933906555176){
    if(i26<0.0004271357611287385){
     s0+=25.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i11<1.003075361251831){
     s0+=1.0;
     s1+=75.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  } else {
   if(i15<4.7147274017333984e-05){
    if(i24<1.12269127368927){
     s0+=113.0;
     s1+=188.0;
    } else {
     s0+=35.0;
     s1+=809.0;
    }
   } else {
    if(i66<-0.012432843446731567){
     s0+=2.0;
     s1+=240.0;
    } else {
     s0+=1.0;
     s1+=9691.0;
    }
   }
  }
 } else {
  if(i60<1.0477344403625466e-05){
   if(i57<0.0013365908525884151){
    s0+=145.0;
   } else {
    s1+=33.0;
   }
  } else {
   if(i32<1.2392117977142334){
    if(i3<0.00047898292541503906){
     s0+=7.0;
    } else {
     s1+=167.0;
    }
   } else {
    if(i49<-0.00784274935722351){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
}
if(i1<3.832578659057617e-05){
 if(i65<0.0494462214410305){
  if(i4<0.08544784784317017){
   if(i18<1.0060348510742188){
    if(i59<0.0008562732255086303){
     s0+=56161.0;
     s1+=385.0;
    } else {
     s0+=692.0;
     s1+=259.0;
    }
   } else {
    if(i40<0.001159226056188345){
     s0+=139.0;
     s1+=247.0;
    } else {
     s0+=613.0;
     s1+=29.0;
    }
   }
  } else {
   if(i7<-1.0395656317996327e-05){
    if(i73<-7.3910682658606675e-06){
     s0+=27.0;
     s1+=8.0;
    } else {
     s0+=38.0;
     s1+=520.0;
    }
   } else {
    if(i21<0.04756180942058563){
     s0+=97.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i7<-4.366406210465357e-05){
   if(i4<0.0779397189617157){
    if(i52<0.009535470977425575){
     s0+=1833.0;
     s1+=95.0;
    } else {
     s0+=228.0;
     s1+=180.0;
    }
   } else {
    if(i37<1.0020809173583984){
     s0+=95.0;
     s1+=1596.0;
    } else {
     s0+=36.0;
     s1+=19.0;
    }
   }
  } else {
   if(i45<1.253311276435852){
    if(i21<0.02349396049976349){
     s0+=5236.0;
     s1+=907.0;
    } else {
     s0+=930.0;
     s1+=1152.0;
    }
   } else {
    if(i0<0.12066435813903809){
     s0+=4104.0;
     s1+=33.0;
    } else {
     s0+=293.0;
     s1+=149.0;
    }
   }
  }
 }
} else {
 if(i37<0.9982789754867554){
  s0+=280.0;
 } else {
  if(i19<0.00021511316299438477){
   if(i56<-0.0005584486061707139){
    if(i57<0.0018508217763155699){
     s0+=7.0;
     s1+=137.0;
    } else {
     s1+=1257.0;
    }
   } else {
    if(i52<0.010164142586290836){
     s0+=387.0;
     s1+=1245.0;
    } else {
     s0+=35.0;
     s1+=532.0;
    }
   }
  } else {
   if(i15<0.0015413165092468262){
    if(i57<0.00018581526819616556){
     s0+=2.0;
    } else {
     s1+=157.0;
    }
   } else {
    s1+=8103.0;
   }
  }
 }
}
if(i2<0.08502736687660217){
 if(i13<1.0451608896255493){
  if(i5<1.0025051832199097){
   if(i66<-0.0012702345848083496){
    if(i42<0.001696474850177765){
     s0+=1510.0;
     s1+=447.0;
    } else {
     s0+=2708.0;
     s1+=38.0;
    }
   } else {
    if(i63<0.020014911890029907){
     s0+=49565.0;
     s1+=72.0;
    } else {
     s0+=8106.0;
     s1+=246.0;
    }
   }
  } else {
   if(i12<0.0020392672158777714){
    if(i73<-5.592985871771816e-06){
     s1+=4.0;
    } else {
     s0+=69.0;
    }
   } else {
    s1+=126.0;
   }
  }
 } else {
  if(i34<1.1034480333328247){
   if(i5<1.0010942220687866){
    if(i39<0.03397573530673981){
     s0+=1981.0;
     s1+=247.0;
    } else {
     s0+=292.0;
     s1+=396.0;
    }
   } else {
    if(i43<-9.38378525461303e-06){
     s0+=32.0;
     s1+=683.0;
    } else {
     s0+=86.0;
     s1+=43.0;
    }
   }
  } else {
   if(i17<3.415346145629883e-05){
    if(i66<-0.0066950321197509766){
     s0+=614.0;
     s1+=223.0;
    } else {
     s0+=4195.0;
     s1+=211.0;
    }
   } else {
    if(i1<6.794929504394531e-05){
     s0+=146.0;
     s1+=59.0;
    } else {
     s0+=59.0;
     s1+=294.0;
    }
   }
  }
 }
} else {
 if(i0<0.10756689310073853){
  if(i46<0.06680354475975037){
   if(i11<0.9986392259597778){
    if(i73<-5.216610588831827e-06){
     s1+=2.0;
    } else {
     s0+=270.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.05671444535255432){
     s0+=52.0;
     s1+=1225.0;
    } else {
     s0+=42.0;
     s1+=41.0;
    }
   }
  } else {
   if(i44<0.03954926133155823){
    if(i57<0.0012285301927477121){
     s0+=19.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=109.0;
    }
   } else {
    if(i47<0.05676001310348511){
     s0+=16.0;
     s1+=40.0;
    } else {
     s0+=734.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i11<0.9978978037834167){
   if(i48<0.0025722908321768045){
    if(i19<-0.000357210636138916){
     s1+=2.0;
    } else {
     s0+=65.0;
    }
   } else {
    s0+=250.0;
   }
  } else {
   if(i71<0.00022251915652304888){
    if(i44<0.07098555564880371){
     s0+=38.0;
     s1+=661.0;
    } else {
     s0+=276.0;
     s1+=110.0;
    }
   } else {
    if(i56<-0.00026268669171258807){
     s0+=80.0;
     s1+=10070.0;
    } else {
     s0+=138.0;
     s1+=1469.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i22<1.0100281238555908){
  if(i4<0.08224725723266602){
   if(i59<0.000737339782062918){
    if(i21<0.021626200526952744){
     s0+=56960.0;
     s1+=346.0;
    } else {
     s0+=2926.0;
     s1+=420.0;
    }
   } else {
    if(i42<0.001730882446281612){
     s0+=1637.0;
     s1+=795.0;
    } else {
     s0+=6186.0;
     s1+=287.0;
    }
   }
  } else {
   if(i50<-0.00014218688011169434){
    if(i11<0.9987436532974243){
     s0+=314.0;
     s1+=4.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i53<0.062267154455184937){
     s0+=114.0;
     s1+=1173.0;
    } else {
     s0+=301.0;
     s1+=308.0;
    }
   }
  }
 } else {
  if(i8<1.0107730627059937){
   if(i63<0.2827742397785187){
    if(i41<0.0011360093485563993){
     s0+=255.0;
     s1+=336.0;
    } else {
     s0+=1263.0;
     s1+=323.0;
    }
   } else {
    if(i47<0.40399691462516785){
     s0+=6.0;
     s1+=135.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  } else {
   if(i61<0.9998359084129333){
    if(i17<-9.08970832824707e-06){
     s0+=49.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=761.0;
    }
   } else {
    if(i74<8.020183304324746e-05){
     s0+=439.0;
     s1+=91.0;
    } else {
     s0+=75.0;
     s1+=390.0;
    }
   }
  }
 }
} else {
 if(i7<-4.401454498292878e-05){
  if(i19<6.258487701416016e-06){
   if(i24<1.1255970001220703){
    if(i20<1.0831290483474731){
     s0+=102.0;
     s1+=269.0;
    } else {
     s0+=76.0;
     s1+=3.0;
    }
   } else {
    if(i61<1.0007672309875488){
     s0+=34.0;
     s1+=971.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   }
  } else {
   if(i4<0.014956057071685791){
    if(i38<1.5942578315734863){
     s1+=40.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i15<0.0002606511116027832){
     s0+=6.0;
     s1+=233.0;
    } else {
     s1+=9941.0;
    }
   }
  }
 } else {
  if(i0<0.06510257720947266){
   if(i50<0.0002468228340148926){
    if(i33<0.009908614680171013){
     s0+=268.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<0.006246971897780895){
     s0+=34.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   }
  } else {
   if(i34<1.2527469396591187){
    if(i29<1.006779670715332){
     s0+=17.0;
     s1+=217.0;
    } else {
     s0+=17.0;
     s1+=14.0;
    }
   } else {
    if(i41<0.008900878019630909){
     s0+=24.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i18<1.007638931274414){
 if(i2<0.08502736687660217){
  if(i42<0.00037781623541377485){
   if(i24<1.0596027374267578){
    if(i37<1.000339388847351){
     s0+=38152.0;
     s1+=6.0;
    } else {
     s0+=2267.0;
     s1+=36.0;
    }
   } else {
    if(i7<-2.182365278713405e-05){
     s1+=38.0;
    } else {
     s0+=622.0;
    }
   }
  } else {
   if(i19<-0.00019216537475585938){
    if(i12<0.02095842733979225){
     s0+=15866.0;
     s1+=303.0;
    } else {
     s0+=4.0;
     s1+=37.0;
    }
   } else {
    if(i21<0.021949321031570435){
     s0+=10553.0;
     s1+=915.0;
    } else {
     s0+=567.0;
     s1+=975.0;
    }
   }
  }
 } else {
  if(i36<0.0005475290818139911){
   if(i73<-1.7401073364453623e-06){
    if(i42<0.00113885966129601){
     s0+=18.0;
     s1+=94.0;
    } else {
     s0+=42.0;
     s1+=1.0;
    }
   } else {
    if(i50<-1.1175870895385742e-05){
     s0+=400.0;
    } else {
     s0+=91.0;
     s1+=6.0;
    }
   }
  } else {
   if(i17<-1.4901161193847656e-05){
    if(i43<-1.280010928894626e-05){
     s0+=15.0;
     s1+=9.0;
    } else {
     s0+=262.0;
     s1+=8.0;
    }
   } else {
    if(i60<0.0008448042790405452){
     s0+=562.0;
     s1+=1587.0;
    } else {
     s0+=68.0;
     s1+=2060.0;
    }
   }
  }
 }
} else {
 if(i21<0.027812562882900238){
  if(i2<0.0695161521434784){
   if(i16<1.0016261339187622){
    if(i48<0.00028586271218955517){
     s0+=8.0;
     s1+=31.0;
    } else {
     s0+=833.0;
     s1+=59.0;
    }
   } else {
    if(i45<1.140648365020752){
     s1+=167.0;
    } else {
     s0+=186.0;
     s1+=21.0;
    }
   }
  } else {
   if(i3<0.0005114078521728516){
    if(i64<-0.005184600129723549){
     s0+=348.0;
     s1+=40.0;
    } else {
     s0+=103.0;
     s1+=705.0;
    }
   } else {
    if(i3<0.0008720159530639648){
     s0+=55.0;
     s1+=337.0;
    } else {
     s0+=13.0;
     s1+=2202.0;
    }
   }
  }
 } else {
  if(i14<-0.0004973709583282471){
   s0+=53.0;
  } else {
   if(i43<-2.5751080556801753e-06){
    if(i9<1.0269131660461426){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=68.0;
     s1+=7298.0;
    }
   } else {
    if(i12<0.0014917808584868908){
     s0+=61.0;
    } else {
     s0+=16.0;
     s1+=77.0;
    }
   }
  }
 }
}
if(i5<1.002378225326538){
 if(i13<1.0451608896255493){
  if(i13<1.0398929119110107){
   if(i65<0.04236290976405144){
    if(i51<-0.0018005073070526123){
     s0+=169.0;
     s1+=30.0;
    } else {
     s0+=50308.0;
     s1+=180.0;
    }
   } else {
    if(i34<1.1463468074798584){
     s0+=3478.0;
     s1+=439.0;
    } else {
     s0+=4657.0;
     s1+=47.0;
    }
   }
  } else {
   if(i2<0.08974194526672363){
    if(i8<0.9903188943862915){
     s0+=158.0;
     s1+=115.0;
    } else {
     s0+=3223.0;
     s1+=185.0;
    }
   } else {
    if(i7<-1.3247172319097444e-06){
     s0+=19.0;
     s1+=100.0;
    } else {
     s0+=21.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i33<0.04031705483794212){
   if(i21<0.021959912031888962){
    if(i61<0.9994385242462158){
     s0+=855.0;
    } else {
     s0+=5676.0;
     s1+=1438.0;
    }
   } else {
    if(i70<0.9975993633270264){
     s0+=447.0;
     s1+=51.0;
    } else {
     s0+=1393.0;
     s1+=2144.0;
    }
   }
  } else {
   if(i0<0.08551019430160522){
    if(i5<0.9947901964187622){
     s0+=88.0;
     s1+=2.0;
    } else {
     s0+=26.0;
     s1+=91.0;
    }
   } else {
    if(i57<0.0006455356488004327){
     s0+=16.0;
    } else {
     s0+=6.0;
     s1+=1128.0;
    }
   }
  }
 }
} else {
 if(i7<-4.32968299719505e-05){
  if(i15<4.661083221435547e-05){
   if(i75<0.091608926653862){
    if(i70<1.001222848892212){
     s0+=41.0;
     s1+=18.0;
    } else {
     s0+=122.0;
     s1+=381.0;
    }
   } else {
    if(i15<-0.003534674644470215){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=628.0;
    }
   }
  } else {
   if(i0<0.0321488082408905){
    if(i16<1.001051664352417){
     s0+=10.0;
    } else {
     s0+=6.0;
     s1+=45.0;
    }
   } else {
    if(i13<1.028781533241272){
     s0+=6.0;
    } else {
     s0+=13.0;
     s1+=9991.0;
    }
   }
  }
 } else {
  if(i33<0.009007390588521957){
   if(i57<0.0010946791153401136){
    s0+=202.0;
   } else {
    if(i21<0.035053156316280365){
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.0025434838607907295){
    s0+=39.0;
   } else {
    s1+=232.0;
   }
  }
 }
}
if(i6<0.0697939395904541){
 if(i29<1.0044995546340942){
  if(i26<0.0002811383455991745){
   if(i9<1.0437653064727783){
    if(i16<1.0034291744232178){
     s0+=51240.0;
     s1+=195.0;
    } else {
     s0+=63.0;
     s1+=52.0;
    }
   } else {
    if(i30<1.007784128189087){
     s0+=575.0;
     s1+=11.0;
    } else {
     s0+=20.0;
     s1+=62.0;
    }
   }
  } else {
   if(i5<0.9979168176651001){
    if(i32<1.2209420204162598){
     s0+=2652.0;
     s1+=308.0;
    } else {
     s0+=8193.0;
     s1+=106.0;
    }
   } else {
    if(i4<0.07489678263664246){
     s0+=5674.0;
     s1+=1526.0;
    } else {
     s0+=23.0;
     s1+=679.0;
    }
   }
  }
 } else {
  if(i12<0.0016299522249028087){
   if(i0<0.07877099514007568){
    if(i32<1.1386182308197021){
     s1+=7.0;
    } else {
     s0+=323.0;
     s1+=1.0;
    }
   } else {
    s1+=36.0;
   }
  } else {
   if(i14<-0.00015500187873840332){
    if(i12<0.00200775102712214){
     s1+=3.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i7<-3.996002487838268e-05){
     s0+=15.0;
     s1+=1477.0;
    } else {
     s0+=59.0;
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i19<8.657574653625488e-05){
  if(i7<-1.871796303021256e-05){
   if(i0<0.1099008321762085){
    if(i59<0.002143014222383499){
     s0+=479.0;
     s1+=385.0;
    } else {
     s0+=12.0;
     s1+=195.0;
    }
   } else {
    if(i54<0.0072640180587768555){
     s0+=29.0;
     s1+=2052.0;
    } else {
     s0+=156.0;
     s1+=853.0;
    }
   }
  } else {
   if(i14<-0.00040519237518310547){
    s0+=485.0;
   } else {
    if(i55<3.1059298635227606e-05){
     s0+=664.0;
     s1+=68.0;
    } else {
     s0+=314.0;
     s1+=409.0;
    }
   }
  }
 } else {
  if(i12<0.0022363117896020412){
   if(i79<-0.0015467962948605418){
    if(i55<-5.079119000583887e-05){
     s1+=8.0;
    } else {
     s0+=67.0;
     s1+=1.0;
    }
   } else {
    if(i72<-0.03877940773963928){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=162.0;
    }
   }
  } else {
   if(i11<0.9986430406570435){
    s0+=27.0;
   } else {
    if(i56<-9.576463344274089e-05){
     s0+=3.0;
     s1+=8064.0;
    } else {
     s0+=6.0;
     s1+=368.0;
    }
   }
  }
 }
}
if(i2<0.08375310897827148){
 if(i16<1.0027662515640259){
  if(i66<-0.0013702213764190674){
   if(i34<1.146665096282959){
    if(i36<0.0004499244678299874){
     s0+=1177.0;
     s1+=92.0;
    } else {
     s0+=607.0;
     s1+=670.0;
    }
   } else {
    if(i33<0.03963771089911461){
     s0+=3173.0;
     s1+=120.0;
    } else {
     s0+=38.0;
     s1+=77.0;
    }
   }
  } else {
   if(i0<0.0695144534111023){
    if(i9<1.0406912565231323){
     s0+=57377.0;
     s1+=301.0;
    } else {
     s0+=4081.0;
     s1+=433.0;
    }
   } else {
    if(i44<0.027423113584518433){
     s0+=37.0;
     s1+=255.0;
    } else {
     s0+=1467.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i54<9.876489639282227e-05){
   if(i17<2.2232532501220703e-05){
    if(i0<0.06456184387207031){
     s0+=263.0;
     s1+=105.0;
    } else {
     s0+=5.0;
     s1+=71.0;
    }
   } else {
    if(i38<1.613681674003601){
     s0+=54.0;
     s1+=654.0;
    } else {
     s0+=31.0;
     s1+=23.0;
    }
   }
  } else {
   if(i3<0.0004615187644958496){
    if(i38<1.2011767625808716){
     s0+=52.0;
     s1+=7.0;
    } else {
     s0+=723.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.133939266204834){
     s0+=4.0;
     s1+=77.0;
    } else {
     s0+=106.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i37<0.9990390539169312){
  if(i40<0.020665578544139862){
   if(i5<0.9982340335845947){
    if(i2<0.0980672836303711){
     s0+=132.0;
     s1+=5.0;
    } else {
     s0+=532.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   s1+=19.0;
  }
 } else {
  if(i16<1.0029711723327637){
   if(i21<0.02790684625506401){
    if(i7<-1.8380334950052202e-05){
     s0+=356.0;
     s1+=1563.0;
    } else {
     s0+=607.0;
     s1+=183.0;
    }
   } else {
    if(i72<-0.019800283014774323){
     s0+=206.0;
     s1+=1130.0;
    } else {
     s0+=41.0;
     s1+=1694.0;
    }
   }
  } else {
   if(i0<0.12586697936058044){
    if(i47<0.060484468936920166){
     s0+=20.0;
     s1+=953.0;
    } else {
     s0+=105.0;
     s1+=90.0;
    }
   } else {
    if(i11<1.0013513565063477){
     s0+=24.0;
     s1+=870.0;
    } else {
     s0+=1.0;
     s1+=7491.0;
    }
   }
  }
 }
}
if(i2<0.08502665162086487){
 if(i24<1.0486011505126953){
  if(i66<-0.001375645399093628){
   if(i6<0.04315587878227234){
    if(i24<1.0420318841934204){
     s0+=1259.0;
     s1+=35.0;
    } else {
     s0+=223.0;
     s1+=95.0;
    }
   } else {
    if(i5<0.9957104325294495){
     s0+=59.0;
    } else {
     s0+=50.0;
     s1+=75.0;
    }
   }
  } else {
   if(i23<1.0098820924758911){
    if(i25<1.013344168663025){
     s0+=54328.0;
     s1+=155.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i19<0.00022095441818237305){
   if(i16<1.0006396770477295){
    if(i21<0.02387290634214878){
     s0+=9299.0;
     s1+=572.0;
    } else {
     s0+=1711.0;
     s1+=545.0;
    }
   } else {
    if(i10<0.9852272868156433){
     s0+=1117.0;
     s1+=94.0;
    } else {
     s0+=1327.0;
     s1+=1133.0;
    }
   }
  } else {
   if(i71<0.00010414351709187031){
    if(i19<0.00027948617935180664){
     s0+=5.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i15<0.0001849532127380371){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=368.0;
    }
   }
  }
 }
} else {
 if(i81<-7.569789886474609e-06){
  if(i73<-2.138101763193845e-06){
   if(i36<0.0007929556304588914){
    s0+=3.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i61<0.999692440032959){
    s0+=332.0;
   } else {
    if(i20<1.099349021911621){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i14<-0.00038823485374450684){
   if(i14<-0.00044080615043640137){
    if(i43<-1.0808560546138324e-05){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=232.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.002192586660385132){
     s1+=7.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   }
  } else {
   if(i0<0.11905840039253235){
    if(i72<-0.01718580350279808){
     s0+=531.0;
     s1+=75.0;
    } else {
     s0+=298.0;
     s1+=2043.0;
    }
   } else {
    if(i14<0.00044602155685424805){
     s0+=356.0;
     s1+=2740.0;
    } else {
     s0+=52.0;
     s1+=9033.0;
    }
   }
  }
 }
}
if(i10<1.005549430847168){
 if(i2<0.0852321982383728){
  if(i59<0.0007178760715760291){
   if(i0<0.07530397176742554){
    if(i24<1.0485899448394775){
     s0+=52421.0;
     s1+=109.0;
    } else {
     s0+=7722.0;
     s1+=578.0;
    }
   } else {
    if(i44<0.0367569625377655){
     s0+=32.0;
     s1+=190.0;
    } else {
     s0+=452.0;
     s1+=26.0;
    }
   }
  } else {
   if(i11<1.001558780670166){
    if(i26<0.002356854733079672){
     s0+=2952.0;
     s1+=822.0;
    } else {
     s0+=4537.0;
     s1+=153.0;
    }
   } else {
    if(i3<0.0005246996879577637){
     s0+=331.0;
     s1+=90.0;
    } else {
     s0+=95.0;
     s1+=368.0;
    }
   }
  }
 } else {
  if(i14<-0.0004031956195831299){
   if(i69<1.0003416538238525){
    if(i23<0.9925879240036011){
     s0+=421.0;
    } else {
     s0+=176.0;
     s1+=2.0;
    }
   } else {
    if(i33<0.011413169093430042){
     s1+=5.0;
    } else {
     s0+=46.0;
     s1+=1.0;
    }
   }
  } else {
   if(i44<0.054121196269989014){
    if(i2<0.0918610692024231){
     s0+=99.0;
     s1+=221.0;
    } else {
     s0+=63.0;
     s1+=2735.0;
    }
   } else {
    if(i75<0.10326872766017914){
     s0+=856.0;
     s1+=555.0;
    } else {
     s0+=82.0;
     s1+=733.0;
    }
   }
  }
 }
} else {
 if(i57<0.0008548099431209266){
  if(i15<0.0014475584030151367){
   if(i42<0.0011942493729293346){
    if(i56<-0.00021840518456883729){
     s0+=14.0;
     s1+=134.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i55<2.9983228159835562e-05){
     s0+=734.0;
     s1+=20.0;
    } else {
     s0+=8.0;
     s1+=18.0;
    }
   }
  } else {
   if(i69<1.0001201629638672){
    if(i4<0.03175920248031616){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=714.0;
    }
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i5<0.998591423034668){
   if(i55<2.485892218828667e-05){
    s0+=30.0;
   } else {
    s1+=15.0;
   }
  } else {
   if(i4<0.05761241912841797){
    if(i73<-3.6326250665297266e-06){
     s0+=30.0;
     s1+=357.0;
    } else {
     s0+=32.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.08156424760818481){
     s0+=23.0;
     s1+=193.0;
    } else {
     s0+=29.0;
     s1+=8999.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i30<1.0072557926177979){
  if(i39<0.03146156668663025){
   if(i60<0.00028066642698831856){
    if(i24<1.0495158433914185){
     s0+=50034.0;
     s1+=48.0;
    } else {
     s0+=5263.0;
     s1+=261.0;
    }
   } else {
    if(i15<-0.0012391209602355957){
     s0+=2531.0;
     s1+=83.0;
    } else {
     s0+=955.0;
     s1+=426.0;
    }
   }
  } else {
   if(i0<0.0747845470905304){
    if(i41<0.00098606722895056){
     s0+=1452.0;
     s1+=634.0;
    } else {
     s0+=6905.0;
     s1+=302.0;
    }
   } else {
    if(i14<-0.0004054605960845947){
     s0+=222.0;
     s1+=13.0;
    } else {
     s0+=422.0;
     s1+=1540.0;
    }
   }
  }
 } else {
  if(i42<0.010168750770390034){
   if(i0<0.08227941393852234){
    if(i48<0.00044283142779022455){
     s0+=141.0;
     s1+=188.0;
    } else {
     s0+=1838.0;
     s1+=212.0;
    }
   } else {
    if(i7<-2.3541120754089206e-05){
     s0+=191.0;
     s1+=1152.0;
    } else {
     s0+=510.0;
     s1+=170.0;
    }
   }
  } else {
   if(i12<0.0021993934642523527){
    s0+=5.0;
   } else {
    if(i2<0.11813461780548096){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=430.0;
    }
   }
  }
 }
} else {
 if(i7<-4.353338590590283e-05){
  if(i0<0.06429591774940491){
   if(i34<1.1961640119552612){
    if(i62<0.0025268197059631348){
     s0+=5.0;
     s1+=345.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    if(i62<-0.015314191579818726){
     s0+=8.0;
     s1+=92.0;
    } else {
     s0+=104.0;
     s1+=65.0;
    }
   }
  } else {
   if(i54<0.002828836441040039){
    if(i69<1.00311279296875){
     s0+=5.0;
     s1+=7010.0;
    } else {
     s0+=17.0;
     s1+=109.0;
    }
   } else {
    if(i33<0.020767951384186745){
     s0+=104.0;
     s1+=404.0;
    } else {
     s0+=3.0;
     s1+=3415.0;
    }
   }
  }
 } else {
  if(i12<0.004265383817255497){
   if(i71<0.00027974401018582284){
    if(i61<0.9999443292617798){
     s1+=21.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i18<0.990218460559845){
     s1+=1.0;
    } else {
     s0+=346.0;
    }
   }
  } else {
   if(i16<1.0013022422790527){
    if(i59<2.6362817152403295e-05){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i15<-0.0018609166145324707){
     s0+=1.0;
     s1+=13.0;
    } else {
     s1+=229.0;
    }
   }
  }
 }
}
if(i8<1.0081671476364136){
 if(i39<0.037722863256931305){
  if(i5<1.0025041103363037){
   if(i21<0.02349947951734066){
    if(i51<-0.0021666884422302246){
     s0+=734.0;
     s1+=204.0;
    } else {
     s0+=59295.0;
     s1+=659.0;
    }
   } else {
    if(i11<0.9991255402565002){
     s0+=983.0;
     s1+=40.0;
    } else {
     s0+=405.0;
     s1+=433.0;
    }
   }
  } else {
   if(i73<-4.986385192751186e-06){
    if(i21<0.008152591064572334){
     s0+=15.0;
     s1+=40.0;
    } else {
     s0+=13.0;
     s1+=319.0;
    }
   } else {
    if(i10<1.0040745735168457){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=40.0;
    }
   }
  }
 } else {
  if(i3<1.4275312423706055e-05){
   if(i2<0.06927695870399475){
    if(i19<-0.00029009580612182617){
     s0+=4516.0;
     s1+=38.0;
    } else {
     s0+=2055.0;
     s1+=411.0;
    }
   } else {
    if(i7<-6.4293908508261666e-06){
     s0+=361.0;
     s1+=963.0;
    } else {
     s0+=554.0;
     s1+=138.0;
    }
   }
  } else {
   if(i75<0.125039204955101){
    if(i6<0.0442315936088562){
     s0+=405.0;
     s1+=268.0;
    } else {
     s0+=312.0;
     s1+=1246.0;
    }
   } else {
    s1+=1345.0;
   }
  }
 }
} else {
 if(i4<0.0822906494140625){
  if(i48<0.0011175005929544568){
   if(i42<0.0022444352507591248){
    if(i7<-2.8999907954130322e-05){
     s0+=9.0;
     s1+=788.0;
    } else {
     s0+=47.0;
     s1+=37.0;
    }
   } else {
    if(i4<0.06460535526275635){
     s0+=124.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  } else {
   if(i7<-5.537152901524678e-05){
    if(i69<1.0023324489593506){
     s0+=12.0;
     s1+=136.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   } else {
    if(i17<3.218650817871094e-05){
     s0+=719.0;
     s1+=12.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i57<0.0010820426978170872){
   if(i49<0.025860190391540527){
    if(i36<0.0005082933348603547){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=49.0;
     s1+=1301.0;
    }
   } else {
    if(i74<7.646797166671604e-05){
     s0+=189.0;
     s1+=14.0;
    } else {
     s0+=44.0;
     s1+=89.0;
    }
   }
  } else {
   if(i71<0.000524036237038672){
    if(i69<1.000852346420288){
     s0+=44.0;
     s1+=1766.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   } else {
    if(i61<0.998127818107605){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=6944.0;
    }
   }
  }
 }
}
if(i8<1.0083014965057373){
 if(i7<-6.901443703100085e-05){
  if(i35<0.9571051597595215){
   if(i12<0.02273501455783844){
    if(i46<0.09989330172538757){
     s0+=617.0;
     s1+=25.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i18<0.8802151083946228){
     s0+=1.0;
    } else {
     s1+=114.0;
    }
   }
  } else {
   if(i4<0.09588447213172913){
    if(i29<1.0015687942504883){
     s0+=435.0;
     s1+=140.0;
    } else {
     s0+=27.0;
     s1+=341.0;
    }
   } else {
    if(i36<0.00048794312169775367){
     s0+=8.0;
    } else {
     s0+=28.0;
     s1+=1788.0;
    }
   }
  }
 } else {
  if(i24<1.0495078563690186){
   if(i60<0.0002511043567210436){
    if(i39<0.08315424621105194){
     s0+=50302.0;
     s1+=99.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i41<0.0009481744491495192){
     s0+=1471.0;
     s1+=295.0;
    } else {
     s0+=4767.0;
     s1+=18.0;
    }
   }
  } else {
   if(i3<0.00021308660507202148){
    if(i1<-4.0471553802490234e-05){
     s0+=4234.0;
     s1+=225.0;
    } else {
     s0+=7423.0;
     s1+=2016.0;
    }
   } else {
    if(i0<0.05904197692871094){
     s0+=324.0;
     s1+=157.0;
    } else {
     s0+=226.0;
     s1+=750.0;
    }
   }
  }
 }
} else {
 if(i0<0.08275490999221802){
  if(i36<0.0007442417554557323){
   if(i61<0.9998291730880737){
    if(i36<0.0005211419193074107){
     s0+=81.0;
    } else {
     s0+=10.0;
     s1+=65.0;
    }
   } else {
    if(i24<1.1269298791885376){
     s0+=2.0;
     s1+=476.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i29<1.0088305473327637){
    if(i1<6.35385513305664e-05){
     s0+=798.0;
     s1+=62.0;
    } else {
     s0+=6.0;
     s1+=39.0;
    }
   } else {
    if(i12<0.0018843940924853086){
     s0+=17.0;
     s1+=6.0;
    } else {
     s1+=72.0;
    }
   }
  }
 } else {
  if(i11<0.9988435506820679){
   if(i29<0.9968924522399902){
    s0+=51.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i3<0.0005394220352172852){
    if(i44<0.04286280274391174){
     s0+=19.0;
     s1+=847.0;
    } else {
     s0+=291.0;
     s1+=574.0;
    }
   } else {
    if(i4<0.13330036401748657){
     s0+=55.0;
     s1+=963.0;
    } else {
     s0+=8.0;
     s1+=7929.0;
    }
   }
  }
 }
}
if(i7<-7.877488678786904e-05){
 if(i3<2.7567148208618164e-05){
  if(i13<1.091799259185791){
   if(i23<1.004812479019165){
    if(i0<0.08552956581115723){
     s0+=586.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=8.0;
    }
   } else {
    if(i62<0.006372272968292236){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i2<0.013558715581893921){
    s0+=17.0;
   } else {
    s1+=222.0;
   }
  }
 } else {
  if(i0<0.031921714544296265){
   if(i52<0.026391956955194473){
    if(i55<0.00014133361401036382){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=100.0;
    }
   } else {
    if(i14<0.00045478343963623047){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=71.0;
    }
   }
  } else {
   if(i67<3.417926927795634e-05){
    if(i15<3.5822391510009766e-05){
     s0+=104.0;
     s1+=1185.0;
    } else {
     s0+=2.0;
     s1+=9434.0;
    }
   } else {
    if(i61<1.0003981590270996){
     s1+=64.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i23<1.0074303150177002){
  if(i0<0.0852343738079071){
   if(i1<5.0008296966552734e-05){
    if(i31<0.00031481136102229357){
     s0+=56192.0;
     s1+=459.0;
    } else {
     s0+=10294.0;
     s1+=1253.0;
    }
   } else {
    if(i12<0.0023454134352505207){
     s0+=18.0;
    } else {
     s0+=17.0;
     s1+=214.0;
    }
   }
  } else {
   if(i37<0.9989598989486694){
    if(i26<0.0008007638389244676){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=247.0;
    }
   } else {
    if(i47<0.06298491358757019){
     s0+=43.0;
     s1+=1165.0;
    } else {
     s0+=474.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i8<1.0103263854980469){
   if(i12<0.003520818892866373){
    if(i34<1.083398699760437){
     s0+=276.0;
     s1+=273.0;
    } else {
     s0+=1734.0;
     s1+=61.0;
    }
   } else {
    if(i45<1.2381287813186646){
     s0+=51.0;
     s1+=583.0;
    } else {
     s0+=323.0;
     s1+=96.0;
    }
   }
  } else {
   if(i2<0.07786265015602112){
    if(i42<0.0011627490166574717){
     s0+=5.0;
     s1+=142.0;
    } else {
     s0+=410.0;
     s1+=16.0;
    }
   } else {
    if(i77<0.001277838135138154){
     s0+=118.0;
     s1+=1050.0;
    } else {
     s0+=146.0;
     s1+=172.0;
    }
   }
  }
 }
}
if(i0<0.08504641056060791){
 if(i3<0.0005664229393005371){
  if(i0<0.0663367509841919){
   if(i59<0.0007542890962213278){
    if(i30<1.0066425800323486){
     s0+=57195.0;
     s1+=350.0;
    } else {
     s0+=1858.0;
     s1+=179.0;
    }
   } else {
    if(i42<0.001953453291207552){
     s0+=1614.0;
     s1+=680.0;
    } else {
     s0+=5805.0;
     s1+=164.0;
    }
   }
  } else {
   if(i66<-0.0009750127792358398){
    if(i64<-0.004066187888383865){
     s0+=85.0;
     s1+=15.0;
    } else {
     s0+=86.0;
     s1+=228.0;
    }
   } else {
    if(i47<0.03585618734359741){
     s0+=73.0;
     s1+=392.0;
    } else {
     s0+=2502.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i43<-1.462851923861308e-05){
   if(i36<0.007196011487394571){
    if(i44<0.03682678937911987){
     s0+=9.0;
     s1+=818.0;
    } else {
     s0+=11.0;
     s1+=13.0;
    }
   } else {
    if(i51<-0.005105644464492798){
     s0+=11.0;
     s1+=127.0;
    } else {
     s0+=112.0;
     s1+=7.0;
    }
   }
  } else {
   if(i12<0.00409882515668869){
    s0+=249.0;
   } else {
    s1+=41.0;
   }
  }
 }
} else {
 if(i3<0.00010317564010620117){
  if(i44<0.04848363995552063){
   if(i12<0.0009796156082302332){
    if(i33<0.0014614907559007406){
     s1+=1.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i17<-2.2530555725097656e-05){
     s0+=63.0;
    } else {
     s0+=30.0;
     s1+=1116.0;
    }
   }
  } else {
   if(i50<-0.00013646483421325684){
    if(i13<1.398578405380249){
     s0+=339.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i12<0.0022642542608082294){
     s0+=397.0;
     s1+=95.0;
    } else {
     s0+=192.0;
     s1+=517.0;
    }
   }
  }
 } else {
  if(i4<0.12533989548683167){
   if(i49<0.02113470435142517){
    if(i69<1.0046223402023315){
     s0+=109.0;
     s1+=1854.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   } else {
    if(i71<0.0006844099843874574){
     s0+=184.0;
    } else {
     s0+=14.0;
     s1+=16.0;
    }
   }
  } else {
   if(i19<3.74913215637207e-05){
    if(i7<-4.079071004525758e-05){
     s0+=37.0;
     s1+=1485.0;
    } else {
     s0+=75.0;
     s1+=140.0;
    }
   } else {
    if(i12<0.0002921752166002989){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=8754.0;
    }
   }
  }
 }
}
if(i13<1.052894115447998){
 if(i2<0.08218586444854736){
  if(i5<1.0024954080581665){
   if(i59<0.0007654397049918771){
    if(i10<1.0043504238128662){
     s0+=57760.0;
     s1+=470.0;
    } else {
     s0+=185.0;
     s1+=94.0;
    }
   } else {
    if(i67<2.479296199453529e-05){
     s0+=2866.0;
     s1+=624.0;
    } else {
     s0+=2771.0;
     s1+=21.0;
    }
   }
  } else {
   if(i73<-5.125473762745969e-06){
    if(i81<1.0311603546142578e-05){
     s1+=174.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i25<0.99637770652771){
     s1+=9.0;
    } else {
     s0+=89.0;
    }
   }
  }
 } else {
  if(i11<0.998519778251648){
   if(i24<1.0619208812713623){
    if(i46<0.08687323331832886){
     s0+=332.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i44<0.06112891435623169){
     s0+=53.0;
     s1+=8.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i15<-0.0024313926696777344){
    if(i4<0.10484549403190613){
     s0+=63.0;
     s1+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i44<0.05132368206977844){
     s0+=21.0;
     s1+=599.0;
    } else {
     s0+=98.0;
     s1+=84.0;
    }
   }
  }
 }
} else {
 if(i2<0.08518528938293457){
  if(i32<1.1013743877410889){
   if(i40<0.0006243534153327346){
    if(i38<1.0977051258087158){
     s0+=827.0;
     s1+=158.0;
    } else {
     s1+=71.0;
    }
   } else {
    if(i36<0.0005133150261826813){
     s0+=145.0;
    } else {
     s0+=36.0;
     s1+=773.0;
    }
   }
  } else {
   if(i75<0.1241203099489212){
    if(i3<0.0009461045265197754){
     s0+=4288.0;
     s1+=372.0;
    } else {
     s0+=60.0;
     s1+=282.0;
    }
   } else {
    if(i51<-0.003605872392654419){
     s0+=9.0;
     s1+=145.0;
    } else {
     s0+=50.0;
    }
   }
  }
 } else {
  if(i12<0.004756374750286341){
   if(i72<-0.02062811888754368){
    if(i0<0.17575806379318237){
     s0+=546.0;
     s1+=29.0;
    } else {
     s0+=293.0;
     s1+=230.0;
    }
   } else {
    if(i66<0.004234969615936279){
     s0+=126.0;
     s1+=1529.0;
    } else {
     s0+=189.0;
     s1+=182.0;
    }
   }
  } else {
   if(i1<-5.167722702026367e-05){
    if(i38<1.4001381397247314){
     s0+=74.0;
    } else {
     s0+=8.0;
     s1+=115.0;
    }
   } else {
    if(i10<0.9989383220672607){
     s0+=145.0;
     s1+=1693.0;
    } else {
     s0+=27.0;
     s1+=9486.0;
    }
   }
  }
 }
}
if(i2<0.08502998948097229){
 if(i9<1.0409057140350342){
  if(i11<1.0019729137420654){
   if(i21<0.01393103413283825){
    if(i51<-0.0017811357975006104){
     s0+=1128.0;
     s1+=162.0;
    } else {
     s0+=51198.0;
     s1+=228.0;
    }
   } else {
    if(i36<0.0014760696794837713){
     s0+=3091.0;
     s1+=677.0;
    } else {
     s0+=7408.0;
     s1+=74.0;
    }
   }
  } else {
   if(i67<2.006005888688378e-05){
    if(i5<1.001605749130249){
     s0+=12.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=249.0;
    }
   } else {
    if(i53<-0.06406652927398682){
     s0+=7.0;
     s1+=12.0;
    } else {
     s0+=245.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i1<3.3736228942871094e-05){
   if(i7<-2.9991815608809702e-05){
    if(i61<1.0001860857009888){
     s0+=430.0;
     s1+=488.0;
    } else {
     s0+=427.0;
     s1+=42.0;
    }
   } else {
    if(i32<1.1013743877410889){
     s0+=1650.0;
     s1+=369.0;
    } else {
     s0+=3327.0;
     s1+=64.0;
    }
   }
  } else {
   if(i72<-0.013881156221032143){
    if(i68<0.00859049428254366){
     s0+=86.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i62<0.0029335618019104004){
     s0+=55.0;
     s1+=662.0;
    } else {
     s0+=126.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3541021871787962e-05){
  if(i14<-0.0004025697708129883){
   if(i71<0.000880039413459599){
    if(i81<-7.539987564086914e-06){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i56<-0.00013458087050821632){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i15<0.0007512569427490234){
    if(i49<0.015553772449493408){
     s0+=133.0;
     s1+=2670.0;
    } else {
     s0+=497.0;
     s1+=1576.0;
    }
   } else {
    if(i56<-0.0001269089407287538){
     s0+=20.0;
     s1+=8830.0;
    } else {
     s0+=24.0;
     s1+=506.0;
    }
   }
  }
 } else {
  if(i11<0.9985301494598389){
   if(i37<0.9999889135360718){
    s0+=625.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i60<0.00024126845528371632){
    if(i71<0.000411271583288908){
     s0+=360.0;
     s1+=40.0;
    } else {
     s0+=34.0;
     s1+=62.0;
    }
   } else {
    if(i53<0.0695209801197052){
     s0+=27.0;
     s1+=212.0;
    } else {
     s0+=178.0;
     s1+=91.0;
    }
   }
  }
 }
}
if(i4<0.07786163687705994){
 if(i24<1.0486011505126953){
  if(i51<-0.0017419755458831787){
   if(i24<1.0419425964355469){
    if(i40<0.0003898844006471336){
     s0+=503.0;
     s1+=1.0;
    } else {
     s0+=120.0;
     s1+=27.0;
    }
   } else {
    if(i7<1.6918729670578614e-05){
     s0+=95.0;
     s1+=100.0;
    } else {
     s0+=68.0;
     s1+=1.0;
    }
   }
  } else {
   if(i26<0.0002820042718667537){
    if(i59<0.0008601611480116844){
     s0+=48401.0;
     s1+=41.0;
    } else {
     s0+=100.0;
     s1+=36.0;
    }
   } else {
    if(i29<0.9943466186523438){
     s0+=4812.0;
     s1+=6.0;
    } else {
     s0+=1684.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i3<0.0005453824996948242){
   if(i40<0.0008734865114092827){
    if(i40<0.0002951040514744818){
     s0+=1912.0;
    } else {
     s0+=2007.0;
     s1+=1188.0;
    }
   } else {
    if(i32<1.098250150680542){
     s1+=58.0;
    } else {
     s0+=9161.0;
     s1+=489.0;
    }
   }
  } else {
   if(i32<1.2392117977142334){
    s1+=743.0;
   } else {
    if(i57<0.0021715317852795124){
     s0+=220.0;
     s1+=44.0;
    } else {
     s0+=79.0;
     s1+=287.0;
    }
   }
  }
 }
} else {
 if(i40<0.006072480697184801){
  if(i64<-0.00587849784642458){
   if(i43<-1.5013407391961664e-05){
    if(i2<0.13231471180915833){
     s0+=154.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=412.0;
    }
   } else {
    if(i6<0.18946149945259094){
     s0+=635.0;
     s1+=71.0;
    } else {
     s0+=198.0;
     s1+=187.0;
    }
   }
  } else {
   if(i17<-1.3947486877441406e-05){
    if(i71<3.620760980993509e-05){
     s1+=2.0;
    } else {
     s0+=257.0;
     s1+=4.0;
    }
   } else {
    if(i24<1.0485899448394775){
     s0+=81.0;
     s1+=28.0;
    } else {
     s0+=322.0;
     s1+=3481.0;
    }
   }
  }
 } else {
  if(i5<0.9944957494735718){
   if(i13<1.067629337310791){
    if(i4<0.08201077580451965){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=32.0;
    }
   } else {
    s1+=49.0;
   }
  } else {
   if(i6<0.12589031457901){
    if(i24<1.1234411001205444){
     s0+=111.0;
     s1+=145.0;
    } else {
     s0+=22.0;
     s1+=1189.0;
    }
   } else {
    if(i57<0.00014062339323572814){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=29.0;
     s1+=8419.0;
    }
   }
  }
 }
}
if(i14<0.00043389201164245605){
 if(i4<0.08318522572517395){
  if(i24<1.0475225448608398){
   if(i48<0.0002787086123134941){
    if(i45<1.0714969635009766){
     s0+=34737.0;
    } else {
     s0+=9014.0;
     s1+=16.0;
    }
   } else {
    if(i24<1.040691614151001){
     s0+=9344.0;
     s1+=84.0;
    } else {
     s0+=2088.0;
     s1+=217.0;
    }
   }
  } else {
   if(i42<0.0016244086436927319){
    if(i12<0.003644114825874567){
     s0+=4549.0;
     s1+=855.0;
    } else {
     s0+=134.0;
     s1+=571.0;
    }
   } else {
    if(i28<0.9527989625930786){
     s0+=1662.0;
     s1+=145.0;
    } else {
     s0+=6513.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i36<0.0005139429122209549){
   if(i43<-5.2100440370850265e-06){
    if(i37<0.9976339936256409){
     s0+=13.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   } else {
    if(i7<-1.5184467883955222e-05){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=309.0;
     s1+=1.0;
    }
   }
  } else {
   if(i17<-1.5407800674438477e-05){
    if(i45<1.5754120349884033){
     s0+=292.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<0.05083140730857849){
     s0+=50.0;
     s1+=2452.0;
    } else {
     s0+=563.0;
     s1+=1286.0;
    }
   }
  }
 }
} else {
 if(i2<0.0875806212425232){
  if(i1<4.184246063232422e-05){
   if(i51<-0.0006008446216583252){
    if(i71<0.0019407544750720263){
     s0+=268.0;
     s1+=94.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    if(i45<1.1731500625610352){
     s0+=277.0;
     s1+=79.0;
    } else {
     s0+=729.0;
     s1+=13.0;
    }
   }
  } else {
   if(i45<1.2287709712982178){
    if(i32<1.0718790292739868){
     s0+=32.0;
    } else {
     s0+=10.0;
     s1+=739.0;
    }
   } else {
    if(i68<0.0041559659875929356){
     s0+=207.0;
     s1+=31.0;
    } else {
     s0+=31.0;
     s1+=283.0;
    }
   }
  }
 } else {
  if(i1<5.120038986206055e-05){
   if(i74<0.0001066085824277252){
    if(i49<0.011828452348709106){
     s0+=11.0;
     s1+=134.0;
    } else {
     s0+=211.0;
     s1+=90.0;
    }
   } else {
    if(i61<1.0005748271942139){
     s0+=22.0;
     s1+=524.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i32<1.613681674003601){
    if(i67<3.0198259992175736e-05){
     s0+=8.0;
     s1+=7720.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   } else {
    if(i33<0.02077752724289894){
     s0+=47.0;
     s1+=89.0;
    } else {
     s1+=1425.0;
    }
   }
  }
 }
}
if(i2<0.08219337463378906){
 if(i16<1.0027871131896973){
  if(i68<0.001517964294180274){
   if(i31<0.00030019774567335844){
    if(i23<1.0081523656845093){
     s0+=54410.0;
     s1+=250.0;
    } else {
     s0+=453.0;
     s1+=156.0;
    }
   } else {
    if(i15<-0.0012762248516082764){
     s0+=3630.0;
     s1+=30.0;
    } else {
     s0+=3011.0;
     s1+=573.0;
    }
   }
  } else {
   if(i41<0.0011245511705055833){
    if(i38<1.081458568572998){
     s0+=1289.0;
     s1+=81.0;
    } else {
     s0+=300.0;
     s1+=611.0;
    }
   } else {
    if(i12<0.017895784229040146){
     s0+=4472.0;
     s1+=343.0;
    } else {
     s0+=8.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i36<0.001677412074059248){
   if(i31<0.00016976149345282465){
    if(i73<-5.801968654850498e-06){
     s1+=15.0;
    } else {
     s0+=68.0;
     s1+=1.0;
    }
   } else {
    if(i45<1.0658810138702393){
     s0+=29.0;
    } else {
     s1+=528.0;
    }
   }
  } else {
   if(i1<6.23464584350586e-05){
    if(i56<-0.0004243264556862414){
     s0+=48.0;
     s1+=43.0;
    } else {
     s0+=986.0;
     s1+=47.0;
    }
   } else {
    if(i66<0.0017129182815551758){
     s0+=28.0;
     s1+=286.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
} else {
 if(i29<1.0004551410675049){
  if(i11<0.9985270500183105){
   if(i43<-1.0029913937614765e-05){
    if(i13<1.0400946140289307){
     s0+=36.0;
    } else {
     s0+=9.0;
     s1+=26.0;
    }
   } else {
    if(i43<-8.993980372906663e-06){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=696.0;
    }
   }
  } else {
   if(i27<1.0049206018447876){
    if(i48<0.0003116439329460263){
     s0+=14.0;
    } else {
     s0+=80.0;
     s1+=1234.0;
    }
   } else {
    if(i4<0.20762401819229126){
     s0+=931.0;
     s1+=953.0;
    } else {
     s0+=78.0;
     s1+=1272.0;
    }
   }
  }
 } else {
  if(i34<1.0579817295074463){
   s0+=10.0;
  } else {
   if(i12<0.0017217330168932676){
    if(i17<2.2530555725097656e-05){
     s0+=134.0;
     s1+=94.0;
    } else {
     s1+=80.0;
    }
   } else {
    if(i10<1.0075953006744385){
     s0+=119.0;
     s1+=2150.0;
    } else {
     s0+=8.0;
     s1+=8575.0;
    }
   }
  }
 }
}
if(i18<1.0079731941223145){
 if(i16<1.0032354593276978){
  if(i2<0.08352836966514587){
   if(i62<-0.002227604389190674){
    if(i3<-0.00028821825981140137){
     s0+=3924.0;
     s1+=312.0;
    } else {
     s0+=1312.0;
     s1+=661.0;
    }
   } else {
    if(i53<-0.03206416964530945){
     s0+=599.0;
     s1+=147.0;
    } else {
     s0+=61357.0;
     s1+=739.0;
    }
   }
  } else {
   if(i70<0.9973258972167969){
    if(i7<-4.206008816254325e-05){
     s0+=17.0;
     s1+=29.0;
    } else {
     s0+=545.0;
     s1+=10.0;
    }
   } else {
    if(i21<0.025073546916246414){
     s0+=668.0;
     s1+=496.0;
    } else {
     s0+=256.0;
     s1+=1476.0;
    }
   }
  }
 } else {
  if(i6<0.05694955587387085){
   if(i15<-0.0014001727104187012){
    if(i10<0.9800246953964233){
     s0+=584.0;
     s1+=21.0;
    } else {
     s0+=88.0;
     s1+=45.0;
    }
   } else {
    if(i1<2.1636486053466797e-05){
     s0+=55.0;
     s1+=14.0;
    } else {
     s0+=50.0;
     s1+=392.0;
    }
   }
  } else {
   if(i15<-0.0007781386375427246){
    if(i2<0.09886115789413452){
     s0+=119.0;
     s1+=84.0;
    } else {
     s0+=50.0;
     s1+=549.0;
    }
   } else {
    if(i14<0.0001755058765411377){
     s0+=5.0;
     s1+=24.0;
    } else {
     s0+=18.0;
     s1+=1280.0;
    }
   }
  }
 }
} else {
 if(i16<1.0027947425842285){
  if(i33<0.022805027663707733){
   if(i45<1.140648365020752){
    if(i19<7.319450378417969e-05){
     s0+=143.0;
     s1+=201.0;
    } else {
     s0+=5.0;
     s1+=663.0;
    }
   } else {
    if(i4<0.10880699753761292){
     s0+=1136.0;
     s1+=59.0;
    } else {
     s0+=163.0;
     s1+=353.0;
    }
   }
  } else {
   if(i43<1.3751293863606406e-06){
    if(i4<0.18672189116477966){
     s0+=51.0;
     s1+=252.0;
    } else {
     s0+=4.0;
     s1+=1200.0;
    }
   } else {
    if(i45<1.255998969078064){
     s1+=2.0;
    } else {
     s0+=45.0;
    }
   }
  }
 } else {
  if(i7<-4.216110392007977e-05){
   if(i10<1.0034030675888062){
    if(i2<0.07646310329437256){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=165.0;
    }
   } else {
    if(i29<1.0018107891082764){
     s0+=1.0;
     s1+=354.0;
    } else {
     s1+=7302.0;
    }
   }
  } else {
   if(i57<0.0010897303000092506){
    s0+=151.0;
   } else {
    s1+=69.0;
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i3<0.0006011426448822021){
  if(i2<0.08311405777931213){
   if(i27<0.9774202704429626){
    if(i74<7.329032814595848e-05){
     s0+=818.0;
     s1+=350.0;
    } else {
     s0+=3511.0;
     s1+=135.0;
    }
   } else {
    if(i26<0.00030578963924199343){
     s0+=52253.0;
     s1+=272.0;
    } else {
     s0+=8193.0;
     s1+=653.0;
    }
   }
  } else {
   if(i24<1.049466609954834){
    if(i76<5.427873929875204e-06){
     s0+=80.0;
     s1+=38.0;
    } else {
     s0+=298.0;
     s1+=1.0;
    }
   } else {
    if(i19<-0.00015872716903686523){
     s0+=109.0;
     s1+=166.0;
    } else {
     s0+=21.0;
     s1+=404.0;
    }
   }
  }
 } else {
  if(i31<0.00016225039144046605){
   if(i7<-5.093314030091278e-05){
    s1+=11.0;
   } else {
    if(i68<0.0020051272585988045){
     s0+=111.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i34<1.0530848503112793){
    s0+=26.0;
   } else {
    if(i0<0.05378231406211853){
     s0+=31.0;
     s1+=127.0;
    } else {
     s1+=607.0;
    }
   }
  }
 }
} else {
 if(i14<0.00043570995330810547){
  if(i3<0.00012806057929992676){
   if(i33<0.017123844474554062){
    if(i0<0.07587191462516785){
     s0+=2447.0;
     s1+=166.0;
    } else {
     s0+=707.0;
     s1+=359.0;
    }
   } else {
    if(i3<-0.0005524158477783203){
     s0+=744.0;
     s1+=210.0;
    } else {
     s0+=351.0;
     s1+=890.0;
    }
   }
  } else {
   if(i17<1.1742115020751953e-05){
    if(i69<1.0001392364501953){
     s0+=94.0;
     s1+=1542.0;
    } else {
     s0+=191.0;
     s1+=137.0;
    }
   } else {
    if(i57<0.0011533885262906551){
     s0+=360.0;
     s1+=156.0;
    } else {
     s0+=13.0;
     s1+=488.0;
    }
   }
  }
 } else {
  if(i0<0.10681489109992981){
   if(i54<0.002297639846801758){
    if(i16<1.0011677742004395){
     s0+=250.0;
     s1+=97.0;
    } else {
     s0+=188.0;
     s1+=1043.0;
    }
   } else {
    if(i48<0.0010340532753616571){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=326.0;
     s1+=18.0;
    }
   }
  } else {
   if(i30<1.0223503112792969){
    if(i54<0.006673455238342285){
     s0+=13.0;
     s1+=1962.0;
    } else {
     s0+=81.0;
     s1+=378.0;
    }
   } else {
    if(i35<1.0004265308380127){
     s0+=19.0;
     s1+=297.0;
    } else {
     s0+=4.0;
     s1+=6474.0;
    }
   }
  }
 }
}
if(i2<0.0852321982383728){
 if(i8<1.0081498622894287){
  if(i5<1.0024782419204712){
   if(i62<-0.0020776987075805664){
    if(i1<-1.9788742065429688e-05){
     s0+=4223.0;
     s1+=267.0;
    } else {
     s0+=1603.0;
     s1+=670.0;
    }
   } else {
    if(i26<0.0002816389314830303){
     s0+=51715.0;
     s1+=146.0;
    } else {
     s0+=10617.0;
     s1+=775.0;
    }
   }
  } else {
   if(i68<0.0021530543453991413){
    if(i40<0.0019417485455051064){
     s1+=123.0;
    } else {
     s0+=85.0;
     s1+=22.0;
    }
   } else {
    if(i57<0.0014800833305343986){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i24<1.0836663246154785){
   if(i10<1.0022269487380981){
    if(i66<0.0031966567039489746){
     s0+=12.0;
     s1+=24.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i34<1.1495144367218018){
     s0+=10.0;
     s1+=509.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<1.0041879415512085){
    if(i21<0.034253817051649094){
     s0+=817.0;
     s1+=33.0;
    } else {
     s0+=47.0;
     s1+=50.0;
    }
   } else {
    s1+=121.0;
   }
  }
 }
} else {
 if(i11<0.9985091686248779){
  if(i50<-0.0001291334629058838){
   if(i41<0.027324698865413666){
    if(i7<-4.225862357998267e-05){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=577.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i68<0.0033179479651153088){
    if(i2<0.149776428937912){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i40<0.006295825354754925){
   if(i7<-1.4174920579534955e-05){
    if(i64<-0.006247597746551037){
     s0+=355.0;
     s1+=552.0;
    } else {
     s0+=157.0;
     s1+=3561.0;
    }
   } else {
    if(i32<1.255998969078064){
     s0+=364.0;
     s1+=337.0;
    } else {
     s0+=226.0;
     s1+=7.0;
    }
   }
  } else {
   if(i1<-4.887580871582031e-05){
    if(i24<1.076696753501892){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=99.0;
    }
   } else {
    if(i24<1.0819685459136963){
     s0+=27.0;
     s1+=29.0;
    } else {
     s0+=68.0;
     s1+=9518.0;
    }
   }
  }
 }
}
if(i4<0.07739722728729248){
 if(i14<0.0005338191986083984){
  if(i39<0.02683878317475319){
   if(i22<1.0082415342330933){
    if(i80<-0.0009747445583343506){
     s0+=1542.0;
     s1+=234.0;
    } else {
     s0+=55077.0;
     s1+=278.0;
    }
   } else {
    if(i5<1.0012463331222534){
     s0+=748.0;
     s1+=80.0;
    } else {
     s0+=95.0;
     s1+=160.0;
    }
   }
  } else {
   if(i36<0.001445930334739387){
    if(i50<-3.4183263778686523e-05){
     s0+=2233.0;
     s1+=74.0;
    } else {
     s0+=1398.0;
     s1+=990.0;
    }
   } else {
    if(i19<-0.00025516748428344727){
     s0+=5617.0;
     s1+=69.0;
    } else {
     s0+=1470.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i3<0.0006940960884094238){
   if(i24<1.0639448165893555){
    if(i73<-4.470348358154297e-06){
     s0+=396.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i36<0.002611706033349037){
     s1+=45.0;
    } else {
     s0+=416.0;
     s1+=122.0;
    }
   }
  } else {
   if(i72<-0.011182060465216637){
    if(i71<0.0013583122054114938){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i48<0.00023146183229982853){
     s0+=25.0;
    } else {
     s0+=76.0;
     s1+=935.0;
    }
   }
  }
 }
} else {
 if(i4<0.11344587802886963){
  if(i7<-2.3386879547615536e-05){
   if(i44<0.05435803532600403){
    if(i28<1.053353190422058){
     s0+=68.0;
     s1+=1655.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i49<0.01599663496017456){
     s0+=76.0;
     s1+=128.0;
    } else {
     s0+=214.0;
     s1+=6.0;
    }
   }
  } else {
   if(i21<0.021191567182540894){
    if(i22<0.9789801239967346){
     s0+=6.0;
     s1+=37.0;
    } else {
     s0+=556.0;
     s1+=63.0;
    }
   } else {
    if(i44<0.049148112535476685){
     s0+=34.0;
     s1+=211.0;
    } else {
     s0+=172.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i38<1.081458568572998){
   s0+=84.0;
  } else {
   if(i36<0.0006418760749511421){
    if(i41<0.0010913795558735728){
     s0+=22.0;
     s1+=80.0;
    } else {
     s0+=157.0;
    }
   } else {
    if(i44<0.08273571729660034){
     s0+=36.0;
     s1+=8873.0;
    } else {
     s0+=335.0;
     s1+=3079.0;
    }
   }
  }
 }
}
if(i14<0.00042510032653808594){
 if(i20<1.0401114225387573){
  if(i21<0.017073344439268112){
   if(i4<0.0780569314956665){
    if(i0<0.08247250318527222){
     s0+=57124.0;
     s1+=658.0;
    } else {
     s0+=18.0;
     s1+=25.0;
    }
   } else {
    if(i3<-0.0007127821445465088){
     s0+=132.0;
     s1+=8.0;
    } else {
     s0+=40.0;
     s1+=268.0;
    }
   }
  } else {
   if(i4<0.07533472776412964){
    if(i36<0.0014760696794837713){
     s0+=1928.0;
     s1+=790.0;
    } else {
     s0+=6325.0;
     s1+=99.0;
    }
   } else {
    if(i17<-1.2606382369995117e-05){
     s0+=55.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=724.0;
    }
   }
  }
 } else {
  if(i7<-3.152939098072238e-05){
   if(i37<1.0003674030303955){
    if(i43<-8.761528533796081e-07){
     s0+=87.0;
     s1+=2162.0;
    } else {
     s0+=59.0;
     s1+=9.0;
    }
   } else {
    if(i56<-0.00021202726929914206){
     s0+=41.0;
     s1+=237.0;
    } else {
     s0+=164.0;
     s1+=36.0;
    }
   }
  } else {
   if(i6<0.17136889696121216){
    if(i42<0.0014975144295021892){
     s0+=1053.0;
     s1+=313.0;
    } else {
     s0+=1966.0;
     s1+=124.0;
    }
   } else {
    if(i34<1.257188081741333){
     s0+=75.0;
     s1+=226.0;
    } else {
     s0+=197.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i15<0.00042068958282470703){
  if(i0<0.10591691732406616){
   if(i49<-0.00450780987739563){
    if(i15<-0.0024705827236175537){
     s0+=163.0;
     s1+=82.0;
    } else {
     s0+=91.0;
     s1+=407.0;
    }
   } else {
    if(i55<0.000127380175399594){
     s0+=678.0;
     s1+=216.0;
    } else {
     s0+=786.0;
     s1+=8.0;
    }
   }
  } else {
   if(i60<0.00046338583342731){
    if(i74<7.339379226323217e-05){
     s0+=58.0;
     s1+=44.0;
    } else {
     s0+=36.0;
     s1+=441.0;
    }
   } else {
    if(i4<0.11622768640518188){
     s0+=14.0;
     s1+=77.0;
    } else {
     s0+=8.0;
     s1+=1132.0;
    }
   }
  }
 } else {
  if(i48<0.00019767566118389368){
   s0+=46.0;
  } else {
   if(i2<0.06390446424484253){
    if(i57<0.0008392611634917557){
     s0+=55.0;
     s1+=4.0;
    } else {
     s1+=263.0;
    }
   } else {
    if(i12<0.0013877012534067035){
     s0+=8.0;
     s1+=45.0;
    } else {
     s1+=8585.0;
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
