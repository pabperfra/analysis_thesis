/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = laplace_box_of_gaussian_blur=15 difference_of_gaussian=15 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 laplace_box_of_gaussian_blur=20 difference_of_gaussian=20 median_box=5 gaussian_blur=15 sobel_of_gaussian_blur=10 gaussian_blur=3 gaussian_blur=5 mean_box=15 mean_box=3 difference_of_gaussian=10 sobel_of_gaussian_blur=30 sobel_of_gaussian_blur=15 top_hat_box=15 median_box=3 top_hat_box=30 mean_box=5 mean_box=10 sobel_of_gaussian_blur=5 gaussian_blur=2 top_hat_box=20 variance_box=30 variance_box=20 laplace_box_of_gaussian_blur=10 maximum_box=30 difference_of_gaussian=30 variance_box=10 mean_box=2 sobel_of_gaussian_blur=20 maximum_box=10 variance_box=15 maximum_box=15 maximum_box=3 maximum_box=20 small_hessian_eigenvalue_of_gaussian_blur=5 maximum_box=5 sobel_of_gaussian_blur=3 gaussian_blur=1 maximum_box=2 large_hessian_eigenvalue_of_gaussian_blur=15 variance_box=5 gaussian_blur=30 top_hat_box=10 variance_box=3 large_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=20 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=30 small_hessian_eigenvalue_of_gaussian_blur=15 laplace_box_of_gaussian_blur=30 mean_box=20 variance_box=2 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=5 maximum_box=1 large_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=3 laplace_box_of_gaussian_blur=5 variance_box=1 difference_of_gaussian=5 large_hessian_eigenvalue_of_gaussian_blur=2 mean_box=1 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 73
max_depth = 5
num_trees = 250
feature_importances = 0.06317194633031477,0.06561511936028203,0.0770069677318578,0.09599308784796715,0.04390461792832488,0.06411425478946244,0.030160990855871705,0.053289392503805134,0.04905459542158865,0.028117754655842778,0.036261878774537556,0.02412457031352241,0.013750997508651755,0.010359872729451372,0.021261423174068383,0.014791000955762738,0.02524795671827365,0.01823339742206105,0.00494407156150473,0.020614475426989718,0.013587856024647868,0.012881336485953578,0.02683056856320278,0.01133497506802777,0.01177965393519676,0.008355273033337825,0.014719770734782613,0.00814689982645541,0.010904592316309133,0.005171759945848793,0.005354172908402817,0.0069602057342104855,0.006141317923006102,0.004705011157233303,0.0053607779556276896,0.007407235529310116,0.007400591375861674,0.0034517628016154946,0.0112600841237147,0.0036420858524477324,0.002587408292786414,0.004458412289132657,0.0032833222569195967,0.0024800971570316846,0.0018586509146704636,0.002989960286930617,0.0021958577309909304,0.0035128608739989934,0.0020422060084146413,0.0014776939568010873,0.0017419480328807798,0.002211422028816999,0.0018265135542172234,0.004519201094730338,0.001652371005334415,0.001530123413777689,0.0010312043174893356,0.0018739569784350573,0.0006503091673229454,0.0005325739486974046,0.0005206214642231406,0.000493684194068689,0.0013385450514935093,0.0005777361768078651,0.00020392410474823322,0.0009103049356108848,0.0004432486710788022,0.0003902348021877894,0.0005422859914691549,0.004404829908846287,0.00014111394242877153,0.00010362803862956858,5.944610369463403e-05
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i3<-9.234906610799953e-05){
 if(i10<0.9740655422210693){
  if(i41<1.02775239944458){
   if(i34<1.5545397996902466){
    if(i21<0.06143563985824585){
     s0+=513.0;
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=18.0;
    }
   } else {
    if(i10<0.9373855590820312){
     s0+=44.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  } else {
   if(i6<0.9889639616012573){
    if(i23<0.056434690952301025){
     s0+=32.0;
     s1+=26.0;
    } else {
     s0+=3.0;
     s1+=143.0;
    }
   } else {
    if(i24<0.015012936666607857){
     s0+=15.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<0.0007051074644550681){
   if(i4<0.0002390146255493164){
    if(i65<-0.007402598857879639){
     s0+=28.0;
     s1+=73.0;
    } else {
     s0+=87.0;
     s1+=15692.0;
    }
   } else {
    s0+=89.0;
   }
  } else {
   s0+=220.0;
  }
 }
} else {
 if(i1<0.0009300708770751953){
  if(i15<0.0017434083856642246){
   if(i8<0.0016254796646535397){
    if(i37<-0.0002953930525109172){
     s0+=806.0;
     s1+=48.0;
    } else {
     s0+=59416.0;
     s1+=147.0;
    }
   } else {
    if(i53<0.9989190697669983){
     s0+=21893.0;
     s1+=50.0;
    } else {
     s0+=9149.0;
     s1+=822.0;
    }
   }
  } else {
   if(i13<-0.0014190375804901123){
    if(i38<1.1231780052185059){
     s0+=13317.0;
     s1+=289.0;
    } else {
     s0+=2489.0;
     s1+=565.0;
    }
   } else {
    if(i44<0.9995832443237305){
     s0+=3537.0;
     s1+=32.0;
    } else {
     s0+=2565.0;
     s1+=3947.0;
    }
   }
  }
 } else {
  if(i43<0.0010198935633525252){
   if(i38<1.0415163040161133){
    if(i29<0.00019176315981894732){
     s0+=115.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i48<1.0008203983306885){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=1593.0;
    }
   }
  } else {
   if(i36<1.176405668258667){
    if(i36<1.0952932834625244){
     s1+=65.0;
    } else {
     s0+=1887.0;
    }
   } else {
    if(i44<1.0009187459945679){
     s0+=46.0;
     s1+=72.0;
    } else {
     s0+=10.0;
     s1+=930.0;
    }
   }
  }
 }
}
if(i17<1.0181405544281006){
 if(i26<0.00021600723266601562){
  if(i5<0.0005138516426086426){
   if(i3<-0.00013073580339550972){
    if(i19<0.9190165996551514){
     s0+=68.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=189.0;
    }
   } else {
    if(i28<7.003545761108398e-05){
     s0+=75743.0;
     s1+=857.0;
    } else {
     s0+=32493.0;
     s1+=2948.0;
    }
   }
  } else {
   if(i3<-6.864601164124906e-05){
    if(i16<0.052190959453582764){
     s0+=519.0;
     s1+=222.0;
    } else {
     s0+=168.0;
     s1+=2056.0;
    }
   } else {
    if(i49<0.03642354905605316){
     s0+=4547.0;
     s1+=727.0;
    } else {
     s0+=968.0;
     s1+=858.0;
    }
   }
  }
 } else {
  if(i10<1.013071060180664){
   if(i14<0.0002045652363449335){
    if(i28<0.00015294551849365234){
     s0+=33.0;
    } else {
     s0+=11.0;
     s1+=603.0;
    }
   } else {
    if(i58<0.056471943855285645){
     s0+=517.0;
     s1+=8.0;
    } else {
     s1+=64.0;
    }
   }
  } else {
   if(i52<2.1517276763916016e-05){
    if(i52<-2.7626752853393555e-05){
     s0+=2.0;
    } else {
     s0+=14.0;
     s1+=1649.0;
    }
   } else {
    if(i33<0.005703994072973728){
     s0+=40.0;
    } else {
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i10<1.014587640762329){
  if(i31<0.0005291365087032318){
   if(i63<-7.619612460985081e-06){
    if(i55<1.00321364402771){
     s0+=8.0;
     s1+=43.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i4<2.8312206268310547e-05){
     s0+=384.0;
     s1+=10.0;
    } else {
     s0+=61.0;
     s1+=15.0;
    }
   }
  } else {
   if(i49<0.039639391005039215){
    if(i32<1.0953161716461182){
     s0+=2.0;
     s1+=386.0;
    } else {
     s0+=581.0;
     s1+=166.0;
    }
   } else {
    if(i25<0.006653293035924435){
     s0+=333.0;
     s1+=1045.0;
    } else {
     s0+=28.0;
     s1+=1526.0;
    }
   }
  }
 } else {
  if(i28<0.0018964409828186035){
   if(i36<1.161512017250061){
    if(i55<1.0029927492141724){
     s0+=1.0;
     s1+=666.0;
    } else {
     s0+=36.0;
    }
   } else {
    s1+=10176.0;
   }
  } else {
   s0+=14.0;
  }
 }
}
if(i20<1.0084952116012573){
 if(i3<-8.068525494309142e-05){
  if(i16<0.049838751554489136){
   if(i41<1.0725069046020508){
    if(i44<1.002510905265808){
     s0+=1079.0;
     s1+=93.0;
    } else {
     s0+=9.0;
     s1+=29.0;
    }
   } else {
    if(i6<0.9937201738357544){
     s0+=17.0;
     s1+=86.0;
    } else {
     s0+=22.0;
     s1+=7.0;
    }
   }
  } else {
   if(i39<0.016305740922689438){
    if(i7<1.0016956329345703){
     s0+=142.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=43.0;
    }
   } else {
    if(i31<0.003953196574002504){
     s0+=132.0;
     s1+=4094.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i22<1.0151820182800293){
   if(i5<0.00029343366622924805){
    if(i31<0.0006912520038895309){
     s0+=74216.0;
     s1+=343.0;
    } else {
     s0+=27721.0;
     s1+=2316.0;
    }
   } else {
    if(i14<0.0003462367458269){
     s0+=4759.0;
     s1+=2030.0;
    } else {
     s0+=4880.0;
     s1+=233.0;
    }
   }
  } else {
   if(i32<1.0905089378356934){
    if(i1<-0.00023651123046875){
     s0+=4.0;
    } else {
     s1+=599.0;
    }
   } else {
    if(i32<1.1713674068450928){
     s0+=1209.0;
     s1+=162.0;
    } else {
     s0+=411.0;
     s1+=586.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007026807870715857){
  if(i6<1.0124447345733643){
   if(i29<0.0027385326102375984){
    if(i27<1.125762701034546){
     s1+=609.0;
    } else {
     s0+=317.0;
     s1+=113.0;
    }
   } else {
    if(i5<0.00035768747329711914){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=1164.0;
    }
   }
  } else {
   if(i51<-1.719493229757063e-05){
    if(i49<0.0017790737329050899){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=11977.0;
    }
   } else {
    if(i38<1.0821646451950073){
     s1+=13.0;
    } else {
     s0+=31.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i65<0.01061159372329712){
   s0+=1279.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i38<1.1402318477630615){
 if(i26<0.00018519163131713867){
  if(i8<0.003983064088970423){
   if(i65<-0.0003898739814758301){
    if(i24<0.0005961455754004419){
     s0+=4162.0;
     s1+=671.0;
    } else {
     s0+=12432.0;
     s1+=70.0;
    }
   } else {
    if(i35<1.1354830265045166){
     s0+=74196.0;
     s1+=529.0;
    } else {
     s0+=327.0;
     s1+=65.0;
    }
   }
  } else {
   if(i20<0.996407151222229){
    if(i48<0.9997889399528503){
     s0+=9292.0;
     s1+=10.0;
    } else {
     s0+=5764.0;
     s1+=835.0;
    }
   } else {
    if(i2<0.9988529682159424){
     s0+=2953.0;
     s1+=116.0;
    } else {
     s0+=1201.0;
     s1+=3692.0;
    }
   }
  }
 } else {
  if(i46<0.000764473807066679){
   if(i53<0.9999589920043945){
    if(i30<1.0297876596450806){
     s0+=96.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i13<0.0010426640510559082){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=2391.0;
    }
   }
  } else {
   if(i36<1.176405668258667){
    if(i34<1.0958809852600098){
     s1+=90.0;
    } else {
     s0+=1264.0;
     s1+=38.0;
    }
   } else {
    if(i3<-7.596348586957902e-05){
     s1+=817.0;
    } else {
     s0+=80.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i7<1.001806616783142){
  if(i21<0.05636221915483475){
   if(i17<1.020033836364746){
    if(i18<0.2206169068813324){
     s0+=2960.0;
     s1+=59.0;
    } else {
     s0+=55.0;
     s1+=36.0;
    }
   } else {
    if(i57<-2.8367896902636858e-06){
     s0+=5.0;
     s1+=81.0;
    } else {
     s0+=133.0;
     s1+=3.0;
    }
   }
  } else {
   if(i7<0.9939918518066406){
    s0+=16.0;
   } else {
    if(i56<0.014353930950164795){
     s0+=5.0;
     s1+=457.0;
    } else {
     s0+=17.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i41<1.0673463344573975){
   if(i2<1.0075099468231201){
    if(i16<0.06826168298721313){
     s0+=522.0;
     s1+=76.0;
    } else {
     s0+=186.0;
     s1+=208.0;
    }
   } else {
    s1+=392.0;
   }
  } else {
   if(i3<-4.2377323552500457e-05){
    if(i35<1.0742113590240479){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=32.0;
     s1+=13441.0;
    }
   } else {
    if(i39<0.03583618998527527){
     s0+=543.0;
     s1+=27.0;
    } else {
     s0+=99.0;
     s1+=316.0;
    }
   }
  }
 }
}
if(i6<1.0135951042175293){
 if(i21<0.061295054852962494){
  if(i20<1.0062634944915771){
   if(i23<0.21882390975952148){
    if(i21<0.00728987343609333){
     s0+=71450.0;
     s1+=660.0;
    } else {
     s0+=40544.0;
     s1+=4539.0;
    }
   } else {
    if(i21<0.028867892920970917){
     s0+=121.0;
     s1+=61.0;
    } else {
     s0+=26.0;
     s1+=296.0;
    }
   }
  } else {
   if(i28<0.0007546544075012207){
    if(i53<1.0036249160766602){
     s0+=627.0;
     s1+=497.0;
    } else {
     s0+=130.0;
     s1+=1129.0;
    }
   } else {
    if(i43<0.002098109107464552){
     s0+=2056.0;
     s1+=40.0;
    } else {
     s0+=11.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i1<-0.0023751258850097656){
   if(i56<0.006444517523050308){
    s0+=336.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i60<0.0031653190962970257){
    if(i55<1.0111305713653564){
     s0+=9.0;
     s1+=1910.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i66<0.0010010309051722288){
     s0+=45.0;
     s1+=5.0;
    } else {
     s0+=44.0;
     s1+=161.0;
    }
   }
  }
 }
} else {
 if(i23<0.18142840266227722){
  if(i50<-5.7005954658961855e-06){
   if(i13<0.002754807472229004){
    s0+=295.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i10<1.0131068229675293){
    if(i27<1.116804838180542){
     s0+=40.0;
     s1+=661.0;
    } else {
     s0+=752.0;
     s1+=276.0;
    }
   } else {
    if(i56<-0.0020989878103137016){
     s0+=12.0;
    } else {
     s0+=22.0;
     s1+=2326.0;
    }
   }
  }
 } else {
  if(i24<0.0024531797971576452){
   if(i64<0.105361707508564){
    s0+=28.0;
   } else {
    if(i44<1.0002026557922363){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i1<-0.00031247735023498535){
    if(i64<0.12402669340372086){
     s0+=38.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=46.0;
    }
   } else {
    if(i32<1.7041046619415283){
     s0+=2.0;
     s1+=11349.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i4<2.378225326538086e-05){
 if(i45<0.20558133721351624){
  if(i15<0.0016892156563699245){
   if(i41<1.0178465843200684){
    if(i31<0.0005925719160586596){
     s0+=8890.0;
     s1+=84.0;
    } else {
     s0+=1641.0;
     s1+=381.0;
    }
   } else {
    if(i15<0.001273946138098836){
     s0+=70156.0;
     s1+=243.0;
    } else {
     s0+=8104.0;
     s1+=268.0;
    }
   }
  } else {
   if(i2<0.9984813332557678){
    if(i24<0.0009964691707864404){
     s0+=705.0;
     s1+=244.0;
    } else {
     s0+=17153.0;
     s1+=387.0;
    }
   } else {
    if(i64<0.014114612713456154){
     s0+=1684.0;
     s1+=600.0;
    } else {
     s0+=1893.0;
     s1+=2730.0;
    }
   }
  }
 } else {
  if(i5<0.00018215179443359375){
   if(i48<0.9987735748291016){
    if(i49<0.058439575135707855){
     s0+=8.0;
    } else {
     s1+=195.0;
    }
   } else {
    if(i58<0.04299718141555786){
     s0+=110.0;
     s1+=9.0;
    } else {
     s0+=60.0;
     s1+=99.0;
    }
   }
  } else {
   if(i21<0.008492080494761467){
    s0+=9.0;
   } else {
    if(i2<0.9959494471549988){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=420.0;
    }
   }
  }
 }
} else {
 if(i37<-0.00027817790396511555){
  if(i38<1.1342540979385376){
   if(i6<1.0155521631240845){
    if(i14<0.000329037313349545){
     s0+=233.0;
     s1+=495.0;
    } else {
     s0+=378.0;
     s1+=74.0;
    }
   } else {
    if(i7<1.0012751817703247){
     s0+=16.0;
    } else {
     s0+=68.0;
     s1+=1499.0;
    }
   }
  } else {
   if(i12<0.9071588516235352){
    if(i39<0.1443326473236084){
     s0+=96.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=44.0;
    }
   } else {
    if(i33<0.0017770950216799974){
     s0+=15.0;
    } else {
     s0+=80.0;
     s1+=12330.0;
    }
   }
  }
 } else {
  if(i0<0.00012010335922241211){
   if(i52<1.233816146850586e-05){
    if(i31<0.0010590938618406653){
     s0+=589.0;
     s1+=971.0;
    } else {
     s0+=1580.0;
     s1+=329.0;
    }
   } else {
    if(i51<-4.085713590029627e-05){
     s0+=99.0;
     s1+=187.0;
    } else {
     s0+=2749.0;
     s1+=53.0;
    }
   }
  } else {
   if(i42<-8.947560672822874e-06){
    if(i14<0.0006997378659434617){
     s0+=2.0;
     s1+=2225.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i43<0.0018631638959050179){
     s0+=253.0;
     s1+=15.0;
    } else {
     s0+=17.0;
     s1+=277.0;
    }
   }
  }
 }
}
if(i1<0.0009593367576599121){
 if(i8<0.007630317471921444){
  if(i27<1.1162974834442139){
   if(i22<1.0088756084442139){
    if(i36<1.0577976703643799){
     s0+=18560.0;
     s1+=5.0;
    } else {
     s0+=11297.0;
     s1+=2513.0;
    }
   } else {
    if(i21<0.005814060568809509){
     s0+=230.0;
     s1+=82.0;
    } else {
     s0+=99.0;
     s1+=620.0;
    }
   }
  } else {
   if(i22<1.0195679664611816){
    if(i7<1.0022603273391724){
     s0+=74777.0;
     s1+=401.0;
    } else {
     s0+=3754.0;
     s1+=422.0;
    }
   } else {
    if(i20<0.9997663497924805){
     s0+=496.0;
     s1+=33.0;
    } else {
     s0+=233.0;
     s1+=228.0;
    }
   }
  }
 } else {
  if(i19<0.9584310054779053){
   if(i18<0.1340089738368988){
    if(i53<1.0199894905090332){
     s0+=3199.0;
     s1+=176.0;
    } else {
     s0+=5.0;
     s1+=29.0;
    }
   } else {
    if(i26<-0.0007992684841156006){
     s0+=83.0;
     s1+=60.0;
    } else {
     s0+=9.0;
     s1+=165.0;
    }
   }
  } else {
   if(i1<-0.0012796223163604736){
    if(i15<0.004189785104244947){
     s0+=1068.0;
    } else {
     s0+=63.0;
     s1+=71.0;
    }
   } else {
    if(i39<0.046695172786712646){
     s0+=235.0;
     s1+=524.0;
    } else {
     s0+=178.0;
     s1+=2604.0;
    }
   }
  }
 }
} else {
 if(i3<-7.450655539287254e-05){
  if(i44<0.9983727931976318){
   s0+=308.0;
  } else {
   if(i50<-6.2383332988247275e-06){
    if(i58<0.03848940134048462){
     s0+=59.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i69<0.8572746515274048){
     s0+=29.0;
     s1+=69.0;
    } else {
     s0+=95.0;
     s1+=14671.0;
    }
   }
  }
 } else {
  if(i24<0.0010897924657911062){
   if(i31<0.0011436661006882787){
    if(i61<0.003829354653134942){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=1215.0;
    }
   } else {
    s0+=64.0;
   }
  } else {
   if(i49<0.04488450288772583){
    if(i34<1.1762815713882446){
     s0+=1495.0;
    } else {
     s0+=13.0;
     s1+=116.0;
    }
   } else {
    if(i38<1.103729486465454){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=20.0;
     s1+=442.0;
    }
   }
  }
 }
}
if(i2<1.0038647651672363){
 if(i5<0.00032711029052734375){
  if(i45<0.2062317132949829){
   if(i60<0.00017416925402358174){
    if(i8<0.003459739498794079){
     s0+=67913.0;
     s1+=271.0;
    } else {
     s0+=10847.0;
     s1+=869.0;
    }
   } else {
    if(i26<-0.00019183754920959473){
     s0+=20533.0;
     s1+=510.0;
    } else {
     s0+=5517.0;
     s1+=1405.0;
    }
   }
  } else {
   if(i24<0.00256133358925581){
    if(i51<-7.50751314626541e-06){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i49<0.02684037946164608){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=354.0;
    }
   }
  }
 } else {
  if(i43<0.009340416640043259){
   if(i21<0.009687323123216629){
    if(i62<-0.0007411729311570525){
     s0+=208.0;
     s1+=73.0;
    } else {
     s0+=4907.0;
     s1+=104.0;
    }
   } else {
    if(i1<1.0132789611816406e-06){
     s0+=1326.0;
     s1+=314.0;
    } else {
     s0+=423.0;
     s1+=1751.0;
    }
   }
  } else {
   if(i16<0.07356962561607361){
    if(i71<-0.010203748941421509){
     s0+=12.0;
     s1+=75.0;
    } else {
     s0+=363.0;
     s1+=65.0;
    }
   } else {
    if(i8<0.006725414656102657){
     s0+=43.0;
     s1+=1.0;
    } else {
     s0+=71.0;
     s1+=978.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007036929600872099){
  if(i29<0.001914639724418521){
   if(i43<0.0009775529615581036){
    if(i34<1.1219847202301025){
     s0+=101.0;
     s1+=2470.0;
    } else {
     s0+=126.0;
     s1+=6.0;
    }
   } else {
    if(i34<1.0927071571350098){
     s1+=75.0;
    } else {
     s0+=1282.0;
    }
   }
  } else {
   if(i19<0.9566062688827515){
    if(i2<1.0061992406845093){
     s0+=49.0;
     s1+=34.0;
    } else {
     s0+=2.0;
     s1+=104.0;
    }
   } else {
    if(i23<0.07501295208930969){
     s0+=85.0;
     s1+=315.0;
    } else {
     s0+=50.0;
     s1+=14608.0;
    }
   }
  }
 } else {
  if(i69<1.1628143787384033){
   s0+=2451.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i17<1.0166970491409302){
 if(i10<1.0127198696136475){
  if(i7<1.0026252269744873){
   if(i31<0.0007107785204425454){
    if(i15<0.000879673520103097){
     s0+=65050.0;
     s1+=132.0;
    } else {
     s0+=13718.0;
     s1+=313.0;
    }
   } else {
    if(i32<1.0903346538543701){
     s0+=8599.0;
     s1+=2745.0;
    } else {
     s0+=22186.0;
     s1+=1106.0;
    }
   }
  } else {
   if(i12<0.9980410933494568){
    if(i16<0.06457465887069702){
     s0+=920.0;
     s1+=411.0;
    } else {
     s0+=395.0;
     s1+=2050.0;
    }
   } else {
    if(i56<0.0009928386425599456){
     s0+=3653.0;
     s1+=1045.0;
    } else {
     s0+=74.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i8<0.002561496337875724){
   if(i2<1.01180100440979){
    if(i35<1.0557365417480469){
     s1+=4.0;
    } else {
     s0+=103.0;
    }
   } else {
    s1+=37.0;
   }
  } else {
   if(i52<2.7239322662353516e-05){
    if(i28<0.0016561448574066162){
     s0+=16.0;
     s1+=1475.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i39<0.06646405160427094){
     s0+=20.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i3<-6.446033512474969e-05){
  if(i6<1.0200928449630737){
   if(i57<-2.1856163584743626e-05){
    if(i21<0.021572913974523544){
     s0+=108.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i62<-0.0009394939988851547){
     s0+=64.0;
     s1+=1228.0;
    } else {
     s0+=150.0;
     s1+=286.0;
    }
   }
  } else {
   if(i0<-0.0007628202438354492){
    s0+=4.0;
   } else {
    if(i50<1.0832837915586424e-06){
     s0+=21.0;
     s1+=11614.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i15<0.0015978282317519188){
   if(i36<1.0780352354049683){
    s1+=102.0;
   } else {
    if(i47<2.5289811674156226e-05){
     s0+=894.0;
    } else {
     s0+=158.0;
     s1+=25.0;
    }
   }
  } else {
   if(i38<1.086911916732788){
    if(i26<-0.00016257166862487793){
     s0+=34.0;
    } else {
     s0+=7.0;
     s1+=500.0;
    }
   } else {
    if(i55<1.0038514137268066){
     s0+=226.0;
     s1+=541.0;
    } else {
     s0+=300.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i23<0.20757997035980225){
  if(i6<1.0131568908691406){
   if(i46<0.0021054972894489765){
    if(i32<1.0902695655822754){
     s0+=39157.0;
     s1+=3092.0;
    } else {
     s0+=64907.0;
     s1+=602.0;
    }
   } else {
    if(i66<0.0069742351770401){
     s0+=8979.0;
     s1+=1441.0;
    } else {
     s0+=433.0;
     s1+=417.0;
    }
   }
  } else {
   if(i31<0.0005580130964517593){
    if(i41<1.1361879110336304){
     s0+=311.0;
     s1+=2.0;
    } else {
     s0+=70.0;
     s1+=8.0;
    }
   } else {
    if(i8<0.00449275691062212){
     s0+=263.0;
     s1+=41.0;
    } else {
     s0+=83.0;
     s1+=787.0;
    }
   }
  }
 } else {
  if(i61<0.061703525483608246){
   if(i22<1.0246022939682007){
    if(i15<0.005633085034787655){
     s0+=128.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i1<-0.0002790689468383789){
     s0+=7.0;
     s1+=2.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i8<0.006490905769169331){
    if(i0<1.2159347534179688e-05){
     s0+=179.0;
     s1+=14.0;
    } else {
     s0+=14.0;
     s1+=33.0;
    }
   } else {
    if(i27<1.1640105247497559){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=1359.0;
    }
   }
  }
 }
} else {
 if(i24<0.0023432746529579163){
  if(i46<0.0008965602610260248){
   if(i28<0.0006237030029296875){
    if(i34<1.127007007598877){
     s1+=2292.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=97.0;
   }
  } else {
   if(i34<1.0958809852600098){
    s1+=79.0;
   } else {
    if(i49<0.05607316642999649){
     s0+=1925.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i67<-0.013289809226989746){
   if(i57<-1.574521229485981e-05){
    if(i11<1.0098810195922852){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=108.0;
    }
   } else {
    if(i36<1.6323367357254028){
     s0+=34.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i18<0.10162413120269775){
    if(i14<0.00040882802568376064){
     s0+=8.0;
     s1+=457.0;
    } else {
     s0+=61.0;
     s1+=72.0;
    }
   } else {
    if(i16<0.1254168450832367){
     s0+=14.0;
     s1+=511.0;
    } else {
     s0+=2.0;
     s1+=12741.0;
    }
   }
  }
 }
}
if(i22<1.0176866054534912){
 if(i3<-8.67854178068228e-05){
  if(i18<0.042848169803619385){
   if(i9<0.9484169483184814){
    if(i41<1.084606409072876){
     s0+=798.0;
     s1+=47.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   } else {
    if(i58<0.02402353845536709){
     s0+=68.0;
     s1+=24.0;
    } else {
     s0+=33.0;
     s1+=115.0;
    }
   }
  } else {
   if(i48<1.0008997917175293){
    if(i50<-3.669344096124405e-06){
     s0+=209.0;
    } else {
     s0+=44.0;
     s1+=219.0;
    }
   } else {
    if(i12<0.8994208574295044){
     s0+=62.0;
     s1+=41.0;
    } else {
     s0+=105.0;
     s1+=3658.0;
    }
   }
  }
 } else {
  if(i15<0.0017224421026185155){
   if(i42<-1.319483999395743e-05){
    if(i24<0.001152048702351749){
     s1+=224.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i9<0.9958162307739258){
     s0+=16778.0;
     s1+=589.0;
    } else {
     s0+=74867.0;
     s1+=407.0;
    }
   }
  } else {
   if(i1<-0.00042828917503356934){
    if(i16<0.23147156834602356){
     s0+=17520.0;
     s1+=532.0;
    } else {
     s0+=4.0;
     s1+=59.0;
    }
   } else {
    if(i34<1.0498223304748535){
     s0+=1903.0;
     s1+=9.0;
    } else {
     s0+=2766.0;
     s1+=4250.0;
    }
   }
  }
 }
} else {
 if(i1<0.00024238228797912598){
  if(i31<0.002136882860213518){
   if(i57<-2.8679937713604886e-06){
    if(i42<2.754158413154073e-05){
     s0+=14.0;
     s1+=180.0;
    } else {
     s0+=314.0;
     s1+=23.0;
    }
   } else {
    if(i21<0.03719209134578705){
     s0+=404.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   }
  } else {
   if(i26<-0.0009423196315765381){
    s0+=10.0;
   } else {
    s1+=233.0;
   }
  }
 } else {
  if(i27<1.1843671798706055){
   if(i46<0.0008976084645837545){
    if(i27<1.1180615425109863){
     s1+=1315.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i25<0.0011846697889268398){
     s1+=98.0;
    } else {
     s0+=498.0;
    }
   }
  } else {
   if(i27<1.7041046619415283){
    if(i1<0.0010507702827453613){
     s0+=96.0;
     s1+=1050.0;
    } else {
     s0+=9.0;
     s1+=11182.0;
    }
   } else {
    s0+=21.0;
   }
  }
 }
}
if(i2<1.0037418603897095){
 if(i15<0.0017809905111789703){
  if(i31<0.0006225048564374447){
   if(i32<1.1354830265045166){
    if(i29<0.00023745006183162332){
     s0+=16255.0;
     s1+=158.0;
    } else {
     s0+=51743.0;
     s1+=1.0;
    }
   } else {
    if(i5<0.000517427921295166){
     s0+=5739.0;
     s1+=123.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i27<1.1164028644561768){
    if(i21<0.004386242479085922){
     s0+=1485.0;
     s1+=127.0;
    } else {
     s0+=942.0;
     s1+=609.0;
    }
   } else {
    if(i9<1.0127050876617432){
     s0+=13904.0;
     s1+=94.0;
    } else {
     s0+=38.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i27<1.1164028644561768){
   if(i58<0.012133408337831497){
    if(i44<0.9997212886810303){
     s0+=1713.0;
     s1+=80.0;
    } else {
     s0+=92.0;
     s1+=493.0;
    }
   } else {
    if(i53<0.9984962940216064){
     s0+=199.0;
     s1+=6.0;
    } else {
     s0+=163.0;
     s1+=2064.0;
    }
   }
  } else {
   if(i2<0.9998606443405151){
    if(i59<1.121600866317749){
     s0+=17747.0;
     s1+=683.0;
    } else {
     s0+=73.0;
     s1+=287.0;
    }
   } else {
    if(i1<-8.463859558105469e-06){
     s0+=1024.0;
     s1+=459.0;
    } else {
     s0+=661.0;
     s1+=1508.0;
    }
   }
  }
 }
} else {
 if(i25<0.0023314151912927628){
  if(i43<0.0009980060858651996){
   if(i46<0.000142775519634597){
    if(i24<0.00024610882974229753){
     s0+=560.0;
    } else {
     s0+=3.0;
     s1+=129.0;
    }
   } else {
    if(i24<0.00024190053227357566){
     s0+=127.0;
    } else {
     s0+=71.0;
     s1+=2564.0;
    }
   }
  } else {
   if(i56<0.0010234084911644459){
    if(i24<0.0009450158686377108){
     s1+=50.0;
    } else {
     s0+=3412.0;
     s1+=4.0;
    }
   } else {
    if(i39<0.020551353693008423){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i9<1.023658275604248){
   if(i8<0.0030052419751882553){
    if(i27<1.3585253953933716){
     s1+=42.0;
    } else {
     s0+=141.0;
    }
   } else {
    if(i3<-8.092242933344096e-05){
     s0+=51.0;
     s1+=3410.0;
    } else {
     s0+=110.0;
     s1+=711.0;
    }
   }
  } else {
   if(i29<0.0029524248093366623){
    if(i3<-7.515773177146912e-05){
     s1+=495.0;
    } else {
     s0+=19.0;
     s1+=22.0;
    }
   } else {
    if(i6<1.0209803581237793){
     s0+=1.0;
     s1+=306.0;
    } else {
     s1+=10004.0;
    }
   }
  }
 }
}
if(i10<1.010753870010376){
 if(i5<0.00043195486068725586){
  if(i24<0.0008751751738600433){
   if(i39<0.009365959092974663){
    if(i47<4.298808562452905e-05){
     s0+=20236.0;
     s1+=103.0;
    } else {
     s0+=628.0;
     s1+=207.0;
    }
   } else {
    if(i14<0.000141297176014632){
     s0+=6827.0;
     s1+=532.0;
    } else {
     s0+=2316.0;
     s1+=1807.0;
    }
   }
  } else {
   if(i30<1.0250813961029053){
    if(i8<0.018411198630928993){
     s0+=76707.0;
     s1+=794.0;
    } else {
     s0+=114.0;
     s1+=170.0;
    }
   } else {
    if(i58<0.04128057882189751){
     s0+=244.0;
     s1+=47.0;
    } else {
     s0+=86.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i37<-0.0002002612891374156){
   if(i8<0.004246179014444351){
    if(i29<0.0005243724444881082){
     s1+=13.0;
    } else {
     s0+=792.0;
     s1+=58.0;
    }
   } else {
    if(i26<-0.0005441606044769287){
     s0+=222.0;
     s1+=226.0;
    } else {
     s0+=330.0;
     s1+=4045.0;
    }
   }
  } else {
   if(i42<-8.761006029089913e-06){
    if(i8<0.0014063887065276504){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=505.0;
    }
   } else {
    if(i47<3.168053081026301e-05){
     s0+=5104.0;
     s1+=432.0;
    } else {
     s0+=1506.0;
     s1+=1064.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007036929600872099){
  if(i36<1.6811659336090088){
   if(i23<0.05113232135772705){
    if(i69<1.0055875778198242){
     s0+=7.0;
     s1+=120.0;
    } else {
     s0+=44.0;
     s1+=19.0;
    }
   } else {
    if(i52<6.264448165893555e-05){
     s0+=169.0;
     s1+=14003.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   s0+=49.0;
  }
 } else {
  s0+=1048.0;
 }
}
if(i19<1.0147435665130615){
 if(i53<1.0060311555862427){
  if(i7<1.0023834705352783){
   if(i24<0.0008961533894762397){
    if(i15<0.0015930210938677192){
     s0+=28350.0;
     s1+=588.0;
    } else {
     s0+=2769.0;
     s1+=2717.0;
    }
   } else {
    if(i66<0.007096384186297655){
     s0+=76838.0;
     s1+=765.0;
    } else {
     s0+=308.0;
     s1+=309.0;
    }
   }
  } else {
   if(i43<0.002351196715608239){
    if(i24<0.0010523165110498667){
     s0+=838.0;
     s1+=802.0;
    } else {
     s0+=2966.0;
     s1+=194.0;
    }
   } else {
    if(i35<1.0869234800338745){
     s0+=403.0;
     s1+=59.0;
    } else {
     s0+=179.0;
     s1+=1532.0;
    }
   }
  }
 } else {
  if(i3<-8.533006621291861e-05){
   if(i10<0.9739558696746826){
    if(i16<0.04071816802024841){
     s0+=279.0;
     s1+=26.0;
    } else {
     s0+=46.0;
     s1+=103.0;
    }
   } else {
    if(i57<-8.372480806428939e-05){
     s0+=13.0;
    } else {
     s0+=89.0;
     s1+=2652.0;
    }
   }
  } else {
   if(i33<0.0010128039866685867){
    s1+=355.0;
   } else {
    if(i18<0.19099172949790955){
     s0+=2501.0;
     s1+=563.0;
    } else {
     s0+=64.0;
     s1+=259.0;
    }
   }
  }
 }
} else {
 if(i51<-1.3135289009369444e-05){
  if(i13<0.0019231438636779785){
   if(i37<-0.0002841149689629674){
    if(i15<0.002800425048917532){
     s0+=230.0;
     s1+=362.0;
    } else {
     s0+=92.0;
     s1+=1974.0;
    }
   } else {
    if(i14<0.0002784121024888009){
     s1+=215.0;
    } else {
     s0+=348.0;
     s1+=8.0;
    }
   }
  } else {
   if(i38<1.1179208755493164){
    if(i35<1.116863489151001){
     s0+=10.0;
     s1+=1011.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=9776.0;
   }
  }
 } else {
  if(i51<-1.0836871297215112e-05){
   if(i56<-0.00017214221588801593){
    s1+=7.0;
   } else {
    s0+=16.0;
   }
  } else {
   s0+=236.0;
  }
 }
}
if(i2<1.0038622617721558){
 if(i18<0.220411479473114){
  if(i4<1.901388168334961e-05){
   if(i27<1.1162974834442139){
    if(i8<0.0035363940987735987){
     s0+=25270.0;
     s1+=734.0;
    } else {
     s0+=3122.0;
     s1+=2114.0;
    }
   } else {
    if(i35<1.122455358505249){
     s0+=77249.0;
     s1+=574.0;
    } else {
     s0+=2578.0;
     s1+=459.0;
    }
   }
  } else {
   if(i8<0.004170415457338095){
    if(i10<1.0080232620239258){
     s0+=2200.0;
     s1+=22.0;
    } else {
     s0+=17.0;
     s1+=20.0;
    }
   } else {
    if(i2<1.0001566410064697){
     s0+=1043.0;
     s1+=210.0;
    } else {
     s0+=619.0;
     s1+=1405.0;
    }
   }
  }
 } else {
  if(i8<0.005653864704072475){
   if(i0<2.09808349609375e-05){
    if(i53<1.0020051002502441){
     s0+=172.0;
    } else {
     s0+=35.0;
     s1+=9.0;
    }
   } else {
    if(i43<0.0019818334840238094){
     s0+=12.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i25<0.0020996311213821173){
    s0+=3.0;
   } else {
    if(i15<0.0014208556385710835){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=1031.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007030460983514786){
  if(i31<0.00043808657210320234){
   if(i20<1.0101463794708252){
    if(i2<1.0085883140563965){
     s0+=1065.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=681.0;
   }
  } else {
   if(i17<1.0151169300079346){
    if(i32<1.1599657535552979){
     s0+=490.0;
     s1+=1444.0;
    } else {
     s0+=55.0;
     s1+=2539.0;
    }
   } else {
    if(i13<-0.0018270015716552734){
     s0+=43.0;
     s1+=82.0;
    } else {
     s0+=75.0;
     s1+=12877.0;
    }
   }
  }
 } else {
  if(i21<0.07715916633605957){
   s0+=2587.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i2<1.003851056098938){
 if(i16<0.2041371464729309){
  if(i15<0.001719493418931961){
   if(i29<0.0004942368250340223){
    if(i9<0.9955049753189087){
     s0+=1996.0;
     s1+=446.0;
    } else {
     s0+=22273.0;
     s1+=267.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=63293.0;
     s1+=99.0;
    } else {
     s0+=2072.0;
     s1+=155.0;
    }
   }
  } else {
   if(i2<0.9984995126724243){
    if(i35<1.1840684413909912){
     s0+=17767.0;
     s1+=612.0;
    } else {
     s0+=30.0;
     s1+=80.0;
    }
   } else {
    if(i23<0.04213899374008179){
     s0+=1988.0;
     s1+=383.0;
    } else {
     s0+=2672.0;
     s1+=3259.0;
    }
   }
  }
 } else {
  if(i21<0.03080008551478386){
   if(i29<0.0023741950280964375){
    s0+=140.0;
   } else {
    if(i5<8.445978164672852e-05){
     s0+=89.0;
     s1+=6.0;
    } else {
     s0+=18.0;
     s1+=76.0;
    }
   }
  } else {
   if(i59<1.5924015045166016){
    if(i51<-7.0500950641871896e-06){
     s0+=18.0;
     s1+=1087.0;
    } else {
     s0+=5.0;
    }
   } else {
    s0+=20.0;
   }
  }
 }
} else {
 if(i14<0.0007046828395687044){
  if(i15<0.0009808905888348818){
   if(i63<-6.539840796904173e-06){
    if(i1<0.0017209649085998535){
     s0+=5.0;
    } else {
     s1+=302.0;
    }
   } else {
    s0+=1154.0;
   }
  } else {
   if(i13<0.001242995262145996){
    if(i54<0.0017024404369294643){
     s0+=447.0;
     s1+=1250.0;
    } else {
     s0+=138.0;
     s1+=2911.0;
    }
   } else {
    if(i51<-0.0001852280693128705){
     s0+=5.0;
    } else {
     s0+=11.0;
     s1+=13137.0;
    }
   }
  }
 } else {
  if(i56<-0.0037458748556673527){
   s1+=1.0;
  } else {
   s0+=2648.0;
  }
 }
}
if(i22<1.017118215560913){
 if(i53<1.0068693161010742){
  if(i4<1.6391277313232422e-05){
   if(i24<0.000879976199939847){
    if(i8<0.0034599469508975744){
     s0+=26884.0;
     s1+=766.0;
    } else {
     s0+=3063.0;
     s1+=1830.0;
    }
   } else {
    if(i61<0.6278901100158691){
     s0+=75957.0;
     s1+=743.0;
    } else {
     s0+=169.0;
     s1+=134.0;
    }
   }
  } else {
   if(i37<-0.00021149478561710566){
    if(i8<0.004351779352873564){
     s0+=495.0;
     s1+=41.0;
    } else {
     s0+=330.0;
     s1+=1942.0;
    }
   } else {
    if(i1<0.0012400150299072266){
     s0+=5813.0;
     s1+=883.0;
    } else {
     s0+=480.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i13<-0.004020810127258301){
   if(i2<1.0010037422180176){
    if(i41<1.0510298013687134){
     s0+=809.0;
     s1+=49.0;
    } else {
     s0+=59.0;
     s1+=99.0;
    }
   } else {
    if(i7<1.007347583770752){
     s0+=69.0;
     s1+=57.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i1<0.0017488598823547363){
    if(i43<0.004189246334135532){
     s0+=691.0;
     s1+=149.0;
    } else {
     s0+=164.0;
     s1+=973.0;
    }
   } else {
    if(i63<4.382173756312113e-06){
     s0+=30.0;
     s1+=1764.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i51<-1.1855763659696095e-05){
  if(i32<1.1712557077407837){
   if(i29<0.001162579981610179){
    if(i24<0.0011035362258553505){
     s1+=1236.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i67<0.002067863941192627){
     s0+=550.0;
     s1+=178.0;
    } else {
     s0+=294.0;
     s1+=849.0;
    }
   }
  } else {
   if(i26<-0.0006738901138305664){
    if(i41<1.1931792497634888){
     s0+=26.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i3<-7.481368083972484e-05){
     s0+=5.0;
     s1+=11437.0;
    } else {
     s0+=59.0;
     s1+=538.0;
    }
   }
  }
 } else {
  if(i42<1.165590037999209e-05){
   if(i56<-0.00010484980884939432){
    s0+=388.0;
   } else {
    if(i5<0.00046563148498535156){
     s0+=124.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   }
  } else {
   if(i9<1.0123296976089478){
    if(i1<-0.0005678236484527588){
     s0+=63.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    s1+=18.0;
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i3<-8.215755951823667e-05){
  if(i16<0.0496058464050293){
   if(i70<0.04147842153906822){
    if(i29<0.009204195812344551){
     s0+=115.0;
     s1+=30.0;
    } else {
     s0+=844.0;
     s1+=11.0;
    }
   } else {
    if(i59<0.9440493583679199){
     s0+=71.0;
     s1+=64.0;
    } else {
     s1+=57.0;
    }
   }
  } else {
   if(i37<-0.00030225602677091956){
    if(i39<0.011230365373194218){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=53.0;
     s1+=1873.0;
    }
   } else {
    if(i24<0.002230937359854579){
     s0+=36.0;
    } else {
     s0+=81.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i15<0.001729308976791799){
   if(i65<-0.00038892030715942383){
    if(i32<1.0742530822753906){
     s0+=3455.0;
     s1+=487.0;
    } else {
     s0+=11905.0;
     s1+=72.0;
    }
   } else {
    if(i24<0.00027866201708093286){
     s0+=18007.0;
     s1+=275.0;
    } else {
     s0+=58501.0;
     s1+=184.0;
    }
   }
  } else {
   if(i25<0.0012081312015652657){
    if(i24<0.00023634592071175575){
     s0+=1788.0;
     s1+=16.0;
    } else {
     s0+=733.0;
     s1+=2882.0;
    }
   } else {
    if(i22<1.0175111293792725){
     s0+=18653.0;
     s1+=1156.0;
    } else {
     s0+=383.0;
     s1+=451.0;
    }
   }
  }
 }
} else {
 if(i24<0.002340645296499133){
  if(i27<1.116804838180542){
   if(i14<0.0005911602056585252){
    s1+=2404.0;
   } else {
    s0+=85.0;
   }
  } else {
   s0+=1924.0;
  }
 } else {
  if(i19<0.9565860629081726){
   if(i48<1.00299072265625){
    if(i21<0.06206987053155899){
     s0+=64.0;
     s1+=6.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i21<0.16850224137306213){
     s0+=2.0;
     s1+=102.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   }
  } else {
   if(i23<0.09780171513557434){
    if(i14<0.0004040567437186837){
     s0+=8.0;
     s1+=440.0;
    } else {
     s0+=43.0;
     s1+=66.0;
    }
   } else {
    if(i23<0.1460624635219574){
     s0+=15.0;
     s1+=892.0;
    } else {
     s0+=2.0;
     s1+=12428.0;
    }
   }
  }
 }
}
if(i69<1.030983567237854){
 if(i5<0.0008875131607055664){
  if(i39<0.21735501289367676){
   if(i17<1.0181350708007812){
    if(i4<1.0311603546142578e-05){
     s0+=101007.0;
     s1+=2555.0;
    } else {
     s0+=10443.0;
     s1+=2347.0;
    }
   } else {
    if(i31<0.0008499420364387333){
     s0+=329.0;
     s1+=35.0;
    } else {
     s0+=125.0;
     s1+=499.0;
    }
   }
  } else {
   if(i8<0.012508507817983627){
    if(i42<5.283085920382291e-05){
     s1+=1.0;
    } else {
     s0+=85.0;
    }
   } else {
    if(i60<0.0050718337297439575){
     s1+=327.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i11<1.0113439559936523){
   if(i56<0.0008016244973987341){
    if(i27<1.116804838180542){
     s0+=134.0;
     s1+=881.0;
    } else {
     s0+=2302.0;
     s1+=263.0;
    }
   } else {
    if(i18<0.04073980450630188){
     s0+=265.0;
     s1+=143.0;
    } else {
     s0+=283.0;
     s1+=1899.0;
    }
   }
  } else {
   if(i18<0.054371148347854614){
    if(i0<0.0001284480094909668){
     s0+=33.0;
     s1+=37.0;
    } else {
     s0+=5.0;
     s1+=114.0;
    }
   } else {
    if(i50<-6.1751416069455445e-06){
     s0+=11.0;
    } else {
     s0+=19.0;
     s1+=2982.0;
    }
   }
  }
 }
} else {
 if(i7<1.0015225410461426){
  if(i8<0.006716242991387844){
   if(i33<0.0019404164049774408){
    if(i67<-0.0011219382286071777){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=516.0;
    }
   } else {
    if(i57<-4.018835170427337e-06){
     s0+=86.0;
     s1+=38.0;
    } else {
     s0+=193.0;
     s1+=3.0;
    }
   }
  } else {
   if(i38<1.1209516525268555){
    if(i33<0.001613248372450471){
     s1+=73.0;
    } else {
     s0+=57.0;
     s1+=1.0;
    }
   } else {
    s1+=299.0;
   }
  }
 } else {
  if(i37<-0.00025697197997942567){
   if(i25<0.006728935055434704){
    if(i27<1.3443186283111572){
     s0+=28.0;
     s1+=1941.0;
    } else {
     s0+=166.0;
     s1+=342.0;
    }
   } else {
    if(i13<-0.004737287759780884){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=8739.0;
    }
   }
  } else {
   if(i2<1.0102190971374512){
    if(i38<1.1705718040466309){
     s0+=451.0;
     s1+=150.0;
    } else {
     s1+=76.0;
    }
   } else {
    s1+=550.0;
   }
  }
 }
}
if(i0<6.300210952758789e-05){
 if(i8<0.007090138271450996){
  if(i5<0.0002582669258117676){
   if(i36<1.0905578136444092){
    if(i14<0.0001517168857390061){
     s0+=18775.0;
     s1+=420.0;
    } else {
     s0+=5219.0;
     s1+=1187.0;
    }
   } else {
    if(i35<1.122455358505249){
     s0+=70804.0;
     s1+=445.0;
    } else {
     s0+=2246.0;
     s1+=132.0;
    }
   }
  } else {
   if(i21<0.00847284123301506){
    if(i26<0.00014632940292358398){
     s0+=8786.0;
     s1+=200.0;
    } else {
     s0+=317.0;
     s1+=112.0;
    }
   } else {
    if(i28<0.00042939186096191406){
     s0+=416.0;
     s1+=1301.0;
    } else {
     s0+=1212.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i1<-0.000505298376083374){
   if(i16<0.16387954354286194){
    if(i48<1.004089117050171){
     s0+=5458.0;
     s1+=214.0;
    } else {
     s0+=102.0;
     s1+=70.0;
    }
   } else {
    if(i27<1.2326858043670654){
     s0+=57.0;
    } else {
     s0+=20.0;
     s1+=333.0;
    }
   }
  } else {
   if(i16<0.026983678340911865){
    if(i65<-0.0032475292682647705){
     s0+=355.0;
     s1+=55.0;
    } else {
     s0+=27.0;
     s1+=45.0;
    }
   } else {
    if(i23<0.053363025188446045){
     s0+=93.0;
     s1+=100.0;
    } else {
     s0+=181.0;
     s1+=3109.0;
    }
   }
  }
 }
} else {
 if(i8<0.0034817690029740334){
  if(i27<1.116804838180542){
   if(i34<1.0548467636108398){
    s0+=78.0;
   } else {
    s1+=510.0;
   }
  } else {
   if(i36<1.1843671798706055){
    s0+=1659.0;
   } else {
    if(i11<1.0109591484069824){
     s0+=19.0;
    } else {
     s1+=209.0;
    }
   }
  }
 } else {
  if(i14<0.0007047191611491144){
   if(i0<0.0008130669593811035){
    if(i7<0.9978751540184021){
     s0+=15.0;
     s1+=8.0;
    } else {
     s0+=186.0;
     s1+=15877.0;
    }
   } else {
    s0+=15.0;
   }
  } else {
   s0+=320.0;
  }
 }
}
if(i4<2.4378299713134766e-05){
 if(i8<0.0037864549085497856){
  if(i27<1.1162974834442139){
   if(i65<-0.00034242868423461914){
    if(i0<-4.4345855712890625e-05){
     s0+=2614.0;
     s1+=32.0;
    } else {
     s0+=1555.0;
     s1+=605.0;
    }
   } else {
    if(i21<0.007803395390510559){
     s0+=19981.0;
     s1+=106.0;
    } else {
     s0+=2310.0;
     s1+=199.0;
    }
   }
  } else {
   if(i32<1.1317236423492432){
    s0+=48408.0;
   } else {
    if(i7<1.0006375312805176){
     s0+=9463.0;
     s1+=18.0;
    } else {
     s0+=3844.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i0<-2.5093555450439453e-05){
   if(i23<0.20468762516975403){
    if(i70<0.023493818938732147){
     s0+=20337.0;
     s1+=504.0;
    } else {
     s0+=339.0;
     s1+=167.0;
    }
   } else {
    if(i57<-1.6413926005043322e-06){
     s0+=32.0;
     s1+=263.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i7<1.0000662803649902){
    if(i8<0.013758295215666294){
     s0+=869.0;
     s1+=49.0;
    } else {
     s1+=157.0;
    }
   } else {
    if(i21<0.008048063144087791){
     s0+=308.0;
     s1+=201.0;
    } else {
     s0+=198.0;
     s1+=3205.0;
    }
   }
  }
 }
} else {
 if(i25<0.0026352473068982363){
  if(i24<0.0009706164710223675){
   if(i24<0.0002477379166521132){
    s0+=1104.0;
   } else {
    s1+=2761.0;
   }
  } else {
   if(i39<0.038524508476257324){
    if(i21<0.01549468468874693){
     s0+=3403.0;
    } else {
     s0+=12.0;
     s1+=6.0;
    }
   } else {
    if(i14<0.0002003736444748938){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i41<1.0529450178146362){
   if(i26<0.00016373395919799805){
    if(i68<0.002843140624463558){
     s0+=565.0;
     s1+=32.0;
    } else {
     s0+=473.0;
     s1+=394.0;
    }
   } else {
    s1+=261.0;
   }
  } else {
   if(i16<0.10193729400634766){
    if(i51<-3.9630183891858906e-05){
     s0+=81.0;
     s1+=543.0;
    } else {
     s0+=280.0;
     s1+=241.0;
    }
   } else {
    if(i34<1.1757044792175293){
     s0+=19.0;
     s1+=64.0;
    } else {
     s0+=137.0;
     s1+=14345.0;
    }
   }
  }
 }
}
if(i1<0.0009595751762390137){
 if(i5<0.00032275915145874023){
  if(i23<0.23277127742767334){
   if(i31<0.0006955903954803944){
    if(i57<-6.708501132379752e-06){
     s0+=19.0;
     s1+=6.0;
    } else {
     s0+=75761.0;
     s1+=369.0;
    }
   } else {
    if(i33<0.001045519020408392){
     s0+=1884.0;
     s1+=1799.0;
    } else {
     s0+=26962.0;
     s1+=807.0;
    }
   }
  } else {
   if(i39<0.10484683513641357){
    if(i3<-3.52638671756722e-05){
     s0+=3.0;
     s1+=30.0;
    } else {
     s0+=95.0;
     s1+=6.0;
    }
   } else {
    if(i8<0.005908806808292866){
     s0+=8.0;
    } else {
     s1+=262.0;
    }
   }
  }
 } else {
  if(i37<-0.0002002612891374156){
   if(i23<0.05740812420845032){
    if(i39<0.1450289785861969){
     s0+=724.0;
     s1+=195.0;
    } else {
     s0+=5.0;
     s1+=37.0;
    }
   } else {
    if(i14<0.0007037715404294431){
     s0+=674.0;
     s1+=3108.0;
    } else {
     s0+=110.0;
     s1+=1.0;
    }
   }
  } else {
   if(i47<1.5622192222508602e-05){
    if(i32<1.0773630142211914){
     s0+=2379.0;
     s1+=280.0;
    } else {
     s0+=3635.0;
     s1+=3.0;
    }
   } else {
    if(i26<-0.00018554925918579102){
     s0+=1730.0;
     s1+=287.0;
    } else {
     s0+=536.0;
     s1+=705.0;
    }
   }
  }
 }
} else {
 if(i21<0.007982158102095127){
  if(i24<0.0009846989996731281){
   if(i28<0.0006195008754730225){
    s1+=1523.0;
   } else {
    s0+=79.0;
   }
  } else {
   if(i27<1.1979892253875732){
    s0+=1686.0;
   } else {
    if(i48<1.0019581317901611){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=546.0;
    }
   }
  }
 } else {
  if(i36<1.1688169240951538){
   if(i43<0.0010460136691108346){
    s1+=848.0;
   } else {
    if(i22<1.0367481708526611){
     s0+=258.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i19<0.955398440361023){
    if(i52<9.238719940185547e-06){
     s0+=40.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=95.0;
    }
   } else {
    if(i45<0.08552074432373047){
     s0+=45.0;
     s1+=1583.0;
    } else {
     s0+=13.0;
     s1+=11680.0;
    }
   }
  }
 }
}
if(i3<-8.453788905171677e-05){
 if(i23<0.041282445192337036){
  if(i70<0.03680142015218735){
   if(i20<1.015360951423645){
    if(i7<1.0057625770568848){
     s0+=812.0;
     s1+=12.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   } else {
    s1+=24.0;
   }
  } else {
   if(i59<0.946190357208252){
    if(i49<0.12490084022283554){
     s0+=84.0;
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=48.0;
    }
   } else {
    if(i55<1.000076174736023){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i57<-5.673414852935821e-05){
   s0+=77.0;
  } else {
   if(i36<1.162848949432373){
    if(i25<0.0014624269679188728){
     s0+=30.0;
     s1+=976.0;
    } else {
     s0+=278.0;
     s1+=3.0;
    }
   } else {
    if(i67<-0.015328139066696167){
     s0+=59.0;
     s1+=37.0;
    } else {
     s0+=107.0;
     s1+=15012.0;
    }
   }
  }
 }
} else {
 if(i4<1.8537044525146484e-05){
  if(i17<1.0182600021362305){
   if(i31<0.000691623892635107){
    if(i26<-5.3942203521728516e-05){
     s0+=22354.0;
     s1+=270.0;
    } else {
     s0+=54820.0;
     s1+=85.0;
    }
   } else {
    if(i2<0.9979000091552734){
     s0+=22647.0;
     s1+=418.0;
    } else {
     s0+=7219.0;
     s1+=2819.0;
    }
   }
  } else {
   if(i21<0.02720746025443077){
    if(i55<1.0016608238220215){
     s0+=434.0;
     s1+=2.0;
    } else {
     s0+=159.0;
     s1+=81.0;
    }
   } else {
    if(i20<0.9934647083282471){
     s0+=44.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=259.0;
    }
   }
  }
 } else {
  if(i22<1.017756462097168){
   if(i39<0.009291689842939377){
    if(i8<0.0043785967864096165){
     s0+=3486.0;
     s1+=152.0;
    } else {
     s0+=86.0;
     s1+=238.0;
    }
   } else {
    if(i32<1.0905089378356934){
     s0+=53.0;
     s1+=984.0;
    } else {
     s0+=3236.0;
     s1+=1181.0;
    }
   }
  } else {
   if(i43<0.001023004064336419){
    if(i33<0.002203522250056267){
     s1+=661.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i32<1.1824626922607422){
     s0+=579.0;
     s1+=229.0;
    } else {
     s0+=59.0;
     s1+=593.0;
    }
   }
  }
 }
}
if(i9<1.0146253108978271){
 if(i0<6.335973739624023e-05){
  if(i5<0.0003268122673034668){
   if(i17<1.031670093536377){
    if(i16<0.2311956286430359){
     s0+=104857.0;
     s1+=2961.0;
    } else {
     s0+=60.0;
     s1+=147.0;
    }
   } else {
    if(i26<7.399916648864746e-05){
     s0+=9.0;
     s1+=70.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i8<0.0041457777842879295){
    if(i8<0.0036414326168596745){
     s0+=6604.0;
     s1+=56.0;
    } else {
     s0+=449.0;
     s1+=92.0;
    }
   } else {
    if(i33<0.001140256179496646){
     s0+=75.0;
     s1+=1031.0;
    } else {
     s0+=2114.0;
     s1+=2178.0;
    }
   }
  }
 } else {
  if(i8<0.003987208474427462){
   if(i29<0.0007126371492631733){
    if(i43<0.00017323222709819674){
     s0+=75.0;
    } else {
     s1+=390.0;
    }
   } else {
    if(i67<-0.0015442967414855957){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=1200.0;
    }
   }
  } else {
   if(i34<1.1757044792175293){
    if(i43<0.0008165409089997411){
     s0+=4.0;
     s1+=586.0;
    } else {
     s0+=216.0;
     s1+=29.0;
    }
   } else {
    if(i9<0.9392907619476318){
     s0+=38.0;
     s1+=105.0;
    } else {
     s0+=49.0;
     s1+=2334.0;
    }
   }
  }
 }
} else {
 if(i6<1.0193020105361938){
  if(i50<-5.903388228034601e-06){
   s0+=239.0;
  } else {
   if(i8<0.0027998825535178185){
    if(i63<-6.771739663236076e-06){
     s1+=85.0;
    } else {
     s0+=367.0;
     s1+=13.0;
    }
   } else {
    if(i32<1.6238889694213867){
     s0+=108.0;
     s1+=1644.0;
    } else {
     s0+=105.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i51<-1.0678470971470233e-05){
   if(i0<-3.898143768310547e-05){
    if(i21<0.0692373663187027){
     s0+=70.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i52<3.3974647521972656e-05){
     s0+=70.0;
     s1+=12248.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   s0+=110.0;
  }
 }
}
if(i4<2.3424625396728516e-05){
 if(i16<0.2165633738040924){
  if(i31<0.0007107695564627647){
   if(i51<-1.8774631826090626e-05){
    if(i53<1.002845048904419){
     s1+=28.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i25<0.0003286850987933576){
     s0+=19571.0;
     s1+=312.0;
    } else {
     s0+=59995.0;
     s1+=150.0;
    }
   }
  } else {
   if(i24<0.0009228305425494909){
    if(i38<1.0379329919815063){
     s0+=2199.0;
     s1+=683.0;
    } else {
     s0+=386.0;
     s1+=2325.0;
    }
   } else {
    if(i4<1.150369644165039e-05){
     s0+=26295.0;
     s1+=532.0;
    } else {
     s0+=1852.0;
     s1+=709.0;
    }
   }
  }
 } else {
  if(i38<1.6811659336090088){
   if(i21<0.03485899791121483){
    if(i5<3.254413604736328e-05){
     s0+=92.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=52.0;
    }
   } else {
    if(i24<0.002499145455658436){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=639.0;
    }
   }
  } else {
   s0+=37.0;
  }
 }
} else {
 if(i21<0.007952049374580383){
  if(i52<1.341104507446289e-05){
   if(i2<1.0051980018615723){
    if(i28<0.0003292560577392578){
     s0+=39.0;
     s1+=55.0;
    } else {
     s0+=1556.0;
     s1+=32.0;
    }
   } else {
    if(i28<0.0006884634494781494){
     s0+=29.0;
     s1+=1696.0;
    } else {
     s0+=343.0;
     s1+=106.0;
    }
   }
  } else {
   if(i33<0.0033435113728046417){
    if(i29<0.0037143919616937637){
     s0+=2392.0;
     s1+=19.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i1<0.0007863640785217285){
     s0+=21.0;
     s1+=1.0;
    } else {
     s1+=134.0;
    }
   }
  }
 } else {
  if(i1<5.4836273193359375e-05){
   if(i43<0.011863524094223976){
    if(i2<1.0024287700653076){
     s0+=807.0;
     s1+=160.0;
    } else {
     s0+=7.0;
     s1+=46.0;
    }
   } else {
    if(i14<0.00025229027960449457){
     s0+=47.0;
     s1+=2.0;
    } else {
     s0+=46.0;
     s1+=217.0;
    }
   }
  } else {
   if(i1<0.0014090538024902344){
    if(i52<2.288818359375e-05){
     s0+=709.0;
     s1+=3695.0;
    } else {
     s0+=150.0;
     s1+=4.0;
    }
   } else {
    if(i14<0.0007150453748181462){
     s0+=41.0;
     s1+=12577.0;
    } else {
     s0+=43.0;
    }
   }
  }
 }
}
if(i10<1.0126030445098877){
 if(i17<1.0181578397750854){
  if(i7<1.0026252269744873){
   if(i36<1.0905578136444092){
    if(i34<1.05497145652771){
     s0+=21012.0;
     s1+=165.0;
    } else {
     s0+=5114.0;
     s1+=2592.0;
    }
   } else {
    if(i8<0.018215615302324295){
     s0+=83409.0;
     s1+=1316.0;
    } else {
     s0+=156.0;
     s1+=313.0;
    }
   }
  } else {
   if(i67<-0.0008170008659362793){
    if(i41<1.0849632024765015){
     s0+=1321.0;
     s1+=1247.0;
    } else {
     s0+=123.0;
     s1+=1645.0;
    }
   } else {
    if(i14<0.000244710361585021){
     s0+=465.0;
     s1+=904.0;
    } else {
     s0+=3205.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i21<0.02712932415306568){
   if(i36<1.0978162288665771){
    s1+=285.0;
   } else {
    if(i28<0.0005249977111816406){
     s0+=519.0;
     s1+=243.0;
    } else {
     s0+=545.0;
     s1+=32.0;
    }
   }
  } else {
   if(i26<-0.0003344714641571045){
    if(i58<0.061283886432647705){
     s0+=96.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=148.0;
    }
   } else {
    if(i57<-2.280043645441765e-06){
     s0+=15.0;
     s1+=2037.0;
    } else {
     s0+=42.0;
    }
   }
  }
 }
} else {
 if(i3<-7.314511458389461e-05){
  if(i39<0.0057978276163339615){
   if(i22<1.0180304050445557){
    if(i46<0.0010467353276908398){
     s1+=54.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i52<-0.000156402587890625){
     s0+=1.0;
    } else {
     s1+=140.0;
    }
   }
  } else {
   if(i44<0.9981962442398071){
    s0+=4.0;
   } else {
    if(i35<1.100538730621338){
     s0+=13.0;
     s1+=1548.0;
    } else {
     s0+=1.0;
     s1+=10983.0;
    }
   }
  }
 } else {
  if(i57<-1.1862113751703873e-05){
   if(i14<0.0003093976411037147){
    s1+=25.0;
   } else {
    if(i56<0.0010948404669761658){
     s0+=310.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.00012606382369995117){
    s0+=36.0;
   } else {
    if(i21<0.0032990346662700176){
     s0+=6.0;
     s1+=52.0;
    } else {
     s1+=472.0;
    }
   }
  }
 }
}
if(i3<-9.840897837420925e-05){
 if(i69<0.8917868137359619){
  if(i35<1.123843789100647){
   if(i22<0.9109088182449341){
    if(i36<1.5545397996902466){
     s0+=425.0;
     s1+=13.0;
    } else {
     s0+=58.0;
     s1+=19.0;
    }
   } else {
    if(i35<1.118544578552246){
     s0+=5.0;
     s1+=30.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  } else {
   if(i56<0.014370948076248169){
    if(i49<0.19353002309799194){
     s0+=26.0;
     s1+=41.0;
    } else {
     s0+=2.0;
     s1+=280.0;
    }
   } else {
    if(i3<-0.00015155950677581131){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=20.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i44<0.9979528188705444){
   s0+=171.0;
  } else {
   if(i52<5.692243576049805e-05){
    if(i23<0.03669729828834534){
     s0+=135.0;
     s1+=55.0;
    } else {
     s0+=59.0;
     s1+=14752.0;
    }
   } else {
    s0+=74.0;
   }
  }
 }
} else {
 if(i7<1.002427101135254){
  if(i21<0.006775497458875179){
   if(i9<0.9940693974494934){
    if(i3<-3.2887523957469966e-06){
     s0+=1693.0;
     s1+=293.0;
    } else {
     s0+=2153.0;
     s1+=5.0;
    }
   } else {
    if(i29<0.0020924629643559456){
     s0+=64384.0;
     s1+=242.0;
    } else {
     s0+=356.0;
     s1+=40.0;
    }
   }
  } else {
   if(i10<1.0020384788513184){
    if(i36<1.1160998344421387){
     s0+=8678.0;
     s1+=1797.0;
    } else {
     s0+=30541.0;
     s1+=605.0;
    }
   } else {
    if(i51<-8.960898412624374e-06){
     s0+=555.0;
     s1+=1428.0;
    } else {
     s0+=1054.0;
    }
   }
  }
 } else {
  if(i6<1.0153173208236694){
   if(i58<0.03195252642035484){
    if(i15<0.001888768281787634){
     s0+=3349.0;
     s1+=348.0;
    } else {
     s0+=1769.0;
     s1+=1349.0;
    }
   } else {
    if(i0<3.993511199951172e-06){
     s0+=585.0;
     s1+=175.0;
    } else {
     s0+=251.0;
     s1+=843.0;
    }
   }
  } else {
   if(i3<-3.3227672247448936e-05){
    if(i72<1.5431037354574073e-06){
     s0+=255.0;
     s1+=1584.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   } else {
    if(i58<0.05749901384115219){
     s0+=172.0;
     s1+=29.0;
    } else {
     s0+=11.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i2<1.0037096738815308){
 if(i15<0.0017227325588464737){
  if(i3<-6.514229608001187e-05){
   if(i2<1.0021244287490845){
    if(i5<0.00014728307723999023){
     s0+=151.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=60.0;
   }
  } else {
   if(i31<0.0005506498273462057){
    if(i24<0.0019596852362155914){
     s0+=65794.0;
     s1+=82.0;
    } else {
     s0+=3378.0;
     s1+=96.0;
    }
   } else {
    if(i35<1.0239198207855225){
     s0+=3258.0;
     s1+=476.0;
    } else {
     s0+=16767.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i1<-0.000390470027923584){
   if(i23<0.22077828645706177){
    if(i25<0.0007084591779857874){
     s0+=301.0;
     s1+=249.0;
    } else {
     s0+=18240.0;
     s1+=677.0;
    }
   } else {
    if(i8<0.00724672619253397){
     s0+=31.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=254.0;
    }
   }
  } else {
   if(i39<0.011108295992016792){
    if(i32<1.0452228784561157){
     s0+=1427.0;
     s1+=4.0;
    } else {
     s0+=831.0;
     s1+=294.0;
    }
   } else {
    if(i21<0.010174248367547989){
     s0+=813.0;
     s1+=231.0;
    } else {
     s0+=726.0;
     s1+=3912.0;
    }
   }
  }
 }
} else {
 if(i8<0.0039853788912296295){
  if(i14<0.0002061518025584519){
   if(i0<4.869699478149414e-05){
    if(i17<1.0211995840072632){
     s0+=87.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i50<-1.4593109881388955e-05){
     s0+=12.0;
    } else {
     s1+=952.0;
    }
   }
  } else {
   if(i13<0.00309830904006958){
    if(i29<0.00027933804085478187){
     s0+=703.0;
     s1+=2.0;
    } else {
     s0+=3154.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i8<0.00448131887242198){
   if(i32<1.0905089378356934){
    s1+=210.0;
   } else {
    if(i34<1.1580171585083008){
     s0+=168.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=93.0;
    }
   }
  } else {
   if(i63<1.3366570783546194e-05){
    if(i2<1.0073254108428955){
     s0+=275.0;
     s1+=3550.0;
    } else {
     s0+=9.0;
     s1+=13153.0;
    }
   } else {
    if(i44<0.9973767995834351){
     s0+=25.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i13<0.0013867020606994629){
 if(i45<0.17940902709960938){
  if(i6<1.013148546218872){
   if(i1<0.0010579228401184082){
    if(i15<0.0017322666244581342){
     s0+=90617.0;
     s1+=912.0;
    } else {
     s0+=22702.0;
     s1+=4873.0;
    }
   } else {
    if(i21<0.014609220437705517){
     s0+=648.0;
     s1+=284.0;
    } else {
     s0+=77.0;
     s1+=879.0;
    }
   }
  } else {
   if(i39<0.030162179842591286){
    if(i54<0.0007089573191478848){
     s0+=71.0;
     s1+=245.0;
    } else {
     s0+=592.0;
     s1+=115.0;
    }
   } else {
    if(i0<1.4603137969970703e-05){
     s0+=195.0;
     s1+=93.0;
    } else {
     s0+=86.0;
     s1+=995.0;
    }
   }
  }
 } else {
  if(i3<-3.857706906273961e-05){
   if(i25<0.001980510074645281){
    s0+=33.0;
   } else {
    if(i57<-2.987832658618572e-06){
     s0+=17.0;
     s1+=2573.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<0.007488503120839596){
    if(i26<-0.0004642307758331299){
     s0+=62.0;
     s1+=23.0;
    } else {
     s0+=567.0;
     s1+=10.0;
    }
   } else {
    if(i57<3.5822154131892603e-07){
     s1+=144.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i33<0.002421765588223934){
  if(i28<0.0005125701427459717){
   if(i44<0.9993897676467896){
    s0+=116.0;
   } else {
    if(i36<1.124699592590332){
     s0+=10.0;
     s1+=1926.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   s0+=732.0;
  }
 } else {
  if(i5<0.00034102797508239746){
   if(i47<4.411378540680744e-06){
    if(i28<-0.0004366934299468994){
     s1+=3.0;
    } else {
     s0+=102.0;
    }
   } else {
    s1+=68.0;
   }
  } else {
   if(i2<1.003772258758545){
    if(i24<0.009648624807596207){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=11042.0;
   }
  }
 }
}
if(i4<2.3066997528076172e-05){
 if(i17<1.0181578397750854){
  if(i3<-0.0001100653171306476){
   if(i45<0.040445536375045776){
    if(i15<0.007635193876922131){
     s0+=165.0;
     s1+=12.0;
    } else {
     s0+=20.0;
     s1+=23.0;
    }
   } else {
    if(i19<0.9126685857772827){
     s0+=7.0;
    } else {
     s0+=9.0;
     s1+=315.0;
    }
   }
  } else {
   if(i28<8.422136306762695e-05){
    if(i8<0.015154097229242325){
     s0+=78448.0;
     s1+=895.0;
    } else {
     s0+=18.0;
     s1+=47.0;
    }
   } else {
    if(i58<0.016411541029810905){
     s0+=19502.0;
     s1+=1078.0;
    } else {
     s0+=11230.0;
     s1+=2162.0;
    }
   }
  }
 } else {
  if(i51<-9.23906009120401e-06){
   if(i55<1.004709243774414){
    if(i38<1.1220200061798096){
     s0+=95.0;
     s1+=275.0;
    } else {
     s0+=16.0;
     s1+=750.0;
    }
   } else {
    if(i68<-0.0018694804748520255){
     s1+=10.0;
    } else {
     s0+=122.0;
     s1+=3.0;
    }
   }
  } else {
   if(i53<1.0047640800476074){
    if(i13<-0.0032408833503723145){
     s1+=1.0;
    } else {
     s0+=519.0;
     s1+=11.0;
    }
   } else {
    if(i60<-1.25536898849532e-05){
     s1+=9.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i14<0.000704434234648943){
  if(i8<0.004073223564773798){
   if(i47<-1.930246435222216e-05){
    if(i44<1.002340316772461){
     s0+=27.0;
     s1+=885.0;
    } else {
     s0+=22.0;
     s1+=2.0;
    }
   } else {
    if(i14<0.0002048987807938829){
     s0+=250.0;
     s1+=100.0;
    } else {
     s0+=1496.0;
     s1+=5.0;
    }
   }
  } else {
   if(i9<0.994907021522522){
    if(i41<1.0529227256774902){
     s0+=859.0;
     s1+=460.0;
    } else {
     s0+=345.0;
     s1+=1858.0;
    }
   } else {
    if(i11<0.9950217008590698){
     s0+=26.0;
     s1+=15.0;
    } else {
     s0+=207.0;
     s1+=15351.0;
    }
   }
  }
 } else {
  if(i20<1.0193076133728027){
   s0+=3207.0;
  } else {
   s1+=2.0;
  }
 }
}
if(i3<-9.285741543862969e-05){
 if(i45<0.018131554126739502){
  if(i17<0.9501985311508179){
   if(i16<0.01815354824066162){
    if(i26<-0.00019562244415283203){
     s0+=625.0;
     s1+=44.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i46<0.0070130666717886925){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=92.0;
    }
   }
  } else {
   if(i10<0.9801336526870728){
    s0+=60.0;
   } else {
    if(i50<-1.081146729120519e-05){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i31<0.0038577537052333355){
   if(i44<0.9981406927108765){
    s0+=53.0;
   } else {
    if(i4<0.0002281665802001953){
     s0+=158.0;
     s1+=15517.0;
    } else {
     s0+=59.0;
    }
   }
  } else {
   if(i46<0.007491681724786758){
    s0+=138.0;
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i0<6.407499313354492e-05){
  if(i31<0.0007264483720064163){
   if(i55<1.0011168718338013){
    if(i33<0.0002701445191632956){
     s0+=14622.0;
     s1+=257.0;
    } else {
     s0+=51720.0;
     s1+=16.0;
    }
   } else {
    if(i39<0.02228899672627449){
     s0+=13730.0;
     s1+=125.0;
    } else {
     s0+=1137.0;
     s1+=198.0;
    }
   }
  } else {
   if(i24<0.0009248446440324187){
    if(i25<0.00020295468857511878){
     s0+=2212.0;
    } else {
     s0+=1178.0;
     s1+=3474.0;
    }
   } else {
    if(i69<1.0360088348388672){
     s0+=28407.0;
     s1+=1438.0;
    } else {
     s0+=338.0;
     s1+=534.0;
    }
   }
  }
 } else {
  if(i21<0.009843448176980019){
   if(i29<0.0009915975388139486){
    if(i29<0.00017266231589019299){
     s0+=69.0;
    } else {
     s1+=1172.0;
    }
   } else {
    if(i8<0.0058251600712537766){
     s0+=1627.0;
    } else {
     s0+=4.0;
     s1+=105.0;
    }
   }
  } else {
   if(i15<0.002035030396655202){
    if(i27<1.1734975576400757){
     s0+=69.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i24<0.01158684678375721){
     s0+=30.0;
     s1+=1258.0;
    } else {
     s0+=60.0;
     s1+=74.0;
    }
   }
  }
 }
}
if(i23<0.19657808542251587){
 if(i0<6.276369094848633e-05){
  if(i9<1.0110883712768555){
   if(i15<0.0017227325588464737){
    if(i27<1.0905578136444092){
     s0+=21761.0;
     s1+=726.0;
    } else {
     s0+=68415.0;
     s1+=262.0;
    }
   } else {
    if(i1<-0.0004591941833496094){
     s0+=18087.0;
     s1+=730.0;
    } else {
     s0+=4245.0;
     s1+=3521.0;
    }
   }
  } else {
   if(i34<1.095010757446289){
    if(i53<0.9990328550338745){
     s0+=1.0;
    } else {
     s1+=527.0;
    }
   } else {
    if(i21<0.02300422079861164){
     s0+=1209.0;
     s1+=163.0;
    } else {
     s0+=108.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i28<0.0007582902908325195){
   if(i28<0.00010329484939575195){
    if(i70<0.031240960583090782){
     s0+=77.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i31<0.0022443868219852448){
     s0+=189.0;
     s1+=4206.0;
    } else {
     s0+=126.0;
     s1+=77.0;
    }
   }
  } else {
   if(i25<0.0027071102522313595){
    s0+=1642.0;
   } else {
    if(i70<0.0034365791361778975){
     s0+=52.0;
     s1+=134.0;
    } else {
     s0+=18.0;
     s1+=945.0;
    }
   }
  }
 }
} else {
 if(i57<-4.192543656245107e-06){
  if(i25<0.0021949345245957375){
   if(i5<-7.3909759521484375e-06){
    if(i69<1.0347676277160645){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=99.0;
   }
  } else {
   if(i11<0.9986840486526489){
    if(i58<0.05404583364725113){
     s0+=81.0;
     s1+=51.0;
    } else {
     s0+=12.0;
     s1+=272.0;
    }
   } else {
    if(i2<1.0023398399353027){
     s0+=60.0;
     s1+=540.0;
    } else {
     s0+=3.0;
     s1+=11776.0;
    }
   }
  }
 } else {
  if(i21<0.037181124091148376){
   if(i51<-7.044209269224666e-06){
    if(i47<8.989573689177632e-05){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i37<-1.7473987099947408e-05){
     s0+=312.0;
    } else {
     s0+=53.0;
     s1+=1.0;
    }
   }
  } else {
   if(i66<0.03354412317276001){
    if(i42<7.291112706298009e-05){
     s1+=21.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i47<-3.798195757553913e-05){
 if(i4<0.0002449154853820801){
  if(i72<1.2679902283707634e-05){
   s1+=6752.0;
  } else {
   s0+=12.0;
  }
 } else {
  s0+=21.0;
 }
} else {
 if(i30<1.021437406539917){
  if(i0<6.586313247680664e-05){
   if(i39<0.1859370768070221){
    if(i8<0.0036521449219435453){
     s0+=89278.0;
     s1+=1004.0;
    } else {
     s0+=23893.0;
     s1+=4408.0;
    }
   } else {
    if(i3<-9.046152990777045e-05){
     s0+=19.0;
     s1+=626.0;
    } else {
     s0+=217.0;
     s1+=32.0;
    }
   }
  } else {
   if(i33<0.0021349298767745495){
    if(i34<1.0967509746551514){
     s0+=50.0;
     s1+=888.0;
    } else {
     s0+=1602.0;
     s1+=167.0;
    }
   } else {
    if(i35<1.0241833925247192){
     s0+=18.0;
     s1+=15.0;
    } else {
     s0+=72.0;
     s1+=2434.0;
    }
   }
  }
 } else {
  if(i57<-3.0522403449140256e-06){
   if(i22<1.0233097076416016){
    if(i15<0.0016045570373535156){
     s0+=280.0;
     s1+=41.0;
    } else {
     s0+=359.0;
     s1+=897.0;
    }
   } else {
    if(i1<0.00012892484664916992){
     s0+=175.0;
     s1+=273.0;
    } else {
     s0+=102.0;
     s1+=6672.0;
    }
   }
  } else {
   if(i31<0.0010858018649742007){
    s0+=545.0;
   } else {
    if(i21<0.02654428780078888){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
}
if(i7<1.0026336908340454){
 if(i23<0.22157931327819824){
  if(i8<0.0037344670854508877){
   if(i27<1.1162974834442139){
    if(i12<0.9959961771965027){
     s0+=5119.0;
     s1+=588.0;
    } else {
     s0+=21799.0;
     s1+=295.0;
    }
   } else {
    if(i29<0.0018091897945851088){
     s0+=49350.0;
    } else {
     s0+=11683.0;
     s1+=227.0;
    }
   }
  } else {
   if(i20<0.9960794448852539){
    if(i0<-4.07099723815918e-05){
     s0+=16461.0;
     s1+=325.0;
    } else {
     s0+=576.0;
     s1+=333.0;
    }
   } else {
    if(i48<1.000110149383545){
     s0+=3842.0;
     s1+=105.0;
    } else {
     s0+=1260.0;
     s1+=3078.0;
    }
   }
  }
 } else {
  if(i51<-8.016733772819862e-06){
   if(i55<1.0059902667999268){
    if(i64<0.022007649764418602){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=720.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   s0+=111.0;
  }
 }
} else {
 if(i0<8.028745651245117e-05){
  if(i21<0.0168493390083313){
   if(i14<0.00026132649509236217){
    if(i28<0.00041615962982177734){
     s0+=152.0;
     s1+=452.0;
    } else {
     s0+=639.0;
     s1+=95.0;
    }
   } else {
    if(i70<0.02556619420647621){
     s0+=3213.0;
     s1+=49.0;
    } else {
     s0+=2.0;
     s1+=26.0;
    }
   }
  } else {
   if(i3<-4.856808664044365e-05){
    if(i9<0.9341179132461548){
     s0+=235.0;
     s1+=64.0;
    } else {
     s0+=212.0;
     s1+=2418.0;
    }
   } else {
    if(i28<0.0006198585033416748){
     s0+=100.0;
     s1+=328.0;
    } else {
     s0+=447.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i25<0.0022299850825220346){
   if(i38<1.0869626998901367){
    if(i57<-1.80059541889932e-05){
     s0+=42.0;
    } else {
     s0+=4.0;
     s1+=1818.0;
    }
   } else {
    if(i66<0.00029519619420170784){
     s0+=16.0;
     s1+=140.0;
    } else {
     s0+=1002.0;
     s1+=62.0;
    }
   }
  } else {
   if(i35<1.0236399173736572){
    if(i7<1.0074043273925781){
     s0+=24.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i26<-0.0003356337547302246){
     s0+=36.0;
     s1+=266.0;
    } else {
     s0+=15.0;
     s1+=12979.0;
    }
   }
  }
 }
}
if(i19<1.0147477388381958){
 if(i11<1.0061559677124023){
  if(i8<0.004050518851727247){
   if(i31<0.0005407872959040105){
    if(i27<1.1979892253875732){
     s0+=61581.0;
     s1+=48.0;
    } else {
     s0+=4617.0;
     s1+=71.0;
    }
   } else {
    if(i0<-4.762411117553711e-05){
     s0+=13292.0;
     s1+=58.0;
    } else {
     s0+=13115.0;
     s1+=1118.0;
    }
   }
  } else {
   if(i2<0.9986744523048401){
    if(i16<0.2073737382888794){
     s0+=18987.0;
     s1+=643.0;
    } else {
     s0+=42.0;
     s1+=250.0;
    }
   } else {
    if(i27<1.1180615425109863){
     s0+=219.0;
     s1+=2350.0;
    } else {
     s0+=1513.0;
     s1+=2311.0;
    }
   }
  }
 } else {
  if(i8<0.0028773751109838486){
   if(i54<0.000550216413103044){
    if(i3<-3.7067002267576754e-05){
     s0+=2.0;
     s1+=138.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i32<1.0840215682983398){
     s1+=45.0;
    } else {
     s0+=1426.0;
     s1+=11.0;
    }
   }
  } else {
   if(i13<-0.0031116604804992676){
    if(i7<1.0068836212158203){
     s0+=398.0;
     s1+=182.0;
    } else {
     s0+=9.0;
     s1+=176.0;
    }
   } else {
    if(i50<-6.107815352152102e-06){
     s0+=139.0;
     s1+=1.0;
    } else {
     s0+=250.0;
     s1+=3539.0;
    }
   }
  }
 }
} else {
 if(i9<1.0199227333068848){
  if(i14<0.0006925942143425345){
   if(i1<0.0006277561187744141){
    if(i36<1.1090868711471558){
     s1+=23.0;
    } else {
     s0+=241.0;
     s1+=36.0;
    }
   } else {
    if(i44<1.0018095970153809){
     s0+=14.0;
     s1+=1217.0;
    } else {
     s0+=26.0;
     s1+=88.0;
    }
   }
  } else {
   s0+=426.0;
  }
 } else {
  if(i55<1.0080897808074951){
   if(i57<-3.142795094390749e-06){
    if(i14<0.0008217089343816042){
     s0+=61.0;
     s1+=11869.0;
    } else {
     s0+=21.0;
    }
   } else {
    s0+=139.0;
   }
  } else {
   if(i8<0.007230990566313267){
    s0+=31.0;
   } else {
    s1+=101.0;
   }
  }
 }
}
if(i17<1.0182535648345947){
 if(i11<1.006632924079895){
  if(i5<0.0003134608268737793){
   if(i24<0.0008682036423124373){
    if(i8<0.0034555112943053246){
     s0+=26657.0;
     s1+=694.0;
    } else {
     s0+=2803.0;
     s1+=1447.0;
    }
   } else {
    if(i18<0.24877935647964478){
     s0+=74268.0;
     s1+=607.0;
    } else {
     s0+=60.0;
     s1+=113.0;
    }
   }
  } else {
   if(i15<0.002001847606152296){
    if(i3<-4.213993815938011e-05){
     s0+=217.0;
     s1+=129.0;
    } else {
     s0+=5559.0;
     s1+=13.0;
    }
   } else {
    if(i31<0.0011343795340508223){
     s0+=328.0;
     s1+=1795.0;
    } else {
     s0+=3601.0;
     s1+=1526.0;
    }
   }
  }
 } else {
  if(i14<0.0007036785827949643){
   if(i1<0.001018524169921875){
    if(i21<0.025857947766780853){
     s0+=343.0;
     s1+=66.0;
    } else {
     s0+=132.0;
     s1+=467.0;
    }
   } else {
    if(i51<-0.00018364691641181707){
     s0+=13.0;
    } else {
     s0+=123.0;
     s1+=3487.0;
    }
   }
  } else {
   if(i24<0.008914697915315628){
    s0+=1089.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i9<1.0207394361495972){
  if(i23<0.18936607241630554){
   if(i32<1.0905089378356934){
    if(i25<0.0013510315911844373){
     s1+=604.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i25<0.0019253524951636791){
     s0+=730.0;
     s1+=39.0;
    } else {
     s0+=411.0;
     s1+=348.0;
    }
   }
  } else {
   if(i24<0.0024406928569078445){
    if(i9<1.009394645690918){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i3<-3.501928586047143e-05){
     s0+=2.0;
     s1+=1197.0;
    } else {
     s0+=36.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i15<0.0013669037725776434){
   if(i11<1.005387783050537){
    if(i57<-5.490441708388971e-06){
     s1+=5.0;
    } else {
     s0+=181.0;
    }
   } else {
    s1+=270.0;
   }
  } else {
   if(i20<0.9907703399658203){
    if(i30<1.0699032545089722){
     s0+=30.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=115.0;
    }
   } else {
    if(i18<0.07153645157814026){
     s0+=22.0;
     s1+=10.0;
    } else {
     s0+=33.0;
     s1+=11152.0;
    }
   }
  }
 }
}
if(i7<1.0026252269744873){
 if(i18<0.2347739040851593){
  if(i8<0.003659273264929652){
   if(i31<0.0005428795702755451){
    if(i43<0.0016571976011618972){
     s0+=60438.0;
     s1+=92.0;
    } else {
     s0+=3868.0;
     s1+=53.0;
    }
   } else {
    if(i41<1.0179154872894287){
     s0+=2666.0;
     s1+=498.0;
    } else {
     s0+=20346.0;
     s1+=407.0;
    }
   }
  } else {
   if(i0<-2.485513687133789e-05){
    if(i4<-8.761882781982422e-06){
     s0+=17195.0;
     s1+=102.0;
    } else {
     s0+=3977.0;
     s1+=592.0;
    }
   } else {
    if(i21<0.009334179572761059){
     s0+=1283.0;
     s1+=334.0;
    } else {
     s0+=470.0;
     s1+=3029.0;
    }
   }
  }
 } else {
  if(i64<0.08194825053215027){
   if(i25<0.004038222134113312){
    if(i8<0.008267856203019619){
     s0+=68.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i8<0.004684286192059517){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   }
  } else {
   if(i8<0.007079030387103558){
    if(i23<0.2370288074016571){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=50.0;
     s1+=1.0;
    }
   } else {
    s1+=646.0;
   }
  }
 }
} else {
 if(i37<-0.00024665254750289023){
  if(i1<0.0003425478935241699){
   if(i49<0.10025100409984589){
    if(i10<1.0108275413513184){
     s0+=648.0;
     s1+=119.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   } else {
    if(i3<-3.076987195527181e-05){
     s0+=59.0;
     s1+=558.0;
    } else {
     s0+=49.0;
     s1+=15.0;
    }
   }
  } else {
   if(i14<0.0007098703645169735){
    if(i51<-0.00018037510744761676){
     s0+=39.0;
     s1+=3.0;
    } else {
     s0+=257.0;
     s1+=14218.0;
    }
   } else {
    s0+=88.0;
   }
  }
 } else {
  if(i55<1.002425193786621){
   if(i2<1.0083990097045898){
    if(i28<0.0005522966384887695){
     s0+=228.0;
     s1+=903.0;
    } else {
     s0+=971.0;
     s1+=71.0;
    }
   } else {
    if(i39<0.013325177133083344){
     s0+=69.0;
     s1+=415.0;
    } else {
     s0+=5.0;
     s1+=1442.0;
    }
   }
  } else {
   if(i68<0.0025123474188148975){
    if(i11<1.0114578008651733){
     s0+=3155.0;
     s1+=220.0;
    } else {
     s0+=7.0;
     s1+=117.0;
    }
   } else {
    if(i4<5.120038986206055e-05){
     s0+=417.0;
     s1+=190.0;
    } else {
     s0+=48.0;
     s1+=348.0;
    }
   }
  }
 }
}
if(i5<0.0005726218223571777){
 if(i3<-7.40064715500921e-05){
  if(i22<0.9305847883224487){
   if(i41<1.0828518867492676){
    if(i21<0.061032697558403015){
     s0+=875.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=41.0;
    }
   } else {
    s1+=70.0;
   }
  } else {
   if(i7<0.9976595044136047){
    if(i21<0.06207216531038284){
     s0+=249.0;
    } else {
     s1+=111.0;
    }
   } else {
    if(i21<0.012145328335464){
     s0+=100.0;
     s1+=8.0;
    } else {
     s0+=50.0;
     s1+=831.0;
    }
   }
  }
 } else {
  if(i36<1.0905578136444092){
   if(i31<0.0007218972314149141){
    if(i15<0.0008557968540117145){
     s0+=18907.0;
     s1+=65.0;
    } else {
     s0+=4234.0;
     s1+=285.0;
    }
   } else {
    if(i32<1.0446590185165405){
     s0+=1875.0;
     s1+=181.0;
    } else {
     s0+=314.0;
     s1+=2136.0;
    }
   }
  } else {
   if(i45<0.18553626537322998){
    if(i68<0.004072223789989948){
     s0+=80106.0;
     s1+=955.0;
    } else {
     s0+=2490.0;
     s1+=283.0;
    }
   } else {
    if(i51<-8.21474714030046e-06){
     s0+=79.0;
     s1+=175.0;
    } else {
     s0+=352.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i24<0.002538613975048065){
  if(i43<0.0010030802804976702){
   if(i39<0.005512791685760021){
    if(i20<1.0079436302185059){
     s0+=1335.0;
     s1+=70.0;
    } else {
     s0+=5.0;
     s1+=239.0;
    }
   } else {
    if(i24<0.00023284790222533047){
     s0+=88.0;
    } else {
     s0+=21.0;
     s1+=2460.0;
    }
   }
  } else {
   if(i27<1.116804838180542){
    s1+=151.0;
   } else {
    if(i9<1.0214991569519043){
     s0+=3386.0;
     s1+=47.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i23<0.08148279786109924){
   if(i7<1.0060718059539795){
    if(i40<0.962024986743927){
     s0+=565.0;
     s1+=303.0;
    } else {
     s0+=754.0;
     s1+=50.0;
    }
   } else {
    if(i0<0.00012487173080444336){
     s0+=48.0;
     s1+=71.0;
    } else {
     s0+=3.0;
     s1+=216.0;
    }
   }
  } else {
   if(i32<1.1278960704803467){
    if(i19<0.9819116592407227){
     s1+=5.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i1<-1.3589859008789062e-05){
     s0+=231.0;
     s1+=255.0;
    } else {
     s0+=202.0;
     s1+=15468.0;
    }
   }
  }
 }
}
if(i9<1.0143449306488037){
 if(i5<0.0005151629447937012){
  if(i41<1.1403393745422363){
   if(i36<1.0905578136444092){
    if(i34<1.05497145652771){
     s0+=20036.0;
     s1+=155.0;
    } else {
     s0+=5037.0;
     s1+=2301.0;
    }
   } else {
    if(i22<1.019146203994751){
     s0+=82861.0;
     s1+=1329.0;
    } else {
     s0+=139.0;
     s1+=101.0;
    }
   }
  } else {
   if(i8<0.006400279700756073){
    s0+=373.0;
   } else {
    if(i61<0.10281908512115479){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i16<0.1683242917060852){
   if(i8<0.003899506526067853){
    if(i66<0.00043602759251371026){
     s0+=2138.0;
     s1+=346.0;
    } else {
     s0+=2544.0;
     s1+=71.0;
    }
   } else {
    if(i2<1.0011403560638428){
     s0+=1051.0;
     s1+=296.0;
    } else {
     s0+=776.0;
     s1+=3047.0;
    }
   }
  } else {
   if(i8<0.004545286297798157){
    if(i0<0.00015944242477416992){
     s0+=167.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i21<0.008087853901088238){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=26.0;
     s1+=2141.0;
    }
   }
  }
 }
} else {
 if(i13<0.0019214153289794922){
  if(i21<0.02260790392756462){
   if(i27<1.1180615425109863){
    s1+=532.0;
   } else {
    if(i19<1.0204203128814697){
     s0+=845.0;
     s1+=67.0;
    } else {
     s0+=186.0;
     s1+=235.0;
    }
   }
  } else {
   if(i27<1.6811659336090088){
    if(i13<-0.0017113685607910156){
     s0+=58.0;
     s1+=84.0;
    } else {
     s0+=32.0;
     s1+=2564.0;
    }
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i44<0.998241662979126){
   s0+=22.0;
  } else {
   s1+=10915.0;
  }
 }
}
if(i4<2.2470951080322266e-05){
 if(i8<0.003796956269070506){
  if(i46<0.0006127850501798093){
   if(i8<0.0023879720829427242){
    if(i12<0.9940715432167053){
     s0+=2507.0;
     s1+=190.0;
    } else {
     s0+=23676.0;
     s1+=73.0;
    }
   } else {
    if(i2<0.9979677200317383){
     s0+=4172.0;
     s1+=38.0;
    } else {
     s0+=1953.0;
     s1+=587.0;
    }
   }
  } else {
   if(i44<1.0007046461105347){
    if(i67<-0.0009379982948303223){
     s0+=6333.0;
     s1+=17.0;
    } else {
     s0+=31583.0;
    }
   } else {
    if(i3<-5.1375056500546634e-05){
     s0+=83.0;
     s1+=60.0;
    } else {
     s0+=17956.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i10<1.0026572942733765){
   if(i1<-0.00041177868843078613){
    if(i40<1.0373549461364746){
     s0+=19948.0;
     s1+=725.0;
    } else {
     s0+=62.0;
     s1+=151.0;
    }
   } else {
    if(i51<-6.271672646107618e-06){
     s0+=515.0;
     s1+=1835.0;
    } else {
     s0+=306.0;
     s1+=2.0;
    }
   }
  } else {
   if(i31<0.0007438090979121625){
    if(i21<0.03408033400774002){
     s0+=373.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i21<0.008649530820548534){
     s0+=368.0;
     s1+=202.0;
    } else {
     s0+=52.0;
     s1+=1327.0;
    }
   }
  }
 }
} else {
 if(i6<1.0164657831192017){
  if(i15<0.0020022301468998194){
   if(i14<0.00019187424913980067){
    if(i36<1.122192621231079){
     s0+=3.0;
     s1+=524.0;
    } else {
     s0+=70.0;
     s1+=162.0;
    }
   } else {
    if(i49<0.07376937568187714){
     s0+=3310.0;
     s1+=8.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i14<0.0007050641579553485){
    if(i11<1.0044283866882324){
     s0+=1147.0;
     s1+=1445.0;
    } else {
     s0+=621.0;
     s1+=3842.0;
    }
   } else {
    s0+=1024.0;
   }
  }
 } else {
  if(i34<1.1757044792175293){
   if(i27<1.1180615425109863){
    s1+=1202.0;
   } else {
    if(i6<1.0242705345153809){
     s0+=267.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=41.0;
    }
   }
  } else {
   if(i32<1.1279253959655762){
    s0+=6.0;
   } else {
    if(i1<-0.00035518407821655273){
     s0+=35.0;
     s1+=11.0;
    } else {
     s0+=38.0;
     s1+=11818.0;
    }
   }
  }
 }
}
if(i4<2.0444393157958984e-05){
 if(i23<0.21778342127799988){
  if(i31<0.0006914031691849232){
   if(i60<0.0001567691215313971){
    if(i12<1.0198593139648438){
     s0+=63448.0;
     s1+=133.0;
    } else {
     s0+=290.0;
     s1+=17.0;
    }
   } else {
    if(i20<0.9954873323440552){
     s0+=9640.0;
     s1+=2.0;
    } else {
     s0+=4627.0;
     s1+=269.0;
    }
   }
  } else {
   if(i36<1.0955833196640015){
    if(i39<0.008929962292313576){
     s0+=1635.0;
     s1+=175.0;
    } else {
     s0+=876.0;
     s1+=2146.0;
    }
   } else {
    if(i17<1.021174430847168){
     s0+=28456.0;
     s1+=1262.0;
    } else {
     s0+=172.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i15<0.0024844114668667316){
   if(i11<1.0027368068695068){
    s0+=167.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i21<0.02995096892118454){
    if(i45<0.22647729516029358){
     s0+=16.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i3<-1.1936044757021591e-05){
     s1+=537.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i25<0.00261676125228405){
  if(i25<0.0012720314553007483){
   if(i34<1.0533521175384521){
    s0+=1532.0;
   } else {
    if(i10<1.0058515071868896){
     s0+=357.0;
     s1+=201.0;
    } else {
     s0+=77.0;
     s1+=2778.0;
    }
   }
  } else {
   if(i34<1.094508409500122){
    s1+=96.0;
   } else {
    if(i21<0.015428232029080391){
     s0+=3303.0;
     s1+=10.0;
    } else {
     s0+=34.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i23<0.08321040868759155){
   if(i51<-4.012112913187593e-05){
    if(i18<0.015891045331954956){
     s0+=242.0;
     s1+=77.0;
    } else {
     s0+=140.0;
     s1+=440.0;
    }
   } else {
    if(i27<1.2026599645614624){
     s1+=56.0;
    } else {
     s0+=1039.0;
     s1+=103.0;
    }
   }
  } else {
   if(i13<-0.0019903182983398438){
    if(i29<0.004752040840685368){
     s0+=133.0;
     s1+=20.0;
    } else {
     s0+=218.0;
     s1+=960.0;
    }
   } else {
    if(i18<0.10643419623374939){
     s0+=52.0;
     s1+=360.0;
    } else {
     s0+=41.0;
     s1+=14316.0;
    }
   }
  }
 }
}
if(i41<1.1153912544250488){
 if(i3<-9.212147415382788e-05){
  if(i26<-0.000532984733581543){
   if(i41<1.02775239944458){
    if(i21<0.05608603358268738){
     s0+=581.0;
     s1+=6.0;
    } else {
     s0+=67.0;
     s1+=46.0;
    }
   } else {
    if(i18<0.017009198665618896){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=38.0;
     s1+=107.0;
    }
   }
  } else {
   if(i11<1.0085477828979492){
    if(i57<-2.233038321719505e-05){
     s0+=257.0;
     s1+=35.0;
    } else {
     s0+=116.0;
     s1+=1114.0;
    }
   } else {
    if(i16<0.0003789663314819336){
     s0+=21.0;
     s1+=12.0;
    } else {
     s0+=25.0;
     s1+=3042.0;
    }
   }
  }
 } else {
  if(i7<1.0022130012512207){
   if(i27<1.1162974834442139){
    if(i19<1.008996844291687){
     s0+=29095.0;
     s1+=2882.0;
    } else {
     s0+=26.0;
     s1+=508.0;
    }
   } else {
    if(i54<0.0019398126751184464){
     s0+=70358.0;
     s1+=218.0;
    } else {
     s0+=6355.0;
     s1+=218.0;
    }
   }
  } else {
   if(i24<0.0009881125297397375){
    if(i43<0.00016836395661812276){
     s0+=906.0;
     s1+=75.0;
    } else {
     s0+=74.0;
     s1+=1845.0;
    }
   } else {
    if(i8<0.005014027468860149){
     s0+=4637.0;
     s1+=87.0;
    } else {
     s0+=1105.0;
     s1+=1224.0;
    }
   }
  }
 }
} else {
 if(i8<0.005055225919932127){
  if(i3<-9.629089618101716e-05){
   if(i33<0.002290337812155485){
    s0+=7.0;
   } else {
    if(i18<0.051676034927368164){
     s0+=1.0;
    } else {
     s1+=263.0;
    }
   }
  } else {
   if(i3<-5.279313700157218e-05){
    if(i55<1.001556634902954){
     s0+=90.0;
    } else {
     s0+=24.0;
     s1+=56.0;
    }
   } else {
    if(i33<0.0021523446775972843){
     s0+=1638.0;
    } else {
     s0+=800.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i3<5.574430360866245e-06){
   if(i2<0.9980894327163696){
    if(i34<1.2749149799346924){
     s0+=57.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=235.0;
    }
   } else {
    if(i24<0.002045735251158476){
     s0+=35.0;
     s1+=32.0;
    } else {
     s0+=54.0;
     s1+=12300.0;
    }
   }
  } else {
   if(i63<1.3864738548363675e-06){
    s1+=10.0;
   } else {
    s0+=78.0;
   }
  }
 }
}
if(i26<0.00020819902420043945){
 if(i8<0.007850533351302147){
  if(i28<9.196996688842773e-05){
   if(i31<0.0006275132764130831){
    if(i24<0.00026462471578270197){
     s0+=16827.0;
     s1+=154.0;
    } else {
     s0+=43336.0;
    }
   } else {
    if(i2<0.9978771209716797){
     s0+=14015.0;
     s1+=125.0;
    } else {
     s0+=3961.0;
     s1+=643.0;
    }
   }
  } else {
   if(i31<0.0006573764840140939){
    if(i3<-6.491578824352473e-05){
     s0+=21.0;
     s1+=78.0;
    } else {
     s0+=15587.0;
     s1+=162.0;
    }
   } else {
    if(i31<0.0011268218513578176){
     s0+=4865.0;
     s1+=3177.0;
    } else {
     s0+=12170.0;
     s1+=433.0;
    }
   }
  }
 } else {
  if(i45<0.054403841495513916){
   if(i1<-0.00012797117233276367){
    if(i35<1.122353196144104){
     s0+=3533.0;
     s1+=68.0;
    } else {
     s0+=102.0;
     s1+=81.0;
    }
   } else {
    if(i41<1.0289748907089233){
     s0+=200.0;
     s1+=74.0;
    } else {
     s0+=68.0;
     s1+=593.0;
    }
   }
  } else {
   if(i2<0.9959797859191895){
    if(i25<0.017402686178684235){
     s0+=545.0;
     s1+=105.0;
    } else {
     s0+=6.0;
     s1+=144.0;
    }
   } else {
    if(i37<-0.00023228189093060791){
     s0+=26.0;
     s1+=4263.0;
    } else {
     s0+=175.0;
     s1+=915.0;
    }
   }
  }
 }
} else {
 if(i36<1.1672043800354004){
  if(i14<0.00022864885977469385){
   if(i57<-4.5631117245648056e-05){
    s0+=45.0;
   } else {
    s1+=1986.0;
   }
  } else {
   if(i22<1.034428596496582){
    s0+=885.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i4<1.4513731002807617e-05){
   if(i15<0.0021839619148522615){
    s0+=85.0;
   } else {
    s1+=98.0;
   }
  } else {
   if(i32<1.6029930114746094){
    s1+=10874.0;
   } else {
    if(i54<0.0011931644985452294){
     s0+=1.0;
    } else {
     s1+=433.0;
    }
   }
  }
 }
}
if(i5<0.0005719959735870361){
 if(i19<1.0097978115081787){
  if(i8<0.0034624370746314526){
   if(i29<0.00056560302618891){
    if(i31<0.0006237453781068325){
     s0+=21596.0;
     s1+=138.0;
    } else {
     s0+=2191.0;
     s1+=598.0;
    }
   } else {
    if(i68<0.004039147403091192){
     s0+=59054.0;
     s1+=116.0;
    } else {
     s0+=1441.0;
     s1+=46.0;
    }
   }
  } else {
   if(i0<-2.6047229766845703e-05){
    if(i45<0.1853383183479309){
     s0+=22383.0;
     s1+=710.0;
    } else {
     s0+=92.0;
     s1+=238.0;
    }
   } else {
    if(i44<0.9995732307434082){
     s0+=882.0;
     s1+=48.0;
    } else {
     s0+=900.0;
     s1+=2547.0;
    }
   }
  }
 } else {
  if(i21<0.02377811074256897){
   if(i57<-4.430638909980189e-06){
    if(i42<1.640735354158096e-05){
     s0+=67.0;
     s1+=274.0;
    } else {
     s0+=274.0;
    }
   } else {
    if(i63<4.1752782635740004e-06){
     s0+=622.0;
    } else {
     s0+=40.0;
     s1+=6.0;
    }
   }
  } else {
   if(i0<-1.7642974853515625e-05){
    if(i23<0.2922085225582123){
     s0+=78.0;
     s1+=6.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i30<0.9803354740142822){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=485.0;
    }
   }
  }
 }
} else {
 if(i8<0.004315393511205912){
  if(i32<1.1766988039016724){
   if(i14<0.00020715358550660312){
    if(i36<1.122192621231079){
     s0+=2.0;
     s1+=833.0;
    } else {
     s0+=209.0;
     s1+=56.0;
    }
   } else {
    if(i43<0.002985892351716757){
     s0+=4765.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=13.0;
    }
   }
  } else {
   if(i11<1.0115926265716553){
    if(i26<0.00032573938369750977){
     s0+=83.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=320.0;
   }
  }
 } else {
  if(i26<-0.0003197789192199707){
   if(i51<-3.983755595982075e-05){
    if(i9<0.9361135959625244){
     s0+=257.0;
     s1+=158.0;
    } else {
     s0+=148.0;
     s1+=726.0;
    }
   } else {
    if(i38<1.1065365076065063){
     s0+=484.0;
     s1+=10.0;
    } else {
     s0+=331.0;
     s1+=229.0;
    }
   }
  } else {
   if(i48<0.9998753666877747){
    if(i3<-0.00017286647926084697){
     s1+=144.0;
    } else {
     s0+=180.0;
    }
   } else {
    if(i8<0.006145338527858257){
     s0+=240.0;
     s1+=1393.0;
    } else {
     s0+=86.0;
     s1+=15310.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i18<0.2234135866165161){
  if(i15<0.0017321379855275154){
   if(i25<0.0005799351492896676){
    if(i22<0.9958392977714539){
     s0+=4990.0;
     s1+=472.0;
    } else {
     s0+=22280.0;
     s1+=261.0;
    }
   } else {
    if(i32<1.1354830265045166){
     s0+=55024.0;
     s1+=8.0;
    } else {
     s0+=7422.0;
     s1+=222.0;
    }
   }
  } else {
   if(i27<1.1164028644561768){
    if(i29<0.00020276107534300536){
     s0+=1619.0;
     s1+=17.0;
    } else {
     s0+=857.0;
     s1+=2694.0;
    }
   } else {
    if(i8<0.013988573104143143){
     s0+=19007.0;
     s1+=1183.0;
    } else {
     s0+=1081.0;
     s1+=787.0;
    }
   }
  }
 } else {
  if(i31<0.000741105992347002){
   if(i7<1.002751111984253){
    if(i7<1.0011279582977295){
     s0+=118.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i49<0.07768416404724121){
    if(i34<1.233483076095581){
     s0+=42.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=44.0;
    }
   } else {
    if(i44<1.0024067163467407){
     s0+=8.0;
     s1+=882.0;
    } else {
     s0+=16.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i29<0.0019342703744769096){
  if(i14<0.00023275752027984709){
   if(i27<1.1229777336120605){
    s1+=2639.0;
   } else {
    if(i1<0.004572272300720215){
     s0+=133.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i56<-0.0008559298585169017){
    if(i19<1.0201116800308228){
     s0+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i9<1.0220919847488403){
     s0+=3855.0;
     s1+=11.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i34<1.1462047100067139){
   if(i19<1.0139747858047485){
    s0+=27.0;
   } else {
    s1+=30.0;
   }
  } else {
   if(i17<1.031174659729004){
    if(i54<0.0003573173307813704){
     s0+=33.0;
     s1+=64.0;
    } else {
     s0+=144.0;
     s1+=4326.0;
    }
   } else {
    if(i26<-0.00027364492416381836){
     s0+=11.0;
     s1+=44.0;
    } else {
     s0+=5.0;
     s1+=10404.0;
    }
   }
  }
 }
}
if(i2<1.0038504600524902){
 if(i5<0.00032275915145874023){
  if(i31<0.0006913063116371632){
   if(i31<0.0004986476269550622){
    if(i38<1.1354830265045166){
     s0+=61797.0;
     s1+=71.0;
    } else {
     s0+=1629.0;
     s1+=37.0;
    }
   } else {
    if(i27<1.0824499130249023){
     s0+=1912.0;
     s1+=200.0;
    } else {
     s0+=10327.0;
     s1+=89.0;
    }
   }
  } else {
   if(i24<0.0009099572198465466){
    if(i1<-0.0005998611450195312){
     s0+=922.0;
     s1+=147.0;
    } else {
     s0+=639.0;
     s1+=1767.0;
    }
   } else {
    if(i59<1.1421854496002197){
     s0+=27352.0;
     s1+=744.0;
    } else {
     s0+=1.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i49<0.03666907548904419){
   if(i21<0.00838121771812439){
    if(i8<0.004089951515197754){
     s0+=4540.0;
     s1+=2.0;
    } else {
     s0+=183.0;
     s1+=93.0;
    }
   } else {
    if(i33<0.0012752646580338478){
     s0+=69.0;
     s1+=533.0;
    } else {
     s0+=538.0;
     s1+=54.0;
    }
   }
  } else {
   if(i1<-0.0001627206802368164){
    if(i16<0.13465023040771484){
     s0+=1407.0;
     s1+=187.0;
    } else {
     s0+=123.0;
     s1+=289.0;
    }
   } else {
    if(i39<0.027376782149076462){
     s0+=230.0;
     s1+=58.0;
    } else {
     s0+=537.0;
     s1+=2085.0;
    }
   }
  }
 }
} else {
 if(i8<0.003642090130597353){
  if(i24<0.0009706164710223675){
   if(i2<1.0058555603027344){
    if(i32<1.0531964302062988){
     s0+=597.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=569.0;
   }
  } else {
   if(i2<1.0117735862731934){
    if(i20<1.0013948678970337){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=3126.0;
    }
   } else {
    s1+=223.0;
   }
  }
 } else {
  if(i25<0.002677366603165865){
   if(i50<-5.651731498801382e-06){
    s0+=251.0;
   } else {
    if(i31<0.0012770043686032295){
     s0+=84.0;
     s1+=2295.0;
    } else {
     s0+=138.0;
     s1+=6.0;
    }
   }
  } else {
   if(i23<0.039711713790893555){
    if(i70<0.012964576482772827){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=125.0;
    }
   } else {
    if(i26<-0.00027573108673095703){
     s0+=57.0;
     s1+=409.0;
    } else {
     s0+=15.0;
     s1+=14112.0;
    }
   }
  }
 }
}
if(i17<1.0178109407424927){
 if(i2<1.0038676261901855){
  if(i8<0.0037168534472584724){
   if(i65<-0.00038865208625793457){
    if(i36<1.0905578136444092){
     s0+=3169.0;
     s1+=470.0;
    } else {
     s0+=12931.0;
     s1+=176.0;
    }
   } else {
    if(i56<0.001144310343079269){
     s0+=71058.0;
     s1+=367.0;
    } else {
     s0+=416.0;
     s1+=53.0;
    }
   }
  } else {
   if(i53<0.9996456503868103){
    if(i21<0.08584459871053696){
     s0+=15989.0;
     s1+=282.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   } else {
    if(i1<-0.00042828917503356934){
     s0+=6281.0;
     s1+=702.0;
    } else {
     s0+=1249.0;
     s1+=3232.0;
    }
   }
  }
 } else {
  if(i56<0.0009010935900732875){
   if(i28<0.0005351603031158447){
    if(i15<0.0008691510884091258){
     s0+=241.0;
     s1+=32.0;
    } else {
     s0+=99.0;
     s1+=1470.0;
    }
   } else {
    if(i11<1.0115103721618652){
     s0+=3350.0;
     s1+=82.0;
    } else {
     s0+=7.0;
     s1+=135.0;
    }
   }
  } else {
   if(i14<0.0007032942958176136){
    if(i3<-3.9814218325773254e-05){
     s0+=60.0;
     s1+=3018.0;
    } else {
     s0+=46.0;
     s1+=125.0;
    }
   } else {
    s0+=57.0;
   }
  }
 }
} else {
 if(i57<-2.770299033727497e-06){
  if(i32<1.1757044792175293){
   if(i32<1.0948889255523682){
    if(i36<1.126470685005188){
     s1+=1262.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i3<-8.658198203193024e-05){
     s0+=74.0;
     s1+=695.0;
    } else {
     s0+=869.0;
     s1+=212.0;
    }
   }
  } else {
   if(i16<0.09482505917549133){
    if(i10<1.0122442245483398){
     s0+=54.0;
     s1+=14.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i3<-3.057881258428097e-05){
     s0+=17.0;
     s1+=11822.0;
    } else {
     s0+=51.0;
     s1+=142.0;
    }
   }
  }
 } else {
  if(i23<0.20314249396324158){
   s0+=408.0;
  } else {
   if(i24<0.0026158387772738934){
    s0+=26.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i7<1.0026319026947021){
 if(i9<1.011128544807434){
  if(i21<0.071979820728302){
   if(i5<0.00018674135208129883){
    if(i25<0.0010682829888537526){
     s0+=28736.0;
     s1+=1622.0;
    } else {
     s0+=67964.0;
     s1+=508.0;
    }
   } else {
    if(i21<0.009223269298672676){
     s0+=10986.0;
     s1+=269.0;
    } else {
     s0+=1748.0;
     s1+=1634.0;
    }
   }
  } else {
   if(i38<1.0927646160125732){
    s0+=161.0;
   } else {
    if(i19<0.903525710105896){
     s0+=6.0;
     s1+=3.0;
    } else {
     s1+=396.0;
    }
   }
  }
 } else {
  if(i57<-4.989471563021652e-06){
   if(i52<7.987022399902344e-06){
    if(i21<0.008001691661775112){
     s0+=59.0;
     s1+=47.0;
    } else {
     s0+=47.0;
     s1+=1051.0;
    }
   } else {
    if(i14<0.0002671079128049314){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=163.0;
     s1+=7.0;
    }
   }
  } else {
   if(i47<3.512536932248622e-05){
    if(i32<1.0928070545196533){
     s1+=6.0;
    } else {
     s0+=541.0;
     s1+=6.0;
    }
   } else {
    if(i17<1.017625331878662){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i9<1.017385721206665){
  if(i33<0.0030010363552719355){
   if(i36<1.1174830198287964){
    if(i34<1.058152437210083){
     s0+=747.0;
    } else {
     s0+=73.0;
     s1+=1443.0;
    }
   } else {
    if(i27<1.1935834884643555){
     s0+=2770.0;
    } else {
     s0+=520.0;
     s1+=367.0;
    }
   }
  } else {
   if(i2<1.0016772747039795){
    if(i54<0.006640401668846607){
     s0+=990.0;
     s1+=277.0;
    } else {
     s0+=102.0;
     s1+=259.0;
    }
   } else {
    if(i18<0.08381199836730957){
     s0+=265.0;
     s1+=445.0;
    } else {
     s0+=138.0;
     s1+=3251.0;
    }
   }
  }
 } else {
  if(i26<-0.0001590251922607422){
   if(i15<0.0038149645552039146){
    s0+=97.0;
   } else {
    s1+=142.0;
   }
  } else {
   if(i3<-6.160710472613573e-05){
    if(i50<-8.308436008519493e-06){
     s0+=23.0;
    } else {
     s0+=30.0;
     s1+=12360.0;
    }
   } else {
    if(i14<0.0003210270660929382){
     s0+=23.0;
     s1+=330.0;
    } else {
     s0+=129.0;
    }
   }
  }
 }
}
if(i10<1.0107530355453491){
 if(i15<0.0018163591157644987){
  if(i33<0.0005203841719776392){
   if(i1<0.0013237595558166504){
    if(i47<4.23689343733713e-05){
     s0+=21927.0;
     s1+=162.0;
    } else {
     s0+=3214.0;
     s1+=658.0;
    }
   } else {
    s1+=109.0;
   }
  } else {
   if(i3<-6.716488860547543e-05){
    if(i21<0.014855806715786457){
     s0+=129.0;
     s1+=21.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i43<0.001976326107978821){
     s0+=64217.0;
     s1+=93.0;
    } else {
     s0+=3979.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i11<0.998998761177063){
   if(i35<1.1917052268981934){
    if(i17<1.0173664093017578){
     s0+=14322.0;
     s1+=631.0;
    } else {
     s0+=134.0;
     s1+=107.0;
    }
   } else {
    if(i22<0.8888667225837708){
     s0+=13.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=229.0;
    }
   }
  } else {
   if(i1<-0.00038951635360717773){
    if(i41<1.1121084690093994){
     s0+=3367.0;
     s1+=302.0;
    } else {
     s0+=93.0;
     s1+=259.0;
    }
   } else {
    if(i36<1.0533521175384521){
     s0+=1674.0;
    } else {
     s0+=2269.0;
     s1+=7353.0;
    }
   }
  }
 }
} else {
 if(i21<0.007012971676886082){
  if(i29<0.0011333506554365158){
   if(i27<1.1294310092926025){
    s1+=897.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i14<0.0002850702730938792){
    if(i36<1.6027319431304932){
     s0+=7.0;
     s1+=440.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i47<-9.157492604572326e-05){
     s1+=10.0;
    } else {
     s0+=1081.0;
    }
   }
  }
 } else {
  if(i57<-3.805679853030597e-06){
   if(i32<1.164205551147461){
    if(i15<0.002076823730021715){
     s0+=100.0;
     s1+=260.0;
    } else {
     s0+=22.0;
     s1+=1199.0;
    }
   } else {
    if(i0<5.549192428588867e-05){
     s0+=1.0;
     s1+=301.0;
    } else {
     s1+=10984.0;
    }
   }
  } else {
   if(i51<-1.4112916687736288e-05){
    s1+=2.0;
   } else {
    s0+=73.0;
   }
  }
 }
}
if(i2<1.003735065460205){
 if(i31<0.000728759216144681){
  if(i4<2.282857894897461e-05){
   if(i36<1.0776758193969727){
    if(i8<0.001164758112281561){
     s0+=11357.0;
     s1+=44.0;
    } else {
     s0+=7549.0;
     s1+=281.0;
    }
   } else {
    if(i29<0.0018295153276994824){
     s0+=54989.0;
     s1+=28.0;
    } else {
     s0+=5946.0;
     s1+=156.0;
    }
   }
  } else {
   if(i39<0.0321195051074028){
    s0+=198.0;
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i11<0.998306393623352){
   if(i3<-9.725218842504546e-05){
    if(i41<1.0256577730178833){
     s0+=82.0;
     s1+=6.0;
    } else {
     s0+=23.0;
     s1+=263.0;
    }
   } else {
    if(i41<1.1878212690353394){
     s0+=20659.0;
     s1+=462.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i41<1.1086244583129883){
    if(i33<0.0011087595485150814){
     s0+=2579.0;
     s1+=2548.0;
    } else {
     s0+=8435.0;
     s1+=1175.0;
    }
   } else {
    if(i32<1.1712557077407837){
     s0+=198.0;
     s1+=94.0;
    } else {
     s0+=63.0;
     s1+=1293.0;
    }
   }
  }
 }
} else {
 if(i29<0.0019342033192515373){
  if(i47<-2.4845710868248716e-05){
   if(i25<0.0013543347595259547){
    if(i44<1.000983715057373){
     s0+=7.0;
     s1+=1406.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i34<1.094508409500122){
     s1+=41.0;
    } else {
     s0+=172.0;
     s1+=15.0;
    }
   }
  } else {
   if(i52<9.357929229736328e-06){
    if(i24<0.0009487664792686701){
     s0+=90.0;
     s1+=1184.0;
    } else {
     s0+=488.0;
    }
   } else {
    if(i14<0.00019732833607122302){
     s0+=5.0;
     s1+=43.0;
    } else {
     s0+=3578.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i16<0.0954086184501648){
   if(i47<4.9217753257835284e-05){
    if(i44<0.9978530406951904){
     s0+=10.0;
    } else {
     s0+=11.0;
     s1+=439.0;
    }
   } else {
    if(i58<0.03944118693470955){
     s0+=135.0;
     s1+=90.0;
    } else {
     s0+=28.0;
     s1+=227.0;
    }
   }
  } else {
   if(i38<1.095937967300415){
    if(i7<1.001697063446045){
     s0+=9.0;
    } else {
     s0+=3.0;
     s1+=52.0;
    }
   } else {
    if(i34<1.1398165225982666){
     s0+=4.0;
    } else {
     s0+=45.0;
     s1+=14229.0;
    }
   }
  }
 }
}
if(i1<0.0009607076644897461){
 if(i35<1.1403480768203735){
  if(i8<0.003777066245675087){
   if(i31<0.0005090180784463882){
    if(i38<1.1354830265045166){
     s0+=61780.0;
     s1+=82.0;
    } else {
     s0+=1295.0;
     s1+=33.0;
    }
   } else {
    if(i33<0.0006928443908691406){
     s0+=5385.0;
     s1+=910.0;
    } else {
     s0+=21947.0;
     s1+=172.0;
    }
   }
  } else {
   if(i17<1.008875846862793){
    if(i11<0.9980587959289551){
     s0+=16921.0;
     s1+=279.0;
    } else {
     s0+=4554.0;
     s1+=2741.0;
    }
   } else {
    if(i0<-9.98377799987793e-06){
     s0+=1020.0;
     s1+=155.0;
    } else {
     s0+=341.0;
     s1+=1529.0;
    }
   }
  }
 } else {
  if(i51<-1.604739918548148e-05){
   if(i18<0.013141095638275146){
    if(i8<0.020137690007686615){
     s0+=69.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   } else {
    if(i34<1.1764509677886963){
     s0+=27.0;
    } else {
     s0+=108.0;
     s1+=1930.0;
    }
   }
  } else {
   if(i39<0.10198506712913513){
    if(i15<0.0024224044755101204){
     s0+=903.0;
    } else {
     s0+=34.0;
     s1+=36.0;
    }
   } else {
    if(i32<1.6057538986206055){
     s1+=91.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
} else {
 if(i33<0.0023648133501410484){
  if(i46<0.0007963000680319965){
   if(i50<-4.17247701989254e-06){
    s0+=17.0;
   } else {
    if(i28<0.0006200969219207764){
     s0+=1.0;
     s1+=2257.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i32<1.0905089378356934){
    if(i7<1.002427339553833){
     s0+=3.0;
    } else {
     s1+=98.0;
    }
   } else {
    if(i43<0.0009015838149935007){
     s1+=53.0;
    } else {
     s0+=1879.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i18<0.042526036500930786){
   if(i13<-0.0022919178009033203){
    if(i14<0.00014373277372214943){
     s0+=37.0;
    } else {
     s0+=10.0;
     s1+=43.0;
    }
   } else {
    if(i27<1.629280686378479){
     s1+=92.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i26<-0.0005909204483032227){
    if(i31<0.0015232820296660066){
     s0+=16.0;
    } else {
     s0+=5.0;
     s1+=48.0;
    }
   } else {
    if(i3<-8.529283513780683e-05){
     s0+=2.0;
     s1+=13060.0;
    } else {
     s0+=32.0;
     s1+=697.0;
    }
   }
  }
 }
}
if(i5<0.0005905032157897949){
 if(i5<0.0002925992012023926){
  if(i23<0.2315966784954071){
   if(i25<0.001049503218382597){
    if(i7<0.9994214177131653){
     s0+=17359.0;
     s1+=224.0;
    } else {
     s0+=12370.0;
     s1+=1800.0;
    }
   } else {
    if(i30<1.0258126258850098){
     s0+=73540.0;
     s1+=714.0;
    } else {
     s0+=275.0;
     s1+=94.0;
    }
   }
  } else {
   if(i29<0.011521793901920319){
    if(i59<1.1492000818252563){
     s0+=25.0;
     s1+=72.0;
    } else {
     s0+=56.0;
     s1+=10.0;
    }
   } else {
    s1+=260.0;
   }
  }
 } else {
  if(i3<-4.3212876335019246e-05){
   if(i42<3.923739495803602e-05){
    if(i14<0.0006790568586438894){
     s0+=130.0;
     s1+=1096.0;
    } else {
     s0+=96.0;
    }
   } else {
    if(i23<0.1332336664199829){
     s0+=582.0;
     s1+=51.0;
    } else {
     s0+=21.0;
     s1+=172.0;
    }
   }
  } else {
   if(i49<0.0412864089012146){
    if(i15<0.0018530971137806773){
     s0+=3777.0;
     s1+=13.0;
    } else {
     s0+=1269.0;
     s1+=403.0;
    }
   } else {
    if(i31<0.0013440328184515238){
     s0+=140.0;
     s1+=329.0;
    } else {
     s0+=405.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i3<-7.388104859273881e-05){
  if(i19<0.9458833336830139){
   if(i18<0.11862435936927795){
    if(i1<0.0016791820526123047){
     s0+=234.0;
     s1+=18.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i37<-0.001126313814893365){
     s0+=2.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i52<2.6881694793701172e-05){
    if(i14<0.0007150453748181462){
     s0+=266.0;
     s1+=15964.0;
    } else {
     s0+=279.0;
    }
   } else {
    if(i25<0.007062007673084736){
     s0+=169.0;
    } else {
     s1+=81.0;
    }
   }
  }
 } else {
  if(i52<1.424551010131836e-05){
   if(i38<1.0451974868774414){
    if(i38<1.0440731048583984){
     s0+=1246.0;
     s1+=11.0;
    } else {
     s0+=60.0;
     s1+=25.0;
    }
   } else {
    if(i24<0.0009699082002043724){
     s1+=1616.0;
    } else {
     s0+=1868.0;
     s1+=1058.0;
    }
   }
  } else {
   if(i56<0.0013052551075816154){
    if(i56<-0.0014748177491128445){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=2332.0;
     s1+=36.0;
    }
   } else {
    if(i4<5.543231964111328e-05){
     s0+=40.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=148.0;
    }
   }
  }
 }
}
if(i9<1.0143203735351562){
 if(i0<6.335973739624023e-05){
  if(i21<0.0648055374622345){
   if(i15<0.001728216651827097){
    if(i67<-0.0006461143493652344){
     s0+=15363.0;
     s1+=557.0;
    } else {
     s0+=75882.0;
     s1+=417.0;
    }
   } else {
    if(i26<-0.00021249055862426758){
     s0+=16458.0;
     s1+=1177.0;
    } else {
     s0+=5945.0;
     s1+=3447.0;
    }
   }
  } else {
   if(i38<1.1163756847381592){
    s0+=256.0;
   } else {
    if(i39<0.14513179659843445){
     s0+=60.0;
     s1+=51.0;
    } else {
     s0+=12.0;
     s1+=915.0;
    }
   }
  }
 } else {
  if(i27<1.1979892253875732){
   if(i36<1.116804838180542){
    if(i38<1.038266658782959){
     s0+=69.0;
     s1+=4.0;
    } else {
     s0+=50.0;
     s1+=914.0;
    }
   } else {
    s0+=1294.0;
   }
  } else {
   if(i13<-0.0021837949752807617){
    if(i11<1.0116469860076904){
     s0+=66.0;
     s1+=104.0;
    } else {
     s0+=21.0;
     s1+=239.0;
    }
   } else {
    if(i5<0.0003466606140136719){
     s0+=11.0;
    } else {
     s0+=29.0;
     s1+=2260.0;
    }
   }
  }
 }
} else {
 if(i3<-6.782143464079127e-05){
  if(i19<1.0187357664108276){
   if(i14<0.0009047920466400683){
    if(i21<0.02406037598848343){
     s0+=50.0;
     s1+=446.0;
    } else {
     s1+=1144.0;
    }
   } else {
    s0+=164.0;
   }
  } else {
   if(i52<7.665157318115234e-05){
    if(i44<0.9983351230621338){
     s0+=10.0;
    } else {
     s0+=16.0;
     s1+=11456.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i36<1.1180615425109863){
   if(i50<-5.220752427703701e-06){
    s0+=5.0;
   } else {
    s1+=562.0;
   }
  } else {
   if(i8<0.005853032227605581){
    if(i0<-5.882978439331055e-05){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=951.0;
     s1+=1.0;
    }
   } else {
    s1+=389.0;
   }
  }
 }
}
if(i3<-9.841138671617955e-05){
 if(i23<0.04129183292388916){
  if(i71<-0.008296012878417969){
   if(i12<0.9295192956924438){
    if(i48<1.0026224851608276){
     s0+=70.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=30.0;
    }
   } else {
    if(i64<0.005142536014318466){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=82.0;
    }
   }
  } else {
   if(i7<1.0053303241729736){
    if(i19<0.976328432559967){
     s0+=501.0;
     s1+=6.0;
    } else {
     s0+=40.0;
     s1+=9.0;
    }
   } else {
    if(i22<0.9136606454849243){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i72<5.794467142550275e-06){
   if(i41<0.9687516093254089){
    if(i47<0.0003613426233641803){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i52<5.692243576049805e-05){
     s0+=96.0;
     s1+=15149.0;
    } else {
     s0+=84.0;
    }
   }
  } else {
   s0+=111.0;
  }
 }
} else {
 if(i6<1.013148546218872){
  if(i9<1.0078941583633423){
   if(i31<0.0007168971351347864){
    if(i51<-1.9359926227480173e-05){
     s0+=56.0;
     s1+=148.0;
    } else {
     s0+=78426.0;
     s1+=363.0;
    }
   } else {
    if(i20<0.9942939281463623){
     s0+=20109.0;
     s1+=598.0;
    } else {
     s0+=11451.0;
     s1+=3613.0;
    }
   }
  } else {
   if(i36<1.0966265201568604){
    if(i36<1.0534145832061768){
     s0+=147.0;
    } else {
     s1+=927.0;
    }
   } else {
    if(i21<0.01974015310406685){
     s0+=3959.0;
     s1+=292.0;
    } else {
     s0+=202.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i28<0.00072479248046875){
   if(i48<1.0003342628479004){
    s0+=288.0;
   } else {
    if(i44<1.0020396709442139){
     s0+=177.0;
     s1+=2451.0;
    } else {
     s0+=132.0;
    }
   }
  } else {
   if(i23<0.21400409936904907){
    if(i69<0.9453664422035217){
     s1+=3.0;
    } else {
     s0+=816.0;
     s1+=12.0;
    }
   } else {
    if(i63<-1.031887904900941e-06){
     s0+=1.0;
     s1+=113.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i16<0.20114630460739136){
  if(i8<0.004000568296760321){
   if(i41<1.0178465843200684){
    if(i47<3.757302329177037e-05){
     s0+=5862.0;
     s1+=12.0;
    } else {
     s0+=5010.0;
     s1+=540.0;
    }
   } else {
    if(i56<-0.0007047202088870108){
     s0+=167.0;
     s1+=31.0;
    } else {
     s0+=81362.0;
     s1+=750.0;
    }
   }
  } else {
   if(i2<0.9989179968833923){
    if(i35<1.1840684413909912){
     s0+=19532.0;
     s1+=671.0;
    } else {
     s0+=97.0;
     s1+=107.0;
    }
   } else {
    if(i55<0.9997708797454834){
     s0+=374.0;
     s1+=69.0;
    } else {
     s0+=1472.0;
     s1+=4258.0;
    }
   }
  }
 } else {
  if(i51<-8.223973964049947e-06){
   if(i39<0.01725737564265728){
    if(i30<1.0508133172988892){
     s0+=49.0;
     s1+=4.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i21<0.02581385150551796){
     s0+=23.0;
     s1+=74.0;
    } else {
     s0+=19.0;
     s1+=1585.0;
    }
   }
  } else {
   if(i15<0.0002785181859508157){
    if(i0<-1.0967254638671875e-05){
     s1+=2.0;
    } else {
     s0+=13.0;
    }
   } else {
    s0+=266.0;
   }
  }
 }
} else {
 if(i36<1.176405668258667){
  if(i27<1.1180615425109863){
   if(i46<0.0001178292150143534){
    if(i32<1.0485165119171143){
     s0+=51.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i52<1.1742115020751953e-05){
     s0+=1.0;
     s1+=2328.0;
    } else {
     s0+=12.0;
     s1+=49.0;
    }
   }
  } else {
   s0+=1862.0;
  }
 } else {
  if(i18<0.0003789663314819336){
   if(i44<1.000321626663208){
    s0+=33.0;
   } else {
    s1+=38.0;
   }
  } else {
   if(i38<1.0772056579589844){
    if(i41<1.0702245235443115){
     s1+=10.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i1<0.0016914010047912598){
     s0+=65.0;
     s1+=2102.0;
    } else {
     s0+=5.0;
     s1+=11919.0;
    }
   }
  }
 }
}
if(i5<0.0005646944046020508){
 if(i17<1.0181578397750854){
  if(i3<-0.00010453863069415092){
   if(i16<0.02806571125984192){
    if(i70<0.07536345720291138){
     s0+=253.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i57<-3.0854702345095575e-05){
     s0+=26.0;
    } else {
     s0+=16.0;
     s1+=294.0;
    }
   }
  } else {
   if(i5<0.00022464990615844727){
    if(i28<5.072355270385742e-05){
     s0+=70978.0;
     s1+=623.0;
    } else {
     s0+=28313.0;
     s1+=1704.0;
    }
   } else {
    if(i21<0.009188128635287285){
     s0+=8122.0;
     s1+=213.0;
    } else {
     s0+=1447.0;
     s1+=1418.0;
    }
   }
  }
 } else {
  if(i58<0.03351224213838577){
   if(i32<1.0881938934326172){
    s1+=56.0;
   } else {
    if(i3<-8.610527584096417e-05){
     s0+=9.0;
     s1+=42.0;
    } else {
     s0+=516.0;
     s1+=45.0;
    }
   }
  } else {
   if(i15<0.0014735383447259665){
    s0+=142.0;
   } else {
    if(i8<0.00376290176063776){
     s0+=48.0;
     s1+=1.0;
    } else {
     s1+=724.0;
    }
   }
  }
 }
} else {
 if(i1<0.0013622641563415527){
  if(i62<-0.0009242647793143988){
   if(i3<-5.9855337894987315e-05){
    if(i51<-9.500251326244324e-05){
     s0+=50.0;
    } else {
     s0+=198.0;
     s1+=2446.0;
    }
   } else {
    if(i42<1.1541548701643478e-05){
     s0+=111.0;
     s1+=596.0;
    } else {
     s0+=506.0;
     s1+=164.0;
    }
   }
  } else {
   if(i37<-0.00021781801478937268){
    if(i8<0.004285641014575958){
     s0+=323.0;
     s1+=8.0;
    } else {
     s0+=208.0;
     s1+=695.0;
    }
   } else {
    if(i14<0.00026242402964271605){
     s0+=451.0;
     s1+=629.0;
    } else {
     s0+=3885.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i44<0.9985256195068359){
   s0+=355.0;
  } else {
   if(i21<0.0032859654165804386){
    if(i50<-3.5832799767376855e-06){
     s0+=246.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=369.0;
    }
   } else {
    if(i3<-7.58905807742849e-05){
     s0+=48.0;
     s1+=13084.0;
    } else {
     s0+=253.0;
     s1+=1011.0;
    }
   }
  }
 }
}
if(i7<1.0026319026947021){
 if(i17<1.0196888446807861){
  if(i15<0.0017227325588464737){
   if(i60<0.00017415458569303155){
    if(i29<0.00028252770425751805){
     s0+=19119.0;
     s1+=258.0;
    } else {
     s0+=55419.0;
     s1+=69.0;
    }
   } else {
    if(i21<0.011625530198216438){
     s0+=4596.0;
     s1+=518.0;
    } else {
     s0+=9914.0;
     s1+=67.0;
    }
   }
  } else {
   if(i25<0.001114855520427227){
    if(i14<0.000273000419838354){
     s0+=645.0;
     s1+=2505.0;
    } else {
     s0+=1814.0;
     s1+=3.0;
    }
   } else {
    if(i35<1.1838014125823975){
     s0+=18550.0;
     s1+=665.0;
    } else {
     s0+=41.0;
     s1+=392.0;
    }
   }
  }
 } else {
  if(i29<0.011483712121844292){
   if(i7<1.0003571510314941){
    if(i26<-0.0004392266273498535){
     s0+=8.0;
     s1+=5.0;
    } else {
     s0+=308.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.0004725371254608035){
     s0+=119.0;
     s1+=3.0;
    } else {
     s0+=91.0;
     s1+=667.0;
    }
   }
  } else {
   s1+=361.0;
  }
 }
} else {
 if(i37<-0.00027973036048933864){
  if(i16<0.12396937608718872){
   if(i0<4.6312808990478516e-05){
    if(i30<0.9973561763763428){
     s0+=130.0;
     s1+=270.0;
    } else {
     s0+=491.0;
     s1+=85.0;
    }
   } else {
    if(i27<1.4667320251464844){
     s0+=90.0;
     s1+=1349.0;
    } else {
     s0+=56.0;
     s1+=105.0;
    }
   }
  } else {
   if(i25<0.002366133499890566){
    if(i41<1.1040164232254028){
     s0+=56.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i42<3.6009339964948595e-05){
     s0+=20.0;
     s1+=12064.0;
    } else {
     s0+=59.0;
     s1+=633.0;
    }
   }
  }
 } else {
  if(i12<1.0247995853424072){
   if(i20<1.0141685009002686){
    if(i8<0.0025796955451369286){
     s0+=3293.0;
     s1+=171.0;
    } else {
     s0+=1854.0;
     s1+=2210.0;
    }
   } else {
    if(i48<1.000914454460144){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=1000.0;
    }
   }
  } else {
   if(i10<0.9995248317718506){
    if(i33<0.007794826757162809){
     s0+=8.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<-4.39759241999127e-06){
     s0+=1.0;
     s1+=720.0;
    } else {
     s0+=14.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i8<0.007057138718664646){
  if(i25<0.0010349079966545105){
   if(i31<0.0007306212210096419){
    if(i13<-0.00038376450538635254){
     s0+=8692.0;
     s1+=351.0;
    } else {
     s0+=19978.0;
     s1+=28.0;
    }
   } else {
    if(i27<1.056142807006836){
     s0+=2709.0;
    } else {
     s0+=719.0;
     s1+=2725.0;
    }
   }
  } else {
   if(i3<-6.778712122468278e-05){
    if(i38<1.1299548149108887){
     s0+=501.0;
     s1+=59.0;
    } else {
     s0+=69.0;
     s1+=253.0;
    }
   } else {
    if(i27<1.187287449836731){
     s0+=47583.0;
     s1+=6.0;
    } else {
     s0+=27947.0;
     s1+=634.0;
    }
   }
  }
 } else {
  if(i17<1.0092065334320068){
   if(i3<-0.0001077484994311817){
    if(i26<-0.0005950331687927246){
     s0+=397.0;
     s1+=130.0;
    } else {
     s0+=86.0;
     s1+=771.0;
    }
   } else {
    if(i41<1.0911989212036133){
     s0+=5560.0;
     s1+=627.0;
    } else {
     s0+=139.0;
     s1+=485.0;
    }
   }
  } else {
   if(i16<0.15185880661010742){
    if(i51<-5.361289368011057e-06){
     s0+=70.0;
     s1+=749.0;
    } else {
     s0+=104.0;
    }
   } else {
    if(i48<0.9968308806419373){
     s0+=7.0;
     s1+=2.0;
    } else {
     s1+=1296.0;
    }
   }
  }
 }
} else {
 if(i3<-8.533709478797391e-05){
  if(i34<1.1428050994873047){
   if(i27<1.1180615425109863){
    s1+=915.0;
   } else {
    s0+=287.0;
   }
  } else {
   if(i10<0.9748493432998657){
    if(i34<1.3834805488586426){
     s1+=5.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   } else {
    if(i67<-0.01329106092453003){
     s0+=8.0;
     s1+=31.0;
    } else {
     s0+=10.0;
     s1+=12964.0;
    }
   }
  }
 } else {
  if(i46<0.0007963000680319965){
   if(i21<0.002503689145669341){
    if(i38<1.0410643815994263){
     s0+=60.0;
     s1+=2.0;
    } else {
     s1+=133.0;
    }
   } else {
    if(i14<0.00035667672636918724){
     s1+=1210.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i67<0.002110779285430908){
    if(i25<0.002308938652276993){
     s0+=1572.0;
     s1+=59.0;
    } else {
     s0+=61.0;
     s1+=412.0;
    }
   } else {
    if(i14<0.0003911200328730047){
     s1+=389.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i2<1.003865361213684){
 if(i21<0.06435220688581467){
  if(i28<0.00010257959365844727){
   if(i27<1.0905578136444092){
    if(i27<1.0606331825256348){
     s0+=13159.0;
    } else {
     s0+=6048.0;
     s1+=846.0;
    }
   } else {
    if(i17<1.022343635559082){
     s0+=62438.0;
     s1+=190.0;
    } else {
     s0+=264.0;
     s1+=69.0;
    }
   }
  } else {
   if(i33<0.0010205528233200312){
    if(i8<0.004002394154667854){
     s0+=4428.0;
     s1+=352.0;
    } else {
     s0+=333.0;
     s1+=1693.0;
    }
   } else {
    if(i27<1.0988887548446655){
     s1+=244.0;
    } else {
     s0+=25525.0;
     s1+=2057.0;
    }
   }
  }
 } else {
  if(i51<-1.9706332750502042e-05){
   if(i67<-0.015847206115722656){
    if(i4<2.485513687133789e-05){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=58.0;
     s1+=17.0;
    }
   } else {
    if(i46<0.007036271505057812){
     s0+=10.0;
     s1+=32.0;
    } else {
     s0+=2.0;
     s1+=950.0;
    }
   }
  } else {
   if(i35<1.1042369604110718){
    s0+=261.0;
   } else {
    s1+=7.0;
   }
  }
 }
} else {
 if(i49<0.0358964279294014){
  if(i9<1.015977144241333){
   if(i14<0.00023542111739516258){
    if(i8<0.001560910022817552){
     s0+=94.0;
     s1+=34.0;
    } else {
     s0+=26.0;
     s1+=1321.0;
    }
   } else {
    if(i8<0.007523366250097752){
     s0+=3551.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=73.0;
    }
   }
  } else {
   if(i8<0.002058913465589285){
    if(i14<0.00029671439551748335){
     s1+=104.0;
    } else {
     s0+=201.0;
    }
   } else {
    if(i52<2.4497509002685547e-05){
     s0+=26.0;
     s1+=2373.0;
    } else {
     s0+=21.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i8<0.004418918397277594){
   if(i20<1.0104520320892334){
    if(i27<1.1028293371200562){
     s1+=9.0;
    } else {
     s0+=275.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.0014284849166870117){
     s0+=13.0;
    } else {
     s0+=18.0;
     s1+=347.0;
    }
   }
  } else {
   if(i63<0.0001834171562222764){
    if(i65<-0.00677114725112915){
     s0+=34.0;
     s1+=167.0;
    } else {
     s0+=79.0;
     s1+=13038.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i2<1.0038676261901855){
 if(i16<0.2064477801322937){
  if(i15<0.0017125974409282207){
   if(i51<-1.9682294805534184e-05){
    if(i4<2.8073787689208984e-05){
     s1+=32.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i27<1.0817922353744507){
     s0+=16821.0;
     s1+=568.0;
    } else {
     s0+=72331.0;
     s1+=350.0;
    }
   }
  } else {
   if(i11<0.9981818199157715){
    if(i8<0.014080335386097431){
     s0+=14581.0;
     s1+=329.0;
    } else {
     s0+=168.0;
     s1+=102.0;
    }
   } else {
    if(i33<0.0011380019132047892){
     s0+=1699.0;
     s1+=2238.0;
    } else {
     s0+=6356.0;
     s1+=1743.0;
    }
   }
  }
 } else {
  if(i3<-3.351734994794242e-05){
   if(i21<0.015541639178991318){
    if(i7<1.0011892318725586){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    if(i29<0.002242547459900379){
     s0+=1.0;
    } else {
     s0+=6.0;
     s1+=1088.0;
    }
   }
  } else {
   if(i31<0.0010239400435239077){
    if(i57<-3.8008129195077345e-06){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=162.0;
    }
   } else {
    if(i54<0.0028644511476159096){
     s0+=56.0;
     s1+=17.0;
    } else {
     s0+=8.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i9<1.0174907445907593){
  if(i21<0.012740911915898323){
   if(i14<0.0002306138921994716){
    if(i29<0.001044039847329259){
     s0+=24.0;
     s1+=1497.0;
    } else {
     s0+=153.0;
     s1+=153.0;
    }
   } else {
    if(i67<-0.002401024103164673){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=3889.0;
    }
   }
  } else {
   if(i21<0.03342084586620331){
    if(i44<1.0010194778442383){
     s0+=95.0;
     s1+=133.0;
    } else {
     s0+=41.0;
     s1+=617.0;
    }
   } else {
    if(i60<0.0031683724373579025){
     s0+=5.0;
     s1+=2308.0;
    } else {
     s0+=24.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i14<0.0007449550903402269){
   if(i0<6.479024887084961e-05){
    if(i8<0.003002650337293744){
     s0+=58.0;
     s1+=4.0;
    } else {
     s1+=556.0;
    }
   } else {
    if(i26<-1.0013580322265625e-05){
     s0+=4.0;
     s1+=203.0;
    } else {
     s0+=7.0;
     s1+=12089.0;
    }
   }
  } else {
   s0+=114.0;
  }
 }
}
if(i4<2.1159648895263672e-05){
 if(i45<0.2062317132949829){
  if(i6<1.012428879737854){
   if(i8<0.003401980036869645){
    if(i15<0.0009027161868289113){
     s0+=63773.0;
     s1+=159.0;
    } else {
     s0+=20366.0;
     s1+=693.0;
    }
   } else {
    if(i33<0.0010893691796809435){
     s0+=3261.0;
     s1+=2037.0;
    } else {
     s0+=21447.0;
     s1+=1031.0;
    }
   }
  } else {
   if(i21<0.02393154799938202){
    if(i38<1.0840504169464111){
     s0+=5.0;
     s1+=51.0;
    } else {
     s0+=496.0;
     s1+=40.0;
    }
   } else {
    if(i53<0.999617338180542){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=352.0;
    }
   }
  }
 } else {
  if(i14<0.00013934305752627552){
   if(i53<1.00223970413208){
    if(i3<-5.434684862848371e-05){
     s1+=2.0;
    } else {
     s0+=57.0;
    }
   } else {
    if(i49<0.027688967064023018){
     s0+=1.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i57<-2.9275656743266154e-06){
    if(i43<0.0021229907870292664){
     s0+=13.0;
     s1+=8.0;
    } else {
     s0+=13.0;
     s1+=561.0;
    }
   } else {
    if(i1<-0.002830803394317627){
     s1+=1.0;
    } else {
     s0+=67.0;
    }
   }
  }
 }
} else {
 if(i8<0.004064439330250025){
  if(i1<0.00179213285446167){
   if(i34<1.0880210399627686){
    if(i33<0.00022361279116012156){
     s0+=1415.0;
    } else {
     s0+=1.0;
     s1+=259.0;
    }
   } else {
    if(i19<1.022650957107544){
     s0+=3497.0;
     s1+=36.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   }
  } else {
   if(i4<7.18235969543457e-05){
    if(i0<0.00012511014938354492){
     s0+=22.0;
     s1+=61.0;
    } else {
     s0+=1.0;
     s1+=515.0;
    }
   } else {
    if(i14<0.0012981654144823551){
     s1+=155.0;
    } else {
     s0+=240.0;
    }
   }
  }
 } else {
  if(i20<0.9970088005065918){
   if(i0<-1.1324882507324219e-06){
    if(i35<1.1222901344299316){
     s0+=839.0;
     s1+=96.0;
    } else {
     s0+=50.0;
     s1+=138.0;
    }
   } else {
    if(i15<0.005737862549722195){
     s0+=207.0;
     s1+=135.0;
    } else {
     s0+=36.0;
     s1+=746.0;
    }
   }
  } else {
   if(i26<-0.00019675493240356445){
    if(i39<0.07310552150011063){
     s0+=252.0;
     s1+=126.0;
    } else {
     s0+=119.0;
     s1+=802.0;
    }
   } else {
    if(i31<0.0038965162821114063){
     s0+=312.0;
     s1+=16141.0;
    } else {
     s0+=103.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i0<6.312131881713867e-05){
 if(i5<0.0003272891044616699){
  if(i45<0.20677721500396729){
   if(i28<6.204843521118164e-05){
    if(i8<0.021174799650907516){
     s0+=74289.0;
     s1+=778.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i8<0.0035355815198272467){
     s0+=24301.0;
     s1+=451.0;
    } else {
     s0+=6299.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i21<0.033865123987197876){
    if(i15<0.002328313887119293){
     s0+=117.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=18.0;
    }
   } else {
    if(i15<0.0019645225256681442){
     s0+=9.0;
    } else {
     s1+=280.0;
    }
   }
  }
 } else {
  if(i62<-0.0008070315816439688){
   if(i18<0.10403457283973694){
    if(i3<-6.761107215425e-05){
     s0+=104.0;
     s1+=265.0;
    } else {
     s0+=760.0;
     s1+=233.0;
    }
   } else {
    if(i37<-0.0002092879731208086){
     s0+=230.0;
     s1+=2168.0;
    } else {
     s0+=323.0;
     s1+=193.0;
    }
   }
  } else {
   if(i37<-0.0001829545508371666){
    if(i31<0.0007777325226925313){
     s0+=327.0;
     s1+=12.0;
    } else {
     s0+=649.0;
     s1+=724.0;
    }
   } else {
    if(i8<0.004010457079857588){
     s0+=5994.0;
     s1+=43.0;
    } else {
     s0+=1224.0;
     s1+=865.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i24<0.0009706164710223675){
   if(i24<0.00024605359067209065){
    s0+=89.0;
   } else {
    s1+=2277.0;
   }
  } else {
   if(i29<0.002594402991235256){
    s0+=1953.0;
   } else {
    if(i39<0.12332543730735779){
     s1+=62.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i26<-0.0003209114074707031){
   if(i38<1.1059861183166504){
    if(i31<0.00216761976480484){
     s0+=38.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i15<0.0055555603466928005){
     s0+=36.0;
     s1+=33.0;
    } else {
     s0+=7.0;
     s1+=292.0;
    }
   }
  } else {
   if(i16<0.07779869437217712){
    if(i8<0.005813753232359886){
     s0+=17.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=250.0;
    }
   } else {
    if(i18<0.12870612740516663){
     s0+=9.0;
     s1+=654.0;
    } else {
     s0+=5.0;
     s1+=12608.0;
    }
   }
  }
 }
}
if(i28<0.0002626776695251465){
 if(i5<0.0005376935005187988){
  if(i12<1.0187734365463257){
   if(i8<0.003435804508626461){
    if(i41<1.0179111957550049){
     s0+=9646.0;
     s1+=488.0;
    } else {
     s0+=68700.0;
     s1+=408.0;
    }
   } else {
    if(i4<-3.2782554626464844e-06){
     s0+=18761.0;
     s1+=360.0;
    } else {
     s0+=1252.0;
     s1+=2344.0;
    }
   }
  } else {
   if(i24<0.0025651552714407444){
    if(i38<1.0887722969055176){
     s1+=111.0;
    } else {
     s0+=338.0;
     s1+=12.0;
    }
   } else {
    if(i20<0.9709386825561523){
     s0+=19.0;
    } else {
     s0+=14.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i21<0.006672372575849295){
   if(i3<-3.190539428032935e-05){
    if(i44<0.9998396635055542){
     s0+=1.0;
    } else {
     s1+=37.0;
    }
   } else {
    s0+=79.0;
   }
  } else {
   if(i67<-0.012020856142044067){
    if(i26<-0.0005023181438446045){
     s0+=14.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i2<0.99925696849823){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=1607.0;
    }
   }
  }
 }
} else {
 if(i23<0.17161235213279724){
  if(i20<1.0097534656524658){
   if(i37<-0.00022340462601277977){
    if(i12<0.9943280220031738){
     s0+=469.0;
     s1+=927.0;
    } else {
     s0+=3474.0;
     s1+=1057.0;
    }
   } else {
    if(i7<1.0059800148010254){
     s0+=11674.0;
     s1+=937.0;
    } else {
     s0+=166.0;
     s1+=245.0;
    }
   }
  } else {
   if(i43<0.0010153346229344606){
    if(i1<0.0007868409156799316){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=1714.0;
    }
   } else {
    if(i33<0.002262522466480732){
     s0+=966.0;
     s1+=71.0;
    } else {
     s0+=63.0;
     s1+=1277.0;
    }
   }
  }
 } else {
  if(i3<-4.4891625293530524e-05){
   if(i8<0.002349894493818283){
    if(i6<1.0133508443832397){
     s0+=28.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=68.0;
    }
   } else {
    if(i44<0.9994646906852722){
     s0+=15.0;
    } else {
     s0+=35.0;
     s1+=12334.0;
    }
   }
  } else {
   if(i15<0.002829848090186715){
    s0+=303.0;
   } else {
    if(i63<2.439002400933532e-06){
     s0+=18.0;
     s1+=272.0;
    } else {
     s0+=109.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i20<1.007920742034912){
 if(i17<1.0203731060028076){
  if(i11<1.0065231323242188){
   if(i8<0.0036593670956790447){
    if(i6<0.9969204664230347){
     s0+=23019.0;
     s1+=704.0;
    } else {
     s0+=65970.0;
     s1+=365.0;
    }
   } else {
    if(i25<0.0011982028372585773){
     s0+=2834.0;
     s1+=2593.0;
    } else {
     s0+=21203.0;
     s1+=2130.0;
    }
   }
  } else {
   if(i21<0.013258795253932476){
    if(i25<0.0010093505261465907){
     s1+=25.0;
    } else {
     s0+=526.0;
     s1+=36.0;
    }
   } else {
    if(i45<0.03763046860694885){
     s0+=211.0;
     s1+=159.0;
    } else {
     s0+=76.0;
     s1+=1113.0;
    }
   }
  }
 } else {
  if(i0<2.110004425048828e-05){
   if(i32<1.1758689880371094){
    if(i32<1.0887749195098877){
     s1+=39.0;
    } else {
     s0+=405.0;
     s1+=52.0;
    }
   } else {
    if(i58<0.04100068658590317){
     s0+=141.0;
     s1+=33.0;
    } else {
     s0+=39.0;
     s1+=396.0;
    }
   }
  } else {
   if(i14<0.0007126114796847105){
    if(i31<0.00047566217835992575){
     s0+=74.0;
    } else {
     s0+=86.0;
     s1+=2348.0;
    }
   } else {
    s0+=46.0;
   }
  }
 }
} else {
 if(i3<-7.313112291740254e-05){
  if(i28<0.0015215575695037842){
   if(i34<1.1430405378341675){
    if(i44<0.9995520710945129){
     s0+=119.0;
    } else {
     s0+=30.0;
     s1+=1113.0;
    }
   } else {
    if(i41<0.9325316548347473){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=11627.0;
    }
   }
  } else {
   if(i5<0.0028496086597442627){
    s0+=183.0;
   } else {
    s1+=161.0;
   }
  }
 } else {
  if(i29<0.0009260938968509436){
   if(i0<3.641843795776367e-05){
    s0+=46.0;
   } else {
    if(i29<0.00015194197476375848){
     s0+=8.0;
    } else {
     s1+=982.0;
    }
   }
  } else {
   if(i24<0.0025633741170167923){
    if(i35<1.0750348567962646){
     s0+=84.0;
     s1+=25.0;
    } else {
     s0+=1500.0;
     s1+=8.0;
    }
   } else {
    if(i15<0.0018471702933311462){
     s0+=133.0;
     s1+=1.0;
    } else {
     s1+=210.0;
    }
   }
  }
 }
}
if(i3<-0.00010638617095537484){
 if(i23<0.04118296504020691){
  if(i41<1.0293529033660889){
   if(i70<0.052732765674591064){
    if(i2<1.0071600675582886){
     s0+=443.0;
     s1+=14.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i62<0.0007333725225180387){
     s0+=21.0;
     s1+=3.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i32<1.1232807636260986){
    s0+=25.0;
   } else {
    if(i35<1.0550994873046875){
     s0+=9.0;
    } else {
     s0+=13.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i14<0.0007370628882199526){
   if(i50<-1.564897502248641e-05){
    s0+=66.0;
   } else {
    if(i35<1.0267986059188843){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=14635.0;
    }
   }
  } else {
   s0+=116.0;
  }
 }
} else {
 if(i28<0.0001290440559387207){
  if(i16<0.2286863923072815){
   if(i27<1.0905578136444092){
    if(i18<0.06304863095283508){
     s0+=19045.0;
     s1+=987.0;
    } else {
     s0+=574.0;
     s1+=264.0;
    }
   } else {
    if(i49<0.05492115020751953){
     s0+=59352.0;
     s1+=147.0;
    } else {
     s0+=7259.0;
     s1+=235.0;
    }
   }
  } else {
   if(i15<0.002415558323264122){
    s0+=80.0;
   } else {
    s1+=113.0;
   }
  }
 } else {
  if(i13<0.0011339783668518066){
   if(i15<0.0017987508326768875){
    if(i9<1.0183026790618896){
     s0+=15299.0;
     s1+=352.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   } else {
    if(i22<1.010589599609375){
     s0+=12114.0;
     s1+=3017.0;
    } else {
     s0+=876.0;
     s1+=1816.0;
    }
   }
  } else {
   if(i43<0.0009675988694652915){
    if(i42<1.8201615603175014e-05){
     s0+=3.0;
     s1+=1832.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i43<0.0017793856095522642){
     s0+=985.0;
     s1+=232.0;
    } else {
     s0+=51.0;
     s1+=591.0;
    }
   }
  }
 }
}
if(i35<1.127976417541504){
 if(i2<1.0038644075393677){
  if(i8<0.0036110891960561275){
   if(i15<0.0011067326413467526){
    if(i65<-0.00039780139923095703){
     s0+=10818.0;
     s1+=112.0;
    } else {
     s0+=57496.0;
     s1+=106.0;
    }
   } else {
    if(i33<0.0004952988820150495){
     s0+=2519.0;
     s1+=599.0;
    } else {
     s0+=15448.0;
     s1+=145.0;
    }
   }
  } else {
   if(i10<1.0026817321777344){
    if(i1<-0.00036448240280151367){
     s0+=21425.0;
     s1+=687.0;
    } else {
     s0+=1419.0;
     s1+=1786.0;
    }
   } else {
    if(i2<1.0010714530944824){
     s0+=571.0;
     s1+=73.0;
    } else {
     s0+=353.0;
     s1+=1171.0;
    }
   }
  }
 } else {
  if(i10<1.0134499073028564){
   if(i8<0.003986856434494257){
    if(i24<0.0006937292637303472){
     s0+=586.0;
     s1+=442.0;
    } else {
     s0+=2547.0;
    }
   } else {
    if(i25<0.0012290864251554012){
     s1+=972.0;
    } else {
     s0+=417.0;
     s1+=1235.0;
    }
   }
  } else {
   if(i28<0.0012732148170471191){
    if(i51<-0.000165295583428815){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=3154.0;
    }
   } else {
    if(i29<0.0025293859653174877){
     s0+=148.0;
    } else {
     s1+=94.0;
    }
   }
  }
 }
} else {
 if(i24<0.002560233697295189){
  if(i28<0.00013315677642822266){
   s0+=1320.0;
  } else {
   if(i17<1.0238627195358276){
    if(i47<3.6614299460779876e-05){
     s0+=527.0;
     s1+=4.0;
    } else {
     s0+=69.0;
     s1+=58.0;
    }
   } else {
    if(i44<1.000751256942749){
     s0+=1.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i3<-3.197797923348844e-05){
   if(i9<0.9359695315361023){
    if(i16<0.007369309663772583){
     s0+=65.0;
     s1+=18.0;
    } else {
     s0+=16.0;
     s1+=116.0;
    }
   } else {
    if(i32<1.1329163312911987){
     s0+=24.0;
     s1+=11.0;
    } else {
     s0+=118.0;
     s1+=13417.0;
    }
   }
  } else {
   if(i27<1.2190104722976685){
    if(i23<0.08599627017974854){
     s0+=11.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i63<-7.389016900560819e-07){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=507.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i2<1.0038647651672363){
 if(i8<0.00760293286293745){
  if(i5<0.00027066469192504883){
   if(i32<1.0867384672164917){
    if(i65<-0.0003542006015777588){
     s0+=4631.0;
     s1+=1036.0;
    } else {
     s0+=28758.0;
     s1+=842.0;
    }
   } else {
    if(i44<1.0026369094848633){
     s0+=65386.0;
     s1+=438.0;
    } else {
     s0+=16.0;
     s1+=34.0;
    }
   }
  } else {
   if(i25<0.0009442743612453341){
    if(i33<0.000227240365347825){
     s0+=1968.0;
    } else {
     s0+=176.0;
     s1+=983.0;
    }
   } else {
    if(i7<1.002300500869751){
     s0+=4534.0;
     s1+=88.0;
    } else {
     s0+=1474.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i41<1.0529205799102783){
   if(i1<-0.00023692846298217773){
    if(i23<0.11937218904495239){
     s0+=4151.0;
     s1+=106.0;
    } else {
     s0+=103.0;
     s1+=77.0;
    }
   } else {
    if(i18<0.05536705255508423){
     s0+=251.0;
     s1+=53.0;
    } else {
     s0+=58.0;
     s1+=272.0;
    }
   }
  } else {
   if(i45<0.15889155864715576){
    if(i44<0.9997377395629883){
     s0+=184.0;
     s1+=26.0;
    } else {
     s0+=514.0;
     s1+=1183.0;
    }
   } else {
    if(i44<0.9980840682983398){
     s0+=5.0;
    } else {
     s0+=17.0;
     s1+=1214.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007036929600872099){
  if(i34<1.1706266403198242){
   if(i48<1.0029752254486084){
    if(i4<1.7702579498291016e-05){
     s0+=215.0;
     s1+=25.0;
    } else {
     s0+=201.0;
     s1+=2750.0;
    }
   } else {
    if(i14<0.00016824192425701767){
     s0+=7.0;
     s1+=42.0;
    } else {
     s0+=1040.0;
    }
   }
  } else {
   if(i8<0.0028445133939385414){
    if(i1<0.0020145177841186523){
     s0+=150.0;
     s1+=2.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i9<0.9256182909011841){
     s0+=26.0;
     s1+=71.0;
    } else {
     s0+=100.0;
     s1+=14633.0;
    }
   }
  }
 } else {
  if(i65<0.009916245937347412){
   s0+=2597.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i6<1.0136241912841797){
 if(i5<0.0005390048027038574){
  if(i8<0.0036073196679353714){
   if(i35<1.0231759548187256){
    if(i35<1.0231659412384033){
     s0+=12361.0;
     s1+=469.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i59<1.0179157257080078){
     s0+=13723.0;
     s1+=294.0;
    } else {
     s0+=60255.0;
     s1+=187.0;
    }
   }
  } else {
   if(i5<-8.982419967651367e-05){
    if(i45<0.23000508546829224){
     s0+=19358.0;
     s1+=266.0;
    } else {
     s0+=12.0;
     s1+=126.0;
    }
   } else {
    if(i15<0.002583523280918598){
     s0+=492.0;
     s1+=1728.0;
    } else {
     s0+=3124.0;
     s1+=1192.0;
    }
   }
  }
 } else {
  if(i15<0.0020170239731669426){
   if(i5<0.0012685060501098633){
    if(i1<0.001388251781463623){
     s0+=3088.0;
     s1+=53.0;
    } else {
     s0+=27.0;
     s1+=79.0;
    }
   } else {
    if(i31<0.0008577009430155158){
     s0+=29.0;
     s1+=303.0;
    } else {
     s0+=212.0;
     s1+=10.0;
    }
   }
  } else {
   if(i38<1.1300873756408691){
    if(i14<0.000357667391654104){
     s0+=739.0;
     s1+=1518.0;
    } else {
     s0+=1608.0;
     s1+=92.0;
    }
   } else {
    if(i37<-0.00037401606095954776){
     s0+=102.0;
     s1+=2160.0;
    } else {
     s0+=498.0;
     s1+=1115.0;
    }
   }
  }
 }
} else {
 if(i32<1.1704325675964355){
  if(i36<1.1174830198287964){
   if(i48<0.9997425079345703){
    s0+=30.0;
   } else {
    if(i16<0.1380356252193451){
     s0+=15.0;
     s1+=1861.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i10<1.0162644386291504){
    if(i21<0.01729930192232132){
     s0+=820.0;
     s1+=42.0;
    } else {
     s0+=142.0;
     s1+=309.0;
    }
   } else {
    if(i3<-6.103762279963121e-05){
     s1+=374.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i23<0.09619569778442383){
   if(i42<-2.9325090054044267e-06){
    s1+=90.0;
   } else {
    if(i14<0.0005016780924052){
     s0+=93.0;
     s1+=24.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i25<0.003995232284069061){
    if(i34<1.449568510055542){
     s1+=939.0;
    } else {
     s0+=101.0;
    }
   } else {
    if(i0<-3.814697265625e-05){
     s0+=6.0;
     s1+=16.0;
    } else {
     s0+=17.0;
     s1+=10695.0;
    }
   }
  }
 }
}
if(i16<0.18658706545829773){
 if(i26<0.00021332502365112305){
  if(i5<0.0003440976142883301){
   if(i8<0.0028421697206795216){
    if(i19<0.9953866004943848){
     s0+=14227.0;
     s1+=374.0;
    } else {
     s0+=61195.0;
     s1+=170.0;
    }
   } else {
    if(i29<0.001073377439752221){
     s0+=5326.0;
     s1+=1537.0;
    } else {
     s0+=23433.0;
     s1+=823.0;
    }
   }
  } else {
   if(i15<0.002069029724225402){
    if(i33<0.0024304059334099293){
     s0+=6178.0;
     s1+=195.0;
    } else {
     s0+=124.0;
     s1+=149.0;
    }
   } else {
    if(i0<-6.139278411865234e-06){
     s0+=1884.0;
     s1+=301.0;
    } else {
     s0+=2181.0;
     s1+=3951.0;
    }
   }
  }
 } else {
  if(i10<1.0134613513946533){
   if(i24<0.0010733027011156082){
    s1+=637.0;
   } else {
    if(i25<0.0024716376792639494){
     s0+=823.0;
    } else {
     s0+=47.0;
     s1+=222.0;
    }
   }
  } else {
   if(i52<2.008676528930664e-05){
    if(i50<-5.571567271545064e-06){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=2792.0;
    }
   } else {
    if(i13<0.0022140145301818848){
     s0+=94.0;
     s1+=1.0;
    } else {
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i23<0.2161392867565155){
  if(i25<0.002443302422761917){
   if(i60<0.0005147766787558794){
    if(i24<0.0020075703505426645){
     s0+=365.0;
    } else {
     s0+=27.0;
     s1+=4.0;
    }
   } else {
    if(i37<-2.550132921896875e-05){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i2<1.0015239715576172){
    if(i61<0.12496279180049896){
     s0+=145.0;
     s1+=8.0;
    } else {
     s0+=59.0;
     s1+=135.0;
    }
   } else {
    if(i36<1.7041046619415283){
     s0+=11.0;
     s1+=1310.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i27<1.194390058517456){
   s0+=61.0;
  } else {
   if(i33<0.0023409826681017876){
    s0+=35.0;
   } else {
    if(i36<1.6811659336090088){
     s0+=92.0;
     s1+=11790.0;
    } else {
     s0+=44.0;
    }
   }
  }
 }
}
if(i3<-8.73241078807041e-05){
 if(i12<0.9097146987915039){
  if(i13<-0.0047057271003723145){
   if(i35<1.068709373474121){
    if(i41<1.0540410280227661){
     s0+=500.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i10<0.9656873941421509){
     s0+=55.0;
     s1+=22.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i25<0.01548687368631363){
    if(i39<0.0880332738161087){
     s0+=156.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=80.0;
    }
   } else {
    if(i8<0.0386989451944828){
     s1+=56.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i44<0.9983112215995789){
   s0+=228.0;
  } else {
   if(i16<0.018249988555908203){
    if(i67<-0.006666451692581177){
     s0+=165.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   } else {
    if(i8<0.005186924245208502){
     s0+=119.0;
     s1+=744.0;
    } else {
     s0+=102.0;
     s1+=15080.0;
    }
   }
  }
 }
} else {
 if(i5<0.0003961920738220215){
  if(i3<-6.234967440832406e-05){
   if(i4<6.020069122314453e-06){
    if(i16<0.17545437812805176){
     s0+=1363.0;
     s1+=54.0;
    } else {
     s0+=5.0;
     s1+=60.0;
    }
   } else {
    if(i27<1.3251163959503174){
     s0+=11.0;
     s1+=184.0;
    } else {
     s0+=176.0;
     s1+=12.0;
    }
   }
  } else {
   if(i39<0.011364747770130634){
    if(i19<0.9924095273017883){
     s0+=769.0;
     s1+=119.0;
    } else {
     s0+=62068.0;
     s1+=340.0;
    }
   } else {
    if(i8<0.0031487327069044113){
     s0+=26012.0;
     s1+=420.0;
    } else {
     s0+=15753.0;
     s1+=2059.0;
    }
   }
  }
 } else {
  if(i17<1.015289545059204){
   if(i0<9.542703628540039e-05){
    if(i28<0.00042322278022766113){
     s0+=2429.0;
     s1+=1485.0;
    } else {
     s0+=5285.0;
     s1+=476.0;
    }
   } else {
    if(i28<0.0007632076740264893){
     s0+=28.0;
     s1+=677.0;
    } else {
     s0+=303.0;
     s1+=116.0;
    }
   }
  } else {
   if(i36<1.1162974834442139){
    if(i46<0.0024741210509091616){
     s0+=5.0;
     s1+=1096.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i8<0.006940812338143587){
     s0+=1065.0;
     s1+=81.0;
    } else {
     s0+=45.0;
     s1+=884.0;
    }
   }
  }
 }
}
if(i1<0.0009757876396179199){
 if(i21<0.06435220688581467){
  if(i45<0.19094935059547424){
   if(i17<1.0181355476379395){
    if(i28<7.814168930053711e-05){
     s0+=76755.0;
     s1+=826.0;
    } else {
     s0+=36116.0;
     s1+=4343.0;
    }
   } else {
    if(i57<-3.7880229228903772e-06){
     s0+=486.0;
     s1+=950.0;
    } else {
     s0+=468.0;
     s1+=17.0;
    }
   }
  } else {
   if(i24<0.002562624868005514){
    if(i55<1.001595377922058){
     s0+=227.0;
    } else {
     s0+=41.0;
     s1+=36.0;
    }
   } else {
    if(i38<1.1231228113174438){
     s0+=65.0;
     s1+=13.0;
    } else {
     s0+=63.0;
     s1+=658.0;
    }
   }
  }
 } else {
  if(i42<7.672447827644646e-05){
   if(i59<0.8988816738128662){
    if(i61<0.26532143354415894){
     s0+=69.0;
     s1+=8.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i64<0.018669992685317993){
     s0+=4.0;
    } else {
     s0+=10.0;
     s1+=1217.0;
    }
   }
  } else {
   if(i63<1.6083955415524542e-05){
    s1+=4.0;
   } else {
    if(i1<-0.002159208059310913){
     s0+=277.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i24<0.0023471880704164505){
  if(i29<0.0011844022665172815){
   if(i44<0.999744176864624){
    s0+=44.0;
   } else {
    if(i24<0.0011176697444170713){
     s0+=9.0;
     s1+=2120.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i67<0.002620398998260498){
    if(i33<0.0012041155714541674){
     s1+=29.0;
    } else {
     s0+=1771.0;
     s1+=2.0;
    }
   } else {
    if(i7<1.001358985900879){
     s0+=15.0;
    } else {
     s1+=157.0;
    }
   }
  }
 } else {
  if(i45<6.139278411865234e-06){
   if(i19<0.9596891403198242){
    if(i42<2.112809852405917e-06){
     s1+=20.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   } else {
    if(i66<0.0007698740810155869){
     s0+=2.0;
     s1+=9.0;
    } else {
     s1+=62.0;
    }
   }
  } else {
   if(i10<0.9753194451332092){
    if(i28<0.0008175373077392578){
     s0+=18.0;
     s1+=16.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i23<0.09624075889587402){
     s0+=42.0;
     s1+=402.0;
    } else {
     s0+=12.0;
     s1+=13334.0;
    }
   }
  }
 }
}
if(i3<-8.7317792349495e-05){
 if(i16<0.0192071795463562){
  if(i19<0.9859051704406738){
   if(i62<0.0011868671281263232){
    if(i19<0.9574721455574036){
     s0+=675.0;
     s1+=11.0;
    } else {
     s0+=61.0;
     s1+=34.0;
    }
   } else {
    if(i21<0.028852973133325577){
     s0+=25.0;
    } else {
     s0+=5.0;
     s1+=20.0;
    }
   }
  } else {
   if(i28<0.0012061893939971924){
    if(i42<2.72029428742826e-05){
     s1+=80.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i70<0.06001710891723633){
     s0+=10.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i16<0.13805484771728516){
   if(i50<-6.607598152186256e-06){
    s0+=252.0;
   } else {
    if(i47<0.0003148278046865016){
     s0+=89.0;
     s1+=2427.0;
    } else {
     s0+=192.0;
     s1+=135.0;
    }
   }
  } else {
   if(i27<1.1719775199890137){
    if(i11<1.0097121000289917){
     s0+=34.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i59<1.0177699327468872){
     s0+=2.0;
     s1+=263.0;
    } else {
     s0+=2.0;
     s1+=13150.0;
    }
   }
  }
 }
} else {
 if(i8<0.003716889303177595){
  if(i26<0.00021070241928100586){
   if(i1<0.0014687776565551758){
    if(i8<0.0023907613940536976){
     s0+=76689.0;
     s1+=425.0;
    } else {
     s0+=14774.0;
     s1+=693.0;
    }
   } else {
    if(i46<0.0005668611847795546){
     s1+=73.0;
    } else {
     s0+=199.0;
    }
   }
  } else {
   if(i25<0.0012068899814039469){
    s1+=351.0;
   } else {
    s0+=497.0;
   }
  }
 } else {
  if(i20<0.9974866509437561){
   if(i63<-4.111509042559192e-06){
    if(i16<0.12317851185798645){
     s0+=68.0;
     s1+=49.0;
    } else {
     s0+=11.0;
     s1+=88.0;
    }
   } else {
    if(i4<-6.377696990966797e-06){
     s0+=14526.0;
     s1+=131.0;
    } else {
     s0+=3997.0;
     s1+=1092.0;
    }
   }
  } else {
   if(i7<1.0002175569534302){
    if(i49<0.03842681273818016){
     s0+=3222.0;
     s1+=34.0;
    } else {
     s0+=67.0;
     s1+=48.0;
    }
   } else {
    if(i25<0.001221831887960434){
     s0+=105.0;
     s1+=3236.0;
    } else {
     s0+=1078.0;
     s1+=1926.0;
    }
   }
  }
 }
}
if(i40<1.0261638164520264){
 if(i0<7.75456428527832e-05){
  if(i15<0.0018192932475358248){
   if(i31<0.0006220279610715806){
    if(i27<1.1979892253875732){
     s0+=67778.0;
     s1+=140.0;
    } else {
     s0+=6847.0;
     s1+=99.0;
    }
   } else {
    if(i34<1.0845178365707397){
     s0+=3049.0;
     s1+=725.0;
    } else {
     s0+=14979.0;
     s1+=149.0;
    }
   }
  } else {
   if(i1<-0.0003896355628967285){
    if(i24<0.0009924328187480569){
     s0+=426.0;
     s1+=278.0;
    } else {
     s0+=16813.0;
     s1+=681.0;
    }
   } else {
    if(i32<1.0440731048583984){
     s0+=1575.0;
     s1+=5.0;
    } else {
     s0+=2142.0;
     s1+=4513.0;
    }
   }
  }
 } else {
  if(i36<1.176405668258667){
   if(i28<0.0005085766315460205){
    if(i24<0.0010737174889072776){
     s1+=1593.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i43<0.0008961788262240589){
     s1+=2.0;
    } else {
     s0+=1148.0;
    }
   }
  } else {
   if(i30<0.8736703991889954){
    if(i58<0.03037199005484581){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=100.0;
    }
   } else {
    if(i2<1.0027952194213867){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=3320.0;
    }
   }
  }
 }
} else {
 if(i32<1.1714401245117188){
  if(i2<1.001904010772705){
   if(i8<0.006374994292855263){
    if(i38<1.1354689598083496){
     s0+=683.0;
     s1+=4.0;
    } else {
     s0+=143.0;
     s1+=19.0;
    }
   } else {
    if(i5<-0.0003973841667175293){
     s0+=23.0;
    } else {
     s0+=16.0;
     s1+=100.0;
    }
   }
  } else {
   if(i52<1.3768672943115234e-05){
    if(i31<0.000520317698828876){
     s0+=121.0;
     s1+=84.0;
    } else {
     s0+=152.0;
     s1+=1270.0;
    }
   } else {
    if(i49<0.05622538924217224){
     s0+=247.0;
     s1+=14.0;
    } else {
     s0+=13.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i17<1.022916316986084){
   if(i1<0.00011724233627319336){
    if(i31<0.002193182474002242){
     s0+=192.0;
     s1+=49.0;
    } else {
     s0+=11.0;
     s1+=53.0;
    }
   } else {
    if(i8<0.005769789218902588){
     s0+=24.0;
     s1+=16.0;
    } else {
     s0+=21.0;
     s1+=438.0;
    }
   }
  } else {
   if(i8<0.005031873472034931){
    if(i47<-1.872199027275201e-05){
     s1+=174.0;
    } else {
     s0+=156.0;
     s1+=12.0;
    }
   } else {
    if(i23<0.1123008131980896){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=10282.0;
    }
   }
  }
 }
}
if(i6<1.0135951042175293){
 if(i16<0.19869360327720642){
  if(i4<1.7464160919189453e-05){
   if(i34<1.0903575420379639){
    if(i8<0.0034502430353313684){
     s0+=23803.0;
     s1+=742.0;
    } else {
     s0+=3378.0;
     s1+=1739.0;
    }
   } else {
    if(i35<1.1230299472808838){
     s0+=77470.0;
     s1+=750.0;
    } else {
     s0+=2277.0;
     s1+=353.0;
    }
   }
  } else {
   if(i56<0.0008419580408371985){
    if(i37<-0.00019316788529977202){
     s0+=920.0;
     s1+=783.0;
    } else {
     s0+=5485.0;
     s1+=876.0;
    }
   } else {
    if(i35<1.085451602935791){
     s0+=1092.0;
     s1+=737.0;
    } else {
     s0+=351.0;
     s1+=1878.0;
    }
   }
  }
 } else {
  if(i8<0.004614951089024544){
   if(i2<1.0114130973815918){
    if(i6<1.0131287574768066){
     s0+=302.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i39<0.01175357960164547){
    if(i7<1.0016285181045532){
     s0+=14.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i29<0.0020972699858248234){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=24.0;
     s1+=1864.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007054299348965287){
  if(i51<-1.1419397196732461e-05){
   if(i8<0.0035256631672382355){
    if(i42<-6.895797469042009e-06){
     s0+=6.0;
     s1+=495.0;
    } else {
     s0+=262.0;
     s1+=25.0;
    }
   } else {
    if(i13<-0.0020061135292053223){
     s0+=63.0;
     s1+=99.0;
    } else {
     s0+=20.0;
     s1+=14075.0;
    }
   }
  } else {
   if(i4<3.49879264831543e-05){
    if(i31<0.0009708270663395524){
     s0+=329.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  s0+=593.0;
 }
}
if(i11<1.004654884338379){
 if(i6<1.0135858058929443){
  if(i31<0.0007025835802778602){
   if(i44<1.000185251235962){
    if(i33<0.0002806331613101065){
     s0+=9425.0;
     s1+=23.0;
    } else {
     s0+=35196.0;
    }
   } else {
    if(i3<-6.516226858366281e-05){
     s0+=3.0;
     s1+=43.0;
    } else {
     s0+=34591.0;
     s1+=402.0;
    }
   }
  } else {
   if(i36<1.1160998344421387){
    if(i21<0.006673759780824184){
     s0+=3495.0;
     s1+=312.0;
    } else {
     s0+=1165.0;
     s1+=2822.0;
    }
   } else {
    if(i41<1.1230299472808838){
     s0+=27587.0;
     s1+=1115.0;
    } else {
     s0+=311.0;
     s1+=972.0;
    }
   }
  }
 } else {
  if(i3<-3.2968462619464844e-05){
   if(i6<1.0179297924041748){
    if(i50<-2.9936757073301123e-06){
     s0+=99.0;
     s1+=6.0;
    } else {
     s0+=62.0;
     s1+=380.0;
    }
   } else {
    if(i34<1.6811659336090088){
     s0+=60.0;
     s1+=1751.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i23<0.29229408502578735){
    if(i4<2.3186206817626953e-05){
     s0+=276.0;
     s1+=15.0;
    } else {
     s0+=28.0;
     s1+=24.0;
    }
   } else {
    s1+=24.0;
   }
  }
 }
} else {
 if(i8<0.002733349334448576){
  if(i47<-2.4349901650566608e-05){
   if(i14<0.00043321121484041214){
    if(i57<-6.364460568875074e-05){
     s0+=12.0;
    } else {
     s0+=3.0;
     s1+=358.0;
    }
   } else {
    s0+=137.0;
   }
  } else {
   if(i1<0.002705097198486328){
    if(i52<9.834766387939453e-06){
     s0+=265.0;
     s1+=21.0;
    } else {
     s0+=2518.0;
     s1+=2.0;
    }
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i50<-6.625880814681295e-06){
   s0+=280.0;
  } else {
   if(i1<0.00017982721328735352){
    if(i23<0.05316203832626343){
     s0+=366.0;
     s1+=21.0;
    } else {
     s0+=121.0;
     s1+=213.0;
    }
   } else {
    if(i45<6.139278411865234e-06){
     s0+=106.0;
     s1+=136.0;
    } else {
     s0+=561.0;
     s1+=15517.0;
    }
   }
  }
 }
}
if(i5<0.0006038546562194824){
 if(i23<0.23277127742767334){
  if(i28<8.26716423034668e-05){
   if(i49<0.5215903520584106){
    if(i27<1.0905578136444092){
     s0+=18606.0;
     s1+=751.0;
    } else {
     s0+=59735.0;
     s1+=208.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i24<0.0009178163600154221){
    if(i8<0.003999394364655018){
     s0+=3980.0;
     s1+=477.0;
    } else {
     s0+=215.0;
     s1+=2116.0;
    }
   } else {
    if(i7<1.0026230812072754){
     s0+=26432.0;
     s1+=872.0;
    } else {
     s0+=918.0;
     s1+=432.0;
    }
   }
  }
 } else {
  if(i57<-3.7065976812300505e-06){
   if(i29<0.002120974939316511){
    s0+=1.0;
   } else {
    if(i29<0.004679542034864426){
     s0+=4.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=572.0;
    }
   }
  } else {
   if(i13<-0.005595684051513672){
    s1+=4.0;
   } else {
    if(i8<0.007705851458013058){
     s0+=108.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i0<8.362531661987305e-05){
  if(i21<0.01683942601084709){
   if(i15<0.0020780409686267376){
    if(i20<1.001792311668396){
     s0+=20.0;
     s1+=31.0;
    } else {
     s0+=3031.0;
     s1+=9.0;
    }
   } else {
    if(i28<0.00042569637298583984){
     s0+=120.0;
     s1+=658.0;
    } else {
     s0+=1145.0;
     s1+=110.0;
    }
   }
  } else {
   if(i26<-0.000361025333404541){
    if(i68<0.001800662837922573){
     s0+=367.0;
     s1+=121.0;
    } else {
     s0+=357.0;
     s1+=514.0;
    }
   } else {
    if(i14<0.0001586901198606938){
     s0+=101.0;
     s1+=448.0;
    } else {
     s0+=67.0;
     s1+=2070.0;
    }
   }
  }
 } else {
  if(i27<1.175166130065918){
   if(i66<0.000505313219036907){
    if(i27<1.1180615425109863){
     s1+=1827.0;
    } else {
     s0+=97.0;
    }
   } else {
    if(i14<0.00022283903672359884){
     s0+=22.0;
     s1+=128.0;
    } else {
     s0+=927.0;
    }
   }
  } else {
   if(i47<0.00029449991416186094){
    if(i37<-0.00011213459947612137){
     s0+=5.0;
     s1+=11975.0;
    } else {
     s0+=34.0;
     s1+=1080.0;
    }
   } else {
    if(i48<1.0028572082519531){
     s0+=34.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=69.0;
    }
   }
  }
 }
}
if(i3<-9.23836778383702e-05){
 if(i16<0.018573224544525146){
  if(i9<0.9716646671295166){
   if(i59<0.8486183881759644){
    if(i69<0.7735951542854309){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i41<1.0737783908843994){
     s0+=649.0;
     s1+=18.0;
    } else {
     s0+=8.0;
     s1+=29.0;
    }
   }
  } else {
   if(i50<-4.637206075130962e-06){
    if(i8<0.008116651326417923){
     s0+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i42<3.8135694921948016e-05){
     s1+=59.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i33<0.002591399010270834){
   if(i28<0.00046119093894958496){
    if(i0<0.00035840272903442383){
     s0+=2.0;
     s1+=789.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i11<1.0111339092254639){
     s0+=237.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<0.000739753246307373){
    if(i16<0.08946377038955688){
     s0+=80.0;
     s1+=75.0;
    } else {
     s0+=14.0;
     s1+=1029.0;
    }
   } else {
    if(i23<0.04665669798851013){
     s0+=60.0;
     s1+=105.0;
    } else {
     s0+=29.0;
     s1+=13603.0;
    }
   }
  }
 }
} else {
 if(i5<0.00042301416397094727){
  if(i39<0.0115569569170475){
   if(i35<1.0100575685501099){
    if(i12<0.9806549549102783){
     s0+=52.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=37.0;
    }
   } else {
    if(i65<-0.0007521510124206543){
     s0+=907.0;
     s1+=114.0;
    } else {
     s0+=63857.0;
     s1+=393.0;
    }
   }
  } else {
   if(i1<-0.0006085038185119629){
    if(i16<0.23105797171592712){
     s0+=28684.0;
     s1+=370.0;
    } else {
     s0+=36.0;
     s1+=49.0;
    }
   } else {
    if(i47<5.134565071784891e-05){
     s0+=12255.0;
     s1+=1103.0;
    } else {
     s0+=1019.0;
     s1+=1477.0;
    }
   }
  }
 } else {
  if(i28<0.0005112290382385254){
   if(i9<1.0082855224609375){
    if(i44<1.000566005706787){
     s0+=2380.0;
     s1+=343.0;
    } else {
     s0+=403.0;
     s1+=834.0;
    }
   } else {
    if(i15<0.0010228699538856745){
     s0+=108.0;
     s1+=78.0;
    } else {
     s0+=100.0;
     s1+=2558.0;
    }
   }
  } else {
   if(i37<-0.00030335853807628155){
    if(i23<0.0929628312587738){
     s0+=366.0;
     s1+=23.0;
    } else {
     s0+=173.0;
     s1+=590.0;
    }
   } else {
    if(i58<0.07250022888183594){
     s0+=4969.0;
     s1+=274.0;
    } else {
     s0+=178.0;
     s1+=276.0;
    }
   }
  }
 }
}
if(i5<0.000583946704864502){
 if(i15<0.0017227325588464737){
  if(i17<0.9956917762756348){
   if(i54<0.00019989628344774246){
    if(i60<0.00013769051292911172){
     s0+=1069.0;
     s1+=19.0;
    } else {
     s0+=1134.0;
     s1+=387.0;
    }
   } else {
    if(i3<-5.5134310969151556e-05){
     s0+=12.0;
     s1+=18.0;
    } else {
     s0+=20072.0;
     s1+=168.0;
    }
   }
  } else {
   if(i43<0.001806397456675768){
    if(i60<0.0001372618426103145){
     s0+=59216.0;
     s1+=161.0;
    } else {
     s0+=5855.0;
     s1+=109.0;
    }
   } else {
    if(i53<1.0012121200561523){
     s0+=1531.0;
     s1+=13.0;
    } else {
     s0+=509.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i5<-2.3305416107177734e-05){
   if(i40<1.0478841066360474){
    if(i33<0.000996363116428256){
     s0+=430.0;
     s1+=232.0;
    } else {
     s0+=14787.0;
     s1+=260.0;
    }
   } else {
    if(i55<1.003719449043274){
     s1+=144.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i8<0.003852943191304803){
    if(i41<1.015032172203064){
     s0+=38.0;
     s1+=37.0;
    } else {
     s0+=2240.0;
     s1+=128.0;
    }
   } else {
    if(i25<0.002997426316142082){
     s0+=574.0;
     s1+=2494.0;
    } else {
     s0+=2344.0;
     s1+=1014.0;
    }
   }
  }
 }
} else {
 if(i10<1.013427972793579){
  if(i25<0.0026138368993997574){
   if(i15<0.0018838534597307444){
    if(i26<0.00019496679306030273){
     s0+=3069.0;
     s1+=27.0;
    } else {
     s0+=148.0;
     s1+=298.0;
    }
   } else {
    if(i25<0.0012548810336738825){
     s0+=442.0;
     s1+=1445.0;
    } else {
     s0+=1172.0;
     s1+=91.0;
    }
   }
  } else {
   if(i8<0.00834495946764946){
    if(i42<1.5432447980856523e-05){
     s0+=97.0;
     s1+=355.0;
    } else {
     s0+=713.0;
     s1+=57.0;
    }
   } else {
    if(i45<0.05290541052818298){
     s0+=583.0;
     s1+=494.0;
    } else {
     s0+=166.0;
     s1+=3861.0;
    }
   }
  }
 } else {
  if(i36<1.161512017250061){
   if(i48<1.0029739141464233){
    if(i34<1.1180615425109863){
     s0+=1.0;
     s1+=1188.0;
    } else {
     s0+=26.0;
    }
   } else {
    s0+=109.0;
   }
  } else {
   if(i29<0.0019578863866627216){
    if(i0<0.00027936697006225586){
     s0+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=11388.0;
   }
  }
 }
}
if(i3<-9.148924436885864e-05){
 if(i23<0.041383206844329834){
  if(i65<-0.005379736423492432){
   if(i31<0.0030101328156888485){
    if(i5<0.0019459724426269531){
     s0+=690.0;
     s1+=11.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i70<0.04644538834691048){
     s0+=39.0;
     s1+=10.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i54<0.003135859500616789){
    if(i11<1.010207176208496){
     s0+=67.0;
     s1+=18.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i17<0.9900336265563965){
     s0+=6.0;
     s1+=94.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i50<-6.419467354135122e-06){
   if(i32<1.3103586435317993){
    s0+=275.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i60<0.003664227668195963){
    if(i10<0.9706352949142456){
     s0+=36.0;
     s1+=117.0;
    } else {
     s0+=43.0;
     s1+=15447.0;
    }
   } else {
    if(i49<0.2990286648273468){
     s0+=50.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i11<1.0040655136108398){
  if(i19<1.009775161743164){
   if(i9<1.0072259902954102){
    if(i60<0.00020593263616319746){
     s0+=83000.0;
     s1+=1437.0;
    } else {
     s0+=23902.0;
     s1+=2148.0;
    }
   } else {
    if(i32<1.0904107093811035){
     s0+=258.0;
     s1+=427.0;
    } else {
     s0+=2447.0;
     s1+=228.0;
    }
   }
  } else {
   if(i8<0.004525636322796345){
    if(i43<0.0002122561854775995){
     s0+=10.0;
     s1+=20.0;
    } else {
     s0+=1117.0;
     s1+=71.0;
    }
   } else {
    if(i14<0.000502255221363157){
     s0+=80.0;
     s1+=1024.0;
    } else {
     s0+=89.0;
    }
   }
  }
 } else {
  if(i42<-1.3019769539823756e-05){
   if(i31<0.0014492545742541552){
    if(i28<0.001542508602142334){
     s1+=861.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i1<0.0023922324180603027){
     s0+=82.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i21<0.014628497883677483){
    if(i25<0.0011153843952342868){
     s0+=588.0;
     s1+=729.0;
    } else {
     s0+=3418.0;
     s1+=77.0;
    }
   } else {
    if(i13<-0.0015076994895935059){
     s0+=440.0;
     s1+=322.0;
    } else {
     s0+=36.0;
     s1+=990.0;
    }
   }
  }
 }
}
if(i2<1.0038522481918335){
 if(i5<0.0003267526626586914){
  if(i45<0.2066880762577057){
   if(i32<1.0867384672164917){
    if(i8<0.0028207271825522184){
     s0+=25950.0;
     s1+=473.0;
    } else {
     s0+=8422.0;
     s1+=1747.0;
    }
   } else {
    if(i44<1.0025967359542847){
     s0+=69795.0;
     s1+=724.0;
    } else {
     s0+=45.0;
     s1+=80.0;
    }
   }
  } else {
   if(i29<0.011542879045009613){
    if(i15<0.0022022067569196224){
     s0+=130.0;
     s1+=8.0;
    } else {
     s0+=10.0;
     s1+=96.0;
    }
   } else {
    if(i15<0.004137318581342697){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=296.0;
    }
   }
  }
 } else {
  if(i62<-0.0007737716659903526){
   if(i46<0.006962801329791546){
    if(i55<1.0028339624404907){
     s0+=330.0;
     s1+=931.0;
    } else {
     s0+=945.0;
     s1+=253.0;
    }
   } else {
    if(i28<0.0007311701774597168){
     s0+=30.0;
     s1+=946.0;
    } else {
     s0+=39.0;
     s1+=79.0;
    }
   }
  } else {
   if(i34<1.0512452125549316){
    s0+=1837.0;
   } else {
    if(i21<0.009510276839137077){
     s0+=3158.0;
     s1+=115.0;
    } else {
     s0+=1138.0;
     s1+=1057.0;
    }
   }
  }
 }
} else {
 if(i3<-7.011544948909432e-05){
  if(i14<0.0007051074644550681){
   if(i72<-4.887386239715852e-06){
    if(i1<0.002470552921295166){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i9<0.9363225698471069){
     s0+=20.0;
     s1+=27.0;
    } else {
     s0+=101.0;
     s1+=15534.0;
    }
   }
  } else {
   s0+=377.0;
  }
 } else {
  if(i15<0.0019153692992404103){
   if(i13<0.0012883543968200684){
    if(i0<9.638071060180664e-05){
     s0+=2775.0;
    } else {
     s0+=124.0;
     s1+=38.0;
    }
   } else {
    if(i38<1.078625202178955){
     s1+=365.0;
    } else {
     s0+=251.0;
     s1+=3.0;
    }
   }
  } else {
   if(i27<1.1180615425109863){
    if(i36<1.0545791387557983){
     s0+=127.0;
    } else {
     s1+=1013.0;
    }
   } else {
    if(i8<0.0064771054312586784){
     s0+=659.0;
     s1+=19.0;
    } else {
     s0+=31.0;
     s1+=731.0;
    }
   }
  }
 }
}
if(i7<1.0025970935821533){
 if(i31<0.0007220529369078577){
  if(i60<0.00015560377505607903){
   if(i24<0.001959429820999503){
    if(i5<-0.00021952390670776367){
     s0+=12798.0;
     s1+=75.0;
    } else {
     s0+=47549.0;
     s1+=12.0;
    }
   } else {
    if(i48<1.0008176565170288){
     s0+=3767.0;
     s1+=3.0;
    } else {
     s0+=692.0;
     s1+=69.0;
    }
   }
  } else {
   if(i33<0.00026683995383791625){
    if(i43<0.00020875291374977678){
     s0+=112.0;
     s1+=171.0;
    } else {
     s0+=568.0;
     s1+=63.0;
    }
   } else {
    if(i3<-4.474506567930803e-05){
     s0+=136.0;
     s1+=67.0;
    } else {
     s0+=14085.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i36<1.1160998344421387){
   if(i21<0.008586344309151173){
    if(i27<1.056142807006836){
     s0+=2279.0;
    } else {
     s0+=1390.0;
     s1+=490.0;
    }
   } else {
    if(i48<0.9995824098587036){
     s0+=552.0;
     s1+=10.0;
    } else {
     s0+=116.0;
     s1+=2932.0;
    }
   }
  } else {
   if(i59<1.1395983695983887){
    if(i35<1.1403480768203735){
     s0+=26228.0;
     s1+=725.0;
    } else {
     s0+=123.0;
     s1+=350.0;
    }
   } else {
    if(i16<0.16453614830970764){
     s0+=9.0;
     s1+=13.0;
    } else {
     s1+=526.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007056489121168852){
  if(i0<6.407499313354492e-05){
   if(i18<0.1595347821712494){
    if(i21<0.02046387642621994){
     s0+=2601.0;
     s1+=438.0;
    } else {
     s0+=644.0;
     s1+=916.0;
    }
   } else {
    if(i25<0.0025245826691389084){
     s0+=182.0;
     s1+=22.0;
    } else {
     s0+=132.0;
     s1+=1481.0;
    }
   }
  } else {
   if(i23<0.0032147467136383057){
    if(i62<0.0012294157641008496){
     s0+=40.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   } else {
    if(i50<-6.2567542045144364e-06){
     s0+=59.0;
     s1+=4.0;
    } else {
     s0+=208.0;
     s1+=15850.0;
    }
   }
  }
 } else {
  s0+=2285.0;
 }
}
if(i11<1.0047695636749268){
 if(i22<1.0161535739898682){
  if(i8<0.0038926508277654648){
   if(i15<0.0011161656584590673){
    if(i43<0.002035558922216296){
     s0+=68579.0;
     s1+=180.0;
    } else {
     s0+=1895.0;
     s1+=57.0;
    }
   } else {
    if(i27<1.1164028644561768){
     s0+=3738.0;
     s1+=858.0;
    } else {
     s0+=15530.0;
     s1+=97.0;
    }
   }
  } else {
   if(i53<0.9995709657669067){
    if(i39<0.2769479751586914){
     s0+=14794.0;
     s1+=223.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i42<2.534607847337611e-05){
     s0+=776.0;
     s1+=2982.0;
    } else {
     s0+=6091.0;
     s1+=1026.0;
    }
   }
  }
 } else {
  if(i31<0.0006268407450988889){
   if(i55<1.0018303394317627){
    if(i28<0.00011622905731201172){
     s0+=509.0;
    } else {
     s0+=16.0;
     s1+=1.0;
    }
   } else {
    if(i35<1.094736099243164){
     s0+=23.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   }
  } else {
   if(i32<1.1672112941741943){
    if(i13<-0.00015991926193237305){
     s0+=309.0;
     s1+=54.0;
    } else {
     s0+=180.0;
     s1+=814.0;
    }
   } else {
    if(i45<0.085320383310318){
     s0+=29.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=1633.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007037727627903223){
  if(i10<1.010282278060913){
   if(i29<0.001907268539071083){
    if(i32<1.0905089378356934){
     s0+=6.0;
     s1+=398.0;
    } else {
     s0+=937.0;
     s1+=22.0;
    }
   } else {
    if(i16<0.04986253380775452){
     s0+=481.0;
     s1+=188.0;
    } else {
     s0+=315.0;
     s1+=2993.0;
    }
   }
  } else {
   if(i20<1.0099555253982544){
    if(i43<0.001997421495616436){
     s0+=87.0;
     s1+=259.0;
    } else {
     s0+=10.0;
     s1+=1074.0;
    }
   } else {
    if(i8<0.0035761455073952675){
     s0+=30.0;
     s1+=602.0;
    } else {
     s0+=1.0;
     s1+=10695.0;
    }
   }
  }
 } else {
  if(i58<0.2775340974330902){
   s0+=2251.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i0<6.324052810668945e-05){
 if(i18<0.21796390414237976){
  if(i6<1.0135858058929443){
   if(i2<1.00260591506958){
    if(i35<1.1299585103988647){
     s0+=106396.0;
     s1+=3727.0;
    } else {
     s0+=1613.0;
     s1+=633.0;
    }
   } else {
    if(i15<0.002077776473015547){
     s0+=4904.0;
     s1+=124.0;
    } else {
     s0+=608.0;
     s1+=1297.0;
    }
   }
  } else {
   if(i53<0.9996374845504761){
    s0+=207.0;
   } else {
    if(i26<-0.00021004676818847656){
     s0+=139.0;
     s1+=9.0;
    } else {
     s0+=293.0;
     s1+=809.0;
    }
   }
  }
 } else {
  if(i47<1.345220698567573e-05){
   if(i8<0.006900015287101269){
    s0+=112.0;
   } else {
    s1+=18.0;
   }
  } else {
   if(i59<1.5748646259307861){
    if(i39<0.023308923467993736){
     s0+=42.0;
     s1+=11.0;
    } else {
     s0+=73.0;
     s1+=1336.0;
    }
   } else {
    if(i33<0.02547268196940422){
     s0+=34.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i27<1.1979892253875732){
  if(i36<1.116804838180542){
   if(i28<0.0005374550819396973){
    s1+=2355.0;
   } else {
    s0+=175.0;
   }
  } else {
   s0+=1935.0;
  }
 } else {
  if(i23<0.07503119111061096){
   if(i1<0.0020388364791870117){
    if(i37<-0.00031724481959827244){
     s0+=14.0;
     s1+=58.0;
    } else {
     s0+=71.0;
     s1+=43.0;
    }
   } else {
    s1+=182.0;
   }
  } else {
   if(i67<-0.02706509828567505){
    s0+=3.0;
   } else {
    if(i56<0.01547478698194027){
     s0+=36.0;
     s1+=13596.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i19<1.0139820575714111){
 if(i16<0.19871443510055542){
  if(i26<0.0001850724220275879){
   if(i15<0.0017809905111789703){
    if(i38<1.0466740131378174){
     s0+=32576.0;
     s1+=926.0;
    } else {
     s0+=59355.0;
     s1+=228.0;
    }
   } else {
    if(i20<0.9953615665435791){
     s0+=16250.0;
     s1+=875.0;
    } else {
     s0+=5678.0;
     s1+=4789.0;
    }
   }
  } else {
   if(i27<1.1180615425109863){
    s1+=788.0;
   } else {
    if(i11<1.0113952159881592){
     s0+=960.0;
     s1+=58.0;
    } else {
     s0+=14.0;
     s1+=375.0;
    }
   }
  }
 } else {
  if(i8<0.00703670596703887){
   if(i5<9.632110595703125e-05){
    if(i47<0.00018626920063979924){
     s0+=232.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=4.0;
    }
   } else {
    if(i28<0.00045800209045410156){
     s0+=54.0;
     s1+=47.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.0015576258301734924){
    s0+=5.0;
   } else {
    if(i12<0.9453246593475342){
     s0+=5.0;
     s1+=125.0;
    } else {
     s0+=2.0;
     s1+=2619.0;
    }
   }
  }
 }
} else {
 if(i9<1.0185505151748657){
  if(i8<0.0035909865982830524){
   if(i42<-1.4660143278888427e-05){
    if(i59<1.056657075881958){
     s0+=5.0;
     s1+=152.0;
    } else {
     s0+=13.0;
     s1+=6.0;
    }
   } else {
    if(i32<1.0865862369537354){
     s1+=11.0;
    } else {
     s0+=671.0;
     s1+=14.0;
    }
   }
  } else {
   if(i63<1.7133238543465268e-06){
    if(i14<0.0010355354752391577){
     s0+=25.0;
     s1+=991.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i60<5.0702044973149896e-05){
     s0+=90.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i28<8.463859558105469e-05){
   if(i5<0.0002529621124267578){
    if(i25<0.014787678606808186){
     s0+=179.0;
     s1+=30.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i34<1.7041046619415283){
     s1+=315.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i0<-3.5703182220458984e-05){
    s0+=70.0;
   } else {
    if(i14<0.0008258473826572299){
     s0+=63.0;
     s1+=11959.0;
    } else {
     s0+=64.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i16<0.20635947585105896){
  if(i7<1.002397060394287){
   if(i32<1.0902695655822754){
    if(i31<0.0007110262522473931){
     s0+=29943.0;
     s1+=339.0;
    } else {
     s0+=8506.0;
     s1+=2990.0;
    }
   } else {
    if(i61<0.5617813467979431){
     s0+=69827.0;
     s1+=791.0;
    } else {
     s0+=391.0;
     s1+=163.0;
    }
   }
  } else {
   if(i8<0.004408308770507574){
    if(i68<0.004582427442073822){
     s0+=1623.0;
     s1+=57.0;
    } else {
     s0+=11.0;
     s1+=28.0;
    }
   } else {
    if(i2<1.0010045766830444){
     s0+=1041.0;
     s1+=402.0;
    } else {
     s0+=410.0;
     s1+=830.0;
    }
   }
  }
 } else {
  if(i58<0.033413294702768326){
   if(i5<0.00043964385986328125){
    if(i57<-3.9658561945543624e-06){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=122.0;
    }
   } else {
    if(i3<-3.195182580384426e-05){
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i31<0.0005458338418975472){
    s0+=50.0;
   } else {
    if(i64<0.005941437557339668){
     s0+=7.0;
    } else {
     s0+=23.0;
     s1+=1079.0;
    }
   }
  }
 }
} else {
 if(i8<0.004008883610367775){
  if(i14<0.00020672945538535714){
   if(i13<0.0009484291076660156){
    if(i10<1.0106120109558105){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i4<0.0002498626708984375){
     s0+=3.0;
     s1+=1009.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i13<0.003156006336212158){
    if(i65<0.00067901611328125){
     s0+=2999.0;
    } else {
     s0+=843.0;
     s1+=2.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i31<0.004036585800349712){
   if(i51<-1.325235643889755e-05){
    if(i25<0.002682435791939497){
     s0+=244.0;
     s1+=2119.0;
    } else {
     s0+=109.0;
     s1+=14580.0;
    }
   } else {
    if(i35<1.1266741752624512){
     s0+=40.0;
     s1+=1.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i4<8.228421211242676e-05){
    s0+=62.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i7<1.0023819208145142){
  if(i40<1.0291500091552734){
   if(i16<0.22984635829925537){
    if(i15<0.0015702039236202836){
     s0+=85188.0;
     s1+=705.0;
    } else {
     s0+=23095.0;
     s1+=3364.0;
    }
   } else {
    if(i15<0.0025587412528693676){
     s0+=15.0;
     s1+=1.0;
    } else {
     s1+=164.0;
    }
   }
  } else {
   if(i0<2.148747444152832e-05){
    if(i57<-3.2041093618317973e-06){
     s0+=166.0;
     s1+=327.0;
    } else {
     s0+=557.0;
     s1+=12.0;
    }
   } else {
    if(i31<0.0006818154361099005){
     s0+=36.0;
    } else {
     s0+=16.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i23<0.1708991825580597){
   if(i56<0.001344573451206088){
    if(i8<0.004436700604856014){
     s0+=1598.0;
     s1+=24.0;
    } else {
     s0+=512.0;
     s1+=219.0;
    }
   } else {
    if(i67<-0.010080784559249878){
     s0+=524.0;
     s1+=136.0;
    } else {
     s0+=349.0;
     s1+=667.0;
    }
   }
  } else {
   if(i3<-4.318313585827127e-05){
    if(i21<0.018607456237077713){
     s0+=13.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=721.0;
    }
   } else {
    if(i54<0.0026150397025048733){
     s0+=90.0;
     s1+=27.0;
    } else {
     s0+=26.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i33<0.0021215351298451424){
  if(i54<0.0007060751668177545){
   if(i14<0.0002464829885866493){
    if(i34<1.1219847202301025){
     s1+=2552.0;
    } else {
     s0+=37.0;
    }
   } else {
    s0+=745.0;
   }
  } else {
   if(i47<-2.84547422779724e-05){
    if(i50<-3.709105840243865e-06){
     s0+=60.0;
    } else {
     s1+=109.0;
    }
   } else {
    if(i33<0.0009524427587166429){
     s1+=42.0;
    } else {
     s0+=3227.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i29<0.0019156705820932984){
   if(i4<9.644031524658203e-05){
    s0+=52.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i32<1.1269173622131348){
    if(i67<-0.005771458148956299){
     s1+=14.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i13<-0.0010324716567993164){
     s0+=94.0;
     s1+=873.0;
    } else {
     s0+=56.0;
     s1+=13985.0;
    }
   }
  }
 }
}
if(i5<0.0005617737770080566){
 if(i23<0.2125307023525238){
  if(i39<0.013221867382526398){
   if(i41<1.0100669860839844){
    if(i65<-0.00031068921089172363){
     s0+=240.0;
     s1+=122.0;
    } else {
     s0+=257.0;
     s1+=2.0;
    }
   } else {
    if(i15<0.0018378053791821003){
     s0+=67004.0;
     s1+=355.0;
    } else {
     s0+=4095.0;
     s1+=396.0;
    }
   }
  } else {
   if(i20<0.9954644441604614){
    if(i41<1.1221568584442139){
     s0+=26906.0;
     s1+=417.0;
    } else {
     s0+=316.0;
     s1+=134.0;
    }
   } else {
    if(i27<1.116391897201538){
     s0+=1451.0;
     s1+=2034.0;
    } else {
     s0+=9156.0;
     s1+=809.0;
    }
   }
  }
 } else {
  if(i38<1.127637267112732){
   if(i8<0.008030001074075699){
    if(i4<1.5139579772949219e-05){
     s0+=95.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i31<0.0005465669673867524){
    s0+=95.0;
   } else {
    if(i62<-0.0016661069821566343){
     s0+=3.0;
     s1+=616.0;
    } else {
     s0+=12.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i14<0.000704434234648943){
  if(i41<1.104677438735962){
   if(i1<0.000946044921875){
    if(i36<1.116804838180542){
     s0+=189.0;
     s1+=642.0;
    } else {
     s0+=2436.0;
     s1+=786.0;
    }
   } else {
    if(i26<0.00018131732940673828){
     s0+=191.0;
     s1+=1029.0;
    } else {
     s0+=54.0;
     s1+=4099.0;
    }
   }
  } else {
   if(i25<0.0018738030921667814){
    if(i22<1.0231833457946777){
     s0+=257.0;
     s1+=1.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i20<0.9838441610336304){
     s0+=29.0;
     s1+=43.0;
    } else {
     s0+=139.0;
     s1+=12786.0;
    }
   }
  }
 } else {
  if(i18<0.44303661584854126){
   s0+=3543.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i6<1.0135858058929443){
 if(i5<0.000560462474822998){
  if(i8<0.0036522415466606617){
   if(i66<0.00025269901379942894){
    if(i30<0.9952441453933716){
     s0+=4261.0;
     s1+=454.0;
    } else {
     s0+=27914.0;
     s1+=298.0;
    }
   } else {
    if(i25<0.001917414483614266){
     s0+=46410.0;
     s1+=36.0;
    } else {
     s0+=7835.0;
     s1+=180.0;
    }
   }
  } else {
   if(i45<0.18416482210159302){
    if(i0<-2.3543834686279297e-05){
     s0+=21471.0;
     s1+=764.0;
    } else {
     s0+=1338.0;
     s1+=2298.0;
    }
   } else {
    if(i8<0.007199270185083151){
     s0+=97.0;
     s1+=45.0;
    } else {
     s0+=2.0;
     s1+=436.0;
    }
   }
  }
 } else {
  if(i21<0.019535038620233536){
   if(i29<0.0009749365854077041){
    if(i29<0.00020013711764477193){
     s0+=1451.0;
    } else {
     s0+=63.0;
     s1+=1195.0;
    }
   } else {
    if(i11<1.011590600013733){
     s0+=3712.0;
     s1+=217.0;
    } else {
     s0+=18.0;
     s1+=215.0;
    }
   }
  } else {
   if(i37<-0.00012955066631548107){
    if(i22<0.9010165929794312){
     s0+=129.0;
     s1+=61.0;
    } else {
     s0+=199.0;
     s1+=2867.0;
    }
   } else {
    if(i42<3.581314012990333e-05){
     s0+=117.0;
     s1+=691.0;
    } else {
     s0+=297.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i8<0.005011753179132938){
  if(i29<0.0008216903661377728){
   s1+=635.0;
  } else {
   if(i11<1.0122122764587402){
    if(i9<1.0202335119247437){
     s0+=829.0;
     s1+=9.0;
    } else {
     s0+=254.0;
     s1+=86.0;
    }
   } else {
    s1+=334.0;
   }
  }
 } else {
  if(i47<0.0004891862627118826){
   if(i3<3.0530632102454547e-06){
    if(i10<0.9971783757209778){
     s0+=29.0;
     s1+=143.0;
    } else {
     s0+=56.0;
     s1+=13334.0;
    }
   } else {
    s0+=8.0;
   }
  } else {
   s0+=5.0;
  }
 }
}
if(i10<1.0124882459640503){
 if(i23<0.2014853060245514){
  if(i8<0.004016883671283722){
   if(i1<0.0014745593070983887){
    if(i66<0.0002545314491726458){
     s0+=34980.0;
     s1+=1101.0;
    } else {
     s0+=58442.0;
     s1+=323.0;
    }
   } else {
    if(i25<0.0008633513934910297){
     s1+=325.0;
    } else {
     s0+=312.0;
    }
   }
  } else {
   if(i4<-1.4901161193847656e-06){
    if(i11<0.9967618584632874){
     s0+=14489.0;
     s1+=47.0;
    } else {
     s0+=2699.0;
     s1+=200.0;
    }
   } else {
    if(i20<0.9954131245613098){
     s0+=3327.0;
     s1+=726.0;
    } else {
     s0+=1456.0;
     s1+=5417.0;
    }
   }
  }
 } else {
  if(i4<9.47713851928711e-06){
   if(i58<0.05008387193083763){
    if(i53<1.0032494068145752){
     s0+=292.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   } else {
    if(i8<0.006643778644502163){
     s0+=70.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=257.0;
    }
   }
  } else {
   if(i21<0.007558341603726149){
    if(i64<0.10939271748065948){
     s0+=65.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i51<-3.2155527151189744e-05){
     s0+=4.0;
     s1+=2023.0;
    } else {
     s0+=53.0;
     s1+=500.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025525051169097424){
  if(i14<0.0002915652876254171){
   if(i51<-1.317495116381906e-05){
    s1+=1507.0;
   } else {
    s0+=40.0;
   }
  } else {
   if(i34<1.1782985925674438){
    s0+=397.0;
   } else {
    if(i45<0.09860849380493164){
     s1+=4.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i16<0.06992405652999878){
   if(i0<5.728006362915039e-05){
    s0+=26.0;
   } else {
    s1+=150.0;
   }
  } else {
   s1+=11571.0;
  }
 }
}
if(i7<1.0026321411132812){
 if(i17<1.018714189529419){
  if(i61<0.6249754428863525){
   if(i24<0.000899599224794656){
    if(i36<1.0577976703643799){
     s0+=18979.0;
     s1+=10.0;
    } else {
     s0+=12504.0;
     s1+=3247.0;
    }
   } else {
    if(i21<0.08878914266824722){
     s0+=78416.0;
     s1+=805.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i39<0.18574336171150208){
    if(i31<0.002243361435830593){
     s0+=238.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=38.0;
    }
   } else {
    if(i28<-0.0008063316345214844){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i51<-1.0462450518389232e-05){
   if(i44<1.0014102458953857){
    if(i62<-0.0009261543164029717){
     s0+=28.0;
     s1+=1097.0;
    } else {
     s0+=79.0;
     s1+=11.0;
    }
   } else {
    if(i25<0.0073679368942976){
     s0+=77.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i63<4.379589881864376e-06){
    if(i25<0.00440409267321229){
     s0+=399.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i38<1.1305360794067383){
     s0+=69.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i21<0.013079443946480751){
  if(i9<1.015977144241333){
   if(i43<0.0010153346229344606){
    if(i47<-8.76066133059794e-06){
     s0+=42.0;
     s1+=934.0;
    } else {
     s0+=949.0;
     s1+=185.0;
    }
   } else {
    if(i20<1.0151058435440063){
     s0+=3394.0;
     s1+=143.0;
    } else {
     s1+=121.0;
    }
   }
  } else {
   if(i50<-5.433373189589474e-06){
    if(i29<0.0026425328105688095){
     s0+=174.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<0.0011536478996276855){
     s0+=111.0;
     s1+=337.0;
    } else {
     s0+=39.0;
     s1+=1515.0;
    }
   }
  }
 } else {
  if(i1<6.002187728881836e-05){
   if(i64<0.31216365098953247){
    if(i44<1.0025484561920166){
     s0+=740.0;
     s1+=199.0;
    } else {
     s0+=52.0;
     s1+=149.0;
    }
   } else {
    if(i19<0.9372410178184509){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=17.0;
     s1+=128.0;
    }
   }
  } else {
   if(i10<0.976987898349762){
    if(i4<6.413459777832031e-05){
     s0+=117.0;
     s1+=62.0;
    } else {
     s0+=18.0;
     s1+=110.0;
    }
   } else {
    if(i18<0.1271849274635315){
     s0+=236.0;
     s1+=1442.0;
    } else {
     s0+=62.0;
     s1+=13134.0;
    }
   }
  }
 }
}
if(i3<-8.41627042973414e-05){
 if(i13<-0.0036851167678833008){
  if(i18<0.07682543992996216){
   if(i7<1.0059797763824463){
    if(i44<1.002518653869629){
     s0+=858.0;
     s1+=34.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i48<1.004687786102295){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   }
  } else {
   if(i67<-0.01789352297782898){
    if(i44<0.9992192983627319){
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.11513921618461609){
     s0+=15.0;
     s1+=59.0;
    } else {
     s0+=1.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i14<0.0007051074644550681){
   if(i18<0.025050610303878784){
    if(i6<0.9959429502487183){
     s0+=136.0;
     s1+=50.0;
    } else {
     s0+=2.0;
     s1+=45.0;
    }
   } else {
    if(i51<-0.00018205418018624187){
     s0+=50.0;
    } else {
     s0+=110.0;
     s1+=16108.0;
    }
   }
  } else {
   s0+=306.0;
  }
 }
} else {
 if(i5<0.000340878963470459){
  if(i27<1.116391897201538){
   if(i15<0.0015930210938677192){
    if(i14<0.00012364870053716004){
     s0+=16522.0;
     s1+=3.0;
    } else {
     s0+=9324.0;
     s1+=552.0;
    }
   } else {
    if(i7<0.9996217489242554){
     s0+=1359.0;
     s1+=130.0;
    } else {
     s0+=137.0;
     s1+=1646.0;
    }
   }
  } else {
   if(i3<-6.148622196633369e-05){
    if(i16<0.16708427667617798){
     s0+=1342.0;
     s1+=111.0;
    } else {
     s0+=20.0;
     s1+=94.0;
    }
   } else {
    if(i54<0.0020393109880387783){
     s0+=69832.0;
     s1+=228.0;
    } else {
     s0+=5746.0;
     s1+=248.0;
    }
   }
  }
 } else {
  if(i15<0.0018886298639699817){
   if(i47<-2.421112367301248e-05){
    if(i24<0.0011323606595396996){
     s1+=346.0;
    } else {
     s0+=53.0;
     s1+=14.0;
    }
   } else {
    if(i47<3.6957946576876566e-05){
     s0+=6052.0;
     s1+=73.0;
    } else {
     s0+=90.0;
     s1+=100.0;
    }
   }
  } else {
   if(i14<0.00034570301068015397){
    if(i34<1.121293544769287){
     s1+=2423.0;
    } else {
     s0+=1285.0;
     s1+=1677.0;
    }
   } else {
    if(i11<1.013092041015625){
     s0+=3089.0;
     s1+=220.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   }
  }
 }
}
if(i1<0.0009575486183166504){
 if(i3<-7.644675497431308e-05){
  if(i16<0.05058729648590088){
   if(i70<0.045421577990055084){
    if(i62<-0.0006491128588095307){
     s0+=89.0;
     s1+=42.0;
    } else {
     s0+=1084.0;
     s1+=26.0;
    }
   } else {
    if(i31<0.0017753131687641144){
     s0+=22.0;
     s1+=3.0;
    } else {
     s0+=31.0;
     s1+=98.0;
    }
   }
  } else {
   if(i39<0.016201820224523544){
    if(i9<1.0170321464538574){
     s0+=154.0;
     s1+=5.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i60<0.003369552781805396){
     s0+=165.0;
     s1+=2273.0;
    } else {
     s0+=66.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i21<0.006775497458875179){
   if(i31<0.0005481429398059845){
    if(i12<1.0192067623138428){
     s0+=55346.0;
     s1+=117.0;
    } else {
     s0+=111.0;
     s1+=15.0;
    }
   } else {
    if(i14<0.00024665886303409934){
     s0+=6425.0;
     s1+=515.0;
    } else {
     s0+=8742.0;
     s1+=12.0;
    }
   }
  } else {
   if(i1<-0.0004074573516845703){
    if(i45<0.20786574482917786){
     s0+=37327.0;
     s1+=771.0;
    } else {
     s0+=77.0;
     s1+=49.0;
    }
   } else {
    if(i48<1.0001792907714844){
     s0+=1920.0;
     s1+=211.0;
    } else {
     s0+=2756.0;
     s1+=3764.0;
    }
   }
  }
 }
} else {
 if(i50<-7.590606401208788e-06){
  s0+=645.0;
 } else {
  if(i3<-7.331671076826751e-05){
   if(i44<0.9983727931976318){
    s0+=54.0;
   } else {
    if(i67<-0.01329106092453003){
     s0+=40.0;
     s1+=50.0;
    } else {
     s0+=90.0;
     s1+=14597.0;
    }
   }
  } else {
   if(i52<1.150369644165039e-05){
    if(i7<1.0026164054870605){
     s0+=93.0;
     s1+=78.0;
    } else {
     s0+=119.0;
     s1+=1409.0;
    }
   } else {
    if(i21<0.012206118553876877){
     s0+=1058.0;
     s1+=54.0;
    } else {
     s0+=24.0;
     s1+=225.0;
    }
   }
  }
 }
}
if(i53<1.003549575805664){
 if(i9<1.012169599533081){
  if(i39<0.208663672208786){
   if(i3<-6.66016130708158e-05){
    if(i62<-0.0007760016596876085){
     s0+=132.0;
     s1+=419.0;
    } else {
     s0+=1328.0;
     s1+=180.0;
    }
   } else {
    if(i15<0.0017322666244581342){
     s0+=89319.0;
     s1+=985.0;
    } else {
     s0+=16430.0;
     s1+=2788.0;
    }
   }
  } else {
   if(i23<0.05721849203109741){
    if(i3<-0.00013947533443570137){
     s1+=3.0;
    } else {
     s0+=86.0;
    }
   } else {
    s1+=248.0;
   }
  }
 } else {
  if(i8<0.004918425809592009){
   if(i33<0.0007929645944386721){
    if(i6<1.000776767730713){
     s0+=1.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i13<0.003068983554840088){
     s0+=627.0;
     s1+=72.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i50<-5.920509465795476e-06){
    s0+=57.0;
   } else {
    if(i28<0.0011374950408935547){
     s0+=50.0;
     s1+=2838.0;
    } else {
     s0+=23.0;
     s1+=60.0;
    }
   }
  }
 }
} else {
 if(i30<1.0251708030700684){
  if(i1<0.0012560486793518066){
   if(i8<0.004011901095509529){
    if(i22<0.9827290773391724){
     s0+=110.0;
     s1+=12.0;
    } else {
     s0+=3617.0;
     s1+=17.0;
    }
   } else {
    if(i5<0.00042951107025146484){
     s0+=2162.0;
     s1+=266.0;
    } else {
     s0+=1342.0;
     s1+=2044.0;
    }
   }
  } else {
   if(i14<0.0008044603746384382){
    if(i2<1.0050362348556519){
     s0+=24.0;
     s1+=40.0;
    } else {
     s0+=60.0;
     s1+=3987.0;
    }
   } else {
    s0+=719.0;
   }
  }
 } else {
  if(i18<0.1293729543685913){
   if(i42<1.5000970961409621e-05){
    if(i50<-4.1146413423120975e-06){
     s0+=58.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=368.0;
    }
   } else {
    if(i48<1.0023963451385498){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=144.0;
    }
   }
  } else {
   if(i8<0.0025550820864737034){
    if(i23<0.1978934109210968){
     s0+=98.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=48.0;
    }
   } else {
    if(i26<-0.0003082156181335449){
     s0+=26.0;
     s1+=137.0;
    } else {
     s0+=15.0;
     s1+=9748.0;
    }
   }
  }
 }
}
if(i3<-9.404080628883094e-05){
 if(i65<-0.007366567850112915){
  if(i21<0.0571003332734108){
   if(i26<-0.00031185150146484375){
    if(i41<1.0540410280227661){
     s0+=557.0;
     s1+=8.0;
    } else {
     s0+=8.0;
     s1+=5.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i66<0.0011559890117496252){
    if(i60<0.003132760990411043){
     s1+=1.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i65<-0.010400742292404175){
     s0+=32.0;
     s1+=24.0;
    } else {
     s0+=16.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i14<0.0007056489121168852){
   if(i23<0.04277065396308899){
    if(i41<1.057892918586731){
     s0+=88.0;
     s1+=38.0;
    } else {
     s0+=17.0;
     s1+=102.0;
    }
   } else {
    if(i52<5.6624412536621094e-05){
     s0+=26.0;
     s1+=15338.0;
    } else {
     s0+=67.0;
    }
   }
  } else {
   s0+=173.0;
  }
 }
} else {
 if(i42<-1.1558942787814885e-05){
  if(i31<0.001361872535198927){
   if(i56<-0.0003806867462117225){
    if(i52<1.2576580047607422e-05){
     s0+=1.0;
     s1+=49.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i63<-3.641253670139122e-06){
     s0+=2.0;
     s1+=981.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i8<0.006692967843264341){
    s0+=136.0;
   } else {
    s1+=74.0;
   }
  }
 } else {
  if(i30<1.0212783813476562){
   if(i9<1.008227825164795){
    if(i16<0.20890972018241882){
     s0+=110027.0;
     s1+=4304.0;
    } else {
     s0+=101.0;
     s1+=221.0;
    }
   } else {
    if(i28<0.0005561709403991699){
     s0+=1779.0;
     s1+=1151.0;
    } else {
     s0+=2061.0;
     s1+=37.0;
    }
   }
  } else {
   if(i31<0.0006872116937302053){
    if(i31<0.0004715333052445203){
     s0+=544.0;
     s1+=4.0;
    } else {
     s0+=146.0;
     s1+=44.0;
    }
   } else {
    if(i14<0.00033989985240623355){
     s0+=292.0;
     s1+=1625.0;
    } else {
     s0+=495.0;
     s1+=83.0;
    }
   }
  }
 }
}
if(i19<1.0141404867172241){
 if(i4<1.901388168334961e-05){
  if(i28<9.173154830932617e-05){
   if(i8<0.01841399073600769){
    if(i16<0.23061108589172363){
     s0+=79464.0;
     s1+=922.0;
    } else {
     s0+=67.0;
     s1+=72.0;
    }
   } else {
    if(i27<1.629280686378479){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=128.0;
    }
   }
  } else {
   if(i8<0.004056640900671482){
    if(i24<0.0007915321039035916){
     s0+=3256.0;
     s1+=441.0;
    } else {
     s0+=19995.0;
     s1+=203.0;
    }
   } else {
    if(i1<-0.0005659162998199463){
     s0+=4814.0;
     s1+=407.0;
    } else {
     s0+=572.0;
     s1+=2133.0;
    }
   }
  }
 } else {
  if(i14<0.000704434234648943){
   if(i16<0.16709759831428528){
    if(i1<0.0009762048721313477){
     s0+=3662.0;
     s1+=1756.0;
    } else {
     s0+=219.0;
     s1+=1915.0;
    }
   } else {
    if(i51<-1.723565219435841e-05){
     s0+=75.0;
     s1+=2862.0;
    } else {
     s0+=79.0;
     s1+=96.0;
    }
   }
  } else {
   s0+=3196.0;
  }
 }
} else {
 if(i17<1.0226960182189941){
  if(i20<1.0125670433044434){
   if(i35<1.0751206874847412){
    if(i33<0.0012236004695296288){
     s1+=443.0;
    } else {
     s0+=91.0;
     s1+=7.0;
    }
   } else {
    if(i60<9.382530697621405e-05){
     s0+=690.0;
     s1+=160.0;
    } else {
     s0+=9.0;
     s1+=197.0;
    }
   }
  } else {
   if(i20<1.0142560005187988){
    if(i1<0.0018415451049804688){
     s0+=32.0;
     s1+=38.0;
    } else {
     s0+=2.0;
     s1+=92.0;
    }
   } else {
    s1+=1442.0;
   }
  }
 } else {
  if(i0<1.659989356994629e-05){
   if(i47<3.471447416814044e-05){
    s0+=141.0;
   } else {
    if(i0<-3.597140312194824e-05){
     s0+=41.0;
    } else {
     s0+=5.0;
     s1+=101.0;
    }
   }
  } else {
   if(i50<-6.0963570831518155e-06){
    if(i20<1.0372776985168457){
     s0+=35.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i19<1.0168418884277344){
     s0+=43.0;
     s1+=271.0;
    } else {
     s0+=33.0;
     s1+=10634.0;
    }
   }
  }
 }
}
if(i26<0.00019043684005737305){
 if(i35<1.1401641368865967){
  if(i5<0.0003134608268737793){
   if(i31<0.0006606064853258431){
    if(i32<1.1354830265045166){
     s0+=67869.0;
     s1+=196.0;
    } else {
     s0+=4909.0;
     s1+=98.0;
    }
   } else {
    if(i36<1.0955833196640015){
     s0+=1858.0;
     s1+=1708.0;
    } else {
     s0+=28506.0;
     s1+=814.0;
    }
   }
  } else {
   if(i21<0.009554717689752579){
    if(i26<0.00014907121658325195){
     s0+=7638.0;
     s1+=315.0;
    } else {
     s0+=642.0;
     s1+=260.0;
    }
   } else {
    if(i2<0.999947726726532){
     s0+=1398.0;
     s1+=225.0;
    } else {
     s0+=1133.0;
     s1+=3478.0;
    }
   }
  }
 } else {
  if(i29<0.0024969608057290316){
   if(i33<0.0019439756870269775){
    s0+=716.0;
   } else {
    if(i19<1.0047330856323242){
     s0+=24.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i36<1.6811659336090088){
    if(i51<-7.72841212892672e-06){
     s0+=232.0;
     s1+=3624.0;
    } else {
     s0+=136.0;
     s1+=1.0;
    }
   } else {
    s0+=231.0;
   }
  }
 }
} else {
 if(i2<1.0040483474731445){
  if(i40<1.0325744152069092){
   if(i21<0.04184801131486893){
    if(i36<1.0989346504211426){
     s1+=5.0;
    } else {
     s0+=466.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i65<0.0021662116050720215){
    if(i38<1.0768756866455078){
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   } else {
    s1+=59.0;
   }
  }
 } else {
  if(i50<-7.489660674764309e-06){
   s0+=387.0;
  } else {
   if(i26<0.0002829432487487793){
    if(i44<0.9998226165771484){
     s0+=156.0;
     s1+=10.0;
    } else {
     s0+=300.0;
     s1+=1872.0;
    }
   } else {
    if(i50<-6.422751084755873e-06){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=11541.0;
    }
   }
  }
 }
}
if(i8<0.0075304340571165085){
 if(i26<0.00020772218704223633){
  if(i8<0.0036414400674402714){
   if(i0<9.638071060180664e-05){
    if(i15<0.0010370295494794846){
     s0+=69868.0;
     s1+=206.0;
    } else {
     s0+=20804.0;
     s1+=878.0;
    }
   } else {
    if(i41<1.0521612167358398){
     s1+=65.0;
    } else {
     s0+=236.0;
    }
   }
  } else {
   if(i12<1.0067740678787231){
    if(i48<0.9998996257781982){
     s0+=11740.0;
     s1+=60.0;
    } else {
     s0+=5579.0;
     s1+=1927.0;
    }
   } else {
    if(i28<8.487701416015625e-05){
     s0+=1118.0;
     s1+=27.0;
    } else {
     s0+=918.0;
     s1+=1463.0;
    }
   }
  }
 } else {
  if(i28<0.0012741684913635254){
   if(i2<1.004941463470459){
    if(i10<1.0133233070373535){
     s0+=289.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i10<1.0134507417678833){
     s0+=262.0;
     s1+=773.0;
    } else {
     s0+=7.0;
     s1+=1803.0;
    }
   }
  } else {
   if(i42<-5.197963764658198e-05){
    s1+=46.0;
   } else {
    s0+=442.0;
   }
  }
 }
} else {
 if(i5<0.00032597780227661133){
  if(i22<1.00893235206604){
   if(i63<4.122200607525883e-06){
    if(i10<0.9787240624427795){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=133.0;
    }
   } else {
    if(i49<0.5214606523513794){
     s0+=3890.0;
     s1+=303.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i5<-0.000887066125869751){
    s0+=42.0;
   } else {
    if(i0<-8.624792098999023e-05){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i18<0.05827450752258301){
   if(i2<1.0051729679107666){
    if(i41<1.0844184160232544){
     s0+=941.0;
     s1+=114.0;
    } else {
     s0+=17.0;
     s1+=70.0;
    }
   } else {
    if(i71<0.00029593706130981445){
     s0+=8.0;
     s1+=171.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i10<0.9827829599380493){
    if(i2<0.9979193210601807){
     s0+=202.0;
     s1+=69.0;
    } else {
     s0+=110.0;
     s1+=445.0;
    }
   } else {
    if(i48<0.9976518154144287){
     s0+=61.0;
    } else {
     s0+=96.0;
     s1+=15293.0;
    }
   }
  }
 }
}
if(i11<1.0046347379684448){
 if(i5<0.00032657384872436523){
  if(i25<0.028153397142887115){
   if(i17<1.0222707986831665){
    if(i34<1.0903575420379639){
     s0+=26704.0;
     s1+=2058.0;
    } else {
     s0+=77602.0;
     s1+=911.0;
    }
   } else {
    if(i63<1.8666510186449159e-06){
     s0+=188.0;
     s1+=8.0;
    } else {
     s0+=186.0;
     s1+=170.0;
    }
   }
  } else {
   s1+=115.0;
  }
 } else {
  if(i15<0.0020019463263452053){
   if(i51<-1.8633523723110557e-05){
    if(i38<1.104982852935791){
     s0+=112.0;
     s1+=38.0;
    } else {
     s0+=4.0;
     s1+=101.0;
    }
   } else {
    if(i42<1.023673848976614e-05){
     s0+=3851.0;
    } else {
     s0+=153.0;
     s1+=33.0;
    }
   }
  } else {
   if(i16<0.04516512155532837){
    if(i10<1.0076043605804443){
     s0+=2066.0;
     s1+=408.0;
    } else {
     s0+=24.0;
     s1+=195.0;
    }
   } else {
    if(i14<0.0007431480335071683){
     s0+=1061.0;
     s1+=3854.0;
    } else {
     s0+=308.0;
    }
   }
  }
 }
} else {
 if(i3<-7.76667584432289e-05){
  if(i23<0.03632485866546631){
   if(i1<0.002222776412963867){
    if(i18<0.010006219148635864){
     s0+=214.0;
     s1+=21.0;
    } else {
     s0+=66.0;
     s1+=52.0;
    }
   } else {
    if(i44<0.9971433877944946){
     s0+=1.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i39<0.008588599041104317){
    if(i31<0.0024059410206973553){
     s0+=13.0;
     s1+=418.0;
    } else {
     s0+=126.0;
     s1+=6.0;
    }
   } else {
    if(i65<-0.010407567024230957){
     s0+=38.0;
     s1+=14.0;
    } else {
     s0+=140.0;
     s1+=13697.0;
    }
   }
  }
 } else {
  if(i54<0.0007031678687781096){
   if(i10<1.0074496269226074){
    if(i28<0.00045669078826904297){
     s0+=78.0;
     s1+=87.0;
    } else {
     s0+=426.0;
     s1+=3.0;
    }
   } else {
    if(i25<0.001267818734049797){
     s0+=1.0;
     s1+=933.0;
    } else {
     s0+=105.0;
     s1+=30.0;
    }
   }
  } else {
   if(i34<1.1758689880371094){
    if(i27<1.116804838180542){
     s1+=82.0;
    } else {
     s0+=2679.0;
     s1+=61.0;
    }
   } else {
    if(i0<7.62939453125e-06){
     s0+=217.0;
     s1+=42.0;
    } else {
     s0+=162.0;
     s1+=949.0;
    }
   }
  }
 }
}
if(i5<0.0006101727485656738){
 if(i3<-8.731360139790922e-05){
  if(i23<0.09117758274078369){
   if(i21<0.05430067330598831){
    if(i67<-0.008842021226882935){
     s0+=581.0;
     s1+=6.0;
    } else {
     s0+=27.0;
     s1+=16.0;
    }
   } else {
    if(i35<1.0467554330825806){
     s0+=11.0;
    } else {
     s0+=15.0;
     s1+=68.0;
    }
   }
  } else {
   if(i21<0.011967102065682411){
    if(i42<6.748142186552286e-05){
     s0+=40.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i9<0.9061775803565979){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=855.0;
    }
   }
  }
 } else {
  if(i15<0.0017270520329475403){
   if(i34<1.0776758193969727){
    if(i60<0.00010051485151052475){
     s0+=17489.0;
     s1+=115.0;
    } else {
     s0+=4699.0;
     s1+=584.0;
    }
   } else {
    if(i35<1.1172127723693848){
     s0+=64402.0;
     s1+=160.0;
    } else {
     s0+=3041.0;
     s1+=91.0;
    }
   }
  } else {
   if(i33<0.0010910134296864271){
    if(i33<0.00022364221513271332){
     s0+=1087.0;
    } else {
     s0+=734.0;
     s1+=2282.0;
    }
   } else {
    if(i40<1.03009033203125){
     s0+=17880.0;
     s1+=906.0;
    } else {
     s0+=260.0;
     s1+=299.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025085348170250654){
  if(i27<1.116804838180542){
   if(i38<1.0450111627578735){
    if(i27<1.0623862743377686){
     s0+=1291.0;
    } else {
     s1+=48.0;
    }
   } else {
    s1+=2800.0;
   }
  } else {
   if(i24<0.002287044655531645){
    if(i21<0.021394986659288406){
     s0+=3246.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i2<1.0028027296066284){
     s0+=31.0;
    } else {
     s1+=39.0;
    }
   }
  }
 } else {
  if(i18<0.08307167887687683){
   if(i1<0.001018524169921875){
    if(i71<-0.005315214395523071){
     s0+=107.0;
     s1+=184.0;
    } else {
     s0+=1061.0;
     s1+=98.0;
    }
   } else {
    if(i1<0.0020388364791870117){
     s0+=46.0;
     s1+=135.0;
    } else {
     s1+=250.0;
    }
   }
  } else {
   if(i0<2.0682811737060547e-05){
    if(i32<1.1954493522644043){
     s0+=173.0;
     s1+=67.0;
    } else {
     s0+=116.0;
     s1+=440.0;
    }
   } else {
    if(i38<1.107318639755249){
     s0+=72.0;
     s1+=273.0;
    } else {
     s0+=85.0;
     s1+=14627.0;
    }
   }
  }
 }
}
if(i2<1.003852128982544){
 if(i15<0.0017322530038654804){
  if(i15<0.0012281250674277544){
   if(i33<0.0019202041439712048){
    if(i38<1.023447036743164){
     s0+=3490.0;
     s1+=100.0;
    } else {
     s0+=67335.0;
     s1+=108.0;
    }
   } else {
    if(i2<0.9999983906745911){
     s0+=6951.0;
    } else {
     s0+=637.0;
     s1+=127.0;
    }
   }
  } else {
   if(i36<1.1160998344421387){
    if(i36<1.0540179014205933){
     s0+=2049.0;
    } else {
     s0+=1493.0;
     s1+=569.0;
    }
   } else {
    if(i38<1.1346988677978516){
     s0+=7364.0;
     s1+=41.0;
    } else {
     s0+=404.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i5<-2.3305416107177734e-05){
   if(i24<0.015892192721366882){
    if(i34<1.0906792879104614){
     s0+=684.0;
     s1+=199.0;
    } else {
     s0+=14541.0;
     s1+=297.0;
    }
   } else {
    if(i42<7.899271440692246e-05){
     s1+=138.0;
    } else {
     s0+=34.0;
    }
   }
  } else {
   if(i8<0.0040438491851091385){
    if(i39<0.009472670033574104){
     s0+=1654.0;
     s1+=6.0;
    } else {
     s0+=1479.0;
     s1+=252.0;
    }
   } else {
    if(i0<-2.3305416107177734e-05){
     s0+=2858.0;
     s1+=648.0;
    } else {
     s0+=1277.0;
     s1+=4076.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007025634404271841){
  if(i1<0.0009762048721313477){
   if(i21<0.008488241583108902){
    if(i44<1.0009441375732422){
     s0+=105.0;
     s1+=172.0;
    } else {
     s0+=1229.0;
     s1+=8.0;
    }
   } else {
    if(i31<0.0007891454733908176){
     s0+=103.0;
     s1+=51.0;
    } else {
     s0+=93.0;
     s1+=1205.0;
    }
   }
  } else {
   if(i4<0.00023752450942993164){
    if(i0<8.374452590942383e-05){
     s0+=143.0;
     s1+=1146.0;
    } else {
     s0+=73.0;
     s1+=15087.0;
    }
   } else {
    s0+=38.0;
   }
  }
 } else {
  if(i8<0.021921511739492416){
   s0+=2511.0;
  } else {
   s1+=5.0;
  }
 }
}
if(i8<0.007213727571070194){
 if(i12<1.0156588554382324){
  if(i0<8.684396743774414e-05){
   if(i15<0.0016409580130130053){
    if(i15<0.001089045312255621){
     s0+=74907.0;
     s1+=221.0;
    } else {
     s0+=13668.0;
     s1+=572.0;
    }
   } else {
    if(i24<0.0008886918076314032){
     s0+=2623.0;
     s1+=2512.0;
    } else {
     s0+=16568.0;
     s1+=535.0;
    }
   }
  } else {
   if(i27<1.1180615425109863){
    s1+=720.0;
   } else {
    if(i25<0.0024939551949501038){
     s0+=571.0;
    } else {
     s0+=13.0;
     s1+=250.0;
    }
   }
  }
 } else {
  if(i1<0.002046048641204834){
   if(i1<0.00023615360260009766){
    if(i23<0.09462273120880127){
     s0+=407.0;
    } else {
     s0+=602.0;
     s1+=66.0;
    }
   } else {
    if(i28<0.0006816983222961426){
     s0+=196.0;
     s1+=800.0;
    } else {
     s0+=786.0;
     s1+=2.0;
    }
   }
  } else {
   if(i48<1.001462697982788){
    if(i22<1.020329236984253){
     s0+=26.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i44<0.9988714456558228){
     s0+=7.0;
    } else {
     s1+=1142.0;
    }
   }
  }
 }
} else {
 if(i42<3.798554098466411e-05){
  if(i4<1.8775463104248047e-06){
   if(i16<0.19980847835540771){
    if(i12<1.0226454734802246){
     s0+=660.0;
     s1+=15.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i4<-2.73287296295166e-05){
     s0+=5.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i26<-0.00039634108543395996){
    if(i35<1.08580482006073){
     s0+=292.0;
     s1+=108.0;
    } else {
     s0+=81.0;
     s1+=401.0;
    }
   } else {
    if(i31<0.004155288450419903){
     s0+=80.0;
     s1+=15534.0;
    } else {
     s0+=51.0;
    }
   }
  }
 } else {
  if(i62<-0.0007845298387110233){
   if(i23<0.12656188011169434){
    if(i38<1.1073236465454102){
     s0+=936.0;
     s1+=22.0;
    } else {
     s0+=151.0;
     s1+=252.0;
    }
   } else {
    if(i8<0.009110255166888237){
     s0+=55.0;
     s1+=18.0;
    } else {
     s0+=37.0;
     s1+=1001.0;
    }
   }
  } else {
   if(i51<-5.244773274171166e-05){
    if(i30<0.8652437925338745){
     s0+=34.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=73.0;
    }
   } else {
    if(i21<0.057365886867046356){
     s0+=3572.0;
     s1+=91.0;
    } else {
     s0+=37.0;
     s1+=55.0;
    }
   }
  }
 }
}
if(i5<0.0005688071250915527){
 if(i22<1.018225908279419){
  if(i8<0.0036522415466606617){
   if(i12<0.9945405721664429){
    if(i32<1.074918270111084){
     s0+=3067.0;
     s1+=473.0;
    } else {
     s0+=12394.0;
     s1+=81.0;
    }
   } else {
    if(i36<1.0776758193969727){
     s0+=15777.0;
     s1+=277.0;
    } else {
     s0+=55261.0;
     s1+=177.0;
    }
   }
  } else {
   if(i35<1.1417062282562256){
    if(i53<0.9995689392089844){
     s0+=15927.0;
     s1+=215.0;
    } else {
     s0+=6438.0;
     s1+=2661.0;
    }
   } else {
    if(i39<0.09483560174703598){
     s0+=178.0;
     s1+=16.0;
    } else {
     s0+=26.0;
     s1+=462.0;
    }
   }
  }
 } else {
  if(i7<1.0007575750350952){
   if(i8<0.007103736512362957){
    if(i27<1.0905578136444092){
     s1+=4.0;
    } else {
     s0+=410.0;
     s1+=7.0;
    }
   } else {
    if(i58<0.034605756402015686){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=162.0;
    }
   }
  } else {
   if(i8<0.0040693264454603195){
    if(i17<1.020388126373291){
     s0+=47.0;
     s1+=10.0;
    } else {
     s0+=161.0;
    }
   } else {
    if(i72<-1.2467645547076245e-06){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=547.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007055420428514481){
  if(i0<6.073713302612305e-05){
   if(i40<1.0291590690612793){
    if(i37<-0.00020953331841155887){
     s0+=581.0;
     s1+=1206.0;
    } else {
     s0+=2011.0;
     s1+=501.0;
    }
   } else {
    if(i8<0.0062321871519088745){
     s0+=193.0;
     s1+=81.0;
    } else {
     s0+=28.0;
     s1+=944.0;
    }
   }
  } else {
   if(i0<8.314847946166992e-05){
    if(i15<0.0018495810218155384){
     s0+=108.0;
    } else {
     s0+=119.0;
     s1+=1404.0;
    }
   } else {
    if(i50<-6.419467354135122e-06){
     s0+=60.0;
     s1+=1.0;
    } else {
     s0+=93.0;
     s1+=15215.0;
    }
   }
  }
 } else {
  s0+=3504.0;
 }
}
if(i2<1.003741979598999){
 if(i35<1.1403480768203735){
  if(i16<0.2091178297996521){
   if(i8<0.003741863649338484){
    if(i60<0.00016535459144506603){
     s0+=72212.0;
     s1+=354.0;
    } else {
     s0+=15702.0;
     s1+=732.0;
    }
   } else {
    if(i24<0.0010032856371253729){
     s0+=2650.0;
     s1+=2472.0;
    } else {
     s0+=20305.0;
     s1+=1198.0;
    }
   }
  } else {
   if(i29<0.002189784310758114){
    if(i22<1.0181176662445068){
     s0+=82.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i43<0.0025699129328131676){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i29<0.011461799964308739){
   if(i5<0.00021034479141235352){
    if(i24<0.0025908593088388443){
     s0+=718.0;
    } else {
     s0+=71.0;
     s1+=81.0;
    }
   } else {
    if(i44<1.002427577972412){
     s0+=46.0;
     s1+=461.0;
    } else {
     s0+=85.0;
     s1+=24.0;
    }
   }
  } else {
   if(i65<-0.007124185562133789){
    if(i25<0.013085555285215378){
     s0+=61.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=64.0;
    }
   } else {
    if(i23<0.003197699785232544){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=873.0;
    }
   }
  }
 }
} else {
 if(i29<0.0019132851157337427){
  if(i46<0.000901019899174571){
   if(i38<1.0450111627578735){
    if(i52<7.331371307373047e-06){
     s0+=8.0;
     s1+=72.0;
    } else {
     s0+=713.0;
     s1+=9.0;
    }
   } else {
    if(i28<0.0005954504013061523){
     s0+=34.0;
     s1+=2388.0;
    } else {
     s0+=162.0;
     s1+=10.0;
    }
   }
  } else {
   if(i27<1.116804838180542){
    s1+=123.0;
   } else {
    if(i2<1.0231647491455078){
     s0+=3356.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i23<0.09845593571662903){
   if(i26<-0.00010257959365844727){
    if(i17<0.9627261757850647){
     s0+=39.0;
     s1+=166.0;
    } else {
     s0+=90.0;
     s1+=11.0;
    }
   } else {
    if(i8<0.0028058283496648073){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=20.0;
     s1+=470.0;
    }
   }
  } else {
   if(i4<-0.0005154311656951904){
    s0+=2.0;
   } else {
    if(i1<0.0009479522705078125){
     s0+=37.0;
     s1+=969.0;
    } else {
     s0+=19.0;
     s1+=13578.0;
    }
   }
  }
 }
}
if(i69<1.02988600730896){
 if(i1<0.000987410545349121){
  if(i5<0.0002925992012023926){
   if(i31<0.0006862530135549605){
    if(i35<1.023176908493042){
     s0+=10816.0;
     s1+=189.0;
    } else {
     s0+=62591.0;
     s1+=158.0;
    }
   } else {
    if(i5<-0.0001583695411682129){
     s0+=22272.0;
     s1+=376.0;
    } else {
     s0+=6256.0;
     s1+=2098.0;
    }
   }
  } else {
   if(i39<0.020691920071840286){
    if(i8<0.004103310406208038){
     s0+=7786.0;
     s1+=65.0;
    } else {
     s0+=414.0;
     s1+=869.0;
    }
   } else {
    if(i1<-0.00018399953842163086){
     s0+=1584.0;
     s1+=368.0;
    } else {
     s0+=787.0;
     s1+=2286.0;
    }
   }
  }
 } else {
  if(i25<0.002367826411500573){
   if(i45<0.07003220915794373){
    if(i28<0.0005143582820892334){
     s0+=25.0;
     s1+=1857.0;
    } else {
     s0+=422.0;
    }
   } else {
    if(i33<0.0012182323262095451){
     s0+=4.0;
     s1+=57.0;
    } else {
     s0+=1225.0;
     s1+=5.0;
    }
   }
  } else {
   if(i16<0.002888798713684082){
    if(i32<1.3731330633163452){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i65<-0.016107112169265747){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=36.0;
     s1+=3978.0;
    }
   }
  }
 }
} else {
 if(i4<1.1146068572998047e-05){
  if(i15<0.0022314265370368958){
   if(i38<1.1354689598083496){
    if(i6<0.9835977554321289){
     s1+=2.0;
    } else {
     s0+=636.0;
     s1+=2.0;
    }
   } else {
    if(i38<1.1361892223358154){
     s1+=20.0;
    } else {
     s0+=235.0;
    }
   }
  } else {
   if(i23<0.19584450125694275){
    if(i13<-0.0003739595413208008){
     s0+=128.0;
     s1+=26.0;
    } else {
     s0+=13.0;
     s1+=36.0;
    }
   } else {
    if(i45<0.1900835633277893){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i32<1.1757044792175293){
   if(i8<0.004952743649482727){
    if(i28<0.0005241036415100098){
     s0+=83.0;
     s1+=205.0;
    } else {
     s0+=429.0;
    }
   } else {
    if(i65<-0.00044149160385131836){
     s0+=34.0;
     s1+=64.0;
    } else {
     s0+=25.0;
     s1+=1173.0;
    }
   }
  } else {
   if(i35<1.0781500339508057){
    if(i1<0.002568662166595459){
     s0+=45.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i3<1.8153183191316202e-05){
     s0+=70.0;
     s1+=10697.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
}
if(i4<2.4378299713134766e-05){
 if(i12<1.0170701742172241){
  if(i15<0.0017270520329475403){
   if(i60<0.00016586270066909492){
    if(i38<1.1354830265045166){
     s0+=72617.0;
     s1+=261.0;
    } else {
     s0+=1308.0;
     s1+=54.0;
    }
   } else {
    if(i34<1.0776758193969727){
     s0+=3727.0;
     s1+=512.0;
    } else {
     s0+=11803.0;
     s1+=164.0;
    }
   }
  } else {
   if(i20<0.9952875971794128){
    if(i16<0.2003687620162964){
     s0+=15570.0;
     s1+=541.0;
    } else {
     s0+=50.0;
     s1+=241.0;
    }
   } else {
    if(i55<0.9998123645782471){
     s0+=2843.0;
     s1+=159.0;
    } else {
     s0+=1900.0;
     s1+=2940.0;
    }
   }
  }
 } else {
  if(i51<-8.709483154234476e-06){
   if(i3<-3.19434329867363e-05){
    if(i22<1.025022029876709){
     s0+=136.0;
     s1+=275.0;
    } else {
     s0+=10.0;
     s1+=642.0;
    }
   } else {
    if(i31<0.001117950538173318){
     s0+=11.0;
     s1+=24.0;
    } else {
     s0+=135.0;
     s1+=8.0;
    }
   }
  } else {
   if(i42<1.1028168046323117e-05){
    s0+=411.0;
   } else {
    if(i51<-7.334728252317291e-06){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=73.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i38<1.1300668716430664){
  if(i10<1.014102816581726){
   if(i25<0.001003954792395234){
    if(i34<1.0520559549331665){
     s0+=1077.0;
    } else {
     s0+=6.0;
     s1+=1520.0;
    }
   } else {
    if(i8<0.00627170130610466){
     s0+=2838.0;
     s1+=33.0;
    } else {
     s0+=692.0;
     s1+=708.0;
    }
   }
  } else {
   if(i50<-4.797423571289983e-06){
    s0+=94.0;
   } else {
    s1+=1644.0;
   }
  }
 } else {
  if(i36<1.176405668258667){
   if(i32<1.1310346126556396){
    s1+=1.0;
   } else {
    s0+=809.0;
   }
  } else {
   if(i9<0.9360140562057495){
    if(i46<0.010267689824104309){
     s0+=233.0;
     s1+=45.0;
    } else {
     s0+=55.0;
     s1+=111.0;
    }
   } else {
    if(i9<0.9740936756134033){
     s0+=145.0;
     s1+=781.0;
    } else {
     s0+=128.0;
     s1+=13512.0;
    }
   }
  }
 }
}
if(i3<-9.841138671617955e-05){
 if(i35<1.038961410522461){
  if(i16<0.08156925439834595){
   if(i24<0.0056951576843857765){
    s1+=6.0;
   } else {
    if(i31<0.0030240623746067286){
     s0+=374.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   }
  } else {
   if(i41<0.9539408683776855){
    s0+=1.0;
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i44<0.997994065284729){
   s0+=154.0;
  } else {
   if(i18<0.02325919270515442){
    if(i9<0.9716646671295166){
     s0+=163.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   } else {
    if(i22<0.8943356275558472){
     s0+=45.0;
     s1+=81.0;
    } else {
     s0+=132.0;
     s1+=15237.0;
    }
   }
  }
 }
} else {
 if(i2<1.003111481666565){
  if(i31<0.0007093960302881896){
   if(i65<-0.0004164576530456543){
    if(i48<0.9995904564857483){
     s0+=7086.0;
    } else {
     s0+=6072.0;
     s1+=241.0;
    }
   } else {
    if(i51<-1.6779813449829817e-05){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=64979.0;
     s1+=231.0;
    }
   }
  } else {
   if(i27<1.1164028644561768){
    if(i38<1.0382080078125){
     s0+=2530.0;
     s1+=669.0;
    } else {
     s0+=760.0;
     s1+=2157.0;
    }
   } else {
    if(i1<-0.000253140926361084){
     s0+=25731.0;
     s1+=551.0;
    } else {
     s0+=2799.0;
     s1+=787.0;
    }
   }
  }
 } else {
  if(i65<0.0009562969207763672){
   if(i8<0.003448847448453307){
    if(i43<0.0009927081409841776){
     s0+=1243.0;
     s1+=296.0;
    } else {
     s0+=3587.0;
     s1+=53.0;
    }
   } else {
    if(i14<0.0003881404409185052){
     s0+=175.0;
     s1+=1945.0;
    } else {
     s0+=362.0;
     s1+=96.0;
    }
   }
  } else {
   if(i50<-3.972433660237584e-06){
    if(i29<0.0020090099424123764){
     s0+=171.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i14<0.0003344796714372933){
     s0+=42.0;
     s1+=1745.0;
    } else {
     s0+=135.0;
     s1+=35.0;
    }
   }
  }
 }
}
if(i16<0.1875152289867401){
 if(i0<6.562471389770508e-05){
  if(i15<0.0017319940961897373){
   if(i15<0.0011612222297117114){
    if(i46<0.0019056329037994146){
     s0+=74575.0;
     s1+=212.0;
    } else {
     s0+=2788.0;
     s1+=76.0;
    }
   } else {
    if(i25<0.0003303448320366442){
     s0+=1403.0;
     s1+=433.0;
    } else {
     s0+=12133.0;
     s1+=286.0;
    }
   }
  } else {
   if(i1<-0.0004067420959472656){
    if(i31<0.00306696561165154){
     s0+=18115.0;
     s1+=620.0;
    } else {
     s0+=255.0;
     s1+=125.0;
    }
   } else {
    if(i4<-3.635883331298828e-06){
     s0+=848.0;
     s1+=12.0;
    } else {
     s0+=3635.0;
     s1+=4450.0;
    }
   }
  }
 } else {
  if(i8<0.0039032502099871635){
   if(i27<1.116804838180542){
    if(i1<0.0010813474655151367){
     s0+=45.0;
     s1+=5.0;
    } else {
     s1+=624.0;
    }
   } else {
    if(i32<1.1752288341522217){
     s0+=1594.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=126.0;
    }
   }
  } else {
   if(i7<1.0020780563354492){
    if(i68<0.014249506406486034){
     s0+=149.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i2<1.0040132999420166){
     s0+=50.0;
     s1+=39.0;
    } else {
     s0+=166.0;
     s1+=4323.0;
    }
   }
  }
 }
} else {
 if(i2<1.0022804737091064){
  if(i8<0.00759811419993639){
   if(i57<-4.8584251999272965e-06){
    if(i61<0.09554120898246765){
     s0+=102.0;
     s1+=1.0;
    } else {
     s0+=49.0;
     s1+=32.0;
    }
   } else {
    if(i28<0.00010907649993896484){
     s0+=445.0;
     s1+=2.0;
    } else {
     s0+=103.0;
     s1+=12.0;
    }
   }
  } else {
   if(i43<0.002294778823852539){
    s0+=9.0;
   } else {
    if(i3<-5.710476398235187e-05){
     s1+=704.0;
    } else {
     s0+=3.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i25<0.00218008179217577){
   s0+=116.0;
  } else {
   if(i26<-0.0006567835807800293){
    if(i64<0.6024526953697205){
     s1+=2.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i23<0.20119783282279968){
     s0+=5.0;
     s1+=534.0;
    } else {
     s0+=1.0;
     s1+=11513.0;
    }
   }
  }
 }
}
if(i7<1.0026336908340454){
 if(i45<0.2063838243484497){
  if(i8<0.0036073289811611176){
   if(i41<1.0179111957550049){
    if(i3<-1.9978548152721487e-05){
     s0+=720.0;
     s1+=205.0;
    } else {
     s0+=9612.0;
     s1+=316.0;
    }
   } else {
    if(i34<1.0776758193969727){
     s0+=15416.0;
     s1+=296.0;
    } else {
     s0+=61366.0;
     s1+=222.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    if(i34<1.054672360420227){
     s0+=3015.0;
     s1+=26.0;
    } else {
     s0+=196.0;
     s1+=2570.0;
    }
   } else {
    if(i5<6.681680679321289e-05){
     s0+=17562.0;
     s1+=345.0;
    } else {
     s0+=2378.0;
     s1+=1060.0;
    }
   }
  }
 } else {
  if(i43<0.0021212915889918804){
   if(i12<1.0286448001861572){
    s0+=41.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i37<-0.00013370139640755951){
    if(i32<1.7041046619415283){
     s0+=38.0;
     s1+=658.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i57<-2.73874138656538e-06){
     s0+=12.0;
     s1+=24.0;
    } else {
     s0+=43.0;
    }
   }
  }
 }
} else {
 if(i27<1.1935834884643555){
  if(i34<1.117074966430664){
   if(i10<1.007572889328003){
    if(i38<1.0457782745361328){
     s0+=715.0;
     s1+=11.0;
    } else {
     s0+=78.0;
     s1+=124.0;
    }
   } else {
    if(i27<1.1229777336120605){
     s1+=2179.0;
    } else {
     s0+=256.0;
    }
   }
  } else {
   s0+=2743.0;
  }
 } else {
  if(i38<1.1076223850250244){
   if(i18<0.09121525287628174){
    if(i2<1.0072661638259888){
     s0+=864.0;
     s1+=82.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i5<0.0013308525085449219){
     s0+=280.0;
     s1+=90.0;
    } else {
     s0+=24.0;
     s1+=248.0;
    }
   }
  } else {
   if(i13<-0.0022638142108917236){
    if(i21<0.039658769965171814){
     s0+=467.0;
     s1+=204.0;
    } else {
     s0+=192.0;
     s1+=741.0;
    }
   } else {
    if(i26<-2.658367156982422e-05){
     s0+=265.0;
     s1+=1868.0;
    } else {
     s0+=77.0;
     s1+=13181.0;
    }
   }
  }
 }
}
if(i9<1.013898491859436){
 if(i61<0.1775030791759491){
  if(i1<0.0011906027793884277){
   if(i4<1.5079975128173828e-05){
    if(i21<0.006396266631782055){
     s0+=63927.0;
     s1+=460.0;
    } else {
     s0+=37043.0;
     s1+=2350.0;
    }
   } else {
    if(i14<0.00035426788963377476){
     s0+=2629.0;
     s1+=1497.0;
    } else {
     s0+=4623.0;
     s1+=168.0;
    }
   }
  } else {
   if(i8<0.0026317480951547623){
    if(i50<-3.3504265957162715e-06){
     s0+=441.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=130.0;
    }
   } else {
    if(i14<0.0006604347145184875){
     s0+=43.0;
     s1+=1246.0;
    } else {
     s0+=250.0;
    }
   }
  }
 } else {
  if(i22<0.9734100103378296){
   if(i35<1.1128016710281372){
    if(i52<1.1146068572998047e-05){
     s0+=4530.0;
     s1+=241.0;
    } else {
     s0+=365.0;
     s1+=255.0;
    }
   } else {
    if(i39<0.08419211208820343){
     s0+=309.0;
     s1+=92.0;
    } else {
     s0+=74.0;
     s1+=1198.0;
    }
   }
  } else {
   if(i1<0.0002353191375732422){
    if(i57<-2.5169074433506466e-06){
     s0+=455.0;
     s1+=651.0;
    } else {
     s0+=527.0;
     s1+=3.0;
    }
   } else {
    if(i21<0.029662106186151505){
     s0+=83.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=1510.0;
    }
   }
  }
 }
} else {
 if(i8<0.0039039552211761475){
  if(i51<-3.7587364204227924e-05){
   if(i14<0.0004091788432560861){
    if(i50<-1.526334381196648e-05){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=368.0;
    }
   } else {
    if(i42<-5.31324913026765e-05){
     s1+=7.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i36<1.1002612113952637){
    s1+=163.0;
   } else {
    if(i28<0.00041806697845458984){
     s0+=202.0;
     s1+=44.0;
    } else {
     s0+=840.0;
    }
   }
  }
 } else {
  if(i2<1.0005874633789062){
   if(i8<0.005370219703763723){
    if(i50<-1.5174373402260244e-06){
     s1+=2.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i27<1.1729743480682373){
     s0+=8.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i14<0.0010336685227230191){
    if(i19<1.0143723487854004){
     s0+=26.0;
     s1+=1132.0;
    } else {
     s0+=3.0;
     s1+=12435.0;
    }
   } else {
    s0+=123.0;
   }
  }
 }
}
if(i9<1.014350414276123){
 if(i2<1.003735065460205){
  if(i4<1.6391277313232422e-05){
   if(i23<0.23286330699920654){
    if(i24<0.0008798039052635431){
     s0+=30039.0;
     s1+=2708.0;
    } else {
     s0+=76254.0;
     s1+=878.0;
    }
   } else {
    if(i15<0.002799076959490776){
     s0+=68.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=255.0;
    }
   }
  } else {
   if(i61<0.502975344657898){
    if(i23<0.05028432607650757){
     s0+=2573.0;
     s1+=201.0;
    } else {
     s0+=2319.0;
     s1+=1252.0;
    }
   } else {
    if(i16<0.03394502401351929){
     s0+=67.0;
     s1+=7.0;
    } else {
     s0+=26.0;
     s1+=640.0;
    }
   }
  }
 } else {
  if(i33<0.002143150195479393){
   if(i52<1.0073184967041016e-05){
    if(i27<1.116804838180542){
     s0+=110.0;
     s1+=1184.0;
    } else {
     s0+=533.0;
     s1+=31.0;
    }
   } else {
    if(i13<0.0023737549781799316){
     s0+=2973.0;
     s1+=82.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i46<0.0005380389047786593){
    if(i33<0.008509382605552673){
     s0+=48.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i32<1.1269173622131348){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=129.0;
     s1+=2888.0;
    }
   }
  }
 }
} else {
 if(i0<1.341104507446289e-05){
  if(i39<0.0566096194088459){
   if(i15<0.0036365091800689697){
    if(i13<-0.003170192241668701){
     s1+=3.0;
    } else {
     s0+=305.0;
     s1+=8.0;
    }
   } else {
    if(i45<0.11649319529533386){
     s0+=6.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i13<0.0004680454730987549){
    if(i21<0.03428104519844055){
     s0+=31.0;
     s1+=21.0;
    } else {
     s0+=11.0;
     s1+=164.0;
    }
   } else {
    if(i32<1.1549088954925537){
     s0+=42.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i50<-7.357566573773511e-06){
   s0+=214.0;
  } else {
   if(i14<0.0007036786992102861){
    if(i1<0.0008026361465454102){
     s0+=129.0;
     s1+=778.0;
    } else {
     s0+=37.0;
     s1+=13387.0;
    }
   } else {
    if(i60<-0.0008563634473830462){
     s1+=1.0;
    } else {
     s0+=365.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i4<1.8537044525146484e-05){
  if(i15<0.0017285144422203302){
   if(i34<1.0776758193969727){
    if(i60<8.344653178937733e-05){
     s0+=17163.0;
     s1+=78.0;
    } else {
     s0+=5289.0;
     s1+=608.0;
    }
   } else {
    if(i46<0.0019558840431272984){
     s0+=63355.0;
     s1+=104.0;
    } else {
     s0+=2904.0;
     s1+=107.0;
    }
   }
  } else {
   if(i32<1.0903346538543701){
    if(i31<0.001126611023209989){
     s0+=1234.0;
     s1+=2068.0;
    } else {
     s0+=2340.0;
     s1+=48.0;
    }
   } else {
    if(i23<0.20273983478546143){
     s0+=15993.0;
     s1+=841.0;
    } else {
     s0+=97.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i8<0.004414921626448631){
   if(i33<0.002456537913531065){
    if(i49<0.06375867873430252){
     s0+=3952.0;
     s1+=63.0;
    } else {
     s0+=19.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.5246086150000338e-05){
     s0+=47.0;
     s1+=96.0;
    } else {
     s0+=461.0;
     s1+=5.0;
    }
   }
  } else {
   if(i23<0.04504910111427307){
    if(i10<0.9994699358940125){
     s0+=841.0;
     s1+=124.0;
    } else {
     s0+=12.0;
     s1+=71.0;
    }
   } else {
    if(i20<0.9978554844856262){
     s0+=616.0;
     s1+=938.0;
    } else {
     s0+=275.0;
     s1+=2316.0;
    }
   }
  }
 }
} else {
 if(i43<0.0018581973854452372){
  if(i54<0.0008112731156870723){
   if(i29<0.00016847002552822232){
    s0+=59.0;
   } else {
    if(i28<0.0013449788093566895){
     s0+=61.0;
     s1+=3062.0;
    } else {
     s0+=41.0;
    }
   }
  } else {
   if(i9<1.019040822982788){
    if(i32<1.176171064376831){
     s0+=1661.0;
     s1+=89.0;
    } else {
     s1+=111.0;
    }
   } else {
    if(i8<0.0016880144830793142){
     s0+=34.0;
    } else {
     s0+=2.0;
     s1+=565.0;
    }
   }
  }
 } else {
  if(i27<1.1843671798706055){
   s0+=93.0;
  } else {
   if(i35<1.07395601272583){
    if(i24<0.01112627238035202){
     s1+=121.0;
    } else {
     s0+=76.0;
     s1+=40.0;
    }
   } else {
    if(i23<0.0003789663314819336){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=35.0;
     s1+=12206.0;
    }
   }
  }
 }
}
if(i4<2.294778823852539e-05){
 if(i35<1.1403480768203735){
  if(i17<1.0181355476379395){
   if(i39<0.011311891488730907){
    if(i15<0.001985338982194662){
     s0+=62486.0;
     s1+=348.0;
    } else {
     s0+=3176.0;
     s1+=346.0;
    }
   } else {
    if(i0<-2.9981136322021484e-05){
     s0+=30714.0;
     s1+=753.0;
    } else {
     s0+=12194.0;
     s1+=2638.0;
    }
   }
  } else {
   if(i3<-3.273080073995516e-05){
    if(i8<0.004927880130708218){
     s0+=123.0;
     s1+=34.0;
    } else {
     s0+=26.0;
     s1+=438.0;
    }
   } else {
    if(i47<0.0001557420036988333){
     s0+=404.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i49<0.2200789898633957){
   if(i57<-2.5657034257164923e-06){
    if(i45<0.12305670976638794){
     s0+=180.0;
     s1+=45.0;
    } else {
     s0+=37.0;
     s1+=244.0;
    }
   } else {
    s0+=630.0;
   }
  } else {
   if(i39<0.11845888197422028){
    if(i3<-0.00010016155283665285){
     s1+=30.0;
    } else {
     s0+=71.0;
     s1+=3.0;
    }
   } else {
    if(i59<1.7041046619415283){
     s1+=632.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i24<0.002569957170635462){
  if(i25<0.001271774061024189){
   if(i36<1.056142807006836){
    s0+=1211.0;
   } else {
    if(i24<0.000979210832156241){
     s1+=2601.0;
    } else {
     s0+=295.0;
    }
   }
  } else {
   if(i24<0.0010720975697040558){
    s1+=112.0;
   } else {
    if(i27<1.1935834884643555){
     s0+=3067.0;
    } else {
     s0+=46.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i1<0.000560462474822998){
   if(i54<0.0013965927064418793){
    if(i27<1.2026599645614624){
     s1+=13.0;
    } else {
     s0+=724.0;
     s1+=44.0;
    }
   } else {
    if(i37<-0.0002595052355900407){
     s0+=129.0;
     s1+=882.0;
    } else {
     s0+=715.0;
     s1+=289.0;
    }
   }
  } else {
   if(i13<-0.002312004566192627){
    if(i14<0.00010612238111207262){
     s0+=67.0;
     s1+=23.0;
    } else {
     s0+=81.0;
     s1+=393.0;
    }
   } else {
    if(i3<-7.334246765822172e-05){
     s0+=37.0;
     s1+=13718.0;
    } else {
     s0+=97.0;
     s1+=628.0;
    }
   }
  }
 }
}
if(i2<1.0038702487945557){
 if(i15<0.0018620870541781187){
  if(i60<0.00018671422731131315){
   if(i35<1.0102167129516602){
    if(i9<0.9909247159957886){
     s0+=3.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i51<-1.9860650354530662e-05){
     s0+=10.0;
     s1+=38.0;
    } else {
     s0+=77497.0;
     s1+=463.0;
    }
   }
  } else {
   if(i43<0.0002587922499515116){
    if(i67<-0.00011622905731201172){
     s0+=268.0;
     s1+=361.0;
    } else {
     s0+=388.0;
    }
   } else {
    if(i19<1.007207989692688){
     s0+=13383.0;
     s1+=306.0;
    } else {
     s0+=18.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i7<1.0004594326019287){
   if(i24<0.0008920446271076798){
    if(i44<0.9995412230491638){
     s0+=1186.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=539.0;
    }
   } else {
    if(i46<0.03316403180360794){
     s0+=12529.0;
     s1+=250.0;
    } else {
     s0+=5.0;
     s1+=119.0;
    }
   }
  } else {
   if(i26<-0.00020164251327514648){
    if(i49<0.27254927158355713){
     s0+=5142.0;
     s1+=853.0;
    } else {
     s0+=131.0;
     s1+=730.0;
    }
   } else {
    if(i32<1.0440731048583984){
     s0+=633.0;
     s1+=4.0;
    } else {
     s0+=852.0;
     s1+=2941.0;
    }
   }
  }
 }
} else {
 if(i15<0.0019515599124133587){
  if(i42<-1.2581186638271902e-05){
   if(i1<0.0017933845520019531){
    if(i29<0.0007409530226141214){
     s1+=98.0;
    } else {
     s0+=103.0;
    }
   } else {
    if(i26<0.0001970529556274414){
     s0+=12.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=1249.0;
    }
   }
  } else {
   if(i8<0.004423638805747032){
    if(i14<0.00019576415070332587){
     s0+=44.0;
     s1+=67.0;
    } else {
     s0+=2986.0;
     s1+=2.0;
    }
   } else {
    if(i23<0.08035320043563843){
     s0+=2.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i8<0.003958136774599552){
   if(i47<-1.4983676010160707e-05){
    if(i11<1.011733055114746){
     s0+=144.0;
     s1+=118.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i47<-1.3710687198909e-05){
     s0+=28.0;
     s1+=10.0;
    } else {
     s0+=576.0;
     s1+=2.0;
    }
   }
  } else {
   if(i25<0.002682435791939497){
    if(i27<1.1180615425109863){
     s1+=1860.0;
    } else {
     s0+=276.0;
     s1+=137.0;
    }
   } else {
    if(i26<-0.0002701878547668457){
     s0+=95.0;
     s1+=476.0;
    } else {
     s0+=12.0;
     s1+=13742.0;
    }
   }
  }
 }
}
if(i6<1.0135858058929443){
 if(i2<1.0035068988800049){
  if(i8<0.014666691422462463){
   if(i60<0.00018335660570301116){
    if(i39<0.017743490636348724){
     s0+=76782.0;
     s1+=932.0;
    } else {
     s0+=7104.0;
     s1+=965.0;
    }
   } else {
    if(i20<0.9950223565101624){
     s0+=21526.0;
     s1+=524.0;
    } else {
     s0+=4739.0;
     s1+=2059.0;
    }
   }
  } else {
   if(i23<0.053143709897994995){
    if(i67<-0.011658310890197754){
     s0+=817.0;
     s1+=51.0;
    } else {
     s0+=7.0;
     s1+=30.0;
    }
   } else {
    if(i10<0.9583950042724609){
     s0+=82.0;
     s1+=66.0;
    } else {
     s0+=24.0;
     s1+=974.0;
    }
   }
  }
 } else {
  if(i21<0.013540796935558319){
   if(i36<1.116804838180542){
    if(i43<0.00016930128913372755){
     s0+=725.0;
     s1+=52.0;
    } else {
     s0+=94.0;
     s1+=1064.0;
    }
   } else {
    if(i33<0.002266111085191369){
     s0+=3076.0;
     s1+=1.0;
    } else {
     s0+=98.0;
     s1+=161.0;
    }
   }
  } else {
   if(i60<0.0032081850804388523){
    if(i38<1.1044622659683228){
     s0+=45.0;
     s1+=175.0;
    } else {
     s0+=42.0;
     s1+=2608.0;
    }
   } else {
    if(i33<0.01728334277868271){
     s0+=34.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i57<-3.7506501939787995e-06){
  if(i14<0.0007036929600872099){
   if(i0<-2.682209014892578e-05){
    if(i15<0.004782398231327534){
     s0+=139.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i51<-1.1012303730240092e-05){
     s0+=201.0;
     s1+=14641.0;
    } else {
     s0+=51.0;
     s1+=3.0;
    }
   }
  } else {
   if(i23<0.4250034689903259){
    s0+=594.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i47<5.23732669535093e-05){
   s0+=227.0;
  } else {
   if(i8<0.0060074725188314915){
    s0+=22.0;
   } else {
    s1+=14.0;
   }
  }
 }
}
if(i17<1.0177959203720093){
 if(i5<0.001010596752166748){
  if(i8<0.003661890747025609){
   if(i60<0.0001897048350656405){
    if(i11<1.0072710514068604){
     s0+=75499.0;
     s1+=368.0;
    } else {
     s0+=121.0;
     s1+=29.0;
    }
   } else {
    if(i10<0.9928584098815918){
     s0+=10203.0;
     s1+=60.0;
    } else {
     s0+=3398.0;
     s1+=622.0;
    }
   }
  } else {
   if(i2<0.9989217519760132){
    if(i16<0.22652596235275269){
     s0+=21623.0;
     s1+=800.0;
    } else {
     s0+=19.0;
     s1+=172.0;
    }
   } else {
    if(i7<1.0001671314239502){
     s0+=584.0;
     s1+=54.0;
    } else {
     s0+=1328.0;
     s1+=3753.0;
    }
   }
  }
 } else {
  if(i11<1.0108075141906738){
   if(i14<0.0006519799353554845){
    if(i35<1.0739374160766602){
     s0+=458.0;
     s1+=590.0;
    } else {
     s0+=192.0;
     s1+=1412.0;
    }
   } else {
    if(i32<1.2195510864257812){
     s0+=1322.0;
    } else {
     s0+=14.0;
     s1+=24.0;
    }
   }
  } else {
   if(i2<1.0057055950164795){
    if(i55<1.0026605129241943){
     s0+=46.0;
     s1+=45.0;
    } else {
     s1+=78.0;
    }
   } else {
    if(i8<0.003736570943146944){
     s0+=38.0;
     s1+=242.0;
    } else {
     s0+=11.0;
     s1+=1853.0;
    }
   }
  }
 }
} else {
 if(i14<0.000713324174284935){
  if(i57<-2.770299033727497e-06){
   if(i51<-9.085832971322816e-06){
    if(i6<1.0225989818572998){
     s0+=461.0;
     s1+=2569.0;
    } else {
     s0+=57.0;
     s1+=11700.0;
    }
   } else {
    if(i46<0.0019441820913925767){
     s0+=96.0;
     s1+=6.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   }
  } else {
   if(i42<2.0874223991995677e-05){
    s0+=463.0;
   } else {
    if(i43<0.0030568416696041822){
     s0+=19.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  s0+=504.0;
 }
}
if(i0<6.276369094848633e-05){
 if(i39<0.1781505048274994){
  if(i5<0.0003281235694885254){
   if(i55<1.000347375869751){
    if(i18<0.24885833263397217){
     s0+=56345.0;
     s1+=510.0;
    } else {
     s0+=33.0;
     s1+=44.0;
    }
   } else {
    if(i9<1.0089399814605713){
     s0+=47674.0;
     s1+=2394.0;
    } else {
     s0+=649.0;
     s1+=265.0;
    }
   }
  } else {
   if(i62<-0.0008070315816439688){
    if(i16<0.139896422624588){
     s0+=1244.0;
     s1+=1044.0;
    } else {
     s0+=216.0;
     s1+=1152.0;
    }
   } else {
    if(i27<1.0623862743377686){
     s0+=2402.0;
    } else {
     s0+=5558.0;
     s1+=1443.0;
    }
   }
  }
 } else {
  if(i19<0.9406382441520691){
   if(i26<-0.0008282661437988281){
    if(i53<1.0200899839401245){
     s0+=292.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    s1+=30.0;
   }
  } else {
   if(i38<1.1695423126220703){
    if(i8<0.01288353931158781){
     s0+=11.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i66<0.0005049456958658993){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=948.0;
    }
   }
  }
 }
} else {
 if(i21<0.007924895733594894){
  if(i52<1.2576580047607422e-05){
   if(i14<0.0002819054643623531){
    if(i61<0.4605931043624878){
     s1+=1772.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i33<0.004552965052425861){
     s0+=326.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   }
  } else {
   if(i10<1.017041802406311){
    if(i60<0.00022392177197616547){
     s0+=1482.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   } else {
    s1+=163.0;
   }
  }
 } else {
  if(i29<0.0020320508629083633){
   if(i52<1.2814998626708984e-05){
    if(i63<1.949051693372894e-07){
     s0+=33.0;
     s1+=933.0;
    } else {
     s0+=41.0;
     s1+=3.0;
    }
   } else {
    if(i36<1.1782985925674438){
     s0+=174.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i32<1.127323031425476){
    if(i42<8.804277968010865e-06){
     s1+=18.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i23<0.09465053677558899){
     s0+=104.0;
     s1+=491.0;
    } else {
     s0+=23.0;
     s1+=12904.0;
    }
   }
  }
 }
}
if(i11<1.0046367645263672){
 if(i6<1.0135512351989746){
  if(i5<0.0002925395965576172){
   if(i31<0.0007107785204425454){
    if(i51<-1.5494029867113568e-05){
     s0+=52.0;
     s1+=12.0;
    } else {
     s0+=75463.0;
     s1+=385.0;
    }
   } else {
    if(i1<-0.0005928277969360352){
     s0+=23160.0;
     s1+=544.0;
    } else {
     s0+=4201.0;
     s1+=1980.0;
    }
   }
  } else {
   if(i31<0.0007613025372847915){
    if(i29<0.0023205389734357595){
     s0+=3803.0;
     s1+=1.0;
    } else {
     s0+=70.0;
     s1+=55.0;
    }
   } else {
    if(i28<0.00031620264053344727){
     s0+=699.0;
     s1+=1498.0;
    } else {
     s0+=4168.0;
     s1+=1156.0;
    }
   }
  }
 } else {
  if(i53<1.0002007484436035){
   if(i39<0.10137221217155457){
    if(i24<0.006201031617820263){
     s0+=219.0;
     s1+=8.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i8<0.006003824062645435){
     s0+=21.0;
    } else {
     s1+=138.0;
    }
   }
  } else {
   if(i8<0.004437560215592384){
    if(i27<1.3095152378082275){
     s0+=66.0;
     s1+=50.0;
    } else {
     s0+=218.0;
    }
   } else {
    if(i14<0.0010637693339958787){
     s0+=5.0;
     s1+=2174.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
} else {
 if(i24<0.002352741314098239){
  if(i42<-1.2569989848998375e-05){
   if(i14<0.00021601709886454046){
    if(i52<4.881620407104492e-05){
     s1+=1287.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i61<0.12074980139732361){
     s0+=134.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.0011873844778165221){
    if(i8<0.0025969226844608784){
     s0+=335.0;
    } else {
     s0+=19.0;
     s1+=693.0;
    }
   } else {
    if(i65<0.0012494325637817383){
     s0+=2841.0;
     s1+=31.0;
    } else {
     s0+=3.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i10<0.9787037372589111){
   if(i4<6.383657455444336e-05){
    if(i35<1.1216212511062622){
     s0+=446.0;
     s1+=70.0;
    } else {
     s0+=45.0;
     s1+=122.0;
    }
   } else {
    if(i15<0.004965236410498619){
     s0+=14.0;
    } else {
     s0+=12.0;
     s1+=152.0;
    }
   }
  } else {
   if(i23<0.083245187997818){
    if(i38<1.0789777040481567){
     s0+=110.0;
     s1+=2.0;
    } else {
     s0+=157.0;
     s1+=411.0;
    }
   } else {
    if(i13<-0.0013828277587890625){
     s0+=111.0;
     s1+=710.0;
    } else {
     s0+=32.0;
     s1+=12839.0;
    }
   }
  }
 }
}
if(i8<0.0075304340571165085){
 if(i2<1.007964849472046){
  if(i8<0.0036453751381486654){
   if(i27<1.1162974834442139){
    if(i15<0.001144728041253984){
     s0+=24052.0;
     s1+=160.0;
    } else {
     s0+=3625.0;
     s1+=739.0;
    }
   } else {
    if(i43<0.0019938787445425987){
     s0+=57621.0;
     s1+=54.0;
    } else {
     s0+=5588.0;
     s1+=184.0;
    }
   }
  } else {
   if(i25<0.0011425705160945654){
    if(i7<0.9992965459823608){
     s0+=2318.0;
     s1+=22.0;
    } else {
     s0+=339.0;
     s1+=3091.0;
    }
   } else {
    if(i4<4.470348358154297e-06){
     s0+=14938.0;
     s1+=132.0;
    } else {
     s0+=1952.0;
     s1+=838.0;
    }
   }
  }
 } else {
  if(i42<-1.3006686458538752e-05){
   if(i14<0.0011129133636131883){
    if(i55<1.0041906833648682){
     s0+=4.0;
     s1+=1791.0;
    } else {
     s0+=11.0;
    }
   } else {
    s0+=67.0;
   }
  } else {
   if(i28<0.0007782578468322754){
    s1+=303.0;
   } else {
    s0+=537.0;
   }
  }
 }
} else {
 if(i18<0.07695671916007996){
  if(i26<5.8203935623168945e-05){
   if(i2<0.9999487400054932){
    if(i68<0.016871273517608643){
     s0+=3675.0;
     s1+=46.0;
    } else {
     s0+=410.0;
     s1+=124.0;
    }
   } else {
    if(i18<0.03485742211341858){
     s0+=226.0;
     s1+=134.0;
    } else {
     s0+=53.0;
     s1+=245.0;
    }
   }
  } else {
   if(i63<2.735865109571023e-06){
    s1+=187.0;
   } else {
    if(i71<-0.008352488279342651){
     s1+=2.0;
    } else {
     s0+=26.0;
    }
   }
  }
 } else {
  if(i20<0.9911609292030334){
   if(i43<0.015393264591693878){
    if(i35<1.1138200759887695){
     s0+=725.0;
     s1+=167.0;
    } else {
     s0+=5.0;
     s1+=155.0;
    }
   } else {
    if(i21<0.051718153059482574){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=450.0;
    }
   }
  } else {
   if(i31<0.004030384123325348){
    if(i57<-1.5915159110591048e-06){
     s0+=98.0;
     s1+=15636.0;
    } else {
     s0+=42.0;
    }
   } else {
    s0+=63.0;
   }
  }
 }
}
if(i13<0.0013867020606994629){
 if(i2<1.0032644271850586){
  if(i15<0.0017287731170654297){
   if(i51<-1.89485726878047e-05){
    if(i43<0.0014745930675417185){
     s0+=17.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i60<0.00018331783940084279){
     s0+=74733.0;
     s1+=359.0;
    } else {
     s0+=13584.0;
     s1+=609.0;
    }
   }
  } else {
   if(i35<1.1278574466705322){
    if(i34<1.0906792879104614){
     s0+=2149.0;
     s1+=2110.0;
    } else {
     s0+=19465.0;
     s1+=1385.0;
    }
   } else {
    if(i32<1.1804778575897217){
     s0+=343.0;
     s1+=83.0;
    } else {
     s0+=209.0;
     s1+=1487.0;
    }
   }
  }
 } else {
  if(i29<0.0019358457066118717){
   if(i8<0.00409046933054924){
    if(i25<0.0006951767718419433){
     s0+=911.0;
     s1+=135.0;
    } else {
     s0+=3445.0;
    }
   } else {
    if(i25<0.001200647559016943){
     s1+=812.0;
    } else {
     s0+=154.0;
    }
   }
  } else {
   if(i13<-0.0011426210403442383){
    if(i38<1.1277275085449219){
     s0+=132.0;
     s1+=102.0;
    } else {
     s0+=78.0;
     s1+=852.0;
    }
   } else {
    if(i57<-4.527965302258963e-06){
     s0+=66.0;
     s1+=3256.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
} else {
 if(i26<0.0002970099449157715){
  if(i43<0.0010153346229344606){
   if(i2<1.002981424331665){
    s0+=20.0;
   } else {
    if(i35<1.102092981338501){
     s1+=774.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i8<0.007088206708431244){
    if(i47<-2.9538430680986494e-05){
     s0+=19.0;
     s1+=61.0;
    } else {
     s0+=847.0;
     s1+=57.0;
    }
   } else {
    if(i31<0.003804801031947136){
     s1+=802.0;
    } else {
     s0+=48.0;
    }
   }
  }
 } else {
  if(i44<0.9980787038803101){
   s0+=41.0;
  } else {
   if(i32<1.1133074760437012){
    if(i36<1.1209434270858765){
     s0+=5.0;
     s1+=869.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i8<0.0024606124497950077){
     s0+=1.0;
     s1+=114.0;
    } else {
     s1+=10656.0;
    }
   }
  }
 }
}
if(i22<1.017686367034912){
 if(i68<0.003734700381755829){
  if(i11<1.0075112581253052){
   if(i31<0.0007334253168664873){
    if(i3<-8.515384251950309e-05){
     s0+=37.0;
     s1+=45.0;
    } else {
     s0+=79040.0;
     s1+=460.0;
    }
   } else {
    if(i27<1.1164028644561768){
     s0+=3744.0;
     s1+=3310.0;
    } else {
     s0+=26947.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i60<9.822983702179044e-05){
    if(i24<0.001095016486942768){
     s1+=271.0;
    } else {
     s0+=604.0;
     s1+=11.0;
    }
   } else {
    if(i23<0.033462196588516235){
     s0+=58.0;
     s1+=6.0;
    } else {
     s0+=216.0;
     s1+=1451.0;
    }
   }
  }
 } else {
  if(i11<1.003704309463501){
   if(i23<0.09031778573989868){
    if(i16<0.021924585103988647){
     s0+=2507.0;
     s1+=98.0;
    } else {
     s0+=1087.0;
     s1+=312.0;
    }
   } else {
    if(i15<0.003190983086824417){
     s0+=264.0;
     s1+=60.0;
    } else {
     s0+=50.0;
     s1+=601.0;
    }
   }
  } else {
   if(i9<0.9346727728843689){
    if(i2<1.0062167644500732){
     s0+=322.0;
     s1+=120.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i1<0.00022149085998535156){
     s0+=90.0;
     s1+=137.0;
    } else {
     s0+=75.0;
     s1+=2084.0;
    }
   }
  }
 }
} else {
 if(i57<-3.1890956506686052e-06){
  if(i8<0.0031871157698333263){
   if(i0<0.00013643503189086914){
    if(i28<0.0004609823226928711){
     s0+=19.0;
     s1+=66.0;
    } else {
     s0+=647.0;
    }
   } else {
    if(i50<-5.235204753262224e-06){
     s0+=20.0;
    } else {
     s1+=227.0;
    }
   }
  } else {
   if(i26<-0.00023251771926879883){
    if(i23<0.16651934385299683){
     s0+=109.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=275.0;
    }
   } else {
    if(i10<1.0121452808380127){
     s0+=96.0;
     s1+=1963.0;
    } else {
     s0+=7.0;
     s1+=11703.0;
    }
   }
  }
 } else {
  if(i47<7.486112008336931e-05){
   if(i48<1.0010267496109009){
    s0+=421.0;
   } else {
    if(i62<-0.001454473938792944){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   s1+=3.0;
  }
 }
}
if(i0<6.407499313354492e-05){
 if(i5<0.00033217668533325195){
  if(i18<0.24877935647964478){
   if(i28<7.110834121704102e-05){
    if(i31<0.0006154321017675102){
     s0+=56798.0;
     s1+=143.0;
    } else {
     s0+=19200.0;
     s1+=693.0;
    }
   } else {
    if(i25<0.0010524375829845667){
     s0+=3538.0;
     s1+=1585.0;
    } else {
     s0+=25393.0;
     s1+=684.0;
    }
   }
  } else {
   if(i25<0.00408004317432642){
    if(i15<0.002416117349639535){
     s0+=68.0;
     s1+=1.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i39<0.02054927498102188){
     s0+=2.0;
    } else {
     s1+=252.0;
    }
   }
  }
 } else {
  if(i62<-0.0007830968825146556){
   if(i16<0.15442919731140137){
    if(i3<-3.675434345495887e-05){
     s0+=590.0;
     s1+=1207.0;
    } else {
     s0+=751.0;
     s1+=171.0;
    }
   } else {
    if(i14<0.0001168712115031667){
     s0+=44.0;
     s1+=20.0;
    } else {
     s0+=113.0;
     s1+=1604.0;
    }
   }
  } else {
   if(i64<0.04652504622936249){
    if(i25<0.0009650513529777527){
     s0+=2478.0;
     s1+=737.0;
    } else {
     s0+=4015.0;
     s1+=97.0;
    }
   } else {
    if(i23<0.05050501227378845){
     s0+=819.0;
     s1+=104.0;
    } else {
     s0+=692.0;
     s1+=606.0;
    }
   }
  }
 }
} else {
 if(i15<0.0018717220518738031){
  if(i14<0.000259967491729185){
   if(i4<0.0002428889274597168){
    s1+=1220.0;
   } else {
    s0+=36.0;
   }
  } else {
   if(i29<0.0035260734148323536){
    s0+=1150.0;
   } else {
    s1+=72.0;
   }
  }
 } else {
  if(i50<-6.594443675567163e-06){
   s0+=419.0;
  } else {
   if(i33<0.0017390944994986057){
    if(i43<0.001057949149981141){
     s0+=20.0;
     s1+=1660.0;
    } else {
     s0+=340.0;
     s1+=9.0;
    }
   } else {
    if(i30<0.9084622859954834){
     s0+=41.0;
     s1+=237.0;
    } else {
     s0+=81.0;
     s1+=13149.0;
    }
   }
  }
 }
}
if(i4<2.2351741790771484e-05){
 if(i23<0.23054441809654236){
  if(i8<0.0036593670956790447){
   if(i33<0.0006769122555851936){
    if(i49<0.011718885973095894){
     s0+=19591.0;
     s1+=178.0;
    } else {
     s0+=6922.0;
     s1+=574.0;
    }
   } else {
    if(i37<-0.0003724806592799723){
     s0+=5505.0;
     s1+=104.0;
    } else {
     s0+=55365.0;
     s1+=107.0;
    }
   }
  } else {
   if(i12<1.0083410739898682){
    if(i25<0.0011982028372585773){
     s0+=2655.0;
     s1+=1617.0;
    } else {
     s0+=18899.0;
     s1+=775.0;
    }
   } else {
    if(i53<1.000245451927185){
     s0+=1023.0;
     s1+=48.0;
    } else {
     s0+=164.0;
     s1+=1066.0;
    }
   }
  }
 } else {
  if(i51<-7.775379344820976e-06){
   if(i3<-3.7063986383145675e-05){
    if(i21<0.03416011855006218){
     s0+=1.0;
     s1+=27.0;
    } else {
     s1+=562.0;
    }
   } else {
    if(i63<4.493518645176664e-06){
     s1+=30.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   s0+=91.0;
  }
 }
} else {
 if(i21<0.007689252495765686){
  if(i8<0.0029559971299022436){
   if(i14<0.00018801254918798804){
    if(i2<1.0074927806854248){
     s0+=95.0;
     s1+=3.0;
    } else {
     s1+=294.0;
    }
   } else {
    if(i56<-0.0011721575865522027){
     s1+=3.0;
    } else {
     s0+=3794.0;
     s1+=2.0;
    }
   }
  } else {
   if(i13<0.0010031461715698242){
    if(i19<1.0150275230407715){
     s0+=376.0;
     s1+=83.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i28<0.0011225342750549316){
     s0+=142.0;
     s1+=1535.0;
    } else {
     s0+=236.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i13<-0.0014889240264892578){
   if(i35<1.1077709197998047){
    if(i60<0.001065452815964818){
     s0+=524.0;
     s1+=22.0;
    } else {
     s0+=587.0;
     s1+=381.0;
    }
   } else {
    if(i21<0.041465140879154205){
     s0+=166.0;
     s1+=188.0;
    } else {
     s0+=69.0;
     s1+=977.0;
    }
   }
  } else {
   if(i8<0.004588684067130089){
    if(i47<-2.1341216779546812e-05){
     s0+=42.0;
     s1+=367.0;
    } else {
     s0+=570.0;
     s1+=59.0;
    }
   } else {
    if(i2<1.0003443956375122){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=98.0;
     s1+=14856.0;
    }
   }
  }
 }
}
if(i9<1.0154454708099365){
 if(i4<1.9490718841552734e-05){
  if(i15<0.0016960238572210073){
   if(i27<1.0817922353744507){
    if(i55<1.0003888607025146){
     s0+=11366.0;
     s1+=96.0;
    } else {
     s0+=4846.0;
     s1+=444.0;
    }
   } else {
    if(i25<0.0019175560446456075){
     s0+=59523.0;
     s1+=149.0;
    } else {
     s0+=12036.0;
     s1+=191.0;
    }
   }
  } else {
   if(i24<0.0009176888270303607){
    if(i31<0.0012966133654117584){
     s0+=755.0;
     s1+=2194.0;
    } else {
     s0+=934.0;
    }
   } else {
    if(i45<0.19831499457359314){
     s0+=18752.0;
     s1+=782.0;
    } else {
     s0+=41.0;
     s1+=330.0;
    }
   }
  }
 } else {
  if(i32<1.1714401245117188){
   if(i15<0.0017759096808731556){
    if(i14<0.00017721587209962308){
     s0+=207.0;
     s1+=351.0;
    } else {
     s0+=3243.0;
     s1+=15.0;
    }
   } else {
    if(i24<0.0010386663489043713){
     s0+=764.0;
     s1+=1352.0;
    } else {
     s0+=1685.0;
     s1+=519.0;
    }
   }
  } else {
   if(i23<0.08321040868759155){
    if(i47<6.000489884172566e-05){
     s1+=121.0;
    } else {
     s0+=1043.0;
     s1+=373.0;
    }
   } else {
    if(i3<-5.8740348322317004e-05){
     s0+=70.0;
     s1+=3022.0;
    } else {
     s0+=229.0;
     s1+=385.0;
    }
   }
  }
 }
} else {
 if(i0<1.6182661056518555e-05){
  if(i15<0.0030900747515261173){
   if(i42<1.0759749784483574e-05){
    s0+=240.0;
   } else {
    if(i26<-3.8504600524902344e-05){
     s0+=112.0;
    } else {
     s0+=22.0;
     s1+=40.0;
    }
   }
  } else {
   if(i52<9.47713851928711e-06){
    if(i72<0.00016904216317925602){
     s0+=1.0;
     s1+=126.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i58<0.053732387721538544){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i14<0.0007054299348965287){
   if(i4<0.0002504587173461914){
    if(i34<1.7041046619415283){
     s0+=79.0;
     s1+=13914.0;
    } else {
     s0+=32.0;
    }
   } else {
    s0+=18.0;
   }
  } else {
   s0+=356.0;
  }
 }
}
if(i3<-0.00011003472172887996){
 if(i16<0.018715858459472656){
  if(i35<1.1310021877288818){
   if(i2<1.006686806678772){
    if(i15<0.008285574615001678){
     s0+=341.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i41<1.081153392791748){
    if(i25<0.014857460744678974){
     s0+=35.0;
     s1+=9.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i52<3.0219554901123047e-05){
   if(i13<-0.004858940839767456){
    if(i59<0.9598842859268188){
     s0+=55.0;
     s1+=15.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i14<0.0007076200563460588){
     s0+=41.0;
     s1+=14499.0;
    } else {
     s0+=100.0;
    }
   }
  } else {
   if(i47<-0.00013539576320908964){
    s1+=6.0;
   } else {
    s0+=88.0;
   }
  }
 }
} else {
 if(i9<1.0111169815063477){
  if(i15<0.0017322666244581342){
   if(i13<0.0014455318450927734){
    if(i2<1.0078446865081787){
     s0+=90848.0;
     s1+=956.0;
    } else {
     s0+=28.0;
     s1+=51.0;
    }
   } else {
    if(i63<-5.4165502660907805e-06){
     s1+=127.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i25<0.0012084015179425478){
    if(i34<1.0498223304748535){
     s0+=2211.0;
     s1+=13.0;
    } else {
     s0+=286.0;
     s1+=2877.0;
    }
   } else {
    if(i16<0.176423579454422){
     s0+=19469.0;
     s1+=1485.0;
    } else {
     s0+=297.0;
     s1+=737.0;
    }
   }
  }
 } else {
  if(i38<1.0869145393371582){
   if(i50<-3.155882041028235e-06){
    if(i34<1.0968488454818726){
     s1+=12.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i24<0.0010562457609921694){
     s1+=1903.0;
    } else {
     s0+=50.0;
    }
   }
  } else {
   if(i22<1.023162603378296){
    if(i29<0.002056367928162217){
     s0+=1756.0;
     s1+=104.0;
    } else {
     s0+=296.0;
     s1+=291.0;
    }
   } else {
    if(i3<-6.19524871581234e-05){
     s0+=50.0;
     s1+=880.0;
    } else {
     s0+=431.0;
     s1+=301.0;
    }
   }
  }
 }
}
if(i12<1.0170334577560425){
 if(i23<0.20009249448776245){
  if(i53<1.0065776109695435){
   if(i8<0.0036500615533441305){
    if(i11<1.0084574222564697){
     s0+=89309.0;
     s1+=1083.0;
    } else {
     s0+=168.0;
     s1+=111.0;
    }
   } else {
    if(i20<1.0029380321502686){
     s0+=21928.0;
     s1+=2765.0;
    } else {
     s0+=954.0;
     s1+=2145.0;
    }
   }
  } else {
   if(i11<1.0107672214508057){
    if(i26<-0.0006237626075744629){
     s0+=969.0;
     s1+=126.0;
    } else {
     s0+=996.0;
     s1+=914.0;
    }
   } else {
    if(i1<0.0018349289894104004){
     s0+=63.0;
     s1+=247.0;
    } else {
     s0+=3.0;
     s1+=910.0;
    }
   }
  }
 } else {
  if(i3<-4.564090340863913e-05){
   if(i52<-0.0003197789192199707){
    s0+=3.0;
   } else {
    if(i29<0.0019770797807723284){
     s0+=9.0;
    } else {
     s0+=13.0;
     s1+=1858.0;
    }
   }
  } else {
   if(i61<0.181606724858284){
    if(i11<1.0120474100112915){
     s0+=348.0;
     s1+=18.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i48<1.0009790658950806){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=100.0;
    }
   }
  }
 }
} else {
 if(i2<1.001840353012085){
  if(i31<0.002135257702320814){
   if(i27<1.1178560256958008){
    if(i15<0.0017483425326645374){
     s0+=14.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i21<0.02877802774310112){
     s0+=579.0;
     s1+=31.0;
    } else {
     s0+=141.0;
     s1+=66.0;
    }
   }
  } else {
   if(i18<0.19450613856315613){
    if(i29<0.014032278209924698){
     s0+=33.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=183.0;
   }
  }
 } else {
  if(i32<1.1703872680664062){
   if(i52<1.2576580047607422e-05){
    if(i48<1.000447392463684){
     s0+=57.0;
    } else {
     s0+=134.0;
     s1+=2075.0;
    }
   } else {
    if(i21<0.026193615049123764){
     s0+=528.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=76.0;
    }
   }
  } else {
   if(i51<-9.496979146206286e-06){
    if(i38<1.0869262218475342){
     s0+=15.0;
    } else {
     s0+=21.0;
     s1+=11670.0;
    }
   } else {
    s0+=28.0;
   }
  }
 }
}
if(i5<0.0005698800086975098){
 if(i6<1.0144659280776978){
  if(i18<0.2347739040851593){
   if(i21<0.006572440732270479){
    if(i62<-0.0015336121432483196){
     s0+=146.0;
     s1+=40.0;
    } else {
     s0+=67228.0;
     s1+=472.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s0+=7546.0;
     s1+=2210.0;
    } else {
     s0+=34198.0;
     s1+=1346.0;
    }
   }
  } else {
   if(i31<0.0010188445448875427){
    if(i4<1.0132789611816406e-05){
     s0+=85.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i46<0.002485798904672265){
     s0+=12.0;
    } else {
     s0+=7.0;
     s1+=341.0;
    }
   }
  }
 } else {
  if(i55<1.0045173168182373){
   if(i51<-1.0876152373384684e-05){
    if(i6<1.0178364515304565){
     s0+=23.0;
     s1+=125.0;
    } else {
     s1+=489.0;
    }
   } else {
    if(i51<-9.537934602121823e-06){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=207.0;
    }
   }
  } else {
   s0+=109.0;
  }
 }
} else {
 if(i8<0.003435017541050911){
  if(i11<1.0110154151916504){
   if(i5<0.0011194348335266113){
    if(i47<4.3184933019801974e-05){
     s0+=3287.0;
     s1+=27.0;
    } else {
     s0+=170.0;
     s1+=38.0;
    }
   } else {
    if(i28<0.0005664527416229248){
     s1+=198.0;
    } else {
     s0+=1167.0;
    }
   }
  } else {
   if(i14<0.00044476520270109177){
    if(i6<1.004486322402954){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=452.0;
    }
   } else {
    s0+=39.0;
   }
  }
 } else {
  if(i2<1.0013072490692139){
   if(i64<0.4115881323814392){
    if(i18<0.08231627941131592){
     s0+=829.0;
     s1+=112.0;
    } else {
     s0+=207.0;
     s1+=186.0;
    }
   } else {
    if(i63<-1.777924808266107e-06){
     s0+=3.0;
    } else {
     s1+=143.0;
    }
   }
  } else {
   if(i23<0.16347450017929077){
    if(i14<0.0007033228175714612){
     s0+=627.0;
     s1+=5113.0;
    } else {
     s0+=440.0;
    }
   } else {
    if(i36<1.162848949432373){
     s0+=37.0;
     s1+=27.0;
    } else {
     s0+=37.0;
     s1+=13109.0;
    }
   }
  }
 }
}
if(i5<0.0005705952644348145){
 if(i3<-8.67394992383197e-05){
  if(i18<0.07724142074584961){
   if(i41<1.0816664695739746){
    if(i59<0.8573291897773743){
     s0+=9.0;
     s1+=15.0;
    } else {
     s0+=554.0;
     s1+=13.0;
    }
   } else {
    if(i36<1.231724739074707){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=32.0;
    }
   }
  } else {
   if(i21<0.013648565858602524){
    if(i68<-0.0017670239321887493){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i55<1.010314702987671){
     s0+=2.0;
     s1+=787.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i21<0.006473441142588854){
   if(i19<0.994630753993988){
    if(i46<0.0002801960799843073){
     s0+=623.0;
     s1+=238.0;
    } else {
     s0+=3584.0;
     s1+=50.0;
    }
   } else {
    if(i10<0.993108868598938){
     s1+=21.0;
    } else {
     s0+=62650.0;
     s1+=226.0;
    }
   }
  } else {
   if(i4<3.874301910400391e-06){
    if(i20<0.9958568811416626){
     s0+=32149.0;
     s1+=352.0;
    } else {
     s0+=6161.0;
     s1+=1025.0;
    }
   } else {
    if(i0<-2.4139881134033203e-05){
     s0+=2081.0;
     s1+=142.0;
    } else {
     s0+=1741.0;
     s1+=2246.0;
    }
   }
  }
 }
} else {
 if(i21<0.007714035455137491){
  if(i14<0.00026546191656962037){
   if(i17<1.0020910501480103){
    if(i30<0.985737681388855){
     s0+=96.0;
     s1+=9.0;
    } else {
     s0+=79.0;
     s1+=124.0;
    }
   } else {
    if(i6<1.0075554847717285){
     s0+=55.0;
     s1+=140.0;
    } else {
     s0+=12.0;
     s1+=1799.0;
    }
   }
  } else {
   if(i1<0.0034500956535339355){
    if(i68<0.00527441781014204){
     s0+=4557.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   } else {
    s1+=29.0;
   }
  }
 } else {
  if(i18<0.10337340831756592){
   if(i34<1.1180615425109863){
    if(i27<1.1229777336120605){
     s0+=4.0;
     s1+=713.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i68<0.0018062966410070658){
     s0+=769.0;
     s1+=70.0;
    } else {
     s0+=571.0;
     s1+=950.0;
    }
   }
  } else {
   if(i3<-6.004201713949442e-05){
    if(i50<-6.456466508097947e-06){
     s0+=50.0;
    } else {
     s0+=92.0;
     s1+=14565.0;
    }
   } else {
    if(i15<0.0023098131641745567){
     s0+=180.0;
     s1+=11.0;
    } else {
     s0+=228.0;
     s1+=893.0;
    }
   }
  }
 }
}
if(i26<0.00021034479141235352){
 if(i16<0.19031435251235962){
  if(i53<1.0082449913024902){
   if(i8<0.00399442482739687){
    if(i32<1.077322244644165){
     s0+=28166.0;
     s1+=1146.0;
    } else {
     s0+=65344.0;
     s1+=277.0;
    }
   } else {
    if(i1<-0.0003154277801513672){
     s0+=19256.0;
     s1+=723.0;
    } else {
     s0+=1379.0;
     s1+=4170.0;
    }
   }
  } else {
   if(i18<0.10485213994979858){
    if(i35<1.088844656944275){
     s0+=684.0;
     s1+=143.0;
    } else {
     s0+=139.0;
     s1+=259.0;
    }
   } else {
    if(i50<-5.1689853535208385e-06){
     s0+=54.0;
     s1+=4.0;
    } else {
     s0+=133.0;
     s1+=776.0;
    }
   }
  }
 } else {
  if(i33<0.0023651383817195892){
   if(i24<0.002019651234149933){
    s0+=339.0;
   } else {
    if(i9<1.0074896812438965){
     s0+=44.0;
     s1+=3.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i48<1.0009162425994873){
    if(i3<-5.7196361012756824e-05){
     s0+=5.0;
     s1+=192.0;
    } else {
     s0+=158.0;
     s1+=7.0;
    }
   } else {
    if(i1<-0.0004284977912902832){
     s0+=83.0;
     s1+=195.0;
    } else {
     s0+=14.0;
     s1+=3127.0;
    }
   }
  }
 }
} else {
 if(i13<0.001986265182495117){
  if(i31<0.0025762321893125772){
   if(i28<0.0007674694061279297){
    if(i48<1.0008728504180908){
     s0+=170.0;
     s1+=15.0;
    } else {
     s0+=93.0;
     s1+=1474.0;
    }
   } else {
    if(i33<0.002260821871459484){
     s0+=298.0;
    } else {
     s1+=171.0;
    }
   }
  } else {
   if(i8<0.015722453594207764){
    s0+=376.0;
   } else {
    s1+=65.0;
   }
  }
 } else {
  if(i31<0.004001002758741379){
   if(i26<0.0002783536911010742){
    s0+=2.0;
   } else {
    if(i48<0.9997466802597046){
     s0+=2.0;
     s1+=191.0;
    } else {
     s1+=11148.0;
    }
   }
  } else {
   s0+=28.0;
  }
 }
}
if(i11<1.004767894744873){
 if(i22<1.0163912773132324){
  if(i58<0.12816372513771057){
   if(i24<0.0008961533894762397){
    if(i19<1.0068023204803467){
     s0+=31594.0;
     s1+=2652.0;
    } else {
     s0+=351.0;
     s1+=785.0;
    }
   } else {
    if(i3<-9.165731171378866e-05){
     s0+=513.0;
     s1+=484.0;
    } else {
     s0+=78208.0;
     s1+=1026.0;
    }
   }
  } else {
   if(i42<5.426449570222758e-05){
    if(i35<1.0584986209869385){
     s0+=73.0;
    } else {
     s0+=20.0;
     s1+=512.0;
    }
   } else {
    if(i23<0.1803703010082245){
     s0+=613.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i53<1.0002307891845703){
   if(i21<0.04293416440486908){
    if(i38<1.0605363845825195){
     s1+=21.0;
    } else {
     s0+=476.0;
     s1+=16.0;
    }
   } else {
    if(i54<0.0011531822383403778){
     s0+=6.0;
    } else {
     s1+=157.0;
    }
   }
  } else {
   if(i26<-0.00015586614608764648){
    if(i32<1.182697057723999){
     s0+=217.0;
     s1+=30.0;
    } else {
     s0+=36.0;
     s1+=228.0;
    }
   } else {
    if(i0<-2.47955322265625e-05){
     s0+=63.0;
     s1+=12.0;
    } else {
     s0+=182.0;
     s1+=2039.0;
    }
   }
  }
 }
} else {
 if(i25<0.002681731479242444){
  if(i28<0.0005190372467041016){
   if(i34<1.116804838180542){
    if(i36<1.116804838180542){
     s1+=2107.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i43<0.0018272791057825089){
     s0+=255.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=60.0;
    }
   }
  } else {
   if(i25<0.0022369148209691048){
    s0+=2973.0;
   } else {
    if(i21<0.012530012056231499){
     s0+=7.0;
    } else {
     s1+=45.0;
    }
   }
  }
 } else {
  if(i18<0.0578441321849823){
   if(i63<-5.760629392170813e-06){
    if(i70<0.007046819664537907){
     s0+=23.0;
    } else {
     s0+=17.0;
     s1+=131.0;
    }
   } else {
    if(i13<-0.0024669766426086426){
     s0+=459.0;
     s1+=65.0;
    } else {
     s0+=63.0;
     s1+=80.0;
    }
   }
  } else {
   if(i1<0.00015044212341308594){
    if(i8<0.010000813752412796){
     s0+=80.0;
     s1+=8.0;
    } else {
     s0+=34.0;
     s1+=167.0;
    }
   } else {
    if(i1<0.0009277462959289551){
     s0+=109.0;
     s1+=817.0;
    } else {
     s0+=55.0;
     s1+=12879.0;
    }
   }
  }
 }
}
if(i22<1.0176913738250732){
 if(i0<6.574392318725586e-05){
  if(i18<0.21971821784973145){
   if(i7<1.0023245811462402){
    if(i28<7.50422477722168e-05){
     s0+=76374.0;
     s1+=853.0;
    } else {
     s0+=31765.0;
     s1+=3042.0;
    }
   } else {
    if(i60<0.000310468312818557){
     s0+=3688.0;
     s1+=480.0;
    } else {
     s0+=1482.0;
     s1+=1360.0;
    }
   }
  } else {
   if(i25<0.0026132797356694937){
    if(i21<0.038751646876335144){
     s0+=93.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i21<0.03077627345919609){
     s0+=50.0;
     s1+=33.0;
    } else {
     s0+=13.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i24<0.002396252704784274){
   if(i14<0.00022851675748825073){
    if(i52<5.143880844116211e-05){
     s1+=1208.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i67<0.0017895698547363281){
     s0+=1484.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   }
  } else {
   if(i16<0.030427783727645874){
    if(i44<1.000321865081787){
     s0+=56.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=90.0;
    }
   } else {
    if(i60<0.005040495190769434){
     s0+=45.0;
     s1+=2694.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i15<0.00138442637398839){
  if(i13<0.001719057559967041){
   if(i35<1.0651131868362427){
    if(i43<0.0008883595000952482){
     s1+=30.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i47<3.361418202985078e-05){
     s0+=653.0;
    } else {
     s0+=50.0;
     s1+=28.0;
    }
   }
  } else {
   if(i2<1.008918285369873){
    s0+=7.0;
   } else {
    s1+=389.0;
   }
  }
 } else {
  if(i14<0.0008830104488879442){
   if(i13<-0.0010475516319274902){
    if(i39<0.0920589417219162){
     s0+=243.0;
     s1+=102.0;
    } else {
     s0+=22.0;
     s1+=352.0;
    }
   } else {
    if(i0<-2.485513687133789e-05){
     s0+=91.0;
     s1+=6.0;
    } else {
     s0+=71.0;
     s1+=13156.0;
    }
   }
  } else {
   s0+=205.0;
  }
 }
}
if(i1<0.0009605884552001953){
 if(i69<1.035233497619629){
  if(i21<0.06470945477485657){
   if(i5<0.00028055906295776367){
    if(i19<0.9958062171936035){
     s0+=28117.0;
     s1+=1559.0;
    } else {
     s0+=74193.0;
     s1+=1149.0;
    }
   } else {
    if(i24<0.0009409811464138329){
     s0+=2568.0;
     s1+=1579.0;
    } else {
     s0+=8422.0;
     s1+=1388.0;
    }
   }
  } else {
   if(i2<0.9834105968475342){
    s0+=247.0;
   } else {
    if(i65<-0.010266691446304321){
     s0+=42.0;
     s1+=32.0;
    } else {
     s0+=28.0;
     s1+=739.0;
    }
   }
  }
 } else {
  if(i21<0.028848320245742798){
   if(i3<-5.159662396181375e-05){
    if(i38<1.1348806619644165){
     s0+=102.0;
     s1+=51.0;
    } else {
     s0+=11.0;
     s1+=156.0;
    }
   } else {
    if(i28<9.042024612426758e-05){
     s0+=380.0;
     s1+=1.0;
    } else {
     s0+=200.0;
     s1+=85.0;
    }
   }
  } else {
   if(i8<0.0052505675703287125){
    if(i13<1.671910285949707e-05){
     s0+=125.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i18<0.12362295389175415){
     s0+=27.0;
     s1+=16.0;
    } else {
     s0+=10.0;
     s1+=1201.0;
    }
   }
  }
 }
} else {
 if(i36<1.176405668258667){
  if(i36<1.116804838180542){
   if(i28<0.0006200969219207764){
    s1+=2310.0;
   } else {
    s0+=166.0;
   }
  } else {
   s0+=1858.0;
  }
 } else {
  if(i65<-0.007195800542831421){
   if(i11<1.01478910446167){
    if(i39<0.12734024226665497){
     s0+=38.0;
    } else {
     s0+=8.0;
     s1+=24.0;
    }
   } else {
    if(i67<-0.012381583452224731){
     s0+=1.0;
     s1+=131.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<1.0064241886138916){
    if(i36<1.4731788635253906){
     s0+=5.0;
     s1+=1595.0;
    } else {
     s0+=51.0;
     s1+=295.0;
    }
   } else {
    if(i10<0.9924315810203552){
     s0+=3.0;
     s1+=74.0;
    } else {
     s1+=11865.0;
    }
   }
  }
 }
}
if(i16<0.18659314513206482){
 if(i4<1.8537044525146484e-05){
  if(i8<0.0036455311346799135){
   if(i43<0.000500502297654748){
    if(i12<0.9944069385528564){
     s0+=1650.0;
     s1+=456.0;
    } else {
     s0+=25578.0;
     s1+=314.0;
    }
   } else {
    if(i36<1.1759499311447144){
     s0+=47552.0;
     s1+=24.0;
    } else {
     s0+=10463.0;
     s1+=142.0;
    }
   }
  } else {
   if(i1<-0.00039249658584594727){
    if(i28<3.7610530853271484e-05){
     s0+=14278.0;
     s1+=68.0;
    } else {
     s0+=6593.0;
     s1+=552.0;
    }
   } else {
    if(i7<0.9998743534088135){
     s0+=928.0;
     s1+=30.0;
    } else {
     s0+=473.0;
     s1+=2179.0;
    }
   }
  }
 } else {
  if(i14<0.0003157739411108196){
   if(i2<1.003973364830017){
    if(i25<0.00102797441650182){
     s1+=592.0;
    } else {
     s0+=1510.0;
     s1+=603.0;
    }
   } else {
    if(i6<1.0085475444793701){
     s0+=241.0;
     s1+=1255.0;
    } else {
     s0+=83.0;
     s1+=3966.0;
    }
   }
  } else {
   if(i68<0.003685947973281145){
    if(i39<0.03412619233131409){
     s0+=5220.0;
     s1+=17.0;
    } else {
     s0+=448.0;
     s1+=197.0;
    }
   } else {
    if(i5<0.0011186599731445312){
     s0+=381.0;
     s1+=324.0;
    } else {
     s0+=109.0;
     s1+=661.0;
    }
   }
  }
 }
} else {
 if(i24<0.00256150308996439){
  if(i8<0.005049903877079487){
   if(i47<3.132159326924011e-05){
    if(i56<0.001017752569168806){
     s0+=433.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.0066183805465698){
     s0+=97.0;
     s1+=4.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i4<-1.1086463928222656e-05){
    s0+=39.0;
   } else {
    if(i58<0.010242503136396408){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=34.0;
    }
   }
  }
 } else {
  if(i0<-4.553794860839844e-05){
   if(i8<0.008874766528606415){
    if(i47<0.00015912519302219152){
     s0+=114.0;
    } else {
     s0+=60.0;
     s1+=10.0;
    }
   } else {
    if(i15<0.008763741701841354){
     s0+=1.0;
     s1+=198.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i3<-4.315700789447874e-05){
    if(i26<-0.00039768218994140625){
     s0+=10.0;
     s1+=236.0;
    } else {
     s1+=12432.0;
    }
   } else {
    if(i23<0.22917795181274414){
     s0+=37.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=172.0;
    }
   }
  }
 }
}
if(i4<2.7358531951904297e-05){
 if(i5<0.00032275915145874023){
  if(i62<-0.007789988070726395){
   s1+=126.0;
  } else {
   if(i33<0.0010432680137455463){
    if(i36<1.0577976703643799){
     s0+=16929.0;
     s1+=6.0;
    } else {
     s0+=12934.0;
     s1+=2099.0;
    }
   } else {
    if(i35<1.122455358505249){
     s0+=72370.0;
     s1+=622.0;
    } else {
     s0+=2236.0;
     s1+=523.0;
    }
   }
  }
 } else {
  if(i39<0.017007963731884956){
   if(i26<0.00016003847122192383){
    if(i29<0.0007787655340507627){
     s0+=1816.0;
     s1+=454.0;
    } else {
     s0+=3350.0;
     s1+=38.0;
    }
   } else {
    if(i45<0.07511267066001892){
     s0+=38.0;
     s1+=181.0;
    } else {
     s0+=106.0;
     s1+=49.0;
    }
   }
  } else {
   if(i2<1.0000121593475342){
    if(i35<1.122257947921753){
     s0+=982.0;
     s1+=122.0;
    } else {
     s0+=36.0;
     s1+=202.0;
    }
   } else {
    if(i3<-3.4344677260378376e-05){
     s0+=125.0;
     s1+=1600.0;
    } else {
     s0+=326.0;
     s1+=338.0;
    }
   }
  }
 }
} else {
 if(i23<0.17146170139312744){
  if(i8<0.0028368490748107433){
   if(i32<1.0926527976989746){
    if(i4<4.1961669921875e-05){
     s0+=709.0;
    } else {
     s0+=7.0;
     s1+=302.0;
    }
   } else {
    if(i26<0.0004075765609741211){
     s0+=2331.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=58.0;
    }
   }
  } else {
   if(i1<0.0005328655242919922){
    if(i21<0.04113129898905754){
     s0+=856.0;
     s1+=205.0;
    } else {
     s0+=140.0;
     s1+=283.0;
    }
   } else {
    if(i42<-1.2569604223244824e-05){
     s0+=21.0;
     s1+=1763.0;
    } else {
     s0+=895.0;
     s1+=2802.0;
    }
   }
  }
 } else {
  if(i16<0.18398678302764893){
   if(i33<0.00205517397262156){
    if(i40<1.0478790998458862){
     s0+=102.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i3<-3.783752617891878e-05){
     s0+=12.0;
     s1+=681.0;
    } else {
     s0+=20.0;
     s1+=12.0;
    }
   }
  } else {
   if(i36<1.176405668258667){
    s0+=55.0;
   } else {
    if(i32<1.1287411451339722){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=11936.0;
    }
   }
  }
 }
}
if(i7<1.0026252269744873){
 if(i17<1.0182666778564453){
  if(i23<0.2243664264678955){
   if(i11<0.9975229501724243){
    if(i31<0.0030943506862968206){
     s0+=38806.0;
     s1+=187.0;
    } else {
     s0+=98.0;
     s1+=37.0;
    }
   } else {
    if(i8<0.0036455311346799135){
     s0+=66053.0;
     s1+=928.0;
    } else {
     s0+=5042.0;
     s1+=2928.0;
    }
   }
  } else {
   if(i8<0.007549887057393789){
    if(i2<1.0020785331726074){
     s0+=114.0;
     s1+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=255.0;
   }
  }
 } else {
  if(i4<7.331371307373047e-06){
   if(i21<0.030484410002827644){
    if(i57<-3.1343529371952172e-06){
     s0+=93.0;
     s1+=30.0;
    } else {
     s0+=342.0;
    }
   } else {
    if(i14<0.00016974624304566532){
     s0+=36.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=202.0;
    }
   }
  } else {
   if(i44<0.9984201192855835){
    s0+=49.0;
   } else {
    if(i30<1.0163898468017578){
     s0+=57.0;
     s1+=46.0;
    } else {
     s0+=41.0;
     s1+=881.0;
    }
   }
  }
 }
} else {
 if(i6<1.0164823532104492){
  if(i25<0.0025308961048722267){
   if(i8<0.0025579421781003475){
    if(i47<-2.321727151866071e-05){
     s0+=118.0;
     s1+=134.0;
    } else {
     s0+=2925.0;
     s1+=9.0;
    }
   } else {
    if(i36<1.1174830198287964){
     s0+=51.0;
     s1+=1217.0;
    } else {
     s0+=765.0;
     s1+=143.0;
    }
   }
  } else {
   if(i23<0.08299437165260315){
    if(i63<-5.883964604436187e-06){
     s0+=77.0;
     s1+=243.0;
    } else {
     s0+=1189.0;
     s1+=400.0;
    }
   } else {
    if(i4<1.4662742614746094e-05){
     s0+=73.0;
     s1+=33.0;
    } else {
     s0+=301.0;
     s1+=3613.0;
    }
   }
  }
 } else {
  if(i16<0.15718725323677063){
   if(i0<5.1856040954589844e-05){
    if(i3<-7.15988571755588e-05){
     s0+=9.0;
     s1+=50.0;
    } else {
     s0+=124.0;
     s1+=25.0;
    }
   } else {
    if(i28<0.0012040138244628906){
     s0+=84.0;
     s1+=1796.0;
    } else {
     s0+=120.0;
     s1+=16.0;
    }
   }
  } else {
   if(i8<0.0022093853913247585){
    if(i26<0.00040340423583984375){
     s0+=35.0;
     s1+=3.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i27<1.1595125198364258){
     s0+=3.0;
    } else {
     s0+=11.0;
     s1+=10999.0;
    }
   }
  }
 }
}
if(i0<6.395578384399414e-05){
 if(i35<1.1402404308319092){
  if(i6<1.0135858058929443){
   if(i8<0.003643452189862728){
    if(i67<-0.0006615817546844482){
     s0+=15726.0;
     s1+=594.0;
    } else {
     s0+=72798.0;
     s1+=464.0;
    }
   } else {
    if(i53<0.9996161460876465){
     s0+=16224.0;
     s1+=230.0;
    } else {
     s0+=7739.0;
     s1+=3914.0;
    }
   }
  } else {
   if(i47<4.539366273093037e-06){
    if(i46<0.000526326010003686){
     s0+=6.0;
     s1+=69.0;
    } else {
     s0+=238.0;
     s1+=6.0;
    }
   } else {
    if(i26<-0.00012040138244628906){
     s0+=150.0;
     s1+=39.0;
    } else {
     s0+=129.0;
     s1+=576.0;
    }
   }
  }
 } else {
  if(i8<0.005947653669863939){
   if(i51<-2.3549637262476608e-05){
    if(i29<0.004248653072863817){
     s1+=27.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i38<1.1426570415496826){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=1000.0;
    }
   }
  } else {
   if(i45<0.03229060769081116){
    if(i16<0.0003725588321685791){
     s0+=80.0;
     s1+=14.0;
    } else {
     s0+=35.0;
     s1+=110.0;
    }
   } else {
    if(i3<-3.448664938332513e-05){
     s0+=12.0;
     s1+=1729.0;
    } else {
     s0+=24.0;
     s1+=149.0;
    }
   }
  }
 }
} else {
 if(i8<0.004067017696797848){
  if(i27<1.116804838180542){
   if(i32<1.0464098453521729){
    s0+=77.0;
   } else {
    s1+=694.0;
   }
  } else {
   if(i24<0.0025669392198324203){
    s0+=1677.0;
   } else {
    if(i3<-0.00010164627019548789){
     s1+=276.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i31<0.004026470705866814){
   if(i8<0.005304892547428608){
    if(i50<-4.348196398495929e-06){
     s0+=91.0;
     s1+=9.0;
    } else {
     s0+=66.0;
     s1+=655.0;
    }
   } else {
    if(i35<1.0236399173736572){
     s0+=23.0;
     s1+=12.0;
    } else {
     s0+=91.0;
     s1+=14885.0;
    }
   }
  } else {
   if(i37<0.001254875911399722){
    s0+=132.0;
   } else {
    s1+=7.0;
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i30<1.0218064785003662){
  if(i7<1.0023244619369507){
   if(i15<0.001570198917761445){
    if(i41<1.0179111957550049){
     s0+=10271.0;
     s1+=365.0;
    } else {
     s0+=74815.0;
     s1+=315.0;
    }
   } else {
    if(i11<0.9980398416519165){
     s0+=15655.0;
     s1+=346.0;
    } else {
     s0+=7269.0;
     s1+=3009.0;
    }
   }
  } else {
   if(i21<0.020443253219127655){
    if(i44<1.0010814666748047){
     s0+=1011.0;
     s1+=416.0;
    } else {
     s0+=3397.0;
     s1+=172.0;
    }
   } else {
    if(i1<-0.0004035830497741699){
     s0+=372.0;
     s1+=163.0;
    } else {
     s0+=278.0;
     s1+=1289.0;
    }
   }
  }
 } else {
  if(i3<-4.78861402370967e-05){
   if(i45<0.14038097858428955){
    if(i47<0.00010142606333829463){
     s0+=101.0;
     s1+=416.0;
    } else {
     s0+=105.0;
     s1+=12.0;
    }
   } else {
    if(i58<0.013144479133188725){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=1067.0;
    }
   }
  } else {
   if(i8<0.005275333300232887){
    if(i13<-0.0031399130821228027){
     s0+=27.0;
     s1+=12.0;
    } else {
     s0+=898.0;
     s1+=14.0;
    }
   } else {
    if(i42<3.149796975776553e-05){
     s0+=19.0;
     s1+=272.0;
    } else {
     s0+=30.0;
    }
   }
  }
 }
} else {
 if(i21<0.00795380026102066){
  if(i52<1.2576580047607422e-05){
   if(i48<1.0009918212890625){
    if(i34<1.0984714031219482){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=119.0;
    }
   } else {
    if(i27<1.125762701034546){
     s0+=10.0;
     s1+=1473.0;
    } else {
     s0+=170.0;
     s1+=388.0;
    }
   }
  } else {
   if(i24<0.0025230327155441046){
    if(i27<1.1180615425109863){
     s0+=47.0;
     s1+=31.0;
    } else {
     s0+=1461.0;
    }
   } else {
    s1+=154.0;
   }
  }
 } else {
  if(i50<-6.419467354135122e-06){
   if(i22<0.9483280181884766){
    s1+=2.0;
   } else {
    s0+=158.0;
   }
  } else {
   if(i13<-0.0022980570793151855){
    if(i32<1.3193538188934326){
     s0+=20.0;
     s1+=241.0;
    } else {
     s0+=85.0;
     s1+=106.0;
    }
   } else {
    if(i8<0.004828344099223614){
     s0+=129.0;
     s1+=377.0;
    } else {
     s0+=12.0;
     s1+=13718.0;
    }
   }
  }
 }
}
if(i5<0.000570833683013916){
 if(i22<1.017035722732544){
  if(i16<0.23153239488601685){
   if(i3<-0.00012880701979156584){
    if(i21<0.05433463305234909){
     s0+=98.0;
     s1+=8.0;
    } else {
     s0+=21.0;
     s1+=162.0;
    }
   } else {
    if(i36<1.0905578136444092){
     s0+=25514.0;
     s1+=2406.0;
    } else {
     s0+=83593.0;
     s1+=1373.0;
    }
   }
  } else {
   if(i15<0.0024232047144323587){
    s0+=31.0;
   } else {
    s1+=292.0;
   }
  }
 } else {
  if(i1<0.0002333223819732666){
   if(i32<1.177034616470337){
    if(i27<1.0905578136444092){
     s1+=22.0;
    } else {
     s0+=393.0;
     s1+=37.0;
    }
   } else {
    if(i15<0.002368887420743704){
     s0+=211.0;
    } else {
     s0+=25.0;
     s1+=273.0;
    }
   }
  } else {
   if(i62<-0.0011481230612844229){
    if(i8<0.003591079730540514){
     s0+=31.0;
     s1+=1.0;
    } else {
     s1+=413.0;
    }
   } else {
    if(i21<0.013553068041801453){
     s0+=45.0;
     s1+=8.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i32<1.1714401245117188){
  if(i0<8.100271224975586e-05){
   if(i28<0.0004139840602874756){
    if(i32<1.04392671585083){
     s0+=139.0;
    } else {
     s0+=183.0;
     s1+=1155.0;
    }
   } else {
    if(i21<0.01894092932343483){
     s0+=4012.0;
     s1+=47.0;
    } else {
     s0+=165.0;
     s1+=294.0;
    }
   }
  } else {
   if(i36<1.1174830198287964){
    if(i63<7.098878086253535e-06){
     s0+=22.0;
     s1+=2018.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i43<0.001797080272808671){
     s0+=1026.0;
     s1+=126.0;
    } else {
     s0+=29.0;
     s1+=418.0;
    }
   }
  }
 } else {
  if(i9<0.9847046136856079){
   if(i2<1.0000547170639038){
    if(i6<0.9746512770652771){
     s0+=267.0;
     s1+=164.0;
    } else {
     s0+=272.0;
     s1+=23.0;
    }
   } else {
    if(i16<0.031004101037979126){
     s0+=170.0;
     s1+=65.0;
    } else {
     s0+=169.0;
     s1+=1243.0;
    }
   }
  } else {
   if(i38<1.1076223850250244){
    if(i26<-0.00014257431030273438){
     s0+=181.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=190.0;
    }
   } else {
    if(i16<0.1191476583480835){
     s0+=36.0;
     s1+=645.0;
    } else {
     s0+=17.0;
     s1+=12718.0;
    }
   }
  }
 }
}
if(i22<1.0163410902023315){
 if(i0<6.502866744995117e-05){
  if(i8<0.004047315567731857){
   if(i43<0.0005432170582935214){
    if(i67<-0.0006652474403381348){
     s0+=1827.0;
     s1+=610.0;
    } else {
     s0+=28337.0;
     s1+=451.0;
    }
   } else {
    if(i3<-5.105942545924336e-05){
     s0+=780.0;
     s1+=79.0;
    } else {
     s0+=61161.0;
     s1+=144.0;
    }
   }
  } else {
   if(i5<-1.6361474990844727e-05){
    if(i59<1.1402966976165771){
     s0+=17071.0;
     s1+=382.0;
    } else {
     s0+=15.0;
     s1+=59.0;
    }
   } else {
    if(i36<1.1174830198287964){
     s0+=280.0;
     s1+=2025.0;
    } else {
     s0+=3796.0;
     s1+=2259.0;
    }
   }
  }
 } else {
  if(i56<0.0009022074518725276){
   if(i27<1.116804838180542){
    if(i29<0.00016735489771235734){
     s0+=63.0;
    } else {
     s1+=859.0;
    }
   } else {
    if(i46<0.002285012975335121){
     s0+=1233.0;
     s1+=82.0;
    } else {
     s0+=31.0;
     s1+=160.0;
    }
   }
  } else {
   if(i28<0.001676797866821289){
    if(i31<0.004073325544595718){
     s0+=90.0;
     s1+=2689.0;
    } else {
     s0+=20.0;
    }
   } else {
    s0+=21.0;
   }
  }
 }
} else {
 if(i2<1.0017149448394775){
  if(i23<0.26111912727355957){
   if(i8<0.0059796832501888275){
    if(i45<0.17158043384552002){
     s0+=569.0;
     s1+=6.0;
    } else {
     s0+=122.0;
     s1+=22.0;
    }
   } else {
    if(i14<0.0005440530367195606){
     s0+=20.0;
     s1+=165.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i71<0.03906369209289551){
    if(i29<0.0034724981524050236){
     s0+=8.0;
    } else {
     s0+=15.0;
     s1+=207.0;
    }
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i15<0.0015875424724072218){
   if(i42<-1.7113163266913034e-05){
    if(i4<0.0002523064613342285){
     s0+=13.0;
     s1+=540.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i3<-7.186472066678107e-05){
     s0+=8.0;
     s1+=17.0;
    } else {
     s0+=478.0;
     s1+=4.0;
    }
   }
  } else {
   if(i22<1.0222115516662598){
    if(i24<0.0010912343859672546){
     s1+=737.0;
    } else {
     s0+=323.0;
     s1+=585.0;
    }
   } else {
    if(i28<0.0017613768577575684){
     s0+=103.0;
     s1+=12315.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i3<-9.841138671617955e-05){
 if(i16<0.018582075834274292){
  if(i9<0.9742512702941895){
   if(i44<1.0025296211242676){
    if(i35<1.1237854957580566){
     s0+=536.0;
     s1+=11.0;
    } else {
     s0+=45.0;
     s1+=23.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i31<0.0032040774822235107){
    s1+=52.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i31<0.003868573345243931){
   if(i14<0.0007370628882199526){
    if(i51<-0.0001819253811845556){
     s0+=52.0;
    } else {
     s0+=128.0;
     s1+=15371.0;
    }
   } else {
    s0+=36.0;
   }
  } else {
   if(i48<1.0025379657745361){
    if(i68<0.019250648096203804){
     s0+=152.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i31<0.004045589827001095){
     s1+=23.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i7<1.0022156238555908){
  if(i30<1.0197206735610962){
   if(i34<1.0905030965805054){
    if(i31<0.0007154998602345586){
     s0+=24411.0;
     s1+=331.0;
    } else {
     s0+=3676.0;
     s1+=2309.0;
    }
   } else {
    if(i8<0.004576519597321749){
     s0+=65164.0;
     s1+=253.0;
    } else {
     s0+=13708.0;
     s1+=635.0;
    }
   }
  } else {
   if(i27<1.116804838180542){
    if(i5<9.757280349731445e-05){
     s0+=33.0;
     s1+=1.0;
    } else {
     s1+=405.0;
    }
   } else {
    if(i8<0.005382094532251358){
     s0+=967.0;
     s1+=44.0;
    } else {
     s0+=93.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i28<0.0005248188972473145){
   if(i31<0.00045594648690894246){
    if(i0<9.846687316894531e-05){
     s0+=1039.0;
    } else {
     s1+=154.0;
    }
   } else {
    if(i1<0.00019949674606323242){
     s0+=553.0;
     s1+=224.0;
    } else {
     s0+=215.0;
     s1+=2996.0;
    }
   }
  } else {
   if(i27<1.1843671798706055){
    s0+=3740.0;
   } else {
    if(i42<9.40339668886736e-06){
     s0+=47.0;
     s1+=815.0;
    } else {
     s0+=1980.0;
     s1+=473.0;
    }
   }
  }
 }
}
if(i0<6.300210952758789e-05){
 if(i40<1.0291333198547363){
  if(i21<0.06490268558263779){
   if(i11<1.0026624202728271){
    if(i5<0.0002581477165222168){
     s0+=98091.0;
     s1+=2420.0;
    } else {
     s0+=6594.0;
     s1+=1536.0;
    }
   } else {
    if(i21<0.007708937395364046){
     s0+=6419.0;
     s1+=151.0;
    } else {
     s0+=1434.0;
     s1+=1371.0;
    }
   }
  } else {
   if(i8<0.013422470539808273){
    if(i61<0.76632159948349){
     s0+=273.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i9<0.9112570285797119){
     s0+=48.0;
     s1+=37.0;
    } else {
     s0+=17.0;
     s1+=772.0;
    }
   }
  }
 } else {
  if(i38<1.127637267112732){
   if(i36<1.0905578136444092){
    if(i28<2.8371810913085938e-05){
     s0+=11.0;
    } else {
     s1+=192.0;
    }
   } else {
    if(i3<-5.4437972721643746e-05){
     s0+=115.0;
     s1+=76.0;
    } else {
     s0+=541.0;
     s1+=34.0;
    }
   }
  } else {
   if(i2<1.0011639595031738){
    if(i8<0.005658257752656937){
     s0+=317.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=306.0;
    }
   } else {
    if(i27<1.1843671798706055){
     s0+=44.0;
    } else {
     s0+=69.0;
     s1+=1074.0;
    }
   }
  }
 }
} else {
 if(i36<1.176405668258667){
  if(i27<1.116804838180542){
   if(i27<1.0610902309417725){
    s0+=87.0;
   } else {
    s1+=2428.0;
   }
  } else {
   s0+=2047.0;
  }
 } else {
  if(i16<0.0032147467136383057){
   if(i1<0.002047598361968994){
    if(i66<0.002904574852436781){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=26.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i16<0.10238343477249146){
    if(i53<1.009214997291565){
     s0+=4.0;
     s1+=344.0;
    } else {
     s0+=70.0;
     s1+=319.0;
    }
   } else {
    if(i19<0.9452720880508423){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=12.0;
     s1+=13486.0;
    }
   }
  }
 }
}
if(i1<0.0009602904319763184){
 if(i5<0.0003413558006286621){
  if(i15<0.001472703879699111){
   if(i60<0.00017508423479739577){
    if(i27<1.0776758193969727){
     s0+=11281.0;
     s1+=119.0;
    } else {
     s0+=57971.0;
     s1+=84.0;
    }
   } else {
    if(i25<0.00023004629474598914){
     s0+=459.0;
     s1+=164.0;
    } else {
     s0+=12222.0;
     s1+=193.0;
    }
   }
  } else {
   if(i0<-3.325939178466797e-05){
    if(i3<-8.105791494017467e-05){
     s0+=622.0;
     s1+=271.0;
    } else {
     s0+=19655.0;
     s1+=465.0;
    }
   } else {
    if(i39<0.011202586814761162){
     s0+=1947.0;
     s1+=165.0;
    } else {
     s0+=970.0;
     s1+=1964.0;
    }
   }
  }
 } else {
  if(i37<-0.0002002612891374156){
   if(i39<0.036520592868328094){
    if(i17<1.011684775352478){
     s0+=694.0;
     s1+=232.0;
    } else {
     s0+=363.0;
     s1+=608.0;
    }
   } else {
    if(i30<0.8910975456237793){
     s0+=105.0;
     s1+=96.0;
    } else {
     s0+=281.0;
     s1+=2400.0;
    }
   }
  } else {
   if(i39<0.020170774310827255){
    if(i24<0.0008067081798799336){
     s0+=2346.0;
     s1+=420.0;
    } else {
     s0+=3727.0;
     s1+=19.0;
    }
   } else {
    if(i1<-0.00012534856796264648){
     s0+=1253.0;
     s1+=76.0;
    } else {
     s0+=498.0;
     s1+=704.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i50<-6.411725735233631e-06){
   if(i13<-0.0020409822463989258){
    s1+=2.0;
   } else {
    s0+=36.0;
   }
  } else {
   if(i8<0.004184725694358349){
    if(i47<-1.31265969685046e-05){
     s0+=50.0;
     s1+=1028.0;
    } else {
     s0+=131.0;
    }
   } else {
    if(i47<0.0002907116722781211){
     s0+=48.0;
     s1+=15212.0;
    } else {
     s0+=43.0;
     s1+=101.0;
    }
   }
  }
 } else {
  s0+=1835.0;
 }
}
if(i5<0.0005886554718017578){
 if(i45<0.20635947585105896){
  if(i7<0.999988317489624){
   if(i46<0.06467868387699127){
    if(i56<0.0007843238417990506){
     s0+=54837.0;
     s1+=428.0;
    } else {
     s0+=10114.0;
     s1+=357.0;
    }
   } else {
    if(i39<0.20491865277290344){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i9<1.0093770027160645){
    if(i36<1.0924948453903198){
     s0+=8495.0;
     s1+=1672.0;
    } else {
     s0+=35557.0;
     s1+=1257.0;
    }
   } else {
    if(i36<1.0978162288665771){
     s1+=423.0;
    } else {
     s0+=938.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i59<1.6501121520996094){
   if(i3<-4.572643229039386e-05){
    if(i51<-1.2375559890642762e-05){
     s0+=2.0;
     s1+=503.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i44<1.000784158706665){
     s0+=88.0;
     s1+=3.0;
    } else {
     s0+=25.0;
     s1+=44.0;
    }
   }
  } else {
   s0+=23.0;
  }
 }
} else {
 if(i14<0.0007044102530926466){
  if(i13<0.0011173486709594727){
   if(i37<-0.0002626543282531202){
    if(i41<1.03841233253479){
     s0+=285.0;
     s1+=125.0;
    } else {
     s0+=441.0;
     s1+=3779.0;
    }
   } else {
    if(i8<0.003854930168017745){
     s0+=1283.0;
     s1+=16.0;
    } else {
     s0+=1132.0;
     s1+=1415.0;
    }
   }
  } else {
   if(i72<-5.138819233252434e-06){
    s0+=2.0;
   } else {
    if(i8<0.0035727019421756268){
     s0+=47.0;
     s1+=727.0;
    } else {
     s0+=5.0;
     s1+=13032.0;
    }
   }
  }
 } else {
  if(i60<-0.0008659094455651939){
   s1+=1.0;
  } else {
   s0+=3438.0;
  }
 }
}
if(i3<-9.780903201317415e-05){
 if(i12<0.9097146987915039){
  if(i31<0.003056448418647051){
   if(i19<0.9566859006881714){
    if(i16<0.06661510467529297){
     s0+=515.0;
     s1+=15.0;
    } else {
     s0+=14.0;
     s1+=36.0;
    }
   } else {
    if(i34<1.4328255653381348){
     s0+=9.0;
     s1+=2.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i46<0.007534133270382881){
    if(i32<1.3505710363388062){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.01405318733304739){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i50<-6.607598152186256e-06){
   s0+=271.0;
  } else {
   if(i10<0.9731748104095459){
    if(i23<0.040846824645996094){
     s0+=76.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   } else {
    if(i18<0.007687509059906006){
     s0+=43.0;
     s1+=50.0;
    } else {
     s0+=33.0;
     s1+=15179.0;
    }
   }
  }
 }
} else {
 if(i26<0.00016814470291137695){
  if(i23<0.21416154503822327){
   if(i12<1.0165066719055176){
    if(i31<0.0007055143360048532){
     s0+=79335.0;
     s1+=468.0;
    } else {
     s0+=33057.0;
     s1+=4513.0;
    }
   } else {
    if(i27<1.1178560256958008){
     s0+=16.0;
     s1+=484.0;
    } else {
     s0+=1168.0;
     s1+=434.0;
    }
   }
  } else {
   if(i21<0.030804725363850594){
    if(i57<-4.235363121551927e-06){
     s0+=59.0;
     s1+=122.0;
    } else {
     s0+=143.0;
     s1+=4.0;
    }
   } else {
    if(i46<0.04216425120830536){
     s0+=17.0;
     s1+=619.0;
    } else {
     s0+=18.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i48<1.00083327293396){
   if(i62<-0.0013272413052618504){
    if(i24<0.0010047692339867353){
     s1+=5.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i38<1.0693180561065674){
     s0+=110.0;
     s1+=6.0;
    } else {
     s0+=632.0;
    }
   }
  } else {
   if(i28<0.0007607340812683105){
    if(i4<1.5437602996826172e-05){
     s0+=115.0;
     s1+=15.0;
    } else {
     s0+=73.0;
     s1+=2137.0;
    }
   } else {
    if(i56<0.0009963635820895433){
     s0+=743.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
}
if(i13<0.0013865828514099121){
 if(i16<0.19054746627807617){
  if(i0<5.40614128112793e-05){
   if(i3<-7.400420145131648e-05){
    if(i37<-0.00031010594102554023){
     s0+=279.0;
     s1+=856.0;
    } else {
     s0+=1363.0;
     s1+=192.0;
    }
   } else {
    if(i55<1.0004466772079468){
     s0+=61249.0;
     s1+=775.0;
    } else {
     s0+=49645.0;
     s1+=3800.0;
    }
   }
  } else {
   if(i15<0.0019725149031728506){
    if(i47<8.73631943250075e-05){
     s0+=1805.0;
     s1+=57.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i34<1.0520559549331665){
     s0+=156.0;
    } else {
     s0+=446.0;
     s1+=1757.0;
    }
   }
  }
 } else {
  if(i33<0.0023614466190338135){
   if(i24<0.002086261287331581){
    s0+=365.0;
   } else {
    if(i21<0.014322647824883461){
     s0+=44.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i0<-9.953975677490234e-06){
    if(i51<-9.397136636835057e-06){
     s0+=70.0;
     s1+=416.0;
    } else {
     s0+=155.0;
     s1+=11.0;
    }
   } else {
    if(i8<0.003974252846091986){
     s0+=22.0;
     s1+=19.0;
    } else {
     s0+=14.0;
     s1+=3097.0;
    }
   }
  }
 }
} else {
 if(i48<1.0008397102355957){
  if(i29<0.015441540628671646){
   if(i55<1.0015311241149902){
    s0+=517.0;
   } else {
    s1+=5.0;
   }
  } else {
   s1+=280.0;
  }
 } else {
  if(i34<1.144989013671875){
   if(i38<1.0869626998901367){
    if(i5<0.0004200935363769531){
     s0+=9.0;
    } else {
     s0+=4.0;
     s1+=1759.0;
    }
   } else {
    if(i36<1.1174830198287964){
     s0+=3.0;
     s1+=169.0;
    } else {
     s0+=438.0;
    }
   }
  } else {
   s1+=11059.0;
  }
 }
}
if(i1<0.0009605884552001953){
 if(i7<1.0020750761032104){
  if(i16<0.22808903455734253){
   if(i19<1.0089994668960571){
    if(i31<0.0007065246463753283){
     s0+=76032.0;
     s1+=390.0;
    } else {
     s0+=29963.0;
     s1+=3144.0;
    }
   } else {
    if(i27<1.116391897201538){
     s0+=34.0;
     s1+=444.0;
    } else {
     s0+=1088.0;
     s1+=82.0;
    }
   }
  } else {
   if(i25<0.004038665443658829){
    if(i57<-3.385292302482412e-06){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=69.0;
     s1+=2.0;
    }
   } else {
    if(i33<0.003704755799844861){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i21<0.020443253219127655){
   if(i13<0.0011340975761413574){
    if(i44<1.001152515411377){
     s0+=1617.0;
     s1+=523.0;
    } else {
     s0+=4441.0;
     s1+=190.0;
    }
   } else {
    if(i52<1.5437602996826172e-05){
     s0+=20.0;
     s1+=144.0;
    } else {
     s0+=46.0;
    }
   }
  } else {
   if(i1<-0.0003902912139892578){
    if(i16<0.2319471836090088){
     s0+=612.0;
     s1+=162.0;
    } else {
     s0+=2.0;
     s1+=85.0;
    }
   } else {
    if(i13<-0.003711611032485962){
     s0+=182.0;
     s1+=142.0;
    } else {
     s0+=222.0;
     s1+=2332.0;
    }
   }
  }
 }
} else {
 if(i8<0.004087101202458143){
  if(i1<0.0018061399459838867){
   if(i66<0.0003584384103305638){
    if(i50<-2.928049298134283e-06){
     s0+=79.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=240.0;
    }
   } else {
    if(i54<0.0005360043724067509){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=1348.0;
     s1+=8.0;
    }
   }
  } else {
   if(i57<-1.777911529643461e-05){
    if(i2<1.0133380889892578){
     s0+=215.0;
    } else {
     s1+=60.0;
    }
   } else {
    if(i57<-1.640118716750294e-05){
     s0+=4.0;
     s1+=63.0;
    } else {
     s1+=643.0;
    }
   }
  }
 } else {
  if(i27<1.175166130065918){
   if(i27<1.1180615425109863){
    s1+=1665.0;
   } else {
    s0+=238.0;
   }
  } else {
   if(i26<-0.0003209114074707031){
    if(i15<0.005532586015760899){
     s0+=72.0;
     s1+=13.0;
    } else {
     s0+=9.0;
     s1+=252.0;
    }
   } else {
    if(i8<0.0057992152869701385){
     s0+=18.0;
     s1+=344.0;
    } else {
     s0+=6.0;
     s1+=13215.0;
    }
   }
  }
 }
}
if(i2<1.0037140846252441){
 if(i17<1.0181148052215576){
  if(i23<0.22012701630592346){
   if(i8<0.0036698170006275177){
    if(i65<-0.00038677453994750977){
     s0+=15906.0;
     s1+=626.0;
    } else {
     s0+=71542.0;
     s1+=384.0;
    }
   } else {
    if(i2<0.998753547668457){
     s0+=21580.0;
     s1+=742.0;
    } else {
     s0+=2068.0;
     s1+=3095.0;
    }
   }
  } else {
   if(i29<0.0037998915649950504){
    if(i60<0.00035491323797032237){
     s0+=71.0;
    } else {
     s0+=18.0;
     s1+=8.0;
    }
   } else {
    if(i71<0.03313988447189331){
     s0+=31.0;
     s1+=427.0;
    } else {
     s0+=28.0;
    }
   }
  }
 } else {
  if(i3<-5.514712756848894e-05){
   if(i21<0.02227306365966797){
    if(i46<0.0006091695977374911){
     s1+=52.0;
    } else {
     s0+=181.0;
     s1+=22.0;
    }
   } else {
    if(i21<0.023294543847441673){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=771.0;
    }
   }
  } else {
   if(i8<0.006612597033381462){
    if(i45<0.1720406711101532){
     s0+=650.0;
     s1+=16.0;
    } else {
     s0+=110.0;
     s1+=19.0;
    }
   } else {
    if(i27<1.5306217670440674){
     s0+=13.0;
     s1+=262.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
} else {
 if(i8<0.003860458265990019){
  if(i2<1.0102596282958984){
   if(i36<1.0894038677215576){
    if(i20<1.0081349611282349){
     s0+=664.0;
     s1+=13.0;
    } else {
     s1+=479.0;
    }
   } else {
    if(i12<1.0344507694244385){
     s0+=3238.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=20.0;
    }
   }
  } else {
   if(i13<0.0015613436698913574){
    s0+=2.0;
   } else {
    s1+=441.0;
   }
  }
 } else {
  if(i44<0.9983471035957336){
   s0+=128.0;
  } else {
   if(i52<3.081560134887695e-05){
    if(i34<1.1645245552062988){
     s0+=219.0;
     s1+=2228.0;
    } else {
     s0+=115.0;
     s1+=14620.0;
    }
   } else {
    s0+=34.0;
   }
  }
 }
}
if(i7<1.0026319026947021){
 if(i16<0.23153239488601685){
  if(i8<0.003865992184728384){
   if(i15<0.0009780395776033401){
    if(i25<0.0019055015873163939){
     s0+=64237.0;
     s1+=96.0;
    } else {
     s0+=2970.0;
     s1+=84.0;
    }
   } else {
    if(i41<1.0178500413894653){
     s0+=2643.0;
     s1+=482.0;
    } else {
     s0+=19529.0;
     s1+=522.0;
    }
   }
  } else {
   if(i1<-0.0003158450126647949){
    if(i33<0.00031782762380316854){
     s0+=19.0;
     s1+=68.0;
    } else {
     s0+=19823.0;
     s1+=704.0;
    }
   } else {
    if(i7<1.0000662803649902){
     s0+=751.0;
     s1+=29.0;
    } else {
     s0+=490.0;
     s1+=2966.0;
    }
   }
  }
 } else {
  if(i25<0.004038665443658829){
   if(i51<-8.72639338922454e-06){
    if(i62<-0.00023992986825760454){
     s1+=38.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=83.0;
   }
  } else {
   if(i49<0.04659511148929596){
    if(i29<0.008429819718003273){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=626.0;
   }
  }
 }
} else {
 if(i17<1.0226960182189941){
  if(i14<0.0003743307897821069){
   if(i8<0.0025666598230600357){
    if(i63<-5.542334747588029e-06){
     s0+=16.0;
     s1+=240.0;
    } else {
     s0+=748.0;
     s1+=19.0;
    }
   } else {
    if(i19<1.0033644437789917){
     s0+=785.0;
     s1+=1916.0;
    } else {
     s0+=92.0;
     s1+=3060.0;
    }
   }
  } else {
   if(i3<-0.00010486230166861787){
    if(i12<0.8961182236671448){
     s0+=138.0;
     s1+=33.0;
    } else {
     s0+=61.0;
     s1+=975.0;
    }
   } else {
    if(i56<0.0014605037868022919){
     s0+=3529.0;
     s1+=34.0;
    } else {
     s0+=325.0;
     s1+=249.0;
    }
   }
  }
 } else {
  if(i32<1.1757044792175293){
   if(i1<0.0003884434700012207){
    if(i3<-0.00011101605196017772){
     s1+=24.0;
    } else {
     s0+=209.0;
     s1+=3.0;
    }
   } else {
    if(i14<0.0005537505494430661){
     s0+=60.0;
     s1+=1029.0;
    } else {
     s0+=88.0;
    }
   }
  } else {
   if(i47<4.56291891168803e-05){
    if(i16<0.05924081802368164){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=7491.0;
    }
   } else {
    if(i31<0.000999962561763823){
     s0+=28.0;
     s1+=56.0;
    } else {
     s0+=15.0;
     s1+=3460.0;
    }
   }
  }
 }
}
if(i8<0.007319075055420399){
 if(i28<0.00013273954391479492){
  if(i29<0.0009745812276378274){
   if(i21<0.0065062991343438625){
    if(i40<0.9906908869743347){
     s0+=901.0;
     s1+=170.0;
    } else {
     s0+=19274.0;
     s1+=117.0;
    }
   } else {
    if(i2<0.9979303479194641){
     s0+=6315.0;
     s1+=154.0;
    } else {
     s0+=286.0;
     s1+=851.0;
    }
   }
  } else {
   if(i64<0.14534515142440796){
    if(i64<0.08520357310771942){
     s0+=54903.0;
     s1+=92.0;
    } else {
     s0+=2001.0;
     s1+=53.0;
    }
   } else {
    if(i4<6.794929504394531e-06){
     s0+=772.0;
     s1+=54.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i26<0.0001824498176574707){
   if(i36<1.1161681413650513){
    if(i34<1.0549226999282837){
     s0+=3196.0;
     s1+=2.0;
    } else {
     s0+=2794.0;
     s1+=1851.0;
    }
   } else {
    if(i8<0.0049553122371435165){
     s0+=17099.0;
     s1+=376.0;
    } else {
     s0+=1957.0;
     s1+=510.0;
    }
   }
  } else {
   if(i31<0.001152818906120956){
    if(i28<0.0008334517478942871){
     s0+=52.0;
     s1+=2539.0;
    } else {
     s0+=148.0;
     s1+=156.0;
    }
   } else {
    if(i29<0.0020857141353189945){
     s0+=847.0;
    } else {
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i2<0.9986823797225952){
  if(i45<0.13818848133087158){
   if(i46<0.03541555255651474){
    if(i2<0.9971061944961548){
     s0+=4770.0;
     s1+=138.0;
    } else {
     s0+=378.0;
     s1+=126.0;
    }
   } else {
    if(i51<-2.1612249838653952e-05){
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i27<1.387865424156189){
    if(i4<4.112720489501953e-06){
     s0+=60.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    if(i54<0.0012399377301335335){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=339.0;
    }
   }
  }
 } else {
  if(i16<0.02325919270515442){
   if(i13<-0.0013828873634338379){
    if(i32<1.4757143259048462){
     s0+=295.0;
     s1+=59.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i55<0.9980856776237488){
     s0+=9.0;
     s1+=3.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i59<0.9018645286560059){
    if(i25<0.021551059558987617){
     s0+=43.0;
     s1+=8.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i10<0.9912505149841309){
     s0+=193.0;
     s1+=1282.0;
    } else {
     s0+=88.0;
     s1+=15325.0;
    }
   }
  }
 }
}
if(i8<0.007390722632408142){
 if(i26<0.00021070241928100586){
  if(i15<0.0016856342554092407){
   if(i1<0.0017547607421875){
    if(i41<1.0178465843200684){
     s0+=10438.0;
     s1+=432.0;
    } else {
     s0+=80351.0;
     s1+=487.0;
    }
   } else {
    if(i36<1.0945069789886475){
     s1+=45.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i8<0.003669677535071969){
    if(i33<0.0007144053815864027){
     s0+=1492.0;
     s1+=202.0;
    } else {
     s0+=9195.0;
     s1+=36.0;
    }
   } else {
    if(i25<0.001157384947873652){
     s0+=861.0;
     s1+=2544.0;
    } else {
     s0+=7788.0;
     s1+=730.0;
    }
   }
  }
 } else {
  if(i7<1.0025765895843506){
   if(i48<1.0008807182312012){
    s0+=334.0;
   } else {
    if(i17<1.0170459747314453){
     s0+=21.0;
     s1+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i44<0.9998543858528137){
    if(i34<1.3898332118988037){
     s0+=291.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i14<0.000625929213128984){
     s0+=60.0;
     s1+=2485.0;
    } else {
     s0+=245.0;
    }
   }
  }
 }
} else {
 if(i18<0.07951658964157104){
  if(i20<0.9971139430999756){
   if(i70<0.040652334690093994){
    if(i57<-2.087243046844378e-05){
     s0+=10.0;
     s1+=24.0;
    } else {
     s0+=4173.0;
     s1+=79.0;
    }
   } else {
    if(i59<0.946190357208252){
     s0+=109.0;
     s1+=40.0;
    } else {
     s0+=13.0;
     s1+=65.0;
    }
   }
  } else {
   if(i48<0.9992715120315552){
    s0+=138.0;
   } else {
    if(i42<1.5676621842430905e-05){
     s0+=10.0;
     s1+=338.0;
    } else {
     s0+=209.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i1<-0.0009439587593078613){
   if(i68<0.0035459925420582294){
    if(i8<0.015374831855297089){
     s0+=698.0;
     s1+=72.0;
    } else {
     s0+=15.0;
     s1+=72.0;
    }
   } else {
    if(i59<0.9948908090591431){
     s0+=25.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=127.0;
    }
   }
  } else {
   if(i23<0.07924860715866089){
    s0+=22.0;
   } else {
    if(i26<-0.0005803406238555908){
     s0+=97.0;
     s1+=188.0;
    } else {
     s0+=137.0;
     s1+=15883.0;
    }
   }
  }
 }
}
if(i6<1.013148546218872){
 if(i20<1.008970022201538){
  if(i5<0.0003757476806640625){
   if(i46<0.012386390008032322){
    if(i27<1.1162974834442139){
     s0+=27425.0;
     s1+=2467.0;
    } else {
     s0+=77334.0;
     s1+=736.0;
    }
   } else {
    if(i41<1.0779187679290771){
     s0+=630.0;
     s1+=19.0;
    } else {
     s0+=204.0;
     s1+=248.0;
    }
   }
  } else {
   if(i8<0.004162591882050037){
    if(i56<0.0013467869721353054){
     s0+=6386.0;
     s1+=113.0;
    } else {
     s0+=34.0;
     s1+=33.0;
    }
   } else {
    if(i24<0.0010387387592345476){
     s0+=23.0;
     s1+=1019.0;
    } else {
     s0+=2128.0;
     s1+=3021.0;
    }
   }
  }
 } else {
  if(i60<0.00014492834452539682){
   if(i33<0.0008660979801788926){
    if(i3<-2.764728560578078e-05){
     s1+=368.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i10<1.0153064727783203){
     s0+=925.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   }
  } else {
   if(i8<0.0020696704741567373){
    if(i26<0.00021702051162719727){
     s0+=45.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   } else {
    if(i51<-0.00017804109666030854){
     s0+=5.0;
    } else {
     s0+=21.0;
     s1+=1452.0;
    }
   }
  }
 }
} else {
 if(i25<0.0026127854362130165){
  if(i14<0.00031631768797524273){
   if(i57<-3.676363803606364e-06){
    if(i24<0.0011313131544739008){
     s1+=1990.0;
    } else {
     s0+=19.0;
     s1+=40.0;
    }
   } else {
    s0+=172.0;
   }
  } else {
   if(i12<0.9994192123413086){
    s1+=2.0;
   } else {
    s0+=775.0;
   }
  }
 } else {
  if(i57<-3.4612232866493287e-06){
   if(i25<0.006651417817920446){
    if(i8<0.004141928628087044){
     s0+=250.0;
     s1+=210.0;
    } else {
     s0+=39.0;
     s1+=2352.0;
    }
   } else {
    if(i3<-3.423071393626742e-05){
     s0+=15.0;
     s1+=10128.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<1.4161334037780762){
    s1+=12.0;
   } else {
    s0+=125.0;
   }
  }
 }
}
if(i9<1.0143516063690186){
 if(i5<0.0005274415016174316){
  if(i8<0.003659273264929652){
   if(i41<1.0179111957550049){
    if(i47<3.363575160619803e-05){
     s0+=5589.0;
     s1+=3.0;
    } else {
     s0+=4876.0;
     s1+=533.0;
    }
   } else {
    if(i35<1.1354830265045166){
     s0+=75205.0;
     s1+=463.0;
    } else {
     s0+=775.0;
     s1+=51.0;
    }
   }
  } else {
   if(i1<-0.0003921985626220703){
    if(i23<0.19839340448379517){
     s0+=20899.0;
     s1+=661.0;
    } else {
     s0+=110.0;
     s1+=236.0;
    }
   } else {
    if(i36<1.0531532764434814){
     s0+=483.0;
    } else {
     s0+=932.0;
     s1+=2417.0;
    }
   }
  }
 } else {
  if(i3<-7.420437759719789e-05){
   if(i48<1.0010035037994385){
    if(i32<1.3704785108566284){
     s0+=273.0;
     s1+=2.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i10<0.9755880832672119){
     s0+=349.0;
     s1+=118.0;
    } else {
     s0+=245.0;
     s1+=3395.0;
    }
   }
  } else {
   if(i28<0.0004980564117431641){
    if(i7<1.0022655725479126){
     s0+=975.0;
     s1+=248.0;
    } else {
     s0+=203.0;
     s1+=1312.0;
    }
   } else {
    if(i56<0.0010087861446663737){
     s0+=3996.0;
     s1+=151.0;
    } else {
     s0+=422.0;
     s1+=452.0;
    }
   }
  }
 }
} else {
 if(i3<-6.79901713738218e-05){
  if(i36<1.161024570465088){
   if(i27<1.1180615425109863){
    s1+=1149.0;
   } else {
    s0+=178.0;
   }
  } else {
   if(i4<8.642673492431641e-07){
    if(i47<1.826045809139032e-05){
     s0+=17.0;
    } else {
     s1+=75.0;
    }
   } else {
    if(i51<-1.3393842891673557e-05){
     s0+=15.0;
     s1+=12071.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i8<0.005330480635166168){
   if(i43<0.0008984912419691682){
    if(i36<1.2322146892547607){
     s1+=258.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i47<0.00017873723118100315){
     s0+=950.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i44<0.9986361861228943){
    s0+=4.0;
   } else {
    s1+=696.0;
   }
  }
 }
}
if(i4<2.2113323211669922e-05){
 if(i12<1.0164064168930054){
  if(i23<0.23268568515777588){
   if(i31<0.0006987048545852304){
    if(i19<0.9945918321609497){
     s0+=12334.0;
     s1+=209.0;
    } else {
     s0+=65949.0;
     s1+=199.0;
    }
   } else {
    if(i14<0.00021254827152006328){
     s0+=5741.0;
     s1+=2530.0;
    } else {
     s0+=24867.0;
     s1+=1180.0;
    }
   }
  } else {
   if(i8<0.006320785731077194){
    if(i10<1.0033133029937744){
     s0+=83.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.0024171569384634495){
     s0+=1.0;
    } else {
     s1+=291.0;
    }
   }
  }
 } else {
  if(i1<0.00024250149726867676){
   if(i51<-7.342168828472495e-06){
    if(i52<6.377696990966797e-06){
     s0+=61.0;
     s1+=250.0;
    } else {
     s0+=169.0;
     s1+=52.0;
    }
   } else {
    s0+=465.0;
   }
  } else {
   if(i8<0.0035700949374586344){
    if(i4<1.996755599975586e-05){
     s0+=97.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i44<0.9982233643531799){
     s0+=20.0;
    } else {
     s1+=650.0;
    }
   }
  }
 }
} else {
 if(i32<1.1714401245117188){
  if(i10<1.013281226158142){
   if(i44<0.9996769428253174){
    if(i58<0.033194661140441895){
     s0+=1491.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   } else {
    if(i8<0.004388327710330486){
     s0+=3414.0;
     s1+=594.0;
    } else {
     s0+=399.0;
     s1+=1575.0;
    }
   }
  } else {
   if(i50<-3.691109668579884e-06){
    if(i30<1.043893814086914){
     s0+=215.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i36<1.4586446285247803){
     s1+=1622.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i0<6.377696990966797e-06){
   if(i61<0.4687960147857666){
    if(i41<1.0856949090957642){
     s0+=697.0;
     s1+=121.0;
    } else {
     s0+=59.0;
     s1+=118.0;
    }
   } else {
    if(i39<0.08912765979766846){
     s0+=26.0;
    } else {
     s0+=14.0;
     s1+=175.0;
    }
   }
  } else {
   if(i47<0.0003116616571787745){
    if(i16<0.08852237462997437){
     s0+=173.0;
     s1+=525.0;
    } else {
     s0+=109.0;
     s1+=13968.0;
    }
   } else {
    if(i15<0.005782680120319128){
     s0+=87.0;
     s1+=5.0;
    } else {
     s0+=71.0;
     s1+=201.0;
    }
   }
  }
 }
}
if(i2<1.003741979598999){
 if(i23<0.20886823534965515){
  if(i5<0.0002925992012023926){
   if(i15<0.0013765357434749603){
    if(i29<0.000260697677731514){
     s0+=17580.0;
     s1+=355.0;
    } else {
     s0+=61045.0;
     s1+=141.0;
    }
   } else {
    if(i24<0.0009020448196679354){
     s0+=2164.0;
     s1+=1779.0;
    } else {
     s0+=22582.0;
     s1+=551.0;
    }
   }
  } else {
   if(i31<0.0007210857584141195){
    if(i42<9.947204489435535e-06){
     s0+=3200.0;
     s1+=1.0;
    } else {
     s0+=45.0;
     s1+=60.0;
    }
   } else {
    if(i35<1.0347492694854736){
     s0+=2585.0;
     s1+=259.0;
    } else {
     s0+=2453.0;
     s1+=2341.0;
    }
   }
  }
 } else {
  if(i51<-1.1069657375628594e-05){
   if(i32<1.1713470220565796){
    if(i23<0.23849749565124512){
     s0+=36.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=44.0;
    }
   } else {
    if(i46<0.0016659415559843183){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i8<0.008473803289234638){
    if(i47<0.0001963975082617253){
     s0+=231.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=9.0;
   }
  }
 }
} else {
 if(i27<1.1979892253875732){
  if(i42<-1.1044156963180285e-05){
   if(i27<1.1180615425109863){
    s1+=1335.0;
   } else {
    s0+=243.0;
   }
  } else {
   if(i27<1.116804838180542){
    if(i14<0.00032675047987140715){
     s0+=4.0;
     s1+=1329.0;
    } else {
     s0+=701.0;
    }
   } else {
    s0+=3169.0;
   }
  }
 } else {
  if(i18<0.08370897173881531){
   if(i3<-7.391236431431025e-05){
    if(i26<-0.00023424625396728516){
     s0+=26.0;
     s1+=58.0;
    } else {
     s0+=5.0;
     s1+=327.0;
    }
   } else {
    if(i54<0.0012076966231688857){
     s0+=193.0;
     s1+=2.0;
    } else {
     s0+=32.0;
     s1+=87.0;
    }
   }
  } else {
   if(i57<-4.291513050702633e-06){
    if(i18<0.12081006169319153){
     s0+=60.0;
     s1+=722.0;
    } else {
     s0+=21.0;
     s1+=14014.0;
    }
   } else {
    s0+=24.0;
   }
  }
 }
}
if(i9<1.0143513679504395){
 if(i39<0.16936421394348145){
  if(i53<1.0070079565048218){
   if(i7<1.0023856163024902){
    if(i31<0.0007066089892759919){
     s0+=78145.0;
     s1+=408.0;
    } else {
     s0+=29994.0;
     s1+=3496.0;
    }
   } else {
    if(i27<1.1979892253875732){
     s0+=3707.0;
     s1+=973.0;
    } else {
     s0+=1382.0;
     s1+=1359.0;
    }
   }
  } else {
   if(i20<0.9934777617454529){
    if(i5<0.0013706088066101074){
     s0+=943.0;
     s1+=139.0;
    } else {
     s0+=69.0;
     s1+=65.0;
    }
   } else {
    if(i14<0.0003620581410359591){
     s0+=226.0;
     s1+=1609.0;
    } else {
     s0+=454.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i20<0.9831578731536865){
   if(i8<0.017180828377604485){
    if(i26<-0.0005826354026794434){
     s0+=370.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<0.9594634771347046){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=85.0;
    }
   }
  } else {
   if(i60<0.004732443951070309){
    if(i38<1.1585015058517456){
     s0+=22.0;
     s1+=55.0;
    } else {
     s0+=14.0;
     s1+=1719.0;
    }
   } else {
    s0+=4.0;
   }
  }
 }
} else {
 if(i15<0.0013815650017932057){
  if(i2<1.0111427307128906){
   if(i33<0.0006753002526238561){
    s1+=64.0;
   } else {
    if(i15<0.001206187647767365){
     s0+=492.0;
    } else {
     s0+=123.0;
     s1+=17.0;
    }
   }
  } else {
   s1+=453.0;
  }
 } else {
  if(i32<1.1672112941741943){
   if(i33<0.0012642901856452227){
    if(i36<1.1209434270858765){
     s1+=1301.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i3<-7.011183333816007e-05){
     s0+=149.0;
     s1+=714.0;
    } else {
     s0+=386.0;
     s1+=93.0;
    }
   }
  } else {
   if(i0<8.279085159301758e-05){
    if(i38<1.134283423423767){
     s0+=23.0;
     s1+=56.0;
    } else {
     s0+=1.0;
     s1+=1117.0;
    }
   } else {
    s1+=10430.0;
   }
  }
 }
}
if(i0<6.407499313354492e-05){
 if(i4<1.8298625946044922e-05){
  if(i49<0.39329993724823){
   if(i28<7.003545761108398e-05){
    if(i21<0.08941903710365295){
     s0+=76425.0;
     s1+=886.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i8<0.0037333867512643337){
     s0+=25530.0;
     s1+=539.0;
    } else {
     s0+=6518.0;
     s1+=2632.0;
    }
   }
  } else {
   if(i67<-0.01643499732017517){
    if(i46<0.044732075184583664){
     s0+=81.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<0.04352658614516258){
     s0+=11.0;
    } else {
     s1+=183.0;
    }
   }
  }
 } else {
  if(i8<0.004419829696416855){
   if(i8<0.0037145335227251053){
    if(i61<0.15118522942066193){
     s0+=4085.0;
     s1+=43.0;
    } else {
     s0+=89.0;
     s1+=41.0;
    }
   } else {
    if(i31<0.001042089774273336){
     s0+=109.0;
     s1+=84.0;
    } else {
     s0+=191.0;
    }
   }
  } else {
   if(i26<-0.0003547370433807373){
    if(i54<0.011715386062860489){
     s0+=1267.0;
     s1+=451.0;
    } else {
     s0+=52.0;
     s1+=266.0;
    }
   } else {
    if(i62<-0.0003888963838107884){
     s0+=154.0;
     s1+=2181.0;
    } else {
     s0+=237.0;
     s1+=493.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i46<0.0008415329502895474){
   if(i32<1.0462350845336914){
    s0+=55.0;
   } else {
    if(i32<1.1264252662658691){
     s0+=5.0;
     s1+=2165.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i30<1.0306843519210815){
    if(i33<0.000967716216109693){
     s1+=84.0;
    } else {
     s0+=1868.0;
     s1+=20.0;
    }
   } else {
    if(i28<0.0005155503749847412){
     s1+=82.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i19<0.9589747190475464){
   if(i37<0.0004399136232677847){
    if(i8<0.021103210747241974){
     s0+=41.0;
     s1+=21.0;
    } else {
     s0+=10.0;
     s1+=68.0;
    }
   } else {
    s1+=94.0;
   }
  } else {
   if(i32<1.1279253959655762){
    if(i33<0.004434250295162201){
     s0+=8.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i27<1.629280686378479){
     s0+=17.0;
     s1+=13067.0;
    } else {
     s0+=29.0;
     s1+=610.0;
    }
   }
  }
 }
}
if(i2<1.0038731098175049){
 if(i39<0.1840275228023529){
  if(i5<0.0003133416175842285){
   if(i28<5.21540641784668e-05){
    if(i11<1.0046651363372803){
     s0+=72358.0;
     s1+=685.0;
    } else {
     s0+=37.0;
     s1+=44.0;
    }
   } else {
    if(i8<0.003551862668246031){
     s0+=25349.0;
     s1+=532.0;
    } else {
     s0+=6427.0;
     s1+=1811.0;
    }
   }
  } else {
   if(i15<0.0020018317736685276){
    if(i25<0.0023689973168075085){
     s0+=4016.0;
     s1+=41.0;
    } else {
     s0+=102.0;
     s1+=121.0;
    }
   } else {
    if(i14<0.00037052202969789505){
     s0+=1651.0;
     s1+=2139.0;
    } else {
     s0+=2362.0;
     s1+=449.0;
    }
   }
  }
 } else {
  if(i16<0.04882606863975525){
   if(i26<-0.0007804930210113525){
    if(i48<1.002563714981079){
     s0+=200.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=33.0;
   }
  } else {
   if(i38<1.1250720024108887){
    if(i30<0.9481116533279419){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i3<-4.647804598789662e-05){
     s0+=2.0;
     s1+=801.0;
    } else {
     s0+=10.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i38<1.1546916961669922){
  if(i28<0.0005888640880584717){
   if(i2<1.0053155422210693){
    if(i8<0.0036903242580592632){
     s0+=316.0;
     s1+=15.0;
    } else {
     s0+=80.0;
     s1+=798.0;
    }
   } else {
    if(i50<-4.1620205593062565e-06){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=2890.0;
    }
   }
  } else {
   if(i24<0.0024204314686357975){
    s0+=3326.0;
   } else {
    if(i2<1.0062379837036133){
     s0+=239.0;
     s1+=177.0;
    } else {
     s0+=14.0;
     s1+=1698.0;
    }
   }
  }
 } else {
  if(i24<0.0020877618808299303){
   s0+=182.0;
  } else {
   if(i56<0.01229858584702015){
    if(i60<0.0031683724373579025){
     s0+=17.0;
     s1+=11746.0;
    } else {
     s0+=6.0;
     s1+=49.0;
    }
   } else {
    if(i25<0.015671629458665848){
     s0+=17.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   }
  }
 }
}
if(i10<1.0108646154403687){
 if(i5<0.0004730820655822754){
  if(i22<1.0169880390167236){
   if(i45<0.20635947585105896){
    if(i31<0.0007107785204425454){
     s0+=78489.0;
     s1+=450.0;
    } else {
     s0+=29098.0;
     s1+=3104.0;
    }
   } else {
    if(i21<0.033865123987197876){
     s0+=66.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=195.0;
    }
   }
  } else {
   if(i21<0.028688836842775345){
    if(i13<-0.0029236674308776855){
     s1+=23.0;
    } else {
     s0+=547.0;
     s1+=51.0;
    }
   } else {
    if(i3<-2.445570135023445e-05){
     s0+=14.0;
     s1+=345.0;
    } else {
     s0+=65.0;
    }
   }
  }
 } else {
  if(i21<0.013978991657495499){
   if(i21<0.007715609855949879){
    if(i42<-8.761006029089913e-06){
     s0+=31.0;
     s1+=229.0;
    } else {
     s0+=4971.0;
     s1+=355.0;
    }
   } else {
    if(i27<1.116804838180542){
     s0+=42.0;
     s1+=398.0;
    } else {
     s0+=834.0;
     s1+=127.0;
    }
   }
  } else {
   if(i18<0.08529165387153625){
    if(i2<1.0011005401611328){
     s0+=728.0;
     s1+=126.0;
    } else {
     s0+=233.0;
     s1+=547.0;
    }
   } else {
    if(i3<-7.526853732997552e-05){
     s0+=73.0;
     s1+=3032.0;
    } else {
     s0+=378.0;
     s1+=1226.0;
    }
   }
  }
 }
} else {
 if(i34<1.1728172302246094){
  if(i27<1.1180615425109863){
   s1+=1890.0;
  } else {
   if(i27<1.1843671798706055){
    s0+=1005.0;
   } else {
    if(i0<-1.1861324310302734e-05){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i7<1.001432180404663){
   if(i33<0.012291060760617256){
    if(i55<1.0019686222076416){
     s0+=100.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=99.0;
   }
  } else {
   if(i43<0.00033745780820026994){
    if(i32<1.234963297843933){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i32<1.1368286609649658){
     s0+=25.0;
     s1+=60.0;
    } else {
     s0+=25.0;
     s1+=11784.0;
    }
   }
  }
 }
}
if(i5<0.0005705952644348145){
 if(i15<0.0017227325588464737){
  if(i33<0.00033451017225161195){
   if(i30<0.9945299029350281){
    if(i31<0.0006530655082315207){
     s0+=1580.0;
     s1+=110.0;
    } else {
     s0+=57.0;
     s1+=268.0;
    }
   } else {
    if(i6<0.995591402053833){
     s0+=426.0;
     s1+=115.0;
    } else {
     s0+=16573.0;
     s1+=193.0;
    }
   }
  } else {
   if(i32<1.1354830265045166){
    if(i33<0.000663339567836374){
     s0+=7927.0;
     s1+=99.0;
    } else {
     s0+=54883.0;
     s1+=3.0;
    }
   } else {
    if(i3<-3.045218727493193e-05){
     s0+=819.0;
     s1+=176.0;
    } else {
     s0+=6923.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i27<1.1164028644561768){
   if(i25<0.00021867037867195904){
    if(i29<0.0002253676939290017){
     s0+=890.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i48<0.9997754096984863){
     s0+=849.0;
     s1+=44.0;
    } else {
     s0+=194.0;
     s1+=2336.0;
    }
   }
  } else {
   if(i17<1.0223532915115356){
    if(i2<1.001695156097412){
     s0+=18184.0;
     s1+=843.0;
    } else {
     s0+=116.0;
     s1+=252.0;
    }
   } else {
    if(i7<1.0029770135879517){
     s0+=61.0;
     s1+=566.0;
    } else {
     s0+=66.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i25<0.0026339031755924225){
  if(i8<0.004016408231109381){
   if(i14<0.00020690720702987164){
    if(i11<1.006021499633789){
     s0+=117.0;
     s1+=9.0;
    } else {
     s0+=11.0;
     s1+=705.0;
    }
   } else {
    s0+=4487.0;
   }
  } else {
   if(i54<0.0008129281923174858){
    if(i27<1.1180615425109863){
     s0+=21.0;
     s1+=2265.0;
    } else {
     s0+=36.0;
     s1+=4.0;
    }
   } else {
    if(i15<0.0031070243567228317){
     s0+=188.0;
     s1+=199.0;
    } else {
     s0+=260.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i35<1.0743656158447266){
   if(i42<1.089385386876529e-05){
    if(i35<1.0738091468811035){
     s0+=7.0;
     s1+=216.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   } else {
    if(i11<1.0114078521728516){
     s0+=1055.0;
     s1+=134.0;
    } else {
     s0+=27.0;
     s1+=66.0;
    }
   }
  } else {
   if(i20<1.002331018447876){
    if(i0<-8.165836334228516e-06){
     s0+=242.0;
     s1+=182.0;
    } else {
     s0+=221.0;
     s1+=2076.0;
    }
   } else {
    if(i47<0.0003149037656839937){
     s0+=82.0;
     s1+=13522.0;
    } else {
     s0+=20.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i1<0.0009757280349731445){
 if(i23<0.20787692070007324){
  if(i39<0.014394126832485199){
   if(i10<1.0069246292114258){
    if(i9<0.9940696954727173){
     s0+=2510.0;
     s1+=323.0;
    } else {
     s0+=73585.0;
     s1+=736.0;
    }
   } else {
    if(i34<1.094508409500122){
     s0+=117.0;
     s1+=361.0;
    } else {
     s0+=1128.0;
     s1+=35.0;
    }
   }
  } else {
   if(i3<-6.822375871706754e-05){
    if(i2<0.9992678165435791){
     s0+=1438.0;
     s1+=252.0;
    } else {
     s0+=430.0;
     s1+=1366.0;
    }
   } else {
    if(i20<0.9950181245803833){
     s0+=25753.0;
     s1+=417.0;
    } else {
     s0+=9274.0;
     s1+=2953.0;
    }
   }
  }
 } else {
  if(i42<5.800891813123599e-06){
   if(i15<0.0027676376048475504){
    s0+=146.0;
   } else {
    s1+=90.0;
   }
  } else {
   if(i0<-1.3470649719238281e-05){
    if(i3<-4.173230627202429e-05){
     s0+=6.0;
     s1+=315.0;
    } else {
     s0+=173.0;
     s1+=16.0;
    }
   } else {
    if(i57<-2.768037347777863e-06){
     s0+=12.0;
     s1+=1139.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i10<1.0144739151000977){
  if(i33<0.0023210193030536175){
   if(i14<0.0002586987102404237){
    if(i52<5.143880844116211e-05){
     s1+=1345.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i17<1.0430774688720703){
     s0+=1804.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i13<-0.002286672592163086){
    if(i15<0.005533963441848755){
     s0+=82.0;
     s1+=31.0;
    } else {
     s0+=6.0;
     s1+=283.0;
    }
   } else {
    if(i7<0.9966373443603516){
     s0+=3.0;
    } else {
     s0+=29.0;
     s1+=2529.0;
    }
   }
  }
 } else {
  if(i3<-6.203705561347306e-05){
   if(i50<-6.352986019919626e-06){
    s0+=20.0;
   } else {
    s1+=12009.0;
   }
  } else {
   if(i50<-4.598834493663162e-06){
    s0+=51.0;
   } else {
    s1+=75.0;
   }
  }
 }
}
if(i3<-0.00010383373592048883){
 if(i17<0.9025468826293945){
  if(i39<0.14373409748077393){
   if(i32<1.2760474681854248){
    s1+=8.0;
   } else {
    if(i71<-0.0169755220413208){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=358.0;
     s1+=19.0;
    }
   }
  } else {
   if(i54<0.007836120203137398){
    if(i33<0.013202269561588764){
     s1+=21.0;
    } else {
     s0+=27.0;
     s1+=17.0;
    }
   } else {
    if(i22<0.8069381713867188){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=287.0;
    }
   }
  }
 } else {
  if(i14<0.0007054299348965287){
   if(i65<-0.007366567850112915){
    if(i34<1.5545397996902466){
     s0+=112.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=19.0;
    }
   } else {
    if(i18<0.039630740880966187){
     s0+=52.0;
     s1+=96.0;
    } else {
     s0+=68.0;
     s1+=14529.0;
    }
   }
  } else {
   s0+=163.0;
  }
 }
} else {
 if(i28<0.00013369321823120117){
  if(i27<1.1164028644561768){
   if(i21<0.007162939291447401){
    if(i22<0.9931643009185791){
     s0+=1176.0;
     s1+=227.0;
    } else {
     s0+=17387.0;
     s1+=124.0;
    }
   } else {
    if(i11<0.9982544183731079){
     s0+=6322.0;
     s1+=176.0;
    } else {
     s0+=407.0;
     s1+=921.0;
    }
   }
  } else {
   if(i30<1.0245985984802246){
    if(i54<0.005290295463055372){
     s0+=60677.0;
     s1+=94.0;
    } else {
     s0+=1038.0;
     s1+=116.0;
    }
   } else {
    if(i15<0.002551592420786619){
     s0+=410.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i4<1.901388168334961e-05){
   if(i32<1.0903346538543701){
    if(i15<0.0015609259717166424){
     s0+=3016.0;
     s1+=21.0;
    } else {
     s0+=1965.0;
     s1+=1374.0;
    }
   } else {
    if(i40<1.0355470180511475){
     s0+=15932.0;
     s1+=706.0;
    } else {
     s0+=111.0;
     s1+=122.0;
    }
   }
  } else {
   if(i8<0.0041158124804496765){
    if(i2<1.007906198501587){
     s0+=5143.0;
     s1+=261.0;
    } else {
     s0+=599.0;
     s1+=422.0;
    }
   } else {
    if(i13<-0.0013718008995056152){
     s0+=1310.0;
     s1+=714.0;
    } else {
     s0+=309.0;
     s1+=3808.0;
    }
   }
  }
 }
}
if(i19<1.0130431652069092){
 if(i7<1.0026252269744873){
  if(i31<0.000721678719855845){
   if(i60<0.0001653643703320995){
    if(i43<0.0019523482769727707){
     s0+=65123.0;
     s1+=128.0;
    } else {
     s0+=703.0;
     s1+=40.0;
    }
   } else {
    if(i54<0.00014497115625999868){
     s0+=1261.0;
     s1+=178.0;
    } else {
     s0+=12781.0;
     s1+=157.0;
    }
   }
  } else {
   if(i25<0.0010163268307223916){
    if(i25<0.00020573861547745764){
     s0+=1960.0;
     s1+=4.0;
    } else {
     s0+=1315.0;
     s1+=2944.0;
    }
   } else {
    if(i54<0.01234334334731102){
     s0+=26817.0;
     s1+=905.0;
    } else {
     s0+=273.0;
     s1+=490.0;
    }
   }
  }
 } else {
  if(i21<0.029943767935037613){
   if(i11<1.0110046863555908){
    if(i24<0.0010723702143877745){
     s0+=750.0;
     s1+=706.0;
    } else {
     s0+=3688.0;
     s1+=557.0;
    }
   } else {
    if(i61<0.5716603994369507){
     s0+=33.0;
     s1+=476.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   }
  } else {
   if(i35<1.052932858467102){
    if(i1<0.0006917715072631836){
     s0+=224.0;
     s1+=32.0;
    } else {
     s0+=12.0;
     s1+=48.0;
    }
   } else {
    if(i26<-0.0005303919315338135){
     s0+=140.0;
     s1+=273.0;
    } else {
     s0+=78.0;
     s1+=3429.0;
    }
   }
  }
 }
} else {
 if(i3<-6.848825432825834e-05){
  if(i14<0.0007150453748181462){
   if(i5<3.37064266204834e-05){
    if(i31<0.0010683659929782152){
     s0+=17.0;
    } else {
     s1+=60.0;
    }
   } else {
    if(i6<1.013347864151001){
     s0+=19.0;
     s1+=521.0;
    } else {
     s0+=17.0;
     s1+=12259.0;
    }
   }
  } else {
   s0+=174.0;
  }
 } else {
  if(i8<0.004418090917170048){
   if(i34<1.0900044441223145){
    s1+=187.0;
   } else {
    if(i23<0.21218019723892212){
     s0+=1166.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<1.0007095336914062){
    if(i67<0.0031807422637939453){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i21<0.00802331231534481){
     s0+=43.0;
     s1+=160.0;
    } else {
     s0+=3.0;
     s1+=611.0;
    }
   }
  }
 }
}
if(i22<1.0170488357543945){
 if(i4<3.713369369506836e-05){
  if(i35<1.1705610752105713){
   if(i31<0.0007071393774822354){
    if(i15<0.0020839092321693897){
     s0+=79342.0;
     s1+=444.0;
    } else {
     s0+=126.0;
     s1+=33.0;
    }
   } else {
    if(i27<1.1164028644561768){
     s0+=3774.0;
     s1+=3277.0;
    } else {
     s0+=29275.0;
     s1+=1351.0;
    }
   }
  } else {
   if(i47<9.403617877978832e-05){
    if(i8<0.006270567886531353){
     s0+=296.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i18<0.0031520426273345947){
     s0+=48.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=683.0;
    }
   }
  }
 } else {
  if(i32<1.170027494430542){
   if(i24<0.0009904054459184408){
    if(i36<1.0556583404541016){
     s0+=72.0;
    } else {
     s1+=916.0;
    }
   } else {
    if(i56<0.0010812883265316486){
     s0+=1516.0;
     s1+=39.0;
    } else {
     s0+=77.0;
     s1+=190.0;
    }
   }
  } else {
   if(i16<0.07186341285705566){
    if(i71<-0.0023517608642578125){
     s0+=116.0;
     s1+=349.0;
    } else {
     s0+=243.0;
     s1+=25.0;
    }
   } else {
    if(i19<0.9806927442550659){
     s0+=130.0;
     s1+=771.0;
    } else {
     s0+=15.0;
     s1+=1985.0;
    }
   }
  }
 }
} else {
 if(i3<-6.244284304557368e-05){
  if(i9<1.0205497741699219){
   if(i8<0.004950361326336861){
    if(i28<0.00045794248580932617){
     s0+=26.0;
     s1+=137.0;
    } else {
     s0+=151.0;
     s1+=9.0;
    }
   } else {
    if(i50<-5.6244703046104405e-06){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=1366.0;
    }
   }
  } else {
   if(i5<-4.5359134674072266e-05){
    if(i63<4.083228304807562e-06){
     s0+=13.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i8<0.0027919397689402103){
     s0+=22.0;
     s1+=167.0;
    } else {
     s0+=1.0;
     s1+=11426.0;
    }
   }
  }
 } else {
  if(i8<0.005330480635166168){
   if(i36<1.0905578136444092){
    s1+=214.0;
   } else {
    if(i47<0.00017513772763777524){
     s0+=1229.0;
     s1+=12.0;
    } else {
     s0+=33.0;
     s1+=7.0;
    }
   }
  } else {
   if(i24<0.011303257197141647){
    if(i0<-6.332993507385254e-05){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=727.0;
    }
   } else {
    s0+=25.0;
   }
  }
 }
}
if(i19<1.013041615486145){
 if(i8<0.01397714950144291){
  if(i48<1.001707911491394){
   if(i15<0.0016920282505452633){
    if(i43<0.0004904269590042531){
     s0+=29058.0;
     s1+=691.0;
    } else {
     s0+=55931.0;
     s1+=165.0;
    }
   } else {
    if(i24<0.0009542872430756688){
     s0+=2555.0;
     s1+=2721.0;
    } else {
     s0+=15371.0;
     s1+=379.0;
    }
   }
  } else {
   if(i15<0.0012425514869391918){
    if(i13<0.0013934969902038574){
     s0+=5008.0;
     s1+=11.0;
    } else {
     s0+=19.0;
     s1+=85.0;
    }
   } else {
    if(i36<1.0958912372589111){
     s0+=99.0;
     s1+=610.0;
    } else {
     s0+=5976.0;
     s1+=1926.0;
    }
   }
  }
 } else {
  if(i23<0.05816805362701416){
   if(i7<1.0058989524841309){
    if(i70<0.03408977389335632){
     s0+=812.0;
     s1+=19.0;
    } else {
     s0+=135.0;
     s1+=117.0;
    }
   } else {
    if(i35<1.024194598197937){
     s0+=7.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=107.0;
    }
   }
  } else {
   if(i2<0.9985315203666687){
    if(i27<1.447718858718872){
     s0+=67.0;
     s1+=50.0;
    } else {
     s0+=24.0;
     s1+=321.0;
    }
   } else {
    if(i65<-0.010923922061920166){
     s0+=22.0;
     s1+=13.0;
    } else {
     s0+=25.0;
     s1+=3055.0;
    }
   }
  }
 }
} else {
 if(i13<0.001973271369934082){
  if(i3<-4.633823846234009e-05){
   if(i14<0.0007137873326428235){
    if(i32<1.6238889694213867){
     s0+=110.0;
     s1+=2802.0;
    } else {
     s0+=76.0;
     s1+=15.0;
    }
   } else {
    s0+=471.0;
   }
  } else {
   if(i35<1.0592126846313477){
    if(i36<1.132939338684082){
     s1+=112.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i21<0.0341838002204895){
     s0+=781.0;
     s1+=141.0;
    } else {
     s0+=10.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i7<0.9996016025543213){
   if(i48<0.9969416260719299){
    s0+=10.0;
   } else {
    s1+=52.0;
   }
  } else {
   if(i21<0.004514245316386223){
    if(i14<0.0016209740424528718){
     s1+=365.0;
    } else {
     s0+=7.0;
    }
   } else {
    s1+=10402.0;
   }
  }
 }
}
if(i10<1.0101584196090698){
 if(i35<1.1402404308319092){
  if(i28<0.00011008977890014648){
   if(i29<0.0009461023146286607){
    if(i21<0.00722736120223999){
     s0+=20440.0;
     s1+=300.0;
    } else {
     s0+=6091.0;
     s1+=705.0;
    }
   } else {
    if(i64<0.09316286444664001){
     s0+=53459.0;
     s1+=79.0;
    } else {
     s0+=2840.0;
     s1+=123.0;
    }
   }
  } else {
   if(i4<3.975629806518555e-05){
    if(i8<0.004054876044392586){
     s0+=23613.0;
     s1+=749.0;
    } else {
     s0+=6208.0;
     s1+=3516.0;
    }
   } else {
    if(i25<0.0028102677315473557){
     s0+=545.0;
     s1+=162.0;
    } else {
     s0+=582.0;
     s1+=1166.0;
    }
   }
  }
 } else {
  if(i57<-2.8685540200967807e-06){
   if(i32<1.170027494430542){
    if(i60<0.0003093516279477626){
     s0+=370.0;
     s1+=11.0;
    } else {
     s0+=13.0;
     s1+=42.0;
    }
   } else {
    if(i18<0.007647126913070679){
     s0+=100.0;
     s1+=36.0;
    } else {
     s0+=71.0;
     s1+=2916.0;
    }
   }
  } else {
   if(i63<6.96547749612364e-06){
    if(i6<1.014837384223938){
     s0+=662.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.0003877985873259604){
     s1+=1.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i8<0.003480808809399605){
  if(i47<-2.3383083316730335e-05){
   if(i52<2.2113323211669922e-05){
    if(i31<0.0009801241103559732){
     s0+=11.0;
     s1+=543.0;
    } else {
     s0+=74.0;
     s1+=11.0;
    }
   } else {
    if(i16<0.2637109160423279){
     s0+=87.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i27<1.0986645221710205){
    s1+=45.0;
   } else {
    if(i14<0.00022670577163808048){
     s0+=81.0;
     s1+=19.0;
    } else {
     s0+=1086.0;
    }
   }
  }
 } else {
  if(i25<0.0026127854362130165){
   if(i47<-9.071462045540102e-06){
    if(i44<0.9990830421447754){
     s0+=35.0;
    } else {
     s0+=16.0;
     s1+=1385.0;
    }
   } else {
    if(i50<-3.085024218307808e-06){
     s0+=241.0;
     s1+=5.0;
    } else {
     s0+=15.0;
     s1+=411.0;
    }
   }
  } else {
   if(i1<0.00017368793487548828){
    if(i58<0.028560439124703407){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   } else {
    if(i51<-9.590241461410187e-06){
     s1+=11903.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i12<1.0170331001281738){
 if(i1<0.0010585188865661621){
  if(i46<0.008351583033800125){
   if(i21<0.006775497458875179){
    if(i15<0.0011067574378103018){
     s0+=59598.0;
     s1+=169.0;
    } else {
     s0+=11090.0;
     s1+=466.0;
    }
   } else {
    if(i0<-2.4974346160888672e-05){
     s0+=36417.0;
     s1+=795.0;
    } else {
     s0+=4497.0;
     s1+=3631.0;
    }
   }
  } else {
   if(i21<0.0383315235376358){
    if(i18<0.13273000717163086){
     s0+=1687.0;
     s1+=35.0;
    } else {
     s0+=86.0;
     s1+=72.0;
    }
   } else {
    if(i19<0.9292052984237671){
     s0+=156.0;
     s1+=45.0;
    } else {
     s0+=56.0;
     s1+=1286.0;
    }
   }
  }
 } else {
  if(i11<1.0108712911605835){
   if(i66<0.00035555570502765477){
    if(i44<0.9997967481613159){
     s0+=17.0;
    } else {
     s0+=24.0;
     s1+=758.0;
    }
   } else {
    if(i58<0.037243522703647614){
     s0+=1058.0;
     s1+=247.0;
    } else {
     s0+=32.0;
     s1+=720.0;
    }
   }
  } else {
   if(i0<0.0007001161575317383){
    if(i51<-2.412448520772159e-05){
     s0+=40.0;
     s1+=2036.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   } else {
    if(i5<0.003292381763458252){
     s0+=10.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i57<-3.45427042702795e-06){
  if(i0<-2.4259090423583984e-05){
   if(i8<0.010403776541352272){
    if(i42<3.438337444094941e-05){
     s0+=9.0;
     s1+=23.0;
    } else {
     s0+=304.0;
     s1+=2.0;
    }
   } else {
    if(i58<0.047417446970939636){
     s0+=1.0;
    } else {
     s1+=70.0;
    }
   }
  } else {
   if(i50<-7.397180525003932e-06){
    s0+=163.0;
   } else {
    if(i14<0.0007038103649392724){
     s0+=246.0;
     s1+=14155.0;
    } else {
     s0+=348.0;
    }
   }
  }
 } else {
  if(i53<1.0015621185302734){
   if(i47<7.012260175542906e-05){
    s0+=445.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i42<2.022772423515562e-05){
    s0+=26.0;
   } else {
    if(i39<0.05024242401123047){
     s0+=2.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i1<0.0009695291519165039){
 if(i17<1.0196888446807861){
  if(i39<0.1840798258781433){
   if(i31<0.0007107793353497982){
    if(i54<0.0020458134822547436){
     s0+=77518.0;
     s1+=433.0;
    } else {
     s0+=2500.0;
     s1+=86.0;
    }
   } else {
    if(i0<-3.3915042877197266e-05){
     s0+=25248.0;
     s1+=699.0;
    } else {
     s0+=8057.0;
     s1+=4367.0;
    }
   }
  } else {
   if(i26<-0.0009407699108123779){
    if(i35<1.1461987495422363){
     s0+=218.0;
     s1+=3.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i59<0.8969999551773071){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=658.0;
    }
   }
  }
 } else {
  if(i5<0.00026857852935791016){
   if(i3<-5.922854325035587e-05){
    if(i45<0.12573271989822388){
     s0+=39.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=172.0;
    }
   } else {
    if(i13<-0.0029694437980651855){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=434.0;
     s1+=14.0;
    }
   }
  } else {
   if(i18<0.10436439514160156){
    if(i5<0.0007460117340087891){
     s0+=21.0;
     s1+=72.0;
    } else {
     s0+=121.0;
     s1+=7.0;
    }
   } else {
    if(i55<1.0038378238677979){
     s0+=70.0;
     s1+=1222.0;
    } else {
     s0+=129.0;
     s1+=339.0;
    }
   }
  }
 }
} else {
 if(i10<1.0144740343093872){
  if(i29<0.0019525040406733751){
   if(i59<1.048647403717041){
    if(i24<0.0010868094395846128){
     s0+=69.0;
     s1+=1088.0;
    } else {
     s0+=311.0;
    }
   } else {
    if(i36<1.116804838180542){
     s0+=42.0;
     s1+=209.0;
    } else {
     s0+=1439.0;
    }
   }
  } else {
   if(i32<1.1232807636260986){
    if(i50<-2.157192739105085e-06){
     s0+=58.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i23<0.03509262204170227){
     s0+=54.0;
     s1+=56.0;
    } else {
     s0+=49.0;
     s1+=2867.0;
    }
   }
  }
 } else {
  if(i32<1.1133074760437012){
   if(i28<0.0006797313690185547){
    s1+=912.0;
   } else {
    s0+=55.0;
   }
  } else {
   s1+=11144.0;
  }
 }
}
if(i3<-8.856481872498989e-05){
 if(i26<-0.0005966126918792725){
  if(i70<-0.0025493954308331013){
   if(i16<0.09584677219390869){
    s0+=11.0;
   } else {
    s1+=52.0;
   }
  } else {
   if(i45<0.04870885610580444){
    if(i21<0.055532753467559814){
     s0+=589.0;
     s1+=11.0;
    } else {
     s0+=43.0;
     s1+=37.0;
    }
   } else {
    if(i22<0.8700824975967407){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i31<0.003834203816950321){
   if(i18<0.04125577211380005){
    if(i13<-0.0016331076622009277){
     s0+=210.0;
     s1+=68.0;
    } else {
     s0+=13.0;
     s1+=85.0;
    }
   } else {
    if(i50<-6.422751084755873e-06){
     s0+=159.0;
    } else {
     s0+=67.0;
     s1+=15696.0;
    }
   }
  } else {
   if(i62<-0.0028023819904774427){
    s1+=16.0;
   } else {
    s0+=152.0;
   }
  }
 }
} else {
 if(i7<1.0023242235183716){
  if(i8<0.0036318339407444){
   if(i33<0.0005676425062119961){
    if(i60<0.00016662364942021668){
     s0+=22555.0;
     s1+=219.0;
    } else {
     s0+=2221.0;
     s1+=569.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=59683.0;
     s1+=99.0;
    } else {
     s0+=1960.0;
     s1+=89.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    if(i32<1.0520790815353394){
     s0+=3108.0;
     s1+=232.0;
    } else {
     s0+=87.0;
     s1+=1967.0;
    }
   } else {
    if(i24<0.0006566371885128319){
     s1+=375.0;
    } else {
     s0+=19111.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i55<1.0031956434249878){
   if(i14<0.0005417561624199152){
    if(i5<0.0004826188087463379){
     s0+=931.0;
     s1+=152.0;
    } else {
     s0+=432.0;
     s1+=2953.0;
    }
   } else {
    if(i29<0.013355937786400318){
     s0+=1369.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=44.0;
    }
   }
  } else {
   if(i58<0.032052479684352875){
    if(i56<0.001328086480498314){
     s0+=2964.0;
     s1+=58.0;
    } else {
     s0+=210.0;
     s1+=123.0;
    }
   } else {
    if(i20<0.990481436252594){
     s0+=455.0;
     s1+=66.0;
    } else {
     s0+=303.0;
     s1+=517.0;
    }
   }
  }
 }
}
if(i7<1.0026392936706543){
 if(i16<0.20532405376434326){
  if(i33<0.001059089321643114){
   if(i51<-2.0936906366841868e-05){
    s1+=308.0;
   } else {
    if(i18<0.05897906422615051){
     s0+=29747.0;
     s1+=1716.0;
    } else {
     s0+=2430.0;
     s1+=1262.0;
    }
   }
  } else {
   if(i3<-7.333670509979129e-05){
    if(i12<1.0218753814697266){
     s0+=1473.0;
     s1+=366.0;
    } else {
     s0+=16.0;
     s1+=210.0;
    }
   } else {
    if(i17<1.021349310874939){
     s0+=76374.0;
     s1+=761.0;
    } else {
     s0+=261.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i58<0.033518239855766296){
   if(i53<1.0018260478973389){
    if(i3<-8.672634430695325e-05){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=121.0;
    }
   } else {
    if(i38<1.1188786029815674){
     s0+=16.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   }
  } else {
   if(i57<-2.563592715887353e-06){
    if(i8<0.004110750742256641){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=831.0;
    }
   } else {
    if(i51<-8.955548764788546e-06){
     s1+=4.0;
    } else {
     s0+=61.0;
    }
   }
  }
 }
} else {
 if(i25<0.002601012121886015){
  if(i46<0.0008803547825664282){
   if(i27<1.067186713218689){
    s0+=753.0;
   } else {
    if(i34<1.1180615425109863){
     s0+=16.0;
     s1+=2170.0;
    } else {
     s0+=153.0;
    }
   }
  } else {
   if(i33<0.0010033297585323453){
    s1+=114.0;
   } else {
    if(i29<0.0019150199368596077){
     s0+=3036.0;
     s1+=4.0;
    } else {
     s0+=219.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i13<-0.0017081499099731445){
   if(i41<1.08499276638031){
    if(i35<1.0850330591201782){
     s0+=1070.0;
     s1+=260.0;
    } else {
     s0+=146.0;
     s1+=249.0;
    }
   } else {
    if(i32<1.170027494430542){
     s0+=162.0;
     s1+=74.0;
    } else {
     s0+=57.0;
     s1+=808.0;
    }
   }
  } else {
   if(i8<0.0034181163646280766){
    if(i10<1.0136175155639648){
     s0+=378.0;
     s1+=48.0;
    } else {
     s1+=204.0;
    }
   } else {
    if(i34<1.1462047100067139){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=73.0;
     s1+=14458.0;
    }
   }
  }
 }
}
if(i12<1.0165542364120483){
 if(i54<0.002735758665949106){
  if(i6<1.013148546218872){
   if(i1<0.0012297630310058594){
    if(i33<0.0010463539510965347){
     s0+=32038.0;
     s1+=3141.0;
    } else {
     s0+=76340.0;
     s1+=1112.0;
    }
   } else {
    if(i8<0.0026027392596006393){
     s0+=374.0;
     s1+=75.0;
    } else {
     s0+=232.0;
     s1+=1016.0;
    }
   }
  } else {
   if(i41<1.0593013763427734){
    if(i55<1.0041134357452393){
     s0+=14.0;
     s1+=549.0;
    } else {
     s0+=24.0;
     s1+=10.0;
    }
   } else {
    if(i33<0.0023186157923191786){
     s0+=523.0;
     s1+=73.0;
    } else {
     s0+=49.0;
     s1+=369.0;
    }
   }
  }
 } else {
  if(i0<8.553266525268555e-06){
   if(i45<0.12969771027565002){
    if(i37<-0.00028002267936244607){
     s0+=303.0;
     s1+=327.0;
    } else {
     s0+=4219.0;
     s1+=169.0;
    }
   } else {
    if(i31<0.0009957416914403439){
     s0+=198.0;
     s1+=12.0;
    } else {
     s0+=128.0;
     s1+=508.0;
    }
   }
  } else {
   if(i33<0.0023728683590888977){
    if(i5<0.0011857450008392334){
     s0+=68.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i19<0.957144558429718){
     s0+=160.0;
     s1+=248.0;
    } else {
     s0+=98.0;
     s1+=2561.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i1<0.00021713972091674805){
   if(i31<0.002145394217222929){
    if(i7<1.0001132488250732){
     s0+=414.0;
    } else {
     s0+=428.0;
     s1+=216.0;
    }
   } else {
    if(i51<-2.3542965209344402e-05){
     s1+=208.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i3<-3.4015080018434674e-05){
    if(i36<1.7041046619415283){
     s0+=137.0;
     s1+=13665.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i23<0.19574236869812012){
     s0+=128.0;
     s1+=51.0;
    } else {
     s0+=1.0;
     s1+=73.0;
    }
   }
  }
 } else {
  s0+=560.0;
 }
}
if(i7<1.0026252269744873){
 if(i40<1.0291500091552734){
  if(i9<1.0091698169708252){
   if(i39<0.20811641216278076){
    if(i8<0.003448149189352989){
     s0+=84315.0;
     s1+=838.0;
    } else {
     s0+=23911.0;
     s1+=2792.0;
    }
   } else {
    if(i10<0.9414321184158325){
     s0+=77.0;
    } else {
     s1+=226.0;
    }
   }
  } else {
   if(i46<0.0007657697424292564){
    if(i27<1.117018461227417){
     s0+=3.0;
     s1+=590.0;
    } else {
     s0+=84.0;
    }
   } else {
    if(i29<0.014221860095858574){
     s0+=1164.0;
     s1+=100.0;
    } else {
     s1+=37.0;
    }
   }
  }
 } else {
  if(i57<-3.2135201308847172e-06){
   if(i40<1.0472462177276611){
    if(i17<1.0197314023971558){
     s0+=194.0;
     s1+=103.0;
    } else {
     s0+=54.0;
     s1+=312.0;
    }
   } else {
    if(i13<-0.005048215389251709){
     s0+=12.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=562.0;
    }
   }
  } else {
   if(i31<0.0010387052316218615){
    s0+=577.0;
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i38<1.1698036193847656){
  if(i18<0.1837354302406311){
   if(i13<0.001287221908569336){
    if(i34<1.1757044792175293){
     s0+=3601.0;
     s1+=571.0;
    } else {
     s0+=1363.0;
     s1+=1150.0;
    }
   } else {
    if(i14<0.00038622834836132824){
     s0+=17.0;
     s1+=2747.0;
    } else {
     s0+=588.0;
     s1+=9.0;
    }
   }
  } else {
   if(i29<0.0018324223347008228){
    if(i50<-3.052508873224724e-06){
     s0+=140.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i3<-5.0298756832489744e-05){
     s0+=3.0;
     s1+=2325.0;
    } else {
     s0+=90.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i19<0.9494207501411438){
   if(i41<1.0486202239990234){
    if(i57<-2.302850771229714e-05){
     s1+=32.0;
    } else {
     s0+=228.0;
     s1+=26.0;
    }
   } else {
    if(i31<0.004023848567157984){
     s0+=2.0;
     s1+=54.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i12<0.9043293595314026){
    if(i23<0.02750977873802185){
     s0+=28.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=40.0;
    }
   } else {
    if(i45<0.0003725588321685791){
     s0+=24.0;
     s1+=119.0;
    } else {
     s0+=13.0;
     s1+=11558.0;
    }
   }
  }
 }
}
if(i3<-9.841138671617955e-05){
 if(i23<0.041282445192337036){
  if(i42<-2.5497683964204043e-08){
   if(i34<1.109985589981079){
    s0+=1.0;
   } else {
    s1+=51.0;
   }
  } else {
   if(i21<0.05594334378838539){
    if(i9<0.9554629325866699){
     s0+=510.0;
     s1+=6.0;
    } else {
     s0+=59.0;
     s1+=29.0;
    }
   } else {
    if(i35<1.1200954914093018){
     s0+=54.0;
     s1+=4.0;
    } else {
     s0+=18.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i32<1.1400820016860962){
   if(i9<1.016052007675171){
    if(i49<0.0735010877251625){
     s0+=224.0;
     s1+=63.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i50<-5.190211595618166e-06){
     s0+=32.0;
    } else {
     s1+=670.0;
    }
   }
  } else {
   if(i9<0.9227445125579834){
    if(i48<1.0026037693023682){
     s0+=11.0;
     s1+=36.0;
    } else {
     s0+=35.0;
     s1+=7.0;
    }
   } else {
    if(i59<0.9167795181274414){
     s0+=8.0;
     s1+=21.0;
    } else {
     s0+=27.0;
     s1+=14233.0;
    }
   }
  }
 }
} else {
 if(i7<1.0023901462554932){
  if(i15<0.001728216651827097){
   if(i51<-2.0037701688124798e-05){
    if(i24<0.0016564081888645887){
     s0+=1.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i24<0.0005609223735518754){
     s0+=28377.0;
     s1+=756.0;
    } else {
     s0+=60532.0;
     s1+=180.0;
    }
   }
  } else {
   if(i22<1.0089237689971924){
    if(i48<0.9998056888580322){
     s0+=7069.0;
     s1+=91.0;
    } else {
     s0+=12265.0;
     s1+=2283.0;
    }
   } else {
    if(i27<1.1164028644561768){
     s0+=113.0;
     s1+=985.0;
    } else {
     s0+=766.0;
     s1+=228.0;
    }
   }
  }
 } else {
  if(i55<1.0032713413238525){
   if(i6<1.0133508443832397){
    if(i43<0.0017772261053323746){
     s0+=2082.0;
     s1+=1073.0;
    } else {
     s0+=349.0;
     s1+=806.0;
    }
   } else {
    if(i31<0.0014579161070287228){
     s0+=93.0;
     s1+=1683.0;
    } else {
     s0+=182.0;
     s1+=58.0;
    }
   }
  } else {
   if(i49<0.04640036076307297){
    if(i39<0.027915433049201965){
     s0+=2447.0;
     s1+=27.0;
    } else {
     s0+=186.0;
     s1+=78.0;
    }
   } else {
    if(i1<0.0001309514045715332){
     s0+=927.0;
     s1+=219.0;
    } else {
     s0+=219.0;
     s1+=532.0;
    }
   }
  }
 }
}
if(i38<1.1402404308319092){
 if(i0<6.371736526489258e-05){
  if(i3<-8.301985508296639e-05){
   if(i29<0.011755645275115967){
    if(i44<1.000182032585144){
     s0+=72.0;
     s1+=8.0;
    } else {
     s0+=90.0;
     s1+=471.0;
    }
   } else {
    if(i38<1.1256510019302368){
     s0+=198.0;
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=24.0;
    }
   }
  } else {
   if(i55<1.0003584623336792){
    if(i67<-0.0008017420768737793){
     s0+=9329.0;
     s1+=439.0;
    } else {
     s0+=48263.0;
     s1+=302.0;
    }
   } else {
    if(i24<0.000902367290109396){
     s0+=9232.0;
     s1+=2948.0;
    } else {
     s0+=42672.0;
     s1+=1026.0;
    }
   }
  }
 } else {
  if(i52<1.9252300262451172e-05){
   if(i0<9.459257125854492e-05){
    if(i24<0.0009643553057685494){
     s0+=67.0;
     s1+=665.0;
    } else {
     s0+=658.0;
     s1+=291.0;
    }
   } else {
    if(i43<0.0009823627769947052){
     s0+=1.0;
     s1+=1841.0;
    } else {
     s0+=194.0;
     s1+=1137.0;
    }
   }
  } else {
   if(i29<0.0024606117513030767){
    s0+=977.0;
   } else {
    s1+=81.0;
   }
  }
 }
} else {
 if(i24<0.0025632018223404884){
  if(i3<-4.4087646529078484e-05){
   if(i53<1.0014606714248657){
    if(i31<0.0010717996628955007){
     s0+=167.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i58<0.03306381776928902){
     s0+=1.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i64<0.31549543142318726){
    if(i42<2.0920400856994092e-05){
     s0+=1922.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i14<0.00030945532489567995){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i1<-0.000364154577255249){
   if(i59<1.0705796480178833){
    if(i23<0.17256423830986023){
     s0+=2042.0;
     s1+=154.0;
    } else {
     s0+=12.0;
     s1+=62.0;
    }
   } else {
    if(i49<0.18172135949134827){
     s0+=157.0;
     s1+=30.0;
    } else {
     s0+=15.0;
     s1+=242.0;
    }
   }
  } else {
   if(i35<1.052932858467102){
    if(i0<7.557868957519531e-05){
     s0+=147.0;
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=36.0;
    }
   } else {
    if(i41<1.0290398597717285){
     s0+=104.0;
     s1+=160.0;
    } else {
     s0+=119.0;
     s1+=14410.0;
    }
   }
  }
 }
}
if(i3<-9.218312334269285e-05){
 if(i10<0.9706064462661743){
  if(i65<-0.007095664739608765){
   if(i70<0.05141763016581535){
    if(i14<0.0006099572055973113){
     s0+=606.0;
     s1+=15.0;
    } else {
     s0+=37.0;
     s1+=29.0;
    }
   } else {
    if(i30<0.7746055126190186){
     s0+=3.0;
    } else {
     s0+=8.0;
     s1+=41.0;
    }
   }
  } else {
   if(i35<1.0424147844314575){
    s0+=15.0;
   } else {
    if(i16<0.12431585788726807){
     s0+=10.0;
     s1+=21.0;
    } else {
     s1+=41.0;
    }
   }
  }
 } else {
  if(i44<0.9981886148452759){
   s0+=178.0;
  } else {
   if(i4<0.0002281665802001953){
    if(i23<0.03279295563697815){
     s0+=133.0;
     s1+=136.0;
    } else {
     s0+=80.0;
     s1+=15514.0;
    }
   } else {
    s0+=71.0;
   }
  }
 }
} else {
 if(i1<0.000888526439666748){
  if(i40<1.0266098976135254){
   if(i48<0.999946117401123){
    if(i70<-0.025597285479307175){
     s1+=3.0;
    } else {
     s0+=52741.0;
     s1+=357.0;
    }
   } else {
    if(i8<0.0036512846127152443){
     s0+=50327.0;
     s1+=802.0;
    } else {
     s0+=8682.0;
     s1+=3659.0;
    }
   }
  } else {
   if(i57<-3.619958079070784e-06){
    if(i57<-1.217076805914985e-05){
     s0+=306.0;
     s1+=49.0;
    } else {
     s0+=301.0;
     s1+=955.0;
    }
   } else {
    if(i42<1.6269113984890282e-05){
     s0+=682.0;
    } else {
     s0+=74.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i27<1.116804838180542){
   if(i38<1.0416955947875977){
    if(i53<1.0053404569625854){
     s0+=224.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=1679.0;
   }
  } else {
   if(i64<0.05427245795726776){
    if(i11<1.0115013122558594){
     s0+=1874.0;
     s1+=221.0;
    } else {
     s0+=4.0;
     s1+=160.0;
    }
   } else {
    if(i8<0.004954033996909857){
     s0+=97.0;
    } else {
     s0+=33.0;
     s1+=668.0;
    }
   }
  }
 }
}
if(i0<6.276369094848633e-05){
 if(i5<0.00032657384872436523){
  if(i17<1.021349310874939){
   if(i45<0.20560264587402344){
    if(i36<1.0905578136444092){
     s0+=24423.0;
     s1+=1960.0;
    } else {
     s0+=79936.0;
     s1+=925.0;
    }
   } else {
    if(i51<-9.185604540107306e-06){
     s0+=14.0;
     s1+=152.0;
    } else {
     s0+=121.0;
     s1+=4.0;
    }
   }
  } else {
   if(i42<9.808003596845083e-06){
    if(i57<-4.051202267874032e-06){
     s1+=5.0;
    } else {
     s0+=259.0;
    }
   } else {
    if(i23<0.12488019466400146){
     s0+=73.0;
     s1+=12.0;
    } else {
     s0+=38.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i37<-0.00021122221369296312){
   if(i23<0.06093388795852661){
    if(i27<1.1287747621536255){
     s0+=27.0;
     s1+=92.0;
    } else {
     s0+=688.0;
     s1+=157.0;
    }
   } else {
    if(i58<0.029090529307723045){
     s0+=486.0;
     s1+=728.0;
    } else {
     s0+=155.0;
     s1+=2217.0;
    }
   }
  } else {
   if(i13<-1.0788440704345703e-05){
    if(i20<0.9963163137435913){
     s0+=1313.0;
     s1+=153.0;
    } else {
     s0+=887.0;
     s1+=640.0;
    }
   } else {
    if(i49<0.042962439358234406){
     s0+=5750.0;
     s1+=405.0;
    } else {
     s0+=40.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i25<0.0023654235992580652){
  if(i38<1.0869626998901367){
   if(i24<0.000988935586065054){
    if(i33<0.0002146116748917848){
     s0+=109.0;
    } else {
     s1+=2152.0;
    }
   } else {
    s0+=112.0;
   }
  } else {
   if(i33<0.0010793085675686598){
    s1+=242.0;
   } else {
    s0+=1954.0;
   }
  }
 } else {
  if(i45<0.021016240119934082){
   if(i1<0.002047598361968994){
    if(i21<0.05525830760598183){
     s0+=57.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=39.0;
    }
   } else {
    s1+=147.0;
   }
  } else {
   if(i18<0.10682284832000732){
    if(i68<0.0012275238987058401){
     s0+=36.0;
     s1+=31.0;
    } else {
     s0+=23.0;
     s1+=535.0;
    }
   } else {
    if(i3<-9.604118531569839e-05){
     s0+=2.0;
     s1+=12425.0;
    } else {
     s0+=19.0;
     s1+=937.0;
    }
   }
  }
 }
}
if(i12<1.016628623008728){
 if(i4<2.1159648895263672e-05){
  if(i39<0.20284059643745422){
   if(i8<0.003607330145314336){
    if(i12<0.994470477104187){
     s0+=15138.0;
     s1+=563.0;
    } else {
     s0+=70959.0;
     s1+=437.0;
    }
   } else {
    if(i1<-0.0003745555877685547){
     s0+=21232.0;
     s1+=816.0;
    } else {
     s0+=1387.0;
     s1+=2324.0;
    }
   }
  } else {
   if(i0<-0.0001767277717590332){
    s0+=109.0;
   } else {
    if(i67<-0.013849884271621704){
     s0+=5.0;
     s1+=15.0;
    } else {
     s1+=222.0;
    }
   }
  }
 } else {
  if(i56<0.0009004351450130343){
   if(i16<0.19403117895126343){
    if(i8<0.003481372492387891){
     s0+=3917.0;
     s1+=283.0;
    } else {
     s0+=1018.0;
     s1+=1238.0;
    }
   } else {
    if(i33<0.0017683187033981085){
     s0+=34.0;
    } else {
     s0+=10.0;
     s1+=327.0;
    }
   }
  } else {
   if(i41<1.0528416633605957){
    if(i2<1.0057094097137451){
     s0+=768.0;
     s1+=275.0;
    } else {
     s0+=18.0;
     s1+=514.0;
    }
   } else {
    if(i35<1.0850777626037598){
     s0+=161.0;
     s1+=263.0;
    } else {
     s0+=138.0;
     s1+=2884.0;
    }
   }
  }
 }
} else {
 if(i10<1.01450777053833){
  if(i60<0.00016461251652799547){
   if(i27<1.1178560256958008){
    if(i3<-1.5876596080488525e-05){
     s1+=795.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i39<0.03254065662622452){
     s0+=1154.0;
     s1+=90.0;
    } else {
     s0+=397.0;
     s1+=834.0;
    }
   }
  } else {
   if(i46<0.001123517518863082){
    if(i10<1.003308653831482){
     s0+=23.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i32<1.1299854516983032){
     s0+=8.0;
    } else {
     s0+=23.0;
     s1+=1180.0;
    }
   }
  }
 } else {
  if(i50<-8.638206963951234e-06){
   s0+=25.0;
  } else {
   if(i15<0.0009878198616206646){
    if(i14<0.0007999249501153827){
     s0+=2.0;
     s1+=212.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i9<1.019641637802124){
     s0+=10.0;
     s1+=243.0;
    } else {
     s1+=10767.0;
    }
   }
  }
 }
}
if(i7<1.002634048461914){
 if(i22<1.0162707567214966){
  if(i8<0.0034273809287697077){
   if(i27<1.1162974834442139){
    if(i65<-0.00035813450813293457){
     s0+=3942.0;
     s1+=543.0;
    } else {
     s0+=22133.0;
     s1+=206.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=57266.0;
     s1+=72.0;
    } else {
     s0+=1712.0;
     s1+=78.0;
    }
   }
  } else {
   if(i4<-3.635883331298828e-06){
    if(i45<0.23113250732421875){
     s0+=20099.0;
     s1+=298.0;
    } else {
     s0+=10.0;
     s1+=84.0;
    }
   } else {
    if(i31<0.001139720086939633){
     s0+=537.0;
     s1+=2564.0;
    } else {
     s0+=3888.0;
     s1+=652.0;
    }
   }
  }
 } else {
  if(i5<0.00022649765014648438){
   if(i31<0.0021350421011447906){
    if(i57<-3.0595062980864896e-06){
     s0+=155.0;
     s1+=111.0;
    } else {
     s0+=553.0;
     s1+=1.0;
    }
   } else {
    if(i8<0.0068106395192444324){
     s0+=2.0;
    } else {
     s1+=153.0;
    }
   }
  } else {
   if(i21<0.008593134582042694){
    if(i38<1.0837496519088745){
     s1+=32.0;
    } else {
     s0+=112.0;
     s1+=2.0;
    }
   } else {
    if(i57<-2.0610721549019217e-05){
     s0+=19.0;
    } else {
     s0+=66.0;
     s1+=906.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012364983558654785){
  if(i15<0.0020193797536194324){
   if(i33<0.002434954047203064){
    if(i60<0.00040309561882168055){
     s0+=2778.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i48<1.0026476383209229){
     s0+=11.0;
     s1+=146.0;
    } else {
     s0+=63.0;
    }
   }
  } else {
   if(i21<0.022507885470986366){
    if(i42<1.1367474144208245e-06){
     s0+=96.0;
     s1+=424.0;
    } else {
     s0+=1415.0;
     s1+=349.0;
    }
   } else {
    if(i2<1.0008792877197266){
     s0+=468.0;
     s1+=312.0;
    } else {
     s0+=253.0;
     s1+=2441.0;
    }
   }
  }
 } else {
  if(i28<0.0016979575157165527){
   if(i24<0.0021144000347703695){
    if(i36<1.1180615425109863){
     s0+=20.0;
     s1+=1883.0;
    } else {
     s0+=512.0;
    }
   } else {
    if(i70<0.10024203360080719){
     s0+=63.0;
     s1+=13025.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i26<0.0011731386184692383){
    s0+=388.0;
   } else {
    s1+=7.0;
   }
  }
 }
}
if(i2<1.0038731098175049){
 if(i5<0.0003249049186706543){
  if(i3<-0.0001018302864395082){
   if(i16<0.045338064432144165){
    if(i70<0.05381539836525917){
     s0+=185.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=20.0;
    }
   } else {
    if(i33<0.002710911212489009){
     s0+=26.0;
    } else {
     s0+=3.0;
     s1+=294.0;
    }
   }
  } else {
   if(i27<1.116391897201538){
    if(i8<0.0034999921917915344){
     s0+=24512.0;
     s1+=780.0;
    } else {
     s0+=2783.0;
     s1+=1451.0;
    }
   } else {
    if(i23<0.22197934985160828){
     s0+=76991.0;
     s1+=606.0;
    } else {
     s0+=140.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i41<1.1157877445220947){
   if(i62<-0.0007048359839245677){
    if(i28<0.00025969743728637695){
     s0+=115.0;
     s1+=593.0;
    } else {
     s0+=1165.0;
     s1+=557.0;
    }
   } else {
    if(i15<0.0018198811449110508){
     s0+=3079.0;
     s1+=16.0;
    } else {
     s0+=2892.0;
     s1+=911.0;
    }
   }
  } else {
   if(i32<1.1804778575897217){
    if(i43<0.002327132970094681){
     s0+=103.0;
    } else {
     s0+=134.0;
     s1+=142.0;
    }
   } else {
    if(i38<1.1689658164978027){
     s0+=37.0;
     s1+=164.0;
    } else {
     s1+=1025.0;
    }
   }
  }
 }
} else {
 if(i8<0.004235200118273497){
  if(i14<0.00020760091138072312){
   if(i17<1.006345272064209){
    if(i42<-3.099272589679458e-06){
     s0+=18.0;
     s1+=184.0;
    } else {
     s0+=55.0;
     s1+=4.0;
    }
   } else {
    if(i6<1.0062172412872314){
     s0+=7.0;
     s1+=10.0;
    } else {
     s0+=8.0;
     s1+=911.0;
    }
   }
  } else {
   if(i6<1.0264511108398438){
    if(i20<1.0196455717086792){
     s0+=3799.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=38.0;
   }
  }
 } else {
  if(i37<-0.000346414657542482){
   if(i22<0.8849732875823975){
    if(i59<0.8955216407775879){
     s0+=7.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i50<-7.889507287472952e-06){
     s0+=12.0;
    } else {
     s0+=12.0;
     s1+=13201.0;
    }
   }
  } else {
   if(i50<-5.83708924750681e-06){
    if(i29<0.002757173730060458){
     s0+=116.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i14<0.0007065740646794438){
     s0+=131.0;
     s1+=3385.0;
    } else {
     s0+=88.0;
    }
   }
  }
 }
}
if(i20<1.0081455707550049){
 if(i5<0.00048285722732543945){
  if(i21<0.08869542181491852){
   if(i23<0.231725811958313){
    if(i9<1.0090196132659912){
     s0+=106400.0;
     s1+=3460.0;
    } else {
     s0+=1600.0;
     s1+=478.0;
    }
   } else {
    if(i51<-7.775379344820976e-06){
     s0+=6.0;
     s1+=220.0;
    } else {
     s0+=99.0;
    }
   }
  } else {
   if(i13<-0.00835275650024414){
    s0+=1.0;
   } else {
    s1+=221.0;
   }
  }
 } else {
  if(i41<1.1067054271697998){
   if(i24<0.000248564756475389){
    s0+=1845.0;
   } else {
    if(i8<0.0037824101746082306){
     s0+=2012.0;
     s1+=33.0;
    } else {
     s0+=1843.0;
     s1+=2683.0;
    }
   }
  } else {
   if(i33<0.001937385182827711){
    s0+=406.0;
   } else {
    if(i44<1.0023393630981445){
     s0+=119.0;
     s1+=3039.0;
    } else {
     s0+=103.0;
     s1+=300.0;
    }
   }
  }
 }
} else {
 if(i8<0.0030766373965889215){
  if(i42<-1.467229776608292e-05){
   if(i65<0.001821279525756836){
    if(i52<2.491474151611328e-05){
     s0+=3.0;
     s1+=493.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i12<1.0517206192016602){
     s0+=32.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i62<0.0007259885896928608){
    if(i35<1.0619490146636963){
     s0+=92.0;
     s1+=23.0;
    } else {
     s0+=1456.0;
    }
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i25<0.0023183198645710945){
   if(i43<0.0009854113450273871){
    s1+=1612.0;
   } else {
    if(i42<-1.0785195627249777e-05){
     s0+=16.0;
     s1+=24.0;
    } else {
     s0+=370.0;
    }
   }
  } else {
   if(i10<0.9757654666900635){
    if(i43<0.018811814486980438){
     s0+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=11808.0;
   }
  }
 }
}
if(i2<1.0038518905639648){
 if(i23<0.2179235816001892){
  if(i4<1.8298625946044922e-05){
   if(i21<0.006775497458875179){
    if(i9<0.99444180727005){
     s0+=4346.0;
     s1+=321.0;
    } else {
     s0+=63019.0;
     s1+=230.0;
    }
   } else {
    if(i2<0.9980285167694092){
     s0+=34738.0;
     s1+=501.0;
    } else {
     s0+=5780.0;
     s1+=2915.0;
    }
   }
  } else {
   if(i21<0.00942758098244667){
    if(i67<0.0007979273796081543){
     s0+=2218.0;
     s1+=16.0;
    } else {
     s0+=416.0;
     s1+=38.0;
    }
   } else {
    if(i23<0.05227792263031006){
     s0+=843.0;
     s1+=182.0;
    } else {
     s0+=820.0;
     s1+=1447.0;
    }
   }
  }
 } else {
  if(i8<0.006326139904558659){
   if(i29<0.005263524129986763){
    if(i17<1.0175315141677856){
     s0+=82.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=15.0;
    }
   } else {
    s0+=79.0;
   }
  } else {
   if(i32<1.1253283023834229){
    s0+=8.0;
   } else {
    if(i37<0.00012472597882151604){
     s0+=1.0;
     s1+=1065.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i32<1.1703872680664062){
  if(i13<0.0012875795364379883){
   if(i25<0.002205150667577982){
    if(i28<0.0004589557647705078){
     s0+=251.0;
     s1+=543.0;
    } else {
     s0+=2800.0;
     s1+=4.0;
    }
   } else {
    if(i8<0.0027537585701793432){
     s0+=121.0;
     s1+=3.0;
    } else {
     s0+=23.0;
     s1+=510.0;
    }
   }
  } else {
   if(i46<0.0008986733155325055){
    if(i50<-3.697506144817453e-06){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=1967.0;
    }
   } else {
    if(i8<0.004868818446993828){
     s0+=718.0;
     s1+=83.0;
    } else {
     s0+=88.0;
     s1+=398.0;
    }
   }
  }
 } else {
  if(i12<0.9042929410934448){
   if(i3<-0.00013236599625088274){
    if(i45<0.04396772384643555){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i61<0.1466050148010254){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=56.0;
    }
   }
  } else {
   if(i38<1.0789777040481567){
    if(i6<0.9963213801383972){
     s1+=30.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i23<0.11676669120788574){
     s0+=59.0;
     s1+=805.0;
    } else {
     s0+=16.0;
     s1+=13190.0;
    }
   }
  }
 }
}
if(i15<0.001950318575836718){
 if(i63<-5.770395546278451e-06){
  if(i55<1.0034329891204834){
   if(i26<0.0002021193504333496){
    if(i43<0.0007080679060891271){
     s1+=38.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i7<1.0043823719024658){
     s0+=18.0;
    } else {
     s1+=1336.0;
    }
   }
  } else {
   if(i1<0.002192199230194092){
    s0+=164.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i34<1.0776758193969727){
   if(i44<1.0002540349960327){
    if(i38<1.0463964939117432){
     s0+=16530.0;
     s1+=179.0;
    } else {
     s0+=370.0;
     s1+=56.0;
    }
   } else {
    if(i15<0.0012183331418782473){
     s0+=6729.0;
     s1+=137.0;
    } else {
     s0+=147.0;
     s1+=739.0;
    }
   }
  } else {
   if(i3<-7.283198647201061e-05){
    if(i72<9.527988709123747e-07){
     s0+=15.0;
     s1+=122.0;
    } else {
     s0+=73.0;
     s1+=6.0;
    }
   } else {
    if(i33<0.0018992014229297638){
     s0+=59791.0;
     s1+=140.0;
    } else {
     s0+=12469.0;
     s1+=242.0;
    }
   }
  }
 }
} else {
 if(i0<-1.8417835235595703e-05){
  if(i16<0.20754054188728333){
   if(i24<0.0009925004560500383){
    if(i28<2.0772218704223633e-05){
     s0+=263.0;
    } else {
     s0+=75.0;
     s1+=318.0;
    }
   } else {
    if(i41<1.118174433708191){
     s0+=15886.0;
     s1+=452.0;
    } else {
     s0+=244.0;
     s1+=205.0;
    }
   }
  } else {
   if(i5<-0.0011827051639556885){
    if(i72<3.172816377627896e-06){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i36<1.269250750541687){
     s0+=23.0;
     s1+=10.0;
    } else {
     s0+=9.0;
     s1+=300.0;
    }
   }
  }
 } else {
  if(i32<1.0440731048583984){
   if(i47<2.8118654881836846e-05){
    s0+=1410.0;
   } else {
    if(i61<0.05079495534300804){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i8<0.003960121423006058){
    if(i36<1.0954763889312744){
     s0+=20.0;
     s1+=140.0;
    } else {
     s0+=1022.0;
     s1+=57.0;
    }
   } else {
    if(i10<0.9955815076828003){
     s0+=804.0;
     s1+=2029.0;
    } else {
     s0+=598.0;
     s1+=17649.0;
    }
   }
  }
 }
}
if(i3<-0.00010638438106980175){
 if(i16<0.023273110389709473){
  if(i67<-0.00681951642036438){
   if(i35<1.1361256837844849){
    if(i71<-0.012161612510681152){
     s0+=11.0;
     s1+=8.0;
    } else {
     s0+=403.0;
     s1+=6.0;
    }
   } else {
    if(i8<0.01959548145532608){
     s0+=33.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=30.0;
    }
   }
  } else {
   if(i28<0.0011951625347137451){
    if(i37<-0.0001796294527594){
     s1+=57.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i14<0.0007059713825583458){
   if(i57<-5.9811682149302214e-05){
    s0+=75.0;
   } else {
    if(i41<0.9682222604751587){
     s0+=47.0;
     s1+=4.0;
    } else {
     s0+=41.0;
     s1+=14840.0;
    }
   }
  } else {
   s0+=109.0;
  }
 }
} else {
 if(i15<0.0017917148070409894){
  if(i0<0.00012129545211791992){
   if(i3<-8.174433605745435e-05){
    if(i27<1.1671608686447144){
     s0+=8.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i27<1.0905578136444092){
     s0+=22152.0;
     s1+=871.0;
    } else {
     s0+=71527.0;
     s1+=301.0;
    }
   }
  } else {
   if(i57<-1.674873783485964e-05){
    s0+=19.0;
   } else {
    s1+=380.0;
   }
  }
 } else {
  if(i7<1.0009819269180298){
   if(i33<0.001055175089277327){
    if(i55<0.9998370409011841){
     s0+=1233.0;
     s1+=52.0;
    } else {
     s0+=267.0;
     s1+=929.0;
    }
   } else {
    if(i16<0.23248377442359924){
     s0+=14752.0;
     s1+=278.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   }
  } else {
   if(i14<0.0003493194526527077){
    if(i2<1.000993013381958){
     s0+=1754.0;
     s1+=459.0;
    } else {
     s0+=635.0;
     s1+=5349.0;
    }
   } else {
    if(i38<1.1920963525772095){
     s0+=3355.0;
     s1+=274.0;
    } else {
     s0+=171.0;
     s1+=287.0;
    }
   }
  }
 }
}
if(i8<0.007529487367719412){
 if(i22<1.0155531167984009){
  if(i42<-1.1572301445994526e-05){
   if(i29<0.0009516111458651721){
    s1+=563.0;
   } else {
    if(i36<1.16701340675354){
     s0+=128.0;
    } else {
     s1+=256.0;
    }
   }
  } else {
   if(i55<1.0003472566604614){
    if(i65<-0.0004932284355163574){
     s0+=9243.0;
     s1+=322.0;
    } else {
     s0+=48481.0;
     s1+=223.0;
    }
   } else {
    if(i29<0.0009889299981296062){
     s0+=10846.0;
     s1+=2693.0;
    } else {
     s0+=40492.0;
     s1+=1067.0;
    }
   }
  }
 } else {
  if(i27<1.1173481941223145){
   if(i3<-1.627961864869576e-05){
    s1+=991.0;
   } else {
    s0+=20.0;
   }
  } else {
   if(i3<-8.853309554979205e-05){
    if(i38<1.1185171604156494){
     s0+=60.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=920.0;
    }
   } else {
    if(i33<0.0019484148360788822){
     s0+=1162.0;
    } else {
     s0+=789.0;
     s1+=255.0;
    }
   }
  }
 }
} else {
 if(i35<1.052986741065979){
  if(i6<1.0077110528945923){
   if(i2<0.999428391456604){
    if(i59<0.7652047872543335){
     s1+=3.0;
    } else {
     s0+=3590.0;
     s1+=35.0;
    }
   } else {
    if(i34<1.4247384071350098){
     s0+=190.0;
     s1+=70.0;
    } else {
     s0+=10.0;
     s1+=72.0;
    }
   }
  } else {
   if(i57<-1.2850115354012814e-06){
    s1+=103.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i0<-3.2007694244384766e-05){
   if(i16<0.16981393098831177){
    if(i27<1.534571886062622){
     s0+=1064.0;
     s1+=126.0;
    } else {
     s0+=58.0;
     s1+=138.0;
    }
   } else {
    if(i32<1.1253283023834229){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=295.0;
    }
   }
  } else {
   if(i65<-0.007094204425811768){
    if(i18<0.04127940535545349){
     s0+=80.0;
     s1+=43.0;
    } else {
     s0+=34.0;
     s1+=175.0;
    }
   } else {
    if(i65<-0.001862257719039917){
     s0+=170.0;
     s1+=2454.0;
    } else {
     s0+=72.0;
     s1+=13548.0;
    }
   }
  }
 }
}
if(i10<1.010335087776184){
 if(i16<0.1999807357788086){
  if(i8<0.003942111972719431){
   if(i47<-2.4211032723542303e-05){
    if(i20<1.0090889930725098){
     s0+=22.0;
    } else {
     s0+=4.0;
     s1+=82.0;
    }
   } else {
    if(i8<0.0024287481792271137){
     s0+=76409.0;
     s1+=440.0;
    } else {
     s0+=15848.0;
     s1+=918.0;
    }
   }
  } else {
   if(i1<-0.00030985474586486816){
    if(i5<-0.0001621842384338379){
     s0+=16703.0;
     s1+=130.0;
    } else {
     s0+=3808.0;
     s1+=765.0;
    }
   } else {
    if(i23<0.041205525398254395){
     s0+=687.0;
     s1+=388.0;
    } else {
     s0+=1233.0;
     s1+=4618.0;
    }
   }
  }
 } else {
  if(i24<0.002562624868005514){
   if(i51<-1.9306668036733754e-05){
    if(i25<0.0018610104452818632){
     s0+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i3<-2.5857065338641405e-05){
     s0+=37.0;
     s1+=8.0;
    } else {
     s0+=205.0;
     s1+=2.0;
    }
   }
  } else {
   if(i64<0.020170055329799652){
    if(i2<1.0025196075439453){
     s0+=35.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i51<-8.016733772819862e-06){
     s0+=47.0;
     s1+=2624.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
} else {
 if(i21<0.007369977422058582){
  if(i24<0.0010822900803759694){
   if(i2<1.0023661851882935){
    s0+=2.0;
   } else {
    s1+=1093.0;
   }
  } else {
   if(i33<0.0030989828519523144){
    s0+=1195.0;
   } else {
    if(i27<1.4667320251464844){
     s0+=21.0;
     s1+=460.0;
    } else {
     s0+=47.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i57<-3.805679853030597e-06){
   if(i29<0.0019310344941914082){
    if(i46<0.0010779451113194227){
     s0+=23.0;
     s1+=945.0;
    } else {
     s0+=112.0;
     s1+=19.0;
    }
   } else {
    if(i1<-0.0005379319190979004){
     s0+=2.0;
    } else {
     s0+=20.0;
     s1+=11771.0;
    }
   }
  } else {
   s0+=97.0;
  }
 }
}
if(i10<1.0104501247406006){
 if(i11<1.0045311450958252){
  if(i45<0.2013959288597107){
   if(i8<0.003989104647189379){
    if(i41<1.0179111957550049){
     s0+=10702.0;
     s1+=528.0;
    } else {
     s0+=80233.0;
     s1+=704.0;
    }
   } else {
    if(i0<-2.187490463256836e-05){
     s0+=19574.0;
     s1+=783.0;
    } else {
     s0+=1317.0;
     s1+=3280.0;
    }
   }
  } else {
   if(i58<0.0421755313873291){
    if(i8<0.00724672619253397){
     s0+=134.0;
     s1+=16.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i15<0.0013532654847949743){
     s0+=46.0;
    } else {
     s0+=21.0;
     s1+=753.0;
    }
   }
  }
 } else {
  if(i8<0.004381570033729076){
   if(i35<1.0621254444122314){
    if(i11<1.0066807270050049){
     s0+=471.0;
     s1+=45.0;
    } else {
     s0+=23.0;
     s1+=177.0;
    }
   } else {
    if(i29<0.0007470414275303483){
     s1+=26.0;
    } else {
     s0+=1895.0;
     s1+=9.0;
    }
   }
  } else {
   if(i35<1.0476789474487305){
    if(i24<0.0013406940270215273){
     s1+=41.0;
    } else {
     s0+=387.0;
     s1+=73.0;
    }
   } else {
    if(i37<-0.0001303965545957908){
     s0+=152.0;
     s1+=2707.0;
    } else {
     s0+=288.0;
     s1+=757.0;
    }
   }
  }
 }
} else {
 if(i36<1.176405668258667){
  if(i36<1.1174830198287964){
   if(i50<-5.1113288463966455e-06){
    s0+=15.0;
   } else {
    s1+=2066.0;
   }
  } else {
   s0+=1161.0;
  }
 } else {
  if(i18<0.06823039054870605){
   if(i1<0.0008748769760131836){
    if(i36<1.3081822395324707){
     s1+=3.0;
    } else {
     s0+=101.0;
    }
   } else {
    s1+=110.0;
   }
  } else {
   if(i2<1.0028092861175537){
    if(i58<0.060649920254945755){
     s0+=90.0;
     s1+=18.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i23<0.06796333193778992){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=12058.0;
    }
   }
  }
 }
}
if(i3<-0.00011816446931334212){
 if(i41<1.0234894752502441){
  if(i16<0.06886324286460876){
   if(i4<6.389617919921875e-05){
    if(i35<1.0479556322097778){
     s0+=210.0;
     s1+=2.0;
    } else {
     s0+=82.0;
     s1+=20.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i59<0.9114614129066467){
    if(i50<-1.7856872318589012e-06){
     s0+=8.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i59<0.9181810617446899){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i33<0.0025764477904886007){
   if(i14<0.00013954356836620718){
    if(i72<-2.465657871653093e-06){
     s0+=2.0;
    } else {
     s1+=202.0;
    }
   } else {
    s0+=168.0;
   }
  } else {
   if(i22<0.8942737579345703){
    if(i46<0.012169442139565945){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=59.0;
    }
   } else {
    if(i10<0.9507349729537964){
     s0+=2.0;
    } else {
     s0+=18.0;
     s1+=13442.0;
    }
   }
  }
 }
} else {
 if(i1<0.0009765625){
  if(i9<1.011444330215454){
   if(i49<0.0457126721739769){
    if(i31<0.000669170985929668){
     s0+=71172.0;
     s1+=315.0;
    } else {
     s0+=23864.0;
     s1+=2249.0;
    }
   } else {
    if(i2<0.9998922348022461){
     s0+=16990.0;
     s1+=1092.0;
    } else {
     s0+=1203.0;
     s1+=1536.0;
    }
   }
  } else {
   if(i36<1.1178560256958008){
    if(i38<1.0905578136444092){
     s1+=585.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   } else {
    if(i47<1.653893559705466e-05){
     s0+=850.0;
     s1+=69.0;
    } else {
     s0+=448.0;
     s1+=657.0;
    }
   }
  }
 } else {
  if(i29<0.0011909522581845522){
   if(i43<0.0001345416094409302){
    s0+=58.0;
   } else {
    if(i28<0.0012184977531433105){
     s1+=1908.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i33<0.0019957134500145912){
    if(i8<0.007594945374876261){
     s0+=1650.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=220.0;
    }
   } else {
    if(i14<0.0004276674590073526){
     s0+=6.0;
     s1+=1491.0;
    } else {
     s0+=69.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i3<-7.64209107728675e-05){
 if(i41<1.024446964263916){
  if(i1<0.0014119148254394531){
   if(i62<0.0016593484906479716){
    if(i48<1.003896713256836){
     s0+=1086.0;
     s1+=45.0;
    } else {
     s0+=61.0;
     s1+=57.0;
    }
   } else {
    if(i50<-1.936166881932877e-06){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i60<0.0032495129853487015){
    s1+=78.0;
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i14<0.0007059713825583458){
   if(i16<0.019761502742767334){
    if(i20<0.9991592168807983){
     s0+=124.0;
     s1+=31.0;
    } else {
     s0+=14.0;
     s1+=84.0;
    }
   } else {
    if(i44<0.9982417821884155){
     s0+=59.0;
    } else {
     s0+=364.0;
     s1+=16952.0;
    }
   }
  } else {
   s0+=342.0;
  }
 }
} else {
 if(i19<1.0089926719665527){
  if(i4<1.3530254364013672e-05){
   if(i31<0.0007052005967125297){
    if(i35<1.0178465843200684){
     s0+=4181.0;
     s1+=139.0;
    } else {
     s0+=72181.0;
     s1+=254.0;
    }
   } else {
    if(i33<0.0010568024590611458){
     s0+=1930.0;
     s1+=1891.0;
    } else {
     s0+=25019.0;
     s1+=571.0;
    }
   }
  } else {
   if(i56<0.0008884481503628194){
    if(i49<0.043044574558734894){
     s0+=5722.0;
     s1+=656.0;
    } else {
     s0+=660.0;
     s1+=606.0;
    }
   } else {
    if(i5<0.001347661018371582){
     s0+=905.0;
     s1+=545.0;
    } else {
     s0+=48.0;
     s1+=390.0;
    }
   }
  }
 } else {
  if(i24<0.000999927637167275){
   if(i46<0.001017819857224822){
    if(i27<1.0610902309417725){
     s0+=13.0;
    } else {
     s0+=10.0;
     s1+=1591.0;
    }
   } else {
    if(i0<2.6524066925048828e-05){
     s0+=116.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i32<1.1825768947601318){
    if(i21<0.0237746499478817){
     s0+=3128.0;
     s1+=76.0;
    } else {
     s0+=67.0;
     s1+=81.0;
    }
   } else {
    if(i24<0.002561945468187332){
     s0+=242.0;
     s1+=6.0;
    } else {
     s0+=39.0;
     s1+=446.0;
    }
   }
  }
 }
}
if(i7<1.002625584602356){
 if(i8<0.003866281360387802){
  if(i31<0.0005479779792949557){
   if(i1<-0.0001500248908996582){
    if(i17<1.018244981765747){
     s0+=22501.0;
     s1+=131.0;
    } else {
     s0+=40.0;
     s1+=15.0;
    }
   } else {
    if(i67<0.0019526481628417969){
     s0+=42412.0;
     s1+=2.0;
    } else {
     s0+=231.0;
     s1+=4.0;
    }
   }
  } else {
   if(i36<1.0907573699951172){
    if(i14<0.00023856115876697004){
     s0+=1884.0;
     s1+=707.0;
    } else {
     s0+=2495.0;
     s1+=18.0;
    }
   } else {
    if(i34<1.0651735067367554){
     s0+=107.0;
     s1+=58.0;
    } else {
     s0+=19421.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i0<-2.345442771911621e-05){
   if(i16<0.20526832342147827){
    if(i5<-0.00021371245384216309){
     s0+=16574.0;
     s1+=96.0;
    } else {
     s0+=3613.0;
     s1+=528.0;
    }
   } else {
    if(i58<0.04830118641257286){
     s0+=37.0;
     s1+=10.0;
    } else {
     s0+=15.0;
     s1+=206.0;
    }
   }
  } else {
   if(i14<0.0009394473163411021){
    if(i4<-5.125999450683594e-06){
     s0+=457.0;
     s1+=73.0;
    } else {
     s0+=321.0;
     s1+=3417.0;
    }
   } else {
    s0+=497.0;
   }
  }
 }
} else {
 if(i14<0.0007055420428514481){
  if(i55<1.0029339790344238){
   if(i13<-0.0032518506050109863){
    if(i15<0.006765664555132389){
     s0+=170.0;
     s1+=11.0;
    } else {
     s0+=46.0;
     s1+=150.0;
    }
   } else {
    if(i15<0.0024241339415311813){
     s0+=371.0;
     s1+=2864.0;
    } else {
     s0+=55.0;
     s1+=10582.0;
    }
   }
  } else {
   if(i23<0.1501179039478302){
    if(i8<0.004741763696074486){
     s0+=1952.0;
     s1+=39.0;
    } else {
     s0+=993.0;
     s1+=1221.0;
    }
   } else {
    if(i25<0.0024490703362971544){
     s0+=160.0;
     s1+=10.0;
    } else {
     s0+=117.0;
     s1+=3825.0;
    }
   }
  }
 } else {
  s0+=2251.0;
 }
}
if(i22<1.0163410902023315){
 if(i3<-8.2358208601363e-05){
  if(i65<-0.007174760103225708){
   if(i35<1.1232192516326904){
    if(i33<0.007478578016161919){
     s1+=8.0;
    } else {
     s0+=804.0;
     s1+=46.0;
    }
   } else {
    if(i23<0.0016644299030303955){
     s0+=39.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=133.0;
    }
   }
  } else {
   if(i44<0.998309850692749){
    s0+=227.0;
   } else {
    if(i18<0.04382702708244324){
     s0+=198.0;
     s1+=180.0;
    } else {
     s0+=185.0;
     s1+=3594.0;
    }
   }
  }
 } else {
  if(i5<0.00029915571212768555){
   if(i18<0.2501950263977051){
    if(i36<1.0905578136444092){
     s0+=24296.0;
     s1+=1873.0;
    } else {
     s0+=78305.0;
     s1+=734.0;
    }
   } else {
    if(i15<0.002247827360406518){
     s0+=15.0;
     s1+=1.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i49<0.040796056389808655){
    if(i29<0.0009107851656153798){
     s0+=2704.0;
     s1+=1387.0;
    } else {
     s0+=6361.0;
     s1+=233.0;
    }
   } else {
    if(i13<-0.0013049840927124023){
     s0+=1439.0;
     s1+=550.0;
    } else {
     s0+=272.0;
     s1+=981.0;
    }
   }
  }
 }
} else {
 if(i3<-6.681556260446087e-05){
  if(i14<0.0008320174529217184){
   if(i4<0.0002504587173461914){
    if(i3<-7.88588949944824e-05){
     s0+=14.0;
     s1+=12720.0;
    } else {
     s0+=55.0;
     s1+=497.0;
    }
   } else {
    s0+=27.0;
   }
  } else {
   s0+=135.0;
  }
 } else {
  if(i8<0.005681980401277542){
   if(i47<-2.484220385667868e-05){
    if(i33<0.0008711169357411563){
     s1+=224.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i54<0.00036657488089986145){
     s0+=68.0;
     s1+=99.0;
    } else {
     s0+=1429.0;
     s1+=31.0;
    }
   }
  } else {
   if(i13<-0.003716111183166504){
    s0+=29.0;
   } else {
    if(i11<0.9905492067337036){
     s0+=16.0;
    } else {
     s0+=13.0;
     s1+=838.0;
    }
   }
  }
 }
}
if(i7<1.002631664276123){
 if(i16<0.21925979852676392){
  if(i8<0.003651426872238517){
   if(i27<1.1162974834442139){
    if(i15<0.0011218569707125425){
     s0+=23010.0;
     s1+=150.0;
    } else {
     s0+=3472.0;
     s1+=705.0;
    }
   } else {
    if(i29<0.0018044363241642714){
     s0+=49538.0;
    } else {
     s0+=11247.0;
     s1+=179.0;
    }
   }
  } else {
   if(i7<1.000197172164917){
    if(i7<0.9994413256645203){
     s0+=17184.0;
     s1+=108.0;
    } else {
     s0+=1798.0;
     s1+=347.0;
    }
   } else {
    if(i24<0.0010394480777904391){
     s0+=132.0;
     s1+=2596.0;
    } else {
     s0+=3934.0;
     s1+=802.0;
    }
   }
  }
 } else {
  if(i8<0.0063024163246154785){
   if(i44<1.000791311264038){
    s0+=99.0;
   } else {
    if(i37<-0.0001966881682164967){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i51<1.4055044630367775e-06){
    s1+=720.0;
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i0<8.350610733032227e-05){
  if(i29<0.0019501445349305868){
   if(i48<1.0020899772644043){
    if(i29<0.00017971903434954584){
     s0+=220.0;
    } else {
     s0+=74.0;
     s1+=372.0;
    }
   } else {
    if(i67<0.0021796822547912598){
     s0+=2718.0;
     s1+=45.0;
    } else {
     s0+=47.0;
     s1+=22.0;
    }
   }
  } else {
   if(i23<0.09013894200325012){
    if(i42<1.4563696822733618e-05){
     s0+=43.0;
     s1+=110.0;
    } else {
     s0+=1211.0;
     s1+=328.0;
    }
   } else {
    if(i21<0.014382787048816681){
     s0+=236.0;
     s1+=105.0;
    } else {
     s0+=356.0;
     s1+=2790.0;
    }
   }
  }
 } else {
  if(i33<0.002031183335930109){
   if(i66<0.00039622350595891476){
    if(i27<1.1222262382507324){
     s1+=1689.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i57<-1.0626297807903029e-05){
     s0+=911.0;
     s1+=36.0;
    } else {
     s0+=11.0;
     s1+=165.0;
    }
   }
  } else {
   if(i23<0.0003789663314819336){
    if(i1<0.001503586769104004){
     s0+=14.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    if(i23<0.06738737225532532){
     s0+=24.0;
     s1+=197.0;
    } else {
     s0+=18.0;
     s1+=12992.0;
    }
   }
  }
 }
}
if(i7<1.0026252269744873){
 if(i30<1.021580457687378){
  if(i31<0.0007333973189815879){
   if(i33<0.00029597466345876455){
    if(i60<0.00017013848992064595){
     s0+=16825.0;
     s1+=100.0;
    } else {
     s0+=767.0;
     s1+=271.0;
    }
   } else {
    if(i36<1.1758689880371094){
     s0+=55791.0;
     s1+=31.0;
    } else {
     s0+=6344.0;
     s1+=134.0;
    }
   }
  } else {
   if(i1<-0.0004691183567047119){
    if(i24<0.0009487983770668507){
     s0+=770.0;
     s1+=279.0;
    } else {
     s0+=23447.0;
     s1+=456.0;
    }
   } else {
    if(i39<0.011191193014383316){
     s0+=4385.0;
     s1+=448.0;
    } else {
     s0+=1464.0;
     s1+=2699.0;
    }
   }
  }
 } else {
  if(i8<0.005096016451716423){
   if(i11<1.0030622482299805){
    if(i7<1.0000876188278198){
     s0+=408.0;
    } else {
     s0+=285.0;
     s1+=29.0;
    }
   } else {
    if(i22<1.0223462581634521){
     s0+=46.0;
     s1+=5.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i48<0.9968020915985107){
    s0+=37.0;
   } else {
    if(i1<-0.0007436871528625488){
     s0+=23.0;
     s1+=52.0;
    } else {
     s0+=23.0;
     s1+=1016.0;
    }
   }
  }
 }
} else {
 if(i36<1.1962356567382812){
  if(i28<0.000525355339050293){
   if(i1<0.0005168914794921875){
    if(i32<1.1462345123291016){
     s0+=319.0;
     s1+=44.0;
    } else {
     s0+=51.0;
     s1+=97.0;
    }
   } else {
    if(i27<1.1229777336120605){
     s1+=2349.0;
    } else {
     s0+=114.0;
     s1+=166.0;
    }
   }
  } else {
   if(i33<0.003213773714378476){
    s0+=3575.0;
   } else {
    if(i35<1.0676989555358887){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i18<0.08402770757675171){
   if(i13<0.0011962056159973145){
    if(i8<0.021668361499905586){
     s0+=1296.0;
     s1+=335.0;
    } else {
     s0+=63.0;
     s1+=155.0;
    }
   } else {
    s1+=165.0;
   }
  } else {
   if(i2<1.0016136169433594){
    if(i21<0.03277783840894699){
     s0+=248.0;
     s1+=90.0;
    } else {
     s0+=89.0;
     s1+=326.0;
    }
   } else {
    if(i3<-9.153122664429247e-05){
     s0+=17.0;
     s1+=13474.0;
    } else {
     s0+=179.0;
     s1+=1478.0;
    }
   }
  }
 }
}
if(i7<1.0026230812072754){
 if(i5<0.00030308961868286133){
  if(i16<0.23061108589172363){
   if(i31<0.0006971982074901462){
    if(i33<0.0019205338321626186){
     s0+=70445.0;
     s1+=274.0;
    } else {
     s0+=5037.0;
     s1+=139.0;
    }
   } else {
    if(i25<0.0009404437150806189){
     s0+=1553.0;
     s1+=1754.0;
    } else {
     s0+=26809.0;
     s1+=656.0;
    }
   }
  } else {
   if(i31<0.00068924471270293){
    s0+=87.0;
   } else {
    if(i58<0.013685778714716434){
     s0+=1.0;
    } else {
     s1+=311.0;
    }
   }
  }
 } else {
  if(i21<0.00839504599571228){
   if(i9<1.0086121559143066){
    if(i53<1.0075645446777344){
     s0+=5151.0;
     s1+=57.0;
    } else {
     s0+=19.0;
     s1+=13.0;
    }
   } else {
    if(i32<1.0904107093811035){
     s0+=29.0;
     s1+=113.0;
    } else {
     s0+=391.0;
     s1+=1.0;
    }
   }
  } else {
   if(i42<3.618309710873291e-05){
    if(i51<-1.0311726327927317e-05){
     s0+=192.0;
     s1+=1933.0;
    } else {
     s0+=123.0;
     s1+=12.0;
    }
   } else {
    if(i43<0.011902856640517712){
     s0+=775.0;
     s1+=31.0;
    } else {
     s0+=101.0;
     s1+=219.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007044356898404658){
  if(i6<1.013566255569458){
   if(i21<0.02116418443620205){
    if(i13<0.0011168718338012695){
     s0+=2707.0;
     s1+=539.0;
    } else {
     s0+=35.0;
     s1+=889.0;
    }
   } else {
    if(i35<1.0742030143737793){
     s0+=428.0;
     s1+=290.0;
    } else {
     s0+=226.0;
     s1+=3267.0;
    }
   }
  } else {
   if(i63<6.793573902541539e-06){
    if(i3<-3.28321912093088e-05){
     s0+=149.0;
     s1+=13477.0;
    } else {
     s0+=147.0;
     s1+=104.0;
    }
   } else {
    if(i21<0.030775314196944237){
     s0+=70.0;
     s1+=1.0;
    } else {
     s1+=101.0;
    }
   }
  }
 } else {
  s0+=2204.0;
 }
}
if(i12<1.0169901847839355){
 if(i7<1.0026252269744873){
  if(i15<0.001715848920866847){
   if(i29<0.0004762735334224999){
    if(i65<-0.00039255619049072266){
     s0+=1620.0;
     s1+=424.0;
    } else {
     s0+=22194.0;
     s1+=269.0;
    }
   } else {
    if(i29<0.0018417106475681067){
     s0+=55743.0;
     s1+=29.0;
    } else {
     s0+=9362.0;
     s1+=176.0;
    }
   }
  } else {
   if(i1<-0.00046956539154052734){
    if(i21<0.07150296121835709){
     s0+=17247.0;
     s1+=529.0;
    } else {
     s0+=90.0;
     s1+=147.0;
    }
   } else {
    if(i48<1.0000195503234863){
     s0+=2309.0;
     s1+=140.0;
    } else {
     s0+=1241.0;
     s1+=2791.0;
    }
   }
  }
 } else {
  if(i3<-7.334807742154226e-05){
   if(i65<-0.0076749324798583984){
    if(i39<0.14259123802185059){
     s0+=280.0;
     s1+=30.0;
    } else {
     s0+=16.0;
     s1+=66.0;
    }
   } else {
    if(i60<7.611903129145503e-05){
     s0+=158.0;
     s1+=216.0;
    } else {
     s0+=242.0;
     s1+=3660.0;
    }
   }
  } else {
   if(i52<9.238719940185547e-06){
    if(i4<2.0563602447509766e-05){
     s0+=362.0;
     s1+=100.0;
    } else {
     s0+=368.0;
     s1+=1148.0;
    }
   } else {
    if(i43<0.0033802236430346966){
     s0+=3405.0;
     s1+=241.0;
    } else {
     s0+=368.0;
     s1+=352.0;
    }
   }
  }
 }
} else {
 if(i0<1.6570091247558594e-05){
  if(i7<1.00010085105896){
   if(i62<-0.00700241606682539){
    s1+=32.0;
   } else {
    if(i21<0.06694254279136658){
     s0+=384.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i55<1.003453254699707){
    if(i37<-0.0002975301176775247){
     s0+=78.0;
     s1+=245.0;
    } else {
     s0+=46.0;
     s1+=6.0;
    }
   } else {
    if(i31<0.0020185026805847883){
     s0+=286.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i39<0.014066148549318314){
   if(i43<0.0009420949500054121){
    if(i13<-0.0007463693618774414){
     s0+=3.0;
    } else {
     s1+=714.0;
    }
   } else {
    if(i24<0.0023865061812102795){
     s0+=518.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=518.0;
    }
   }
  } else {
   if(i3<-5.9869886172236875e-05){
    if(i52<-3.266334533691406e-05){
     s0+=5.0;
    } else {
     s0+=68.0;
     s1+=11844.0;
    }
   } else {
    if(i36<1.4586446285247803){
     s0+=84.0;
     s1+=503.0;
    } else {
     s0+=79.0;
    }
   }
  }
 }
}
if(i7<1.0026252269744873){
 if(i6<1.0135915279388428){
  if(i41<1.164858341217041){
   if(i34<1.0903575420379639){
    if(i15<0.0017285144422203302){
     s0+=25850.0;
     s1+=750.0;
    } else {
     s0+=2427.0;
     s1+=2162.0;
    }
   } else {
    if(i35<1.122455358505249){
     s0+=79218.0;
     s1+=887.0;
    } else {
     s0+=2383.0;
     s1+=441.0;
    }
   }
  } else {
   if(i47<9.382738790009171e-05){
    s0+=277.0;
   } else {
    if(i59<0.897052526473999){
     s0+=1.0;
    } else {
     s1+=384.0;
    }
   }
  }
 } else {
  if(i14<0.0010997627396136522){
   if(i8<0.0051964158192276955){
    if(i28<0.0001977086067199707){
     s0+=279.0;
    } else {
     s0+=48.0;
     s1+=9.0;
    }
   } else {
    s1+=919.0;
   }
  } else {
   s0+=89.0;
  }
 }
} else {
 if(i8<0.004240925423800945){
  if(i14<0.00020475417841225863){
   if(i55<1.0028191804885864){
    if(i0<3.4749507904052734e-05){
     s0+=89.0;
     s1+=31.0;
    } else {
     s0+=17.0;
     s1+=1058.0;
    }
   } else {
    if(i2<1.011063814163208){
     s0+=468.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i10<1.018334150314331){
    if(i69<0.966582179069519){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=3930.0;
     s1+=22.0;
    }
   } else {
    s1+=34.0;
   }
  }
 } else {
  if(i10<0.9946744441986084){
   if(i35<1.08499276638031){
    if(i1<0.000644385814666748){
     s0+=902.0;
     s1+=181.0;
    } else {
     s0+=110.0;
     s1+=182.0;
    }
   } else {
    if(i46<0.00853158812969923){
     s0+=201.0;
     s1+=363.0;
    } else {
     s0+=95.0;
     s1+=877.0;
    }
   }
  } else {
   if(i38<1.1369388103485107){
    if(i0<6.204843521118164e-05){
     s0+=161.0;
     s1+=504.0;
    } else {
     s0+=63.0;
     s1+=2716.0;
    }
   } else {
    if(i13<-0.0006687641143798828){
     s0+=8.0;
     s1+=747.0;
    } else {
     s1+=11927.0;
    }
   }
  }
 }
}
if(i38<1.1402318477630615){
 if(i5<0.000560462474822998){
  if(i5<0.0002849698066711426){
   if(i32<1.0867384672164917){
    if(i8<0.0023955004289746284){
     s0+=24033.0;
     s1+=324.0;
    } else {
     s0+=10224.0;
     s1+=1679.0;
    }
   } else {
    if(i45<0.20664018392562866){
     s0+=65741.0;
     s1+=571.0;
    } else {
     s0+=41.0;
     s1+=47.0;
    }
   }
  } else {
   if(i47<1.2397933460306376e-05){
    if(i8<0.004117347300052643){
     s0+=4409.0;
     s1+=15.0;
    } else {
     s0+=126.0;
     s1+=262.0;
    }
   } else {
    if(i0<-5.900859832763672e-06){
     s0+=965.0;
     s1+=106.0;
    } else {
     s0+=480.0;
     s1+=1010.0;
    }
   }
  }
 } else {
  if(i47<-2.4859600671334192e-05){
   if(i14<0.00029826362151652575){
    if(i51<-0.00015557260485365987){
     s0+=26.0;
    } else {
     s1+=1994.0;
    }
   } else {
    if(i42<-4.2477724491618574e-05){
     s1+=1.0;
    } else {
     s0+=133.0;
    }
   }
  } else {
   if(i15<0.0020194146782159805){
    if(i42<-8.89039074536413e-06){
     s0+=165.0;
     s1+=125.0;
    } else {
     s0+=2875.0;
     s1+=60.0;
    }
   } else {
    if(i48<1.0005511045455933){
     s0+=563.0;
     s1+=1.0;
    } else {
     s0+=1970.0;
     s1+=3104.0;
    }
   }
  }
 }
} else {
 if(i3<-7.334395195357502e-05){
  if(i10<0.9739404916763306){
   if(i12<0.9026526808738708){
    if(i31<0.003127397270873189){
     s0+=630.0;
     s1+=36.0;
    } else {
     s0+=25.0;
     s1+=31.0;
    }
   } else {
    if(i43<0.01262650080025196){
     s0+=98.0;
     s1+=12.0;
    } else {
     s0+=31.0;
     s1+=102.0;
    }
   }
  } else {
   if(i9<0.9480875730514526){
    if(i39<0.08715806156396866){
     s0+=45.0;
     s1+=9.0;
    } else {
     s0+=16.0;
     s1+=158.0;
    }
   } else {
    if(i18<0.044266700744628906){
     s0+=47.0;
     s1+=105.0;
    } else {
     s0+=37.0;
     s1+=13575.0;
    }
   }
  }
 } else {
  if(i18<0.1811826229095459){
   if(i0<8.767843246459961e-05){
    if(i21<0.02908639796078205){
     s0+=3190.0;
     s1+=139.0;
    } else {
     s0+=288.0;
     s1+=215.0;
    }
   } else {
    if(i56<0.014482163824141026){
     s0+=1.0;
     s1+=167.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i5<0.00022560358047485352){
    if(i8<0.006581388413906097){
     s0+=141.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=57.0;
    }
   } else {
    if(i21<0.01428128220140934){
     s0+=61.0;
     s1+=6.0;
    } else {
     s0+=45.0;
     s1+=535.0;
    }
   }
  }
 }
}
if(i0<6.335973739624023e-05){
 if(i45<0.1891723871231079){
  if(i4<1.245737075805664e-05){
   if(i5<0.00010973215103149414){
    if(i24<0.000850699027068913){
     s0+=27053.0;
     s1+=1264.0;
    } else {
     s0+=62474.0;
     s1+=444.0;
    }
   } else {
    if(i39<0.019638272002339363){
     s0+=13216.0;
     s1+=394.0;
    } else {
     s0+=1446.0;
     s1+=750.0;
    }
   }
  } else {
   if(i8<0.004150607623159885){
    if(i11<0.999822735786438){
     s0+=276.0;
     s1+=47.0;
    } else {
     s0+=7162.0;
     s1+=112.0;
    }
   } else {
    if(i19<0.9885252714157104){
     s0+=1974.0;
     s1+=1023.0;
    } else {
     s0+=395.0;
     s1+=2413.0;
    }
   }
  }
 } else {
  if(i31<0.0007217901293188334){
   if(i2<1.0037264823913574){
    if(i11<1.0048284530639648){
     s0+=247.0;
     s1+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i27<1.2028815746307373){
     s0+=12.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i32<1.1713470220565796){
    if(i44<1.001804232597351){
     s0+=53.0;
     s1+=82.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i38<1.1231228113174438){
     s0+=25.0;
     s1+=22.0;
    } else {
     s0+=15.0;
     s1+=1271.0;
    }
   }
  }
 }
} else {
 if(i24<0.0023471880704164505){
  if(i14<0.0002442885597702116){
   if(i50<-1.4663060937891714e-05){
    s0+=55.0;
   } else {
    s1+=2338.0;
   }
  } else {
   s0+=1930.0;
  }
 } else {
  if(i2<1.005397081375122){
   if(i41<1.0742030143737793){
    if(i36<1.3957939147949219){
     s0+=5.0;
     s1+=45.0;
    } else {
     s0+=68.0;
     s1+=25.0;
    }
   } else {
    if(i33<0.0036179195158183575){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=354.0;
    }
   }
  } else {
   if(i35<1.0241833925247192){
    if(i11<1.0178983211517334){
     s0+=6.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i18<0.10565221309661865){
     s0+=30.0;
     s1+=620.0;
    } else {
     s0+=11.0;
     s1+=13105.0;
    }
   }
  }
 }
}
if(i16<0.186611145734787){
 if(i2<1.0036488771438599){
  if(i56<0.0017947161104530096){
   if(i34<1.0903575420379639){
    if(i31<0.0007165157003328204){
     s0+=24124.0;
     s1+=313.0;
    } else {
     s0+=3500.0;
     s1+=2444.0;
    }
   } else {
    if(i17<1.018244981765747){
     s0+=76357.0;
     s1+=831.0;
    } else {
     s0+=831.0;
     s1+=215.0;
    }
   }
  } else {
   if(i2<1.0005528926849365){
    if(i19<0.9707679748535156){
     s0+=4422.0;
     s1+=327.0;
    } else {
     s0+=1296.0;
     s1+=421.0;
    }
   } else {
    if(i41<1.052894115447998){
     s0+=233.0;
     s1+=168.0;
    } else {
     s0+=106.0;
     s1+=417.0;
    }
   }
  }
 } else {
  if(i8<0.00393954012542963){
   if(i11<1.0111618041992188){
    if(i14<0.00020225616754032671){
     s0+=154.0;
     s1+=427.0;
    } else {
     s0+=3964.0;
     s1+=11.0;
    }
   } else {
    if(i1<0.0018288493156433105){
     s0+=13.0;
    } else {
     s0+=11.0;
     s1+=442.0;
    }
   }
  } else {
   if(i50<-6.64869594402262e-06){
    s0+=174.0;
   } else {
    if(i44<0.9987602233886719){
     s0+=41.0;
     s1+=5.0;
    } else {
     s0+=293.0;
     s1+=5321.0;
    }
   }
  }
 }
} else {
 if(i34<1.175400972366333){
  if(i29<0.0021632532589137554){
   if(i43<0.002156856469810009){
    if(i36<1.194390058517456){
     s0+=447.0;
    } else {
     s0+=36.0;
     s1+=2.0;
    }
   } else {
    if(i25<0.0016232915222644806){
     s0+=12.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i11<1.0033564567565918){
    if(i2<1.0026259422302246){
     s0+=39.0;
     s1+=5.0;
    } else {
     s1+=11.0;
    }
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i51<-8.807673111732583e-06){
   if(i26<-0.0003472864627838135){
    if(i38<1.1231228113174438){
     s0+=51.0;
     s1+=45.0;
    } else {
     s0+=47.0;
     s1+=573.0;
    }
   } else {
    if(i29<0.0014436997007578611){
     s0+=3.0;
    } else {
     s0+=32.0;
     s1+=12450.0;
    }
   }
  } else {
   if(i15<0.002380646299570799){
    s0+=188.0;
   } else {
    if(i66<0.0011808706913143396){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i6<1.0136241912841797){
 if(i3<-7.897223986219615e-05){
  if(i47<0.00031124200904741883){
   if(i8<0.01215068157762289){
    if(i13<0.002086460590362549){
     s0+=672.0;
     s1+=455.0;
    } else {
     s0+=23.0;
     s1+=378.0;
    }
   } else {
    if(i12<0.8920382857322693){
     s0+=17.0;
     s1+=13.0;
    } else {
     s0+=31.0;
     s1+=2696.0;
    }
   }
  } else {
   if(i16<0.048917800188064575){
    if(i21<0.056267231702804565){
     s0+=886.0;
     s1+=12.0;
    } else {
     s0+=67.0;
     s1+=50.0;
    }
   } else {
    if(i65<-0.010154873132705688){
     s0+=50.0;
     s1+=6.0;
    } else {
     s0+=42.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i42<-9.03015006770147e-06){
   if(i28<0.0016636550426483154){
    if(i60<-1.439952029613778e-05){
     s0+=28.0;
     s1+=16.0;
    } else {
     s0+=18.0;
     s1+=435.0;
    }
   } else {
    s0+=121.0;
   }
  } else {
   if(i7<1.002152442932129){
    if(i27<1.1162974834442139){
     s0+=29272.0;
     s1+=2999.0;
    } else {
     s0+=77333.0;
     s1+=591.0;
    }
   } else {
    if(i49<0.05256412550806999){
     s0+=5412.0;
     s1+=778.0;
    } else {
     s0+=1227.0;
     s1+=952.0;
    }
   }
  }
 }
} else {
 if(i3<-6.842305447207764e-05){
  if(i44<0.9983727931976318){
   s0+=78.0;
  } else {
   if(i51<-1.2674228855757974e-05){
    if(i9<1.0162034034729004){
     s0+=78.0;
     s1+=936.0;
    } else {
     s0+=34.0;
     s1+=12553.0;
    }
   } else {
    if(i58<0.04000738635659218){
     s0+=22.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i28<0.000691831111907959){
   if(i7<1.0013036727905273){
    if(i7<1.0001633167266846){
     s0+=151.0;
    } else {
     s0+=59.0;
     s1+=55.0;
    }
   } else {
    if(i63<4.3167901822016574e-06){
     s0+=72.0;
     s1+=1081.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i8<0.008325996808707714){
    if(i13<-0.0038848817348480225){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=672.0;
    }
   } else {
    s1+=68.0;
   }
  }
 }
}
if(i0<6.526708602905273e-05){
 if(i16<0.20029839873313904){
  if(i19<1.0094199180603027){
   if(i28<8.636713027954102e-05){
    if(i29<0.0008655908750370145){
     s0+=25369.0;
     s1+=787.0;
    } else {
     s0+=52839.0;
     s1+=148.0;
    }
   } else {
    if(i49<0.036971185356378555){
     s0+=24597.0;
     s1+=1530.0;
    } else {
     s0+=9091.0;
     s1+=2831.0;
    }
   }
  } else {
   if(i48<1.0029685497283936){
    if(i34<1.092360019683838){
     s0+=7.0;
     s1+=662.0;
    } else {
     s0+=1339.0;
     s1+=471.0;
    }
   } else {
    if(i8<0.006270182318985462){
     s0+=905.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i31<0.0007015573210082948){
   if(i51<-2.072715142276138e-05){
    s1+=11.0;
   } else {
    if(i42<1.0474029295437504e-05){
     s0+=170.0;
    } else {
     s0+=44.0;
     s1+=6.0;
    }
   }
  } else {
   if(i49<0.026990560814738274){
    if(i9<1.0161442756652832){
     s0+=54.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i23<0.24320915341377258){
     s0+=74.0;
     s1+=465.0;
    } else {
     s0+=3.0;
     s1+=1082.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007058108458295465){
  if(i50<-6.421660145861097e-06){
   s0+=78.0;
  } else {
   if(i10<1.0104553699493408){
    if(i16<0.1619367003440857){
     s0+=199.0;
     s1+=1211.0;
    } else {
     s0+=6.0;
     s1+=1532.0;
    }
   } else {
    if(i19<1.0169897079467773){
     s0+=33.0;
     s1+=1699.0;
    } else {
     s1+=11880.0;
    }
   }
  }
 } else {
  s0+=1695.0;
 }
}
if(i38<1.1402404308319092){
 if(i26<0.0002085566520690918){
  if(i28<0.00010257959365844727){
   if(i26<-5.3942203521728516e-05){
    if(i46<0.0006241967785172164){
     s0+=13906.0;
     s1+=666.0;
    } else {
     s0+=17550.0;
     s1+=161.0;
    }
   } else {
    if(i32<1.0808026790618896){
     s0+=16222.0;
     s1+=191.0;
    } else {
     s0+=32261.0;
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.007287806831300259){
    if(i8<0.0036321168299764395){
     s0+=17547.0;
     s1+=271.0;
    } else {
     s0+=1251.0;
     s1+=454.0;
    }
   } else {
    if(i27<1.116804838180542){
     s0+=473.0;
     s1+=2618.0;
    } else {
     s0+=11872.0;
     s1+=1847.0;
    }
   }
  }
 } else {
  if(i44<0.9998540282249451){
   s0+=608.0;
  } else {
   if(i14<0.0005358225898817182){
    if(i5<0.00041490793228149414){
     s0+=57.0;
    } else {
     s0+=47.0;
     s1+=3082.0;
    }
   } else {
    s0+=246.0;
   }
  }
 }
} else {
 if(i0<1.138448715209961e-05){
  if(i35<1.1157057285308838){
   if(i23<0.15824410319328308){
    if(i15<0.009081404656171799){
     s0+=2561.0;
     s1+=76.0;
    } else {
     s0+=21.0;
     s1+=25.0;
    }
   } else {
    if(i36<1.401512861251831){
     s0+=52.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=39.0;
    }
   }
  } else {
   if(i42<1.248931948794052e-05){
    if(i8<0.007135242223739624){
     s0+=751.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i21<0.02685277909040451){
     s0+=335.0;
     s1+=26.0;
    } else {
     s0+=140.0;
     s1+=846.0;
    }
   }
  }
 } else {
  if(i25<0.0019643064588308334){
   s0+=703.0;
  } else {
   if(i23<0.0411888062953949){
    if(i5<0.0016306638717651367){
     s0+=134.0;
     s1+=30.0;
    } else {
     s0+=13.0;
     s1+=76.0;
    }
   } else {
    if(i15<0.0007178405649028718){
     s0+=42.0;
     s1+=60.0;
    } else {
     s0+=76.0;
     s1+=13485.0;
    }
   }
  }
 }
}
if(i3<-9.840897837420925e-05){
 if(i13<-0.0035708248615264893){
  if(i21<0.05629459768533707){
   if(i65<-0.005567640066146851){
    if(i10<0.9768950939178467){
     s0+=515.0;
     s1+=22.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i55<1.0040446519851685){
     s0+=3.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i35<1.038198471069336){
    if(i12<0.8765664100646973){
     s0+=29.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i60<0.003042262513190508){
     s0+=1.0;
     s1+=188.0;
    } else {
     s0+=39.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i36<1.162848949432373){
   if(i50<-4.297398845665157e-06){
    s0+=277.0;
   } else {
    s1+=649.0;
   }
  } else {
   if(i16<0.018527567386627197){
    if(i41<1.0512728691101074){
     s0+=86.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=55.0;
    }
   } else {
    if(i18<0.04125577211380005){
     s0+=17.0;
     s1+=66.0;
    } else {
     s0+=24.0;
     s1+=14408.0;
    }
   }
  }
 }
} else {
 if(i9<1.0107290744781494){
  if(i4<1.5079975128173828e-05){
   if(i31<0.0006975677097216249){
    if(i60<0.0001547660940559581){
     s0+=62074.0;
     s1+=127.0;
    } else {
     s0+=14598.0;
     s1+=282.0;
    }
   } else {
    if(i25<0.0010163268307223916){
     s0+=1866.0;
     s1+=2153.0;
    } else {
     s0+=26797.0;
     s1+=666.0;
    }
   }
  } else {
   if(i1<0.0014273524284362793){
    if(i8<0.004111004061996937){
     s0+=5514.0;
     s1+=147.0;
    } else {
     s0+=1730.0;
     s1+=1784.0;
    }
   } else {
    if(i4<7.575750350952148e-05){
     s0+=10.0;
     s1+=532.0;
    } else {
     s0+=92.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i28<0.0006497502326965332){
   if(i4<1.1146068572998047e-05){
    if(i55<1.0012983083724976){
     s0+=503.0;
     s1+=9.0;
    } else {
     s0+=175.0;
     s1+=120.0;
    }
   } else {
    if(i31<0.0015546164941042662){
     s0+=123.0;
     s1+=2690.0;
    } else {
     s0+=113.0;
     s1+=17.0;
    }
   }
  } else {
   if(i10<1.0164012908935547){
    if(i8<0.0065655577927827835){
     s0+=1889.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=112.0;
    }
   } else {
    s1+=77.0;
   }
  }
 }
}
if(i3<-8.7317792349495e-05){
 if(i65<-0.007095664739608765){
  if(i39<0.14446814358234406){
   if(i45<0.08494293689727783){
    if(i36<1.5545397996902466){
     s0+=624.0;
     s1+=10.0;
    } else {
     s0+=43.0;
     s1+=29.0;
    }
   } else {
    if(i60<0.0030884803272783756){
     s1+=21.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   }
  } else {
   if(i28<0.00011005997657775879){
    if(i21<0.05342848226428032){
     s0+=79.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i46<0.013349758461117744){
     s0+=16.0;
     s1+=21.0;
    } else {
     s1+=116.0;
    }
   }
  }
 } else {
  if(i14<0.0007056489121168852){
   if(i57<-5.998693814035505e-05){
    s0+=59.0;
   } else {
    if(i10<0.9770265817642212){
     s0+=106.0;
     s1+=179.0;
    } else {
     s0+=142.0;
     s1+=15873.0;
    }
   }
  } else {
   s0+=235.0;
  }
 }
} else {
 if(i2<1.0034176111221313){
  if(i21<0.006728812120854855){
   if(i9<0.9940696954727173){
    if(i32<1.0663955211639404){
     s0+=594.0;
     s1+=283.0;
    } else {
     s0+=3311.0;
     s1+=36.0;
    }
   } else {
    if(i60<0.000240150184254162){
     s0+=64158.0;
     s1+=197.0;
    } else {
     s0+=123.0;
     s1+=38.0;
    }
   }
  } else {
   if(i25<0.0011245880741626024){
    if(i15<0.0016681744018569589){
     s0+=7257.0;
     s1+=315.0;
    } else {
     s0+=814.0;
     s1+=2501.0;
    }
   } else {
    if(i8<0.00821316335350275){
     s0+=31005.0;
     s1+=738.0;
    } else {
     s0+=3023.0;
     s1+=718.0;
    }
   }
  }
 } else {
  if(i24<0.000978632946498692){
   if(i8<0.0027533764950931072){
    if(i29<0.0002151791559299454){
     s0+=760.0;
    } else {
     s1+=238.0;
    }
   } else {
    if(i29<0.00017306777590420097){
     s0+=45.0;
    } else {
     s1+=1720.0;
    }
   }
  } else {
   if(i8<0.006091045215725899){
    if(i8<0.004414224997162819){
     s0+=3798.0;
     s1+=12.0;
    } else {
     s0+=147.0;
     s1+=49.0;
    }
   } else {
    if(i19<0.9923999309539795){
     s0+=73.0;
     s1+=272.0;
    } else {
     s0+=15.0;
     s1+=1024.0;
    }
   }
  }
 }
}
if(i1<0.0009958148002624512){
 if(i16<0.19871050119400024){
  if(i22<1.0162832736968994){
   if(i31<0.0007171295001171529){
    if(i3<-5.349424827727489e-05){
     s0+=682.0;
     s1+=69.0;
    } else {
     s0+=79563.0;
     s1+=440.0;
    }
   } else {
    if(i36<1.1161681413650513){
     s0+=4672.0;
     s1+=2977.0;
    } else {
     s0+=28121.0;
     s1+=1907.0;
    }
   }
  } else {
   if(i31<0.0006494271801784635){
    if(i8<0.0052628787234425545){
     s0+=580.0;
     s1+=34.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i28<0.0005609393119812012){
     s0+=166.0;
     s1+=886.0;
    } else {
     s0+=354.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i36<1.1731728315353394){
   if(i69<1.0458669662475586){
    s0+=161.0;
   } else {
    if(i48<0.9999217987060547){
     s0+=4.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.03074808046221733){
    if(i7<1.0017015933990479){
     s0+=162.0;
     s1+=16.0;
    } else {
     s0+=18.0;
     s1+=128.0;
    }
   } else {
    if(i35<1.6057538986206055){
     s0+=40.0;
     s1+=1590.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007058108458295465){
  if(i8<0.00413519237190485){
   if(i25<0.0012918633874505758){
    s1+=700.0;
   } else {
    if(i10<1.016157865524292){
     s0+=184.0;
     s1+=4.0;
    } else {
     s1+=294.0;
    }
   }
  } else {
   if(i18<0.0003789663314819336){
    if(i7<1.0062063932418823){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i58<0.00016013937420211732){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=54.0;
     s1+=15251.0;
    }
   }
  }
 } else {
  s0+=1669.0;
 }
}
if(i6<1.0136241912841797){
 if(i2<1.0035582780838013){
  if(i8<0.014653858728706837){
   if(i5<0.0002925992012023926){
    if(i15<0.0014803381636738777){
     s0+=80632.0;
     s1+=586.0;
    } else {
     s0+=22172.0;
     s1+=2130.0;
    }
   } else {
    if(i49<0.03653765469789505){
     s0+=5618.0;
     s1+=632.0;
    } else {
     s0+=1877.0;
     s1+=1247.0;
    }
   }
  } else {
   if(i65<-0.00712016224861145){
    if(i23<0.09551948308944702){
     s0+=811.0;
     s1+=86.0;
    } else {
     s0+=15.0;
     s1+=81.0;
    }
   } else {
    if(i13<-0.009484350681304932){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=963.0;
    }
   }
  }
 } else {
  if(i29<0.0019794590771198273){
   if(i28<0.000512242317199707){
    if(i41<1.0634185075759888){
     s0+=134.0;
     s1+=1011.0;
    } else {
     s0+=492.0;
     s1+=129.0;
    }
   } else {
    if(i33<0.002149862004444003){
     s0+=3274.0;
    } else {
     s0+=25.0;
     s1+=10.0;
    }
   }
  } else {
   if(i36<1.19221830368042){
    if(i21<0.015914039686322212){
     s0+=52.0;
    } else {
     s1+=65.0;
    }
   } else {
    if(i5<0.0003509521484375){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=93.0;
     s1+=2852.0;
    }
   }
  }
 }
} else {
 if(i57<-3.179698524036212e-06){
  if(i32<1.1673319339752197){
   if(i38<1.0869145393371582){
    if(i24<0.001001344178803265){
     s1+=1694.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i21<0.008518636226654053){
     s0+=635.0;
     s1+=126.0;
    } else {
     s0+=215.0;
     s1+=644.0;
    }
   }
  } else {
   if(i38<1.0869262218475342){
    s0+=18.0;
   } else {
    if(i32<1.7041046619415283){
     s0+=44.0;
     s1+=12136.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i24<0.0025764156598597765){
   s0+=288.0;
  } else {
   if(i27<1.3066213130950928){
    s1+=4.0;
   } else {
    s0+=1.0;
   }
  }
 }
}
if(i6<1.0136241912841797){
 if(i2<1.003297209739685){
  if(i8<0.014840338379144669){
   if(i41<1.1210689544677734){
    if(i39<0.011556686833500862){
     s0+=66429.0;
     s1+=579.0;
    } else {
     s0+=42402.0;
     s1+=3347.0;
    }
   } else {
    if(i55<1.0013920068740845){
     s0+=1032.0;
     s1+=48.0;
    } else {
     s0+=366.0;
     s1+=396.0;
    }
   }
  } else {
   if(i59<1.010246753692627){
    if(i45<0.039715349674224854){
     s0+=726.0;
     s1+=97.0;
    } else {
     s0+=104.0;
     s1+=203.0;
    }
   } else {
    if(i9<0.9224525094032288){
     s0+=26.0;
     s1+=11.0;
    } else {
     s0+=17.0;
     s1+=740.0;
    }
   }
  }
 } else {
  if(i36<1.1731728315353394){
   if(i14<0.00023576186504215002){
    if(i29<0.0010790989035740495){
     s0+=27.0;
     s1+=1173.0;
    } else {
     s0+=573.0;
     s1+=30.0;
    }
   } else {
    if(i17<1.0164930820465088){
     s0+=3280.0;
    } else {
     s0+=347.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<0.0028427443467080593){
    if(i66<0.0015736850909888744){
     s0+=184.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i18<0.10174170136451721){
     s0+=138.0;
     s1+=571.0;
    } else {
     s0+=40.0;
     s1+=2407.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007036929600872099){
  if(i27<1.6811659336090088){
   if(i51<-1.1541445928742178e-05){
    if(i3<-3.257199568906799e-05){
     s0+=162.0;
     s1+=14142.0;
    } else {
     s0+=182.0;
     s1+=93.0;
    }
   } else {
    if(i15<0.002482987241819501){
     s0+=219.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   s0+=110.0;
  }
 } else {
  if(i34<1.348146677017212){
   s0+=620.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i16<0.18751028180122375){
 if(i15<0.001812873873859644){
  if(i0<0.00012010335922241211){
   if(i31<0.0005504889413714409){
    if(i33<0.0018991588149219751){
     s0+=66939.0;
     s1+=79.0;
    } else {
     s0+=3481.0;
     s1+=80.0;
    }
   } else {
    if(i48<0.9997890591621399){
     s0+=11354.0;
     s1+=52.0;
    } else {
     s0+=11562.0;
     s1+=1005.0;
    }
   }
  } else {
   if(i50<-5.462031367642339e-06){
    s0+=109.0;
   } else {
    if(i15<0.0017062078695744276){
     s1+=695.0;
    } else {
     s0+=1.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i4<2.682209014892578e-06){
   if(i36<1.0924975872039795){
    if(i2<0.9973888397216797){
     s0+=383.0;
     s1+=46.0;
    } else {
     s0+=43.0;
     s1+=309.0;
    }
   } else {
    if(i71<-0.008437275886535645){
     s0+=79.0;
     s1+=49.0;
    } else {
     s0+=14036.0;
     s1+=244.0;
    }
   }
  } else {
   if(i0<-2.205371856689453e-05){
    if(i3<-0.0001387277734465897){
     s0+=19.0;
     s1+=65.0;
    } else {
     s0+=3488.0;
     s1+=328.0;
    }
   } else {
    if(i29<0.00019010857795365155){
     s0+=1490.0;
     s1+=4.0;
    } else {
     s0+=2751.0;
     s1+=8266.0;
    }
   }
  }
 }
} else {
 if(i8<0.0050270166248083115){
  if(i17<1.0178322792053223){
   if(i3<-6.943452171981335e-05){
    if(i14<0.00032957608345896006){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i53<1.001868724822998){
     s0+=452.0;
     s1+=2.0;
    } else {
     s0+=137.0;
     s1+=9.0;
    }
   }
  } else {
   if(i57<-3.1486702027905267e-06){
    if(i11<1.010035753250122){
     s0+=42.0;
     s1+=35.0;
    } else {
     s1+=134.0;
    }
   } else {
    s0+=51.0;
   }
  }
 } else {
  if(i3<-3.15181641781237e-05){
   if(i57<-3.071813807764556e-07){
    if(i33<0.001959375338628888){
     s0+=2.0;
    } else {
     s0+=16.0;
     s1+=12671.0;
    }
   } else {
    s0+=9.0;
   }
  } else {
   if(i53<1.0013060569763184){
    s0+=49.0;
   } else {
    if(i41<1.0889031887054443){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=148.0;
    }
   }
  }
 }
}
if(i6<1.0135973691940308){
 if(i8<0.013921761885285378){
  if(i4<1.2695789337158203e-05){
   if(i31<0.0006624255329370499){
    if(i28<-0.00013655424118041992){
     s0+=22947.0;
     s1+=2.0;
    } else {
     s0+=50969.0;
     s1+=336.0;
    }
   } else {
    if(i14<0.00021352514158934355){
     s0+=6414.0;
     s1+=1980.0;
    } else {
     s0+=23356.0;
     s1+=641.0;
    }
   }
  } else {
   if(i49<0.03656554967164993){
    if(i24<0.0009701396338641644){
     s0+=2488.0;
     s1+=1503.0;
    } else {
     s0+=5850.0;
     s1+=208.0;
    }
   } else {
    if(i20<0.9963492751121521){
     s0+=1136.0;
     s1+=205.0;
    } else {
     s0+=798.0;
     s1+=1810.0;
    }
   }
  }
 } else {
  if(i9<0.9342706799507141){
   if(i8<0.02305915579199791){
    if(i35<1.0907535552978516){
     s0+=843.0;
     s1+=20.0;
    } else {
     s0+=80.0;
     s1+=72.0;
    }
   } else {
    if(i64<0.16018076241016388){
     s0+=80.0;
     s1+=71.0;
    } else {
     s0+=10.0;
     s1+=96.0;
    }
   }
  } else {
   if(i26<-0.0012053251266479492){
    if(i68<0.004271051846444607){
     s0+=23.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i5<-0.0015746653079986572){
     s0+=14.0;
    } else {
     s0+=54.0;
     s1+=2807.0;
    }
   }
  }
 }
} else {
 if(i15<0.0013938338961452246){
  if(i26<0.00025641918182373047){
   if(i34<1.0840704441070557){
    s1+=46.0;
   } else {
    if(i24<0.002623209496960044){
     s0+=581.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   }
  } else {
   if(i28<0.0017659664154052734){
    if(i44<0.9996697902679443){
     s0+=4.0;
     s1+=3.0;
    } else {
     s1+=472.0;
    }
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i28<0.0017079412937164307){
   if(i44<0.9983588457107544){
    s0+=79.0;
   } else {
    if(i26<-0.0002257823944091797){
     s0+=121.0;
     s1+=190.0;
    } else {
     s0+=315.0;
     s1+=14114.0;
    }
   }
  } else {
   s0+=89.0;
  }
 }
}
if(i30<1.021282434463501){
 if(i8<0.014073997735977173){
  if(i1<0.001191258430480957){
   if(i8<0.0036597372964024544){
    if(i33<0.0006834079977124929){
     s0+=27895.0;
     s1+=880.0;
    } else {
     s0+=62218.0;
     s1+=197.0;
    }
   } else {
    if(i13<-0.001370459794998169){
     s0+=14565.0;
     s1+=685.0;
    } else {
     s0+=8398.0;
     s1+=3446.0;
    }
   }
  } else {
   if(i20<1.0142087936401367){
    if(i24<0.0010801446624100208){
     s1+=802.0;
    } else {
     s0+=1056.0;
     s1+=312.0;
    }
   } else {
    if(i7<1.002959966659546){
     s0+=13.0;
    } else {
     s0+=8.0;
     s1+=1369.0;
    }
   }
  }
 } else {
  if(i42<4.440260090632364e-05){
   if(i26<-0.0005061626434326172){
    if(i44<1.000307321548462){
     s0+=75.0;
     s1+=38.0;
    } else {
     s0+=38.0;
     s1+=235.0;
    }
   } else {
    if(i12<0.9042929410934448){
     s0+=27.0;
     s1+=54.0;
    } else {
     s0+=15.0;
     s1+=2160.0;
    }
   }
  } else {
   if(i16<0.07549655437469482){
    if(i71<-0.010659754276275635){
     s0+=32.0;
     s1+=64.0;
    } else {
     s0+=788.0;
     s1+=39.0;
    }
   } else {
    if(i9<0.9298617839813232){
     s0+=47.0;
     s1+=55.0;
    } else {
     s0+=4.0;
     s1+=357.0;
    }
   }
  }
 }
} else {
 if(i51<-1.1202977475477383e-05){
  if(i8<0.0044310130178928375){
   if(i31<0.0009773538913577795){
    if(i55<1.0029668807983398){
     s0+=54.0;
     s1+=426.0;
    } else {
     s0+=106.0;
     s1+=15.0;
    }
   } else {
    if(i5<0.003078460693359375){
     s0+=565.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i26<-0.0006628334522247314){
    if(i8<0.015224901959300041){
     s0+=54.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i12<1.0217430591583252){
     s0+=79.0;
     s1+=1098.0;
    } else {
     s0+=25.0;
     s1+=11796.0;
    }
   }
  }
 } else {
  if(i16<0.15866288542747498){
   if(i13<-0.0033492743968963623){
    s1+=3.0;
   } else {
    if(i15<0.0030953309033066034){
     s0+=482.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i48<1.0008223056793213){
    if(i47<7.812338299117982e-05){
     s0+=162.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i35<1.1223869323730469){
     s0+=31.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i5<0.0005720257759094238){
 if(i17<1.0181578397750854){
  if(i15<0.0017197954002767801){
   if(i25<0.0006204007659107447){
    if(i15<0.0011494799982756376){
     s0+=25215.0;
     s1+=168.0;
    } else {
     s0+=2402.0;
     s1+=573.0;
    }
   } else {
    if(i27<1.1980679035186768){
     s0+=45856.0;
    } else {
     s0+=15187.0;
     s1+=176.0;
    }
   }
  } else {
   if(i36<1.0955833196640015){
    if(i55<1.0002989768981934){
     s0+=1515.0;
     s1+=281.0;
    } else {
     s0+=216.0;
     s1+=1681.0;
    }
   } else {
    if(i25<0.0009254006436094642){
     s0+=27.0;
     s1+=311.0;
    } else {
     s0+=18673.0;
     s1+=1123.0;
    }
   }
  }
 } else {
  if(i8<0.005377582274377346){
   if(i10<1.0151935815811157){
    if(i13<-0.003040611743927002){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=668.0;
     s1+=39.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i21<0.014241657219827175){
    if(i53<1.0003662109375){
     s0+=32.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i50<1.2144193988206098e-06){
     s0+=4.0;
     s1+=793.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i6<1.0167311429977417){
  if(i8<0.003482930827885866){
   if(i14<0.00019487517420202494){
    if(i20<1.0040568113327026){
     s0+=170.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=392.0;
    }
   } else {
    if(i49<0.07374183088541031){
     s0+=4257.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  } else {
   if(i1<5.322694778442383e-05){
    if(i46<0.0086782556027174){
     s0+=869.0;
     s1+=148.0;
    } else {
     s0+=66.0;
     s1+=208.0;
    }
   } else {
    if(i58<0.04325951263308525){
     s0+=977.0;
     s1+=2408.0;
    } else {
     s0+=129.0;
     s1+=2927.0;
    }
   }
  }
 } else {
  if(i34<1.1757044792175293){
   if(i50<-3.461051619524369e-06){
    s0+=232.0;
   } else {
    if(i47<9.587814565747976e-05){
     s0+=1.0;
     s1+=1182.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i42<3.6191871913615614e-05){
    if(i0<6.99758529663086e-05){
     s0+=34.0;
     s1+=587.0;
    } else {
     s0+=9.0;
     s1+=10934.0;
    }
   } else {
    if(i2<1.001548409461975){
     s0+=51.0;
     s1+=16.0;
    } else {
     s1+=226.0;
    }
   }
  }
 }
}
if(i10<1.0108102560043335){
 if(i54<0.004800986498594284){
  if(i19<1.0086308717727661){
   if(i0<7.176399230957031e-05){
    if(i7<1.0024285316467285){
     s0+=105618.0;
     s1+=3475.0;
    } else {
     s0+=3555.0;
     s1+=988.0;
    }
   } else {
    if(i53<1.0064854621887207){
     s0+=198.0;
     s1+=228.0;
    } else {
     s0+=50.0;
     s1+=723.0;
    }
   }
  } else {
   if(i3<-4.233798244968057e-05){
    if(i8<0.003935367800295353){
     s0+=521.0;
     s1+=119.0;
    } else {
     s0+=269.0;
     s1+=1035.0;
    }
   } else {
    if(i14<0.00024493481032550335){
     s0+=962.0;
     s1+=365.0;
    } else {
     s0+=1332.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i18<0.09898656606674194){
   if(i4<3.170967102050781e-05){
    if(i0<1.245737075805664e-05){
     s0+=2209.0;
     s1+=128.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   } else {
    if(i10<0.9781866669654846){
     s0+=131.0;
     s1+=93.0;
    } else {
     s0+=34.0;
     s1+=189.0;
    }
   }
  } else {
   if(i11<1.001003623008728){
    if(i21<0.03707384690642357){
     s0+=342.0;
     s1+=90.0;
    } else {
     s0+=5.0;
     s1+=459.0;
    }
   } else {
    if(i38<1.1402318477630615){
     s0+=59.0;
     s1+=132.0;
    } else {
     s0+=43.0;
     s1+=2039.0;
    }
   }
  }
 }
} else {
 if(i21<0.006119716912508011){
  if(i52<1.2576580047607422e-05){
   if(i48<1.0010079145431519){
    s0+=96.0;
   } else {
    if(i8<0.0029319999739527702){
     s0+=78.0;
     s1+=188.0;
    } else {
     s0+=7.0;
     s1+=876.0;
    }
   }
  } else {
   if(i26<0.00030308961868286133){
    if(i14<0.00022041879128664732){
     s1+=9.0;
    } else {
     s0+=840.0;
    }
   } else {
    if(i2<1.0103884935379028){
     s0+=6.0;
     s1+=3.0;
    } else {
     s1+=92.0;
    }
   }
  }
 } else {
  if(i27<1.6811659336090088){
   if(i21<0.01204759068787098){
    if(i13<0.0013753175735473633){
     s0+=157.0;
     s1+=76.0;
    } else {
     s0+=50.0;
     s1+=1306.0;
    }
   } else {
    if(i14<0.0007150453748181462){
     s0+=13.0;
     s1+=11564.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s0+=52.0;
  }
 }
}
if(i3<-9.283507824875414e-05){
 if(i10<0.9735124111175537){
  if(i21<0.05608603358268738){
   if(i67<-0.011144161224365234){
    if(i65<-0.007463365793228149){
     s0+=546.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=8.0;
    }
   } else {
    if(i39<0.09625858813524246){
     s0+=4.0;
     s1+=30.0;
    } else {
     s0+=42.0;
     s1+=4.0;
    }
   }
  } else {
   if(i65<-0.00991472601890564){
    if(i62<0.0009966737125068903){
     s0+=64.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=10.0;
    }
   } else {
    if(i6<0.9135923385620117){
     s0+=21.0;
     s1+=13.0;
    } else {
     s0+=8.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i31<0.0038930517621338367){
   if(i14<0.0007056489121168852){
    if(i59<0.9285808801651001){
     s0+=36.0;
     s1+=53.0;
    } else {
     s0+=133.0;
     s1+=15516.0;
    }
   } else {
    s0+=75.0;
   }
  } else {
   if(i7<1.0037930011749268){
    s0+=141.0;
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i0<6.181001663208008e-05){
  if(i31<0.0007347572827711701){
   if(i33<0.0019365171901881695){
    if(i33<0.0002887298760470003){
     s0+=17851.0;
     s1+=374.0;
    } else {
     s0+=58508.0;
     s1+=41.0;
    }
   } else {
    if(i28<0.00011628866195678711){
     s0+=5212.0;
     s1+=1.0;
    } else {
     s0+=538.0;
     s1+=199.0;
    }
   }
  } else {
   if(i25<0.0010951708536595106){
    if(i28<0.00031626224517822266){
     s0+=1520.0;
     s1+=3117.0;
    } else {
     s0+=2111.0;
     s1+=103.0;
    }
   } else {
    if(i18<0.19304832816123962){
     s0+=27315.0;
     s1+=1286.0;
    } else {
     s0+=422.0;
     s1+=661.0;
    }
   }
  }
 } else {
  if(i54<0.0006941542960703373){
   if(i27<1.0610902309417725){
    s0+=131.0;
   } else {
    if(i26<-6.639957427978516e-05){
     s0+=20.0;
     s1+=4.0;
    } else {
     s0+=29.0;
     s1+=1560.0;
    }
   }
  } else {
   if(i49<0.043655142188072205){
    if(i21<0.013645305298268795){
     s0+=1745.0;
     s1+=52.0;
    } else {
     s0+=6.0;
     s1+=157.0;
    }
   } else {
    if(i27<1.629280686378479){
     s0+=54.0;
     s1+=906.0;
    } else {
     s0+=43.0;
    }
   }
  }
 }
}
if(i11<1.0046385526657104){
 if(i9<1.012169599533081){
  if(i16<0.20763617753982544){
   if(i15<0.001736646518111229){
    if(i36<1.0905578136444092){
     s0+=24199.0;
     s1+=666.0;
    } else {
     s0+=65569.0;
     s1+=258.0;
    }
   } else {
    if(i1<-0.00039440393447875977){
     s0+=17990.0;
     s1+=771.0;
    } else {
     s0+=3586.0;
     s1+=3054.0;
    }
   }
  } else {
   if(i51<-8.578268534620292e-06){
    if(i54<0.0022576358169317245){
     s0+=28.0;
     s1+=41.0;
    } else {
     s0+=11.0;
     s1+=635.0;
    }
   } else {
    if(i22<1.0362043380737305){
     s0+=145.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i31<0.0006521571194753051){
   if(i51<-1.979451008082833e-05){
    if(i66<0.0003962953924201429){
     s0+=16.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i63<4.620490017259726e-06){
     s0+=373.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i10<1.0118664503097534){
    if(i48<1.002795934677124){
     s0+=179.0;
     s1+=887.0;
    } else {
     s0+=197.0;
     s1+=146.0;
    }
   } else {
    if(i50<-4.968566827301402e-06){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=1354.0;
    }
   }
  }
 }
} else {
 if(i27<1.1979892253875732){
  if(i47<-2.4859600671334192e-05){
   if(i36<1.1177868843078613){
    if(i57<-1.4911503967596218e-05){
     s0+=5.0;
    } else {
     s1+=1351.0;
    }
   } else {
    s0+=123.0;
   }
  } else {
   if(i52<9.119510650634766e-06){
    if(i34<1.116804838180542){
     s0+=27.0;
     s1+=673.0;
    } else {
     s0+=223.0;
    }
   } else {
    if(i8<0.006173156201839447){
     s0+=2916.0;
     s1+=23.0;
    } else {
     s0+=17.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i2<1.0030016899108887){
   if(i41<1.1129233837127686){
    if(i57<-1.8009999621426687e-05){
     s0+=27.0;
     s1+=67.0;
    } else {
     s0+=576.0;
     s1+=125.0;
    }
   } else {
    if(i15<0.004828069359064102){
     s0+=31.0;
     s1+=78.0;
    } else {
     s0+=2.0;
     s1+=257.0;
    }
   }
  } else {
   if(i32<1.129928469657898){
    if(i15<0.004120200872421265){
     s0+=56.0;
     s1+=2.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i16<0.07190540432929993){
     s0+=180.0;
     s1+=348.0;
    } else {
     s0+=100.0;
     s1+=13415.0;
    }
   }
  }
 }
}
if(i19<1.0145316123962402){
 if(i8<0.01393989659845829){
  if(i2<1.0031760931015015){
   if(i16<0.20737513899803162){
    if(i15<0.0015704507241025567){
     s0+=85226.0;
     s1+=681.0;
    } else {
     s0+=23982.0;
     s1+=3382.0;
    }
   } else {
    if(i31<0.0008997488766908646){
     s0+=117.0;
     s1+=14.0;
    } else {
     s0+=65.0;
     s1+=251.0;
    }
   }
  } else {
   if(i14<0.00025029206881299615){
    if(i51<-1.3405180652625859e-05){
     s0+=198.0;
     s1+=2299.0;
    } else {
     s0+=813.0;
     s1+=34.0;
    }
   } else {
    if(i39<0.030713677406311035){
     s0+=4102.0;
     s1+=34.0;
    } else {
     s0+=63.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i16<0.0384058952331543){
   if(i19<0.9566696882247925){
    if(i48<1.0049389600753784){
     s0+=893.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i54<0.002632858231663704){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=65.0;
    }
   }
  } else {
   if(i13<-0.005613803863525391){
    if(i25<0.014929085969924927){
     s0+=110.0;
     s1+=15.0;
    } else {
     s0+=25.0;
     s1+=108.0;
    }
   } else {
    if(i31<0.004040990024805069){
     s0+=38.0;
     s1+=3510.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i10<1.0143499374389648){
  if(i8<0.005708144046366215){
   if(i32<1.0905089378356934){
    s1+=193.0;
   } else {
    if(i42<7.661144991288893e-06){
     s0+=616.0;
     s1+=3.0;
    } else {
     s0+=316.0;
     s1+=75.0;
    }
   }
  } else {
   if(i57<-3.514484706101939e-05){
    s0+=13.0;
   } else {
    if(i42<0.00026456883642822504){
     s0+=4.0;
     s1+=1091.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i9<1.0207395553588867){
   if(i14<0.00079325184924528){
    if(i13<0.001528918743133545){
     s0+=9.0;
     s1+=30.0;
    } else {
     s1+=822.0;
    }
   } else {
    s0+=72.0;
   }
  } else {
   if(i8<0.0015770515892654657){
    if(i42<-1.3643127203977201e-05){
     s1+=47.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i51<-1.0819010640261695e-05){
     s1+=11054.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i4<2.3066997528076172e-05){
 if(i17<1.0181578397750854){
  if(i16<0.22811877727508545){
   if(i31<0.0007165126735344529){
    if(i29<0.0002554203965701163){
     s0+=17433.0;
     s1+=314.0;
    } else {
     s0+=61840.0;
     s1+=158.0;
    }
   } else {
    if(i24<0.0009228305425494909){
     s0+=2500.0;
     s1+=2736.0;
    } else {
     s0+=27533.0;
     s1+=974.0;
    }
   }
  } else {
   if(i21<0.037079110741615295){
    if(i41<1.1344619989395142){
     s0+=12.0;
     s1+=16.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   } else {
    if(i31<0.0007247313042171299){
     s0+=2.0;
    } else {
     s1+=209.0;
    }
   }
  }
 } else {
  if(i51<-9.02269584912574e-06){
   if(i44<1.0014660358428955){
    if(i50<-4.311619704822078e-06){
     s0+=11.0;
    } else {
     s0+=65.0;
     s1+=976.0;
    }
   } else {
    if(i15<0.00421834085136652){
     s0+=163.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i10<0.9924445152282715){
    if(i35<1.1223869323730469){
     s0+=26.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i21<0.001032739644870162){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=467.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007044102530926466){
  if(i22<1.0176970958709717){
   if(i18<0.05529382824897766){
    if(i2<1.0046601295471191){
     s0+=995.0;
     s1+=194.0;
    } else {
     s0+=121.0;
     s1+=503.0;
    }
   } else {
    if(i4<4.369020462036133e-05){
     s0+=1491.0;
     s1+=1755.0;
    } else {
     s0+=286.0;
     s1+=3303.0;
    }
   }
  } else {
   if(i0<1.6450881958007812e-05){
    if(i32<1.182512879371643){
     s0+=83.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=109.0;
    }
   } else {
    if(i3<-3.409817145438865e-05){
     s0+=97.0;
     s1+=12894.0;
    } else {
     s0+=58.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i10<1.0342133045196533){
   s0+=3266.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i10<1.0102015733718872){
 if(i23<0.20413026213645935){
  if(i0<6.502866744995117e-05){
   if(i39<0.0143986064940691){
    if(i60<0.00023978212266229093){
     s0+=75748.0;
     s1+=1040.0;
    } else {
     s0+=1057.0;
     s1+=297.0;
    }
   } else {
    if(i1<-0.0005337297916412354){
     s0+=28481.0;
     s1+=658.0;
    } else {
     s0+=8193.0;
     s1+=4076.0;
    }
   }
  } else {
   if(i14<0.0007033228175714612){
    if(i1<0.0010572075843811035){
     s0+=150.0;
     s1+=173.0;
    } else {
     s0+=128.0;
     s1+=1276.0;
    }
   } else {
    s0+=541.0;
   }
  }
 } else {
  if(i57<-3.9369215301121585e-06){
   if(i29<0.0023737449664622545){
    if(i8<0.005771126598119736){
     s0+=52.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<-3.2626729080220684e-05){
     s0+=19.0;
     s1+=2391.0;
    } else {
     s0+=65.0;
     s1+=142.0;
    }
   }
  } else {
   if(i58<0.03426220268011093){
    s0+=198.0;
   } else {
    if(i31<0.0011139169801026583){
     s0+=47.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i37<-0.000288679962977767){
  if(i32<1.6811659336090088){
   if(i5<7.098913192749023e-05){
    if(i47<1.9338140191393904e-05){
     s0+=105.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i57<-6.14996679360047e-05){
     s0+=22.0;
    } else {
     s0+=135.0;
     s1+=11976.0;
    }
   }
  } else {
   s0+=77.0;
  }
 } else {
  if(i43<0.0009983680211007595){
   if(i25<0.001971555408090353){
    s1+=1283.0;
   } else {
    if(i46<0.00023368842084892094){
     s0+=20.0;
    } else {
     s1+=57.0;
    }
   }
  } else {
   if(i10<1.0163753032684326){
    if(i24<0.0025670218747109175){
     s0+=1290.0;
     s1+=23.0;
    } else {
     s1+=155.0;
    }
   } else {
    s1+=920.0;
   }
  }
 }
}
if(i4<2.1636486053466797e-05){
 if(i6<1.0135915279388428){
  if(i31<0.0007107785204425454){
   if(i19<0.9946585893630981){
    if(i36<1.0780352354049683){
     s0+=3344.0;
     s1+=200.0;
    } else {
     s0+=9022.0;
     s1+=26.0;
    }
   } else {
    if(i51<-1.8664508388610557e-05){
     s1+=8.0;
    } else {
     s0+=67206.0;
     s1+=217.0;
    }
   }
  } else {
   if(i34<1.0903575420379639){
    if(i38<1.038330316543579){
     s0+=2421.0;
     s1+=615.0;
    } else {
     s0+=431.0;
     s1+=1878.0;
    }
   } else {
    if(i8<0.017691684886813164){
     s0+=26626.0;
     s1+=1301.0;
    } else {
     s0+=198.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i15<0.0017858482897281647){
   if(i1<0.00029158592224121094){
    s0+=250.0;
   } else {
    if(i4<1.895427703857422e-05){
     s0+=59.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i39<0.021897606551647186){
    if(i8<0.007058866322040558){
     s0+=62.0;
     s1+=15.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i1<-0.0007915794849395752){
     s0+=40.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=596.0;
    }
   }
  }
 }
} else {
 if(i1<0.0012364983558654785){
  if(i32<1.1714401245117188){
   if(i62<-0.0009582969360053539){
    if(i57<-1.1115434972452931e-05){
     s0+=344.0;
     s1+=133.0;
    } else {
     s0+=84.0;
     s1+=678.0;
    }
   } else {
    if(i48<1.0027236938476562){
     s0+=1993.0;
     s1+=683.0;
    } else {
     s0+=2069.0;
     s1+=85.0;
    }
   }
  } else {
   if(i45<0.07929879426956177){
    if(i65<-0.006967008113861084){
     s0+=389.0;
     s1+=62.0;
    } else {
     s0+=548.0;
     s1+=399.0;
    }
   } else {
    if(i66<0.0010075964964926243){
     s0+=101.0;
     s1+=351.0;
    } else {
     s0+=82.0;
     s1+=1754.0;
    }
   }
  }
 } else {
  if(i28<0.0016276836395263672){
   if(i36<1.1672043800354004){
    if(i38<1.0918084383010864){
     s0+=34.0;
     s1+=1834.0;
    } else {
     s0+=559.0;
     s1+=137.0;
    }
   } else {
    if(i2<1.0036925077438354){
     s0+=17.0;
     s1+=16.0;
    } else {
     s0+=41.0;
     s1+=13007.0;
    }
   }
  } else {
   if(i8<0.009550094604492188){
    s0+=478.0;
   } else {
    s1+=57.0;
   }
  }
 }
}
if(i10<1.0108674764633179){
 if(i35<1.1402404308319092){
  if(i28<0.00011068582534790039){
   if(i48<0.9996906518936157){
    if(i60<0.0032018134370446205){
     s0+=42389.0;
     s1+=61.0;
    } else {
     s0+=156.0;
     s1+=36.0;
    }
   } else {
    if(i31<0.0006280438392423093){
     s0+=33236.0;
     s1+=131.0;
    } else {
     s0+=7195.0;
     s1+=917.0;
    }
   }
  } else {
   if(i53<1.0085783004760742){
    if(i31<0.0005213680560700595){
     s0+=11448.0;
     s1+=118.0;
    } else {
     s0+=19093.0;
     s1+=4592.0;
    }
   } else {
    if(i42<3.5595767258200794e-05){
     s0+=235.0;
     s1+=949.0;
    } else {
     s0+=524.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i15<0.0015659972559660673){
   s0+=1017.0;
  } else {
   if(i41<1.0650453567504883){
    if(i7<1.0059003829956055){
     s0+=114.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   } else {
    if(i21<0.03286783769726753){
     s0+=90.0;
     s1+=126.0;
    } else {
     s0+=56.0;
     s1+=2794.0;
    }
   }
  }
 }
} else {
 if(i28<0.0015906691551208496){
  if(i24<0.002556019928306341){
   if(i29<0.001189069589599967){
    if(i65<0.004469811916351318){
     s1+=1758.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i69<1.0438756942749023){
     s0+=754.0;
     s1+=150.0;
    } else {
     s0+=35.0;
     s1+=132.0;
    }
   }
  } else {
   if(i23<0.0700516402721405){
    if(i0<6.407499313354492e-05){
     s0+=56.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i51<-1.7672702597337775e-05){
     s0+=4.0;
     s1+=11735.0;
    } else {
     s0+=9.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i48<1.0069279670715332){
   s0+=410.0;
  } else {
   s1+=91.0;
  }
 }
}
if(i16<0.18676531314849854){
 if(i3<-9.340472752228379e-05){
  if(i65<-0.007203549146652222){
   if(i35<1.0721580982208252){
    if(i45<0.10379737615585327){
     s0+=538.0;
     s1+=9.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i39<0.14649644494056702){
     s0+=89.0;
     s1+=32.0;
    } else {
     s0+=12.0;
     s1+=93.0;
    }
   }
  } else {
   if(i52<2.485513687133789e-05){
    if(i23<0.033443450927734375){
     s0+=134.0;
     s1+=99.0;
    } else {
     s0+=143.0;
     s1+=3510.0;
    }
   } else {
    if(i56<0.002588436473160982){
     s0+=172.0;
     s1+=1.0;
    } else {
     s1+=37.0;
    }
   }
  }
 } else {
  if(i10<1.0075411796569824){
   if(i39<0.012192965485155582){
    if(i15<0.001966998912394047){
     s0+=66356.0;
     s1+=436.0;
    } else {
     s0+=3684.0;
     s1+=400.0;
    }
   } else {
    if(i31<0.0006712698959745467){
     s0+=21184.0;
     s1+=224.0;
    } else {
     s0+=20542.0;
     s1+=3715.0;
    }
   }
  } else {
   if(i29<0.0011018009390681982){
    if(i43<0.00018870770873036236){
     s0+=63.0;
     s1+=147.0;
    } else {
     s0+=19.0;
     s1+=1623.0;
    }
   } else {
    if(i8<0.0064107878133654594){
     s0+=2877.0;
     s1+=87.0;
    } else {
     s0+=9.0;
     s1+=764.0;
    }
   }
  }
 }
} else {
 if(i21<0.0074525261297822){
  if(i51<-3.0916246032575145e-05){
   if(i32<1.1447370052337646){
    s0+=2.0;
   } else {
    s1+=233.0;
   }
  } else {
   if(i8<0.009705988690257072){
    if(i60<-0.00017604940512683243){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=425.0;
     s1+=8.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i8<0.005058848299086094){
   if(i11<1.011047601699829){
    if(i1<0.0003215670585632324){
     s0+=313.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=45.0;
    }
   } else {
    s1+=137.0;
   }
  } else {
   if(i3<1.1449259545770474e-05){
    if(i32<1.1258058547973633){
     s0+=33.0;
    } else {
     s0+=36.0;
     s1+=12571.0;
    }
   } else {
    s0+=20.0;
   }
  }
 }
}
if(i10<1.010008454322815){
 if(i8<0.014074793085455894){
  if(i15<0.0017870392184704542){
   if(i32<1.077322244644165){
    if(i34<1.05497145652771){
     s0+=20891.0;
     s1+=105.0;
    } else {
     s0+=8785.0;
     s1+=779.0;
    }
   } else {
    if(i1<0.0033533573150634766){
     s0+=62701.0;
     s1+=252.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i2<0.9983280897140503){
    if(i2<0.997398853302002){
     s0+=15148.0;
     s1+=230.0;
    } else {
     s0+=1004.0;
     s1+=237.0;
    }
   } else {
    if(i34<1.0452228784561157){
     s0+=1677.0;
    } else {
     s0+=3393.0;
     s1+=4795.0;
    }
   }
  }
 } else {
  if(i35<1.052932858467102){
   if(i48<1.0041465759277344){
    if(i67<-0.0109577476978302){
     s0+=689.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=11.0;
    }
   } else {
    if(i33<0.01527484692633152){
     s0+=50.0;
     s1+=23.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i9<0.9341237545013428){
    if(i34<1.4617114067077637){
     s0+=243.0;
     s1+=55.0;
    } else {
     s0+=15.0;
     s1+=175.0;
    }
   } else {
    if(i25<0.003607337363064289){
     s0+=2.0;
    } else {
     s0+=26.0;
     s1+=3077.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007058108458295465){
  if(i3<-3.962073242291808e-05){
   if(i51<-1.395278286508983e-05){
    if(i57<-6.331902841338888e-05){
     s0+=24.0;
    } else {
     s0+=103.0;
     s1+=14575.0;
    }
   } else {
    s0+=94.0;
   }
  } else {
   if(i25<0.000490601931232959){
    s1+=103.0;
   } else {
    if(i61<0.13616898655891418){
     s0+=162.0;
     s1+=19.0;
    } else {
     s0+=15.0;
     s1+=27.0;
    }
   }
  }
 } else {
  s0+=1306.0;
 }
}
if(i2<1.003852128982544){
 if(i23<0.20764318108558655){
  if(i6<1.0114476680755615){
   if(i15<0.0017126054735854268){
    if(i60<0.0001833332935348153){
     s0+=75204.0;
     s1+=374.0;
    } else {
     s0+=13330.0;
     s1+=566.0;
    }
   } else {
    if(i26<-0.00020891427993774414){
     s0+=16710.0;
     s1+=1289.0;
    } else {
     s0+=5668.0;
     s1+=2738.0;
    }
   }
  } else {
   if(i46<0.0007252349751070142){
    if(i29<0.0019420974422246218){
     s0+=3.0;
     s1+=273.0;
    } else {
     s0+=54.0;
     s1+=17.0;
    }
   } else {
    if(i21<0.023930488154292107){
     s0+=671.0;
     s1+=58.0;
    } else {
     s0+=170.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i15<0.0025008267257362604){
   if(i53<1.0021698474884033){
    if(i64<0.0488838255405426){
     s0+=162.0;
    } else {
     s0+=74.0;
     s1+=7.0;
    }
   } else {
    if(i20<0.9994152188301086){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=26.0;
    }
   }
  } else {
   if(i15<0.003445573151111603){
    if(i3<-1.0228164683212526e-05){
     s0+=11.0;
     s1+=74.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   } else {
    if(i38<1.1693168878555298){
     s0+=20.0;
     s1+=191.0;
    } else {
     s1+=801.0;
    }
   }
  }
 }
} else {
 if(i21<0.0076818400993943214){
  if(i20<1.0137439966201782){
   if(i28<0.0005135238170623779){
    if(i29<0.0009589017136022449){
     s1+=971.0;
    } else {
     s0+=311.0;
     s1+=43.0;
    }
   } else {
    if(i32<1.176171064376831){
     s0+=3372.0;
     s1+=4.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i42<2.32050570048159e-06){
    if(i52<2.6226043701171875e-05){
     s0+=9.0;
     s1+=964.0;
    } else {
     s0+=23.0;
    }
   } else {
    s0+=18.0;
   }
  }
 } else {
  if(i14<0.0007056489121168852){
   if(i0<8.493661880493164e-05){
    if(i28<0.0007049441337585449){
     s0+=110.0;
     s1+=1859.0;
    } else {
     s0+=203.0;
     s1+=422.0;
    }
   } else {
    if(i57<-5.673414852935821e-05){
     s0+=26.0;
    } else {
     s0+=71.0;
     s1+=13402.0;
    }
   }
  } else {
   s0+=222.0;
  }
 }
}
if(i0<6.347894668579102e-05){
 if(i16<0.2009410262107849){
  if(i15<0.0017543057911098003){
   if(i41<1.0179111957550049){
    if(i3<-1.257040821656119e-05){
     s0+=1205.0;
     s1+=311.0;
    } else {
     s0+=9389.0;
     s1+=178.0;
    }
   } else {
    if(i25<0.0005827653803862631){
     s0+=20011.0;
     s1+=326.0;
    } else {
     s0+=61057.0;
     s1+=232.0;
    }
   }
  } else {
   if(i24<0.0009228305425494909){
    if(i32<1.0440731048583984){
     s0+=1967.0;
     s1+=26.0;
    } else {
     s0+=288.0;
     s1+=2940.0;
    }
   } else {
    if(i4<1.2099742889404297e-05){
     s0+=16775.0;
     s1+=462.0;
    } else {
     s0+=3328.0;
     s1+=1769.0;
    }
   }
  }
 } else {
  if(i48<1.0011409521102905){
   if(i39<0.12229526042938232){
    if(i51<-1.1460824680398218e-05){
     s0+=17.0;
     s1+=47.0;
    } else {
     s0+=248.0;
     s1+=3.0;
    }
   } else {
    s1+=236.0;
   }
  } else {
   if(i8<0.004616668447852135){
    if(i44<1.0011656284332275){
     s0+=16.0;
     s1+=22.0;
    } else {
     s0+=64.0;
    }
   } else {
    if(i26<-0.0006025731563568115){
     s0+=8.0;
     s1+=62.0;
    } else {
     s0+=1.0;
     s1+=1233.0;
    }
   }
  }
 }
} else {
 if(i12<1.0237056016921997){
  if(i36<1.176405668258667){
   if(i24<0.0009706164710223675){
    if(i32<1.0462350845336914){
     s0+=70.0;
    } else {
     s1+=1856.0;
    }
   } else {
    s0+=2019.0;
   }
  } else {
   if(i60<0.0029973676428198814){
    if(i23<0.09263893961906433){
     s0+=65.0;
     s1+=392.0;
    } else {
     s0+=15.0;
     s1+=2937.0;
    }
   } else {
    if(i33<0.017282307147979736){
     s0+=35.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i50<-6.639997081947513e-06){
   s0+=15.0;
  } else {
   if(i32<1.1599657535552979){
    if(i39<0.0027979258447885513){
     s0+=8.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=798.0;
    }
   } else {
    if(i23<0.09631425142288208){
     s0+=3.0;
     s1+=42.0;
    } else {
     s0+=4.0;
     s1+=10224.0;
    }
   }
  }
 }
}
if(i1<0.0009762048721313477){
 if(i5<0.0003383755683898926){
  if(i23<0.23857253789901733){
   if(i7<0.9995007514953613){
    if(i69<0.7630002498626709){
     s0+=28.0;
     s1+=19.0;
    } else {
     s0+=53481.0;
     s1+=316.0;
    }
   } else {
    if(i34<1.0903575420379639){
     s0+=11083.0;
     s1+=1828.0;
    } else {
     s0+=40737.0;
     s1+=905.0;
    }
   }
  } else {
   if(i51<-7.964621545397677e-06){
    if(i39<0.01629902981221676){
     s0+=2.0;
    } else {
     s1+=288.0;
    }
   } else {
    s0+=69.0;
   }
  }
 } else {
  if(i37<-0.0002016303187701851){
   if(i3<-4.129859007662162e-05){
    if(i16<0.047032684087753296){
     s0+=247.0;
     s1+=196.0;
    } else {
     s0+=260.0;
     s1+=2736.0;
    }
   } else {
    if(i27<1.1203181743621826){
     s0+=37.0;
     s1+=284.0;
    } else {
     s0+=896.0;
     s1+=159.0;
    }
   }
  } else {
   if(i47<1.6796042473288253e-05){
    if(i32<1.0773630142211914){
     s0+=2414.0;
     s1+=285.0;
    } else {
     s0+=3443.0;
     s1+=1.0;
    }
   } else {
    if(i13<-0.00127410888671875){
     s0+=1673.0;
     s1+=290.0;
    } else {
     s0+=417.0;
     s1+=693.0;
    }
   }
  }
 }
} else {
 if(i24<0.002358806785196066){
  if(i14<0.0002467811282258481){
   if(i52<5.0961971282958984e-05){
    s1+=2210.0;
   } else {
    s0+=12.0;
   }
  } else {
   s0+=1920.0;
  }
 } else {
  if(i26<-0.0003209114074707031){
   if(i8<0.012477894313633442){
    if(i41<1.1329288482666016){
     s0+=42.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i5<0.0017510056495666504){
     s0+=34.0;
     s1+=52.0;
    } else {
     s0+=11.0;
     s1+=263.0;
    }
   }
  } else {
   if(i20<1.0045578479766846){
    if(i45<0.09027338027954102){
     s0+=21.0;
     s1+=166.0;
    } else {
     s0+=6.0;
     s1+=1026.0;
    }
   } else {
    if(i37<-0.00038580293767154217){
     s1+=10309.0;
    } else {
     s0+=2.0;
     s1+=1998.0;
    }
   }
  }
 }
}
if(i3<-9.782160486793146e-05){
 if(i16<0.018582075834274292){
  if(i42<8.06565640232293e-06){
   s1+=45.0;
  } else {
   if(i71<-0.014828205108642578){
    if(i14<0.00014548332546837628){
     s0+=10.0;
    } else {
     s0+=5.0;
     s1+=26.0;
    }
   } else {
    if(i9<0.9716646671295166){
     s0+=594.0;
     s1+=14.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i44<0.9979400038719177){
   s0+=142.0;
  } else {
   if(i30<0.8867907524108887){
    if(i49<0.22768646478652954){
     s0+=97.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=143.0;
    }
   } else {
    if(i8<0.004796704743057489){
     s0+=82.0;
     s1+=647.0;
    } else {
     s0+=50.0;
     s1+=14676.0;
    }
   }
  }
 }
} else {
 if(i47<-2.574555401224643e-05){
  if(i31<0.0013848820235580206){
   if(i28<0.0008271932601928711){
    if(i7<1.002439022064209){
     s0+=6.0;
    } else {
     s1+=962.0;
    }
   } else {
    if(i22<1.030298113822937){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i15<0.005543065257370472){
    s0+=53.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i15<0.0018720366060733795){
   if(i26<0.00021332502365112305){
    if(i15<0.0012836098903790116){
     s0+=82190.0;
     s1+=430.0;
    } else {
     s0+=12320.0;
     s1+=877.0;
    }
   } else {
    if(i66<0.0003282602992840111){
     s0+=21.0;
     s1+=65.0;
    } else {
     s0+=208.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<0.9950193166732788){
    if(i1<-0.0003196597099304199){
     s0+=14723.0;
     s1+=546.0;
    } else {
     s0+=195.0;
     s1+=259.0;
    }
   } else {
    if(i55<0.9998239278793335){
     s0+=2494.0;
     s1+=149.0;
    } else {
     s0+=3217.0;
     s1+=5539.0;
    }
   }
  }
 }
}
if(i5<0.0005874037742614746){
 if(i31<0.0007268592598848045){
  if(i54<0.0020249169319868088){
   if(i15<0.0009027161868289113){
    if(i33<0.001856507733464241){
     s0+=61054.0;
     s1+=59.0;
    } else {
     s0+=3165.0;
     s1+=60.0;
    }
   } else {
    if(i24<0.00027653906727209687){
     s0+=2453.0;
     s1+=249.0;
    } else {
     s0+=11057.0;
     s1+=63.0;
    }
   }
  } else {
   if(i5<0.00044405460357666016){
    if(i51<-1.0070782082038932e-05){
     s0+=77.0;
     s1+=49.0;
    } else {
     s0+=2601.0;
     s1+=17.0;
    }
   } else {
    if(i25<0.0019872901029884815){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i36<1.0955833196640015){
   if(i21<0.0086458595469594){
    if(i32<1.04445219039917){
     s0+=1548.0;
     s1+=29.0;
    } else {
     s0+=229.0;
     s1+=367.0;
    }
   } else {
    if(i8<0.0027957020793110132){
     s0+=242.0;
     s1+=8.0;
    } else {
     s0+=163.0;
     s1+=2043.0;
    }
   }
  } else {
   if(i23<0.19691303372383118){
    if(i5<0.0001525282859802246){
     s0+=24364.0;
     s1+=461.0;
    } else {
     s0+=2950.0;
     s1+=1035.0;
    }
   } else {
    if(i58<0.04911921173334122){
     s0+=167.0;
     s1+=77.0;
    } else {
     s0+=10.0;
     s1+=708.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i35<1.0773653984069824){
   if(i14<0.00026034345501102507){
    if(i29<0.002139562275260687){
     s0+=36.0;
     s1+=2485.0;
    } else {
     s0+=128.0;
     s1+=5.0;
    }
   } else {
    s0+=1753.0;
   }
  } else {
   if(i27<1.116804838180542){
    s1+=388.0;
   } else {
    if(i25<0.002545194933190942){
     s0+=2972.0;
     s1+=17.0;
    } else {
     s0+=99.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i3<-8.026944124139845e-05){
   if(i19<0.9559777975082397){
    if(i16<0.061388999223709106){
     s0+=237.0;
     s1+=38.0;
    } else {
     s0+=35.0;
     s1+=138.0;
    }
   } else {
    if(i69<0.9705103039741516){
     s0+=88.0;
     s1+=1320.0;
    } else {
     s0+=34.0;
     s1+=13087.0;
    }
   }
  } else {
   if(i26<-0.00016051530838012695){
    if(i35<1.1087195873260498){
     s0+=814.0;
     s1+=189.0;
    } else {
     s0+=105.0;
     s1+=342.0;
    }
   } else {
    if(i64<0.012003811076283455){
     s0+=92.0;
     s1+=29.0;
    } else {
     s0+=89.0;
     s1+=872.0;
    }
   }
  }
 }
}
if(i2<1.003852128982544){
 if(i15<0.00181779102422297){
  if(i51<-1.9982900994364172e-05){
   if(i36<1.1953835487365723){
    s0+=20.0;
   } else {
    s1+=66.0;
   }
  } else {
   if(i60<0.0001867852988652885){
    if(i15<0.001470797462388873){
     s0+=72548.0;
     s1+=225.0;
    } else {
     s0+=4500.0;
     s1+=197.0;
    }
   } else {
    if(i0<-4.303455352783203e-05){
     s0+=10292.0;
     s1+=33.0;
    } else {
     s0+=3580.0;
     s1+=663.0;
    }
   }
  }
 } else {
  if(i54<0.010889803990721703){
   if(i1<-0.00047257542610168457){
    if(i25<0.000706556485965848){
     s0+=133.0;
     s1+=139.0;
    } else {
     s0+=16597.0;
     s1+=576.0;
    }
   } else {
    if(i8<0.0040231868624687195){
     s0+=2133.0;
     s1+=156.0;
    } else {
     s0+=1740.0;
     s1+=3605.0;
    }
   }
  } else {
   if(i62<-0.000287842471152544){
    if(i10<0.9357446432113647){
     s0+=6.0;
    } else {
     s0+=20.0;
     s1+=986.0;
    }
   } else {
    if(i41<1.0975340604782104){
     s0+=368.0;
     s1+=23.0;
    } else {
     s0+=15.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i36<1.1766420602798462){
  if(i55<1.00218665599823){
   if(i14<0.00024930256768129766){
    if(i24<0.001065014861524105){
     s1+=2615.0;
    } else {
     s0+=94.0;
    }
   } else {
    s0+=1428.0;
   }
  } else {
   if(i55<1.0030031204223633){
    if(i14<0.00015241201617754996){
     s1+=148.0;
    } else {
     s0+=382.0;
     s1+=4.0;
    }
   } else {
    if(i8<0.006674918346107006){
     s0+=2112.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i16<0.06681892275810242){
   if(i70<0.008684378117322922){
    if(i27<1.2221031188964844){
     s1+=8.0;
    } else {
     s0+=186.0;
     s1+=5.0;
    }
   } else {
    if(i68<0.00015383181744255126){
     s0+=6.0;
    } else {
     s0+=37.0;
     s1+=298.0;
    }
   }
  } else {
   if(i26<-0.00027889013290405273){
    if(i15<0.004357310943305492){
     s0+=39.0;
    } else {
     s0+=17.0;
     s1+=363.0;
    }
   } else {
    if(i10<0.9947216510772705){
     s0+=15.0;
     s1+=302.0;
    } else {
     s0+=26.0;
     s1+=14078.0;
    }
   }
  }
 }
}
if(i11<1.0046367645263672){
 if(i30<1.0215551853179932){
  if(i15<0.0017366211395710707){
   if(i31<0.0005749322008341551){
    if(i69<1.0364155769348145){
     s0+=70603.0;
     s1+=158.0;
    } else {
     s0+=101.0;
     s1+=6.0;
    }
   } else {
    if(i24<0.00027867083554156125){
     s0+=1296.0;
     s1+=517.0;
    } else {
     s0+=17757.0;
     s1+=287.0;
    }
   }
  } else {
   if(i7<1.0002342462539673){
    if(i8<0.02014576829969883){
     s0+=14202.0;
     s1+=519.0;
    } else {
     s0+=19.0;
     s1+=104.0;
    }
   } else {
    if(i25<0.0012156389420852065){
     s0+=1057.0;
     s1+=2389.0;
    } else {
     s0+=6069.0;
     s1+=1655.0;
    }
   }
  }
 } else {
  if(i8<0.005232871975749731){
   if(i1<0.00034749507904052734){
    if(i7<1.0000876188278198){
     s0+=437.0;
    } else {
     s0+=443.0;
     s1+=41.0;
    }
   } else {
    if(i48<1.0015844106674194){
     s0+=59.0;
     s1+=8.0;
    } else {
     s0+=10.0;
     s1+=62.0;
    }
   }
  } else {
   if(i11<0.9903371930122375){
    if(i68<-0.0017795419553294778){
     s1+=18.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i31<0.0037617464549839497){
     s0+=36.0;
     s1+=2242.0;
    } else {
     s0+=20.0;
    }
   }
  }
 }
} else {
 if(i32<1.170027494430542){
  if(i8<0.002853245474398136){
   if(i42<-1.5184045878413599e-05){
    if(i1<0.00189208984375){
     s0+=53.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=310.0;
    }
   } else {
    if(i50<-2.678600139915943e-06){
     s0+=2640.0;
    } else {
     s0+=201.0;
     s1+=15.0;
    }
   }
  } else {
   if(i66<0.0004657742683775723){
    if(i28<0.0004773139953613281){
     s0+=2.0;
     s1+=1655.0;
    } else {
     s0+=36.0;
     s1+=94.0;
    }
   } else {
    if(i32<1.1288580894470215){
     s0+=449.0;
     s1+=125.0;
    } else {
     s0+=155.0;
     s1+=673.0;
    }
   }
  }
 } else {
  if(i18<0.06770750880241394){
   if(i48<1.0029821395874023){
    if(i16<0.05019456148147583){
     s0+=403.0;
     s1+=42.0;
    } else {
     s0+=16.0;
     s1+=23.0;
    }
   } else {
    if(i1<0.0008245110511779785){
     s0+=129.0;
     s1+=42.0;
    } else {
     s0+=17.0;
     s1+=217.0;
    }
   }
  } else {
   if(i25<0.002615713980048895){
    if(i39<0.04872230067849159){
     s1+=1.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i35<1.0742113590240479){
     s0+=70.0;
     s1+=236.0;
    } else {
     s0+=118.0;
     s1+=12972.0;
    }
   }
  }
 }
}
if(i3<-9.841532300924882e-05){
 if(i19<0.9475822448730469){
  if(i3<-0.00016763103485573083){
   if(i25<0.01568865403532982){
    if(i55<1.0074138641357422){
     s0+=19.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i60<0.005134102888405323){
     s1+=31.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i41<1.0457196235656738){
    if(i21<0.0639253631234169){
     s0+=505.0;
     s1+=8.0;
    } else {
     s0+=33.0;
     s1+=26.0;
    }
   } else {
    if(i21<0.02051064372062683){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i38<1.1178078651428223){
   if(i50<-5.552591574087273e-06){
    s0+=227.0;
   } else {
    if(i59<0.96116042137146){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=983.0;
    }
   }
  } else {
   if(i9<0.9419490098953247){
    if(i45<0.02750977873802185){
     s0+=48.0;
     s1+=20.0;
    } else {
     s0+=7.0;
     s1+=86.0;
    }
   } else {
    if(i41<1.0371962785720825){
     s0+=57.0;
     s1+=131.0;
    } else {
     s0+=26.0;
     s1+=13938.0;
    }
   }
  }
 }
} else {
 if(i8<0.004014251288026571){
  if(i0<9.578466415405273e-05){
   if(i34<1.0905030965805054){
    if(i17<0.9954746961593628){
     s0+=3854.0;
     s1+=580.0;
    } else {
     s0+=22927.0;
     s1+=499.0;
    }
   } else {
    if(i38<1.1354830265045166){
     s0+=64171.0;
     s1+=169.0;
    } else {
     s0+=3038.0;
     s1+=153.0;
    }
   }
  } else {
   if(i28<0.0005680620670318604){
    s1+=489.0;
   } else {
    s0+=569.0;
   }
  }
 } else {
  if(i19<1.0068204402923584){
   if(i4<-1.4901161193847656e-06){
    if(i45<0.20237162709236145){
     s0+=16502.0;
     s1+=220.0;
    } else {
     s0+=30.0;
     s1+=59.0;
    }
   } else {
    if(i13<-0.0014230310916900635){
     s0+=3349.0;
     s1+=909.0;
    } else {
     s0+=442.0;
     s1+=2429.0;
    }
   }
  } else {
   if(i51<-1.089437682821881e-05){
    if(i27<1.4586446285247803){
     s0+=253.0;
     s1+=3509.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i34<1.0805797576904297){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=427.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i20<1.0082969665527344){
 if(i16<0.198454350233078){
  if(i15<0.0017863260582089424){
   if(i15<0.0013309493660926819){
    if(i35<1.0179111957550049){
     s0+=4075.0;
     s1+=142.0;
    } else {
     s0+=78149.0;
     s1+=304.0;
    }
   } else {
    if(i4<-3.874301910400391e-06){
     s0+=7848.0;
     s1+=252.0;
    } else {
     s0+=1854.0;
     s1+=457.0;
    }
   }
  } else {
   if(i33<0.0012166148517280817){
    if(i31<0.0011913920752704144){
     s0+=672.0;
     s1+=3028.0;
    } else {
     s0+=1810.0;
    }
   } else {
    if(i48<1.0018479824066162){
     s0+=14819.0;
     s1+=840.0;
    } else {
     s0+=5061.0;
     s1+=2328.0;
    }
   }
  }
 } else {
  if(i3<-3.419190034037456e-05){
   if(i21<0.00856654904782772){
    if(i8<0.007861523889005184){
     s0+=25.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i8<0.005579328164458275){
     s0+=17.0;
     s1+=50.0;
    } else {
     s0+=4.0;
     s1+=2917.0;
    }
   }
  } else {
   if(i31<0.001029057428240776){
    if(i35<1.1014058589935303){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=241.0;
    }
   } else {
    if(i4<5.543231964111328e-06){
     s0+=64.0;
     s1+=5.0;
    } else {
     s0+=37.0;
     s1+=143.0;
    }
   }
  }
 }
} else {
 if(i36<1.1764509677886963){
  if(i19<1.0175869464874268){
   if(i46<0.0007563126273453236){
    if(i29<0.0014180873986333609){
     s1+=1130.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i39<0.02602256089448929){
     s0+=1599.0;
     s1+=25.0;
    } else {
     s0+=18.0;
     s1+=50.0;
    }
   }
  } else {
   if(i27<1.1180615425109863){
    s1+=827.0;
   } else {
    s0+=67.0;
   }
  }
 } else {
  if(i23<0.061920374631881714){
   if(i8<0.002865430898964405){
    if(i13<0.0026961565017700195){
     s0+=76.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i11<1.0008018016815186){
    if(i51<-2.4561333702877164e-05){
     s1+=170.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i57<-4.911214546154952e-06){
     s0+=3.0;
     s1+=11509.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i10<1.010221242904663){
 if(i18<0.21719589829444885){
  if(i5<0.00032711029052734375){
   if(i32<1.0867384672164917){
    if(i15<0.0015701169613748789){
     s0+=31127.0;
     s1+=514.0;
    } else {
     s0+=3622.0;
     s1+=1603.0;
    }
   } else {
    if(i21<0.0901748463511467){
     s0+=69833.0;
     s1+=780.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i34<1.176374077796936){
    if(i8<0.004120547324419022){
     s0+=6995.0;
     s1+=332.0;
    } else {
     s0+=576.0;
     s1+=1711.0;
    }
   } else {
    if(i39<0.11883540451526642){
     s0+=2136.0;
     s1+=1475.0;
    } else {
     s0+=270.0;
     s1+=1179.0;
    }
   }
  }
 } else {
  if(i8<0.007083310279995203){
   if(i3<-4.381152757559903e-05){
    if(i63<5.075082754046889e-06){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i59<1.0645573139190674){
     s1+=1.0;
    } else {
     s0+=268.0;
     s1+=4.0;
    }
   }
  } else {
   if(i29<0.002047228394076228){
    s0+=2.0;
   } else {
    if(i1<-0.0019456446170806885){
     s0+=1.0;
     s1+=19.0;
    } else {
     s1+=2225.0;
    }
   }
  }
 }
} else {
 if(i8<0.003724998328834772){
  if(i42<-1.3509572454495355e-05){
   if(i46<0.0006738522788509727){
    s1+=409.0;
   } else {
    if(i35<1.1270966529846191){
     s0+=114.0;
     s1+=78.0;
    } else {
     s1+=155.0;
    }
   }
  } else {
   if(i36<1.0945069789886475){
    s1+=36.0;
   } else {
    if(i3<-8.972860814537853e-05){
     s0+=17.0;
     s1+=32.0;
    } else {
     s0+=1224.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i36<1.1614863872528076){
   if(i15<0.0033272644504904747){
    if(i43<0.0010117359925061464){
     s1+=1630.0;
    } else {
     s0+=76.0;
     s1+=29.0;
    }
   } else {
    s0+=130.0;
   }
  } else {
   if(i28<7.11679458618164e-05){
    if(i51<-1.0514580935705453e-05){
     s1+=416.0;
    } else {
     s0+=22.0;
    }
   } else {
    s1+=11752.0;
   }
  }
 }
}
if(i19<1.0137882232666016){
 if(i8<0.013644848950207233){
  if(i2<1.0035386085510254){
   if(i28<8.600950241088867e-05){
    if(i18<0.2504410147666931){
     s0+=78203.0;
     s1+=906.0;
    } else {
     s0+=45.0;
     s1+=28.0;
    }
   } else {
    if(i29<0.0009895038092508912){
     s0+=6102.0;
     s1+=1821.0;
    } else {
     s0+=25444.0;
     s1+=1958.0;
    }
   }
  } else {
   if(i29<0.0019522530492395163){
    if(i44<1.0009737014770508){
     s0+=1765.0;
     s1+=1155.0;
    } else {
     s0+=2161.0;
     s1+=3.0;
    }
   } else {
    if(i7<1.001847267150879){
     s0+=35.0;
    } else {
     s0+=129.0;
     s1+=1071.0;
    }
   }
  }
 } else {
  if(i9<0.9342308044433594){
   if(i35<1.0917787551879883){
    if(i4<6.687641143798828e-05){
     s0+=959.0;
     s1+=30.0;
    } else {
     s0+=6.0;
     s1+=39.0;
    }
   } else {
    if(i16<0.01574268937110901){
     s0+=107.0;
     s1+=37.0;
    } else {
     s0+=15.0;
     s1+=172.0;
    }
   }
  } else {
   if(i35<1.0476155281066895){
    if(i18<0.0840984582901001){
     s0+=86.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=31.0;
    }
   } else {
    if(i25<0.0038602473214268684){
     s0+=10.0;
     s1+=7.0;
    } else {
     s0+=29.0;
     s1+=3508.0;
    }
   }
  }
 }
} else {
 if(i8<0.003750491887331009){
  if(i1<0.001807868480682373){
   if(i29<0.0007567034917883575){
    s1+=34.0;
   } else {
    if(i5<0.0008211135864257812){
     s0+=340.0;
     s1+=28.0;
    } else {
     s0+=643.0;
     s1+=1.0;
    }
   }
  } else {
   if(i52<2.2411346435546875e-05){
    if(i14<0.0009242313681170344){
     s1+=441.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i53<1.008185625076294){
     s0+=37.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<1.000474452972412){
   if(i58<0.11443276703357697){
    if(i7<1.0005228519439697){
     s0+=94.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i2<1.0002154111862183){
     s1+=33.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i31<0.003997625317424536){
    if(i10<1.0133644342422485){
     s0+=112.0;
     s1+=1163.0;
    } else {
     s0+=5.0;
     s1+=12023.0;
    }
   } else {
    s0+=14.0;
   }
  }
 }
}
if(i0<6.35981559753418e-05){
 if(i4<2.092123031616211e-05){
  if(i3<-7.957320485729724e-05){
   if(i16<0.06995972990989685){
    if(i71<-0.011094063520431519){
     s0+=34.0;
     s1+=47.0;
    } else {
     s0+=752.0;
     s1+=20.0;
    }
   } else {
    if(i38<1.127584457397461){
     s0+=86.0;
     s1+=100.0;
    } else {
     s0+=23.0;
     s1+=694.0;
    }
   }
  } else {
   if(i25<0.001068158308044076){
    if(i12<1.0083627700805664){
     s0+=30582.0;
     s1+=2367.0;
    } else {
     s0+=449.0;
     s1+=592.0;
    }
   } else {
    if(i35<1.122455358505249){
     s0+=74799.0;
     s1+=629.0;
    } else {
     s0+=2355.0;
     s1+=443.0;
    }
   }
  }
 } else {
  if(i8<0.004414921626448631){
   if(i49<0.054288361221551895){
    if(i67<0.004398524761199951){
     s0+=3372.0;
     s1+=42.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   } else {
    if(i7<1.0030059814453125){
     s0+=9.0;
     s1+=42.0;
    } else {
     s0+=169.0;
     s1+=4.0;
    }
   }
  } else {
   if(i19<0.9908539056777954){
    if(i37<-0.0002778026682790369){
     s0+=183.0;
     s1+=736.0;
    } else {
     s0+=1059.0;
     s1+=363.0;
    }
   } else {
    if(i26<-0.00023323297500610352){
     s0+=111.0;
     s1+=183.0;
    } else {
     s0+=74.0;
     s1+=1607.0;
    }
   }
  }
 }
} else {
 if(i32<1.1703872680664062){
  if(i44<0.9997857809066772){
   s0+=777.0;
  } else {
   if(i28<0.0007575750350952148){
    if(i52<3.1828880310058594e-05){
     s0+=102.0;
     s1+=2825.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i15<0.0038694324903190136){
     s0+=1165.0;
    } else {
     s0+=6.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i19<0.9526005983352661){
   if(i44<1.0003135204315186){
    if(i37<-0.0004593860940076411){
     s1+=9.0;
    } else {
     s0+=45.0;
     s1+=6.0;
    }
   } else {
    if(i28<0.0008093714714050293){
     s0+=12.0;
     s1+=20.0;
    } else {
     s1+=64.0;
    }
   }
  } else {
   if(i23<0.09466072916984558){
    if(i71<0.0008273422718048096){
     s0+=6.0;
     s1+=372.0;
    } else {
     s0+=44.0;
     s1+=8.0;
    }
   } else {
    if(i12<0.90430748462677){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=13203.0;
    }
   }
  }
 }
}
if(i1<0.0009605884552001953){
 if(i3<-8.108161273412406e-05){
  if(i21<0.023309864103794098){
   if(i22<1.0191519260406494){
    if(i5<0.000696718692779541){
     s0+=596.0;
     s1+=15.0;
    } else {
     s0+=178.0;
     s1+=68.0;
    }
   } else {
    if(i58<0.0027343961410224438){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=97.0;
    }
   }
  } else {
   if(i20<0.9976086020469666){
    if(i41<1.0156304836273193){
     s0+=310.0;
     s1+=30.0;
    } else {
     s0+=59.0;
     s1+=997.0;
    }
   } else {
    if(i10<0.9687968492507935){
     s0+=42.0;
     s1+=14.0;
    } else {
     s0+=37.0;
     s1+=1195.0;
    }
   }
  }
 } else {
  if(i28<0.00010019540786743164){
   if(i27<1.0905578136444092){
    if(i11<0.9971615076065063){
     s0+=7319.0;
     s1+=21.0;
    } else {
     s0+=12251.0;
     s1+=851.0;
    }
   } else {
    if(i40<1.0299514532089233){
     s0+=61371.0;
     s1+=180.0;
    } else {
     s0+=530.0;
     s1+=64.0;
    }
   }
  } else {
   if(i6<1.0114514827728271){
    if(i0<-3.1888484954833984e-05){
     s0+=12900.0;
     s1+=329.0;
    } else {
     s0+=18201.0;
     s1+=3211.0;
    }
   } else {
    if(i15<0.0021712370216846466){
     s0+=428.0;
     s1+=41.0;
    } else {
     s0+=368.0;
     s1+=800.0;
    }
   }
  }
 }
} else {
 if(i14<0.0007059713825583458){
  if(i4<0.0002365708351135254){
   if(i57<-4.369064299680758e-06){
    if(i13<-0.002297699451446533){
     s0+=80.0;
     s1+=288.0;
    } else {
     s0+=152.0;
     s1+=16007.0;
    }
   } else {
    s0+=39.0;
   }
  } else {
   s0+=25.0;
  }
 } else {
  s0+=1763.0;
 }
}
if(i0<6.645917892456055e-05){
 if(i7<1.0020549297332764){
  if(i6<1.0130338668823242){
   if(i15<0.0015928701031953096){
    if(i33<0.0003162538632750511){
     s0+=18445.0;
     s1+=493.0;
    } else {
     s0+=66368.0;
     s1+=196.0;
    }
   } else {
    if(i31<0.0011242115870118141){
     s0+=6355.0;
     s1+=2617.0;
    } else {
     s0+=15927.0;
     s1+=701.0;
    }
   }
  } else {
   if(i34<1.0905578136444092){
    s1+=295.0;
   } else {
    if(i35<1.1843664646148682){
     s0+=337.0;
     s1+=87.0;
    } else {
     s0+=27.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i8<0.004395198076963425){
   if(i44<1.0011869668960571){
    if(i43<0.002102076541632414){
     s0+=1478.0;
     s1+=77.0;
    } else {
     s0+=49.0;
     s1+=90.0;
    }
   } else {
    if(i54<0.003559117205440998){
     s0+=3867.0;
     s1+=1.0;
    } else {
     s0+=61.0;
     s1+=4.0;
    }
   }
  } else {
   if(i41<1.0744121074676514){
    if(i25<0.0012468048371374607){
     s1+=544.0;
    } else {
     s0+=1528.0;
     s1+=559.0;
    }
   } else {
    if(i3<-6.778937677154317e-05){
     s0+=43.0;
     s1+=1717.0;
    } else {
     s0+=212.0;
     s1+=690.0;
    }
   }
  }
 }
} else {
 if(i33<0.002280508168041706){
  if(i28<0.0005134940147399902){
   if(i7<1.0022354125976562){
    if(i54<0.00032469219877384603){
     s1+=6.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i5<0.0006632208824157715){
     s0+=37.0;
    } else {
     s0+=12.0;
     s1+=2285.0;
    }
   }
  } else {
   if(i10<1.0054579973220825){
    if(i53<1.006853699684143){
     s0+=6.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i39<0.04559008777141571){
     s0+=1717.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i2<1.0047571659088135){
   if(i19<0.9484723806381226){
    if(i50<-2.9446564440149814e-06){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=33.0;
     s1+=2.0;
    }
   } else {
    if(i54<0.0008563721785321832){
     s0+=7.0;
    } else {
     s0+=19.0;
     s1+=169.0;
    }
   }
  } else {
   if(i18<0.10565772652626038){
    if(i2<1.006948709487915){
     s0+=50.0;
     s1+=86.0;
    } else {
     s0+=6.0;
     s1+=534.0;
    }
   } else {
    if(i16<0.1418924629688263){
     s0+=14.0;
     s1+=862.0;
    } else {
     s1+=12053.0;
    }
   }
  }
 }
}
if(i22<1.017055869102478){
 if(i11<1.0075404644012451){
  if(i8<0.004000619053840637){
   if(i34<1.0903575420379639){
    if(i31<0.0006194500019773841){
     s0+=22295.0;
     s1+=123.0;
    } else {
     s0+=4384.0;
     s1+=881.0;
    }
   } else {
    if(i46<0.002101364778354764){
     s0+=63308.0;
     s1+=175.0;
    } else {
     s0+=2655.0;
     s1+=128.0;
    }
   }
  } else {
   if(i1<-0.00039121508598327637){
    if(i2<0.9974474906921387){
     s0+=18085.0;
     s1+=406.0;
    } else {
     s0+=1373.0;
     s1+=465.0;
    }
   } else {
    if(i44<0.9992772936820984){
     s0+=642.0;
     s1+=48.0;
    } else {
     s0+=1235.0;
     s1+=4614.0;
    }
   }
  }
 } else {
  if(i3<-7.392268889816478e-05){
   if(i35<1.0244636535644531){
    if(i26<1.8894672393798828e-05){
     s0+=65.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i28<0.00160941481590271){
     s0+=118.0;
     s1+=2538.0;
    } else {
     s0+=46.0;
     s1+=6.0;
    }
   }
  } else {
   if(i33<0.0010239859111607075){
    s1+=439.0;
   } else {
    if(i34<1.1762815713882446){
     s0+=688.0;
     s1+=5.0;
    } else {
     s0+=121.0;
     s1+=373.0;
    }
   }
  }
 }
} else {
 if(i6<1.0196523666381836){
  if(i3<-6.252509774640203e-05){
   if(i14<0.000831032928545028){
    if(i58<0.0012901886366307735){
     s0+=12.0;
    } else {
     s0+=52.0;
     s1+=1539.0;
    }
   } else {
    s0+=138.0;
   }
  } else {
   if(i29<0.0011454434134066105){
    if(i38<1.1024357080459595){
     s1+=341.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i21<0.024339737370610237){
     s0+=853.0;
     s1+=88.0;
    } else {
     s0+=187.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i0<1.800060272216797e-05){
   if(i18<0.23729875683784485){
    if(i15<0.002733846427872777){
     s0+=117.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=73.0;
    }
   } else {
    if(i47<3.431413642829284e-05){
     s0+=5.0;
    } else {
     s1+=108.0;
    }
   }
  } else {
   if(i3<-6.174415466375649e-05){
    if(i4<-2.2143125534057617e-05){
     s0+=3.0;
    } else {
     s0+=25.0;
     s1+=11494.0;
    }
   } else {
    if(i15<0.0020979929249733686){
     s0+=38.0;
     s1+=16.0;
    } else {
     s0+=14.0;
     s1+=262.0;
    }
   }
  }
 }
}
if(i3<-9.840834536589682e-05){
 if(i12<0.9068558216094971){
  if(i3<-0.0001930810249177739){
   if(i49<0.14585256576538086){
    s0+=1.0;
   } else {
    if(i46<0.011708076111972332){
     s0+=1.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i71<-0.008502751588821411){
    if(i37<4.232092760503292e-05){
     s0+=67.0;
     s1+=48.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i62<0.0014528959291055799){
     s0+=473.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i52<3.0606985092163086e-05){
   if(i45<0.007866382598876953){
    if(i35<1.0495340824127197){
     s0+=54.0;
    } else {
     s0+=41.0;
     s1+=160.0;
    }
   } else {
    if(i50<-6.360690349538345e-06){
     s0+=174.0;
     s1+=2.0;
    } else {
     s0+=49.0;
     s1+=15192.0;
    }
   }
  } else {
   if(i60<-0.0010276786051690578){
    s1+=1.0;
   } else {
    s0+=78.0;
   }
  }
 }
} else {
 if(i12<1.0140904188156128){
  if(i6<1.0088551044464111){
   if(i1<0.0011412501335144043){
    if(i4<1.6391277313232422e-05){
     s0+=104134.0;
     s1+=3193.0;
    } else {
     s0+=5683.0;
     s1+=1157.0;
    }
   } else {
    if(i44<0.9998117685317993){
     s0+=52.0;
    } else {
     s0+=160.0;
     s1+=563.0;
    }
   }
  } else {
   if(i35<1.0633544921875){
    if(i29<0.0010308308992534876){
     s0+=66.0;
     s1+=660.0;
    } else {
     s0+=182.0;
     s1+=63.0;
    }
   } else {
    if(i21<0.013404609635472298){
     s0+=2292.0;
     s1+=135.0;
    } else {
     s0+=228.0;
     s1+=306.0;
    }
   }
  }
 } else {
  if(i36<1.116391897201538){
   if(i28<9.420514106750488e-05){
    s0+=77.0;
   } else {
    if(i41<1.0915586948394775){
     s0+=18.0;
     s1+=1489.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   }
  } else {
   if(i8<0.006012952886521816){
    if(i60<0.00020121200941503048){
     s0+=2531.0;
     s1+=94.0;
    } else {
     s0+=45.0;
     s1+=25.0;
    }
   } else {
    if(i34<1.1432220935821533){
     s0+=56.0;
    } else {
     s0+=35.0;
     s1+=1153.0;
    }
   }
  }
 }
}
if(i5<0.0005719959735870361){
 if(i3<-8.291605627164245e-05){
  if(i35<1.090132474899292){
   if(i19<1.0102050304412842){
    if(i24<0.01220522541552782){
     s0+=591.0;
     s1+=20.0;
    } else {
     s0+=109.0;
     s1+=25.0;
    }
   } else {
    if(i11<0.9967592358589172){
     s0+=1.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i37<-0.000468853279016912){
    if(i51<-0.00010715446842368692){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=702.0;
    }
   } else {
    if(i18<0.0032862722873687744){
     s0+=50.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i28<8.672475814819336e-05){
   if(i15<0.0013013121206313372){
    if(i13<-0.00038483738899230957){
     s0+=20221.0;
     s1+=244.0;
    } else {
     s0+=43384.0;
     s1+=2.0;
    }
   } else {
    if(i27<1.0907573699951172){
     s0+=2205.0;
     s1+=546.0;
    } else {
     s0+=13126.0;
     s1+=176.0;
    }
   }
  } else {
   if(i0<-3.403425216674805e-05){
    if(i36<1.1161681413650513){
     s0+=272.0;
     s1+=61.0;
    } else {
     s0+=12682.0;
     s1+=191.0;
    }
   } else {
    if(i34<1.092151403427124){
     s0+=3911.0;
     s1+=2030.0;
    } else {
     s0+=13283.0;
     s1+=961.0;
    }
   }
  }
 }
} else {
 if(i23<0.15004092454910278){
  if(i11<1.0107781887054443){
   if(i37<-0.00021755287889391184){
    if(i36<1.1174830198287964){
     s0+=58.0;
     s1+=1298.0;
    } else {
     s0+=987.0;
     s1+=1156.0;
    }
   } else {
    if(i14<0.00026242402964271605){
     s0+=564.0;
     s1+=1136.0;
    } else {
     s0+=4245.0;
     s1+=116.0;
    }
   }
  } else {
   if(i2<1.0101985931396484){
    if(i50<-5.792247520730598e-06){
     s0+=39.0;
    } else {
     s0+=68.0;
     s1+=484.0;
    }
   } else {
    if(i51<-0.00017095636576414108){
     s0+=3.0;
    } else {
     s1+=1123.0;
    }
   }
  }
 } else {
  if(i33<0.0024748328141868114){
   if(i22<1.0249464511871338){
    if(i8<0.005405682139098644){
     s0+=434.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=22.0;
    }
   } else {
    if(i44<0.9957447648048401){
     s0+=6.0;
    } else {
     s1+=122.0;
    }
   }
  } else {
   if(i0<-1.5735626220703125e-05){
    if(i51<-3.4824497561203316e-05){
     s1+=58.0;
    } else {
     s0+=69.0;
     s1+=13.0;
    }
   } else {
    if(i24<0.0026120413094758987){
     s0+=23.0;
     s1+=48.0;
    } else {
     s0+=41.0;
     s1+=13760.0;
    }
   }
  }
 }
}
if(i5<0.0005906224250793457){
 if(i30<1.02428138256073){
  if(i7<1.0001287460327148){
   if(i25<0.027950964868068695){
    if(i22<0.9948363304138184){
     s0+=19415.0;
     s1+=727.0;
    } else {
     s0+=48707.0;
     s1+=283.0;
    }
   } else {
    if(i21<0.09453816711902618){
     s0+=3.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i39<0.014407943934202194){
    if(i31<0.0007426212541759014){
     s0+=29269.0;
     s1+=40.0;
    } else {
     s0+=3148.0;
     s1+=664.0;
    }
   } else {
    if(i1<-0.0004461705684661865){
     s0+=5448.0;
     s1+=406.0;
    } else {
     s0+=3105.0;
     s1+=2339.0;
    }
   }
  }
 } else {
  if(i3<-3.432017911109142e-05){
   if(i1<5.8591365814208984e-05){
    if(i8<0.005198655184358358){
     s0+=100.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=208.0;
    }
   } else {
    if(i39<0.013522885739803314){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=546.0;
    }
   }
  } else {
   if(i8<0.005418137647211552){
    if(i47<0.000159742558025755){
     s0+=475.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   } else {
    if(i15<0.004073317162692547){
     s1+=35.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i21<0.009464065544307232){
  if(i47<-2.4317134375451133e-05){
   if(i43<0.0010183656122535467){
    if(i50<-7.570191883132793e-06){
     s0+=1.0;
    } else {
     s1+=1107.0;
    }
   } else {
    if(i14<0.0005523134022951126){
     s0+=33.0;
     s1+=541.0;
    } else {
     s0+=120.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.0004163980484008789){
    if(i13<0.0007912516593933105){
     s0+=265.0;
     s1+=64.0;
    } else {
     s0+=46.0;
     s1+=574.0;
    }
   } else {
    if(i14<0.00026670866645872593){
     s0+=226.0;
     s1+=297.0;
    } else {
     s0+=4356.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i13<-0.001438438892364502){
   if(i39<0.1423334926366806){
    if(i16<0.12381517887115479){
     s0+=979.0;
     s1+=322.0;
    } else {
     s0+=110.0;
     s1+=413.0;
    }
   } else {
    if(i14<5.985514144413173e-05){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=86.0;
     s1+=931.0;
    }
   }
  } else {
   if(i28<0.0017087459564208984){
    if(i72<6.623395620408701e-06){
     s0+=308.0;
     s1+=14921.0;
    } else {
     s0+=24.0;
    }
   } else {
    s0+=48.0;
   }
  }
 }
}
if(i17<1.0181405544281006){
 if(i2<1.003867268562317){
  if(i46<0.012281540781259537){
   if(i15<0.0016409700037911534){
    if(i15<0.0011511315824463964){
     s0+=75770.0;
     s1+=268.0;
    } else {
     s0+=11464.0;
     s1+=532.0;
    }
   } else {
    if(i27<1.1164028644561768){
     s0+=2752.0;
     s1+=2416.0;
    } else {
     s0+=20592.0;
     s1+=1337.0;
    }
   }
  } else {
   if(i23<0.05786168575286865){
    if(i35<1.1188517808914185){
     s0+=535.0;
     s1+=7.0;
    } else {
     s0+=183.0;
     s1+=63.0;
    }
   } else {
    if(i31<0.0007567706052213907){
     s0+=76.0;
    } else {
     s0+=48.0;
     s1+=753.0;
    }
   }
  }
 } else {
  if(i24<0.00225556967779994){
   if(i28<0.0005109906196594238){
    if(i57<-5.544570740312338e-06){
     s0+=78.0;
     s1+=1659.0;
    } else {
     s0+=237.0;
     s1+=3.0;
    }
   } else {
    s0+=3262.0;
   }
  } else {
   if(i46<0.00034504273207858205){
    if(i9<0.9983938932418823){
     s1+=3.0;
    } else {
     s0+=117.0;
    }
   } else {
    if(i6<0.8709654808044434){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=85.0;
     s1+=3218.0;
    }
   }
  }
 }
} else {
 if(i16<0.1727808117866516){
  if(i2<1.0022554397583008){
   if(i34<1.0905578136444092){
    s1+=100.0;
   } else {
    if(i21<0.027685977518558502){
     s0+=532.0;
     s1+=27.0;
    } else {
     s0+=90.0;
     s1+=71.0;
    }
   }
  } else {
   if(i8<0.002920913975685835){
    if(i36<1.1176170110702515){
     s0+=17.0;
     s1+=105.0;
    } else {
     s0+=458.0;
     s1+=52.0;
    }
   } else {
    if(i9<1.014863133430481){
     s0+=147.0;
     s1+=144.0;
    } else {
     s0+=67.0;
     s1+=1908.0;
    }
   }
  }
 } else {
  if(i24<0.00256479368545115){
   if(i3<-7.662463031010702e-05){
    s1+=17.0;
   } else {
    if(i27<1.2196855545043945){
     s0+=49.0;
     s1+=3.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   if(i3<-3.375513188075274e-05){
    if(i51<-2.9944007110316306e-05){
     s1+=10699.0;
    } else {
     s0+=4.0;
     s1+=670.0;
    }
   } else {
    if(i44<1.0016084909439087){
     s0+=6.0;
     s1+=114.0;
    } else {
     s0+=53.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i0<6.407499313354492e-05){
 if(i3<-7.898997864685953e-05){
  if(i26<-0.0005950331687927246){
   if(i59<1.0269927978515625){
    if(i31<0.003127397270873189){
     s0+=894.0;
     s1+=38.0;
    } else {
     s0+=33.0;
     s1+=62.0;
    }
   } else {
    if(i45<0.11483269929885864){
     s0+=47.0;
     s1+=25.0;
    } else {
     s1+=131.0;
    }
   }
  } else {
   if(i21<0.020153343677520752){
    if(i37<-0.00043812644435092807){
     s0+=3.0;
     s1+=79.0;
    } else {
     s0+=271.0;
     s1+=31.0;
    }
   } else {
    if(i59<0.9328036904335022){
     s0+=80.0;
     s1+=40.0;
    } else {
     s0+=37.0;
     s1+=1973.0;
    }
   }
  }
 } else {
  if(i22<1.0162713527679443){
   if(i36<1.0905578136444092){
    if(i28<6.240606307983398e-05){
     s0+=20670.0;
     s1+=625.0;
    } else {
     s0+=6021.0;
     s1+=2129.0;
    }
   } else {
    if(i15<0.0018685704562813044){
     s0+=68435.0;
     s1+=329.0;
    } else {
     s0+=16895.0;
     s1+=1525.0;
    }
   }
  } else {
   if(i27<1.1178560256958008){
    if(i48<1.0001206398010254){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=385.0;
    }
   } else {
    if(i4<8.404254913330078e-06){
     s0+=662.0;
     s1+=63.0;
    } else {
     s0+=489.0;
     s1+=459.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i52<1.0073184967041016e-05){
   if(i28<0.0005125701427459717){
    if(i31<0.0019104937091469765){
     s0+=53.0;
     s1+=2225.0;
    } else {
     s0+=56.0;
    }
   } else {
    s0+=100.0;
   }
  } else {
   if(i24<0.0010733027011156082){
    if(i14<0.0005763195804320276){
     s1+=117.0;
    } else {
     s0+=68.0;
    }
   } else {
    s0+=1644.0;
   }
  }
 } else {
  if(i16<0.09465464949607849){
   if(i42<3.7783120205858722e-06){
    if(i2<1.005631923675537){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=463.0;
    }
   } else {
    if(i62<-0.0025139478966593742){
     s0+=49.0;
     s1+=2.0;
    } else {
     s0+=70.0;
     s1+=147.0;
    }
   }
  } else {
   if(i17<0.8665765523910522){
    if(i20<1.0050525665283203){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i38<1.0861116647720337){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=16.0;
     s1+=13337.0;
    }
   }
  }
 }
}
if(i3<-0.00010962210944853723){
 if(i5<0.0007082819938659668){
  if(i47<0.00034015392884612083){
   if(i51<-8.913218334782869e-05){
    s0+=36.0;
   } else {
    if(i41<1.0446555614471436){
     s0+=27.0;
     s1+=11.0;
    } else {
     s0+=9.0;
     s1+=722.0;
    }
   }
  } else {
   if(i21<0.054990436881780624){
    if(i41<1.0457196235656738){
     s0+=261.0;
     s1+=1.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i22<0.8754911422729492){
     s0+=28.0;
     s1+=25.0;
    } else {
     s0+=4.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i50<-6.577845852007158e-06){
   s0+=155.0;
  } else {
   if(i19<0.955382227897644){
    if(i41<1.0576597452163696){
     s0+=151.0;
     s1+=27.0;
    } else {
     s0+=6.0;
     s1+=42.0;
    }
   } else {
    if(i70<0.1105615496635437){
     s0+=20.0;
     s1+=13798.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i10<1.0076695680618286){
  if(i28<0.0001023411750793457){
   if(i45<0.22135689854621887){
    if(i8<0.0020564827136695385){
     s0+=52219.0;
     s1+=167.0;
    } else {
     s0+=29314.0;
     s1+=913.0;
    }
   } else {
    if(i47<7.982194074429572e-05){
     s0+=62.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=76.0;
    }
   }
  } else {
   if(i31<0.0006813674699515104){
    if(i3<-3.955658758059144e-05){
     s0+=115.0;
     s1+=102.0;
    } else {
     s0+=13251.0;
     s1+=86.0;
    }
   } else {
    if(i26<-0.0002104640007019043){
     s0+=10867.0;
     s1+=1116.0;
    } else {
     s0+=6832.0;
     s1+=3498.0;
    }
   }
  }
 } else {
  if(i43<0.0008897624211385846){
   if(i24<0.0010638663079589605){
    s1+=2221.0;
   } else {
    s0+=145.0;
   }
  } else {
   if(i62<-0.001169353723526001){
    if(i36<1.4586446285247803){
     s0+=122.0;
     s1+=1083.0;
    } else {
     s0+=145.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.02459793910384178){
     s0+=2533.0;
     s1+=113.0;
    } else {
     s0+=165.0;
     s1+=287.0;
    }
   }
  }
 }
}
if(i26<0.00020763278007507324){
 if(i21<0.05501237511634827){
  if(i21<0.007383102551102638){
   if(i53<1.0032517910003662){
    if(i38<1.0615146160125732){
     s0+=24740.0;
     s1+=616.0;
    } else {
     s0+=45630.0;
     s1+=80.0;
    }
   } else {
    if(i42<-8.926936970965471e-06){
     s0+=108.0;
     s1+=129.0;
    } else {
     s0+=3482.0;
     s1+=231.0;
    }
   }
  } else {
   if(i6<1.008859634399414){
    if(i27<1.1164028644561768){
     s0+=6857.0;
     s1+=2445.0;
    } else {
     s0+=32814.0;
     s1+=2057.0;
    }
   } else {
    if(i4<6.616115570068359e-06){
     s0+=602.0;
     s1+=65.0;
    } else {
     s0+=608.0;
     s1+=2221.0;
    }
   }
  }
 } else {
  if(i38<1.113800048828125){
   if(i42<3.927441139239818e-05){
    s1+=19.0;
   } else {
    s0+=722.0;
   }
  } else {
   if(i26<-0.0005664229393005371){
    if(i60<0.0032937671057879925){
     s0+=12.0;
     s1+=195.0;
    } else {
     s0+=89.0;
     s1+=94.0;
    }
   } else {
    if(i59<0.8935948610305786){
     s0+=31.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=2924.0;
    }
   }
  }
 }
} else {
 if(i48<1.0009522438049316){
  if(i54<0.0023908251896500587){
   if(i34<1.0958809852600098){
    s1+=11.0;
   } else {
    if(i43<0.005132627673447132){
     s0+=521.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i38<1.1757876873016357){
    s0+=4.0;
   } else {
    s1+=320.0;
   }
  }
 } else {
  if(i24<0.0021761783864349127){
   if(i35<1.0886776447296143){
    if(i43<0.0011672276305034757){
     s0+=30.0;
     s1+=1893.0;
    } else {
     s0+=135.0;
     s1+=7.0;
    }
   } else {
    if(i29<0.0009157108725048602){
     s1+=74.0;
    } else {
     s0+=336.0;
    }
   }
  } else {
   s1+=10731.0;
  }
 }
}
if(i1<0.0009602904319763184){
 if(i7<1.0021419525146484){
  if(i31<0.0007107857381924987){
   if(i33<0.00028666172875091434){
    if(i9<0.9949766397476196){
     s0+=1214.0;
     s1+=191.0;
    } else {
     s0+=16102.0;
     s1+=100.0;
    }
   } else {
    if(i51<-1.566031642141752e-05){
     s0+=111.0;
     s1+=18.0;
    } else {
     s0+=60260.0;
     s1+=115.0;
    }
   }
  } else {
   if(i25<0.001095385174266994){
    if(i34<1.0510823726654053){
     s0+=2509.0;
     s1+=31.0;
    } else {
     s0+=963.0;
     s1+=2894.0;
    }
   } else {
    if(i23<0.2131149172782898){
     s0+=26526.0;
     s1+=766.0;
    } else {
     s0+=53.0;
     s1+=396.0;
    }
   }
  }
 } else {
  if(i15<0.0018724596593528986){
   if(i36<1.1948647499084473){
    s0+=3683.0;
   } else {
    if(i24<0.0034586102701723576){
     s0+=24.0;
     s1+=112.0;
    } else {
     s0+=185.0;
     s1+=6.0;
    }
   }
  } else {
   if(i16<0.13943836092948914){
    if(i28<0.00033360719680786133){
     s0+=57.0;
     s1+=522.0;
    } else {
     s0+=2567.0;
     s1+=947.0;
    }
   } else {
    if(i54<0.0027414390351623297){
     s0+=224.0;
     s1+=539.0;
    } else {
     s0+=52.0;
     s1+=1280.0;
    }
   }
  }
 }
} else {
 if(i22<1.0230002403259277){
  if(i27<1.1979892253875732){
   if(i24<0.0009706164710223675){
    if(i25<0.00022223932319320738){
     s0+=72.0;
    } else {
     s1+=1857.0;
    }
   } else {
    s0+=1836.0;
   }
  } else {
   if(i12<0.9042929410934448){
    if(i31<0.001371075864881277){
     s0+=28.0;
    } else {
     s0+=12.0;
     s1+=97.0;
    }
   } else {
    if(i32<1.116449236869812){
     s0+=7.0;
    } else {
     s0+=72.0;
     s1+=3021.0;
    }
   }
  }
 } else {
  if(i50<-6.415847565222066e-06){
   s0+=22.0;
  } else {
   if(i33<0.0024511138908565044){
    if(i41<1.0873430967330933){
     s0+=4.0;
     s1+=540.0;
    } else {
     s0+=23.0;
     s1+=62.0;
    }
   } else {
    if(i23<0.14620175957679749){
     s0+=8.0;
     s1+=292.0;
    } else {
     s0+=1.0;
     s1+=10459.0;
    }
   }
  }
 }
}
if(i22<1.0176963806152344){
 if(i3<-9.201547800330445e-05){
  if(i42<5.117043110658415e-05){
   if(i35<1.0291502475738525){
    if(i5<0.0017618536949157715){
     s0+=149.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i34<1.1497111320495605){
     s0+=220.0;
     s1+=279.0;
    } else {
     s0+=198.0;
     s1+=3327.0;
    }
   }
  } else {
   if(i16<0.07296636700630188){
    if(i35<1.1404945850372314){
     s0+=493.0;
     s1+=28.0;
    } else {
     s0+=6.0;
     s1+=44.0;
    }
   } else {
    if(i42<0.00020946725271642208){
     s0+=16.0;
     s1+=291.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i0<7.790327072143555e-05){
   if(i16<0.23436102271080017){
    if(i39<0.01120708603411913){
     s0+=67821.0;
     s1+=847.0;
    } else {
     s0+=45286.0;
     s1+=4048.0;
    }
   } else {
    if(i24<0.002671684604138136){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=150.0;
    }
   }
  } else {
   if(i35<1.0752487182617188){
    if(i38<1.0930981636047363){
     s0+=15.0;
     s1+=800.0;
    } else {
     s0+=52.0;
     s1+=79.0;
    }
   } else {
    if(i39<0.023994699120521545){
     s0+=754.0;
     s1+=86.0;
    } else {
     s0+=36.0;
     s1+=351.0;
    }
   }
  }
 }
} else {
 if(i10<1.0138837099075317){
  if(i21<0.027176469564437866){
   if(i34<1.0963937044143677){
    s1+=435.0;
   } else {
    if(i8<0.005955841392278671){
     s0+=1030.0;
     s1+=123.0;
    } else {
     s0+=28.0;
     s1+=177.0;
    }
   }
  } else {
   if(i8<0.005953633226454258){
    if(i10<1.0015597343444824){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=11.0;
    }
   } else {
    if(i23<0.07821860909461975){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=1971.0;
    }
   }
  }
 } else {
  if(i3<-6.197639595484361e-05){
   if(i52<3.5881996154785156e-05){
    if(i15<0.0005192214157432318){
     s0+=4.0;
     s1+=43.0;
    } else {
     s0+=3.0;
     s1+=11261.0;
    }
   } else {
    s0+=14.0;
   }
  } else {
   if(i21<0.0061681861989200115){
    if(i36<1.100994348526001){
     s1+=31.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i20<0.9998398423194885){
     s0+=2.0;
    } else {
     s1+=73.0;
    }
   }
  }
 }
}
if(i22<1.0166069269180298){
 if(i11<1.00752592086792){
  if(i8<0.004046197049319744){
   if(i19<0.9967241287231445){
    if(i27<1.1164028644561768){
     s0+=6241.0;
     s1+=727.0;
    } else {
     s0+=17181.0;
     s1+=81.0;
    }
   } else {
    if(i31<0.0005257083103060722){
     s0+=52028.0;
     s1+=66.0;
    } else {
     s0+=17246.0;
     s1+=489.0;
    }
   }
  } else {
   if(i28<5.620718002319336e-05){
    if(i21<0.08554723858833313){
     s0+=13569.0;
     s1+=188.0;
    } else {
     s0+=4.0;
     s1+=96.0;
    }
   } else {
    if(i1<-0.0005462765693664551){
     s0+=5960.0;
     s1+=486.0;
    } else {
     s0+=1646.0;
     s1+=4481.0;
    }
   }
  }
 } else {
  if(i2<1.0102424621582031){
   if(i14<0.000704434234648943){
    if(i2<1.0027978420257568){
     s0+=221.0;
     s1+=178.0;
    } else {
     s0+=183.0;
     s1+=1561.0;
    }
   } else {
    s0+=607.0;
   }
  } else {
   if(i65<0.003027200698852539){
    s1+=1535.0;
   } else {
    if(i58<0.022196076810359955){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i14<0.000713324174284935){
  if(i5<0.0002689361572265625){
   if(i21<0.03460674732923508){
    if(i8<0.005157867446541786){
     s0+=618.0;
     s1+=33.0;
    } else {
     s0+=16.0;
     s1+=49.0;
    }
   } else {
    if(i45<0.09429749846458435){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=229.0;
    }
   }
  } else {
   if(i6<1.017897367477417){
    if(i3<-3.4638702345546335e-05){
     s0+=172.0;
     s1+=1647.0;
    } else {
     s0+=155.0;
     s1+=91.0;
    }
   } else {
    if(i9<1.030076503753662){
     s0+=93.0;
     s1+=2443.0;
    } else {
     s0+=1.0;
     s1+=9940.0;
    }
   }
  }
 } else {
  s0+=543.0;
 }
}
if(i9<1.0153777599334717){
 if(i8<0.01397714950144291){
  if(i7<1.0024285316467285){
   if(i15<0.001522911712527275){
    if(i34<1.0776758193969727){
     s0+=21466.0;
     s1+=482.0;
    } else {
     s0+=63013.0;
     s1+=162.0;
    }
   } else {
    if(i0<-3.045797348022461e-05){
     s0+=19864.0;
     s1+=455.0;
    } else {
     s0+=4094.0;
     s1+=2884.0;
    }
   }
  } else {
   if(i28<0.0005120038986206055){
    if(i1<0.00048404932022094727){
     s0+=707.0;
     s1+=385.0;
    } else {
     s0+=260.0;
     s1+=1670.0;
    }
   } else {
    if(i21<0.015219375491142273){
     s0+=4279.0;
     s1+=211.0;
    } else {
     s0+=770.0;
     s1+=832.0;
    }
   }
  }
 } else {
  if(i9<0.9341797828674316){
   if(i27<1.5726749897003174){
    if(i23<0.10696455836296082){
     s0+=808.0;
     s1+=49.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i13<-0.008093118667602539){
     s0+=109.0;
     s1+=38.0;
    } else {
     s0+=35.0;
     s1+=158.0;
    }
   }
  } else {
   if(i21<0.016351792961359024){
    if(i65<-0.0063721537590026855){
     s0+=30.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i44<0.9982276558876038){
     s0+=8.0;
    } else {
     s0+=41.0;
     s1+=3046.0;
    }
   }
  }
 }
} else {
 if(i57<-3.4006416171905585e-06){
  if(i38<1.1342540979385376){
   if(i54<0.0007701274007558823){
    if(i38<1.1339646577835083){
     s0+=30.0;
     s1+=1798.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i8<0.004148255102336407){
     s0+=452.0;
     s1+=12.0;
    } else {
     s0+=39.0;
     s1+=635.0;
    }
   }
  } else {
   if(i24<0.0019147786078974605){
    s0+=38.0;
   } else {
    if(i8<0.0011642747558653355){
     s0+=47.0;
     s1+=15.0;
    } else {
     s0+=17.0;
     s1+=11589.0;
    }
   }
  }
 } else {
  if(i55<1.0020235776901245){
   s0+=267.0;
  } else {
   s1+=8.0;
  }
 }
}
if(i16<0.1867290437221527){
 if(i5<0.0005394816398620605){
  if(i24<0.0008836754132062197){
   if(i21<0.006567617878317833){
    if(i9<0.9946035146713257){
     s0+=1338.0;
     s1+=290.0;
    } else {
     s0+=20694.0;
     s1+=174.0;
    }
   } else {
    if(i5<-0.00011521577835083008){
     s0+=7722.0;
     s1+=380.0;
    } else {
     s0+=781.0;
     s1+=2291.0;
    }
   }
  } else {
   if(i3<-6.612256402149796e-05){
    if(i18<0.133808434009552){
     s0+=1597.0;
     s1+=199.0;
    } else {
     s0+=112.0;
     s1+=237.0;
    }
   } else {
    if(i29<0.0018428058829158545){
     s0+=53824.0;
     s1+=6.0;
    } else {
     s0+=22550.0;
     s1+=601.0;
    }
   }
  }
 } else {
  if(i2<1.0082454681396484){
   if(i14<0.0003090209502261132){
    if(i10<1.00718355178833){
     s0+=1077.0;
     s1+=1160.0;
    } else {
     s0+=144.0;
     s1+=1915.0;
    }
   } else {
    if(i49<0.06288076937198639){
     s0+=4779.0;
     s1+=89.0;
    } else {
     s0+=606.0;
     s1+=748.0;
    }
   }
  } else {
   if(i14<0.0007997322827577591){
    if(i0<9.149312973022461e-05){
     s0+=47.0;
     s1+=11.0;
    } else {
     s0+=23.0;
     s1+=3200.0;
    }
   } else {
    s0+=457.0;
   }
  }
 }
} else {
 if(i3<-3.710034434334375e-05){
  if(i0<1.3262033462524414e-05){
   if(i58<0.03876396268606186){
    if(i44<1.0002495050430298){
     s0+=31.0;
    } else {
     s0+=8.0;
     s1+=30.0;
    }
   } else {
    if(i13<0.000904470682144165){
     s0+=8.0;
     s1+=605.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   }
  } else {
   if(i51<-1.485200846218504e-05){
    if(i33<0.001955809537321329){
     s0+=29.0;
    } else {
     s0+=1.0;
     s1+=12123.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i39<0.04596470296382904){
   if(i42<-6.055147878214484e-06){
    if(i13<0.0004305839538574219){
     s1+=3.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i15<0.0030614295974373817){
     s0+=563.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   }
  } else {
   if(i5<0.00034439563751220703){
    if(i16<0.18726316094398499){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=142.0;
     s1+=13.0;
    }
   } else {
    if(i32<1.1802709102630615){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=163.0;
    }
   }
  }
 }
}
if(i7<1.0026321411132812){
 if(i45<0.2062317132949829){
  if(i5<0.00031381845474243164){
   if(i48<0.9997726678848267){
    if(i43<0.06254912167787552){
     s0+=46811.0;
     s1+=149.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i15<0.0012797017116099596){
     s0+=42135.0;
     s1+=344.0;
    } else {
     s0+=15064.0;
     s1+=2467.0;
    }
   }
  } else {
   if(i21<0.008584896102547646){
    if(i44<1.0005335807800293){
     s0+=4513.0;
     s1+=26.0;
    } else {
     s0+=766.0;
     s1+=183.0;
    }
   } else {
    if(i1<-7.474422454833984e-05){
     s0+=921.0;
     s1+=159.0;
    } else {
     s0+=270.0;
     s1+=1693.0;
    }
   }
  }
 } else {
  if(i15<0.002456355607137084){
   if(i51<-1.3139160728314891e-05){
    if(i15<0.0008152563823387027){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i41<1.1038658618927002){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=129.0;
    }
   }
  } else {
   if(i39<0.020434468984603882){
    if(i67<0.006138116121292114){
     s0+=10.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i1<-0.0010814666748046875){
     s0+=5.0;
     s1+=63.0;
    } else {
     s1+=556.0;
    }
   }
  }
 }
} else {
 if(i8<0.00401469599455595){
  if(i29<0.0006089621456339955){
   if(i26<0.00015246868133544922){
    s0+=758.0;
   } else {
    if(i27<1.2954673767089844){
     s1+=721.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i33<0.0025533493608236313){
    if(i56<0.0016182949766516685){
     s0+=3101.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i20<1.01508629322052){
     s0+=501.0;
     s1+=69.0;
    } else {
     s1+=266.0;
    }
   }
  }
 } else {
  if(i23<0.04148977994918823){
   if(i1<0.0006552338600158691){
    if(i0<-6.139278411865234e-06){
     s0+=446.0;
     s1+=34.0;
    } else {
     s0+=175.0;
     s1+=81.0;
    }
   } else {
    if(i24<0.009927578270435333){
     s0+=24.0;
     s1+=157.0;
    } else {
     s0+=55.0;
     s1+=45.0;
    }
   }
  } else {
   if(i10<0.9946744441986084){
    if(i51<-3.595685848267749e-05){
     s0+=138.0;
     s1+=1306.0;
    } else {
     s0+=483.0;
     s1+=262.0;
    }
   } else {
    if(i1<0.0009574294090270996){
     s0+=214.0;
     s1+=1534.0;
    } else {
     s0+=57.0;
     s1+=14123.0;
    }
   }
  }
 }
}
if(i28<0.0002472996711730957){
 if(i17<1.021259069442749){
  if(i1<0.0010524392127990723){
   if(i18<0.2366931438446045){
    if(i31<0.0007171068573370576){
     s0+=77156.0;
     s1+=407.0;
    } else {
     s0+=20756.0;
     s1+=2914.0;
    }
   } else {
    if(i31<0.001015903428196907){
     s0+=67.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=201.0;
    }
   }
  } else {
   s1+=195.0;
  }
 } else {
  if(i3<-3.34838914568536e-05){
   if(i8<0.004936552606523037){
    if(i13<0.010182857513427734){
     s0+=94.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i39<0.019628703594207764){
     s0+=7.0;
     s1+=92.0;
    } else {
     s1+=1347.0;
    }
   }
  } else {
   if(i48<1.0008606910705566){
    if(i51<-1.0375627425673883e-05){
     s1+=2.0;
    } else {
     s0+=180.0;
    }
   } else {
    if(i59<1.087158441543579){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i9<1.015470027923584){
  if(i7<1.0025262832641602){
   if(i35<1.182846188545227){
    if(i23<0.20637598633766174){
     s0+=11908.0;
     s1+=695.0;
    } else {
     s0+=55.0;
     s1+=73.0;
    }
   } else {
    if(i69<0.8128622770309448){
     s0+=14.0;
     s1+=2.0;
    } else {
     s1+=147.0;
    }
   }
  } else {
   if(i8<0.004128785338252783){
    if(i26<0.00017839670181274414){
     s0+=3535.0;
     s1+=86.0;
    } else {
     s0+=544.0;
     s1+=498.0;
    }
   } else {
    if(i26<-0.00033473968505859375){
     s0+=1166.0;
     s1+=1051.0;
    } else {
     s0+=424.0;
     s1+=4078.0;
    }
   }
  }
 } else {
  if(i10<1.0146321058273315){
   if(i8<0.004126472398638725){
    if(i24<0.0011170546058565378){
     s1+=78.0;
    } else {
     s0+=496.0;
     s1+=39.0;
    }
   } else {
    if(i50<-5.7371439652342815e-06){
     s0+=11.0;
    } else {
     s0+=37.0;
     s1+=1535.0;
    }
   }
  } else {
   if(i63<1.1696434739860706e-05){
    if(i52<3.382563591003418e-05){
     s0+=42.0;
     s1+=10811.0;
    } else {
     s0+=8.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i11<1.0044825077056885){
 if(i7<1.0024306774139404){
  if(i8<0.003605084028095007){
   if(i13<-0.00020569562911987305){
    if(i34<1.0776758193969727){
     s0+=7205.0;
     s1+=705.0;
    } else {
     s0+=27536.0;
     s1+=176.0;
    }
   } else {
    if(i43<0.0019349345238879323){
     s0+=50376.0;
     s1+=65.0;
    } else {
     s0+=817.0;
     s1+=65.0;
    }
   }
  } else {
   if(i28<5.310773849487305e-05){
    if(i24<0.01589241996407509){
     s0+=15714.0;
     s1+=278.0;
    } else {
     s0+=20.0;
     s1+=232.0;
    }
   } else {
    if(i24<0.0010303519666194916){
     s0+=487.0;
     s1+=2594.0;
    } else {
     s0+=6771.0;
     s1+=750.0;
    }
   }
  }
 } else {
  if(i22<1.014550805091858){
   if(i3<-8.685455395607278e-05){
    if(i26<-0.0006669163703918457){
     s0+=106.0;
     s1+=31.0;
    } else {
     s0+=75.0;
     s1+=581.0;
    }
   } else {
    if(i48<1.0021202564239502){
     s0+=302.0;
     s1+=294.0;
    } else {
     s0+=2176.0;
     s1+=295.0;
    }
   }
  } else {
   if(i2<1.0027334690093994){
    if(i32<1.182697057723999){
     s0+=247.0;
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=147.0;
    }
   } else {
    if(i51<-1.1160823305544909e-05){
     s0+=18.0;
     s1+=1564.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i24<0.002405749633908272){
  if(i14<0.0002307359827682376){
   if(i51<-1.357168275717413e-05){
    if(i45<0.10585081577301025){
     s0+=10.0;
     s1+=2105.0;
    } else {
     s0+=18.0;
     s1+=10.0;
    }
   } else {
    s0+=97.0;
   }
  } else {
   if(i49<0.06273461133241653){
    if(i21<0.015216736122965813){
     s0+=3430.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i35<1.037827491760254){
     s0+=7.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i59<1.0284690856933594){
   if(i68<0.002406831132248044){
    if(i0<6.902217864990234e-05){
     s0+=251.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i13<-0.0031092166900634766){
     s0+=349.0;
     s1+=258.0;
    } else {
     s0+=73.0;
     s1+=847.0;
    }
   }
  } else {
   if(i23<0.10227334499359131){
    if(i70<0.0074041010811924934){
     s0+=190.0;
     s1+=55.0;
    } else {
     s0+=35.0;
     s1+=254.0;
    }
   } else {
    if(i3<-4.4125459680799395e-05){
     s0+=49.0;
     s1+=12811.0;
    } else {
     s0+=64.0;
     s1+=212.0;
    }
   }
  }
 }
}
if(i5<0.0005900263786315918){
 if(i8<0.0037535279989242554){
  if(i15<0.001050945371389389){
   if(i38<1.023447036743164){
    if(i60<0.00016794659313745797){
     s0+=2339.0;
     s1+=1.0;
    } else {
     s0+=885.0;
     s1+=92.0;
    }
   } else {
    if(i17<1.018606424331665){
     s0+=65216.0;
     s1+=119.0;
    } else {
     s0+=294.0;
     s1+=22.0;
    }
   }
  } else {
   if(i32<1.0682950019836426){
    if(i17<0.9964535236358643){
     s0+=511.0;
     s1+=500.0;
    } else {
     s0+=3599.0;
     s1+=244.0;
    }
   } else {
    if(i4<1.8298625946044922e-05){
     s0+=14837.0;
     s1+=128.0;
    } else {
     s0+=192.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i2<0.9986039400100708){
   if(i16<0.19661015272140503){
    if(i53<0.9988163113594055){
     s0+=14058.0;
     s1+=62.0;
    } else {
     s0+=6549.0;
     s1+=552.0;
    }
   } else {
    if(i3<-4.9869369831867516e-05){
     s0+=1.0;
     s1+=247.0;
    } else {
     s0+=78.0;
     s1+=16.0;
    }
   }
  } else {
   if(i48<1.0000388622283936){
    if(i54<0.0052010128274559975){
     s0+=685.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=122.0;
    }
   } else {
    if(i1<-0.0004583001136779785){
     s0+=367.0;
     s1+=128.0;
    } else {
     s0+=416.0;
     s1+=2968.0;
    }
   }
  }
 }
} else {
 if(i32<1.1714401245117188){
  if(i24<0.0009706164710223675){
   if(i32<1.0487251281738281){
    s0+=1314.0;
   } else {
    s1+=2871.0;
   }
  } else {
   if(i24<0.002273123012855649){
    s0+=3317.0;
   } else {
    if(i1<0.000568091869354248){
     s0+=697.0;
     s1+=183.0;
    } else {
     s0+=88.0;
     s1+=901.0;
    }
   }
  }
 } else {
  if(i13<-0.0035276412963867188){
   if(i8<0.018540281802415848){
    if(i5<0.0011682510375976562){
     s0+=439.0;
     s1+=36.0;
    } else {
     s0+=138.0;
     s1+=88.0;
    }
   } else {
    if(i64<0.10932697355747223){
     s0+=110.0;
     s1+=48.0;
    } else {
     s0+=36.0;
     s1+=234.0;
    }
   }
  } else {
   if(i16<0.1002245545387268){
    if(i42<7.74015461502131e-06){
     s0+=3.0;
     s1+=443.0;
    } else {
     s0+=261.0;
     s1+=279.0;
    }
   } else {
    if(i10<0.9953895807266235){
     s0+=83.0;
     s1+=919.0;
    } else {
     s0+=20.0;
     s1+=13069.0;
    }
   }
  }
 }
}
if(i2<1.003739833831787){
 if(i41<1.140138864517212){
  if(i5<0.000292360782623291){
   if(i24<0.0008682982297614217){
    if(i23<0.054281651973724365){
     s0+=27464.0;
     s1+=1225.0;
    } else {
     s0+=2009.0;
     s1+=867.0;
    }
   } else {
    if(i18<0.2487848997116089){
     s0+=73338.0;
     s1+=649.0;
    } else {
     s0+=18.0;
     s1+=61.0;
    }
   }
  } else {
   if(i15<0.002004218753427267){
    if(i42<9.22102844924666e-06){
     s0+=4346.0;
    } else {
     s0+=239.0;
     s1+=159.0;
    }
   } else {
    if(i34<1.0499491691589355){
     s0+=1091.0;
    } else {
     s0+=2876.0;
     s1+=2366.0;
    }
   }
  }
 } else {
  if(i24<0.0025681916158646345){
   if(i5<0.0002785325050354004){
    s0+=461.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i3<-2.8564150852616876e-05){
    if(i44<1.0024449825286865){
     s0+=4.0;
     s1+=1114.0;
    } else {
     s0+=20.0;
     s1+=32.0;
    }
   } else {
    if(i46<0.006624401081353426){
     s0+=50.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i32<1.1703872680664062){
  if(i14<0.00026169020566157997){
   if(i24<0.0010610769968479872){
    if(i51<-8.897466614143923e-06){
     s1+=2743.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i33<0.0017274897545576096){
     s0+=211.0;
    } else {
     s0+=43.0;
     s1+=742.0;
    }
   }
  } else {
   if(i8<0.0053092110902071){
    if(i33<0.0021700637880712748){
     s0+=3940.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=30.0;
    }
   } else {
    if(i25<0.0022200513631105423){
     s0+=96.0;
     s1+=1.0;
    } else {
     s1+=243.0;
    }
   }
  }
 } else {
  if(i18<0.08340141177177429){
   if(i3<-7.797795842634514e-05){
    if(i65<-0.00954824686050415){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=302.0;
    }
   } else {
    if(i42<3.2487469070474617e-06){
     s1+=63.0;
    } else {
     s0+=50.0;
     s1+=7.0;
    }
   }
  } else {
   if(i15<0.00022155855549499393){
    if(i4<4.0590763092041016e-05){
     s0+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i25<0.0026377015747129917){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=13771.0;
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
