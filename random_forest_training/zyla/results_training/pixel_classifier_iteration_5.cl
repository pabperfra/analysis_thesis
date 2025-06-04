/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 top_hat_box=30 top_hat_box=15 gaussian_blur=10 laplace_box_of_gaussian_blur=15 difference_of_gaussian=15 top_hat_box=10 maximum_box=2 small_hessian_eigenvalue_of_gaussian_blur=10 median_box=5 difference_of_gaussian=20 maximum_box=3 difference_of_gaussian=10 gaussian_blur=5 laplace_box_of_gaussian_blur=20 laplace_box_of_gaussian_blur=10 sobel_of_gaussian_blur=10 maximum_box=5 gaussian_blur=15 mean_box=15 sobel_of_median_box=5 mean_box=10 gaussian_blur=2 gaussian_blur=3 median_box=3 mean_box=3 variance_box=3 maximum_box=1 variance_box=2 mean_box=1 maximum_box=30 sobel_of_gaussian_blur=5 mean_box=5 top_hat_box=5 variance_box=30 maximum_box=15 small_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=1 difference_of_gaussian=30 maximum_box=10 large_hessian_eigenvalue_of_gaussian_blur=10 variance_box=10 maximum_box=20 gaussian_blur=20 variance_box=15 variance_box=5 sobel_of_median_box=3 top_hat_box=2 top_hat_box=3 variance_box=20 laplace_box_of_gaussian_blur=1 laplace_box_of_gaussian_blur=2 difference_of_gaussian=2 large_hessian_eigenvalue_of_gaussian_blur=1 sobel_of_gaussian_blur=15 gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=2 large_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=5 laplace_box_of_gaussian_blur=3 difference_of_gaussian=3 top_hat_box=1 large_hessian_eigenvalue_of_gaussian_blur=5 difference_of_gaussian=1 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=20 sobel_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=2 sobel_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=1 mean_box=20 small_hessian_eigenvalue_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=20 difference_of_gaussian=5 sobel_of_gaussian_blur=30 laplace_box_of_gaussian_blur=5 sobel_of_gaussian_blur=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 79
max_depth = 5
num_trees = 250
feature_importances = 0.09071935748456665,0.10098458008891116,0.08986286958267703,0.05885188076311274,0.034226667874477645,0.07282949773062794,0.06171995889307015,0.03314194532454208,0.05120125637748938,0.0413866209412819,0.02988086379049699,0.02694064828494777,0.025677625980891967,0.028707773500336306,0.020290476381037804,0.0091998090215823,0.013088917936656364,0.009971928175330812,0.011797637898487316,0.008586188424404478,0.007407057267579782,0.03079461731788721,0.01084983034069884,0.0038029890868103316,0.016255784563193675,0.009635018464981274,0.0028870875272038383,0.008261843553432232,0.004158663033629164,0.0010715244079621896,0.0028620886256422503,0.002637653480617712,0.0005753454787669433,0.0030488451019821216,0.002999121251053182,0.0030668452955523776,0.002104269139437878,0.006187455854857382,0.002518430024076651,0.0032769194054906043,0.002397037645745899,0.002113583405158678,0.0026735888957331207,0.0023276353171416894,0.0025431760234778385,0.001863327889418599,0.0014589254604593484,0.0024895319483262727,0.0014669919758168646,0.0021706007880946607,0.001550244049503033,0.0014087666974390088,0.0017389262155671505,0.0015717960186250343,0.001350301691463487,0.0016214022960110025,0.0013130680978786667,0.00640368581564197,0.0019302896066502962,0.0011270498308669236,0.0010931721630195942,0.0010236229286087924,0.0015239934401266228,0.00069967022013198,0.0011195260656417596,0.0008265024692725676,0.0008563671708928597,0.0008415966781862311,0.0006097074156401797,0.0009214386774386798,0.0008425518997191199,0.0007870251581331575,0.00028322402817169295,0.0009840521514243926,0.0002907809872002081,0.0002497252813522715,0.000349232851716311,0.00041227018111933536,0.001297716887400267
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
if(i1<0.08592218160629272){
 if(i4<4.0471553802490234e-05){
  if(i11<1.0412344932556152){
   if(i70<0.00982554443180561){
    if(i57<0.9722006320953369){
     s0+=65.0;
     s1+=25.0;
    } else {
     s0+=42578.0;
     s1+=80.0;
    }
   } else {
    if(i30<1.2385294437408447){
     s0+=5918.0;
     s1+=468.0;
    } else {
     s0+=10824.0;
     s1+=33.0;
    }
   }
  } else {
   if(i24<0.9930970668792725){
    if(i26<0.0027211387641727924){
     s0+=533.0;
     s1+=498.0;
    } else {
     s0+=1123.0;
     s1+=197.0;
    }
   } else {
    if(i8<-2.761054565780796e-05){
     s0+=1308.0;
     s1+=598.0;
    } else {
     s0+=6372.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i17<1.0407118797302246){
   s0+=226.0;
  } else {
   if(i51<0.006152749061584473){
    if(i35<1.2160736322402954){
     s0+=3.0;
     s1+=638.0;
    } else {
     s0+=135.0;
     s1+=334.0;
    }
   } else {
    if(i3<1.0045418739318848){
     s0+=98.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i13<1.0068693161010742){
  if(i10<-0.0004031956195831299){
   if(i65<1.0011310577392578){
    if(i36<-9.801444321055897e-06){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=508.0;
    }
   } else {
    if(i7<1.0446126461029053){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  } else {
   if(i34<0.00045606427011080086){
    if(i59<-0.0001260189455933869){
     s0+=16.0;
     s1+=9.0;
    } else {
     s0+=176.0;
     s1+=3.0;
    }
   } else {
    if(i48<0.060980141162872314){
     s0+=85.0;
     s1+=2885.0;
    } else {
     s0+=902.0;
     s1+=1956.0;
    }
   }
  }
 } else {
  if(i67<0.00013681905693374574){
   if(i65<0.9999481439590454){
    if(i15<0.0001093745231628418){
     s0+=6.0;
    } else {
     s1+=154.0;
    }
   } else {
    if(i57<1.0191068649291992){
     s1+=1.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   if(i12<0.0003701746463775635){
    if(i2<0.12146097421646118){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=195.0;
    }
   } else {
    if(i36<-1.4455983546213247e-05){
     s1+=8332.0;
    } else {
     s0+=9.0;
     s1+=549.0;
    }
   }
  }
 }
}
if(i6<0.07109606266021729){
 if(i10<0.0006436705589294434){
  if(i9<1.0081498622894287){
   if(i60<-0.0023250579833984375){
    if(i13<0.9874732494354248){
     s0+=3360.0;
     s1+=136.0;
    } else {
     s0+=1936.0;
     s1+=881.0;
    }
   } else {
    if(i17<1.0486011505126953){
     s0+=54168.0;
     s1+=171.0;
    } else {
     s0+=8177.0;
     s1+=975.0;
    }
   }
  } else {
   if(i63<-9.265020344173536e-05){
    if(i59<-0.0006018432322889566){
     s0+=62.0;
     s1+=5.0;
    } else {
     s0+=52.0;
     s1+=374.0;
    }
   } else {
    if(i17<1.073185682296753){
     s0+=25.0;
     s1+=232.0;
    } else {
     s0+=723.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i13<1.0001318454742432){
   if(i50<-0.026881277561187744){
    if(i2<0.013995170593261719){
     s0+=42.0;
     s1+=37.0;
    } else {
     s0+=8.0;
     s1+=176.0;
    }
   } else {
    if(i74<-3.610497515182942e-06){
     s0+=28.0;
     s1+=39.0;
    } else {
     s0+=423.0;
     s1+=40.0;
    }
   }
  } else {
   if(i76<0.0005214059492573142){
    if(i52<0.0040784478187561035){
     s0+=24.0;
     s1+=1294.0;
    } else {
     s0+=19.0;
     s1+=11.0;
    }
   } else {
    s0+=9.0;
   }
  }
 }
} else {
 if(i2<0.11779457330703735){
  if(i71<-0.017881421372294426){
   if(i37<0.9646221399307251){
    if(i60<-0.002995699644088745){
     s1+=28.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i5<0.0019276142120361328){
     s0+=756.0;
     s1+=56.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i60<0.006934136152267456){
    if(i39<1.0598037242889404){
     s0+=173.0;
     s1+=2.0;
    } else {
     s0+=289.0;
     s1+=1493.0;
    }
   } else {
    if(i2<0.09395882487297058){
     s0+=188.0;
     s1+=10.0;
    } else {
     s0+=65.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i14<-1.7344951629638672e-05){
   s0+=215.0;
  } else {
   if(i14<1.901388168334961e-05){
    if(i42<1.318961262702942){
     s0+=365.0;
     s1+=1423.0;
    } else {
     s0+=8.0;
     s1+=1550.0;
    }
   } else {
    if(i43<0.9966810941696167){
     s0+=5.0;
    } else {
     s0+=56.0;
     s1+=7968.0;
    }
   }
  }
 }
}
if(i6<0.07196676731109619){
 if(i2<0.07646152377128601){
  if(i4<4.1812658309936523e-05){
   if(i39<1.0556960105895996){
    if(i70<0.028565283864736557){
     s0+=41447.0;
    } else {
     s0+=1365.0;
     s1+=2.0;
    }
   } else {
    if(i0<0.0663345456123352){
     s0+=24400.0;
     s1+=1547.0;
    } else {
     s0+=1338.0;
     s1+=537.0;
    }
   }
  } else {
   if(i55<0.9990729093551636){
    s0+=197.0;
   } else {
    if(i28<0.0001619190734345466){
     s0+=61.0;
     s1+=6.0;
    } else {
     s0+=183.0;
     s1+=1037.0;
    }
   }
  }
 } else {
  if(i5<-0.000737994909286499){
   if(i56<0.003455854021012783){
    s0+=115.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i8<-3.563635345926741e-06){
    if(i33<0.06248098611831665){
     s0+=8.0;
     s1+=1496.0;
    } else {
     s0+=17.0;
     s1+=50.0;
    }
   } else {
    if(i56<0.0006003807066008449){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0003960132598876953){
  if(i36<-1.0307649972673971e-05){
   if(i11<1.0405452251434326){
    s0+=11.0;
   } else {
    if(i78<0.033560506999492645){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i16<0.0009848747868090868){
    if(i19<0.9981321692466736){
     s0+=29.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    s0+=420.0;
   }
  }
 } else {
  if(i1<0.12520241737365723){
   if(i64<0.004138082265853882){
    if(i61<0.004025638103485107){
     s0+=225.0;
     s1+=1331.0;
    } else {
     s0+=277.0;
     s1+=44.0;
    }
   } else {
    if(i52<0.0034002065658569336){
     s0+=113.0;
     s1+=65.0;
    } else {
     s0+=581.0;
     s1+=24.0;
    }
   }
  } else {
   if(i31<0.023608509451150894){
    if(i62<0.06050068140029907){
     s0+=126.0;
     s1+=1799.0;
    } else {
     s0+=210.0;
     s1+=151.0;
    }
   } else {
    if(i8<6.374595614033751e-06){
     s0+=45.0;
     s1+=8888.0;
    } else {
     s0+=32.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i12<0.0008067488670349121){
 if(i3<1.0023627281188965){
  if(i26<0.00031641250825487077){
   if(i29<1.0135977268218994){
    if(i25<1.0089361667633057){
     s0+=53463.0;
     s1+=285.0;
    } else {
     s0+=123.0;
     s1+=70.0;
    }
   } else {
    if(i8<-2.6181060093222186e-05){
     s0+=9.0;
     s1+=68.0;
    } else {
     s0+=181.0;
     s1+=7.0;
    }
   }
  } else {
   if(i2<0.07756328582763672){
    if(i42<1.1037919521331787){
     s0+=3468.0;
     s1+=1206.0;
    } else {
     s0+=11508.0;
     s1+=483.0;
    }
   } else {
    if(i8<-1.032831733027706e-05){
     s0+=729.0;
     s1+=2929.0;
    } else {
     s0+=895.0;
     s1+=236.0;
    }
   }
  }
 } else {
  if(i11<1.1223218441009521){
   if(i6<0.04104796051979065){
    if(i45<0.00026264399639330804){
     s0+=37.0;
    } else {
     s0+=70.0;
     s1+=144.0;
    }
   } else {
    if(i65<1.0029487609863281){
     s0+=87.0;
     s1+=717.0;
    } else {
     s0+=39.0;
     s1+=29.0;
    }
   }
  } else {
   s1+=1098.0;
  }
 }
} else {
 if(i2<0.05587753653526306){
  if(i34<0.0008079216349869967){
   s1+=243.0;
  } else {
   if(i8<-8.414328476646915e-05){
    s1+=68.0;
   } else {
    if(i37<0.9248422980308533){
     s1+=1.0;
    } else {
     s0+=480.0;
    }
   }
  }
 } else {
  if(i2<0.09728765487670898){
   if(i61<0.003703296184539795){
    if(i48<0.07453837990760803){
     s0+=35.0;
     s1+=896.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i0<0.10772308707237244){
     s0+=51.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i42<1.2570146322250366){
    if(i64<0.008468866348266602){
     s0+=1.0;
     s1+=1199.0;
    } else {
     s0+=13.0;
     s1+=13.0;
    }
   } else {
    s1+=7360.0;
   }
  }
 }
}
if(i11<1.0576403141021729){
 if(i2<0.0766308605670929){
  if(i26<0.0002843086840584874){
   if(i12<0.0011565983295440674){
    if(i60<-0.0037845373153686523){
     s0+=5.0;
     s1+=33.0;
    } else {
     s0+=52343.0;
     s1+=303.0;
    }
   } else {
    if(i38<0.0001666247844696045){
     s0+=66.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i12<-0.0013472437858581543){
    if(i66<5.288747615850298e-06){
     s1+=10.0;
    } else {
     s0+=7762.0;
     s1+=127.0;
    }
   } else {
    if(i19<1.0008649826049805){
     s0+=3991.0;
     s1+=701.0;
    } else {
     s0+=108.0;
     s1+=351.0;
    }
   }
  }
 } else {
  if(i17<1.049466609954834){
   if(i9<1.005110740661621){
    if(i4<-5.900859832763672e-06){
     s0+=264.0;
     s1+=9.0;
    } else {
     s0+=33.0;
     s1+=21.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i69<-0.0076093971729278564){
    s0+=46.0;
   } else {
    if(i8<-5.286380655888934e-06){
     s0+=59.0;
     s1+=931.0;
    } else {
     s0+=46.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i0<0.08317044377326965){
  if(i66<-6.554005267389584e-06){
   if(i54<0.0007364236516878009){
    if(i5<0.0009818077087402344){
     s0+=11.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i43<1.000619888305664){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=278.0;
    }
   }
  } else {
   if(i44<0.0011279636528342962){
    if(i8<-1.5603494830429554e-05){
     s0+=72.0;
     s1+=478.0;
    } else {
     s0+=925.0;
     s1+=168.0;
    }
   } else {
    if(i56<0.0033184380736202){
     s0+=3219.0;
     s1+=258.0;
    } else {
     s0+=755.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i8<-1.4545135854859836e-05){
   if(i44<0.006447829306125641){
    if(i71<-0.031022485345602036){
     s0+=251.0;
     s1+=219.0;
    } else {
     s0+=213.0;
     s1+=3416.0;
    }
   } else {
    if(i15<-0.0006045401096343994){
     s0+=23.0;
     s1+=58.0;
    } else {
     s0+=54.0;
     s1+=9082.0;
    }
   }
  } else {
   if(i47<0.04554089903831482){
    if(i18<0.9981807470321655){
     s0+=17.0;
    } else {
     s0+=20.0;
     s1+=152.0;
    }
   } else {
    if(i54<0.0026194960810244083){
     s0+=779.0;
     s1+=106.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i11<1.0452215671539307){
  if(i17<1.0451585054397583){
   if(i77<-0.0007026195526123047){
    if(i49<0.000995776616036892){
     s0+=2062.0;
     s1+=170.0;
    } else {
     s0+=3800.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.08061882853507996){
     s0+=48098.0;
     s1+=56.0;
    } else {
     s0+=31.0;
     s1+=8.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i34<0.00044056400656700134){
     s0+=1525.0;
     s1+=66.0;
    } else {
     s0+=382.0;
     s1+=450.0;
    }
   } else {
    if(i18<1.0020058155059814){
     s0+=5850.0;
     s1+=108.0;
    } else {
     s0+=114.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i3<1.002467393875122){
   if(i35<1.103413462638855){
    if(i19<1.0006513595581055){
     s0+=1742.0;
     s1+=578.0;
    } else {
     s0+=102.0;
     s1+=339.0;
    }
   } else {
    if(i8<-4.6496381401084363e-05){
     s0+=556.0;
     s1+=281.0;
    } else {
     s0+=4478.0;
     s1+=155.0;
    }
   }
  } else {
   if(i61<0.0025389790534973145){
    if(i16<0.0019372145179659128){
     s0+=48.0;
     s1+=12.0;
    } else {
     s0+=74.0;
     s1+=768.0;
    }
   } else {
    if(i24<1.0432407855987549){
     s0+=77.0;
     s1+=8.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i43<0.9992820024490356){
  if(i3<0.9978853464126587){
   if(i8<-4.225862357998267e-05){
    if(i77<0.0011711418628692627){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i8<-3.674704203149304e-05){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=658.0;
    }
   }
  } else {
   if(i73<-8.641781050755526e-07){
    s1+=48.0;
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i4<3.4749507904052734e-05){
   if(i0<0.09590235352516174){
    if(i64<0.002528846263885498){
     s0+=125.0;
     s1+=406.0;
    } else {
     s0+=406.0;
     s1+=89.0;
    }
   } else {
    if(i50<0.06231948733329773){
     s0+=114.0;
     s1+=1942.0;
    } else {
     s0+=542.0;
     s1+=779.0;
    }
   }
  } else {
   if(i8<-6.817097892053425e-05){
    if(i15<6.496906280517578e-06){
     s0+=59.0;
     s1+=989.0;
    } else {
     s0+=4.0;
     s1+=9290.0;
    }
   } else {
    if(i50<0.08691245317459106){
     s0+=30.0;
     s1+=515.0;
    } else {
     s0+=55.0;
     s1+=129.0;
    }
   }
  }
 }
}
if(i11<1.0564017295837402){
 if(i6<0.0753089189529419){
  if(i3<1.0024893283843994){
   if(i58<0.0015202767681330442){
    if(i23<1.0076260566711426){
     s0+=59879.0;
     s1+=717.0;
    } else {
     s0+=44.0;
     s1+=159.0;
    }
   } else {
    if(i42<1.217149257659912){
     s0+=2059.0;
     s1+=568.0;
    } else {
     s0+=2407.0;
     s1+=43.0;
    }
   }
  } else {
   if(i28<0.00016920713824220002){
    if(i39<1.125725507736206){
     s1+=21.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   } else {
    if(i67<0.00014129663759376854){
     s0+=9.0;
    } else {
     s0+=9.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i47<0.05037969350814819){
   if(i19<0.99500572681427){
    if(i11<1.0429741144180298){
     s0+=18.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i60<0.006830871105194092){
     s0+=20.0;
     s1+=441.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i1<0.10264548659324646){
    if(i33<0.0906105637550354){
     s0+=205.0;
     s1+=23.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i30<1.0762357711791992){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=122.0;
    }
   }
  }
 }
} else {
 if(i16<0.004695017822086811){
  if(i12<0.0014476776123046875){
   if(i1<0.09244644641876221){
    if(i41<0.001982242800295353){
     s0+=1448.0;
     s1+=514.0;
    } else {
     s0+=2978.0;
     s1+=131.0;
    }
   } else {
    if(i11<1.0845621824264526){
     s0+=124.0;
     s1+=594.0;
    } else {
     s0+=899.0;
     s1+=453.0;
    }
   }
  } else {
   s1+=888.0;
  }
 } else {
  if(i0<0.08486393094062805){
   if(i13<0.996708869934082){
    if(i21<1.0008888244628906){
     s0+=676.0;
     s1+=189.0;
    } else {
     s0+=19.0;
     s1+=104.0;
    }
   } else {
    if(i4<-2.709031105041504e-05){
     s0+=90.0;
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=613.0;
    }
   }
  } else {
   if(i34<0.001522574108093977){
    if(i14<-1.5288591384887695e-05){
     s0+=61.0;
    } else {
     s1+=579.0;
    }
   } else {
    if(i17<1.0718514919281006){
     s0+=47.0;
     s1+=57.0;
    } else {
     s0+=79.0;
     s1+=10564.0;
    }
   }
  }
 }
}
if(i18<1.0016398429870605){
 if(i33<0.0640130341053009){
  if(i0<0.07850030064582825){
   if(i51<-0.005657941102981567){
    if(i41<0.0020232335664331913){
     s0+=1260.0;
     s1+=575.0;
    } else {
     s0+=2588.0;
     s1+=183.0;
    }
   } else {
    if(i20<0.016617346554994583){
     s0+=56507.0;
     s1+=463.0;
    } else {
     s0+=7489.0;
     s1+=740.0;
    }
   }
  } else {
   if(i35<1.0670123100280762){
    if(i76<4.3637606722768396e-05){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=113.0;
    }
   } else {
    if(i15<-0.0003440380096435547){
     s0+=44.0;
     s1+=30.0;
    } else {
     s0+=81.0;
     s1+=1949.0;
    }
   }
  }
 } else {
  if(i1<0.10796031355857849){
   if(i69<-0.0043374327942729){
    if(i61<-0.008789777755737305){
     s1+=7.0;
    } else {
     s0+=566.0;
     s1+=13.0;
    }
   } else {
    if(i49<0.00031998351914808154){
     s0+=179.0;
    } else {
     s0+=288.0;
     s1+=191.0;
    }
   }
  } else {
   if(i8<-1.3781947927782312e-05){
    if(i31<0.023413043469190598){
     s0+=178.0;
     s1+=767.0;
    } else {
     s0+=21.0;
     s1+=1673.0;
    }
   } else {
    if(i55<1.0000674724578857){
     s0+=544.0;
     s1+=75.0;
    } else {
     s0+=7.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i3<1.0023622512817383){
  if(i20<0.06312413513660431){
   if(i0<0.11835730075836182){
    if(i38<0.00036656856536865234){
     s0+=283.0;
     s1+=158.0;
    } else {
     s0+=622.0;
     s1+=42.0;
    }
   } else {
    if(i62<0.04629760980606079){
     s1+=134.0;
    } else {
     s0+=17.0;
     s1+=20.0;
    }
   }
  } else {
   if(i1<0.05460891127586365){
    if(i7<1.065650463104248){
     s0+=90.0;
     s1+=6.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i35<1.1806392669677734){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=239.0;
    }
   }
  }
 } else {
  if(i26<0.00017476032371632755){
   s0+=23.0;
  } else {
   if(i15<1.9371509552001953e-05){
    if(i72<1.0011848211288452){
     s0+=41.0;
     s1+=25.0;
    } else {
     s0+=121.0;
     s1+=1183.0;
    }
   } else {
    if(i8<-4.325253757997416e-05){
     s0+=3.0;
     s1+=8487.0;
    } else {
     s0+=19.0;
     s1+=98.0;
    }
   }
  }
 }
}
if(i3<1.0024337768554688){
 if(i45<0.000382762576919049){
  if(i23<1.0072076320648193){
   if(i63<0.0003120660549029708){
    if(i11<1.0591678619384766){
     s0+=48879.0;
     s1+=87.0;
    } else {
     s0+=109.0;
     s1+=23.0;
    }
   } else {
    if(i21<0.9953383803367615){
     s0+=155.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=50.0;
    }
   }
  } else {
   if(i30<1.1108002662658691){
    s1+=147.0;
   } else {
    s0+=22.0;
   }
  }
 } else {
  if(i33<0.060222476720809937){
   if(i11<1.0445520877838135){
    if(i3<0.9965710043907166){
     s0+=9172.0;
     s1+=66.0;
    } else {
     s0+=4396.0;
     s1+=666.0;
    }
   } else {
    if(i18<0.9986180067062378){
     s0+=1245.0;
     s1+=13.0;
    } else {
     s0+=4448.0;
     s1+=2357.0;
    }
   }
  } else {
   if(i31<0.040256403386592865){
    if(i10<-0.00041180849075317383){
     s0+=450.0;
     s1+=11.0;
    } else {
     s0+=1623.0;
     s1+=1552.0;
    }
   } else {
    if(i45<0.005544030107557774){
     s0+=30.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=908.0;
    }
   }
  }
 }
} else {
 if(i28<0.00016985050751827657){
  if(i2<0.05878087878227234){
   if(i49<0.0009211689466610551){
    if(i36<-1.2401842468534596e-05){
     s1+=9.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=101.0;
   }
  } else {
   s1+=34.0;
  }
 } else {
  if(i32<1.004849910736084){
   if(i6<0.12746748328208923){
    if(i24<1.0087361335754395){
     s0+=80.0;
     s1+=760.0;
    } else {
     s0+=101.0;
     s1+=91.0;
    }
   } else {
    if(i1<0.17342102527618408){
     s0+=13.0;
     s1+=210.0;
    } else {
     s1+=1014.0;
    }
   }
  } else {
   if(i15<0.00022929906845092773){
    if(i54<0.0010219046380370855){
     s0+=63.0;
     s1+=60.0;
    } else {
     s0+=21.0;
     s1+=1353.0;
    }
   } else {
    s1+=7871.0;
   }
  }
 }
}
if(i3<1.0024571418762207){
 if(i1<0.08414876461029053){
  if(i53<0.00798767525702715){
   if(i45<0.0002969925117213279){
    if(i63<0.0003156932070851326){
     s0+=46299.0;
     s1+=53.0;
    } else {
     s0+=76.0;
     s1+=27.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=4753.0;
     s1+=1035.0;
    } else {
     s0+=14523.0;
     s1+=182.0;
    }
   }
  } else {
   if(i5<0.0002027750015258789){
    if(i18<0.998380184173584){
     s0+=973.0;
     s1+=12.0;
    } else {
     s0+=1986.0;
     s1+=565.0;
    }
   } else {
    if(i21<1.0013909339904785){
     s0+=142.0;
     s1+=111.0;
    } else {
     s0+=17.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i10<-0.0004112422466278076){
   if(i12<-0.003021448850631714){
    if(i70<0.03768778592348099){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=48.0;
     s1+=2.0;
    }
   } else {
    s0+=593.0;
   }
  } else {
   if(i2<0.10069909691810608){
    if(i69<-0.004434215370565653){
     s0+=466.0;
     s1+=64.0;
    } else {
     s0+=201.0;
     s1+=782.0;
    }
   } else {
    if(i20<0.03933067247271538){
     s0+=514.0;
     s1+=1237.0;
    } else {
     s0+=62.0;
     s1+=1755.0;
    }
   }
  }
 }
} else {
 if(i15<0.00022858381271362305){
  if(i16<0.002344104927033186){
   if(i34<0.0007594632916152477){
    if(i17<1.0422914028167725){
     s0+=9.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i24<0.9997506141662598){
     s1+=1.0;
    } else {
     s0+=181.0;
    }
   }
  } else {
   if(i12<3.5822391510009766e-05){
    if(i54<0.0019053416326642036){
     s0+=77.0;
     s1+=122.0;
    } else {
     s0+=67.0;
     s1+=967.0;
    }
   } else {
    if(i5<0.0006153583526611328){
     s0+=7.0;
     s1+=82.0;
    } else {
     s0+=7.0;
     s1+=1808.0;
    }
   }
  }
 } else {
  if(i8<-6.25125685473904e-05){
   s1+=8231.0;
  } else {
   if(i67<0.0002719059702940285){
    s0+=2.0;
   } else {
    s1+=54.0;
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i4<3.93986701965332e-05){
  if(i17<1.0451585054397583){
   if(i50<-0.031904131174087524){
    if(i43<0.9996121525764465){
     s0+=241.0;
     s1+=28.0;
    } else {
     s0+=251.0;
     s1+=1.0;
    }
   } else {
    if(i68<0.02073710784316063){
     s0+=45829.0;
     s1+=73.0;
    } else {
     s0+=7529.0;
     s1+=139.0;
    }
   }
  } else {
   if(i50<-0.02039673924446106){
    if(i20<0.014129512012004852){
     s0+=1294.0;
     s1+=158.0;
    } else {
     s0+=1158.0;
     s1+=619.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=3542.0;
     s1+=920.0;
    } else {
     s0+=8985.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i35<1.0611095428466797){
   s0+=256.0;
  } else {
   if(i41<0.0021506166085600853){
    if(i16<0.001085774740204215){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=617.0;
    }
   } else {
    if(i10<0.0005500316619873047){
     s0+=104.0;
     s1+=1.0;
    } else {
     s0+=167.0;
     s1+=360.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015909671783447){
  if(i38<-0.00013816356658935547){
   if(i34<0.001740775303915143){
    if(i19<0.9984159469604492){
     s0+=451.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i10<-0.00045374035835266113){
     s0+=21.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i62<0.026752889156341553){
    if(i75<0.003045499324798584){
     s0+=148.0;
     s1+=1790.0;
    } else {
     s0+=98.0;
     s1+=270.0;
    }
   } else {
    if(i1<0.11789390444755554){
     s0+=515.0;
     s1+=191.0;
    } else {
     s0+=318.0;
     s1+=750.0;
    }
   }
  }
 } else {
  if(i1<0.13563406467437744){
   if(i51<0.01551106572151184){
    if(i50<0.08809098601341248){
     s0+=24.0;
     s1+=1588.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i67<0.000513134989887476){
     s0+=104.0;
     s1+=3.0;
    } else {
     s0+=28.0;
     s1+=34.0;
    }
   }
  } else {
   if(i13<1.006122350692749){
    if(i19<0.9962233304977417){
     s0+=7.0;
    } else {
     s0+=20.0;
     s1+=1445.0;
    }
   } else {
    s1+=7905.0;
   }
  }
 }
}
if(i12<0.0007403194904327393){
 if(i14<1.9729137420654297e-05){
  if(i2<0.07696101069450378){
   if(i53<0.0071198660880327225){
    if(i0<0.08200636506080627){
     s0+=63186.0;
     s1+=1140.0;
    } else {
     s0+=26.0;
     s1+=121.0;
    }
   } else {
    if(i20<0.013037459924817085){
     s0+=2178.0;
     s1+=133.0;
    } else {
     s0+=1636.0;
     s1+=598.0;
    }
   }
  } else {
   if(i20<0.02271326258778572){
    if(i48<0.05517047643661499){
     s0+=132.0;
     s1+=370.0;
    } else {
     s0+=960.0;
     s1+=223.0;
    }
   } else {
    if(i14<-1.7344951629638672e-05){
     s0+=221.0;
     s1+=4.0;
    } else {
     s0+=354.0;
     s1+=2124.0;
    }
   }
  }
 } else {
  if(i17<1.0644645690917969){
   if(i52<-0.0010206103324890137){
    if(i21<0.9984721541404724){
     s0+=18.0;
    } else {
     s0+=4.0;
     s1+=32.0;
    }
   } else {
    if(i73<-9.775838407222182e-06){
     s0+=461.0;
    } else {
     s0+=232.0;
     s1+=51.0;
    }
   }
  } else {
   if(i0<0.11917376518249512){
    if(i53<0.01441730186343193){
     s0+=720.0;
     s1+=387.0;
    } else {
     s0+=34.0;
     s1+=370.0;
    }
   } else {
    if(i70<0.08410894870758057){
     s0+=49.0;
     s1+=458.0;
    } else {
     s0+=1.0;
     s1+=1114.0;
    }
   }
  }
 }
} else {
 if(i2<0.05435490608215332){
  if(i14<1.9490718841552734e-05){
   if(i34<0.0006370202172547579){
    if(i67<0.001139404601417482){
     s0+=3.0;
     s1+=57.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i12<0.0016652941703796387){
     s0+=595.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i11<1.0357930660247803){
    s0+=24.0;
   } else {
    if(i60<0.0024362802505493164){
     s0+=1.0;
     s1+=221.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<0.07021626830101013){
   if(i39<1.190737247467041){
    if(i42<1.0634281635284424){
     s0+=12.0;
    } else {
     s0+=3.0;
     s1+=88.0;
    }
   } else {
    if(i5<0.001149594783782959){
     s0+=60.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i36<-1.1347942745487671e-06){
    if(i8<-4.2278916225768626e-05){
     s0+=4.0;
     s1+=9626.0;
    } else {
     s0+=51.0;
     s1+=124.0;
    }
   } else {
    if(i72<1.0003266334533691){
     s0+=15.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i3<1.002413034439087){
 if(i20<0.02209835685789585){
  if(i2<0.08341461420059204){
   if(i56<0.0007819994352757931){
    if(i23<1.0072754621505737){
     s0+=57725.0;
     s1+=321.0;
    } else {
     s0+=918.0;
     s1+=233.0;
    }
   } else {
    if(i13<0.989683985710144){
     s0+=2370.0;
     s1+=117.0;
    } else {
     s0+=1789.0;
     s1+=568.0;
    }
   }
  } else {
   if(i8<-1.1630236258497462e-05){
    if(i69<-0.007127632852643728){
     s0+=222.0;
     s1+=53.0;
    } else {
     s0+=127.0;
     s1+=782.0;
    }
   } else {
    if(i61<-0.007088392972946167){
     s0+=2.0;
     s1+=26.0;
    } else {
     s0+=503.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i4<-3.522634506225586e-05){
   if(i27<1.0346472263336182){
    if(i3<0.9965223073959351){
     s0+=4261.0;
     s1+=46.0;
    } else {
     s0+=216.0;
     s1+=113.0;
    }
   } else {
    if(i59<-0.0009006272302940488){
     s1+=92.0;
    } else {
     s0+=645.0;
     s1+=171.0;
    }
   }
  } else {
   if(i31<0.012541314586997032){
    if(i40<3.0486786272376776e-05){
     s0+=708.0;
     s1+=141.0;
    } else {
     s0+=402.0;
     s1+=446.0;
    }
   } else {
    if(i3<0.9970083236694336){
     s0+=126.0;
     s1+=23.0;
    } else {
     s0+=650.0;
     s1+=2761.0;
    }
   }
  }
 }
} else {
 if(i36<-1.4642298992839642e-05){
  if(i32<0.9969427585601807){
   if(i26<0.012100188061594963){
    if(i34<0.010649779811501503){
     s0+=87.0;
     s1+=669.0;
    } else {
     s0+=57.0;
     s1+=19.0;
    }
   } else {
    s1+=662.0;
   }
  } else {
   if(i21<1.0046522617340088){
    if(i31<0.01103122252970934){
     s0+=29.0;
     s1+=83.0;
    } else {
     s0+=8.0;
     s1+=1208.0;
    }
   } else {
    s1+=8220.0;
   }
  }
 } else {
  if(i0<0.06379696726799011){
   if(i18<1.0020742416381836){
    if(i20<0.051699016243219376){
     s0+=225.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i59<-0.00012702716048806906){
    if(i0<0.10139608383178711){
     s0+=23.0;
     s1+=48.0;
    } else {
     s0+=2.0;
     s1+=252.0;
    }
   } else {
    if(i52<0.0012130141258239746){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=33.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i27<1.0406770706176758){
 if(i0<0.07974663376808167){
  if(i39<1.0598037242889404){
   if(i39<1.0557184219360352){
    if(i70<0.028570260852575302){
     s0+=41529.0;
    } else {
     s0+=1382.0;
     s1+=1.0;
    }
   } else {
    if(i22<0.9865561723709106){
     s0+=18.0;
     s1+=39.0;
    } else {
     s0+=911.0;
     s1+=1.0;
    }
   }
  } else {
   if(i50<-0.02388516068458557){
    if(i4<1.8656253814697266e-05){
     s0+=1699.0;
     s1+=485.0;
    } else {
     s0+=69.0;
     s1+=548.0;
    }
   } else {
    if(i0<0.06334400177001953){
     s0+=19722.0;
     s1+=776.0;
    } else {
     s0+=1429.0;
     s1+=528.0;
    }
   }
  }
 } else {
  if(i14<-1.33514404296875e-05){
   if(i41<0.0012877578847110271){
    s0+=130.0;
   } else {
    if(i1<0.08767902851104736){
     s0+=30.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i5<-0.0007584095001220703){
    if(i47<0.03854966163635254){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=63.0;
     s1+=14.0;
    }
   } else {
    if(i41<0.00036330707371234894){
     s0+=33.0;
     s1+=3.0;
    } else {
     s0+=49.0;
     s1+=2332.0;
    }
   }
  }
 }
} else {
 if(i31<0.024092823266983032){
  if(i2<0.0854576826095581){
   if(i36<-8.149458153638989e-06){
    if(i32<1.002824068069458){
     s0+=537.0;
     s1+=105.0;
    } else {
     s0+=222.0;
     s1+=555.0;
    }
   } else {
    if(i17<1.0902565717697144){
     s0+=886.0;
     s1+=115.0;
    } else {
     s0+=959.0;
     s1+=7.0;
    }
   }
  } else {
   if(i40<-1.5457022527698427e-05){
    if(i15<0.00021380186080932617){
     s0+=17.0;
     s1+=29.0;
    } else {
     s1+=1206.0;
    }
   } else {
    if(i71<-0.01810396835207939){
     s0+=761.0;
     s1+=324.0;
    } else {
     s0+=188.0;
     s1+=968.0;
    }
   }
  }
 } else {
  if(i8<-1.1832396921818145e-05){
   if(i11<1.063935399055481){
    if(i21<0.9914637804031372){
     s0+=108.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i67<0.00017929365276359022){
     s0+=31.0;
     s1+=173.0;
    } else {
     s0+=58.0;
     s1+=8651.0;
    }
   }
  } else {
   if(i14<2.5033950805664062e-05){
    if(i40<2.214071537309792e-05){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=363.0;
     s1+=19.0;
    }
   } else {
    s1+=39.0;
   }
  }
 }
}
if(i9<1.0080137252807617){
 if(i2<0.08032667636871338){
  if(i18<1.0018703937530518){
   if(i68<0.018660645931959152){
    if(i61<-0.00283205509185791){
     s0+=35.0;
     s1+=98.0;
    } else {
     s0+=51486.0;
     s1+=233.0;
    }
   } else {
    if(i30<1.100754976272583){
     s0+=3900.0;
     s1+=1180.0;
    } else {
     s0+=12242.0;
     s1+=399.0;
    }
   }
  } else {
   if(i49<0.002005533315241337){
    if(i54<0.0007987831486389041){
     s0+=6.0;
    } else {
     s1+=185.0;
    }
   } else {
    if(i53<0.013766536489129066){
     s0+=665.0;
     s1+=96.0;
    } else {
     s0+=32.0;
     s1+=261.0;
    }
   }
  }
 } else {
  if(i4<6.020069122314453e-06){
   if(i18<0.9985276460647583){
    if(i45<0.03988460451364517){
     s0+=417.0;
     s1+=10.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i62<0.025831222534179688){
     s0+=96.0;
     s1+=662.0;
    } else {
     s0+=489.0;
     s1+=387.0;
    }
   }
  } else {
   if(i62<0.04210102558135986){
    if(i2<0.0971122682094574){
     s0+=58.0;
     s1+=302.0;
    } else {
     s0+=20.0;
     s1+=1889.0;
    }
   } else {
    if(i49<0.005196237005293369){
     s0+=123.0;
     s1+=75.0;
    } else {
     s0+=30.0;
     s1+=278.0;
    }
   }
  }
 }
} else {
 if(i2<0.07901984453201294){
  if(i44<0.0011288333917036653){
   if(i54<0.0002628445508889854){
    if(i65<0.9999079704284668){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i72<0.9990625381469727){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=616.0;
    }
   }
  } else {
   if(i18<1.002730131149292){
    if(i40<9.061759919859469e-05){
     s0+=892.0;
     s1+=54.0;
    } else {
     s0+=23.0;
     s1+=30.0;
    }
   } else {
    if(i61<0.005983412265777588){
     s1+=134.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i15<5.0961971282958984e-05){
   if(i16<0.003630175720900297){
    if(i69<-0.009633051231503487){
     s0+=239.0;
     s1+=17.0;
    } else {
     s0+=80.0;
     s1+=190.0;
    }
   } else {
    if(i10<-0.0003822445869445801){
     s0+=42.0;
    } else {
     s0+=30.0;
     s1+=1055.0;
    }
   }
  } else {
   if(i59<-9.88034880720079e-05){
    if(i0<0.09643295407295227){
     s0+=17.0;
     s1+=186.0;
    } else {
     s0+=7.0;
     s1+=8632.0;
    }
   } else {
    if(i8<-5.334879824658856e-05){
     s1+=254.0;
    } else {
     s0+=24.0;
    }
   }
  }
 }
}
if(i8<-8.167394844349474e-05){
 if(i11<1.0428924560546875){
  if(i22<1.000854253768921){
   if(i21<1.0035593509674072){
    if(i31<0.05968647450208664){
     s0+=546.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i2<0.016591131687164307){
   if(i28<0.0030509834177792072){
    if(i8<-0.00010509822459425777){
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   } else {
    if(i50<-0.14741230010986328){
     s0+=3.0;
     s1+=25.0;
    } else {
     s0+=103.0;
     s1+=2.0;
    }
   }
  } else {
   if(i77<-0.00020125508308410645){
    if(i55<1.0006883144378662){
     s0+=96.0;
     s1+=2408.0;
    } else {
     s0+=45.0;
     s1+=89.0;
    }
   } else {
    if(i65<0.9955549240112305){
     s0+=8.0;
    } else {
     s0+=36.0;
     s1+=8430.0;
    }
   }
  }
 }
} else {
 if(i14<1.9252300262451172e-05){
  if(i1<0.08414876461029053){
   if(i2<0.0633929967880249){
    if(i17<1.0485899448394775){
     s0+=53584.0;
     s1+=264.0;
    } else {
     s0+=11238.0;
     s1+=1070.0;
    }
   } else {
    if(i8<-2.5277033273596317e-05){
     s0+=314.0;
     s1+=356.0;
    } else {
     s0+=2304.0;
     s1+=236.0;
    }
   }
  } else {
   if(i48<0.05801957845687866){
    if(i34<0.0004472245927900076){
     s0+=210.0;
     s1+=4.0;
    } else {
     s0+=188.0;
     s1+=1708.0;
    }
   } else {
    if(i8<-2.3753185814712197e-05){
     s0+=281.0;
     s1+=759.0;
    } else {
     s0+=1079.0;
     s1+=233.0;
    }
   }
  }
 } else {
  if(i4<4.559755325317383e-05){
   if(i2<0.10275986790657043){
    if(i21<1.000295639038086){
     s0+=848.0;
     s1+=92.0;
    } else {
     s0+=106.0;
     s1+=98.0;
    }
   } else {
    if(i20<0.03614291548728943){
     s0+=17.0;
     s1+=51.0;
    } else {
     s0+=3.0;
     s1+=166.0;
    }
   }
  } else {
   if(i54<0.0007040618220344186){
    if(i20<0.04330961033701897){
     s0+=32.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i13<1.0007315874099731){
     s0+=77.0;
     s1+=263.0;
    } else {
     s0+=14.0;
     s1+=782.0;
    }
   }
  }
 }
}
if(i13<1.0059130191802979){
 if(i0<0.08225274085998535){
  if(i4<4.178285598754883e-05){
   if(i61<-0.0013626515865325928){
    if(i44<0.0009905935730785131){
     s0+=1219.0;
     s1+=585.0;
    } else {
     s0+=4368.0;
     s1+=353.0;
    }
   } else {
    if(i46<0.029672935605049133){
     s0+=57446.0;
     s1+=457.0;
    } else {
     s0+=5345.0;
     s1+=638.0;
    }
   }
  } else {
   if(i65<0.9976966381072998){
    s0+=238.0;
   } else {
    if(i64<0.0013411641120910645){
     s0+=46.0;
     s1+=347.0;
    } else {
     s0+=57.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i18<0.9981886744499207){
   if(i44<0.0076316650956869125){
    if(i1<0.08803969621658325){
     s0+=53.0;
     s1+=1.0;
    } else {
     s0+=398.0;
    }
   } else {
    if(i78<0.12496268004179001){
     s0+=19.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i64<0.002864062786102295){
    if(i37<1.028937578201294){
     s0+=86.0;
     s1+=2174.0;
    } else {
     s0+=75.0;
     s1+=225.0;
    }
   } else {
    if(i0<0.1366305947303772){
     s0+=731.0;
     s1+=330.0;
    } else {
     s0+=198.0;
     s1+=1675.0;
    }
   }
  }
 }
} else {
 if(i5<0.0004977583885192871){
  if(i54<0.0008703053463250399){
   if(i18<1.0000450611114502){
    if(i15<0.00011259317398071289){
     s0+=52.0;
     s1+=7.0;
    } else {
     s1+=189.0;
    }
   } else {
    if(i49<0.0006881980807520449){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=499.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.08063250780105591){
    if(i3<1.0012588500976562){
     s0+=29.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=33.0;
    }
   } else {
    if(i25<1.00482976436615){
     s0+=2.0;
     s1+=7.0;
    } else {
     s1+=479.0;
    }
   }
  }
 } else {
  if(i54<0.0009925569174811244){
   if(i26<0.0003560864133760333){
    if(i73<-5.64383026357973e-06){
     s1+=26.0;
    } else {
     s0+=103.0;
     s1+=1.0;
    }
   } else {
    if(i13<1.0098495483398438){
     s0+=69.0;
     s1+=58.0;
    } else {
     s1+=727.0;
    }
   }
  } else {
   if(i30<1.613681674003601){
    s1+=7452.0;
   } else {
    if(i0<0.12045454978942871){
     s0+=15.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=1377.0;
    }
   }
  }
 }
}
if(i13<1.0060030221939087){
 if(i7<1.0452277660369873){
  if(i0<0.08483830094337463){
   if(i52<-0.0017711222171783447){
    if(i2<0.03546074032783508){
     s0+=2310.0;
     s1+=325.0;
    } else {
     s0+=199.0;
     s1+=302.0;
    }
   } else {
    if(i17<1.0451585054397583){
     s0+=53529.0;
     s1+=162.0;
    } else {
     s0+=8702.0;
     s1+=699.0;
    }
   }
  } else {
   if(i30<1.0790932178497314){
    s0+=105.0;
   } else {
    if(i21<0.9932217597961426){
     s0+=52.0;
     s1+=49.0;
    } else {
     s0+=18.0;
     s1+=672.0;
    }
   }
  }
 } else {
  if(i8<-2.27205382543616e-05){
   if(i8<-6.972820847295225e-05){
    if(i17<1.125774621963501){
     s0+=231.0;
     s1+=304.0;
    } else {
     s0+=59.0;
     s1+=1836.0;
    }
   } else {
    if(i49<0.002209324389696121){
     s0+=173.0;
     s1+=852.0;
    } else {
     s0+=1047.0;
     s1+=803.0;
    }
   }
  } else {
   if(i55<0.9995863437652588){
    if(i10<-5.5789947509765625e-05){
     s0+=838.0;
    } else {
     s0+=293.0;
     s1+=22.0;
    }
   } else {
    if(i20<0.02815948612987995){
     s0+=2602.0;
     s1+=285.0;
    } else {
     s0+=292.0;
     s1+=427.0;
    }
   }
  }
 }
} else {
 if(i16<0.0022369548678398132){
  if(i40<-2.8911648769280873e-05){
   if(i52<0.007710635662078857){
    s1+=221.0;
   } else {
    if(i6<0.16565722227096558){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i41<0.0011387335835024714){
    if(i45<0.00016851916734594852){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=103.0;
    }
   } else {
    if(i19<0.9964485168457031){
     s1+=12.0;
    } else {
     s0+=666.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i4<3.129243850708008e-05){
   if(i18<0.998860239982605){
    s0+=21.0;
   } else {
    if(i30<1.2790409326553345){
     s0+=4.0;
     s1+=371.0;
    } else {
     s0+=83.0;
     s1+=176.0;
    }
   }
  } else {
   if(i65<1.0031672716140747){
    if(i5<0.00046259164810180664){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=9242.0;
    }
   } else {
    if(i10<0.0010301470756530762){
     s0+=12.0;
    } else {
     s1+=136.0;
    }
   }
  }
 }
}
if(i12<0.0007591843605041504){
 if(i39<1.0675550699234009){
  if(i25<1.009287714958191){
   if(i45<0.00029307519434951246){
    if(i25<1.0068585872650146){
     s0+=41210.0;
    } else {
     s0+=162.0;
     s1+=21.0;
    }
   } else {
    if(i37<1.0072673559188843){
     s0+=4401.0;
     s1+=138.0;
    } else {
     s0+=406.0;
     s1+=49.0;
    }
   }
  } else {
   if(i36<-8.464328857371584e-06){
    s1+=54.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i1<0.0841723084449768){
   if(i44<0.0010287555633112788){
    if(i12<-0.00035697221755981445){
     s0+=1090.0;
     s1+=931.0;
    } else {
     s0+=2571.0;
     s1+=417.0;
    }
   } else {
    if(i5<0.0005136728286743164){
     s0+=18820.0;
     s1+=506.0;
    } else {
     s0+=173.0;
     s1+=338.0;
    }
   }
  } else {
   if(i20<0.027925817295908928){
    if(i52<0.0031090378761291504){
     s0+=256.0;
     s1+=909.0;
    } else {
     s0+=908.0;
     s1+=339.0;
    }
   } else {
    if(i4<-6.178021430969238e-05){
     s0+=176.0;
     s1+=73.0;
    } else {
     s0+=241.0;
     s1+=3350.0;
    }
   }
  }
 }
} else {
 if(i0<0.06513500213623047){
  if(i28<0.0003958627348765731){
   if(i36<-1.4767040738661308e-05){
    s1+=97.0;
   } else {
    if(i36<-1.415376755176112e-05){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=599.0;
    }
   }
  } else {
   if(i48<0.020460277795791626){
    if(i75<0.003465414047241211){
     s0+=5.0;
     s1+=220.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i67<0.0005708863027393818){
     s0+=40.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i73<1.1617028121690964e-06){
   if(i4<5.8591365814208984e-05){
    if(i55<0.999899685382843){
     s1+=980.0;
    } else {
     s0+=67.0;
     s1+=170.0;
    }
   } else {
    s1+=8499.0;
   }
  } else {
   s0+=4.0;
  }
 }
}
if(i15<0.00011283159255981445){
 if(i6<0.07196682691574097){
  if(i51<-0.00612872838973999){
   if(i5<0.00023573637008666992){
    if(i30<1.1860926151275635){
     s0+=1200.0;
     s1+=552.0;
    } else {
     s0+=2369.0;
     s1+=158.0;
    }
   } else {
    if(i22<1.01018226146698){
     s0+=61.0;
     s1+=398.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   }
  } else {
   if(i2<0.07786303758621216){
    if(i1<0.07545414566993713){
     s0+=63602.0;
     s1+=1043.0;
    } else {
     s0+=897.0;
     s1+=283.0;
    }
   } else {
    if(i10<-0.00034871697425842285){
     s0+=76.0;
    } else {
     s0+=34.0;
     s1+=491.0;
    }
   }
  }
 } else {
  if(i18<0.9987615346908569){
   if(i10<-0.0004035532474517822){
    if(i34<0.006938370876014233){
     s0+=444.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i34<0.0009635473834350705){
     s0+=74.0;
    } else {
     s0+=18.0;
     s1+=37.0;
    }
   }
  } else {
   if(i20<0.02638406865298748){
    if(i69<-0.004711260087788105){
     s0+=779.0;
     s1+=201.0;
    } else {
     s0+=264.0;
     s1+=667.0;
    }
   } else {
    if(i67<0.00017284636851400137){
     s0+=128.0;
     s1+=178.0;
    } else {
     s0+=192.0;
     s1+=3029.0;
    }
   }
  }
 }
} else {
 if(i42<1.0696141719818115){
  s0+=305.0;
 } else {
  if(i5<0.000938117504119873){
   if(i1<0.06528806686401367){
    if(i36<-1.4701647160109133e-05){
     s1+=76.0;
    } else {
     s0+=534.0;
     s1+=16.0;
    }
   } else {
    if(i41<0.0029785484075546265){
     s1+=773.0;
    } else {
     s0+=84.0;
     s1+=438.0;
    }
   }
  } else {
   s1+=8787.0;
  }
 }
}
if(i16<0.00500117801129818){
 if(i3<1.002474308013916){
  if(i28<0.00031914227292872965){
   if(i6<0.07290181517601013){
    if(i60<-0.002698928117752075){
     s0+=310.0;
     s1+=153.0;
    } else {
     s0+=55343.0;
     s1+=474.0;
    }
   } else {
    if(i9<1.0035371780395508){
     s0+=164.0;
     s1+=40.0;
    } else {
     s0+=23.0;
     s1+=71.0;
    }
   }
  } else {
   if(i0<0.07580173015594482){
    if(i21<0.9936622381210327){
     s0+=3425.0;
     s1+=28.0;
    } else {
     s0+=4502.0;
     s1+=901.0;
    }
   } else {
    if(i11<1.0845621824264526){
     s0+=500.0;
     s1+=1129.0;
    } else {
     s0+=1137.0;
     s1+=436.0;
    }
   }
  }
 } else {
  if(i0<0.061629921197891235){
   if(i35<1.185258150100708){
    if(i36<-1.3512770237866789e-05){
     s1+=116.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i19<1.0148394107818604){
     s0+=173.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i50<0.10688316822052002){
    if(i51<0.031242787837982178){
     s0+=36.0;
     s1+=1176.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   } else {
    if(i2<0.24204224348068237){
     s0+=22.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i11<1.044576644897461){
  if(i3<1.0006083250045776){
   if(i30<1.1618170738220215){
    if(i42<1.0741386413574219){
     s0+=121.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i54<0.007347775623202324){
     s0+=4096.0;
     s1+=23.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i61<0.0017753243446350098){
    if(i68<0.07271469384431839){
     s0+=2.0;
     s1+=225.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i5<-0.0003406405448913574){
   if(i29<1.042290449142456){
    if(i59<-0.0006979197496548295){
     s0+=21.0;
     s1+=69.0;
    } else {
     s0+=527.0;
     s1+=120.0;
    }
   } else {
    if(i14<-1.3947486877441406e-05){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=99.0;
    }
   }
  } else {
   if(i1<0.08928117156028748){
    if(i12<-0.0008015036582946777){
     s0+=432.0;
     s1+=280.0;
    } else {
     s0+=19.0;
     s1+=709.0;
    }
   } else {
    if(i65<1.0046238899230957){
     s0+=84.0;
     s1+=11018.0;
    } else {
     s0+=29.0;
     s1+=73.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i18<1.0018565654754639){
  if(i53<0.007996276021003723){
   if(i0<0.06921336054801941){
    if(i60<-0.0020241141319274902){
     s0+=4357.0;
     s1+=462.0;
    } else {
     s0+=59555.0;
     s1+=509.0;
    }
   } else {
    if(i64<0.0009843111038208008){
     s0+=188.0;
     s1+=289.0;
    } else {
     s0+=1379.0;
     s1+=183.0;
    }
   }
  } else {
   if(i8<-3.343329080962576e-05){
    if(i0<0.007241666316986084){
     s0+=224.0;
     s1+=17.0;
    } else {
     s0+=111.0;
     s1+=322.0;
    }
   } else {
    if(i11<1.0922304391860962){
     s0+=1385.0;
     s1+=380.0;
    } else {
     s0+=1202.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i65<1.0016791820526123){
   if(i50<0.01624813675880432){
    if(i45<0.0002404653641860932){
     s0+=34.0;
    } else {
     s0+=60.0;
     s1+=851.0;
    }
   } else {
    if(i35<1.1609641313552856){
     s1+=12.0;
    } else {
     s0+=116.0;
     s1+=10.0;
    }
   }
  } else {
   if(i21<1.0035327672958374){
    if(i50<-0.057950496673583984){
     s0+=5.0;
     s1+=20.0;
    } else {
     s0+=537.0;
     s1+=29.0;
    }
   } else {
    if(i51<0.013475090265274048){
     s0+=3.0;
     s1+=41.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i55<0.9993926286697388){
  if(i43<0.9986611604690552){
   s0+=350.0;
  } else {
   if(i17<1.0523316860198975){
    s1+=2.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i19<1.0021660327911377){
   if(i10<-0.00037172436714172363){
    if(i49<0.008656437508761883){
     s0+=331.0;
     s1+=7.0;
    } else {
     s0+=19.0;
     s1+=17.0;
    }
   } else {
    if(i48<0.058317482471466064){
     s0+=69.0;
     s1+=2312.0;
    } else {
     s0+=906.0;
     s1+=1721.0;
    }
   }
  } else {
   if(i21<1.0020217895507812){
    if(i6<0.1251770257949829){
     s0+=132.0;
     s1+=399.0;
    } else {
     s0+=31.0;
     s1+=1159.0;
    }
   } else {
    if(i45<0.00020361227507237345){
     s0+=3.0;
    } else {
     s0+=52.0;
     s1+=8413.0;
    }
   }
  }
 }
}
if(i1<0.0854833722114563){
 if(i5<0.0006022751331329346){
  if(i11<1.0428826808929443){
   if(i30<1.0856719017028809){
    s0+=36635.0;
   } else {
    if(i30<1.100313425064087){
     s0+=2255.0;
     s1+=562.0;
    } else {
     s0+=21345.0;
     s1+=161.0;
    }
   }
  } else {
   if(i39<1.1036889553070068){
    if(i1<0.06616711616516113){
     s0+=2906.0;
     s1+=648.0;
    } else {
     s0+=358.0;
     s1+=450.0;
    }
   } else {
    if(i8<-4.175334834144451e-05){
     s0+=740.0;
     s1+=223.0;
    } else {
     s0+=4485.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i36<-1.4689767340314575e-05){
   if(i34<0.007196011487394571){
    if(i40<9.689481521490961e-05){
     s1+=626.0;
    } else {
     s0+=16.0;
     s1+=174.0;
    }
   } else {
    if(i31<0.021354932337999344){
     s0+=120.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=138.0;
    }
   }
  } else {
   if(i46<0.04907730966806412){
    if(i60<-0.0018177628517150879){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=214.0;
     s1+=14.0;
    }
   } else {
    if(i67<0.0005632097600027919){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i55<0.9995578527450562){
  if(i43<0.9987093210220337){
   if(i37<1.198707103729248){
    if(i3<0.9969584941864014){
     s0+=569.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i54<0.0013391075190156698){
    s0+=19.0;
   } else {
    s1+=284.0;
   }
  }
 } else {
  if(i32<1.0108743906021118){
   if(i19<1.003002405166626){
    if(i38<-0.0001373887062072754){
     s0+=121.0;
    } else {
     s0+=991.0;
     s1+=2485.0;
    }
   } else {
    if(i65<1.001137614250183){
     s0+=59.0;
     s1+=2320.0;
    } else {
     s0+=52.0;
     s1+=290.0;
    }
   }
  } else {
   if(i36<-2.1999271666572895e-06){
    if(i13<1.0078506469726562){
     s0+=53.0;
     s1+=406.0;
    } else {
     s0+=9.0;
     s1+=8235.0;
    }
   } else {
    if(i26<0.00658936332911253){
     s0+=1.0;
     s1+=48.0;
    } else {
     s0+=52.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i37<1.011893630027771){
 if(i18<1.001643180847168){
  if(i2<0.07805928587913513){
   if(i52<-0.0015511810779571533){
    if(i78<0.2729765772819519){
     s0+=2301.0;
     s1+=695.0;
    } else {
     s0+=1506.0;
     s1+=61.0;
    }
   } else {
    if(i17<1.0475225448608398){
     s0+=54010.0;
     s1+=189.0;
    } else {
     s0+=8764.0;
     s1+=900.0;
    }
   }
  } else {
   if(i43<0.9990366697311401){
    if(i8<-4.4553329644259065e-05){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=239.0;
    }
   } else {
    if(i5<-0.0008154809474945068){
     s0+=84.0;
     s1+=57.0;
    } else {
     s0+=138.0;
     s1+=1547.0;
    }
   }
  }
 } else {
  if(i4<3.081560134887695e-05){
   if(i0<0.09043177962303162){
    if(i53<0.008386741392314434){
     s0+=575.0;
     s1+=23.0;
    } else {
     s0+=93.0;
     s1+=64.0;
    }
   } else {
    s1+=115.0;
   }
  } else {
   if(i52<0.0013085007667541504){
    if(i6<0.05321958661079407){
     s0+=114.0;
     s1+=824.0;
    } else {
     s0+=10.0;
     s1+=1799.0;
    }
   } else {
    if(i6<0.08502784371376038){
     s0+=75.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=147.0;
    }
   }
  }
 }
} else {
 if(i49<0.006052694283425808){
  if(i3<1.0018374919891357){
   if(i30<1.255998969078064){
    if(i21<1.0025906562805176){
     s0+=1273.0;
     s1+=888.0;
    } else {
     s0+=7.0;
     s1+=190.0;
    }
   } else {
    if(i46<0.05747213214635849){
     s0+=969.0;
     s1+=24.0;
    } else {
     s0+=427.0;
     s1+=141.0;
    }
   }
  } else {
   if(i16<0.0023749331012368202){
    if(i76<0.00011015480413334444){
     s0+=53.0;
     s1+=161.0;
    } else {
     s0+=104.0;
     s1+=19.0;
    }
   } else {
    if(i39<1.2797276973724365){
     s0+=52.0;
     s1+=1696.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i0<0.1123170256614685){
   if(i58<0.0029071555472910404){
    if(i16<0.010841715149581432){
     s0+=262.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i1<0.1576216220855713){
    if(i29<1.0452990531921387){
     s0+=6.0;
     s1+=86.0;
    } else {
     s0+=34.0;
     s1+=5.0;
    }
   } else {
    if(i42<1.274404764175415){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=7430.0;
    }
   }
  }
 }
}
if(i3<1.0024750232696533){
 if(i29<1.0135178565979004){
  if(i1<0.08402827382087708){
   if(i17<1.0451585054397583){
    if(i52<-0.0017104148864746094){
     s0+=689.0;
     s1+=66.0;
    } else {
     s0+=53117.0;
     s1+=176.0;
    }
   } else {
    if(i44<0.0011041146935895085){
     s0+=4146.0;
     s1+=1273.0;
    } else {
     s0+=9058.0;
     s1+=555.0;
    }
   }
  } else {
   if(i17<1.049466609954834){
    if(i74<5.490166586241685e-06){
     s0+=87.0;
     s1+=33.0;
    } else {
     s0+=300.0;
    }
   } else {
    if(i2<0.053801923990249634){
     s0+=68.0;
     s1+=3.0;
    } else {
     s0+=255.0;
     s1+=1668.0;
    }
   }
  }
 } else {
  if(i70<0.12199720740318298){
   if(i1<0.09146031737327576){
    if(i39<1.082922339439392){
     s0+=387.0;
     s1+=135.0;
    } else {
     s0+=1517.0;
     s1+=43.0;
    }
   } else {
    if(i71<-0.01924082636833191){
     s0+=803.0;
     s1+=325.0;
    } else {
     s0+=170.0;
     s1+=1057.0;
    }
   }
  } else {
   if(i0<0.19470423460006714){
    if(i62<0.001589357852935791){
     s1+=5.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.9985026717185974){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=574.0;
    }
   }
  }
 }
} else {
 if(i5<0.0009385347366333008){
  if(i0<0.05846726894378662){
   if(i42<1.250713586807251){
    if(i53<0.0025363238528370857){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=101.0;
    }
   } else {
    if(i38<0.0003083348274230957){
     s0+=152.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   }
  } else {
   if(i0<0.11404472589492798){
    if(i34<0.0018436245154589415){
     s1+=276.0;
    } else {
     s0+=98.0;
     s1+=59.0;
    }
   } else {
    if(i2<0.13139989972114563){
     s0+=12.0;
     s1+=104.0;
    } else {
     s0+=4.0;
     s1+=610.0;
    }
   }
  }
 } else {
  if(i40<0.00010131651652045548){
   if(i15<-4.100799560546875e-05){
    if(i13<1.0036869049072266){
     s1+=79.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=8378.0;
   }
  } else {
   if(i43<1.0012407302856445){
    if(i11<1.1252132654190063){
     s0+=81.0;
     s1+=47.0;
    } else {
     s1+=150.0;
    }
   } else {
    if(i2<0.07559552788734436){
     s0+=20.0;
     s1+=156.0;
    } else {
     s1+=1316.0;
    }
   }
  }
 }
}
if(i22<1.0088505744934082){
 if(i20<0.02546735107898712){
  if(i78<0.05052509903907776){
   if(i56<0.0008983690058812499){
    if(i13<1.0065677165985107){
     s0+=55969.0;
     s1+=399.0;
    } else {
     s0+=58.0;
     s1+=72.0;
    }
   } else {
    if(i61<-0.002362668514251709){
     s0+=82.0;
     s1+=161.0;
    } else {
     s0+=637.0;
     s1+=106.0;
    }
   }
  } else {
   if(i5<0.00023311376571655273){
    if(i3<0.9967672824859619){
     s0+=2971.0;
     s1+=116.0;
    } else {
     s0+=3622.0;
     s1+=752.0;
    }
   } else {
    if(i69<-0.0037395916879177094){
     s0+=108.0;
     s1+=62.0;
    } else {
     s0+=63.0;
     s1+=592.0;
    }
   }
  }
 } else {
  if(i0<0.0677960216999054){
   if(i5<-0.00030493736267089844){
    if(i15<-0.00019818544387817383){
     s0+=3943.0;
     s1+=50.0;
    } else {
     s0+=230.0;
     s1+=102.0;
    }
   } else {
    if(i30<1.1039612293243408){
     s0+=44.0;
     s1+=266.0;
    } else {
     s0+=456.0;
     s1+=304.0;
    }
   }
  } else {
   if(i15<-0.0003390312194824219){
    if(i17<1.079064965248108){
     s0+=192.0;
     s1+=4.0;
    } else {
     s0+=101.0;
     s1+=277.0;
    }
   } else {
    if(i39<1.0544123649597168){
     s0+=32.0;
    } else {
     s0+=184.0;
     s1+=2704.0;
    }
   }
  }
 }
} else {
 if(i15<0.00011140108108520508){
  if(i42<1.4013257026672363){
   if(i8<-2.7150877940584905e-05){
    if(i76<0.0001091481390176341){
     s0+=422.0;
     s1+=565.0;
    } else {
     s0+=77.0;
     s1+=652.0;
    }
   } else {
    if(i10<0.000594794750213623){
     s0+=1675.0;
     s1+=215.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i46<0.06477794051170349){
    if(i22<1.0248932838439941){
     s0+=68.0;
     s1+=25.0;
    } else {
     s0+=6.0;
     s1+=87.0;
    }
   } else {
    if(i66<3.8932676034164615e-06){
     s0+=14.0;
     s1+=119.0;
    } else {
     s0+=2.0;
     s1+=500.0;
    }
   }
  }
 } else {
  if(i4<6.222724914550781e-05){
   if(i8<-4.4263710151426494e-05){
    if(i3<0.999252200126648){
     s0+=26.0;
    } else {
     s0+=21.0;
     s1+=1156.0;
    }
   } else {
    if(i49<0.0011098808608949184){
     s1+=78.0;
    } else {
     s0+=170.0;
     s1+=15.0;
    }
   }
  } else {
   if(i36<-1.463754779251758e-05){
    s1+=7641.0;
   } else {
    if(i5<0.0009422898292541504){
     s0+=2.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
}
if(i13<1.0055997371673584){
 if(i6<0.08100724220275879){
  if(i5<0.0006027519702911377){
   if(i56<0.0007635584333911538){
    if(i7<1.0410094261169434){
     s0+=57140.0;
     s1+=513.0;
    } else {
     s0+=4157.0;
     s1+=900.0;
    }
   } else {
    if(i23<0.9703484773635864){
     s0+=3781.0;
     s1+=145.0;
    } else {
     s0+=3662.0;
     s1+=1167.0;
    }
   }
  } else {
   if(i41<0.0003656572662293911){
    s0+=76.0;
   } else {
    if(i35<1.2510931491851807){
     s0+=16.0;
     s1+=276.0;
    } else {
     s0+=109.0;
     s1+=226.0;
    }
   }
  }
 } else {
  if(i47<0.05413508415222168){
   if(i8<-1.3578168363892473e-05){
    if(i47<0.04767438769340515){
     s0+=4.0;
     s1+=1933.0;
    } else {
     s0+=27.0;
     s1+=203.0;
    }
   } else {
    if(i48<0.06117701530456543){
     s0+=18.0;
     s1+=119.0;
    } else {
     s0+=58.0;
     s1+=26.0;
    }
   }
  } else {
   if(i16<0.006684235297143459){
    if(i28<0.0009347309824079275){
     s0+=114.0;
     s1+=186.0;
    } else {
     s0+=917.0;
     s1+=231.0;
    }
   } else {
    if(i0<0.12487214803695679){
     s0+=37.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=858.0;
    }
   }
  }
 }
} else {
 if(i8<-4.506836557993665e-05){
  if(i19<0.9971486330032349){
   if(i0<0.11751693487167358){
    if(i76<8.093210635706782e-05){
     s1+=16.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i0<0.12806445360183716){
     s0+=2.0;
     s1+=7.0;
    } else {
     s1+=265.0;
    }
   }
  } else {
   if(i7<1.0287368297576904){
    if(i26<0.00018485577311366796){
     s0+=17.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=62.0;
    }
   } else {
    if(i54<4.3022813770221546e-05){
     s0+=2.0;
    } else {
     s0+=29.0;
     s1+=9670.0;
    }
   }
  }
 } else {
  if(i44<0.001194545766338706){
   if(i15<7.843971252441406e-05){
    if(i3<1.000819206237793){
     s0+=13.0;
    } else {
     s1+=30.0;
    }
   } else {
    s1+=162.0;
   }
  } else {
   if(i44<0.006486859172582626){
    if(i6<0.17633867263793945){
     s0+=811.0;
     s1+=17.0;
    } else {
     s0+=44.0;
     s1+=34.0;
    }
   } else {
    if(i33<0.09403905272483826){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=64.0;
    }
   }
  }
 }
}
if(i5<0.0005484223365783691){
 if(i6<0.07105270028114319){
  if(i56<0.0007543103420175612){
   if(i22<1.0067417621612549){
    if(i46<0.0309675931930542){
     s0+=55748.0;
     s1+=217.0;
    } else {
     s0+=3041.0;
     s1+=481.0;
    }
   } else {
    if(i0<0.07574614882469177){
     s0+=1885.0;
     s1+=270.0;
    } else {
     s0+=49.0;
     s1+=427.0;
    }
   }
  } else {
   if(i45<0.0024270142894238234){
    if(i55<0.9998453259468079){
     s0+=802.0;
     s1+=769.0;
    } else {
     s0+=1482.0;
     s1+=133.0;
    }
   } else {
    if(i0<0.07829612493515015){
     s0+=5484.0;
     s1+=212.0;
    } else {
     s0+=35.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i10<-0.00038823485374450684){
   if(i18<0.9988762140274048){
    if(i49<0.008486971259117126){
     s0+=531.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=6.0;
    }
   } else {
    if(i34<0.002373655792325735){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i8<-1.3409639905148651e-05){
    if(i48<0.05095192790031433){
     s0+=31.0;
     s1+=1031.0;
    } else {
     s0+=591.0;
     s1+=1530.0;
    }
   } else {
    if(i47<0.04224565625190735){
     s0+=41.0;
     s1+=145.0;
    } else {
     s0+=794.0;
     s1+=141.0;
    }
   }
  }
 }
} else {
 if(i1<0.06269580125808716){
  if(i58<0.001808189321309328){
   if(i3<1.004164695739746){
    if(i55<1.0001411437988281){
     s0+=254.0;
     s1+=15.0;
    } else {
     s0+=71.0;
     s1+=47.0;
    }
   } else {
    if(i12<-0.00013655424118041992){
     s0+=4.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i71<-0.01315508596599102){
    if(i42<1.6708848476409912){
     s0+=19.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<-8.752833673497662e-05){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=420.0;
    }
   }
  }
 } else {
  if(i35<1.0614044666290283){
   s0+=18.0;
  } else {
   if(i15<-5.435943603515625e-05){
    if(i41<0.008517974987626076){
     s0+=117.0;
     s1+=282.0;
    } else {
     s0+=8.0;
     s1+=519.0;
    }
   } else {
    if(i5<0.0008349418640136719){
     s0+=37.0;
     s1+=753.0;
    } else {
     s0+=26.0;
     s1+=9541.0;
    }
   }
  }
 }
}
if(i12<0.0008229613304138184){
 if(i9<1.0081671476364136){
  if(i17<1.052894115447998){
   if(i58<0.001670089433901012){
    if(i61<-0.0014066100120544434){
     s0+=499.0;
     s1+=92.0;
    } else {
     s0+=55202.0;
     s1+=289.0;
    }
   } else {
    if(i30<1.0821808576583862){
     s0+=1108.0;
    } else {
     s0+=629.0;
     s1+=207.0;
    }
   }
  } else {
   if(i68<0.3272041082382202){
    if(i8<-4.395404539536685e-05){
     s0+=1637.0;
     s1+=1538.0;
    } else {
     s0+=10039.0;
     s1+=2129.0;
    }
   } else {
    if(i59<-0.0002458530361764133){
     s0+=8.0;
     s1+=672.0;
    } else {
     s0+=174.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i54<0.0016976783517748117){
   if(i63<0.000257373001659289){
    if(i65<1.0000946521759033){
     s0+=257.0;
     s1+=421.0;
    } else {
     s0+=620.0;
     s1+=61.0;
    }
   } else {
    if(i36<1.4141179462967557e-06){
     s0+=65.0;
     s1+=394.0;
    } else {
     s0+=73.0;
     s1+=7.0;
    }
   }
  } else {
   if(i29<0.8563815951347351){
    if(i5<9.134411811828613e-05){
     s0+=23.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i43<0.9978235960006714){
     s0+=14.0;
    } else {
     s0+=47.0;
     s1+=1322.0;
    }
   }
  }
 }
} else {
 if(i16<0.0022433847188949585){
  if(i42<1.1663256883621216){
   if(i4<6.258487701416016e-06){
    s0+=7.0;
   } else {
    s1+=228.0;
   }
  } else {
   if(i13<1.0167303085327148){
    s0+=415.0;
   } else {
    s1+=90.0;
   }
  }
 } else {
  if(i39<1.0600558519363403){
   s0+=74.0;
  } else {
   if(i73<3.416407707845792e-07){
    if(i4<7.092952728271484e-06){
     s0+=10.0;
     s1+=27.0;
    } else {
     s0+=21.0;
     s1+=9684.0;
    }
   } else {
    if(i18<0.9990979433059692){
     s0+=57.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i21<1.003829002380371){
 if(i17<1.0576403141021729){
  if(i78<0.041955187916755676){
   if(i23<1.0060440301895142){
    if(i58<0.0022389013320207596){
     s0+=51698.0;
     s1+=204.0;
    } else {
     s0+=79.0;
     s1+=40.0;
    }
   } else {
    if(i31<0.007160743698477745){
     s0+=30.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=52.0;
    }
   }
  } else {
   if(i6<0.058246612548828125){
    if(i30<1.2335381507873535){
     s0+=3328.0;
     s1+=317.0;
    } else {
     s0+=2876.0;
    }
   } else {
    if(i47<0.035188525915145874){
     s0+=48.0;
     s1+=110.0;
    } else {
     s0+=447.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i2<0.08135956525802612){
   if(i20<0.013681342825293541){
    if(i9<0.9904108047485352){
     s0+=453.0;
     s1+=167.0;
    } else {
     s0+=5320.0;
     s1+=221.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=367.0;
     s1+=800.0;
    } else {
     s0+=4332.0;
     s1+=581.0;
    }
   }
  } else {
   if(i8<-1.3548056813306175e-05){
    if(i1<0.13241758942604065){
     s0+=385.0;
     s1+=1106.0;
    } else {
     s0+=165.0;
     s1+=2983.0;
    }
   } else {
    if(i71<-0.018613606691360474){
     s0+=659.0;
     s1+=143.0;
    } else {
     s0+=141.0;
     s1+=209.0;
    }
   }
  }
 }
} else {
 if(i0<0.057839035987854004){
  if(i10<0.00040787458419799805){
   if(i70<0.05450577661395073){
    if(i30<1.128101110458374){
     s0+=49.0;
     s1+=20.0;
    } else {
     s0+=536.0;
     s1+=2.0;
    }
   } else {
    if(i57<0.8566272258758545){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i8<-4.524334508460015e-05){
    if(i34<0.010616835206747055){
     s1+=242.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   } else {
    if(i43<1.0010221004486084){
     s0+=32.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i12<0.0014304518699645996){
   if(i1<0.12385854125022888){
    if(i64<0.0032645463943481445){
     s0+=100.0;
     s1+=538.0;
    } else {
     s0+=60.0;
     s1+=13.0;
    }
   } else {
    if(i47<0.061313122510910034){
     s1+=773.0;
    } else {
     s0+=22.0;
     s1+=400.0;
    }
   }
  } else {
   if(i16<0.0005048257298767567){
    if(i13<1.011528730392456){
     s0+=2.0;
    } else {
     s1+=11.0;
    }
   } else {
    s1+=8088.0;
   }
  }
 }
}
if(i21<1.003829002380371){
 if(i37<1.0122649669647217){
  if(i5<0.0005654692649841309){
   if(i2<0.08032220602035522){
    if(i44<0.00034703564597293735){
     s0+=37853.0;
     s1+=33.0;
    } else {
     s0+=28855.0;
     s1+=1866.0;
    }
   } else {
    if(i42<1.0670123100280762){
     s0+=163.0;
     s1+=1.0;
    } else {
     s0+=253.0;
     s1+=1275.0;
    }
   }
  } else {
   if(i1<0.05834639072418213){
    if(i37<0.9913395643234253){
     s0+=54.0;
     s1+=113.0;
    } else {
     s0+=164.0;
     s1+=10.0;
    }
   } else {
    if(i68<0.011444362811744213){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=31.0;
     s1+=708.0;
    }
   }
  }
 } else {
  if(i5<0.0004811286926269531){
   if(i24<1.0468113422393799){
    if(i0<0.08932918310165405){
     s0+=1785.0;
     s1+=164.0;
    } else {
     s0+=863.0;
     s1+=1191.0;
    }
   } else {
    if(i31<0.03642737865447998){
     s0+=60.0;
     s1+=39.0;
    } else {
     s0+=3.0;
     s1+=245.0;
    }
   }
  } else {
   if(i2<0.1407354176044464){
    if(i39<1.1480928659439087){
     s0+=12.0;
     s1+=118.0;
    } else {
     s0+=130.0;
     s1+=12.0;
    }
   } else {
    if(i31<0.022868404164910316){
     s0+=14.0;
     s1+=93.0;
    } else {
     s0+=4.0;
     s1+=1112.0;
    }
   }
  }
 }
} else {
 if(i26<0.00020030958694405854){
  if(i57<1.007469654083252){
   if(i18<1.003422498703003){
    if(i76<3.724090493051335e-05){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=405.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i73<-5.328559836925706e-06){
    s1+=27.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i4<9.179115295410156e-06){
   if(i1<0.08708187937736511){
    if(i53<0.06690016388893127){
     s0+=183.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i31<0.01848127692937851){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i10<0.00048786401748657227){
    if(i1<0.08277022838592529){
     s0+=156.0;
     s1+=114.0;
    } else {
     s0+=37.0;
     s1+=1179.0;
    }
   } else {
    if(i8<-3.365843804203905e-05){
     s0+=31.0;
     s1+=8752.0;
    } else {
     s0+=7.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i40<-1.622212221263908e-05){
 if(i26<0.0002444260462652892){
  if(i15<0.00025141239166259766){
   s0+=100.0;
  } else {
   s1+=6.0;
  }
 } else {
  if(i16<0.00218489789403975){
   if(i15<0.0002167224884033203){
    if(i3<1.0017051696777344){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i65<0.9955766201019287){
     s0+=1.0;
    } else {
     s1+=226.0;
    }
   }
  } else {
   if(i16<0.0025187088176608086){
    if(i8<-3.903607284883037e-05){
     s1+=72.0;
    } else {
     s0+=5.0;
    }
   } else {
    s1+=5327.0;
   }
  }
 }
} else {
 if(i20<0.023279735818505287){
  if(i3<1.0024738311767578){
   if(i24<1.0110058784484863){
    if(i0<0.08467960357666016){
     s0+=62488.0;
     s1+=1097.0;
    } else {
     s0+=479.0;
     s1+=480.0;
    }
   } else {
    if(i8<-2.8666558137047105e-05){
     s0+=295.0;
     s1+=518.0;
    } else {
     s0+=1056.0;
     s1+=81.0;
    }
   }
  } else {
   if(i16<0.0022666952572762966){
    if(i30<1.175731897354126){
     s0+=5.0;
     s1+=24.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i13<0.9998304843902588){
     s0+=64.0;
     s1+=124.0;
    } else {
     s0+=30.0;
     s1+=1068.0;
    }
   }
  }
 } else {
  if(i6<0.06461822986602783){
   if(i35<1.196009874343872){
    if(i17<1.0426958799362183){
     s0+=378.0;
     s1+=14.0;
    } else {
     s0+=297.0;
     s1+=927.0;
    }
   } else {
    if(i5<0.0004975795745849609){
     s0+=4815.0;
     s1+=181.0;
    } else {
     s0+=74.0;
     s1+=315.0;
    }
   }
  } else {
   if(i73<9.246357421943685e-07){
    if(i0<0.09945264458656311){
     s0+=334.0;
     s1+=508.0;
    } else {
     s0+=216.0;
     s1+=6236.0;
    }
   } else {
    if(i45<0.0033870318438857794){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=239.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i5<0.0005705654621124268){
  if(i45<0.0003977093147113919){
   if(i63<0.00034199506626464427){
    if(i24<1.0114567279815674){
     s0+=49555.0;
     s1+=138.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   } else {
    if(i36<-4.659582373278681e-07){
     s0+=23.0;
     s1+=45.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   if(i18<0.9991579055786133){
    if(i18<0.9984056949615479){
     s0+=6582.0;
     s1+=50.0;
    } else {
     s0+=3710.0;
     s1+=371.0;
    }
   } else {
    if(i11<1.0398929119110107){
     s0+=4692.0;
     s1+=454.0;
    } else {
     s0+=4936.0;
     s1+=2748.0;
    }
   }
  }
 } else {
  if(i30<1.0718790292739868){
   s0+=109.0;
  } else {
   if(i1<0.05773770809173584){
    if(i51<-0.004129558801651001){
     s0+=38.0;
     s1+=163.0;
    } else {
     s0+=69.0;
     s1+=25.0;
    }
   } else {
    if(i20<0.03790010139346123){
     s0+=72.0;
     s1+=560.0;
    } else {
     s0+=12.0;
     s1+=1480.0;
    }
   }
  }
 }
} else {
 if(i15<8.362531661987305e-05){
  if(i16<0.0035482679959386587){
   if(i20<0.04097346216440201){
    if(i14<4.351139068603516e-06){
     s0+=255.0;
     s1+=132.0;
    } else {
     s0+=657.0;
     s1+=35.0;
    }
   } else {
    if(i31<0.026591341942548752){
     s0+=11.0;
     s1+=105.0;
    } else {
     s0+=33.0;
     s1+=16.0;
    }
   }
  } else {
   if(i73<1.0856796279767877e-06){
    if(i65<1.003082513809204){
     s0+=24.0;
     s1+=1298.0;
    } else {
     s0+=23.0;
     s1+=83.0;
    }
   } else {
    s0+=83.0;
   }
  }
 } else {
  if(i2<0.05719447135925293){
   if(i59<-0.00038001243956387043){
    if(i54<0.0010404600761830807){
     s0+=152.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i34<0.001110089709982276){
     s1+=295.0;
    } else {
     s0+=63.0;
     s1+=37.0;
    }
   }
  } else {
   if(i3<1.0040545463562012){
    if(i43<1.0001996755599976){
     s0+=9.0;
     s1+=960.0;
    } else {
     s0+=86.0;
     s1+=366.0;
    }
   } else {
    s1+=7595.0;
   }
  }
 }
}
if(i14<1.627206802368164e-05){
 if(i2<0.07772430777549744){
  if(i58<0.0014869996812194586){
   if(i26<0.0002816389314830303){
    if(i29<1.0121569633483887){
     s0+=50755.0;
     s1+=165.0;
    } else {
     s0+=260.0;
     s1+=50.0;
    }
   } else {
    if(i44<0.0010786921484395862){
     s0+=2953.0;
     s1+=711.0;
    } else {
     s0+=6735.0;
     s1+=85.0;
    }
   }
  } else {
   if(i71<-0.009836055338382721){
    if(i14<1.531839370727539e-05){
     s0+=2288.0;
     s1+=37.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   } else {
    if(i55<0.9998657703399658){
     s0+=1448.0;
     s1+=746.0;
    } else {
     s0+=2639.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i8<-1.38188770506531e-05){
   if(i71<-0.01617616042494774){
    if(i6<0.1695939302444458){
     s0+=250.0;
     s1+=280.0;
    } else {
     s0+=53.0;
     s1+=963.0;
    }
   } else {
    if(i43<0.9989641904830933){
     s0+=36.0;
     s1+=12.0;
    } else {
     s0+=101.0;
     s1+=2551.0;
    }
   }
  } else {
   if(i63<0.0004585827700793743){
    if(i0<0.2527269124984741){
     s0+=793.0;
     s1+=83.0;
    } else {
     s0+=86.0;
     s1+=53.0;
    }
   } else {
    if(i8<1.1133611224067863e-05){
     s0+=45.0;
     s1+=184.0;
    } else {
     s0+=148.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i0<0.07393670082092285){
  if(i53<0.009612472727894783){
   if(i52<-0.0008232593536376953){
    if(i34<0.0016706546302884817){
     s0+=26.0;
     s1+=155.0;
    } else {
     s0+=248.0;
     s1+=76.0;
    }
   } else {
    if(i21<1.003551721572876){
     s0+=1278.0;
     s1+=38.0;
    } else {
     s0+=41.0;
     s1+=104.0;
    }
   }
  } else {
   if(i58<0.0012139144819229841){
    if(i35<1.1480928659439087){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=54.0;
     s1+=2.0;
    }
   } else {
    if(i6<0.009041160345077515){
     s0+=75.0;
     s1+=111.0;
    } else {
     s0+=32.0;
     s1+=405.0;
    }
   }
  }
 } else {
  if(i3<1.0021761655807495){
   if(i1<0.1423296332359314){
    if(i48<0.04911956191062927){
     s0+=11.0;
     s1+=135.0;
    } else {
     s0+=329.0;
     s1+=60.0;
    }
   } else {
    if(i30<1.3988738059997559){
     s0+=37.0;
     s1+=56.0;
    } else {
     s0+=2.0;
     s1+=382.0;
    }
   }
  } else {
   if(i0<0.1306760609149933){
    if(i47<0.05501604080200195){
     s0+=13.0;
     s1+=1294.0;
    } else {
     s0+=61.0;
     s1+=65.0;
    }
   } else {
    if(i19<0.9963879585266113){
     s0+=8.0;
     s1+=87.0;
    } else {
     s0+=6.0;
     s1+=8302.0;
    }
   }
  }
 }
}
if(i24<1.0107395648956299){
 if(i14<1.9252300262451172e-05){
  if(i0<0.0783253014087677){
   if(i17<1.0486011505126953){
    if(i46<0.026191672310233116){
     s0+=50048.0;
     s1+=159.0;
    } else {
     s0+=5204.0;
     s1+=140.0;
    }
   } else {
    if(i11<1.034787654876709){
     s0+=4704.0;
     s1+=154.0;
    } else {
     s0+=6678.0;
     s1+=1254.0;
    }
   }
  } else {
   if(i14<-1.3828277587890625e-05){
    if(i14<-2.0503997802734375e-05){
     s0+=340.0;
     s1+=1.0;
    } else {
     s0+=83.0;
     s1+=19.0;
    }
   } else {
    if(i62<0.03128165006637573){
     s0+=81.0;
     s1+=1401.0;
    } else {
     s0+=489.0;
     s1+=405.0;
    }
   }
  }
 } else {
  if(i58<0.0015196892200037837){
   if(i15<-0.0001354217529296875){
    if(i16<0.01524314098060131){
     s0+=603.0;
     s1+=63.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i16<0.003133269026875496){
     s0+=332.0;
     s1+=34.0;
    } else {
     s0+=29.0;
     s1+=446.0;
    }
   }
  } else {
   if(i53<0.010157227516174316){
    if(i4<2.8789043426513672e-05){
     s0+=197.0;
     s1+=49.0;
    } else {
     s0+=83.0;
     s1+=844.0;
    }
   } else {
    if(i23<0.886608362197876){
     s0+=13.0;
    } else {
     s0+=46.0;
     s1+=1425.0;
    }
   }
  }
 }
} else {
 if(i1<0.10505563020706177){
  if(i39<1.1489462852478027){
   if(i13<1.002911925315857){
    if(i16<0.003953929990530014){
     s0+=403.0;
     s1+=33.0;
    } else {
     s0+=6.0;
     s1+=93.0;
    }
   } else {
    if(i67<4.2999199649784714e-05){
     s0+=30.0;
    } else {
     s0+=86.0;
     s1+=734.0;
    }
   }
  } else {
   if(i17<1.273026943206787){
    if(i13<1.014267921447754){
     s0+=1046.0;
     s1+=15.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i54<0.0013702156720682979){
     s0+=21.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i8<-2.1036785256001167e-05){
   if(i23<1.0093657970428467){
    if(i20<0.030658667907118797){
     s0+=100.0;
     s1+=143.0;
    } else {
     s0+=34.0;
     s1+=787.0;
    }
   } else {
    if(i9<1.022083044052124){
     s0+=84.0;
     s1+=1716.0;
    } else {
     s1+=7031.0;
    }
   }
  } else {
   if(i16<0.00548551045358181){
    if(i47<0.05065220594406128){
     s0+=3.0;
     s1+=48.0;
    } else {
     s0+=310.0;
     s1+=50.0;
    }
   } else {
    s1+=52.0;
   }
  }
 }
}
if(i5<0.0005480647087097168){
 if(i2<0.07756328582763672){
  if(i56<0.0007363821496255696){
   if(i0<0.07233679294586182){
    if(i11<1.0451740026474){
     s0+=55394.0;
     s1+=207.0;
    } else {
     s0+=4665.0;
     s1+=495.0;
    }
   } else {
    if(i48<0.043101489543914795){
     s0+=70.0;
     s1+=293.0;
    } else {
     s0+=735.0;
     s1+=24.0;
    }
   }
  } else {
   if(i49<0.000865812529809773){
    if(i17<1.0405058860778809){
     s0+=912.0;
     s1+=69.0;
    } else {
     s0+=668.0;
     s1+=664.0;
    }
   } else {
    if(i50<-0.024580001831054688){
     s0+=1008.0;
     s1+=255.0;
    } else {
     s0+=5305.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i47<0.050467491149902344){
   if(i35<1.069220781326294){
    if(i0<0.07960698008537292){
     s1+=2.0;
    } else {
     s0+=79.0;
    }
   } else {
    if(i1<0.09311693906784058){
     s0+=180.0;
     s1+=323.0;
    } else {
     s0+=48.0;
     s1+=1875.0;
    }
   }
  } else {
   if(i59<-0.00012110352690797299){
    if(i31<0.03988770395517349){
     s0+=774.0;
     s1+=543.0;
    } else {
     s0+=9.0;
     s1+=401.0;
    }
   } else {
    if(i31<0.04958346486091614){
     s0+=675.0;
     s1+=119.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i35<1.0591429471969604){
  s0+=175.0;
 } else {
  if(i59<-0.0005287976819090545){
   if(i54<0.00172801548615098){
    if(i15<6.258487701416016e-06){
     s0+=10.0;
     s1+=11.0;
    } else {
     s1+=1137.0;
    }
   } else {
    s1+=6506.0;
   }
  } else {
   if(i30<1.5682398080825806){
    if(i5<0.000938117504119873){
     s0+=277.0;
     s1+=844.0;
    } else {
     s0+=8.0;
     s1+=2925.0;
    }
   } else {
    if(i4<0.00012671947479248047){
     s0+=162.0;
     s1+=58.0;
    } else {
     s0+=5.0;
     s1+=161.0;
    }
   }
  }
 }
}
if(i11<1.052894115447998){
 if(i11<1.0410008430480957){
  if(i5<0.0006026923656463623){
   if(i17<1.0417430400848389){
    if(i60<-0.0022437572479248047){
     s0+=1418.0;
     s1+=85.0;
    } else {
     s0+=49240.0;
     s1+=44.0;
    }
   } else {
    if(i42<1.0991880893707275){
     s0+=2603.0;
     s1+=492.0;
    } else {
     s0+=6624.0;
     s1+=127.0;
    }
   }
  } else {
   if(i17<1.0407118797302246){
    s0+=76.0;
   } else {
    if(i76<0.00012898807472083718){
     s0+=7.0;
     s1+=135.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i46<0.03152180090546608){
   if(i13<1.0033748149871826){
    if(i37<0.9717813730239868){
     s0+=27.0;
     s1+=62.0;
    } else {
     s0+=3460.0;
     s1+=252.0;
    }
   } else {
    if(i49<0.0011178519343957305){
     s0+=13.0;
     s1+=219.0;
    } else {
     s0+=127.0;
     s1+=64.0;
    }
   }
  } else {
   if(i4<-2.1785497665405273e-05){
    if(i4<-4.4286251068115234e-05){
     s0+=242.0;
     s1+=18.0;
    } else {
     s0+=185.0;
     s1+=105.0;
    }
   } else {
    if(i40<8.5582141764462e-06){
     s0+=112.0;
     s1+=38.0;
    } else {
     s0+=158.0;
     s1+=501.0;
    }
   }
  }
 }
} else {
 if(i31<0.025954153388738632){
  if(i2<0.06937068700790405){
   if(i12<0.0014153122901916504){
    if(i16<0.004398769699037075){
     s0+=4133.0;
     s1+=472.0;
    } else {
     s0+=676.0;
     s1+=433.0;
    }
   } else {
    if(i61<0.004182398319244385){
     s0+=1.0;
     s1+=334.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i47<0.04342895746231079){
    if(i1<0.0845288336277008){
     s0+=161.0;
     s1+=212.0;
    } else {
     s0+=46.0;
     s1+=2548.0;
    }
   } else {
    if(i15<0.00010859966278076172){
     s0+=1327.0;
     s1+=510.0;
    } else {
     s0+=38.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i55<0.9995393753051758){
   if(i43<0.9986749291419983){
    if(i68<0.5896415710449219){
     s0+=169.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=170.0;
   }
  } else {
   if(i16<0.0033152166288346052){
    if(i8<-3.900029696524143e-05){
     s1+=78.0;
    } else {
     s0+=194.0;
     s1+=10.0;
    }
   } else {
    if(i0<0.08047422766685486){
     s0+=246.0;
     s1+=299.0;
    } else {
     s0+=40.0;
     s1+=8994.0;
    }
   }
  }
 }
}
if(i6<0.07196682691574097){
 if(i0<0.07853081822395325){
  if(i19<1.0029031038284302){
   if(i26<0.00030670780688524246){
    if(i22<1.0085644721984863){
     s0+=53141.0;
     s1+=192.0;
    } else {
     s0+=139.0;
     s1+=109.0;
    }
   } else {
    if(i5<-0.00031006336212158203){
     s0+=9853.0;
     s1+=450.0;
    } else {
     s0+=4359.0;
     s1+=1162.0;
    }
   }
  } else {
   if(i30<1.2385294437408447){
    if(i30<1.077897071838379){
     s0+=48.0;
    } else {
     s0+=13.0;
     s1+=503.0;
    }
   } else {
    if(i3<1.004202127456665){
     s0+=1096.0;
     s1+=140.0;
    } else {
     s0+=21.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i17<1.0494358539581299){
   if(i10<-0.00016394257545471191){
    if(i8<-9.053226676769555e-06){
     s0+=18.0;
     s1+=6.0;
    } else {
     s0+=96.0;
     s1+=1.0;
    }
   } else {
    if(i62<0.03249010443687439){
     s0+=9.0;
     s1+=39.0;
    } else {
     s0+=28.0;
     s1+=2.0;
    }
   }
  } else {
   if(i50<0.047412365674972534){
    if(i19<0.9946763515472412){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=28.0;
     s1+=1908.0;
    }
   } else {
    if(i16<0.008433710783720016){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i18<0.9989026784896851){
  if(i14<-1.728534698486328e-05){
   if(i15<-0.00046762824058532715){
    if(i12<-0.003336310386657715){
     s0+=22.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    s0+=409.0;
   }
  } else {
   if(i47<0.038315653800964355){
    s1+=28.0;
   } else {
    if(i8<-1.7923266568686813e-05){
     s0+=21.0;
     s1+=40.0;
    } else {
     s0+=142.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i0<0.11874750256538391){
   if(i33<0.06449151039123535){
    if(i0<0.08355346322059631){
     s0+=94.0;
     s1+=126.0;
    } else {
     s0+=19.0;
     s1+=617.0;
    }
   } else {
    if(i64<0.004138082265853882){
     s0+=389.0;
     s1+=465.0;
    } else {
     s0+=523.0;
     s1+=46.0;
    }
   }
  } else {
   if(i34<0.0005819599027745426){
    if(i76<9.960212628357112e-05){
     s0+=119.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   } else {
    if(i4<5.060434341430664e-05){
     s0+=254.0;
     s1+=2450.0;
    } else {
     s0+=25.0;
     s1+=8796.0;
    }
   }
  }
 }
}
if(i21<1.0036805868148804){
 if(i2<0.07717868685722351){
  if(i68<0.018759185448288918){
   if(i77<-0.0012521743774414062){
    if(i55<0.9999876618385315){
     s0+=26.0;
     s1+=117.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i22<1.007699966430664){
     s0+=50681.0;
     s1+=176.0;
    } else {
     s0+=374.0;
     s1+=146.0;
    }
   }
  } else {
   if(i5<-0.0002931058406829834){
    if(i35<1.1823735237121582){
     s0+=3829.0;
     s1+=429.0;
    } else {
     s0+=8726.0;
     s1+=76.0;
    }
   } else {
    if(i39<1.103899359703064){
     s0+=1488.0;
     s1+=862.0;
    } else {
     s0+=3205.0;
     s1+=385.0;
    }
   }
  }
 } else {
  if(i2<0.11054724454879761){
   if(i50<0.04522702097892761){
    if(i20<0.011434253305196762){
     s0+=239.0;
     s1+=120.0;
    } else {
     s0+=197.0;
     s1+=928.0;
    }
   } else {
    if(i41<0.0019254388753324747){
     s0+=188.0;
     s1+=70.0;
    } else {
     s0+=509.0;
     s1+=19.0;
    }
   }
  } else {
   if(i71<-0.027704397216439247){
    if(i16<0.0057198964059352875){
     s0+=577.0;
     s1+=145.0;
    } else {
     s0+=23.0;
     s1+=989.0;
    }
   } else {
    if(i14<-1.8298625946044922e-05){
     s0+=73.0;
    } else {
     s0+=69.0;
     s1+=2384.0;
    }
   }
  }
 }
} else {
 if(i8<-4.330831507104449e-05){
  if(i10<-0.00015500187873840332){
   if(i3<0.9998125433921814){
    s0+=117.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i21<1.006181240081787){
    if(i2<0.035816848278045654){
     s0+=23.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=1014.0;
    }
   } else {
    if(i10<0.00037920475006103516){
     s0+=17.0;
     s1+=709.0;
    } else {
     s0+=2.0;
     s1+=8356.0;
    }
   }
  }
 } else {
  if(i0<0.07246524095535278){
   if(i18<1.0020335912704468){
    if(i61<-0.007216006517410278){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=624.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i30<1.2385294437408447){
    if(i78<0.02058269828557968){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i44<0.0049992334097623825){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=40.0;
    }
   }
  }
 }
}
if(i7<1.0452215671539307){
 if(i2<0.07909324765205383){
  if(i4<4.556775093078613e-05){
   if(i60<-0.002239435911178589){
    if(i39<1.154393196105957){
     s0+=1649.0;
     s1+=648.0;
    } else {
     s0+=3397.0;
     s1+=77.0;
    }
   } else {
    if(i3<1.0025041103363037){
     s0+=59904.0;
     s1+=632.0;
    } else {
     s0+=21.0;
     s1+=43.0;
    }
   }
  } else {
   if(i10<0.0005372166633605957){
    if(i60<-0.001789689064025879){
     s1+=7.0;
    } else {
     s0+=183.0;
     s1+=7.0;
    }
   } else {
    if(i16<0.002047567395493388){
     s0+=15.0;
    } else {
     s0+=11.0;
     s1+=365.0;
    }
   }
  }
 } else {
  if(i55<0.9993661642074585){
   s0+=94.0;
  } else {
   if(i33<0.05788317322731018){
    if(i8<1.1318843462504447e-05){
     s0+=8.0;
     s1+=648.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i17<1.049466609954834){
     s0+=104.0;
     s1+=11.0;
    } else {
     s0+=41.0;
     s1+=307.0;
    }
   }
  }
 }
} else {
 if(i44<0.006189526990056038){
  if(i16<0.004315461963415146){
   if(i5<0.0008080005645751953){
    if(i21<1.0012011528015137){
     s0+=4132.0;
     s1+=685.0;
    } else {
     s0+=504.0;
     s1+=521.0;
    }
   } else {
    if(i45<0.0014650931116193533){
     s0+=13.0;
     s1+=551.0;
    } else {
     s0+=49.0;
     s1+=10.0;
    }
   }
  } else {
   if(i30<1.3033524751663208){
    if(i48<0.241126149892807){
     s0+=22.0;
     s1+=2106.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i55<0.9996320009231567){
     s0+=290.0;
    } else {
     s0+=358.0;
     s1+=933.0;
    }
   }
  }
 } else {
  if(i3<0.9983258247375488){
   if(i1<0.11254781484603882){
    if(i58<0.007430192083120346){
     s0+=227.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=66.0;
    }
   } else {
    if(i17<1.0790610313415527){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=306.0;
    }
   }
  } else {
   if(i15<-0.0005398094654083252){
    if(i35<1.3792656660079956){
     s0+=59.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i35<1.2668852806091309){
     s0+=78.0;
     s1+=472.0;
    } else {
     s0+=72.0;
     s1+=8542.0;
    }
   }
  }
 }
}
if(i28<0.000331309245666489){
 if(i18<1.0019950866699219){
  if(i24<1.0107691287994385){
   if(i19<1.0034291744232178){
    if(i0<0.08213692903518677){
     s0+=57597.0;
     s1+=573.0;
    } else {
     s0+=140.0;
     s1+=185.0;
    }
   } else {
    if(i28<0.0001543876132927835){
     s0+=50.0;
    } else {
     s0+=27.0;
     s1+=90.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i36<-7.024134447419783e-06){
     s0+=2.0;
     s1+=230.0;
    } else {
     s0+=98.0;
     s1+=107.0;
    }
   } else {
    if(i2<0.17122524976730347){
     s0+=150.0;
    } else {
     s1+=42.0;
    }
   }
  }
 } else {
  if(i4<1.9311904907226562e-05){
   s0+=61.0;
  } else {
   if(i16<0.0006811275379732251){
    s0+=1.0;
   } else {
    if(i13<0.9980766773223877){
     s0+=3.0;
     s1+=28.0;
    } else {
     s0+=1.0;
     s1+=563.0;
    }
   }
  }
 }
} else {
 if(i22<1.0088200569152832){
  if(i0<0.07501855492591858){
   if(i50<-0.00111466646194458){
    if(i3<1.0007349252700806){
     s0+=3027.0;
     s1+=744.0;
    } else {
     s0+=52.0;
     s1+=559.0;
    }
   } else {
    if(i21<0.9939273595809937){
     s0+=4756.0;
     s1+=20.0;
    } else {
     s0+=2261.0;
     s1+=314.0;
    }
   }
  } else {
   if(i43<0.9989761114120483){
    if(i9<0.9355036616325378){
     s1+=1.0;
    } else {
     s0+=339.0;
     s1+=1.0;
    }
   } else {
    if(i52<0.0033695101737976074){
     s0+=201.0;
     s1+=2792.0;
    } else {
     s0+=525.0;
     s1+=693.0;
    }
   }
  }
 } else {
  if(i16<0.0029173088259994984){
   if(i60<0.0033809244632720947){
    if(i15<8.592009544372559e-05){
     s0+=60.0;
     s1+=22.0;
    } else {
     s0+=19.0;
     s1+=424.0;
    }
   } else {
    if(i4<6.139278411865234e-05){
     s0+=1282.0;
     s1+=113.0;
    } else {
     s0+=1.0;
     s1+=76.0;
    }
   }
  } else {
   if(i38<-0.00023356080055236816){
    if(i73<-4.966159394825809e-07){
     s1+=43.0;
    } else {
     s0+=207.0;
    }
   } else {
    if(i1<0.08448484539985657){
     s0+=154.0;
     s1+=237.0;
    } else {
     s0+=127.0;
     s1+=9254.0;
    }
   }
  }
 }
}
if(i5<0.0005484223365783691){
 if(i11<1.0452277660369873){
  if(i56<0.0006765672005712986){
   if(i17<1.048384666442871){
    if(i33<0.08703064918518066){
     s0+=51745.0;
     s1+=83.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i26<0.00030580704333260655){
     s0+=2927.0;
     s1+=53.0;
    } else {
     s0+=908.0;
     s1+=214.0;
    }
   }
  } else {
   if(i41<0.0016990969888865948){
    if(i8<5.120169589645229e-06){
     s0+=651.0;
     s1+=531.0;
    } else {
     s0+=1122.0;
     s1+=75.0;
    }
   } else {
    if(i1<0.08788222074508667){
     s0+=4647.0;
     s1+=33.0;
    } else {
     s0+=44.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i6<0.06298303604125977){
   if(i2<0.06939110159873962){
    if(i42<1.1037919521331787){
     s0+=1543.0;
     s1+=665.0;
    } else {
     s0+=4877.0;
     s1+=295.0;
    }
   } else {
    if(i4<-5.4955482482910156e-05){
     s0+=38.0;
    } else {
     s0+=24.0;
     s1+=473.0;
    }
   }
  } else {
   if(i54<0.0016317135887220502){
    if(i55<0.999577522277832){
     s0+=342.0;
     s1+=7.0;
    } else {
     s0+=1205.0;
     s1+=1339.0;
    }
   } else {
    if(i34<0.0004597492516040802){
     s0+=69.0;
    } else {
     s0+=392.0;
     s1+=1616.0;
    }
   }
  }
 }
} else {
 if(i35<1.0624027252197266){
  s0+=156.0;
 } else {
  if(i15<0.00021499395370483398){
   if(i36<-1.3884634427085984e-05){
    if(i45<0.011339263990521431){
     s0+=272.0;
     s1+=1695.0;
    } else {
     s0+=8.0;
     s1+=1299.0;
    }
   } else {
    if(i40<-1.0656176527845673e-06){
     s0+=164.0;
     s1+=20.0;
    } else {
     s0+=6.0;
     s1+=123.0;
    }
   }
  } else {
   s1+=8540.0;
  }
 }
}
if(i9<1.0081671476364136){
 if(i5<0.0006014406681060791){
  if(i2<0.0805407464504242){
   if(i28<0.0003147812676616013){
    if(i0<0.08438137173652649){
     s0+=57198.0;
     s1+=486.0;
    } else {
     s0+=6.0;
     s1+=38.0;
    }
   } else {
    if(i45<0.001825427752919495){
     s0+=3919.0;
     s1+=1069.0;
    } else {
     s0+=7367.0;
     s1+=332.0;
    }
   }
  } else {
   if(i48<0.05964714288711548){
    if(i55<0.9993613958358765){
     s0+=88.0;
    } else {
     s0+=60.0;
     s1+=1106.0;
    }
   } else {
    if(i34<0.005009405314922333){
     s0+=960.0;
     s1+=339.0;
    } else {
     s0+=110.0;
     s1+=388.0;
    }
   }
  }
 } else {
  if(i65<0.9975838661193848){
   if(i2<0.1790250837802887){
    s0+=108.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i26<0.00017924141138792038){
    s0+=25.0;
   } else {
    if(i0<0.06050592660903931){
     s0+=72.0;
     s1+=246.0;
    } else {
     s0+=60.0;
     s1+=2002.0;
    }
   }
  }
 }
} else {
 if(i0<0.07135260105133057){
  if(i41<0.0016343652969226241){
   if(i5<0.0002544522285461426){
    if(i53<0.0076101599261164665){
     s0+=43.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   } else {
    if(i34<0.0002883008564822376){
     s0+=1.0;
    } else {
     s1+=343.0;
    }
   }
  } else {
   if(i36<-2.745668825809844e-05){
    s1+=64.0;
   } else {
    if(i20<0.046820610761642456){
     s0+=750.0;
     s1+=30.0;
    } else {
     s0+=9.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i15<5.632638931274414e-05){
   if(i0<0.11779400706291199){
    if(i47<0.026738286018371582){
     s0+=12.0;
     s1+=124.0;
    } else {
     s0+=267.0;
     s1+=53.0;
    }
   } else {
    if(i71<-0.0455765426158905){
     s0+=126.0;
     s1+=224.0;
    } else {
     s0+=50.0;
     s1+=879.0;
    }
   }
  } else {
   if(i59<-0.00014359099441207945){
    if(i5<0.0008716583251953125){
     s0+=46.0;
     s1+=1286.0;
    } else {
     s1+=7411.0;
    }
   } else {
    if(i5<0.000911414623260498){
     s0+=30.0;
     s1+=19.0;
    } else {
     s1+=440.0;
    }
   }
  }
 }
}
if(i14<1.996755599975586e-05){
 if(i37<1.013148307800293){
  if(i6<0.07531154155731201){
   if(i17<1.0486011505126953){
    if(i25<1.0098820924758911){
     s0+=55534.0;
     s1+=343.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.07044646143913269){
     s0+=10959.0;
     s1+=1210.0;
    } else {
     s0+=452.0;
     s1+=931.0;
    }
   }
  } else {
   if(i10<-0.0003844797611236572){
    if(i34<0.006224803626537323){
     s0+=217.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i2<0.09191417694091797){
     s0+=157.0;
     s1+=172.0;
    } else {
     s0+=56.0;
     s1+=960.0;
    }
   }
  }
 } else {
  if(i1<0.1008337140083313){
   if(i63<-9.43655613809824e-05){
    if(i41<0.0011541927233338356){
     s0+=13.0;
     s1+=103.0;
    } else {
     s0+=86.0;
     s1+=6.0;
    }
   } else {
    if(i8<-3.064220800297335e-05){
     s0+=246.0;
     s1+=158.0;
    } else {
     s0+=1332.0;
     s1+=45.0;
    }
   }
  } else {
   if(i73<9.594277798896655e-07){
    if(i8<-2.1057421690784395e-05){
     s0+=148.0;
     s1+=2491.0;
    } else {
     s0+=370.0;
     s1+=153.0;
    }
   } else {
    s0+=166.0;
   }
  }
 }
} else {
 if(i0<0.07393670082092285){
  if(i41<0.0004262999864295125){
   s0+=258.0;
  } else {
   if(i52<0.0008394122123718262){
    if(i66<1.845137740019709e-05){
     s0+=109.0;
     s1+=621.0;
    } else {
     s0+=276.0;
     s1+=125.0;
    }
   } else {
    if(i21<1.003608226776123){
     s0+=494.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i65<1.001664638519287){
   if(i5<0.00044858455657958984){
    if(i47<0.04152882099151611){
     s0+=5.0;
     s1+=60.0;
    } else {
     s0+=78.0;
     s1+=52.0;
    }
   } else {
    if(i40<0.00011557356629054993){
     s0+=12.0;
     s1+=7518.0;
    } else {
     s0+=60.0;
     s1+=1344.0;
    }
   }
  } else {
   if(i31<0.03407922387123108){
    if(i9<1.0131970643997192){
     s0+=160.0;
     s1+=65.0;
    } else {
     s0+=2.0;
     s1+=124.0;
    }
   } else {
    s1+=521.0;
   }
  }
 }
}
if(i11<1.0565208196640015){
 if(i1<0.08279773592948914){
  if(i26<0.00026726420037448406){
   if(i25<1.0084128379821777){
    if(i3<1.0042905807495117){
     s0+=51410.0;
     s1+=179.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i17<1.0631760358810425){
     s0+=50.0;
     s1+=108.0;
    } else {
     s0+=97.0;
     s1+=11.0;
    }
   }
  } else {
   if(i49<0.0012949297670274973){
    if(i8<-1.5949934095260687e-05){
     s0+=187.0;
     s1+=515.0;
    } else {
     s0+=4589.0;
     s1+=531.0;
    }
   } else {
    if(i74<-2.467670356054441e-06){
     s0+=2.0;
     s1+=41.0;
    } else {
     s0+=7953.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i3<0.9958051443099976){
   if(i14<-2.2798776626586914e-05){
    s0+=281.0;
   } else {
    if(i0<0.10157281160354614){
     s0+=89.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   }
  } else {
   if(i49<0.000368647335562855){
    if(i49<0.0003224987303838134){
     s0+=62.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i64<0.0038336217403411865){
     s0+=55.0;
     s1+=858.0;
    } else {
     s0+=76.0;
     s1+=126.0;
    }
   }
  }
 }
} else {
 if(i21<1.0017651319503784){
  if(i0<0.10014072060585022){
   if(i2<0.0629555881023407){
    if(i16<0.0060818917118012905){
     s0+=3551.0;
     s1+=347.0;
    } else {
     s0+=370.0;
     s1+=228.0;
    }
   } else {
    if(i64<0.0009885430335998535){
     s0+=245.0;
     s1+=374.0;
    } else {
     s0+=760.0;
     s1+=124.0;
    }
   }
  } else {
   if(i14<-1.7315149307250977e-05){
    if(i49<0.006468219682574272){
     s0+=218.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i49<0.0011684107594192028){
     s0+=250.0;
     s1+=189.0;
    } else {
     s0+=356.0;
     s1+=2928.0;
    }
   }
  }
 } else {
  if(i13<1.0104371309280396){
   if(i31<0.017355602234601974){
    if(i8<-4.330927549744956e-05){
     s0+=103.0;
     s1+=492.0;
    } else {
     s0+=407.0;
     s1+=161.0;
    }
   } else {
    if(i1<0.002694368362426758){
     s0+=11.0;
     s1+=22.0;
    } else {
     s0+=23.0;
     s1+=1902.0;
    }
   }
  } else {
   if(i5<0.00023642182350158691){
    if(i1<0.08937466144561768){
     s0+=13.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i0<0.057065367698669434){
     s0+=19.0;
     s1+=64.0;
    } else {
     s0+=3.0;
     s1+=7682.0;
    }
   }
  }
 }
}
if(i1<0.08509618043899536){
 if(i5<0.0005853474140167236){
  if(i11<1.0410068035125732){
   if(i52<-0.0014930665493011475){
    if(i41<0.002025520894676447){
     s0+=988.0;
     s1+=197.0;
    } else {
     s0+=1066.0;
     s1+=13.0;
    }
   } else {
    if(i17<1.042891263961792){
     s0+=50404.0;
     s1+=102.0;
    } else {
     s0+=7044.0;
     s1+=285.0;
    }
   }
  } else {
   if(i5<0.00021642446517944336){
    if(i30<1.1013743877410889){
     s0+=2445.0;
     s1+=844.0;
    } else {
     s0+=6179.0;
     s1+=353.0;
    }
   } else {
    if(i40<3.899797775375191e-06){
     s0+=468.0;
     s1+=40.0;
    } else {
     s0+=313.0;
     s1+=401.0;
    }
   }
  }
 } else {
  if(i16<0.0020498724188655615){
   if(i8<-5.5352156778099015e-05){
    s1+=22.0;
   } else {
    s0+=192.0;
   }
  } else {
   if(i50<0.024316072463989258){
    if(i61<0.003783702850341797){
     s0+=71.0;
     s1+=935.0;
    } else {
     s0+=31.0;
     s1+=8.0;
    }
   } else {
    if(i70<0.027493968605995178){
     s1+=5.0;
    } else {
     s0+=44.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i30<1.0840110778808594){
  s0+=322.0;
 } else {
  if(i16<0.00470145046710968){
   if(i52<0.004648655652999878){
    if(i55<0.9995709657669067){
     s0+=124.0;
     s1+=6.0;
    } else {
     s0+=297.0;
     s1+=2008.0;
    }
   } else {
    if(i66<-6.532222414534772e-06){
     s1+=60.0;
    } else {
     s0+=869.0;
     s1+=277.0;
    }
   }
  } else {
   if(i73<1.2158405979789677e-06){
    if(i25<1.0085737705230713){
     s0+=185.0;
     s1+=2763.0;
    } else {
     s0+=21.0;
     s1+=8802.0;
    }
   } else {
    if(i60<-0.007748425006866455){
     s1+=1.0;
    } else {
     s0+=65.0;
    }
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i46<0.03253444284200668){
  if(i44<0.00033107370836660266){
   if(i22<1.0079193115234375){
    if(i9<1.0064079761505127){
     s0+=36720.0;
     s1+=24.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i56<-0.0001434937003068626){
     s0+=44.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   }
  } else {
   if(i9<1.0080897808074951){
    if(i28<0.0003110477700829506){
     s0+=19950.0;
     s1+=442.0;
    } else {
     s0+=3216.0;
     s1+=612.0;
    }
   } else {
    if(i8<-3.1574156309943646e-05){
     s0+=69.0;
     s1+=689.0;
    } else {
     s0+=303.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i11<1.0401077270507812){
   if(i0<0.07103279232978821){
    if(i41<0.0016141992527991533){
     s0+=1273.0;
     s1+=176.0;
    } else {
     s0+=4718.0;
     s1+=6.0;
    }
   } else {
    if(i13<0.9900805354118347){
     s0+=134.0;
     s1+=40.0;
    } else {
     s0+=11.0;
     s1+=127.0;
    }
   }
  } else {
   if(i54<0.0013624827843159437){
    if(i14<-1.4007091522216797e-05){
     s0+=606.0;
     s1+=10.0;
    } else {
     s0+=2109.0;
     s1+=1249.0;
    }
   } else {
    if(i21<0.9943428039550781){
     s0+=898.0;
     s1+=491.0;
    } else {
     s0+=415.0;
     s1+=1605.0;
    }
   }
  }
 }
} else {
 if(i35<1.0624027252197266){
  s0+=291.0;
 } else {
  if(i8<-4.328748764237389e-05){
   if(i12<4.64320182800293e-05){
    if(i31<0.02304205857217312){
     s0+=243.0;
     s1+=262.0;
    } else {
     s0+=5.0;
     s1+=1060.0;
    }
   } else {
    if(i54<0.0001372746773995459){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=9881.0;
    }
   }
  } else {
   if(i16<0.0026127346791327){
    if(i30<1.2160128355026245){
     s1+=12.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i36<-2.1087140339659527e-05){
     s0+=7.0;
     s1+=46.0;
    } else {
     s1+=207.0;
    }
   }
  }
 }
}
if(i10<0.0004246830940246582){
 if(i7<1.0452277660369873){
  if(i26<0.0003107065276708454){
   if(i22<1.0096995830535889){
    if(i60<-0.004793614149093628){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=52749.0;
     s1+=188.0;
    }
   } else {
    if(i42<1.1039612293243408){
     s1+=42.0;
    } else {
     s0+=55.0;
     s1+=9.0;
    }
   }
  } else {
   if(i12<-0.0013842582702636719){
    if(i44<0.0019555294420570135){
     s0+=811.0;
     s1+=127.0;
    } else {
     s0+=6588.0;
     s1+=61.0;
    }
   } else {
    if(i44<0.0004646281013265252){
     s0+=2087.0;
     s1+=81.0;
    } else {
     s0+=1825.0;
     s1+=1230.0;
    }
   }
  }
 } else {
  if(i2<0.09208527207374573){
   if(i35<1.1037919521331787){
    if(i36<-5.881234301341465e-06){
     s0+=55.0;
     s1+=434.0;
    } else {
     s0+=1097.0;
     s1+=208.0;
    }
   } else {
    if(i31<0.04902630299329758){
     s0+=2898.0;
     s1+=226.0;
    } else {
     s0+=4.0;
     s1+=32.0;
    }
   }
  } else {
   if(i8<-1.3807019058731385e-05){
    if(i34<0.0005809837020933628){
     s0+=54.0;
     s1+=81.0;
    } else {
     s0+=176.0;
     s1+=2818.0;
    }
   } else {
    if(i44<0.005288185551762581){
     s0+=649.0;
     s1+=76.0;
    } else {
     s0+=46.0;
     s1+=115.0;
    }
   }
  }
 }
} else {
 if(i8<-6.649366696365178e-05){
  if(i4<1.8656253814697266e-05){
   if(i0<0.10595917701721191){
    if(i49<0.0035895623732358217){
     s1+=30.0;
    } else {
     s0+=294.0;
     s1+=25.0;
    }
   } else {
    if(i2<0.10568144917488098){
     s0+=2.0;
    } else {
     s1+=128.0;
    }
   }
  } else {
   if(i0<0.05832093954086304){
    if(i21<1.0047755241394043){
     s0+=134.0;
     s1+=117.0;
    } else {
     s0+=4.0;
     s1+=182.0;
    }
   } else {
    if(i15<6.020069122314453e-06){
     s0+=100.0;
     s1+=1061.0;
    } else {
     s0+=4.0;
     s1+=8847.0;
    }
   }
  }
 } else {
  if(i10<0.0007712841033935547){
   if(i72<0.9998800754547119){
    if(i25<0.9111618995666504){
     s1+=1.0;
    } else {
     s0+=347.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=133.0;
     s1+=454.0;
    } else {
     s0+=783.0;
     s1+=229.0;
    }
   }
  } else {
   if(i5<0.0008586645126342773){
    if(i16<0.005918998271226883){
     s0+=57.0;
     s1+=9.0;
    } else {
     s0+=39.0;
     s1+=115.0;
    }
   } else {
    if(i40<0.00014214543625712395){
     s1+=290.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i1<0.08355417847633362){
 if(i13<1.006021499633789){
  if(i58<0.002006620168685913){
   if(i3<1.002474308013916){
    if(i30<1.0856719017028809){
     s0+=37041.0;
    } else {
     s0+=26381.0;
     s1+=1088.0;
    }
   } else {
    if(i39<1.1486610174179077){
     s0+=6.0;
     s1+=89.0;
    } else {
     s0+=71.0;
     s1+=2.0;
    }
   }
  } else {
   if(i74<-3.0749745292268926e-06){
    if(i34<0.010653624311089516){
     s0+=6.0;
     s1+=177.0;
    } else {
     s0+=21.0;
     s1+=9.0;
    }
   } else {
    if(i31<0.0486038438975811){
     s0+=4671.0;
     s1+=957.0;
    } else {
     s0+=14.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i10<0.0005822181701660156){
   if(i30<1.1386182308197021){
    if(i15<6.920099258422852e-05){
     s0+=2.0;
    } else {
     s1+=168.0;
    }
   } else {
    if(i9<1.0239787101745605){
     s0+=622.0;
     s1+=17.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i30<1.5942578315734863){
    if(i54<0.00023448263527825475){
     s0+=2.0;
    } else {
     s1+=428.0;
    }
   } else {
    if(i34<0.009252170100808144){
     s0+=19.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i8<-1.871796303021256e-05){
  if(i4<3.904104232788086e-05){
   if(i52<0.004728496074676514){
    if(i59<-0.00010156690404983237){
     s0+=67.0;
     s1+=1857.0;
    } else {
     s0+=70.0;
     s1+=200.0;
    }
   } else {
    if(i8<-4.7111170715652406e-05){
     s0+=146.0;
     s1+=674.0;
    } else {
     s0+=280.0;
     s1+=231.0;
    }
   }
  } else {
   if(i18<0.9968242645263672){
    s0+=18.0;
   } else {
    if(i15<6.258487701416016e-06){
     s0+=84.0;
     s1+=1079.0;
    } else {
     s0+=34.0;
     s1+=9534.0;
    }
   }
  }
 } else {
  if(i3<0.9960691928863525){
   if(i16<0.006275280844420195){
    if(i77<-0.002763897180557251){
     s0+=75.0;
     s1+=4.0;
    } else {
     s0+=577.0;
    }
   } else {
    if(i39<1.1489659547805786){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i47<0.04291939735412598){
    if(i61<0.003085792064666748){
     s0+=15.0;
     s1+=326.0;
    } else {
     s0+=32.0;
     s1+=38.0;
    }
   } else {
    if(i27<1.0386853218078613){
     s0+=28.0;
     s1+=80.0;
    } else {
     s0+=700.0;
     s1+=163.0;
    }
   }
  }
 }
}
if(i1<0.08250191807746887){
 if(i5<0.0005721151828765869){
  if(i56<0.0007084680255502462){
   if(i2<0.06290876865386963){
    if(i43<1.000410795211792){
     s0+=53986.0;
     s1+=323.0;
    } else {
     s0+=4232.0;
     s1+=243.0;
    }
   } else {
    if(i9<1.005887508392334){
     s0+=2293.0;
     s1+=209.0;
    } else {
     s0+=212.0;
     s1+=136.0;
    }
   }
  } else {
   if(i44<0.0009836771059781313){
    if(i72<1.0001716613769531){
     s0+=1277.0;
     s1+=418.0;
    } else {
     s0+=78.0;
     s1+=301.0;
    }
   } else {
    if(i59<-0.00039505408494733274){
     s0+=297.0;
     s1+=120.0;
    } else {
     s0+=6339.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i55<0.9988926649093628){
   s0+=114.0;
  } else {
   if(i60<0.002956986427307129){
    if(i53<0.00302293268032372){
     s0+=81.0;
     s1+=100.0;
    } else {
     s0+=65.0;
     s1+=830.0;
    }
   } else {
    if(i8<-9.160960325971246e-05){
     s1+=10.0;
    } else {
     s0+=102.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i8<-1.64135817612987e-05){
  if(i21<1.0000739097595215){
   if(i1<0.12466582655906677){
    if(i34<0.0019879222381860018){
     s0+=53.0;
     s1+=507.0;
    } else {
     s0+=378.0;
     s1+=209.0;
    }
   } else {
    if(i0<0.07976073026657104){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=118.0;
     s1+=2069.0;
    }
   }
  } else {
   if(i44<0.00034100032644346356){
    if(i59<-0.00012351949408184737){
     s1+=6.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i12<0.0013771653175354004){
     s0+=133.0;
     s1+=2629.0;
    } else {
     s1+=8154.0;
    }
   }
  }
 } else {
  if(i10<-0.0004056096076965332){
   s0+=633.0;
  } else {
   if(i33<0.06374040246009827){
    if(i45<0.000344571570167318){
     s0+=18.0;
    } else {
     s0+=37.0;
     s1+=255.0;
    }
   } else {
    if(i1<0.2336197793483734){
     s0+=647.0;
     s1+=135.0;
    } else {
     s0+=52.0;
     s1+=116.0;
    }
   }
  }
 }
}
if(i3<1.0024676322937012){
 if(i0<0.08544698357582092){
  if(i42<1.0717806816101074){
   if(i12<0.00043851137161254883){
    if(i30<1.096074104309082){
     s0+=35207.0;
    } else {
     s0+=537.0;
     s1+=5.0;
    }
   } else {
    if(i39<1.0581047534942627){
     s0+=1357.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i3<0.9978094696998596){
    if(i52<-0.0008743703365325928){
     s0+=2515.0;
     s1+=204.0;
    } else {
     s0+=18140.0;
     s1+=173.0;
    }
   } else {
    if(i37<0.9903011322021484){
     s0+=1266.0;
     s1+=800.0;
    } else {
     s0+=10344.0;
     s1+=948.0;
    }
   }
  }
 } else {
  if(i48<0.060971736907958984){
   if(i4<-6.327033042907715e-05){
    if(i44<0.007138877175748348){
     s0+=81.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i42<1.0724589824676514){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=43.0;
     s1+=2158.0;
    }
   }
  } else {
   if(i76<9.30923706619069e-05){
    if(i44<0.006489821709692478){
     s0+=908.0;
     s1+=256.0;
    } else {
     s0+=48.0;
     s1+=190.0;
    }
   } else {
    if(i18<0.9980631470680237){
     s0+=109.0;
     s1+=8.0;
    } else {
     s0+=251.0;
     s1+=997.0;
    }
   }
  }
 }
} else {
 if(i3<1.0041333436965942){
  if(i41<0.007287291809916496){
   if(i16<0.0023669356014579535){
    if(i34<0.0007579539669677615){
     s0+=7.0;
     s1+=43.0;
    } else {
     s0+=202.0;
     s1+=5.0;
    }
   } else {
    if(i30<1.5874378681182861){
     s0+=49.0;
     s1+=787.0;
    } else {
     s0+=58.0;
    }
   }
  } else {
   if(i1<0.038162827491760254){
    if(i51<-0.03524184226989746){
     s1+=7.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i74<-4.086986336915288e-06){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i15<-0.0004468560218811035){
   if(i75<-0.00493621826171875){
    s0+=6.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i3<1.0050899982452393){
    if(i54<0.0017644864274188876){
     s0+=17.0;
     s1+=231.0;
    } else {
     s0+=6.0;
     s1+=638.0;
    }
   } else {
    if(i23<1.004330039024353){
     s0+=10.0;
     s1+=901.0;
    } else {
     s1+=8007.0;
    }
   }
  }
 }
}
if(i1<0.08194559812545776){
 if(i4<4.190206527709961e-05){
  if(i68<0.018548715859651566){
   if(i8<-4.453342262422666e-05){
    if(i34<0.0014396901242434978){
     s0+=6.0;
     s1+=117.0;
    } else {
     s0+=264.0;
     s1+=12.0;
    }
   } else {
    if(i20<0.025283269584178925){
     s0+=50591.0;
     s1+=284.0;
    } else {
     s0+=75.0;
     s1+=71.0;
    }
   }
  } else {
   if(i49<0.0008785711834207177){
    if(i49<0.0004682435537688434){
     s0+=3027.0;
     s1+=104.0;
    } else {
     s0+=1355.0;
     s1+=934.0;
    }
   } else {
    if(i64<-0.0027926862239837646){
     s0+=1012.0;
     s1+=234.0;
    } else {
     s0+=12130.0;
     s1+=259.0;
    }
   }
  }
 } else {
  if(i44<0.000395697308704257){
   s0+=213.0;
  } else {
   if(i3<1.004202127456665){
    if(i44<0.0024557739961892366){
     s0+=1.0;
     s1+=166.0;
    } else {
     s0+=213.0;
     s1+=126.0;
    }
   } else {
    if(i77<-0.005939871072769165){
     s0+=7.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=568.0;
    }
   }
  }
 }
} else {
 if(i8<-1.354130290565081e-05){
  if(i6<0.12567737698554993){
   if(i8<-4.8142577725229785e-05){
    if(i32<0.9999704360961914){
     s0+=225.0;
     s1+=610.0;
    } else {
     s0+=18.0;
     s1+=2725.0;
    }
   } else {
    if(i42<1.1819204092025757){
     s0+=59.0;
     s1+=1040.0;
    } else {
     s0+=387.0;
     s1+=149.0;
    }
   }
  } else {
   if(i67<0.0001723333407426253){
    if(i16<0.0028396323323249817){
     s0+=70.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=208.0;
    }
   } else {
    if(i10<-0.0005109012126922607){
     s0+=9.0;
    } else {
     s0+=68.0;
     s1+=9103.0;
    }
   }
  }
 } else {
  if(i66<1.7361435311613604e-05){
   if(i54<0.0020596191752701998){
    if(i47<0.03860294818878174){
     s0+=66.0;
     s1+=160.0;
    } else {
     s0+=763.0;
     s1+=149.0;
    }
   } else {
    if(i12<-0.002106964588165283){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=90.0;
    }
   }
  } else {
   if(i21<0.9939890503883362){
    if(i8<-1.2091375538147986e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=471.0;
     s1+=1.0;
    }
   } else {
    if(i24<0.9944707751274109){
     s1+=29.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
}
if(i7<1.0452277660369873){
 if(i4<3.904104232788086e-05){
  if(i70<0.01024511270225048){
   if(i56<0.0008436623029410839){
    if(i40<-1.6592755855526775e-05){
     s1+=43.0;
    } else {
     s0+=45249.0;
     s1+=88.0;
    }
   } else {
    if(i3<0.9965723752975464){
     s0+=66.0;
     s1+=2.0;
    } else {
     s0+=107.0;
     s1+=166.0;
    }
   }
  } else {
   if(i0<0.07860508561134338){
    if(i44<0.0010300596477463841){
     s0+=4651.0;
     s1+=836.0;
    } else {
     s0+=14476.0;
     s1+=203.0;
    }
   } else {
    if(i67<0.0010427592787891626){
     s0+=146.0;
     s1+=602.0;
    } else {
     s0+=94.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i35<1.0611095428466797){
   s0+=274.0;
  } else {
   if(i26<0.00020304648205637932){
    if(i44<0.0012938396539539099){
     s1+=10.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i38<0.00015240907669067383){
     s0+=41.0;
     s1+=111.0;
    } else {
     s0+=12.0;
     s1+=642.0;
    }
   }
  }
 }
} else {
 if(i1<0.09630811214447021){
  if(i12<0.000950157642364502){
   if(i8<-2.972815855173394e-05){
    if(i39<1.1083450317382812){
     s0+=51.0;
     s1+=368.0;
    } else {
     s0+=887.0;
     s1+=463.0;
    }
   } else {
    if(i40<2.0327626771177165e-05){
     s0+=1813.0;
     s1+=70.0;
    } else {
     s0+=1958.0;
     s1+=329.0;
    }
   }
  } else {
   if(i8<-4.3854302930412814e-05){
    if(i14<-9.119510650634766e-06){
     s0+=14.0;
    } else {
     s0+=16.0;
     s1+=604.0;
    }
   } else {
    if(i45<0.0007115172920748591){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=77.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i3<1.0015796422958374){
   if(i10<-0.0004030168056488037){
    if(i8<-3.651856241049245e-05){
     s0+=5.0;
     s1+=4.0;
    } else {
     s0+=268.0;
    }
   } else {
    if(i34<0.0006418060511350632){
     s0+=322.0;
     s1+=149.0;
    } else {
     s0+=411.0;
     s1+=2083.0;
    }
   }
  } else {
   if(i49<0.005092953331768513){
    if(i48<0.07477325201034546){
     s0+=13.0;
     s1+=1448.0;
    } else {
     s0+=86.0;
     s1+=311.0;
    }
   } else {
    if(i13<1.0071017742156982){
     s0+=32.0;
     s1+=1478.0;
    } else {
     s1+=7083.0;
    }
   }
  }
 }
}
if(i13<1.005615234375){
 if(i31<0.05108868330717087){
  if(i0<0.08209472894668579){
   if(i39<1.0557184219360352){
    if(i28<0.00044851162238046527){
     s0+=42238.0;
    } else {
     s0+=824.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.06308421492576599){
     s0+=22832.0;
     s1+=1453.0;
    } else {
     s0+=2256.0;
     s1+=789.0;
    }
   }
  } else {
   if(i47<0.04772615432739258){
    if(i30<1.0762357711791992){
     s0+=72.0;
    } else {
     s0+=80.0;
     s1+=2070.0;
    }
   } else {
    if(i2<0.12644904851913452){
     s0+=915.0;
     s1+=217.0;
    } else {
     s0+=462.0;
     s1+=645.0;
    }
   }
  }
 } else {
  if(i21<0.980648398399353){
   if(i28<0.0076194750145077705){
    s0+=549.0;
   } else {
    s1+=18.0;
   }
  } else {
   if(i43<0.9984518885612488){
    s0+=5.0;
   } else {
    if(i22<0.8450555801391602){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=1551.0;
    }
   }
  }
 }
} else {
 if(i0<0.06563925743103027){
  if(i37<0.9991542100906372){
   if(i64<-0.0015544593334197998){
    if(i21<1.002415418624878){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=173.0;
    }
   } else {
    if(i14<1.537799835205078e-05){
     s0+=18.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i42<1.1380741596221924){
    if(i5<0.00020194053649902344){
     s0+=21.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i73<-7.743808964733034e-06){
     s1+=6.0;
    } else {
     s0+=618.0;
    }
   }
  }
 } else {
  if(i16<0.0016472353599965572){
   if(i65<0.9998913407325745){
    if(i8<-4.38166425738018e-05){
     s1+=153.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.1380741596221924){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=133.0;
    }
   }
  } else {
   if(i36<-6.273353392316494e-08){
    if(i73<1.3440998145597405e-06){
     s0+=80.0;
     s1+=9863.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i59<-0.0006035357364453375){
     s1+=4.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i6<0.07126319408416748){
 if(i2<0.07544147968292236){
  if(i15<0.00016164779663085938){
   if(i58<0.0014977994142100215){
    if(i39<1.0556960105895996){
     s0+=41914.0;
    } else {
     s0+=20073.0;
     s1+=1027.0;
    }
   } else {
    if(i0<0.05802750587463379){
     s0+=6311.0;
     s1+=962.0;
    } else {
     s0+=349.0;
     s1+=383.0;
    }
   }
  } else {
   if(i18<1.0017085075378418){
    if(i38<0.00012427568435668945){
     s0+=223.0;
     s1+=23.0;
    } else {
     s0+=20.0;
     s1+=37.0;
    }
   } else {
    if(i15<0.00019282102584838867){
     s0+=15.0;
     s1+=39.0;
    } else {
     s1+=453.0;
    }
   }
  }
 } else {
  if(i39<1.0670123100280762){
   if(i19<0.9971369504928589){
    s0+=104.0;
   } else {
    if(i77<-0.0010425150394439697){
     s1+=1.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i52<0.005142033100128174){
    if(i33<0.05766955018043518){
     s0+=9.0;
     s1+=1399.0;
    } else {
     s0+=38.0;
     s1+=112.0;
    }
   } else {
    if(i47<0.036198556423187256){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
} else {
 if(i23<1.0140833854675293){
  if(i2<0.11449724435806274){
   if(i12<0.00023859739303588867){
    if(i16<0.0031519904732704163){
     s0+=776.0;
     s1+=162.0;
    } else {
     s0+=493.0;
     s1+=570.0;
    }
   } else {
    if(i21<0.9987429976463318){
     s0+=38.0;
     s1+=6.0;
    } else {
     s0+=64.0;
     s1+=374.0;
    }
   }
  } else {
   if(i16<0.004639991093426943){
    if(i69<-0.008738212287425995){
     s0+=261.0;
     s1+=43.0;
    } else {
     s0+=143.0;
     s1+=615.0;
    }
   } else {
    if(i10<-0.0005098283290863037){
     s0+=38.0;
    } else {
     s0+=31.0;
     s1+=2700.0;
    }
   }
  }
 } else {
  if(i36<-1.2731304195767734e-05){
   if(i16<0.002059391001239419){
    if(i14<2.7358531951904297e-05){
     s0+=30.0;
     s1+=22.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i15<6.020069122314453e-06){
     s0+=19.0;
     s1+=321.0;
    } else {
     s1+=7287.0;
    }
   }
  } else {
   if(i29<1.0502451658248901){
    if(i1<0.11240717768669128){
     s0+=38.0;
     s1+=7.0;
    } else {
     s0+=16.0;
     s1+=265.0;
    }
   } else {
    if(i54<0.001102227484807372){
     s0+=185.0;
     s1+=30.0;
    } else {
     s0+=6.0;
     s1+=108.0;
    }
   }
  }
 }
}
if(i25<1.0081830024719238){
 if(i5<0.000570446252822876){
  if(i78<0.05546750873327255){
   if(i2<0.08625170588493347){
    if(i61<-0.002141594886779785){
     s0+=148.0;
     s1+=178.0;
    } else {
     s0+=57690.0;
     s1+=573.0;
    }
   } else {
    if(i64<0.004111230373382568){
     s0+=47.0;
     s1+=126.0;
    } else {
     s0+=81.0;
     s1+=23.0;
    }
   }
  } else {
   if(i11<1.0418574810028076){
    if(i4<-1.9609928131103516e-05){
     s0+=5227.0;
     s1+=180.0;
    } else {
     s0+=996.0;
     s1+=243.0;
    }
   } else {
    if(i68<0.2814726233482361){
     s0+=3731.0;
     s1+=1773.0;
    } else {
     s0+=86.0;
     s1+=469.0;
    }
   }
  }
 } else {
  if(i41<0.00042546866461634636){
   if(i77<0.000583350658416748){
    s0+=113.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i24<1.0054638385772705){
    if(i40<0.0001259736018255353){
     s0+=4.0;
     s1+=1232.0;
    } else {
     s0+=82.0;
     s1+=835.0;
    }
   } else {
    if(i67<0.00047482072841376066){
     s0+=91.0;
     s1+=95.0;
    } else {
     s0+=31.0;
     s1+=454.0;
    }
   }
  }
 }
} else {
 if(i16<0.0029915240593254566){
  if(i15<0.00021523237228393555){
   if(i76<5.7145873142872006e-05){
    if(i11<1.060969352722168){
     s0+=93.0;
     s1+=291.0;
    } else {
     s0+=706.0;
     s1+=117.0;
    }
   } else {
    if(i43<0.999875545501709){
     s0+=257.0;
     s1+=74.0;
    } else {
     s0+=1106.0;
     s1+=18.0;
    }
   }
  } else {
   if(i24<1.0099706649780273){
    if(i45<0.00033142341999337077){
     s0+=2.0;
    } else {
     s1+=32.0;
    }
   } else {
    s1+=396.0;
   }
  }
 } else {
  if(i1<0.08383363485336304){
   if(i39<1.1484851837158203){
    if(i35<1.2416861057281494){
     s0+=21.0;
     s1+=454.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i13<1.0114693641662598){
     s0+=342.0;
     s1+=6.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i3<0.9954094290733337){
    if(i35<1.4549047946929932){
     s0+=74.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i18<0.9989665746688843){
     s0+=14.0;
     s1+=10.0;
    } else {
     s0+=79.0;
     s1+=9617.0;
    }
   }
  }
 }
}
if(i5<0.000564873218536377){
 if(i6<0.07071217894554138){
  if(i11<1.0451585054397583){
   if(i1<0.07809272408485413){
    if(i28<0.00027916976250708103){
     s0+=52538.0;
     s1+=233.0;
    } else {
     s0+=8611.0;
     s1+=465.0;
    }
   } else {
    if(i21<0.9938233494758606){
     s0+=355.0;
    } else {
     s0+=136.0;
     s1+=126.0;
    }
   }
  } else {
   if(i0<0.07551455497741699){
    if(i20<0.021959912031888962){
     s0+=5709.0;
     s1+=477.0;
    } else {
     s0+=1140.0;
     s1+=602.0;
    }
   } else {
    if(i38<-0.0001596212387084961){
     s0+=42.0;
    } else {
     s0+=59.0;
     s1+=737.0;
    }
   }
  }
 } else {
  if(i62<0.02675837278366089){
   if(i48<0.05494368076324463){
    if(i1<0.08157357573509216){
     s0+=38.0;
     s1+=107.0;
    } else {
     s0+=11.0;
     s1+=1042.0;
    }
   } else {
    if(i63<0.0004908476257696748){
     s0+=346.0;
     s1+=335.0;
    } else {
     s0+=56.0;
     s1+=350.0;
    }
   }
  } else {
   if(i6<0.1870671510696411){
    if(i71<-0.021657610312104225){
     s0+=748.0;
     s1+=83.0;
    } else {
     s0+=600.0;
     s1+=426.0;
    }
   } else {
    if(i72<0.9974191188812256){
     s0+=88.0;
     s1+=21.0;
    } else {
     s0+=99.0;
     s1+=464.0;
    }
   }
  }
 }
} else {
 if(i0<0.06512784957885742){
  if(i28<0.00019770750077441335){
   if(i11<1.0526537895202637){
    if(i6<0.05853605270385742){
     s0+=159.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i49<0.0020481341052800417){
     s1+=10.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i38<0.00011739134788513184){
    if(i17<1.4128217697143555){
     s0+=57.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<0.002123713493347168){
     s0+=83.0;
     s1+=519.0;
    } else {
     s0+=49.0;
    }
   }
  }
 } else {
  if(i31<0.020925018936395645){
   if(i13<1.0066099166870117){
    if(i35<1.2527469396591187){
     s0+=29.0;
     s1+=189.0;
    } else {
     s0+=116.0;
     s1+=41.0;
    }
   } else {
    if(i61<0.003716707229614258){
     s0+=3.0;
     s1+=1985.0;
    } else {
     s0+=27.0;
     s1+=124.0;
    }
   }
  } else {
   if(i5<0.000567018985748291){
    if(i21<0.9935289621353149){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i66<4.7161802285700105e-06){
     s1+=7343.0;
    } else {
     s0+=5.0;
     s1+=1445.0;
    }
   }
  }
 }
}
if(i6<0.07305902242660522){
 if(i2<0.07745996117591858){
  if(i18<1.0018972158432007){
   if(i0<0.06630954146385193){
    if(i50<-0.03012949228286743){
     s0+=2048.0;
     s1+=486.0;
    } else {
     s0+=63921.0;
     s1+=944.0;
    }
   } else {
    if(i64<0.00042438507080078125){
     s0+=236.0;
     s1+=420.0;
    } else {
     s0+=2013.0;
     s1+=266.0;
    }
   }
  } else {
   if(i21<1.0016193389892578){
    if(i38<0.00036519765853881836){
     s0+=94.0;
     s1+=159.0;
    } else {
     s0+=520.0;
     s1+=48.0;
    }
   } else {
    if(i5<0.00040709972381591797){
     s0+=10.0;
     s1+=6.0;
    } else {
     s0+=37.0;
     s1+=834.0;
    }
   }
  }
 } else {
  if(i3<0.9965357184410095){
   if(i11<1.0706243515014648){
    if(i56<0.003491587471216917){
     s0+=98.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i48<0.053840458393096924){
    if(i50<0.06167587637901306){
     s0+=12.0;
     s1+=1646.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.03940856456756592){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=30.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i16<0.004565384704619646){
  if(i32<1.0124077796936035){
   if(i47<0.04318714141845703){
    if(i61<0.004224598407745361){
     s0+=41.0;
     s1+=522.0;
    } else {
     s0+=34.0;
     s1+=30.0;
    }
   } else {
    if(i8<-9.57857719185995e-06){
     s0+=571.0;
     s1+=379.0;
    } else {
     s0+=811.0;
     s1+=48.0;
    }
   }
  } else {
   if(i3<1.002011775970459){
    if(i30<1.2604451179504395){
     s0+=8.0;
     s1+=111.0;
    } else {
     s0+=96.0;
     s1+=14.0;
    }
   } else {
    if(i26<0.005209204740822315){
     s1+=468.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i73<1.7539384771225741e-06){
   if(i59<-9.666566620580852e-05){
    if(i39<1.0611364841461182){
     s0+=3.0;
    } else {
     s0+=94.0;
     s1+=10228.0;
    }
   } else {
    if(i65<1.00242018699646){
     s0+=99.0;
     s1+=596.0;
    } else {
     s0+=93.0;
     s1+=23.0;
    }
   }
  } else {
   s0+=102.0;
  }
 }
}
if(i11<1.0564017295837402){
 if(i9<1.008097529411316){
  if(i28<0.00029743299819529057){
   if(i18<1.0020149946212769){
    if(i56<0.0008409206056967378){
     s0+=54946.0;
     s1+=343.0;
    } else {
     s0+=750.0;
     s1+=154.0;
    }
   } else {
    if(i66<1.7628713976591825e-05){
     s1+=84.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i6<0.0809776782989502){
    if(i5<0.00040727853775024414){
     s0+=9005.0;
     s1+=847.0;
    } else {
     s0+=20.0;
     s1+=160.0;
    }
   } else {
    if(i17<1.0494358539581299){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=54.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i68<0.028656572103500366){
   if(i30<1.2392117977142334){
    if(i15<9.953975677490234e-06){
     s0+=8.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=363.0;
    }
   } else {
    if(i34<0.0043313167989254){
     s0+=45.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i10<0.0005814433097839355){
    if(i60<0.0032675862312316895){
     s0+=94.0;
     s1+=17.0;
    } else {
     s1+=16.0;
    }
   } else {
    s1+=76.0;
   }
  }
 }
} else {
 if(i0<0.08946725726127625){
  if(i66<-4.502913725445978e-06){
   if(i5<0.0009235143661499023){
    if(i51<-0.00651317834854126){
     s1+=2.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i30<1.5942578315734863){
     s0+=1.0;
     s1+=402.0;
    } else {
     s0+=10.0;
     s1+=9.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i35<1.0981647968292236){
     s0+=860.0;
     s1+=599.0;
    } else {
     s1+=175.0;
    }
   } else {
    if(i54<0.0027203713543713093){
     s0+=3664.0;
     s1+=295.0;
    } else {
     s0+=549.0;
     s1+=394.0;
    }
   }
  }
 } else {
  if(i8<-1.4545135854859836e-05){
   if(i15<0.00011211633682250977){
    if(i47<0.05084529519081116){
     s0+=31.0;
     s1+=2169.0;
    } else {
     s0+=406.0;
     s1+=1331.0;
    }
   } else {
    if(i59<-0.00012694092583842576){
     s0+=5.0;
     s1+=8481.0;
    } else {
     s0+=14.0;
     s1+=453.0;
    }
   }
  } else {
   if(i62<0.04084941744804382){
    if(i48<0.06222686171531677){
     s0+=13.0;
     s1+=157.0;
    } else {
     s0+=224.0;
     s1+=53.0;
    }
   } else {
    if(i19<1.0030893087387085){
     s0+=490.0;
     s1+=56.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i6<0.07239711284637451){
 if(i15<0.00015106797218322754){
  if(i17<1.0485899448394775){
   if(i61<-0.0014071464538574219){
    if(i44<0.0003400893183425069){
     s0+=776.0;
    } else {
     s0+=907.0;
     s1+=212.0;
    }
   } else {
    if(i18<1.001875877380371){
     s0+=53869.0;
     s1+=135.0;
    } else {
     s0+=67.0;
     s1+=20.0;
    }
   }
  } else {
   if(i4<2.8789043426513672e-05){
    if(i49<0.0010355454869568348){
     s0+=4468.0;
     s1+=1378.0;
    } else {
     s0+=8248.0;
     s1+=606.0;
    }
   } else {
    if(i71<-0.011541126295924187){
     s0+=118.0;
     s1+=44.0;
    } else {
     s0+=226.0;
     s1+=717.0;
    }
   }
  }
 } else {
  if(i10<-0.00014081597328186035){
   s0+=197.0;
  } else {
   if(i10<0.000575721263885498){
    if(i35<1.207309603691101){
     s1+=405.0;
    } else {
     s0+=173.0;
     s1+=2.0;
    }
   } else {
    s1+=1122.0;
   }
  }
 }
} else {
 if(i0<0.10271850228309631){
  if(i50<0.038129448890686035){
   if(i48<0.048068493604660034){
    if(i8<8.34270213090349e-06){
     s0+=17.0;
     s1+=421.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   } else {
    if(i5<0.00041216611862182617){
     s0+=360.0;
     s1+=128.0;
    } else {
     s0+=22.0;
     s1+=91.0;
    }
   }
  } else {
   if(i41<0.0017791080754250288){
    if(i47<0.048450201749801636){
     s0+=2.0;
     s1+=34.0;
    } else {
     s0+=191.0;
     s1+=30.0;
    }
   } else {
    if(i3<1.0065048933029175){
     s0+=495.0;
     s1+=7.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i16<0.00468787644058466){
   if(i18<0.9985578060150146){
    if(i33<0.07408097386360168){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=193.0;
     s1+=1.0;
    }
   } else {
    if(i52<0.004431784152984619){
     s0+=69.0;
     s1+=1113.0;
    } else {
     s0+=525.0;
     s1+=336.0;
    }
   }
  } else {
   if(i32<0.9967831373214722){
    if(i10<-0.0005366802215576172){
     s0+=28.0;
    } else {
     s0+=78.0;
     s1+=1936.0;
    }
   } else {
    if(i73<1.4100678527029231e-06){
     s1+=8425.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
}
if(i12<0.0007549822330474854){
 if(i6<0.07647591829299927){
  if(i2<0.08018085360527039){
   if(i53<0.007553829811513424){
    if(i7<1.0401114225387573){
     s0+=60912.0;
     s1+=932.0;
    } else {
     s0+=4266.0;
     s1+=571.0;
    }
   } else {
    if(i4<3.159046173095703e-05){
     s0+=3320.0;
     s1+=764.0;
    } else {
     s0+=64.0;
     s1+=337.0;
    }
   }
  } else {
   if(i19<0.9950950145721436){
    s0+=103.0;
   } else {
    if(i0<0.08456951379776001){
     s0+=49.0;
     s1+=64.0;
    } else {
     s0+=12.0;
     s1+=606.0;
    }
   }
  }
 } else {
  if(i47<0.05038881301879883){
   if(i20<0.01594279333949089){
    if(i8<-3.401259164093062e-05){
     s0+=12.0;
     s1+=124.0;
    } else {
     s0+=68.0;
     s1+=70.0;
    }
   } else {
    if(i18<0.9975755214691162){
     s0+=9.0;
    } else {
     s0+=54.0;
     s1+=2082.0;
    }
   }
  } else {
   if(i36<-8.919074389268644e-06){
    if(i16<0.006501564756035805){
     s0+=426.0;
     s1+=187.0;
    } else {
     s0+=89.0;
     s1+=1117.0;
    }
   } else {
    if(i8<-1.1295500371488743e-05){
     s0+=187.0;
     s1+=252.0;
    } else {
     s0+=761.0;
     s1+=71.0;
    }
   }
  }
 }
} else {
 if(i6<0.0464167594909668){
  if(i36<-1.4116271813691128e-05){
   if(i8<-4.229667683830485e-05){
    s1+=539.0;
   } else {
    if(i16<0.0032153476495295763){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i50<-0.033196866512298584){
    if(i31<0.0051641324535012245){
     s0+=3.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i7<1.0491403341293335){
     s0+=463.0;
     s1+=6.0;
    } else {
     s0+=74.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i36<-1.271105429623276e-05){
   if(i8<-4.385733700473793e-05){
    s1+=8832.0;
   } else {
    if(i67<0.00044194271322339773){
     s0+=19.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i43<1.0001295804977417){
    if(i38<-0.00017330050468444824){
     s0+=24.0;
    } else {
     s0+=35.0;
     s1+=448.0;
    }
   } else {
    if(i54<0.0011184082832187414){
     s0+=126.0;
    } else {
     s0+=2.0;
     s1+=42.0;
    }
   }
  }
 }
}
if(i0<0.08215740323066711){
 if(i53<0.00847451388835907){
  if(i9<1.0083768367767334){
   if(i45<0.00029104328132234514){
    if(i23<1.0073344707489014){
     s0+=46430.0;
     s1+=27.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    if(i5<0.00045806169509887695){
     s0+=19606.0;
     s1+=1127.0;
    } else {
     s0+=133.0;
     s1+=209.0;
    }
   }
  } else {
   if(i42<1.1039612293243408){
    if(i5<0.0001437067985534668){
     s0+=32.0;
     s1+=8.0;
    } else {
     s1+=338.0;
    }
   } else {
    if(i75<0.001475512981414795){
     s0+=109.0;
     s1+=32.0;
    } else {
     s0+=426.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i19<1.0006366968154907){
   if(i38<-3.421306610107422e-05){
    if(i43<0.998618483543396){
     s0+=602.0;
    } else {
     s0+=732.0;
     s1+=69.0;
    }
   } else {
    if(i18<0.999651312828064){
     s0+=235.0;
     s1+=213.0;
    } else {
     s0+=929.0;
     s1+=207.0;
    }
   }
  } else {
   if(i3<1.0020751953125){
    if(i34<0.002332869451493025){
     s0+=29.0;
     s1+=139.0;
    } else {
     s0+=213.0;
     s1+=102.0;
    }
   } else {
    if(i64<0.0005695521831512451){
     s0+=23.0;
     s1+=541.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i55<0.9995480179786682){
  if(i34<0.0015520970337092876){
   if(i33<0.05675625801086426){
    if(i10<-0.00029855966567993164){
     s0+=76.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    s0+=305.0;
   }
  } else {
   if(i54<0.0012721866369247437){
    s0+=9.0;
   } else {
    s1+=244.0;
   }
  }
 } else {
  if(i42<1.3312374353408813){
   if(i47<0.05413508415222168){
    if(i47<0.04319530725479126){
     s0+=55.0;
     s1+=3023.0;
    } else {
     s0+=121.0;
     s1+=584.0;
    }
   } else {
    if(i36<-2.9746115615125746e-06){
     s0+=422.0;
     s1+=849.0;
    } else {
     s0+=465.0;
     s1+=106.0;
    }
   }
  } else {
   if(i2<0.10257813334465027){
    if(i61<-0.0015602707862854004){
     s0+=3.0;
     s1+=150.0;
    } else {
     s0+=153.0;
     s1+=49.0;
    }
   } else {
    if(i34<0.0028068411629647017){
     s0+=12.0;
    } else {
     s0+=65.0;
     s1+=8997.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i56<0.0011360608041286469){
  if(i0<0.07908523082733154){
   if(i17<1.0485899448394775){
    if(i63<0.00025195462512783706){
     s0+=49765.0;
     s1+=59.0;
    } else {
     s0+=4723.0;
     s1+=160.0;
    }
   } else {
    if(i41<0.001635709311813116){
     s0+=4245.0;
     s1+=805.0;
    } else {
     s0+=4472.0;
     s1+=76.0;
    }
   }
  } else {
   if(i47<0.04797828197479248){
    if(i5<-0.0007647275924682617){
     s0+=72.0;
     s1+=5.0;
    } else {
     s0+=67.0;
     s1+=1025.0;
    }
   } else {
    if(i8<-2.1133375412318856e-05){
     s0+=346.0;
     s1+=618.0;
    } else {
     s0+=636.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i2<0.0625440776348114){
   if(i5<0.0005536079406738281){
    if(i39<1.1034480333328247){
     s0+=1022.0;
     s1+=408.0;
    } else {
     s0+=3903.0;
     s1+=194.0;
    }
   } else {
    if(i28<0.0031907972879707813){
     s0+=3.0;
     s1+=143.0;
    } else {
     s0+=60.0;
     s1+=82.0;
    }
   }
  } else {
   if(i34<0.0005470385658554733){
    if(i69<-0.0016080237692222){
     s0+=178.0;
    } else {
     s0+=32.0;
     s1+=12.0;
    }
   } else {
    if(i72<0.9993776082992554){
     s0+=168.0;
     s1+=299.0;
    } else {
     s0+=125.0;
     s1+=2044.0;
    }
   }
  }
 }
} else {
 if(i3<1.0023727416992188){
  if(i67<0.0005776783218607306){
   if(i20<0.04097346216440201){
    if(i8<-3.355216176714748e-05){
     s0+=110.0;
     s1+=616.0;
    } else {
     s0+=925.0;
     s1+=178.0;
    }
   } else {
    if(i55<0.9995718598365784){
     s0+=13.0;
    } else {
     s0+=34.0;
     s1+=382.0;
    }
   }
  } else {
   if(i3<0.9968674182891846){
    if(i29<1.0592188835144043){
     s0+=40.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i54<0.0011785572860389948){
     s0+=1.0;
    } else {
     s0+=9.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i8<-4.39562281826511e-05){
   if(i26<0.0002442187978886068){
    if(i30<1.2651259899139404){
     s1+=83.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i8<-0.00014694024866912514){
     s1+=6204.0;
    } else {
     s0+=38.0;
     s1+=2815.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    s1+=113.0;
   } else {
    if(i46<0.0724707841873169){
     s0+=163.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i1<0.0852321982383728){
 if(i18<1.001643180847168){
  if(i64<-0.002404510974884033){
   if(i15<0.00011229515075683594){
    if(i8<-1.9671439076773822e-05){
     s0+=396.0;
     s1+=226.0;
    } else {
     s0+=1898.0;
     s1+=218.0;
    }
   } else {
    if(i39<1.158913493156433){
     s0+=3.0;
     s1+=81.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  } else {
   if(i26<0.00031567260157316923){
    if(i22<1.0085513591766357){
     s0+=53003.0;
     s1+=226.0;
    } else {
     s0+=168.0;
     s1+=106.0;
    }
   } else {
    if(i30<1.100754976272583){
     s0+=2856.0;
     s1+=942.0;
    } else {
     s0+=9791.0;
     s1+=213.0;
    }
   }
  }
 } else {
  if(i60<0.002412080764770508){
   if(i55<1.0003705024719238){
    if(i71<-0.014552056789398193){
     s0+=56.0;
     s1+=4.0;
    } else {
     s0+=95.0;
     s1+=872.0;
    }
   } else {
    if(i3<1.0048725605010986){
     s0+=366.0;
     s1+=59.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i23<1.0049796104431152){
    if(i67<0.0015393036883324385){
     s0+=369.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i41<0.0009015803225338459){
     s1+=21.0;
    } else {
     s0+=70.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985244870185852){
  if(i40<0.00018563203047960997){
   if(i15<-7.176399230957031e-05){
    s0+=592.0;
   } else {
    if(i40<6.0695056163240224e-05){
     s0+=60.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i12<-0.0033182501792907715){
    if(i56<0.0028291414491832256){
     s0+=38.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=21.0;
   }
  }
 } else {
  if(i16<0.0017730402760207653){
   if(i40<-3.0254217563197017e-05){
    s1+=128.0;
   } else {
    if(i51<0.014881283044815063){
     s0+=201.0;
     s1+=191.0;
    } else {
     s0+=423.0;
     s1+=30.0;
    }
   }
  } else {
   if(i16<0.00390959857031703){
    if(i62<0.03253227472305298){
     s0+=106.0;
     s1+=1192.0;
    } else {
     s0+=266.0;
     s1+=305.0;
    }
   } else {
    if(i17<1.0640453100204468){
     s0+=83.0;
     s1+=188.0;
    } else {
     s0+=183.0;
     s1+=12065.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i0<0.08522754907608032){
  if(i5<0.0006018579006195068){
   if(i17<1.0467959642410278){
    if(i26<0.0002878388040699065){
     s0+=48286.0;
     s1+=74.0;
    } else {
     s0+=6790.0;
     s1+=228.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=3166.0;
     s1+=1141.0;
    } else {
     s0+=10231.0;
     s1+=473.0;
    }
   }
  } else {
   if(i65<0.9976745843887329){
    if(i19<1.0216575860977173){
     s0+=87.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i26<0.00017924141138792038){
     s0+=24.0;
    } else {
     s0+=82.0;
     s1+=514.0;
    }
   }
  }
 } else {
  if(i38<-0.00014147162437438965){
   if(i41<0.02943895384669304){
    if(i38<-0.00025719404220581055){
     s0+=333.0;
    } else {
     s0+=42.0;
     s1+=13.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i47<0.054121196269989014){
    if(i45<0.00024549002409912646){
     s0+=4.0;
    } else {
     s0+=63.0;
     s1+=2545.0;
    }
   } else {
    if(i8<-2.9795886803185567e-05){
     s0+=198.0;
     s1+=915.0;
    } else {
     s0+=433.0;
     s1+=155.0;
    }
   }
  }
 }
} else {
 if(i1<0.08337682485580444){
  if(i30<1.1039612293243408){
   if(i4<8.612871170043945e-06){
    if(i36<-2.617134668980725e-06){
     s1+=18.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   } else {
    if(i22<1.026534080505371){
     s0+=2.0;
     s1+=531.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i4<6.335973739624023e-05){
    if(i14<2.7120113372802734e-05){
     s0+=838.0;
     s1+=69.0;
    } else {
     s0+=15.0;
     s1+=18.0;
    }
   } else {
    if(i5<0.0009474754333496094){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i8<-4.207623715046793e-05){
   if(i19<0.9974145889282227){
    if(i32<1.009965419769287){
     s0+=21.0;
     s1+=46.0;
    } else {
     s0+=3.0;
     s1+=286.0;
    }
   } else {
    if(i0<0.07237422466278076){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=18.0;
     s1+=9312.0;
    }
   }
  } else {
   if(i37<1.0295369625091553){
    if(i18<0.9988601207733154){
     s0+=24.0;
    } else {
     s0+=30.0;
     s1+=408.0;
    }
   } else {
    if(i1<0.24642756581306458){
     s0+=345.0;
     s1+=92.0;
    } else {
     s0+=18.0;
     s1+=145.0;
    }
   }
  }
 }
}
if(i6<0.0700642466545105){
 if(i5<0.0005668401718139648){
  if(i11<1.0436501502990723){
   if(i52<-0.0015038251876831055){
    if(i55<0.9998363256454468){
     s0+=798.0;
     s1+=217.0;
    } else {
     s0+=1390.0;
     s1+=48.0;
    }
   } else {
    if(i56<0.0006968302186578512){
     s0+=54220.0;
     s1+=228.0;
    } else {
     s0+=4358.0;
     s1+=258.0;
    }
   }
  } else {
   if(i1<0.07809719443321228){
    if(i42<1.1034480333328247){
     s0+=2079.0;
     s1+=843.0;
    } else {
     s0+=5347.0;
     s1+=310.0;
    }
   } else {
    if(i48<0.04797053337097168){
     s0+=88.0;
     s1+=744.0;
    } else {
     s0+=113.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i34<0.00038433168083429337){
   s0+=119.0;
  } else {
   if(i16<0.002357384655624628){
    if(i8<-7.297088450286537e-05){
     s1+=66.0;
    } else {
     s0+=145.0;
     s1+=11.0;
    }
   } else {
    if(i32<0.995139479637146){
     s0+=86.0;
     s1+=268.0;
    } else {
     s0+=32.0;
     s1+=1582.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015729665756226){
  if(i18<0.9985777139663696){
   if(i36<-9.800674888538197e-06){
    if(i21<0.9944782257080078){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i77<-0.0024755001068115234){
     s0+=67.0;
     s1+=6.0;
    } else {
     s0+=520.0;
     s1+=1.0;
    }
   }
  } else {
   if(i16<0.0016418937593698502){
    if(i10<-0.00026595592498779297){
     s0+=18.0;
     s1+=65.0;
    } else {
     s0+=653.0;
     s1+=76.0;
    }
   } else {
    if(i47<0.04284191131591797){
     s0+=56.0;
     s1+=1265.0;
    } else {
     s0+=618.0;
     s1+=1072.0;
    }
   }
  }
 } else {
  if(i1<0.1319286823272705){
   if(i69<-0.0056502800434827805){
    if(i16<0.009555952623486519){
     s0+=136.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=65.0;
    }
   } else {
    if(i64<0.006004452705383301){
     s0+=37.0;
     s1+=888.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.17277181148529053){
    if(i66<3.1442825275007635e-05){
     s0+=24.0;
     s1+=986.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=8232.0;
   }
  }
 }
}
if(i1<0.08502665162086487){
 if(i8<-5.447519652079791e-05){
  if(i66<2.044777647824958e-05){
   if(i5<0.0002352893352508545){
    if(i67<0.0007384270429611206){
     s0+=296.0;
     s1+=4.0;
    } else {
     s0+=33.0;
     s1+=51.0;
    }
   } else {
    if(i71<-0.014324596151709557){
     s0+=52.0;
     s1+=6.0;
    } else {
     s0+=133.0;
     s1+=857.0;
    }
   }
  } else {
   if(i53<0.012606560252606869){
    if(i75<0.0014801025390625){
     s0+=1252.0;
     s1+=13.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i0<0.006656825542449951){
     s0+=87.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i20<0.016616124659776688){
   if(i63<0.00028218241641297936){
    if(i32<1.0060441493988037){
     s0+=53627.0;
     s1+=194.0;
    } else {
     s0+=1314.0;
     s1+=140.0;
    }
   } else {
    if(i52<-0.0002435147762298584){
     s0+=1220.0;
     s1+=371.0;
    } else {
     s0+=2476.0;
     s1+=63.0;
    }
   }
  } else {
   if(i40<9.074053377844393e-05){
    if(i72<0.9996975064277649){
     s0+=2217.0;
     s1+=326.0;
    } else {
     s0+=1001.0;
     s1+=811.0;
    }
   } else {
    if(i64<-0.0031509697437286377){
     s0+=158.0;
     s1+=60.0;
    } else {
     s0+=5224.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i43<0.9990403652191162){
  if(i35<1.5840919017791748){
   if(i3<0.9981998205184937){
    if(i12<-0.0004704296588897705){
     s0+=560.0;
    } else {
     s0+=57.0;
     s1+=7.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i7<1.206201434135437){
    s0+=3.0;
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i50<0.03778374195098877){
   if(i8<-2.2307223844109103e-05){
    if(i1<0.08954453468322754){
     s0+=29.0;
     s1+=202.0;
    } else {
     s0+=38.0;
     s1+=8003.0;
    }
   } else {
    if(i47<0.04287087917327881){
     s0+=49.0;
     s1+=330.0;
    } else {
     s0+=140.0;
     s1+=88.0;
    }
   }
  } else {
   if(i8<-4.262005677446723e-05){
    if(i2<0.11532482504844666){
     s0+=178.0;
     s1+=133.0;
    } else {
     s0+=62.0;
     s1+=4698.0;
    }
   } else {
    if(i63<0.0003413712838664651){
     s0+=601.0;
     s1+=255.0;
    } else {
     s0+=208.0;
     s1+=431.0;
    }
   }
  }
 }
}
if(i8<-7.396280852844939e-05){
 if(i13<0.9806261658668518){
  if(i2<0.06285423040390015){
   if(i67<0.0019451642874628305){
    if(i70<0.22047078609466553){
     s0+=647.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i5<-0.0006980299949645996){
     s0+=12.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i9<0.9873294830322266){
    if(i44<0.008289980702102184){
     s0+=1.0;
    } else {
     s1+=122.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i18<0.9973917603492737){
   s0+=159.0;
  } else {
   if(i24<1.0154149532318115){
    if(i65<1.0046756267547607){
     s0+=154.0;
     s1+=2931.0;
    } else {
     s0+=48.0;
     s1+=37.0;
    }
   } else {
    if(i12<0.00015079975128173828){
     s0+=36.0;
     s1+=587.0;
    } else {
     s0+=1.0;
     s1+=7788.0;
    }
   }
  }
 }
} else {
 if(i33<0.06032225489616394){
  if(i6<0.06900832056999207){
   if(i11<1.0452215671539307){
    if(i56<0.0007204792927950621){
     s0+=55162.0;
     s1+=340.0;
    } else {
     s0+=5403.0;
     s1+=611.0;
    }
   } else {
    if(i1<0.07553297281265259){
     s0+=6440.0;
     s1+=1153.0;
    } else {
     s0+=201.0;
     s1+=862.0;
    }
   }
  } else {
   if(i2<0.07597321271896362){
    if(i4<-3.668665885925293e-05){
     s0+=77.0;
     s1+=8.0;
    } else {
     s0+=60.0;
     s1+=100.0;
    }
   } else {
    if(i30<1.5754120349884033){
     s0+=29.0;
     s1+=695.0;
    } else {
     s0+=17.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i59<-0.00010748816566774622){
   if(i54<0.0018818732351064682){
    if(i8<-2.1826133888680488e-05){
     s0+=262.0;
     s1+=772.0;
    } else {
     s0+=942.0;
     s1+=222.0;
    }
   } else {
    if(i1<0.08931368589401245){
     s0+=61.0;
     s1+=23.0;
    } else {
     s0+=22.0;
     s1+=671.0;
    }
   }
  } else {
   if(i14<1.1980533599853516e-05){
    if(i47<0.0364566445350647){
     s0+=23.0;
     s1+=52.0;
    } else {
     s0+=970.0;
     s1+=103.0;
    }
   } else {
    if(i20<0.026123356074094772){
     s0+=158.0;
     s1+=35.0;
    } else {
     s0+=61.0;
     s1+=131.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i3<1.002474308013916){
  if(i41<0.00038149754982441664){
   if(i43<1.0003570318222046){
    if(i64<0.003823578357696533){
     s0+=38945.0;
     s1+=11.0;
    } else {
     s0+=89.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.005427965894341469){
     s0+=2069.0;
     s1+=18.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   }
  } else {
   if(i6<0.07113850116729736){
    if(i26<0.00028491936973296106){
     s0+=13924.0;
     s1+=190.0;
    } else {
     s0+=13113.0;
     s1+=2023.0;
    }
   } else {
    if(i20<0.028292346745729446){
     s0+=957.0;
     s1+=474.0;
    } else {
     s0+=387.0;
     s1+=1245.0;
    }
   }
  }
 } else {
  if(i1<0.0592157244682312){
   if(i24<1.0014795064926147){
    if(i78<0.21892380714416504){
     s0+=5.0;
     s1+=136.0;
    } else {
     s0+=38.0;
     s1+=67.0;
    }
   } else {
    if(i62<0.0004928112030029297){
     s0+=13.0;
     s1+=28.0;
    } else {
     s0+=37.0;
    }
   }
  } else {
   if(i16<0.009302284568548203){
    if(i14<3.641843795776367e-05){
     s0+=13.0;
     s1+=522.0;
    } else {
     s0+=64.0;
     s1+=94.0;
    }
   } else {
    if(i31<0.007050999440252781){
     s0+=3.0;
    } else {
     s1+=1275.0;
    }
   }
  }
 }
} else {
 if(i2<0.07910728454589844){
  if(i17<1.0937649011611938){
   if(i8<-3.901258241967298e-05){
    if(i35<1.2388319969177246){
     s1+=667.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i0<0.07637810707092285){
     s0+=127.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   }
  } else {
   if(i21<1.0075359344482422){
    if(i73<-7.644632205483504e-06){
     s1+=20.0;
    } else {
     s0+=813.0;
     s1+=41.0;
    }
   } else {
    if(i61<0.003690481185913086){
     s0+=8.0;
     s1+=99.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i8<-3.3805743441917e-05){
   if(i0<0.09826821088790894){
    if(i37<1.032207727432251){
     s0+=5.0;
     s1+=246.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i35<1.2590415477752686){
     s0+=58.0;
     s1+=2221.0;
    } else {
     s0+=3.0;
     s1+=7287.0;
    }
   }
  } else {
   if(i1<0.17772701382637024){
    if(i52<0.004600793123245239){
     s0+=50.0;
     s1+=128.0;
    } else {
     s0+=232.0;
     s1+=23.0;
    }
   } else {
    if(i62<0.13111591339111328){
     s0+=28.0;
     s1+=238.0;
    } else {
     s0+=30.0;
     s1+=8.0;
    }
   }
  }
 }
}
if(i1<0.08351385593414307){
 if(i5<0.0006018579006195068){
  if(i26<0.00028115330496802926){
   if(i17<1.0451585054397583){
    if(i63<0.00027202520868740976){
     s0+=45924.0;
     s1+=9.0;
    } else {
     s0+=1158.0;
     s1+=50.0;
    }
   } else {
    if(i75<-0.0010290443897247314){
     s0+=39.0;
     s1+=60.0;
    } else {
     s0+=5075.0;
     s1+=171.0;
    }
   }
  } else {
   if(i30<1.100754976272583){
    if(i34<0.0004306302289478481){
     s0+=3134.0;
     s1+=116.0;
    } else {
     s0+=904.0;
     s1+=1148.0;
    }
   } else {
    if(i6<0.07580912113189697){
     s0+=12309.0;
     s1+=505.0;
    } else {
     s0+=79.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i28<0.00018471668590791523){
   if(i16<0.0018603334901854396){
    s0+=117.0;
   } else {
    if(i10<0.0004343986511230469){
     s0+=15.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i3<1.0040878057479858){
    if(i42<1.2524442672729492){
     s0+=18.0;
     s1+=188.0;
    } else {
     s0+=189.0;
     s1+=128.0;
    }
   } else {
    if(i78<0.3705691695213318){
     s0+=6.0;
     s1+=517.0;
    } else {
     s0+=19.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i4<9.715557098388672e-06){
  if(i36<2.920578481280245e-06){
   if(i34<0.00045606427011080086){
    if(i12<0.0004286766052246094){
     s0+=251.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i47<0.04656842350959778){
     s0+=148.0;
     s1+=1259.0;
    } else {
     s0+=657.0;
     s1+=703.0;
    }
   }
  } else {
   if(i10<-0.0004054605960845947){
    s0+=369.0;
   } else {
    if(i4<-3.826618194580078e-05){
     s0+=21.0;
     s1+=30.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i16<0.003259960561990738){
   if(i40<-1.4070316865399946e-05){
    if(i64<0.008833587169647217){
     s0+=14.0;
     s1+=493.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   } else {
    if(i51<0.01524341106414795){
     s0+=61.0;
     s1+=289.0;
    } else {
     s0+=212.0;
     s1+=51.0;
    }
   }
  } else {
   if(i15<-9.608268737792969e-05){
    if(i1<0.11734479665756226){
     s0+=114.0;
     s1+=134.0;
    } else {
     s0+=25.0;
     s1+=837.0;
    }
   } else {
    if(i38<-0.0005294978618621826){
     s0+=4.0;
    } else {
     s0+=36.0;
     s1+=10421.0;
    }
   }
  }
 }
}
if(i0<0.08032220602035522){
 if(i12<0.0011508762836456299){
  if(i4<3.975629806518555e-05){
   if(i56<0.0007322507444769144){
    if(i22<1.0070314407348633){
     s0+=58809.0;
     s1+=548.0;
    } else {
     s0+=1949.0;
     s1+=366.0;
    }
   } else {
    if(i30<1.100754976272583){
     s0+=1629.0;
     s1+=701.0;
    } else {
     s0+=6253.0;
     s1+=403.0;
    }
   }
  } else {
   if(i42<1.0677311420440674){
    s0+=221.0;
   } else {
    if(i30<1.594835877418518){
     s0+=107.0;
     s1+=466.0;
    } else {
     s0+=102.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i8<-5.671872349921614e-05){
   if(i5<0.0005525946617126465){
    if(i28<0.0002613136311993003){
     s0+=13.0;
    } else {
     s1+=12.0;
    }
   } else {
    s1+=389.0;
   }
  } else {
   if(i39<1.1188092231750488){
    s1+=34.0;
   } else {
    s0+=98.0;
   }
  }
 }
} else {
 if(i43<0.9989378452301025){
  if(i68<0.5195944905281067){
   if(i18<0.9981206655502319){
    if(i3<0.9970239400863647){
     s0+=433.0;
    } else {
     s0+=28.0;
     s1+=2.0;
    }
   } else {
    if(i65<0.9985255002975464){
     s1+=5.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i31<0.023911848664283752){
   if(i50<0.06439182162284851){
    if(i33<0.0625954270362854){
     s0+=31.0;
     s1+=2317.0;
    } else {
     s0+=412.0;
     s1+=1611.0;
    }
   } else {
    if(i15<0.0001043081283569336){
     s0+=694.0;
     s1+=237.0;
    } else {
     s0+=20.0;
     s1+=168.0;
    }
   }
  } else {
   if(i16<0.0034814774990081787){
    if(i3<1.0014417171478271){
     s0+=156.0;
     s1+=39.0;
    } else {
     s1+=127.0;
    }
   } else {
    if(i15<-0.0005542635917663574){
     s0+=32.0;
     s1+=80.0;
    } else {
     s0+=18.0;
     s1+=9696.0;
    }
   }
  }
 }
}
if(i8<-6.900802691234276e-05){
 if(i32<0.9633270502090454){
  if(i19<1.0084322690963745){
   if(i59<-0.00047702586743980646){
    if(i4<-7.203221321105957e-05){
     s0+=1.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i11<1.0818235874176025){
     s0+=731.0;
     s1+=9.0;
    } else {
     s0+=29.0;
     s1+=33.0;
    }
   }
  } else {
   if(i4<3.874301910400391e-06){
    if(i2<0.026477962732315063){
     s0+=9.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i63<0.0051763481460511684){
     s0+=1.0;
     s1+=121.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i1<0.07555744051933289){
   if(i19<0.9967948198318481){
    if(i11<1.1857490539550781){
     s0+=184.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<1.0039563179016113){
     s0+=156.0;
     s1+=142.0;
    } else {
     s0+=23.0;
     s1+=369.0;
    }
   }
  } else {
   if(i73<-3.9918566471897066e-05){
    s0+=17.0;
   } else {
    if(i31<0.027788396924734116){
     s0+=125.0;
     s1+=2771.0;
    } else {
     s0+=2.0;
     s1+=8371.0;
    }
   }
  }
 }
} else {
 if(i25<1.00758695602417){
  if(i2<0.0822540819644928){
   if(i2<0.06227225065231323){
    if(i52<-0.0017842650413513184){
     s0+=2718.0;
     s1+=649.0;
    } else {
     s0+=60327.0;
     s1+=708.0;
    }
   } else {
    if(i47<0.0275266170501709){
     s0+=92.0;
     s1+=282.0;
    } else {
     s0+=2839.0;
     s1+=290.0;
    }
   }
  } else {
   if(i3<0.996024489402771){
    if(i18<0.99846351146698){
     s0+=290.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=51.0;
    }
   } else {
    if(i62<0.03666651248931885){
     s0+=92.0;
     s1+=1125.0;
    } else {
     s0+=406.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i63<-8.358923514606431e-05){
   if(i17<1.0856956243515015){
    if(i26<0.00017070421017706394){
     s0+=9.0;
    } else {
     s0+=16.0;
     s1+=575.0;
    }
   } else {
    if(i16<0.0022276458330452442){
     s0+=235.0;
     s1+=5.0;
    } else {
     s0+=79.0;
     s1+=200.0;
    }
   }
  } else {
   if(i16<0.004577684216201305){
    if(i39<1.0778207778930664){
     s0+=108.0;
     s1+=231.0;
    } else {
     s0+=2256.0;
     s1+=288.0;
    }
   } else {
    if(i18<0.9984254837036133){
     s0+=65.0;
    } else {
     s0+=64.0;
     s1+=754.0;
    }
   }
  }
 }
}
if(i5<0.0005484223365783691){
 if(i37<1.0113145112991333){
  if(i6<0.08101236820220947){
   if(i70<0.010830080136656761){
    if(i61<-0.002921193838119507){
     s0+=141.0;
     s1+=119.0;
    } else {
     s0+=46697.0;
     s1+=233.0;
    }
   } else {
    if(i1<0.07653331756591797){
     s0+=19583.0;
     s1+=1413.0;
    } else {
     s0+=579.0;
     s1+=713.0;
    }
   }
  } else {
   if(i10<-0.000432431697845459){
    if(i36<-1.181230072688777e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=137.0;
    }
   } else {
    if(i47<0.06118568778038025){
     s0+=28.0;
     s1+=785.0;
    } else {
     s0+=74.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i41<0.010496871545910835){
   if(i9<1.0099356174468994){
    if(i18<0.9982267022132874){
     s0+=443.0;
     s1+=4.0;
    } else {
     s0+=2078.0;
     s1+=789.0;
    }
   } else {
    if(i16<0.003601391799747944){
     s0+=548.0;
     s1+=337.0;
    } else {
     s0+=35.0;
     s1+=536.0;
    }
   }
  } else {
   if(i0<0.12576496601104736){
    s0+=39.0;
   } else {
    if(i49<0.0060891639441251755){
     s0+=2.0;
     s1+=41.0;
    } else {
     s1+=466.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019916106248274446){
  if(i21<1.0061275959014893){
   if(i28<0.00022264635481406003){
    s0+=202.0;
   } else {
    if(i19<1.0028362274169922){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i65<1.0005009174346924){
    s1+=14.0;
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i16<0.0022305105812847614){
   if(i13<1.009964942932129){
    if(i40<8.639031875645742e-06){
     s0+=126.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   } else {
    s1+=141.0;
   }
  } else {
   if(i12<-0.00012576580047607422){
    if(i17<1.1232359409332275){
     s0+=184.0;
     s1+=291.0;
    } else {
     s0+=44.0;
     s1+=978.0;
    }
   } else {
    if(i55<0.9958852529525757){
     s0+=16.0;
    } else {
     s0+=28.0;
     s1+=10267.0;
    }
   }
  }
 }
}
if(i13<1.0059480667114258){
 if(i0<0.08246153593063354){
  if(i7<1.0398929119110107){
   if(i28<0.0002966678002849221){
    if(i17<1.0451585054397583){
     s0+=48538.0;
     s1+=108.0;
    } else {
     s0+=5737.0;
     s1+=348.0;
    }
   } else {
    if(i3<1.0007836818695068){
     s0+=8293.0;
     s1+=626.0;
    } else {
     s0+=48.0;
     s1+=188.0;
    }
   }
  } else {
   if(i3<1.0013065338134766){
    if(i42<1.1037919521331787){
     s0+=1731.0;
     s1+=513.0;
    } else {
     s0+=4023.0;
     s1+=265.0;
    }
   } else {
    if(i65<0.9999452829360962){
     s0+=59.0;
     s1+=204.0;
    } else {
     s0+=263.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i47<0.049102842807769775){
   if(i10<-0.000628054141998291){
    s0+=88.0;
   } else {
    if(i26<0.00019634520867839456){
     s0+=6.0;
    } else {
     s0+=76.0;
     s1+=2892.0;
    }
   }
  } else {
   if(i1<0.1367131769657135){
    if(i24<0.9904310703277588){
     s0+=61.0;
     s1+=98.0;
    } else {
     s0+=888.0;
     s1+=166.0;
    }
   } else {
    if(i16<0.006194320507347584){
     s0+=479.0;
     s1+=278.0;
    } else {
     s1+=1034.0;
    }
   }
  }
 }
} else {
 if(i5<0.0004972219467163086){
  if(i54<0.0008609045180492103){
   if(i55<0.9997941255569458){
    s1+=227.0;
   } else {
    if(i34<0.0005015141796320677){
     s0+=2.0;
     s1+=29.0;
    } else {
     s0+=565.0;
     s1+=11.0;
    }
   }
  } else {
   if(i38<-0.0001862049102783203){
    if(i57<1.127028226852417){
     s0+=21.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i6<0.034097909927368164){
     s0+=6.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=508.0;
    }
   }
  }
 } else {
  if(i31<0.009802194312214851){
   if(i42<1.2388319969177246){
    s1+=1053.0;
   } else {
    if(i12<0.00153350830078125){
     s0+=165.0;
     s1+=11.0;
    } else {
     s1+=91.0;
    }
   }
  } else {
   if(i28<0.00012073470861651003){
    s0+=8.0;
   } else {
    if(i5<0.0005004405975341797){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=8340.0;
    }
   }
  }
 }
}
if(i2<0.07742848992347717){
 if(i13<1.0060056447982788){
  if(i46<0.025729525834321976){
   if(i77<-0.0011169612407684326){
    if(i69<-0.002014544326812029){
     s0+=1164.0;
     s1+=14.0;
    } else {
     s0+=222.0;
     s1+=253.0;
    }
   } else {
    if(i17<1.0486280918121338){
     s0+=49574.0;
     s1+=113.0;
    } else {
     s0+=6172.0;
     s1+=428.0;
    }
   }
  } else {
   if(i1<0.0634520947933197){
    if(i18<1.0019006729125977){
     s0+=9863.0;
     s1+=745.0;
    } else {
     s0+=354.0;
     s1+=242.0;
    }
   } else {
    if(i62<0.01636531949043274){
     s0+=338.0;
     s1+=508.0;
    } else {
     s0+=911.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i35<1.1463401317596436){
   s1+=700.0;
  } else {
   if(i18<1.002203106880188){
    if(i54<0.0020527676679193974){
     s0+=602.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i73<-7.688695404794998e-06){
     s0+=3.0;
     s1+=148.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i49<0.006003519520163536){
  if(i50<0.07739338278770447){
   if(i42<1.0670123100280762){
    s0+=173.0;
   } else {
    if(i3<0.996550977230072){
     s0+=160.0;
     s1+=14.0;
    } else {
     s0+=491.0;
     s1+=3781.0;
    }
   }
  } else {
   if(i34<0.001881415257230401){
    if(i3<1.000964879989624){
     s0+=496.0;
     s1+=23.0;
    } else {
     s0+=30.0;
     s1+=26.0;
    }
   } else {
    if(i53<-0.006706032902002335){
     s0+=30.0;
     s1+=190.0;
    } else {
     s0+=269.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i17<1.064406394958496){
   if(i39<1.5537261962890625){
    if(i16<0.009719964116811752){
     s0+=62.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.00021401559934020042){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i65<1.002297282218933){
    if(i31<0.018109388649463654){
     s0+=48.0;
     s1+=619.0;
    } else {
     s0+=28.0;
     s1+=8673.0;
    }
   } else {
    if(i68<0.11817645281553268){
     s0+=47.0;
     s1+=97.0;
    } else {
     s0+=18.0;
     s1+=297.0;
    }
   }
  }
 }
}
if(i25<1.0079900026321411){
 if(i3<1.0024800300598145){
  if(i7<1.0452215671539307){
   if(i35<1.067622423171997){
    if(i39<1.0596027374267578){
     s0+=37602.0;
    } else {
     s0+=994.0;
     s1+=44.0;
    }
   } else {
    if(i19<0.9971847534179688){
     s0+=13080.0;
     s1+=165.0;
    } else {
     s0+=12778.0;
     s1+=1591.0;
    }
   }
  } else {
   if(i18<0.9988413453102112){
    if(i36<-1.1569667549338192e-05){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=1336.0;
     s1+=19.0;
    }
   } else {
    if(i45<0.008558561094105244){
     s0+=2099.0;
     s1+=1059.0;
    } else {
     s0+=160.0;
     s1+=926.0;
    }
   }
  }
 } else {
  if(i17<1.0432554483413696){
   if(i25<1.0014992952346802){
    s1+=1.0;
   } else {
    s0+=24.0;
   }
  } else {
   if(i36<-1.3200286957726348e-05){
    if(i2<0.02979189157485962){
     s0+=39.0;
     s1+=104.0;
    } else {
     s0+=67.0;
     s1+=2116.0;
    }
   } else {
    if(i8<-2.8625299819395877e-05){
     s0+=51.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i49<0.005924341268837452){
  if(i18<1.001845359802246){
   if(i1<0.07357287406921387){
    if(i21<1.0015251636505127){
     s0+=1298.0;
     s1+=96.0;
    } else {
     s0+=421.0;
     s1+=172.0;
    }
   } else {
    if(i16<0.00174692552536726){
     s0+=452.0;
     s1+=120.0;
    } else {
     s0+=343.0;
     s1+=1686.0;
    }
   }
  } else {
   if(i8<-7.504210225306451e-05){
    if(i40<0.000184245640411973){
     s0+=1.0;
     s1+=1162.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i3<1.0023685693740845){
     s0+=70.0;
     s1+=43.0;
    } else {
     s0+=13.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i2<0.08235308527946472){
   if(i12<0.00011050701141357422){
    if(i9<0.9716822504997253){
     s1+=2.0;
    } else {
     s0+=133.0;
    }
   } else {
    if(i77<0.003072500228881836){
     s1+=25.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i1<0.13653436303138733){
    if(i52<0.004059910774230957){
     s0+=1.0;
     s1+=101.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   } else {
    if(i65<1.0008487701416016){
     s0+=3.0;
     s1+=6842.0;
    } else {
     s0+=11.0;
     s1+=569.0;
    }
   }
  }
 }
}
if(i14<1.913309097290039e-05){
 if(i11<1.0470023155212402){
  if(i2<0.07771843671798706){
   if(i44<0.00029582399292849004){
    s0+=35536.0;
   } else {
    if(i44<0.0009732084581628442){
     s0+=7037.0;
     s1+=798.0;
    } else {
     s0+=19523.0;
     s1+=90.0;
    }
   }
  } else {
   if(i38<-0.00024837255477905273){
    if(i21<0.9942277669906616){
     s0+=113.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.04620686173439026){
     s0+=17.0;
     s1+=244.0;
    } else {
     s0+=119.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i4<1.1026859283447266e-05){
   if(i70<0.01950259320437908){
    if(i2<0.09074392914772034){
     s0+=2855.0;
     s1+=132.0;
    } else {
     s0+=119.0;
     s1+=157.0;
    }
   } else {
    if(i16<0.005605827085673809){
     s0+=3433.0;
     s1+=1352.0;
    } else {
     s0+=243.0;
     s1+=740.0;
    }
   }
  } else {
   if(i38<6.690621376037598e-05){
    if(i44<0.0007736780680716038){
     s0+=31.0;
    } else {
     s0+=163.0;
     s1+=2036.0;
    }
   } else {
    if(i42<1.150278091430664){
     s0+=75.0;
     s1+=439.0;
    } else {
     s0+=565.0;
     s1+=315.0;
    }
   }
  }
 }
} else {
 if(i5<0.0006889104843139648){
  if(i70<0.14375090599060059){
   if(i17<1.0819685459136963){
    if(i76<8.566024189349264e-05){
     s0+=207.0;
     s1+=103.0;
    } else {
     s0+=673.0;
     s1+=19.0;
    }
   } else {
    if(i7<1.1205039024353027){
     s0+=464.0;
     s1+=338.0;
    } else {
     s0+=3.0;
     s1+=126.0;
    }
   }
  } else {
   if(i11<1.0805513858795166){
    s0+=7.0;
   } else {
    s1+=189.0;
   }
  }
 } else {
  if(i17<1.036005973815918){
   s0+=25.0;
  } else {
   if(i5<0.0011053085327148438){
    if(i30<1.5682398080825806){
     s0+=59.0;
     s1+=813.0;
    } else {
     s0+=72.0;
     s1+=98.0;
    }
   } else {
    if(i13<0.9965980052947998){
     s0+=37.0;
     s1+=457.0;
    } else {
     s0+=17.0;
     s1+=8351.0;
    }
   }
  }
 }
}
if(i1<0.0844140350818634){
 if(i18<1.001828908920288){
  if(i28<0.0002996704715769738){
   if(i9<1.0081498622894287){
    if(i61<-0.0017785727977752686){
     s0+=211.0;
     s1+=109.0;
    } else {
     s0+=56013.0;
     s1+=335.0;
    }
   } else {
    if(i39<1.083398699760437){
     s0+=1.0;
     s1+=128.0;
    } else {
     s0+=251.0;
     s1+=16.0;
    }
   }
  } else {
   if(i15<-0.0002478659152984619){
    if(i7<1.0855464935302734){
     s0+=5680.0;
     s1+=72.0;
    } else {
     s0+=209.0;
     s1+=37.0;
    }
   } else {
    if(i42<1.0670123100280762){
     s0+=1905.0;
     s1+=7.0;
    } else {
     s0+=4129.0;
     s1+=1391.0;
    }
   }
  }
 } else {
  if(i60<0.0024747848510742188){
   if(i64<0.0007413029670715332){
    if(i74<1.0720607406256022e-06){
     s0+=82.0;
     s1+=839.0;
    } else {
     s0+=70.0;
     s1+=47.0;
    }
   } else {
    if(i21<0.998321533203125){
     s0+=212.0;
    } else {
     s0+=38.0;
     s1+=60.0;
    }
   }
  } else {
   if(i35<1.1480928659439087){
    s1+=22.0;
   } else {
    if(i66<-2.0423385649337433e-07){
     s0+=2.0;
     s1+=6.0;
    } else {
     s0+=329.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i4<1.0907649993896484e-05){
  if(i8<-1.2009702913928777e-05){
   if(i50<0.04253965616226196){
    if(i17<1.049512505531311){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=73.0;
     s1+=1121.0;
    }
   } else {
    if(i68<0.15943604707717896){
     s0+=277.0;
     s1+=298.0;
    } else {
     s0+=47.0;
     s1+=332.0;
    }
   }
  } else {
   if(i43<0.9993038177490234){
    s0+=557.0;
   } else {
    if(i27<1.0322496891021729){
     s0+=6.0;
     s1+=121.0;
    } else {
     s0+=521.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i8<-4.286456896807067e-05){
   if(i12<-6.133317947387695e-05){
    if(i58<0.001792393857613206){
     s0+=170.0;
     s1+=550.0;
    } else {
     s0+=13.0;
     s1+=753.0;
    }
   } else {
    if(i12<3.1828880310058594e-05){
     s0+=6.0;
     s1+=102.0;
    } else {
     s0+=4.0;
     s1+=10101.0;
    }
   }
  } else {
   if(i47<0.04553791880607605){
    if(i22<1.0281879901885986){
     s0+=14.0;
     s1+=334.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.1550614833831787){
     s0+=6.0;
     s1+=97.0;
    } else {
     s0+=237.0;
     s1+=108.0;
    }
   }
  }
 }
}
if(i16<0.005055328831076622){
 if(i9<1.0081498622894287){
  if(i0<0.07842501997947693){
   if(i57<0.9796324372291565){
    if(i11<1.0334362983703613){
     s0+=2325.0;
     s1+=115.0;
    } else {
     s0+=1213.0;
     s1+=410.0;
    }
   } else {
    if(i26<0.0003206723486073315){
     s0+=51549.0;
     s1+=209.0;
    } else {
     s0+=8236.0;
     s1+=707.0;
    }
   }
  } else {
   if(i71<-0.01955706626176834){
    if(i34<0.00508343568071723){
     s0+=757.0;
     s1+=66.0;
    } else {
     s0+=17.0;
     s1+=58.0;
    }
   } else {
    if(i17<1.0494358539581299){
     s0+=254.0;
     s1+=48.0;
    } else {
     s0+=285.0;
     s1+=1049.0;
    }
   }
  }
 } else {
  if(i40<-2.8910249966429546e-05){
   if(i13<1.0084741115570068){
    s0+=2.0;
   } else {
    s1+=846.0;
   }
  } else {
   if(i60<0.004017472267150879){
    if(i42<1.1039612293243408){
     s0+=24.0;
     s1+=557.0;
    } else {
     s0+=441.0;
     s1+=347.0;
    }
   } else {
    if(i16<0.0029833591543138027){
     s0+=740.0;
     s1+=93.0;
    } else {
     s0+=129.0;
     s1+=236.0;
    }
   }
  }
 }
} else {
 if(i0<0.07266390323638916){
  if(i3<1.0001778602600098){
   if(i7<1.0690299272537231){
    if(i22<1.0044292211532593){
     s0+=4424.0;
     s1+=116.0;
    } else {
     s0+=38.0;
     s1+=21.0;
    }
   } else {
    if(i54<0.0016525633400306106){
     s0+=61.0;
     s1+=2.0;
    } else {
     s0+=25.0;
     s1+=67.0;
    }
   }
  } else {
   if(i35<1.2424216270446777){
    if(i68<0.10278823971748352){
     s0+=4.0;
     s1+=385.0;
    } else {
     s0+=12.0;
     s1+=20.0;
    }
   } else {
    if(i58<0.00322337681427598){
     s0+=121.0;
     s1+=11.0;
    } else {
     s0+=38.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i17<1.0640453100204468){
   if(i25<1.0038955211639404){
    if(i15<-0.0001125335693359375){
     s0+=149.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=27.0;
    }
   } else {
    if(i30<1.3041954040527344){
     s1+=146.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i14<-1.913309097290039e-05){
    s0+=40.0;
   } else {
    if(i11<1.08823561668396){
     s0+=161.0;
     s1+=1868.0;
    } else {
     s0+=31.0;
     s1+=9518.0;
    }
   }
  }
 }
}
if(i6<0.0723395049571991){
 if(i53<0.007564922794699669){
  if(i1<0.08280113339424133){
   if(i3<1.0025451183319092){
    if(i39<1.0557184219360352){
     s0+=42167.0;
    } else {
     s0+=22974.0;
     s1+=1199.0;
    }
   } else {
    if(i42<1.2314128875732422){
     s1+=361.0;
    } else {
     s0+=195.0;
     s1+=24.0;
    }
   }
  } else {
   if(i43<0.999346137046814){
    s0+=249.0;
   } else {
    if(i34<0.002332295523956418){
     s0+=51.0;
     s1+=1012.0;
    } else {
     s0+=63.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i8<-4.089331196155399e-05){
   if(i13<0.9816310405731201){
    if(i1<0.021401435136795044){
     s0+=276.0;
     s1+=10.0;
    } else {
     s0+=13.0;
     s1+=82.0;
    }
   } else {
    if(i3<1.0042208433151245){
     s0+=165.0;
     s1+=569.0;
    } else {
     s0+=4.0;
     s1+=868.0;
    }
   }
  } else {
   if(i35<1.1897556781768799){
    if(i39<1.0670123100280762){
     s0+=884.0;
     s1+=26.0;
    } else {
     s0+=776.0;
     s1+=513.0;
    }
   } else {
    if(i10<0.0007190704345703125){
     s0+=1409.0;
     s1+=31.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i0<0.11061069369316101){
  if(i52<0.003971189260482788){
   if(i14<-1.33514404296875e-05){
    if(i29<1.0140643119812012){
     s0+=152.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=5.0;
    }
   } else {
    if(i64<0.0039108991622924805){
     s0+=178.0;
     s1+=917.0;
    } else {
     s0+=165.0;
     s1+=29.0;
    }
   }
  } else {
   if(i45<0.0009136170265264809){
    if(i16<0.0006480578449554741){
     s0+=17.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   } else {
    if(i18<1.0042667388916016){
     s0+=652.0;
     s1+=12.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<-1.7344951629638672e-05){
   if(i54<0.0020799292251467705){
    s0+=179.0;
   } else {
    if(i69<-0.0034233846236020327){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i44<0.006100778467953205){
    if(i64<0.007370412349700928){
     s0+=124.0;
     s1+=2195.0;
    } else {
     s0+=360.0;
     s1+=201.0;
    }
   } else {
    if(i44<0.007946787402033806){
     s0+=43.0;
     s1+=952.0;
    } else {
     s0+=8.0;
     s1+=8021.0;
    }
   }
  }
 }
}
if(i21<1.0039952993392944){
 if(i17<1.0576403141021729){
  if(i25<1.0086493492126465){
   if(i0<0.07906240224838257){
    if(i39<1.0557184219360352){
     s0+=43163.0;
    } else {
     s0+=14944.0;
     s1+=501.0;
    }
   } else {
    if(i3<0.9969314336776733){
     s0+=218.0;
     s1+=3.0;
    } else {
     s0+=147.0;
     s1+=136.0;
    }
   }
  } else {
   if(i41<0.0013136225752532482){
    if(i1<0.05011516809463501){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=116.0;
    }
   } else {
    s0+=57.0;
   }
  }
 } else {
  if(i8<-4.368814188637771e-05){
   if(i77<-0.004230320453643799){
    if(i7<1.0656489133834839){
     s0+=1054.0;
     s1+=90.0;
    } else {
     s0+=11.0;
     s1+=208.0;
    }
   } else {
    if(i17<1.1260349750518799){
     s0+=621.0;
     s1+=992.0;
    } else {
     s0+=165.0;
     s1+=2344.0;
    }
   }
  } else {
   if(i30<1.1013743877410889){
    if(i16<0.0016365640331059694){
     s0+=1359.0;
     s1+=493.0;
    } else {
     s0+=267.0;
     s1+=868.0;
    }
   } else {
    if(i19<1.0029255151748657){
     s0+=8235.0;
     s1+=970.0;
    } else {
     s0+=284.0;
     s1+=269.0;
    }
   }
  }
 }
} else {
 if(i7<1.0344531536102295){
  if(i3<1.002530574798584){
   if(i8<-6.0244805354159325e-05){
    if(i3<0.9985767602920532){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i0<0.06600427627563477){
     s0+=378.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i75<0.0008286237716674805){
    if(i58<0.0008649053052067757){
     s0+=5.0;
     s1+=23.0;
    } else {
     s1+=215.0;
    }
   } else {
    if(i16<0.0015045767650008202){
     s0+=28.0;
    } else {
     s1+=31.0;
    }
   }
  }
 } else {
  if(i43<0.9990463256835938){
   if(i70<0.11413762718439102){
    s0+=38.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i0<0.06511574983596802){
    if(i57<1.0174179077148438){
     s0+=62.0;
     s1+=303.0;
    } else {
     s0+=53.0;
     s1+=2.0;
    }
   } else {
    if(i5<-0.00013774633407592773){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=82.0;
     s1+=9434.0;
    }
   }
  }
 }
}
if(i2<0.0783216655254364){
 if(i5<0.0006889104843139648){
  if(i20<0.014285827986896038){
   if(i46<0.029301036149263382){
    if(i58<0.001606605015695095){
     s0+=52258.0;
     s1+=263.0;
    } else {
     s0+=1431.0;
     s1+=156.0;
    }
   } else {
    if(i44<0.001016730908304453){
     s0+=795.0;
     s1+=196.0;
    } else {
     s0+=2129.0;
     s1+=44.0;
    }
   }
  } else {
   if(i3<0.9972078800201416){
    if(i31<0.0748399868607521){
     s0+=8785.0;
     s1+=125.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i40<2.825017145369202e-05){
     s0+=2252.0;
     s1+=323.0;
    } else {
     s0+=1379.0;
     s1+=1075.0;
    }
   }
  }
 } else {
  if(i73<-5.33090633325628e-06){
   if(i64<0.0018364787101745605){
    if(i45<0.00023099433747120202){
     s0+=10.0;
    } else {
     s0+=69.0;
     s1+=1028.0;
    }
   } else {
    if(i70<0.03799918293952942){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=46.0;
    }
   }
  } else {
   if(i15<0.0002168416976928711){
    if(i34<0.0010879256296902895){
     s0+=5.0;
     s1+=27.0;
    } else {
     s0+=110.0;
     s1+=5.0;
    }
   } else {
    s1+=24.0;
   }
  }
 }
} else {
 if(i16<0.004690323956310749){
  if(i51<0.013515323400497437){
   if(i19<0.9963246583938599){
    if(i5<-0.0006146728992462158){
     s0+=212.0;
     s1+=8.0;
    } else {
     s0+=14.0;
     s1+=57.0;
    }
   } else {
    if(i0<0.09503301978111267){
     s0+=185.0;
     s1+=367.0;
    } else {
     s0+=87.0;
     s1+=1507.0;
    }
   }
  } else {
   if(i47<0.04802507162094116){
    if(i2<0.09385588765144348){
     s0+=63.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=201.0;
    }
   } else {
    if(i14<4.178285598754883e-05){
     s0+=952.0;
     s1+=170.0;
    } else {
     s0+=8.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i43<0.9987908601760864){
   if(i31<0.07515326142311096){
    s0+=83.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i21<0.9988770484924316){
    if(i0<0.09227892756462097){
     s0+=84.0;
     s1+=44.0;
    } else {
     s0+=82.0;
     s1+=1711.0;
    }
   } else {
    if(i2<0.1090836226940155){
     s0+=35.0;
     s1+=739.0;
    } else {
     s0+=9.0;
     s1+=9010.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i3<1.0024782419204712){
  if(i52<-0.0015020966529846191){
   if(i30<1.1860926151275635){
    if(i43<0.9991869926452637){
     s0+=384.0;
    } else {
     s0+=1126.0;
     s1+=616.0;
    }
   } else {
    if(i67<0.001935009378939867){
     s0+=2568.0;
     s1+=198.0;
    } else {
     s0+=30.0;
     s1+=50.0;
    }
   }
  } else {
   if(i24<1.0072498321533203){
    if(i45<0.0003003599704243243){
     s0+=45945.0;
     s1+=44.0;
    } else {
     s0+=16521.0;
     s1+=874.0;
    }
   } else {
    if(i76<2.5103354346356355e-05){
     s0+=30.0;
     s1+=63.0;
    } else {
     s0+=2180.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i39<1.1353518962860107){
   if(i44<0.00030838686507195234){
    s0+=2.0;
   } else {
    if(i75<-0.003984332084655762){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=645.0;
    }
   }
  } else {
   if(i58<0.004204196855425835){
    if(i4<0.00010371208190917969){
     s0+=266.0;
     s1+=15.0;
    } else {
     s0+=10.0;
     s1+=24.0;
    }
   } else {
    if(i12<-0.0025234222412109375){
     s0+=14.0;
     s1+=11.0;
    } else {
     s0+=12.0;
     s1+=282.0;
    }
   }
  }
 }
} else {
 if(i19<1.0004936456680298){
  if(i18<0.9985139966011047){
   if(i66<4.467228063731454e-05){
    if(i3<0.9970239400863647){
     s0+=647.0;
    } else {
     s0+=20.0;
     s1+=5.0;
    }
   } else {
    if(i26<0.0013820272870361805){
     s0+=16.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   }
  } else {
   if(i31<0.021599242463707924){
    if(i61<0.0038854479789733887){
     s0+=380.0;
     s1+=976.0;
    } else {
     s0+=311.0;
     s1+=76.0;
    }
   } else {
    if(i73<9.489361900705262e-07){
     s0+=104.0;
     s1+=1575.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<0.026041526347398758){
   if(i52<0.005764365196228027){
    if(i71<-0.025128129869699478){
     s0+=45.0;
     s1+=64.0;
    } else {
     s0+=44.0;
     s1+=2300.0;
    }
   } else {
    if(i2<0.19161894917488098){
     s0+=234.0;
     s1+=38.0;
    } else {
     s0+=16.0;
     s1+=199.0;
    }
   }
  } else {
   if(i0<0.11550101637840271){
    if(i33<0.06874889135360718){
     s0+=4.0;
     s1+=428.0;
    } else {
     s0+=69.0;
     s1+=105.0;
    }
   } else {
    if(i49<0.00502703245729208){
     s0+=34.0;
     s1+=698.0;
    } else {
     s0+=3.0;
     s1+=7610.0;
    }
   }
  }
 }
}
if(i5<0.0005468428134918213){
 if(i2<0.08162105083465576){
  if(i11<1.0451585054397583){
   if(i77<-0.0006198883056640625){
    if(i13<0.9895962476730347){
     s0+=8173.0;
     s1+=72.0;
    } else {
     s0+=1746.0;
     s1+=478.0;
    }
   } else {
    if(i26<0.0003186201793141663){
     s0+=50075.0;
     s1+=114.0;
    } else {
     s0+=1815.0;
     s1+=157.0;
    }
   }
  } else {
   if(i30<1.1013743877410889){
    if(i8<-1.589873863849789e-05){
     s0+=122.0;
     s1+=608.0;
    } else {
     s0+=1649.0;
     s1+=306.0;
    }
   } else {
    if(i67<0.0017512365011498332){
     s0+=5360.0;
     s1+=368.0;
    } else {
     s0+=10.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i47<0.05413508415222168){
   if(i3<0.9922167062759399){
    if(i35<1.4354934692382812){
     s0+=69.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i0<0.09338584542274475){
     s0+=111.0;
     s1+=307.0;
    } else {
     s0+=38.0;
     s1+=1922.0;
    }
   }
  } else {
   if(i49<0.003930940758436918){
    if(i18<0.9989689588546753){
     s0+=343.0;
     s1+=6.0;
    } else {
     s0+=561.0;
     s1+=340.0;
    }
   } else {
    if(i31<0.04179060459136963){
     s0+=268.0;
     s1+=286.0;
    } else {
     s0+=11.0;
     s1+=381.0;
    }
   }
  }
 }
} else {
 if(i26<0.00021729854051955044){
  if(i21<1.005094051361084){
   if(i36<-1.686515679466538e-05){
    s1+=7.0;
   } else {
    if(i58<0.001598851173184812){
     s0+=193.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i45<0.00019311215146444738){
    s0+=12.0;
   } else {
    s1+=28.0;
   }
  }
 } else {
  if(i55<0.9973968267440796){
   s0+=25.0;
  } else {
   if(i19<1.005824089050293){
    if(i31<0.016793902963399887){
     s0+=271.0;
     s1+=1002.0;
    } else {
     s0+=35.0;
     s1+=2939.0;
    }
   } else {
    if(i0<0.052133023738861084){
     s0+=28.0;
     s1+=186.0;
    } else {
     s0+=20.0;
     s1+=7746.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i18<1.001636028289795){
  if(i11<1.0410068035125732){
   if(i51<-0.004774123430252075){
    if(i30<1.2298874855041504){
     s0+=1286.0;
     s1+=244.0;
    } else {
     s0+=1118.0;
     s1+=2.0;
    }
   } else {
    if(i17<1.042891263961792){
     s0+=49851.0;
     s1+=87.0;
    } else {
     s0+=6727.0;
     s1+=222.0;
    }
   }
  } else {
   if(i20<0.016888752579689026){
    if(i4<1.233816146850586e-05){
     s0+=6141.0;
     s1+=260.0;
    } else {
     s0+=637.0;
     s1+=191.0;
    }
   } else {
    if(i42<1.1063789129257202){
     s0+=278.0;
     s1+=668.0;
    } else {
     s0+=1892.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i9<1.0044530630111694){
   if(i51<-0.0035856962203979492){
    if(i5<0.0002751946449279785){
     s0+=134.0;
     s1+=28.0;
    } else {
     s0+=49.0;
     s1+=341.0;
    }
   } else {
    if(i34<0.002686919178813696){
     s0+=54.0;
     s1+=65.0;
    } else {
     s0+=602.0;
     s1+=56.0;
    }
   }
  } else {
   if(i44<0.0016266419552266598){
    if(i41<0.00031194990151561797){
     s0+=2.0;
    } else {
     s1+=390.0;
    }
   } else {
    if(i19<1.005725622177124){
     s0+=129.0;
     s1+=38.0;
    } else {
     s1+=88.0;
    }
   }
  }
 }
} else {
 if(i19<1.0003459453582764){
  if(i59<-8.282604539999738e-05){
   if(i9<1.0101343393325806){
    if(i10<-0.0004131197929382324){
     s0+=342.0;
     s1+=13.0;
    } else {
     s0+=447.0;
     s1+=1004.0;
    }
   } else {
    if(i3<0.9965787529945374){
     s0+=23.0;
    } else {
     s0+=104.0;
     s1+=1443.0;
    }
   }
  } else {
   if(i33<0.06405052542686462){
    if(i14<-1.3470649719238281e-05){
     s0+=162.0;
    } else {
     s0+=23.0;
     s1+=137.0;
    }
   } else {
    if(i29<0.9357244372367859){
     s0+=6.0;
     s1+=12.0;
    } else {
     s0+=475.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i2<0.12571337819099426){
   if(i29<1.039652943611145){
    if(i69<-0.005493275821208954){
     s0+=133.0;
     s1+=89.0;
    } else {
     s0+=81.0;
     s1+=1810.0;
    }
   } else {
    if(i21<1.0083085298538208){
     s0+=185.0;
     s1+=26.0;
    } else {
     s0+=7.0;
     s1+=48.0;
    }
   }
  } else {
   if(i13<1.005753993988037){
    if(i71<-0.045991502702236176){
     s0+=81.0;
     s1+=364.0;
    } else {
     s0+=20.0;
     s1+=1810.0;
    }
   } else {
    s1+=7481.0;
   }
  }
 }
}
if(i2<0.07742300629615784){
 if(i17<1.0485899448394775){
  if(i77<-0.0005834400653839111){
   if(i15<-0.0002891421318054199){
    if(i51<-0.023123949766159058){
     s0+=59.0;
     s1+=1.0;
    } else {
     s0+=3837.0;
    }
   } else {
    if(i38<-3.826618194580078e-05){
     s0+=2932.0;
     s1+=17.0;
    } else {
     s0+=439.0;
     s1+=298.0;
    }
   }
  } else {
   if(i58<0.0016697286628186703){
    if(i18<1.002081036567688){
     s0+=48512.0;
     s1+=60.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i8<-1.504743158875499e-05){
     s0+=10.0;
     s1+=19.0;
    } else {
     s0+=194.0;
    }
   }
  }
 } else {
  if(i5<0.0005562901496887207){
   if(i39<1.1036889553070068){
    if(i46<0.03253157064318657){
     s0+=3488.0;
     s1+=633.0;
    } else {
     s0+=471.0;
     s1+=671.0;
    }
   } else {
    if(i50<-0.03563156723976135){
     s0+=1116.0;
     s1+=201.0;
    } else {
     s0+=8134.0;
     s1+=180.0;
    }
   }
  } else {
   if(i44<0.002560383640229702){
    if(i18<1.0010440349578857){
     s0+=1.0;
     s1+=12.0;
    } else {
     s1+=706.0;
    }
   } else {
    if(i51<-0.006051391363143921){
     s0+=43.0;
     s1+=321.0;
    } else {
     s0+=218.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00038558244705200195){
  if(i44<0.005373968277126551){
   if(i14<-1.7255544662475586e-05){
    s0+=397.0;
   } else {
    if(i74<8.288553544844035e-06){
     s0+=56.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  } else {
   if(i33<0.0814046561717987){
    s0+=24.0;
   } else {
    if(i39<1.320204496383667){
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<0.116985023021698){
   if(i69<-0.004494954366236925){
    if(i51<0.011842340230941772){
     s0+=22.0;
     s1+=92.0;
    } else {
     s0+=649.0;
     s1+=45.0;
    }
   } else {
    if(i47<0.054121196269989014){
     s0+=79.0;
     s1+=1606.0;
    } else {
     s0+=190.0;
     s1+=113.0;
    }
   }
  } else {
   if(i54<0.0003019549185410142){
    if(i65<0.999794602394104){
     s0+=11.0;
     s1+=160.0;
    } else {
     s0+=177.0;
     s1+=60.0;
    }
   } else {
    if(i12<0.0002722442150115967){
     s0+=284.0;
     s1+=2597.0;
    } else {
     s0+=15.0;
     s1+=9036.0;
    }
   }
  }
 }
}
if(i21<1.004004955291748){
 if(i37<1.0135655403137207){
  if(i1<0.08352836966514587){
   if(i17<1.0486011505126953){
    if(i52<-0.0017426609992980957){
     s0+=775.0;
     s1+=100.0;
    } else {
     s0+=54646.0;
     s1+=224.0;
    }
   } else {
    if(i2<0.058738142251968384){
     s0+=10607.0;
     s1+=1245.0;
    } else {
     s0+=900.0;
     s1+=681.0;
    }
   }
  } else {
   if(i38<-0.00013941526412963867){
    if(i68<0.4023534059524536){
     s0+=502.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i47<0.043351441621780396){
     s0+=46.0;
     s1+=1659.0;
    } else {
     s0+=224.0;
     s1+=389.0;
    }
   }
  }
 } else {
  if(i1<0.11259827017784119){
   if(i28<0.0009220549836754799){
    if(i36<-2.1583068701147567e-06){
     s0+=664.0;
     s1+=340.0;
    } else {
     s0+=345.0;
     s1+=4.0;
    }
   } else {
    if(i66<-6.8112062763248105e-06){
     s1+=6.0;
    } else {
     s0+=894.0;
     s1+=24.0;
    }
   }
  } else {
   if(i3<0.99632328748703){
    if(i42<1.4274330139160156){
     s0+=146.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i62<0.046389997005462646){
     s0+=124.0;
     s1+=1887.0;
    } else {
     s0+=345.0;
     s1+=636.0;
    }
   }
  }
 }
} else {
 if(i11<1.0343551635742188){
  if(i73<-5.966004209767561e-06){
   if(i36<-1.7354082956444472e-05){
    s1+=40.0;
   } else {
    s0+=4.0;
   }
  } else {
   if(i38<0.0002548396587371826){
    s0+=364.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i14<-7.271766662597656e-06){
   if(i34<0.01067669689655304){
    if(i8<-3.0288842026493512e-05){
     s0+=65.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i44<0.00494214054197073){
    if(i36<-1.4454560187004972e-05){
     s0+=3.0;
     s1+=2048.0;
    } else {
     s0+=201.0;
     s1+=388.0;
    }
   } else {
    if(i55<0.9994286894798279){
     s0+=1.0;
    } else {
     s0+=36.0;
     s1+=7632.0;
    }
   }
  }
 }
}
if(i7<1.0452277660369873){
 if(i60<-0.0022909939289093018){
  if(i19<1.0077776908874512){
   if(i42<1.2001045942306519){
    if(i38<-4.285573959350586e-05){
     s0+=1216.0;
     s1+=96.0;
    } else {
     s0+=338.0;
     s1+=774.0;
    }
   } else {
    if(i8<-0.00016647277516312897){
     s1+=41.0;
    } else {
     s0+=3408.0;
     s1+=283.0;
    }
   }
  } else {
   if(i0<0.006097376346588135){
    if(i12<-0.0022603869438171387){
     s0+=35.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i5<-0.00046950578689575195){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=250.0;
    }
   }
  }
 } else {
  if(i0<0.08222377300262451){
   if(i8<-4.372498733573593e-05){
    if(i25<1.0053187608718872){
     s0+=866.0;
     s1+=64.0;
    } else {
     s0+=51.0;
     s1+=172.0;
    }
   } else {
    if(i20<0.02377336658537388){
     s0+=56482.0;
     s1+=290.0;
    } else {
     s0+=2550.0;
     s1+=225.0;
    }
   }
  } else {
   if(i21<0.9939890503883362){
    if(i17<1.07941472530365){
     s0+=132.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i47<0.054114311933517456){
     s0+=19.0;
     s1+=520.0;
    } else {
     s0+=41.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i34<0.004932984709739685){
  if(i19<1.000556468963623){
   if(i8<-2.292128192493692e-05){
    if(i2<0.07909488677978516){
     s0+=387.0;
     s1+=286.0;
    } else {
     s0+=105.0;
     s1+=941.0;
    }
   } else {
    if(i1<0.08234056830406189){
     s0+=2637.0;
     s1+=118.0;
    } else {
     s0+=905.0;
     s1+=320.0;
    }
   }
  } else {
   if(i16<0.002630667993798852){
    if(i3<1.0041358470916748){
     s0+=543.0;
     s1+=235.0;
    } else {
     s1+=141.0;
    }
   } else {
    if(i15<-0.00011050701141357422){
     s0+=145.0;
     s1+=104.0;
    } else {
     s0+=59.0;
     s1+=2592.0;
    }
   }
  }
 } else {
  if(i4<3.427267074584961e-05){
   if(i28<0.0008278503082692623){
    if(i7<1.0657250881195068){
     s0+=297.0;
     s1+=10.0;
    } else {
     s0+=44.0;
     s1+=54.0;
    }
   } else {
    if(i28<0.007450573146343231){
     s0+=306.0;
     s1+=436.0;
    } else {
     s0+=51.0;
     s1+=647.0;
    }
   }
  } else {
   if(i21<1.0006592273712158){
    if(i8<-8.67950584506616e-05){
     s0+=83.0;
     s1+=841.0;
    } else {
     s0+=115.0;
     s1+=205.0;
    }
   } else {
    if(i1<0.11434173583984375){
     s0+=56.0;
     s1+=304.0;
    } else {
     s0+=15.0;
     s1+=7361.0;
    }
   }
  }
 }
}
if(i3<1.0024672746658325){
 if(i26<0.00031641250825487077){
  if(i22<1.0094115734100342){
   if(i77<-0.0012534856796264648){
    if(i60<-0.0021511316299438477){
     s0+=16.0;
     s1+=54.0;
    } else {
     s0+=215.0;
    }
   } else {
    if(i72<1.0021750926971436){
     s0+=52788.0;
     s1+=196.0;
    } else {
     s0+=1080.0;
     s1+=67.0;
    }
   }
  } else {
   if(i30<1.1039612293243408){
    if(i54<9.534043783787638e-05){
     s0+=9.0;
    } else {
     s0+=3.0;
     s1+=127.0;
    }
   } else {
    if(i0<0.09892114996910095){
     s0+=54.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i33<0.05369657278060913){
   if(i2<0.06633251905441284){
    if(i41<0.0019988492131233215){
     s0+=4357.0;
     s1+=1122.0;
    } else {
     s0+=9489.0;
     s1+=250.0;
    }
   } else {
    if(i5<-0.0008894205093383789){
     s0+=93.0;
     s1+=8.0;
    } else {
     s0+=111.0;
     s1+=1335.0;
    }
   }
  } else {
   if(i2<0.09799054265022278){
    if(i50<0.03437265753746033){
     s0+=705.0;
     s1+=337.0;
    } else {
     s0+=1080.0;
     s1+=113.0;
    }
   } else {
    if(i8<-1.1628882930381224e-05){
     s0+=344.0;
     s1+=2144.0;
    } else {
     s0+=536.0;
     s1+=140.0;
    }
   }
  }
 }
} else {
 if(i16<0.0019228286109864712){
  if(i8<-6.297791696852073e-05){
   s1+=108.0;
  } else {
   if(i76<3.793939686147496e-05){
    s1+=7.0;
   } else {
    s0+=182.0;
   }
  }
 } else {
  if(i15<5.900859832763672e-06){
   if(i76<0.00017983870930038393){
    if(i0<0.12678757309913635){
     s0+=146.0;
     s1+=279.0;
    } else {
     s0+=3.0;
     s1+=312.0;
    }
   } else {
    s1+=443.0;
   }
  } else {
   if(i13<1.0068254470825195){
    if(i49<0.0038130367174744606){
     s0+=29.0;
     s1+=241.0;
    } else {
     s0+=5.0;
     s1+=800.0;
    }
   } else {
    if(i16<0.002051808638498187){
     s0+=4.0;
     s1+=36.0;
    } else {
     s1+=8873.0;
    }
   }
  }
 }
}
if(i8<-7.133316830731928e-05){
 if(i4<1.0699033737182617e-05){
  if(i15<-0.000520169734954834){
   if(i31<0.05022405833005905){
    if(i2<0.09450235962867737){
     s0+=492.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=6.0;
    }
   } else {
    if(i22<0.8608884811401367){
     s0+=3.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i23<0.9439260959625244){
    if(i73<-1.1463886039564386e-05){
     s1+=1.0;
    } else {
     s0+=76.0;
    }
   } else {
    if(i44<0.007044247351586819){
     s0+=59.0;
     s1+=60.0;
    } else {
     s0+=7.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i34<0.00047692941734567285){
   s0+=176.0;
  } else {
   if(i6<0.002257704734802246){
    if(i31<0.046840641647577286){
     s0+=82.0;
     s1+=29.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   } else {
    if(i12<-0.0025560855865478516){
     s0+=77.0;
     s1+=119.0;
    } else {
     s0+=129.0;
     s1+=11038.0;
    }
   }
  }
 }
} else {
 if(i2<0.07739722728729248){
  if(i11<1.0410068035125732){
   if(i58<0.0016995577607303858){
    if(i2<0.06237795948982239){
     s0+=54305.0;
     s1+=212.0;
    } else {
     s0+=1959.0;
     s1+=99.0;
    }
   } else {
    if(i70<0.023684058338403702){
     s0+=658.0;
     s1+=227.0;
    } else {
     s0+=1907.0;
     s1+=80.0;
    }
   }
  } else {
   if(i4<3.36766242980957e-05){
    if(i39<1.1031841039657593){
     s0+=3947.0;
     s1+=1110.0;
    } else {
     s0+=5333.0;
     s1+=220.0;
    }
   } else {
    if(i39<1.2112433910369873){
     s0+=20.0;
     s1+=371.0;
    } else {
     s0+=133.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i48<0.05674690008163452){
   if(i34<0.00044936328777112067){
    if(i73<-2.777298959699692e-06){
     s1+=9.0;
    } else {
     s0+=76.0;
    }
   } else {
    if(i55<1.0003254413604736){
     s0+=89.0;
     s1+=1824.0;
    } else {
     s0+=31.0;
     s1+=40.0;
    }
   }
  } else {
   if(i47<0.0403103232383728){
    if(i73<6.414790050257579e-07){
     s0+=13.0;
     s1+=208.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i1<0.11240798234939575){
     s0+=869.0;
     s1+=119.0;
    } else {
     s0+=718.0;
     s1+=955.0;
    }
   }
  }
 }
}
if(i17<1.057713270187378){
 if(i37<1.0156776905059814){
  if(i46<0.02631448209285736){
   if(i25<1.009535312652588){
    if(i26<0.00031762453727424145){
     s0+=50566.0;
     s1+=132.0;
    } else {
     s0+=2395.0;
     s1+=142.0;
    }
   } else {
    if(i41<0.0014855279587209225){
     s0+=4.0;
     s1+=85.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i3<1.0007178783416748){
    if(i42<1.2206636667251587){
     s0+=2368.0;
     s1+=316.0;
    } else {
     s0+=3328.0;
     s1+=2.0;
    }
   } else {
    if(i31<0.010593204759061337){
     s0+=33.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i70<0.03980633616447449){
   if(i5<-3.8951635360717773e-05){
    if(i17<1.055511236190796){
     s0+=43.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i8<-1.3969174688099883e-05){
     s1+=88.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   s0+=48.0;
  }
 }
} else {
 if(i6<0.058632731437683105){
  if(i0<0.06765413284301758){
   if(i4<3.629922866821289e-05){
    if(i35<1.0991880893707275){
     s0+=1392.0;
     s1+=625.0;
    } else {
     s0+=8226.0;
     s1+=271.0;
    }
   } else {
    if(i21<1.0056524276733398){
     s0+=199.0;
     s1+=190.0;
    } else {
     s0+=24.0;
     s1+=279.0;
    }
   }
  } else {
   if(i3<0.9962259531021118){
    if(i36<2.936975761258509e-06){
     s0+=31.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i33<0.04570779204368591){
     s0+=9.0;
     s1+=1208.0;
    } else {
     s0+=28.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i49<0.00629829615354538){
   if(i52<0.004210710525512695){
    if(i2<0.07754740118980408){
     s0+=507.0;
     s1+=481.0;
    } else {
     s0+=355.0;
     s1+=2685.0;
    }
   } else {
    if(i31<0.023757614195346832){
     s0+=1146.0;
     s1+=305.0;
    } else {
     s0+=251.0;
     s1+=640.0;
    }
   }
  } else {
   if(i6<0.08464139699935913){
    if(i69<-0.006332579534500837){
     s0+=124.0;
     s1+=26.0;
    } else {
     s0+=34.0;
     s1+=299.0;
    }
   } else {
    if(i65<1.002136468887329){
     s0+=50.0;
     s1+=8644.0;
    } else {
     s0+=43.0;
     s1+=395.0;
    }
   }
  }
 }
}
if(i0<0.08202168345451355){
 if(i3<1.002474308013916){
  if(i50<-0.032283902168273926){
   if(i1<0.032170116901397705){
    if(i1<0.0008195340633392334){
     s0+=917.0;
     s1+=43.0;
    } else {
     s0+=710.0;
     s1+=197.0;
    }
   } else {
    if(i25<1.0214738845825195){
     s0+=153.0;
     s1+=338.0;
    } else {
     s0+=121.0;
     s1+=5.0;
    }
   }
  } else {
   if(i17<1.0486011505126953){
    if(i41<0.00035579100949689746){
     s0+=38222.0;
     s1+=3.0;
    } else {
     s0+=17534.0;
     s1+=299.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=2647.0;
     s1+=969.0;
    } else {
     s0+=8860.0;
     s1+=226.0;
    }
   }
  }
 } else {
  if(i36<-1.4116389138507657e-05){
   if(i39<1.1877408027648926){
    if(i65<1.0030462741851807){
     s0+=8.0;
     s1+=737.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i35<1.3027660846710205){
     s0+=65.0;
     s1+=20.0;
    } else {
     s0+=36.0;
     s1+=156.0;
    }
   }
  } else {
   if(i10<0.0006204843521118164){
    if(i8<-7.098278729245067e-05){
     s1+=5.0;
    } else {
     s0+=162.0;
     s1+=2.0;
    }
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i19<1.000554084777832){
  if(i16<0.005300789140164852){
   if(i48<0.05780169367790222){
    if(i30<1.0840110778808594){
     s0+=96.0;
    } else {
     s0+=45.0;
     s1+=901.0;
    }
   } else {
    if(i38<-0.00013530254364013672){
     s0+=370.0;
     s1+=3.0;
    } else {
     s0+=736.0;
     s1+=416.0;
    }
   }
  } else {
   if(i39<1.0621569156646729){
    s0+=14.0;
   } else {
    if(i38<-0.0002760589122772217){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=68.0;
     s1+=1437.0;
    }
   }
  }
 } else {
  if(i16<0.0033393572084605694){
   if(i47<0.0479087233543396){
    if(i60<0.00732770562171936){
     s0+=3.0;
     s1+=487.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   } else {
    if(i13<1.0079717636108398){
     s0+=264.0;
     s1+=67.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i5<-0.0001722276210784912){
    if(i59<-0.00011275791621301323){
     s0+=3.0;
     s1+=56.0;
    } else {
     s0+=42.0;
     s1+=19.0;
    }
   } else {
    if(i17<1.0637178421020508){
     s0+=28.0;
     s1+=108.0;
    } else {
     s0+=89.0;
     s1+=10405.0;
    }
   }
  }
 }
}
if(i2<0.07806527614593506){
 if(i3<1.0024828910827637){
  if(i68<0.01854962855577469){
   if(i63<0.0003554280265234411){
    if(i0<0.0754823386669159){
     s0+=50826.0;
     s1+=231.0;
    } else {
     s0+=246.0;
     s1+=52.0;
    }
   } else {
    if(i61<-0.000506967306137085){
     s0+=49.0;
     s1+=145.0;
    } else {
     s0+=152.0;
     s1+=3.0;
    }
   }
  } else {
   if(i13<0.989704966545105){
    if(i50<-0.03744354844093323){
     s0+=711.0;
     s1+=167.0;
    } else {
     s0+=9378.0;
     s1+=89.0;
    }
   } else {
    if(i67<0.000600906671024859){
     s0+=6174.0;
     s1+=751.0;
    } else {
     s0+=1285.0;
     s1+=657.0;
    }
   }
  }
 } else {
  if(i30<1.2392117977142334){
   if(i54<0.0004225825541652739){
    if(i68<0.0213482566177845){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=794.0;
   }
  } else {
   if(i58<0.0024361517280340195){
    if(i54<0.0029719234444200993){
     s0+=220.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=23.0;
    }
   } else {
    if(i65<0.9976022243499756){
     s0+=10.0;
    } else {
     s0+=29.0;
     s1+=285.0;
    }
   }
  }
 }
} else {
 if(i18<0.998519778251648){
  if(i63<0.001096784370020032){
   if(i15<-7.432699203491211e-05){
    if(i15<-0.00047472119331359863){
     s0+=19.0;
     s1+=3.0;
    } else {
     s0+=401.0;
    }
   } else {
    if(i8<-4.4379528844729066e-05){
     s0+=18.0;
     s1+=10.0;
    } else {
     s0+=66.0;
    }
   }
  } else {
   if(i32<0.9669046998023987){
    s0+=9.0;
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i65<0.9998630285263062){
   if(i8<-1.2321882422838826e-05){
    if(i12<-0.0007000863552093506){
     s0+=130.0;
     s1+=835.0;
    } else {
     s0+=80.0;
     s1+=9476.0;
    }
   } else {
    if(i40<3.527669468894601e-05){
     s0+=90.0;
     s1+=11.0;
    } else {
     s0+=47.0;
     s1+=115.0;
    }
   }
  } else {
   if(i48<0.05703955888748169){
    if(i67<9.206778486259282e-05){
     s0+=9.0;
     s1+=7.0;
    } else {
     s0+=56.0;
     s1+=1856.0;
    }
   } else {
    if(i0<0.11726287007331848){
     s0+=622.0;
     s1+=148.0;
    } else {
     s0+=299.0;
     s1+=1627.0;
    }
   }
  }
 }
}
if(i25<1.0085901021957397){
 if(i17<1.057713270187378){
  if(i39<1.0557184219360352){
   if(i60<-0.0032767951488494873){
    if(i58<0.0008438077638857067){
     s1+=2.0;
    } else {
     s0+=618.0;
    }
   } else {
    s0+=42788.0;
   }
  } else {
   if(i50<-0.031481534242630005){
    if(i34<0.0014422971289604902){
     s0+=41.0;
     s1+=75.0;
    } else {
     s0+=75.0;
     s1+=2.0;
    }
   } else {
    if(i42<1.0991880893707275){
     s0+=2494.0;
     s1+=513.0;
    } else {
     s0+=12833.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i21<1.002181053161621){
   if(i0<0.07795235514640808){
    if(i39<1.1031841039657593){
     s0+=1749.0;
     s1+=755.0;
    } else {
     s0+=6663.0;
     s1+=388.0;
    }
   } else {
    if(i62<0.025579094886779785){
     s0+=130.0;
     s1+=1539.0;
    } else {
     s0+=785.0;
     s1+=595.0;
    }
   }
  } else {
   if(i26<0.0003008287167176604){
    if(i31<0.013375218957662582){
     s0+=240.0;
     s1+=15.0;
    } else {
     s0+=4.0;
     s1+=43.0;
    }
   } else {
    if(i11<1.0422990322113037){
     s0+=89.0;
     s1+=98.0;
    } else {
     s0+=168.0;
     s1+=2034.0;
    }
   }
  }
 }
} else {
 if(i8<-4.222855932312086e-05){
  if(i19<0.9952183365821838){
   if(i13<1.0067501068115234){
    if(i44<0.008963746950030327){
     s0+=95.0;
    } else {
     s1+=22.0;
    }
   } else {
    s1+=121.0;
   }
  } else {
   if(i1<0.06967905163764954){
    if(i44<0.0028946264646947384){
     s0+=18.0;
     s1+=207.0;
    } else {
     s0+=111.0;
     s1+=11.0;
    }
   } else {
    if(i41<0.008454224094748497){
     s0+=78.0;
     s1+=3726.0;
    } else {
     s1+=5934.0;
    }
   }
  }
 } else {
  if(i20<0.022341594099998474){
   if(i30<1.1039612293243408){
    if(i18<1.0002727508544922){
     s0+=350.0;
     s1+=135.0;
    } else {
     s0+=18.0;
     s1+=153.0;
    }
   } else {
    if(i3<1.0041964054107666){
     s0+=1467.0;
     s1+=24.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i67<0.0005469649913720787){
    if(i39<1.139992117881775){
     s0+=41.0;
     s1+=165.0;
    } else {
     s0+=427.0;
     s1+=143.0;
    }
   } else {
    if(i22<1.0067366361618042){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=138.0;
    }
   }
  }
 }
}
if(i0<0.08195626735687256){
 if(i4<4.1812658309936523e-05){
  if(i50<-0.027979493141174316){
   if(i42<1.081458568572998){
    if(i13<1.0038518905639648){
     s0+=815.0;
     s1+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i35<1.093761682510376){
     s0+=53.0;
     s1+=300.0;
    } else {
     s0+=1607.0;
     s1+=309.0;
    }
   }
  } else {
   if(i28<0.00026872666785493493){
    if(i56<0.0007893795263953507){
     s0+=52971.0;
     s1+=293.0;
    } else {
     s0+=816.0;
     s1+=184.0;
    }
   } else {
    if(i21<0.9943428039550781){
     s0+=7196.0;
     s1+=58.0;
    } else {
     s0+=5275.0;
     s1+=957.0;
    }
   }
  }
 } else {
  if(i3<1.001755952835083){
   if(i60<-0.01134634017944336){
    if(i43<1.0006630420684814){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i7<1.082106590270996){
     s0+=251.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i60<0.0035216808319091797){
    if(i16<0.001884935307316482){
     s0+=63.0;
     s1+=4.0;
    } else {
     s0+=96.0;
     s1+=932.0;
    }
   } else {
    if(i38<0.00024759769439697266){
     s0+=82.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i43<0.9988229274749756){
  if(i18<0.9980336427688599){
   s0+=446.0;
  } else {
   s1+=18.0;
  }
 } else {
  if(i5<0.0005483627319335938){
   if(i16<0.0017061628168448806){
    if(i47<0.0397258996963501){
     s0+=19.0;
     s1+=135.0;
    } else {
     s0+=567.0;
     s1+=105.0;
    }
   } else {
    if(i64<0.00426030158996582){
     s0+=172.0;
     s1+=2197.0;
    } else {
     s0+=438.0;
     s1+=968.0;
    }
   }
  } else {
   if(i4<5.716085433959961e-05){
    if(i31<0.01799950562417507){
     s0+=78.0;
     s1+=252.0;
    } else {
     s0+=10.0;
     s1+=803.0;
    }
   } else {
    if(i41<0.008459990844130516){
     s0+=40.0;
     s1+=3195.0;
    } else {
     s0+=1.0;
     s1+=6500.0;
    }
   }
  }
 }
}
if(i1<0.08395597338676453){
 if(i14<1.8417835235595703e-05){
  if(i61<-0.0012197792530059814){
   if(i30<1.1860926151275635){
    if(i4<-1.8030405044555664e-05){
     s0+=1413.0;
     s1+=218.0;
    } else {
     s0+=574.0;
     s1+=577.0;
    }
   } else {
    if(i39<1.0754566192626953){
     s0+=27.0;
     s1+=24.0;
    } else {
     s0+=3803.0;
     s1+=107.0;
    }
   }
  } else {
   if(i11<1.0459762811660767){
    if(i9<1.0099321603775024){
     s0+=56714.0;
     s1+=262.0;
    } else {
     s0+=15.0;
     s1+=12.0;
    }
   } else {
    if(i20<0.021649682894349098){
     s0+=4481.0;
     s1+=382.0;
    } else {
     s0+=560.0;
     s1+=372.0;
    }
   }
  }
 } else {
  if(i21<1.001616358757019){
   if(i53<0.012904767878353596){
    if(i40<0.00014597809058614075){
     s0+=611.0;
     s1+=127.0;
    } else {
     s0+=653.0;
     s1+=3.0;
    }
   } else {
    if(i55<1.0004611015319824){
     s0+=19.0;
     s1+=151.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   }
  } else {
   if(i45<0.0002305745438206941){
    s0+=57.0;
   } else {
    if(i37<1.021051049232483){
     s0+=47.0;
     s1+=759.0;
    } else {
     s0+=22.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985276460647583){
  if(i40<0.00018563203047960997){
   if(i36<-1.0074065357912332e-05){
    if(i44<0.0012859473936259747){
     s0+=15.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=718.0;
   }
  } else {
   if(i77<-0.0029261410236358643){
    s0+=21.0;
   } else {
    if(i78<0.06310649961233139){
     s0+=2.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i47<0.04342234134674072){
   if(i3<1.0006821155548096){
    if(i54<0.00021301759989000857){
     s0+=21.0;
     s1+=42.0;
    } else {
     s0+=37.0;
     s1+=1333.0;
    }
   } else {
    if(i12<0.0013509392738342285){
     s0+=23.0;
     s1+=2023.0;
    } else {
     s1+=4740.0;
    }
   }
  } else {
   if(i12<0.0004970431327819824){
    if(i20<0.02969801053404808){
     s0+=960.0;
     s1+=360.0;
    } else {
     s0+=192.0;
     s1+=1330.0;
    }
   } else {
    if(i8<-2.4452725483570248e-05){
     s0+=35.0;
     s1+=4286.0;
    } else {
     s0+=44.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i21<1.0039026737213135){
 if(i0<0.08414876461029053){
  if(i58<0.0017443476244807243){
   if(i17<1.0485899448394775){
    if(i0<0.07875481247901917){
     s0+=54070.0;
     s1+=182.0;
    } else {
     s0+=159.0;
     s1+=32.0;
    }
   } else {
    if(i0<0.06272530555725098){
     s0+=7630.0;
     s1+=374.0;
    } else {
     s0+=1275.0;
     s1+=535.0;
    }
   }
  } else {
   if(i74<-2.4872924768715166e-06){
    if(i50<0.034906357526779175){
     s0+=28.0;
     s1+=137.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i10<-0.000398099422454834){
     s0+=1524.0;
     s1+=13.0;
    } else {
     s0+=4132.0;
     s1+=981.0;
    }
   }
  }
 } else {
  if(i20<0.026592878624796867){
   if(i69<-0.004374686628580093){
    if(i8<-1.8346347133046947e-05){
     s0+=307.0;
     s1+=219.0;
    } else {
     s0+=458.0;
     s1+=26.0;
    }
   } else {
    if(i5<-0.0006667673587799072){
     s0+=133.0;
     s1+=22.0;
    } else {
     s0+=126.0;
     s1+=916.0;
    }
   }
  } else {
   if(i55<0.9995567202568054){
    if(i36<-5.40362270839978e-06){
     s0+=3.0;
     s1+=147.0;
    } else {
     s0+=171.0;
    }
   } else {
    if(i31<0.023142114281654358){
     s0+=213.0;
     s1+=839.0;
    } else {
     s0+=53.0;
     s1+=2669.0;
    }
   }
  }
 }
} else {
 if(i10<0.00042110681533813477){
  if(i6<0.053947776556015015){
   if(i9<1.0085331201553345){
    if(i1<0.06374382972717285){
     s0+=457.0;
     s1+=13.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i45<0.0013154954649508){
     s0+=24.0;
     s1+=135.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.09382349252700806){
    if(i41<0.0010313584934920073){
     s0+=2.0;
     s1+=43.0;
    } else {
     s0+=71.0;
     s1+=11.0;
    }
   } else {
    if(i55<0.9999620914459229){
     s1+=843.0;
    } else {
     s0+=21.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i26<0.0001696673862170428){
   if(i49<0.0013170641614124179){
    s1+=1.0;
   } else {
    s0+=32.0;
   }
  } else {
   if(i3<1.0040812492370605){
    if(i67<0.0004278854466974735){
     s0+=45.0;
     s1+=122.0;
    } else {
     s0+=5.0;
     s1+=394.0;
    }
   } else {
    if(i32<0.996715784072876){
     s0+=28.0;
     s1+=594.0;
    } else {
     s0+=1.0;
     s1+=7903.0;
    }
   }
  }
 }
}
if(i2<0.07866418361663818){
 if(i21<1.004508376121521){
  if(i7<1.0410068035125732){
   if(i26<0.0002759240160230547){
    if(i58<0.0015911435475572944){
     s0+=50468.0;
     s1+=155.0;
    } else {
     s0+=519.0;
     s1+=56.0;
    }
   } else {
    if(i39<1.178917407989502){
     s0+=5631.0;
     s1+=1005.0;
    } else {
     s0+=6682.0;
     s1+=67.0;
    }
   }
  } else {
   if(i16<0.004306777846068144){
    if(i20<0.015160748735070229){
     s0+=3416.0;
     s1+=145.0;
    } else {
     s0+=1388.0;
     s1+=403.0;
    }
   } else {
    if(i64<0.00018066167831420898){
     s0+=326.0;
     s1+=522.0;
    } else {
     s0+=537.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i10<0.0004139542579650879){
   if(i49<0.0008715292206034064){
    s1+=42.0;
   } else {
    if(i53<0.009722704067826271){
     s0+=431.0;
    } else {
     s0+=16.0;
     s1+=19.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    s1+=675.0;
   } else {
    if(i61<-0.0022389590740203857){
     s0+=5.0;
     s1+=130.0;
    } else {
     s0+=59.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i23<1.0117841958999634){
  if(i8<-6.460102667915635e-06){
   if(i52<0.004080474376678467){
    if(i18<0.9980349540710449){
     s0+=53.0;
     s1+=1.0;
    } else {
     s0+=150.0;
     s1+=3179.0;
    }
   } else {
    if(i70<0.10149986296892166){
     s0+=420.0;
     s1+=439.0;
    } else {
     s0+=56.0;
     s1+=703.0;
    }
   }
  } else {
   if(i14<2.384185791015625e-05){
    if(i37<0.9760137796401978){
     s0+=46.0;
     s1+=56.0;
    } else {
     s0+=685.0;
     s1+=89.0;
    }
   } else {
    if(i23<0.9830049276351929){
     s0+=1.0;
    } else {
     s1+=30.0;
    }
   }
  }
 } else {
  if(i67<0.00020621178555302322){
   if(i21<1.0024983882904053){
    if(i12<0.0008279085159301758){
     s0+=199.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i52<0.003972232341766357){
     s1+=284.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   }
  } else {
   if(i54<0.0008978013647720218){
    if(i3<1.0018892288208008){
     s0+=70.0;
     s1+=40.0;
    } else {
     s0+=6.0;
     s1+=506.0;
    }
   } else {
    if(i38<-0.0002790689468383789){
     s0+=25.0;
     s1+=15.0;
    } else {
     s0+=26.0;
     s1+=8299.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i2<0.07766455411911011){
  if(i5<0.0006022751331329346){
   if(i17<1.0451585054397583){
    if(i51<-0.00612369179725647){
     s0+=772.0;
     s1+=55.0;
    } else {
     s0+=53268.0;
     s1+=154.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=3971.0;
     s1+=1185.0;
    } else {
     s0+=10130.0;
     s1+=388.0;
    }
   }
  } else {
   if(i41<0.00045460223918780684){
    s0+=74.0;
   } else {
    if(i52<0.00209808349609375){
     s0+=80.0;
     s1+=461.0;
    } else {
     s0+=44.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i8<-9.652070730226114e-06){
   if(i10<-0.00041237473487854004){
    if(i65<1.0011754035949707){
     s0+=80.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i65<1.0052322149276733){
     s0+=444.0;
     s1+=3531.0;
    } else {
     s0+=85.0;
     s1+=37.0;
    }
   }
  } else {
   if(i29<0.9771838188171387){
    if(i59<0.00014043955889064819){
     s0+=28.0;
     s1+=69.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i44<0.005389985628426075){
     s0+=748.0;
     s1+=80.0;
    } else {
     s0+=33.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i6<0.07171005010604858){
  if(i1<0.0704982578754425){
   if(i34<0.000744192861020565){
    if(i73<-3.2095979349833215e-06){
     s0+=4.0;
     s1+=267.0;
    } else {
     s0+=113.0;
     s1+=31.0;
    }
   } else {
    if(i8<-5.693433195119724e-05){
     s0+=25.0;
     s1+=110.0;
    } else {
     s0+=628.0;
     s1+=13.0;
    }
   }
  } else {
   if(i8<-3.0334078473970294e-05){
    if(i47<0.03506597876548767){
     s0+=26.0;
     s1+=1359.0;
    } else {
     s0+=18.0;
     s1+=33.0;
    }
   } else {
    if(i35<1.1750470399856567){
     s0+=6.0;
     s1+=40.0;
    } else {
     s0+=95.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i34<0.004914122633635998){
   if(i16<0.003487261012196541){
    if(i38<1.6242265701293945e-05){
     s0+=32.0;
     s1+=316.0;
    } else {
     s0+=300.0;
     s1+=204.0;
    }
   } else {
    if(i17<1.3033524751663208){
     s0+=15.0;
     s1+=1610.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i35<1.2592661380767822){
    if(i48<0.09009847044944763){
     s0+=22.0;
     s1+=303.0;
    } else {
     s0+=52.0;
     s1+=51.0;
    }
   } else {
    if(i12<0.00022792816162109375){
     s0+=4.0;
     s1+=506.0;
    } else {
     s1+=6254.0;
    }
   }
  }
 }
}
if(i3<1.002413034439087){
 if(i2<0.08135673403739929){
  if(i50<-0.027895241975784302){
   if(i38<-3.579258918762207e-05){
    if(i75<-0.003687351942062378){
     s0+=353.0;
     s1+=67.0;
    } else {
     s0+=956.0;
     s1+=20.0;
    }
   } else {
    if(i65<0.9999029040336609){
     s0+=136.0;
     s1+=304.0;
    } else {
     s0+=1060.0;
     s1+=281.0;
    }
   }
  } else {
   if(i0<0.06984469294548035){
    if(i60<-0.0022155344486236572){
     s0+=4461.0;
     s1+=474.0;
    } else {
     s0+=60500.0;
     s1+=507.0;
    }
   } else {
    if(i20<0.01522032730281353){
     s0+=1186.0;
     s1+=136.0;
    } else {
     s0+=491.0;
     s1+=409.0;
    }
   }
  }
 } else {
  if(i34<0.0005143588641658425){
   if(i18<1.0004453659057617){
    if(i34<0.00044936328777112067){
     s0+=320.0;
     s1+=4.0;
    } else {
     s0+=90.0;
     s1+=39.0;
    }
   } else {
    if(i40<2.081251295749098e-06){
     s0+=4.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i14<-1.564621925354004e-05){
    if(i54<0.0002730334526859224){
     s0+=3.0;
     s1+=4.0;
    } else {
     s0+=259.0;
     s1+=5.0;
    }
   } else {
    if(i20<0.023177877068519592){
     s0+=599.0;
     s1+=903.0;
    } else {
     s0+=270.0;
     s1+=2547.0;
    }
   }
  }
 }
} else {
 if(i3<1.0041425228118896){
  if(i1<0.08456242084503174){
   if(i36<-1.466379762860015e-05){
    if(i30<1.4786540269851685){
     s0+=12.0;
     s1+=293.0;
    } else {
     s0+=70.0;
     s1+=42.0;
    }
   } else {
    if(i42<1.1658520698547363){
     s0+=14.0;
     s1+=27.0;
    } else {
     s0+=199.0;
     s1+=1.0;
    }
   }
  } else {
   if(i16<0.00235124584287405){
    if(i20<0.04794429615139961){
     s0+=27.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.12669983506202698){
     s0+=38.0;
     s1+=270.0;
    } else {
     s0+=2.0;
     s1+=1002.0;
    }
   }
  }
 } else {
  if(i12<-0.0030776262283325195){
   if(i14<6.657838821411133e-05){
    s0+=9.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i1<0.009039878845214844){
    if(i53<0.013433555141091347){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   } else {
    if(i67<0.00019459004397504032){
     s0+=15.0;
     s1+=280.0;
    } else {
     s0+=16.0;
     s1+=9475.0;
    }
   }
  }
 }
}
if(i2<0.0782996118068695){
 if(i5<0.0006022751331329346){
  if(i68<0.018550656735897064){
   if(i57<1.008448839187622){
    if(i23<1.0068480968475342){
     s0+=50621.0;
     s1+=260.0;
    } else {
     s0+=21.0;
     s1+=43.0;
    }
   } else {
    if(i32<1.0050157308578491){
     s0+=579.0;
     s1+=42.0;
    } else {
     s0+=74.0;
     s1+=147.0;
    }
   }
  } else {
   if(i13<0.9898261427879333){
    if(i54<0.006539228837937117){
     s0+=10231.0;
     s1+=191.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   } else {
    if(i35<1.1047927141189575){
     s0+=3006.0;
     s1+=1223.0;
    } else {
     s0+=4336.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i8<-4.3521460611373186e-05){
   if(i21<1.0017423629760742){
    if(i9<0.9756954908370972){
     s1+=78.0;
    } else {
     s0+=105.0;
     s1+=41.0;
    }
   } else {
    if(i30<1.5682398080825806){
     s0+=1.0;
     s1+=859.0;
    } else {
     s0+=16.0;
     s1+=30.0;
    }
   }
  } else {
   if(i14<2.7298927307128906e-05){
    if(i54<0.0017996953101828694){
     s0+=170.0;
     s1+=5.0;
    } else {
     s0+=27.0;
     s1+=35.0;
    }
   } else {
    if(i17<1.0461466312408447){
     s0+=9.0;
    } else {
     s1+=68.0;
    }
   }
  }
 }
} else {
 if(i15<4.9233436584472656e-05){
  if(i40<3.528123488649726e-05){
   if(i50<0.04037231206893921){
    if(i48<0.05620875954627991){
     s0+=21.0;
     s1+=189.0;
    } else {
     s0+=108.0;
     s1+=58.0;
    }
   } else {
    if(i33<0.2161870002746582){
     s0+=458.0;
     s1+=45.0;
    } else {
     s0+=47.0;
     s1+=41.0;
    }
   }
  } else {
   if(i43<0.9987008571624756){
    if(i46<0.7353053092956543){
     s0+=326.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i2<0.12270036339759827){
     s0+=585.0;
     s1+=985.0;
    } else {
     s0+=150.0;
     s1+=2527.0;
    }
   }
  }
 } else {
  if(i18<0.9989224672317505){
   if(i35<1.4944241046905518){
    s0+=28.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i36<-2.0084698917344213e-06){
    if(i5<0.000867694616317749){
     s0+=74.0;
     s1+=1407.0;
    } else {
     s1+=8596.0;
    }
   } else {
    if(i42<1.223331332206726){
     s1+=25.0;
    } else {
     s0+=58.0;
    }
   }
  }
 }
}
if(i9<1.0081498622894287){
 if(i5<0.0006021559238433838){
  if(i61<-0.0013577640056610107){
   if(i33<0.03323596715927124){
    if(i21<0.9937689304351807){
     s0+=2690.0;
     s1+=92.0;
    } else {
     s0+=2219.0;
     s1+=818.0;
    }
   } else {
    if(i0<0.07013580203056335){
     s0+=642.0;
     s1+=191.0;
    } else {
     s0+=263.0;
     s1+=562.0;
    }
   }
  } else {
   if(i44<0.00029469607397913933){
    if(i43<1.0003769397735596){
     s0+=34065.0;
    } else {
     s0+=1547.0;
     s1+=1.0;
    }
   } else {
    if(i37<1.0109162330627441){
     s0+=25999.0;
     s1+=1226.0;
    } else {
     s0+=2041.0;
     s1+=887.0;
    }
   }
  }
 } else {
  if(i17<1.0409044027328491){
   if(i70<0.015066087245941162){
    s0+=84.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i31<0.022032108157873154){
    if(i35<1.2527469396591187){
     s0+=28.0;
     s1+=469.0;
    } else {
     s0+=174.0;
     s1+=102.0;
    }
   } else {
    if(i0<0.04419705271720886){
     s0+=1.0;
     s1+=69.0;
    } else {
     s1+=1603.0;
    }
   }
  }
 }
} else {
 if(i4<3.3795833587646484e-05){
  if(i31<0.023189406841993332){
   if(i35<1.107304573059082){
    if(i36<-2.3913755740068154e-06){
     s0+=4.0;
     s1+=565.0;
    } else {
     s0+=70.0;
     s1+=31.0;
    }
   } else {
    if(i20<0.036274366080760956){
     s0+=850.0;
     s1+=217.0;
    } else {
     s0+=31.0;
     s1+=145.0;
    }
   }
  } else {
   if(i38<-0.00012755393981933594){
    if(i3<0.9985482692718506){
     s0+=90.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i18<1.0008002519607544){
     s0+=18.0;
     s1+=523.0;
    } else {
     s0+=70.0;
     s1+=170.0;
    }
   }
  }
 } else {
  if(i1<0.05929875373840332){
   if(i60<0.001265883445739746){
    if(i12<0.0013306140899658203){
     s0+=33.0;
     s1+=40.0;
    } else {
     s0+=1.0;
     s1+=106.0;
    }
   } else {
    if(i67<0.00047787115909159184){
     s0+=63.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i14<1.901388168334961e-05){
    if(i49<0.0062200454995036125){
     s0+=81.0;
     s1+=512.0;
    } else {
     s0+=3.0;
     s1+=905.0;
    }
   } else {
    if(i3<1.0026943683624268){
     s0+=20.0;
     s1+=81.0;
    } else {
     s0+=18.0;
     s1+=7810.0;
    }
   }
  }
 }
}
if(i10<0.00043314695358276367){
 if(i7<1.0452277660369873){
  if(i1<0.08371159434318542){
   if(i46<0.02590617910027504){
    if(i25<1.0084855556488037){
     s0+=54406.0;
     s1+=425.0;
    } else {
     s0+=177.0;
     s1+=71.0;
    }
   } else {
    if(i41<0.0016952457372099161){
     s0+=2753.0;
     s1+=703.0;
    } else {
     s0+=6298.0;
     s1+=104.0;
    }
   }
  } else {
   if(i49<0.0004766466736327857){
    if(i38<9.369850158691406e-05){
     s0+=210.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i38<-0.00013002753257751465){
     s0+=127.0;
     s1+=16.0;
    } else {
     s0+=120.0;
     s1+=575.0;
    }
   }
  }
 } else {
  if(i0<0.09594878554344177){
   if(i20<0.021674644201993942){
    if(i4<1.150369644165039e-05){
     s0+=3010.0;
     s1+=222.0;
    } else {
     s0+=366.0;
     s1+=201.0;
    }
   } else {
    if(i5<-0.00039455294609069824){
     s0+=482.0;
     s1+=72.0;
    } else {
     s0+=369.0;
     s1+=435.0;
    }
   }
  } else {
   if(i47<0.05971577763557434){
    if(i10<-0.0004890561103820801){
     s0+=30.0;
    } else {
     s0+=59.0;
     s1+=2055.0;
    }
   } else {
    if(i2<0.30823078751564026){
     s0+=686.0;
     s1+=374.0;
    } else {
     s0+=64.0;
     s1+=618.0;
    }
   }
  }
 }
} else {
 if(i3<1.0018855333328247){
  if(i17<1.1205039024353027){
   if(i30<1.5682398080825806){
    if(i25<0.993209719657898){
     s0+=102.0;
     s1+=91.0;
    } else {
     s0+=687.0;
     s1+=88.0;
    }
   } else {
    s0+=459.0;
   }
  } else {
   if(i59<-0.0001720931031741202){
    if(i40<0.0004146361898165196){
     s0+=19.0;
     s1+=346.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i70<0.16434143483638763){
     s0+=215.0;
     s1+=82.0;
    } else {
     s0+=2.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i8<-7.806523353792727e-05){
   if(i0<0.035895735025405884){
    if(i76<5.729577605961822e-05){
     s0+=23.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=84.0;
    }
   } else {
    if(i40<9.481240704189986e-05){
     s0+=2.0;
     s1+=7446.0;
    } else {
     s0+=88.0;
     s1+=2041.0;
    }
   }
  } else {
   if(i31<0.006236376240849495){
    if(i8<-4.38583483628463e-05){
     s0+=46.0;
     s1+=200.0;
    } else {
     s0+=79.0;
     s1+=2.0;
    }
   } else {
    if(i42<1.2261788845062256){
     s0+=2.0;
     s1+=671.0;
    } else {
     s0+=78.0;
     s1+=260.0;
    }
   }
  }
 }
}
if(i4<3.5703182220458984e-05){
 if(i0<0.08225393295288086){
  if(i28<0.0002960833953693509){
   if(i61<-0.0027819573879241943){
    if(i10<-9.08970832824707e-05){
     s0+=71.0;
     s1+=5.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i22<1.0075284242630005){
     s0+=55212.0;
     s1+=341.0;
    } else {
     s0+=610.0;
     s1+=136.0;
    }
   }
  } else {
   if(i41<0.0019994275644421577){
    if(i1<0.063117116689682){
     s0+=3596.0;
     s1+=752.0;
    } else {
     s0+=652.0;
     s1+=516.0;
    }
   } else {
    if(i51<-0.01710096001625061){
     s0+=1615.0;
     s1+=192.0;
    } else {
     s0+=6748.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i62<0.03612470626831055){
   if(i43<0.9988045692443848){
    if(i18<0.9980413913726807){
     s0+=140.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i47<0.04154244065284729){
     s0+=35.0;
     s1+=1994.0;
    } else {
     s0+=335.0;
     s1+=728.0;
    }
   }
  } else {
   if(i0<0.23328867554664612){
    if(i59<-9.38876619329676e-05){
     s0+=421.0;
     s1+=287.0;
    } else {
     s0+=445.0;
     s1+=48.0;
    }
   } else {
    if(i10<-0.0003851652145385742){
     s0+=93.0;
    } else {
     s0+=59.0;
     s1+=397.0;
    }
   }
  }
 }
} else {
 if(i55<0.9993064403533936){
  s0+=403.0;
 } else {
  if(i16<0.0022366377525031567){
   if(i3<1.004619836807251){
    if(i76<8.785456884652376e-05){
     s0+=11.0;
     s1+=37.0;
    } else {
     s0+=166.0;
    }
   } else {
    s1+=147.0;
   }
  } else {
   if(i13<0.9995269179344177){
    if(i24<0.986556351184845){
     s0+=29.0;
     s1+=805.0;
    } else {
     s0+=173.0;
     s1+=521.0;
    }
   } else {
    if(i15<6.258487701416016e-06){
     s0+=61.0;
     s1+=381.0;
    } else {
     s0+=19.0;
     s1+=9901.0;
    }
   }
  }
 }
}
if(i0<0.08522835373878479){
 if(i11<1.0452215671539307){
  if(i39<1.0557184219360352){
   s0+=42530.0;
  } else {
   if(i44<0.0009477571584284306){
    if(i77<-0.0005319416522979736){
     s0+=359.0;
     s1+=559.0;
    } else {
     s0+=3695.0;
     s1+=240.0;
    }
   } else {
    if(i18<1.0021271705627441){
     s0+=15507.0;
     s1+=108.0;
    } else {
     s0+=180.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i12<0.0010965466499328613){
   if(i24<0.9904114603996277){
    if(i43<0.9994016885757446){
     s0+=458.0;
     s1+=9.0;
    } else {
     s0+=794.0;
     s1+=771.0;
    }
   } else {
    if(i35<1.1037919521331787){
     s0+=1841.0;
     s1+=714.0;
    } else {
     s0+=4296.0;
     s1+=217.0;
    }
   }
  } else {
   if(i73<-4.412799171404913e-06){
    if(i16<0.001095702638849616){
     s0+=1.0;
    } else {
     s1+=455.0;
    }
   } else {
    if(i39<1.145219087600708){
     s1+=51.0;
    } else {
     s0+=95.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i49<0.006298048421740532){
  if(i35<1.282500147819519){
   if(i8<-1.4173906492942479e-05){
    if(i47<0.05654561519622803){
     s0+=81.0;
     s1+=3237.0;
    } else {
     s0+=301.0;
     s1+=765.0;
    }
   } else {
    if(i48<0.059997886419296265){
     s0+=88.0;
     s1+=228.0;
    } else {
     s0+=545.0;
     s1+=138.0;
    }
   }
  } else {
   if(i74<-1.245535145244503e-06){
    if(i41<0.0032470389269292355){
     s0+=6.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i34<0.004935208708047867){
     s0+=332.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i17<1.0640453100204468){
   if(i37<0.9891658425331116){
    s1+=3.0;
   } else {
    if(i27<1.019646406173706){
     s1+=1.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i21<0.9994990825653076){
    if(i6<0.13325920701026917){
     s0+=52.0;
     s1+=271.0;
    } else {
     s0+=7.0;
     s1+=1093.0;
    }
   } else {
    if(i3<1.00577974319458){
     s0+=16.0;
     s1+=1307.0;
    } else {
     s0+=1.0;
     s1+=6713.0;
    }
   }
  }
 }
}
if(i14<1.996755599975586e-05){
 if(i23<1.0068753957748413){
  if(i17<1.0572319030761719){
   if(i17<1.0451585054397583){
    if(i77<-0.0007079243659973145){
     s0+=5794.0;
     s1+=187.0;
    } else {
     s0+=48053.0;
     s1+=68.0;
    }
   } else {
    if(i70<0.01513247936964035){
     s0+=3244.0;
     s1+=49.0;
    } else {
     s0+=1089.0;
     s1+=399.0;
    }
   }
  } else {
   if(i4<1.233816146850586e-05){
    if(i6<0.058646947145462036){
     s0+=7979.0;
     s1+=940.0;
    } else {
     s0+=1277.0;
     s1+=1305.0;
    }
   } else {
    if(i20<0.01583714783191681){
     s0+=170.0;
     s1+=97.0;
    } else {
     s0+=104.0;
     s1+=741.0;
    }
   }
  }
 } else {
  if(i55<0.9998632669448853){
   if(i1<0.06565457582473755){
    if(i64<-0.002835988998413086){
     s0+=34.0;
     s1+=37.0;
    } else {
     s0+=237.0;
     s1+=7.0;
    }
   } else {
    if(i34<0.0005051904008723795){
     s0+=32.0;
     s1+=31.0;
    } else {
     s0+=121.0;
     s1+=2131.0;
    }
   }
  } else {
   if(i8<-4.3536987504921854e-05){
    if(i16<0.002633044496178627){
     s0+=62.0;
     s1+=79.0;
    } else {
     s1+=348.0;
    }
   } else {
    if(i30<1.1386182308197021){
     s0+=6.0;
     s1+=142.0;
    } else {
     s0+=1364.0;
     s1+=131.0;
    }
   }
  }
 }
} else {
 if(i21<1.000481367111206){
  if(i2<0.10571888089179993){
   if(i11<1.1259114742279053){
    if(i17<1.079161524772644){
     s0+=732.0;
     s1+=34.0;
    } else {
     s0+=512.0;
     s1+=152.0;
    }
   } else {
    if(i16<0.006485025864094496){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=103.0;
    }
   }
  } else {
   if(i43<0.9969847202301025){
    s0+=8.0;
   } else {
    if(i17<1.1243008375167847){
     s0+=41.0;
     s1+=120.0;
    } else {
     s0+=4.0;
     s1+=769.0;
    }
   }
  }
 } else {
  if(i30<1.0759316682815552){
   s0+=48.0;
  } else {
   if(i12<3.713369369506836e-05){
    if(i20<0.019767187535762787){
     s0+=80.0;
     s1+=145.0;
    } else {
     s0+=24.0;
     s1+=672.0;
    }
   } else {
    if(i45<0.00020687899086624384){
     s0+=12.0;
    } else {
     s0+=16.0;
     s1+=8518.0;
    }
   }
  }
 }
}
if(i24<1.0107371807098389){
 if(i58<0.001997640822082758){
  if(i20<0.016878649592399597){
   if(i18<1.0016288757324219){
    if(i0<0.08474776148796082){
     s0+=56237.0;
     s1+=391.0;
    } else {
     s0+=243.0;
     s1+=180.0;
    }
   } else {
    if(i3<1.0024778842926025){
     s0+=353.0;
     s1+=41.0;
    } else {
     s0+=57.0;
     s1+=196.0;
    }
   }
  } else {
   if(i3<0.9984622597694397){
    if(i13<0.9900380373001099){
     s0+=5331.0;
     s1+=56.0;
    } else {
     s0+=985.0;
     s1+=263.0;
    }
   } else {
    if(i6<0.04635992646217346){
     s0+=623.0;
     s1+=300.0;
    } else {
     s0+=322.0;
     s1+=1179.0;
    }
   }
  }
 } else {
  if(i14<1.4483928680419922e-05){
   if(i18<0.9990760087966919){
    if(i31<0.05142918974161148){
     s0+=2191.0;
     s1+=145.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i0<0.0630752444267273){
     s0+=2264.0;
     s1+=509.0;
    } else {
     s0+=123.0;
     s1+=673.0;
    }
   }
  } else {
   if(i66<3.618857590481639e-05){
    if(i1<0.014842867851257324){
     s0+=97.0;
     s1+=60.0;
    } else {
     s0+=107.0;
     s1+=2309.0;
    }
   } else {
    if(i27<1.0539273023605347){
     s0+=206.0;
     s1+=45.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i13<1.0099999904632568){
  if(i1<0.0958966314792633){
   if(i39<1.0778207778930664){
    if(i7<1.033108115196228){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=213.0;
    }
   } else {
    if(i36<-1.940912989084609e-05){
     s0+=98.0;
     s1+=99.0;
    } else {
     s0+=1233.0;
     s1+=137.0;
    }
   }
  } else {
   if(i6<0.16907504200935364){
    if(i48<0.07121267914772034){
     s0+=54.0;
     s1+=817.0;
    } else {
     s0+=415.0;
     s1+=189.0;
    }
   } else {
    if(i34<0.0015989274252206087){
     s0+=91.0;
    } else {
     s0+=39.0;
     s1+=1418.0;
    }
   }
  }
 } else {
  if(i12<0.001147449016571045){
   if(i16<0.0030651683919131756){
    if(i20<0.06358028948307037){
     s0+=99.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=369.0;
   }
  } else {
   if(i2<0.049861639738082886){
    if(i59<-0.0005817408673465252){
     s0+=9.0;
     s1+=3.0;
    } else {
     s1+=38.0;
    }
   } else {
    s1+=7364.0;
   }
  }
 }
}
if(i4<3.653764724731445e-05){
 if(i1<0.08555245399475098){
  if(i26<0.0002813777537085116){
   if(i9<1.0099247694015503){
    if(i60<-0.004569888114929199){
     s1+=19.0;
    } else {
     s0+=52054.0;
     s1+=226.0;
    }
   } else {
    if(i30<1.1386182308197021){
     s1+=47.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i53<0.0059143477119505405){
    if(i41<0.00168383598793298){
     s0+=3925.0;
     s1+=863.0;
    } else {
     s0+=8362.0;
     s1+=53.0;
    }
   } else {
    if(i41<0.0020077163353562355){
     s0+=1512.0;
     s1+=738.0;
    } else {
     s0+=2706.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i38<-0.00013911724090576172){
   if(i36<-1.0307636330253445e-05){
    if(i0<0.08450749516487122){
     s0+=2.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i14<-1.7255544662475586e-05){
     s0+=584.0;
    } else {
     s0+=72.0;
     s1+=1.0;
    }
   }
  } else {
   if(i71<-0.01939644105732441){
    if(i8<-3.1035568099468946e-05){
     s0+=180.0;
     s1+=727.0;
    } else {
     s0+=572.0;
     s1+=205.0;
    }
   } else {
    if(i17<1.0452029705047607){
     s0+=71.0;
     s1+=19.0;
    } else {
     s0+=259.0;
     s1+=2325.0;
    }
   }
  }
 }
} else {
 if(i39<1.0577372312545776){
  s0+=352.0;
 } else {
  if(i5<0.000945746898651123){
   if(i30<1.2392117977142334){
    s1+=687.0;
   } else {
    if(i44<0.0064544277265667915){
     s0+=287.0;
     s1+=250.0;
    } else {
     s0+=37.0;
     s1+=689.0;
    }
   }
  } else {
   if(i9<1.0154021978378296){
    if(i31<0.019971905276179314){
     s0+=89.0;
     s1+=888.0;
    } else {
     s0+=2.0;
     s1+=1803.0;
    }
   } else {
    s1+=7275.0;
   }
  }
 }
}
if(i13<1.0056103467941284){
 if(i1<0.08502665162086487){
  if(i4<4.175305366516113e-05){
   if(i17<1.0451585054397583){
    if(i60<-0.002488553524017334){
     s0+=1387.0;
     s1+=110.0;
    } else {
     s0+=52411.0;
     s1+=130.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=3641.0;
     s1+=1240.0;
    } else {
     s0+=10598.0;
     s1+=505.0;
    }
   }
  } else {
   if(i51<-0.0032441318035125732){
    if(i68<0.14681778848171234){
     s0+=9.0;
     s1+=239.0;
    } else {
     s0+=46.0;
     s1+=105.0;
    }
   } else {
    if(i13<1.0002436637878418){
     s0+=264.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i19<0.9949153661727905){
   if(i10<-0.0004315376281738281){
    if(i44<0.007404753938317299){
     s0+=529.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   } else {
    if(i6<0.09621280431747437){
     s0+=45.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=129.0;
    }
   }
  } else {
   if(i0<0.11692237854003906){
    if(i8<-4.705869287136011e-06){
     s0+=554.0;
     s1+=995.0;
    } else {
     s0+=276.0;
     s1+=54.0;
    }
   } else {
    if(i48<0.09595337510108948){
     s0+=30.0;
     s1+=2260.0;
    } else {
     s0+=391.0;
     s1+=903.0;
    }
   }
  }
 }
} else {
 if(i21<1.0051950216293335){
  if(i16<0.0024820100516080856){
   if(i30<1.1386182308197021){
    if(i54<5.8758709201356396e-05){
     s0+=7.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i40<3.164858935633674e-05){
     s0+=667.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   }
  } else {
   if(i14<-1.3738870620727539e-05){
    s0+=22.0;
   } else {
    if(i70<0.05338049679994583){
     s0+=80.0;
     s1+=710.0;
    } else {
     s0+=5.0;
     s1+=973.0;
    }
   }
  }
 } else {
  if(i26<0.00019104243256151676){
   if(i61<-0.0004944801330566406){
    s0+=81.0;
   } else {
    s1+=13.0;
   }
  } else {
   if(i15<0.00021499395370483398){
    if(i14<1.8894672393798828e-05){
     s0+=59.0;
     s1+=149.0;
    } else {
     s0+=1.0;
     s1+=623.0;
    }
   } else {
    s1+=7807.0;
   }
  }
 }
}
if(i27<1.0409057140350342){
 if(i5<0.0005701184272766113){
  if(i28<0.0002956066164188087){
   if(i57<1.0109268426895142){
    if(i0<0.07829615473747253){
     s0+=55402.0;
     s1+=371.0;
    } else {
     s0+=166.0;
     s1+=132.0;
    }
   } else {
    if(i1<0.06656843423843384){
     s0+=197.0;
     s1+=28.0;
    } else {
     s0+=23.0;
     s1+=114.0;
    }
   }
  } else {
   if(i30<1.255998969078064){
    if(i19<1.0003979206085205){
     s0+=3816.0;
     s1+=1143.0;
    } else {
     s0+=162.0;
     s1+=591.0;
    }
   } else {
    if(i9<1.0106092691421509){
     s0+=6674.0;
     s1+=375.0;
    } else {
     s0+=40.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i16<0.0018436962272971869){
   if(i40<-3.599144474719651e-05){
    s1+=17.0;
   } else {
    if(i76<5.9510741266421974e-05){
     s1+=5.0;
    } else {
     s0+=152.0;
    }
   }
  } else {
   if(i19<0.9976269602775574){
    if(i72<0.9985084533691406){
     s0+=34.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i36<-1.1403164535295218e-05){
     s0+=49.0;
     s1+=2048.0;
    } else {
     s0+=14.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i8<-3.00606570817763e-05){
  if(i0<0.09149739146232605){
   if(i49<0.0013424225617200136){
    if(i31<0.0019067127723246813){
     s0+=24.0;
     s1+=6.0;
    } else {
     s1+=359.0;
    }
   } else {
    if(i52<0.0007001757621765137){
     s0+=87.0;
     s1+=211.0;
    } else {
     s0+=607.0;
     s1+=57.0;
    }
   }
  } else {
   if(i31<0.023699529469013214){
    if(i77<0.00021129846572875977){
     s0+=163.0;
     s1+=405.0;
    } else {
     s0+=67.0;
     s1+=1792.0;
    }
   } else {
    if(i15<-0.0006555914878845215){
     s0+=13.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=8806.0;
    }
   }
  }
 } else {
  if(i20<0.035251788794994354){
   if(i20<0.017065394669771194){
    if(i70<0.10179175436496735){
     s0+=1949.0;
     s1+=79.0;
    } else {
     s0+=43.0;
     s1+=17.0;
    }
   } else {
    if(i0<0.09176769852638245){
     s0+=623.0;
     s1+=64.0;
    } else {
     s0+=282.0;
     s1+=183.0;
    }
   }
  } else {
   if(i38<-0.0001361072063446045){
    s0+=244.0;
   } else {
    if(i18<0.9996742606163025){
     s0+=15.0;
     s1+=196.0;
    } else {
     s0+=123.0;
     s1+=171.0;
    }
   }
  }
 }
}
if(i57<1.0100572109222412){
 if(i5<0.0005710422992706299){
  if(i20<0.021963097155094147){
   if(i28<0.00031372648663818836){
    if(i17<1.0494996309280396){
     s0+=50339.0;
     s1+=131.0;
    } else {
     s0+=4748.0;
     s1+=281.0;
    }
   } else {
    if(i34<0.0003223650564905256){
     s0+=1772.0;
    } else {
     s0+=4593.0;
     s1+=907.0;
    }
   }
  } else {
   if(i1<0.07542979717254639){
    if(i3<0.9974067211151123){
     s0+=5010.0;
     s1+=101.0;
    } else {
     s0+=942.0;
     s1+=606.0;
    }
   } else {
    if(i62<0.025781095027923584){
     s0+=81.0;
     s1+=1093.0;
    } else {
     s0+=373.0;
     s1+=371.0;
    }
   }
  }
 } else {
  if(i35<1.0614044666290283){
   s0+=110.0;
  } else {
   if(i16<0.001957670785486698){
    if(i51<-0.00823262333869934){
     s1+=11.0;
    } else {
     s0+=58.0;
     s1+=2.0;
    }
   } else {
    if(i2<0.016843050718307495){
     s0+=45.0;
     s1+=79.0;
    } else {
     s0+=128.0;
     s1+=2772.0;
    }
   }
  }
 }
} else {
 if(i3<1.0020079612731934){
  if(i2<0.09207308292388916){
   if(i45<0.0011143859010189772){
    if(i0<0.07156318426132202){
     s0+=347.0;
     s1+=112.0;
    } else {
     s0+=62.0;
     s1+=232.0;
    }
   } else {
    if(i45<0.001954678911715746){
     s0+=334.0;
     s1+=31.0;
    } else {
     s0+=1208.0;
     s1+=8.0;
    }
   }
  } else {
   if(i47<0.059877753257751465){
    if(i37<1.0579016208648682){
     s0+=38.0;
     s1+=880.0;
    } else {
     s0+=27.0;
     s1+=70.0;
    }
   } else {
    if(i76<9.911465167533606e-05){
     s0+=477.0;
     s1+=198.0;
    } else {
     s0+=71.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i8<-4.379593883641064e-05){
   if(i13<1.0007452964782715){
    if(i0<0.1589452028274536){
     s0+=50.0;
     s1+=6.0;
    } else {
     s1+=200.0;
    }
   } else {
    if(i9<1.0146727561950684){
     s0+=47.0;
     s1+=1162.0;
    } else {
     s0+=1.0;
     s1+=7442.0;
    }
   }
  } else {
   if(i74<-3.0744229206902673e-06){
    if(i36<-1.1169481695105787e-05){
     s1+=79.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i44<0.0013763601891696453){
     s0+=2.0;
     s1+=51.0;
    } else {
     s0+=147.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i10<0.00043386220932006836){
 if(i2<0.08318522572517395){
  if(i28<0.00029559689573943615){
   if(i0<0.08444827795028687){
    if(i11<1.0436501502990723){
     s0+=53169.0;
     s1+=263.0;
    } else {
     s0+=2740.0;
     s1+=263.0;
    }
   } else {
    if(i62<0.04447302222251892){
     s0+=1.0;
     s1+=61.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i21<0.9935601353645325){
    if(i53<0.012386944144964218){
     s0+=5521.0;
     s1+=28.0;
    } else {
     s0+=693.0;
     s1+=59.0;
    }
   } else {
    if(i39<1.1476502418518066){
     s0+=3223.0;
     s1+=1355.0;
    } else {
     s0+=2529.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i36<3.2094144444272388e-06){
   if(i55<0.999127984046936){
    s0+=166.0;
   } else {
    if(i62<0.04051101207733154){
     s0+=298.0;
     s1+=3107.0;
    } else {
     s0+=474.0;
     s1+=738.0;
    }
   }
  } else {
   if(i28<0.0018310368759557605){
    if(i0<0.09895309805870056){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i41<0.0020295470021665096){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=253.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i1<0.0834135115146637){
  if(i53<0.00835815817117691){
   if(i21<1.001023530960083){
    if(i7<1.0146617889404297){
     s0+=36.0;
     s1+=22.0;
    } else {
     s0+=1172.0;
     s1+=47.0;
    }
   } else {
    if(i54<0.0009805555455386639){
     s0+=136.0;
     s1+=18.0;
    } else {
     s0+=52.0;
     s1+=379.0;
    }
   }
  } else {
   if(i51<0.001067131757736206){
    if(i5<0.00030219554901123047){
     s0+=74.0;
     s1+=47.0;
    } else {
     s0+=23.0;
     s1+=588.0;
    }
   } else {
    if(i60<0.006042599678039551){
     s0+=11.0;
     s1+=23.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i15<-7.200241088867188e-05){
   if(i0<0.11796551942825317){
    if(i51<0.011056274175643921){
     s0+=21.0;
     s1+=153.0;
    } else {
     s0+=217.0;
     s1+=12.0;
    }
   } else {
    if(i54<0.001137483399361372){
     s0+=37.0;
     s1+=31.0;
    } else {
     s0+=23.0;
     s1+=842.0;
    }
   }
  } else {
   if(i32<1.003338098526001){
    if(i63<0.0002078144607366994){
     s0+=30.0;
     s1+=66.0;
    } else {
     s0+=13.0;
     s1+=1086.0;
    }
   } else {
    if(i12<0.00021439790725708008){
     s0+=8.0;
     s1+=197.0;
    } else {
     s0+=1.0;
     s1+=7754.0;
    }
   }
  }
 }
}
if(i6<0.07199648022651672){
 if(i4<4.178285598754883e-05){
  if(i0<0.0789894163608551){
   if(i26<0.000315917597617954){
    if(i57<1.0083684921264648){
     s0+=53320.0;
     s1+=229.0;
    } else {
     s0+=422.0;
     s1+=135.0;
    }
   } else {
    if(i45<0.0018437794642522931){
     s0+=5359.0;
     s1+=1311.0;
    } else {
     s0+=9260.0;
     s1+=315.0;
    }
   }
  } else {
   if(i3<0.9959858655929565){
    if(i34<0.0068063633516430855){
     s0+=110.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   } else {
    if(i33<0.058416932821273804){
     s0+=21.0;
     s1+=759.0;
    } else {
     s0+=54.0;
     s1+=83.0;
    }
   }
  }
 } else {
  if(i16<0.0023943819105625153){
   if(i19<1.0074200630187988){
    if(i52<-0.0014572739601135254){
     s0+=14.0;
     s1+=13.0;
    } else {
     s0+=266.0;
     s1+=12.0;
    }
   } else {
    s1+=38.0;
   }
  } else {
   if(i18<0.9967838525772095){
    s0+=79.0;
   } else {
    if(i64<0.002815544605255127){
     s0+=91.0;
     s1+=1775.0;
    } else {
     s0+=35.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i31<0.023419316858053207){
  if(i62<0.041695237159729004){
   if(i4<4.407763481140137e-05){
    if(i51<0.013710886240005493){
     s0+=205.0;
     s1+=954.0;
    } else {
     s0+=507.0;
     s1+=228.0;
    }
   } else {
    if(i21<1.007716417312622){
     s0+=53.0;
     s1+=269.0;
    } else {
     s0+=9.0;
     s1+=1144.0;
    }
   }
  } else {
   if(i23<1.0044080018997192){
    if(i1<0.19422763586044312){
     s0+=605.0;
     s1+=72.0;
    } else {
     s0+=37.0;
     s1+=69.0;
    }
   } else {
    if(i52<0.007561385631561279){
     s0+=45.0;
     s1+=245.0;
    } else {
     s0+=126.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i73<1.5302367728509125e-06){
   if(i8<-1.5366749721579254e-05){
    if(i17<1.0638914108276367){
     s0+=38.0;
     s1+=5.0;
    } else {
     s0+=50.0;
     s1+=9411.0;
    }
   } else {
    if(i67<0.00032984960125759244){
     s0+=105.0;
     s1+=29.0;
    } else {
     s0+=34.0;
     s1+=87.0;
    }
   }
  } else {
   if(i34<0.0033046710304915905){
    s0+=151.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i25<1.0080127716064453){
  if(i0<0.08416244387626648){
   if(i17<1.0451585054397583){
    if(i61<-0.0013805031776428223){
     s0+=1619.0;
     s1+=118.0;
    } else {
     s0+=52254.0;
     s1+=74.0;
    }
   } else {
    if(i39<1.1031841039657593){
     s0+=5040.0;
     s1+=1147.0;
    } else {
     s0+=7881.0;
     s1+=373.0;
    }
   }
  } else {
   if(i62<0.036730170249938965){
    if(i19<0.994661808013916){
     s0+=115.0;
     s1+=41.0;
    } else {
     s0+=105.0;
     s1+=1366.0;
    }
   } else {
    if(i46<0.13401462137699127){
     s0+=591.0;
     s1+=195.0;
    } else {
     s0+=97.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i1<0.0797039270401001){
   if(i35<1.1040980815887451){
    if(i36<-3.244128492951859e-06){
     s0+=24.0;
     s1+=272.0;
    } else {
     s0+=321.0;
     s1+=33.0;
    }
   } else {
    if(i8<-6.699150253552943e-05){
     s0+=8.0;
     s1+=41.0;
    } else {
     s0+=1523.0;
     s1+=17.0;
    }
   }
  } else {
   if(i51<0.01632404327392578){
    if(i73<1.3337721611605957e-06){
     s0+=87.0;
     s1+=1058.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i49<0.0038174211513251066){
     s0+=442.0;
     s1+=129.0;
    } else {
     s0+=116.0;
     s1+=493.0;
    }
   }
  }
 }
} else {
 if(i55<0.9992470741271973){
  s0+=329.0;
 } else {
  if(i2<0.05853426456451416){
   if(i73<-5.026173312216997e-06){
    if(i15<-9.834766387939453e-06){
     s0+=127.0;
     s1+=171.0;
    } else {
     s0+=5.0;
     s1+=444.0;
    }
   } else {
    if(i34<0.001093146507628262){
     s1+=17.0;
    } else {
     s0+=115.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<-6.955042772460729e-05){
    if(i0<0.1385507881641388){
     s0+=77.0;
     s1+=1440.0;
    } else {
     s0+=4.0;
     s1+=8845.0;
    }
   } else {
    if(i41<0.0022848621010780334){
     s0+=9.0;
     s1+=464.0;
    } else {
     s0+=109.0;
     s1+=304.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i19<1.0031683444976807){
  if(i17<1.0495078563690186){
   if(i63<0.00027157209115102887){
    if(i57<1.0112076997756958){
     s0+=50878.0;
     s1+=113.0;
    } else {
     s0+=46.0;
     s1+=16.0;
    }
   } else {
    if(i15<-0.00020113587379455566){
     s0+=4329.0;
     s1+=42.0;
    } else {
     s0+=1147.0;
     s1+=260.0;
    }
   }
  } else {
   if(i31<0.04662739485502243){
    if(i35<1.103413462638855){
     s0+=2757.0;
     s1+=1562.0;
    } else {
     s0+=9494.0;
     s1+=1094.0;
    }
   } else {
    if(i20<0.022300157696008682){
     s0+=52.0;
     s1+=19.0;
    } else {
     s0+=17.0;
     s1+=515.0;
    }
   }
  }
 } else {
  if(i11<1.0415995121002197){
   if(i14<1.1622905731201172e-05){
    if(i3<1.0013597011566162){
     s0+=425.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i4<2.3663043975830078e-05){
     s0+=154.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=146.0;
    }
   }
  } else {
   if(i6<0.07341623306274414){
    if(i35<1.1820628643035889){
     s0+=20.0;
     s1+=242.0;
    } else {
     s0+=299.0;
     s1+=337.0;
    }
   } else {
    if(i0<0.1258956789970398){
     s0+=60.0;
     s1+=288.0;
    } else {
     s0+=3.0;
     s1+=1443.0;
    }
   }
  }
 }
} else {
 if(i0<0.08275490999221802){
  if(i44<0.0011304793879389763){
   if(i14<6.9141387939453125e-06){
    if(i57<1.0219917297363281){
     s0+=15.0;
     s1+=84.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i55<0.9994458556175232){
     s0+=2.0;
    } else {
     s1+=433.0;
    }
   }
  } else {
   if(i5<0.0009474754333496094){
    if(i16<0.006897035054862499){
     s0+=957.0;
     s1+=61.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   } else {
    if(i61<0.004261910915374756){
     s1+=97.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i4<3.49581241607666e-05){
   if(i69<-0.009131550788879395){
    if(i16<0.005859961733222008){
     s0+=278.0;
     s1+=77.0;
    } else {
     s1+=239.0;
    }
   } else {
    if(i78<0.48745208978652954){
     s0+=66.0;
     s1+=1041.0;
    } else {
     s0+=38.0;
     s1+=78.0;
    }
   }
  } else {
   if(i77<0.0014657974243164062){
    if(i12<0.0014235973358154297){
     s0+=65.0;
     s1+=853.0;
    } else {
     s1+=1835.0;
    }
   } else {
    if(i32<1.0096845626831055){
     s0+=3.0;
     s1+=109.0;
    } else {
     s0+=1.0;
     s1+=6095.0;
    }
   }
  }
 }
}
if(i27<1.0406770706176758){
 if(i5<0.0006011426448822021){
  if(i2<0.0777127742767334){
   if(i26<0.0002816389314830303){
    if(i63<0.0002806110423989594){
     s0+=51162.0;
     s1+=166.0;
    } else {
     s0+=1027.0;
     s1+=92.0;
    }
   } else {
    if(i40<9.321393736172467e-05){
     s0+=7056.0;
     s1+=1393.0;
    } else {
     s0+=7361.0;
     s1+=142.0;
    }
   }
  } else {
   if(i14<-1.3768672943115234e-05){
    if(i36<-9.034853064804338e-06){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=135.0;
    }
   } else {
    if(i17<1.049466609954834){
     s0+=67.0;
     s1+=26.0;
    } else {
     s0+=35.0;
     s1+=993.0;
    }
   }
  }
 } else {
  if(i76<0.0005149272619746625){
   if(i8<-4.328440627432428e-05){
    if(i72<1.0142271518707275){
     s0+=31.0;
     s1+=1782.0;
    } else {
     s0+=8.0;
     s1+=78.0;
    }
   } else {
    if(i12<0.0009223818778991699){
     s0+=9.0;
     s1+=111.0;
    } else {
     s0+=80.0;
     s1+=6.0;
    }
   }
  } else {
   s0+=71.0;
  }
 }
} else {
 if(i5<0.0004442930221557617){
  if(i70<0.13186971843242645){
   if(i30<1.255998969078064){
    if(i2<0.08919045329093933){
     s0+=1357.0;
     s1+=353.0;
    } else {
     s0+=317.0;
     s1+=958.0;
    }
   } else {
    if(i41<0.010475492104887962){
     s0+=2049.0;
     s1+=312.0;
    } else {
     s0+=63.0;
     s1+=177.0;
    }
   }
  } else {
   if(i31<0.04040255397558212){
    if(i16<0.00865987315773964){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=16.0;
    }
   } else {
    if(i26<0.0050763897597789764){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=571.0;
    }
   }
  }
 } else {
  if(i67<0.0004755979171022773){
   if(i16<0.003250425448641181){
    if(i3<1.0040026903152466){
     s0+=156.0;
     s1+=49.0;
    } else {
     s1+=208.0;
    }
   } else {
    if(i76<0.00014116900274530053){
     s0+=10.0;
     s1+=1743.0;
    } else {
     s0+=82.0;
     s1+=36.0;
    }
   }
  } else {
   if(i65<1.0045185089111328){
    if(i6<0.042165666818618774){
     s0+=26.0;
     s1+=103.0;
    } else {
     s0+=50.0;
     s1+=7649.0;
    }
   } else {
    if(i13<0.999423623085022){
     s0+=34.0;
     s1+=7.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
}
if(i25<1.0089921951293945){
 if(i6<0.08119150996208191){
  if(i5<0.0005979835987091064){
   if(i0<0.0842437744140625){
    if(i11<1.0398929119110107){
     s0+=58490.0;
     s1+=547.0;
    } else {
     s0+=8858.0;
     s1+=1280.0;
    }
   } else {
    if(i39<1.0672215223312378){
     s0+=114.0;
     s1+=6.0;
    } else {
     s0+=89.0;
     s1+=540.0;
    }
   }
  } else {
   if(i16<0.0018401882844045758){
    s0+=76.0;
   } else {
    if(i65<0.9942245483398438){
     s0+=19.0;
    } else {
     s0+=122.0;
     s1+=915.0;
    }
   }
  }
 } else {
  if(i43<0.9987756013870239){
   if(i24<1.0211772918701172){
    if(i3<0.9970239400863647){
     s0+=236.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i56<0.002565728034824133){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i47<0.055114924907684326){
    if(i0<0.09515279531478882){
     s0+=42.0;
     s1+=152.0;
    } else {
     s0+=2.0;
     s1+=1993.0;
    }
   } else {
    if(i59<-0.0002638091682456434){
     s0+=48.0;
     s1+=522.0;
    } else {
     s0+=469.0;
     s1+=373.0;
    }
   }
  }
 }
} else {
 if(i18<1.0016751289367676){
  if(i65<0.999618649482727){
   if(i1<0.0871056616306305){
    if(i35<1.1008371114730835){
     s0+=37.0;
     s1+=91.0;
    } else {
     s0+=328.0;
     s1+=36.0;
    }
   } else {
    if(i14<-1.6987323760986328e-05){
     s0+=87.0;
    } else {
     s0+=49.0;
     s1+=1853.0;
    }
   }
  } else {
   if(i36<-1.4192243725119624e-05){
    if(i0<0.08184266090393066){
     s0+=125.0;
     s1+=84.0;
    } else {
     s0+=20.0;
     s1+=519.0;
    }
   } else {
    if(i45<0.0007403078489005566){
     s0+=163.0;
     s1+=365.0;
    } else {
     s0+=1459.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i18<1.0032172203063965){
   if(i9<1.0166552066802979){
    if(i65<1.0016775131225586){
     s0+=51.0;
     s1+=548.0;
    } else {
     s0+=139.0;
     s1+=31.0;
    }
   } else {
    s1+=1324.0;
   }
  } else {
   if(i65<1.0048065185546875){
    s1+=5727.0;
   } else {
    if(i13<0.9996960163116455){
     s0+=6.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
}
if(i7<1.0452277660369873){
 if(i17<1.0486011505126953){
  if(i52<-0.0017419755458831787){
   if(i40<3.975172512582503e-05){
    if(i19<1.0010157823562622){
     s0+=468.0;
     s1+=7.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i74<4.628134774975479e-06){
     s0+=27.0;
     s1+=63.0;
    } else {
     s0+=218.0;
     s1+=27.0;
    }
   }
  } else {
   if(i60<-0.002239435911178589){
    if(i25<0.9783106446266174){
     s0+=635.0;
     s1+=9.0;
    } else {
     s0+=500.0;
     s1+=111.0;
    }
   } else {
    if(i43<1.0006401538848877){
     s0+=52318.0;
     s1+=82.0;
    } else {
     s0+=1731.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i18<1.0019232034683228){
   if(i0<0.06989789009094238){
    if(i35<1.1047927141189575){
     s0+=1959.0;
     s1+=662.0;
    } else {
     s0+=6896.0;
     s1+=147.0;
    }
   } else {
    if(i10<-0.0003669261932373047){
     s0+=96.0;
     s1+=10.0;
    } else {
     s0+=174.0;
     s1+=790.0;
    }
   }
  } else {
   if(i1<0.06429082155227661){
    if(i4<2.5391578674316406e-05){
     s0+=198.0;
     s1+=6.0;
    } else {
     s0+=27.0;
     s1+=191.0;
    }
   } else {
    if(i4<2.6464462280273438e-05){
     s0+=43.0;
     s1+=27.0;
    } else {
     s0+=2.0;
     s1+=486.0;
    }
   }
  }
 }
} else {
 if(i18<1.001615047454834){
  if(i4<1.1026859283447266e-05){
   if(i41<0.010450220666825771){
    if(i1<0.0924491286277771){
     s0+=3506.0;
     s1+=525.0;
    } else {
     s0+=784.0;
     s1+=1036.0;
    }
   } else {
    if(i34<0.01018283236771822){
     s0+=4.0;
     s1+=407.0;
    } else {
     s0+=42.0;
     s1+=6.0;
    }
   }
  } else {
   if(i44<0.006660242564976215){
    if(i16<0.0028966946993023157){
     s0+=659.0;
     s1+=436.0;
    } else {
     s0+=63.0;
     s1+=965.0;
    }
   } else {
    if(i42<1.274404764175415){
     s0+=12.0;
     s1+=7.0;
    } else {
     s0+=17.0;
     s1+=1433.0;
    }
   }
  }
 } else {
  if(i4<3.975629806518555e-05){
   if(i39<1.3386038541793823){
    if(i55<1.000556230545044){
     s0+=265.0;
     s1+=290.0;
    } else {
     s0+=209.0;
     s1+=2.0;
    }
   } else {
    if(i55<1.0004887580871582){
     s1+=92.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i4<7.420778274536133e-05){
    if(i11<1.122573733329773){
     s0+=162.0;
     s1+=400.0;
    } else {
     s1+=376.0;
    }
   } else {
    if(i22<0.9943029880523682){
     s0+=30.0;
     s1+=728.0;
    } else {
     s0+=28.0;
     s1+=7789.0;
    }
   }
  }
 }
}
if(i5<0.0005651116371154785){
 if(i2<0.08023786544799805){
  if(i11<1.0412344932556152){
   if(i77<-0.0004734992980957031){
    if(i17<1.0417436361312866){
     s0+=8056.0;
     s1+=91.0;
    } else {
     s0+=3324.0;
     s1+=396.0;
    }
   } else {
    if(i46<0.048408813774585724){
     s0+=48365.0;
     s1+=116.0;
    } else {
     s0+=24.0;
     s1+=20.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i40<1.2016695109196007e-05){
     s0+=1910.0;
     s1+=159.0;
    } else {
     s0+=1052.0;
     s1+=959.0;
    }
   } else {
    if(i67<0.0017313396092504263){
     s0+=6404.0;
     s1+=327.0;
    } else {
     s0+=10.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i47<0.052153319120407104){
   if(i76<0.0003278006333857775){
    if(i34<0.00044872204307466745){
     s0+=55.0;
     s1+=6.0;
    } else {
     s0+=138.0;
     s1+=2274.0;
    }
   } else {
    s0+=36.0;
   }
  } else {
   if(i8<-1.38188770506531e-05){
    if(i2<0.11909377574920654){
     s0+=323.0;
     s1+=135.0;
    } else {
     s0+=146.0;
     s1+=839.0;
    }
   } else {
    if(i56<0.004910935182124376){
     s0+=844.0;
     s1+=107.0;
    } else {
     s0+=4.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i17<1.0407118797302246){
  if(i16<0.005009997636079788){
   s0+=140.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i5<0.000945746898651123){
   if(i2<0.05852234363555908){
    if(i73<-4.34638059232384e-06){
     s0+=53.0;
     s1+=163.0;
    } else {
     s0+=90.0;
     s1+=3.0;
    }
   } else {
    if(i6<0.16539999842643738){
     s0+=119.0;
     s1+=667.0;
    } else {
     s1+=647.0;
    }
   }
  } else {
   if(i9<1.0045467615127563){
    if(i30<1.613681674003601){
     s0+=22.0;
     s1+=1280.0;
    } else {
     s0+=51.0;
     s1+=229.0;
    }
   } else {
    if(i13<1.0073511600494385){
     s0+=20.0;
     s1+=556.0;
    } else {
     s1+=8015.0;
    }
   }
  }
 }
}
if(i0<0.08281055092811584){
 if(i12<0.0014153122901916504){
  if(i51<-0.006169945001602173){
   if(i3<1.002376914024353){
    if(i1<0.022091448307037354){
     s0+=2442.0;
     s1+=189.0;
    } else {
     s0+=1179.0;
     s1+=649.0;
    }
   } else {
    if(i29<0.9971375465393066){
     s0+=20.0;
     s1+=280.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   }
  } else {
   if(i22<1.0073155164718628){
    if(i11<1.0401476621627808){
     s0+=57234.0;
     s1+=353.0;
    } else {
     s0+=6637.0;
     s1+=733.0;
    }
   } else {
    if(i39<1.0778207778930664){
     s0+=89.0;
     s1+=278.0;
    } else {
     s0+=1830.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i4<3.808736801147461e-05){
   if(i30<1.241927146911621){
    s1+=20.0;
   } else {
    s0+=26.0;
   }
  } else {
   if(i60<0.010330438613891602){
    s1+=407.0;
   } else {
    s0+=1.0;
   }
  }
 }
} else {
 if(i18<0.9985270500183105){
  if(i63<0.0011775658931583166){
   if(i73<-2.5011081561387982e-06){
    if(i76<0.00020436066552065313){
     s0+=7.0;
     s1+=10.0;
    } else {
     s0+=27.0;
    }
   } else {
    s0+=437.0;
   }
  } else {
   if(i55<0.9994038343429565){
    s0+=1.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i3<1.00185227394104){
   if(i64<0.0037200450897216797){
    if(i16<0.0017367787659168243){
     s0+=175.0;
     s1+=141.0;
    } else {
     s0+=120.0;
     s1+=1910.0;
    }
   } else {
    if(i0<0.1622457206249237){
     s0+=636.0;
     s1+=219.0;
    } else {
     s0+=156.0;
     s1+=907.0;
    }
   }
  } else {
   if(i8<-6.817097892053425e-05){
    if(i44<0.008836107328534126){
     s0+=52.0;
     s1+=3041.0;
    } else {
     s0+=2.0;
     s1+=7144.0;
    }
   } else {
    if(i50<0.08843496441841125){
     s0+=24.0;
     s1+=530.0;
    } else {
     s0+=50.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i8<-7.076778274495155e-05){
 if(i3<0.9988604784011841){
  if(i6<0.07820278406143188){
   if(i64<-0.0010185837745666504){
    if(i2<0.023696810007095337){
     s0+=114.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   } else {
    if(i3<0.996717095375061){
     s0+=572.0;
    } else {
     s0+=103.0;
     s1+=6.0;
    }
   }
  } else {
   if(i78<0.11123991012573242){
    if(i56<0.0017499499954283237){
     s0+=11.0;
     s1+=2.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i14<3.3795833587646484e-05){
     s1+=141.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i2<0.03343269228935242){
   if(i12<-0.0010271072387695312){
    if(i64<-0.00990268588066101){
     s1+=20.0;
    } else {
     s0+=150.0;
     s1+=13.0;
    }
   } else {
    if(i38<0.00017830729484558105){
     s0+=11.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=97.0;
    }
   }
  } else {
   if(i23<1.003652572631836){
    if(i12<-0.0024654269218444824){
     s0+=76.0;
     s1+=111.0;
    } else {
     s0+=100.0;
     s1+=1691.0;
    }
   } else {
    if(i23<1.023308277130127){
     s0+=46.0;
     s1+=2556.0;
    } else {
     s0+=1.0;
     s1+=6952.0;
    }
   }
  }
 }
} else {
 if(i11<1.0452277660369873){
  if(i28<0.00030637739109806716){
   if(i61<-0.002128690481185913){
    if(i49<0.0003455902333371341){
     s0+=55.0;
    } else {
     s0+=53.0;
     s1+=77.0;
    }
   } else {
    if(i1<0.0765356719493866){
     s0+=53559.0;
     s1+=251.0;
    } else {
     s0+=629.0;
     s1+=117.0;
    }
   }
  } else {
   if(i0<0.07001426815986633){
    if(i35<1.1476502418518066){
     s0+=2288.0;
     s1+=406.0;
    } else {
     s0+=4513.0;
     s1+=30.0;
    }
   } else {
    if(i66<2.192877946072258e-05){
     s0+=119.0;
     s1+=295.0;
    } else {
     s0+=241.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i6<0.06311365962028503){
   if(i0<0.06919348239898682){
    if(i41<0.0015416666865348816){
     s0+=2333.0;
     s1+=758.0;
    } else {
     s0+=3948.0;
     s1+=185.0;
    }
   } else {
    if(i19<0.9948204755783081){
     s0+=61.0;
    } else {
     s0+=73.0;
     s1+=707.0;
    }
   }
  } else {
   if(i52<0.003944754600524902){
    if(i2<0.09156328439712524){
     s0+=428.0;
     s1+=556.0;
    } else {
     s0+=207.0;
     s1+=1259.0;
    }
   } else {
    if(i1<0.13171416521072388){
     s0+=918.0;
     s1+=85.0;
    } else {
     s0+=468.0;
     s1+=773.0;
    }
   }
  }
 }
}
if(i6<0.07385113835334778){
 if(i23<1.0066354274749756){
  if(i2<0.0773676335811615){
   if(i16<0.004367479123175144){
    if(i61<-0.001521468162536621){
     s0+=3002.0;
     s1+=648.0;
    } else {
     s0+=58316.0;
     s1+=500.0;
    }
   } else {
    if(i3<1.0004982948303223){
     s0+=6109.0;
     s1+=363.0;
    } else {
     s0+=196.0;
     s1+=621.0;
    }
   }
  } else {
   if(i43<0.9992752075195312){
    s0+=95.0;
   } else {
    if(i70<0.008580213412642479){
     s0+=18.0;
     s1+=7.0;
    } else {
     s0+=68.0;
     s1+=608.0;
    }
   }
  }
 } else {
  if(i36<-1.4678588740935083e-05){
   if(i21<1.001295566558838){
    if(i30<1.4283063411712646){
     s0+=8.0;
     s1+=45.0;
    } else {
     s0+=89.0;
     s1+=24.0;
    }
   } else {
    if(i15<9.894371032714844e-06){
     s0+=17.0;
     s1+=7.0;
    } else {
     s1+=1367.0;
    }
   }
  } else {
   if(i35<1.140648365020752){
    if(i30<1.089235782623291){
     s0+=132.0;
     s1+=43.0;
    } else {
     s0+=105.0;
     s1+=481.0;
    }
   } else {
    if(i31<0.02326977252960205){
     s0+=1176.0;
     s1+=24.0;
    } else {
     s0+=18.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i2<0.11250585317611694){
  if(i54<0.0014391691656783223){
   if(i18<1.0016288757324219){
    if(i33<0.06709879636764526){
     s0+=112.0;
     s1+=169.0;
    } else {
     s0+=642.0;
     s1+=51.0;
    }
   } else {
    if(i71<-0.01785225234925747){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=98.0;
    }
   }
  } else {
   if(i69<-0.00535584706813097){
    if(i59<-0.0005454201018437743){
     s0+=2.0;
     s1+=61.0;
    } else {
     s0+=299.0;
     s1+=36.0;
    }
   } else {
    if(i21<0.9941087961196899){
     s0+=66.0;
     s1+=58.0;
    } else {
     s0+=54.0;
     s1+=773.0;
    }
   }
  }
 } else {
  if(i3<0.9956792593002319){
   if(i10<-0.00039058923721313477){
    s0+=216.0;
   } else {
    if(i39<1.2022440433502197){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   if(i12<0.0007980465888977051){
    if(i48<0.09349465370178223){
     s0+=27.0;
     s1+=2115.0;
    } else {
     s0+=429.0;
     s1+=1091.0;
    }
   } else {
    if(i36<-1.2566618352138903e-05){
     s1+=7476.0;
    } else {
     s0+=19.0;
     s1+=259.0;
    }
   }
  }
 }
}
if(i14<1.627206802368164e-05){
 if(i29<1.0137972831726074){
  if(i28<0.0003095129213761538){
   if(i24<1.0116113424301147){
    if(i8<-4.403602360980585e-05){
     s0+=275.0;
     s1+=111.0;
    } else {
     s0+=55807.0;
     s1+=477.0;
    }
   } else {
    if(i45<0.0007664486183784902){
     s0+=11.0;
     s1+=93.0;
    } else {
     s0+=77.0;
     s1+=8.0;
    }
   }
  } else {
   if(i0<0.07659074664115906){
    if(i34<0.0014418173814192414){
     s0+=3983.0;
     s1+=990.0;
    } else {
     s0+=5906.0;
     s1+=146.0;
    }
   } else {
    if(i43<0.9989761114120483){
     s0+=211.0;
     s1+=3.0;
    } else {
     s0+=166.0;
     s1+=1546.0;
    }
   }
  }
 } else {
  if(i8<-2.6923413315671496e-05){
   if(i35<1.181387186050415){
    if(i59<-0.00016993463214021176){
     s0+=1.0;
     s1+=927.0;
    } else {
     s0+=28.0;
     s1+=70.0;
    }
   } else {
    if(i41<0.008492466993629932){
     s0+=328.0;
     s1+=229.0;
    } else {
     s0+=53.0;
     s1+=1136.0;
    }
   }
  } else {
   if(i2<0.21589422225952148){
    if(i16<0.005453499965369701){
     s0+=1865.0;
     s1+=108.0;
    } else {
     s0+=14.0;
     s1+=45.0;
    }
   } else {
    if(i55<1.0000414848327637){
     s0+=151.0;
     s1+=47.0;
    } else {
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i4<3.892183303833008e-05){
  if(i48<0.08578848838806152){
   if(i0<0.10275986790657043){
    if(i29<0.9823968410491943){
     s0+=245.0;
     s1+=132.0;
    } else {
     s0+=1352.0;
     s1+=137.0;
    }
   } else {
    if(i65<0.9987948536872864){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=238.0;
    }
   }
  } else {
   if(i45<0.0044142636470496655){
    if(i69<-0.0048223985359072685){
     s0+=30.0;
     s1+=3.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i67<0.00041444774251431227){
     s0+=37.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i34<0.000465651712147519){
   s0+=200.0;
  } else {
   if(i16<0.0010541538940742612){
    if(i8<-6.682328967144713e-05){
     s1+=18.0;
    } else {
     s0+=51.0;
    }
   } else {
    if(i1<0.059265196323394775){
     s0+=128.0;
     s1+=386.0;
    } else {
     s0+=127.0;
     s1+=10016.0;
    }
   }
  }
 }
}
if(i6<0.07261297106742859){
 if(i4<4.0471553802490234e-05){
  if(i22<1.0070116519927979){
   if(i68<0.0249309204518795){
    if(i75<-0.0021075010299682617){
     s0+=84.0;
     s1+=184.0;
    } else {
     s0+=53317.0;
     s1+=223.0;
    }
   } else {
    if(i0<0.08023357391357422){
     s0+=13299.0;
     s1+=1253.0;
    } else {
     s0+=101.0;
     s1+=367.0;
    }
   }
  } else {
   if(i45<0.0008642710745334625){
    if(i30<1.2371783256530762){
     s0+=389.0;
     s1+=633.0;
    } else {
     s0+=171.0;
    }
   } else {
    if(i31<0.022025281563401222){
     s0+=1380.0;
     s1+=66.0;
    } else {
     s0+=104.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i35<1.0633710622787476){
   s0+=244.0;
  } else {
   if(i0<0.06354200839996338){
    if(i35<1.2160736322402954){
     s0+=3.0;
     s1+=294.0;
    } else {
     s0+=223.0;
     s1+=215.0;
    }
   } else {
    if(i29<1.0385770797729492){
     s0+=16.0;
     s1+=1328.0;
    } else {
     s0+=11.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i1<0.11906412243843079){
  if(i33<0.06281158328056335){
   if(i14<-1.2248754501342773e-05){
    if(i24<0.9847879409790039){
     s1+=4.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.04243969917297363){
     s0+=8.0;
     s1+=563.0;
    } else {
     s0+=60.0;
     s1+=121.0;
    }
   }
  } else {
   if(i27<1.0490155220031738){
    if(i10<-0.00012946128845214844){
     s0+=177.0;
     s1+=37.0;
    } else {
     s0+=163.0;
     s1+=316.0;
    }
   } else {
    if(i5<0.0015368461608886719){
     s0+=859.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i3<0.9959414005279541){
   if(i62<0.02966296672821045){
    if(i34<0.0031498908065259457){
     s0+=42.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i66<3.552029738784768e-05){
     s0+=163.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i67<0.00018783971609082073){
    if(i47<0.07496941089630127){
     s0+=16.0;
     s1+=405.0;
    } else {
     s0+=205.0;
     s1+=64.0;
    }
   } else {
    if(i16<0.0032904348336160183){
     s0+=133.0;
     s1+=452.0;
    } else {
     s0+=82.0;
     s1+=10074.0;
    }
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i56<0.000705789658240974){
  if(i4<3.904104232788086e-05){
   if(i25<1.0071725845336914){
    if(i18<1.0006110668182373){
     s0+=55294.0;
     s1+=301.0;
    } else {
     s0+=2891.0;
     s1+=200.0;
    }
   } else {
    if(i44<0.0011287308298051357){
     s0+=459.0;
     s1+=310.0;
    } else {
     s0+=1667.0;
     s1+=65.0;
    }
   }
  } else {
   if(i38<0.0001825392246246338){
    if(i21<1.0098958015441895){
     s0+=361.0;
     s1+=28.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   } else {
    if(i15<9.85264778137207e-05){
     s0+=83.0;
     s1+=47.0;
    } else {
     s0+=3.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i5<0.0005536079406738281){
   if(i39<1.1034480333328247){
    if(i38<-3.802776336669922e-05){
     s0+=1643.0;
     s1+=69.0;
    } else {
     s0+=376.0;
     s1+=703.0;
    }
   } else {
    if(i31<0.07266444712877274){
     s0+=6314.0;
     s1+=259.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   }
  } else {
   if(i0<0.016843050718307495){
    if(i64<-0.004495769739151001){
     s0+=3.0;
     s1+=48.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   } else {
    if(i40<0.00014267535880208015){
     s0+=10.0;
     s1+=411.0;
    } else {
     s0+=42.0;
     s1+=86.0;
    }
   }
  }
 }
} else {
 if(i49<0.006003634538501501){
  if(i69<-0.005507856607437134){
   if(i36<-1.4856315829092637e-05){
    if(i24<1.020572304725647){
     s0+=156.0;
     s1+=92.0;
    } else {
     s0+=36.0;
     s1+=346.0;
    }
   } else {
    if(i6<0.230493426322937){
     s0+=765.0;
     s1+=129.0;
    } else {
     s0+=165.0;
     s1+=167.0;
    }
   }
  } else {
   if(i3<0.9965636730194092){
    if(i37<1.045915961265564){
     s0+=300.0;
     s1+=22.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i16<0.0009571037953719497){
     s0+=145.0;
     s1+=55.0;
    } else {
     s0+=213.0;
     s1+=3799.0;
    }
   }
  }
 } else {
  if(i17<1.0647540092468262){
   if(i2<0.10316285490989685){
    if(i47<0.026724576950073242){
     s1+=1.0;
    } else {
     s0+=71.0;
    }
   } else {
    if(i40<0.0002781353541649878){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i0<0.1099008321762085){
    if(i56<0.0014172755181789398){
     s0+=66.0;
     s1+=33.0;
    } else {
     s0+=6.0;
     s1+=238.0;
    }
   } else {
    if(i12<3.1113624572753906e-05){
     s0+=54.0;
     s1+=1576.0;
    } else {
     s0+=2.0;
     s1+=7829.0;
    }
   }
  }
 }
}
if(i1<0.08513569831848145){
 if(i11<1.0451608896255493){
  if(i56<0.0007040929049253464){
   if(i0<0.07721668481826782){
    if(i23<1.008213996887207){
     s0+=55583.0;
     s1+=244.0;
    } else {
     s0+=69.0;
     s1+=26.0;
    }
   } else {
    if(i22<1.00529944896698){
     s0+=200.0;
     s1+=42.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   }
  } else {
   if(i49<0.0008772625587880611){
    if(i35<1.0703742504119873){
     s0+=1075.0;
     s1+=13.0;
    } else {
     s0+=133.0;
     s1+=482.0;
    }
   } else {
    if(i6<0.06356543302536011){
     s0+=4653.0;
     s1+=109.0;
    } else {
     s0+=84.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i19<1.000556468963623){
   if(i5<0.00021463632583618164){
    if(i9<0.9942939877510071){
     s0+=880.0;
     s1+=282.0;
    } else {
     s0+=4743.0;
     s1+=358.0;
    }
   } else {
    if(i44<0.001295288559049368){
     s0+=26.0;
     s1+=75.0;
    } else {
     s0+=245.0;
     s1+=69.0;
    }
   }
  } else {
   if(i30<1.1228315830230713){
    if(i44<0.00026732642436400056){
     s0+=121.0;
    } else {
     s1+=783.0;
    }
   } else {
    if(i53<0.015584660694003105){
     s0+=1153.0;
     s1+=184.0;
    } else {
     s0+=79.0;
     s1+=367.0;
    }
   }
  }
 }
} else {
 if(i38<-0.00013640522956848145){
  if(i8<-4.8017311200965196e-05){
   if(i42<1.1414752006530762){
    s0+=14.0;
   } else {
    if(i20<0.0022338612470775843){
     s0+=1.0;
    } else {
     s1+=123.0;
    }
   }
  } else {
   if(i76<1.7648580978857353e-05){
    s1+=1.0;
   } else {
    if(i75<0.0001716315746307373){
     s0+=455.0;
    } else {
     s0+=197.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<0.00046247243881225586){
   if(i20<0.023381106555461884){
    if(i50<0.03903195261955261){
     s0+=176.0;
     s1+=459.0;
    } else {
     s0+=717.0;
     s1+=251.0;
    }
   } else {
    if(i40<1.3025466614635661e-05){
     s0+=51.0;
     s1+=41.0;
    } else {
     s0+=229.0;
     s1+=3350.0;
    }
   }
  } else {
   if(i15<9.769201278686523e-05){
    if(i8<-2.4770495656412095e-05){
     s0+=4.0;
     s1+=336.0;
    } else {
     s0+=41.0;
     s1+=11.0;
    }
   } else {
    if(i42<1.0634281635284424){
     s0+=2.0;
    } else {
     s0+=52.0;
     s1+=9597.0;
    }
   }
  }
 }
}
if(i5<0.0005491375923156738){
 if(i2<0.07766824960708618){
  if(i11<1.0412344932556152){
   if(i51<-0.00428733229637146){
    if(i34<0.00036232295678928494){
     s0+=1346.0;
    } else {
     s0+=1734.0;
     s1+=277.0;
    }
   } else {
    if(i60<-0.0013978779315948486){
     s0+=3602.0;
     s1+=190.0;
    } else {
     s0+=52882.0;
     s1+=142.0;
    }
   }
  } else {
   if(i1<0.0661783218383789){
    if(i53<0.007078952621668577){
     s0+=5635.0;
     s1+=403.0;
    } else {
     s0+=2176.0;
     s1+=618.0;
    }
   } else {
    if(i52<0.002743661403656006){
     s0+=609.0;
     s1+=541.0;
    } else {
     s0+=601.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i64<0.0027774572372436523){
   if(i10<-0.00038558244705200195){
    if(i10<-0.0004277825355529785){
     s0+=150.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i58<6.055721314623952e-06){
     s0+=155.0;
     s1+=629.0;
    } else {
     s0+=69.0;
     s1+=1307.0;
    }
   }
  } else {
   if(i16<0.005713172256946564){
    if(i48<0.06211245059967041){
     s0+=139.0;
     s1+=279.0;
    } else {
     s0+=1069.0;
     s1+=381.0;
    }
   } else {
    if(i0<0.10802233219146729){
     s0+=108.0;
     s1+=20.0;
    } else {
     s0+=12.0;
     s1+=822.0;
    }
   }
  }
 }
} else {
 if(i39<1.055294156074524){
  s0+=149.0;
 } else {
  if(i8<-4.330423689680174e-05){
   if(i12<9.47713851928711e-06){
    if(i6<0.12479746341705322){
     s0+=230.0;
     s1+=530.0;
    } else {
     s0+=17.0;
     s1+=779.0;
    }
   } else {
    if(i19<0.9981834888458252){
     s0+=8.0;
     s1+=302.0;
    } else {
     s0+=5.0;
     s1+=9888.0;
    }
   }
  } else {
   if(i42<1.2392117977142334){
    s1+=210.0;
   } else {
    if(i13<0.9935781955718994){
     s1+=33.0;
    } else {
     s0+=164.0;
    }
   }
  }
 }
}
if(i5<0.0005469322204589844){
 if(i24<1.0103590488433838){
  if(i26<0.00030615285504609346){
   if(i56<0.0012486561900004745){
    if(i22<1.0077147483825684){
     s0+=53425.0;
     s1+=215.0;
    } else {
     s0+=194.0;
     s1+=65.0;
    }
   } else {
    if(i26<0.0002451883046887815){
     s0+=37.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   if(i21<0.993889331817627){
    if(i70<0.2232012152671814){
     s0+=8827.0;
     s1+=397.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i40<2.9945844289613888e-05){
     s0+=3735.0;
     s1+=509.0;
    } else {
     s0+=2489.0;
     s1+=2118.0;
    }
   }
  }
 } else {
  if(i0<0.09594091773033142){
   if(i42<1.1063789129257202){
    if(i3<1.000626802444458){
     s0+=239.0;
     s1+=104.0;
    } else {
     s0+=5.0;
     s1+=228.0;
    }
   } else {
    if(i67<0.0007322182646021247){
     s0+=1061.0;
     s1+=6.0;
    } else {
     s0+=152.0;
     s1+=40.0;
    }
   }
  } else {
   if(i16<0.003924213349819183){
    if(i72<1.0000510215759277){
     s0+=152.0;
     s1+=392.0;
    } else {
     s0+=299.0;
     s1+=38.0;
    }
   } else {
    if(i71<-0.13307052850723267){
     s0+=6.0;
    } else {
     s0+=43.0;
     s1+=1164.0;
    }
   }
  }
 }
} else {
 if(i55<0.9992470741271973){
  s0+=167.0;
 } else {
  if(i23<1.0215895175933838){
   if(i0<0.06006714701652527){
    if(i52<-0.0013040900230407715){
     s0+=57.0;
     s1+=352.0;
    } else {
     s0+=188.0;
     s1+=65.0;
    }
   } else {
    if(i4<5.811452865600586e-05){
     s0+=134.0;
     s1+=869.0;
    } else {
     s0+=51.0;
     s1+=3221.0;
    }
   }
  } else {
   if(i32<1.0034308433532715){
    if(i65<1.0031368732452393){
     s1+=75.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i1<0.12139910459518433){
     s0+=2.0;
     s1+=161.0;
    } else {
     s1+=6873.0;
    }
   }
  }
 }
}
if(i1<0.08729004859924316){
 if(i4<3.88026237487793e-05){
  if(i53<0.007431505713611841){
   if(i17<1.0451585054397583){
    if(i56<0.0005992077640257776){
     s0+=49219.0;
     s1+=41.0;
    } else {
     s0+=3555.0;
     s1+=124.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=3213.0;
     s1+=1099.0;
    } else {
     s0+=9235.0;
     s1+=171.0;
    }
   }
  } else {
   if(i55<0.999549150466919){
    if(i67<7.067625119816512e-05){
     s0+=13.0;
     s1+=15.0;
    } else {
     s0+=866.0;
     s1+=16.0;
    }
   } else {
    if(i44<0.0011289844987913966){
     s0+=751.0;
     s1+=465.0;
    } else {
     s0+=1915.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i43<0.9994409084320068){
   s0+=241.0;
  } else {
   if(i61<0.0017723441123962402){
    if(i64<0.0018364787101745605){
     s0+=107.0;
     s1+=1017.0;
    } else {
     s0+=62.0;
     s1+=12.0;
    }
   } else {
    if(i3<1.0042107105255127){
     s0+=103.0;
     s1+=10.0;
    } else {
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985154867172241){
  if(i49<0.009422315284609795){
   if(i4<-3.463029861450195e-05){
    s0+=563.0;
   } else {
    if(i18<0.9981334805488586){
     s0+=55.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i34<0.007443795446306467){
    s1+=5.0;
   } else {
    if(i78<0.5867477655410767){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i2<0.12533989548683167){
   if(i64<0.004186511039733887){
    if(i52<0.005281329154968262){
     s0+=122.0;
     s1+=2433.0;
    } else {
     s0+=150.0;
     s1+=20.0;
    }
   } else {
    if(i41<0.0019122831290587783){
     s0+=109.0;
     s1+=91.0;
    } else {
     s0+=400.0;
     s1+=23.0;
    }
   }
  } else {
   if(i65<0.9998664855957031){
    if(i14<-1.0520219802856445e-05){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=70.0;
     s1+=8936.0;
    }
   } else {
    if(i36<-1.1254129276494496e-05){
     s0+=49.0;
     s1+=2080.0;
    } else {
     s0+=204.0;
     s1+=273.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i3<1.0024782419204712){
  if(i56<0.0007866320665925741){
   if(i11<1.0428826808929443){
    if(i1<0.07653915882110596){
     s0+=55076.0;
     s1+=177.0;
    } else {
     s0+=445.0;
     s1+=57.0;
    }
   } else {
    if(i1<0.06616711616516113){
     s0+=5202.0;
     s1+=395.0;
    } else {
     s0+=955.0;
     s1+=425.0;
    }
   }
  } else {
   if(i35<1.185624122619629){
    if(i42<1.0703742504119873){
     s0+=1242.0;
    } else {
     s0+=957.0;
     s1+=960.0;
    }
   } else {
    if(i4<2.777576446533203e-05){
     s0+=4992.0;
     s1+=144.0;
    } else {
     s0+=85.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i54<0.0009006377658806741){
   if(i36<-1.526416599517688e-05){
    s1+=43.0;
   } else {
    if(i64<-0.004175007343292236){
     s1+=11.0;
    } else {
     s0+=141.0;
    }
   }
  } else {
   if(i50<0.017841309309005737){
    if(i30<1.5682398080825806){
     s0+=20.0;
     s1+=769.0;
    } else {
     s0+=47.0;
     s1+=51.0;
    }
   } else {
    if(i32<1.0037685632705688){
     s0+=39.0;
     s1+=4.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i3<0.9960448741912842){
  if(i16<0.00799233466386795){
   if(i38<-0.00013142824172973633){
    s0+=625.0;
   } else {
    if(i43<0.9994082450866699){
     s0+=5.0;
     s1+=19.0;
    } else {
     s0+=69.0;
     s1+=15.0;
    }
   }
  } else {
   if(i76<0.00015179277397692204){
    if(i53<0.00606002751737833){
     s0+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=92.0;
   }
  }
 } else {
  if(i12<0.0006137490272521973){
   if(i16<0.0018076107371598482){
    if(i77<-0.00047650933265686035){
     s0+=82.0;
     s1+=168.0;
    } else {
     s0+=470.0;
     s1+=73.0;
    }
   } else {
    if(i61<-0.0010805726051330566){
     s0+=52.0;
     s1+=1441.0;
    } else {
     s0+=586.0;
     s1+=2664.0;
    }
   }
  } else {
   if(i14<-1.6003847122192383e-05){
    s0+=4.0;
   } else {
    if(i36<-1.6930773654166842e-06){
     s0+=45.0;
     s1+=9451.0;
    } else {
     s0+=24.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i19<1.002824306488037){
 if(i27<1.0401114225387573){
  if(i46<0.026173461228609085){
   if(i0<0.08516058325767517){
    if(i9<1.0081672668457031){
     s0+=55990.0;
     s1+=499.0;
    } else {
     s0+=55.0;
     s1+=114.0;
    }
   } else {
    if(i21<0.9940106272697449){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=287.0;
    }
   }
  } else {
   if(i2<0.0660027265548706){
    if(i49<0.0008786341641098261){
     s0+=2295.0;
     s1+=638.0;
    } else {
     s0+=6962.0;
     s1+=241.0;
    }
   } else {
    if(i18<0.9983437061309814){
     s0+=156.0;
     s1+=4.0;
    } else {
     s0+=232.0;
     s1+=919.0;
    }
   }
  }
 } else {
  if(i6<0.09112471342086792){
   if(i20<0.023177877068519592){
    if(i8<-2.8512906283140182e-05){
     s0+=431.0;
     s1+=479.0;
    } else {
     s0+=2167.0;
     s1+=102.0;
    }
   } else {
    if(i21<0.9946022033691406){
     s0+=333.0;
     s1+=68.0;
    } else {
     s0+=272.0;
     s1+=494.0;
    }
   }
  } else {
   if(i16<0.004999159835278988){
    if(i44<0.005354584194719791){
     s0+=694.0;
     s1+=297.0;
    } else {
     s0+=86.0;
     s1+=372.0;
    }
   } else {
    if(i73<2.204027168772882e-06){
     s0+=50.0;
     s1+=2030.0;
    } else {
     s0+=32.0;
    }
   }
  }
 }
} else {
 if(i66<1.732904274831526e-05){
  if(i8<-4.5495457015931606e-05){
   if(i6<0.003758668899536133){
    if(i50<-0.043327391147613525){
     s0+=8.0;
     s1+=65.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i0<0.05748438835144043){
     s0+=58.0;
     s1+=247.0;
    } else {
     s0+=77.0;
     s1+=9304.0;
    }
   }
  } else {
   if(i10<0.0005968809127807617){
    if(i77<-0.0009004473686218262){
     s0+=71.0;
     s1+=143.0;
    } else {
     s0+=286.0;
     s1+=35.0;
    }
   } else {
    if(i42<1.4828453063964844){
     s1+=216.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i59<-0.0003866402548737824){
   if(i5<-0.0014065206050872803){
    s0+=10.0;
   } else {
    s1+=431.0;
   }
  } else {
   if(i6<0.09682971239089966){
    if(i67<0.0021463213488459587){
     s0+=775.0;
     s1+=31.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    if(i16<0.007493147160857916){
     s0+=5.0;
    } else {
     s1+=107.0;
    }
   }
  }
 }
}
if(i2<0.08160647749900818){
 if(i3<1.0025131702423096){
  if(i1<0.0663372278213501){
   if(i51<-0.004901319742202759){
    if(i4<-4.285573959350586e-05){
     s0+=1612.0;
     s1+=55.0;
    } else {
     s0+=2752.0;
     s1+=664.0;
    }
   } else {
    if(i18<1.0005935430526733){
     s0+=56989.0;
     s1+=479.0;
    } else {
     s0+=3455.0;
     s1+=250.0;
    }
   }
  } else {
   if(i20<0.02050308883190155){
    if(i48<0.03351390361785889){
     s0+=257.0;
     s1+=212.0;
    } else {
     s0+=3333.0;
     s1+=148.0;
    }
   } else {
    if(i62<0.020991474390029907){
     s0+=194.0;
     s1+=450.0;
    } else {
     s0+=512.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i73<-4.832212198380148e-06){
   if(i35<1.2454195022583008){
    if(i26<0.005946582183241844){
     s0+=3.0;
     s1+=968.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   } else {
    if(i29<0.9949434995651245){
     s0+=30.0;
     s1+=212.0;
    } else {
     s0+=50.0;
     s1+=6.0;
    }
   }
  } else {
   if(i44<0.0019678084645420313){
    if(i70<0.005538094323128462){
     s0+=2.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i38<0.00019469857215881348){
     s0+=161.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i5<0.00010311603546142578){
  if(i3<0.9964578151702881){
   if(i44<0.007445715367794037){
    if(i55<0.9996024966239929){
     s0+=360.0;
    } else {
     s0+=79.0;
     s1+=21.0;
    }
   } else {
    if(i33<0.0933634340763092){
     s0+=35.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=106.0;
    }
   }
  } else {
   if(i48<0.058077067136764526){
    if(i36<4.177265054750023e-06){
     s0+=16.0;
     s1+=896.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i40<3.63008766726125e-05){
     s0+=477.0;
     s1+=132.0;
    } else {
     s0+=187.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i0<0.10729923844337463){
   if(i33<0.06590396165847778){
    if(i65<1.0047519207000732){
     s0+=1.0;
     s1+=596.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i52<0.003955453634262085){
     s0+=50.0;
     s1+=130.0;
    } else {
     s0+=177.0;
     s1+=11.0;
    }
   }
  } else {
   if(i12<0.0002727508544921875){
    if(i63<0.0004517583001870662){
     s0+=161.0;
     s1+=475.0;
    } else {
     s0+=40.0;
     s1+=1370.0;
    }
   } else {
    if(i16<0.002768428297713399){
     s0+=24.0;
     s1+=296.0;
    } else {
     s0+=1.0;
     s1+=9081.0;
    }
   }
  }
 }
}
if(i22<1.0078010559082031){
 if(i17<1.057713270187378){
  if(i0<0.07865875959396362){
   if(i58<0.0014865132980048656){
    if(i68<0.02526884526014328){
     s0+=50123.0;
     s1+=92.0;
    } else {
     s0+=5784.0;
     s1+=194.0;
    }
   } else {
    if(i5<0.00020056962966918945){
     s0+=2208.0;
     s1+=249.0;
    } else {
     s0+=6.0;
     s1+=35.0;
    }
   }
  } else {
   if(i74<5.787373993371148e-06){
    if(i41<0.00035807036329060793){
     s0+=80.0;
    } else {
     s0+=111.0;
     s1+=126.0;
    }
   } else {
    if(i5<-0.0005833208560943604){
     s0+=211.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i21<1.0018253326416016){
   if(i4<1.3172626495361328e-05){
    if(i35<1.103413462638855){
     s0+=1297.0;
     s1+=994.0;
    } else {
     s0+=7562.0;
     s1+=995.0;
    }
   } else {
    if(i0<0.1098099946975708){
     s0+=354.0;
     s1+=410.0;
    } else {
     s0+=28.0;
     s1+=704.0;
    }
   }
  } else {
   if(i28<0.00024239937192760408){
    if(i14<1.901388168334961e-05){
     s0+=277.0;
     s1+=6.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i19<1.0008299350738525){
     s0+=181.0;
     s1+=204.0;
    } else {
     s0+=58.0;
     s1+=1762.0;
    }
   }
  }
 }
} else {
 if(i8<-4.1514602344250306e-05){
  if(i10<-0.0003611147403717041){
   if(i52<0.011486649513244629){
    s0+=56.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i2<0.059869349002838135){
    if(i39<1.1083450317382812){
     s1+=186.0;
    } else {
     s0+=157.0;
     s1+=37.0;
    }
   } else {
    if(i13<1.0022672414779663){
     s0+=111.0;
     s1+=651.0;
    } else {
     s0+=63.0;
     s1+=9627.0;
    }
   }
  }
 } else {
  if(i0<0.07499533891677856){
   if(i59<-0.00033527874620631337){
    if(i40<-2.168026549043134e-05){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=970.0;
     s1+=7.0;
    }
   } else {
    if(i5<0.00014674663543701172){
     s0+=476.0;
     s1+=29.0;
    } else {
     s0+=133.0;
     s1+=72.0;
    }
   }
  } else {
   if(i17<1.1176903247833252){
    if(i26<0.0014704472851008177){
     s0+=130.0;
     s1+=506.0;
    } else {
     s0+=70.0;
     s1+=23.0;
    }
   } else {
    if(i40<0.00011856877245008945){
     s0+=625.0;
     s1+=176.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
}
if(i7<1.0452215671539307){
 if(i26<0.00028896224102936685){
  if(i10<0.0007399022579193115){
   if(i60<-0.004633128643035889){
    if(i34<0.0003280164091847837){
     s0+=1.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i25<1.0084432363510132){
     s0+=52483.0;
     s1+=201.0;
    } else {
     s0+=182.0;
     s1+=95.0;
    }
   }
  } else {
   if(i66<1.3201138244767208e-05){
    s1+=47.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i0<0.0756044089794159){
   if(i18<1.0018975734710693){
    if(i70<0.047175198793411255){
     s0+=6213.0;
     s1+=898.0;
    } else {
     s0+=6021.0;
     s1+=65.0;
    }
   } else {
    if(i4<3.147125244140625e-05){
     s0+=254.0;
     s1+=29.0;
    } else {
     s0+=19.0;
     s1+=267.0;
    }
   }
  } else {
   if(i51<0.012729912996292114){
    if(i10<-0.0004207789897918701){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=102.0;
     s1+=1054.0;
    }
   } else {
    if(i13<0.9911988973617554){
     s0+=115.0;
     s1+=11.0;
    } else {
     s0+=11.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i1<0.09948408603668213){
  if(i5<0.00047719478607177734){
   if(i8<-2.5160461518680677e-05){
    if(i38<0.00016885995864868164){
     s0+=340.0;
     s1+=552.0;
    } else {
     s0+=676.0;
     s1+=114.0;
    }
   } else {
    if(i39<1.1034480333328247){
     s0+=1272.0;
     s1+=263.0;
    } else {
     s0+=2246.0;
     s1+=57.0;
    }
   }
  } else {
   if(i34<0.0018468908965587616){
    s1+=517.0;
   } else {
    if(i8<-8.877764048520476e-05){
     s0+=41.0;
     s1+=298.0;
    } else {
     s0+=196.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i16<0.004698213189840317){
   if(i71<-0.02272849902510643){
    if(i0<0.21605026721954346){
     s0+=533.0;
     s1+=38.0;
    } else {
     s0+=178.0;
     s1+=176.0;
    }
   } else {
    if(i34<0.0005826159613206983){
     s0+=77.0;
     s1+=39.0;
    } else {
     s0+=115.0;
     s1+=1305.0;
    }
   }
  } else {
   if(i43<0.9987768530845642){
    if(i19<0.9983507394790649){
     s0+=57.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i31<0.01795271784067154){
     s0+=76.0;
     s1+=1067.0;
    } else {
     s0+=30.0;
     s1+=9690.0;
    }
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i29<1.0135998725891113){
  if(i6<0.0716283917427063){
   if(i20<0.015775278210639954){
    if(i12<0.0011181831359863281){
     s0+=56879.0;
     s1+=750.0;
    } else {
     s0+=22.0;
     s1+=70.0;
    }
   } else {
    if(i3<0.9972199201583862){
     s0+=7575.0;
     s1+=149.0;
    } else {
     s0+=2521.0;
     s1+=1405.0;
    }
   }
  } else {
   if(i62<0.028422027826309204){
    if(i21<0.9904919862747192){
     s0+=46.0;
     s1+=98.0;
    } else {
     s0+=54.0;
     s1+=759.0;
    }
   } else {
    if(i8<-6.38689652987523e-06){
     s0+=201.0;
     s1+=216.0;
    } else {
     s0+=302.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i1<0.09164005517959595){
   if(i60<0.005919754505157471){
    if(i69<-0.003599008312448859){
     s0+=596.0;
     s1+=8.0;
    } else {
     s0+=466.0;
     s1+=194.0;
    }
   } else {
    if(i46<0.11059586703777313){
     s0+=877.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<-2.1179057512199506e-05){
    if(i18<1.000786542892456){
     s0+=75.0;
     s1+=1232.0;
    } else {
     s0+=226.0;
     s1+=391.0;
    }
   } else {
    if(i62<0.03099370002746582){
     s0+=146.0;
     s1+=105.0;
    } else {
     s0+=531.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i49<0.0004908976843580604){
  s0+=271.0;
 } else {
  if(i3<1.0041425228118896){
   if(i45<0.01083967462182045){
    if(i55<0.9999135732650757){
     s0+=9.0;
     s1+=566.0;
    } else {
     s0+=365.0;
     s1+=550.0;
    }
   } else {
    if(i2<0.017473340034484863){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=760.0;
    }
   }
  } else {
   if(i15<-0.00044476985931396484){
    if(i63<0.0015491776866838336){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i15<4.9173831939697266e-05){
     s0+=44.0;
     s1+=762.0;
    } else {
     s0+=1.0;
     s1+=8894.0;
    }
   }
  }
 }
}
if(i3<1.0023775100708008){
 if(i46<0.031022248789668083){
  if(i0<0.08392930030822754){
   if(i37<0.9715443849563599){
    if(i10<-0.00015527009963989258){
     s0+=268.0;
     s1+=25.0;
    } else {
     s0+=109.0;
     s1+=165.0;
    }
   } else {
    if(i63<-0.00010434280557092279){
     s0+=74.0;
     s1+=83.0;
    } else {
     s0+=58654.0;
     s1+=677.0;
    }
   }
  } else {
   if(i34<0.0004617827944457531){
    if(i72<1.0000927448272705){
     s0+=163.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i71<-0.015639835968613625){
     s0+=249.0;
     s1+=107.0;
    } else {
     s0+=102.0;
     s1+=774.0;
    }
   }
  }
 } else {
  if(i59<-7.044395169941708e-05){
   if(i3<0.9963263273239136){
    if(i59<-0.0008925235015340149){
     s0+=29.0;
     s1+=54.0;
    } else {
     s0+=1189.0;
     s1+=88.0;
    }
   } else {
    if(i67<0.0003632836160250008){
     s0+=1475.0;
     s1+=934.0;
    } else {
     s0+=757.0;
     s1+=2041.0;
    }
   }
  } else {
   if(i59<3.919725349987857e-05){
    if(i1<0.06440258026123047){
     s0+=1717.0;
     s1+=250.0;
    } else {
     s0+=279.0;
     s1+=297.0;
    }
   } else {
    if(i6<0.12029320001602173){
     s0+=5266.0;
     s1+=254.0;
    } else {
     s0+=81.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i26<0.00020090542966499925){
  if(i22<1.007541537284851){
   s0+=127.0;
  } else {
   if(i36<-1.4765035302843899e-05){
    s1+=33.0;
   } else {
    s0+=16.0;
   }
  }
 } else {
  if(i8<-4.353338590590283e-05){
   if(i6<0.03400704264640808){
    if(i65<1.0015196800231934){
     s0+=30.0;
     s1+=377.0;
    } else {
     s0+=31.0;
     s1+=35.0;
    }
   } else {
    if(i15<3.516674041748047e-06){
     s0+=102.0;
     s1+=938.0;
    } else {
     s0+=10.0;
     s1+=9899.0;
    }
   }
  } else {
   if(i14<1.9311904907226562e-05){
    if(i41<0.0017490177415311337){
     s0+=7.0;
     s1+=20.0;
    } else {
     s0+=119.0;
     s1+=4.0;
    }
   } else {
    if(i31<0.004646681249141693){
     s0+=3.0;
    } else {
     s1+=208.0;
    }
   }
  }
 }
}
if(i3<1.0024597644805908){
 if(i6<0.07133829593658447){
  if(i2<0.07751640677452087){
   if(i53<0.0075655728578567505){
    if(i1<0.0663098692893982){
     s0+=61549.0;
     s1+=755.0;
    } else {
     s0+=3508.0;
     s1+=488.0;
    }
   } else {
    if(i38<-3.403425216674805e-05){
     s0+=1701.0;
     s1+=93.0;
    } else {
     s0+=1714.0;
     s1+=722.0;
    }
   }
  } else {
   if(i3<0.9965639114379883){
    if(i17<1.0913386344909668){
     s0+=93.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i6<0.06789255142211914){
     s0+=9.0;
     s1+=584.0;
    } else {
     s0+=20.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i62<0.03478991985321045){
   if(i44<0.006361778359860182){
    if(i47<0.043679624795913696){
     s0+=120.0;
     s1+=895.0;
    } else {
     s0+=468.0;
     s1+=382.0;
    }
   } else {
    if(i17<1.0662994384765625){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=20.0;
     s1+=1030.0;
    }
   }
  } else {
   if(i2<0.1663077175617218){
    if(i69<-0.004308224655687809){
     s0+=654.0;
     s1+=50.0;
    } else {
     s0+=454.0;
     s1+=229.0;
    }
   } else {
    if(i54<0.0016351188533008099){
     s0+=237.0;
     s1+=208.0;
    } else {
     s0+=4.0;
     s1+=382.0;
    }
   }
  }
 }
} else {
 if(i8<-4.3997002649120986e-05){
  if(i0<0.05306306481361389){
   if(i39<1.187422752380371){
    if(i65<1.0024949312210083){
     s0+=6.0;
     s1+=192.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i64<-0.004491627216339111){
     s0+=6.0;
     s1+=76.0;
    } else {
     s0+=92.0;
     s1+=18.0;
    }
   }
  } else {
   if(i15<6.258487701416016e-06){
    if(i2<0.11760896444320679){
     s0+=81.0;
     s1+=222.0;
    } else {
     s0+=12.0;
     s1+=675.0;
    }
   } else {
    if(i0<0.06482827663421631){
     s0+=6.0;
     s1+=152.0;
    } else {
     s0+=4.0;
     s1+=9823.0;
    }
   }
  }
 } else {
  if(i67<0.0004614730423782021){
   if(i43<1.0010099411010742){
    if(i27<1.011606216430664){
     s1+=7.0;
    } else {
     s0+=197.0;
     s1+=1.0;
    }
   } else {
    if(i63<4.727031773654744e-05){
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   s1+=201.0;
  }
 }
}
if(i13<1.005927562713623){
 if(i78<0.05504915118217468){
  if(i0<0.08211836218833923){
   if(i58<0.0019460455514490604){
    if(i23<1.0059127807617188){
     s0+=57351.0;
     s1+=472.0;
    } else {
     s0+=424.0;
     s1+=139.0;
    }
   } else {
    if(i38<-3.299117088317871e-05){
     s0+=303.0;
     s1+=11.0;
    } else {
     s0+=341.0;
     s1+=280.0;
    }
   }
  } else {
   if(i19<0.9979068040847778){
    if(i29<1.0175232887268066){
     s0+=111.0;
     s1+=14.0;
    } else {
     s0+=22.0;
     s1+=33.0;
    }
   } else {
    if(i47<0.04915517568588257){
     s0+=17.0;
     s1+=487.0;
    } else {
     s0+=150.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i11<1.0445520877838135){
   if(i41<0.00266442634165287){
    if(i39<1.0553205013275146){
     s0+=1174.0;
     s1+=1.0;
    } else {
     s0+=895.0;
     s1+=503.0;
    }
   } else {
    if(i2<0.09071016311645508){
     s0+=4537.0;
     s1+=35.0;
    } else {
     s1+=53.0;
    }
   }
  } else {
   if(i2<0.0972030758857727){
    if(i4<2.664327621459961e-05){
     s0+=4004.0;
     s1+=999.0;
    } else {
     s0+=285.0;
     s1+=469.0;
    }
   } else {
    if(i34<0.0015522646717727184){
     s0+=530.0;
     s1+=428.0;
    } else {
     s0+=291.0;
     s1+=2802.0;
    }
   }
  }
 }
} else {
 if(i0<0.06548601388931274){
  if(i30<1.1386182308197021){
   if(i36<-3.2297220968757756e-06){
    s1+=228.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i38<0.0002479851245880127){
    if(i29<0.9942194223403931){
     s0+=14.0;
     s1+=13.0;
    } else {
     s0+=605.0;
     s1+=4.0;
    }
   } else {
    if(i77<0.0013620853424072266){
     s1+=46.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i13<1.0089826583862305){
   if(i63<5.1976152462884784e-05){
    if(i26<0.0010217939270660281){
     s0+=20.0;
     s1+=373.0;
    } else {
     s0+=124.0;
     s1+=129.0;
    }
   } else {
    if(i8<-2.089317604259122e-05){
     s0+=2.0;
     s1+=472.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i10<-1.8417835235595703e-05){
    if(i36<-1.4882647292324691e-06){
     s1+=74.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.002982775680720806){
     s0+=25.0;
     s1+=469.0;
    } else {
     s0+=1.0;
     s1+=8314.0;
    }
   }
  }
 }
}
if(i7<1.0452215671539307){
 if(i4<4.166364669799805e-05){
  if(i51<-0.00612872838973999){
   if(i42<1.197464108467102){
    if(i34<0.00034317479003220797){
     s0+=660.0;
    } else {
     s0+=382.0;
     s1+=541.0;
    }
   } else {
    if(i0<0.057463616132736206){
     s0+=1754.0;
     s1+=57.0;
    } else {
     s0+=24.0;
     s1+=71.0;
    }
   }
  } else {
   if(i17<1.0486011505126953){
    if(i24<1.0124123096466064){
     s0+=54981.0;
     s1+=248.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.07811126112937927){
     s0+=7055.0;
     s1+=526.0;
    } else {
     s0+=169.0;
     s1+=508.0;
    }
   }
  }
 } else {
  if(i43<0.999557614326477){
   s0+=243.0;
  } else {
   if(i26<0.00019555987091735005){
    if(i35<1.1580243110656738){
     s1+=8.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   } else {
    if(i36<-1.2484455510275438e-05){
     s0+=17.0;
     s1+=741.0;
    } else {
     s0+=16.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i24<1.0210225582122803){
  if(i8<-3.4877361031249166e-05){
   if(i2<0.07905495166778564){
    if(i49<0.0013452755520120263){
     s0+=36.0;
     s1+=590.0;
    } else {
     s0+=717.0;
     s1+=432.0;
    }
   } else {
    if(i51<0.016429603099822998){
     s0+=53.0;
     s1+=3217.0;
    } else {
     s0+=183.0;
     s1+=509.0;
    }
   }
  } else {
   if(i5<0.00044906139373779297){
    if(i34<0.0005182996392250061){
     s0+=1645.0;
     s1+=72.0;
    } else {
     s0+=2338.0;
     s1+=904.0;
    }
   } else {
    if(i67<0.0004536653286777437){
     s0+=13.0;
     s1+=14.0;
    } else {
     s1+=88.0;
    }
   }
  }
 } else {
  if(i8<-4.3673222535289824e-05){
   if(i30<1.613681674003601){
    if(i76<3.9234961150214076e-05){
     s0+=6.0;
     s1+=270.0;
    } else {
     s0+=5.0;
     s1+=6689.0;
    }
   } else {
    if(i59<-0.0006259578512981534){
     s1+=1199.0;
    } else {
     s0+=38.0;
     s1+=89.0;
    }
   }
  } else {
   if(i54<0.0011124592274427414){
    if(i66<1.2560990398924332e-05){
     s0+=601.0;
     s1+=46.0;
    } else {
     s0+=37.0;
     s1+=61.0;
    }
   } else {
    if(i0<0.11338624358177185){
     s0+=69.0;
     s1+=35.0;
    } else {
     s0+=17.0;
     s1+=220.0;
    }
   }
  }
 }
}
if(i18<1.0016393661499023){
 if(i7<1.0452277660369873){
  if(i56<0.000782694318331778){
   if(i26<0.0003096620785072446){
    if(i13<1.0036637783050537){
     s0+=52418.0;
     s1+=151.0;
    } else {
     s0+=500.0;
     s1+=69.0;
    }
   } else {
    if(i11<1.0428757667541504){
     s0+=4633.0;
     s1+=185.0;
    } else {
     s0+=1301.0;
     s1+=491.0;
    }
   }
  } else {
   if(i4<-1.71661376953125e-05){
    if(i42<1.219545602798462){
     s0+=1664.0;
     s1+=342.0;
    } else {
     s0+=3203.0;
     s1+=54.0;
    }
   } else {
    if(i2<0.06089243292808533){
     s0+=1021.0;
     s1+=329.0;
    } else {
     s0+=31.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i13<1.006338119506836){
   if(i1<0.08532768487930298){
    if(i4<1.150369644165039e-05){
     s0+=3275.0;
     s1+=482.0;
    } else {
     s0+=320.0;
     s1+=203.0;
    }
   } else {
    if(i18<0.998518705368042){
     s0+=343.0;
     s1+=15.0;
    } else {
     s0+=802.0;
     s1+=2183.0;
    }
   }
  } else {
   if(i38<5.891919136047363e-05){
    if(i13<1.0116691589355469){
     s0+=83.0;
     s1+=416.0;
    } else {
     s0+=4.0;
     s1+=1039.0;
    }
   } else {
    if(i42<1.175590991973877){
     s1+=202.0;
    } else {
     s0+=261.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i3<1.0024943351745605){
  if(i17<1.1266913414001465){
   if(i12<-0.0024644434452056885){
    if(i59<-0.0002036128717008978){
     s0+=76.0;
     s1+=2.0;
    } else {
     s0+=388.0;
    }
   } else {
    if(i70<0.0653313472867012){
     s0+=423.0;
     s1+=128.0;
    } else {
     s0+=28.0;
     s1+=69.0;
    }
   }
  } else {
   if(i59<-0.0002279059262946248){
    if(i44<0.002804162912070751){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=299.0;
    }
   } else {
    if(i27<1.086815357208252){
     s0+=131.0;
     s1+=82.0;
    } else {
     s1+=67.0;
    }
   }
  }
 } else {
  if(i26<0.000179713882971555){
   if(i36<-1.7263182598981075e-05){
    s1+=1.0;
   } else {
    s0+=38.0;
   }
  } else {
   if(i44<0.009904036298394203){
    if(i65<0.9975060224533081){
     s0+=20.0;
     s1+=13.0;
    } else {
     s0+=138.0;
     s1+=3727.0;
    }
   } else {
    if(i15<-0.0004687309265136719){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=6067.0;
    }
   }
  }
 }
}
if(i2<0.0782996118068695){
 if(i4<4.178285598754883e-05){
  if(i7<1.0401114225387573){
   if(i60<-0.002235502004623413){
    if(i44<0.0009984190110117197){
     s0+=1107.0;
     s1+=537.0;
    } else {
     s0+=3716.0;
     s1+=174.0;
    }
   } else {
    if(i19<1.0010838508605957){
     s0+=55458.0;
     s1+=309.0;
    } else {
     s0+=2400.0;
     s1+=191.0;
    }
   }
  } else {
   if(i16<0.004337280988693237){
    if(i41<0.0020073039922863245){
     s0+=2563.0;
     s1+=498.0;
    } else {
     s0+=2696.0;
     s1+=64.0;
    }
   } else {
    if(i66<1.1655133675958496e-05){
     s0+=53.0;
     s1+=208.0;
    } else {
     s0+=780.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i41<0.000426500104367733){
   s0+=220.0;
  } else {
   if(i3<1.0042097568511963){
    if(i61<0.0017723441123962402){
     s0+=147.0;
     s1+=326.0;
    } else {
     s0+=91.0;
     s1+=14.0;
    }
   } else {
    if(i69<-0.006085190922021866){
     s0+=9.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=775.0;
    }
   }
  }
 }
} else {
 if(i43<0.9989262819290161){
  if(i68<0.4965769350528717){
   if(i34<0.0017664964543655515){
    s0+=438.0;
   } else {
    if(i3<0.996125340461731){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i16<0.0016846612561494112){
   if(i40<-3.0819413950666785e-05){
    s1+=98.0;
   } else {
    if(i75<-0.0006919205188751221){
     s0+=107.0;
     s1+=152.0;
    } else {
     s0+=536.0;
     s1+=61.0;
    }
   }
  } else {
   if(i3<1.0015729665756226){
    if(i6<0.15830513834953308){
     s0+=559.0;
     s1+=1587.0;
    } else {
     s0+=45.0;
     s1+=1073.0;
    }
   } else {
    if(i5<0.000849306583404541){
     s0+=101.0;
     s1+=1334.0;
    } else {
     s0+=44.0;
     s1+=9493.0;
    }
   }
  }
 }
}
if(i11<1.052894115447998){
 if(i3<1.0024950504302979){
  if(i9<1.0080902576446533){
   if(i28<0.00030391855398193){
    if(i56<0.0008409206056967378){
     s0+=54733.0;
     s1+=330.0;
    } else {
     s0+=741.0;
     s1+=168.0;
    }
   } else {
    if(i11<1.0398828983306885){
     s0+=6754.0;
     s1+=430.0;
    } else {
     s0+=1579.0;
     s1+=672.0;
    }
   }
  } else {
   if(i49<0.0014180060243234038){
    if(i3<0.9996204376220703){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=172.0;
    }
   } else {
    if(i67<0.0006549115641973913){
     s0+=83.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i36<-1.462851923861308e-05){
   if(i40<0.0001450747950002551){
    s1+=340.0;
   } else {
    if(i60<-0.016271740198135376){
     s1+=16.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i25<1.002561330795288){
    s1+=10.0;
   } else {
    if(i56<-0.00010789000953081995){
     s1+=1.0;
    } else {
     s0+=84.0;
    }
   }
  }
 }
} else {
 if(i4<3.331899642944336e-05){
  if(i31<0.04027494043111801){
   if(i12<0.0010692477226257324){
    if(i18<0.9986293911933899){
     s0+=1541.0;
     s1+=18.0;
    } else {
     s0+=4797.0;
     s1+=2517.0;
    }
   } else {
    if(i55<0.9999125599861145){
     s0+=4.0;
     s1+=251.0;
    } else {
     s0+=18.0;
     s1+=11.0;
    }
   }
  } else {
   if(i16<0.004890432581305504){
    s0+=51.0;
   } else {
    if(i25<0.8823221921920776){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=829.0;
    }
   }
  }
 } else {
  if(i6<0.12161299586296082){
   if(i69<-0.006675903685390949){
    if(i11<1.1368224620819092){
     s0+=129.0;
     s1+=58.0;
    } else {
     s0+=3.0;
     s1+=78.0;
    }
   } else {
    if(i12<-0.0005425214767456055){
     s0+=146.0;
     s1+=299.0;
    } else {
     s0+=90.0;
     s1+=3055.0;
    }
   }
  } else {
   if(i1<0.17280036211013794){
    if(i71<-0.03667878359556198){
     s0+=23.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=523.0;
    }
   } else {
    if(i42<1.223900556564331){
     s0+=9.0;
     s1+=72.0;
    } else {
     s0+=2.0;
     s1+=7547.0;
    }
   }
  }
 }
}
if(i5<0.0005737543106079102){
 if(i6<0.0707579255104065){
  if(i53<0.0075655728578567505){
   if(i23<1.006883144378662){
    if(i1<0.0831376314163208){
     s0+=63959.0;
     s1+=986.0;
    } else {
     s0+=301.0;
     s1+=326.0;
    }
   } else {
    if(i45<0.0007718930137343705){
     s0+=263.0;
     s1+=327.0;
    } else {
     s0+=700.0;
     s1+=34.0;
    }
   }
  } else {
   if(i0<0.058040350675582886){
    if(i2<0.02423417568206787){
     s0+=2371.0;
     s1+=231.0;
    } else {
     s0+=787.0;
     s1+=342.0;
    }
   } else {
    if(i19<0.9947017431259155){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=158.0;
     s1+=379.0;
    }
   }
  }
 } else {
  if(i16<0.005300789140164852){
   if(i55<0.9995700120925903){
    if(i73<-2.345119582969346e-06){
     s0+=35.0;
     s1+=31.0;
    } else {
     s0+=434.0;
    }
   } else {
    if(i52<0.004219919443130493){
     s0+=494.0;
     s1+=981.0;
    } else {
     s0+=894.0;
     s1+=334.0;
    }
   }
  } else {
   if(i38<0.00021457672119140625){
    if(i73<1.5332224165831576e-06){
     s0+=31.0;
     s1+=1218.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i78<0.14860481023788452){
     s0+=96.0;
     s1+=52.0;
    } else {
     s0+=44.0;
     s1+=301.0;
    }
   }
  }
 }
} else {
 if(i8<-4.331633317633532e-05){
  if(i23<1.0058798789978027){
   if(i21<1.0016162395477295){
    if(i16<0.014382937923073769){
     s0+=146.0;
     s1+=246.0;
    } else {
     s0+=5.0;
     s1+=309.0;
    }
   } else {
    if(i55<1.000784993171692){
     s0+=27.0;
     s1+=1431.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i40<6.867081538075581e-05){
    if(i1<0.05714097619056702){
     s0+=1.0;
     s1+=106.0;
    } else {
     s1+=7696.0;
    }
   } else {
    if(i67<0.00043942074989899993){
     s0+=62.0;
     s1+=65.0;
    } else {
     s0+=1.0;
     s1+=1435.0;
    }
   }
  }
 } else {
  if(i30<1.2392117977142334){
   if(i31<0.005470277741551399){
    s0+=99.0;
   } else {
    s1+=206.0;
   }
  } else {
   if(i34<0.003434568177908659){
    s0+=177.0;
   } else {
    if(i63<0.0003443143214099109){
     s0+=1.0;
    } else {
     s1+=36.0;
    }
   }
  }
 }
}
if(i0<0.08270382881164551){
 if(i5<0.0006018579006195068){
  if(i46<0.02572944201529026){
   if(i57<0.9713871479034424){
    if(i10<-0.00015911459922790527){
     s0+=180.0;
     s1+=11.0;
    } else {
     s0+=63.0;
     s1+=116.0;
    }
   } else {
    if(i61<-0.0016287565231323242){
     s0+=461.0;
     s1+=154.0;
    } else {
     s0+=56500.0;
     s1+=436.0;
    }
   }
  } else {
   if(i45<0.0017204420873895288){
    if(i44<0.00032843637745827436){
     s0+=1550.0;
     s1+=5.0;
    } else {
     s0+=2396.0;
     s1+=1139.0;
    }
   } else {
    if(i5<0.00022357702255249023){
     s0+=7509.0;
     s1+=224.0;
    } else {
     s0+=292.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i5<0.000981748104095459){
   if(i66<-3.868241037707776e-06){
    if(i40<-7.288181222975254e-07){
     s0+=181.0;
     s1+=7.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i44<0.00268708448857069){
     s0+=8.0;
     s1+=193.0;
    } else {
     s0+=118.0;
     s1+=76.0;
    }
   }
  } else {
   if(i51<0.008594036102294922){
    if(i60<0.005234897136688232){
     s0+=39.0;
     s1+=691.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i17<1.0752969980239868){
     s1+=1.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
} else {
 if(i34<0.00045632405090145767){
  if(i26<0.00042426411528140306){
   if(i3<1.000972032546997){
    if(i75<-0.0017489790916442871){
     s1+=5.0;
    } else {
     s0+=73.0;
     s1+=2.0;
    }
   } else {
    if(i35<1.0558756589889526){
     s0+=3.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i8<-9.510967174719553e-06){
    if(i31<0.012518929317593575){
     s0+=17.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=225.0;
   }
  }
 } else {
  if(i8<-2.2300282580545172e-05){
   if(i12<-7.236003875732422e-05){
    if(i52<0.003945350646972656){
     s0+=38.0;
     s1+=1426.0;
    } else {
     s0+=365.0;
     s1+=1020.0;
    }
   } else {
    if(i38<-0.0002504289150238037){
     s0+=29.0;
     s1+=35.0;
    } else {
     s0+=89.0;
     s1+=10817.0;
    }
   }
  } else {
   if(i7<1.0895044803619385){
    if(i4<-5.829334259033203e-05){
     s0+=87.0;
    } else {
     s0+=165.0;
     s1+=528.0;
    }
   } else {
    if(i34<0.0017013319302350283){
     s0+=506.0;
     s1+=5.0;
    } else {
     s0+=126.0;
     s1+=175.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i43<1.0004626512527466){
  if(i26<0.00033519224962219596){
   if(i42<1.067622423171997){
    if(i13<1.003386378288269){
     s0+=33468.0;
     s1+=1.0;
    } else {
     s0+=112.0;
     s1+=2.0;
    }
   } else {
    if(i27<1.000518560409546){
     s0+=116.0;
     s1+=63.0;
    } else {
     s0+=18005.0;
     s1+=137.0;
    }
   }
  } else {
   if(i21<0.9940364360809326){
    if(i7<1.3778983354568481){
     s0+=6655.0;
     s1+=97.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i40<3.1705189030617476e-05){
     s0+=3915.0;
     s1+=329.0;
    } else {
     s0+=1675.0;
     s1+=987.0;
    }
   }
  }
 } else {
  if(i64<-0.0024183690547943115){
   if(i5<0.0004125833511352539){
    if(i2<0.036797285079956055){
     s0+=240.0;
     s1+=37.0;
    } else {
     s0+=40.0;
     s1+=53.0;
    }
   } else {
    if(i10<0.0004068613052368164){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=446.0;
    }
   }
  } else {
   if(i5<0.0004655122756958008){
    if(i12<-0.0015943348407745361){
     s0+=2366.0;
     s1+=9.0;
    } else {
     s0+=2783.0;
     s1+=343.0;
    }
   } else {
    if(i45<0.0012898084241896868){
     s0+=73.0;
     s1+=474.0;
    } else {
     s0+=210.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i38<-0.0002562105655670166){
  if(i17<1.398578405380249){
   s0+=396.0;
  } else {
   s1+=34.0;
  }
 } else {
  if(i4<3.4749507904052734e-05){
   if(i33<0.06623288989067078){
    if(i52<0.0050637125968933105){
     s0+=22.0;
     s1+=1317.0;
    } else {
     s0+=23.0;
     s1+=33.0;
    }
   } else {
    if(i41<0.008863984607160091){
     s0+=1005.0;
     s1+=1091.0;
    } else {
     s0+=38.0;
     s1+=751.0;
    }
   }
  } else {
   if(i44<0.009564671665430069){
    if(i13<1.008004903793335){
     s0+=146.0;
     s1+=1270.0;
    } else {
     s0+=4.0;
     s1+=2524.0;
    }
   } else {
    s1+=6820.0;
   }
  }
 }
}
if(i9<1.0081498622894287){
 if(i19<1.0031707286834717){
  if(i78<0.04937285557389259){
   if(i60<-0.0036676526069641113){
    if(i0<0.004952728748321533){
     s0+=31.0;
     s1+=8.0;
    } else {
     s0+=45.0;
     s1+=154.0;
    }
   } else {
    if(i46<0.04077739268541336){
     s0+=56956.0;
     s1+=561.0;
    } else {
     s0+=452.0;
     s1+=225.0;
    }
   }
  } else {
   if(i6<0.06282877922058105){
    if(i2<0.06656432151794434){
     s0+=9831.0;
     s1+=902.0;
    } else {
     s0+=104.0;
     s1+=306.0;
    }
   } else {
    if(i59<-2.3181601136457175e-05){
     s0+=850.0;
     s1+=1336.0;
    } else {
     s0+=591.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i23<0.9577243328094482){
   if(i5<0.00034540891647338867){
    if(i67<0.0020097168162465096){
     s0+=460.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=13.0;
    }
   } else {
    if(i58<0.003055300796404481){
     s0+=8.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=187.0;
    }
   }
  } else {
   if(i70<0.13867807388305664){
    if(i5<0.0003821253776550293){
     s0+=287.0;
     s1+=117.0;
    } else {
     s0+=143.0;
     s1+=1248.0;
    }
   } else {
    if(i43<0.9983303546905518){
     s0+=2.0;
    } else {
     s1+=913.0;
    }
   }
  }
 }
} else {
 if(i54<0.0010530268773436546){
  if(i16<0.0033130189403891563){
   if(i65<1.0003252029418945){
    if(i38<2.321600914001465e-05){
     s0+=115.0;
     s1+=551.0;
    } else {
     s0+=350.0;
     s1+=232.0;
    }
   } else {
    if(i25<0.9872957468032837){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=500.0;
     s1+=23.0;
    }
   }
  } else {
   if(i3<0.998608410358429){
    if(i56<-0.0004069244605489075){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=11.0;
    }
   } else {
    s1+=765.0;
   }
  }
 } else {
  if(i22<1.0187134742736816){
   if(i10<-0.00033742189407348633){
    s0+=87.0;
   } else {
    if(i8<-3.6105135222896934e-05){
     s0+=31.0;
     s1+=1828.0;
    } else {
     s0+=149.0;
     s1+=161.0;
    }
   }
  } else {
   if(i18<0.9980934858322144){
    s0+=16.0;
   } else {
    if(i8<-4.565770359477028e-05){
     s0+=29.0;
     s1+=7277.0;
    } else {
     s0+=37.0;
     s1+=186.0;
    }
   }
  }
 }
}
if(i3<1.002460241317749){
 if(i11<1.0452277660369873){
  if(i60<-0.0020244717597961426){
   if(i44<0.00099138543009758){
    if(i41<0.0003970715624745935){
     s0+=966.0;
     s1+=16.0;
    } else {
     s0+=301.0;
     s1+=466.0;
    }
   } else {
    if(i33<0.05943012237548828){
     s0+=3139.0;
     s1+=101.0;
    } else {
     s0+=36.0;
     s1+=38.0;
    }
   }
  } else {
   if(i28<0.00027336226776242256){
    if(i16<0.004606305621564388){
     s0+=50352.0;
     s1+=101.0;
    } else {
     s0+=1675.0;
     s1+=71.0;
    }
   } else {
    if(i33<0.0863199234008789){
     s0+=5580.0;
     s1+=224.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i44<0.006349984556436539){
   if(i4<1.0907649993896484e-05){
    if(i8<-2.2717385945725255e-05){
     s0+=1078.0;
     s1+=1025.0;
    } else {
     s0+=5581.0;
     s1+=879.0;
    }
   } else {
    if(i49<0.0002693877904675901){
     s0+=174.0;
    } else {
     s0+=916.0;
     s1+=1342.0;
    }
   }
  } else {
   if(i0<0.08581939339637756){
    if(i16<0.016426298767328262){
     s0+=660.0;
     s1+=97.0;
    } else {
     s1+=50.0;
    }
   } else {
    if(i20<0.015900198370218277){
     s0+=28.0;
     s1+=45.0;
    } else {
     s0+=34.0;
     s1+=1395.0;
    }
   }
  }
 }
} else {
 if(i44<0.007966635748744011){
  if(i30<1.2392117977142334){
   if(i17<1.0365266799926758){
    s0+=6.0;
   } else {
    if(i36<-6.863814178359462e-06){
     s1+=2206.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i34<0.0038324715569615364){
    if(i37<0.9442347288131714){
     s1+=1.0;
    } else {
     s0+=191.0;
    }
   } else {
    if(i42<1.6016557216644287){
     s0+=108.0;
     s1+=1527.0;
    } else {
     s0+=19.0;
    }
   }
  }
 } else {
  if(i0<0.04065385460853577){
   if(i50<-0.07510659098625183){
    if(i39<1.2659249305725098){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i78<0.29486900568008423){
     s1+=1.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i3<1.0064424276351929){
    if(i2<0.1267244517803192){
     s0+=12.0;
     s1+=83.0;
    } else {
     s0+=4.0;
     s1+=1385.0;
    }
   } else {
    s1+=6257.0;
   }
  }
 }
}
if(i2<0.0755770206451416){
 if(i10<0.0005425810813903809){
  if(i0<0.06633859872817993){
   if(i61<-0.0013700127601623535){
    if(i28<0.0018778485246002674){
     s0+=2065.0;
     s1+=605.0;
    } else {
     s0+=3271.0;
     s1+=116.0;
    }
   } else {
    if(i22<1.0067417621612549){
     s0+=58684.0;
     s1+=421.0;
    } else {
     s0+=1866.0;
     s1+=189.0;
    }
   }
  } else {
   if(i43<0.999453604221344){
    if(i29<0.9809494018554688){
     s0+=27.0;
     s1+=17.0;
    } else {
     s0+=819.0;
     s1+=20.0;
    }
   } else {
    if(i34<0.001799438614398241){
     s0+=700.0;
     s1+=558.0;
    } else {
     s0+=716.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i21<1.0017423629760742){
   if(i59<-0.0006336199003271759){
    s1+=64.0;
   } else {
    if(i11<1.121130108833313){
     s0+=788.0;
     s1+=137.0;
    } else {
     s0+=8.0;
     s1+=49.0;
    }
   }
  } else {
   if(i17<1.0413084030151367){
    s0+=35.0;
   } else {
    if(i16<0.0009915829868987203){
     s0+=11.0;
    } else {
     s0+=35.0;
     s1+=828.0;
    }
   }
  }
 }
} else {
 if(i16<0.004691104404628277){
  if(i7<1.1499409675598145){
   if(i13<1.0064458847045898){
    if(i43<0.9992786645889282){
     s0+=327.0;
     s1+=9.0;
    } else {
     s0+=793.0;
     s1+=1241.0;
    }
   } else {
    if(i10<-0.00036004185676574707){
     s0+=2.0;
    } else {
     s0+=16.0;
     s1+=1069.0;
    }
   }
  } else {
   if(i3<1.0018112659454346){
    if(i53<0.04629793018102646){
     s0+=576.0;
     s1+=98.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   } else {
    s1+=56.0;
   }
  }
 } else {
  if(i10<-0.0005352497100830078){
   s0+=116.0;
  } else {
   if(i0<0.09275206923484802){
    if(i58<0.0022497386671602726){
     s0+=140.0;
     s1+=166.0;
    } else {
     s0+=2.0;
     s1+=161.0;
    }
   } else {
    if(i13<1.0000760555267334){
     s0+=92.0;
     s1+=2035.0;
    } else {
     s0+=22.0;
     s1+=9239.0;
    }
   }
  }
 }
}
if(i8<-6.355725781759247e-05){
 if(i22<0.9508506655693054){
  if(i5<0.000257343053817749){
   if(i0<0.03987589478492737){
    if(i38<0.0005480051040649414){
     s0+=766.0;
     s1+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i75<-0.01112326979637146){
     s0+=20.0;
     s1+=13.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i12<-0.003137528896331787){
    if(i16<0.01902039162814617){
     s0+=35.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i24<0.9865437746047974){
     s0+=19.0;
     s1+=412.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i5<-0.00012546777725219727){
   if(i17<1.1350657939910889){
    if(i17<1.0767595767974854){
     s0+=286.0;
     s1+=3.0;
    } else {
     s0+=39.0;
     s1+=25.0;
    }
   } else {
    if(i38<0.0004952549934387207){
     s0+=7.0;
     s1+=198.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i12<-0.0007557868957519531){
    if(i20<0.029952798038721085){
     s0+=192.0;
     s1+=93.0;
    } else {
     s0+=48.0;
     s1+=554.0;
    }
   } else {
    if(i15<6.258487701416016e-06){
     s0+=58.0;
     s1+=582.0;
    } else {
     s0+=4.0;
     s1+=10203.0;
    }
   }
  }
 }
} else {
 if(i24<1.008097529411316){
  if(i28<0.00031145356479100883){
   if(i26<0.00029168365290388465){
    if(i56<0.0008510074112564325){
     s0+=51925.0;
     s1+=173.0;
    } else {
     s0+=335.0;
     s1+=71.0;
    }
   } else {
    if(i1<0.0775647759437561){
     s0+=4134.0;
     s1+=294.0;
    } else {
     s0+=117.0;
     s1+=146.0;
    }
   }
  } else {
   if(i10<8.004903793334961e-05){
    if(i4<-5.0902366638183594e-05){
     s0+=4451.0;
     s1+=121.0;
    } else {
     s0+=4317.0;
     s1+=1090.0;
    }
   } else {
    if(i4<1.0073184967041016e-05){
     s0+=1325.0;
     s1+=499.0;
    } else {
     s0+=167.0;
     s1+=677.0;
    }
   }
  }
 } else {
  if(i34<0.002120085759088397){
   if(i54<0.0020265288185328245){
    if(i8<-2.204843985964544e-05){
     s0+=363.0;
     s1+=1021.0;
    } else {
     s0+=1403.0;
     s1+=145.0;
    }
   } else {
    if(i55<0.9976724982261658){
     s0+=1.0;
    } else {
     s1+=519.0;
    }
   }
  } else {
   if(i56<-0.0007338428404182196){
    if(i2<0.18805024027824402){
     s0+=12.0;
     s1+=13.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i1<0.24231356382369995){
     s0+=1047.0;
     s1+=38.0;
    } else {
     s0+=6.0;
     s1+=99.0;
    }
   }
  }
 }
}
if(i8<-7.277324766619131e-05){
 if(i6<0.021521300077438354){
  if(i40<0.00015362896374426782){
   if(i71<0.0010358967119827867){
    if(i53<0.01870758645236492){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i77<-0.003978729248046875){
     s0+=1.0;
     s1+=15.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i50<-0.13089877367019653){
    if(i67<0.0009676438057795167){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=42.0;
    }
   } else {
    if(i32<0.9772774577140808){
     s0+=605.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i74<1.023860568238888e-05){
   if(i17<1.0583630800247192){
    if(i12<0.0004898011684417725){
     s0+=131.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i66<3.1111099815461785e-05){
     s0+=148.0;
     s1+=10939.0;
    } else {
     s0+=100.0;
     s1+=299.0;
    }
   }
  } else {
   if(i11<1.1627140045166016){
    s0+=57.0;
   } else {
    s1+=27.0;
   }
  }
 }
} else {
 if(i28<0.0003071282699238509){
  if(i3<1.0024893283843994){
   if(i8<-4.4270826037973166e-05){
    if(i2<0.06746765971183777){
     s0+=258.0;
     s1+=47.0;
    } else {
     s0+=18.0;
     s1+=129.0;
    }
   } else {
    if(i2<0.08904075622558594){
     s0+=56562.0;
     s1+=552.0;
    } else {
     s0+=32.0;
     s1+=111.0;
    }
   }
  } else {
   if(i39<1.1307709217071533){
    if(i35<1.0580317974090576){
     s0+=2.0;
    } else {
     s1+=245.0;
    }
   } else {
    if(i0<0.1181134283542633){
     s0+=129.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.08135956525802612){
   if(i3<1.0020751953125){
    if(i71<-0.009089663624763489){
     s0+=5430.0;
     s1+=141.0;
    } else {
     s0+=5991.0;
     s1+=1339.0;
    }
   } else {
    if(i70<0.03301805257797241){
     s0+=46.0;
     s1+=371.0;
    } else {
     s0+=50.0;
     s1+=37.0;
    }
   }
  } else {
   if(i26<0.0017306637018918991){
    if(i2<0.09379979968070984){
     s0+=131.0;
     s1+=280.0;
    } else {
     s0+=60.0;
     s1+=1127.0;
    }
   } else {
    if(i63<0.0004887793911620975){
     s0+=917.0;
     s1+=526.0;
    } else {
     s0+=244.0;
     s1+=938.0;
    }
   }
  }
 }
}
if(i8<-8.167879423126578e-05){
 if(i1<0.07545521855354309){
  if(i21<1.0018211603164673){
   if(i53<0.01809447444975376){
    if(i64<-0.0009086430072784424){
     s0+=108.0;
     s1+=26.0;
    } else {
     s0+=583.0;
     s1+=7.0;
    }
   } else {
    if(i70<0.08653223514556885){
     s0+=29.0;
     s1+=27.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   }
  } else {
   if(i3<1.0003433227539062){
    if(i69<-0.002606356982141733){
     s1+=3.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i47<0.021742701530456543){
     s0+=10.0;
     s1+=266.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i73<-4.005404480267316e-05){
   s0+=16.0;
  } else {
   if(i65<1.0047099590301514){
    if(i12<3.1113624572753906e-05){
     s0+=70.0;
     s1+=1124.0;
    } else {
     s0+=2.0;
     s1+=9291.0;
    }
   } else {
    if(i12<-0.0023411214351654053){
     s0+=27.0;
     s1+=3.0;
    } else {
     s1+=90.0;
    }
   }
  }
 }
} else {
 if(i0<0.07909071445465088){
  if(i11<1.0412344932556152){
   if(i61<-0.001177459955215454){
    if(i6<0.041643381118774414){
     s0+=3742.0;
     s1+=287.0;
    } else {
     s0+=430.0;
     s1+=202.0;
    }
   } else {
    if(i17<1.048384666442871){
     s0+=51284.0;
     s1+=76.0;
    } else {
     s0+=3593.0;
     s1+=143.0;
    }
   }
  } else {
   if(i0<0.06547293066978455){
    if(i5<0.000507354736328125){
     s0+=8229.0;
     s1+=905.0;
    } else {
     s0+=131.0;
     s1+=258.0;
    }
   } else {
    if(i47<0.026504456996917725){
     s0+=63.0;
     s1+=435.0;
    } else {
     s0+=865.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i38<-0.00013780593872070312){
   if(i8<-4.438096220837906e-05){
    if(i62<0.037531495094299316){
     s1+=18.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i5<-0.0005109310150146484){
     s0+=424.0;
    } else {
     s0+=69.0;
     s1+=5.0;
    }
   }
  } else {
   if(i69<-0.0054730926640331745){
    if(i1<0.1319374144077301){
     s0+=641.0;
     s1+=63.0;
    } else {
     s0+=293.0;
     s1+=936.0;
    }
   } else {
    if(i8<-4.705869287136011e-06){
     s0+=207.0;
     s1+=2731.0;
    } else {
     s0+=171.0;
     s1+=132.0;
    }
   }
  }
 }
}
if(i0<0.08131605386734009){
 if(i51<-0.0061972737312316895){
  if(i19<1.0005536079406738){
   if(i1<0.037692248821258545){
    if(i41<0.0015625350642949343){
     s0+=806.0;
     s1+=198.0;
    } else {
     s0+=1744.0;
     s1+=34.0;
    }
   } else {
    if(i29<0.9814484715461731){
     s0+=209.0;
     s1+=266.0;
    } else {
     s0+=251.0;
     s1+=43.0;
    }
   }
  } else {
   if(i3<0.9992549419403076){
    if(i77<-0.003515273332595825){
     s0+=469.0;
     s1+=12.0;
    } else {
     s0+=19.0;
     s1+=40.0;
    }
   } else {
    if(i64<-0.0020782947540283203){
     s0+=54.0;
     s1+=528.0;
    } else {
     s0+=177.0;
     s1+=233.0;
    }
   }
  }
 } else {
  if(i8<-4.987779902876355e-05){
   if(i30<1.2371783256530762){
    if(i30<1.0762357711791992){
     s0+=145.0;
    } else {
     s1+=405.0;
    }
   } else {
    if(i30<1.466446042060852){
     s0+=283.0;
     s1+=76.0;
    } else {
     s0+=1009.0;
     s1+=4.0;
    }
   }
  } else {
   if(i7<1.0401519536972046){
    if(i63<0.00027154324925504625){
     s0+=53158.0;
     s1+=224.0;
    } else {
     s0+=6225.0;
     s1+=340.0;
    }
   } else {
    if(i35<1.1037919521331787){
     s0+=1716.0;
     s1+=480.0;
    } else {
     s0+=3156.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i16<0.0046555353328585625){
  if(i28<0.0016935911262407899){
   if(i0<0.09860000014305115){
    if(i33<0.06366875767707825){
     s0+=52.0;
     s1+=435.0;
    } else {
     s0+=303.0;
     s1+=61.0;
    }
   } else {
    if(i8<-1.1172030099260155e-05){
     s0+=32.0;
     s1+=1236.0;
    } else {
     s0+=60.0;
     s1+=63.0;
    }
   }
  } else {
   if(i50<0.0709281861782074){
    if(i69<-0.005517684388905764){
     s0+=197.0;
     s1+=80.0;
    } else {
     s0+=84.0;
     s1+=353.0;
    }
   } else {
    if(i37<0.995166540145874){
     s0+=22.0;
     s1+=44.0;
    } else {
     s0+=716.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i17<1.0644469261169434){
   if(i67<0.000850020966026932){
    if(i3<0.9983690977096558){
     s0+=9.0;
    } else {
     s0+=2.0;
     s1+=220.0;
    }
   } else {
    if(i25<1.0104963779449463){
     s0+=104.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i0<0.12810128927230835){
    if(i64<0.00548967719078064){
     s0+=63.0;
     s1+=1295.0;
    } else {
     s0+=123.0;
     s1+=14.0;
    }
   } else {
    if(i34<0.0015520970337092876){
     s0+=38.0;
     s1+=186.0;
    } else {
     s0+=14.0;
     s1+=9950.0;
    }
   }
  }
 }
}
if(i8<-7.879037730162963e-05){
 if(i23<0.9532537460327148){
  if(i3<1.000287413597107){
   if(i6<0.03802254796028137){
    if(i50<-0.06436753273010254){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=430.0;
    }
   } else {
    if(i58<0.005023243371397257){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   }
  } else {
   if(i9<0.9726947546005249){
    s1+=137.0;
   } else {
    if(i31<0.06174395978450775){
     s0+=30.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i55<0.9988936185836792){
   s0+=137.0;
  } else {
   if(i13<0.9832679033279419){
    if(i17<1.1260945796966553){
     s0+=70.0;
    } else {
     s0+=16.0;
     s1+=59.0;
    }
   } else {
    if(i0<0.061605364084243774){
     s0+=82.0;
     s1+=221.0;
    } else {
     s0+=97.0;
     s1+=10694.0;
    }
   }
  }
 }
} else {
 if(i2<0.07540655136108398){
  if(i18<1.001636028289795){
   if(i30<1.0850647687911987){
    s0+=37802.0;
   } else {
    if(i64<-0.002138078212738037){
     s0+=1916.0;
     s1+=550.0;
    } else {
     s0+=27646.0;
     s1+=1343.0;
    }
   }
  } else {
   if(i39<1.115822672843933){
    if(i21<1.003281831741333){
     s0+=97.0;
     s1+=66.0;
    } else {
     s0+=1.0;
     s1+=323.0;
    }
   } else {
    if(i10<0.0010337233543395996){
     s0+=608.0;
     s1+=75.0;
    } else {
     s0+=3.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i8<-1.4331979400594719e-05){
   if(i60<0.004991352558135986){
    if(i65<1.001488208770752){
     s0+=200.0;
     s1+=2127.0;
    } else {
     s0+=111.0;
     s1+=182.0;
    }
   } else {
    if(i47<0.03478240966796875){
     s0+=11.0;
     s1+=322.0;
    } else {
     s0+=438.0;
     s1+=624.0;
    }
   }
  } else {
   if(i10<-0.00039246678352355957){
    s0+=472.0;
   } else {
    if(i48<0.05089130997657776){
     s0+=31.0;
     s1+=223.0;
    } else {
     s0+=811.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i22<1.0082732439041138){
 if(i58<0.0023710550740361214){
  if(i6<0.08111581206321716){
   if(i26<0.00029922754038125277){
    if(i18<1.0018737316131592){
     s0+=53129.0;
     s1+=235.0;
    } else {
     s0+=49.0;
     s1+=58.0;
    }
   } else {
    if(i42<1.2048285007476807){
     s0+=3699.0;
     s1+=1287.0;
    } else {
     s0+=6970.0;
     s1+=133.0;
    }
   }
  } else {
   if(i48<0.0635245144367218){
    if(i4<-5.838274955749512e-05){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=487.0;
    }
   } else {
    if(i46<0.1021541953086853){
     s0+=380.0;
     s1+=145.0;
    } else {
     s0+=90.0;
     s1+=259.0;
    }
   }
  }
 } else {
  if(i10<0.0002950429916381836){
   if(i57<0.9138135313987732){
    if(i1<0.08690255880355835){
     s0+=933.0;
     s1+=19.0;
    } else {
     s0+=13.0;
     s1+=20.0;
    }
   } else {
    if(i3<0.9965580701828003){
     s0+=1384.0;
     s1+=103.0;
    } else {
     s0+=1398.0;
     s1+=930.0;
    }
   }
  } else {
   if(i25<0.9290860891342163){
    if(i11<1.0655405521392822){
     s0+=138.0;
     s1+=42.0;
    } else {
     s0+=18.0;
     s1+=212.0;
    }
   } else {
    if(i2<0.03059569001197815){
     s0+=146.0;
     s1+=160.0;
    } else {
     s0+=60.0;
     s1+=1876.0;
    }
   }
  }
 }
} else {
 if(i0<0.08227017521858215){
  if(i45<0.0008346954709850252){
   if(i16<0.0016304273158311844){
    if(i3<1.0014036893844604){
     s0+=158.0;
     s1+=6.0;
    } else {
     s0+=61.0;
     s1+=78.0;
    }
   } else {
    if(i44<0.002129572443664074){
     s0+=10.0;
     s1+=420.0;
    } else {
     s0+=47.0;
     s1+=8.0;
    }
   }
  } else {
   if(i48<0.004526078701019287){
    if(i73<-1.0609742275846656e-05){
     s1+=11.0;
    } else {
     s0+=67.0;
     s1+=24.0;
    }
   } else {
    if(i16<0.0063203442841768265){
     s0+=1335.0;
     s1+=31.0;
    } else {
     s0+=11.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i12<0.00024765729904174805){
   if(i20<0.024422653019428253){
    if(i69<-0.003681316040456295){
     s0+=395.0;
     s1+=101.0;
    } else {
     s0+=4.0;
     s1+=133.0;
    }
   } else {
    if(i36<3.2420070965599734e-06){
     s0+=134.0;
     s1+=1076.0;
    } else {
     s0+=94.0;
    }
   }
  } else {
   if(i8<-2.2282918507698923e-05){
    if(i3<0.9986109733581543){
     s0+=11.0;
    } else {
     s0+=46.0;
     s1+=9465.0;
    }
   } else {
    if(i54<0.0010172746842727065){
     s0+=76.0;
     s1+=3.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
}
if(i12<0.0008229315280914307){
 if(i8<-6.351352203637362e-05){
  if(i3<0.9987601041793823){
   if(i77<-0.005223959684371948){
    if(i2<0.06623473763465881){
     s0+=716.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=18.0;
    }
   } else {
    if(i31<0.0316590815782547){
     s0+=236.0;
     s1+=28.0;
    } else {
     s0+=2.0;
     s1+=177.0;
    }
   }
  } else {
   if(i68<0.28191912174224854){
    if(i34<0.007848082110285759){
     s0+=143.0;
     s1+=1291.0;
    } else {
     s0+=326.0;
     s1+=387.0;
    }
   } else {
    s1+=969.0;
   }
  }
 } else {
  if(i16<0.004370677284896374){
   if(i26<0.00031301999115385115){
    if(i13<1.0038135051727295){
     s0+=50898.0;
     s1+=224.0;
    } else {
     s0+=438.0;
     s1+=100.0;
    }
   } else {
    if(i4<-4.696846008300781e-05){
     s0+=4612.0;
     s1+=108.0;
    } else {
     s0+=7401.0;
     s1+=2233.0;
    }
   }
  } else {
   if(i3<0.9980979561805725){
    if(i3<0.9964410066604614){
     s0+=4586.0;
     s1+=118.0;
    } else {
     s0+=691.0;
     s1+=177.0;
    }
   } else {
    if(i22<1.0100061893463135){
     s0+=385.0;
     s1+=930.0;
    } else {
     s0+=22.0;
     s1+=575.0;
    }
   }
  }
 }
} else {
 if(i28<0.00019855343271046877){
  if(i19<1.0054258108139038){
   if(i34<0.0007990103913471103){
    s1+=40.0;
   } else {
    if(i6<0.07534003257751465){
     s0+=317.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   s1+=53.0;
  }
 } else {
  if(i18<0.9987587928771973){
   s0+=87.0;
  } else {
   if(i54<0.001037286245264113){
    if(i13<1.0140653848648071){
     s0+=127.0;
     s1+=498.0;
    } else {
     s1+=679.0;
    }
   } else {
    if(i67<0.0004498801426962018){
     s0+=5.0;
     s1+=1196.0;
    } else {
     s1+=7431.0;
    }
   }
  }
 }
}
if(i2<0.08162745833396912){
 if(i14<1.8775463104248047e-05){
  if(i45<0.00028926131199114025){
   if(i25<1.0095493793487549){
    if(i57<1.0123262405395508){
     s0+=46276.0;
     s1+=60.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=39.0;
   }
  } else {
   if(i60<0.004428207874298096){
    if(i30<1.100754976272583){
     s0+=4873.0;
     s1+=1527.0;
    } else {
     s0+=10442.0;
     s1+=503.0;
    }
   } else {
    if(i3<0.9982770681381226){
     s0+=5718.0;
     s1+=9.0;
    } else {
     s0+=891.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i15<-0.0002321004867553711){
   if(i11<1.108349084854126){
    if(i21<0.9972521066665649){
     s0+=689.0;
     s1+=24.0;
    } else {
     s0+=70.0;
     s1+=33.0;
    }
   } else {
    if(i5<0.0004252195358276367){
     s0+=15.0;
     s1+=13.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i41<0.00042528644553385675){
    s0+=339.0;
   } else {
    if(i16<0.0019336221739649773){
     s0+=76.0;
     s1+=14.0;
    } else {
     s0+=246.0;
     s1+=1200.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985275268554688){
  if(i39<1.537428855895996){
   if(i30<1.4901387691497803){
    if(i5<-0.0004888176918029785){
     s0+=425.0;
    } else {
     s0+=41.0;
     s1+=7.0;
    }
   } else {
    if(i23<0.982958197593689){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i54<0.0003016483969986439){
   if(i34<0.0005863592959940434){
    if(i7<1.0441888570785522){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=269.0;
     s1+=1.0;
    }
   } else {
    if(i65<1.0000869035720825){
     s0+=25.0;
     s1+=402.0;
    } else {
     s0+=74.0;
     s1+=23.0;
    }
   }
  } else {
   if(i21<1.0021934509277344){
    if(i1<0.11662030220031738){
     s0+=440.0;
     s1+=645.0;
    } else {
     s0+=239.0;
     s1+=3005.0;
    }
   } else {
    if(i13<1.0081603527069092){
     s0+=85.0;
     s1+=1619.0;
    } else {
     s0+=3.0;
     s1+=7721.0;
    }
   }
  }
 }
}
if(i3<1.0023590326309204){
 if(i28<0.00033078494016081095){
  if(i17<1.0487183332443237){
   if(i75<-0.001659005880355835){
    if(i40<6.865774048492312e-05){
     s0+=288.0;
     s1+=77.0;
    } else {
     s0+=1336.0;
     s1+=6.0;
    }
   } else {
    if(i57<1.0130431652069092){
     s0+=50701.0;
     s1+=101.0;
    } else {
     s0+=4.0;
     s1+=11.0;
    }
   }
  } else {
   if(i57<1.0113270282745361){
    if(i61<-0.0027366280555725098){
     s0+=12.0;
     s1+=71.0;
    } else {
     s0+=5485.0;
     s1+=479.0;
    }
   } else {
    if(i8<-2.7089969080407172e-05){
     s0+=42.0;
     s1+=257.0;
    } else {
     s0+=245.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i24<1.0118426084518433){
   if(i2<0.07827076315879822){
    if(i1<0.057678043842315674){
     s0+=8352.0;
     s1+=715.0;
    } else {
     s0+=1953.0;
     s1+=585.0;
    }
   } else {
    if(i62<0.03554791212081909){
     s0+=217.0;
     s1+=1437.0;
    } else {
     s0+=666.0;
     s1+=327.0;
    }
   }
  } else {
   if(i70<0.11692100018262863){
    if(i1<0.0959024429321289){
     s0+=986.0;
     s1+=169.0;
    } else {
     s0+=505.0;
     s1+=1024.0;
    }
   } else {
    if(i67<0.0002487371675670147){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=505.0;
    }
   }
  }
 }
} else {
 if(i28<0.00016920713824220002){
  if(i36<-1.4765035302843899e-05){
   s1+=45.0;
  } else {
   s0+=162.0;
  }
 } else {
  if(i4<5.918741226196289e-05){
   if(i49<0.0025258255191147327){
    if(i17<1.0373592376708984){
     s0+=11.0;
    } else {
     s0+=4.0;
     s1+=540.0;
    }
   } else {
    if(i20<0.03119806945323944){
     s0+=157.0;
     s1+=108.0;
    } else {
     s0+=15.0;
     s1+=452.0;
    }
   }
  } else {
   if(i55<1.0007736682891846){
    if(i12<3.1828880310058594e-05){
     s0+=78.0;
     s1+=920.0;
    } else {
     s0+=8.0;
     s1+=9085.0;
    }
   } else {
    if(i28<0.012057524174451828){
     s0+=18.0;
    } else {
     s1+=26.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i5<0.0006218850612640381){
  if(i53<0.007554411888122559){
   if(i17<1.0451585054397583){
    if(i78<0.04143739491701126){
     s0+=47830.0;
     s1+=58.0;
    } else {
     s0+=5401.0;
     s1+=120.0;
    }
   } else {
    if(i34<0.001446463051252067){
     s0+=5511.0;
     s1+=1087.0;
    } else {
     s0+=6824.0;
     s1+=90.0;
    }
   }
  } else {
   if(i0<0.03831633925437927){
    if(i35<1.103413462638855){
     s0+=954.0;
     s1+=237.0;
    } else {
     s0+=1786.0;
     s1+=126.0;
    }
   } else {
    if(i8<-3.958849993068725e-05){
     s0+=48.0;
     s1+=214.0;
    } else {
     s0+=676.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i76<0.0001362563343718648){
   if(i42<1.2524442672729492){
    if(i78<0.3656810522079468){
     s1+=717.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i58<0.0037564458325505257){
     s0+=102.0;
     s1+=37.0;
    } else {
     s0+=11.0;
     s1+=199.0;
    }
   }
  } else {
   if(i20<0.027248214930295944){
    if(i16<0.006320470478385687){
     s0+=142.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=35.0;
    }
   } else {
    if(i73<-7.338792784139514e-06){
     s1+=93.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i12<0.00024759769439697266){
  if(i8<-1.0138337529497221e-05){
   if(i50<0.04530635476112366){
    if(i47<0.049178749322891235){
     s0+=36.0;
     s1+=1717.0;
    } else {
     s0+=97.0;
     s1+=231.0;
    }
   } else {
    if(i44<0.00633865874260664){
     s0+=462.0;
     s1+=507.0;
    } else {
     s0+=114.0;
     s1+=966.0;
    }
   }
  } else {
   if(i33<0.06299543380737305){
    if(i34<0.0005197221180424094){
     s0+=64.0;
    } else {
     s0+=21.0;
     s1+=130.0;
    }
   } else {
    if(i34<0.001877082628197968){
     s0+=709.0;
     s1+=43.0;
    } else {
     s0+=158.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i18<0.9985748529434204){
   s0+=26.0;
  } else {
   if(i4<1.0073184967041016e-05){
    if(i8<-2.2319654817692935e-05){
     s0+=13.0;
     s1+=245.0;
    } else {
     s0+=73.0;
     s1+=6.0;
    }
   } else {
    if(i6<0.12818372249603271){
     s0+=74.0;
     s1+=2830.0;
    } else {
     s0+=2.0;
     s1+=7087.0;
    }
   }
  }
 }
}
if(i24<1.0107395648956299){
 if(i6<0.07196849584579468){
  if(i45<0.00035589063190855086){
   if(i9<1.0080897808074951){
    if(i18<1.0020146369934082){
     s0+=48466.0;
     s1+=147.0;
    } else {
     s0+=4.0;
     s1+=22.0;
    }
   } else {
    if(i44<0.0015357643133029342){
     s0+=1.0;
     s1+=76.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   }
  } else {
   if(i66<-2.61513901023136e-06){
    if(i16<0.002278828527778387){
     s0+=53.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=542.0;
    }
   } else {
    if(i4<2.2709369659423828e-05){
     s0+=19097.0;
     s1+=1834.0;
    } else {
     s0+=211.0;
     s1+=712.0;
    }
   }
  }
 } else {
  if(i21<1.000934362411499){
   if(i62<0.035557448863983154){
    if(i43<0.9986933469772339){
     s0+=84.0;
    } else {
     s0+=179.0;
     s1+=1096.0;
    }
   } else {
    if(i63<0.0012832448119297624){
     s0+=753.0;
     s1+=226.0;
    } else {
     s0+=18.0;
     s1+=94.0;
    }
   }
  } else {
   if(i17<1.0475257635116577){
    s0+=12.0;
   } else {
    if(i19<1.0001709461212158){
     s0+=27.0;
     s1+=132.0;
    } else {
     s0+=14.0;
     s1+=1515.0;
    }
   }
  }
 }
} else {
 if(i8<-4.227302997605875e-05){
  if(i5<-0.00032144784927368164){
   if(i27<1.1011295318603516){
    if(i42<1.3229782581329346){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=56.0;
    }
   } else {
    s1+=60.0;
   }
  } else {
   if(i0<0.08134296536445618){
    if(i12<-0.000529855489730835){
     s0+=51.0;
     s1+=3.0;
    } else {
     s0+=38.0;
     s1+=328.0;
    }
   } else {
    if(i23<1.0078222751617432){
     s0+=62.0;
     s1+=681.0;
    } else {
     s0+=35.0;
     s1+=8935.0;
    }
   }
  }
 } else {
  if(i54<0.0019675851799547672){
   if(i0<0.12374064326286316){
    if(i28<0.0005975817330181599){
     s0+=576.0;
     s1+=158.0;
    } else {
     s0+=936.0;
     s1+=25.0;
    }
   } else {
    if(i37<1.0599819421768188){
     s0+=65.0;
     s1+=311.0;
    } else {
     s0+=213.0;
     s1+=40.0;
    }
   }
  } else {
   if(i67<0.0012283979449421167){
    if(i30<1.4287309646606445){
     s1+=221.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i20<0.02268170565366745){
     s0+=45.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i2<0.07751694321632385){
 if(i4<4.3511390686035156e-05){
  if(i53<0.007552968338131905){
   if(i45<0.00027646226226352155){
    if(i9<1.0081672668457031){
     s0+=45221.0;
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=53.0;
    }
   } else {
    if(i41<0.001562071731314063){
     s0+=6763.0;
     s1+=1198.0;
    } else {
     s0+=13434.0;
     s1+=83.0;
    }
   }
  } else {
   if(i3<0.9977961182594299){
    if(i65<0.999912440776825){
     s0+=1200.0;
     s1+=33.0;
    } else {
     s0+=648.0;
     s1+=96.0;
    }
   } else {
    if(i19<1.0006366968154907){
     s0+=1323.0;
     s1+=378.0;
    } else {
     s0+=195.0;
     s1+=261.0;
    }
   }
  }
 } else {
  if(i41<0.0004247836768627167){
   s0+=167.0;
  } else {
   if(i3<1.0042208433151245){
    if(i24<1.0036081075668335){
     s0+=53.0;
     s1+=223.0;
    } else {
     s0+=183.0;
     s1+=98.0;
    }
   } else {
    if(i71<-0.014552056789398193){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=10.0;
     s1+=793.0;
    }
   }
  }
 }
} else {
 if(i15<3.802776336669922e-05){
  if(i54<0.0018937616841867566){
   if(i62<0.03441154956817627){
    if(i14<-1.4156103134155273e-05){
     s0+=123.0;
     s1+=2.0;
    } else {
     s0+=304.0;
     s1+=1233.0;
    }
   } else {
    if(i41<0.0104819405823946){
     s0+=931.0;
     s1+=267.0;
    } else {
     s0+=6.0;
     s1+=45.0;
    }
   }
  } else {
   if(i0<0.10995504260063171){
    if(i21<0.9935016632080078){
     s0+=188.0;
     s1+=50.0;
    } else {
     s0+=108.0;
     s1+=295.0;
    }
   } else {
    if(i43<0.9970052242279053){
     s0+=41.0;
    } else {
     s0+=32.0;
     s1+=1789.0;
    }
   }
  }
 } else {
  if(i5<0.00015527009963989258){
   if(i36<-2.171955657104263e-06){
    if(i38<-0.0001678168773651123){
     s0+=12.0;
    } else {
     s0+=28.0;
     s1+=182.0;
    }
   } else {
    if(i42<1.2604451179504395){
     s0+=7.0;
     s1+=29.0;
    } else {
     s0+=73.0;
    }
   }
  } else {
   if(i8<-4.261540743755177e-05){
    if(i67<0.00016976120241452008){
     s0+=2.0;
     s1+=325.0;
    } else {
     s0+=1.0;
     s1+=9441.0;
    }
   } else {
    if(i31<0.0089773740619421){
     s0+=53.0;
     s1+=14.0;
    } else {
     s0+=35.0;
     s1+=181.0;
    }
   }
  }
 }
}
if(i5<0.0005480647087097168){
 if(i22<1.007279396057129){
  if(i7<1.0452215671539307){
   if(i0<0.08339214324951172){
    if(i61<-0.0010856389999389648){
     s0+=5797.0;
     s1+=766.0;
    } else {
     s0+=58435.0;
     s1+=436.0;
    }
   } else {
    if(i18<0.998053789138794){
     s0+=139.0;
     s1+=2.0;
    } else {
     s0+=94.0;
     s1+=446.0;
    }
   }
  } else {
   if(i67<0.0016660470282658935){
    if(i0<0.09672343730926514){
     s0+=2934.0;
     s1+=553.0;
    } else {
     s0+=364.0;
     s1+=924.0;
    }
   } else {
    if(i54<0.004113025031983852){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=248.0;
    }
   }
  }
 } else {
  if(i34<0.004980332218110561){
   if(i8<-3.352288331370801e-05){
    if(i45<0.001036702306009829){
     s0+=59.0;
     s1+=798.0;
    } else {
     s0+=304.0;
     s1+=338.0;
    }
   } else {
    if(i49<0.0009780292166396976){
     s0+=698.0;
     s1+=277.0;
    } else {
     s0+=1539.0;
     s1+=168.0;
    }
   }
  } else {
   if(i8<-3.662037488538772e-05){
    if(i20<0.026903938502073288){
     s0+=60.0;
     s1+=38.0;
    } else {
     s0+=1.0;
     s1+=463.0;
    }
   } else {
    if(i16<0.004655148833990097){
     s0+=127.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i16<0.0021814964711666107){
  if(i36<-1.4924631614121608e-05){
   s1+=158.0;
  } else {
   if(i13<0.9944287538528442){
    s1+=5.0;
   } else {
    s0+=318.0;
   }
  }
 } else {
  if(i30<1.0710620880126953){
   s0+=34.0;
  } else {
   if(i13<1.0072381496429443){
    if(i65<1.0018062591552734){
     s0+=143.0;
     s1+=2274.0;
    } else {
     s0+=113.0;
     s1+=180.0;
    }
   } else {
    if(i8<-3.573061985662207e-05){
     s0+=7.0;
     s1+=8973.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i2<0.07745996117591858){
 if(i13<1.0060200691223145){
  if(i3<1.0024776458740234){
   if(i68<0.018907319754362106){
    if(i58<0.0030200211331248283){
     s0+=51526.0;
     s1+=351.0;
    } else {
     s0+=102.0;
     s1+=77.0;
    }
   } else {
    if(i41<0.0020227469503879547){
     s0+=5526.0;
     s1+=1329.0;
    } else {
     s0+=11271.0;
     s1+=314.0;
    }
   }
  } else {
   if(i51<0.007080674171447754){
    if(i30<1.5682398080825806){
     s0+=30.0;
     s1+=304.0;
    } else {
     s0+=31.0;
     s1+=36.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s1+=3.0;
    } else {
     s0+=46.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i10<0.0005320310592651367){
   if(i17<1.073305606842041){
    if(i41<0.0012476966949179769){
     s1+=159.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i35<1.1463401317596436){
     s1+=18.0;
    } else {
     s0+=542.0;
     s1+=12.0;
    }
   }
  } else {
   if(i42<1.2392117977142334){
    s1+=598.0;
   } else {
    if(i3<1.004136562347412){
     s0+=35.0;
     s1+=6.0;
    } else {
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i5<0.00014764070510864258){
  if(i31<0.013422597199678421){
   if(i19<1.0008468627929688){
    if(i63<0.0004407443047966808){
     s0+=658.0;
     s1+=142.0;
    } else {
     s0+=71.0;
     s1+=139.0;
    }
   } else {
    if(i70<0.05898991599678993){
     s0+=5.0;
     s1+=91.0;
    } else {
     s0+=14.0;
     s1+=9.0;
    }
   }
  } else {
   if(i10<-0.0004054605960845947){
    if(i38<7.18235969543457e-05){
     s0+=263.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i62<0.023274123668670654){
     s0+=89.0;
     s1+=1015.0;
    } else {
     s0+=353.0;
     s1+=568.0;
    }
   }
  }
 } else {
  if(i32<1.010434865951538){
   if(i5<0.0008628964424133301){
    if(i29<1.0237395763397217){
     s0+=43.0;
     s1+=859.0;
    } else {
     s0+=322.0;
     s1+=604.0;
    }
   } else {
    if(i17<1.122573733329773){
     s0+=37.0;
     s1+=546.0;
    } else {
     s0+=3.0;
     s1+=1569.0;
    }
   }
  } else {
   if(i3<1.0016688108444214){
    if(i51<0.026142776012420654){
     s0+=6.0;
     s1+=261.0;
    } else {
     s0+=42.0;
     s1+=39.0;
    }
   } else {
    if(i8<-3.450233634794131e-05){
     s0+=4.0;
     s1+=8041.0;
    } else {
     s0+=4.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i6<0.07133761048316956){
 if(i10<0.000634312629699707){
  if(i4<3.725290298461914e-05){
   if(i1<0.08205908536911011){
    if(i42<1.067622423171997){
     s0+=36080.0;
     s1+=13.0;
    } else {
     s0+=31381.0;
     s1+=1842.0;
    }
   } else {
    if(i18<0.9981814622879028){
     s0+=337.0;
     s1+=5.0;
    } else {
     s0+=112.0;
     s1+=737.0;
    }
   }
  } else {
   if(i19<0.9992132782936096){
    if(i65<0.9981515407562256){
     s0+=240.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i36<-1.4089584510657005e-05){
     s0+=8.0;
     s1+=244.0;
    } else {
     s0+=147.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i21<1.0009267330169678){
   if(i64<-0.0034607350826263428){
    if(i63<-1.6475969459861517e-06){
     s0+=7.0;
    } else {
     s0+=13.0;
     s1+=107.0;
    }
   } else {
    if(i35<1.1773569583892822){
     s0+=37.0;
     s1+=51.0;
    } else {
     s0+=497.0;
     s1+=41.0;
    }
   }
  } else {
   if(i45<0.00020907357975374907){
    s0+=13.0;
   } else {
    if(i67<0.00010437727905809879){
     s0+=10.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=1539.0;
    }
   }
  }
 }
} else {
 if(i8<-2.1745217964053154e-05){
  if(i20<0.026379745453596115){
   if(i50<0.050236403942108154){
    if(i1<0.09984230995178223){
     s0+=133.0;
     s1+=264.0;
    } else {
     s0+=16.0;
     s1+=1829.0;
    }
   } else {
    if(i6<0.11343473196029663){
     s0+=273.0;
     s1+=66.0;
    } else {
     s0+=101.0;
     s1+=367.0;
    }
   }
  } else {
   if(i6<0.11222288012504578){
    if(i52<0.006250858306884766){
     s0+=56.0;
     s1+=1122.0;
    } else {
     s0+=69.0;
     s1+=23.0;
    }
   } else {
    if(i39<1.0590121746063232){
     s0+=4.0;
    } else {
     s0+=33.0;
     s1+=8366.0;
    }
   }
  }
 } else {
  if(i43<0.9994693994522095){
   if(i72<0.9994699954986572){
    if(i18<0.9985741376876831){
     s0+=448.0;
    } else {
     s0+=50.0;
     s1+=7.0;
    }
   } else {
    if(i67<0.00017909685266204178){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=15.0;
    }
   }
  } else {
   if(i60<-0.001366257667541504){
    if(i71<-0.02551848441362381){
     s0+=57.0;
     s1+=75.0;
    } else {
     s0+=15.0;
     s1+=163.0;
    }
   } else {
    if(i16<0.0033664419315755367){
     s0+=757.0;
     s1+=142.0;
    } else {
     s0+=41.0;
     s1+=145.0;
    }
   }
  }
 }
}
if(i5<0.0005491673946380615){
 if(i22<1.0081137418746948){
  if(i0<0.08223113417625427){
   if(i53<0.00803966261446476){
    if(i26<0.00028786336770281196){
     s0+=52219.0;
     s1+=176.0;
    } else {
     s0+=12542.0;
     s1+=910.0;
    }
   } else {
    if(i6<0.024055391550064087){
     s0+=2135.0;
     s1+=308.0;
    } else {
     s0+=484.0;
     s1+=385.0;
    }
   }
  } else {
   if(i38<-0.000141143798828125){
    if(i36<-1.0366239621362183e-05){
     s0+=17.0;
     s1+=14.0;
    } else {
     s0+=347.0;
    }
   } else {
    if(i33<0.06302404403686523){
     s0+=29.0;
     s1+=802.0;
    } else {
     s0+=494.0;
     s1+=827.0;
    }
   }
  }
 } else {
  if(i2<0.0777827799320221){
   if(i35<1.1040980815887451){
    if(i36<-3.234262294427026e-06){
     s0+=15.0;
     s1+=271.0;
    } else {
     s0+=287.0;
     s1+=11.0;
    }
   } else {
    if(i40<6.169098196551204e-05){
     s0+=1105.0;
     s1+=4.0;
    } else {
     s0+=294.0;
     s1+=35.0;
    }
   }
  } else {
   if(i51<0.016230404376983643){
    if(i48<0.05818060040473938){
     s0+=16.0;
     s1+=689.0;
    } else {
     s0+=85.0;
     s1+=261.0;
    }
   } else {
    if(i0<0.1597805917263031){
     s0+=440.0;
     s1+=77.0;
    } else {
     s0+=216.0;
     s1+=652.0;
    }
   }
  }
 }
} else {
 if(i18<0.9988254308700562){
  s0+=143.0;
 } else {
  if(i9<1.0175838470458984){
   if(i19<0.9978667497634888){
    if(i43<1.0007983446121216){
     s1+=12.0;
    } else {
     s0+=47.0;
     s1+=1.0;
    }
   } else {
    if(i36<-1.552835055917967e-05){
     s0+=226.0;
     s1+=3598.0;
    } else {
     s0+=130.0;
     s1+=177.0;
    }
   }
  } else {
   if(i5<0.0008994340896606445){
    if(i1<0.09158909320831299){
     s0+=32.0;
     s1+=17.0;
    } else {
     s0+=21.0;
     s1+=477.0;
    }
   } else {
    s1+=7224.0;
   }
  }
 }
}
if(i21<1.0039215087890625){
 if(i7<1.0452277660369873){
  if(i63<0.0002614867116790265){
   if(i20<0.025327950716018677){
    if(i0<0.08762961626052856){
     s0+=54389.0;
     s1+=339.0;
    } else {
     s0+=38.0;
     s1+=104.0;
    }
   } else {
    if(i17<1.0428297519683838){
     s0+=336.0;
     s1+=1.0;
    } else {
     s0+=94.0;
     s1+=284.0;
    }
   }
  } else {
   if(i39<1.178917407989502){
    if(i38<-5.239248275756836e-05){
     s0+=2263.0;
     s1+=152.0;
    } else {
     s0+=1008.0;
     s1+=1024.0;
    }
   } else {
    if(i0<0.09842881560325623){
     s0+=6643.0;
     s1+=93.0;
    } else {
     s1+=94.0;
    }
   }
  }
 } else {
  if(i2<0.09758689999580383){
   if(i8<-1.9951881768065505e-05){
    if(i59<-0.00016253817011602223){
     s0+=742.0;
     s1+=789.0;
    } else {
     s0+=661.0;
     s1+=176.0;
    }
   } else {
    if(i19<1.000422716140747){
     s0+=2991.0;
     s1+=130.0;
    } else {
     s0+=295.0;
     s1+=168.0;
    }
   }
  } else {
   if(i73<1.6699476645953837e-06){
    if(i47<0.0606614351272583){
     s0+=47.0;
     s1+=2353.0;
    } else {
     s0+=602.0;
     s1+=1301.0;
    }
   } else {
    s0+=205.0;
   }
  }
 }
} else {
 if(i14<1.627206802368164e-05){
  if(i27<1.0335593223571777){
   if(i2<0.06342148780822754){
    if(i54<0.0018347466830164194){
     s0+=528.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=20.0;
    }
   } else {
    if(i4<-8.940696716308594e-08){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=114.0;
    }
   }
  } else {
   if(i38<6.756186485290527e-05){
    if(i18<0.9986348152160645){
     s0+=19.0;
    } else {
     s0+=20.0;
     s1+=995.0;
    }
   } else {
    if(i55<0.9999489784240723){
     s1+=64.0;
    } else {
     s0+=96.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i59<-0.00046664534602314234){
   if(i26<0.00023388068075291812){
    s0+=1.0;
   } else {
    s1+=6203.0;
   }
  } else {
   if(i31<0.016865089535713196){
    if(i60<0.006395578384399414){
     s0+=48.0;
     s1+=1378.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   } else {
    if(i55<1.0007747411727905){
     s0+=2.0;
     s1+=1341.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i8<-6.663481326540932e-05){
 if(i1<0.06116694211959839){
  if(i18<1.0015435218811035){
   if(i7<1.0561127662658691){
    if(i0<0.03673246502876282){
     s0+=616.0;
     s1+=2.0;
    } else {
     s0+=128.0;
     s1+=12.0;
    }
   } else {
    if(i1<0.012301534414291382){
     s0+=3.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i66<2.567395131336525e-05){
    if(i53<0.016220573335886){
     s0+=62.0;
     s1+=145.0;
    } else {
     s0+=4.0;
     s1+=168.0;
    }
   } else {
    if(i16<0.022676322609186172){
     s0+=198.0;
     s1+=18.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i14<0.0002161264419555664){
   if(i8<-0.00011752272257581353){
    if(i41<0.0004991916357539594){
     s0+=2.0;
    } else {
     s0+=24.0;
     s1+=8452.0;
    }
   } else {
    if(i30<1.5682398080825806){
     s0+=64.0;
     s1+=2868.0;
    } else {
     s0+=147.0;
     s1+=112.0;
    }
   }
  } else {
   s0+=36.0;
  }
 }
} else {
 if(i33<0.05951821804046631){
  if(i11<1.0452277660369873){
   if(i78<0.0434558242559433){
    if(i57<0.9698680639266968){
     s0+=28.0;
     s1+=31.0;
    } else {
     s0+=52808.0;
     s1+=359.0;
    }
   } else {
    if(i32<0.9744319915771484){
     s0+=3749.0;
     s1+=9.0;
    } else {
     s0+=4167.0;
     s1+=629.0;
    }
   }
  } else {
   if(i15<7.671117782592773e-05){
    if(i0<0.07551455497741699){
     s0+=6007.0;
     s1+=876.0;
    } else {
     s0+=77.0;
     s1+=905.0;
    }
   } else {
    if(i11<1.0847015380859375){
     s0+=285.0;
     s1+=588.0;
    } else {
     s0+=202.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i62<0.035431623458862305){
   if(i47<0.04000940918922424){
    if(i34<0.00044754683040082455){
     s0+=35.0;
    } else {
     s0+=194.0;
     s1+=631.0;
    }
   } else {
    if(i31<0.024912390857934952){
     s0+=685.0;
     s1+=375.0;
    } else {
     s0+=100.0;
     s1+=219.0;
    }
   }
  } else {
   if(i2<0.11779376864433289){
    if(i1<0.0932374894618988){
     s0+=776.0;
     s1+=22.0;
    } else {
     s0+=370.0;
     s1+=108.0;
    }
   } else {
    if(i8<-8.962464562500827e-06){
     s0+=183.0;
     s1+=392.0;
    } else {
     s0+=274.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i11<1.0555626153945923){
 if(i9<1.0074933767318726){
  if(i6<0.07533681392669678){
   if(i3<1.0025041103363037){
    if(i45<0.0003125159128103405){
     s0+=47200.0;
     s1+=46.0;
    } else {
     s0+=16832.0;
     s1+=1299.0;
    }
   } else {
    if(i54<0.0009393781656399369){
     s0+=24.0;
    } else {
     s0+=4.0;
     s1+=140.0;
    }
   }
  } else {
   if(i2<0.09512433409690857){
    if(i46<0.026208065450191498){
     s0+=170.0;
     s1+=34.0;
    } else {
     s0+=74.0;
     s1+=111.0;
    }
   } else {
    if(i55<0.9994704723358154){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i41<0.0024027936160564423){
   if(i42<1.0624027252197266){
    s0+=7.0;
   } else {
    if(i16<0.0009513429831713438){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=24.0;
     s1+=518.0;
    }
   }
  } else {
   if(i3<1.0048227310180664){
    if(i51<-0.009577125310897827){
     s1+=2.0;
    } else {
     s0+=154.0;
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i13<1.0065443515777588){
  if(i2<0.0921301543712616){
   if(i18<1.0028427839279175){
    if(i8<-1.5332709153881297e-05){
     s0+=1766.0;
     s1+=862.0;
    } else {
     s0+=3188.0;
     s1+=264.0;
    }
   } else {
    if(i53<0.006908876821398735){
     s0+=144.0;
     s1+=45.0;
    } else {
     s0+=34.0;
     s1+=259.0;
    }
   }
  } else {
   if(i16<0.004695484880357981){
    if(i48<0.06750980019569397){
     s0+=30.0;
     s1+=558.0;
    } else {
     s0+=798.0;
     s1+=252.0;
    }
   } else {
    if(i5<-0.000802844762802124){
     s0+=45.0;
     s1+=71.0;
    } else {
     s0+=96.0;
     s1+=2793.0;
    }
   }
  }
 } else {
  if(i35<1.2680565118789673){
   if(i10<0.00051116943359375){
    if(i11<1.1177406311035156){
     s0+=153.0;
     s1+=611.0;
    } else {
     s0+=252.0;
     s1+=126.0;
    }
   } else {
    if(i3<1.0023305416107178){
     s0+=3.0;
    } else {
     s0+=11.0;
     s1+=1790.0;
    }
   }
  } else {
   if(i33<0.28118306398391724){
    if(i8<-3.637463669292629e-05){
     s1+=6003.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i67<0.00014276053116191179){
     s0+=2.0;
    } else {
     s1+=1152.0;
    }
   }
  }
 }
}
if(i24<1.009966492652893){
 if(i1<0.0853736400604248){
  if(i5<0.0006167292594909668){
   if(i53<0.009426048956811428){
    if(i26<0.0002933872165158391){
     s0+=53025.0;
     s1+=234.0;
    } else {
     s0+=12607.0;
     s1+=1075.0;
    }
   } else {
    if(i0<0.02221757173538208){
     s0+=1390.0;
     s1+=184.0;
    } else {
     s0+=469.0;
     s1+=403.0;
    }
   }
  } else {
   if(i3<1.0016140937805176){
    if(i31<0.02796405553817749){
     s0+=64.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i51<0.006417423486709595){
     s0+=122.0;
     s1+=717.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<-0.0007118880748748779){
   if(i14<-2.0623207092285156e-05){
    if(i43<0.9991846084594727){
     s0+=493.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i8<1.1173870007041842e-07){
     s0+=50.0;
     s1+=121.0;
    } else {
     s0+=57.0;
     s1+=6.0;
    }
   }
  } else {
   if(i30<1.0840110778808594){
    s0+=68.0;
   } else {
    if(i54<0.00032113780616782606){
     s0+=161.0;
     s1+=230.0;
    } else {
     s0+=254.0;
     s1+=3181.0;
    }
   }
  }
 }
} else {
 if(i12<0.000698477029800415){
  if(i33<0.10772627592086792){
   if(i2<0.11275005340576172){
    if(i41<0.0021766754798591137){
     s0+=420.0;
     s1+=488.0;
    } else {
     s0+=1218.0;
     s1+=65.0;
    }
   } else {
    if(i27<1.0849640369415283){
     s0+=8.0;
     s1+=517.0;
    } else {
     s0+=26.0;
     s1+=151.0;
    }
   }
  } else {
   if(i54<0.0012046520132571459){
    if(i47<0.07918095588684082){
     s0+=6.0;
     s1+=124.0;
    } else {
     s0+=270.0;
     s1+=46.0;
    }
   } else {
    if(i17<1.1438206434249878){
     s0+=26.0;
     s1+=59.0;
    } else {
     s0+=24.0;
     s1+=886.0;
    }
   }
  }
 } else {
  if(i0<0.06427392363548279){
   if(i30<1.1386182308197021){
    s1+=88.0;
   } else {
    if(i54<0.0016304125310853124){
     s0+=147.0;
     s1+=5.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i5<4.285573959350586e-05){
    if(i73<-6.414109066099627e-07){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i31<0.013076664879918098){
     s0+=64.0;
     s1+=1149.0;
    } else {
     s1+=7460.0;
    }
   }
  }
 }
}
if(i0<0.08341756463050842){
 if(i40<-1.9830178644042462e-05){
  if(i8<-4.393625204102136e-05){
   s1+=258.0;
  } else {
   if(i63<0.00011602666927501559){
    if(i10<0.00011655688285827637){
     s1+=2.0;
    } else {
     s0+=68.0;
     s1+=1.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i61<-0.00130423903465271){
   if(i10<0.00043886899948120117){
    if(i13<0.9895647764205933){
     s0+=3628.0;
     s1+=136.0;
    } else {
     s0+=1917.0;
     s1+=742.0;
    }
   } else {
    if(i5<0.00018846988677978516){
     s0+=280.0;
     s1+=47.0;
    } else {
     s0+=121.0;
     s1+=480.0;
    }
   }
  } else {
   if(i8<-4.480497591430321e-05){
    if(i50<0.01403847336769104){
     s0+=470.0;
     s1+=496.0;
    } else {
     s0+=779.0;
     s1+=40.0;
    }
   } else {
    if(i53<0.008878214284777641){
     s0+=61266.0;
     s1+=675.0;
    } else {
     s0+=1060.0;
     s1+=197.0;
    }
   }
  }
 }
} else {
 if(i32<1.010434865951538){
  if(i10<-0.00038698315620422363){
   if(i63<0.0010152988834306598){
    if(i28<0.0002509483601897955){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=315.0;
     s1+=3.0;
    }
   } else {
    if(i77<-0.003515273332595825){
     s0+=9.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i33<0.06386220455169678){
    if(i45<0.00021278894564602524){
     s0+=3.0;
    } else {
     s0+=8.0;
     s1+=2164.0;
    }
   } else {
    if(i2<0.12574410438537598){
     s0+=749.0;
     s1+=517.0;
    } else {
     s0+=271.0;
     s1+=2504.0;
    }
   }
  }
 } else {
  if(i14<-1.800060272216797e-05){
   s0+=21.0;
  } else {
   if(i9<1.0093228816986084){
    if(i67<0.00024737860076129436){
     s0+=70.0;
     s1+=11.0;
    } else {
     s1+=411.0;
    }
   } else {
    if(i39<1.2527469396591187){
     s0+=48.0;
     s1+=2608.0;
    } else {
     s1+=5833.0;
    }
   }
  }
 }
}
if(i1<0.08237043023109436){
 if(i4<4.190206527709961e-05){
  if(i56<0.0006788353202864528){
   if(i28<0.000329763104673475){
    if(i17<1.0487183332443237){
     s0+=50440.0;
     s1+=86.0;
    } else {
     s0+=5215.0;
     s1+=339.0;
    }
   } else {
    if(i39<1.1047927141189575){
     s0+=1681.0;
     s1+=462.0;
    } else {
     s0+=2601.0;
     s1+=68.0;
    }
   }
  } else {
   if(i3<0.996563196182251){
    if(i49<0.0014583831652998924){
     s0+=1163.0;
     s1+=66.0;
    } else {
     s0+=3874.0;
     s1+=27.0;
    }
   } else {
    if(i42<1.1038670539855957){
     s0+=893.0;
     s1+=748.0;
    } else {
     s0+=2508.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i60<0.0023376941680908203){
   if(i44<0.00037737630191259086){
    s0+=72.0;
   } else {
    if(i42<1.2510931491851807){
     s1+=544.0;
    } else {
     s0+=163.0;
     s1+=310.0;
    }
   }
  } else {
   if(i3<1.0041788816452026){
    if(i31<0.008684271946549416){
     s0+=197.0;
    } else {
     s0+=48.0;
     s1+=15.0;
    }
   } else {
    s1+=8.0;
   }
  }
 }
} else {
 if(i18<0.998518705368042){
  if(i41<0.03495144844055176){
   if(i49<0.009207659400999546){
    if(i21<0.9948263764381409){
     s0+=642.0;
    } else {
     s0+=73.0;
     s1+=8.0;
    }
   } else {
    if(i59<-0.00032536801882088184){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=4.0;
  }
 } else {
  if(i21<1.0023059844970703){
   if(i6<0.15827012062072754){
    if(i69<-0.006360755302011967){
     s0+=670.0;
     s1+=247.0;
    } else {
     s0+=417.0;
     s1+=1994.0;
    }
   } else {
    if(i49<0.0017365581588819623){
     s0+=112.0;
     s1+=9.0;
    } else {
     s0+=47.0;
     s1+=1995.0;
    }
   }
  } else {
   if(i8<-4.217432433506474e-05){
    if(i32<1.0041801929473877){
     s0+=33.0;
     s1+=1300.0;
    } else {
     s1+=8480.0;
    }
   } else {
    if(i42<1.1991922855377197){
     s0+=5.0;
     s1+=115.0;
    } else {
     s0+=88.0;
     s1+=85.0;
    }
   }
  }
 }
}
if(i5<0.0005481839179992676){
 if(i1<0.08556181192398071){
  if(i17<1.0451585054397583){
   if(i58<0.0014198655262589455){
    if(i17<1.0406959056854248){
     s0+=47838.0;
     s1+=66.0;
    } else {
     s0+=4068.0;
     s1+=72.0;
    }
   } else {
    if(i42<1.0703742504119873){
     s0+=1133.0;
    } else {
     s0+=775.0;
     s1+=94.0;
    }
   }
  } else {
   if(i20<0.015047968365252018){
    if(i3<1.000758409500122){
     s0+=9186.0;
     s1+=352.0;
    } else {
     s0+=909.0;
     s1+=229.0;
    }
   } else {
    if(i21<0.9944722652435303){
     s0+=2808.0;
     s1+=124.0;
    } else {
     s0+=1989.0;
     s1+=1168.0;
    }
   }
  }
 } else {
  if(i8<-1.3803890396957286e-05){
   if(i62<0.025624394416809082){
    if(i48<0.05717778205871582){
     s0+=36.0;
     s1+=1405.0;
    } else {
     s0+=121.0;
     s1+=577.0;
    }
   } else {
    if(i0<0.11651751399040222){
     s0+=311.0;
     s1+=153.0;
    } else {
     s0+=154.0;
     s1+=787.0;
    }
   }
  } else {
   if(i55<0.9995752573013306){
    s0+=539.0;
   } else {
    if(i29<1.0025756359100342){
     s0+=63.0;
     s1+=212.0;
    } else {
     s0+=563.0;
     s1+=148.0;
    }
   }
  }
 }
} else {
 if(i6<0.050339967012405396){
  if(i42<1.0795294046401978){
   s0+=157.0;
  } else {
   if(i50<-0.00212937593460083){
    if(i53<0.0061781438998878){
     s0+=50.0;
     s1+=124.0;
    } else {
     s0+=48.0;
     s1+=797.0;
    }
   } else {
    if(i0<0.05762094259262085){
     s0+=94.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i40<9.144796786131337e-05){
   if(i43<0.997780442237854){
    s0+=15.0;
   } else {
    if(i5<0.0009170174598693848){
     s0+=78.0;
     s1+=862.0;
    } else {
     s1+=7648.0;
    }
   }
  } else {
   if(i65<0.9975314736366272){
    if(i76<0.00017892671166919172){
     s0+=23.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i31<0.02251981571316719){
     s0+=117.0;
     s1+=215.0;
    } else {
     s0+=2.0;
     s1+=2055.0;
    }
   }
  }
 }
}
if(i3<1.0024447441101074){
 if(i2<0.08248364925384521){
  if(i0<0.06940379738807678){
   if(i51<-0.006025165319442749){
    if(i1<0.021532833576202393){
     s0+=2561.0;
     s1+=191.0;
    } else {
     s0+=1179.0;
     s1+=514.0;
    }
   } else {
    if(i56<0.0006798866088502109){
     s0+=58560.0;
     s1+=480.0;
    } else {
     s0+=5236.0;
     s1+=365.0;
    }
   }
  } else {
   if(i33<0.046166300773620605){
    if(i4<-5.5164098739624023e-05){
     s0+=57.0;
    } else {
     s0+=15.0;
     s1+=365.0;
    }
   } else {
    if(i47<0.03588908910751343){
     s0+=162.0;
     s1+=201.0;
    } else {
     s0+=1621.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i62<0.036666810512542725){
   if(i3<0.9951149225234985){
    if(i16<0.0061037722043693066){
     s0+=128.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   } else {
    if(i61<0.003993809223175049){
     s0+=99.0;
     s1+=2151.0;
    } else {
     s0+=234.0;
     s1+=615.0;
    }
   }
  } else {
   if(i41<0.010822322219610214){
    if(i18<0.9988187551498413){
     s0+=317.0;
     s1+=8.0;
    } else {
     s0+=635.0;
     s1+=480.0;
    }
   } else {
    if(i1<0.1179804801940918){
     s0+=14.0;
     s1+=3.0;
    } else {
     s1+=303.0;
    }
   }
  }
 }
} else {
 if(i36<-1.2549358871183358e-05){
  if(i3<1.0041282176971436){
   if(i0<0.06766459345817566){
    if(i44<0.0017419559881091118){
     s1+=129.0;
    } else {
     s0+=122.0;
     s1+=69.0;
    }
   } else {
    if(i1<0.1307906210422516){
     s0+=63.0;
     s1+=361.0;
    } else {
     s0+=1.0;
     s1+=860.0;
    }
   }
  } else {
   if(i12<-0.0031030774116516113){
    s0+=3.0;
   } else {
    if(i75<-0.001327425241470337){
     s0+=29.0;
     s1+=1529.0;
    } else {
     s0+=9.0;
     s1+=8138.0;
    }
   }
  }
 } else {
  if(i10<0.00028207898139953613){
   if(i2<0.06504949927330017){
    if(i3<1.002455234527588){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i50<0.09679454565048218){
     s1+=102.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i67<0.0005528430920094252){
    if(i41<0.008980338461697102){
     s0+=164.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=34.0;
   }
  }
 }
}
if(i21<1.0038833618164062){
 if(i11<1.0452277660369873){
  if(i61<-0.0013700127601623535){
   if(i6<0.048216789960861206){
    if(i68<0.05610695853829384){
     s0+=912.0;
     s1+=287.0;
    } else {
     s0+=2837.0;
     s1+=65.0;
    }
   } else {
    if(i14<-1.65402889251709e-05){
     s0+=60.0;
     s1+=1.0;
    } else {
     s0+=150.0;
     s1+=208.0;
    }
   }
  } else {
   if(i2<0.08225718140602112){
    if(i11<1.0406912565231323){
     s0+=55392.0;
     s1+=226.0;
    } else {
     s0+=2417.0;
     s1+=159.0;
    }
   } else {
    if(i13<0.9900305271148682){
     s0+=88.0;
     s1+=9.0;
    } else {
     s0+=34.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i8<-4.3687883589882404e-05){
   if(i59<-0.00023773970315232873){
    if(i1<0.014684110879898071){
     s0+=76.0;
     s1+=11.0;
    } else {
     s0+=180.0;
     s1+=3027.0;
    }
   } else {
    if(i21<1.0012333393096924){
     s0+=611.0;
     s1+=314.0;
    } else {
     s0+=35.0;
     s1+=228.0;
    }
   }
  } else {
   if(i31<0.011526502668857574){
    if(i1<0.09972336888313293){
     s0+=3850.0;
     s1+=383.0;
    } else {
     s0+=269.0;
     s1+=194.0;
    }
   } else {
    if(i42<1.1037919521331787){
     s0+=157.0;
     s1+=932.0;
    } else {
     s0+=3249.0;
     s1+=866.0;
    }
   }
  }
 }
} else {
 if(i0<0.05784565210342407){
  if(i73<-5.322434390109265e-06){
   if(i72<0.9991046190261841){
    s0+=25.0;
   } else {
    if(i65<0.997494101524353){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=262.0;
    }
   }
  } else {
   if(i36<-1.4701647160109133e-05){
    if(i58<0.019724737852811813){
     s1+=29.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i69<0.004769166931509972){
     s0+=561.0;
     s1+=4.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i31<0.013808587566018105){
   if(i13<1.006256103515625){
    if(i37<1.0012118816375732){
     s0+=2.0;
     s1+=66.0;
    } else {
     s0+=109.0;
     s1+=34.0;
    }
   } else {
    if(i61<0.0037253499031066895){
     s0+=4.0;
     s1+=1437.0;
    } else {
     s0+=33.0;
     s1+=72.0;
    }
   }
  } else {
   if(i54<0.0015891033690422773){
    if(i12<-8.20159912109375e-05){
     s0+=11.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=1335.0;
    }
   } else {
    s1+=6860.0;
   }
  }
 }
}
if(i3<1.0024776458740234){
 if(i33<0.06009453535079956){
  if(i7<1.0401114225387573){
   if(i70<0.010472260415554047){
    if(i75<-0.0021469295024871826){
     s0+=109.0;
     s1+=128.0;
    } else {
     s0+=44562.0;
     s1+=92.0;
    }
   } else {
    if(i4<-9.5367431640625e-06){
     s0+=15998.0;
     s1+=585.0;
    } else {
     s0+=1788.0;
     s1+=611.0;
    }
   }
  } else {
   if(i10<-0.0002327561378479004){
    if(i0<0.08259281516075134){
     s0+=1795.0;
     s1+=56.0;
    } else {
     s0+=16.0;
     s1+=32.0;
    }
   } else {
    if(i6<0.06563779711723328){
     s0+=3829.0;
     s1+=1164.0;
    } else {
     s0+=103.0;
     s1+=735.0;
    }
   }
  }
 } else {
  if(i10<-0.0003809332847595215){
   if(i36<-1.0106780791829806e-05){
    if(i3<0.9927517175674438){
     s0+=44.0;
    } else {
     s0+=7.0;
     s1+=9.0;
    }
   } else {
    if(i56<0.002851455705240369){
     s0+=589.0;
     s1+=2.0;
    } else {
     s0+=50.0;
     s1+=4.0;
    }
   }
  } else {
   if(i46<0.05690683424472809){
    if(i75<0.0014415979385375977){
     s0+=1068.0;
     s1+=344.0;
    } else {
     s0+=238.0;
     s1+=477.0;
    }
   } else {
    if(i1<0.12720870971679688){
     s0+=397.0;
     s1+=230.0;
    } else {
     s0+=199.0;
     s1+=1378.0;
    }
   }
  }
 }
} else {
 if(i8<-4.505975084612146e-05){
  if(i1<0.06488978862762451){
   if(i36<-1.2960616913915146e-05){
    if(i50<0.003922879695892334){
     s0+=41.0;
     s1+=415.0;
    } else {
     s0+=36.0;
     s1+=10.0;
    }
   } else {
    s0+=31.0;
   }
  } else {
   if(i30<1.613681674003601){
    if(i17<1.0629007816314697){
     s0+=12.0;
     s1+=104.0;
    } else {
     s0+=22.0;
     s1+=8812.0;
    }
   } else {
    if(i15<2.950429916381836e-05){
     s0+=58.0;
     s1+=161.0;
    } else {
     s1+=1479.0;
    }
   }
  }
 } else {
  if(i73<-4.980975518265041e-06){
   if(i16<0.002282279310747981){
    s0+=2.0;
   } else {
    s1+=201.0;
   }
  } else {
   if(i34<0.0010905900271609426){
    if(i17<1.0435279607772827){
     s0+=1.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i22<0.9760712385177612){
     s1+=5.0;
    } else {
     s0+=192.0;
    }
   }
  }
 }
}
if(i22<1.0082732439041138){
 if(i2<0.08309999108314514){
  if(i58<0.0016941811190918088){
   if(i28<0.0002956286771222949){
    if(i10<0.0007762312889099121){
     s0+=55137.0;
     s1+=347.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i21<0.9946312308311462){
     s0+=4521.0;
     s1+=31.0;
    } else {
     s0+=2413.0;
     s1+=653.0;
    }
   }
  } else {
   if(i4<2.8192996978759766e-05){
    if(i30<1.1013743877410889){
     s0+=1404.0;
     s1+=532.0;
    } else {
     s0+=4143.0;
     s1+=340.0;
    }
   } else {
    if(i34<0.010654469020664692){
     s0+=58.0;
     s1+=650.0;
    } else {
     s0+=41.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i14<-1.722574234008789e-05){
   if(i36<-9.672961823525839e-06){
    if(i55<0.9999494552612305){
     s1+=4.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=237.0;
   }
  } else {
   if(i58<0.0031768500339239836){
    if(i20<0.023768723011016846){
     s0+=311.0;
     s1+=343.0;
    } else {
     s0+=128.0;
     s1+=1075.0;
    }
   } else {
    if(i67<0.00011127203470095992){
     s0+=32.0;
     s1+=21.0;
    } else {
     s0+=35.0;
     s1+=1863.0;
    }
   }
  }
 }
} else {
 if(i9<1.0158612728118896){
  if(i0<0.0732065737247467){
   if(i42<1.1040980815887451){
    if(i8<-2.4269416826427914e-05){
     s0+=2.0;
     s1+=256.0;
    } else {
     s0+=266.0;
     s1+=17.0;
    }
   } else {
    if(i4<8.493661880493164e-05){
     s0+=1261.0;
     s1+=25.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i8<-2.1520405425690114e-05){
    if(i8<-4.1549203160684556e-05){
     s0+=114.0;
     s1+=2072.0;
    } else {
     s0+=141.0;
     s1+=464.0;
    }
   } else {
    if(i29<1.0257666110992432){
     s0+=83.0;
     s1+=60.0;
    } else {
     s0+=486.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i2<0.10071703791618347){
   if(i35<1.2369153499603271){
    if(i17<1.2046691179275513){
     s0+=10.0;
     s1+=384.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i38<0.00014635920524597168){
     s0+=109.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i15<-2.6881694793701172e-05){
    if(i67<0.00030495747341774404){
     s0+=64.0;
     s1+=35.0;
    } else {
     s0+=3.0;
     s1+=253.0;
    }
   } else {
    if(i16<0.0031838875729590654){
     s0+=21.0;
     s1+=267.0;
    } else {
     s1+=7388.0;
    }
   }
  }
 }
}
if(i4<3.641843795776367e-05){
 if(i9<1.0081498622894287){
  if(i6<0.07537484169006348){
   if(i52<-0.0015021562576293945){
    if(i0<0.057426631450653076){
     s0+=3792.0;
     s1+=577.0;
    } else {
     s0+=111.0;
     s1+=245.0;
    }
   } else {
    if(i0<0.08222377300262451){
     s0+=64112.0;
     s1+=1010.0;
    } else {
     s0+=136.0;
     s1+=413.0;
    }
   }
  } else {
   if(i35<1.3685884475708008){
    if(i16<0.0016940231435000896){
     s0+=466.0;
     s1+=67.0;
    } else {
     s0+=615.0;
     s1+=834.0;
    }
   } else {
    if(i18<0.9985276460647583){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=24.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i41<0.0022188867442309856){
   if(i8<-2.3205746401799843e-05){
    if(i34<0.0021999296732246876){
     s0+=3.0;
     s1+=809.0;
    } else {
     s0+=53.0;
     s1+=17.0;
    }
   } else {
    if(i67<0.0007561333477497101){
     s0+=73.0;
     s1+=3.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i49<0.003887332044541836){
    if(i17<1.0847299098968506){
     s0+=27.0;
     s1+=83.0;
    } else {
     s0+=730.0;
     s1+=157.0;
    }
   } else {
    if(i67<0.0002943436847999692){
     s0+=180.0;
     s1+=117.0;
    } else {
     s0+=86.0;
     s1+=607.0;
    }
   }
  }
 }
} else {
 if(i30<1.082350254058838){
  s0+=295.0;
 } else {
  if(i0<0.06268706917762756){
   if(i3<1.0041799545288086){
    if(i24<0.9947383999824524){
     s0+=38.0;
     s1+=124.0;
    } else {
     s0+=226.0;
     s1+=83.0;
    }
   } else {
    if(i15<-0.00041157007217407227){
     s0+=6.0;
    } else {
     s0+=10.0;
     s1+=246.0;
    }
   }
  } else {
   if(i2<0.1316651701927185){
    if(i37<1.0465359687805176){
     s0+=128.0;
     s1+=1915.0;
    } else {
     s0+=45.0;
     s1+=24.0;
    }
   } else {
    if(i8<-5.452239929581992e-05){
     s0+=5.0;
     s1+=9137.0;
    } else {
     s0+=18.0;
     s1+=131.0;
    }
   }
  }
 }
}
if(i9<1.0080137252807617){
 if(i6<0.08104267716407776){
  if(i11<1.0450963973999023){
   if(i5<0.0007365942001342773){
    if(i0<0.08247250318527222){
     s0+=62050.0;
     s1+=818.0;
    } else {
     s0+=136.0;
     s1+=144.0;
    }
   } else {
    if(i28<0.00017012024181894958){
     s0+=16.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=84.0;
    }
   }
  } else {
   if(i0<0.07536956667900085){
    if(i72<1.0006192922592163){
     s0+=4683.0;
     s1+=488.0;
    } else {
     s0+=1456.0;
     s1+=718.0;
    }
   } else {
    if(i19<0.9966092109680176){
     s0+=95.0;
     s1+=16.0;
    } else {
     s0+=252.0;
     s1+=791.0;
    }
   }
  }
 } else {
  if(i47<0.053265929222106934){
   if(i10<-0.0004551410675048828){
    s0+=15.0;
   } else {
    if(i16<0.0014297168236225843){
     s0+=23.0;
     s1+=16.0;
    } else {
     s0+=23.0;
     s1+=1747.0;
    }
   }
  } else {
   if(i36<-3.2748785088188015e-06){
    if(i16<0.006994210183620453){
     s0+=268.0;
     s1+=253.0;
    } else {
     s0+=59.0;
     s1+=869.0;
    }
   } else {
    if(i72<1.0011413097381592){
     s0+=586.0;
     s1+=57.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i16<0.0033130189403891563){
  if(i39<1.0922304391860962){
   if(i17<1.0862454175949097){
    if(i5<2.232193946838379e-05){
     s0+=22.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=624.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i40<-2.978185875690542e-05){
    s1+=208.0;
   } else {
    if(i74<2.7925784706894774e-06){
     s0+=1215.0;
     s1+=166.0;
    } else {
     s0+=25.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i10<-0.0002461671829223633){
   s0+=133.0;
  } else {
   if(i20<0.0029278784058988094){
    if(i34<0.007585960440337658){
     s1+=59.0;
    } else {
     s0+=10.0;
     s1+=8.0;
    }
   } else {
    if(i15<6.377696990966797e-06){
     s0+=48.0;
     s1+=883.0;
    } else {
     s0+=1.0;
     s1+=8975.0;
    }
   }
  }
 }
}
if(i1<0.0852321982383728){
 if(i21<1.0049262046813965){
  if(i53<0.007525707129389048){
   if(i61<-0.001112908124923706){
    if(i39<1.1645522117614746){
     s0+=1786.0;
     s1+=568.0;
    } else {
     s0+=2905.0;
     s1+=15.0;
    }
   } else {
    if(i7<1.0375813245773315){
     s0+=54876.0;
     s1+=315.0;
    } else {
     s0+=5805.0;
     s1+=534.0;
    }
   }
  } else {
   if(i5<0.0002968311309814453){
    if(i41<0.00219356338493526){
     s0+=1281.0;
     s1+=468.0;
    } else {
     s0+=2021.0;
     s1+=181.0;
    }
   } else {
    if(i60<0.004742145538330078){
     s0+=58.0;
     s1+=298.0;
    } else {
     s0+=86.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<1.0013792514801025){
   if(i44<0.0012393491342663765){
    if(i32<1.003294825553894){
     s0+=27.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i53<0.0149160111322999){
     s0+=327.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   }
  } else {
   if(i8<-4.329489456722513e-05){
    if(i65<0.9975550174713135){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=650.0;
    }
   } else {
    if(i14<2.372264862060547e-05){
     s0+=25.0;
    } else {
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i5<0.0001469254493713379){
  if(i59<-8.26962132123299e-05){
   if(i34<0.0005808603018522263){
    if(i39<1.1013743877410889){
     s0+=144.0;
     s1+=166.0;
    } else {
     s0+=157.0;
    }
   } else {
    if(i14<-1.5676021575927734e-05){
     s0+=248.0;
     s1+=13.0;
    } else {
     s0+=264.0;
     s1+=1532.0;
    }
   }
  } else {
   if(i3<0.9955664873123169){
    if(i12<-0.003957629203796387){
     s0+=23.0;
     s1+=9.0;
    } else {
     s0+=315.0;
    }
   } else {
    if(i7<1.0387130975723267){
     s0+=9.0;
     s1+=107.0;
    } else {
     s0+=334.0;
     s1+=122.0;
    }
   }
  }
 } else {
  if(i2<0.1307239532470703){
   if(i71<-0.017524030059576035){
    if(i3<1.0049705505371094){
     s0+=207.0;
     s1+=44.0;
    } else {
     s0+=4.0;
     s1+=41.0;
    }
   } else {
    if(i60<0.0089854896068573){
     s0+=55.0;
     s1+=1863.0;
    } else {
     s0+=90.0;
     s1+=27.0;
    }
   }
  } else {
   if(i67<0.0002298542531207204){
    if(i8<-3.8944239349802956e-05){
     s0+=13.0;
     s1+=414.0;
    } else {
     s0+=56.0;
     s1+=16.0;
    }
   } else {
    if(i5<0.0007506608963012695){
     s0+=29.0;
     s1+=1209.0;
    } else {
     s0+=4.0;
     s1+=8397.0;
    }
   }
  }
 }
}
if(i0<0.08195626735687256){
 if(i19<1.0027871131896973){
  if(i61<-0.0013785958290100098){
   if(i41<0.001567268744111061){
    if(i63<0.0004053295706398785){
     s0+=1153.0;
     s1+=237.0;
    } else {
     s0+=260.0;
     s1+=439.0;
    }
   } else {
    if(i0<0.057472437620162964){
     s0+=3372.0;
     s1+=120.0;
    } else {
     s0+=229.0;
     s1+=95.0;
    }
   }
  } else {
   if(i78<0.04719199240207672){
    if(i24<1.0095566511154175){
     s0+=55912.0;
     s1+=377.0;
    } else {
     s0+=246.0;
     s1+=143.0;
    }
   } else {
    if(i21<0.9941493272781372){
     s0+=3711.0;
     s1+=16.0;
    } else {
     s0+=3385.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i21<1.004075050354004){
   if(i31<0.06461568921804428){
    if(i66<1.3120706171321217e-05){
     s0+=277.0;
     s1+=228.0;
    } else {
     s0+=927.0;
     s1+=49.0;
    }
   } else {
    s1+=44.0;
   }
  } else {
   if(i10<0.0005760788917541504){
    if(i73<-4.984387487638742e-06){
     s0+=5.0;
     s1+=60.0;
    } else {
     s0+=69.0;
     s1+=5.0;
    }
   } else {
    if(i34<0.01064999308437109){
     s1+=558.0;
    } else {
     s0+=8.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i16<0.00464391615241766){
  if(i12<0.0008144378662109375){
   if(i10<-0.00040227174758911133){
    if(i40<0.0001750669616740197){
     s0+=315.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=10.0;
    }
   } else {
    if(i51<0.016254663467407227){
     s0+=293.0;
     s1+=1093.0;
    } else {
     s0+=766.0;
     s1+=257.0;
    }
   }
  } else {
   if(i41<0.004023275338113308){
    s1+=738.0;
   } else {
    if(i13<1.0087772607803345){
     s0+=42.0;
     s1+=24.0;
    } else {
     s0+=2.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i0<0.10992497205734253){
   if(i50<0.04910731315612793){
    if(i18<0.9983546733856201){
     s0+=18.0;
    } else {
     s0+=15.0;
     s1+=928.0;
    }
   } else {
    if(i11<1.0355926752090454){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=172.0;
     s1+=11.0;
    }
   }
  } else {
   if(i38<-0.00027677416801452637){
    if(i44<0.015981419011950493){
     s0+=63.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i31<0.0010598059743642807){
     s0+=3.0;
    } else {
     s0+=39.0;
     s1+=10637.0;
    }
   }
  }
 }
}
if(i7<1.0452215671539307){
 if(i10<0.0005856752395629883){
  if(i63<0.00025583483511582017){
   if(i22<1.0077966451644897){
    if(i0<0.0855831503868103){
     s0+=54484.0;
     s1+=404.0;
    } else {
     s0+=61.0;
     s1+=123.0;
    }
   } else {
    if(i34<0.000733895692974329){
     s0+=122.0;
     s1+=224.0;
    } else {
     s0+=359.0;
     s1+=48.0;
    }
   }
  } else {
   if(i3<0.9970018863677979){
    if(i1<0.08235204219818115){
     s0+=7686.0;
     s1+=124.0;
    } else {
     s0+=189.0;
     s1+=74.0;
    }
   } else {
    if(i41<0.0016889127437025309){
     s0+=778.0;
     s1+=839.0;
    } else {
     s0+=1152.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i5<0.0006622374057769775){
   if(i3<1.0015177726745605){
    if(i31<0.03825150430202484){
     s0+=349.0;
     s1+=31.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i17<1.0703136920928955){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   }
  } else {
   if(i34<0.00037783151492476463){
    s0+=14.0;
   } else {
    if(i46<0.22110103070735931){
     s0+=2.0;
     s1+=633.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i12<0.0007569789886474609){
  if(i18<0.9988383054733276){
   if(i44<0.00920214131474495){
    if(i18<0.9986681938171387){
     s0+=1315.0;
     s1+=5.0;
    } else {
     s0+=113.0;
     s1+=24.0;
    }
   } else {
    if(i14<-2.574920654296875e-05){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   }
  } else {
   if(i41<0.007764844223856926){
    if(i61<-0.0010613799095153809){
     s0+=437.0;
     s1+=639.0;
    } else {
     s0+=3348.0;
     s1+=2004.0;
    }
   } else {
    if(i6<0.09476014971733093){
     s0+=251.0;
     s1+=264.0;
    } else {
     s0+=100.0;
     s1+=1943.0;
    }
   }
  }
 } else {
  if(i8<-4.4039999920642003e-05){
   if(i42<1.0634281635284424){
    s0+=15.0;
   } else {
    if(i1<0.06393200159072876){
     s0+=28.0;
     s1+=148.0;
    } else {
     s1+=9259.0;
    }
   }
  } else {
   if(i49<0.0011081130942329764){
    s1+=86.0;
   } else {
    if(i54<0.0010968009009957314){
     s0+=133.0;
    } else {
     s0+=3.0;
     s1+=52.0;
    }
   }
  }
 }
}
if(i13<1.0060046911239624){
 if(i46<0.035973526537418365){
  if(i22<1.007277488708496){
   if(i58<0.0017736535519361496){
    if(i6<0.07388845086097717){
     s0+=57678.0;
     s1+=459.0;
    } else {
     s0+=373.0;
     s1+=118.0;
    }
   } else {
    if(i8<-5.307889296091162e-05){
     s0+=22.0;
     s1+=129.0;
    } else {
     s0+=1838.0;
     s1+=428.0;
    }
   }
  } else {
   if(i42<1.1040980815887451){
    if(i31<0.012416483834385872){
     s0+=372.0;
     s1+=121.0;
    } else {
     s0+=17.0;
     s1+=304.0;
    }
   } else {
    if(i1<0.11690109968185425){
     s0+=976.0;
     s1+=61.0;
    } else {
     s0+=104.0;
     s1+=181.0;
    }
   }
  }
 } else {
  if(i0<0.065894216299057){
   if(i74<-3.694231281770044e-06){
    if(i28<0.006360429339110851){
     s0+=7.0;
     s1+=84.0;
    } else {
     s0+=21.0;
     s1+=12.0;
    }
   } else {
    if(i5<-0.00030493736267089844){
     s0+=6060.0;
     s1+=205.0;
    } else {
     s0+=1601.0;
     s1+=547.0;
    }
   }
  } else {
   if(i8<-7.999195986485574e-06){
    if(i52<0.0032900869846343994){
     s0+=126.0;
     s1+=2426.0;
    } else {
     s0+=528.0;
     s1+=1485.0;
    }
   } else {
    if(i5<-0.0008569955825805664){
     s0+=327.0;
     s1+=4.0;
    } else {
     s0+=367.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i1<0.06785187125205994){
  if(i8<-4.4529562728712335e-05){
   if(i39<1.187422752380371){
    if(i42<1.2686240673065186){
     s1+=276.0;
    } else {
     s0+=7.0;
     s1+=33.0;
    }
   } else {
    if(i52<-0.008406609296798706){
     s1+=18.0;
    } else {
     s0+=67.0;
    }
   }
  } else {
   if(i42<1.134950041770935){
    if(i3<1.000624418258667){
     s0+=1.0;
    } else {
     s1+=20.0;
    }
   } else {
    s0+=503.0;
   }
  }
 } else {
  if(i4<9.715557098388672e-06){
   if(i41<0.009203368797898293){
    if(i35<1.1919987201690674){
     s0+=1.0;
     s1+=45.0;
    } else {
     s0+=109.0;
     s1+=1.0;
    }
   } else {
    s1+=113.0;
   }
  } else {
   if(i12<0.0006026029586791992){
    if(i38<0.00012490153312683105){
     s0+=58.0;
     s1+=48.0;
    } else {
     s0+=10.0;
     s1+=290.0;
    }
   } else {
    if(i8<-4.332513708504848e-05){
     s1+=9239.0;
    } else {
     s0+=54.0;
     s1+=146.0;
    }
   }
  }
 }
}
if(i2<0.07800713181495667){
 if(i10<0.0005408525466918945){
  if(i45<0.0003005137259606272){
   if(i5<0.0005742907524108887){
    if(i25<1.0083997249603271){
     s0+=46721.0;
     s1+=56.0;
    } else {
     s0+=20.0;
     s1+=49.0;
    }
   } else {
    if(i76<8.962865103967488e-05){
     s1+=22.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   if(i30<1.100754976272583){
    if(i39<1.067455530166626){
     s0+=3785.0;
     s1+=184.0;
    } else {
     s0+=1229.0;
     s1+=1357.0;
    }
   } else {
    if(i2<0.06692442297935486){
     s0+=15783.0;
     s1+=306.0;
    } else {
     s0+=781.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i4<4.7147274017333984e-05){
   if(i51<-0.0017439723014831543){
    if(i66<3.856871626339853e-05){
     s0+=85.0;
     s1+=102.0;
    } else {
     s0+=99.0;
     s1+=3.0;
    }
   } else {
    if(i42<1.2633458375930786){
     s0+=183.0;
     s1+=53.0;
    } else {
     s0+=457.0;
     s1+=8.0;
    }
   }
  } else {
   if(i30<1.5682398080825806){
    if(i73<-4.458471266843844e-06){
     s0+=49.0;
     s1+=905.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   } else {
    if(i64<-0.007896184921264648){
     s0+=1.0;
     s1+=57.0;
    } else {
     s0+=74.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i3<1.001504898071289){
  if(i16<0.0017203264869749546){
   if(i60<-0.0007911324501037598){
    if(i4<-1.4841556549072266e-05){
     s0+=68.0;
     s1+=18.0;
    } else {
     s0+=14.0;
     s1+=81.0;
    }
   } else {
    if(i49<0.0037052989937365055){
     s0+=514.0;
     s1+=55.0;
    } else {
     s0+=31.0;
     s1+=42.0;
    }
   }
  } else {
   if(i3<0.9965636730194092){
    if(i67<0.001667712116613984){
     s0+=438.0;
     s1+=48.0;
    } else {
     s0+=8.0;
     s1+=92.0;
    }
   } else {
    if(i47<0.04680326581001282){
     s0+=32.0;
     s1+=1625.0;
    } else {
     s0+=497.0;
     s1+=973.0;
    }
   }
  }
 } else {
  if(i8<-5.4246134823188186e-05){
   if(i12<3.5822391510009766e-05){
    if(i17<1.124053955078125){
     s0+=88.0;
     s1+=170.0;
    } else {
     s0+=9.0;
     s1+=907.0;
    }
   } else {
    if(i13<1.0041509866714478){
     s0+=2.0;
     s1+=526.0;
    } else {
     s1+=8954.0;
    }
   }
  } else {
   if(i44<0.0019097488839179277){
    if(i49<0.000274145626462996){
     s0+=2.0;
    } else {
     s1+=236.0;
    }
   } else {
    if(i30<1.2392117977142334){
     s0+=7.0;
     s1+=95.0;
    } else {
     s0+=96.0;
     s1+=48.0;
    }
   }
  }
 }
}
if(i8<-7.877762982388958e-05){
 if(i2<0.046956151723861694){
  if(i50<-0.024030715227127075){
   if(i0<0.0062496960163116455){
    if(i41<0.011751146987080574){
     s0+=36.0;
     s1+=25.0;
    } else {
     s0+=79.0;
    }
   } else {
    if(i4<1.2427568435668945e-05){
     s0+=6.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=133.0;
    }
   }
  } else {
   if(i68<0.1349298059940338){
    if(i21<1.000504970550537){
     s0+=119.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   } else {
    s0+=408.0;
   }
  }
 } else {
  if(i35<1.0677311420440674){
   s0+=84.0;
  } else {
   if(i12<-0.0038830339908599854){
    if(i43<1.0019338130950928){
     s0+=2.0;
     s1+=36.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i12<-0.0025437772274017334){
     s0+=33.0;
     s1+=127.0;
    } else {
     s0+=67.0;
     s1+=10722.0;
    }
   }
  }
 }
} else {
 if(i27<1.0398095846176147){
  if(i6<0.07131022214889526){
   if(i9<1.0081751346588135){
    if(i17<1.0486011505126953){
     s0+=55002.0;
     s1+=351.0;
    } else {
     s0+=10153.0;
     s1+=1653.0;
    }
   } else {
    if(i8<-4.221146082272753e-05){
     s0+=45.0;
     s1+=403.0;
    } else {
     s0+=385.0;
     s1+=119.0;
    }
   }
  } else {
   if(i39<1.0598037242889404){
    if(i75<-0.0015519261360168457){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=128.0;
    }
   } else {
    if(i40<0.00013640071847476065){
     s0+=79.0;
     s1+=680.0;
    } else {
     s0+=100.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i8<-2.4743831090745516e-05){
   if(i34<0.0014676002319902182){
    if(i59<-0.0007261269493028522){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=1170.0;
    }
   } else {
    if(i33<0.10772004723548889){
     s0+=935.0;
     s1+=599.0;
    } else {
     s0+=83.0;
     s1+=495.0;
    }
   }
  } else {
   if(i6<0.17150893807411194){
    if(i5<0.0005060434341430664){
     s0+=2985.0;
     s1+=362.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i34<0.0017011279705911875){
     s0+=205.0;
    } else {
     s0+=17.0;
     s1+=229.0;
    }
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i24<1.0103590488433838){
  if(i58<0.00197933753952384){
   if(i28<0.0003217680787201971){
    if(i57<1.0084021091461182){
     s0+=55934.0;
     s1+=477.0;
    } else {
     s0+=615.0;
     s1+=159.0;
    }
   } else {
    if(i3<0.9982870817184448){
     s0+=5131.0;
     s1+=289.0;
    } else {
     s0+=1881.0;
     s1+=966.0;
    }
   }
  } else {
   if(i8<5.292130936140893e-06){
    if(i6<0.04047533869743347){
     s0+=2602.0;
     s1+=525.0;
    } else {
     s0+=346.0;
     s1+=957.0;
    }
   } else {
    if(i68<0.03199782595038414){
     s0+=140.0;
     s1+=43.0;
    } else {
     s0+=1837.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i54<0.001884502125903964){
   if(i38<1.728534698486328e-05){
    if(i55<0.9995800852775574){
     s0+=274.0;
     s1+=4.0;
    } else {
     s0+=376.0;
     s1+=884.0;
    }
   } else {
    if(i45<0.0006276628701016307){
     s0+=34.0;
     s1+=147.0;
    } else {
     s0+=1140.0;
     s1+=119.0;
    }
   }
  } else {
   if(i55<1.0004916191101074){
    if(i17<1.066917896270752){
     s0+=45.0;
     s1+=16.0;
    } else {
     s0+=33.0;
     s1+=868.0;
    }
   } else {
    if(i39<1.2469329833984375){
     s1+=7.0;
    } else {
     s0+=67.0;
    }
   }
  }
 }
} else {
 if(i34<0.0005178223364055157){
  if(i29<1.0062121152877808){
   s0+=289.0;
  } else {
   if(i14<1.9252300262451172e-05){
    s1+=7.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i32<1.0004189014434814){
   if(i63<0.0002169871295336634){
    if(i6<0.15818530321121216){
     s0+=66.0;
     s1+=9.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i1<0.11572536826133728){
     s0+=151.0;
     s1+=448.0;
    } else {
     s0+=22.0;
     s1+=1424.0;
    }
   }
  } else {
   if(i28<0.00016222380509134382){
    if(i72<1.0024523735046387){
     s0+=67.0;
     s1+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i13<1.0095356702804565){
     s0+=102.0;
     s1+=1274.0;
    } else {
     s0+=2.0;
     s1+=8384.0;
    }
   }
  }
 }
}
if(i9<1.0081918239593506){
 if(i3<1.0024927854537964){
  if(i0<0.081397145986557){
   if(i51<-0.006163239479064941){
    if(i30<1.1991922855377197){
     s0+=1103.0;
     s1+=519.0;
    } else {
     s0+=2375.0;
     s1+=258.0;
    }
   } else {
    if(i11<1.042891263961792){
     s0+=58966.0;
     s1+=440.0;
    } else {
     s0+=6014.0;
     s1+=680.0;
    }
   }
  } else {
   if(i18<0.9980460405349731){
    if(i66<4.434135553310625e-05){
     s0+=387.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   } else {
    if(i47<0.049091637134552){
     s0+=62.0;
     s1+=1464.0;
    } else {
     s0+=760.0;
     s1+=661.0;
    }
   }
  }
 } else {
  if(i45<0.0002691307745408267){
   s0+=31.0;
  } else {
   if(i39<1.3301633596420288){
    if(i55<1.0007658004760742){
     s0+=116.0;
     s1+=1126.0;
    } else {
     s0+=12.0;
    }
   } else {
    s1+=876.0;
   }
  }
 }
} else {
 if(i14<2.0563602447509766e-05){
  if(i6<0.16940772533416748){
   if(i43<1.0001285076141357){
    if(i0<0.0694090723991394){
     s0+=265.0;
     s1+=60.0;
    } else {
     s0+=115.0;
     s1+=980.0;
    }
   } else {
    if(i39<1.1107852458953857){
     s0+=6.0;
     s1+=331.0;
    } else {
     s0+=786.0;
     s1+=111.0;
    }
   }
  } else {
   if(i34<0.0016406262293457985){
    if(i35<1.158913493156433){
     s1+=2.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i42<1.2527469396591187){
     s0+=21.0;
     s1+=57.0;
    } else {
     s0+=12.0;
     s1+=1566.0;
    }
   }
  }
 } else {
  if(i9<1.0154021978378296){
   if(i30<1.613681674003601){
    if(i8<-4.084080137545243e-05){
     s0+=8.0;
     s1+=890.0;
    } else {
     s0+=45.0;
     s1+=53.0;
    }
   } else {
    if(i36<-3.374463631189428e-05){
     s0+=2.0;
     s1+=32.0;
    } else {
     s0+=60.0;
     s1+=1.0;
    }
   }
  } else {
   if(i8<-4.20712458435446e-05){
    s1+=6926.0;
   } else {
    if(i40<-1.937765409820713e-05){
     s0+=1.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
}
if(i9<1.0081498622894287){
 if(i0<0.07908812165260315){
  if(i19<1.0027852058410645){
   if(i17<1.0451585054397583){
    if(i52<-0.0017419755458831787){
     s0+=694.0;
     s1+=61.0;
    } else {
     s0+=53066.0;
     s1+=148.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=3431.0;
     s1+=1115.0;
    } else {
     s0+=9861.0;
     s1+=399.0;
    }
   }
  } else {
   if(i12<-0.0019154548645019531){
    if(i52<-0.0009022355079650879){
     s0+=251.0;
     s1+=67.0;
    } else {
     s0+=532.0;
     s1+=1.0;
    }
   } else {
    if(i4<3.343820571899414e-05){
     s0+=202.0;
     s1+=68.0;
    } else {
     s0+=90.0;
     s1+=377.0;
    }
   }
  }
 } else {
  if(i38<-0.00014230608940124512){
   if(i21<0.999220609664917){
    if(i73<-2.438586761854822e-06){
     s0+=16.0;
     s1+=20.0;
    } else {
     s0+=437.0;
    }
   } else {
    if(i1<0.0996360182762146){
     s0+=2.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i16<0.0016388548538088799){
    if(i8<-1.261777742911363e-05){
     s0+=93.0;
     s1+=113.0;
    } else {
     s0+=422.0;
     s1+=27.0;
    }
   } else {
    if(i0<0.11687108874320984){
     s0+=449.0;
     s1+=1175.0;
    } else {
     s0+=57.0;
     s1+=2659.0;
    }
   }
  }
 }
} else {
 if(i8<-4.332234675530344e-05){
  if(i10<-0.00033283233642578125){
   s0+=8.0;
  } else {
   if(i11<1.0466935634613037){
    if(i35<1.2388319969177246){
     s1+=85.0;
    } else {
     s0+=17.0;
     s1+=4.0;
    }
   } else {
    if(i15<6.079673767089844e-06){
     s0+=69.0;
     s1+=655.0;
    } else {
     s0+=22.0;
     s1+=9515.0;
    }
   }
  }
 } else {
  if(i2<0.10603222250938416){
   if(i26<0.0011792480945587158){
    if(i30<1.1108002662658691){
     s0+=44.0;
     s1+=213.0;
    } else {
     s0+=401.0;
     s1+=18.0;
    }
   } else {
    if(i38<0.0003065168857574463){
     s0+=609.0;
     s1+=13.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i48<0.08579891920089722){
    if(i24<1.0553057193756104){
     s0+=4.0;
     s1+=326.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i76<8.848668949212879e-05){
     s0+=147.0;
     s1+=29.0;
    } else {
     s0+=40.0;
     s1+=168.0;
    }
   }
  }
 }
}
if(i21<1.0040043592453003){
 if(i17<1.055552363395691){
  if(i32<1.0072276592254639){
   if(i26<0.00031863641925156116){
    if(i22<1.0104568004608154){
     s0+=51267.0;
     s1+=163.0;
    } else {
     s0+=4.0;
     s1+=12.0;
    }
   } else {
    if(i1<0.07412847876548767){
     s0+=6477.0;
     s1+=352.0;
    } else {
     s0+=427.0;
     s1+=137.0;
    }
   }
  } else {
   if(i3<0.9988064765930176){
    s0+=16.0;
   } else {
    if(i59<-0.00015684161917306483){
     s0+=1.0;
     s1+=51.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i8<-5.483460336108692e-05){
   if(i27<1.0644577741622925){
    if(i59<-0.00037781737046316266){
     s0+=67.0;
     s1+=564.0;
    } else {
     s0+=1053.0;
     s1+=436.0;
    }
   } else {
    if(i6<0.12219879031181335){
     s0+=108.0;
     s1+=245.0;
    } else {
     s0+=12.0;
     s1+=1757.0;
    }
   }
  } else {
   if(i6<0.06071034073829651){
    if(i42<1.1037919521331787){
     s0+=1629.0;
     s1+=948.0;
    } else {
     s0+=7445.0;
     s1+=432.0;
    }
   } else {
    if(i38<-0.00013780593872070312){
     s0+=452.0;
     s1+=17.0;
    } else {
     s0+=1550.0;
     s1+=1882.0;
    }
   }
  }
 }
} else {
 if(i36<-1.0872337952605449e-05){
  if(i3<0.9995837211608887){
   if(i10<0.00017642974853515625){
    s0+=24.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i1<0.07268837094306946){
    if(i75<0.0017812252044677734){
     s0+=52.0;
     s1+=487.0;
    } else {
     s0+=40.0;
     s1+=10.0;
    }
   } else {
    if(i15<0.00021392107009887695){
     s0+=66.0;
     s1+=1448.0;
    } else {
     s1+=7740.0;
    }
   }
  }
 } else {
  if(i25<1.0102412700653076){
   if(i44<0.005312505643814802){
    if(i18<1.0016834735870361){
     s0+=486.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i77<-0.004594027996063232){
     s0+=6.0;
     s1+=1.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i44<0.0027822500560432673){
    if(i15<0.00010818243026733398){
     s0+=12.0;
    } else {
     s1+=229.0;
    }
   } else {
    if(i63<-0.0002217367582488805){
     s1+=16.0;
    } else {
     s0+=68.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i7<1.0452277660369873){
 if(i3<1.0024750232696533){
  if(i45<0.0003261431120336056){
   if(i25<1.0090361833572388){
    if(i32<1.0104563236236572){
     s0+=47570.0;
     s1+=64.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i76<0.00010398688027635217){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i6<0.07077249884605408){
    if(i3<0.9978765249252319){
     s0+=12762.0;
     s1+=291.0;
    } else {
     s0+=4742.0;
     s1+=1154.0;
    }
   } else {
    if(i17<1.0452215671539307){
     s0+=123.0;
     s1+=9.0;
    } else {
     s0+=125.0;
     s1+=422.0;
    }
   }
  }
 } else {
  if(i18<1.0019948482513428){
   if(i30<1.2392117977142334){
    if(i30<1.0757708549499512){
     s0+=2.0;
    } else {
     s1+=128.0;
    }
   } else {
    if(i0<0.09050819277763367){
     s0+=98.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i21<0.9942876100540161){
    if(i12<-0.0012086033821105957){
     s1+=4.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i45<0.00019924744265154004){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=592.0;
    }
   }
  }
 }
} else {
 if(i6<0.08112519979476929){
  if(i4<3.153085708618164e-05){
   if(i21<1.0009753704071045){
    if(i16<0.0036833034828305244){
     s0+=3015.0;
     s1+=308.0;
    } else {
     s0+=837.0;
     s1+=516.0;
    }
   } else {
    if(i41<0.0018026658799499273){
     s0+=112.0;
     s1+=385.0;
    } else {
     s0+=296.0;
     s1+=89.0;
    }
   }
  } else {
   if(i3<1.0041131973266602){
    if(i39<1.1877408027648926){
     s0+=38.0;
     s1+=342.0;
    } else {
     s0+=200.0;
     s1+=97.0;
    }
   } else {
    if(i78<0.39218395948410034){
     s0+=5.0;
     s1+=1305.0;
    } else {
     s0+=12.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i18<0.9985524415969849){
   if(i42<1.434314250946045){
    s0+=309.0;
   } else {
    if(i14<-2.8371810913085938e-05){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i19<1.0027834177017212){
    if(i20<0.029306992888450623){
     s0+=701.0;
     s1+=910.0;
    } else {
     s0+=165.0;
     s1+=2152.0;
    }
   } else {
    if(i13<1.0065362453460693){
     s0+=117.0;
     s1+=1665.0;
    } else {
     s0+=3.0;
     s1+=6454.0;
    }
   }
  }
 }
}
if(i10<0.00044038891792297363){
 if(i24<1.0107624530792236){
  if(i17<1.0495078563690186){
   if(i9<1.008298397064209){
    if(i58<0.0017414403846487403){
     s0+=54613.0;
     s1+=247.0;
    } else {
     s0+=1545.0;
     s1+=181.0;
    }
   } else {
    if(i46<0.019778721034526825){
     s1+=16.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i2<0.06922087073326111){
    if(i26<0.0002904274733737111){
     s0+=3474.0;
     s1+=106.0;
    } else {
     s0+=7013.0;
     s1+=1074.0;
    }
   } else {
    if(i34<0.0004476824833545834){
     s0+=211.0;
     s1+=23.0;
    } else {
     s0+=673.0;
     s1+=1730.0;
    }
   }
  }
 } else {
  if(i12<0.0007591843605041504){
   if(i44<0.0066644493490457535){
    if(i17<1.0737545490264893){
     s0+=96.0;
     s1+=353.0;
    } else {
     s0+=1396.0;
     s1+=499.0;
    }
   } else {
    if(i4<-6.505846977233887e-05){
     s0+=26.0;
     s1+=22.0;
    } else {
     s0+=16.0;
     s1+=414.0;
    }
   }
  } else {
   if(i55<0.9998990297317505){
    if(i3<0.9989777207374573){
     s0+=10.0;
    } else {
     s1+=1258.0;
    }
   } else {
    if(i0<0.17635634541511536){
     s0+=129.0;
     s1+=31.0;
    } else {
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i11<1.0634050369262695){
  if(i5<0.0005841851234436035){
   if(i3<1.0012660026550293){
    if(i58<0.006033177487552166){
     s0+=850.0;
     s1+=29.0;
    } else {
     s0+=69.0;
     s1+=26.0;
    }
   } else {
    if(i31<0.011748194694519043){
     s0+=111.0;
     s1+=42.0;
    } else {
     s0+=3.0;
     s1+=66.0;
    }
   }
  } else {
   if(i16<0.0018178049940615892){
    s0+=106.0;
   } else {
    if(i66<1.2804416655853856e-05){
     s0+=8.0;
     s1+=837.0;
    } else {
     s0+=57.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i8<-6.371022755047306e-05){
   if(i2<0.1307629942893982){
    if(i3<1.0044935941696167){
     s0+=188.0;
     s1+=313.0;
    } else {
     s0+=14.0;
     s1+=994.0;
    }
   } else {
    if(i77<0.0009999275207519531){
     s0+=6.0;
     s1+=2601.0;
    } else {
     s1+=5672.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    s1+=379.0;
   } else {
    if(i46<0.05786379054188728){
     s0+=308.0;
     s1+=43.0;
    } else {
     s0+=102.0;
     s1+=199.0;
    }
   }
  }
 }
}
if(i10<0.00043338537216186523){
 if(i33<0.06174895167350769){
  if(i1<0.07977980375289917){
   if(i52<-0.0015021562576293945){
    if(i21<0.9939536452293396){
     s0+=1566.0;
     s1+=65.0;
    } else {
     s0+=2326.0;
     s1+=622.0;
    }
   } else {
    if(i9<1.0081498622894287){
     s0+=62524.0;
     s1+=840.0;
    } else {
     s0+=408.0;
     s1+=159.0;
    }
   }
  } else {
   if(i5<-0.0007055103778839111){
    if(i20<0.02827882021665573){
     s0+=347.0;
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=18.0;
    }
   } else {
    if(i41<0.00038853398291394114){
     s0+=38.0;
     s1+=5.0;
    } else {
     s0+=52.0;
     s1+=1597.0;
    }
   }
  }
 } else {
  if(i4<9.357929229736328e-06){
   if(i18<0.9985145330429077){
    if(i44<0.007760829292237759){
     s0+=620.0;
     s1+=9.0;
    } else {
     s0+=55.0;
     s1+=16.0;
    }
   } else {
    if(i67<0.00013583112740889192){
     s0+=487.0;
     s1+=161.0;
    } else {
     s0+=572.0;
     s1+=949.0;
    }
   }
  } else {
   if(i0<0.11161690950393677){
    if(i42<1.1039612293243408){
     s0+=26.0;
     s1+=67.0;
    } else {
     s0+=133.0;
     s1+=13.0;
    }
   } else {
    if(i50<0.11191093921661377){
     s0+=12.0;
     s1+=896.0;
    } else {
     s0+=99.0;
     s1+=383.0;
    }
   }
  }
 }
} else {
 if(i0<0.07430198788642883){
  if(i50<-0.02476811408996582){
   if(i56<0.0001983331167139113){
    if(i49<0.0020109873730689287){
     s0+=6.0;
     s1+=31.0;
    } else {
     s0+=62.0;
     s1+=7.0;
    }
   } else {
    if(i11<1.0335274934768677){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=57.0;
     s1+=512.0;
    }
   }
  } else {
   if(i21<1.0035284757614136){
    if(i61<-0.0006697475910186768){
     s0+=307.0;
     s1+=73.0;
    } else {
     s0+=896.0;
     s1+=50.0;
    }
   } else {
    if(i54<0.000738469825591892){
     s0+=50.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=235.0;
    }
   }
  }
 } else {
  if(i4<4.190206527709961e-05){
   if(i20<0.036213088780641556){
    if(i69<-0.004218899644911289){
     s0+=243.0;
     s1+=58.0;
    } else {
     s0+=35.0;
     s1+=136.0;
    }
   } else {
    if(i16<0.00591922365128994){
     s0+=22.0;
     s1+=44.0;
    } else {
     s0+=7.0;
     s1+=369.0;
    }
   }
  } else {
   if(i1<0.13857463002204895){
    if(i51<0.021665304899215698){
     s0+=28.0;
     s1+=1480.0;
    } else {
     s0+=47.0;
     s1+=5.0;
    }
   } else {
    if(i62<0.05116909742355347){
     s0+=1.0;
     s1+=7021.0;
    } else {
     s0+=9.0;
     s1+=1336.0;
    }
   }
  }
 }
}
if(i2<0.07742848992347717){
 if(i12<0.001284778118133545){
  if(i17<1.0485899448394775){
   if(i39<1.0557184219360352){
    s0+=41887.0;
   } else {
    if(i60<-0.002081453800201416){
     s0+=801.0;
     s1+=238.0;
    } else {
     s0+=13068.0;
     s1+=139.0;
    }
   }
  } else {
   if(i0<0.0587405264377594){
    if(i9<0.994463324546814){
     s0+=3428.0;
     s1+=655.0;
    } else {
     s0+=7865.0;
     s1+=455.0;
    }
   } else {
    if(i8<-1.3893550203647465e-05){
     s0+=902.0;
     s1+=930.0;
    } else {
     s0+=1035.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i19<1.0027145147323608){
   if(i72<1.000641107559204){
    if(i49<0.0030416594818234444){
     s1+=38.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i34<0.0012372320052236319){
     s1+=5.0;
    } else {
     s0+=48.0;
    }
   }
  } else {
   if(i15<0.00019633769989013672){
    if(i8<-5.111976497573778e-05){
     s1+=8.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=542.0;
   }
  }
 }
} else {
 if(i19<1.0003471374511719){
  if(i43<0.9993027448654175){
   if(i10<-0.0003841817378997803){
    if(i65<1.0011928081512451){
     s0+=398.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i34<0.0007900898344814777){
     s0+=57.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i12<0.0007617473602294922){
    if(i20<0.029348909854888916){
     s0+=733.0;
     s1+=532.0;
    } else {
     s0+=135.0;
     s1+=1189.0;
    }
   } else {
    if(i5<4.509091377258301e-05){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=912.0;
    }
   }
  }
 } else {
  if(i59<-0.00016477861208841205){
   if(i1<0.10565942525863647){
    if(i61<0.0038871169090270996){
     s0+=16.0;
     s1+=494.0;
    } else {
     s0+=75.0;
     s1+=15.0;
    }
   } else {
    if(i13<1.0069425106048584){
     s0+=96.0;
     s1+=2039.0;
    } else {
     s1+=7610.0;
    }
   }
  } else {
   if(i58<0.002375402022153139){
    if(i69<-0.0054436661303043365){
     s0+=223.0;
     s1+=174.0;
    } else {
     s0+=66.0;
     s1+=589.0;
    }
   } else {
    if(i51<0.0012084245681762695){
     s0+=2.0;
     s1+=517.0;
    } else {
     s0+=16.0;
     s1+=82.0;
    }
   }
  }
 }
}
if(i10<0.0004342198371887207){
 if(i33<0.06522268056869507){
  if(i9<1.0103263854980469){
   if(i6<0.07518073916435242){
    if(i0<0.07854864001274109){
     s0+=66797.0;
     s1+=1585.0;
    } else {
     s0+=171.0;
     s1+=559.0;
    }
   } else {
    if(i1<0.0899215042591095){
     s0+=65.0;
     s1+=85.0;
    } else {
     s0+=5.0;
     s1+=343.0;
    }
   }
  } else {
   if(i55<0.9998980760574341){
    if(i5<-0.00024753808975219727){
     s0+=86.0;
     s1+=25.0;
    } else {
     s0+=48.0;
     s1+=838.0;
    }
   } else {
    if(i42<1.1386182308197021){
     s1+=57.0;
    } else {
     s0+=261.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i38<-0.0001322925090789795){
   if(i41<0.029695773497223854){
    if(i36<-1.0199353710049763e-05){
     s0+=26.0;
     s1+=15.0;
    } else {
     s0+=535.0;
     s1+=9.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i1<0.11514505743980408){
    if(i58<0.012891331687569618){
     s0+=830.0;
     s1+=194.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i16<0.0017415076727047563){
     s0+=248.0;
     s1+=88.0;
    } else {
     s0+=128.0;
     s1+=1922.0;
    }
   }
  }
 }
} else {
 if(i1<0.09455990791320801){
  if(i64<-0.0014713406562805176){
   if(i3<1.0015040636062622){
    if(i64<-0.004336029291152954){
     s0+=23.0;
     s1+=73.0;
    } else {
     s0+=184.0;
     s1+=38.0;
    }
   } else {
    if(i56<0.000274591613560915){
     s0+=32.0;
     s1+=104.0;
    } else {
     s0+=16.0;
     s1+=594.0;
    }
   }
  } else {
   if(i12<0.0004659295082092285){
    if(i51<-0.0027788877487182617){
     s0+=221.0;
     s1+=138.0;
    } else {
     s0+=1041.0;
     s1+=119.0;
    }
   } else {
    if(i8<-4.38546558143571e-05){
     s1+=364.0;
    } else {
     s0+=117.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i3<1.0023622512817383){
   if(i48<0.06676188111305237){
    if(i0<0.09253320097923279){
     s0+=1.0;
    } else {
     s1+=330.0;
    }
   } else {
    if(i16<0.009480509907007217){
     s0+=143.0;
     s1+=74.0;
    } else {
     s0+=12.0;
     s1+=242.0;
    }
   }
  } else {
   if(i31<0.000810605357401073){
    if(i57<1.023908019065857){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i59<-0.0001940737129189074){
     s0+=16.0;
     s1+=8261.0;
    } else {
     s0+=29.0;
     s1+=1012.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i1<0.08391007781028748){
  if(i26<0.0002970191999338567){
   if(i77<-0.0010153353214263916){
    if(i21<0.995072066783905){
     s0+=305.0;
    } else {
     s0+=55.0;
     s1+=58.0;
    }
   } else {
    if(i14<1.8775463104248047e-05){
     s0+=52426.0;
     s1+=177.0;
    } else {
     s0+=332.0;
     s1+=48.0;
    }
   }
  } else {
   if(i30<1.100754976272583){
    if(i39<1.067455530166626){
     s0+=2714.0;
     s1+=131.0;
    } else {
     s0+=832.0;
     s1+=1125.0;
    }
   } else {
    if(i19<1.0069458484649658){
     s0+=11328.0;
     s1+=625.0;
    } else {
     s0+=124.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i43<0.9993027448654175){
   if(i3<0.9978604316711426){
    if(i5<-0.0005326271057128906){
     s0+=598.0;
     s1+=8.0;
    } else {
     s0+=45.0;
     s1+=9.0;
    }
   } else {
    if(i6<0.09181267023086548){
     s0+=5.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i47<0.047277867794036865){
    if(i0<0.06569978594779968){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=54.0;
     s1+=2487.0;
    }
   } else {
    if(i1<0.11543375253677368){
     s0+=556.0;
     s1+=168.0;
    } else {
     s0+=264.0;
     s1+=1089.0;
    }
   }
  }
 }
} else {
 if(i13<1.010061264038086){
  if(i2<0.07436642050743103){
   if(i42<1.1039612293243408){
    if(i8<-2.1806019503856078e-05){
     s1+=304.0;
    } else {
     s0+=42.0;
     s1+=8.0;
    }
   } else {
    if(i34<0.005271770991384983){
     s0+=711.0;
     s1+=71.0;
    } else {
     s0+=29.0;
     s1+=44.0;
    }
   }
  } else {
   if(i47<0.04314035177230835){
    if(i18<0.9988725781440735){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=1346.0;
    }
   } else {
    if(i44<0.006007483694702387){
     s0+=354.0;
     s1+=473.0;
    } else {
     s0+=53.0;
     s1+=506.0;
    }
   }
  }
 } else {
  if(i38<9.974837303161621e-05){
   if(i5<0.0005328357219696045){
    if(i8<-4.8823781980900094e-05){
     s0+=20.0;
     s1+=232.0;
    } else {
     s0+=75.0;
     s1+=28.0;
    }
   } else {
    s1+=1650.0;
   }
  } else {
   if(i3<1.0022327899932861){
    if(i23<1.0254716873168945){
     s0+=3.0;
    } else {
     s1+=23.0;
    }
   } else {
    s1+=6420.0;
   }
  }
 }
}
if(i3<1.00246000289917){
 if(i6<0.071968674659729){
  if(i11<1.0452215671539307){
   if(i75<-0.001025378704071045){
    if(i44<0.0010144044645130634){
     s0+=3030.0;
     s1+=491.0;
    } else {
     s0+=6867.0;
     s1+=103.0;
    }
   } else {
    if(i46<0.04659346118569374){
     s0+=52146.0;
     s1+=191.0;
    } else {
     s0+=84.0;
     s1+=61.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i39<1.0596027374267578){
     s0+=886.0;
     s1+=1.0;
    } else {
     s0+=931.0;
     s1+=1144.0;
    }
   } else {
    if(i0<0.08225750923156738){
     s0+=4935.0;
     s1+=410.0;
    } else {
     s0+=16.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i59<-0.00010877692693611607){
   if(i16<0.005132998339831829){
    if(i30<1.255998969078064){
     s0+=250.0;
     s1+=781.0;
    } else {
     s0+=727.0;
     s1+=215.0;
    }
   } else {
    if(i18<0.9979839324951172){
     s0+=33.0;
    } else {
     s0+=29.0;
     s1+=1718.0;
    }
   }
  } else {
   if(i20<0.02536725625395775){
    if(i29<0.9710632562637329){
     s0+=9.0;
     s1+=37.0;
    } else {
     s0+=630.0;
     s1+=79.0;
    }
   } else {
    if(i21<0.9951399564743042){
     s0+=163.0;
     s1+=67.0;
    } else {
     s0+=46.0;
     s1+=207.0;
    }
   }
  }
 }
} else {
 if(i25<1.0157034397125244){
  if(i8<-4.402134072734043e-05){
   if(i12<-0.0005553960800170898){
    if(i2<0.11740151047706604){
     s0+=111.0;
     s1+=186.0;
    } else {
     s0+=5.0;
     s1+=271.0;
    }
   } else {
    if(i19<1.0010347366333008){
     s0+=32.0;
     s1+=55.0;
    } else {
     s0+=14.0;
     s1+=2581.0;
    }
   }
  } else {
   if(i35<1.1669665575027466){
    if(i30<1.0757708549499512){
     s0+=4.0;
    } else {
     s1+=136.0;
    }
   } else {
    if(i37<0.9848493337631226){
     s0+=3.0;
     s1+=22.0;
    } else {
     s0+=109.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<0.000934302806854248){
   if(i59<-0.0002536686952225864){
    if(i6<0.07235699892044067){
     s0+=44.0;
     s1+=90.0;
    } else {
     s0+=6.0;
     s1+=536.0;
    }
   } else {
    if(i27<1.1704530715942383){
     s0+=20.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i19<0.9974174499511719){
    if(i40<7.520946383010596e-05){
     s1+=107.0;
    } else {
     s0+=10.0;
     s1+=18.0;
    }
   } else {
    if(i25<1.0263429880142212){
     s0+=12.0;
     s1+=1042.0;
    } else {
     s0+=2.0;
     s1+=6210.0;
    }
   }
  }
 }
}
if(i6<0.07237386703491211){
 if(i14<2.4020671844482422e-05){
  if(i8<-5.3512518206844106e-05){
   if(i42<1.2381287813186646){
    if(i39<1.0569010972976685){
     s0+=60.0;
    } else {
     s0+=3.0;
     s1+=516.0;
    }
   } else {
    if(i53<0.025865601375699043){
     s0+=1244.0;
     s1+=42.0;
    } else {
     s0+=26.0;
     s1+=71.0;
    }
   }
  } else {
   if(i61<-0.001345127820968628){
    if(i38<-3.93986701965332e-05){
     s0+=2571.0;
     s1+=135.0;
    } else {
     s0+=2093.0;
     s1+=829.0;
    }
   } else {
    if(i2<0.07717910408973694){
     s0+=62091.0;
     s1+=1028.0;
    } else {
     s0+=108.0;
     s1+=393.0;
    }
   }
  }
 } else {
  if(i3<1.0026631355285645){
   if(i3<1.0004101991653442){
    if(i9<0.9364415407180786){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=503.0;
     s1+=15.0;
    }
   } else {
    if(i31<0.02226559817790985){
     s0+=181.0;
     s1+=74.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   }
  } else {
   if(i0<0.05748438835144043){
    if(i50<0.003922879695892334){
     s0+=47.0;
     s1+=274.0;
    } else {
     s0+=20.0;
     s1+=3.0;
    }
   } else {
    if(i40<9.843132284004241e-05){
     s1+=1111.0;
    } else {
     s0+=14.0;
     s1+=92.0;
    }
   }
  }
 }
} else {
 if(i21<1.0010193586349487){
  if(i10<-0.0003844797611236572){
   if(i16<0.007179048378020525){
    if(i10<-0.0004120469093322754){
     s0+=441.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=8.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i47<0.040342092514038086){
    if(i38<-0.00011959671974182129){
     s0+=10.0;
     s1+=44.0;
    } else {
     s0+=43.0;
     s1+=1485.0;
    }
   } else {
    if(i59<-0.00010650289914337918){
     s0+=608.0;
     s1+=1443.0;
    } else {
     s0+=671.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i34<0.004894888959825039){
   if(i30<1.2799768447875977){
    if(i12<0.0014189481735229492){
     s0+=96.0;
     s1+=642.0;
    } else {
     s1+=1117.0;
    }
   } else {
    if(i54<0.0009324309648945928){
     s0+=73.0;
    } else {
     s0+=22.0;
     s1+=64.0;
    }
   }
  } else {
   if(i2<0.12589031457901){
    if(i52<0.003580719232559204){
     s0+=3.0;
     s1+=306.0;
    } else {
     s0+=19.0;
     s1+=4.0;
    }
   } else {
    if(i15<3.758072853088379e-05){
     s0+=11.0;
     s1+=561.0;
    } else {
     s1+=6715.0;
    }
   }
  }
 }
}
if(i12<0.0008098483085632324){
 if(i7<1.0452215671539307){
  if(i0<0.08297067880630493){
   if(i4<4.565715789794922e-05){
    if(i58<0.0015180862974375486){
     s0+=59381.0;
     s1+=626.0;
    } else {
     s0+=5230.0;
     s1+=740.0;
    }
   } else {
    if(i49<0.00043736514635384083){
     s0+=167.0;
    } else {
     s0+=16.0;
     s1+=190.0;
    }
   }
  } else {
   if(i19<0.9937425255775452){
    if(i39<1.2137322425842285){
     s0+=101.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i39<1.055374026298523){
     s0+=24.0;
    } else {
     s0+=78.0;
     s1+=730.0;
    }
   }
  }
 } else {
  if(i2<0.10620677471160889){
   if(i20<0.0279853492975235){
    if(i5<0.00014829635620117188){
     s0+=3537.0;
     s1+=347.0;
    } else {
     s0+=795.0;
     s1+=405.0;
    }
   } else {
    if(i73<6.911510581630864e-07){
     s0+=409.0;
     s1+=761.0;
    } else {
     s0+=277.0;
     s1+=5.0;
    }
   }
  } else {
   if(i54<0.0018060877919197083){
    if(i38<-0.00013691186904907227){
     s0+=225.0;
    } else {
     s0+=432.0;
     s1+=1113.0;
    }
   } else {
    if(i65<0.9961977005004883){
     s0+=19.0;
    } else {
     s0+=35.0;
     s1+=2211.0;
    }
   }
  }
 }
} else {
 if(i3<1.004135012626648){
  if(i25<1.0071606636047363){
   if(i36<-1.3418954040389508e-05){
    if(i43<1.000766634941101){
     s1+=77.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i2<0.1023629903793335){
     s0+=340.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=33.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    if(i2<0.035812169313430786){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=812.0;
    }
   } else {
    if(i0<0.12337180972099304){
     s0+=247.0;
    } else {
     s1+=371.0;
    }
   }
  }
 } else {
  if(i54<0.0005016503273509443){
   if(i12<0.0012859702110290527){
    if(i26<0.0010613040067255497){
     s0+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=169.0;
   }
  } else {
   s1+=8313.0;
  }
 }
}
if(i12<0.0007547438144683838){
 if(i5<0.0005626976490020752){
  if(i1<0.08587989211082458){
   if(i56<0.0007801682804711163){
    if(i17<1.0485899448394775){
     s0+=53186.0;
     s1+=91.0;
    } else {
     s0+=8119.0;
     s1+=823.0;
    }
   } else {
    if(i35<1.185624122619629){
     s0+=2236.0;
     s1+=904.0;
    } else {
     s0+=4940.0;
     s1+=178.0;
    }
   }
  } else {
   if(i10<-0.0004025697708129883){
    if(i38<-0.0001291334629058838){
     s0+=575.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=15.0;
    }
   } else {
    if(i27<1.052020788192749){
     s0+=170.0;
     s1+=1254.0;
    } else {
     s0+=926.0;
     s1+=1544.0;
    }
   }
  }
 } else {
  if(i18<1.0002901554107666){
   if(i25<0.9683998823165894){
    s1+=2.0;
   } else {
    s0+=125.0;
   }
  } else {
   if(i59<-0.0005464458372443914){
    if(i16<0.006209778133779764){
     s0+=4.0;
     s1+=15.0;
    } else {
     s1+=989.0;
    }
   } else {
    if(i6<0.15009832382202148){
     s0+=219.0;
     s1+=859.0;
    } else {
     s1+=397.0;
    }
   }
  }
 }
} else {
 if(i28<0.00021752502652816474){
  if(i73<-4.953451934852637e-06){
   if(i54<0.0005965129239484668){
    s0+=2.0;
   } else {
    s1+=125.0;
   }
  } else {
   if(i0<0.08029678463935852){
    s0+=468.0;
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i5<4.231929779052734e-06){
   if(i49<0.005525578744709492){
    s0+=87.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i2<0.06159132719039917){
    if(i44<0.0012948856456205249){
     s0+=1.0;
     s1+=350.0;
    } else {
     s0+=109.0;
     s1+=71.0;
    }
   } else {
    if(i34<0.0018839244730770588){
     s0+=60.0;
     s1+=1299.0;
    } else {
     s0+=8.0;
     s1+=8039.0;
    }
   }
  }
 }
}
if(i23<1.0076038837432861){
 if(i16<0.00524600874632597){
  if(i68<0.02994421310722828){
   if(i63<0.0003856761322822422){
    if(i26<0.0002825910924002528){
     s0+=50535.0;
     s1+=113.0;
    } else {
     s0+=4077.0;
     s1+=264.0;
    }
   } else {
    if(i30<1.0762357711791992){
     s0+=144.0;
    } else {
     s0+=145.0;
     s1+=239.0;
    }
   }
  } else {
   if(i13<0.9900392293930054){
    if(i4<1.919269561767578e-05){
     s0+=6045.0;
     s1+=188.0;
    } else {
     s0+=20.0;
     s1+=108.0;
    }
   } else {
    if(i8<-1.5994512068573385e-05){
     s0+=603.0;
     s1+=1194.0;
    } else {
     s0+=3026.0;
     s1+=650.0;
    }
   }
  }
 } else {
  if(i7<1.044576644897461){
   if(i5<0.00025540590286254883){
    if(i42<1.2098138332366943){
     s0+=62.0;
     s1+=132.0;
    } else {
     s0+=4093.0;
     s1+=65.0;
    }
   } else {
    if(i21<0.9956076145172119){
     s0+=31.0;
     s1+=43.0;
    } else {
     s0+=10.0;
     s1+=445.0;
    }
   }
  } else {
   if(i58<0.002168780891224742){
    if(i0<0.11498630046844482){
     s0+=445.0;
     s1+=177.0;
    } else {
     s0+=25.0;
     s1+=835.0;
    }
   } else {
    if(i1<0.02112501859664917){
     s0+=60.0;
     s1+=29.0;
    } else {
     s0+=60.0;
     s1+=1733.0;
    }
   }
  }
 }
} else {
 if(i16<0.0030667842365801334){
  if(i30<1.1108002662658691){
   if(i30<1.089235782623291){
    s0+=102.0;
   } else {
    if(i26<0.0008563835872337222){
     s0+=19.0;
     s1+=646.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i12<0.0022184252738952637){
    if(i74<3.6106716834183317e-06){
     s0+=1462.0;
     s1+=29.0;
    } else {
     s1+=53.0;
    }
   } else {
    s1+=168.0;
   }
  }
 } else {
  if(i4<-1.5944242477416992e-05){
   if(i18<0.9990887641906738){
    if(i17<1.117118239402771){
     s1+=3.0;
    } else {
     s0+=160.0;
    }
   } else {
    if(i34<0.0009706842247396708){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=105.0;
    }
   }
  } else {
   if(i2<0.0461978018283844){
    if(i16<0.0035119662061333656){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=111.0;
    }
   } else {
    if(i12<-1.919269561767578e-05){
     s0+=42.0;
     s1+=424.0;
    } else {
     s0+=6.0;
     s1+=9294.0;
    }
   }
  }
 }
}
if(i5<0.000570446252822876){
 if(i11<1.0452215671539307){
  if(i63<0.000251332443440333){
   if(i70<0.023226402699947357){
    if(i3<1.0025386810302734){
     s0+=49236.0;
     s1+=101.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   } else {
    if(i13<0.9957360029220581){
     s0+=3032.0;
     s1+=31.0;
    } else {
     s0+=246.0;
     s1+=165.0;
    }
   }
  } else {
   if(i42<1.2198383808135986){
    if(i35<1.0714969635009766){
     s0+=1891.0;
     s1+=6.0;
    } else {
     s0+=842.0;
     s1+=676.0;
    }
   } else {
    if(i54<0.0072856186889112){
     s0+=6681.0;
     s1+=59.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i20<0.02512633427977562){
   if(i8<-3.648223355412483e-05){
    if(i9<1.007489800453186){
     s0+=778.0;
     s1+=286.0;
    } else {
     s0+=84.0;
     s1+=638.0;
    }
   } else {
    if(i1<0.08373916149139404){
     s0+=5386.0;
     s1+=424.0;
    } else {
     s0+=881.0;
     s1+=488.0;
    }
   }
  } else {
   if(i8<-6.5161225393239874e-06){
    if(i3<0.996577262878418){
     s0+=229.0;
     s1+=139.0;
    } else {
     s0+=486.0;
     s1+=2512.0;
    }
   } else {
    if(i3<0.9963984489440918){
     s0+=441.0;
     s1+=7.0;
    } else {
     s0+=218.0;
     s1+=173.0;
    }
   }
  }
 }
} else {
 if(i21<1.0046563148498535){
  if(i42<1.0657644271850586){
   s0+=118.0;
  } else {
   if(i31<0.020939365029335022){
    if(i41<0.0021689683198928833){
     s0+=3.0;
     s1+=171.0;
    } else {
     s0+=264.0;
     s1+=222.0;
    }
   } else {
    if(i67<0.0006417868426069617){
     s0+=9.0;
     s1+=605.0;
    } else {
     s1+=1312.0;
    }
   }
  }
 } else {
  if(i5<0.0009254515171051025){
   if(i31<0.012511033564805984){
    if(i39<1.2117441892623901){
     s0+=11.0;
     s1+=211.0;
    } else {
     s0+=63.0;
    }
   } else {
    s1+=355.0;
   }
  } else {
   if(i31<0.01686345785856247){
    if(i13<1.004328727722168){
     s0+=13.0;
     s1+=42.0;
    } else {
     s1+=1528.0;
    }
   } else {
    s1+=7171.0;
   }
  }
 }
}
if(i5<0.0005484223365783691){
 if(i24<1.0107730627059937){
  if(i2<0.07771384716033936){
   if(i17<1.0451585054397583){
    if(i77<-0.0007223784923553467){
     s0+=5753.0;
     s1+=167.0;
    } else {
     s0+=48161.0;
     s1+=61.0;
    }
   } else {
    if(i39<1.1034480333328247){
     s0+=5154.0;
     s1+=1221.0;
    } else {
     s0+=8539.0;
     s1+=326.0;
    }
   }
  } else {
   if(i10<-0.0003841221332550049){
    if(i35<1.4761377573013306){
     s0+=358.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=9.0;
    }
   } else {
    if(i48<0.055217206478118896){
     s0+=49.0;
     s1+=1093.0;
    } else {
     s0+=520.0;
     s1+=521.0;
    }
   }
  }
 } else {
  if(i31<0.025470729917287827){
   if(i60<0.004842579364776611){
    if(i45<0.0008660558378323913){
     s0+=76.0;
     s1+=547.0;
    } else {
     s0+=348.0;
     s1+=192.0;
    }
   } else {
    if(i54<0.0018838666146621108){
     s0+=1187.0;
     s1+=227.0;
    } else {
     s0+=53.0;
     s1+=144.0;
    }
   }
  } else {
   if(i8<-1.8779641322907992e-05){
    if(i0<0.08928313851356506){
     s0+=49.0;
     s1+=8.0;
    } else {
     s0+=16.0;
     s1+=899.0;
    }
   } else {
    if(i55<1.000046730041504){
     s0+=152.0;
     s1+=11.0;
    } else {
     s0+=11.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i45<0.000233056751312688){
  if(i59<-0.00023959780810400844){
   s1+=8.0;
  } else {
   s0+=197.0;
  }
 } else {
  if(i5<0.0009583234786987305){
   if(i30<1.2392117977142334){
    if(i76<0.0006679977523162961){
     s1+=673.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i20<0.02802308276295662){
     s0+=251.0;
     s1+=150.0;
    } else {
     s0+=60.0;
     s1+=838.0;
    }
   }
  } else {
   if(i55<1.0007734298706055){
    if(i21<1.0058977603912354){
     s0+=85.0;
     s1+=1716.0;
    } else {
     s0+=2.0;
     s1+=8358.0;
    }
   } else {
    if(i66<1.1340513083268888e-05){
     s1+=16.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
}
if(i7<1.0452277660369873){
 if(i2<0.08023786544799805){
  if(i58<0.0015181014314293861){
   if(i13<1.004875659942627){
    if(i1<0.06671753525733948){
     s0+=56687.0;
     s1+=354.0;
    } else {
     s0+=2780.0;
     s1+=285.0;
    }
   } else {
    if(i26<0.00016779154248069972){
     s0+=165.0;
     s1+=13.0;
    } else {
     s0+=59.0;
     s1+=127.0;
    }
   }
  } else {
   if(i10<0.0005892515182495117){
    if(i30<1.2371783256530762){
     s0+=2183.0;
     s1+=640.0;
    } else {
     s0+=3028.0;
     s1+=58.0;
    }
   } else {
    if(i78<0.20127028226852417){
     s0+=17.0;
     s1+=277.0;
    } else {
     s0+=136.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i19<0.9972201585769653){
   if(i8<-1.838754178606905e-05){
    if(i10<-0.00046449899673461914){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=31.0;
    }
   } else {
    if(i6<0.13016605377197266){
     s0+=137.0;
     s1+=3.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i15<-0.00029984116554260254){
    if(i0<0.10461905598640442){
     s0+=41.0;
     s1+=4.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i34<0.00030481303110718727){
     s0+=14.0;
    } else {
     s0+=18.0;
     s1+=881.0;
    }
   }
  }
 }
} else {
 if(i2<0.09162437915802002){
  if(i10<0.0004671812057495117){
   if(i20<0.016141753643751144){
    if(i21<1.0014655590057373){
     s0+=2572.0;
     s1+=144.0;
    } else {
     s0+=302.0;
     s1+=154.0;
    }
   } else {
    if(i45<0.002078732242807746){
     s0+=302.0;
     s1+=468.0;
    } else {
     s0+=999.0;
     s1+=131.0;
    }
   }
  } else {
   if(i65<1.0017547607421875){
    if(i5<0.0005167722702026367){
     s0+=137.0;
     s1+=63.0;
    } else {
     s0+=95.0;
     s1+=950.0;
    }
   } else {
    if(i21<1.0004351139068604){
     s0+=320.0;
     s1+=25.0;
    } else {
     s0+=36.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i34<0.0005814827745780349){
   if(i54<0.0011384731624275446){
    if(i19<1.0012192726135254){
     s0+=234.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i45<0.0017687069484964013){
     s1+=98.0;
    } else {
     s0+=45.0;
    }
   }
  } else {
   if(i38<-0.0002504289150238037){
    if(i19<0.9981585741043091){
     s0+=190.0;
     s1+=3.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i20<0.02814476005733013){
     s0+=425.0;
     s1+=2811.0;
    } else {
     s0+=162.0;
     s1+=9474.0;
    }
   }
  }
 }
}
if(i15<0.00011283159255981445){
 if(i1<0.08468136191368103){
  if(i5<0.0006018579006195068){
   if(i11<1.040665864944458){
    if(i46<0.026233814656734467){
     s0+=51243.0;
     s1+=230.0;
    } else {
     s0+=7585.0;
     s1+=311.0;
    }
   } else {
    if(i5<-0.0005602240562438965){
     s0+=3189.0;
     s1+=110.0;
    } else {
     s0+=6141.0;
     s1+=1360.0;
    }
   }
  } else {
   if(i31<0.0060866945423185825){
    if(i48<0.0010904967784881592){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=92.0;
     s1+=5.0;
    }
   } else {
    if(i30<1.5876636505126953){
     s0+=21.0;
     s1+=390.0;
    } else {
     s0+=80.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i43<0.9993027448654175){
   if(i72<0.9994279146194458){
    if(i45<0.039608199149370193){
     s0+=664.0;
     s1+=29.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i4<-7.44163990020752e-05){
     s0+=18.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i16<0.0017367787659168243){
    if(i63<0.0003048093640245497){
     s0+=480.0;
     s1+=42.0;
    } else {
     s0+=69.0;
     s1+=138.0;
    }
   } else {
    if(i50<0.05013120174407959){
     s0+=122.0;
     s1+=2721.0;
    } else {
     s0+=531.0;
     s1+=1681.0;
    }
   }
  }
 }
} else {
 if(i2<0.05543801188468933){
  if(i72<1.0022029876708984){
   if(i67<0.0006174162263050675){
    if(i71<0.004501733463257551){
     s0+=568.0;
     s1+=19.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   } else {
    if(i19<0.9979633092880249){
     s0+=48.0;
    } else {
     s1+=92.0;
    }
   }
  } else {
   if(i5<0.0009032487869262695){
    s0+=44.0;
   } else {
    s1+=173.0;
   }
  }
 } else {
  if(i5<-4.26173210144043e-05){
   if(i44<0.008009680546820164){
    s0+=85.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i5<0.00090789794921875){
    if(i59<-0.0001056724286172539){
     s0+=43.0;
     s1+=1152.0;
    } else {
     s0+=26.0;
     s1+=12.0;
    }
   } else {
    s1+=8635.0;
   }
  }
 }
}
if(i2<0.07771384716033936){
 if(i5<0.0005705654621124268){
  if(i60<-0.0023250579833984375){
   if(i26<0.0025321843568235636){
    if(i49<0.0003910683444701135){
     s0+=897.0;
     s1+=7.0;
    } else {
     s0+=1015.0;
     s1+=787.0;
    }
   } else {
    if(i64<-0.0018606185913085938){
     s0+=810.0;
     s1+=166.0;
    } else {
     s0+=2938.0;
     s1+=20.0;
    }
   }
  } else {
   if(i9<1.0068168640136719){
    if(i53<0.008984103798866272){
     s0+=61277.0;
     s1+=714.0;
    } else {
     s0+=797.0;
     s1+=155.0;
    }
   } else {
    if(i39<1.101383090019226){
     s0+=181.0;
     s1+=278.0;
    } else {
     s0+=893.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i8<-4.331633317633532e-05){
   if(i41<0.002703144447878003){
    if(i15<-0.00016826391220092773){
     s0+=3.0;
     s1+=10.0;
    } else {
     s1+=710.0;
    }
   } else {
    if(i58<0.003913292661309242){
     s0+=116.0;
     s1+=32.0;
    } else {
     s0+=27.0;
     s1+=285.0;
    }
   }
  } else {
   if(i72<1.0025430917739868){
    if(i0<0.08257949352264404){
     s0+=216.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i26<0.00017563311848789454){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=122.0;
    }
   }
  }
 }
} else {
 if(i4<1.0073184967041016e-05){
  if(i62<0.03674185276031494){
   if(i8<-9.978861271520145e-06){
    if(i40<-5.298435098666232e-06){
     s0+=49.0;
     s1+=10.0;
    } else {
     s0+=107.0;
     s1+=1318.0;
    }
   } else {
    if(i72<0.9976796507835388){
     s0+=144.0;
     s1+=1.0;
    } else {
     s0+=160.0;
     s1+=150.0;
    }
   }
  } else {
   if(i18<0.9985250234603882){
    if(i36<-1.1873890798597131e-05){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=336.0;
    }
   } else {
    if(i44<0.005965860560536385){
     s0+=505.0;
     s1+=198.0;
    } else {
     s0+=51.0;
     s1+=222.0;
    }
   }
  }
 } else {
  if(i12<9.202957153320312e-05){
   if(i49<0.005048030987381935){
    if(i47<0.04726502299308777){
     s0+=22.0;
     s1+=290.0;
    } else {
     s0+=282.0;
     s1+=155.0;
    }
   } else {
    if(i2<0.1450769007205963){
     s0+=91.0;
     s1+=316.0;
    } else {
     s0+=15.0;
     s1+=1119.0;
    }
   }
  } else {
   if(i18<0.9973479509353638){
    s0+=6.0;
   } else {
    if(i16<0.002920395229011774){
     s0+=87.0;
     s1+=530.0;
    } else {
     s0+=6.0;
     s1+=9556.0;
    }
   }
  }
 }
}
if(i2<0.07832252979278564){
 if(i4<4.184246063232422e-05){
  if(i17<1.0451585054397583){
   if(i53<0.008074292913079262){
    if(i60<-0.002239435911178589){
     s0+=1343.0;
     s1+=104.0;
    } else {
     s0+=51711.0;
     s1+=81.0;
    }
   } else {
    if(i4<-5.066394805908203e-05){
     s0+=367.0;
     s1+=3.0;
    } else {
     s0+=291.0;
     s1+=37.0;
    }
   }
  } else {
   if(i6<0.05343422293663025){
    if(i1<0.06403052806854248){
     s0+=12650.0;
     s1+=988.0;
    } else {
     s0+=341.0;
     s1+=226.0;
    }
   } else {
    if(i44<0.0010414537973701954){
     s0+=555.0;
     s1+=479.0;
    } else {
     s0+=1452.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i65<0.9976070523262024){
   if(i50<-0.11715424060821533){
    s1+=2.0;
   } else {
    s0+=244.0;
   }
  } else {
   if(i53<0.0030242593493312597){
    if(i39<1.133395791053772){
     s0+=5.0;
     s1+=130.0;
    } else {
     s0+=111.0;
     s1+=5.0;
    }
   } else {
    if(i61<0.002173006534576416){
     s0+=56.0;
     s1+=990.0;
    } else {
     s0+=51.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i21<1.0005073547363281){
  if(i38<-0.00013655424118041992){
   if(i70<0.21302637457847595){
    if(i8<-3.280477540101856e-05){
     s0+=41.0;
     s1+=21.0;
    } else {
     s0+=459.0;
     s1+=3.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i49<0.006011080928146839){
    if(i64<0.004180610179901123){
     s0+=271.0;
     s1+=1267.0;
    } else {
     s0+=659.0;
     s1+=442.0;
    }
   } else {
    if(i0<0.10037821531295776){
     s0+=99.0;
     s1+=58.0;
    } else {
     s0+=52.0;
     s1+=1637.0;
    }
   }
  }
 } else {
  if(i5<0.0004259943962097168){
   if(i41<0.00028274967917241156){
    s0+=17.0;
   } else {
    if(i48<0.05859777331352234){
     s0+=7.0;
     s1+=589.0;
    } else {
     s0+=148.0;
     s1+=330.0;
    }
   }
  } else {
   if(i67<0.0004619038663804531){
    if(i8<-4.322565291658975e-05){
     s0+=26.0;
     s1+=2077.0;
    } else {
     s0+=50.0;
     s1+=21.0;
    }
   } else {
    if(i3<1.0034540891647339){
     s0+=6.0;
     s1+=502.0;
    } else {
     s1+=7010.0;
    }
   }
  }
 }
}
if(i6<0.072673499584198){
 if(i13<1.0061461925506592){
  if(i0<0.07822525501251221){
   if(i4<4.178285598754883e-05){
    if(i11<1.0398929119110107){
     s0+=58125.0;
     s1+=490.0;
    } else {
     s0+=9681.0;
     s1+=1252.0;
    }
   } else {
    if(i30<1.082350254058838){
     s0+=208.0;
    } else {
     s0+=144.0;
     s1+=344.0;
    }
   }
  } else {
   if(i18<0.9983419179916382){
    if(i55<0.9997879862785339){
     s0+=119.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.04087504744529724){
     s0+=16.0;
     s1+=789.0;
    } else {
     s0+=93.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i16<0.0022586388513445854){
   if(i34<0.0008327038958668709){
    if(i42<1.1517177820205688){
     s1+=164.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i9<1.0230660438537598){
     s0+=502.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i30<1.2392117977142334){
    s1+=1170.0;
   } else {
    if(i43<1.0005751848220825){
     s0+=66.0;
    } else {
     s0+=14.0;
     s1+=360.0;
    }
   }
  }
 }
} else {
 if(i1<0.11511179804801941){
  if(i52<0.003944694995880127){
   if(i62<0.03613343834877014){
    if(i47<0.061756640672683716){
     s0+=111.0;
     s1+=868.0;
    } else {
     s0+=46.0;
     s1+=9.0;
    }
   } else {
    if(i18<1.0006169080734253){
     s0+=335.0;
     s1+=62.0;
    } else {
     s0+=28.0;
     s1+=79.0;
    }
   }
  } else {
   if(i4<0.00012296438217163086){
    if(i69<-0.004571673460304737){
     s0+=717.0;
     s1+=9.0;
    } else {
     s0+=60.0;
     s1+=27.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i3<0.9958418011665344){
   if(i44<0.0062848348170518875){
    if(i10<-0.00037541985511779785){
     s0+=205.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    s1+=90.0;
   }
  } else {
   if(i5<0.00011733174324035645){
    if(i16<0.0016849820967763662){
     s0+=198.0;
     s1+=65.0;
    } else {
     s0+=114.0;
     s1+=959.0;
    }
   } else {
    if(i3<1.0024118423461914){
     s0+=143.0;
     s1+=1348.0;
    } else {
     s0+=31.0;
     s1+=9095.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i0<0.06613346934318542){
  if(i51<-0.0058526694774627686){
   if(i66<-3.0582791623601224e-06){
    if(i77<0.0007924437522888184){
     s0+=6.0;
     s1+=176.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    if(i31<0.047286178916692734){
     s0+=3732.0;
     s1+=782.0;
    } else {
     s0+=11.0;
     s1+=101.0;
    }
   }
  } else {
   if(i17<1.0486011505126953){
    if(i77<-0.0006196498870849609){
     s0+=6058.0;
     s1+=138.0;
    } else {
     s0+=47221.0;
     s1+=53.0;
    }
   } else {
    if(i26<0.001687483163550496){
     s0+=7021.0;
     s1+=765.0;
    } else {
     s0+=2404.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i21<1.0033292770385742){
   if(i53<0.0020986900199204683){
    if(i62<0.021536588668823242){
     s0+=263.0;
     s1+=201.0;
    } else {
     s0+=2038.0;
     s1+=62.0;
    }
   } else {
    if(i61<0.0031491518020629883){
     s0+=225.0;
     s1+=412.0;
    } else {
     s0+=170.0;
     s1+=16.0;
    }
   }
  } else {
   if(i60<0.004668772220611572){
    if(i16<0.0009434332605451345){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=454.0;
    }
   } else {
    if(i43<1.000946044921875){
     s0+=31.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i5<0.00010347366333007812){
  if(i16<0.005380098707973957){
   if(i62<0.03062230348587036){
    if(i38<-0.00013974308967590332){
     s0+=300.0;
     s1+=8.0;
    } else {
     s0+=195.0;
     s1+=752.0;
    }
   } else {
    if(i71<-0.02335863932967186){
     s0+=556.0;
     s1+=68.0;
    } else {
     s0+=236.0;
     s1+=168.0;
    }
   }
  } else {
   if(i14<-1.3440847396850586e-05){
    if(i9<0.9853283762931824){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0002550780773162842){
     s0+=15.0;
     s1+=604.0;
    } else {
     s0+=74.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i3<1.0020616054534912){
   if(i38<5.40316104888916e-05){
    if(i34<0.0006395997479557991){
     s0+=31.0;
    } else {
     s0+=19.0;
     s1+=921.0;
    }
   } else {
    if(i2<0.15597203373908997){
     s0+=262.0;
     s1+=318.0;
    } else {
     s0+=46.0;
     s1+=445.0;
    }
   }
  } else {
   if(i16<0.001987359719350934){
    if(i32<1.0087804794311523){
     s0+=26.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i13<1.007317066192627){
     s0+=87.0;
     s1+=1833.0;
    } else {
     s1+=8522.0;
    }
   }
  }
 }
}
if(i57<1.0095429420471191){
 if(i2<0.08172488212585449){
  if(i17<1.0486011505126953){
   if(i78<0.04734060913324356){
    if(i57<0.9714040756225586){
     s0+=60.0;
     s1+=17.0;
    } else {
     s0+=50832.0;
     s1+=137.0;
    }
   } else {
    if(i17<1.0412344932556152){
     s0+=3874.0;
     s1+=74.0;
    } else {
     s0+=873.0;
     s1+=168.0;
    }
   }
  } else {
   if(i14<1.8894672393798828e-05){
    if(i34<0.0014468778390437365){
     s0+=4791.0;
     s1+=1265.0;
    } else {
     s0+=6007.0;
     s1+=215.0;
    }
   } else {
    if(i3<1.0014898777008057){
     s0+=569.0;
     s1+=102.0;
    } else {
     s0+=126.0;
     s1+=827.0;
    }
   }
  }
 } else {
  if(i10<-0.00041306018829345703){
   if(i35<1.4989960193634033){
    s0+=291.0;
   } else {
    if(i25<0.9899710416793823){
     s1+=5.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i52<0.0029130876064300537){
    if(i34<0.00031630328157916665){
     s0+=33.0;
    } else {
     s0+=103.0;
     s1+=2901.0;
    }
   } else {
    if(i36<-7.793195777594519e-07){
     s0+=197.0;
     s1+=487.0;
    } else {
     s0+=81.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i10<0.0004907548427581787){
  if(i2<0.09243342280387878){
   if(i41<0.0015240407083183527){
    if(i25<1.0081493854522705){
     s0+=216.0;
     s1+=49.0;
    } else {
     s0+=278.0;
     s1+=406.0;
    }
   } else {
    if(i8<-5.813710595248267e-05){
     s0+=17.0;
     s1+=49.0;
    } else {
     s0+=1575.0;
     s1+=16.0;
    }
   }
  } else {
   if(i73<1.9165104276908096e-06){
    if(i16<0.0016448013484477997){
     s0+=266.0;
     s1+=85.0;
    } else {
     s0+=189.0;
     s1+=2536.0;
    }
   } else {
    s0+=99.0;
   }
  }
 } else {
  if(i1<0.09527057409286499){
   if(i60<0.003794431686401367){
    if(i17<1.0915815830230713){
     s0+=7.0;
     s1+=282.0;
    } else {
     s0+=26.0;
     s1+=24.0;
    }
   } else {
    if(i48<0.011780709028244019){
     s0+=18.0;
     s1+=17.0;
    } else {
     s0+=258.0;
     s1+=12.0;
    }
   }
  } else {
   if(i12<-5.239248275756836e-05){
    if(i26<0.005482599604874849){
     s0+=83.0;
     s1+=180.0;
    } else {
     s0+=8.0;
     s1+=370.0;
    }
   } else {
    if(i32<0.9958809614181519){
     s0+=4.0;
     s1+=139.0;
    } else {
     s1+=6984.0;
    }
   }
  }
 }
}
if(i5<0.0005651116371154785){
 if(i39<1.0598037242889404){
  if(i26<0.00036756432382389903){
   s0+=42164.0;
  } else {
   if(i42<1.0724589824676514){
    s0+=1734.0;
   } else {
    if(i51<-0.006726175546646118){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=274.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i3<0.9975279569625854){
   if(i25<1.028293490409851){
    if(i17<1.067823886871338){
     s0+=11554.0;
     s1+=145.0;
    } else {
     s0+=4228.0;
     s1+=404.0;
    }
   } else {
    if(i5<-0.001049131155014038){
     s0+=44.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=45.0;
    }
   }
  } else {
   if(i8<-4.113771137781441e-05){
    if(i15<-0.0001233816146850586){
     s0+=841.0;
     s1+=600.0;
    } else {
     s0+=306.0;
     s1+=1620.0;
    }
   } else {
    if(i32<0.9958033561706543){
     s0+=1836.0;
     s1+=1382.0;
    } else {
     s0+=7662.0;
     s1+=1203.0;
    }
   }
  }
 }
} else {
 if(i0<0.06427258253097534){
  if(i51<-0.004399538040161133){
   if(i30<1.594835877418518){
    if(i36<-1.439733478036942e-05){
     s0+=21.0;
     s1+=347.0;
    } else {
     s0+=16.0;
     s1+=6.0;
    }
   } else {
    if(i61<-0.01255372166633606){
     s0+=1.0;
     s1+=30.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   }
  } else {
   if(i38<0.00018030405044555664){
    if(i12<0.0014896988868713379){
     s0+=186.0;
     s1+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i42<1.2314128875732422){
     s0+=33.0;
     s1+=93.0;
    } else {
     s0+=55.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i8<-6.372792267939076e-05){
   if(i40<9.545009379507974e-05){
    if(i2<0.06887626647949219){
     s0+=1.0;
     s1+=244.0;
    } else {
     s1+=8231.0;
    }
   } else {
    if(i16<0.008124790154397488){
     s0+=72.0;
     s1+=93.0;
    } else {
     s0+=21.0;
     s1+=1992.0;
    }
   }
  } else {
   if(i17<1.0991166830062866){
    if(i42<1.333360195159912){
     s1+=440.0;
    } else {
     s0+=11.0;
     s1+=10.0;
    }
   } else {
    if(i41<0.00696336105465889){
     s0+=80.0;
     s1+=10.0;
    } else {
     s0+=6.0;
     s1+=100.0;
    }
   }
  }
 }
}
if(i7<1.0450963973999023){
 if(i9<1.0083956718444824){
  if(i11<1.0450963973999023){
   if(i3<1.0024800300598145){
    if(i58<0.0015900211874395609){
     s0+=58499.0;
     s1+=578.0;
    } else {
     s0+=3708.0;
     s1+=469.0;
    }
   } else {
    if(i73<-4.9967802624451e-06){
     s0+=3.0;
     s1+=152.0;
    } else {
     s0+=49.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.06570950150489807){
    if(i14<2.086162567138672e-05){
     s0+=2510.0;
     s1+=287.0;
    } else {
     s0+=126.0;
     s1+=128.0;
    }
   } else {
    if(i14<-1.4662742614746094e-05){
     s0+=67.0;
     s1+=1.0;
    } else {
     s0+=161.0;
     s1+=629.0;
    }
   }
  }
 } else {
  if(i49<0.0014478368684649467){
   if(i67<0.0012662315275520086){
    if(i21<0.9982142448425293){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=277.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   if(i4<6.467103958129883e-05){
    if(i2<0.06930708885192871){
     s0+=199.0;
     s1+=4.0;
    } else {
     s1+=40.0;
    }
   } else {
    s1+=118.0;
   }
  }
 }
} else {
 if(i1<0.09137988090515137){
  if(i51<0.008085489273071289){
   if(i67<0.000526891672052443){
    if(i36<-1.322034040640574e-05){
     s0+=91.0;
     s1+=291.0;
    } else {
     s0+=1939.0;
     s1+=347.0;
    }
   } else {
    if(i14<-1.4901161193847656e-06){
     s0+=296.0;
     s1+=73.0;
    } else {
     s0+=322.0;
     s1+=849.0;
    }
   }
  } else {
   if(i44<0.001097056781873107){
    if(i12<0.00041484832763671875){
     s0+=321.0;
     s1+=39.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i4<0.00011783838272094727){
     s0+=1570.0;
     s1+=10.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i38<-0.0001341402530670166){
   if(i16<0.006052433978766203){
    if(i21<1.0006314516067505){
     s0+=361.0;
     s1+=7.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=84.0;
   }
  } else {
   if(i0<0.12493923306465149){
    if(i52<0.004688829183578491){
     s0+=160.0;
     s1+=1495.0;
    } else {
     s0+=424.0;
     s1+=38.0;
    }
   } else {
    if(i71<-0.03077167645096779){
     s0+=288.0;
     s1+=2906.0;
    } else {
     s0+=33.0;
     s1+=8259.0;
    }
   }
  }
 }
}
if(i5<0.0005650222301483154){
 if(i26<0.00031641291570849717){
  if(i63<-0.0001179832688649185){
   if(i19<0.9952042102813721){
    s0+=13.0;
   } else {
    if(i44<0.0033610665705055){
     s0+=2.0;
     s1+=34.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i0<0.07808664441108704){
    if(i22<1.00860595703125){
     s0+=53906.0;
     s1+=229.0;
    } else {
     s0+=152.0;
     s1+=80.0;
    }
   } else {
    if(i25<1.0060789585113525){
     s0+=205.0;
     s1+=38.0;
    } else {
     s0+=7.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i21<0.9943259358406067){
   if(i54<0.006169290281832218){
    if(i33<0.08468979597091675){
     s0+=8890.0;
     s1+=292.0;
    } else {
     s0+=335.0;
     s1+=390.0;
    }
   } else {
    if(i40<0.00039113860111683607){
     s0+=2.0;
     s1+=78.0;
    } else {
     s0+=29.0;
    }
   }
  } else {
   if(i1<0.07542526721954346){
    if(i34<0.000302480417303741){
     s0+=2048.0;
    } else {
     s0+=3995.0;
     s1+=1288.0;
    }
   } else {
    if(i61<0.004257619380950928){
     s0+=699.0;
     s1+=2415.0;
    } else {
     s0+=550.0;
     s1+=583.0;
    }
   }
  }
 }
} else {
 if(i17<1.0415534973144531){
  if(i63<0.00014580809511244297){
   s0+=116.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i4<6.371736526489258e-05){
   if(i31<0.007492881268262863){
    if(i45<0.0012922144960612059){
     s0+=62.0;
     s1+=152.0;
    } else {
     s0+=107.0;
     s1+=15.0;
    }
   } else {
    if(i16<0.0022435032296925783){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=85.0;
     s1+=1359.0;
    }
   }
  } else {
   if(i8<-0.00016745069297030568){
    s1+=6139.0;
   } else {
    if(i12<3.5643577575683594e-05){
     s0+=119.0;
     s1+=617.0;
    } else {
     s0+=8.0;
     s1+=3116.0;
    }
   }
  }
 }
}
if(i5<0.0005484223365783691){
 if(i45<0.0003487985522951931){
  if(i24<1.0108287334442139){
   if(i26<0.00031152786687016487){
    if(i22<1.0081193447113037){
     s0+=47727.0;
     s1+=75.0;
    } else {
     s0+=35.0;
     s1+=23.0;
    }
   } else {
    if(i18<1.0004518032073975){
     s0+=578.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   }
  } else {
   if(i42<1.0620975494384766){
    s0+=1.0;
   } else {
    s1+=90.0;
   }
  }
 } else {
  if(i0<0.07769957184791565){
   if(i41<0.0016392759280279279){
    if(i41<0.0004411974805407226){
     s0+=2373.0;
     s1+=94.0;
    } else {
     s0+=3441.0;
     s1+=1249.0;
    }
   } else {
    if(i53<0.010929880663752556){
     s0+=13293.0;
     s1+=91.0;
    } else {
     s0+=1439.0;
     s1+=258.0;
    }
   }
  } else {
   if(i14<-1.4722347259521484e-05){
    if(i43<0.9991430640220642){
     s0+=403.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=20.0;
    }
   } else {
    if(i51<0.012670964002609253){
     s0+=241.0;
     s1+=2330.0;
    } else {
     s0+=1068.0;
     s1+=1210.0;
    }
   }
  }
 }
} else {
 if(i17<1.0413084030151367){
  if(i8<-4.681908467318863e-05){
   s1+=2.0;
  } else {
   s0+=159.0;
  }
 } else {
  if(i5<0.0009340047836303711){
   if(i0<0.06875377893447876){
    if(i22<1.0152742862701416){
     s0+=127.0;
     s1+=193.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i31<0.011959745548665524){
     s0+=88.0;
     s1+=209.0;
    } else {
     s0+=26.0;
     s1+=1183.0;
    }
   }
  } else {
   if(i43<1.0012381076812744){
    if(i15<1.239776611328125e-05){
     s0+=70.0;
     s1+=221.0;
    } else {
     s0+=8.0;
     s1+=3281.0;
    }
   } else {
    if(i31<0.009908076375722885){
     s0+=21.0;
     s1+=413.0;
    } else {
     s0+=6.0;
     s1+=6083.0;
    }
   }
  }
 }
}
if(i13<1.0060044527053833){
 if(i5<0.0005488693714141846){
  if(i0<0.08206692337989807){
   if(i30<1.0856719017028809){
    s0+=38110.0;
   } else {
    if(i35<1.1032289266586304){
     s0+=6378.0;
     s1+=1491.0;
    } else {
     s0+=23782.0;
     s1+=507.0;
    }
   }
  } else {
   if(i16<0.005412006750702858){
    if(i47<0.049091637134552){
     s0+=175.0;
     s1+=1023.0;
    } else {
     s0+=1165.0;
     s1+=371.0;
    }
   } else {
    if(i59<-8.13826045487076e-05){
     s0+=46.0;
     s1+=1171.0;
    } else {
     s0+=87.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i28<0.0002052714698947966){
   if(i40<5.202405191084836e-06){
    if(i31<0.008479202166199684){
     s0+=149.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i20<0.027691403403878212){
    if(i76<0.00013148484867997468){
     s0+=58.0;
     s1+=394.0;
    } else {
     s0+=144.0;
     s1+=51.0;
    }
   } else {
    if(i11<1.1223218441009521){
     s0+=58.0;
     s1+=618.0;
    } else {
     s0+=8.0;
     s1+=1188.0;
    }
   }
  }
 }
} else {
 if(i28<0.0001691776269581169){
  if(i54<0.0008361018262803555){
   if(i40<-3.202099469490349e-05){
    s1+=7.0;
   } else {
    if(i74<2.1672440198017284e-06){
     s0+=271.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i77<0.000957190990447998){
    s1+=36.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i4<3.439188003540039e-05){
   if(i8<-3.366740565979853e-05){
    if(i73<8.776988806857844e-07){
     s0+=54.0;
     s1+=666.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i76<8.730843546800315e-05){
     s0+=316.0;
     s1+=6.0;
    } else {
     s0+=24.0;
     s1+=78.0;
    }
   }
  } else {
   if(i8<-4.3679225200321525e-05){
    if(i2<0.08041101694107056){
     s0+=23.0;
     s1+=752.0;
    } else {
     s0+=7.0;
     s1+=8687.0;
    }
   } else {
    if(i14<1.7702579498291016e-05){
     s0+=74.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i7<1.0452277660369873){
  if(i68<0.019365476444363594){
   if(i56<0.000859011837746948){
    if(i21<1.0044734477996826){
     s0+=50160.0;
     s1+=205.0;
    } else {
     s0+=173.0;
     s1+=50.0;
    }
   } else {
    if(i75<-0.0015754401683807373){
     s0+=43.0;
     s1+=121.0;
    } else {
     s0+=185.0;
     s1+=41.0;
    }
   }
  } else {
   if(i1<0.07653331756591797){
    if(i34<0.0014458736404776573){
     s0+=4497.0;
     s1+=803.0;
    } else {
     s0+=9091.0;
     s1+=136.0;
    }
   } else {
    if(i10<-0.00038421154022216797){
     s0+=280.0;
     s1+=8.0;
    } else {
     s0+=211.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i67<0.0016705588204786181){
   if(i5<0.00014668703079223633){
    if(i46<0.043825533241033554){
     s0+=3128.0;
     s1+=600.0;
    } else {
     s0+=1620.0;
     s1+=1176.0;
    }
   } else {
    if(i31<0.02555316500365734){
     s0+=813.0;
     s1+=958.0;
    } else {
     s0+=56.0;
     s1+=544.0;
    }
   }
  } else {
   if(i49<0.0016497676260769367){
    s0+=2.0;
   } else {
    s1+=440.0;
   }
  }
 }
} else {
 if(i36<-0.00012171041453257203){
  s0+=152.0;
 } else {
  if(i41<0.00042648223461583257){
   if(i22<1.0085675716400146){
    s0+=148.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i12<0.0014260411262512207){
    if(i7<1.1364943981170654){
     s0+=431.0;
     s1+=1917.0;
    } else {
     s0+=3.0;
     s1+=1320.0;
    }
   } else {
    s1+=8323.0;
   }
  }
 }
}
if(i19<1.0028107166290283){
 if(i6<0.07196849584579468){
  if(i13<1.0056025981903076){
   if(i7<1.0401519536972046){
    if(i56<0.0007553945761173964){
     s0+=56377.0;
     s1+=391.0;
    } else {
     s0+=5553.0;
     s1+=751.0;
    }
   } else {
    if(i49<0.00029587518656626344){
     s0+=1143.0;
    } else {
     s0+=4278.0;
     s1+=1048.0;
    }
   }
  } else {
   if(i2<0.0741288959980011){
    if(i76<0.0001159888633992523){
     s0+=578.0;
     s1+=88.0;
    } else {
     s0+=53.0;
     s1+=106.0;
    }
   } else {
    if(i47<0.041114866733551025){
     s0+=2.0;
     s1+=303.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<0.1125878095626831){
   if(i52<0.003944694995880127){
    if(i38<-2.9087066650390625e-05){
     s0+=265.0;
     s1+=77.0;
    } else {
     s0+=235.0;
     s1+=588.0;
    }
   } else {
    if(i2<0.0949811041355133){
     s0+=479.0;
     s1+=11.0;
    } else {
     s0+=149.0;
     s1+=20.0;
    }
   }
  } else {
   if(i8<-1.4962892237235792e-05){
    if(i54<0.00030023546423763037){
     s0+=46.0;
     s1+=78.0;
    } else {
     s0+=147.0;
     s1+=2803.0;
    }
   } else {
    if(i55<1.0000680685043335){
     s0+=495.0;
     s1+=119.0;
    } else {
     s0+=4.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i0<0.06645467877388){
  if(i4<3.0100345611572266e-05){
   if(i36<-1.923768877531984e-06){
    if(i12<-0.0024114251136779785){
     s0+=708.0;
     s1+=7.0;
    } else {
     s0+=228.0;
     s1+=32.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i60<0.0028849542140960693){
    if(i64<-0.00027871131896972656){
     s0+=36.0;
     s1+=539.0;
    } else {
     s0+=99.0;
     s1+=30.0;
    }
   } else {
    if(i67<0.0006489192019216716){
     s0+=65.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i65<1.00459623336792){
   if(i8<-6.321175897028297e-05){
    if(i77<-0.0007660388946533203){
     s0+=74.0;
     s1+=1837.0;
    } else {
     s0+=1.0;
     s1+=7476.0;
    }
   } else {
    if(i35<1.1829490661621094){
     s0+=14.0;
     s1+=307.0;
    } else {
     s0+=166.0;
     s1+=281.0;
    }
   }
  } else {
   if(i6<0.14482629299163818){
    if(i78<0.26493459939956665){
     s0+=35.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=20.0;
   }
  }
 }
}
if(i7<1.0452215671539307){
 if(i13<1.0062589645385742){
  if(i26<0.0003066366771236062){
   if(i3<1.0026339292526245){
    if(i57<1.0123116970062256){
     s0+=53320.0;
     s1+=291.0;
    } else {
     s0+=18.0;
     s1+=31.0;
    }
   } else {
    if(i54<0.0009325737482868135){
     s0+=3.0;
    } else {
     s1+=47.0;
    }
   }
  } else {
   if(i39<1.178917407989502){
    if(i17<1.0451428890228271){
     s0+=3125.0;
     s1+=192.0;
    } else {
     s0+=1975.0;
     s1+=1452.0;
    }
   } else {
    if(i11<1.044576644897461){
     s0+=5846.0;
     s1+=76.0;
    } else {
     s0+=981.0;
     s1+=286.0;
    }
   }
  }
 } else {
  if(i8<-5.1234666898380965e-05){
   if(i11<1.028781533241272){
    s0+=9.0;
   } else {
    if(i74<3.06143283523852e-06){
     s0+=13.0;
     s1+=446.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i8<-4.092285962542519e-05){
    if(i35<1.1753523349761963){
     s1+=22.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i42<1.1386182308197021){
     s1+=10.0;
    } else {
     s0+=253.0;
    }
   }
  }
 }
} else {
 if(i5<0.00047659873962402344){
  if(i43<0.9993119835853577){
   if(i72<1.0006356239318848){
    if(i34<0.0018101626774296165){
     s0+=1213.0;
     s1+=1.0;
    } else {
     s0+=94.0;
     s1+=35.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i6<0.12492614984512329){
    if(i1<0.08946463465690613){
     s0+=3258.0;
     s1+=789.0;
    } else {
     s0+=589.0;
     s1+=1059.0;
    }
   } else {
    if(i20<0.04018428921699524){
     s0+=227.0;
     s1+=356.0;
    } else {
     s0+=39.0;
     s1+=931.0;
    }
   }
  }
 } else {
  if(i5<0.0009042620658874512){
   if(i55<0.9998995065689087){
    if(i25<0.9657747745513916){
     s0+=9.0;
     s1+=29.0;
    } else {
     s1+=752.0;
    }
   } else {
    if(i20<0.07469874620437622){
     s0+=310.0;
     s1+=368.0;
    } else {
     s1+=194.0;
    }
   }
  } else {
   if(i9<1.0037058591842651){
    if(i65<0.9975439310073853){
     s0+=35.0;
     s1+=6.0;
    } else {
     s0+=47.0;
     s1+=1175.0;
    }
   } else {
    if(i12<3.904104232788086e-05){
     s0+=17.0;
     s1+=265.0;
    } else {
     s0+=10.0;
     s1+=7996.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i18<1.001842975616455){
  if(i1<0.06633725762367249){
   if(i78<0.04056556522846222){
    if(i58<0.00394584983587265){
     s0+=51969.0;
     s1+=353.0;
    } else {
     s0+=51.0;
     s1+=59.0;
    }
   } else {
    if(i39<1.1031841039657593){
     s0+=4956.0;
     s1+=760.0;
    } else {
     s0+=7799.0;
     s1+=185.0;
    }
   }
  } else {
   if(i11<1.045206069946289){
    if(i17<1.0474863052368164){
     s0+=2503.0;
     s1+=59.0;
    } else {
     s0+=434.0;
     s1+=148.0;
    }
   } else {
    if(i35<1.1037919521331787){
     s0+=218.0;
     s1+=396.0;
    } else {
     s0+=767.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i5<0.00047522783279418945){
   if(i53<0.013531319797039032){
    if(i34<0.003668510355055332){
     s0+=16.0;
     s1+=13.0;
    } else {
     s0+=522.0;
     s1+=12.0;
    }
   } else {
    if(i33<0.004485428333282471){
     s0+=15.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   }
  } else {
   if(i30<1.5682398080825806){
    if(i26<0.000168597383890301){
     s0+=33.0;
    } else {
     s0+=53.0;
     s1+=806.0;
    }
   } else {
    if(i29<0.9168578386306763){
     s0+=4.0;
     s1+=73.0;
    } else {
     s0+=117.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0004030168056488037){
  if(i30<1.4901387691497803){
   if(i53<-0.006362434942275286){
    if(i18<0.9986558556556702){
     s0+=107.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=316.0;
   }
  } else {
   if(i13<0.9814866781234741){
    if(i8<-2.2181517124408856e-05){
     s1+=14.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i21<1.0021934509277344){
   if(i16<0.0016846612561494112){
    if(i63<0.00028031383408233523){
     s0+=472.0;
     s1+=28.0;
    } else {
     s0+=85.0;
     s1+=159.0;
    }
   } else {
    if(i56<-0.000502578797750175){
     s0+=19.0;
     s1+=1043.0;
    } else {
     s0+=559.0;
     s1+=2901.0;
    }
   }
  } else {
   if(i65<1.00459623336792){
    if(i59<-0.0004161373362876475){
     s0+=16.0;
     s1+=7321.0;
    } else {
     s0+=90.0;
     s1+=2558.0;
    }
   } else {
    if(i31<0.027299823239445686){
     s0+=15.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
}
if(i3<1.0024337768554688){
 if(i9<1.0081498622894287){
  if(i17<1.0526776313781738){
   if(i0<0.07853224873542786){
    if(i60<-0.0023888349533081055){
     s0+=1605.0;
     s1+=230.0;
    } else {
     s0+=55559.0;
     s1+=191.0;
    }
   } else {
    if(i3<0.9969340562820435){
     s0+=227.0;
     s1+=1.0;
    } else {
     s0+=99.0;
     s1+=96.0;
    }
   }
  } else {
   if(i5<0.00021308660507202148){
    if(i35<1.103413462638855){
     s0+=2239.0;
     s1+=1304.0;
    } else {
     s0+=9270.0;
     s1+=1221.0;
    }
   } else {
    if(i20<0.015519336797297001){
     s0+=344.0;
     s1+=118.0;
    } else {
     s0+=222.0;
     s1+=800.0;
    }
   }
  }
 } else {
  if(i0<0.08272159099578857){
   if(i8<-3.576081871869974e-05){
    if(i44<0.004536113701760769){
     s0+=9.0;
     s1+=190.0;
    } else {
     s0+=50.0;
     s1+=9.0;
    }
   } else {
    if(i17<1.0731005668640137){
     s0+=19.0;
     s1+=19.0;
    } else {
     s0+=683.0;
     s1+=23.0;
    }
   }
  } else {
   if(i62<0.03450578451156616){
    if(i16<0.002705926075577736){
     s0+=110.0;
     s1+=255.0;
    } else {
     s0+=27.0;
     s1+=962.0;
    }
   } else {
    if(i2<0.27152055501937866){
     s0+=232.0;
     s1+=138.0;
    } else {
     s0+=10.0;
     s1+=224.0;
    }
   }
  }
 }
} else {
 if(i8<-4.328748764237389e-05){
  if(i2<0.049371153116226196){
   if(i34<0.009045673534274101){
    if(i73<-4.095711574336747e-06){
     s0+=16.0;
     s1+=312.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i9<0.9722967147827148){
     s1+=14.0;
    } else {
     s0+=46.0;
     s1+=4.0;
    }
   }
  } else {
   if(i13<1.0083281993865967){
    if(i20<0.014469144865870476){
     s0+=63.0;
     s1+=178.0;
    } else {
     s0+=52.0;
     s1+=1893.0;
    }
   } else {
    if(i11<1.0271729230880737){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=8732.0;
    }
   }
  }
 } else {
  if(i38<0.0001913309097290039){
   if(i10<0.0005878210067749023){
    if(i34<0.0007950225262902677){
     s0+=8.0;
     s1+=25.0;
    } else {
     s0+=198.0;
     s1+=7.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i49<0.000390750530641526){
    s0+=6.0;
   } else {
    s1+=165.0;
   }
  }
 }
}
if(i1<0.08502736687660217){
 if(i5<0.0006022751331329346){
  if(i52<-0.0015021562576293945){
   if(i30<1.1991922855377197){
    if(i42<1.081458568572998){
     s0+=1026.0;
     s1+=54.0;
    } else {
     s0+=432.0;
     s1+=571.0;
    }
   } else {
    if(i31<0.03954809531569481){
     s0+=2495.0;
     s1+=134.0;
    } else {
     s0+=71.0;
     s1+=81.0;
    }
   }
  } else {
   if(i11<1.0452215671539307){
    if(i2<0.07644954323768616){
     s0+=59539.0;
     s1+=486.0;
    } else {
     s0+=161.0;
     s1+=43.0;
    }
   } else {
    if(i44<0.0011287308298051357){
     s0+=1871.0;
     s1+=654.0;
    } else {
     s0+=3333.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i38<0.00016319751739501953){
   if(i12<0.0014311671257019043){
    if(i67<0.0006525184726342559){
     s0+=126.0;
     s1+=3.0;
    } else {
     s0+=40.0;
     s1+=49.0;
    }
   } else {
    s1+=34.0;
   }
  } else {
   if(i61<0.00250166654586792){
    if(i41<0.0004246023017913103){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=93.0;
     s1+=853.0;
    }
   } else {
    if(i66<-6.355066943797283e-07){
     s1+=5.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i4<9.238719940185547e-06){
  if(i34<0.0004476824833545834){
   if(i38<0.00012031197547912598){
    if(i72<0.9992035627365112){
     s0+=310.0;
    } else {
     s0+=110.0;
     s1+=1.0;
    }
   } else {
    if(i70<0.013063084334135056){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i30<1.255998969078064){
    if(i10<-0.00048038363456726074){
     s0+=48.0;
    } else {
     s0+=196.0;
     s1+=1181.0;
    }
   } else {
    if(i63<0.0008513439097441733){
     s0+=711.0;
     s1+=274.0;
    } else {
     s0+=87.0;
     s1+=440.0;
    }
   }
  }
 } else {
  if(i21<1.0023021697998047){
   if(i44<0.007235672324895859){
    if(i52<0.004079043865203857){
     s0+=57.0;
     s1+=646.0;
    } else {
     s0+=315.0;
     s1+=408.0;
    }
   } else {
    if(i20<0.015378037467598915){
     s0+=13.0;
     s1+=20.0;
    } else {
     s0+=13.0;
     s1+=1258.0;
    }
   }
  } else {
   if(i8<-4.317488128435798e-05){
    if(i0<0.11660927534103394){
     s0+=13.0;
     s1+=938.0;
    } else {
     s0+=6.0;
     s1+=8572.0;
    }
   } else {
    if(i49<0.003035688539966941){
     s0+=9.0;
     s1+=122.0;
    } else {
     s0+=52.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i9<1.0081671476364136){
 if(i70<0.1754058599472046){
  if(i6<0.07113850116729736){
   if(i17<1.0495078563690186){
    if(i60<-0.0023250579833984375){
     s0+=1651.0;
     s1+=239.0;
    } else {
     s0+=54605.0;
     s1+=198.0;
    }
   } else {
    if(i4<1.9729137420654297e-05){
     s0+=11357.0;
     s1+=1523.0;
    } else {
     s0+=349.0;
     s1+=736.0;
    }
   }
  } else {
   if(i0<0.0958433747291565){
    if(i52<0.002877652645111084){
     s0+=409.0;
     s1+=355.0;
    } else {
     s0+=525.0;
     s1+=40.0;
    }
   } else {
    if(i71<-0.02754831500351429){
     s0+=542.0;
     s1+=379.0;
    } else {
     s0+=209.0;
     s1+=1472.0;
    }
   }
  }
 } else {
  if(i13<0.9599077701568604){
   if(i4<-2.104043960571289e-05){
    s0+=187.0;
   } else {
    s1+=2.0;
   }
  } else {
   s1+=1217.0;
  }
 }
} else {
 if(i9<1.016805648803711){
  if(i54<0.001702113077044487){
   if(i39<1.1160385608673096){
    if(i67<4.559161970973946e-05){
     s0+=29.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=694.0;
    }
   } else {
    if(i38<8.821487426757812e-06){
     s0+=180.0;
     s1+=302.0;
    } else {
     s0+=769.0;
     s1+=145.0;
    }
   }
  } else {
   if(i16<0.0035201571881771088){
    s0+=41.0;
   } else {
    if(i39<1.1759474277496338){
     s1+=836.0;
    } else {
     s0+=27.0;
     s1+=411.0;
    }
   }
  }
 } else {
  if(i8<-4.331160744186491e-05){
   if(i13<0.9954754114151001){
    if(i13<0.9954210519790649){
     s0+=2.0;
     s1+=123.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i70<0.006751398090273142){
     s0+=1.0;
     s1+=172.0;
    } else {
     s1+=8002.0;
    }
   }
  } else {
   if(i18<1.0006139278411865){
    if(i30<1.255998969078064){
     s0+=6.0;
     s1+=170.0;
    } else {
     s0+=59.0;
     s1+=11.0;
    }
   } else {
    if(i73<-5.1132756198057905e-06){
     s1+=38.0;
    } else {
     s0+=182.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i10<0.0004399418830871582){
 if(i2<0.08162745833396912){
  if(i26<0.00030955878901295364){
   if(i9<1.007538080215454){
    if(i77<-0.0009889006614685059){
     s0+=420.0;
     s1+=54.0;
    } else {
     s0+=52809.0;
     s1+=193.0;
    }
   } else {
    if(i39<1.082112193107605){
     s0+=1.0;
     s1+=97.0;
    } else {
     s0+=138.0;
     s1+=4.0;
    }
   }
  } else {
   if(i35<1.103413462638855){
    if(i44<0.0002949316694866866){
     s0+=1947.0;
    } else {
     s0+=1780.0;
     s1+=1434.0;
    }
   } else {
    if(i52<-0.002642035484313965){
     s0+=1845.0;
     s1+=228.0;
    } else {
     s0+=8865.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i18<0.9985578060150146){
   if(i34<0.0017424665857106447){
    if(i10<-0.00036600232124328613){
     s0+=390.0;
    } else {
     s0+=42.0;
     s1+=3.0;
    }
   } else {
    if(i4<-3.6209821701049805e-05){
     s0+=27.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   }
  } else {
   if(i16<0.001723350491374731){
    if(i51<0.014691650867462158){
     s0+=153.0;
     s1+=240.0;
    } else {
     s0+=369.0;
     s1+=38.0;
    }
   } else {
    if(i8<-3.457778802840039e-05){
     s0+=46.0;
     s1+=2766.0;
    } else {
     s0+=294.0;
     s1+=930.0;
    }
   }
  }
 }
} else {
 if(i15<7.349252700805664e-05){
  if(i4<3.9637088775634766e-05){
   if(i78<0.48652398586273193){
    if(i21<1.0011757612228394){
     s0+=1354.0;
     s1+=335.0;
    } else {
     s0+=70.0;
     s1+=152.0;
    }
   } else {
    if(i1<0.036625832319259644){
     s0+=35.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=162.0;
    }
   }
  } else {
   if(i0<0.12784337997436523){
    if(i65<0.9977006316184998){
     s0+=92.0;
    } else {
     s0+=187.0;
     s1+=636.0;
    }
   } else {
    if(i72<1.0040935277938843){
     s0+=17.0;
     s1+=251.0;
    } else {
     s1+=921.0;
    }
   }
  }
 } else {
  if(i35<1.062724232673645){
   s0+=34.0;
  } else {
   if(i8<-4.335369885666296e-05){
    s1+=8554.0;
   } else {
    if(i41<0.0015410776250064373){
     s0+=7.0;
     s1+=69.0;
    } else {
     s0+=67.0;
     s1+=18.0;
    }
   }
  }
 }
}
if(i6<0.06949499249458313){
 if(i12<0.0010570287704467773){
  if(i20<0.01654732972383499){
   if(i10<0.0006377696990966797){
    if(i9<1.0080897808074951){
     s0+=58264.0;
     s1+=632.0;
    } else {
     s0+=388.0;
     s1+=190.0;
    }
   } else {
    if(i3<1.0022401809692383){
     s0+=165.0;
     s1+=24.0;
    } else {
     s0+=34.0;
     s1+=133.0;
    }
   }
  } else {
   if(i3<0.9982788562774658){
    if(i3<0.9968686699867249){
     s0+=6892.0;
     s1+=73.0;
    } else {
     s0+=1055.0;
     s1+=288.0;
    }
   } else {
    if(i34<0.0003363036084920168){
     s0+=424.0;
    } else {
     s0+=1394.0;
     s1+=1719.0;
    }
   }
  }
 } else {
  if(i28<0.00016283465083688498){
   if(i41<0.0021594257559627295){
    if(i1<0.05135032534599304){
     s0+=8.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i2<0.06716340780258179){
     s0+=89.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i12<0.0014296770095825195){
    if(i49<0.002778415335342288){
     s0+=4.0;
     s1+=197.0;
    } else {
     s0+=70.0;
     s1+=18.0;
    }
   } else {
    if(i1<0.031734615564346313){
     s0+=5.0;
     s1+=21.0;
    } else {
     s0+=3.0;
     s1+=1086.0;
    }
   }
  }
 }
} else {
 if(i16<0.004565384704619646){
  if(i40<-1.5743786207167432e-05){
   if(i69<-0.008730489760637283){
    if(i1<0.23437225818634033){
     s0+=20.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i12<0.0013865232467651367){
     s0+=10.0;
     s1+=15.0;
    } else {
     s1+=538.0;
    }
   }
  } else {
   if(i0<0.1060495376586914){
    if(i61<0.0030693113803863525){
     s0+=731.0;
     s1+=346.0;
    } else {
     s0+=431.0;
     s1+=8.0;
    }
   } else {
    if(i52<0.00554347038269043){
     s0+=198.0;
     s1+=653.0;
    } else {
     s0+=506.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i14<-2.0056962966918945e-05){
   s0+=113.0;
  } else {
   if(i13<0.9989383220672607){
    if(i20<0.02689392678439617){
     s0+=199.0;
     s1+=243.0;
    } else {
     s0+=78.0;
     s1+=1587.0;
    }
   } else {
    if(i11<1.1223218441009521){
     s0+=32.0;
     s1+=2374.0;
    } else {
     s1+=6773.0;
    }
   }
  }
 }
}
if(i3<1.0024449825286865){
 if(i2<0.07770419120788574){
  if(i0<0.06928122043609619){
   if(i63<0.0002800928778015077){
    if(i68<0.037654418498277664){
     s0+=54716.0;
     s1+=280.0;
    } else {
     s0+=2331.0;
     s1+=294.0;
    }
   } else {
    if(i5<-0.0002879500389099121){
     s0+=8707.0;
     s1+=416.0;
    } else {
     s0+=1407.0;
     s1+=641.0;
    }
   }
  } else {
   if(i42<1.1423697471618652){
    if(i45<0.0002980810822919011){
     s0+=453.0;
     s1+=13.0;
    } else {
     s0+=252.0;
     s1+=497.0;
    }
   } else {
    if(i27<1.0162683725357056){
     s0+=7.0;
     s1+=34.0;
    } else {
     s0+=884.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i18<0.9980377554893494){
   if(i65<1.0011104345321655){
    s0+=461.0;
   } else {
    if(i9<0.9889153838157654){
     s1+=3.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i48<0.057492196559906006){
    if(i2<0.08679622411727905){
     s0+=86.0;
     s1+=335.0;
    } else {
     s0+=13.0;
     s1+=1824.0;
    }
   } else {
    if(i8<-1.3797138308291323e-05){
     s0+=548.0;
     s1+=1521.0;
    } else {
     s0+=669.0;
     s1+=137.0;
    }
   }
  }
 }
} else {
 if(i26<0.00018719921354204416){
  if(i27<1.0266828536987305){
   if(i10<0.0010600686073303223){
    if(i66<3.527474063957925e-06){
     s0+=62.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i44<0.0018039988353848457){
    s1+=16.0;
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i67<0.0004906399408355355){
   if(i1<0.08463335037231445){
    if(i35<1.2287709712982178){
     s0+=25.0;
     s1+=222.0;
    } else {
     s0+=135.0;
     s1+=39.0;
    }
   } else {
    if(i30<1.613681674003601){
     s0+=24.0;
     s1+=2154.0;
    } else {
     s0+=51.0;
     s1+=74.0;
    }
   }
  } else {
   if(i0<0.06999784708023071){
    if(i13<0.9971234798431396){
     s0+=42.0;
     s1+=86.0;
    } else {
     s1+=402.0;
    }
   } else {
    if(i4<5.716085433959961e-05){
     s0+=17.0;
     s1+=434.0;
    } else {
     s0+=4.0;
     s1+=7864.0;
    }
   }
  }
 }
}
if(i2<0.07645988464355469){
 if(i10<0.0005329251289367676){
  if(i60<-0.0020637810230255127){
   if(i13<0.9896975755691528){
    if(i4<2.2590160369873047e-05){
     s0+=3901.0;
     s1+=145.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=800.0;
     s1+=615.0;
    } else {
     s0+=1130.0;
     s1+=97.0;
    }
   }
  } else {
   if(i44<0.0002945290761999786){
    s0+=35457.0;
   } else {
    if(i34<0.0006616595201194286){
     s0+=7633.0;
     s1+=956.0;
    } else {
     s0+=19382.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i12<-0.0007991790771484375){
   if(i4<2.0802021026611328e-05){
    if(i7<1.1247797012329102){
     s0+=525.0;
     s1+=22.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i37<0.989662766456604){
     s0+=102.0;
     s1+=178.0;
    } else {
     s0+=125.0;
     s1+=12.0;
    }
   }
  } else {
   if(i15<9.85264778137207e-05){
    if(i3<1.0022132396697998){
     s0+=128.0;
     s1+=18.0;
    } else {
     s0+=32.0;
     s1+=235.0;
    }
   } else {
    if(i45<0.0002164094621548429){
     s0+=14.0;
    } else {
     s0+=8.0;
     s1+=639.0;
    }
   }
  }
 }
} else {
 if(i8<-1.4510976143355947e-05){
  if(i1<0.1059543788433075){
   if(i62<0.03034299612045288){
    if(i48<0.053741455078125){
     s0+=33.0;
     s1+=942.0;
    } else {
     s0+=160.0;
     s1+=124.0;
    }
   } else {
    if(i30<1.2371783256530762){
     s0+=19.0;
     s1+=94.0;
    } else {
     s0+=232.0;
     s1+=37.0;
    }
   }
  } else {
   if(i15<0.0001125335693359375){
    if(i67<0.0006663753883913159){
     s0+=235.0;
     s1+=1423.0;
    } else {
     s0+=33.0;
     s1+=2001.0;
    }
   } else {
    if(i18<0.9957562685012817){
     s0+=7.0;
    } else {
     s0+=20.0;
     s1+=8876.0;
    }
   }
  }
 } else {
  if(i55<0.9995771646499634){
   s0+=427.0;
  } else {
   if(i6<0.06475123763084412){
    if(i5<-0.0008718371391296387){
     s0+=4.0;
    } else {
     s1+=93.0;
    }
   } else {
    if(i61<-0.0009348690509796143){
     s0+=78.0;
     s1+=151.0;
    } else {
     s0+=691.0;
     s1+=183.0;
    }
   }
  }
 }
}
if(i14<1.627206802368164e-05){
 if(i37<1.0131394863128662){
  if(i24<1.0107691287994385){
   if(i26<0.00031714141368865967){
    if(i56<0.0008567798649892211){
     s0+=53198.0;
     s1+=208.0;
    } else {
     s0+=347.0;
     s1+=88.0;
    }
   } else {
    if(i0<0.0749150812625885){
     s0+=12335.0;
     s1+=1251.0;
    } else {
     s0+=469.0;
     s1+=1305.0;
    }
   }
  } else {
   if(i0<0.05297967791557312){
    if(i36<-1.1946110134886112e-05){
     s0+=26.0;
     s1+=20.0;
    } else {
     s0+=228.0;
     s1+=9.0;
    }
   } else {
    if(i73<7.666652663829154e-07){
     s0+=70.0;
     s1+=530.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<0.09165254235267639){
   if(i67<0.0005472577176988125){
    if(i12<0.0016574263572692871){
     s0+=1180.0;
     s1+=56.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i32<1.003021240234375){
     s0+=277.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=80.0;
    }
   }
  } else {
   if(i38<-0.0002537667751312256){
    if(i36<-1.1979408554907423e-05){
     s1+=30.0;
    } else {
     s0+=160.0;
    }
   } else {
    if(i41<0.008246111683547497){
     s0+=558.0;
     s1+=1203.0;
    } else {
     s0+=24.0;
     s1+=1203.0;
    }
   }
  }
 }
} else {
 if(i1<0.083028644323349){
  if(i50<-0.015160441398620605){
   if(i19<1.0021164417266846){
    if(i75<-0.00036475062370300293){
     s0+=46.0;
     s1+=91.0;
    } else {
     s0+=187.0;
     s1+=37.0;
    }
   } else {
    if(i5<0.0004635453224182129){
     s0+=83.0;
     s1+=28.0;
    } else {
     s0+=42.0;
     s1+=555.0;
    }
   }
  } else {
   if(i12<0.0006816387176513672){
    if(i10<0.0010459423065185547){
     s0+=1375.0;
     s1+=136.0;
    } else {
     s0+=80.0;
     s1+=48.0;
    }
   } else {
    if(i73<-4.943195108353393e-06){
     s0+=1.0;
     s1+=169.0;
    } else {
     s0+=73.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i9<1.0154021978378296){
   if(i60<0.002642393112182617){
    if(i5<0.0008499622344970703){
     s0+=70.0;
     s1+=436.0;
    } else {
     s0+=12.0;
     s1+=1654.0;
    }
   } else {
    if(i0<0.13737952709197998){
     s0+=235.0;
     s1+=132.0;
    } else {
     s0+=37.0;
     s1+=754.0;
    }
   }
  } else {
   if(i10<0.00044035911560058594){
    if(i0<0.1989104449748993){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   } else {
    if(i76<6.668162677669898e-05){
     s0+=7.0;
     s1+=476.0;
    } else {
     s1+=6506.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i4<4.166364669799805e-05){
  if(i39<1.0556960105895996){
   s0+=42999.0;
  } else {
   if(i5<0.00021642446517944336){
    if(i35<1.103413462638855){
     s0+=4770.0;
     s1+=1233.0;
    } else {
     s0+=19969.0;
     s1+=361.0;
    }
   } else {
    if(i36<-1.1315789379295893e-05){
     s0+=292.0;
     s1+=383.0;
    } else {
     s0+=631.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i38<0.00016418099403381348){
   if(i31<0.009936133399605751){
    if(i56<0.0004672675277106464){
     s0+=231.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=23.0;
    }
   } else {
    if(i65<0.997670590877533){
     s0+=26.0;
    } else {
     s0+=6.0;
     s1+=63.0;
    }
   }
  } else {
   if(i21<1.002963662147522){
    if(i37<1.0029640197753906){
     s0+=69.0;
     s1+=164.0;
    } else {
     s0+=51.0;
     s1+=5.0;
    }
   } else {
    if(i54<0.0005125556490384042){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=650.0;
    }
   }
  }
 }
} else {
 if(i21<1.0005266666412354){
  if(i36<1.720171894703526e-06){
   if(i52<0.004510343074798584){
    if(i17<1.0494358539581299){
     s0+=172.0;
     s1+=25.0;
    } else {
     s0+=281.0;
     s1+=2180.0;
    }
   } else {
    if(i20<0.03596916422247887){
     s0+=709.0;
     s1+=211.0;
    } else {
     s0+=105.0;
     s1+=986.0;
    }
   }
  } else {
   if(i38<-0.0001302957534790039){
    if(i40<8.354824967682362e-05){
     s0+=428.0;
    } else {
     s0+=58.0;
     s1+=1.0;
    }
   } else {
    if(i49<0.0012733644107356668){
     s0+=72.0;
    } else {
     s0+=12.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i8<-2.1035759345977567e-05){
   if(i13<1.0079333782196045){
    if(i2<0.12519383430480957){
     s0+=99.0;
     s1+=602.0;
    } else {
     s0+=28.0;
     s1+=1498.0;
    }
   } else {
    if(i8<-4.179455208941363e-05){
     s1+=8415.0;
    } else {
     s0+=6.0;
     s1+=44.0;
    }
   }
  } else {
   if(i67<0.0003247629210818559){
    if(i75<0.00018739700317382812){
     s0+=10.0;
     s1+=14.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i76<5.657454676111229e-05){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i0<0.08297458291053772){
 if(i19<1.0029066801071167){
  if(i53<0.007415416184812784){
   if(i7<1.0401476621627808){
    if(i39<1.0557184219360352){
     s0+=41273.0;
     s1+=1.0;
    } else {
     s0+=19312.0;
     s1+=760.0;
    }
   } else {
    if(i20<0.026634903624653816){
     s0+=4040.0;
     s1+=316.0;
    } else {
     s0+=321.0;
     s1+=177.0;
    }
   }
  } else {
   if(i21<0.9934215545654297){
    if(i67<0.0019050529226660728){
     s0+=1338.0;
     s1+=53.0;
    } else {
     s0+=21.0;
     s1+=22.0;
    }
   } else {
    if(i49<0.00029499270021915436){
     s0+=689.0;
    } else {
     s0+=1397.0;
     s1+=762.0;
    }
   }
  }
 } else {
  if(i4<3.165006637573242e-05){
   if(i41<0.004155305214226246){
    if(i57<0.9720914959907532){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=169.0;
     s1+=24.0;
    }
   } else {
    if(i73<-1.467903348384425e-05){
     s1+=11.0;
    } else {
     s0+=744.0;
     s1+=17.0;
    }
   }
  } else {
   if(i42<1.250410795211792){
    if(i76<0.00021089338406454772){
     s0+=3.0;
     s1+=542.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i50<-0.025225162506103516){
     s0+=36.0;
     s1+=242.0;
    } else {
     s0+=187.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00043773651123046875){
  if(i40<0.00017937980010174215){
   s0+=396.0;
  } else {
   if(i31<0.013013073243200779){
    s1+=10.0;
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i59<-0.00012035710096824914){
   if(i13<1.008693814277649){
    if(i51<0.016709566116333008){
     s0+=108.0;
     s1+=2766.0;
    } else {
     s0+=509.0;
     s1+=1527.0;
    }
   } else {
    if(i8<-2.311001662747003e-05){
     s0+=3.0;
     s1+=8417.0;
    } else {
     s0+=31.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.05714064836502075){
    if(i60<0.00798913836479187){
     s0+=18.0;
     s1+=944.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i73<-5.214358679950237e-06){
     s0+=154.0;
     s1+=319.0;
    } else {
     s0+=383.0;
     s1+=124.0;
    }
   }
  }
 }
}
if(i24<1.0107624530792236){
 if(i78<0.04972712695598602){
  if(i56<0.0015308354049921036){
   if(i3<1.0025017261505127){
    if(i63<-0.00011364278907421976){
     s0+=37.0;
     s1+=45.0;
    } else {
     s0+=57634.0;
     s1+=790.0;
    }
   } else {
    if(i63<-2.196506829932332e-05){
     s0+=60.0;
     s1+=19.0;
    } else {
     s0+=37.0;
     s1+=269.0;
    }
   }
  } else {
   if(i5<-0.00034314393997192383){
    if(i32<0.9853963851928711){
     s0+=133.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i4<-1.1920928955078125e-07){
     s0+=34.0;
     s1+=61.0;
    } else {
     s0+=8.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i2<0.07630655169487){
   if(i41<0.002142071258276701){
    if(i3<1.0007238388061523){
     s0+=3239.0;
     s1+=785.0;
    } else {
     s0+=86.0;
     s1+=417.0;
    }
   } else {
    if(i5<0.0002968311309814453){
     s0+=6996.0;
     s1+=173.0;
    } else {
     s0+=180.0;
     s1+=341.0;
    }
   }
  } else {
   if(i8<-6.460102667915635e-06){
    if(i47<0.046347737312316895){
     s0+=27.0;
     s1+=2398.0;
    } else {
     s0+=276.0;
     s1+=761.0;
    }
   } else {
    if(i34<0.0018564725760370493){
     s0+=453.0;
     s1+=79.0;
    } else {
     s0+=35.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i19<1.0028388500213623){
  if(i20<0.04611895605921745){
   if(i41<0.0020420821383595467){
    if(i4<9.98377799987793e-06){
     s0+=263.0;
     s1+=294.0;
    } else {
     s0+=66.0;
     s1+=743.0;
    }
   } else {
    if(i45<0.0014684859197586775){
     s0+=66.0;
     s1+=195.0;
    } else {
     s0+=1336.0;
     s1+=435.0;
    }
   }
  } else {
   if(i16<0.00534025439992547){
    if(i43<0.9987926483154297){
     s0+=37.0;
    } else {
     s0+=58.0;
     s1+=278.0;
    }
   } else {
    if(i11<1.1241296529769897){
     s0+=6.0;
     s1+=100.0;
    } else {
     s1+=980.0;
    }
   }
  }
 } else {
  if(i8<-4.23676501668524e-05){
   if(i59<-0.00010549796570558101){
    if(i40<9.48334054555744e-05){
     s1+=6320.0;
    } else {
     s0+=7.0;
     s1+=962.0;
    }
   } else {
    if(i3<1.0026262998580933){
     s0+=18.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=205.0;
    }
   }
  } else {
   if(i72<1.001906394958496){
    if(i75<-0.002781987190246582){
     s1+=4.0;
    } else {
     s0+=100.0;
     s1+=4.0;
    }
   } else {
    if(i17<1.0973331928253174){
     s0+=4.0;
     s1+=71.0;
    } else {
     s0+=29.0;
     s1+=28.0;
    }
   }
  }
 }
}
if(i12<0.0007606744766235352){
 if(i0<0.08223113417625427){
  if(i4<3.725290298461914e-05){
   if(i51<-0.006013303995132446){
    if(i17<1.0939319133758545){
     s0+=1276.0;
     s1+=468.0;
    } else {
     s0+=2328.0;
     s1+=219.0;
    }
   } else {
    if(i49<0.0002958110999315977){
     s0+=35382.0;
    } else {
     s0+=29508.0;
     s1+=1217.0;
    }
   }
  } else {
   if(i39<1.0577372312545776){
    s0+=292.0;
   } else {
    if(i50<0.010741472244262695){
     s0+=79.0;
     s1+=436.0;
    } else {
     s0+=98.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i8<-1.2759329365508165e-05){
   if(i18<0.9981886744499207){
    if(i63<0.000563085894100368){
     s0+=59.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i51<0.012884438037872314){
     s0+=116.0;
     s1+=2529.0;
    } else {
     s0+=502.0;
     s1+=1813.0;
    }
   }
  } else {
   if(i3<0.9959239959716797){
    if(i48<0.018715977668762207){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=388.0;
    }
   } else {
    if(i69<-0.003656465793028474){
     s0+=482.0;
     s1+=112.0;
    } else {
     s0+=111.0;
     s1+=238.0;
    }
   }
  }
 }
} else {
 if(i9<1.0089547634124756){
  if(i19<1.001872181892395){
   if(i29<1.0100226402282715){
    if(i53<0.010148846544325352){
     s0+=428.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i2<0.06676268577575684){
     s0+=18.0;
    } else {
     s0+=6.0;
     s1+=48.0;
    }
   }
  } else {
   if(i0<0.05112352967262268){
    if(i53<0.006441304460167885){
     s0+=38.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i8<-3.9800608647055924e-05){
     s1+=995.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i0<0.05930888652801514){
   if(i30<1.1386182308197021){
    s1+=114.0;
   } else {
    if(i3<1.0070178508758545){
     s0+=123.0;
     s1+=3.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i16<0.0025380640290677547){
    if(i8<-4.331023956183344e-05){
     s1+=352.0;
    } else {
     s0+=69.0;
     s1+=11.0;
    }
   } else {
    if(i46<0.0023771547712385654){
     s0+=2.0;
     s1+=38.0;
    } else {
     s0+=5.0;
     s1+=8192.0;
    }
   }
  }
 }
}
if(i8<-7.27633960195817e-05){
 if(i11<1.0407109260559082){
  if(i74<-1.7377293488607393e-06){
   if(i16<0.003171199467033148){
    s0+=13.0;
   } else {
    if(i28<0.004256148356944323){
     s1+=43.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i3<1.0004594326019287){
    if(i11<0.9644555449485779){
     s1+=4.0;
    } else {
     s0+=646.0;
     s1+=2.0;
    }
   } else {
    if(i78<0.257721483707428){
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<0.008290857076644897){
   if(i64<-0.004960685968399048){
    if(i38<6.848573684692383e-05){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=76.0;
    }
   } else {
    s0+=94.0;
   }
  } else {
   if(i65<1.0046048164367676){
    if(i15<1.1563301086425781e-05){
     s0+=196.0;
     s1+=1463.0;
    } else {
     s0+=14.0;
     s1+=9763.0;
    }
   } else {
    if(i25<1.0154587030410767){
     s0+=86.0;
     s1+=34.0;
    } else {
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i17<1.0526776313781738){
  if(i23<1.007489800453186){
   if(i60<-0.002239435911178589){
    if(i34<0.00034994230372831225){
     s0+=856.0;
    } else {
     s0+=850.0;
     s1+=262.0;
    }
   } else {
    if(i22<1.0112483501434326){
     s0+=55520.0;
     s1+=263.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  } else {
   if(i16<0.0009788465686142445){
    s0+=9.0;
   } else {
    if(i9<1.0051318407058716){
     s0+=2.0;
    } else {
     s1+=64.0;
    }
   }
  }
 } else {
  if(i7<1.0338592529296875){
   if(i34<0.0014396780170500278){
    if(i9<0.9897884130477905){
     s0+=100.0;
     s1+=285.0;
    } else {
     s0+=2113.0;
     s1+=347.0;
    }
   } else {
    if(i1<0.07906240224838257){
     s0+=3812.0;
     s1+=78.0;
    } else {
     s0+=30.0;
     s1+=86.0;
    }
   }
  } else {
   if(i2<0.07771864533424377){
    if(i12<0.0010320544242858887){
     s0+=5183.0;
     s1+=1116.0;
    } else {
     s0+=125.0;
     s1+=276.0;
    }
   } else {
    if(i62<0.03697079420089722){
     s0+=532.0;
     s1+=2286.0;
    } else {
     s0+=919.0;
     s1+=578.0;
    }
   }
  }
 }
}
if(i10<0.0004399418830871582){
 if(i0<0.08223113417625427){
  if(i28<0.00029881371301598847){
   if(i22<1.0076136589050293){
    if(i68<0.019365476444363594){
     s0+=49827.0;
     s1+=154.0;
    } else {
     s0+=5914.0;
     s1+=271.0;
    }
   } else {
    if(i39<1.0738153457641602){
     s0+=36.0;
     s1+=124.0;
    } else {
     s0+=566.0;
     s1+=28.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i8<-1.3378581570577808e-05){
     s0+=136.0;
     s1+=554.0;
    } else {
     s0+=2956.0;
     s1+=460.0;
    }
   } else {
    if(i15<0.00029015541076660156){
     s0+=8608.0;
     s1+=292.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i3<0.9963330030441284){
   if(i40<0.00020263234910089523){
    if(i7<1.3906927108764648){
     s0+=469.0;
     s1+=9.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i11<1.0399601459503174){
     s0+=16.0;
    } else {
     s0+=13.0;
     s1+=143.0;
    }
   }
  } else {
   if(i16<0.0016418937593698502){
    if(i49<0.0034956960007548332){
     s0+=509.0;
     s1+=175.0;
    } else {
     s0+=17.0;
     s1+=78.0;
    }
   } else {
    if(i52<0.004772663116455078){
     s0+=99.0;
     s1+=2606.0;
    } else {
     s0+=281.0;
     s1+=1032.0;
    }
   }
  }
 }
} else {
 if(i0<0.07250747084617615){
  if(i53<0.009624982252717018){
   if(i41<0.0015215936582535505){
    if(i8<-3.6173856642562896e-05){
     s0+=18.0;
     s1+=211.0;
    } else {
     s0+=329.0;
     s1+=50.0;
    }
   } else {
    if(i14<3.415346145629883e-05){
     s0+=763.0;
     s1+=3.0;
    } else {
     s0+=187.0;
     s1+=46.0;
    }
   }
  } else {
   if(i15<-0.00037491321563720703){
    if(i67<0.0017295260913670063){
     s0+=49.0;
    } else {
     s0+=8.0;
     s1+=40.0;
    }
   } else {
    if(i22<1.014883041381836){
     s0+=29.0;
     s1+=416.0;
    } else {
     s0+=19.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i17<1.0659785270690918){
   if(i66<1.0192632544203661e-05){
    if(i43<1.0003507137298584){
     s0+=4.0;
    } else {
     s1+=136.0;
    }
   } else {
    s0+=90.0;
   }
  } else {
   if(i21<1.0011863708496094){
    if(i1<0.132572740316391){
     s0+=217.0;
     s1+=248.0;
    } else {
     s0+=39.0;
     s1+=1038.0;
    }
   } else {
    if(i15<3.743171691894531e-05){
     s0+=38.0;
     s1+=743.0;
    } else {
     s0+=1.0;
     s1+=8129.0;
    }
   }
  }
 }
}
if(i6<0.07199159264564514){
 if(i9<1.0080137252807617){
  if(i58<0.002025740686804056){
   if(i22<1.006680965423584){
    if(i2<0.08023625612258911){
     s0+=62154.0;
     s1+=924.0;
    } else {
     s0+=52.0;
     s1+=237.0;
    }
   } else {
    if(i45<0.0013244731817394495){
     s0+=728.0;
     s1+=355.0;
    } else {
     s0+=641.0;
     s1+=33.0;
    }
   }
  } else {
   if(i19<1.0006499290466309){
    if(i38<-3.802776336669922e-05){
     s0+=2107.0;
     s1+=116.0;
    } else {
     s0+=1665.0;
     s1+=501.0;
    }
   } else {
    if(i77<-0.004439264535903931){
     s0+=551.0;
     s1+=124.0;
    } else {
     s0+=178.0;
     s1+=520.0;
    }
   }
  }
 } else {
  if(i8<-4.2177631257800385e-05){
   if(i69<-0.003904632292687893){
    if(i0<0.08162736892700195){
     s0+=24.0;
     s1+=5.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i1<0.061208575963974){
     s0+=43.0;
     s1+=237.0;
    } else {
     s0+=9.0;
     s1+=1411.0;
    }
   }
  } else {
   if(i42<1.1039612293243408){
    if(i36<-2.3913755740068154e-06){
     s0+=5.0;
     s1+=174.0;
    } else {
     s0+=47.0;
     s1+=10.0;
    }
   } else {
    if(i31<0.022798743098974228){
     s0+=712.0;
     s1+=8.0;
    } else {
     s0+=56.0;
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i49<0.005521601997315884){
  if(i16<0.00468787644058466){
   if(i43<0.9993025064468384){
    if(i18<0.9980449676513672){
     s0+=365.0;
    } else {
     s0+=38.0;
     s1+=25.0;
    }
   } else {
    if(i71<-0.01935393735766411){
     s0+=713.0;
     s1+=230.0;
    } else {
     s0+=457.0;
     s1+=1182.0;
    }
   }
  } else {
   if(i35<1.282500147819519){
    if(i23<0.9949250221252441){
     s0+=67.0;
     s1+=164.0;
    } else {
     s0+=14.0;
     s1+=1364.0;
    }
   } else {
    if(i54<0.004718228243291378){
     s0+=101.0;
     s1+=11.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i1<0.11499044299125671){
   if(i37<0.999498724937439){
    if(i51<0.012285798788070679){
     s0+=10.0;
     s1+=273.0;
    } else {
     s0+=13.0;
     s1+=3.0;
    }
   } else {
    if(i10<0.001229405403137207){
     s0+=165.0;
     s1+=9.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i16<0.002309950767084956){
    if(i21<1.0214959383010864){
     s0+=21.0;
     s1+=8.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i13<1.0071017742156982){
     s0+=46.0;
     s1+=2287.0;
    } else {
     s1+=6909.0;
    }
   }
  }
 }
}
if(i21<1.004011631011963){
 if(i1<0.08481338620185852){
  if(i64<-0.0024620890617370605){
   if(i3<1.001395583152771){
    if(i43<0.9993606805801392){
     s0+=916.0;
     s1+=19.0;
    } else {
     s0+=1379.0;
     s1+=474.0;
    }
   } else {
    if(i61<0.002871215343475342){
     s0+=23.0;
     s1+=162.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i41<0.00035010592546314){
    if(i22<1.0088058710098267){
     s0+=39273.0;
     s1+=37.0;
    } else {
     s0+=40.0;
     s1+=18.0;
    }
   } else {
    if(i5<0.00024324655532836914){
     s0+=26382.0;
     s1+=1262.0;
    } else {
     s0+=556.0;
     s1+=356.0;
    }
   }
  }
 } else {
  if(i14<-1.576542854309082e-05){
   if(i18<0.9988174438476562){
    if(i35<1.498544454574585){
     s0+=573.0;
    } else {
     s0+=43.0;
     s1+=10.0;
    }
   } else {
    if(i11<1.0966368913650513){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i62<0.027889132499694824){
    if(i16<0.0017464719712734222){
     s0+=171.0;
     s1+=124.0;
    } else {
     s0+=151.0;
     s1+=3254.0;
    }
   } else {
    if(i0<0.17737868428230286){
     s0+=798.0;
     s1+=493.0;
    } else {
     s0+=132.0;
     s1+=1016.0;
    }
   }
  }
 }
} else {
 if(i0<0.058464497327804565){
  if(i73<-4.527991222857963e-06){
   if(i3<1.001399040222168){
    if(i18<1.0011463165283203){
     s0+=24.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<-1.4109535186435096e-05){
     s0+=10.0;
     s1+=302.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   }
  } else {
   if(i20<0.04196775704622269){
    if(i30<1.1386182308197021){
     s0+=9.0;
     s1+=12.0;
    } else {
     s0+=479.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i13<1.0096498727798462){
   if(i8<-4.32599445048254e-05){
    if(i36<-3.893738266924629e-06){
     s0+=35.0;
     s1+=1608.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    if(i54<0.0010578117799013853){
     s0+=96.0;
     s1+=10.0;
    } else {
     s0+=12.0;
     s1+=99.0;
    }
   }
  } else {
   if(i28<0.00010120518709300086){
    s0+=2.0;
   } else {
    if(i0<0.06268501281738281){
     s0+=1.0;
     s1+=31.0;
    } else {
     s1+=7764.0;
    }
   }
  }
 }
}
if(i5<0.0005473494529724121){
 if(i1<0.08417624235153198){
  if(i58<0.0015205873642116785){
   if(i9<1.0068104267120361){
    if(i20<0.016620181500911713){
     s0+=55101.0;
     s1+=268.0;
    } else {
     s0+=6421.0;
     s1+=532.0;
    }
   } else {
    if(i42<1.1063789129257202){
     s0+=145.0;
     s1+=189.0;
    } else {
     s0+=564.0;
     s1+=15.0;
    }
   }
  } else {
   if(i1<0.0576225221157074){
    if(i35<1.1037919521331787){
     s0+=1646.0;
     s1+=501.0;
    } else {
     s0+=4363.0;
     s1+=246.0;
    }
   } else {
    if(i37<0.9799792170524597){
     s0+=66.0;
     s1+=191.0;
    } else {
     s0+=429.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i35<1.0670123100280762){
   if(i10<0.00011682510375976562){
    s0+=307.0;
   } else {
    if(i77<0.00022864341735839844){
     s0+=5.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i10<-0.00039207935333251953){
    if(i66<4.444957448868081e-05){
     s0+=392.0;
     s1+=4.0;
    } else {
     s0+=31.0;
     s1+=14.0;
    }
   } else {
    if(i20<0.027891989797353745){
     s0+=922.0;
     s1+=1265.0;
    } else {
     s0+=211.0;
     s1+=2188.0;
    }
   }
  }
 }
} else {
 if(i3<0.9997875094413757){
  s0+=158.0;
 } else {
  if(i31<0.018158484250307083){
   if(i0<0.06268706917762756){
    if(i50<-0.0178280770778656){
     s0+=44.0;
     s1+=280.0;
    } else {
     s0+=203.0;
     s1+=79.0;
    }
   } else {
    if(i15<5.364418029785156e-07){
     s0+=100.0;
     s1+=141.0;
    } else {
     s0+=65.0;
     s1+=1862.0;
    }
   }
  } else {
   if(i3<1.0013678073883057){
    if(i11<1.0893856287002563){
     s0+=20.0;
     s1+=11.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i2<0.02902132272720337){
     s0+=11.0;
     s1+=51.0;
    } else {
     s0+=15.0;
     s1+=9006.0;
    }
   }
  }
 }
}
if(i13<1.0059266090393066){
 if(i8<-5.666878496413119e-05){
  if(i3<0.999535083770752){
   if(i27<1.0646671056747437){
    if(i9<1.0081197023391724){
     s0+=1382.0;
     s1+=130.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i1<0.06936556100845337){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=221.0;
    }
   }
  } else {
   if(i65<1.004268765449524){
    if(i20<0.026370879262685776){
     s0+=252.0;
     s1+=377.0;
    } else {
     s0+=83.0;
     s1+=2196.0;
    }
   } else {
    if(i11<1.0897595882415771){
     s0+=103.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i11<1.0450963973999023){
   if(i39<1.0557184219360352){
    s0+=42224.0;
   } else {
    if(i41<0.0015422636643052101){
     s0+=7324.0;
     s1+=961.0;
    } else {
     s0+=11489.0;
     s1+=68.0;
    }
   }
  } else {
   if(i2<0.07234609127044678){
    if(i44<0.0011287308298051357){
     s0+=2099.0;
     s1+=737.0;
    } else {
     s0+=4030.0;
     s1+=222.0;
    }
   } else {
    if(i52<0.0044648051261901855){
     s0+=559.0;
     s1+=1420.0;
    } else {
     s0+=904.0;
     s1+=459.0;
    }
   }
  }
 }
} else {
 if(i1<0.06573218107223511){
  if(i39<1.133395791053772){
   if(i19<0.9999239444732666){
    if(i4<1.2069940567016602e-05){
     s0+=7.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i36<-8.142681508616079e-06){
     s1+=236.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i60<-0.004729032516479492){
    if(i34<0.0024222522042691708){
     s0+=3.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i29<0.9942194223403931){
     s0+=8.0;
     s1+=11.0;
    } else {
     s0+=507.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i9<1.0237452983856201){
   if(i12<0.0007567405700683594){
    if(i35<1.1773569583892822){
     s1+=158.0;
    } else {
     s0+=185.0;
     s1+=194.0;
    }
   } else {
    if(i38<0.00013646483421325684){
     s0+=67.0;
     s1+=903.0;
    } else {
     s0+=3.0;
     s1+=1748.0;
    }
   }
  } else {
   s1+=6843.0;
  }
 }
}
if(i21<1.0037946701049805){
 if(i11<1.0452215671539307){
  if(i6<0.07588446140289307){
   if(i1<0.07985138893127441){
    if(i61<-0.0010924041271209717){
     s0+=4803.0;
     s1+=516.0;
    } else {
     s0+=56327.0;
     s1+=261.0;
    }
   } else {
    if(i2<0.08294156193733215){
     s0+=443.0;
     s1+=67.0;
    } else {
     s0+=68.0;
     s1+=89.0;
    }
   }
  } else {
   if(i39<1.0595405101776123){
    s0+=86.0;
   } else {
    if(i45<0.002645566128194332){
     s0+=36.0;
     s1+=121.0;
    } else {
     s0+=50.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i0<0.0777212381362915){
   if(i61<-0.0004963874816894531){
    if(i64<0.0020790696144104004){
     s0+=1548.0;
     s1+=655.0;
    } else {
     s0+=496.0;
     s1+=10.0;
    }
   } else {
    if(i20<0.022412361577153206){
     s0+=4474.0;
     s1+=230.0;
    } else {
     s0+=535.0;
     s1+=300.0;
    }
   }
  } else {
   if(i62<0.0312613844871521){
    if(i10<-0.0004928410053253174){
     s0+=100.0;
     s1+=2.0;
    } else {
     s0+=393.0;
     s1+=3453.0;
    }
   } else {
    if(i44<0.005951521918177605){
     s0+=966.0;
     s1+=480.0;
    } else {
     s0+=92.0;
     s1+=754.0;
    }
   }
  }
 }
} else {
 if(i20<0.01712416484951973){
  if(i16<0.0013297493569552898){
   if(i12<0.0018399953842163086){
    s0+=441.0;
   } else {
    s1+=44.0;
   }
  } else {
   if(i43<0.9991563558578491){
    s0+=64.0;
   } else {
    if(i11<1.0385336875915527){
     s0+=51.0;
     s1+=13.0;
    } else {
     s0+=93.0;
     s1+=1682.0;
    }
   }
  }
 } else {
  if(i67<0.00018856441602110863){
   if(i0<0.06411224603652954){
    if(i66<-7.555377578682965e-06){
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i66<-4.503221134655178e-06){
     s1+=191.0;
    } else {
     s0+=10.0;
     s1+=15.0;
    }
   }
  } else {
   if(i28<0.00013255915837362409){
    if(i3<1.0051138401031494){
     s0+=22.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i16<0.0025713795330375433){
     s0+=52.0;
     s1+=132.0;
    } else {
     s0+=21.0;
     s1+=7997.0;
    }
   }
  }
 }
}
if(i57<1.0101311206817627){
 if(i5<0.0006014704704284668){
  if(i20<0.0219869464635849){
   if(i56<0.0007865987136028707){
    if(i22<1.006974458694458){
     s0+=56938.0;
     s1+=385.0;
    } else {
     s0+=531.0;
     s1+=196.0;
    }
   } else {
    if(i45<0.0017010685987770557){
     s0+=1359.0;
     s1+=592.0;
    } else {
     s0+=2900.0;
     s1+=272.0;
    }
   }
  } else {
   if(i12<-0.0016286373138427734){
    if(i1<0.09867805242538452){
     s0+=4982.0;
     s1+=113.0;
    } else {
     s0+=127.0;
     s1+=303.0;
    }
   } else {
    if(i44<0.0005080306436866522){
     s0+=411.0;
     s1+=46.0;
    } else {
     s0+=759.0;
     s1+=1620.0;
    }
   }
  }
 } else {
  if(i43<0.9992729425430298){
   if(i45<0.02068726345896721){
    s0+=63.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i19<1.005479335784912){
    if(i26<0.00019792502280324697){
     s0+=40.0;
     s1+=5.0;
    } else {
     s0+=102.0;
     s1+=846.0;
    }
   } else {
    if(i59<-0.00010063513764180243){
     s0+=4.0;
     s1+=1248.0;
    } else {
     s0+=36.0;
     s1+=650.0;
    }
   }
  }
 }
} else {
 if(i4<3.343820571899414e-05){
  if(i8<-3.258573269704357e-05){
   if(i2<0.07222914695739746){
    if(i35<1.10590398311615){
     s1+=134.0;
    } else {
     s0+=262.0;
     s1+=39.0;
    }
   } else {
    if(i31<0.007655291818082333){
     s0+=54.0;
     s1+=90.0;
    } else {
     s0+=85.0;
     s1+=1216.0;
    }
   }
  } else {
   if(i56<-0.00046793418005108833){
    if(i38<-0.00012993812561035156){
     s0+=75.0;
    } else {
     s0+=143.0;
     s1+=182.0;
    }
   } else {
    if(i61<0.003544926643371582){
     s0+=836.0;
     s1+=187.0;
    } else {
     s0+=1133.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i15<6.258487701416016e-06){
   if(i2<0.15743058919906616){
    if(i38<0.0003134310245513916){
     s0+=116.0;
     s1+=27.0;
    } else {
     s0+=15.0;
     s1+=51.0;
    }
   } else {
    if(i5<0.000521540641784668){
     s0+=11.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=394.0;
    }
   }
  } else {
   if(i13<1.0096640586853027){
    if(i1<0.07284978032112122){
     s0+=69.0;
     s1+=46.0;
    } else {
     s0+=30.0;
     s1+=803.0;
    }
   } else {
    if(i15<6.16908073425293e-05){
     s0+=2.0;
     s1+=44.0;
    } else {
     s0+=1.0;
     s1+=7587.0;
    }
   }
  }
 }
}
if(i0<0.0792880654335022){
 if(i10<0.0006085336208343506){
  if(i39<1.0557184219360352){
   s0+=42894.0;
  } else {
   if(i35<1.103413462638855){
    if(i63<0.00020696467254310846){
     s0+=4240.0;
     s1+=729.0;
    } else {
     s0+=535.0;
     s1+=862.0;
    }
   } else {
    if(i51<-0.010803252458572388){
     s0+=1892.0;
     s1+=219.0;
    } else {
     s0+=18795.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i40<6.597507308470085e-05){
   if(i19<1.001678705215454){
    if(i73<-5.45058173884172e-06){
     s0+=45.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=445.0;
   }
  } else {
   if(i17<1.1264069080352783){
    if(i8<-0.00014407248818315566){
     s1+=7.0;
    } else {
     s0+=525.0;
     s1+=107.0;
    }
   } else {
    if(i4<1.8835067749023438e-05){
     s0+=58.0;
     s1+=18.0;
    } else {
     s0+=55.0;
     s1+=228.0;
    }
   }
  }
 }
} else {
 if(i4<7.450580596923828e-06){
  if(i18<0.9980583190917969){
   if(i66<4.434135553310625e-05){
    s0+=474.0;
   } else {
    if(i25<0.98814457654953){
     s1+=7.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i52<0.004222750663757324){
    if(i16<0.001682695234194398){
     s0+=204.0;
     s1+=114.0;
    } else {
     s0+=81.0;
     s1+=1259.0;
    }
   } else {
    if(i1<0.13356256484985352){
     s0+=440.0;
     s1+=39.0;
    } else {
     s0+=218.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i3<1.00185227394104){
   if(i43<1.000316858291626){
    if(i5<7.259845733642578e-05){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=67.0;
     s1+=1035.0;
    }
   } else {
    if(i48<0.05454203486442566){
     s0+=7.0;
     s1+=271.0;
    } else {
     s0+=318.0;
     s1+=228.0;
    }
   }
  } else {
   if(i41<0.00029374827863648534){
    s0+=3.0;
   } else {
    if(i4<5.429983139038086e-05){
     s0+=79.0;
     s1+=1069.0;
    } else {
     s0+=55.0;
     s1+=9899.0;
    }
   }
  }
 }
}
if(i6<0.07047033309936523){
 if(i10<0.0006352066993713379){
  if(i23<1.0067834854125977){
   if(i11<1.0450963973999023){
    if(i0<0.08296343684196472){
     s0+=61505.0;
     s1+=711.0;
    } else {
     s0+=48.0;
     s1+=99.0;
    }
   } else {
    if(i19<1.00053071975708){
     s0+=4742.0;
     s1+=715.0;
    } else {
     s0+=690.0;
     s1+=497.0;
    }
   }
  } else {
   if(i42<1.1657817363739014){
    if(i9<1.0079163312911987){
     s0+=189.0;
     s1+=111.0;
    } else {
     s0+=32.0;
     s1+=510.0;
    }
   } else {
    if(i13<1.0143465995788574){
     s0+=1272.0;
     s1+=117.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i65<1.0016781091690063){
   if(i5<0.0007335543632507324){
    if(i53<0.008286969736218452){
     s0+=130.0;
     s1+=44.0;
    } else {
     s0+=11.0;
     s1+=55.0;
    }
   } else {
    if(i1<0.0483134388923645){
     s0+=28.0;
     s1+=172.0;
    } else {
     s0+=18.0;
     s1+=1232.0;
    }
   }
  } else {
   if(i15<9.5367431640625e-07){
    if(i34<0.00750376470386982){
     s0+=93.0;
     s1+=62.0;
    } else {
     s0+=299.0;
     s1+=26.0;
    }
   } else {
    if(i6<0.03277280926704407){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=62.0;
    }
   }
  }
 }
} else {
 if(i18<0.9988330602645874){
  if(i54<0.0034343621227890253){
   if(i55<0.9996256828308105){
    if(i73<-3.1834754281589994e-06){
     s0+=27.0;
     s1+=15.0;
    } else {
     s0+=434.0;
     s1+=3.0;
    }
   } else {
    if(i17<1.0685780048370361){
     s0+=102.0;
     s1+=2.0;
    } else {
     s0+=54.0;
     s1+=38.0;
    }
   }
  } else {
   if(i66<6.294243212323636e-05){
    s1+=10.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i67<0.00019401745521463454){
   if(i66<-1.791476506696199e-06){
    if(i50<0.10788083076477051){
     s1+=257.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   } else {
    if(i16<0.0016116161132231355){
     s0+=515.0;
     s1+=129.0;
    } else {
     s0+=86.0;
     s1+=263.0;
    }
   }
  } else {
   if(i12<0.00023859739303588867){
    if(i20<0.021917831152677536){
     s0+=557.0;
     s1+=371.0;
    } else {
     s0+=275.0;
     s1+=2570.0;
    }
   } else {
    if(i34<0.0018865549936890602){
     s0+=78.0;
     s1+=823.0;
    } else {
     s0+=25.0;
     s1+=8063.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i51<-0.006162106990814209){
  if(i36<-1.4003550859342795e-05){
   if(i1<0.016145825386047363){
    if(i74<-2.3694483388680965e-06){
     s0+=19.0;
     s1+=48.0;
    } else {
     s0+=680.0;
     s1+=20.0;
    }
   } else {
    if(i19<0.9994955658912659){
     s0+=79.0;
     s1+=59.0;
    } else {
     s0+=35.0;
     s1+=613.0;
    }
   }
  } else {
   if(i28<0.0024205991066992283){
    if(i55<0.999843955039978){
     s0+=427.0;
     s1+=473.0;
    } else {
     s0+=1255.0;
     s1+=78.0;
    }
   } else {
    if(i74<-5.873507689102553e-07){
     s0+=15.0;
     s1+=13.0;
    } else {
     s0+=1310.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i3<1.0024821758270264){
   if(i17<1.0475225448608398){
    if(i60<-0.002239435911178589){
     s0+=1016.0;
     s1+=124.0;
    } else {
     s0+=53587.0;
     s1+=110.0;
    }
   } else {
    if(i30<1.1013743877410889){
     s0+=2585.0;
     s1+=893.0;
    } else {
     s0+=8194.0;
     s1+=200.0;
    }
   }
  } else {
   if(i36<-1.4372940313478466e-05){
    if(i60<0.006556600332260132){
     s0+=42.0;
     s1+=540.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i10<0.0006071329116821289){
     s0+=152.0;
     s1+=8.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i16<0.004998234566301107){
  if(i52<0.004605501890182495){
   if(i74<6.700613994325977e-06){
    if(i3<0.9968036413192749){
     s0+=138.0;
     s1+=22.0;
    } else {
     s0+=303.0;
     s1+=2097.0;
    }
   } else {
    if(i3<0.9960532188415527){
     s0+=174.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=14.0;
    }
   }
  } else {
   if(i3<1.003912091255188){
    if(i44<0.005325671285390854){
     s0+=791.0;
     s1+=153.0;
    } else {
     s0+=146.0;
     s1+=142.0;
    }
   } else {
    if(i26<0.0018641476053744555){
     s1+=78.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i34<0.0004559106600936502){
   s0+=16.0;
  } else {
   if(i14<-1.8835067749023438e-05){
    s0+=60.0;
   } else {
    if(i17<1.0640453100204468){
     s0+=69.0;
     s1+=134.0;
    } else {
     s0+=124.0;
     s1+=11073.0;
    }
   }
  }
 }
}
if(i8<-7.941530202515423e-05){
 if(i21<0.9972180128097534){
  if(i0<0.0852365791797638){
   if(i64<-0.007116824388504028){
    if(i70<0.061196524649858475){
     s0+=8.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i67<0.0019694697111845016){
     s0+=647.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   }
  } else {
   if(i20<0.010653377510607243){
    if(i68<0.1707431674003601){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i55<1.0006979703903198){
     s0+=11.0;
     s1+=724.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i40<0.00012195776798762381){
   if(i65<1.00230073928833){
    if(i21<1.0046522617340088){
     s0+=1.0;
     s1+=897.0;
    } else {
     s1+=7651.0;
    }
   } else {
    if(i67<0.0004216998931951821){
     s0+=11.0;
    } else {
     s1+=233.0;
    }
   }
  } else {
   if(i16<0.01256508193910122){
    if(i77<-0.004027187824249268){
     s0+=70.0;
     s1+=3.0;
    } else {
     s0+=64.0;
     s1+=196.0;
    }
   } else {
    if(i63<0.005002529826015234){
     s0+=19.0;
     s1+=1221.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i0<0.07749462127685547){
  if(i3<1.0024782419204712){
   if(i17<1.0467959642410278){
    if(i78<0.046647343784570694){
     s0+=49972.0;
     s1+=98.0;
    } else {
     s0+=4508.0;
     s1+=158.0;
    }
   } else {
    if(i5<0.0002067089080810547){
     s0+=12757.0;
     s1+=1160.0;
    } else {
     s0+=800.0;
     s1+=358.0;
    }
   }
  } else {
   if(i5<0.0009386539459228516){
    if(i39<1.125725507736206){
     s0+=2.0;
     s1+=190.0;
    } else {
     s0+=197.0;
     s1+=5.0;
    }
   } else {
    if(i30<1.4786540269851685){
     s1+=212.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<-0.0007873475551605225){
   if(i8<-1.8021406503976323e-05){
    if(i11<1.0710697174072266){
     s0+=61.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=61.0;
    }
   } else {
    if(i18<0.99846351146698){
     s0+=408.0;
    } else {
     s0+=79.0;
     s1+=24.0;
    }
   }
  } else {
   if(i29<1.028181791305542){
    if(i33<0.05774211883544922){
     s0+=34.0;
     s1+=1597.0;
    } else {
     s0+=521.0;
     s1+=1296.0;
    }
   } else {
    if(i2<0.12603619694709778){
     s0+=578.0;
     s1+=185.0;
    } else {
     s0+=298.0;
     s1+=779.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i50<-0.02868291735649109){
  if(i19<1.0007712841033936){
   if(i6<0.03309270739555359){
    if(i2<0.034357428550720215){
     s0+=1964.0;
     s1+=221.0;
    } else {
     s0+=25.0;
     s1+=56.0;
    }
   } else {
    if(i45<0.002435308415442705){
     s0+=40.0;
     s1+=153.0;
    } else {
     s0+=134.0;
     s1+=51.0;
    }
   }
  } else {
   if(i4<3.248453140258789e-05){
    if(i25<0.9466592073440552){
     s0+=132.0;
     s1+=22.0;
    } else {
     s0+=89.0;
     s1+=147.0;
    }
   } else {
    if(i52<0.0006757378578186035){
     s0+=17.0;
     s1+=497.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<0.0014478564262390137){
   if(i10<0.0004476308822631836){
    if(i45<0.0003059811133425683){
     s0+=46485.0;
     s1+=119.0;
    } else {
     s0+=19057.0;
     s1+=1387.0;
    }
   } else {
    if(i3<1.0021235942840576){
     s0+=1074.0;
     s1+=55.0;
    } else {
     s0+=168.0;
     s1+=329.0;
    }
   }
  } else {
   if(i10<0.00039196014404296875){
    if(i0<0.06934362649917603){
     s0+=16.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=200.0;
   }
  }
 }
} else {
 if(i49<0.006008944474160671){
  if(i12<0.00023499131202697754){
   if(i18<0.9985270500183105){
    if(i10<-0.00041115283966064453){
     s0+=560.0;
    } else {
     s0+=34.0;
     s1+=4.0;
    }
   } else {
    if(i37<1.028960108757019){
     s0+=354.0;
     s1+=1485.0;
    } else {
     s0+=551.0;
     s1+=356.0;
    }
   }
  } else {
   if(i11<1.2540408372879028){
    if(i3<0.9986109733581543){
     s0+=13.0;
    } else {
     s0+=80.0;
     s1+=2515.0;
    }
   } else {
    if(i72<1.0004088878631592){
     s0+=64.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   }
  }
 } else {
  if(i3<0.9939409494400024){
   if(i28<0.008706940338015556){
    if(i63<0.0006852586520835757){
     s0+=44.0;
    } else {
     s0+=27.0;
     s1+=18.0;
    }
   } else {
    s1+=35.0;
   }
  } else {
   if(i65<1.002255916595459){
    if(i0<0.08181107044219971){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=50.0;
     s1+=9120.0;
    }
   } else {
    if(i0<0.1292797327041626){
     s0+=79.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=344.0;
    }
   }
  }
 }
}
if(i10<0.0004324615001678467){
 if(i24<1.0107619762420654){
  if(i75<-0.0012580156326293945){
   if(i1<0.08173677325248718){
    if(i5<-0.00027889013290405273){
     s0+=8503.0;
     s1+=308.0;
    } else {
     s0+=1027.0;
     s1+=576.0;
    }
   } else {
    if(i76<0.00029161141719669104){
     s0+=377.0;
     s1+=933.0;
    } else {
     s0+=186.0;
     s1+=5.0;
    }
   }
  } else {
   if(i78<0.05767250806093216){
    if(i57<1.008139967918396){
     s0+=54351.0;
     s1+=462.0;
    } else {
     s0+=837.0;
     s1+=249.0;
    }
   } else {
    if(i49<0.00029905198607593775){
     s0+=862.0;
    } else {
     s0+=1504.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i6<0.1691131889820099){
   if(i35<1.1987574100494385){
    if(i1<0.07841211557388306){
     s0+=410.0;
     s1+=198.0;
    } else {
     s0+=178.0;
     s1+=1062.0;
    }
   } else {
    if(i54<0.0019461126066744328){
     s0+=906.0;
     s1+=23.0;
    } else {
     s0+=34.0;
     s1+=105.0;
    }
   }
  } else {
   if(i67<0.00019169352890457958){
    if(i44<0.0032556336373090744){
     s0+=63.0;
    } else {
     s0+=14.0;
     s1+=59.0;
    }
   } else {
    if(i36<3.0743367460672744e-06){
     s0+=19.0;
     s1+=1190.0;
    } else {
     s0+=38.0;
    }
   }
  }
 }
} else {
 if(i18<1.0025694370269775){
  if(i1<0.0971280038356781){
   if(i3<1.0018385648727417){
    if(i27<0.9928461313247681){
     s0+=83.0;
     s1+=72.0;
    } else {
     s0+=1096.0;
     s1+=109.0;
    }
   } else {
    if(i44<0.0016676746308803558){
     s0+=11.0;
     s1+=394.0;
    } else {
     s0+=138.0;
     s1+=59.0;
    }
   }
  } else {
   if(i15<-1.3649463653564453e-05){
    if(i20<0.02764194831252098){
     s0+=114.0;
     s1+=96.0;
    } else {
     s0+=24.0;
     s1+=421.0;
    }
   } else {
    s1+=1637.0;
   }
  }
 } else {
  if(i0<0.06486093997955322){
   if(i4<6.842613220214844e-05){
    if(i53<0.01952114701271057){
     s0+=215.0;
     s1+=39.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   } else {
    if(i34<0.010652173310518265){
     s0+=10.0;
     s1+=255.0;
    } else {
     s0+=24.0;
     s1+=11.0;
    }
   }
  } else {
   if(i12<-0.00398629903793335){
    if(i46<0.2359110563993454){
     s0+=34.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i15<-0.00012487173080444336){
     s0+=86.0;
     s1+=485.0;
    } else {
     s0+=23.0;
     s1+=7637.0;
    }
   }
  }
 }
}
if(i37<1.0135784149169922){
 if(i0<0.0756051242351532){
  if(i21<1.0041353702545166){
   if(i60<-0.0022295713424682617){
    if(i4<-1.7017126083374023e-05){
     s0+=4253.0;
     s1+=314.0;
    } else {
     s0+=1410.0;
     s1+=739.0;
    }
   } else {
    if(i53<0.008132858201861382){
     s0+=60057.0;
     s1+=616.0;
    } else {
     s0+=1193.0;
     s1+=294.0;
    }
   }
  } else {
   if(i38<0.00014203786849975586){
    if(i50<-0.03244525194168091){
     s0+=12.0;
     s1+=41.0;
    } else {
     s0+=406.0;
     s1+=10.0;
    }
   } else {
    if(i36<-1.3897260032535996e-05){
     s0+=15.0;
     s1+=493.0;
    } else {
     s0+=83.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i17<1.049466609954834){
   if(i48<0.04302215576171875){
    if(i39<1.0670123100280762){
     s0+=70.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=40.0;
    }
   } else {
    if(i10<0.00038164854049682617){
     s0+=376.0;
     s1+=9.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   }
  } else {
   if(i14<-1.7344951629638672e-05){
    if(i54<0.0024664285592734814){
     s0+=161.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i64<0.004372447729110718){
     s0+=73.0;
     s1+=3856.0;
    } else {
     s0+=177.0;
     s1+=477.0;
    }
   }
  }
 }
} else {
 if(i13<1.008011817932129){
  if(i2<0.11402064561843872){
   if(i69<-0.0043799011036753654){
    if(i39<1.1037919521331787){
     s0+=195.0;
     s1+=41.0;
    } else {
     s0+=1188.0;
     s1+=27.0;
    }
   } else {
    if(i2<0.06847628951072693){
     s0+=441.0;
     s1+=51.0;
    } else {
     s0+=208.0;
     s1+=374.0;
    }
   }
  } else {
   if(i54<0.001857187831774354){
    if(i50<0.10104453563690186){
     s0+=89.0;
     s1+=554.0;
    } else {
     s0+=422.0;
     s1+=164.0;
    }
   } else {
    if(i0<0.13926970958709717){
     s0+=21.0;
     s1+=73.0;
    } else {
     s0+=1.0;
     s1+=1260.0;
    }
   }
  }
 } else {
  if(i2<0.06511843204498291){
   if(i17<1.1010971069335938){
    s1+=30.0;
   } else {
    if(i4<8.547306060791016e-05){
     s0+=103.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i13<1.0123331546783447){
    if(i54<0.0008408002322539687){
     s0+=67.0;
     s1+=82.0;
    } else {
     s0+=2.0;
     s1+=869.0;
    }
   } else {
    if(i5<0.00042176246643066406){
     s0+=10.0;
     s1+=125.0;
    } else {
     s1+=6640.0;
    }
   }
  }
 }
}
if(i1<0.0852321982383728){
 if(i14<1.9252300262451172e-05){
  if(i11<1.0451608896255493){
   if(i51<-0.004864782094955444){
    if(i30<1.1872748136520386){
     s0+=1191.0;
     s1+=277.0;
    } else {
     s0+=1308.0;
     s1+=18.0;
    }
   } else {
    if(i6<0.06273001432418823){
     s0+=57476.0;
     s1+=348.0;
    } else {
     s0+=1225.0;
     s1+=99.0;
    }
   }
  } else {
   if(i8<-3.2352894777432084e-05){
    if(i35<1.2007768154144287){
     s0+=167.0;
     s1+=508.0;
    } else {
     s0+=676.0;
     s1+=83.0;
    }
   } else {
    if(i41<0.0016854520654305816){
     s0+=2413.0;
     s1+=550.0;
    } else {
     s0+=3448.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i50<-0.0006608366966247559){
   if(i8<-5.0284168537473306e-05){
    if(i60<0.0029477477073669434){
     s0+=99.0;
     s1+=797.0;
    } else {
     s0+=98.0;
     s1+=29.0;
    }
   } else {
    if(i16<0.005132883787155151){
     s0+=208.0;
     s1+=19.0;
    } else {
     s0+=20.0;
     s1+=106.0;
    }
   }
  } else {
   if(i67<0.0008400314254686236){
    if(i19<1.0019290447235107){
     s0+=216.0;
     s1+=23.0;
    } else {
     s0+=77.0;
     s1+=114.0;
    }
   } else {
    if(i54<0.006019029766321182){
     s0+=569.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i73<2.397042862867238e-06){
  if(i16<0.0032227265182882547){
   if(i52<0.004223465919494629){
    if(i19<0.9954779148101807){
     s0+=156.0;
     s1+=23.0;
    } else {
     s0+=264.0;
     s1+=1192.0;
    }
   } else {
    if(i2<0.23291358351707458){
     s0+=687.0;
     s1+=70.0;
    } else {
     s0+=54.0;
     s1+=132.0;
    }
   }
  } else {
   if(i17<1.04958975315094){
    if(i23<0.9968751668930054){
     s0+=67.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=15.0;
    }
   } else {
    if(i14<-1.52587890625e-05){
     s0+=70.0;
     s1+=11.0;
    } else {
     s0+=326.0;
     s1+=12564.0;
    }
   }
  }
 } else {
  s0+=325.0;
 }
}
if(i14<1.8417835235595703e-05){
 if(i27<1.0398966073989868){
  if(i24<1.0080974102020264){
   if(i56<0.000782694318331778){
    if(i18<1.0006110668182373){
     s0+=55496.0;
     s1+=569.0;
    } else {
     s0+=2578.0;
     s1+=245.0;
    }
   } else {
    if(i23<0.965207040309906){
     s0+=2904.0;
     s1+=102.0;
    } else {
     s0+=3416.0;
     s1+=1270.0;
    }
   }
  } else {
   if(i2<0.06714734435081482){
    if(i35<1.1013743877410889){
     s0+=311.0;
     s1+=145.0;
    } else {
     s0+=636.0;
     s1+=13.0;
    }
   } else {
    if(i0<0.07601809501647949){
     s0+=34.0;
     s1+=40.0;
    } else {
     s0+=8.0;
     s1+=407.0;
    }
   }
  }
 } else {
  if(i12<0.0005970597267150879){
   if(i18<0.9988375306129456){
    if(i42<1.5756378173828125){
     s0+=1074.0;
     s1+=31.0;
    } else {
     s0+=27.0;
     s1+=14.0;
    }
   } else {
    if(i20<0.029414331540465355){
     s0+=2199.0;
     s1+=602.0;
    } else {
     s0+=244.0;
     s1+=1416.0;
    }
   }
  } else {
   if(i1<0.09090262651443481){
    if(i30<1.1919987201690674){
     s0+=3.0;
     s1+=86.0;
    } else {
     s0+=138.0;
     s1+=5.0;
    }
   } else {
    if(i44<0.00480770505964756){
     s0+=62.0;
     s1+=519.0;
    } else {
     s1+=943.0;
    }
   }
  }
 }
} else {
 if(i2<0.08058658242225647){
  if(i66<9.529358067084104e-06){
   if(i43<1.0003843307495117){
    s0+=307.0;
   } else {
    if(i16<0.001897027948871255){
     s0+=60.0;
     s1+=18.0;
    } else {
     s0+=97.0;
     s1+=1077.0;
    }
   }
  } else {
   if(i28<0.013308754190802574){
    if(i58<0.004636033903807402){
     s0+=882.0;
     s1+=60.0;
    } else {
     s0+=137.0;
     s1+=122.0;
    }
   } else {
    if(i40<0.0003675417392514646){
     s1+=40.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i12<-3.9696693420410156e-05){
   if(i17<1.1258130073547363){
    if(i51<0.015337228775024414){
     s0+=17.0;
     s1+=195.0;
    } else {
     s0+=213.0;
     s1+=66.0;
    }
   } else {
    if(i67<0.00017276388825848699){
     s0+=11.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=1111.0;
    }
   }
  } else {
   if(i12<0.0002599954605102539){
    if(i30<1.613681674003601){
     s1+=210.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    s1+=8029.0;
   }
  }
 }
}
if(i20<0.022744949907064438){
 if(i5<0.0006031990051269531){
  if(i26<0.00030132397660054266){
   if(i2<0.07863050699234009){
    if(i25<1.0089378356933594){
     s0+=52764.0;
     s1+=186.0;
    } else {
     s0+=133.0;
     s1+=93.0;
    }
   } else {
    if(i45<0.0002773094456642866){
     s0+=102.0;
     s1+=4.0;
    } else {
     s0+=34.0;
     s1+=51.0;
    }
   }
  } else {
   if(i2<0.07751339673995972){
    if(i52<0.0012273192405700684){
     s0+=5572.0;
     s1+=801.0;
    } else {
     s0+=4738.0;
     s1+=110.0;
    }
   } else {
    if(i48<0.0580994188785553){
     s0+=118.0;
     s1+=651.0;
    } else {
     s0+=872.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i35<1.0614044666290283){
   s0+=66.0;
  } else {
   if(i13<1.0088059902191162){
    if(i35<1.2281103134155273){
     s0+=16.0;
     s1+=392.0;
    } else {
     s0+=207.0;
     s1+=103.0;
    }
   } else {
    if(i8<-4.2906845919787884e-05){
     s1+=1895.0;
    } else {
     s0+=20.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i13<0.989884078502655){
  if(i3<0.9983522891998291){
   if(i2<0.08151954412460327){
    if(i50<-0.024599045515060425){
     s0+=439.0;
     s1+=67.0;
    } else {
     s0+=4440.0;
     s1+=22.0;
    }
   } else {
    if(i43<0.9993066787719727){
     s0+=141.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=207.0;
    }
   }
  } else {
   if(i6<0.07653090357780457){
    if(i52<-0.0029023587703704834){
     s0+=88.0;
     s1+=159.0;
    } else {
     s0+=174.0;
     s1+=12.0;
    }
   } else {
    if(i55<1.0007314682006836){
     s0+=30.0;
     s1+=477.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i44<0.0005040507530793548){
   if(i16<0.001759805018082261){
    if(i68<0.006670597940683365){
     s1+=5.0;
    } else {
     s0+=289.0;
     s1+=5.0;
    }
   } else {
    if(i21<0.9947003126144409){
     s0+=22.0;
    } else {
     s0+=6.0;
     s1+=22.0;
    }
   }
  } else {
   if(i31<0.02540035918354988){
    if(i18<0.9986335635185242){
     s0+=172.0;
     s1+=28.0;
    } else {
     s0+=774.0;
     s1+=3012.0;
    }
   } else {
    if(i73<9.246357421943685e-07){
     s0+=40.0;
     s1+=8268.0;
    } else {
     s0+=52.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i0<0.08145254850387573){
 if(i16<0.004338529892265797){
  if(i10<0.0007985830307006836){
   if(i56<0.0007916209870018065){
    if(i24<1.0072866678237915){
     s0+=56524.0;
     s1+=370.0;
    } else {
     s0+=1981.0;
     s1+=316.0;
    }
   } else {
    if(i39<1.1034480333328247){
     s0+=1554.0;
     s1+=716.0;
    } else {
     s0+=2702.0;
     s1+=169.0;
    }
   }
  } else {
   if(i13<1.0088222026824951){
    s0+=44.0;
   } else {
    s1+=135.0;
   }
  }
 } else {
  if(i13<1.0005931854248047){
   if(i74<-3.6200735848979093e-06){
    if(i60<0.0016803443431854248){
     s0+=27.0;
     s1+=131.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i44<0.0009998438181355596){
     s0+=451.0;
     s1+=306.0;
    } else {
     s0+=6069.0;
     s1+=305.0;
    }
   }
  } else {
   if(i10<-0.00020876526832580566){
    s0+=100.0;
   } else {
    if(i15<-0.0001150667667388916){
     s0+=2.0;
    } else {
     s1+=613.0;
    }
   }
  }
 }
} else {
 if(i34<0.0005117163527756929){
  if(i12<0.00022357702255249023){
   if(i36<-4.2553601815598086e-06){
    if(i45<0.0013190832687541842){
     s0+=6.0;
     s1+=64.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i7<1.0147755146026611){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=353.0;
    }
   }
  } else {
   if(i36<-8.573553714086302e-06){
    if(i44<0.00025770056527107954){
     s0+=1.0;
    } else {
     s1+=59.0;
    }
   } else {
    s0+=17.0;
   }
  }
 } else {
  if(i13<1.0068615674972534){
   if(i20<0.023811403661966324){
    if(i50<0.03728744387626648){
     s0+=159.0;
     s1+=590.0;
    } else {
     s0+=670.0;
     s1+=317.0;
    }
   } else {
    if(i64<0.00655132532119751){
     s0+=139.0;
     s1+=2651.0;
    } else {
     s0+=297.0;
     s1+=987.0;
    }
   }
  } else {
   if(i14<8.344650268554688e-07){
    if(i17<1.2561023235321045){
     s1+=255.0;
    } else {
     s0+=44.0;
     s1+=43.0;
    }
   } else {
    if(i20<0.018447360023856163){
     s0+=36.0;
     s1+=1512.0;
    } else {
     s0+=12.0;
     s1+=7466.0;
    }
   }
  }
 }
}
if(i10<0.0004329085350036621){
 if(i0<0.08370846509933472){
  if(i52<-0.0015513598918914795){
   if(i42<1.1800893545150757){
    if(i34<0.0004627458401955664){
     s0+=1109.0;
     s1+=49.0;
    } else {
     s0+=340.0;
     s1+=513.0;
    }
   } else {
    if(i58<0.01606721803545952){
     s0+=2032.0;
     s1+=60.0;
    } else {
     s0+=271.0;
     s1+=60.0;
    }
   }
  } else {
   if(i1<0.06724515557289124){
    if(i34<0.0003191482974216342){
     s0+=34283.0;
    } else {
     s0+=26580.0;
     s1+=713.0;
    }
   } else {
    if(i11<1.0410044193267822){
     s0+=2301.0;
     s1+=124.0;
    } else {
     s0+=984.0;
     s1+=393.0;
    }
   }
  }
 } else {
  if(i59<-8.290343248518184e-05){
   if(i36<2.5501440177322365e-06){
    if(i55<0.9998769760131836){
     s0+=144.0;
     s1+=2733.0;
    } else {
     s0+=461.0;
     s1+=840.0;
    }
   } else {
    if(i28<0.0015312328469008207){
     s0+=13.0;
     s1+=17.0;
    } else {
     s0+=170.0;
     s1+=4.0;
    }
   }
  } else {
   if(i47<0.04337567090988159){
    if(i38<-0.00046572089195251465){
     s0+=49.0;
    } else {
     s0+=4.0;
     s1+=250.0;
    }
   } else {
    if(i44<0.005524426698684692){
     s0+=411.0;
     s1+=61.0;
    } else {
     s0+=39.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i5<0.0006304681301116943){
  if(i6<0.11047664284706116){
   if(i0<0.07994630932807922){
    if(i50<-0.04864659905433655){
     s0+=31.0;
     s1+=63.0;
    } else {
     s0+=1270.0;
     s1+=140.0;
    }
   } else {
    if(i47<0.04556107521057129){
     s0+=4.0;
     s1+=160.0;
    } else {
     s0+=200.0;
     s1+=35.0;
    }
   }
  } else {
   if(i2<0.13383737206459045){
    if(i61<0.002488255500793457){
     s0+=1.0;
     s1+=25.0;
    } else {
     s0+=20.0;
     s1+=8.0;
    }
   } else {
    if(i36<-1.618715759832412e-05){
     s0+=3.0;
     s1+=388.0;
    } else {
     s0+=25.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i26<0.0001906321558635682){
   if(i38<0.0004101693630218506){
    if(i36<-1.7583497537998483e-05){
     s1+=2.0;
    } else {
     s0+=70.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i15<6.020069122314453e-06){
    if(i38<0.0002357959747314453){
     s0+=114.0;
     s1+=302.0;
    } else {
     s0+=91.0;
     s1+=878.0;
    }
   } else {
    if(i39<1.0496214628219604){
     s0+=8.0;
    } else {
     s0+=39.0;
     s1+=9299.0;
    }
   }
  }
 }
}
if(i15<0.00011497735977172852){
 if(i20<0.022396035492420197){
  if(i0<0.07737988233566284){
   if(i56<0.0007893330766819417){
    if(i46<0.026880454272031784){
     s0+=54978.0;
     s1+=283.0;
    } else {
     s0+=3158.0;
     s1+=179.0;
    }
   } else {
    if(i18<1.0018714666366577){
     s0+=3935.0;
     s1+=539.0;
    } else {
     s0+=66.0;
     s1+=123.0;
    }
   }
  } else {
   if(i10<-0.0003622472286224365){
    if(i46<0.04651542752981186){
     s0+=222.0;
     s1+=1.0;
    } else {
     s0+=43.0;
     s1+=4.0;
    }
   } else {
    if(i48<0.05389195680618286){
     s0+=90.0;
     s1+=710.0;
    } else {
     s0+=960.0;
     s1+=328.0;
    }
   }
  }
 } else {
  if(i11<1.0445520877838135){
   if(i23<0.9898576736450195){
    if(i42<1.2206636667251587){
     s0+=367.0;
     s1+=137.0;
    } else {
     s0+=4130.0;
     s1+=60.0;
    }
   } else {
    if(i1<0.06915292143821716){
     s0+=418.0;
     s1+=92.0;
    } else {
     s0+=24.0;
     s1+=133.0;
    }
   }
  } else {
   if(i36<2.752203272393672e-06){
    if(i16<0.0014204430626705289){
     s0+=335.0;
     s1+=197.0;
    } else {
     s0+=882.0;
     s1+=4427.0;
    }
   } else {
    if(i36<4.033555342175532e-06){
     s0+=42.0;
     s1+=13.0;
    } else {
     s0+=463.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i6<0.05016779899597168){
  if(i38<0.00021654367446899414){
   if(i12<0.001595616340637207){
    if(i50<-0.02578487992286682){
     s0+=23.0;
     s1+=66.0;
    } else {
     s0+=595.0;
     s1+=47.0;
    }
   } else {
    s1+=144.0;
   }
  } else {
   if(i10<0.00039464235305786133){
    s0+=3.0;
   } else {
    s1+=439.0;
   }
  }
 } else {
  if(i1<0.07403534650802612){
   if(i60<0.002840697765350342){
    if(i18<1.0011804103851318){
     s0+=35.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=81.0;
    }
   } else {
    if(i38<0.00014540553092956543){
     s0+=77.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   if(i10<-0.00034436583518981934){
    s0+=21.0;
   } else {
    if(i3<1.0038886070251465){
     s0+=39.0;
     s1+=982.0;
    } else {
     s1+=8344.0;
    }
   }
  }
 }
}
if(i24<1.0099639892578125){
 if(i0<0.07851806282997131){
  if(i56<0.0007322507444769144){
   if(i19<1.0027854442596436){
    if(i68<0.024697542190551758){
     s0+=52999.0;
     s1+=175.0;
    } else {
     s0+=6563.0;
     s1+=440.0;
    }
   } else {
    if(i32<1.0037565231323242){
     s0+=302.0;
     s1+=26.0;
    } else {
     s0+=74.0;
     s1+=175.0;
    }
   }
  } else {
   if(i38<-3.457069396972656e-05){
    if(i64<-0.0022388100624084473){
     s0+=664.0;
     s1+=81.0;
    } else {
     s0+=3260.0;
     s1+=73.0;
    }
   } else {
    if(i39<1.10614013671875){
     s0+=338.0;
     s1+=901.0;
    } else {
     s0+=3588.0;
     s1+=532.0;
    }
   }
  }
 } else {
  if(i53<-1.9125407561659813e-05){
   if(i34<0.0004565534763969481){
    if(i12<0.0003954768180847168){
     s0+=251.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i3<0.9968788027763367){
     s0+=242.0;
     s1+=45.0;
    } else {
     s0+=262.0;
     s1+=1081.0;
    }
   }
  } else {
   if(i42<1.0670123100280762){
    if(i57<1.0026683807373047){
     s0+=112.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i8<1.0464223123562988e-05){
     s0+=134.0;
     s1+=2604.0;
    } else {
     s0+=97.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i2<0.09214401245117188){
   if(i35<1.1040980815887451){
    if(i3<1.000626802444458){
     s0+=260.0;
     s1+=157.0;
    } else {
     s0+=14.0;
     s1+=212.0;
    }
   } else {
    if(i61<0.003099799156188965){
     s0+=425.0;
     s1+=55.0;
    } else {
     s0+=896.0;
     s1+=12.0;
    }
   }
  } else {
   if(i47<0.05668383836746216){
    if(i14<-2.4080276489257812e-05){
     s0+=7.0;
    } else {
     s0+=40.0;
     s1+=909.0;
    }
   } else {
    if(i44<0.006545625627040863){
     s0+=460.0;
     s1+=222.0;
    } else {
     s0+=22.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i0<0.08147925138473511){
   if(i12<0.0014276504516601562){
    if(i73<-4.694452400144655e-06){
     s0+=46.0;
     s1+=69.0;
    } else {
     s0+=81.0;
     s1+=4.0;
    }
   } else {
    s1+=174.0;
   }
  } else {
   if(i31<0.022751975804567337){
    if(i22<1.0085557699203491){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=78.0;
     s1+=1694.0;
    }
   } else {
    if(i32<0.9846434593200684){
     s0+=5.0;
     s1+=136.0;
    } else {
     s0+=1.0;
     s1+=6891.0;
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
