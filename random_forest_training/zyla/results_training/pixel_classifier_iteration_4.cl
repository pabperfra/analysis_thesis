/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 top_hat_box=30 top_hat_box=15 difference_of_gaussian=15 laplace_box_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=10 difference_of_gaussian=20 top_hat_box=10 gaussian_blur=5 difference_of_gaussian=10 maximum_box=2 maximum_box=3 median_box=5 gaussian_blur=15 mean_box=10 laplace_box_of_gaussian_blur=20 laplace_box_of_gaussian_blur=10 maximum_box=1 mean_box=15 sobel_of_gaussian_blur=10 gaussian_blur=3 maximum_box=5 variance_box=3 mean_box=3 gaussian_blur=2 sobel_of_median_box=5 maximum_box=30 variance_box=2 maximum_box=15 variance_box=15 maximum_box=10 sobel_of_gaussian_blur=5 gaussian_blur=20 maximum_box=20 top_hat_box=3 variance_box=20 median_box=3 difference_of_gaussian=2 top_hat_box=2 variance_box=10 variance_box=30 difference_of_gaussian=30 variance_box=5 small_hessian_eigenvalue_of_gaussian_blur=15 laplace_box_of_gaussian_blur=2 mean_box=5 sobel_of_gaussian_blur=15 difference_of_gaussian=5 sobel_of_median_box=3 top_hat_box=5 small_hessian_eigenvalue_of_gaussian_blur=5 mean_box=2 gaussian_blur=30 laplace_box_of_gaussian_blur=1 mean_box=30 laplace_box_of_gaussian_blur=3 difference_of_gaussian=3 small_hessian_eigenvalue_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=10 sobel_of_gaussian_blur=3 top_hat_box=1 sobel_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=5 mean_box=1 gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=1 mean_box=20 sobel_of_gaussian_blur=30 laplace_box_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=3
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 80
max_depth = 5
num_trees = 250
feature_importances = 0.10416483449085448,0.10344495754341664,0.08854314207730679,0.05902630156780842,0.06164542393017808,0.03730656784273498,0.0709662423152193,0.030460038908190035,0.05525782997971868,0.02183794219806265,0.028932277097942778,0.04184699078534787,0.02895602514577952,0.03258622136972927,0.013150071313952735,0.010776705285923267,0.015298325110370535,0.014469551126840882,0.005051092788128403,0.012901394699111689,0.01354988192071516,0.00663520684048493,0.013441352995842143,0.005160867762749043,0.005833085409107895,0.010717681760641824,0.011087936233646588,0.0037971031094259275,0.005009057005934316,0.002999371107016903,0.0024403638415019403,0.0026987247371075885,0.0033537550890576666,0.0024529203937167336,0.002479973975789296,0.0018945701673904122,0.0018625623026838878,0.006033749840652019,0.001685671645661541,0.0019352565927494912,0.002559805137221027,0.003062946124189745,0.0028686091464642433,0.0022959159191712347,0.0029901017087445784,0.0017222962232837998,0.003328838706992404,0.0015399781209156141,0.0003325869205862451,0.0019533391934357202,0.0032504187718104894,0.0011689598390873994,0.001262365002108642,0.0014672421480582014,0.0018135203074802848,0.0009330218096268578,0.0010695558189287222,0.0010338623313346858,0.0006189847392617336,0.0025941517002698723,0.0006813129511617891,0.0010068340163187947,0.0008596680014416296,0.0016137486080116076,0.0009566395701751935,0.001170645948197383,0.0014367817147497,0.0008951068702192918,0.0007686408381345728,0.00045099218426173764,0.0008605883914228837,0.0009940911488752543,0.004019529755257242,0.0029363419830280455,0.00042954704467727594,0.00020778093841738952,0.00046922265024917193,0.0002979231084603308,0.00020959889912064458,0.00017747740035633185
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_in78_TYPE in78, IMAGE_in79_TYPE in79, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i0<0.08367037773132324){
 if(i4<4.0471553802490234e-05){
  if(i28<0.0002952359791379422){
   if(i41<0.00034879439044743776){
    if(i27<1.0977051258087158){
     s0+=33593.0;
    } else {
     s0+=614.0;
     s1+=3.0;
    }
   } else {
    if(i72<0.9830180406570435){
     s0+=169.0;
     s1+=111.0;
    } else {
     s0+=21647.0;
     s1+=481.0;
    }
   }
  } else {
   if(i4<-3.1054019927978516e-05){
    if(i31<1.1527537107467651){
     s0+=2150.0;
     s1+=200.0;
    } else {
     s0+=5185.0;
     s1+=57.0;
    }
   } else {
    if(i59<2.714993570407387e-05){
     s0+=3514.0;
     s1+=283.0;
    } else {
     s0+=2097.0;
     s1+=999.0;
    }
   }
  }
 } else {
  if(i14<1.0013021230697632){
   if(i23<0.00039531622314825654){
    if(i24<1.007920265197754){
     s0+=228.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.0042667388916015625){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i54<0.012759268283843994){
    if(i47<0.0008866193820722401){
     s0+=69.0;
     s1+=24.0;
    } else {
     s0+=68.0;
     s1+=900.0;
    }
   } else {
    if(i31<1.1641030311584473){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=82.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i5<-1.5394753063446842e-05){
  if(i17<0.00011247396469116211){
   if(i20<0.004696551710367203){
    if(i58<-0.027634041383862495){
     s0+=223.0;
     s1+=56.0;
    } else {
     s0+=177.0;
     s1+=1005.0;
    }
   } else {
    if(i69<1.8968057702295482e-06){
     s0+=167.0;
     s1+=3317.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i69<-0.00010927348921541125){
    s0+=8.0;
   } else {
    if(i5<-4.23185556428507e-05){
     s0+=3.0;
     s1+=9201.0;
    } else {
     s0+=33.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i50<0.06789988279342651){
   if(i76<0.9979890584945679){
    if(i16<-5.900859832763672e-06){
     s0+=64.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i61<0.03965136408805847){
     s0+=7.0;
     s1+=242.0;
    } else {
     s0+=15.0;
     s1+=8.0;
    }
   }
  } else {
   if(i42<-0.00013336539268493652){
    s0+=313.0;
   } else {
    if(i1<0.2331155240535736){
     s0+=488.0;
     s1+=117.0;
    } else {
     s0+=40.0;
     s1+=115.0;
    }
   }
  }
 }
}
if(i6<1.0024793148040771){
 if(i18<1.0406770706176758){
  if(i12<1.042891263961792){
   if(i66<0.0007084648823365569){
    if(i26<0.02071041613817215){
     s0+=52356.0;
     s1+=109.0;
    } else {
     s0+=2492.0;
     s1+=157.0;
    }
   } else {
    if(i31<1.146665096282959){
     s0+=2020.0;
     s1+=558.0;
    } else {
     s0+=3820.0;
     s1+=48.0;
    }
   }
  } else {
   if(i5<-2.583000241429545e-05){
    if(i8<0.05656436085700989){
     s0+=1160.0;
     s1+=476.0;
    } else {
     s0+=109.0;
     s1+=663.0;
    }
   } else {
    if(i24<0.9917582273483276){
     s0+=1111.0;
     s1+=526.0;
    } else {
     s0+=3666.0;
     s1+=347.0;
    }
   }
  }
 } else {
  if(i47<0.001837272197008133){
   if(i30<0.006405080668628216){
    if(i2<0.0971585214138031){
     s0+=2437.0;
     s1+=329.0;
    } else {
     s0+=803.0;
     s1+=778.0;
    }
   } else {
    if(i29<1.3797390460968018){
     s0+=52.0;
     s1+=406.0;
    } else {
     s0+=47.0;
     s1+=4.0;
    }
   }
  } else {
   if(i32<0.048752620816230774){
    if(i51<-0.00020436558406800032){
     s0+=111.0;
     s1+=649.0;
    } else {
     s0+=638.0;
     s1+=155.0;
    }
   } else {
    if(i20<0.006135973148047924){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=745.0;
    }
   }
  }
 }
} else {
 if(i28<0.0001616518129594624){
  if(i44<-1.6646754374960437e-05){
   s1+=29.0;
  } else {
   if(i52<0.9986109733581543){
    s1+=2.0;
   } else {
    s0+=95.0;
   }
  }
 } else {
  if(i32<0.0191107839345932){
   if(i20<0.002261590911075473){
    if(i9<1.012392520904541){
     s0+=100.0;
     s1+=23.0;
    } else {
     s1+=96.0;
    }
   } else {
    if(i34<1.2314128875732422){
     s1+=1574.0;
    } else {
     s0+=144.0;
     s1+=725.0;
    }
   }
  } else {
   if(i15<0.997458815574646){
    if(i32<0.020154260098934174){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=391.0;
    }
   } else {
    if(i59<0.00031719444086775184){
     s1+=8279.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i1<0.08353149890899658){
  if(i45<-0.005241423845291138){
   if(i7<0.00045359134674072266){
    if(i29<1.1823735237121582){
     s0+=1584.0;
     s1+=614.0;
    } else {
     s0+=2300.0;
     s1+=84.0;
    }
   } else {
    if(i75<0.231553316116333){
     s0+=23.0;
     s1+=237.0;
    } else {
     s0+=166.0;
     s1+=186.0;
    }
   }
  } else {
   if(i14<1.0005935430526733){
    if(i0<0.0692034363746643){
     s0+=58908.0;
     s1+=548.0;
    } else {
     s0+=1356.0;
     s1+=238.0;
    }
   } else {
    if(i23<0.00023064989363774657){
     s0+=2175.0;
     s1+=40.0;
    } else {
     s0+=1729.0;
     s1+=452.0;
    }
   }
  }
 } else {
  if(i19<1.000192403793335){
   if(i16<-1.5467405319213867e-05){
    if(i7<-0.0005949437618255615){
     s0+=517.0;
    } else {
     s0+=87.0;
     s1+=10.0;
    }
   } else {
    if(i32<0.014805370941758156){
     s0+=495.0;
     s1+=209.0;
    } else {
     s0+=201.0;
     s1+=764.0;
    }
   }
  } else {
   if(i55<1.0014371871948242){
    if(i19<1.0015318393707275){
     s0+=118.0;
     s1+=339.0;
    } else {
     s0+=64.0;
     s1+=2177.0;
    }
   } else {
    if(i20<0.00998867116868496){
     s0+=139.0;
     s1+=64.0;
    } else {
     s0+=5.0;
     s1+=175.0;
    }
   }
  }
 }
} else {
 if(i5<-4.3320978875271976e-05){
  if(i16<-1.3768672943115234e-05){
   s0+=12.0;
  } else {
   if(i9<1.0140166282653809){
    if(i27<1.613681674003601){
     s0+=58.0;
     s1+=2856.0;
    } else {
     s0+=52.0;
     s1+=136.0;
    }
   } else {
    s1+=7116.0;
   }
  }
 } else {
  if(i34<1.1063789129257202){
   if(i45<0.013297557830810547){
    if(i10<-8.365511894226074e-05){
     s0+=27.0;
     s1+=13.0;
    } else {
     s0+=12.0;
     s1+=265.0;
    }
   } else {
    if(i9<1.0056753158569336){
     s0+=41.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i8<0.1866302192211151){
    if(i20<0.003586019854992628){
     s0+=1044.0;
     s1+=63.0;
    } else {
     s0+=78.0;
     s1+=149.0;
    }
   } else {
    if(i69<2.0493246211117366e-06){
     s0+=31.0;
     s1+=264.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i0<0.08354610204696655){
 if(i6<1.002474308013916){
  if(i12<1.0428826808929443){
   if(i48<-0.0008676052093505859){
    if(i9<0.9898251295089722){
     s0+=8868.0;
     s1+=68.0;
    } else {
     s0+=1968.0;
     s1+=430.0;
    }
   } else {
    if(i23<0.0003237813652958721){
     s0+=48527.0;
     s1+=84.0;
    } else {
     s0+=1528.0;
     s1+=77.0;
    }
   }
  } else {
   if(i0<0.05958890914916992){
    if(i13<0.9943046569824219){
     s0+=1130.0;
     s1+=417.0;
    } else {
     s0+=5575.0;
     s1+=311.0;
    }
   } else {
    if(i38<0.002545565366744995){
     s0+=763.0;
     s1+=702.0;
    } else {
     s0+=937.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i34<1.2314128875732422){
   if(i77<0.00020222540479153395){
    if(i23<0.00012180562771391124){
     s0+=2.0;
    } else {
     s1+=636.0;
    }
   } else {
    s0+=4.0;
   }
  } else {
   if(i64<-0.0014532208442687988){
    if(i41<0.004173404537141323){
     s0+=13.0;
    } else {
     s0+=31.0;
     s1+=268.0;
    }
   } else {
    if(i11<1.0162720680236816){
     s1+=13.0;
    } else {
     s0+=213.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i20<0.004690323956310749){
  if(i54<0.05914562940597534){
   if(i14<0.998519778251648){
    if(i67<4.434135553310625e-05){
     s0+=144.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   } else {
    if(i68<-0.005286946892738342){
     s0+=205.0;
     s1+=168.0;
    } else {
     s0+=108.0;
     s1+=1844.0;
    }
   }
  } else {
   if(i59<-3.278835356468335e-05){
    s1+=48.0;
   } else {
    if(i42<-0.00013634562492370605){
     s0+=247.0;
     s1+=2.0;
    } else {
     s0+=640.0;
     s1+=248.0;
    }
   }
  }
 } else {
  if(i22<1.04958975315094){
   if(i74<1.1199565506103681e-06){
    s1+=23.0;
   } else {
    s0+=53.0;
   }
  } else {
   if(i44<1.9900567167496774e-06){
    if(i17<-0.00011846423149108887){
     s0+=139.0;
     s1+=1342.0;
    } else {
     s0+=30.0;
     s1+=10295.0;
    }
   } else {
    if(i23<0.0025553491432219744){
     s1+=2.0;
    } else {
     s0+=64.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i1<0.08355346322059631){
  if(i12<1.0398929119110107){
   if(i57<-0.000989377498626709){
    if(i6<0.9965823292732239){
     s0+=2947.0;
     s1+=31.0;
    } else {
     s0+=2034.0;
     s1+=346.0;
    }
   } else {
    if(i1<0.07667496800422668){
     s0+=52778.0;
     s1+=137.0;
    } else {
     s0+=420.0;
     s1+=32.0;
    }
   }
  } else {
   if(i0<0.06630954146385193){
    if(i27<1.1013743877410889){
     s0+=2872.0;
     s1+=711.0;
    } else {
     s0+=6537.0;
     s1+=301.0;
    }
   } else {
    if(i55<1.0021653175354004){
     s0+=751.0;
     s1+=521.0;
    } else {
     s0+=215.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i6<0.9958418011665344){
   if(i47<0.0029349622782319784){
    if(i17<-0.00044333934783935547){
     s0+=68.0;
     s1+=16.0;
    } else {
     s0+=620.0;
    }
   } else {
    if(i51<-0.0003612171858549118){
     s0+=1.0;
     s1+=73.0;
    } else {
     s0+=39.0;
     s1+=16.0;
    }
   }
  } else {
   if(i5<-1.3797138308291323e-05){
    if(i27<1.2604451179504395){
     s0+=38.0;
     s1+=1719.0;
    } else {
     s0+=502.0;
     s1+=1258.0;
    }
   } else {
    if(i59<3.5393997677601874e-05){
     s0+=485.0;
     s1+=45.0;
    } else {
     s0+=149.0;
     s1+=339.0;
    }
   }
  }
 }
} else {
 if(i23<0.00020094995852559805){
  if(i33<1.0009444952011108){
   if(i5<-5.3609277529176325e-05){
    s1+=6.0;
   } else {
    s0+=228.0;
   }
  } else {
   if(i19<1.0031542778015137){
    s0+=2.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i1<0.07547944784164429){
   if(i31<1.1961640119552612){
    if(i19<0.9987426400184631){
     s0+=24.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=563.0;
    }
   } else {
    if(i66<0.002448075683787465){
     s0+=163.0;
     s1+=7.0;
    } else {
     s0+=45.0;
     s1+=153.0;
    }
   }
  } else {
   if(i15<1.006316065788269){
    if(i26<0.035973869264125824){
     s0+=105.0;
     s1+=728.0;
    } else {
     s0+=18.0;
     s1+=1848.0;
    }
   } else {
    if(i44<-1.3529494935937691e-05){
     s1+=8195.0;
    } else {
     s0+=20.0;
     s1+=107.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i10<0.0010688304901123047){
  if(i65<0.0018146834336221218){
   if(i13<1.0080137252807617){
    if(i30<0.00030118110589683056){
     s0+=35823.0;
     s1+=4.0;
    } else {
     s0+=27133.0;
     s1+=1008.0;
    }
   } else {
    if(i79<-0.0008622307796031237){
     s0+=473.0;
     s1+=59.0;
    } else {
     s0+=56.0;
     s1+=166.0;
    }
   }
  } else {
   if(i15<0.9928804039955139){
    if(i51<-0.0007228939794003963){
     s0+=18.0;
     s1+=27.0;
    } else {
     s0+=2259.0;
     s1+=91.0;
    }
   } else {
    if(i42<-3.56137752532959e-05){
     s0+=1308.0;
     s1+=106.0;
    } else {
     s0+=1691.0;
     s1+=1144.0;
    }
   }
  }
 } else {
  if(i34<1.207309603691101){
   s1+=401.0;
  } else {
   if(i5<-6.638608465436846e-05){
    s1+=91.0;
   } else {
    if(i58<0.01135706901550293){
     s0+=178.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i14<0.9986284971237183){
  if(i27<1.4901387691497803){
   if(i14<0.9980460405349731){
    s0+=605.0;
   } else {
    if(i43<0.002391704125329852){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i44<-1.1628923857642803e-05){
    if(i8<0.047934770584106445){
     s0+=16.0;
    } else {
     s1+=33.0;
    }
   } else {
    s0+=61.0;
   }
  }
 } else {
  if(i10<0.00024074316024780273){
   if(i54<0.042869508266448975){
    if(i43<0.00029333418933674693){
     s0+=36.0;
     s1+=2.0;
    } else {
     s0+=180.0;
     s1+=2130.0;
    }
   } else {
    if(i2<0.15869736671447754){
     s0+=782.0;
     s1+=303.0;
    } else {
     s0+=144.0;
     s1+=1325.0;
    }
   }
  } else {
   if(i20<0.0017183915479108691){
    if(i17<0.0002251267433166504){
     s0+=114.0;
     s1+=6.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i55<0.9964345693588257){
     s0+=3.0;
    } else {
     s0+=36.0;
     s1+=10240.0;
    }
   }
  }
 }
}
if(i0<0.08319085836410522){
 if(i11<1.0401519536972046){
  if(i4<3.898143768310547e-05){
   if(i75<0.04530511423945427){
    if(i72<0.9717319011688232){
     s0+=172.0;
     s1+=57.0;
    } else {
     s0+=53725.0;
     s1+=399.0;
    }
   } else {
    if(i36<0.001968881580978632){
     s0+=3341.0;
     s1+=590.0;
    } else {
     s0+=5499.0;
     s1+=61.0;
    }
   }
  } else {
   if(i55<0.9979346990585327){
    if(i20<0.0075802928768098354){
     s0+=245.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i48<0.0003966093063354492){
     s0+=5.0;
     s1+=223.0;
    } else {
     s0+=64.0;
     s1+=58.0;
    }
   }
  }
 } else {
  if(i29<1.1037919521331787){
   if(i5<-1.9203009287593886e-05){
    if(i33<0.9993031024932861){
     s0+=63.0;
    } else {
     s0+=42.0;
     s1+=820.0;
    }
   } else {
    if(i76<1.0006979703903198){
     s0+=1772.0;
     s1+=134.0;
    } else {
     s0+=79.0;
     s1+=112.0;
    }
   }
  } else {
   if(i57<-0.0008378922939300537){
    if(i32<0.03382924199104309){
     s0+=966.0;
     s1+=251.0;
    } else {
     s0+=14.0;
     s1+=179.0;
    }
   } else {
    if(i15<1.0107084512710571){
     s0+=3548.0;
     s1+=166.0;
    } else {
     s0+=5.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i9<1.0063674449920654){
  if(i34<1.0670123100280762){
   if(i19<1.0006892681121826){
    s0+=177.0;
   } else {
    if(i36<0.0002511756611056626){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i7<-0.00041115283966064453){
    if(i36<0.008514813147485256){
     s0+=285.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i36<0.006279264111071825){
     s0+=954.0;
     s1+=2397.0;
    } else {
     s0+=113.0;
     s1+=2193.0;
    }
   }
  }
 } else {
  if(i5<-2.235615102108568e-05){
   if(i20<0.001798955723643303){
    if(i46<1.0111987590789795){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=139.0;
    }
   } else {
    if(i17<2.2649765014648438e-06){
     s0+=7.0;
     s1+=96.0;
    } else {
     s0+=1.0;
     s1+=9133.0;
    }
   }
  } else {
   if(i19<0.9978610277175903){
    s1+=12.0;
   } else {
    if(i43<0.0145182553678751){
     s0+=71.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
}
if(i2<0.0783216655254364){
 if(i16<1.7940998077392578e-05){
  if(i29<1.0598037242889404){
   s0+=36500.0;
  } else {
   if(i29<1.1032289266586304){
    if(i57<-0.0011352002620697021){
     s0+=414.0;
     s1+=642.0;
    } else {
     s0+=7178.0;
     s1+=1013.0;
    }
   } else {
    if(i57<-0.004223614931106567){
     s0+=2467.0;
     s1+=201.0;
    } else {
     s0+=21228.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i3<0.0005652904510498047){
   if(i15<0.9969590902328491){
    if(i64<-0.00507625937461853){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=979.0;
     s1+=14.0;
    }
   } else {
    if(i55<1.0002754926681519){
     s0+=145.0;
     s1+=4.0;
    } else {
     s0+=147.0;
     s1+=130.0;
    }
   }
  } else {
   if(i28<0.00017261735047213733){
    if(i69<-7.813512638676912e-06){
     s1+=8.0;
    } else {
     s0+=83.0;
     s1+=4.0;
    }
   } else {
    if(i27<1.5682398080825806){
     s0+=55.0;
     s1+=1033.0;
    } else {
     s0+=112.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i16<-1.3887882232666016e-05){
  if(i42<-0.0001036226749420166){
   if(i51<-0.0014785750536248088){
    s1+=3.0;
   } else {
    if(i6<0.9961366653442383){
     s0+=349.0;
    } else {
     s0+=40.0;
     s1+=2.0;
    }
   }
  } else {
   if(i28<0.001483126892708242){
    if(i1<0.14686545729637146){
     s0+=38.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i19<1.0029957294464111){
   if(i30<0.0066644493490457535){
    if(i5<-1.4540169104293454e-05){
     s0+=421.0;
     s1+=2186.0;
    } else {
     s0+=701.0;
     s1+=304.0;
    }
   } else {
    if(i51<-2.5173387257382274e-05){
     s0+=41.0;
     s1+=1953.0;
    } else {
     s0+=47.0;
     s1+=31.0;
    }
   }
  } else {
   if(i6<1.0018541812896729){
    if(i0<0.09931185841560364){
     s0+=44.0;
     s1+=21.0;
    } else {
     s0+=50.0;
     s1+=496.0;
    }
   } else {
    if(i55<1.0058143138885498){
     s0+=40.0;
     s1+=8779.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i2<0.07800483703613281){
 if(i0<0.06921336054801941){
  if(i14<1.0018956661224365){
   if(i38<-0.0015439391136169434){
    if(i42<-4.7326087951660156e-05){
     s0+=1690.0;
     s1+=69.0;
    } else {
     s0+=2097.0;
     s1+=700.0;
    }
   } else {
    if(i25<1.0067417621612549){
     s0+=61386.0;
     s1+=616.0;
    } else {
     s0+=1678.0;
     s1+=244.0;
    }
   }
  } else {
   if(i67<1.7193902749568224e-05){
    if(i56<0.003102421760559082){
     s0+=72.0;
     s1+=526.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i54<-0.05875098705291748){
     s0+=17.0;
     s1+=61.0;
    } else {
     s0+=454.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i13<1.004478931427002){
   if(i54<0.003438025712966919){
    if(i31<1.0672215223312378){
     s0+=33.0;
     s1+=10.0;
    } else {
     s0+=39.0;
     s1+=182.0;
    }
   } else {
    if(i75<0.06748145818710327){
     s0+=1070.0;
     s1+=114.0;
    } else {
     s0+=255.0;
     s1+=141.0;
    }
   }
  } else {
   if(i56<0.006504803895950317){
    if(i10<0.0006405115127563477){
     s0+=114.0;
     s1+=174.0;
    } else {
     s0+=15.0;
     s1+=422.0;
    }
   } else {
    if(i26<0.044829756021499634){
     s0+=123.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i16<-1.3887882232666016e-05){
  if(i7<-0.00041237473487854004){
   if(i61<0.034348130226135254){
    if(i63<0.0027777901850640774){
     s0+=41.0;
     s1+=3.0;
    } else {
     s0+=97.0;
    }
   } else {
    s0+=324.0;
   }
  } else {
   if(i27<1.255998969078064){
    s1+=19.0;
   } else {
    if(i60<0.2514802813529968){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<1.001805305480957){
   if(i45<0.01162824034690857){
    if(i40<0.000430102925747633){
     s0+=56.0;
     s1+=12.0;
    } else {
     s0+=179.0;
     s1+=1897.0;
    }
   } else {
    if(i32<0.02342701144516468){
     s0+=806.0;
     s1+=370.0;
    } else {
     s0+=211.0;
     s1+=899.0;
    }
   }
  } else {
   if(i46<1.0041723251342773){
    if(i47<0.002011924749240279){
     s0+=102.0;
     s1+=477.0;
    } else {
     s0+=24.0;
     s1+=1418.0;
    }
   } else {
    if(i5<-4.1500083170831203e-05){
     s0+=5.0;
     s1+=8845.0;
    } else {
     s0+=17.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i10<0.0007649660110473633){
 if(i23<0.00032030054717324674){
  if(i66<0.0008607257041148841){
   if(i19<1.0034189224243164){
    if(i21<1.0073918104171753){
     s0+=53412.0;
     s1+=231.0;
    } else {
     s0+=150.0;
     s1+=116.0;
    }
   } else {
    if(i16<1.138448715209961e-05){
     s0+=19.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=50.0;
    }
   }
  } else {
   if(i9<0.9912770390510559){
    if(i35<0.000702202320098877){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i53<0.9998383522033691){
     s0+=9.0;
     s1+=94.0;
    } else {
     s0+=67.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i76<1.0004833936691284){
   if(i2<0.07771384716033936){
    if(i27<1.100754976272583){
     s0+=3035.0;
     s1+=708.0;
    } else {
     s0+=6512.0;
     s1+=208.0;
    }
   } else {
    if(i4<-5.5730342864990234e-05){
     s0+=329.0;
     s1+=60.0;
    } else {
     s0+=715.0;
     s1+=1315.0;
    }
   }
  } else {
   if(i1<0.09546658396720886){
    if(i17<-0.00024816393852233887){
     s0+=4494.0;
     s1+=180.0;
    } else {
     s0+=1072.0;
     s1+=1147.0;
    }
   } else {
    if(i26<0.026620224118232727){
     s0+=291.0;
     s1+=522.0;
    } else {
     s0+=111.0;
     s1+=2514.0;
    }
   }
  }
 }
} else {
 if(i28<0.00016636101645417511){
  if(i47<0.0017126956954598427){
   if(i2<0.06489235162734985){
    if(i69<-5.045103534939699e-06){
     s1+=10.0;
    } else {
     s0+=344.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   s1+=15.0;
  }
 } else {
  if(i6<1.000122308731079){
   if(i20<0.005276750773191452){
    s0+=123.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i0<0.06485679745674133){
    if(i69<-4.734094545710832e-06){
     s0+=1.0;
     s1+=248.0;
    } else {
     s0+=132.0;
     s1+=32.0;
    }
   } else {
    if(i5<-4.3746709707193077e-05){
     s0+=1.0;
     s1+=9608.0;
    } else {
     s0+=60.0;
     s1+=158.0;
    }
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i63<0.008470621891319752){
  if(i2<0.06077718734741211){
   if(i15<1.0073633193969727){
    if(i22<1.0451585054397583){
     s0+=51068.0;
     s1+=162.0;
    } else {
     s0+=11570.0;
     s1+=801.0;
    }
   } else {
    if(i69<-4.907492893835297e-06){
     s1+=136.0;
    } else {
     s0+=103.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.00045987963676452637){
    if(i63<0.001661475282162428){
     s0+=3235.0;
     s1+=203.0;
    } else {
     s0+=500.0;
     s1+=307.0;
    }
   } else {
    if(i58<-0.009506404399871826){
     s0+=39.0;
     s1+=3.0;
    } else {
     s0+=44.0;
     s1+=214.0;
    }
   }
  }
 } else {
  if(i7<0.0005077719688415527){
   if(i0<0.02376025915145874){
    if(i0<0.00018838047981262207){
     s0+=1067.0;
     s1+=46.0;
    } else {
     s0+=785.0;
     s1+=143.0;
    }
   } else {
    if(i5<-3.958849993068725e-05){
     s0+=24.0;
     s1+=192.0;
    } else {
     s0+=803.0;
     s1+=282.0;
    }
   }
  } else {
   if(i0<0.011400192975997925){
    if(i74<-2.7867376957146917e-06){
     s0+=6.0;
     s1+=32.0;
    } else {
     s0+=58.0;
     s1+=15.0;
    }
   } else {
    if(i72<0.9975289106369019){
     s0+=12.0;
     s1+=477.0;
    } else {
     s0+=59.0;
     s1+=97.0;
    }
   }
  }
 }
} else {
 if(i5<-1.3541021871787962e-05){
  if(i26<0.027903802692890167){
   if(i46<1.0051567554473877){
    if(i72<1.0249836444854736){
     s0+=126.0;
     s1+=568.0;
    } else {
     s0+=300.0;
     s1+=127.0;
    }
   } else {
    if(i68<-0.008845550939440727){
     s0+=80.0;
     s1+=187.0;
    } else {
     s0+=66.0;
     s1+=2850.0;
    }
   }
  } else {
   if(i14<0.997739315032959){
    s0+=16.0;
   } else {
    if(i1<0.12387019395828247){
     s0+=91.0;
     s1+=879.0;
    } else {
     s0+=43.0;
     s1+=9008.0;
    }
   }
  }
 } else {
  if(i14<0.9985276460647583){
   s0+=410.0;
  } else {
   if(i20<0.0016447186935693026){
    if(i9<0.9963477849960327){
     s0+=110.0;
     s1+=53.0;
    } else {
     s0+=299.0;
     s1+=9.0;
    }
   } else {
    if(i54<0.0614948570728302){
     s0+=61.0;
     s1+=245.0;
    } else {
     s0+=150.0;
     s1+=90.0;
    }
   }
  }
 }
}
if(i0<0.08191633224487305){
 if(i10<0.0012137889862060547){
  if(i14<1.0018198490142822){
   if(i22<1.0451585054397583){
    if(i57<-0.0014186203479766846){
     s0+=1441.0;
     s1+=138.0;
    } else {
     s0+=52408.0;
     s1+=104.0;
    }
   } else {
    if(i64<-0.0014449656009674072){
     s0+=2752.0;
     s1+=783.0;
    } else {
     s0+=11687.0;
     s1+=1090.0;
    }
   }
  } else {
   if(i73<0.9956184029579163){
    if(i3<0.00018769502639770508){
     s0+=198.0;
     s1+=16.0;
    } else {
     s0+=110.0;
     s1+=384.0;
    }
   } else {
    if(i9<1.0005950927734375){
     s0+=405.0;
     s1+=10.0;
    } else {
     s0+=81.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i29<1.2466448545455933){
   s1+=378.0;
  } else {
   if(i3<0.0014472007751464844){
    s0+=87.0;
   } else {
    s1+=54.0;
   }
  }
 }
} else {
 if(i5<-1.4968767573009245e-05){
  if(i20<0.0031356089748442173){
   if(i45<0.022212237119674683){
    if(i67<1.6412619515904225e-05){
     s0+=103.0;
     s1+=1013.0;
    } else {
     s0+=36.0;
     s1+=21.0;
    }
   } else {
    if(i3<0.0009420514106750488){
     s0+=220.0;
     s1+=42.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i10<-0.0006331801414489746){
    if(i26<0.022192109376192093){
     s0+=165.0;
     s1+=154.0;
    } else {
     s0+=96.0;
     s1+=1451.0;
    }
   } else {
    if(i44<-6.675165877823019e-07){
     s0+=47.0;
     s1+=11006.0;
    } else {
     s0+=19.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i35<0.05482262372970581){
   if(i30<0.0006733236368745565){
    if(i65<0.0004714126989711076){
     s0+=16.0;
     s1+=40.0;
    } else {
     s0+=74.0;
     s1+=2.0;
    }
   } else {
    if(i14<0.9984352588653564){
     s0+=7.0;
    } else {
     s0+=24.0;
     s1+=228.0;
    }
   }
  } else {
   if(i71<0.0011644281912595034){
    if(i41<0.001847017090767622){
     s0+=847.0;
     s1+=67.0;
    } else {
     s0+=170.0;
     s1+=102.0;
    }
   } else {
    s1+=21.0;
   }
  }
 }
}
if(i1<0.08356860280036926){
 if(i56<-0.0020640194416046143){
  if(i63<0.008474874310195446){
   if(i0<0.05672180652618408){
    if(i34<1.134328842163086){
     s0+=1146.0;
     s1+=348.0;
    } else {
     s0+=3158.0;
     s1+=35.0;
    }
   } else {
    if(i39<0.026218324899673462){
     s0+=16.0;
     s1+=199.0;
    } else {
     s0+=285.0;
     s1+=94.0;
    }
   }
  } else {
   if(i3<0.0002968311309814453){
    if(i28<0.002084963023662567){
     s0+=365.0;
     s1+=253.0;
    } else {
     s0+=1103.0;
     s1+=139.0;
    }
   } else {
    if(i47<0.00021995720453560352){
     s0+=5.0;
    } else {
     s0+=28.0;
     s1+=451.0;
    }
   }
  }
 } else {
  if(i9<1.0043431520462036){
   if(i22<1.0485899448394775){
    if(i14<1.001875877380371){
     s0+=53679.0;
     s1+=123.0;
    } else {
     s0+=67.0;
     s1+=16.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=2290.0;
     s1+=622.0;
    } else {
     s0+=5893.0;
     s1+=205.0;
    }
   }
  } else {
   if(i41<0.0007436389569193125){
    if(i5<-2.5437730073463172e-05){
     s1+=484.0;
    } else {
     s0+=133.0;
     s1+=7.0;
    }
   } else {
    if(i70<0.0005786980618722737){
     s0+=834.0;
     s1+=36.0;
    } else {
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i5<-1.64135817612987e-05){
  if(i3<0.0005998015403747559){
   if(i33<1.000355839729309){
    if(i33<0.9991744160652161){
     s0+=65.0;
     s1+=30.0;
    } else {
     s0+=133.0;
     s1+=2231.0;
    }
   } else {
    if(i51<-0.00043045281199738383){
     s0+=61.0;
     s1+=461.0;
    } else {
     s0+=367.0;
     s1+=420.0;
    }
   }
  } else {
   if(i5<-4.422387428348884e-05){
    if(i30<0.008826132863759995){
     s0+=82.0;
     s1+=3177.0;
    } else {
     s0+=2.0;
     s1+=7055.0;
    }
   } else {
    if(i10<0.001149594783782959){
     s0+=8.0;
     s1+=124.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i39<0.05342051386833191){
   if(i33<0.9992860555648804){
    s0+=316.0;
   } else {
    if(i26<0.012242501601576805){
     s0+=61.0;
     s1+=28.0;
    } else {
     s0+=62.0;
     s1+=333.0;
    }
   }
  } else {
   if(i14<1.0017064809799194){
    if(i14<0.998566746711731){
     s0+=356.0;
    } else {
     s0+=586.0;
     s1+=136.0;
    }
   } else {
    s1+=29.0;
   }
  }
 }
}
if(i25<1.0088496208190918){
 if(i6<1.0024025440216064){
  if(i43<0.00047748166252858937){
   if(i13<1.009509563446045){
    if(i43<0.00029089220333844423){
     s0+=46632.0;
     s1+=34.0;
    } else {
     s0+=4791.0;
     s1+=297.0;
    }
   } else {
    if(i22<1.078049659729004){
     s1+=30.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i0<0.08238396048545837){
    if(i9<0.9899998307228088){
     s0+=10874.0;
     s1+=276.0;
    } else {
     s0+=5587.0;
     s1+=1291.0;
    }
   } else {
    if(i42<-0.00014135241508483887){
     s0+=318.0;
     s1+=23.0;
    } else {
     s0+=456.0;
     s1+=1843.0;
    }
   }
  }
 } else {
  if(i66<0.0006494498229585588){
   if(i47<0.0009174642618745565){
    if(i53<0.9999122023582458){
     s1+=16.0;
    } else {
     s0+=68.0;
     s1+=2.0;
    }
   } else {
    if(i29<1.2451679706573486){
     s0+=3.0;
     s1+=209.0;
    } else {
     s0+=39.0;
     s1+=17.0;
    }
   }
  } else {
   if(i16<1.4960765838623047e-05){
    if(i42<3.769993782043457e-05){
     s1+=29.0;
    } else {
     s0+=38.0;
     s1+=9.0;
    }
   } else {
    if(i53<1.0007740259170532){
     s0+=47.0;
     s1+=1947.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i9<1.0100910663604736){
  if(i1<0.08518528938293457){
   if(i47<0.0017845870461314917){
    if(i57<0.0015813708305358887){
     s0+=182.0;
     s1+=162.0;
    } else {
     s0+=1258.0;
     s1+=75.0;
    }
   } else {
    if(i45<0.010181665420532227){
     s0+=31.0;
     s1+=161.0;
    } else {
     s0+=86.0;
     s1+=5.0;
    }
   }
  } else {
   if(i35<0.05815565586090088){
    if(i68<-0.010167159140110016){
     s0+=13.0;
     s1+=38.0;
    } else {
     s0+=15.0;
     s1+=974.0;
    }
   } else {
    if(i47<0.0016976783517748117){
     s0+=579.0;
     s1+=328.0;
    } else {
     s0+=61.0;
     s1+=1143.0;
    }
   }
  }
 } else {
  if(i0<0.05871430039405823){
   if(i70<0.00030694331508129835){
    if(i72<1.0027010440826416){
     s1+=6.0;
    } else {
     s0+=54.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i10<0.0009504556655883789){
    if(i5<-2.9943887057015672e-05){
     s0+=8.0;
     s1+=230.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   } else {
    if(i1<0.06427574157714844){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=7857.0;
    }
   }
  }
 }
}
if(i4<3.427267074584961e-05){
 if(i11<1.042873740196228){
  if(i12<1.0433766841888428){
   if(i43<0.0003133065765723586){
    if(i9<1.0058907270431519){
     s0+=45589.0;
     s1+=45.0;
    } else {
     s0+=77.0;
     s1+=13.0;
    }
   } else {
    if(i40<0.0015382535057142377){
     s0+=4607.0;
     s1+=755.0;
    } else {
     s0+=10237.0;
     s1+=57.0;
    }
   }
  } else {
   if(i29<1.1037919521331787){
    if(i0<0.0668371319770813){
     s0+=925.0;
     s1+=307.0;
    } else {
     s0+=68.0;
     s1+=287.0;
    }
   } else {
    if(i28<0.000340731319738552){
     s0+=1305.0;
     s1+=24.0;
    } else {
     s0+=901.0;
     s1+=218.0;
    }
   }
  }
 } else {
  if(i13<1.0106580257415771){
   if(i5<-2.7746635169023648e-05){
    if(i49<0.05761931836605072){
     s0+=837.0;
     s1+=578.0;
    } else {
     s0+=178.0;
     s1+=974.0;
    }
   } else {
    if(i27<1.255998969078064){
     s0+=2623.0;
     s1+=710.0;
    } else {
     s0+=2077.0;
     s1+=101.0;
    }
   }
  } else {
   if(i1<0.08951902389526367){
    if(i12<1.0727198123931885){
     s0+=10.0;
     s1+=101.0;
    } else {
     s0+=341.0;
     s1+=25.0;
    }
   } else {
    if(i5<-3.00410101772286e-05){
     s0+=45.0;
     s1+=978.0;
    } else {
     s0+=198.0;
     s1+=191.0;
    }
   }
  }
 }
} else {
 if(i34<1.0795294046401978){
  s0+=470.0;
 } else {
  if(i15<1.0063261985778809){
   if(i32<0.009627114981412888){
    if(i13<0.9822085499763489){
     s0+=3.0;
     s1+=43.0;
    } else {
     s0+=257.0;
     s1+=122.0;
    }
   } else {
    if(i17<-3.8504600524902344e-05){
     s0+=162.0;
     s1+=959.0;
    } else {
     s0+=25.0;
     s1+=1975.0;
    }
   }
  } else {
   if(i44<-1.4034551895747427e-05){
    if(i70<0.00010028303950093687){
     s0+=1.0;
     s1+=52.0;
    } else {
     s1+=8604.0;
    }
   } else {
    if(i33<1.000254511833191){
     s1+=126.0;
    } else {
     s0+=55.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i8<0.07131022214889526){
 if(i9<1.0061700344085693){
  if(i4<3.904104232788086e-05){
   if(i57<-0.0012702345848083496){
    if(i0<0.056721240282058716){
     s0+=5526.0;
     s1+=598.0;
    } else {
     s0+=302.0;
     s1+=409.0;
    }
   } else {
    if(i62<0.024935413151979446){
     s0+=53004.0;
     s1+=383.0;
    } else {
     s0+=9223.0;
     s1+=858.0;
    }
   }
  } else {
   if(i34<1.0762357711791992){
    s0+=287.0;
   } else {
    if(i34<1.2510931491851807){
     s0+=2.0;
     s1+=239.0;
    } else {
     s0+=154.0;
     s1+=315.0;
    }
   }
  }
 } else {
  if(i44<-1.4140128769213334e-05){
   if(i47<8.372993033844978e-05){
    s0+=4.0;
   } else {
    if(i6<1.0041277408599854){
     s0+=13.0;
     s1+=210.0;
    } else {
     s1+=1238.0;
    }
   }
  } else {
   if(i53<0.9998947381973267){
    if(i13<1.0075275897979736){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=262.0;
    }
   } else {
    if(i3<0.0009631514549255371){
     s0+=532.0;
     s1+=12.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004690587520599365){
  if(i2<0.10606038570404053){
   if(i50<0.05975055694580078){
    if(i22<1.0475884675979614){
     s0+=34.0;
     s1+=10.0;
    } else {
     s0+=30.0;
     s1+=261.0;
    }
   } else {
    if(i26<0.02604440599679947){
     s0+=986.0;
     s1+=154.0;
    } else {
     s0+=191.0;
     s1+=148.0;
    }
   }
  } else {
   if(i58<-0.025945674628019333){
    if(i40<0.010465340688824654){
     s0+=584.0;
     s1+=322.0;
    } else {
     s0+=1.0;
     s1+=340.0;
    }
   } else {
    if(i14<0.9981600642204285){
     s0+=36.0;
    } else {
     s0+=48.0;
     s1+=1340.0;
    }
   }
  }
 } else {
  if(i34<1.2570146322250366){
   if(i29<1.2510931491851807){
    if(i9<1.0021332502365112){
     s0+=46.0;
     s1+=110.0;
    } else {
     s0+=5.0;
     s1+=1007.0;
    }
   } else {
    if(i57<-0.006578594446182251){
     s1+=2.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i32<0.009094174951314926){
    if(i55<1.0008037090301514){
     s0+=2.0;
     s1+=95.0;
    } else {
     s0+=30.0;
     s1+=10.0;
    }
   } else {
    if(i12<1.1223218441009521){
     s0+=46.0;
     s1+=1801.0;
    } else {
     s0+=5.0;
     s1+=6981.0;
    }
   }
  }
 }
}
if(i0<0.08225274085998535){
 if(i16<2.294778823852539e-05){
  if(i12<1.0428826808929443){
   if(i6<1.002563714981079){
    if(i60<0.01048112753778696){
     s0+=43988.0;
     s1+=149.0;
    } else {
     s0+=16425.0;
     s1+=512.0;
    }
   } else {
    if(i36<0.0016343488823622465){
     s1+=37.0;
    } else {
     s0+=53.0;
    }
   }
  } else {
   if(i29<1.103413462638855){
    if(i44<-8.692793926456943e-06){
     s0+=22.0;
     s1+=555.0;
    } else {
     s0+=2428.0;
     s1+=540.0;
    }
   } else {
    if(i71<0.0007114963373169303){
     s0+=4841.0;
     s1+=135.0;
    } else {
     s0+=750.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i67<2.430427230137866e-06){
   if(i34<1.0690243244171143){
    s0+=132.0;
   } else {
    if(i45<0.009012281894683838){
     s0+=10.0;
     s1+=583.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  } else {
   if(i4<1.710653305053711e-05){
    if(i38<-0.010804027318954468){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=404.0;
     s1+=13.0;
    }
   } else {
    if(i45<0.002710014581680298){
     s0+=94.0;
     s1+=255.0;
    } else {
     s0+=225.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i7<-0.00047266483306884766){
  if(i71<0.0007882631034590304){
   if(i29<1.498544454574585){
    s0+=384.0;
   } else {
    if(i14<0.9975858926773071){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.08172670006752014){
    s1+=6.0;
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i32<0.02350486069917679){
   if(i39<0.05200594663619995){
    if(i79<-0.0016255176160484552){
     s0+=92.0;
     s1+=483.0;
    } else {
     s0+=47.0;
     s1+=2755.0;
    }
   } else {
    if(i10<0.0006527900695800781){
     s0+=907.0;
     s1+=414.0;
    } else {
     s0+=32.0;
     s1+=498.0;
    }
   }
  } else {
   if(i69<1.077196657206514e-06){
    if(i36<0.00642284145578742){
     s0+=92.0;
     s1+=1536.0;
    } else {
     s0+=34.0;
     s1+=8449.0;
    }
   } else {
    if(i61<0.0015851855278015137){
     s1+=4.0;
    } else {
     s0+=37.0;
    }
   }
  }
 }
}
if(i2<0.08032220602035522){
 if(i14<1.001869797706604){
  if(i0<0.06630954146385193){
   if(i54<-0.028887540102005005){
    if(i8<0.025642752647399902){
     s0+=2004.0;
     s1+=272.0;
    } else {
     s0+=305.0;
     s1+=245.0;
    }
   } else {
    if(i28<0.0002919345861300826){
     s0+=54145.0;
     s1+=354.0;
    } else {
     s0+=9685.0;
     s1+=548.0;
    }
   }
  } else {
   if(i61<0.01800847053527832){
    if(i45<0.013590514659881592){
     s0+=119.0;
     s1+=568.0;
    } else {
     s0+=200.0;
     s1+=3.0;
    }
   } else {
    if(i21<1.0046195983886719){
     s0+=2142.0;
     s1+=138.0;
    } else {
     s0+=160.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i4<3.731250762939453e-05){
   if(i54<-0.0466194748878479){
    if(i41<0.011469027027487755){
     s0+=12.0;
     s1+=41.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i10<-0.0008121728897094727){
     s0+=514.0;
     s1+=17.0;
    } else {
     s0+=15.0;
     s1+=33.0;
    }
   }
  } else {
   if(i27<1.5682398080825806){
    if(i58<-0.009984515607357025){
     s0+=27.0;
     s1+=20.0;
    } else {
     s0+=25.0;
     s1+=961.0;
    }
   } else {
    if(i64<-0.004776507616043091){
     s0+=1.0;
     s1+=64.0;
    } else {
     s0+=117.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i7<-0.0004030168056488037){
  if(i59<0.00019289688498247415){
   if(i33<0.9987020492553711){
    s0+=362.0;
   } else {
    if(i3<-0.0004886984825134277){
     s0+=75.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i10<-0.0033603012561798096){
    if(i60<0.10849165916442871){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i20<0.001689004828222096){
   if(i38<0.004297792911529541){
    if(i50<0.06784245371818542){
     s0+=14.0;
     s1+=185.0;
    } else {
     s0+=165.0;
     s1+=108.0;
    }
   } else {
    if(i1<0.21605026721954346){
     s0+=372.0;
     s1+=10.0;
    } else {
     s0+=66.0;
     s1+=34.0;
    }
   }
  } else {
   if(i5<-5.099998816149309e-05){
    if(i1<0.13239508867263794){
     s0+=154.0;
     s1+=1326.0;
    } else {
     s0+=17.0;
     s1+=10190.0;
    }
   } else {
    if(i41<0.0023036706261336803){
     s0+=162.0;
     s1+=1416.0;
    } else {
     s0+=370.0;
     s1+=394.0;
    }
   }
  }
 }
}
if(i17<0.0001099705696105957){
 if(i32<0.054501697421073914){
  if(i1<0.0841723084449768){
   if(i3<0.0006022751331329346){
    if(i38<-0.0016159415245056152){
     s0+=3637.0;
     s1+=755.0;
    } else {
     s0+=64070.0;
     s1+=1215.0;
    }
   } else {
    if(i33<0.9996803998947144){
     s0+=53.0;
    } else {
     s0+=147.0;
     s1+=335.0;
    }
   }
  } else {
   if(i14<0.9985139966011047){
    if(i71<0.0010240834672003984){
     s0+=644.0;
     s1+=9.0;
    } else {
     s0+=20.0;
     s1+=10.0;
    }
   } else {
    if(i54<0.06678768992424011){
     s0+=453.0;
     s1+=2636.0;
    } else {
     s0+=774.0;
     s1+=640.0;
    }
   }
  }
 } else {
  if(i6<0.994642972946167){
   s0+=394.0;
  } else {
   if(i24<0.8467264771461487){
    if(i24<0.8445013761520386){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i56<-0.04490917921066284){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=1446.0;
    }
   }
  }
 }
} else {
 if(i1<0.06668129563331604){
  if(i42<0.0001633167266845703){
   if(i50<0.004062086343765259){
    if(i0<0.019923686981201172){
     s0+=25.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   } else {
    if(i7<0.000553429126739502){
     s0+=694.0;
     s1+=17.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i5<-3.854825263260864e-05){
    if(i47<0.0004812664119526744){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=265.0;
    }
   } else {
    if(i54<-0.03761705756187439){
     s1+=1.0;
    } else {
     s0+=109.0;
    }
   }
  }
 } else {
  if(i3<-0.00011017918586730957){
   if(i67<2.3836679247324355e-05){
    s0+=46.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i49<0.04971236363053322){
    if(i10<0.001422286033630371){
     s0+=60.0;
     s1+=558.0;
    } else {
     s1+=2672.0;
    }
   } else {
    if(i7<-1.6570091247558594e-05){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=8.0;
     s1+=6486.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i6<1.0024913549423218){
  if(i22<1.0467959642410278){
   if(i71<0.0002863490954041481){
    if(i57<-0.0014307498931884766){
     s0+=331.0;
     s1+=17.0;
    } else {
     s0+=49250.0;
     s1+=39.0;
    }
   } else {
    if(i36<0.0008715948788449168){
     s0+=844.0;
     s1+=193.0;
    } else {
     s0+=4273.0;
     s1+=19.0;
    }
   }
  } else {
   if(i4<1.2218952178955078e-05){
    if(i31<1.1034480333328247){
     s0+=4496.0;
     s1+=1066.0;
    } else {
     s0+=8538.0;
     s1+=265.0;
    }
   } else {
    if(i29<1.1070735454559326){
     s0+=211.0;
     s1+=347.0;
    } else {
     s0+=951.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i27<1.2392117977142334){
   if(i22<1.0387187004089355){
    s0+=1.0;
   } else {
    s1+=634.0;
   }
  } else {
   if(i27<1.3577580451965332){
    if(i46<0.990248441696167){
     s1+=4.0;
    } else {
     s0+=184.0;
    }
   } else {
    if(i27<1.5682398080825806){
     s0+=20.0;
     s1+=256.0;
    } else {
     s0+=81.0;
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i14<0.9987603425979614){
  if(i42<-0.00013911724090576172){
   if(i32<0.08631443977355957){
    s0+=694.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i49<0.03882371261715889){
    s0+=28.0;
   } else {
    if(i0<0.06382030248641968){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i41<0.0005142990266904235){
   if(i44<-5.3602316256728955e-06){
    if(i67<3.996568011643831e-06){
     s0+=7.0;
    } else {
     s1+=90.0;
    }
   } else {
    if(i44<-3.3810365493991412e-06){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=186.0;
    }
   }
  } else {
   if(i47<0.0010513290762901306){
    if(i64<0.00551152229309082){
     s0+=209.0;
     s1+=1967.0;
    } else {
     s0+=359.0;
     s1+=203.0;
    }
   } else {
    if(i17<-9.670853614807129e-05){
     s0+=358.0;
     s1+=1574.0;
    } else {
     s0+=71.0;
     s1+=10136.0;
    }
   }
  }
 }
}
if(i8<0.07267439365386963){
 if(i0<0.07752105593681335){
  if(i65<0.001569605665281415){
   if(i13<1.0077195167541504){
    if(i23<0.00028298288816586137){
     s0+=51705.0;
     s1+=167.0;
    } else {
     s0+=9907.0;
     s1+=624.0;
    }
   } else {
    if(i44<-1.40999445648049e-05){
     s0+=65.0;
     s1+=210.0;
    } else {
     s0+=485.0;
     s1+=66.0;
    }
   }
  } else {
   if(i59<-2.5244851713068783e-05){
    if(i15<1.004631757736206){
     s0+=2.0;
    } else {
     s1+=139.0;
    }
   } else {
    if(i16<1.7702579498291016e-05){
     s0+=6102.0;
     s1+=853.0;
    } else {
     s0+=397.0;
     s1+=567.0;
    }
   }
  }
 } else {
  if(i74<4.727300620288588e-06){
   if(i43<0.0002667153312359005){
    s0+=31.0;
   } else {
    if(i67<1.8645972886588424e-05){
     s0+=75.0;
     s1+=1921.0;
    } else {
     s0+=39.0;
     s1+=50.0;
    }
   }
  } else {
   if(i16<1.2814998626708984e-05){
    if(i71<0.0009558014571666718){
     s0+=174.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i17<-0.00035706162452697754){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i16<-1.3887882232666016e-05){
  if(i12<1.398578405380249){
   if(i53<1.0000157356262207){
    if(i77<2.9860169888706878e-05){
     s0+=14.0;
     s1+=2.0;
    } else {
     s0+=431.0;
     s1+=4.0;
    }
   } else {
    if(i41<0.0022651944309473038){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   s1+=2.0;
  }
 } else {
  if(i20<0.003225667867809534){
   if(i39<0.0431494414806366){
    if(i2<0.0903143584728241){
     s0+=64.0;
     s1+=83.0;
    } else {
     s0+=5.0;
     s1+=419.0;
    }
   } else {
    if(i5<-5.2077375585213304e-05){
     s0+=20.0;
     s1+=139.0;
    } else {
     s0+=1050.0;
     s1+=287.0;
    }
   }
  } else {
   if(i13<1.015415072441101){
    if(i38<0.003824472427368164){
     s0+=44.0;
     s1+=2464.0;
    } else {
     s0+=364.0;
     s1+=1522.0;
    }
   } else {
    if(i7<-0.00024309754371643066){
     s0+=21.0;
    } else {
     s1+=7680.0;
    }
   }
  }
 }
}
if(i28<0.0003503462648950517){
 if(i13<1.0081751346588135){
  if(i1<0.0828065276145935){
   if(i3<0.0007363557815551758){
    if(i65<0.0016712858341634274){
     s0+=56937.0;
     s1+=480.0;
    } else {
     s0+=991.0;
     s1+=211.0;
    }
   } else {
    if(i42<0.00023427605628967285){
     s0+=21.0;
     s1+=5.0;
    } else {
     s1+=60.0;
    }
   }
  } else {
   if(i33<0.999483585357666){
    if(i66<0.001071101170964539){
     s0+=214.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i3<-0.0006590783596038818){
     s0+=61.0;
    } else {
     s0+=60.0;
     s1+=316.0;
    }
   }
  }
 } else {
  if(i44<-1.6348680219380185e-05){
   if(i74<6.17663226876175e-06){
    if(i6<1.0013010501861572){
     s0+=3.0;
     s1+=16.0;
    } else {
     s1+=641.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   if(i2<0.06480050086975098){
    if(i30<0.0012561297044157982){
     s0+=8.0;
     s1+=46.0;
    } else {
     s0+=321.0;
     s1+=7.0;
    }
   } else {
    if(i62<0.03554924950003624){
     s0+=2.0;
     s1+=207.0;
    } else {
     s0+=9.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i0<0.08514660596847534){
  if(i15<1.0028889179229736){
   if(i6<0.9966084957122803){
    if(i6<0.9954684972763062){
     s0+=4456.0;
     s1+=29.0;
    } else {
     s0+=1258.0;
     s1+=76.0;
    }
   } else {
    if(i58<-0.009201296605169773){
     s0+=1956.0;
     s1+=111.0;
    } else {
     s0+=3137.0;
     s1+=1228.0;
    }
   }
  } else {
   if(i69<-5.314939699019305e-06){
    if(i67<4.127015563426539e-05){
     s0+=22.0;
     s1+=626.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i22<1.0733041763305664){
     s0+=5.0;
     s1+=79.0;
    } else {
     s0+=179.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i7<-0.00041306018829345703){
   if(i59<0.0001641767448745668){
    s0+=333.0;
   } else {
    if(i33<0.9986280202865601){
     s0+=3.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i2<0.1272543966770172){
    if(i68<-0.005187253002077341){
     s0+=613.0;
     s1+=186.0;
    } else {
     s0+=117.0;
     s1+=1922.0;
    }
   } else {
    if(i34<1.318961262702942){
     s0+=290.0;
     s1+=2124.0;
    } else {
     s0+=19.0;
     s1+=8740.0;
    }
   }
  }
 }
}
if(i2<0.07663694024085999){
 if(i63<0.007429388351738453){
  if(i9<1.0060834884643555){
   if(i12<1.0428826808929443){
    if(i2<0.057436466217041016){
     s0+=54874.0;
     s1+=350.0;
    } else {
     s0+=4094.0;
     s1+=248.0;
    }
   } else {
    if(i26<0.017089489847421646){
     s0+=4859.0;
     s1+=247.0;
    } else {
     s0+=1169.0;
     s1+=487.0;
    }
   }
  } else {
   if(i31<1.1170852184295654){
    s1+=412.0;
   } else {
    if(i7<0.001014113426208496){
     s0+=493.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i59<-1.656948370509781e-05){
   if(i54<0.023206889629364014){
    if(i17<0.00021445751190185547){
     s0+=4.0;
     s1+=7.0;
    } else {
     s1+=199.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   if(i14<1.0014851093292236){
    if(i33<0.9992257356643677){
     s0+=1105.0;
     s1+=8.0;
    } else {
     s0+=2276.0;
     s1+=692.0;
    }
   } else {
    if(i17<-0.0003681778907775879){
     s0+=96.0;
     s1+=54.0;
    } else {
     s0+=81.0;
     s1+=439.0;
    }
   }
  }
 }
} else {
 if(i3<0.0001468658447265625){
  if(i6<0.9959948062896729){
   if(i14<0.9977787733078003){
    if(i33<0.9991596937179565){
     s0+=437.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i23<0.014899000525474548){
     s0+=121.0;
     s1+=63.0;
    } else {
     s1+=52.0;
    }
   }
  } else {
   if(i5<-1.0585900781734381e-05){
    if(i64<0.0030909180641174316){
     s0+=85.0;
     s1+=1057.0;
    } else {
     s0+=304.0;
     s1+=629.0;
    }
   } else {
    if(i78<-0.0002811849117279053){
     s0+=186.0;
     s1+=197.0;
    } else {
     s0+=335.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i70<0.00023514122585766017){
   if(i67<2.848161329893628e-06){
    if(i57<0.005305051803588867){
     s0+=20.0;
     s1+=669.0;
    } else {
     s0+=54.0;
     s1+=106.0;
    }
   } else {
    if(i42<5.0008296966552734e-05){
     s1+=53.0;
    } else {
     s0+=115.0;
     s1+=7.0;
    }
   }
  } else {
   if(i15<1.0009586811065674){
    if(i62<0.19704046845436096){
     s0+=212.0;
     s1+=903.0;
    } else {
     s0+=5.0;
     s1+=832.0;
    }
   } else {
    if(i0<0.09826821088790894){
     s0+=41.0;
     s1+=328.0;
    } else {
     s0+=36.0;
     s1+=9142.0;
    }
   }
  }
 }
}
if(i6<1.0024352073669434){
 if(i31<1.0675550699234009){
  if(i46<1.0072851181030273){
   if(i37<1.0111935138702393){
    if(i23<0.00032260792795568705){
     s0+=43556.0;
     s1+=40.0;
    } else {
     s0+=2746.0;
     s1+=138.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i77<0.00032265495974570513){
    s1+=57.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i15<0.9942107796669006){
   if(i12<1.1159639358520508){
    if(i12<1.068556547164917){
     s0+=12062.0;
     s1+=119.0;
    } else {
     s0+=636.0;
     s1+=149.0;
    }
   } else {
    if(i41<0.0038205261807888746){
     s0+=571.0;
     s1+=72.0;
    } else {
     s0+=89.0;
     s1+=471.0;
    }
   }
  } else {
   if(i26<0.023556573316454887){
    if(i2<0.075360506772995){
     s0+=9197.0;
     s1+=883.0;
    } else {
     s0+=787.0;
     s1+=961.0;
    }
   } else {
    if(i0<0.06425520777702332){
     s0+=765.0;
     s1+=465.0;
    } else {
     s0+=341.0;
     s1+=2316.0;
    }
   }
  }
 }
} else {
 if(i6<1.004115104675293){
  if(i22<1.1536800861358643){
   if(i36<0.0025278152897953987){
    if(i47<0.0003892875392921269){
     s0+=30.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=510.0;
    }
   } else {
    if(i32<0.01386968232691288){
     s0+=248.0;
     s1+=39.0;
    } else {
     s0+=26.0;
     s1+=232.0;
    }
   }
  } else {
   if(i5<-4.2408035369589925e-05){
    if(i4<9.101629257202148e-05){
     s0+=3.0;
     s1+=690.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i11<1.1606314182281494){
     s0+=24.0;
     s1+=3.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i17<-0.00045627355575561523){
   if(i76<1.0114281177520752){
    s0+=6.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i6<1.0050907135009766){
    if(i46<0.996715784072876){
     s0+=29.0;
     s1+=193.0;
    } else {
     s0+=5.0;
     s1+=637.0;
    }
   } else {
    if(i0<0.02998441457748413){
     s0+=11.0;
     s1+=54.0;
    } else {
     s0+=6.0;
     s1+=8990.0;
    }
   }
  }
 }
}
if(i14<1.0014021396636963){
 if(i25<1.0081008672714233){
  if(i12<1.0452215671539307){
   if(i43<0.00035603292053565383){
    if(i76<1.0024337768554688){
     s0+=46858.0;
     s1+=61.0;
    } else {
     s0+=258.0;
     s1+=15.0;
    }
   } else {
    if(i31<1.0983617305755615){
     s0+=4524.0;
     s1+=813.0;
    } else {
     s0+=9768.0;
     s1+=86.0;
    }
   }
  } else {
   if(i7<-0.00032192468643188477){
    if(i15<0.9846513271331787){
     s0+=133.0;
     s1+=24.0;
    } else {
     s0+=1616.0;
     s1+=35.0;
    }
   } else {
    if(i5<-2.32589209190337e-05){
     s0+=643.0;
     s1+=1356.0;
    } else {
     s0+=3214.0;
     s1+=887.0;
    }
   }
  }
 } else {
  if(i36<0.006011046469211578){
   if(i17<0.00010091066360473633){
    if(i1<0.07582604885101318){
     s0+=1218.0;
     s1+=152.0;
    } else {
     s0+=715.0;
     s1+=788.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s0+=15.0;
     s1+=831.0;
    } else {
     s0+=207.0;
     s1+=37.0;
    }
   }
  } else {
   if(i2<0.10229763388633728){
    if(i38<-0.00045478343963623047){
     s1+=1.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i47<0.00039096284308470786){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=1148.0;
    }
   }
  }
 }
} else {
 if(i2<0.07242843508720398){
  if(i15<1.0036964416503906){
   if(i65<0.0020091994665563107){
    if(i4<2.8789043426513672e-05){
     s0+=963.0;
     s1+=33.0;
    } else {
     s0+=156.0;
     s1+=64.0;
    }
   } else {
    if(i12<1.044576644897461){
     s0+=114.0;
     s1+=26.0;
    } else {
     s0+=127.0;
     s1+=237.0;
    }
   }
  } else {
   if(i56<0.00491178035736084){
    if(i27<1.0763556957244873){
     s0+=11.0;
    } else {
     s0+=45.0;
     s1+=762.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s1+=11.0;
    } else {
     s0+=27.0;
    }
   }
  }
 } else {
  if(i4<3.999471664428711e-05){
   if(i26<0.036281734704971313){
    if(i68<-0.004269261844456196){
     s0+=197.0;
     s1+=55.0;
    } else {
     s0+=23.0;
     s1+=119.0;
    }
   } else {
    if(i0<0.11893871426582336){
     s0+=38.0;
     s1+=38.0;
    } else {
     s0+=1.0;
     s1+=287.0;
    }
   }
  } else {
   if(i10<3.5643577575683594e-05){
    if(i11<1.123502492904663){
     s0+=109.0;
     s1+=462.0;
    } else {
     s1+=621.0;
    }
   } else {
    if(i70<0.0004186115984339267){
     s0+=17.0;
     s1+=1131.0;
    } else {
     s1+=7127.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i10<0.001141965389251709){
  if(i43<0.0003140369663015008){
   if(i37<1.0109813213348389){
    if(i10<0.0007617473602294922){
     s0+=47227.0;
     s1+=66.0;
    } else {
     s0+=288.0;
     s1+=39.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i7<0.0006092190742492676){
    if(i29<1.103413462638855){
     s0+=5164.0;
     s1+=1430.0;
    } else {
     s0+=16057.0;
     s1+=449.0;
    }
   } else {
    if(i45<-6.681680679321289e-05){
     s0+=211.0;
     s1+=471.0;
    } else {
     s0+=456.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i36<0.0023619416169822216){
   s1+=438.0;
  } else {
   if(i3<0.0010068416595458984){
    if(i48<-0.001724541187286377){
     s1+=2.0;
    } else {
     s0+=116.0;
    }
   } else {
    s1+=68.0;
   }
  }
 }
} else {
 if(i5<-1.2717222489300184e-05){
  if(i1<0.12466564774513245){
   if(i35<0.059781670570373535){
    if(i57<0.00875014066696167){
     s0+=28.0;
     s1+=1935.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.0010551349259912968){
     s0+=27.0;
     s1+=113.0;
    } else {
     s0+=395.0;
     s1+=105.0;
    }
   }
  } else {
   if(i27<1.0762357711791992){
    s0+=10.0;
   } else {
    if(i41<0.0005819114157930017){
     s0+=39.0;
     s1+=28.0;
    } else {
     s0+=148.0;
     s1+=11458.0;
    }
   }
  }
 } else {
  if(i68<-0.003275927621871233){
   if(i4<4.0590763092041016e-05){
    if(i39<0.04179409146308899){
     s0+=31.0;
     s1+=33.0;
    } else {
     s0+=714.0;
     s1+=57.0;
    }
   } else {
    s1+=36.0;
   }
  } else {
   if(i4<-5.570054054260254e-05){
    s0+=158.0;
   } else {
    if(i27<1.082772970199585){
     s0+=36.0;
    } else {
     s0+=57.0;
     s1+=245.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i63<0.007392185740172863){
  if(i43<0.0002775489410851151){
   if(i24<1.008404016494751){
    if(i19<1.0024374723434448){
     s0+=45161.0;
     s1+=26.0;
    } else {
     s0+=261.0;
     s1+=4.0;
    }
   } else {
    if(i15<1.0023815631866455){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=67.0;
    }
   }
  } else {
   if(i29<1.1152933835983276){
    if(i14<1.0004920959472656){
     s0+=5748.0;
     s1+=757.0;
    } else {
     s0+=81.0;
     s1+=575.0;
    }
   } else {
    if(i41<0.0018776513170450926){
     s0+=2695.0;
     s1+=81.0;
    } else {
     s0+=11505.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i16<1.7583370208740234e-05){
   if(i43<0.0028551588766276836){
    if(i42<-3.421306610107422e-05){
     s0+=833.0;
     s1+=85.0;
    } else {
     s0+=791.0;
     s1+=529.0;
    }
   } else {
    if(i74<-3.0384978799702367e-07){
     s0+=118.0;
     s1+=36.0;
    } else {
     s0+=1619.0;
     s1+=67.0;
    }
   }
  } else {
   if(i55<1.0020556449890137){
    if(i1<0.032992005348205566){
     s0+=54.0;
     s1+=140.0;
    } else {
     s0+=10.0;
     s1+=459.0;
    }
   } else {
    if(i52<0.9935915470123291){
     s0+=54.0;
     s1+=70.0;
    } else {
     s0+=111.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i42<-0.0001392960548400879){
  if(i29<1.5349140167236328){
   if(i19<1.0002458095550537){
    if(i5<-4.438096220837906e-05){
     s0+=12.0;
     s1+=25.0;
    } else {
     s0+=708.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i17<-0.0002925693988800049){
    s0+=6.0;
   } else {
    s1+=93.0;
   }
  }
 } else {
  if(i17<6.514787673950195e-05){
   if(i1<0.1231350302696228){
    if(i0<0.08354610204696655){
     s0+=157.0;
     s1+=45.0;
    } else {
     s0+=685.0;
     s1+=1205.0;
    }
   } else {
    if(i20<0.0017094442155212164){
     s0+=198.0;
     s1+=85.0;
    } else {
     s0+=171.0;
     s1+=2745.0;
    }
   }
  } else {
   if(i3<0.0001208186149597168){
    if(i27<1.2604451179504395){
     s1+=82.0;
    } else {
     s0+=47.0;
     s1+=21.0;
    }
   } else {
    if(i36<0.0038607800379395485){
     s0+=51.0;
     s1+=1871.0;
    } else {
     s1+=7967.0;
    }
   }
  }
 }
}
if(i19<1.0025970935821533){
 if(i37<1.0107691287994385){
  if(i2<0.07831886410713196){
   if(i26<0.01444937102496624){
    if(i27<1.0850647687911987){
     s0+=36320.0;
    } else {
     s0+=19487.0;
     s1+=566.0;
    }
   } else {
    if(i27<1.100754976272583){
     s0+=2428.0;
     s1+=958.0;
    } else {
     s0+=8635.0;
     s1+=335.0;
    }
   }
  } else {
   if(i5<-4.87464785692282e-06){
    if(i58<-0.016244597733020782){
     s0+=233.0;
     s1+=403.0;
    } else {
     s0+=121.0;
     s1+=1011.0;
    }
   } else {
    if(i7<-0.0003681182861328125){
     s0+=351.0;
     s1+=1.0;
    } else {
     s0+=242.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i40<0.010073242709040642){
   if(i34<1.1750470399856567){
    if(i15<1.0002286434173584){
     s0+=284.0;
     s1+=280.0;
    } else {
     s0+=37.0;
     s1+=643.0;
    }
   } else {
    if(i1<0.10842305421829224){
     s0+=1071.0;
     s1+=82.0;
    } else {
     s0+=388.0;
     s1+=856.0;
    }
   }
  } else {
   if(i9<0.9738421440124512){
    s0+=10.0;
   } else {
    if(i26<0.003772384487092495){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=1228.0;
    }
   }
  }
 }
} else {
 if(i4<3.427267074584961e-05){
  if(i6<0.998481035232544){
   if(i39<0.06607037782669067){
    if(i50<0.07766219973564148){
     s0+=723.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i50<0.08338958024978638){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  } else {
   if(i32<0.024379249662160873){
    if(i8<0.097933828830719){
     s0+=428.0;
     s1+=140.0;
    } else {
     s0+=30.0;
     s1+=94.0;
    }
   } else {
    if(i25<0.9142869114875793){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=20.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i20<0.0022130534052848816){
   if(i33<1.0009424686431885){
    if(i3<0.0009688138961791992){
     s0+=116.0;
     s1+=17.0;
    } else {
     s1+=28.0;
    }
   } else {
    s1+=92.0;
   }
  } else {
   if(i21<1.004110336303711){
    if(i2<0.10977950692176819){
     s0+=139.0;
     s1+=504.0;
    } else {
     s0+=9.0;
     s1+=1263.0;
    }
   } else {
    if(i17<-3.88026237487793e-05){
     s0+=11.0;
     s1+=134.0;
    } else {
     s0+=4.0;
     s1+=8047.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i13<1.0081751346588135){
  if(i2<0.08033168315887451){
   if(i45<-0.005851387977600098){
    if(i1<0.0376259982585907){
     s0+=3107.0;
     s1+=356.0;
    } else {
     s0+=544.0;
     s1+=340.0;
    }
   } else {
    if(i26<0.01690123789012432){
     s0+=56818.0;
     s1+=435.0;
    } else {
     s0+=7491.0;
     s1+=770.0;
    }
   }
  } else {
   if(i7<-0.0003681182861328125){
    if(i70<0.000576732971239835){
     s0+=302.0;
     s1+=2.0;
    } else {
     s0+=99.0;
     s1+=13.0;
    }
   } else {
    if(i50<0.06343171000480652){
     s0+=18.0;
     s1+=769.0;
    } else {
     s0+=713.0;
     s1+=984.0;
    }
   }
  }
 } else {
  if(i53<0.9998853802680969){
   if(i5<-2.6745943614514545e-05){
    if(i0<0.06165969371795654){
     s0+=29.0;
     s1+=37.0;
    } else {
     s0+=7.0;
     s1+=1124.0;
    }
   } else {
    if(i41<0.004952280316501856){
     s0+=304.0;
     s1+=28.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i53<1.0000300407409668){
    if(i29<1.1132631301879883){
     s1+=88.0;
    } else {
     s0+=602.0;
     s1+=156.0;
    }
   } else {
    if(i30<0.004831037484109402){
     s0+=171.0;
     s1+=192.0;
    } else {
     s0+=3.0;
     s1+=240.0;
    }
   }
  }
 }
} else {
 if(i43<0.00028327599284239113){
  if(i48<0.0012565255165100098){
   if(i33<1.000946283340454){
    s0+=284.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i30<0.0018518404103815556){
    s1+=46.0;
   } else {
    s0+=6.0;
   }
  }
 } else {
  if(i8<0.08088994026184082){
   if(i19<0.997627317905426){
    if(i20<0.004016407765448093){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i10<-0.0007997751235961914){
     s0+=139.0;
     s1+=179.0;
    } else {
     s0+=143.0;
     s1+=2077.0;
    }
   }
  } else {
   if(i2<0.1316651701927185){
    if(i54<0.059571146965026855){
     s0+=20.0;
     s1+=614.0;
    } else {
     s0+=81.0;
     s1+=49.0;
    }
   } else {
    if(i36<0.000594806915614754){
     s0+=2.0;
    } else {
     s0+=22.0;
     s1+=8740.0;
    }
   }
  }
 }
}
if(i10<0.0009575486183166504){
 if(i2<0.08135956525802612){
  if(i6<1.0024776458740234){
   if(i63<0.007702099159359932){
    if(i27<1.0856719017028809){
     s0+=37432.0;
    } else {
     s0+=28223.0;
     s1+=1428.0;
    }
   } else {
    if(i19<1.0003821849822998){
     s0+=3015.0;
     s1+=511.0;
    } else {
     s0+=392.0;
     s1+=321.0;
    }
   }
  } else {
   if(i30<0.001984504982829094){
    if(i20<0.0010501017095521092){
     s0+=4.0;
    } else {
     s1+=187.0;
    }
   } else {
    if(i63<0.009434893727302551){
     s0+=89.0;
     s1+=33.0;
    } else {
     s0+=26.0;
     s1+=204.0;
    }
   }
  }
 } else {
  if(i36<0.005209856666624546){
   if(i27<1.255998969078064){
    if(i27<1.0835556983947754){
     s0+=160.0;
    } else {
     s0+=398.0;
     s1+=1749.0;
    }
   } else {
    if(i42<0.00014206767082214355){
     s0+=583.0;
     s1+=63.0;
    } else {
     s0+=258.0;
     s1+=374.0;
    }
   }
  } else {
   if(i26<0.022115956991910934){
    if(i38<0.00676080584526062){
     s0+=25.0;
     s1+=127.0;
    } else {
     s0+=100.0;
     s1+=31.0;
    }
   } else {
    if(i43<0.013617402873933315){
     s0+=77.0;
     s1+=1044.0;
    } else {
     s0+=6.0;
     s1+=1360.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041344165802002){
  if(i5<-4.3508691305760294e-05){
   if(i14<0.9987049102783203){
    s0+=61.0;
   } else {
    if(i47<0.0002017177757807076){
     s0+=21.0;
     s1+=22.0;
    } else {
     s0+=27.0;
     s1+=975.0;
    }
   }
  } else {
   if(i42<5.7697296142578125e-05){
    if(i3<0.0005658864974975586){
     s0+=2.0;
     s1+=70.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s1+=22.0;
    } else {
     s0+=232.0;
     s1+=5.0;
    }
   }
  }
 } else {
  s1+=8590.0;
 }
}
if(i10<0.0007812380790710449){
 if(i26<0.027812175452709198){
  if(i1<0.08179634809494019){
   if(i66<0.0007146063726395369){
    if(i33<1.0004099607467651){
     s0+=54544.0;
     s1+=254.0;
    } else {
     s0+=4476.0;
     s1+=394.0;
    }
   } else {
    if(i42<-3.8295984268188477e-05){
     s0+=2903.0;
     s1+=88.0;
    } else {
     s0+=2038.0;
     s1+=755.0;
    }
   }
  } else {
   if(i38<0.004221409559249878){
    if(i33<0.999285101890564){
     s0+=449.0;
     s1+=11.0;
    } else {
     s0+=355.0;
     s1+=1062.0;
    }
   } else {
    if(i14<1.003354787826538){
     s0+=902.0;
     s1+=159.0;
    } else {
     s0+=26.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i18<1.0334810018539429){
   if(i46<0.9827705025672913){
    if(i2<0.07772496342658997){
     s0+=3427.0;
     s1+=158.0;
    } else {
     s0+=16.0;
     s1+=245.0;
    }
   } else {
    if(i6<0.9970391988754272){
     s0+=247.0;
     s1+=19.0;
    } else {
     s0+=128.0;
     s1+=704.0;
    }
   }
  } else {
   if(i5<-1.0083805136673618e-05){
    if(i8<0.08115383982658386){
     s0+=312.0;
     s1+=481.0;
    } else {
     s0+=126.0;
     s1+=2590.0;
    }
   } else {
    if(i29<1.255998969078064){
     s0+=184.0;
     s1+=143.0;
    } else {
     s0+=329.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i12<1.0385410785675049){
  if(i10<0.0016236305236816406){
   if(i27<1.1386182308197021){
    if(i9<1.0049861669540405){
     s0+=9.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i71<0.00023123508435674012){
     s0+=285.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   s1+=16.0;
  }
 } else {
  if(i2<0.058522045612335205){
   if(i6<1.0041911602020264){
    if(i27<1.1386182308197021){
     s1+=114.0;
    } else {
     s0+=240.0;
     s1+=1.0;
    }
   } else {
    s1+=294.0;
   }
  } else {
   if(i16<-1.3887882232666016e-05){
    s0+=18.0;
   } else {
    if(i20<0.0024746833369135857){
     s0+=69.0;
     s1+=330.0;
    } else {
     s0+=7.0;
     s1+=9292.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i9<1.0060200691223145){
  if(i66<0.0007826684741303325){
   if(i24<1.0071910619735718){
    if(i62<0.024949900805950165){
     s0+=52935.0;
     s1+=173.0;
    } else {
     s0+=6548.0;
     s1+=496.0;
    }
   } else {
    if(i34<1.1040980815887451){
     s0+=476.0;
     s1+=306.0;
    } else {
     s0+=1367.0;
     s1+=72.0;
    }
   }
  } else {
   if(i54<0.0042473673820495605){
    if(i4<2.0444393157958984e-05){
     s0+=2690.0;
     s1+=740.0;
    } else {
     s0+=42.0;
     s1+=382.0;
    }
   } else {
    if(i23<0.0016858591698110104){
     s0+=915.0;
     s1+=228.0;
    } else {
     s0+=3646.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i40<0.0015614902367815375){
   if(i7<0.0005848407745361328){
    if(i63<0.0004929366405121982){
     s0+=12.0;
     s1+=23.0;
    } else {
     s0+=12.0;
     s1+=213.0;
    }
   } else {
    s1+=529.0;
   }
  } else {
   if(i33<1.0012664794921875){
    if(i34<1.3712366819381714){
     s0+=593.0;
     s1+=8.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   } else {
    s1+=90.0;
   }
  }
 }
} else {
 if(i5<-1.641866947466042e-05){
  if(i51<-0.00014174351235851645){
   if(i14<0.9980716705322266){
    if(i17<-0.00029540061950683594){
     s1+=5.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i20<0.0022880786564201117){
     s0+=146.0;
     s1+=385.0;
    } else {
     s0+=139.0;
     s1+=11740.0;
    }
   }
  } else {
   if(i3<0.0008277297019958496){
    if(i27<1.2392117977142334){
     s0+=11.0;
     s1+=320.0;
    } else {
     s0+=298.0;
     s1+=213.0;
    }
   } else {
    if(i38<0.007225096225738525){
     s0+=1.0;
     s1+=697.0;
    } else {
     s0+=18.0;
     s1+=66.0;
    }
   }
  }
 } else {
  if(i27<1.255998969078064){
   if(i36<0.0007725541945546865){
    if(i41<0.0005218145670369267){
     s0+=364.0;
     s1+=15.0;
    } else {
     s0+=40.0;
     s1+=89.0;
    }
   } else {
    if(i54<0.07195419073104858){
     s0+=71.0;
     s1+=247.0;
    } else {
     s0+=131.0;
     s1+=77.0;
    }
   }
  } else {
   if(i56<-0.008722424507141113){
    if(i71<0.0011334973387420177){
     s0+=19.0;
     s1+=1.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i66<0.003352933097630739){
     s0+=497.0;
     s1+=10.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i14<1.0019071102142334){
  if(i27<1.0850647687911987){
   s0+=37812.0;
  } else {
   if(i1<0.08370932936668396){
    if(i12<1.0398929119110107){
     s0+=22519.0;
     s1+=518.0;
    } else {
     s0+=4366.0;
     s1+=813.0;
    }
   } else {
    if(i16<-1.1861324310302734e-05){
     s0+=125.0;
     s1+=22.0;
    } else {
     s0+=94.0;
     s1+=666.0;
    }
   }
  }
 } else {
  if(i4<2.574920654296875e-05){
   if(i32<0.03857346251606941){
    if(i36<0.003077759873121977){
     s0+=16.0;
     s1+=18.0;
    } else {
     s0+=284.0;
     s1+=4.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i23<0.00016300984134431928){
    s0+=16.0;
   } else {
    if(i10<-0.002972543239593506){
     s0+=21.0;
     s1+=10.0;
    } else {
     s0+=16.0;
     s1+=694.0;
    }
   }
  }
 }
} else {
 if(i0<0.08540502190589905){
  if(i5<-4.63382457382977e-05){
   if(i34<1.2360035181045532){
    if(i7<-0.0003936290740966797){
     s0+=18.0;
    } else {
     s0+=15.0;
     s1+=482.0;
    }
   } else {
    if(i45<-0.0003584623336791992){
     s0+=103.0;
     s1+=329.0;
    } else {
     s0+=411.0;
     s1+=33.0;
    }
   }
  } else {
   if(i68<-0.0032036215998232365){
    if(i73<0.9016655087471008){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=1660.0;
     s1+=17.0;
    }
   } else {
    if(i40<0.0015608624089509249){
     s0+=1098.0;
     s1+=486.0;
    } else {
     s0+=1318.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i42<-0.00025263428688049316){
   if(i40<0.03094790130853653){
    s0+=282.0;
   } else {
    s1+=32.0;
   }
  } else {
   if(i2<0.12535446882247925){
    if(i35<0.06591171026229858){
     s0+=84.0;
     s1+=1687.0;
    } else {
     s0+=597.0;
     s1+=219.0;
    }
   } else {
    if(i4<3.653764724731445e-05){
     s0+=351.0;
     s1+=1847.0;
    } else {
     s0+=31.0;
     s1+=9029.0;
    }
   }
  }
 }
}
if(i26<0.0227319598197937){
 if(i59<-1.9830178644042462e-05){
  if(i6<1.0041450262069702){
   if(i76<1.0006682872772217){
    if(i11<1.0218415260314941){
     s0+=2.0;
    } else {
     s1+=243.0;
    }
   } else {
    if(i1<0.10203772783279419){
     s0+=72.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   }
  } else {
   s1+=1159.0;
  }
 } else {
  if(i0<0.07815349102020264){
   if(i6<1.0025405883789062){
    if(i37<0.9765716791152954){
     s0+=1243.0;
     s1+=258.0;
    } else {
     s0+=61436.0;
     s1+=827.0;
    }
   } else {
    if(i44<-1.3752664017374627e-05){
     s0+=59.0;
     s1+=371.0;
    } else {
     s0+=89.0;
     s1+=13.0;
    }
   }
  } else {
   if(i9<1.0048021078109741){
    if(i18<1.0593935251235962){
     s0+=546.0;
     s1+=644.0;
    } else {
     s0+=653.0;
     s1+=144.0;
    }
   } else {
    if(i17<0.00010192394256591797){
     s0+=140.0;
     s1+=201.0;
    } else {
     s0+=7.0;
     s1+=875.0;
    }
   }
  }
 }
} else {
 if(i17<-0.00022298097610473633){
  if(i11<1.0656979084014893){
   if(i1<0.12090757489204407){
    if(i20<0.022676322609186172){
     s0+=4768.0;
     s1+=77.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i44<-2.5273025130445603e-06){
     s0+=3.0;
     s1+=83.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   }
  } else {
   if(i41<0.0036894874647259712){
    if(i6<1.000775933265686){
     s0+=288.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i53<1.0006850957870483){
     s0+=67.0;
     s1+=683.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.06156271696090698){
   if(i42<-3.191828727722168e-05){
    if(i27<1.1714286804199219){
     s0+=294.0;
     s1+=4.0;
    } else {
     s0+=138.0;
     s1+=38.0;
    }
   } else {
    if(i51<-0.0002786199329420924){
     s0+=209.0;
     s1+=111.0;
    } else {
     s0+=265.0;
     s1+=692.0;
    }
   }
  } else {
   if(i7<-0.0004245340824127197){
    s0+=102.0;
   } else {
    if(i5<-9.606358617020305e-06){
     s0+=205.0;
     s1+=10786.0;
    } else {
     s0+=196.0;
     s1+=192.0;
    }
   }
  }
 }
}
if(i2<0.07832252979278564){
 if(i3<0.000616908073425293){
  if(i2<0.06248405575752258){
   if(i38<-0.001634448766708374){
    if(i2<0.03637874126434326){
     s0+=3264.0;
     s1+=386.0;
    } else {
     s0+=409.0;
     s1+=283.0;
    }
   } else {
    if(i11<1.0410068035125732){
     s0+=58253.0;
     s1+=464.0;
    } else {
     s0+=3797.0;
     s1+=377.0;
    }
   }
  } else {
   if(i50<0.040510714054107666){
    if(i3<-0.0008712112903594971){
     s0+=70.0;
    } else {
     s0+=17.0;
     s1+=321.0;
    }
   } else {
    if(i61<0.021303772926330566){
     s0+=495.0;
     s1+=236.0;
    } else {
     s0+=2562.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i44<-1.4100647604209371e-05){
   if(i17<6.735324859619141e-06){
    if(i45<-0.018447190523147583){
     s0+=9.0;
     s1+=144.0;
    } else {
     s0+=124.0;
     s1+=88.0;
    }
   } else {
    if(i59<0.00013886028318665922){
     s0+=2.0;
     s1+=822.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  } else {
   if(i47<0.001912388252094388){
    if(i74<4.179973984719254e-07){
     s0+=164.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i70<0.0015240446664392948){
     s1+=28.0;
    } else {
     s0+=23.0;
    }
   }
  }
 }
} else {
 if(i42<-0.00025019049644470215){
  if(i47<0.0032808855175971985){
   if(i14<0.9980716705322266){
    s0+=396.0;
   } else {
    s1+=2.0;
   }
  } else {
   s1+=34.0;
  }
 } else {
  if(i46<1.0106556415557861){
   if(i19<1.0034198760986328){
    if(i71<0.00033516730763949454){
     s0+=851.0;
     s1+=970.0;
    } else {
     s0+=368.0;
     s1+=1643.0;
    }
   } else {
    if(i0<0.12589031457901){
     s0+=90.0;
     s1+=443.0;
    } else {
     s0+=19.0;
     s1+=2061.0;
    }
   }
  } else {
   if(i55<0.9998636245727539){
    if(i20<0.0030170816462486982){
     s0+=15.0;
     s1+=406.0;
    } else {
     s0+=1.0;
     s1+=6729.0;
    }
   } else {
    if(i47<0.0008817229536361992){
     s0+=118.0;
     s1+=40.0;
    } else {
     s0+=5.0;
     s1+=1585.0;
    }
   }
  }
 }
}
if(i2<0.07745698094367981){
 if(i6<1.0024913549423218){
  if(i12<1.0449585914611816){
   if(i65<0.0015185982920229435){
    if(i0<0.08251306414604187){
     s0+=57764.0;
     s1+=380.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   } else {
    if(i21<0.9688250422477722){
     s0+=1780.0;
     s1+=16.0;
    } else {
     s0+=2139.0;
     s1+=389.0;
    }
   }
  } else {
   if(i34<1.1037919521331787){
    if(i41<0.0005124336457811296){
     s0+=1596.0;
     s1+=244.0;
    } else {
     s0+=184.0;
     s1+=713.0;
    }
   } else {
    if(i5<-5.662638432113454e-05){
     s0+=369.0;
     s1+=212.0;
    } else {
     s0+=5111.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i34<1.2314128875732422){
   if(i30<0.000306054629618302){
    s0+=2.0;
   } else {
    s1+=806.0;
   }
  } else {
   if(i52<1.0007588863372803){
    if(i77<5.178168066777289e-05){
     s0+=20.0;
     s1+=22.0;
    } else {
     s0+=26.0;
     s1+=245.0;
    }
   } else {
    if(i4<9.34600830078125e-05){
     s0+=225.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i7<-0.00038570165634155273){
  if(i19<0.9968217015266418){
   if(i53<0.9997918605804443){
    if(i7<-0.00041043758392333984){
     s0+=425.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i66<0.0006698083598166704){
     s0+=37.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i61<0.023378700017929077){
    s1+=8.0;
   } else {
    s0+=39.0;
   }
  }
 } else {
  if(i1<0.12170520424842834){
   if(i39<0.050096988677978516){
    if(i50<0.06309866905212402){
     s0+=46.0;
     s1+=1475.0;
    } else {
     s0+=168.0;
     s1+=400.0;
    }
   } else {
    if(i45<0.014416813850402832){
     s0+=243.0;
     s1+=214.0;
    } else {
     s0+=575.0;
     s1+=28.0;
    }
   }
  } else {
   if(i4<3.641843795776367e-05){
    if(i70<0.00023525446886196733){
     s0+=230.0;
     s1+=297.0;
    } else {
     s0+=112.0;
     s1+=1729.0;
    }
   } else {
    if(i0<0.1274895966053009){
     s0+=23.0;
     s1+=168.0;
    } else {
     s0+=30.0;
     s1+=9462.0;
    }
   }
  }
 }
}
if(i2<0.07719448208808899){
 if(i4<3.904104232788086e-05){
  if(i11<1.0398929119110107){
   if(i65<0.0019798099528998137){
    if(i0<0.07645782828330994){
     s0+=59078.0;
     s1+=478.0;
    } else {
     s0+=130.0;
     s1+=70.0;
    }
   } else {
    if(i31<1.1331791877746582){
     s0+=1283.0;
     s1+=430.0;
    } else {
     s0+=2307.0;
     s1+=94.0;
    }
   }
  } else {
   if(i45<0.009260445833206177){
    if(i36<0.0002943938015960157){
     s0+=1172.0;
    } else {
     s0+=3174.0;
     s1+=1006.0;
    }
   } else {
    if(i17<0.00013828277587890625){
     s0+=1798.0;
     s1+=37.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<1.0016140937805176){
   if(i47<0.005943743046373129){
    if(i57<-0.006190508604049683){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=256.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i30<0.0024525211192667484){
    if(i23<0.0001255013921763748){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=715.0;
    }
   } else {
    if(i65<0.0025264048017561436){
     s0+=188.0;
     s1+=44.0;
    } else {
     s0+=46.0;
     s1+=329.0;
    }
   }
  }
 }
} else {
 if(i6<1.0013688802719116){
  if(i7<-0.0003826320171356201){
   if(i41<0.0017664964543655515){
    s0+=423.0;
   } else {
    if(i22<1.095665454864502){
     s0+=67.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i45<0.01605084538459778){
    if(i5<-1.2574806532938965e-05){
     s0+=105.0;
     s1+=1783.0;
    } else {
     s0+=231.0;
     s1+=215.0;
    }
   } else {
    if(i26<0.03314680606126785){
     s0+=698.0;
     s1+=128.0;
    } else {
     s0+=151.0;
     s1+=669.0;
    }
   }
  }
 } else {
  if(i0<0.09357234835624695){
   if(i39<0.04191809892654419){
    if(i45<0.014506816864013672){
     s0+=4.0;
     s1+=270.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i72<1.010793924331665){
     s0+=8.0;
     s1+=18.0;
    } else {
     s0+=67.0;
     s1+=4.0;
    }
   }
  } else {
   if(i15<1.0011277198791504){
    if(i8<0.1607740819454193){
     s0+=82.0;
     s1+=415.0;
    } else {
     s0+=1.0;
     s1+=902.0;
    }
   } else {
    if(i4<9.357929229736328e-06){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=52.0;
     s1+=9273.0;
    }
   }
  }
 }
}
if(i4<3.7729740142822266e-05){
 if(i11<1.0452277660369873){
  if(i56<-0.0017009973526000977){
   if(i8<0.041681259870529175){
    if(i30<0.0009913304820656776){
     s0+=1697.0;
     s1+=409.0;
    } else {
     s0+=3756.0;
     s1+=116.0;
    }
   } else {
    if(i74<6.440652214223519e-06){
     s0+=410.0;
     s1+=529.0;
    } else {
     s0+=333.0;
     s1+=19.0;
    }
   }
  } else {
   if(i11<1.0375123023986816){
    if(i22<1.0487468242645264){
     s0+=50193.0;
     s1+=83.0;
    } else {
     s0+=4770.0;
     s1+=352.0;
    }
   } else {
    if(i8<0.05231019854545593){
     s0+=2813.0;
     s1+=123.0;
    } else {
     s0+=734.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i1<0.08946463465690613){
   if(i34<1.1037919521331787){
    if(i32<0.011415520682930946){
     s0+=942.0;
     s1+=223.0;
    } else {
     s0+=81.0;
     s1+=371.0;
    }
   } else {
    if(i52<0.9408062696456909){
     s0+=197.0;
     s1+=102.0;
    } else {
     s0+=3042.0;
     s1+=179.0;
    }
   }
  } else {
   if(i44<2.7564465199247934e-06){
    if(i32<0.023419316858053207){
     s0+=776.0;
     s1+=1199.0;
    } else {
     s0+=126.0;
     s1+=1521.0;
    }
   } else {
    if(i55<1.0002553462982178){
     s0+=304.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i33<0.9990397691726685){
  if(i79<-0.011249477975070477){
   s1+=6.0;
  } else {
   s0+=317.0;
  }
 } else {
  if(i1<0.06264051795005798){
   if(i65<0.0019831215031445026){
    if(i31<1.1353518962860107){
     s0+=5.0;
     s1+=85.0;
    } else {
     s0+=145.0;
     s1+=5.0;
    }
   } else {
    if(i55<1.0027689933776855){
     s0+=31.0;
     s1+=340.0;
    } else {
     s0+=33.0;
     s1+=20.0;
    }
   }
  } else {
   if(i32<0.020760778337717056){
    if(i15<1.0014820098876953){
     s0+=126.0;
     s1+=162.0;
    } else {
     s0+=78.0;
     s1+=2270.0;
    }
   } else {
    if(i59<0.00011607958003878593){
     s0+=3.0;
     s1+=7375.0;
    } else {
     s0+=11.0;
     s1+=1496.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i4<3.8683414459228516e-05){
  if(i26<0.02196298912167549){
   if(i23<0.0003021448210347444){
    if(i0<0.08843863010406494){
     s0+=52528.0;
     s1+=209.0;
    } else {
     s0+=31.0;
     s1+=24.0;
    }
   } else {
    if(i1<0.07419165968894958){
     s0+=8876.0;
     s1+=622.0;
    } else {
     s0+=1224.0;
     s1+=440.0;
    }
   }
  } else {
   if(i9<0.9896225333213806){
    if(i22<1.0732567310333252){
     s0+=3521.0;
     s1+=12.0;
    } else {
     s0+=1986.0;
     s1+=508.0;
    }
   } else {
    if(i26<0.034086890518665314){
     s0+=903.0;
     s1+=762.0;
    } else {
     s0+=206.0;
     s1+=1096.0;
    }
   }
  }
 } else {
  if(i53<0.9992445707321167){
   s0+=297.0;
  } else {
   if(i32<0.023269038647413254){
    if(i31<1.1767113208770752){
     s0+=19.0;
     s1+=467.0;
    } else {
     s0+=217.0;
     s1+=174.0;
    }
   } else {
    if(i13<1.0062382221221924){
     s1+=1646.0;
    } else {
     s0+=3.0;
     s1+=99.0;
    }
   }
  }
 }
} else {
 if(i19<1.0028750896453857){
  if(i1<0.09038370847702026){
   if(i29<1.0950405597686768){
    if(i6<0.9999388456344604){
     s0+=17.0;
     s1+=8.0;
    } else {
     s0+=14.0;
     s1+=257.0;
    }
   } else {
    if(i47<0.002146926010027528){
     s0+=834.0;
     s1+=77.0;
    } else {
     s0+=2.0;
     s1+=35.0;
    }
   }
  } else {
   if(i71<-3.037918941117823e-05){
    if(i7<-0.0005112588405609131){
     s0+=8.0;
    } else {
     s0+=43.0;
     s1+=1634.0;
    }
   } else {
    if(i36<0.005693018902093172){
     s0+=223.0;
     s1+=461.0;
    } else {
     s0+=24.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i44<-1.4933129932614975e-05){
   if(i4<3.784894943237305e-05){
    if(i29<1.2582037448883057){
     s0+=19.0;
     s1+=41.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i44<-1.7416401533409953e-05){
     s1+=7677.0;
    } else {
     s0+=1.0;
     s1+=135.0;
    }
   }
  } else {
   if(i0<0.11679098010063171){
    if(i27<1.2160128355026245){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=108.0;
     s1+=1.0;
    }
   } else {
    if(i53<0.9999022483825684){
     s1+=125.0;
    } else {
     s0+=27.0;
     s1+=28.0;
    }
   }
  }
 }
}
if(i2<0.0790795385837555){
 if(i7<0.0005408525466918945){
  if(i31<1.0556960105895996){
   if(i43<0.000529973884113133){
    s0+=41550.0;
   } else {
    if(i42<5.513429641723633e-05){
     s0+=1425.0;
    } else {
     s0+=58.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<0.06599608063697815){
    if(i40<0.0013443713542073965){
     s0+=7763.0;
     s1+=1120.0;
    } else {
     s0+=16156.0;
     s1+=276.0;
    }
   } else {
    if(i36<0.0008786878315731883){
     s0+=349.0;
     s1+=560.0;
    } else {
     s0+=1229.0;
     s1+=187.0;
    }
   }
  }
 } else {
  if(i15<1.0002219676971436){
   if(i47<0.005761646665632725){
    if(i17<-0.0003324151039123535){
     s0+=481.0;
     s1+=10.0;
    } else {
     s0+=326.0;
     s1+=117.0;
    }
   } else {
    if(i6<0.9968247413635254){
     s0+=5.0;
     s1+=3.0;
    } else {
     s1+=55.0;
    }
   }
  } else {
   if(i43<0.0002242509654024616){
    s0+=52.0;
   } else {
    if(i22<1.1188371181488037){
     s0+=23.0;
     s1+=807.0;
    } else {
     s0+=39.0;
     s1+=223.0;
    }
   }
  }
 }
} else {
 if(i15<1.0006725788116455){
  if(i35<0.057211071252822876){
   if(i53<0.9993170499801636){
    s0+=82.0;
   } else {
    if(i0<0.08599099516868591){
     s0+=67.0;
     s1+=113.0;
    } else {
     s0+=14.0;
     s1+=1568.0;
    }
   }
  } else {
   if(i1<0.17869940400123596){
    if(i5<-1.2891759070043918e-05){
     s0+=444.0;
     s1+=369.0;
    } else {
     s0+=677.0;
     s1+=55.0;
    }
   } else {
    if(i5<-1.609630635357462e-05){
     s0+=33.0;
     s1+=1103.0;
    } else {
     s0+=256.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i17<0.00010377168655395508){
   if(i42<0.00022777915000915527){
    if(i20<0.0017212586244568229){
     s0+=83.0;
     s1+=26.0;
    } else {
     s0+=103.0;
     s1+=797.0;
    }
   } else {
    if(i55<1.0044715404510498){
     s0+=3.0;
     s1+=776.0;
    } else {
     s0+=6.0;
     s1+=32.0;
    }
   }
  } else {
   if(i9<1.007551670074463){
    if(i30<0.004965455736964941){
     s0+=30.0;
     s1+=147.0;
    } else {
     s1+=429.0;
    }
   } else {
    if(i32<0.008998056873679161){
     s0+=6.0;
     s1+=592.0;
    } else {
     s1+=7529.0;
    }
   }
  }
 }
}
if(i1<0.08502998948097229){
 if(i0<0.0692034363746643){
  if(i12<1.0451585054397583){
   if(i12<1.0398929119110107){
    if(i57<-0.001345127820968628){
     s0+=3787.0;
     s1+=316.0;
    } else {
     s0+=53775.0;
     s1+=141.0;
    }
   } else {
    if(i6<1.002547264099121){
     s0+=3118.0;
     s1+=223.0;
    } else {
     s0+=8.0;
     s1+=47.0;
    }
   }
  } else {
   if(i15<1.0049214363098145){
    if(i29<1.1037919521331787){
     s0+=1811.0;
     s1+=691.0;
    } else {
     s0+=4703.0;
     s1+=418.0;
    }
   } else {
    if(i76<1.001384973526001){
     s0+=97.0;
     s1+=97.0;
    } else {
     s0+=4.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i3<0.00021153688430786133){
   if(i63<0.0010426597436890006){
    if(i73<0.9899511337280273){
     s0+=39.0;
     s1+=40.0;
    } else {
     s0+=1262.0;
     s1+=94.0;
    }
   } else {
    if(i43<0.0020268792286515236){
     s0+=128.0;
     s1+=252.0;
    } else {
     s0+=194.0;
     s1+=60.0;
    }
   }
  } else {
   if(i38<0.0029057860374450684){
    if(i26<0.003533648792654276){
     s0+=36.0;
     s1+=18.0;
    } else {
     s0+=62.0;
     s1+=531.0;
    }
   } else {
    if(i29<1.1380741596221924){
     s1+=4.0;
    } else {
     s0+=94.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i14<0.998518705368042){
  if(i44<-1.162849639513297e-05){
   if(i11<1.0399566888809204){
    if(i65<0.005079059395939112){
     s0+=27.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i48<-0.002706557512283325){
     s1+=13.0;
    } else {
     s0+=8.0;
     s1+=6.0;
    }
   }
  } else {
   if(i36<0.008839060552418232){
    s0+=709.0;
   } else {
    if(i41<0.007062796503305435){
     s1+=2.0;
    } else {
     s0+=17.0;
    }
   }
  }
 } else {
  if(i35<0.05583050847053528){
   if(i34<1.0724589824676514){
    if(i5<-2.1468902559718117e-05){
     s1+=1.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i6<0.9954173564910889){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=46.0;
     s1+=7026.0;
    }
   }
  } else {
   if(i1<0.12542256712913513){
    if(i57<0.0032218098640441895){
     s0+=419.0;
     s1+=320.0;
    } else {
     s0+=395.0;
     s1+=28.0;
    }
   } else {
    if(i20<0.0027472332585603){
     s0+=281.0;
     s1+=245.0;
    } else {
     s0+=101.0;
     s1+=6236.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i23<0.00031641291570849717){
  if(i72<1.0148615837097168){
   if(i9<1.0040315389633179){
    if(i48<-0.0021666884422302246){
     s0+=195.0;
     s1+=43.0;
    } else {
     s0+=53110.0;
     s1+=213.0;
    }
   } else {
    if(i29<1.0852019786834717){
     s0+=36.0;
     s1+=97.0;
    } else {
     s0+=531.0;
     s1+=12.0;
    }
   }
  } else {
   if(i5<-2.1855536033399403e-05){
    if(i31<1.2009669542312622){
     s0+=3.0;
     s1+=72.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i50<0.07286199927330017){
     s0+=94.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i0<0.08223840594291687){
   if(i30<0.0011257174191996455){
    if(i0<0.05686494708061218){
     s0+=3047.0;
     s1+=654.0;
    } else {
     s0+=569.0;
     s1+=551.0;
    }
   } else {
    if(i65<0.006643018219619989){
     s0+=9852.0;
     s1+=253.0;
    } else {
     s0+=1591.0;
     s1+=271.0;
    }
   }
  } else {
   if(i33<0.9988040328025818){
    if(i8<0.6542673110961914){
     s0+=386.0;
     s1+=8.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i54<0.050470173358917236){
     s0+=250.0;
     s1+=2155.0;
    } else {
     s0+=862.0;
     s1+=1101.0;
    }
   }
  }
 }
} else {
 if(i6<1.000580072402954){
  if(i75<0.13797277212142944){
   s0+=148.0;
  } else {
   s1+=3.0;
  }
 } else {
  if(i20<0.0023671393282711506){
   if(i4<6.592273712158203e-05){
    if(i73<0.9950309991836548){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=191.0;
     s1+=20.0;
    }
   } else {
    s1+=199.0;
   }
  } else {
   if(i9<1.0009467601776123){
    if(i1<0.11840760707855225){
     s0+=183.0;
     s1+=371.0;
    } else {
     s0+=25.0;
     s1+=1007.0;
    }
   } else {
    if(i10<2.9742717742919922e-05){
     s0+=52.0;
     s1+=274.0;
    } else {
     s0+=2.0;
     s1+=9785.0;
    }
   }
  }
 }
}
if(i2<0.08162686228752136){
 if(i16<1.8775463104248047e-05){
  if(i28<0.00029934203485026956){
   if(i13<1.0081498622894287){
    if(i65<0.0016713034128770232){
     s0+=55363.0;
     s1+=321.0;
    } else {
     s0+=832.0;
     s1+=127.0;
    }
   } else {
    if(i29<1.1210730075836182){
     s0+=12.0;
     s1+=127.0;
    } else {
     s0+=235.0;
     s1+=5.0;
    }
   }
  } else {
   if(i43<0.001825427752919495){
    if(i27<1.0840110778808594){
     s0+=2059.0;
    } else {
     s0+=2374.0;
     s1+=1303.0;
    }
   } else {
    if(i38<-0.004525929689407349){
     s0+=1550.0;
     s1+=208.0;
    } else {
     s0+=5920.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i3<0.0006341338157653809){
   if(i32<0.04233532026410103){
    if(i15<0.9972482919692993){
     s0+=894.0;
     s1+=22.0;
    } else {
     s0+=274.0;
     s1+=149.0;
    }
   } else {
    if(i36<0.016736764460802078){
     s1+=35.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i31<1.1353518962860107){
    if(i44<-1.0648755051079206e-05){
     s0+=3.0;
     s1+=762.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i38<-0.0022254586219787598){
     s0+=24.0;
     s1+=304.0;
    } else {
     s0+=141.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i4<3.2782554626464844e-06){
  if(i5<-7.116099368431605e-06){
   if(i5<-1.4510976143355947e-05){
    if(i51<-8.452701149508357e-05){
     s0+=104.0;
     s1+=1015.0;
    } else {
     s0+=92.0;
     s1+=80.0;
    }
   } else {
    if(i78<-0.0005349218845367432){
     s0+=19.0;
     s1+=128.0;
    } else {
     s0+=109.0;
     s1+=34.0;
    }
   }
  } else {
   if(i27<1.255998969078064){
    if(i41<0.000565102556720376){
     s0+=313.0;
     s1+=6.0;
    } else {
     s0+=64.0;
     s1+=147.0;
    }
   } else {
    if(i36<0.006524386815726757){
     s0+=363.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i3<0.0005219578742980957){
   if(i39<0.0468730628490448){
    if(i42<-0.00044482946395874023){
     s0+=6.0;
    } else {
     s0+=18.0;
     s1+=1037.0;
    }
   } else {
    if(i36<0.005823161918669939){
     s0+=351.0;
     s1+=362.0;
    } else {
     s0+=25.0;
     s1+=248.0;
    }
   }
  } else {
   if(i0<0.12474766373634338){
    if(i61<0.04584091901779175){
     s0+=56.0;
     s1+=849.0;
    } else {
     s0+=44.0;
     s1+=13.0;
    }
   } else {
    if(i47<0.001856779446825385){
     s0+=29.0;
     s1+=2179.0;
    } else {
     s0+=2.0;
     s1+=7337.0;
    }
   }
  }
 }
}
if(i19<1.0028033256530762){
 if(i1<0.08510008454322815){
  if(i27<1.0850647687911987){
   s0+=38023.0;
  } else {
   if(i34<1.103413462638855){
    if(i66<0.0005798411439172924){
     s0+=4087.0;
     s1+=790.0;
    } else {
     s0+=266.0;
     s1+=800.0;
    }
   } else {
    if(i63<0.01112407073378563){
     s0+=24305.0;
     s1+=294.0;
    } else {
     s0+=1378.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i33<0.9991060495376587){
   if(i14<0.9980583190917969){
    s0+=648.0;
   } else {
    if(i3<-0.0005613267421722412){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=19.0;
    }
   }
  } else {
   if(i51<-0.00011071647895732895){
    if(i20<0.0016493138391524553){
     s0+=316.0;
     s1+=163.0;
    } else {
     s0+=306.0;
     s1+=3722.0;
    }
   } else {
    if(i18<1.0387130975723267){
     s0+=51.0;
     s1+=247.0;
    } else {
     s0+=413.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i67<1.734457691782154e-05){
  if(i28<0.00016199224046431482){
   if(i42<0.00024497509002685547){
    if(i69<-5.858219992660452e-06){
     s1+=4.0;
    } else {
     s0+=127.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i21<0.9509761333465576){
    if(i0<0.06047162413597107){
     s0+=76.0;
     s1+=4.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i43<0.00023194783716462553){
     s0+=33.0;
    } else {
     s0+=337.0;
     s1+=9926.0;
    }
   }
  }
 } else {
  if(i20<0.015205254778265953){
   if(i17<-0.0001068115234375){
    if(i72<1.0323430299758911){
     s0+=727.0;
     s1+=74.0;
    } else {
     s0+=1.0;
     s1+=40.0;
    }
   } else {
    if(i43<0.0005379425710998476){
     s0+=2.0;
    } else {
     s1+=99.0;
    }
   }
  } else {
   if(i78<-0.00964382290840149){
    if(i15<0.998265266418457){
     s0+=93.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=25.0;
    }
   } else {
    if(i32<0.023547204211354256){
     s0+=5.0;
     s1+=15.0;
    } else {
     s1+=364.0;
    }
   }
  }
 }
}
if(i5<-8.167201303876936e-05){
 if(i0<0.06294897198677063){
  if(i64<-0.003943830728530884){
   if(i4<2.485513687133789e-05){
    if(i2<0.007006287574768066){
     s0+=46.0;
     s1+=6.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i63<0.011711047030985355){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=187.0;
    }
   }
  } else {
   if(i24<1.0002890825271606){
    if(i49<0.13556739687919617){
     s0+=165.0;
     s1+=46.0;
    } else {
     s0+=431.0;
     s1+=2.0;
    }
   } else {
    if(i66<-6.828969344496727e-05){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i3<-4.869699478149414e-05){
   if(i32<0.029059235006570816){
    if(i69<-7.642649507033639e-06){
     s0+=52.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=187.0;
   }
  } else {
   if(i59<0.00011031133180949837){
    if(i4<7.683038711547852e-05){
     s0+=3.0;
     s1+=1094.0;
    } else {
     s1+=7229.0;
    }
   } else {
    if(i51<-0.000540140550583601){
     s0+=1.0;
     s1+=1531.0;
    } else {
     s0+=85.0;
     s1+=404.0;
    }
   }
  }
 }
} else {
 if(i2<0.07540696859359741){
  if(i65<0.0015202329959720373){
   if(i1<0.06740880012512207){
    if(i12<1.0410068035125732){
     s0+=53577.0;
     s1+=220.0;
    } else {
     s0+=5659.0;
     s1+=461.0;
    }
   } else {
    if(i25<1.006055474281311){
     s0+=2597.0;
     s1+=246.0;
    } else {
     s0+=386.0;
     s1+=309.0;
    }
   }
  } else {
   if(i27<1.100754976272583){
    if(i42<-3.4362077713012695e-05){
     s0+=1178.0;
     s1+=27.0;
    } else {
     s0+=489.0;
     s1+=850.0;
    }
   } else {
    if(i0<0.05785638093948364){
     s0+=4272.0;
     s1+=282.0;
    } else {
     s0+=311.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i39<0.042455434799194336){
   if(i31<1.0670123100280762){
    if(i15<0.9944754838943481){
     s0+=63.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i2<0.08518829941749573){
     s0+=98.0;
     s1+=421.0;
    } else {
     s0+=34.0;
     s1+=1854.0;
    }
   }
  } else {
   if(i2<0.10622957348823547){
    if(i34<1.100754976272583){
     s0+=253.0;
     s1+=242.0;
    } else {
     s0+=769.0;
     s1+=63.0;
    }
   } else {
    if(i47<0.0020584920421242714){
     s0+=675.0;
     s1+=679.0;
    } else {
     s0+=24.0;
     s1+=513.0;
    }
   }
  }
 }
}
if(i72<1.013661503791809){
 if(i1<0.08241075277328491){
  if(i22<1.0485899448394775){
   if(i78<-0.0007887780666351318){
    if(i10<-0.001588284969329834){
     s0+=3806.0;
     s1+=19.0;
    } else {
     s0+=1501.0;
     s1+=241.0;
    }
   } else {
    if(i6<1.0025479793548584){
     s0+=50290.0;
     s1+=100.0;
    } else {
     s0+=20.0;
     s1+=10.0;
    }
   }
  } else {
   if(i1<0.06340962648391724){
    if(i16<2.4616718292236328e-05){
     s0+=10452.0;
     s1+=1041.0;
    } else {
     s0+=319.0;
     s1+=424.0;
    }
   } else {
    if(i15<1.0011436939239502){
     s0+=843.0;
     s1+=450.0;
    } else {
     s0+=84.0;
     s1+=528.0;
    }
   }
  }
 } else {
  if(i41<0.0004476824833545834){
   if(i6<1.001012921333313){
    if(i69<-1.5218312228171271e-06){
     s0+=39.0;
     s1+=4.0;
    } else {
     s0+=313.0;
    }
   } else {
    if(i59<3.254654075135477e-06){
     s0+=5.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i74<6.513208518299507e-06){
    if(i14<0.9985049962997437){
     s0+=76.0;
    } else {
     s0+=148.0;
     s1+=4070.0;
    }
   } else {
    if(i30<0.00886053778231144){
     s0+=159.0;
     s1+=17.0;
    } else {
     s0+=38.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i6<1.0020387172698975){
  if(i10<0.0007098019123077393){
   if(i2<0.10270330309867859){
    if(i1<0.08935832977294922){
     s0+=1754.0;
     s1+=139.0;
    } else {
     s0+=355.0;
     s1+=178.0;
    }
   } else {
    if(i77<0.00010974729957524687){
     s0+=542.0;
     s1+=584.0;
    } else {
     s0+=80.0;
     s1+=587.0;
    }
   }
  } else {
   if(i7<0.00017648935317993164){
    if(i17<0.00010776519775390625){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=7.0;
     s1+=297.0;
    }
   } else {
    if(i58<-0.0035137974191457033){
     s1+=33.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i51<-0.0005584701430052519){
   if(i4<3.165006637573242e-05){
    if(i20<0.004800368100404739){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i9<1.006458044052124){
     s0+=5.0;
     s1+=362.0;
    } else {
     s0+=1.0;
     s1+=5914.0;
    }
   }
  } else {
   if(i19<1.00581955909729){
    if(i2<0.07276666164398193){
     s0+=91.0;
     s1+=36.0;
    } else {
     s0+=125.0;
     s1+=652.0;
    }
   } else {
    if(i9<0.9995139837265015){
     s0+=20.0;
     s1+=87.0;
    } else {
     s1+=1232.0;
    }
   }
  }
 }
}
if(i1<0.08509460091590881){
 if(i19<1.0027893781661987){
  if(i63<0.0075655728578567505){
   if(i0<0.06915926933288574){
    if(i23<0.0002842974499799311){
     s0+=51331.0;
     s1+=225.0;
    } else {
     s0+=11754.0;
     s1+=655.0;
    }
   } else {
    if(i50<0.04535135626792908){
     s0+=49.0;
     s1+=276.0;
    } else {
     s0+=1625.0;
     s1+=208.0;
    }
   }
  } else {
   if(i0<0.03923201560974121){
    if(i42<-5.599856376647949e-05){
     s0+=1236.0;
     s1+=28.0;
    } else {
     s0+=1474.0;
     s1+=345.0;
    }
   } else {
    if(i26<0.01424128282815218){
     s0+=358.0;
     s1+=93.0;
    } else {
     s0+=234.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i15<1.0040283203125){
   if(i10<-0.002341359853744507){
    if(i47<0.006434008479118347){
     s0+=764.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    if(i72<0.9962097406387329){
     s0+=84.0;
     s1+=230.0;
    } else {
     s0+=323.0;
     s1+=80.0;
    }
   }
  } else {
   if(i43<0.00020228733774274588){
    s0+=18.0;
   } else {
    if(i20<0.0019465598743408918){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=640.0;
    }
   }
  }
 }
} else {
 if(i5<-1.354130290565081e-05){
  if(i5<-5.099795089336112e-05){
   if(i17<6.020069122314453e-06){
    if(i43<0.00831405445933342){
     s0+=183.0;
     s1+=569.0;
    } else {
     s0+=17.0;
     s1+=1371.0;
    }
   } else {
    if(i29<1.0656896829605103){
     s0+=14.0;
    } else {
     s0+=4.0;
     s1+=9878.0;
    }
   }
  } else {
   if(i31<1.1084140539169312){
    if(i20<0.0010197642259299755){
     s0+=20.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=932.0;
    }
   } else {
    if(i71<0.0003623898373916745){
     s0+=355.0;
     s1+=225.0;
    } else {
     s0+=108.0;
     s1+=510.0;
    }
   }
  }
 } else {
  if(i16<-1.7136335372924805e-05){
   s0+=532.0;
  } else {
   if(i39<0.04379826784133911){
    if(i0<0.0843609869480133){
     s0+=21.0;
     s1+=14.0;
    } else {
     s0+=10.0;
     s1+=234.0;
    }
   } else {
    if(i53<1.0000674724578857){
     s0+=594.0;
     s1+=78.0;
    } else {
     s0+=38.0;
     s1+=62.0;
    }
   }
  }
 }
}
if(i9<1.0060044527053833){
 if(i3<0.0005646347999572754){
  if(i1<0.08662348985671997){
   if(i22<1.0451585054397583){
    if(i71<0.000252638419624418){
     s0+=47716.0;
     s1+=47.0;
    } else {
     s0+=6017.0;
     s1+=189.0;
    }
   } else {
    if(i0<0.06600823998451233){
     s0+=13296.0;
     s1+=1076.0;
    } else {
     s0+=1150.0;
     s1+=657.0;
    }
   }
  } else {
   if(i61<0.03554892539978027){
    if(i5<3.2170946724363603e-06){
     s0+=308.0;
     s1+=2082.0;
    } else {
     s0+=328.0;
     s1+=43.0;
    }
   } else {
    if(i14<0.9985270500183105){
     s0+=351.0;
     s1+=8.0;
    } else {
     s0+=669.0;
     s1+=572.0;
    }
   }
  }
 } else {
  if(i43<0.0002644847263582051){
   s0+=122.0;
  } else {
   if(i0<0.1270081102848053){
    if(i38<0.0035744309425354004){
     s0+=113.0;
     s1+=694.0;
    } else {
     s0+=106.0;
     s1+=12.0;
    }
   } else {
    if(i71<0.00032484292751178145){
     s0+=15.0;
     s1+=162.0;
    } else {
     s0+=5.0;
     s1+=1301.0;
    }
   }
  }
 }
} else {
 if(i28<0.0001895628811325878){
  if(i2<0.05885738134384155){
   if(i8<0.04964160919189453){
    if(i27<1.1386182308197021){
     s1+=2.0;
    } else {
     s0+=296.0;
    }
   } else {
    if(i62<0.012962665408849716){
     s1+=12.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i20<0.0011415870394557714){
    if(i41<0.0007085581892170012){
     s1+=1.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i62<0.04307568445801735){
     s1+=93.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i7<0.000425487756729126){
   if(i47<0.0009448390337638557){
    if(i53<0.9998793601989746){
     s0+=4.0;
     s1+=448.0;
    } else {
     s0+=402.0;
     s1+=46.0;
    }
   } else {
    if(i19<0.9944486618041992){
     s0+=24.0;
     s1+=29.0;
    } else {
     s0+=7.0;
     s1+=1032.0;
    }
   }
  } else {
   if(i1<0.0837630033493042){
    if(i76<0.998930037021637){
     s0+=13.0;
    } else {
     s0+=25.0;
     s1+=527.0;
    }
   } else {
    if(i17<-5.662441253662109e-06){
     s0+=4.0;
     s1+=88.0;
    } else {
     s0+=1.0;
     s1+=8133.0;
    }
   }
  }
 }
}
if(i8<0.07075947523117065){
 if(i0<0.07529991865158081){
  if(i54<-0.028887540102005005){
   if(i42<-3.421306610107422e-05){
    if(i3<0.0007009506225585938){
     s0+=1225.0;
     s1+=78.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i0<0.032731473445892334){
     s0+=970.0;
     s1+=373.0;
    } else {
     s0+=188.0;
     s1+=579.0;
    }
   }
  } else {
   if(i29<1.0598037242889404){
    s0+=36261.0;
   } else {
    if(i27<1.100754976272583){
     s0+=5087.0;
     s1+=1178.0;
    } else {
     s0+=24684.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i61<0.026741057634353638){
   if(i14<0.9981048703193665){
    s0+=66.0;
   } else {
    if(i57<0.004917740821838379){
     s0+=27.0;
     s1+=1885.0;
    } else {
     s0+=31.0;
     s1+=29.0;
    }
   }
  } else {
   if(i64<0.0012236833572387695){
    if(i6<0.9952195882797241){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=75.0;
    }
   } else {
    if(i18<1.020188808441162){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=201.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i2<0.11974948644638062){
  if(i3<0.0006970763206481934){
   if(i38<0.004668980836868286){
    if(i40<0.00036470353370532393){
     s0+=198.0;
     s1+=8.0;
    } else {
     s0+=563.0;
     s1+=964.0;
    }
   } else {
    if(i47<0.0021596176084131002){
     s0+=514.0;
     s1+=4.0;
    } else {
     s0+=236.0;
     s1+=29.0;
    }
   }
  } else {
   if(i38<0.005190014839172363){
    if(i15<1.001520037651062){
     s0+=13.0;
     s1+=64.0;
    } else {
     s0+=4.0;
     s1+=580.0;
    }
   } else {
    if(i34<1.2314128875732422){
     s1+=7.0;
    } else {
     s0+=45.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i15<0.9993860721588135){
   if(i26<0.021886959671974182){
    if(i56<-0.00775417685508728){
     s0+=4.0;
     s1+=37.0;
    } else {
     s0+=250.0;
     s1+=144.0;
    }
   } else {
    if(i14<0.9984381198883057){
     s0+=171.0;
    } else {
     s0+=108.0;
     s1+=1758.0;
    }
   }
  } else {
   if(i20<0.0031563923694193363){
    if(i64<0.007429957389831543){
     s0+=5.0;
     s1+=322.0;
    } else {
     s0+=91.0;
     s1+=31.0;
    }
   } else {
    if(i29<1.2590415477752686){
     s0+=10.0;
     s1+=1250.0;
    } else {
     s0+=1.0;
     s1+=7454.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i65<0.0020280303433537483){
  if(i1<0.08250105381011963){
   if(i6<1.0024828910827637){
    if(i22<1.0475037097930908){
     s0+=53949.0;
     s1+=197.0;
    } else {
     s0+=7224.0;
     s1+=543.0;
    }
   } else {
    if(i36<0.001984525239095092){
     s0+=2.0;
     s1+=157.0;
    } else {
     s0+=111.0;
    }
   }
  } else {
   if(i15<0.9939890503883362){
    if(i50<0.08993291854858398){
     s0+=319.0;
     s1+=10.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i22<1.0469107627868652){
     s0+=74.0;
     s1+=25.0;
    } else {
     s0+=23.0;
     s1+=615.0;
    }
   }
  }
 } else {
  if(i6<1.0023956298828125){
   if(i34<1.1819204092025757){
    if(i31<1.0670123100280762){
     s0+=941.0;
     s1+=40.0;
    } else {
     s0+=399.0;
     s1+=534.0;
    }
   } else {
    if(i16<1.6987323760986328e-05){
     s0+=2100.0;
     s1+=66.0;
    } else {
     s0+=193.0;
     s1+=128.0;
    }
   }
  } else {
   if(i69<-4.243413059157319e-06){
    if(i71<0.0024319435469806194){
     s1+=418.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   } else {
    if(i0<0.07216405868530273){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i0<0.09149739146232605){
  if(i9<1.006086826324463){
   if(i5<-2.3970620532054454e-05){
    if(i36<0.0013467130484059453){
     s0+=52.0;
     s1+=311.0;
    } else {
     s0+=1054.0;
     s1+=419.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=1041.0;
     s1+=242.0;
    } else {
     s0+=2256.0;
     s1+=65.0;
    }
   }
  } else {
   if(i5<-4.567383075482212e-05){
    if(i10<6.592273712158203e-05){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=594.0;
    }
   } else {
    if(i34<1.1386182308197021){
     s1+=37.0;
    } else {
     s0+=251.0;
    }
   }
  }
 } else {
  if(i14<0.9988545775413513){
   if(i29<1.4998304843902588){
    if(i55<0.999877393245697){
     s0+=302.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.11075329780578613){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i41<0.0005117261316627264){
    if(i23<0.0006316560320556164){
     s0+=7.0;
     s1+=38.0;
    } else {
     s0+=157.0;
     s1+=4.0;
    }
   } else {
    if(i10<0.0004214644432067871){
     s0+=595.0;
     s1+=3153.0;
    } else {
     s0+=66.0;
     s1+=9407.0;
    }
   }
  }
 }
}
if(i2<0.07800713181495667){
 if(i4<4.178285598754883e-05){
  if(i49<0.025729525834321976){
   if(i19<1.0007472038269043){
    if(i73<0.9726369380950928){
     s0+=390.0;
     s1+=113.0;
    } else {
     s0+=53264.0;
     s1+=323.0;
    }
   } else {
    if(i51<-0.00013759956345893443){
     s0+=339.0;
     s1+=186.0;
    } else {
     s0+=3067.0;
     s1+=127.0;
    }
   }
  } else {
   if(i36<0.0008704282809048891){
    if(i42<-3.546476364135742e-05){
     s0+=1760.0;
     s1+=7.0;
    } else {
     s0+=945.0;
     s1+=919.0;
    }
   } else {
    if(i4<1.6123056411743164e-05){
     s0+=8623.0;
     s1+=303.0;
    } else {
     s0+=414.0;
     s1+=117.0;
    }
   }
  }
 } else {
  if(i27<1.082350254058838){
   s0+=206.0;
  } else {
   if(i30<0.002043172949925065){
    s1+=721.0;
   } else {
    if(i20<0.004411947447806597){
     s0+=147.0;
     s1+=24.0;
    } else {
     s0+=82.0;
     s1+=372.0;
    }
   }
  }
 }
} else {
 if(i33<0.9988069534301758){
  if(i40<0.03819989785552025){
   if(i69<-2.4194796424126253e-06){
    if(i59<6.005851901136339e-05){
     s0+=31.0;
    } else {
     s1+=5.0;
    }
   } else {
    s0+=419.0;
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i41<0.0005117687396705151){
   if(i70<0.0002672984846867621){
    if(i53<1.0001146793365479){
     s0+=218.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   } else {
    if(i16<-1.2129545211791992e-05){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=88.0;
    }
   }
  } else {
   if(i15<1.0021934509277344){
    if(i39<0.04302030801773071){
     s0+=48.0;
     s1+=2224.0;
    } else {
     s0+=1075.0;
     s1+=1672.0;
    }
   } else {
    if(i10<0.001422286033630371){
     s0+=133.0;
     s1+=2154.0;
    } else {
     s1+=7702.0;
    }
   }
  }
 }
}
if(i0<0.08176484704017639){
 if(i9<1.0058209896087646){
  if(i4<4.190206527709961e-05){
   if(i23<0.0002822906826622784){
    if(i79<0.0003550780238583684){
     s0+=51824.0;
     s1+=190.0;
    } else {
     s0+=19.0;
     s1+=20.0;
    }
   } else {
    if(i43<0.0017367942491546273){
     s0+=6470.0;
     s1+=1364.0;
    } else {
     s0+=10026.0;
     s1+=333.0;
    }
   }
  } else {
   if(i20<0.004411947447806597){
    if(i65<0.005521522834897041){
     s0+=232.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i45<0.003819376230239868){
     s0+=51.0;
     s1+=366.0;
    } else {
     s0+=33.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i56<0.0026025772094726562){
   if(i14<1.0012867450714111){
    if(i36<0.001110682263970375){
     s0+=2.0;
     s1+=86.0;
    } else {
     s0+=355.0;
     s1+=19.0;
    }
   } else {
    if(i20<0.0014900059904903173){
     s0+=60.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=563.0;
    }
   }
  } else {
   if(i47<0.0016360868467018008){
    if(i6<1.0062499046325684){
     s0+=306.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=19.0;
   }
  }
 }
} else {
 if(i14<0.9985270500183105){
  if(i47<0.002964997896924615){
   if(i42<-0.00011777877807617188){
    if(i44<-1.0199353710049763e-05){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=446.0;
    }
   } else {
    if(i5<-1.8299602743354626e-05){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i1<0.11678853631019592){
    s0+=4.0;
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i15<1.002230167388916){
   if(i26<0.023891322314739227){
    if(i35<0.058082759380340576){
     s0+=51.0;
     s1+=580.0;
    } else {
     s0+=762.0;
     s1+=281.0;
    }
   } else {
    if(i70<0.00017929315799847245){
     s0+=111.0;
     s1+=304.0;
    } else {
     s0+=172.0;
     s1+=2912.0;
    }
   }
  } else {
   if(i4<5.429983139038086e-05){
    if(i38<0.004511356353759766){
     s0+=14.0;
     s1+=827.0;
    } else {
     s0+=66.0;
     s1+=310.0;
    }
   } else {
    if(i17<3.743171691894531e-05){
     s0+=23.0;
     s1+=446.0;
    } else {
     s0+=4.0;
     s1+=8519.0;
    }
   }
  }
 }
}
if(i14<1.0016388893127441){
 if(i24<1.008514165878296){
  if(i49<0.03250627964735031){
   if(i22<1.0572319030761719){
    if(i46<1.0086309909820557){
     s0+=54293.0;
     s1+=328.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i2<0.0721539855003357){
     s0+=4540.0;
     s1+=365.0;
    } else {
     s0+=306.0;
     s1+=232.0;
    }
   }
  } else {
   if(i10<-0.0015200972557067871){
    if(i11<1.0696505308151245){
     s0+=5419.0;
     s1+=170.0;
    } else {
     s0+=385.0;
     s1+=259.0;
    }
   } else {
    if(i1<0.06117081642150879){
     s0+=2089.0;
     s1+=523.0;
    } else {
     s0+=544.0;
     s1+=1675.0;
    }
   }
  }
 } else {
  if(i4<1.150369644165039e-05){
   if(i30<0.005955102387815714){
    if(i5<-2.3351569325313903e-05){
     s0+=297.0;
     s1+=468.0;
    } else {
     s0+=1405.0;
     s1+=96.0;
    }
   } else {
    if(i62<0.025246858596801758){
     s0+=31.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=280.0;
    }
   }
  } else {
   if(i20<0.002900640945881605){
    if(i41<0.0008604978211224079){
     s0+=45.0;
     s1+=325.0;
    } else {
     s0+=584.0;
     s1+=86.0;
    }
   } else {
    if(i55<1.0024288892745972){
     s0+=14.0;
     s1+=1922.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i8<0.08103537559509277){
  if(i6<1.0023581981658936){
   if(i65<0.00657431036233902){
    if(i0<0.09048536419868469){
     s0+=764.0;
     s1+=71.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i50<0.007991641759872437){
     s0+=51.0;
     s1+=56.0;
    } else {
     s0+=4.0;
     s1+=50.0;
    }
   }
  } else {
   if(i10<0.0013927817344665527){
    if(i20<0.0017300164327025414){
     s0+=72.0;
    } else {
     s0+=100.0;
     s1+=772.0;
    }
   } else {
    s1+=1241.0;
   }
  }
 } else {
  if(i17<6.020069122314453e-06){
   if(i32<0.023360634222626686){
    if(i68<-0.005064787343144417){
     s0+=142.0;
     s1+=80.0;
    } else {
     s0+=12.0;
     s1+=135.0;
    }
   } else {
    if(i55<1.0058424472808838){
     s0+=2.0;
     s1+=950.0;
    } else {
     s0+=7.0;
     s1+=18.0;
    }
   }
  } else {
   if(i17<1.1861324310302734e-05){
    if(i27<1.613681674003601){
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i13<1.0037058591842651){
     s0+=1.0;
     s1+=601.0;
    } else {
     s1+=6356.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i49<0.031172960996627808){
  if(i1<0.08946463465690613){
   if(i72<0.9719544649124146){
    if(i29<1.0703742504119873){
     s0+=283.0;
     s1+=3.0;
    } else {
     s0+=202.0;
     s1+=212.0;
    }
   } else {
    if(i52<1.0083978176116943){
     s0+=57505.0;
     s1+=528.0;
    } else {
     s0+=1664.0;
     s1+=284.0;
    }
   }
  } else {
   if(i42<-0.0001310110092163086){
    if(i69<-4.069554051966406e-06){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=298.0;
    }
   } else {
    if(i38<0.004740715026855469){
     s0+=73.0;
     s1+=729.0;
    } else {
     s0+=230.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i2<0.07985556125640869){
   if(i46<0.9763556718826294){
    if(i8<0.0683012306690216){
     s0+=5166.0;
     s1+=112.0;
    } else {
     s0+=79.0;
     s1+=27.0;
    }
   } else {
    if(i19<1.0004043579101562){
     s0+=3854.0;
     s1+=746.0;
    } else {
     s0+=461.0;
     s1+=369.0;
    }
   }
  } else {
   if(i32<0.04016807675361633){
    if(i11<1.1462448835372925){
     s0+=448.0;
     s1+=1482.0;
    } else {
     s0+=507.0;
     s1+=190.0;
    }
   } else {
    if(i32<0.04577481746673584){
     s0+=17.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=962.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041437149047852){
  if(i53<0.9999313354492188){
   if(i10<-0.001928567886352539){
    s0+=4.0;
   } else {
    s1+=807.0;
   }
  } else {
   if(i0<0.11812102794647217){
    if(i29<1.2163902521133423){
     s0+=17.0;
     s1+=303.0;
    } else {
     s0+=283.0;
     s1+=64.0;
    }
   } else {
    if(i76<1.0014317035675049){
     s0+=9.0;
     s1+=46.0;
    } else {
     s0+=2.0;
     s1+=337.0;
    }
   }
  }
 } else {
  if(i41<0.009587917476892471){
   if(i2<0.029974699020385742){
    if(i38<-0.0009077191352844238){
     s1+=100.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i10<-0.0009644031524658203){
     s0+=1.0;
     s1+=105.0;
    } else {
     s1+=6503.0;
    }
   }
  } else {
   if(i32<0.017368346452713013){
    if(i5<-0.00022152613382786512){
     s1+=94.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i11<1.028853416442871){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=2873.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i16<2.3066997528076172e-05){
  if(i23<0.00029168365290388465){
   if(i0<0.08859431743621826){
    if(i66<0.0009107738733291626){
     s0+=52518.0;
     s1+=187.0;
    } else {
     s0+=257.0;
     s1+=74.0;
    }
   } else {
    if(i3<-0.0006732642650604248){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=51.0;
    }
   }
  } else {
   if(i34<1.2048285007476807){
    if(i27<1.0840110778808594){
     s0+=2465.0;
    } else {
     s0+=1771.0;
     s1+=1440.0;
    }
   } else {
    if(i50<0.07303020358085632){
     s0+=7915.0;
     s1+=157.0;
    } else {
     s0+=28.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i55<1.0028748512268066){
   if(i15<0.9993085861206055){
    if(i64<-0.0015558898448944092){
     s0+=18.0;
     s1+=32.0;
    } else {
     s0+=267.0;
     s1+=35.0;
    }
   } else {
    if(i43<0.00026776286540552974){
     s0+=20.0;
    } else {
     s0+=4.0;
     s1+=656.0;
    }
   }
  } else {
   if(i32<0.03760277479887009){
    if(i67<1.713501478661783e-05){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=238.0;
     s1+=6.0;
    }
   } else {
    s1+=9.0;
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i41<0.0005139268469065428){
   if(i67<8.067889211815782e-06){
    if(i33<1.0003844499588013){
     s0+=1446.0;
     s1+=15.0;
    } else {
     s0+=34.0;
     s1+=82.0;
    }
   } else {
    if(i4<-2.5212764739990234e-05){
     s0+=127.0;
     s1+=1.0;
    } else {
     s1+=77.0;
    }
   }
  } else {
   if(i14<0.9988450407981873){
    if(i79<-0.00886660348623991){
     s1+=10.0;
    } else {
     s0+=1128.0;
     s1+=44.0;
    }
   } else {
    if(i0<0.09057530760765076){
     s0+=1991.0;
     s1+=685.0;
    } else {
     s0+=586.0;
     s1+=2486.0;
    }
   }
  }
 } else {
  if(i3<0.0009058117866516113){
   if(i8<0.15195304155349731){
    if(i45<0.014687895774841309){
     s0+=130.0;
     s1+=562.0;
    } else {
     s0+=155.0;
     s1+=60.0;
    }
   } else {
    if(i41<0.000883549393620342){
     s0+=2.0;
    } else {
     s0+=10.0;
     s1+=676.0;
    }
   }
  } else {
   if(i70<0.0004038072656840086){
    if(i9<1.0073189735412598){
     s0+=68.0;
     s1+=230.0;
    } else {
     s0+=3.0;
     s1+=1190.0;
    }
   } else {
    if(i9<0.9971234798431396){
     s0+=36.0;
     s1+=478.0;
    } else {
     s0+=2.0;
     s1+=7678.0;
    }
   }
  }
 }
}
if(i1<0.08352804183959961){
 if(i16<2.0563602447509766e-05){
  if(i31<1.0557184219360352){
   s0+=42494.0;
  } else {
   if(i12<1.0398929119110107){
    if(i57<-0.0009183585643768311){
     s0+=3377.0;
     s1+=387.0;
    } else {
     s0+=14226.0;
     s1+=170.0;
    }
   } else {
    if(i4<1.150369644165039e-05){
     s0+=7081.0;
     s1+=1085.0;
    } else {
     s0+=663.0;
     s1+=487.0;
    }
   }
  }
 } else {
  if(i45<0.004819273948669434){
   if(i14<1.0019147396087646){
    if(i12<1.044647216796875){
     s0+=180.0;
     s1+=6.0;
    } else {
     s0+=54.0;
     s1+=78.0;
    }
   } else {
    if(i19<1.002506971359253){
     s0+=155.0;
     s1+=109.0;
    } else {
     s0+=99.0;
     s1+=749.0;
    }
   }
  } else {
   if(i67<-6.4263513195328414e-06){
    s1+=8.0;
   } else {
    if(i9<0.9993487596511841){
     s0+=588.0;
     s1+=2.0;
    } else {
     s0+=40.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i15<1.0005276203155518){
  if(i76<0.9976601004600525){
   if(i44<-2.539780325605534e-06){
    if(i22<1.0793390274047852){
     s0+=52.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=79.0;
    }
   } else {
    s0+=565.0;
   }
  } else {
   if(i45<0.0126742422580719){
    if(i16<-1.475214958190918e-05){
     s0+=67.0;
     s1+=7.0;
    } else {
     s0+=183.0;
     s1+=1943.0;
    }
   } else {
    if(i20<0.005993915721774101){
     s0+=795.0;
     s1+=353.0;
    } else {
     s0+=119.0;
     s1+=1019.0;
    }
   }
  }
 } else {
  if(i41<0.00028205590206198394){
   s0+=15.0;
  } else {
   if(i44<-1.642176357563585e-05){
    if(i32<0.017336405813694){
     s0+=49.0;
     s1+=1426.0;
    } else {
     s0+=1.0;
     s1+=8076.0;
    }
   } else {
    if(i35<0.05942493677139282){
     s0+=24.0;
     s1+=773.0;
    } else {
     s0+=187.0;
     s1+=435.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i2<0.07771864533424377){
  if(i43<0.000313128053676337){
   if(i44<-1.4628538338001817e-05){
    if(i12<1.0480353832244873){
     s0+=300.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i78<-0.001139611005783081){
     s0+=27.0;
     s1+=6.0;
    } else {
     s0+=46962.0;
     s1+=85.0;
    }
   }
  } else {
   if(i4<-4.106760025024414e-05){
    if(i70<0.00228423485532403){
     s0+=11654.0;
     s1+=197.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i30<0.0011272239498794079){
     s0+=3929.0;
     s1+=1318.0;
    } else {
     s0+=6091.0;
     s1+=494.0;
    }
   }
  }
 } else {
  if(i53<0.9995546340942383){
   if(i3<-0.0005967319011688232){
    s0+=373.0;
   } else {
    if(i33<0.9985592365264893){
     s0+=58.0;
    } else {
     s0+=17.0;
     s1+=153.0;
    }
   }
  } else {
   if(i0<0.10013940930366516){
    if(i45<0.013902217149734497){
     s0+=258.0;
     s1+=628.0;
    } else {
     s0+=443.0;
     s1+=26.0;
    }
   } else {
    if(i35<0.07716891169548035){
     s0+=33.0;
     s1+=1868.0;
    } else {
     s0+=572.0;
     s1+=996.0;
    }
   }
  }
 }
} else {
 if(i4<6.216764450073242e-05){
  if(i5<-4.3793945224024355e-05){
   if(i7<0.0008018016815185547){
    if(i2<0.040168553590774536){
     s0+=22.0;
     s1+=26.0;
    } else {
     s0+=6.0;
     s1+=852.0;
    }
   } else {
    if(i53<1.0001137256622314){
     s0+=37.0;
     s1+=6.0;
    } else {
     s0+=25.0;
     s1+=160.0;
    }
   }
  } else {
   if(i47<0.001109614036977291){
    s0+=177.0;
   } else {
    if(i7<0.0003224015235900879){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=94.0;
    }
   }
  }
 } else {
  if(i20<0.0002995884860865772){
   if(i37<1.0351448059082031){
    s0+=8.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i6<1.0044927597045898){
    if(i74<-5.589426109509077e-06){
     s0+=31.0;
     s1+=13.0;
    } else {
     s0+=58.0;
     s1+=692.0;
    }
   } else {
    if(i12<1.1222221851348877){
     s0+=33.0;
     s1+=3112.0;
    } else {
     s1+=6372.0;
    }
   }
  }
 }
}
if(i12<1.0527000427246094){
 if(i1<0.08219277858734131){
  if(i13<1.0084054470062256){
   if(i23<0.00027690810384228826){
    if(i57<-0.0028125643730163574){
     s1+=14.0;
    } else {
     s0+=51685.0;
     s1+=170.0;
    }
   } else {
    if(i31<1.1463468074798584){
     s0+=4920.0;
     s1+=944.0;
    } else {
     s0+=6660.0;
     s1+=53.0;
    }
   }
  } else {
   if(i30<0.0011776904575526714){
    s1+=143.0;
   } else {
    if(i44<-2.096835305565037e-05){
     s1+=4.0;
    } else {
     s0+=128.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i29<1.0703742504119873){
   if(i73<1.0118645429611206){
    if(i33<1.0005393028259277){
     s0+=288.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i22<1.0596027374267578){
     s0+=17.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i74<5.785370376543142e-06){
    if(i67<2.2836567950434983e-05){
     s0+=56.0;
     s1+=696.0;
    } else {
     s0+=36.0;
     s1+=41.0;
    }
   } else {
    if(i50<0.0861625075340271){
     s0+=177.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i51<-0.0007161999819800258){
  if(i44<-1.0906900570262223e-05){
   if(i0<0.08244410157203674){
    if(i48<0.0027611255645751953){
     s1+=112.0;
    } else {
     s0+=85.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.13995233178138733){
     s0+=16.0;
     s1+=332.0;
    } else {
     s0+=3.0;
     s1+=6991.0;
    }
   }
  } else {
   if(i40<0.00853968970477581){
    if(i23<0.017024539411067963){
     s0+=205.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i33<0.9990018606185913){
     s0+=47.0;
    } else {
     s0+=4.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i2<0.0774276852607727){
   if(i29<1.103413462638855){
    if(i36<0.0006304166745394468){
     s0+=968.0;
     s1+=257.0;
    } else {
     s0+=142.0;
     s1+=876.0;
    }
   } else {
    if(i20<0.006417124532163143){
     s0+=3682.0;
     s1+=194.0;
    } else {
     s0+=478.0;
     s1+=436.0;
    }
   }
  } else {
   if(i7<-0.0003972351551055908){
    if(i19<0.9965801239013672){
     s0+=255.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    if(i64<0.004186511039733887){
     s0+=278.0;
     s1+=4290.0;
    } else {
     s0+=833.0;
     s1+=1491.0;
    }
   }
  }
 }
}
if(i15<1.0039833784103394){
 if(i28<0.00033073185477405787){
  if(i72<1.015749216079712){
   if(i0<0.08451318740844727){
    if(i37<1.011258602142334){
     s0+=57266.0;
     s1+=595.0;
    } else {
     s0+=145.0;
     s1+=73.0;
    }
   } else {
    if(i61<0.041264742612838745){
     s0+=25.0;
     s1+=199.0;
    } else {
     s0+=39.0;
     s1+=7.0;
    }
   }
  } else {
   if(i19<1.000387191772461){
    if(i0<0.08733031153678894){
     s0+=157.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=50.0;
    }
   } else {
    if(i1<0.07251593470573425){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i6<1.0005884170532227){
   if(i2<0.08522903919219971){
    if(i6<0.9966542720794678){
     s0+=6125.0;
     s1+=146.0;
    } else {
     s0+=4762.0;
     s1+=1117.0;
    }
   } else {
    if(i7<-0.000432431697845459){
     s0+=311.0;
     s1+=1.0;
    } else {
     s0+=683.0;
     s1+=1801.0;
    }
   }
  } else {
   if(i0<0.11332878470420837){
    if(i24<1.0226898193359375){
     s0+=562.0;
     s1+=679.0;
    } else {
     s0+=284.0;
     s1+=9.0;
    }
   } else {
    if(i26<0.026289861649274826){
     s0+=123.0;
     s1+=331.0;
    } else {
     s0+=29.0;
     s1+=1871.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004666447639465332){
  if(i11<1.040318250656128){
   if(i13<1.0096540451049805){
    if(i7<0.0003967881202697754){
     s0+=489.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<-3.371541606611572e-05){
     s1+=20.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i9<1.0065150260925293){
    if(i26<0.014408095739781857){
     s0+=74.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=133.0;
    }
   } else {
    if(i53<0.9999507665634155){
     s1+=189.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i28<0.00012575354776345193){
   if(i42<0.0001952648162841797){
    s0+=39.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i14<1.0016729831695557){
    if(i2<0.08528143167495728){
     s0+=75.0;
     s1+=104.0;
    } else {
     s0+=19.0;
     s1+=1110.0;
    }
   } else {
    if(i21<1.004330039024353){
     s0+=26.0;
     s1+=973.0;
    } else {
     s0+=9.0;
     s1+=7393.0;
    }
   }
  }
 }
}
if(i6<1.0023996829986572){
 if(i22<1.055574655532837){
  if(i0<0.08208948373794556){
   if(i25<1.0092909336090088){
    if(i56<-0.0022396743297576904){
     s0+=1948.0;
     s1+=266.0;
    } else {
     s0+=55945.0;
     s1+=235.0;
    }
   } else {
    if(i27<1.1039612293243408){
     s1+=28.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i15<0.9938782453536987){
    s0+=160.0;
   } else {
    if(i63<-0.0020912170875817537){
     s0+=63.0;
     s1+=27.0;
    } else {
     s0+=17.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i20<0.004359310492873192){
   if(i17<0.00016629695892333984){
    if(i0<0.07581853866577148){
     s0+=8166.0;
     s1+=801.0;
    } else {
     s0+=1353.0;
     s1+=1368.0;
    }
   } else {
    if(i27<1.2790409326553345){
     s1+=159.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i18<1.0333985090255737){
    if(i2<0.05465662479400635){
     s0+=2012.0;
     s1+=215.0;
    } else {
     s0+=146.0;
     s1+=464.0;
    }
   } else {
    if(i16<-1.6421079635620117e-05){
     s0+=269.0;
    } else {
     s0+=527.0;
     s1+=2187.0;
    }
   }
  }
 }
} else {
 if(i5<-4.330505180405453e-05){
  if(i55<1.0029281377792358){
   if(i6<1.0050899982452393){
    if(i41<0.0075725968927145){
     s0+=43.0;
     s1+=1852.0;
    } else {
     s0+=91.0;
     s1+=342.0;
    }
   } else {
    if(i24<0.9866482019424438){
     s0+=20.0;
     s1+=520.0;
    } else {
     s0+=3.0;
     s1+=8075.0;
    }
   }
  } else {
   if(i32<0.011956550180912018){
    if(i38<-0.004148751497268677){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=61.0;
     s1+=6.0;
    }
   } else {
    if(i30<0.013102433644235134){
     s0+=2.0;
     s1+=249.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i59<6.545315045514144e-07){
   if(i16<2.1755695343017578e-05){
    if(i78<0.0017608404159545898){
     s0+=210.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i53<1.000160813331604){
     s1+=58.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i7<0.00038236379623413086){
    s0+=5.0;
   } else {
    if(i53<1.0002343654632568){
     s1+=163.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i12<1.055552363395691){
 if(i2<0.07720842957496643){
  if(i56<-0.0017164051532745361){
   if(i29<1.1823735237121582){
    if(i15<0.9938390851020813){
     s0+=1168.0;
     s1+=27.0;
    } else {
     s0+=1202.0;
     s1+=784.0;
    }
   } else {
    if(i33<1.0025919675827026){
     s0+=3104.0;
     s1+=55.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i22<1.0485899448394775){
    if(i74<-3.060816197830718e-06){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=53324.0;
     s1+=107.0;
    }
   } else {
    if(i21<1.0070117712020874){
     s0+=5143.0;
     s1+=387.0;
    } else {
     s0+=221.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i68<-0.004760894924402237){
   if(i48<-0.008371502161026001){
    if(i10<-0.0033527910709381104){
     s0+=10.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i39<0.03006279468536377){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=113.0;
     s1+=3.0;
    }
   }
  } else {
   if(i27<1.0840110778808594){
    s0+=157.0;
   } else {
    if(i31<1.0595405101776123){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=84.0;
     s1+=822.0;
    }
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i3<0.00014647841453552246){
   if(i5<-1.3378106814343482e-05){
    if(i8<0.06276518106460571){
     s0+=1296.0;
     s1+=491.0;
    } else {
     s0+=404.0;
     s1+=1312.0;
    }
   } else {
    if(i8<0.21552762389183044){
     s0+=3409.0;
     s1+=294.0;
    } else {
     s0+=148.0;
     s1+=102.0;
    }
   }
  } else {
   if(i20<0.004300478845834732){
    if(i14<1.0007878541946411){
     s0+=149.0;
     s1+=313.0;
    } else {
     s0+=543.0;
     s1+=108.0;
    }
   } else {
    if(i33<1.000563621520996){
     s0+=22.0;
     s1+=679.0;
    } else {
     s0+=102.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i0<0.08277314901351929){
   if(i25<1.015265941619873){
    if(i56<0.0035511255264282227){
     s0+=123.0;
     s1+=701.0;
    } else {
     s0+=42.0;
     s1+=3.0;
    }
   } else {
    if(i31<1.1417229175567627){
     s1+=56.0;
    } else {
     s0+=113.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<0.002468802034854889){
    if(i17<0.0002142786979675293){
     s0+=46.0;
     s1+=12.0;
    } else {
     s1+=180.0;
    }
   } else {
    if(i3<0.0006920695304870605){
     s0+=44.0;
     s1+=543.0;
    } else {
     s0+=49.0;
     s1+=9743.0;
    }
   }
  }
 }
}
if(i9<1.0055713653564453){
 if(i7<0.00044792890548706055){
  if(i8<0.0758880078792572){
   if(i66<0.0007731147343292832){
    if(i12<1.0452277660369873){
     s0+=56347.0;
     s1+=328.0;
    } else {
     s0+=4250.0;
     s1+=814.0;
    }
   } else {
    if(i42<-3.555417060852051e-05){
     s0+=3877.0;
     s1+=172.0;
    } else {
     s0+=2949.0;
     s1+=942.0;
    }
   }
  } else {
   if(i14<0.9985270500183105){
    if(i47<0.003432688768953085){
     s0+=403.0;
     s1+=17.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i59<3.3951771911233664e-05){
     s0+=500.0;
     s1+=290.0;
    } else {
     s0+=327.0;
     s1+=1554.0;
    }
   }
  }
 } else {
  if(i4<3.904104232788086e-05){
   if(i38<0.011095255613327026){
    if(i2<0.10475298762321472){
     s0+=1324.0;
     s1+=239.0;
    } else {
     s0+=32.0;
     s1+=264.0;
    }
   } else {
    if(i33<1.0006113052368164){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=78.0;
    }
   }
  } else {
   if(i27<1.0732574462890625){
    s0+=45.0;
   } else {
    if(i0<0.1270081102848053){
     s0+=201.0;
     s1+=670.0;
    } else {
     s0+=18.0;
     s1+=1313.0;
    }
   }
  }
 }
} else {
 if(i5<-4.2096296965610236e-05){
  if(i7<-0.00030475854873657227){
   s0+=27.0;
  } else {
   if(i12<1.028781533241272){
    s0+=14.0;
   } else {
    if(i0<0.058001816272735596){
     s0+=53.0;
     s1+=256.0;
    } else {
     s0+=15.0;
     s1+=9850.0;
    }
   }
  }
 } else {
  if(i20<0.0024733669124543667){
   if(i27<1.1386182308197021){
    if(i62<0.02640531212091446){
     s1+=14.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i8<0.23045894503593445){
     s0+=710.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   }
  } else {
   if(i47<0.0009370708139613271){
    if(i16<2.4139881134033203e-06){
     s0+=3.0;
     s1+=41.0;
    } else {
     s0+=49.0;
     s1+=2.0;
    }
   } else {
    if(i34<1.2915897369384766){
     s1+=188.0;
    } else {
     s0+=11.0;
    }
   }
  }
 }
}
if(i4<3.427267074584961e-05){
 if(i2<0.08225265145301819){
  if(i0<0.0692034363746643){
   if(i57<-0.0013702809810638428){
    if(i43<0.002400488592684269){
     s0+=1855.0;
     s1+=621.0;
    } else {
     s0+=3621.0;
     s1+=182.0;
    }
   } else {
    if(i28<0.00029578711837530136){
     s0+=54394.0;
     s1+=248.0;
    } else {
     s0+=7063.0;
     s1+=461.0;
    }
   }
  } else {
   if(i27<1.2335381507873535){
    if(i35<0.0436113178730011){
     s0+=107.0;
     s1+=529.0;
    } else {
     s0+=747.0;
     s1+=97.0;
    }
   } else {
    if(i50<0.024088948965072632){
     s1+=8.0;
    } else {
     s0+=1011.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i61<0.03487229347229004){
   if(i6<0.9950160980224609){
    if(i41<0.007026590406894684){
     s0+=131.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=38.0;
    }
   } else {
    if(i56<0.006277740001678467){
     s0+=87.0;
     s1+=1758.0;
    } else {
     s0+=199.0;
     s1+=542.0;
    }
   }
  } else {
   if(i60<0.1276751607656479){
    if(i39<0.05671843886375427){
     s0+=82.0;
     s1+=184.0;
    } else {
     s0+=837.0;
     s1+=349.0;
    }
   } else {
    if(i41<0.0017228773795068264){
     s0+=29.0;
    } else {
     s0+=11.0;
     s1+=231.0;
    }
   }
  }
 }
} else {
 if(i31<1.0590304136276245){
  s0+=528.0;
 } else {
  if(i3<0.0009589195251464844){
   if(i0<0.06888946890830994){
    if(i29<1.17421293258667){
     s1+=180.0;
    } else {
     s0+=233.0;
     s1+=61.0;
    }
   } else {
    if(i64<0.0027396678924560547){
     s0+=22.0;
     s1+=996.0;
    } else {
     s0+=113.0;
     s1+=592.0;
    }
   }
  } else {
   if(i0<0.005251765251159668){
    if(i43<0.0033941869623959064){
     s1+=12.0;
    } else {
     s0+=24.0;
     s1+=8.0;
    }
   } else {
    if(i15<1.0061445236206055){
     s0+=70.0;
     s1+=1690.0;
    } else {
     s1+=8238.0;
    }
   }
  }
 }
}
if(i9<1.005910038948059){
 if(i3<0.0005475878715515137){
  if(i28<0.00031432020477950573){
   if(i2<0.08623877167701721){
    if(i13<1.0081498622894287){
     s0+=56652.0;
     s1+=520.0;
    } else {
     s0+=94.0;
     s1+=70.0;
    }
   } else {
    if(i16<-9.59634780883789e-06){
     s0+=44.0;
    } else {
     s0+=17.0;
     s1+=160.0;
    }
   }
  } else {
   if(i4<-1.8417835235595703e-05){
    if(i12<1.0428757667541504){
     s0+=5807.0;
     s1+=258.0;
    } else {
     s0+=2906.0;
     s1+=847.0;
    }
   } else {
    if(i49<0.037771157920360565){
     s0+=2503.0;
     s1+=741.0;
    } else {
     s0+=1766.0;
     s1+=2009.0;
    }
   }
  }
 } else {
  if(i30<0.00037497602170333266){
   s0+=166.0;
  } else {
   if(i32<0.023360634222626686){
    if(i77<0.00013871405099052936){
     s0+=160.0;
     s1+=440.0;
    } else {
     s0+=110.0;
     s1+=11.0;
    }
   } else {
    if(i19<0.9987786412239075){
     s0+=3.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=1763.0;
    }
   }
  }
 }
} else {
 if(i23<0.0001893918524729088){
  if(i69<-5.482866981765255e-06){
   s1+=24.0;
  } else {
   s0+=216.0;
  }
 } else {
  if(i37<1.0416412353515625){
   if(i3<0.0004965662956237793){
    if(i40<0.0020368697587400675){
     s0+=40.0;
     s1+=444.0;
    } else {
     s0+=406.0;
     s1+=109.0;
    }
   } else {
    if(i19<1.0056058168411255){
     s0+=119.0;
     s1+=1417.0;
    } else {
     s1+=2656.0;
    }
   }
  } else {
   if(i36<0.001360890339128673){
    s0+=27.0;
   } else {
    if(i10<0.0002282261848449707){
     s0+=9.0;
     s1+=114.0;
    } else {
     s1+=5603.0;
    }
   }
  }
 }
}
if(i59<-2.1927093257545494e-05){
 if(i23<0.00019611301831901073){
  s0+=16.0;
 } else {
  if(i17<0.00021541118621826172){
   if(i4<4.26173210144043e-05){
    s1+=14.0;
   } else {
    if(i40<0.002347405767068267){
     s1+=8.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   s1+=5291.0;
  }
 }
} else {
 if(i16<1.6510486602783203e-05){
  if(i2<0.07907184958457947){
   if(i22<1.0467959642410278){
    if(i75<0.04214908927679062){
     s0+=48892.0;
     s1+=84.0;
    } else {
     s0+=5589.0;
     s1+=211.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=3064.0;
     s1+=1290.0;
    } else {
     s0+=10009.0;
     s1+=400.0;
    }
   }
  } else {
   if(i7<-0.0004131197929382324){
    if(i71<0.0010154545307159424){
     s0+=392.0;
    } else {
     s0+=8.0;
     s1+=5.0;
    }
   } else {
    if(i39<0.04697912931442261){
     s0+=91.0;
     s1+=2038.0;
    } else {
     s0+=913.0;
     s1+=1309.0;
    }
   }
  }
 } else {
  if(i4<3.88026237487793e-05){
   if(i43<0.008942782878875732){
    if(i65<-0.0014471617760136724){
     s0+=13.0;
     s1+=69.0;
    } else {
     s0+=1435.0;
     s1+=356.0;
    }
   } else {
    if(i9<0.9775466918945312){
     s0+=111.0;
     s1+=59.0;
    } else {
     s0+=32.0;
     s1+=233.0;
    }
   }
  } else {
   if(i34<1.0762357711791992){
    s0+=225.0;
   } else {
    if(i20<0.001812203787267208){
     s0+=33.0;
    } else {
     s0+=237.0;
     s1+=5765.0;
    }
   }
  }
 }
}
if(i3<0.000546872615814209){
 if(i0<0.07860633730888367){
  if(i63<0.0075655728578567505){
   if(i12<1.0436501502990723){
    if(i48<-0.0010314583778381348){
     s0+=8995.0;
     s1+=329.0;
    } else {
     s0+=50539.0;
     s1+=174.0;
    }
   } else {
    if(i34<1.1034480333328247){
     s0+=1735.0;
     s1+=570.0;
    } else {
     s0+=3839.0;
     s1+=66.0;
    }
   }
  } else {
   if(i2<0.022112369537353516){
    if(i53<0.9998117685317993){
     s0+=967.0;
     s1+=166.0;
    } else {
     s0+=1262.0;
     s1+=45.0;
    }
   } else {
    if(i68<-0.002372540533542633){
     s0+=533.0;
     s1+=67.0;
    } else {
     s0+=609.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i33<0.9990924596786499){
   if(i22<1.398578405380249){
    if(i4<-3.463029861450195e-05){
     s0+=419.0;
    } else {
     s0+=84.0;
     s1+=9.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i45<0.015282273292541504){
    if(i31<1.0596027374267578){
     s0+=106.0;
     s1+=2.0;
    } else {
     s0+=346.0;
     s1+=2571.0;
    }
   } else {
    if(i5<-2.1036785256001167e-05){
     s0+=347.0;
     s1+=910.0;
    } else {
     s0+=559.0;
     s1+=106.0;
    }
   }
  }
 }
} else {
 if(i20<0.00214362028054893){
  if(i6<1.004623293876648){
   if(i37<0.9914823174476624){
    s1+=8.0;
   } else {
    if(i65<0.0029963033739477396){
     s0+=314.0;
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  } else {
   s1+=153.0;
  }
 } else {
  if(i55<0.9942432045936584){
   s0+=37.0;
  } else {
   if(i6<1.0032435655593872){
    if(i32<0.02303018793463707){
     s0+=164.0;
     s1+=346.0;
    } else {
     s0+=7.0;
     s1+=822.0;
    }
   } else {
    if(i15<1.0061564445495605){
     s0+=93.0;
     s1+=2008.0;
    } else {
     s1+=8430.0;
    }
   }
  }
 }
}
if(i8<0.072673499584198){
 if(i0<0.07744550704956055){
  if(i4<4.1544437408447266e-05){
   if(i54<-0.028364956378936768){
    if(i42<-3.802776336669922e-05){
     s0+=1167.0;
     s1+=65.0;
    } else {
     s0+=1206.0;
     s1+=522.0;
    }
   } else {
    if(i11<1.0398929119110107){
     s0+=61001.0;
     s1+=810.0;
    } else {
     s0+=4997.0;
     s1+=490.0;
    }
   }
  } else {
   if(i6<1.0008702278137207){
    if(i24<0.8834402561187744){
     s1+=1.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i69<-5.909303581574932e-06){
     s0+=115.0;
     s1+=695.0;
    } else {
     s0+=133.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i34<1.0806758403778076){
   if(i25<1.0090699195861816){
    if(i42<-1.9669532775878906e-06){
     s0+=127.0;
    } else {
     s0+=13.0;
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i35<0.048660725355148315){
    if(i7<-0.0004951357841491699){
     s0+=6.0;
    } else {
     s0+=36.0;
     s1+=1917.0;
    }
   } else {
    if(i55<1.0013372898101807){
     s0+=67.0;
     s1+=62.0;
    } else {
     s0+=65.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i9<1.0065597295761108){
  if(i47<0.0014648569049313664){
   if(i50<0.059582024812698364){
    if(i14<0.9982161521911621){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=403.0;
    }
   } else {
    if(i39<0.04290178418159485){
     s0+=54.0;
     s1+=292.0;
    } else {
     s0+=1206.0;
     s1+=496.0;
    }
   }
  } else {
   if(i2<0.10268300771713257){
    if(i17<-0.0002427995204925537){
     s0+=248.0;
     s1+=65.0;
    } else {
     s0+=151.0;
     s1+=370.0;
    }
   } else {
    if(i12<1.1264827251434326){
     s0+=125.0;
     s1+=746.0;
    } else {
     s0+=9.0;
     s1+=1762.0;
    }
   }
  }
 } else {
  if(i4<1.1920928955078125e-05){
   if(i19<0.9982955455780029){
    if(i40<0.00690552219748497){
     s0+=1.0;
     s1+=8.0;
    } else {
     s1+=87.0;
    }
   } else {
    if(i27<1.2604451179504395){
     s1+=24.0;
    } else {
     s0+=70.0;
     s1+=18.0;
    }
   }
  } else {
   if(i9<1.008596658706665){
    if(i20<0.003842579899355769){
     s0+=23.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=411.0;
    }
   } else {
    if(i3<0.00042703747749328613){
     s0+=11.0;
     s1+=143.0;
    } else {
     s1+=7746.0;
    }
   }
  }
 }
}
if(i21<1.0066628456115723){
 if(i4<4.035234451293945e-05){
  if(i28<0.0003361423150636256){
   if(i45<-0.0080796480178833){
    if(i77<4.5621585741173476e-05){
     s0+=36.0;
     s1+=56.0;
    } else {
     s0+=111.0;
     s1+=20.0;
    }
   } else {
    if(i24<1.0064244270324707){
     s0+=55878.0;
     s1+=496.0;
    } else {
     s0+=909.0;
     s1+=137.0;
    }
   }
  } else {
   if(i51<-7.780166924931109e-05){
    if(i62<0.037825312465429306){
     s0+=1072.0;
     s1+=231.0;
    } else {
     s0+=1770.0;
     s1+=1934.0;
    }
   } else {
    if(i10<-0.0014786124229431152){
     s0+=5537.0;
     s1+=216.0;
    } else {
     s0+=3043.0;
     s1+=803.0;
    }
   }
  }
 } else {
  if(i19<0.9984983205795288){
   if(i41<0.0024539486039429903){
    s0+=230.0;
   } else {
    if(i69<-1.3967009181214962e-05){
     s0+=6.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   }
  } else {
   if(i20<0.0023635593242943287){
    if(i32<0.015527553856372833){
     s0+=39.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i26<0.03789963200688362){
     s0+=148.0;
     s1+=713.0;
    } else {
     s0+=36.0;
     s1+=1505.0;
    }
   }
  }
 }
} else {
 if(i55<0.9998517632484436){
  if(i16<-8.314847946166992e-06){
   if(i40<0.002687575528398156){
    s1+=3.0;
   } else {
    if(i45<0.13513994216918945){
     s0+=194.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.07057240605354309){
    if(i69<-4.9238760766456835e-06){
     s0+=2.0;
     s1+=107.0;
    } else {
     s0+=232.0;
     s1+=64.0;
    }
   } else {
    if(i47<0.0010286035249009728){
     s0+=98.0;
     s1+=1144.0;
    } else {
     s0+=2.0;
     s1+=6946.0;
    }
   }
  }
 } else {
  if(i19<1.002526044845581){
   if(i70<0.0005726205417886376){
    if(i2<0.1074533760547638){
     s0+=1277.0;
     s1+=56.0;
    } else {
     s0+=195.0;
     s1+=146.0;
    }
   } else {
    if(i1<0.06868308782577515){
     s0+=35.0;
     s1+=56.0;
    } else {
     s0+=12.0;
     s1+=851.0;
    }
   }
  } else {
   if(i47<0.0008981227874755859){
    if(i42<0.00026541948318481445){
     s0+=76.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i70<0.00016176409553736448){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=1775.0;
    }
   }
  }
 }
}
if(i6<1.0024685859680176){
 if(i49<0.03150205686688423){
  if(i71<-9.255722397938371e-05){
   if(i13<1.0102072954177856){
    if(i0<0.06253355741500854){
     s0+=109.0;
     s1+=6.0;
    } else {
     s0+=57.0;
     s1+=95.0;
    }
   } else {
    if(i36<0.0005320878699421883){
     s0+=2.0;
    } else {
     s1+=404.0;
    }
   }
  } else {
   if(i56<-0.0025855302810668945){
    if(i10<-0.00042697787284851074){
     s0+=613.0;
     s1+=427.0;
    } else {
     s0+=349.0;
     s1+=21.0;
    }
   } else {
    if(i5<-3.7654874176951125e-05){
     s0+=1179.0;
     s1+=424.0;
    } else {
     s0+=57892.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i2<0.07846620678901672){
   if(i31<1.1034480333328247){
    if(i5<-5.465124104375718e-06){
     s0+=348.0;
     s1+=660.0;
    } else {
     s0+=1802.0;
     s1+=233.0;
    }
   } else {
    if(i47<0.006434008479118347){
     s0+=7301.0;
     s1+=322.0;
    } else {
     s0+=7.0;
     s1+=53.0;
    }
   }
  } else {
   if(i69<1.6895908174774377e-06){
    if(i35<0.057211071252822876){
     s0+=60.0;
     s1+=1481.0;
    } else {
     s0+=741.0;
     s1+=1299.0;
    }
   } else {
    s0+=207.0;
   }
  }
 }
} else {
 if(i44<-1.3838171071256511e-05){
  if(i15<1.0061008930206299){
   if(i55<1.0022995471954346){
    if(i55<0.9975228905677795){
     s0+=18.0;
     s1+=11.0;
    } else {
     s0+=71.0;
     s1+=2286.0;
    }
   } else {
    if(i68<-0.005922151263803244){
     s0+=16.0;
     s1+=98.0;
    } else {
     s0+=68.0;
     s1+=39.0;
    }
   }
  } else {
   if(i15<1.0063955783843994){
    if(i5<-4.355136843514629e-05){
     s0+=1.0;
     s1+=109.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i23<0.0005009460728615522){
     s0+=1.0;
     s1+=677.0;
    } else {
     s1+=7870.0;
    }
   }
  }
 } else {
  if(i29<1.1983051300048828){
   if(i51<-8.233483094954863e-05){
    s1+=152.0;
   } else {
    if(i11<1.0583995580673218){
     s0+=13.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i47<0.0011181130539625883){
    s0+=196.0;
   } else {
    s1+=46.0;
   }
  }
 }
}
if(i8<0.07231146097183228){
 if(i13<1.0080969333648682){
  if(i4<3.904104232788086e-05){
   if(i23<0.00029205167084001005){
    if(i56<-0.004355043172836304){
     s1+=16.0;
    } else {
     s0+=52524.0;
     s1+=239.0;
    }
   } else {
    if(i68<-0.0032388668041676283){
     s0+=6740.0;
     s1+=160.0;
    } else {
     s0+=8434.0;
     s1+=1792.0;
    }
   }
  } else {
   if(i55<0.9977967739105225){
    if(i57<-0.016324341297149658){
     s1+=3.0;
    } else {
     s0+=282.0;
    }
   } else {
    if(i0<0.05607566237449646){
     s0+=113.0;
     s1+=223.0;
    } else {
     s0+=22.0;
     s1+=407.0;
    }
   }
  }
 } else {
  if(i5<-4.391720358398743e-05){
   if(i0<0.05333930253982544){
    if(i44<-1.0978090358548798e-05){
     s0+=15.0;
     s1+=149.0;
    } else {
     s0+=34.0;
     s1+=7.0;
    }
   } else {
    if(i10<-0.0009895265102386475){
     s0+=3.0;
    } else {
     s0+=15.0;
     s1+=1506.0;
    }
   }
  } else {
   if(i36<0.0013786985073238611){
    if(i5<-2.2052408894523978e-05){
     s0+=3.0;
     s1+=179.0;
    } else {
     s0+=134.0;
     s1+=13.0;
    }
   } else {
    if(i19<1.005556583404541){
     s0+=732.0;
     s1+=24.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i42<-0.0001328587532043457){
  if(i69<-2.720253405641415e-06){
   if(i34<1.121320128440857){
    s0+=12.0;
   } else {
    if(i59<0.00026816767058335245){
     s1+=125.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i42<-0.00014096498489379883){
    if(i40<0.030147749930620193){
     s0+=440.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i77<3.930623643100262e-05){
     s0+=2.0;
     s1+=20.0;
    } else {
     s0+=31.0;
    }
   }
  }
 } else {
  if(i70<0.00019094336312264204){
   if(i38<0.003939032554626465){
    if(i39<0.0536840558052063){
     s0+=47.0;
     s1+=420.0;
    } else {
     s0+=129.0;
     s1+=91.0;
    }
   } else {
    if(i76<0.9990411996841431){
     s0+=15.0;
     s1+=44.0;
    } else {
     s0+=376.0;
     s1+=85.0;
    }
   }
  } else {
   if(i8<0.1002473533153534){
    if(i55<1.001432180404663){
     s0+=326.0;
     s1+=1455.0;
    } else {
     s0+=315.0;
     s1+=223.0;
    }
   } else {
    if(i61<0.03922635316848755){
     s0+=43.0;
     s1+=7614.0;
    } else {
     s0+=191.0;
     s1+=2454.0;
    }
   }
  }
 }
}
if(i1<0.08303147554397583){
 if(i22<1.0486011505126953){
  if(i23<0.0002873327466659248){
   if(i2<0.08094984292984009){
    if(i3<0.0010156631469726562){
     s0+=48792.0;
     s1+=94.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i44<-1.456474456063006e-05){
     s1+=2.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i17<-0.0002892613410949707){
    if(i45<-0.02280518412590027){
     s0+=66.0;
     s1+=2.0;
    } else {
     s0+=3883.0;
    }
   } else {
    if(i44<-7.994131919986103e-06){
     s0+=164.0;
     s1+=96.0;
    } else {
     s0+=2875.0;
     s1+=174.0;
    }
   }
  }
 } else {
  if(i15<1.005293607711792){
   if(i16<1.8537044525146484e-05){
    if(i26<0.014449253678321838){
     s0+=7735.0;
     s1+=408.0;
    } else {
     s0+=4302.0;
     s1+=1126.0;
    }
   } else {
    if(i29<1.1480928659439087){
     s0+=7.0;
     s1+=158.0;
    } else {
     s0+=903.0;
     s1+=313.0;
    }
   }
  } else {
   if(i6<1.0028468370437622){
    if(i1<0.06372085213661194){
     s0+=141.0;
     s1+=14.0;
    } else {
     s0+=14.0;
     s1+=41.0;
    }
   } else {
    if(i69<-4.5565284381154925e-06){
     s0+=3.0;
     s1+=565.0;
    } else {
     s0+=29.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i5<-1.9298850020277314e-05){
  if(i1<0.12466564774513245){
   if(i59<9.039076394401491e-05){
    if(i27<1.2371783256530762){
     s0+=9.0;
     s1+=1635.0;
    } else {
     s0+=173.0;
     s1+=147.0;
    }
   } else {
    if(i38<0.003909707069396973){
     s0+=46.0;
     s1+=363.0;
    } else {
     s0+=251.0;
     s1+=26.0;
    }
   }
  } else {
   if(i22<1.0500699281692505){
    if(i78<-0.002418607473373413){
     s1+=1.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i32<0.02324347011744976){
     s0+=134.0;
     s1+=2100.0;
    } else {
     s0+=18.0;
     s1+=9335.0;
    }
   }
  }
 } else {
  if(i6<0.9959359169006348){
   if(i20<0.006275280844420195){
    if(i16<-1.341104507446289e-05){
     s0+=645.0;
    } else {
     s0+=50.0;
     s1+=3.0;
    }
   } else {
    if(i55<1.002414584159851){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i73<1.0092895030975342){
    if(i9<0.9964253902435303){
     s0+=29.0;
     s1+=344.0;
    } else {
     s0+=61.0;
     s1+=46.0;
    }
   } else {
    if(i6<1.00169038772583){
     s0+=653.0;
     s1+=171.0;
    } else {
     s0+=5.0;
     s1+=59.0;
    }
   }
  }
 }
}
if(i6<1.002413034439087){
 if(i8<0.07245847582817078){
  if(i26<0.01671610400080681){
   if(i21<1.0079689025878906){
    if(i56<-0.002239435911178589){
     s0+=2529.0;
     s1+=462.0;
    } else {
     s0+=56029.0;
     s1+=273.0;
    }
   } else {
    if(i51<-0.00034173153107985854){
     s0+=607.0;
     s1+=60.0;
    } else {
     s0+=123.0;
     s1+=224.0;
    }
   }
  } else {
   if(i0<0.07558953762054443){
    if(i27<1.100754976272583){
     s0+=1497.0;
     s1+=750.0;
    } else {
     s0+=7841.0;
     s1+=380.0;
    }
   } else {
    if(i7<-0.0003063678741455078){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=83.0;
     s1+=690.0;
    }
   }
  }
 } else {
  if(i0<0.10024452209472656){
   if(i68<-0.004117859527468681){
    if(i72<0.9800536632537842){
     s0+=7.0;
     s1+=16.0;
    } else {
     s0+=562.0;
     s1+=19.0;
    }
   } else {
    if(i14<0.9985267519950867){
     s0+=156.0;
     s1+=8.0;
    } else {
     s0+=223.0;
     s1+=338.0;
    }
   }
  } else {
   if(i36<0.003931502345949411){
    if(i35<0.07758542895317078){
     s0+=29.0;
     s1+=768.0;
    } else {
     s0+=626.0;
     s1+=187.0;
    }
   } else {
    if(i20<0.005105426535010338){
     s0+=144.0;
     s1+=438.0;
    } else {
     s0+=30.0;
     s1+=1273.0;
    }
   }
  }
 }
} else {
 if(i70<0.0004622391425073147){
  if(i77<0.00012863261508755386){
   if(i8<0.041143834590911865){
    if(i5<-6.376381497830153e-05){
     s1+=102.0;
    } else {
     s0+=85.0;
     s1+=20.0;
    }
   } else {
    if(i5<-3.8562830013688654e-05){
     s0+=24.0;
     s1+=2165.0;
    } else {
     s0+=19.0;
     s1+=5.0;
    }
   }
  } else {
   if(i17<0.00027358531951904297){
    if(i73<0.891364574432373){
     s1+=3.0;
    } else {
     s0+=193.0;
     s1+=1.0;
    }
   } else {
    s1+=137.0;
   }
  }
 } else {
  if(i67<9.85043152468279e-06){
   if(i10<-0.000559687614440918){
    if(i33<1.0010323524475098){
     s0+=12.0;
     s1+=28.0;
    } else {
     s1+=179.0;
    }
   } else {
    s1+=7788.0;
   }
  } else {
   if(i32<0.00995706208050251){
    if(i64<0.0004101693630218506){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   } else {
    if(i32<0.02012684755027294){
     s0+=9.0;
     s1+=38.0;
    } else {
     s1+=962.0;
    }
   }
  }
 }
}
if(i12<1.0527000427246094){
 if(i13<1.0081751346588135){
  if(i2<0.07771843671798706){
   if(i43<0.00031100487103685737){
    if(i6<1.004598617553711){
     s0+=47118.0;
     s1+=50.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i59<9.32320617721416e-05){
     s0+=7206.0;
     s1+=1061.0;
    } else {
     s0+=9105.0;
     s1+=78.0;
    }
   }
  } else {
   if(i6<0.9969298839569092){
    if(i37<0.9745922088623047){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=234.0;
     s1+=11.0;
    }
   } else {
    if(i35<0.05852031707763672){
     s0+=14.0;
     s1+=482.0;
    } else {
     s0+=93.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i22<1.0836663246154785){
   if(i40<0.0023591173812747){
    if(i13<1.0094887018203735){
     s0+=10.0;
     s1+=67.0;
    } else {
     s1+=253.0;
    }
   } else {
    if(i25<1.0111851692199707){
     s0+=23.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i20<0.003277459181845188){
    s0+=112.0;
   } else {
    s1+=23.0;
   }
  }
 }
} else {
 if(i14<1.0016396045684814){
  if(i1<0.08710184693336487){
   if(i26<0.017666414380073547){
    if(i34<1.1037919521331787){
     s0+=939.0;
     s1+=227.0;
    } else {
     s0+=2707.0;
     s1+=55.0;
    }
   } else {
    if(i27<1.1039612293243408){
     s0+=136.0;
     s1+=370.0;
    } else {
     s0+=1350.0;
     s1+=270.0;
    }
   }
  } else {
   if(i39<0.04628950357437134){
    if(i76<0.9939846992492676){
     s0+=35.0;
     s1+=22.0;
    } else {
     s0+=67.0;
     s1+=2484.0;
    }
   } else {
    if(i33<0.9988264441490173){
     s0+=292.0;
     s1+=9.0;
    } else {
     s0+=795.0;
     s1+=1614.0;
    }
   }
  }
 } else {
  if(i4<3.653764724731445e-05){
   if(i1<0.12108036875724792){
    if(i70<0.0015355106443166733){
     s0+=459.0;
     s1+=60.0;
    } else {
     s0+=22.0;
     s1+=65.0;
    }
   } else {
    if(i26<0.02108599618077278){
     s0+=9.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=255.0;
    }
   }
  } else {
   if(i17<6.258487701416016e-06){
    if(i0<0.14921975135803223){
     s0+=245.0;
     s1+=490.0;
    } else {
     s0+=5.0;
     s1+=691.0;
    }
   } else {
    if(i3<0.0009316205978393555){
     s0+=16.0;
     s1+=193.0;
    } else {
     s0+=1.0;
     s1+=8307.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i50<0.06538689136505127){
  if(i28<0.0002990897628478706){
   if(i46<1.0072576999664307){
    if(i43<0.00028755911625921726){
     s0+=45350.0;
     s1+=31.0;
    } else {
     s0+=10147.0;
     s1+=567.0;
    }
   } else {
    if(i0<0.067360520362854){
     s0+=864.0;
     s1+=24.0;
    } else {
     s0+=16.0;
     s1+=147.0;
    }
   }
  } else {
   if(i34<1.1800893545150757){
    if(i27<1.0840110778808594){
     s0+=2364.0;
    } else {
     s0+=1879.0;
     s1+=2061.0;
    }
   } else {
    if(i11<1.0644577741622925){
     s0+=6914.0;
     s1+=360.0;
    } else {
     s0+=1233.0;
     s1+=546.0;
    }
   }
  }
 } else {
  if(i0<0.11256486177444458){
   if(i38<0.0040878355503082275){
    if(i35<0.050932228565216064){
     s0+=30.0;
     s1+=87.0;
    } else {
     s0+=536.0;
     s1+=143.0;
    }
   } else {
    if(i50<0.06542634963989258){
     s1+=3.0;
    } else {
     s0+=672.0;
     s1+=17.0;
    }
   }
  } else {
   if(i5<-1.3823204426444136e-05){
    if(i39<0.07961234450340271){
     s0+=13.0;
     s1+=1172.0;
    } else {
     s0+=206.0;
     s1+=601.0;
    }
   } else {
    if(i41<0.0017012340249493718){
     s0+=434.0;
     s1+=32.0;
    } else {
     s0+=49.0;
     s1+=126.0;
    }
   }
  }
 }
} else {
 if(i0<0.0584568977355957){
  if(i44<-1.4669136362499557e-05){
   if(i64<0.00140303373336792){
    if(i38<0.0008092522621154785){
     s0+=31.0;
     s1+=389.0;
    } else {
     s0+=17.0;
     s1+=9.0;
    }
   } else {
    s0+=19.0;
   }
  } else {
   if(i16<2.5212764739990234e-05){
    s0+=141.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i19<1.0030033588409424){
   if(i30<0.008992476388812065){
    if(i29<1.25206458568573){
     s0+=13.0;
     s1+=474.0;
    } else {
     s0+=90.0;
     s1+=88.0;
    }
   } else {
    s1+=993.0;
   }
  } else {
   if(i0<0.12487214803695679){
    if(i39<0.058416545391082764){
     s0+=22.0;
     s1+=1371.0;
    } else {
     s0+=29.0;
     s1+=36.0;
    }
   } else {
    if(i5<-3.66762797057163e-05){
     s0+=2.0;
     s1+=7853.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   }
  }
 }
}
if(i14<1.0016309022903442){
 if(i9<1.0055445432662964){
  if(i28<0.0003238476347178221){
   if(i0<0.08451318740844727){
    if(i22<1.048384666442871){
     s0+=51623.0;
     s1+=162.0;
    } else {
     s0+=5359.0;
     s1+=447.0;
    }
   } else {
    if(i14<0.9993138313293457){
     s0+=82.0;
     s1+=8.0;
    } else {
     s0+=16.0;
     s1+=201.0;
    }
   }
  } else {
   if(i0<0.08132588863372803){
    if(i43<0.0022696147207170725){
     s0+=3973.0;
     s1+=1004.0;
    } else {
     s0+=6704.0;
     s1+=217.0;
    }
   } else {
    if(i42<-0.00024336576461791992){
     s0+=375.0;
     s1+=14.0;
    } else {
     s0+=845.0;
     s1+=2453.0;
    }
   }
  }
 } else {
  if(i5<-4.248601908329874e-05){
   if(i70<7.735237886663526e-05){
    if(i3<0.00028264522552490234){
     s1+=2.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i3<-0.0001970529556274414){
     s0+=19.0;
     s1+=31.0;
    } else {
     s0+=42.0;
     s1+=2042.0;
    }
   }
  } else {
   if(i47<0.0010143837425857782){
    if(i14<0.9996787309646606){
     s0+=7.0;
     s1+=45.0;
    } else {
     s0+=700.0;
     s1+=39.0;
    }
   } else {
    if(i27<1.2915897369384766){
     s1+=141.0;
    } else {
     s0+=26.0;
    }
   }
  }
 }
} else {
 if(i55<1.0022071599960327){
  if(i20<0.0009930705418810248){
   if(i74<-4.073445779795293e-06){
    s1+=17.0;
   } else {
    if(i12<1.116572618484497){
     s0+=117.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.00047773122787475586){
    if(i31<1.1084140539169312){
     s1+=77.0;
    } else {
     s0+=234.0;
     s1+=154.0;
    }
   } else {
    if(i11<1.1222221851348877){
     s0+=189.0;
     s1+=4285.0;
    } else {
     s1+=5275.0;
    }
   }
  }
 } else {
  if(i12<1.0908212661743164){
   if(i6<1.0013293027877808){
    if(i15<1.0035970211029053){
     s0+=548.0;
     s1+=11.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i53<1.0003983974456787){
     s0+=20.0;
     s1+=64.0;
    } else {
     s0+=74.0;
     s1+=11.0;
    }
   }
  } else {
   if(i69<-8.254192835011054e-06){
    if(i67<4.3743508285842836e-05){
     s1+=468.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   } else {
    if(i78<-0.001295626163482666){
     s1+=10.0;
    } else {
     s0+=79.0;
    }
   }
  }
 }
}
if(i46<1.007566213607788){
 if(i1<0.0852321982383728){
  if(i4<4.1812658309936523e-05){
   if(i12<1.0412344932556152){
    if(i49<0.026238035410642624){
     s0+=51382.0;
     s1+=287.0;
    } else {
     s0+=7653.0;
     s1+=357.0;
    }
   } else {
    if(i49<0.033553995192050934){
     s0+=5887.0;
     s1+=480.0;
    } else {
     s0+=2253.0;
     s1+=820.0;
    }
   }
  } else {
   if(i31<1.0587575435638428){
    s0+=204.0;
   } else {
    if(i65<0.001540514174848795){
     s0+=84.0;
     s1+=79.0;
    } else {
     s0+=64.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i5<-8.301050002046395e-06){
   if(i20<0.006490567233413458){
    if(i68<-0.0058877007104456425){
     s0+=394.0;
     s1+=214.0;
    } else {
     s0+=173.0;
     s1+=1264.0;
    }
   } else {
    if(i1<0.09781712293624878){
     s0+=51.0;
     s1+=119.0;
    } else {
     s0+=43.0;
     s1+=2656.0;
    }
   }
  } else {
   if(i4<-5.868077278137207e-05){
    s0+=482.0;
   } else {
    if(i35<0.05660903453826904){
     s0+=38.0;
     s1+=165.0;
    } else {
     s0+=468.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i10<0.0010228157043457031){
  if(i44<-1.7518124877824448e-05){
   if(i55<1.0024628639221191){
    if(i0<0.051605820655822754){
     s0+=7.0;
     s1+=32.0;
    } else {
     s1+=630.0;
    }
   } else {
    if(i32<0.022194795310497284){
     s0+=56.0;
     s1+=1.0;
    } else {
     s1+=106.0;
    }
   }
  } else {
   if(i5<-3.8679576391587034e-05){
    if(i44<-2.212153958680574e-06){
     s0+=18.0;
     s1+=517.0;
    } else {
     s0+=22.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.07325664162635803){
     s0+=1241.0;
     s1+=21.0;
    } else {
     s0+=328.0;
     s1+=295.0;
    }
   }
  }
 } else {
  if(i10<0.001556396484375){
   if(i5<-4.407019150676206e-05){
    if(i47<0.0006480542942881584){
     s0+=33.0;
     s1+=56.0;
    } else {
     s0+=9.0;
     s1+=639.0;
    }
   } else {
    if(i40<0.0015495896805077791){
     s1+=55.0;
    } else {
     s0+=122.0;
     s1+=4.0;
    }
   }
  } else {
   if(i20<0.0009362590499222279){
    if(i23<0.00022934688604436815){
     s0+=4.0;
    } else {
     s1+=39.0;
    }
   } else {
    s1+=7965.0;
   }
  }
 }
}
if(i4<3.653764724731445e-05){
 if(i1<0.08524474501609802){
  if(i23<0.00031541407224722207){
   if(i37<1.0108296871185303){
    if(i43<0.00028934289002791047){
     s0+=46067.0;
     s1+=46.0;
    } else {
     s0+=7729.0;
     s1+=225.0;
    }
   } else {
    if(i30<0.0011726651573553681){
     s0+=8.0;
     s1+=63.0;
    } else {
     s0+=23.0;
     s1+=1.0;
    }
   }
  } else {
   if(i15<0.9937534332275391){
    if(i47<0.006550593301653862){
     s0+=8263.0;
     s1+=97.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i45<0.009394168853759766){
     s0+=5257.0;
     s1+=1615.0;
    } else {
     s0+=1425.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i4<-4.839897155761719e-05){
   if(i34<1.4274868965148926){
    if(i14<0.9985275268554688){
     s0+=535.0;
    } else {
     s0+=49.0;
     s1+=46.0;
    }
   } else {
    if(i11<1.0753405094146729){
     s0+=96.0;
     s1+=24.0;
    } else {
     s1+=125.0;
    }
   }
  } else {
   if(i32<0.023267043754458427){
    if(i73<1.027637243270874){
     s0+=365.0;
     s1+=1329.0;
    } else {
     s0+=623.0;
     s1+=266.0;
    }
   } else {
    if(i26<0.027147367596626282){
     s0+=113.0;
     s1+=202.0;
    } else {
     s0+=44.0;
     s1+=1328.0;
    }
   }
  }
 }
} else {
 if(i53<0.9992542862892151){
  s0+=378.0;
 } else {
  if(i20<0.002195025561377406){
   if(i67<-9.697684618004132e-06){
    s1+=141.0;
   } else {
    if(i41<0.0014530557673424482){
     s1+=46.0;
    } else {
     s0+=153.0;
     s1+=3.0;
    }
   }
  } else {
   if(i15<1.0019569396972656){
    if(i1<0.11724993586540222){
     s0+=191.0;
     s1+=274.0;
    } else {
     s0+=28.0;
     s1+=1222.0;
    }
   } else {
    if(i70<0.00015138057642616332){
     s0+=17.0;
     s1+=162.0;
    } else {
     s0+=30.0;
     s1+=9589.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i0<0.08314955234527588){
  if(i56<-0.0022677183151245117){
   if(i40<0.0018872632645070553){
    if(i41<0.00041884311940521){
     s0+=1034.0;
     s1+=40.0;
    } else {
     s0+=362.0;
     s1+=714.0;
    }
   } else {
    if(i4<3.701448440551758e-05){
     s0+=3561.0;
     s1+=108.0;
    } else {
     s0+=19.0;
     s1+=100.0;
    }
   }
  } else {
   if(i12<1.042891263961792){
    if(i37<1.0117690563201904){
     s0+=56791.0;
     s1+=305.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i19<1.0009264945983887){
     s0+=3180.0;
     s1+=235.0;
    } else {
     s0+=260.0;
     s1+=218.0;
    }
   }
  }
 } else {
  if(i17<-0.00019401311874389648){
   if(i6<0.9944781064987183){
    if(i13<0.9831746220588684){
     s1+=6.0;
    } else {
     s0+=87.0;
     s1+=2.0;
    }
   } else {
    if(i11<1.0378332138061523){
     s0+=9.0;
     s1+=111.0;
    } else {
     s0+=42.0;
     s1+=13.0;
    }
   }
  } else {
   if(i42<-0.0001526474952697754){
    if(i14<0.9980449676513672){
     s0+=38.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i27<1.0840110778808594){
     s0+=9.0;
    } else {
     s0+=22.0;
     s1+=898.0;
    }
   }
  }
 }
} else {
 if(i2<0.09212127327919006){
  if(i3<0.0004773139953613281){
   if(i43<0.002182139316573739){
    if(i62<0.0458722859621048){
     s0+=1719.0;
     s1+=410.0;
    } else {
     s0+=270.0;
     s1+=333.0;
    }
   } else {
    if(i20<0.006549065001308918){
     s0+=2224.0;
     s1+=86.0;
    } else {
     s0+=143.0;
     s1+=110.0;
    }
   }
  } else {
   if(i38<0.003970533609390259){
    if(i36<0.0028176368214190006){
     s0+=1.0;
     s1+=733.0;
    } else {
     s0+=151.0;
     s1+=378.0;
    }
   } else {
    if(i23<0.0010824294295161963){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=74.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i20<0.0017094442155212164){
   if(i9<1.0120426416397095){
    if(i68<-0.004941525869071484){
     s0+=373.0;
     s1+=32.0;
    } else {
     s0+=88.0;
     s1+=75.0;
    }
   } else {
    if(i73<1.1204304695129395){
     s1+=87.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i7<-0.00045490264892578125){
    s0+=217.0;
   } else {
    if(i20<0.003918386064469814){
     s0+=294.0;
     s1+=1045.0;
    } else {
     s0+=124.0;
     s1+=11087.0;
    }
   }
  }
 }
}
if(i12<1.055552363395691){
 if(i0<0.08144187927246094){
  if(i13<1.0081751346588135){
   if(i56<-0.002394437789916992){
    if(i29<1.157791018486023){
     s0+=1272.0;
     s1+=628.0;
    } else {
     s0+=2808.0;
     s1+=64.0;
    }
   } else {
    if(i0<0.06723067164421082){
     s0+=58252.0;
     s1+=361.0;
    } else {
     s0+=1624.0;
     s1+=214.0;
    }
   }
  } else {
   if(i27<1.1039612293243408){
    if(i63<-0.002658764598891139){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=173.0;
    }
   } else {
    if(i10<0.001620948314666748){
     s0+=166.0;
     s1+=6.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i22<1.0494358539581299){
   if(i27<1.0840110778808594){
    s0+=123.0;
   } else {
    if(i61<0.04154348373413086){
     s0+=36.0;
     s1+=46.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   }
  } else {
   if(i42<-0.0002479255199432373){
    if(i22<1.0514512062072754){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i64<0.004434764385223389){
     s0+=27.0;
     s1+=816.0;
    } else {
     s0+=62.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i13<1.0107488632202148){
   if(i20<0.006218794733285904){
    if(i30<0.0011297182645648718){
     s0+=1187.0;
     s1+=670.0;
    } else {
     s0+=4064.0;
     s1+=682.0;
    }
   } else {
    if(i12<1.0819685459136963){
     s0+=231.0;
     s1+=111.0;
    } else {
     s0+=139.0;
     s1+=797.0;
    }
   }
  } else {
   if(i5<-3.155487138428725e-05){
    if(i17<-4.2825937271118164e-05){
     s0+=52.0;
     s1+=227.0;
    } else {
     s0+=25.0;
     s1+=743.0;
    }
   } else {
    if(i26<0.03987519443035126){
     s0+=475.0;
     s1+=129.0;
    } else {
     s0+=30.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i6<1.0041136741638184){
   if(i22<1.1517620086669922){
    if(i32<0.008332841098308563){
     s0+=180.0;
     s1+=93.0;
    } else {
     s0+=139.0;
     s1+=749.0;
    }
   } else {
    if(i32<0.02210160344839096){
     s0+=54.0;
     s1+=73.0;
    } else {
     s0+=6.0;
     s1+=934.0;
    }
   }
  } else {
   if(i59<0.0003171541029587388){
    if(i20<0.011213023215532303){
     s0+=42.0;
     s1+=3482.0;
    } else {
     s0+=1.0;
     s1+=5960.0;
    }
   } else {
    if(i1<0.04969656467437744){
     s0+=5.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i26<0.023377925157546997){
  if(i3<0.0006611049175262451){
   if(i1<0.0832337737083435){
    if(i65<0.0015911435475572944){
     s0+=58493.0;
     s1+=528.0;
    } else {
     s0+=3938.0;
     s1+=555.0;
    }
   } else {
    if(i14<0.9982267022132874){
     s0+=448.0;
     s1+=4.0;
    } else {
     s0+=664.0;
     s1+=470.0;
    }
   }
  } else {
   if(i30<0.00039095559623092413){
    s0+=33.0;
   } else {
    if(i30<0.0019523175433278084){
     s1+=226.0;
    } else {
     s0+=103.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i42<-3.364682197570801e-05){
   if(i2<0.07477414608001709){
    if(i63<0.11594258248806){
     s0+=2285.0;
     s1+=63.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i4<-5.1528215408325195e-05){
     s0+=191.0;
     s1+=15.0;
    } else {
     s0+=31.0;
     s1+=374.0;
    }
   }
  } else {
   if(i17<-0.00033658742904663086){
    if(i8<0.1003628671169281){
     s0+=2931.0;
     s1+=127.0;
    } else {
     s0+=1.0;
     s1+=289.0;
    }
   } else {
    if(i1<0.06351611018180847){
     s0+=384.0;
     s1+=529.0;
    } else {
     s0+=222.0;
     s1+=2756.0;
    }
   }
  }
 }
} else {
 if(i5<-4.214343425701372e-05){
  if(i14<0.9985671043395996){
   if(i15<1.000469446182251){
    s1+=1.0;
   } else {
    s0+=5.0;
   }
  } else {
   if(i0<0.0688396692276001){
    if(i29<1.2271616458892822){
     s0+=1.0;
     s1+=333.0;
    } else {
     s0+=72.0;
     s1+=53.0;
    }
   } else {
    if(i46<1.00142240524292){
     s0+=44.0;
     s1+=679.0;
    } else {
     s0+=14.0;
     s1+=9178.0;
    }
   }
  }
 } else {
  if(i0<0.08273869752883911){
   if(i31<1.083398699760437){
    if(i17<-1.4930963516235352e-05){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=68.0;
    }
   } else {
    if(i1<0.09010043740272522){
     s0+=882.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i58<-0.03884385526180267){
    if(i7<0.0005141496658325195){
     s0+=209.0;
     s1+=53.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i73<1.0374462604522705){
     s0+=45.0;
     s1+=477.0;
    } else {
     s0+=131.0;
     s1+=116.0;
    }
   }
  }
 }
}
if(i0<0.08144927024841309){
 if(i14<1.0018281936645508){
  if(i22<1.0486011505126953){
   if(i56<-0.002403557300567627){
    if(i27<1.0840110778808594){
     s0+=850.0;
    } else {
     s0+=684.0;
     s1+=189.0;
    }
   } else {
    if(i43<0.00025066296802833676){
     s0+=42634.0;
     s1+=6.0;
    } else {
     s0+=11723.0;
     s1+=128.0;
    }
   }
  } else {
   if(i0<0.05867213010787964){
    if(i34<1.1037919521331787){
     s0+=2209.0;
     s1+=632.0;
    } else {
     s0+=8658.0;
     s1+=224.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=368.0;
     s1+=594.0;
    } else {
     s0+=1562.0;
     s1+=213.0;
    }
   }
  }
 } else {
  if(i36<0.0020942187402397394){
   if(i29<1.0595924854278564){
    s0+=9.0;
   } else {
    s1+=429.0;
   }
  } else {
   if(i55<1.001810073852539){
    if(i3<0.0009398460388183594){
     s0+=176.0;
     s1+=86.0;
    } else {
     s0+=39.0;
     s1+=288.0;
    }
   } else {
    if(i22<1.136263370513916){
     s0+=485.0;
     s1+=30.0;
    } else {
     s0+=62.0;
     s1+=48.0;
    }
   }
  }
 }
} else {
 if(i17<6.467103958129883e-05){
  if(i7<-0.00043773651123046875){
   if(i17<-0.00046449899673461914){
    if(i5<-2.6176523533649743e-05){
     s1+=13.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i27<1.4901387691497803){
     s0+=348.0;
    } else {
     s0+=16.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<-1.3825629139319062e-05){
    if(i32<0.023250535130500793){
     s0+=443.0;
     s1+=1176.0;
    } else {
     s0+=88.0;
     s1+=2493.0;
    }
   } else {
    if(i48<-0.000447690486907959){
     s0+=232.0;
     s1+=284.0;
    } else {
     s0+=461.0;
     s1+=119.0;
    }
   }
  }
 } else {
  if(i10<0.00012379884719848633){
   s0+=17.0;
  } else {
   if(i9<1.008744239807129){
    if(i22<1.0473464727401733){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=86.0;
     s1+=1373.0;
    }
   } else {
    if(i15<1.0001106262207031){
     s0+=22.0;
     s1+=363.0;
    } else {
     s0+=5.0;
     s1+=8359.0;
    }
   }
  }
 }
}
if(i1<0.0835462212562561){
 if(i4<4.166364669799805e-05){
  if(i43<0.00031347357435151935){
   if(i6<1.0025357007980347){
    if(i18<1.0486375093460083){
     s0+=47013.0;
     s1+=97.0;
    } else {
     s0+=105.0;
     s1+=28.0;
    }
   } else {
    if(i56<-0.000459134578704834){
     s0+=16.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i29<1.103413462638855){
    if(i27<1.0850647687911987){
     s0+=3299.0;
    } else {
     s0+=1772.0;
     s1+=1402.0;
    }
   } else {
    if(i45<-0.019312649965286255){
     s0+=1295.0;
     s1+=245.0;
    } else {
     s0+=15054.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i40<0.00042834237683564425){
   s0+=220.0;
  } else {
   if(i56<0.0025268197059631348){
    if(i27<1.2392117977142334){
     s1+=518.0;
    } else {
     s0+=157.0;
     s1+=400.0;
    }
   } else {
    if(i34<1.2314128875732422){
     s1+=13.0;
    } else {
     s0+=105.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i36<0.006295825354754925){
  if(i14<0.9985276460647583){
   if(i10<-0.0005689859390258789){
    s0+=579.0;
   } else {
    if(i14<0.998018741607666){
     s0+=64.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   }
  } else {
   if(i68<-0.0051826308481395245){
    if(i41<0.0012151442933827639){
     s0+=392.0;
     s1+=45.0;
    } else {
     s0+=481.0;
     s1+=826.0;
    }
   } else {
    if(i31<1.0596027374267578){
     s0+=58.0;
     s1+=2.0;
    } else {
     s0+=252.0;
     s1+=3761.0;
    }
   }
  }
 } else {
  if(i16<-1.3470649719238281e-05){
   if(i13<0.9877523183822632){
    if(i71<0.0013370118103921413){
     s1+=17.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    s0+=52.0;
   }
  } else {
   if(i22<1.0771137475967407){
    if(i4<3.55839729309082e-05){
     s0+=52.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i13<1.0213773250579834){
     s0+=102.0;
     s1+=2860.0;
    } else {
     s1+=6586.0;
    }
   }
  }
 }
}
if(i7<0.00043654441833496094){
 if(i46<1.0072370767593384){
  if(i11<1.0452215671539307){
   if(i2<0.07771843671798706){
    if(i71<0.0002272212877869606){
     s0+=52153.0;
     s1+=323.0;
    } else {
     s0+=10814.0;
     s1+=875.0;
    }
   } else {
    if(i19<0.9976845979690552){
     s0+=217.0;
     s1+=43.0;
    } else {
     s0+=86.0;
     s1+=396.0;
    }
   }
  } else {
   if(i49<0.044029973447322845){
    if(i5<-1.3108663551975042e-05){
     s0+=782.0;
     s1+=444.0;
    } else {
     s0+=2121.0;
     s1+=46.0;
    }
   } else {
    if(i7<-0.00033399462699890137){
     s0+=511.0;
     s1+=34.0;
    } else {
     s0+=764.0;
     s1+=1591.0;
    }
   }
  }
 } else {
  if(i53<0.9998639225959778){
   if(i13<1.0107306241989136){
    if(i32<0.010490287095308304){
     s0+=302.0;
     s1+=26.0;
    } else {
     s0+=91.0;
     s1+=181.0;
    }
   } else {
    if(i9<1.0012989044189453){
     s0+=20.0;
     s1+=14.0;
    } else {
     s0+=16.0;
     s1+=1383.0;
    }
   }
  } else {
   if(i22<1.073743224143982){
    if(i8<0.045990705490112305){
     s0+=66.0;
     s1+=39.0;
    } else {
     s0+=7.0;
     s1+=156.0;
    }
   } else {
    if(i13<1.0253968238830566){
     s0+=1168.0;
     s1+=111.0;
    } else {
     s0+=3.0;
     s1+=97.0;
    }
   }
  }
 }
} else {
 if(i21<1.0066180229187012){
  if(i2<0.10025402903556824){
   if(i63<0.007834849879145622){
    if(i6<1.0020973682403564){
     s0+=1241.0;
     s1+=95.0;
    } else {
     s0+=142.0;
     s1+=245.0;
    }
   } else {
    if(i56<0.0028814971446990967){
     s0+=110.0;
     s1+=510.0;
    } else {
     s0+=49.0;
     s1+=9.0;
    }
   }
  } else {
   if(i61<0.04066568613052368){
    if(i2<0.11576995253562927){
     s0+=16.0;
     s1+=147.0;
    } else {
     s1+=1407.0;
    }
   } else {
    if(i29<1.3423782587051392){
     s0+=87.0;
     s1+=95.0;
    } else {
     s0+=3.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i28<0.0001641943963477388){
   if(i0<0.06281682848930359){
    if(i36<0.0013142535462975502){
     s1+=1.0;
    } else {
     s0+=45.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i34<1.4013257026672363){
    if(i19<1.0005390644073486){
     s0+=156.0;
     s1+=147.0;
    } else {
     s0+=64.0;
     s1+=2211.0;
    }
   } else {
    if(i29<1.2592661380767822){
     s0+=21.0;
     s1+=141.0;
    } else {
     s1+=6257.0;
    }
   }
  }
 }
}
if(i3<0.0005468428134918213){
 if(i26<0.021975524723529816){
  if(i2<0.08196407556533813){
   if(i56<-0.0023464560508728027){
    if(i31<1.1348490715026855){
     s0+=1467.0;
     s1+=505.0;
    } else {
     s0+=1757.0;
     s1+=48.0;
    }
   } else {
    if(i13<1.0086750984191895){
     s0+=58980.0;
     s1+=444.0;
    } else {
     s0+=475.0;
     s1+=202.0;
    }
   }
  } else {
   if(i35<0.061005741357803345){
    if(i4<-5.53131103515625e-05){
     s0+=71.0;
    } else {
     s0+=32.0;
     s1+=622.0;
    }
   } else {
    if(i0<0.11651986837387085){
     s0+=454.0;
     s1+=30.0;
    } else {
     s0+=278.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i30<0.0026752958074212074){
   if(i30<0.0005089318146929145){
    if(i3<0.0002072453498840332){
     s0+=419.0;
     s1+=19.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i7<-0.00037539005279541016){
     s0+=161.0;
     s1+=2.0;
    } else {
     s0+=623.0;
     s1+=1579.0;
    }
   }
  } else {
   if(i18<1.0450997352600098){
    if(i3<-0.0002828240394592285){
     s0+=4627.0;
     s1+=94.0;
    } else {
     s0+=386.0;
     s1+=253.0;
    }
   } else {
    if(i37<1.032813549041748){
     s0+=576.0;
     s1+=808.0;
    } else {
     s0+=45.0;
     s1+=561.0;
    }
   }
  }
 }
} else {
 if(i40<0.00042525172466412187){
  if(i22<1.0470759868621826){
   s0+=195.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i10<0.001430511474609375){
   if(i47<0.0015414822846651077){
    if(i29<1.2287709712982178){
     s0+=29.0;
     s1+=296.0;
    } else {
     s0+=196.0;
     s1+=180.0;
    }
   } else {
    if(i0<0.031083732843399048){
     s0+=59.0;
     s1+=114.0;
    } else {
     s0+=113.0;
     s1+=2752.0;
    }
   }
  } else {
   s1+=8562.0;
  }
 }
}
if(i6<1.0024406909942627){
 if(i50<0.06011611223220825){
  if(i22<1.0494916439056396){
   if(i57<-0.0013626515865325928){
    if(i3<-0.00027507543563842773){
     s0+=1496.0;
     s1+=117.0;
    } else {
     s0+=236.0;
     s1+=102.0;
    }
   } else {
    if(i24<1.0089329481124878){
     s0+=53999.0;
     s1+=176.0;
    } else {
     s0+=38.0;
     s1+=13.0;
    }
   }
  } else {
   if(i0<0.07581853866577148){
    if(i29<1.103413462638855){
     s0+=2444.0;
     s1+=1007.0;
    } else {
     s0+=9641.0;
     s1+=431.0;
    }
   } else {
    if(i76<0.9956896305084229){
     s0+=23.0;
    } else {
     s0+=90.0;
     s1+=1538.0;
    }
   }
  }
 } else {
  if(i16<-1.4424324035644531e-05){
   if(i44<-9.017143383971415e-06){
    if(i12<1.0401077270507812){
     s0+=46.0;
    } else {
     s0+=9.0;
     s1+=22.0;
    }
   } else {
    if(i38<0.008024245500564575){
     s0+=522.0;
    } else {
     s0+=104.0;
     s1+=7.0;
    }
   }
  } else {
   if(i20<0.0033705770038068295){
    if(i1<0.10743147134780884){
     s0+=1006.0;
     s1+=127.0;
    } else {
     s0+=498.0;
     s1+=443.0;
    }
   } else {
    if(i78<8.347630500793457e-05){
     s0+=385.0;
     s1+=873.0;
    } else {
     s0+=39.0;
     s1+=971.0;
    }
   }
  }
 }
} else {
 if(i7<0.0005756020545959473){
  if(i5<-4.3980566260870546e-05){
   if(i44<-9.969077837013174e-06){
    if(i70<9.754734492162243e-05){
     s0+=1.0;
    } else {
     s1+=1618.0;
    }
   } else {
    if(i0<0.07076263427734375){
     s0+=30.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i2<0.06520205736160278){
    if(i53<0.9999407529830933){
     s1+=10.0;
    } else {
     s0+=153.0;
     s1+=1.0;
    }
   } else {
    if(i36<0.0018732011085376143){
     s1+=31.0;
    } else {
     s0+=53.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i3<0.0010051727294921875){
   if(i46<0.9973610639572144){
    if(i20<0.008920791558921337){
     s0+=64.0;
     s1+=59.0;
    } else {
     s0+=9.0;
     s1+=131.0;
    }
   } else {
    if(i11<1.0213534832000732){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=400.0;
    }
   }
  } else {
   if(i2<0.030984431505203247){
    if(i55<0.9976881742477417){
     s0+=12.0;
    } else {
     s0+=11.0;
     s1+=103.0;
    }
   } else {
    if(i17<6.139278411865234e-06){
     s0+=59.0;
     s1+=701.0;
    } else {
     s0+=2.0;
     s1+=8352.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i5<-4.6596313040936366e-05){
  if(i17<-0.00023469328880310059){
   if(i69<-1.4684591405966785e-05){
    if(i32<0.028877727687358856){
     s0+=15.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i8<0.07204344868659973){
     s0+=1513.0;
     s1+=52.0;
    } else {
     s0+=10.0;
     s1+=40.0;
    }
   }
  } else {
   if(i7<2.8580427169799805e-05){
    if(i18<1.0349817276000977){
     s0+=387.0;
     s1+=18.0;
    } else {
     s0+=15.0;
     s1+=39.0;
    }
   } else {
    if(i47<0.00039264842052944005){
     s0+=32.0;
     s1+=31.0;
    } else {
     s0+=40.0;
     s1+=867.0;
    }
   }
  }
 } else {
  if(i57<-0.0014070868492126465){
   if(i9<0.9849709272384644){
    if(i3<0.00037169456481933594){
     s0+=1795.0;
     s1+=25.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i59<3.002906305482611e-05){
     s0+=1174.0;
     s1+=93.0;
    } else {
     s0+=595.0;
     s1+=677.0;
    }
   }
  } else {
   if(i2<0.08401688933372498){
    if(i42<-2.664327621459961e-05){
     s0+=37640.0;
     s1+=37.0;
    } else {
     s0+=22167.0;
     s1+=601.0;
    }
   } else {
    if(i77<0.0001432141725672409){
     s0+=33.0;
     s1+=265.0;
    } else {
     s0+=58.0;
    }
   }
  }
 }
} else {
 if(i10<0.0007564425468444824){
  if(i8<0.09474003314971924){
   if(i7<-0.00023195147514343262){
    if(i13<0.9485457539558411){
     s1+=3.0;
    } else {
     s0+=1178.0;
     s1+=34.0;
    }
   } else {
    if(i55<0.999807596206665){
     s0+=862.0;
     s1+=850.0;
    } else {
     s0+=2765.0;
     s1+=831.0;
    }
   }
  } else {
   if(i20<0.004999159835278988){
    if(i54<0.0764060914516449){
     s0+=163.0;
     s1+=439.0;
    } else {
     s0+=623.0;
     s1+=131.0;
    }
   } else {
    if(i1<0.14503610134124756){
     s0+=79.0;
     s1+=394.0;
    } else {
     s0+=32.0;
     s1+=2011.0;
    }
   }
  }
 } else {
  if(i16<-1.2129545211791992e-05){
   s0+=46.0;
  } else {
   if(i47<0.0009997879387810826){
    if(i77<0.0001370521931676194){
     s0+=82.0;
     s1+=947.0;
    } else {
     s0+=56.0;
     s1+=65.0;
    }
   } else {
    if(i7<0.000356137752532959){
     s0+=6.0;
     s1+=669.0;
    } else {
     s1+=7731.0;
    }
   }
  }
 }
}
if(i4<3.796815872192383e-05){
 if(i12<1.0452277660369873){
  if(i71<0.0002530492492951453){
   if(i75<0.06190942972898483){
    if(i24<1.008434772491455){
     s0+=51839.0;
     s1+=191.0;
    } else {
     s0+=58.0;
     s1+=23.0;
    }
   } else {
    if(i15<1.0007562637329102){
     s0+=639.0;
     s1+=62.0;
    } else {
     s0+=8.0;
     s1+=23.0;
    }
   }
  } else {
   if(i67<8.636002348794136e-06){
    if(i71<0.0004451196873560548){
     s0+=828.0;
     s1+=99.0;
    } else {
     s0+=126.0;
     s1+=197.0;
    }
   } else {
    if(i0<0.07597494125366211){
     s0+=8032.0;
     s1+=319.0;
    } else {
     s0+=166.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i3<0.00018393993377685547){
   if(i7<-0.0003415048122406006){
    if(i70<4.307733615860343e-05){
     s0+=6.0;
     s1+=10.0;
    } else {
     s0+=1905.0;
     s1+=51.0;
    }
   } else {
    if(i1<0.08644363284111023){
     s0+=4797.0;
     s1+=994.0;
    } else {
     s0+=698.0;
     s1+=1741.0;
    }
   }
  } else {
   if(i2<0.10119464993476868){
    if(i73<1.0242223739624023){
     s0+=638.0;
     s1+=630.0;
    } else {
     s0+=269.0;
     s1+=35.0;
    }
   } else {
    if(i5<-1.7277587176067755e-05){
     s0+=81.0;
     s1+=1090.0;
    } else {
     s0+=52.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i53<0.9992160797119141){
  s0+=307.0;
 } else {
  if(i3<0.0009405314922332764){
   if(i20<0.002164027187973261){
    if(i59<8.050330507103354e-06){
     s0+=159.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i7<0.0007558465003967285){
     s0+=32.0;
     s1+=1191.0;
    } else {
     s0+=150.0;
     s1+=346.0;
    }
   }
  } else {
   if(i2<0.03163895010948181){
    if(i54<-0.023296624422073364){
     s0+=6.0;
     s1+=115.0;
    } else {
     s0+=25.0;
     s1+=4.0;
    }
   } else {
    if(i19<0.997504472732544){
     s0+=21.0;
     s1+=147.0;
    } else {
     s0+=50.0;
     s1+=9960.0;
    }
   }
  }
 }
}
if(i8<0.07239711284637451){
 if(i21<1.006883144378662){
  if(i57<-0.0012818574905395508){
   if(i7<0.0006042122840881348){
    if(i3<-0.00027886033058166504){
     s0+=4348.0;
     s1+=361.0;
    } else {
     s0+=1379.0;
     s1+=731.0;
    }
   } else {
    if(i9<0.9813680648803711){
     s0+=185.0;
     s1+=70.0;
    } else {
     s0+=86.0;
     s1+=492.0;
    }
   }
  } else {
   if(i0<0.08223113417625427){
    if(i11<1.0401519536972046){
     s0+=57328.0;
     s1+=376.0;
    } else {
     s0+=4010.0;
     s1+=446.0;
    }
   } else {
    if(i29<1.067516803741455){
     s0+=61.0;
    } else {
     s0+=27.0;
     s1+=337.0;
    }
   }
  }
 } else {
  if(i10<0.0011339783668518066){
   if(i22<1.073743224143982){
    if(i1<0.052060484886169434){
     s0+=74.0;
     s1+=58.0;
    } else {
     s0+=24.0;
     s1+=346.0;
    }
   } else {
    if(i47<0.0017782505601644516){
     s0+=1289.0;
     s1+=102.0;
    } else {
     s0+=2.0;
     s1+=129.0;
    }
   }
  } else {
   if(i40<0.00263557443395257){
    if(i23<0.00015950911620166153){
     s0+=2.0;
    } else {
     s1+=973.0;
    }
   } else {
    if(i46<1.0233638286590576){
     s0+=86.0;
     s1+=25.0;
    } else {
     s0+=8.0;
     s1+=277.0;
    }
   }
  }
 }
} else {
 if(i41<0.004932984709739685){
  if(i16<-1.564621925354004e-05){
   if(i6<0.9965643882751465){
    s0+=366.0;
   } else {
    if(i10<-0.0008819699287414551){
     s1+=2.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i41<0.0004557690699584782){
    if(i44<-6.145824045233894e-06){
     s0+=22.0;
     s1+=23.0;
    } else {
     s0+=226.0;
    }
   } else {
    if(i64<0.004878520965576172){
     s0+=410.0;
     s1+=2563.0;
    } else {
     s0+=515.0;
     s1+=578.0;
    }
   }
  }
 } else {
  if(i17<-0.00024706125259399414){
   if(i51<-0.00012565097131300718){
    if(i2<0.09460940957069397){
     s0+=38.0;
     s1+=39.0;
    } else {
     s0+=12.0;
     s1+=531.0;
    }
   } else {
    if(i66<0.001216400763951242){
     s0+=197.0;
     s1+=40.0;
    } else {
     s0+=16.0;
     s1+=123.0;
    }
   }
  } else {
   if(i2<0.11704805493354797){
    if(i64<0.004106342792510986){
     s0+=33.0;
     s1+=296.0;
    } else {
     s0+=61.0;
     s1+=5.0;
    }
   } else {
    if(i20<0.0032373364083468914){
     s0+=27.0;
     s1+=120.0;
    } else {
     s0+=23.0;
     s1+=8311.0;
    }
   }
  }
 }
}
if(i10<0.0007535815238952637){
 if(i28<0.0003346849698573351){
  if(i1<0.08468607068061829){
   if(i6<1.0026929378509521){
    if(i43<0.0002779301430564374){
     s0+=45451.0;
     s1+=42.0;
    } else {
     s0+=12102.0;
     s1+=654.0;
    }
   } else {
    if(i34<1.2392117977142334){
     s1+=52.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<-0.00019547343254089355){
    if(i26<0.018074221909046173){
     s0+=202.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    if(i0<0.08459776639938354){
     s0+=20.0;
     s1+=15.0;
    } else {
     s0+=22.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i8<0.08101817965507507){
   if(i17<-0.00029328465461730957){
    if(i4<2.0682811737060547e-05){
     s0+=5475.0;
     s1+=124.0;
    } else {
     s0+=102.0;
     s1+=71.0;
    }
   } else {
    if(i5<-2.1875399397686124e-05){
     s0+=1041.0;
     s1+=1259.0;
    } else {
     s0+=4858.0;
     s1+=953.0;
    }
   }
  } else {
   if(i34<1.368408203125){
    if(i20<0.004702878650277853){
     s0+=1018.0;
     s1+=747.0;
    } else {
     s0+=109.0;
     s1+=1002.0;
    }
   } else {
    if(i26<0.031920623034238815){
     s0+=97.0;
     s1+=197.0;
    } else {
     s0+=27.0;
     s1+=1649.0;
    }
   }
  }
 }
} else {
 if(i12<1.0385410785675049){
  if(i16<2.3245811462402344e-05){
   if(i69<-5.4345018725143746e-06){
    s1+=5.0;
   } else {
    if(i72<0.9869783520698547){
     s1+=1.0;
    } else {
     s0+=315.0;
    }
   }
  } else {
   s1+=16.0;
  }
 } else {
  if(i36<0.0039026890881359577){
   if(i27<1.2392117977142334){
    if(i2<0.03330492973327637){
     s0+=27.0;
     s1+=69.0;
    } else {
     s0+=5.0;
     s1+=2176.0;
    }
   } else {
    if(i6<1.005373239517212){
     s0+=338.0;
     s1+=7.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i1<0.0646510124206543){
    if(i64<-0.0021620988845825195){
     s1+=59.0;
    } else {
     s0+=11.0;
    }
   } else {
    s1+=7545.0;
   }
  }
 }
}
if(i2<0.07800492644309998){
 if(i9<1.0060200691223145){
  if(i63<0.010191710665822029){
   if(i6<1.002494215965271){
    if(i23<0.0002816393389366567){
     s0+=52186.0;
     s1+=261.0;
    } else {
     s0+=14399.0;
     s1+=1198.0;
    }
   } else {
    if(i23<0.002374072093516588){
     s0+=32.0;
     s1+=144.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  } else {
   if(i59<2.730660344241187e-05){
    if(i26<0.047252003103494644){
     s0+=717.0;
     s1+=54.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i7<-0.00023406744003295898){
     s0+=819.0;
     s1+=52.0;
    } else {
     s0+=457.0;
     s1+=660.0;
    }
   }
  }
 } else {
  if(i27<1.1386182308197021){
   if(i4<8.404254913330078e-06){
    if(i73<1.0043096542358398){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=629.0;
   }
  } else {
   if(i33<1.0012271404266357){
    if(i70<0.0006567713571712375){
     s0+=643.0;
     s1+=12.0;
    } else {
     s1+=30.0;
    }
   } else {
    s1+=152.0;
   }
  }
 }
} else {
 if(i6<1.0015792846679688){
  if(i27<1.0840110778808594){
   s0+=236.0;
  } else {
   if(i16<-1.4722347259521484e-05){
    if(i27<1.255998969078064){
     s0+=16.0;
     s1+=11.0;
    } else {
     s0+=323.0;
     s1+=6.0;
    }
   } else {
    if(i54<0.051231175661087036){
     s0+=263.0;
     s1+=1981.0;
    } else {
     s0+=853.0;
     s1+=985.0;
    }
   }
  }
 } else {
  if(i46<1.010192632675171){
   if(i32<0.019960034638643265){
    if(i68<-0.005433381535112858){
     s0+=143.0;
     s1+=53.0;
    } else {
     s0+=28.0;
     s1+=333.0;
    }
   } else {
    if(i26<0.015073219314217567){
     s0+=5.0;
     s1+=47.0;
    } else {
     s0+=5.0;
     s1+=2240.0;
    }
   }
  } else {
   if(i3<0.0004273355007171631){
    if(i47<0.00012927901116199791){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=135.0;
    }
   } else {
    if(i32<0.008496323600411415){
     s0+=5.0;
     s1+=401.0;
    } else {
     s0+=1.0;
     s1+=7671.0;
    }
   }
  }
 }
}
if(i3<0.0005478262901306152){
 if(i13<1.0081751346588135){
  if(i2<0.0775662362575531){
   if(i38<-0.0015586614608764648){
    if(i4<-2.2351741790771484e-05){
     s0+=2174.0;
     s1+=173.0;
    } else {
     s0+=1555.0;
     s1+=545.0;
    }
   } else {
    if(i28<0.0002767607511486858){
     s0+=54118.0;
     s1+=344.0;
    } else {
     s0+=10324.0;
     s1+=706.0;
    }
   }
  } else {
   if(i35<0.056002289056777954){
    if(i53<0.999363899230957){
     s0+=71.0;
    } else {
     s0+=72.0;
     s1+=1079.0;
    }
   } else {
    if(i20<0.005620444659143686){
     s0+=1051.0;
     s1+=352.0;
    } else {
     s0+=115.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i26<0.03445890545845032){
   if(i40<0.002216451335698366){
    if(i7<0.00041919946670532227){
     s0+=74.0;
     s1+=674.0;
    } else {
     s0+=53.0;
     s1+=9.0;
    }
   } else {
    if(i71<-0.0002692305133678019){
     s0+=10.0;
     s1+=72.0;
    } else {
     s0+=939.0;
     s1+=203.0;
    }
   }
  } else {
   if(i42<-0.00014206767082214355){
    if(i5<-4.666310996981338e-05){
     s1+=7.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i8<0.05200618505477905){
     s0+=24.0;
     s1+=18.0;
    } else {
     s0+=43.0;
     s1+=703.0;
    }
   }
  }
 }
} else {
 if(i20<0.0021283149253576994){
  if(i17<0.00028777122497558594){
   if(i74<4.703754257207038e-07){
    if(i71<0.00039436237420886755){
     s0+=253.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i17<0.00010672211647033691){
     s0+=8.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   s1+=146.0;
  }
 } else {
  if(i22<1.037168264389038){
   s0+=39.0;
  } else {
   if(i40<0.00876045785844326){
    if(i21<1.0002892017364502){
     s0+=148.0;
     s1+=694.0;
    } else {
     s0+=91.0;
     s1+=3885.0;
    }
   } else {
    if(i12<1.063737392425537){
     s0+=18.0;
     s1+=60.0;
    } else {
     s0+=13.0;
     s1+=6863.0;
    }
   }
  }
 }
}
if(i8<0.07131022214889526){
 if(i1<0.07968196272850037){
  if(i65<0.0015186606906354427){
   if(i12<1.0452277660369873){
    if(i22<1.0475037097930908){
     s0+=53061.0;
     s1+=155.0;
    } else {
     s0+=4739.0;
     s1+=267.0;
    }
   } else {
    if(i29<1.1037919521331787){
     s0+=1444.0;
     s1+=554.0;
    } else {
     s0+=2733.0;
     s1+=80.0;
    }
   }
  } else {
   if(i6<1.0026841163635254){
    if(i31<1.1034480333328247){
     s0+=1975.0;
     s1+=687.0;
    } else {
     s0+=4462.0;
     s1+=352.0;
    }
   } else {
    if(i41<0.0015919156139716506){
     s1+=289.0;
    } else {
     s0+=82.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i6<0.9965639114379883){
   if(i42<-0.00011727213859558105){
    s0+=369.0;
   } else {
    if(i27<1.1860926151275635){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=44.0;
     s1+=9.0;
    }
   }
  } else {
   if(i35<0.04868614673614502){
    if(i40<0.00041858223266899586){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=1913.0;
    }
   } else {
    if(i18<1.0264182090759277){
     s1+=18.0;
    } else {
     s0+=143.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i0<0.10036703944206238){
  if(i35<0.05078873038291931){
   if(i5<-4.063997039338574e-06){
    if(i45<0.013639330863952637){
     s0+=13.0;
     s1+=438.0;
    } else {
     s0+=46.0;
     s1+=4.0;
    }
   } else {
    if(i65<0.004832729697227478){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  } else {
   if(i72<0.9948620200157166){
    if(i59<9.761442197486758e-05){
     s0+=100.0;
     s1+=25.0;
    } else {
     s0+=24.0;
     s1+=41.0;
    }
   } else {
    if(i43<0.0015373120550066233){
     s0+=376.0;
     s1+=98.0;
    } else {
     s0+=607.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i7<-0.00040784478187561035){
   if(i30<0.00658029317855835){
    s0+=235.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i0<0.13196426630020142){
    if(i17<3.272294998168945e-05){
     s0+=349.0;
     s1+=537.0;
    } else {
     s0+=45.0;
     s1+=641.0;
    }
   } else {
    if(i20<0.001632665516808629){
     s0+=172.0;
     s1+=72.0;
    } else {
     s0+=133.0;
     s1+=10510.0;
    }
   }
  }
 }
}
if(i10<0.0007561445236206055){
 if(i11<1.0452277660369873){
  if(i7<0.0006948411464691162){
   if(i2<0.07800492644309998){
    if(i23<0.00028142210794612765){
     s0+=51482.0;
     s1+=194.0;
    } else {
     s0+=12627.0;
     s1+=1118.0;
    }
   } else {
    if(i15<0.9928953051567078){
     s0+=204.0;
     s1+=42.0;
    } else {
     s0+=90.0;
     s1+=540.0;
    }
   }
  } else {
   if(i9<0.982334554195404){
    if(i36<0.013548294082283974){
     s0+=153.0;
     s1+=7.0;
    } else {
     s0+=7.0;
     s1+=44.0;
    }
   } else {
    if(i32<0.01279524713754654){
     s0+=61.0;
     s1+=67.0;
    } else {
     s0+=27.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i30<0.006125977262854576){
   if(i19<1.0003243684768677){
    if(i5<-2.334333839826286e-05){
     s0+=572.0;
     s1+=740.0;
    } else {
     s0+=3454.0;
     s1+=326.0;
    }
   } else {
    if(i32<0.023593077436089516){
     s0+=988.0;
     s1+=730.0;
    } else {
     s0+=48.0;
     s1+=741.0;
    }
   }
  } else {
   if(i12<1.0819644927978516){
    if(i70<0.00042128056520596147){
     s0+=12.0;
     s1+=91.0;
    } else {
     s0+=340.0;
     s1+=31.0;
    }
   } else {
    if(i26<0.02091362327337265){
     s0+=100.0;
     s1+=116.0;
    } else {
     s0+=55.0;
     s1+=2205.0;
    }
   }
  }
 }
} else {
 if(i0<0.058464497327804565){
  if(i64<-0.002209484577178955){
   if(i52<1.0184249877929688){
    if(i15<1.0019183158874512){
     s0+=3.0;
    } else {
     s0+=7.0;
     s1+=164.0;
    }
   } else {
    s0+=8.0;
   }
  } else {
   if(i41<0.0006617727922275662){
    if(i21<0.9979996681213379){
     s0+=2.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i20<0.005637910217046738){
     s0+=586.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i16<-1.0281801223754883e-05){
   s0+=26.0;
  } else {
   if(i44<-1.2730367416224908e-05){
    if(i20<0.001112555619329214){
     s0+=9.0;
     s1+=43.0;
    } else {
     s1+=9245.0;
    }
   } else {
    if(i14<1.0008454322814941){
     s0+=19.0;
     s1+=519.0;
    } else {
     s0+=65.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i18<1.0398095846176147){
  if(i56<-0.002350717782974243){
   if(i4<-1.767277717590332e-05){
    if(i1<0.06981700658798218){
     s0+=3726.0;
     s1+=221.0;
    } else {
     s0+=161.0;
     s1+=173.0;
    }
   } else {
    if(i40<0.0015694259200245142){
     s0+=275.0;
     s1+=484.0;
    } else {
     s0+=1006.0;
     s1+=343.0;
    }
   }
  } else {
   if(i12<1.0452215671539307){
    if(i34<1.0717806816101074){
     s0+=35449.0;
     s1+=9.0;
    } else {
     s0+=21976.0;
     s1+=463.0;
    }
   } else {
    if(i20<0.004180515184998512){
     s0+=3418.0;
     s1+=541.0;
    } else {
     s0+=383.0;
     s1+=432.0;
    }
   }
  }
 } else {
  if(i4<3.635883331298828e-06){
   if(i51<-0.00013682612916454673){
    if(i2<0.08761143684387207){
     s0+=981.0;
     s1+=183.0;
    } else {
     s0+=387.0;
     s1+=861.0;
    }
   } else {
    if(i1<0.09843939542770386){
     s0+=1478.0;
     s1+=65.0;
    } else {
     s0+=320.0;
     s1+=104.0;
    }
   }
  } else {
   if(i5<-2.8086775273550302e-05){
    if(i10<8.881092071533203e-06){
     s0+=344.0;
     s1+=516.0;
    } else {
     s0+=71.0;
     s1+=813.0;
    }
   } else {
    if(i71<0.0005702777998521924){
     s0+=709.0;
     s1+=159.0;
    } else {
     s0+=9.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i40<0.000319811690133065){
  s0+=181.0;
 } else {
  if(i20<0.0022362954914569855){
   if(i3<0.0009722113609313965){
    if(i30<0.0013216111110523343){
     s1+=15.0;
    } else {
     s0+=167.0;
     s1+=14.0;
    }
   } else {
    s1+=155.0;
   }
  } else {
   if(i21<1.0002892017364502){
    if(i60<0.0954156368970871){
     s0+=146.0;
     s1+=626.0;
    } else {
     s0+=12.0;
     s1+=1008.0;
    }
   } else {
    if(i32<0.02075883373618126){
     s0+=86.0;
     s1+=2307.0;
    } else {
     s0+=3.0;
     s1+=7417.0;
    }
   }
  }
 }
}
if(i5<-7.129745790734887e-05){
 if(i1<0.06230133771896362){
  if(i64<-0.0012532472610473633){
   if(i27<1.5682398080825806){
    if(i11<1.0221140384674072){
     s0+=36.0;
     s1+=19.0;
    } else {
     s0+=14.0;
     s1+=209.0;
    }
   } else {
    if(i32<0.047783516347408295){
     s0+=122.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=57.0;
    }
   }
  } else {
   if(i12<1.0412224531173706){
    if(i64<-0.0011317133903503418){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=545.0;
     s1+=1.0;
    }
   } else {
    if(i10<-0.0012856721878051758){
     s0+=120.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i69<-3.743614797713235e-05){
   s0+=54.0;
  } else {
   if(i15<0.9995709657669067){
    if(i51<-0.00026111037004739046){
     s0+=46.0;
     s1+=1186.0;
    } else {
     s0+=117.0;
     s1+=62.0;
    }
   } else {
    if(i13<1.0119602680206299){
     s0+=36.0;
     s1+=1902.0;
    } else {
     s0+=2.0;
     s1+=8140.0;
    }
   }
  }
 }
} else {
 if(i2<0.07478246092796326){
  if(i56<-0.0022593438625335693){
   if(i40<0.0016374588012695312){
    if(i29<1.0670123100280762){
     s0+=1059.0;
     s1+=3.0;
    } else {
     s0+=449.0;
     s1+=780.0;
    }
   } else {
    if(i4<4.4286251068115234e-05){
     s0+=3598.0;
     s1+=184.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   }
  } else {
   if(i24<1.0066983699798584){
    if(i31<1.0598037242889404){
     s0+=42766.0;
     s1+=9.0;
    } else {
     s0+=17454.0;
     s1+=723.0;
    }
   } else {
    if(i20<0.004962942097336054){
     s0+=2413.0;
     s1+=316.0;
    } else {
     s0+=89.0;
     s1+=245.0;
    }
   }
  }
 } else {
  if(i42<-0.00014024972915649414){
   if(i3<-0.000482410192489624){
    s0+=508.0;
   } else {
    if(i44<-1.0015804946306162e-05){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=70.0;
     s1+=1.0;
    }
   }
  } else {
   if(i35<0.050691187381744385){
    if(i22<1.0452215671539307){
     s0+=27.0;
     s1+=13.0;
    } else {
     s0+=56.0;
     s1+=1777.0;
    }
   } else {
    if(i5<-2.363770909141749e-05){
     s0+=443.0;
     s1+=1140.0;
    } else {
     s0+=937.0;
     s1+=353.0;
    }
   }
  }
 }
}
if(i26<0.024029891937971115){
 if(i3<0.0005647540092468262){
  if(i2<0.08024245500564575){
   if(i71<0.00027505389880388975){
    if(i37<1.0078516006469727){
     s0+=55753.0;
     s1+=342.0;
    } else {
     s0+=1624.0;
     s1+=272.0;
    }
   } else {
    if(i43<0.0016565003897994757){
     s0+=1664.0;
     s1+=579.0;
    } else {
     s0+=4336.0;
     s1+=105.0;
    }
   }
  } else {
   if(i5<-1.325759876635857e-05){
    if(i29<1.140648365020752){
     s0+=29.0;
     s1+=663.0;
    } else {
     s0+=351.0;
     s1+=279.0;
    }
   } else {
    if(i39<0.04097241163253784){
     s0+=61.0;
     s1+=62.0;
    } else {
     s0+=639.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i46<1.0025060176849365){
   if(i57<-0.0009314417839050293){
    if(i38<0.002973794937133789){
     s0+=16.0;
     s1+=247.0;
    } else {
     s0+=14.0;
     s1+=10.0;
    }
   } else {
    if(i3<0.0009419918060302734){
     s0+=167.0;
     s1+=24.0;
    } else {
     s0+=28.0;
     s1+=49.0;
    }
   }
  } else {
   if(i3<0.0009450316429138184){
    if(i20<0.002089465968310833){
     s0+=127.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=402.0;
    }
   } else {
    if(i55<1.002142071723938){
     s1+=1835.0;
    } else {
     s0+=9.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i6<0.997406005859375){
  if(i2<0.08078160881996155){
   if(i70<0.0022421889007091522){
    if(i3<-0.0007465481758117676){
     s0+=3927.0;
     s1+=23.0;
    } else {
     s0+=705.0;
     s1+=58.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i69<1.1406721114326501e-06){
    if(i53<0.9977203607559204){
     s0+=39.0;
    } else {
     s0+=26.0;
     s1+=241.0;
    }
   } else {
    if(i36<0.004488363396376371){
     s0+=203.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i20<0.0032181357964873314){
   if(i30<0.00033056072425097227){
    s0+=143.0;
   } else {
    if(i34<1.1819204092025757){
     s0+=171.0;
     s1+=657.0;
    } else {
     s0+=453.0;
     s1+=306.0;
    }
   }
  } else {
   if(i17<-0.0003369450569152832){
    if(i47<0.005405282601714134){
     s0+=412.0;
     s1+=84.0;
    } else {
     s0+=11.0;
     s1+=226.0;
    }
   } else {
    if(i11<1.0178396701812744){
     s0+=32.0;
     s1+=97.0;
    } else {
     s0+=125.0;
     s1+=10475.0;
    }
   }
  }
 }
}
if(i24<1.010181188583374){
 if(i66<0.0010176345240324736){
  if(i73<1.0108890533447266){
   if(i6<1.0025689601898193){
    if(i62<0.03159766644239426){
     s0+=54705.0;
     s1+=396.0;
    } else {
     s0+=6159.0;
     s1+=921.0;
    }
   } else {
    if(i29<1.213886022567749){
     s1+=336.0;
    } else {
     s0+=65.0;
     s1+=32.0;
    }
   }
  } else {
   if(i44<-8.493867426295765e-06){
    if(i31<1.1060774326324463){
     s0+=26.0;
     s1+=251.0;
    } else {
     s0+=592.0;
     s1+=315.0;
    }
   } else {
    if(i26<0.029317308217287064){
     s0+=950.0;
     s1+=79.0;
    } else {
     s0+=90.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i10<-0.0013069510459899902){
   if(i1<0.07592341303825378){
    if(i54<-0.014253795146942139){
     s0+=813.0;
     s1+=219.0;
    } else {
     s0+=3168.0;
     s1+=59.0;
    }
   } else {
    if(i41<0.0018482108134776354){
     s0+=239.0;
     s1+=51.0;
    } else {
     s0+=70.0;
     s1+=731.0;
    }
   }
  } else {
   if(i44<-8.88746217242442e-06){
    if(i2<0.04436632990837097){
     s0+=104.0;
     s1+=246.0;
    } else {
     s0+=61.0;
     s1+=2058.0;
    }
   } else {
    if(i71<0.0005233660922385752){
     s0+=1535.0;
     s1+=280.0;
    } else {
     s0+=283.0;
     s1+=495.0;
    }
   }
  }
 }
} else {
 if(i15<1.0041449069976807){
  if(i19<1.000468373298645){
   if(i2<0.0950043797492981){
    if(i0<0.07335254549980164){
     s0+=1062.0;
     s1+=51.0;
    } else {
     s0+=197.0;
     s1+=149.0;
    }
   } else {
    if(i5<-2.2024141799192876e-05){
     s0+=37.0;
     s1+=781.0;
    } else {
     s0+=268.0;
     s1+=83.0;
    }
   }
  } else {
   if(i5<-4.0248869481729344e-05){
    if(i20<0.004876491613686085){
     s0+=43.0;
     s1+=155.0;
    } else {
     s0+=7.0;
     s1+=1215.0;
    }
   } else {
    if(i34<1.144650936126709){
     s1+=124.0;
    } else {
     s0+=416.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i20<0.002038824139162898){
   if(i9<1.010021448135376){
    if(i12<1.0577392578125){
     s1+=23.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i11<1.0523395538330078){
     s0+=8.0;
     s1+=22.0;
    } else {
     s1+=200.0;
    }
   }
  } else {
   if(i1<0.05674523115158081){
    if(i16<1.537799835205078e-05){
     s0+=23.0;
     s1+=4.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i16<-1.4126300811767578e-05){
     s0+=5.0;
    } else {
     s0+=23.0;
     s1+=7729.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i0<0.07842501997947693){
  if(i14<1.0019152164459229){
   if(i57<-0.0012745261192321777){
    if(i17<-0.00029009580612182617){
     s0+=2669.0;
     s1+=67.0;
    } else {
     s0+=2972.0;
     s1+=845.0;
    }
   } else {
    if(i26<0.022175893187522888){
     s0+=58528.0;
     s1+=368.0;
    } else {
     s0+=3540.0;
     s1+=456.0;
    }
   }
  } else {
   if(i38<0.0008902847766876221){
    if(i10<-0.002505272626876831){
     s0+=154.0;
     s1+=50.0;
    } else {
     s0+=105.0;
     s1+=403.0;
    }
   } else {
    if(i25<1.0115180015563965){
     s0+=368.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i16<-1.3470649719238281e-05){
   if(i7<-0.0004131197929382324){
    if(i17<-0.00046762824058532715){
     s0+=30.0;
     s1+=10.0;
    } else {
     s0+=400.0;
    }
   } else {
    if(i49<0.09588993340730667){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   }
  } else {
   if(i70<0.00013367843348532915){
    if(i50<0.06068742275238037){
     s1+=117.0;
    } else {
     s0+=352.0;
     s1+=88.0;
    }
   } else {
    if(i61<0.025453686714172363){
     s0+=114.0;
     s1+=2532.0;
    } else {
     s0+=634.0;
     s1+=1084.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005394220352172852){
  if(i0<0.08272743225097656){
   if(i31<1.0924489498138428){
    if(i79<-0.0015560542233288288){
     s0+=20.0;
    } else {
     s0+=8.0;
     s1+=173.0;
    }
   } else {
    if(i37<0.9656393527984619){
     s0+=19.0;
     s1+=12.0;
    } else {
     s0+=744.0;
     s1+=46.0;
    }
   }
  } else {
   if(i61<0.03556060791015625){
    if(i14<1.0001177787780762){
     s0+=18.0;
     s1+=734.0;
    } else {
     s0+=110.0;
     s1+=453.0;
    }
   } else {
    if(i20<0.00585099495947361){
     s0+=207.0;
     s1+=131.0;
    } else {
     s0+=2.0;
     s1+=161.0;
    }
   }
  }
 } else {
  if(i20<0.0022317501716315746){
   if(i33<1.0009069442749023){
    if(i41<0.001512570190243423){
     s1+=34.0;
    } else {
     s0+=130.0;
     s1+=20.0;
    }
   } else {
    if(i0<0.04227650165557861){
     s0+=2.0;
    } else {
     s1+=130.0;
    }
   }
  } else {
   if(i29<1.2590415477752686){
    if(i31<1.2510931491851807){
     s0+=52.0;
     s1+=2108.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i52<0.9644838571548462){
     s0+=2.0;
     s1+=66.0;
    } else {
     s1+=6908.0;
    }
   }
  }
 }
}
if(i7<0.00043514370918273926){
 if(i66<-0.00040664838161319494){
  if(i7<-0.0003808140754699707){
   s0+=158.0;
  } else {
   if(i51<-0.00010606041178107262){
    if(i32<0.012893304228782654){
     s0+=151.0;
     s1+=40.0;
    } else {
     s0+=65.0;
     s1+=1057.0;
    }
   } else {
    s0+=45.0;
   }
  }
 } else {
  if(i28<0.0003148207615595311){
   if(i21<1.0068795680999756){
    if(i62<0.01896274834871292){
     s0+=49976.0;
     s1+=160.0;
    } else {
     s0+=6209.0;
     s1+=446.0;
    }
   } else {
    if(i62<0.020748574286699295){
     s0+=45.0;
     s1+=236.0;
    } else {
     s0+=603.0;
     s1+=51.0;
    }
   }
  } else {
   if(i2<0.07543152570724487){
    if(i29<1.1032289266586304){
     s0+=2856.0;
     s1+=919.0;
    } else {
     s0+=7931.0;
     s1+=259.0;
    }
   } else {
    if(i42<-0.00024387240409851074){
     s0+=313.0;
     s1+=12.0;
    } else {
     s0+=925.0;
     s1+=2618.0;
    }
   }
  }
 }
} else {
 if(i4<4.190206527709961e-05){
  if(i22<1.1205039024353027){
   if(i55<1.0024101734161377){
    if(i30<0.0003504849737510085){
     s0+=229.0;
    } else {
     s0+=369.0;
     s1+=285.0;
    }
   } else {
    if(i13<1.0141315460205078){
     s0+=688.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   }
  } else {
   if(i10<-0.003251880407333374){
    if(i32<0.04023413360118866){
     s0+=160.0;
     s1+=25.0;
    } else {
     s0+=7.0;
     s1+=71.0;
    }
   } else {
    if(i2<0.08481425046920776){
     s0+=48.0;
     s1+=43.0;
    } else {
     s0+=34.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i23<0.0001881267235148698){
   if(i74<6.622938144573709e-07){
    s0+=75.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i4<6.943941116333008e-05){
    if(i47<0.0008527570171281695){
     s0+=32.0;
     s1+=29.0;
    } else {
     s0+=135.0;
     s1+=1052.0;
    }
   } else {
    if(i53<1.0007734298706055){
     s0+=76.0;
     s1+=9367.0;
    } else {
     s0+=8.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i5<-8.142680599121377e-05){
 if(i6<0.9969097375869751){
  if(i2<0.09325873851776123){
   if(i12<1.0554659366607666){
    if(i35<0.05560600757598877){
     s0+=460.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i57<-0.016704052686691284){
     s0+=22.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   }
  } else {
   if(i36<0.004094368312507868){
    s0+=20.0;
   } else {
    s1+=44.0;
   }
  }
 } else {
  if(i17<-0.0003872811794281006){
   if(i60<0.13143253326416016){
    if(i70<0.0016939290799200535){
     s0+=177.0;
    } else {
     s0+=12.0;
     s1+=44.0;
    }
   } else {
    if(i47<0.005266027525067329){
     s0+=2.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i0<0.008992880582809448){
    if(i63<0.014106295071542263){
     s0+=38.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=29.0;
    }
   } else {
    if(i5<-0.00013316518743522465){
     s0+=3.0;
     s1+=7894.0;
    } else {
     s0+=94.0;
     s1+=2794.0;
    }
   }
  }
 }
} else {
 if(i13<1.0081751346588135){
  if(i31<1.067622423171997){
   if(i25<1.0083569288253784){
    if(i21<1.0060606002807617){
     s0+=46324.0;
     s1+=176.0;
    } else {
     s0+=9.0;
     s1+=8.0;
    }
   } else {
    if(i27<1.0952131748199463){
     s0+=8.0;
    } else {
     s1+=33.0;
    }
   }
  } else {
   if(i1<0.07738572359085083){
    if(i30<0.001009470084682107){
     s0+=3493.0;
     s1+=1137.0;
    } else {
     s0+=17562.0;
     s1+=463.0;
    }
   } else {
    if(i26<0.021975524723529816){
     s0+=973.0;
     s1+=582.0;
    } else {
     s0+=537.0;
     s1+=1512.0;
    }
   }
  }
 } else {
  if(i27<1.2392117977142334){
   if(i40<0.002257194370031357){
    if(i27<1.089235782623291){
     s0+=46.0;
     s1+=32.0;
    } else {
     s0+=34.0;
     s1+=1420.0;
    }
   } else {
    if(i32<0.023721199482679367){
     s0+=239.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=184.0;
    }
   }
  } else {
   if(i71<0.0004082893137820065){
    if(i1<0.2006039023399353){
     s0+=905.0;
     s1+=38.0;
    } else {
     s0+=28.0;
     s1+=247.0;
    }
   } else {
    if(i33<0.999474287033081){
     s0+=38.0;
    } else {
     s0+=34.0;
     s1+=394.0;
    }
   }
  }
 }
}
if(i7<0.00043314695358276367){
 if(i52<1.0095535516738892){
  if(i65<0.0017997527029365301){
   if(i1<0.08254918456077576){
    if(i29<1.0598037242889404){
     s0+=35448.0;
    } else {
     s0+=25157.0;
     s1+=839.0;
    }
   } else {
    if(i15<0.9927986264228821){
     s0+=406.0;
     s1+=28.0;
    } else {
     s0+=246.0;
     s1+=715.0;
    }
   }
  } else {
   if(i0<0.06644606590270996){
    if(i43<0.0024003246799111366){
     s0+=2018.0;
     s1+=582.0;
    } else {
     s0+=3012.0;
     s1+=133.0;
    }
   } else {
    if(i14<0.9979530572891235){
     s0+=221.0;
     s1+=1.0;
    } else {
     s0+=162.0;
     s1+=825.0;
    }
   }
  }
 } else {
  if(i40<0.010312416590750217){
   if(i20<0.0033965143375098705){
    if(i43<0.001123894238844514){
     s0+=448.0;
     s1+=484.0;
    } else {
     s0+=1727.0;
     s1+=166.0;
    }
   } else {
    if(i14<0.9983915686607361){
     s0+=233.0;
    } else {
     s0+=91.0;
     s1+=1194.0;
    }
   }
  } else {
   if(i44<4.775732122652698e-06){
    if(i2<0.08643001317977905){
     s0+=4.0;
    } else {
     s1+=947.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
} else {
 if(i11<1.043617844581604){
  if(i22<1.0591415166854858){
   if(i77<8.540815906599164e-05){
    if(i36<0.0017740796320140362){
     s1+=61.0;
    } else {
     s0+=94.0;
    }
   } else {
    s0+=470.0;
   }
  } else {
   if(i47<0.0030673304572701454){
    if(i20<0.0019959062337875366){
     s0+=72.0;
     s1+=6.0;
    } else {
     s0+=49.0;
     s1+=578.0;
    }
   } else {
    if(i32<0.03771286830306053){
     s0+=263.0;
     s1+=36.0;
    } else {
     s0+=8.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i3<0.0005741715431213379){
   if(i2<0.12270036339759827){
    if(i63<0.01369481161236763){
     s0+=653.0;
     s1+=134.0;
    } else {
     s0+=9.0;
     s1+=80.0;
    }
   } else {
    if(i70<0.00027147354558110237){
     s0+=20.0;
    } else {
     s0+=9.0;
     s1+=425.0;
    }
   }
  } else {
   if(i17<6.318092346191406e-06){
    if(i1<0.13504230976104736){
     s0+=183.0;
     s1+=327.0;
    } else {
     s0+=13.0;
     s1+=734.0;
    }
   } else {
    if(i4<6.35981559753418e-05){
     s0+=26.0;
     s1+=328.0;
    } else {
     s0+=4.0;
     s1+=8451.0;
    }
   }
  }
 }
}
if(i21<1.0066330432891846){
 if(i12<1.0452215671539307){
  if(i45<-0.005038589239120483){
   if(i8<0.03090527653694153){
    if(i30<0.001781201222911477){
     s0+=1018.0;
     s1+=179.0;
    } else {
     s0+=1217.0;
     s1+=17.0;
    }
   } else {
    if(i71<0.00028658402152359486){
     s0+=173.0;
     s1+=29.0;
    } else {
     s0+=81.0;
     s1+=226.0;
    }
   }
  } else {
   if(i23<0.00027517066337168217){
    if(i79<0.00033009424805641174){
     s0+=50292.0;
     s1+=155.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i2<0.08069390058517456){
     s0+=9251.0;
     s1+=381.0;
    } else {
     s0+=92.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i19<1.000767469406128){
   if(i49<0.03621699661016464){
    if(i5<-1.5891124348854646e-05){
     s0+=769.0;
     s1+=257.0;
    } else {
     s0+=3199.0;
     s1+=142.0;
    }
   } else {
    if(i33<0.9988149404525757){
     s0+=544.0;
     s1+=1.0;
    } else {
     s0+=1280.0;
     s1+=1411.0;
    }
   }
  } else {
   if(i0<0.09924358129501343){
    if(i54<0.021192491054534912){
     s0+=490.0;
     s1+=821.0;
    } else {
     s0+=462.0;
     s1+=58.0;
    }
   } else {
    if(i30<0.006660940125584602){
     s0+=120.0;
     s1+=729.0;
    } else {
     s0+=14.0;
     s1+=1402.0;
    }
   }
  }
 }
} else {
 if(i6<1.0023740530014038){
  if(i31<1.083398699760437){
   if(i1<0.0531902015209198){
    if(i15<1.0004950761795044){
     s0+=44.0;
    } else {
     s0+=6.0;
     s1+=23.0;
    }
   } else {
    if(i46<1.0032085180282593){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=540.0;
    }
   }
  } else {
   if(i32<0.022726399824023247){
    if(i2<0.09202936291694641){
     s0+=1387.0;
     s1+=89.0;
    } else {
     s0+=247.0;
     s1+=296.0;
    }
   } else {
    if(i14<0.999015212059021){
     s0+=70.0;
     s1+=12.0;
    } else {
     s0+=97.0;
     s1+=764.0;
    }
   }
  }
 } else {
  if(i6<1.0041437149047852){
   if(i5<-4.393387644086033e-05){
    if(i56<-0.0029649734497070312){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=49.0;
     s1+=868.0;
    }
   } else {
    if(i34<1.2388319969177246){
     s0+=6.0;
     s1+=84.0;
    } else {
     s0+=140.0;
    }
   }
  } else {
   if(i15<1.005800485610962){
    if(i51<-0.00023538066307082772){
     s0+=5.0;
     s1+=908.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   } else {
    s1+=7520.0;
   }
  }
 }
}
if(i16<1.9848346710205078e-05){
 if(i1<0.08370846509933472){
  if(i63<0.0073592993430793285){
   if(i57<-0.0013585090637207031){
    if(i31<1.1792536973953247){
     s0+=1264.0;
     s1+=503.0;
    } else {
     s0+=2349.0;
     s1+=3.0;
    }
   } else {
    if(i22<1.0485899448394775){
     s0+=53014.0;
     s1+=133.0;
    } else {
     s0+=7643.0;
     s1+=660.0;
    }
   }
  } else {
   if(i42<-3.55839729309082e-05){
    if(i14<1.000288724899292){
     s0+=1763.0;
     s1+=92.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i53<0.9998703002929688){
     s0+=304.0;
     s1+=461.0;
    } else {
     s0+=1421.0;
     s1+=231.0;
    }
   }
  }
 } else {
  if(i42<-0.00013744831085205078){
   if(i44<-1.0292333172401413e-05){
    if(i6<0.9950885772705078){
     s0+=6.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i4<-2.658367156982422e-05){
     s0+=657.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<-1.5394753063446842e-05){
    if(i51<-8.772400906309485e-05){
     s0+=249.0;
     s1+=3765.0;
    } else {
     s0+=160.0;
     s1+=285.0;
    }
   } else {
    if(i71<0.00034049327950924635){
     s0+=540.0;
     s1+=140.0;
    } else {
     s0+=101.0;
     s1+=282.0;
    }
   }
  }
 }
} else {
 if(i13<1.008023977279663){
  if(i22<1.0640453100204468){
   if(i45<-0.002474457025527954){
    if(i36<0.0019581569358706474){
     s0+=3.0;
     s1+=46.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i9<1.0013952255249023){
     s0+=600.0;
     s1+=20.0;
    } else {
     s0+=56.0;
     s1+=35.0;
    }
   }
  } else {
   if(i32<0.02601832151412964){
    if(i3<0.00044542551040649414){
     s0+=392.0;
     s1+=103.0;
    } else {
     s0+=182.0;
     s1+=589.0;
    }
   } else {
    if(i67<3.997852763859555e-05){
     s0+=12.0;
     s1+=1634.0;
    } else {
     s0+=54.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i44<-1.9400371456868015e-05){
   if(i9<1.0083519220352173){
    if(i0<0.127460777759552){
     s0+=77.0;
     s1+=152.0;
    } else {
     s0+=10.0;
     s1+=597.0;
    }
   } else {
    s1+=7134.0;
   }
  } else {
   if(i13<1.0166579484939575){
    if(i70<0.0005892127519473433){
     s0+=74.0;
     s1+=4.0;
    } else {
     s1+=99.0;
    }
   } else {
    s1+=150.0;
   }
  }
 }
}
if(i12<1.052894115447998){
 if(i25<1.008082389831543){
  if(i23<0.00031983223743736744){
   if(i0<0.08433407545089722){
    if(i66<0.0008564416784793139){
     s0+=53061.0;
     s1+=183.0;
    } else {
     s0+=344.0;
     s1+=95.0;
    }
   } else {
    if(i13<1.0018022060394287){
     s0+=78.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=32.0;
    }
   }
  } else {
   if(i15<0.9940437078475952){
    if(i3<0.000474393367767334){
     s0+=6935.0;
     s1+=99.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i2<0.05937153100967407){
     s0+=3045.0;
     s1+=644.0;
    } else {
     s0+=228.0;
     s1+=727.0;
    }
   }
  }
 } else {
  if(i0<0.06716951727867126){
   if(i31<1.0738441944122314){
    if(i29<1.0558756589889526){
     s0+=16.0;
    } else {
     s0+=3.0;
     s1+=55.0;
    }
   } else {
    if(i44<-2.430842323519755e-05){
     s1+=3.0;
    } else {
     s0+=155.0;
     s1+=7.0;
    }
   }
  } else {
   if(i27<1.2392117977142334){
    if(i77<0.00036223887582309544){
     s0+=14.0;
     s1+=305.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i11<1.0503426790237427){
     s0+=28.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i13<1.0107395648956299){
  if(i2<0.0839073657989502){
   if(i26<0.016913533210754395){
    if(i3<0.0005918741226196289){
     s0+=3503.0;
     s1+=224.0;
    } else {
     s0+=55.0;
     s1+=215.0;
    }
   } else {
    if(i31<1.1088199615478516){
     s0+=185.0;
     s1+=576.0;
    } else {
     s0+=1498.0;
     s1+=454.0;
    }
   }
  } else {
   if(i36<0.00517576839774847){
    if(i27<1.255998969078064){
     s0+=334.0;
     s1+=919.0;
    } else {
     s0+=578.0;
     s1+=161.0;
    }
   } else {
    if(i55<1.0020453929901123){
     s0+=35.0;
     s1+=2051.0;
    } else {
     s0+=69.0;
     s1+=243.0;
    }
   }
  }
 } else {
  if(i41<0.00491402018815279){
   if(i2<0.07434678077697754){
    if(i10<0.0014305710792541504){
     s0+=381.0;
     s1+=114.0;
    } else {
     s1+=267.0;
    }
   } else {
    if(i12<1.1503826379776){
     s0+=84.0;
     s1+=2163.0;
    } else {
     s0+=167.0;
     s1+=436.0;
    }
   }
  } else {
   if(i1<0.08627763390541077){
    if(i5<-8.899946988094598e-05){
     s0+=4.0;
     s1+=60.0;
    } else {
     s0+=36.0;
     s1+=11.0;
    }
   } else {
    if(i5<-3.571821434888989e-05){
     s0+=20.0;
     s1+=7244.0;
    } else {
     s0+=28.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i4<3.832578659057617e-05){
  if(i40<0.00038149754982441664){
   if(i22<1.0596027374267578){
    if(i31<1.0596027374267578){
     s0+=38741.0;
    } else {
     s0+=1680.0;
     s1+=33.0;
    }
   } else {
    if(i69<-2.8528841085062595e-06){
     s0+=1.0;
     s1+=48.0;
    } else {
     s0+=551.0;
    }
   }
  } else {
   if(i1<0.08523550629615784){
    if(i15<0.9937630891799927){
     s0+=16707.0;
     s1+=132.0;
    } else {
     s0+=10429.0;
     s1+=1622.0;
    }
   } else {
    if(i7<-0.0004025697708129883){
     s0+=607.0;
     s1+=15.0;
    } else {
     s0+=715.0;
     s1+=1837.0;
    }
   }
  }
 } else {
  if(i36<0.000524256203789264){
   s0+=271.0;
  } else {
   if(i26<0.0194644033908844){
    if(i27<1.5682398080825806){
     s0+=50.0;
     s1+=345.0;
    } else {
     s0+=71.0;
     s1+=11.0;
    }
   } else {
    if(i6<1.005051612854004){
     s0+=85.0;
     s1+=906.0;
    } else {
     s0+=5.0;
     s1+=1089.0;
    }
   }
  }
 }
} else {
 if(i20<0.003223753534257412){
  if(i17<0.00021523237228393555){
   if(i31<1.0924489498138428){
    if(i45<0.011655211448669434){
     s0+=16.0;
     s1+=298.0;
    } else {
     s0+=29.0;
     s1+=4.0;
    }
   } else {
    if(i0<0.17386773228645325){
     s0+=1053.0;
     s1+=78.0;
    } else {
     s0+=48.0;
     s1+=169.0;
    }
   }
  } else {
   if(i1<0.05849814414978027){
    if(i11<1.0424823760986328){
     s0+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=470.0;
   }
  }
 } else {
  if(i3<-0.0004145503044128418){
   if(i33<0.9995651245117188){
    if(i76<0.9993401765823364){
     s0+=100.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i18<1.0455224514007568){
     s0+=1.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i17<-7.748603820800781e-06){
    if(i32<0.02771337702870369){
     s0+=64.0;
     s1+=202.0;
    } else {
     s1+=548.0;
    }
   } else {
    if(i69<9.479626328356971e-07){
     s0+=4.0;
     s1+=9174.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i20<0.010159014724195004){
  if(i19<1.0025941133499146){
   if(i8<0.07075154781341553){
    if(i2<0.07701024413108826){
     s0+=66102.0;
     s1+=1689.0;
    } else {
     s0+=126.0;
     s1+=308.0;
    }
   } else {
    if(i5<-9.436449545319192e-06){
     s0+=559.0;
     s1+=987.0;
    } else {
     s0+=952.0;
     s1+=116.0;
    }
   }
  } else {
   if(i67<1.3103690434945747e-05){
    if(i30<0.0003587925748433918){
     s0+=111.0;
    } else {
     s0+=215.0;
     s1+=1033.0;
    }
   } else {
    if(i2<0.114357590675354){
     s0+=598.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i7<0.00028392672538757324){
   if(i2<0.06623473763465881){
    if(i52<0.9784424901008606){
     s0+=668.0;
     s1+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i3<-0.0012501180171966553){
     s0+=1.0;
     s1+=15.0;
    } else {
     s1+=186.0;
    }
   }
  } else {
   if(i55<1.0027689933776855){
    if(i10<-0.004253953695297241){
     s0+=98.0;
     s1+=34.0;
    } else {
     s0+=52.0;
     s1+=1602.0;
    }
   } else {
    if(i8<0.057079166173934937){
     s0+=201.0;
     s1+=38.0;
    } else {
     s0+=5.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i1<0.08337682485580444){
  if(i36<0.0013501716312021017){
   if(i14<0.9993702173233032){
    s0+=75.0;
   } else {
    if(i34<1.2021880149841309){
     s0+=30.0;
     s1+=496.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i6<1.0041664838790894){
    if(i20<0.0036451457999646664){
     s0+=736.0;
     s1+=26.0;
    } else {
     s0+=66.0;
     s1+=48.0;
    }
   } else {
    s1+=98.0;
   }
  }
 } else {
  if(i5<-4.209806502331048e-05){
   if(i6<1.0050500631332397){
    if(i16<2.8431415557861328e-05){
     s0+=12.0;
     s1+=2010.0;
    } else {
     s0+=30.0;
     s1+=277.0;
    }
   } else {
    if(i19<0.9964127540588379){
     s0+=1.0;
     s1+=90.0;
    } else {
     s1+=7366.0;
    }
   }
  } else {
   if(i27<1.255998969078064){
    if(i64<0.002737581729888916){
     s0+=29.0;
     s1+=358.0;
    } else {
     s0+=132.0;
     s1+=212.0;
    }
   } else {
    if(i56<-0.0019825100898742676){
     s0+=5.0;
     s1+=39.0;
    } else {
     s0+=225.0;
     s1+=29.0;
    }
   }
  }
 }
}
if(i7<0.00043338537216186523){
 if(i5<-4.9781083362177014e-05){
  if(i17<-0.0003075897693634033){
   if(i11<1.0446653366088867){
    if(i79<-0.0007873738068155944){
     s0+=173.0;
     s1+=19.0;
    } else {
     s0+=924.0;
     s1+=5.0;
    }
   } else {
    if(i79<-0.00022681683185510337){
     s1+=101.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i22<1.0540467500686646){
    if(i42<0.00013187527656555176){
     s0+=290.0;
     s1+=2.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i12<1.0405452251434326){
     s0+=79.0;
     s1+=4.0;
    } else {
     s0+=190.0;
     s1+=2314.0;
    }
   }
  }
 } else {
  if(i0<0.08468136191368103){
   if(i65<0.0016256362432613969){
    if(i26<0.016150981187820435){
     s0+=54980.0;
     s1+=338.0;
    } else {
     s0+=6473.0;
     s1+=610.0;
    }
   } else {
    if(i17<-0.00018775463104248047){
     s0+=2153.0;
     s1+=106.0;
    } else {
     s0+=2798.0;
     s1+=660.0;
    }
   }
  } else {
   if(i35<0.06040489673614502){
    if(i14<0.9978755712509155){
     s0+=86.0;
    } else {
     s0+=51.0;
     s1+=1125.0;
    }
   } else {
    if(i5<-1.2679814972216263e-05){
     s0+=346.0;
     s1+=476.0;
    } else {
     s0+=757.0;
     s1+=107.0;
    }
   }
  }
 }
} else {
 if(i1<0.08515334129333496){
  if(i15<1.001515507698059){
   if(i64<-0.0038657784461975098){
    if(i79<3.3759162761271e-05){
     s0+=11.0;
     s1+=101.0;
    } else {
     s0+=27.0;
     s1+=27.0;
    }
   } else {
    if(i4<3.987550735473633e-05){
     s0+=1213.0;
     s1+=84.0;
    } else {
     s0+=172.0;
     s1+=105.0;
    }
   }
  } else {
   if(i28<0.0001619190734345466){
    if(i14<1.0021988153457642){
     s0+=63.0;
     s1+=4.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i30<0.00034895638236775994){
     s0+=25.0;
    } else {
     s0+=68.0;
     s1+=858.0;
    }
   }
  }
 } else {
  if(i46<1.0022261142730713){
   if(i20<0.007960233837366104){
    if(i38<0.0037716329097747803){
     s0+=23.0;
     s1+=257.0;
    } else {
     s0+=223.0;
     s1+=115.0;
    }
   } else {
    if(i1<0.11658373475074768){
     s0+=32.0;
     s1+=192.0;
    } else {
     s0+=4.0;
     s1+=1351.0;
    }
   }
  } else {
   if(i6<1.0018212795257568){
    if(i5<-4.203997377771884e-05){
     s1+=83.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   } else {
    if(i26<0.010975426062941551){
     s0+=5.0;
     s1+=503.0;
    } else {
     s0+=2.0;
     s1+=7452.0;
    }
   }
  }
 }
}
if(i7<0.00043660402297973633){
 if(i2<0.07724592089653015){
  if(i0<0.06630954146385193){
   if(i66<0.0007201328407973051){
    if(i23<0.0003156907041557133){
     s0+=51542.0;
     s1+=137.0;
    } else {
     s0+=6445.0;
     s1+=371.0;
    }
   } else {
    if(i43<0.0017168568447232246){
     s0+=1842.0;
     s1+=691.0;
    } else {
     s0+=5509.0;
     s1+=194.0;
    }
   }
  } else {
   if(i49<0.026784537360072136){
    if(i35<0.035514235496520996){
     s0+=74.0;
     s1+=148.0;
    } else {
     s0+=1685.0;
     s1+=58.0;
    }
   } else {
    if(i38<0.0029615163803100586){
     s0+=197.0;
     s1+=401.0;
    } else {
     s0+=389.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i14<0.9985270500183105){
   if(i71<0.0011775658931583166){
    if(i7<-0.00041115283966064453){
     s0+=461.0;
     s1+=5.0;
    } else {
     s0+=67.0;
     s1+=16.0;
    }
   } else {
    if(i23<0.011932682245969772){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i2<0.1082996129989624){
    if(i38<0.004179030656814575){
     s0+=223.0;
     s1+=1011.0;
    } else {
     s0+=395.0;
     s1+=31.0;
    }
   } else {
    if(i54<0.07944995164871216){
     s0+=54.0;
     s1+=2104.0;
    } else {
     s0+=359.0;
     s1+=786.0;
    }
   }
  }
 }
} else {
 if(i17<6.240606307983398e-05){
  if(i6<1.0015387535095215){
   if(i31<1.3604438304901123){
    if(i1<0.11794203519821167){
     s0+=1350.0;
     s1+=147.0;
    } else {
     s0+=37.0;
     s1+=221.0;
    }
   } else {
    if(i0<0.013623803853988647){
     s0+=45.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=166.0;
    }
   }
  } else {
   if(i3<0.00048100948333740234){
    if(i22<1.1275147199630737){
     s0+=78.0;
     s1+=63.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i70<0.0005253349663689733){
     s0+=115.0;
     s1+=314.0;
    } else {
     s0+=90.0;
     s1+=1425.0;
    }
   }
  }
 } else {
  if(i22<1.0419573783874512){
   s0+=57.0;
  } else {
   if(i23<0.000179713882971555){
    if(i30<0.0017011546296998858){
     s1+=5.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i7<0.0005099177360534668){
     s0+=28.0;
     s1+=350.0;
    } else {
     s0+=3.0;
     s1+=8438.0;
    }
   }
  }
 }
}
if(i1<0.08502665162086487){
 if(i6<1.002474308013916){
  if(i63<0.008001085370779037){
   if(i11<1.0406912565231323){
    if(i65<0.0015409047482535243){
     s0+=57753.0;
     s1+=430.0;
    } else {
     s0+=3814.0;
     s1+=410.0;
    }
   } else {
    if(i31<1.1037919521331787){
     s0+=1939.0;
     s1+=459.0;
    } else {
     s0+=2342.0;
     s1+=58.0;
    }
   }
  } else {
   if(i4<1.233816146850586e-05){
    if(i16<-1.704692840576172e-05){
     s0+=749.0;
     s1+=4.0;
    } else {
     s0+=2093.0;
     s1+=550.0;
    }
   } else {
    if(i73<1.0126022100448608){
     s0+=101.0;
     s1+=237.0;
    } else {
     s0+=76.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i69<-4.4068933675589506e-06){
   if(i31<1.1877408027648926){
    if(i43<0.00018675951287150383){
     s0+=9.0;
    } else {
     s0+=14.0;
     s1+=749.0;
    }
   } else {
    if(i32<0.020046064630150795){
     s0+=103.0;
     s1+=38.0;
    } else {
     s1+=164.0;
    }
   }
  } else {
   if(i53<0.9999246597290039){
    s1+=12.0;
   } else {
    if(i27<1.1386182308197021){
     s1+=2.0;
    } else {
     s0+=164.0;
    }
   }
  }
 }
} else {
 if(i19<1.0003477334976196){
  if(i33<0.9992941617965698){
   if(i44<-8.72418695507804e-06){
    if(i25<0.9964768886566162){
     s0+=22.0;
     s1+=8.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i15<0.9943212270736694){
     s0+=608.0;
    } else {
     s0+=67.0;
     s1+=1.0;
    }
   }
  } else {
   if(i41<0.000641839113086462){
    if(i18<1.0509333610534668){
     s0+=31.0;
     s1+=254.0;
    } else {
     s0+=350.0;
     s1+=56.0;
    }
   } else {
    if(i8<0.1247977614402771){
     s0+=358.0;
     s1+=806.0;
    } else {
     s0+=62.0;
     s1+=1486.0;
    }
   }
  }
 } else {
  if(i7<0.0006987452507019043){
   if(i17<2.41696834564209e-05){
    if(i45<0.013975679874420166){
     s0+=37.0;
     s1+=671.0;
    } else {
     s0+=288.0;
     s1+=362.0;
    }
   } else {
    if(i47<0.0010815572459250689){
     s0+=73.0;
     s1+=520.0;
    } else {
     s0+=6.0;
     s1+=1586.0;
    }
   }
  } else {
   if(i17<-0.00010442733764648438){
    if(i49<0.08831412345170975){
     s0+=60.0;
     s1+=116.0;
    } else {
     s0+=16.0;
     s1+=464.0;
    }
   } else {
    if(i1<0.11725330352783203){
     s0+=4.0;
     s1+=615.0;
    } else {
     s0+=1.0;
     s1+=7033.0;
    }
   }
  }
 }
}
if(i37<1.0103590488433838){
 if(i26<0.022416934370994568){
  if(i4<4.166364669799805e-05){
   if(i40<0.0003648987039923668){
    if(i46<1.0061650276184082){
     s0+=40157.0;
     s1+=43.0;
    } else {
     s0+=5.0;
     s1+=13.0;
    }
   } else {
    if(i37<0.9845494031906128){
     s0+=1635.0;
     s1+=579.0;
    } else {
     s0+=20532.0;
     s1+=855.0;
    }
   }
  } else {
   if(i40<0.0004247836768627167){
    s0+=182.0;
   } else {
    if(i45<0.009951680898666382){
     s0+=76.0;
     s1+=679.0;
    } else {
     s0+=38.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i2<0.06763231754302979){
   if(i74<-3.5583198041422293e-06){
    if(i55<1.0025715827941895){
     s0+=7.0;
     s1+=166.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i15<0.9944722652435303){
     s0+=4712.0;
     s1+=131.0;
    } else {
     s0+=988.0;
     s1+=709.0;
    }
   }
  } else {
   if(i6<0.9963581562042236){
    if(i66<0.003366692690178752){
     s0+=344.0;
     s1+=39.0;
    } else {
     s0+=18.0;
     s1+=41.0;
    }
   } else {
    if(i47<0.0002968698972836137){
     s0+=71.0;
     s1+=156.0;
    } else {
     s0+=119.0;
     s1+=2886.0;
    }
   }
  }
 }
} else {
 if(i48<0.004706442356109619){
  if(i30<0.0062808264046907425){
   if(i6<1.0020160675048828){
    if(i1<0.0959024429321289){
     s0+=1151.0;
     s1+=296.0;
    } else {
     s0+=432.0;
     s1+=837.0;
    }
   } else {
    if(i5<-4.3531494156923145e-05){
     s0+=55.0;
     s1+=1704.0;
    } else {
     s0+=144.0;
     s1+=168.0;
    }
   }
  } else {
   if(i1<0.1372571587562561){
    if(i19<1.0068626403808594){
     s0+=121.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=57.0;
    }
   } else {
    if(i44<-1.619535032659769e-05){
     s0+=5.0;
     s1+=2414.0;
    } else {
     s0+=12.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i1<0.09286835789680481){
   if(i59<7.815359276719391e-05){
    s0+=88.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i5<-2.235615102108568e-05){
    if(i20<0.0019210269674658775){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=5147.0;
    }
   } else {
    if(i68<-0.006556278094649315){
     s0+=67.0;
     s1+=4.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
}
if(i11<1.0451881885528564){
 if(i1<0.08483859896659851){
  if(i3<0.0005882382392883301){
   if(i22<1.0451585054397583){
    if(i62<0.017708323895931244){
     s0+=45028.0;
     s1+=67.0;
    } else {
     s0+=8786.0;
     s1+=172.0;
    }
   } else {
    if(i26<0.01413208432495594){
     s0+=7257.0;
     s1+=339.0;
    } else {
     s0+=3588.0;
     s1+=797.0;
    }
   }
  } else {
   if(i14<1.0010427236557007){
    if(i10<0.001064300537109375){
     s0+=98.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i47<0.000902901345398277){
     s0+=65.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i67<1.6251278793788515e-05){
   if(i7<-0.00036197900772094727){
    s0+=24.0;
   } else {
    if(i22<1.0463062524795532){
     s0+=27.0;
     s1+=12.0;
    } else {
     s0+=22.0;
     s1+=840.0;
    }
   }
  } else {
   if(i15<0.9945652484893799){
    if(i66<0.0025233812630176544){
     s0+=308.0;
     s1+=16.0;
    } else {
     s0+=20.0;
     s1+=24.0;
    }
   } else {
    if(i62<0.020648285746574402){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=132.0;
    }
   }
  }
 }
} else {
 if(i20<0.004528413992375135){
  if(i67<-3.246938831580337e-06){
   if(i44<-1.3815323654853273e-05){
    if(i1<0.04876872897148132){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=691.0;
    }
   } else {
    if(i16<9.08970832824707e-06){
     s1+=78.0;
    } else {
     s0+=99.0;
     s1+=12.0;
    }
   }
  } else {
   if(i15<1.001417875289917){
    if(i2<0.0755770206451416){
     s0+=3123.0;
     s1+=251.0;
    } else {
     s0+=1191.0;
     s1+=733.0;
    }
   } else {
    if(i17<0.0001424551010131836){
     s0+=397.0;
     s1+=408.0;
    } else {
     s0+=26.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i16<-1.659989356994629e-05){
   if(i29<1.4593883752822876){
    s0+=271.0;
   } else {
    if(i20<0.0052652121521532536){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i46<0.9957486391067505){
    if(i18<1.088181495666504){
     s0+=590.0;
     s1+=1101.0;
    } else {
     s0+=14.0;
     s1+=1082.0;
    }
   } else {
    if(i4<-0.00010219216346740723){
     s0+=5.0;
    } else {
     s0+=38.0;
     s1+=9839.0;
    }
   }
  }
 }
}
if(i9<1.0043549537658691){
 if(i22<1.057713270187378){
  if(i25<1.00923490524292){
   if(i0<0.07660675048828125){
    if(i78<-0.0005412101745605469){
     s0+=8107.0;
     s1+=357.0;
    } else {
     s0+=49866.0;
     s1+=172.0;
    }
   } else {
    if(i35<0.04889807105064392){
     s0+=108.0;
     s1+=126.0;
    } else {
     s0+=434.0;
     s1+=31.0;
    }
   }
  } else {
   if(i41<0.00044236896792426705){
    s0+=18.0;
   } else {
    if(i34<1.1604764461517334){
     s1+=103.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i43<0.010904996655881405){
   if(i8<0.060245394706726074){
    if(i41<0.0014504557475447655){
     s0+=3534.0;
     s1+=1124.0;
    } else {
     s0+=4380.0;
     s1+=360.0;
    }
   } else {
    if(i39<0.036215245723724365){
     s0+=124.0;
     s1+=1195.0;
    } else {
     s0+=1464.0;
     s1+=1144.0;
    }
   }
  } else {
   if(i60<0.14593255519866943){
    if(i22<1.2613699436187744){
     s0+=448.0;
     s1+=431.0;
    } else {
     s0+=892.0;
     s1+=55.0;
    }
   } else {
    if(i9<0.9645369052886963){
     s0+=162.0;
     s1+=13.0;
    } else {
     s0+=23.0;
     s1+=1326.0;
    }
   }
  }
 }
} else {
 if(i1<0.07138943672180176){
  if(i30<0.0011413369793444872){
   if(i7<0.00012111663818359375){
    if(i64<-0.0025551319122314453){
     s0+=3.0;
     s1+=25.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.0598008632659912){
     s0+=6.0;
    } else {
     s0+=12.0;
     s1+=386.0;
    }
   }
  } else {
   if(i44<-1.9563867681426927e-05){
    if(i27<1.5942578315734863){
     s1+=85.0;
    } else {
     s0+=8.0;
     s1+=8.0;
    }
   } else {
    if(i17<0.00023877620697021484){
     s0+=983.0;
     s1+=15.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i20<0.001993359997868538){
   if(i3<0.00021946430206298828){
    s0+=167.0;
   } else {
    if(i56<0.006290435791015625){
     s0+=22.0;
     s1+=221.0;
    } else {
     s0+=66.0;
     s1+=6.0;
    }
   }
  } else {
   if(i32<0.01720409095287323){
    if(i3<-0.0002657473087310791){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=68.0;
     s1+=1884.0;
    }
   } else {
    if(i26<0.00044999245437793434){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=8191.0;
    }
   }
  }
 }
}
if(i6<1.0024782419204712){
 if(i50<0.06528344750404358){
  if(i27<1.0856719017028809){
   s0+=38403.0;
  } else {
   if(i0<0.07842501997947693){
    if(i3<-0.0005630254745483398){
     s0+=17776.0;
     s1+=264.0;
    } else {
     s0+=12419.0;
     s1+=1743.0;
    }
   } else {
    if(i43<0.00031171744922176003){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=125.0;
     s1+=1751.0;
    }
   }
  }
 } else {
  if(i0<0.10541367530822754){
   if(i39<0.039733171463012695){
    if(i5<-2.7604843126027845e-05){
     s0+=8.0;
     s1+=68.0;
    } else {
     s0+=82.0;
     s1+=22.0;
    }
   } else {
    if(i35<0.05807685852050781){
     s0+=151.0;
     s1+=61.0;
    } else {
     s0+=894.0;
     s1+=58.0;
    }
   }
  } else {
   if(i5<-1.2456014701456297e-05){
    if(i62<0.3029201328754425){
     s0+=245.0;
     s1+=1431.0;
    } else {
     s0+=1.0;
     s1+=501.0;
    }
   } else {
    if(i36<0.003164606634527445){
     s0+=456.0;
     s1+=39.0;
    } else {
     s0+=50.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i8<0.04079782962799072){
  if(i44<-1.412382880516816e-05){
   if(i54<0.0142117440700531){
    if(i19<0.9984028935432434){
     s0+=11.0;
    } else {
     s0+=30.0;
     s1+=568.0;
    }
   } else {
    if(i40<0.002523630391806364){
     s1+=1.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i14<1.0008883476257324){
    s1+=17.0;
   } else {
    if(i5<-2.641387254698202e-05){
     s0+=101.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i9<1.0095741748809814){
   if(i5<-4.330423689680174e-05){
    if(i8<0.12221518158912659){
     s0+=97.0;
     s1+=838.0;
    } else {
     s0+=7.0;
     s1+=1372.0;
    }
   } else {
    if(i76<1.002091884613037){
     s0+=90.0;
     s1+=10.0;
    } else {
     s1+=152.0;
    }
   }
  } else {
   if(i0<0.0594610869884491){
    if(i73<0.9994688630104065){
     s1+=4.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i11<1.0404596328735352){
     s0+=1.0;
     s1+=130.0;
    } else {
     s1+=8117.0;
    }
   }
  }
 }
}
if(i1<0.08442407846450806){
 if(i7<0.0005156397819519043){
  if(i23<0.00030651327688246965){
   if(i14<1.0007542371749878){
    if(i45<-0.0056569576263427734){
     s0+=350.0;
     s1+=42.0;
    } else {
     s0+=51252.0;
     s1+=140.0;
    }
   } else {
    if(i73<1.0068747997283936){
     s0+=1725.0;
     s1+=54.0;
    } else {
     s0+=198.0;
     s1+=135.0;
    }
   }
  } else {
   if(i12<1.0398828983306885){
    if(i34<1.2011767625808716){
     s0+=2526.0;
     s1+=291.0;
    } else {
     s0+=5828.0;
     s1+=12.0;
    }
   } else {
    if(i34<1.1037919521331787){
     s0+=1458.0;
     s1+=1039.0;
    } else {
     s0+=4659.0;
     s1+=367.0;
    }
   }
  }
 } else {
  if(i45<-0.0021584928035736084){
   if(i6<1.001352310180664){
    if(i36<0.014250881969928741){
     s0+=145.0;
     s1+=39.0;
    } else {
     s0+=15.0;
     s1+=35.0;
    }
   } else {
    if(i27<1.5682398080825806){
     s0+=36.0;
     s1+=639.0;
    } else {
     s0+=51.0;
     s1+=81.0;
    }
   }
  } else {
   if(i17<0.00010383129119873047){
    if(i6<1.0029150247573853){
     s0+=708.0;
     s1+=58.0;
    } else {
     s0+=44.0;
     s1+=51.0;
    }
   } else {
    if(i43<0.00024036344257183373){
     s0+=6.0;
    } else {
     s1+=143.0;
    }
   }
  }
 }
} else {
 if(i17<3.248453140258789e-05){
  if(i6<0.9959948062896729){
   if(i44<-1.084240011550719e-05){
    if(i11<1.0687800645828247){
     s0+=47.0;
     s1+=27.0;
    } else {
     s1+=81.0;
    }
   } else {
    if(i67<1.3548871720558964e-05){
     s0+=69.0;
     s1+=5.0;
    } else {
     s0+=573.0;
    }
   }
  } else {
   if(i41<0.0005125299794599414){
    if(i50<0.06829714775085449){
     s0+=24.0;
     s1+=51.0;
    } else {
     s0+=247.0;
     s1+=14.0;
    }
   } else {
    if(i77<0.00012710610462818295){
     s0+=764.0;
     s1+=1922.0;
    } else {
     s0+=107.0;
     s1+=1605.0;
    }
   }
  }
 } else {
  if(i3<0.00013580918312072754){
   if(i70<0.00021221030328888446){
    if(i23<0.0010959254577755928){
     s0+=5.0;
     s1+=68.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i21<0.9946152567863464){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=164.0;
    }
   }
  } else {
   if(i42<-0.00034111738204956055){
    if(i47<0.0033130620140582323){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i29<1.0570924282073975){
     s0+=7.0;
    } else {
     s0+=61.0;
     s1+=10151.0;
    }
   }
  }
 }
}
if(i8<0.0723993182182312){
 if(i2<0.07557433843612671){
  if(i3<0.0006679892539978027){
   if(i57<-0.0013532936573028564){
    if(i2<0.03837829828262329){
     s0+=4709.0;
     s1+=456.0;
    } else {
     s0+=838.0;
     s1+=466.0;
    }
   } else {
    if(i6<1.0024821758270264){
     s0+=63100.0;
     s1+=1033.0;
    } else {
     s0+=28.0;
     s1+=71.0;
    }
   }
  } else {
   if(i44<-1.4100647604209371e-05){
    if(i10<7.808208465576172e-05){
     s0+=119.0;
     s1+=207.0;
    } else {
     s0+=3.0;
     s1+=731.0;
    }
   } else {
    if(i66<0.0006627015536651015){
     s0+=137.0;
     s1+=10.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i7<-0.0003070533275604248){
   if(i32<0.003572567366063595){
    if(i36<0.00040587992407381535){
     s0+=15.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    s0+=100.0;
   }
  } else {
   if(i35<0.05007919669151306){
    if(i55<1.0073444843292236){
     s0+=17.0;
     s1+=1532.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i4<-7.152557373046875e-07){
     s0+=57.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i4<3.11434268951416e-05){
  if(i44<7.774417554173851e-07){
   if(i1<0.11509689688682556){
    if(i38<0.004189729690551758){
     s0+=352.0;
     s1+=582.0;
    } else {
     s0+=556.0;
     s1+=18.0;
    }
   } else {
    if(i20<0.0017094442155212164){
     s0+=222.0;
     s1+=88.0;
    } else {
     s0+=148.0;
     s1+=1707.0;
    }
   }
  } else {
   if(i76<0.9993822574615479){
    if(i30<0.005288185551762581){
     s0+=422.0;
     s1+=8.0;
    } else {
     s0+=20.0;
     s1+=10.0;
    }
   } else {
    if(i36<0.0012733644107356668){
     s0+=62.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i69<-2.902430060203187e-05){
   s0+=8.0;
  } else {
   if(i36<0.005219944752752781){
    if(i23<0.0021698304917663336){
     s0+=19.0;
     s1+=1087.0;
    } else {
     s0+=107.0;
     s1+=199.0;
    }
   } else {
    if(i32<0.01686345785856247){
     s0+=48.0;
     s1+=444.0;
    } else {
     s0+=26.0;
     s1+=8358.0;
    }
   }
  }
 }
}
if(i5<-7.076597830746323e-05){
 if(i9<0.9798887372016907){
  if(i4<3.62396240234375e-05){
   if(i70<0.0019432954723015428){
    if(i11<1.091036081314087){
     s0+=649.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i0<0.012001365423202515){
     s0+=13.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i32<0.02961096726357937){
    s0+=20.0;
   } else {
    s1+=85.0;
   }
  }
 } else {
  if(i22<1.0583630800247192){
   if(i76<1.003281831741333){
    s0+=142.0;
   } else {
    if(i53<1.0003676414489746){
     s1+=6.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i51<-0.0003427171614021063){
    if(i0<0.0026331841945648193){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=9297.0;
    }
   } else {
    if(i67<2.9665123292943463e-05){
     s0+=105.0;
     s1+=2017.0;
    } else {
     s0+=96.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i11<1.0410094261169434){
  if(i23<0.00031579844653606415){
   if(i24<1.008404016494751){
    if(i56<-0.004936784505844116){
     s0+=4.0;
     s1+=25.0;
    } else {
     s0+=52712.0;
     s1+=231.0;
    }
   } else {
    if(i34<1.1039612293243408){
     s0+=21.0;
     s1+=89.0;
    } else {
     s0+=125.0;
    }
   }
  } else {
   if(i15<0.9942039847373962){
    if(i11<0.979824423789978){
     s1+=2.0;
    } else {
     s0+=6782.0;
     s1+=109.0;
    }
   } else {
    if(i2<0.06148940324783325){
     s0+=3223.0;
     s1+=686.0;
    } else {
     s0+=169.0;
     s1+=619.0;
    }
   }
  }
 } else {
  if(i1<0.07543641328811646){
   if(i29<1.1037919521331787){
    if(i9<1.0035316944122314){
     s0+=1636.0;
     s1+=372.0;
    } else {
     s0+=42.0;
     s1+=244.0;
    }
   } else {
    if(i38<-0.012516975402832031){
     s0+=167.0;
     s1+=73.0;
    } else {
     s0+=3417.0;
     s1+=122.0;
    }
   }
  } else {
   if(i45<0.017419934272766113){
    if(i3<-0.0006081163883209229){
     s0+=259.0;
     s1+=62.0;
    } else {
     s0+=524.0;
     s1+=2225.0;
    }
   } else {
    if(i19<1.0032682418823242){
     s0+=1007.0;
     s1+=434.0;
    } else {
     s0+=65.0;
     s1+=211.0;
    }
   }
  }
 }
}
if(i0<0.08304375410079956){
 if(i12<1.0452277660369873){
  if(i65<0.0015186606906354427){
   if(i2<0.07585683465003967){
    if(i0<0.06825622916221619){
     s0+=56737.0;
     s1+=302.0;
    } else {
     s0+=1066.0;
     s1+=125.0;
    }
   } else {
    if(i6<1.0007601976394653){
     s0+=212.0;
     s1+=33.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   }
  } else {
   if(i9<0.9842849969863892){
    if(i7<0.0013743042945861816){
     s0+=2105.0;
     s1+=20.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i29<1.0670123100280762){
     s0+=793.0;
     s1+=5.0;
    } else {
     s0+=1042.0;
     s1+=450.0;
    }
   }
  }
 } else {
  if(i17<0.00016826391220092773){
   if(i0<0.06331592798233032){
    if(i37<0.9911394119262695){
     s0+=1294.0;
     s1+=558.0;
    } else {
     s0+=4920.0;
     s1+=393.0;
    }
   } else {
    if(i64<0.000868678092956543){
     s0+=313.0;
     s1+=571.0;
    } else {
     s0+=786.0;
     s1+=143.0;
    }
   }
  } else {
   if(i69<-5.028471605328377e-06){
    if(i42<-0.0003389716148376465){
     s0+=3.0;
    } else {
     s1+=430.0;
    }
   } else {
    if(i27<1.2160128355026245){
     s1+=37.0;
    } else {
     s0+=86.0;
    }
   }
  }
 }
} else {
 if(i16<-1.621246337890625e-05){
  if(i55<1.0002925395965576){
   if(i14<0.9980583190917969){
    s0+=404.0;
   } else {
    if(i5<-3.9517704863101244e-05){
     s1+=1.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i0<0.10422006249427795){
    if(i57<-0.0006089508533477783){
     s1+=2.0;
    } else {
     s0+=13.0;
    }
   } else {
    s1+=8.0;
   }
  }
 } else {
  if(i21<1.0167057514190674){
   if(i41<0.0004475305904634297){
    if(i53<1.0001262426376343){
     s0+=176.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=12.0;
    }
   } else {
    if(i39<0.054081857204437256){
     s0+=100.0;
     s1+=4275.0;
    } else {
     s0+=748.0;
     s1+=1484.0;
    }
   }
  } else {
   if(i70<0.00018753398035187274){
    if(i4<5.8531761169433594e-05){
     s0+=143.0;
     s1+=30.0;
    } else {
     s1+=139.0;
    }
   } else {
    if(i1<0.10646751523017883){
     s0+=40.0;
     s1+=124.0;
    } else {
     s0+=29.0;
     s1+=8036.0;
    }
   }
  }
 }
}
if(i6<1.002474308013916){
 if(i12<1.0452215671539307){
  if(i45<-0.004928171634674072){
   if(i31<1.055511236190796){
    s0+=923.0;
   } else {
    if(i36<0.0008702647173777223){
     s0+=180.0;
     s1+=253.0;
    } else {
     s0+=1386.0;
     s1+=114.0;
    }
   }
  } else {
   if(i1<0.08320659399032593){
    if(i2<0.07663694024085999){
     s0+=59197.0;
     s1+=440.0;
    } else {
     s0+=108.0;
     s1+=32.0;
    }
   } else {
    if(i77<0.00014417199417948723){
     s0+=150.0;
     s1+=210.0;
    } else {
     s0+=269.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i60<0.11516621708869934){
   if(i2<0.07945582270622253){
    if(i27<1.1013743877410889){
     s0+=1674.0;
     s1+=887.0;
    } else {
     s0+=5334.0;
     s1+=383.0;
    }
   } else {
    if(i61<0.027880966663360596){
     s0+=328.0;
     s1+=1811.0;
    } else {
     s0+=976.0;
     s1+=651.0;
    }
   }
  } else {
   if(i47<0.001127441180869937){
    if(i70<0.0002921442501246929){
     s0+=79.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i22<1.1247875690460205){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=34.0;
     s1+=1095.0;
    }
   }
  }
 }
} else {
 if(i23<0.00018719921354204416){
  if(i69<-5.637711183226202e-06){
   s1+=14.0;
  } else {
   s0+=74.0;
  }
 } else {
  if(i4<6.121397018432617e-05){
   if(i27<1.2392117977142334){
    s1+=578.0;
   } else {
    if(i20<0.002542720641940832){
     s0+=135.0;
     s1+=6.0;
    } else {
     s0+=55.0;
     s1+=519.0;
    }
   }
  } else {
   if(i10<-6.133317947387695e-05){
    if(i2<0.08284112811088562){
     s0+=73.0;
     s1+=157.0;
    } else {
     s0+=24.0;
     s1+=642.0;
    }
   } else {
    if(i1<0.005424380302429199){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=9356.0;
    }
   }
  }
 }
}
if(i9<1.0054547786712646){
 if(i6<1.0023579597473145){
  if(i60<0.01634334959089756){
   if(i71<0.000355483905877918){
    if(i72<1.0139623880386353){
     s0+=50718.0;
     s1+=236.0;
    } else {
     s0+=563.0;
     s1+=86.0;
    }
   } else {
    if(i29<1.2561023235321045){
     s0+=97.0;
     s1+=327.0;
    } else {
     s0+=176.0;
     s1+=34.0;
    }
   }
  } else {
   if(i4<-8.64267349243164e-06){
    if(i11<1.0398883819580078){
     s0+=13382.0;
     s1+=572.0;
    } else {
     s0+=2774.0;
     s1+=1031.0;
    }
   } else {
    if(i0<0.08317658305168152){
     s0+=1729.0;
     s1+=693.0;
    } else {
     s0+=561.0;
     s1+=1851.0;
    }
   }
  }
 } else {
  if(i43<0.0002691307745408267){
   s0+=65.0;
  } else {
   if(i37<0.9795706868171692){
    if(i19<1.0034074783325195){
     s0+=13.0;
     s1+=41.0;
    } else {
     s0+=4.0;
     s1+=716.0;
    }
   } else {
    if(i2<0.13179618120193481){
     s0+=138.0;
     s1+=362.0;
    } else {
     s0+=5.0;
     s1+=775.0;
    }
   }
  }
 }
} else {
 if(i47<0.0008409774745814502){
  if(i40<0.0013534044846892357){
   if(i20<0.0008561383001506329){
    if(i31<1.0862454175949097){
     s1+=22.0;
    } else {
     s0+=36.0;
     s1+=2.0;
    }
   } else {
    if(i28<0.00011607393389567733){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=416.0;
    }
   }
  } else {
   if(i17<0.00023490190505981445){
    if(i29<1.1663256883621216){
     s1+=14.0;
    } else {
     s0+=768.0;
     s1+=22.0;
    }
   } else {
    s1+=315.0;
   }
  }
 } else {
  if(i7<-0.0003173947334289551){
   s0+=29.0;
  } else {
   if(i31<1.253311276435852){
    if(i10<0.0001391768455505371){
     s0+=48.0;
     s1+=65.0;
    } else {
     s0+=69.0;
     s1+=3171.0;
    }
   } else {
    s1+=6315.0;
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i4<4.175305366516113e-05){
  if(i0<0.06859993934631348){
   if(i54<-0.028489887714385986){
    if(i0<0.03268992900848389){
     s0+=2064.0;
     s1+=254.0;
    } else {
     s0+=244.0;
     s1+=283.0;
    }
   } else {
    if(i22<1.0451585054397583){
     s0+=52364.0;
     s1+=151.0;
    } else {
     s0+=12249.0;
     s1+=910.0;
    }
   }
  } else {
   if(i5<-1.800305108190514e-05){
    if(i38<0.0028048455715179443){
     s0+=154.0;
     s1+=407.0;
    } else {
     s0+=260.0;
     s1+=12.0;
    }
   } else {
    if(i50<0.04216083884239197){
     s0+=36.0;
     s1+=95.0;
    } else {
     s0+=1283.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i40<0.000426500104367733){
   s0+=214.0;
  } else {
   if(i44<-1.4116389138507657e-05){
    if(i54<0.03388822078704834){
     s0+=89.0;
     s1+=872.0;
    } else {
     s0+=43.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.0008812324958853424){
     s1+=22.0;
    } else {
     s0+=107.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i44<3.393607357793371e-06){
  if(i7<-0.00038424134254455566){
   if(i14<0.9977267980575562){
    s0+=231.0;
   } else {
    if(i44<-1.003835041046841e-05){
     s0+=12.0;
     s1+=11.0;
    } else {
     s0+=57.0;
    }
   }
  } else {
   if(i20<0.0019858055748045444){
    if(i56<0.005289196968078613){
     s0+=279.0;
     s1+=393.0;
    } else {
     s0+=365.0;
     s1+=38.0;
    }
   } else {
    if(i10<-2.1278858184814453e-05){
     s0+=599.0;
     s1+=2899.0;
    } else {
     s0+=68.0;
     s1+=10665.0;
    }
   }
  }
 } else {
  if(i16<-1.5437602996826172e-05){
   s0+=380.0;
  } else {
   if(i23<0.0035525017883628607){
    if(i6<0.9972502589225769){
     s1+=18.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i51<-0.0004104285326320678){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=57.0;
    }
   }
  }
 }
}
if(i8<0.072673499584198){
 if(i52<1.0083684921264648){
  if(i14<1.0018947124481201){
   if(i43<0.00039943537558428943){
    if(i56<-0.0026089847087860107){
     s0+=210.0;
     s1+=36.0;
    } else {
     s0+=48965.0;
     s1+=136.0;
    }
   } else {
    if(i3<-0.0002917945384979248){
     s0+=13426.0;
     s1+=595.0;
    } else {
     s0+=3549.0;
     s1+=1280.0;
    }
   }
  } else {
   if(i6<1.0029106140136719){
    if(i12<1.0772948265075684){
     s0+=435.0;
     s1+=74.0;
    } else {
     s0+=29.0;
     s1+=99.0;
    }
   } else {
    if(i22<1.0409044027328491){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=47.0;
     s1+=899.0;
    }
   }
  }
 } else {
  if(i57<0.0022488832473754883){
   if(i5<-3.219184509362094e-05){
    if(i16<-6.109476089477539e-06){
     s0+=49.0;
     s1+=7.0;
    } else {
     s0+=83.0;
     s1+=1136.0;
    }
   } else {
    if(i76<1.0012918710708618){
     s0+=518.0;
     s1+=50.0;
    } else {
     s0+=47.0;
     s1+=35.0;
    }
   }
  } else {
   if(i68<-0.0037192695308476686){
    if(i7<0.0011237263679504395){
     s0+=960.0;
     s1+=51.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i6<1.0041768550872803){
     s0+=751.0;
     s1+=242.0;
    } else {
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i2<0.11781755089759827){
  if(i54<0.049577414989471436){
   if(i38<0.004953145980834961){
    if(i0<0.0914914608001709){
     s0+=345.0;
     s1+=333.0;
    } else {
     s0+=68.0;
     s1+=986.0;
    }
   } else {
    if(i40<0.0006434543174691498){
     s1+=4.0;
    } else {
     s0+=168.0;
     s1+=19.0;
    }
   }
  } else {
   if(i45<0.017172247171401978){
    if(i40<0.002039918676018715){
     s0+=100.0;
     s1+=89.0;
    } else {
     s0+=189.0;
     s1+=18.0;
    }
   } else {
    if(i9<1.0130008459091187){
     s0+=475.0;
     s1+=5.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i7<-0.00039127469062805176){
   if(i41<0.0017035709461197257){
    s0+=218.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i36<0.0011682715266942978){
    if(i58<-0.027259154245257378){
     s0+=160.0;
    } else {
     s0+=23.0;
     s1+=185.0;
    }
   } else {
    if(i20<0.003219360951334238){
     s0+=186.0;
     s1+=505.0;
    } else {
     s0+=73.0;
     s1+=10284.0;
    }
   }
  }
 }
}
if(i1<0.08416828513145447){
 if(i45<-0.006169945001602173){
  if(i4<3.153085708618164e-05){
   if(i8<0.02135378122329712){
    if(i2<0.03405183553695679){
     s0+=2826.0;
     s1+=229.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i46<0.9979561567306519){
     s0+=402.0;
     s1+=407.0;
    } else {
     s0+=472.0;
     s1+=42.0;
    }
   }
  } else {
   if(i70<0.00010437727905809879){
    if(i32<0.013022368773818016){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i0<0.005518138408660889){
     s0+=30.0;
     s1+=36.0;
    } else {
     s0+=16.0;
     s1+=560.0;
    }
   }
  }
 } else {
  if(i6<1.0024741888046265){
   if(i25<1.0067493915557861){
    if(i66<0.0006797885289415717){
     s0+=57931.0;
     s1+=466.0;
    } else {
     s0+=5273.0;
     s1+=406.0;
    }
   } else {
    if(i30<0.0011789705604314804){
     s0+=559.0;
     s1+=324.0;
    } else {
     s0+=1498.0;
     s1+=66.0;
    }
   }
  } else {
   if(i31<1.1353518962860107){
    if(i29<1.0580317974090576){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=413.0;
    }
   } else {
    if(i5<-7.482473301934078e-05){
     s0+=41.0;
     s1+=36.0;
    } else {
     s0+=163.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i20<0.00468748714774847){
  if(i42<-0.0001392960548400879){
   if(i12<1.3916220664978027){
    if(i46<0.9942585229873657){
     s0+=504.0;
    } else {
     s0+=62.0;
     s1+=7.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i61<0.039793819189071655){
    if(i43<0.003692812751978636){
     s0+=127.0;
     s1+=1603.0;
    } else {
     s0+=353.0;
     s1+=420.0;
    }
   } else {
    if(i6<1.0036070346832275){
     s0+=615.0;
     s1+=243.0;
    } else {
     s1+=75.0;
    }
   }
  }
 } else {
  if(i55<0.995513916015625){
   s0+=22.0;
  } else {
   if(i7<-0.0004025697708129883){
    if(i43<0.005054464563727379){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i1<0.11721238493919373){
     s0+=200.0;
     s1+=1184.0;
    } else {
     s0+=31.0;
     s1+=10453.0;
    }
   }
  }
 }
}
if(i0<0.08061712980270386){
 if(i12<1.0449585914611816){
  if(i22<1.042891263961792){
   if(i66<0.0007178224623203278){
    if(i12<1.0410044193267822){
     s0+=48477.0;
     s1+=40.0;
    } else {
     s0+=783.0;
     s1+=18.0;
    }
   } else {
    if(i68<-0.0010251562343910336){
     s0+=1828.0;
     s1+=7.0;
    } else {
     s0+=795.0;
     s1+=108.0;
    }
   }
  } else {
   if(i0<0.06639564037322998){
    if(i63<0.007862959057092667){
     s0+=9112.0;
     s1+=375.0;
    } else {
     s0+=470.0;
     s1+=181.0;
    }
   } else {
    if(i15<0.9948782324790955){
     s0+=220.0;
     s1+=12.0;
    } else {
     s0+=182.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i10<0.0011496543884277344){
   if(i16<3.1054019927978516e-05){
    if(i6<1.0011883974075317){
     s0+=6577.0;
     s1+=904.0;
    } else {
     s0+=522.0;
     s1+=358.0;
    }
   } else {
    if(i64<7.888674736022949e-05){
     s0+=77.0;
     s1+=279.0;
    } else {
     s0+=162.0;
     s1+=36.0;
    }
   }
  } else {
   if(i15<1.005657434463501){
    if(i62<0.019509954378008842){
     s1+=12.0;
    } else {
     s0+=51.0;
     s1+=4.0;
    }
   } else {
    if(i57<0.002151966094970703){
     s1+=395.0;
    } else {
     s0+=20.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i7<-0.0003857910633087158){
  if(i41<0.00671427370980382){
   if(i14<0.9988610744476318){
    if(i17<-8.097290992736816e-05){
     s0+=364.0;
    } else {
     s0+=52.0;
     s1+=2.0;
    }
   } else {
    if(i79<-0.0008980976417660713){
     s1+=7.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i72<0.9983444213867188){
    s1+=16.0;
   } else {
    if(i4<-0.00011143088340759277){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i20<0.0018957916181534529){
   if(i39<0.04064497351646423){
    if(i56<0.008478164672851562){
     s0+=11.0;
     s1+=220.0;
    } else {
     s0+=17.0;
     s1+=6.0;
    }
   } else {
    if(i10<0.0014923810958862305){
     s0+=637.0;
     s1+=136.0;
    } else {
     s1+=66.0;
    }
   }
  } else {
   if(i5<-9.175697414320894e-06){
    if(i0<0.11835730075836182){
     s0+=376.0;
     s1+=1983.0;
    } else {
     s0+=118.0;
     s1+=11597.0;
    }
   } else {
    if(i68<-0.0036619207821786404){
     s0+=167.0;
     s1+=63.0;
    } else {
     s0+=26.0;
     s1+=145.0;
    }
   }
  }
 }
}
if(i25<1.00885009765625){
 if(i11<1.0452215671539307){
  if(i16<2.3066997528076172e-05){
   if(i22<1.0475225448608398){
    if(i43<0.0002607403148431331){
     s0+=43090.0;
     s1+=11.0;
    } else {
     s0+=12068.0;
     s1+=298.0;
    }
   } else {
    if(i15<0.9942030310630798){
     s0+=4223.0;
     s1+=133.0;
    } else {
     s0+=5050.0;
     s1+=1365.0;
    }
   }
  } else {
   if(i56<0.0002499818801879883){
    if(i9<0.987432599067688){
     s0+=190.0;
     s1+=100.0;
    } else {
     s0+=34.0;
     s1+=470.0;
    }
   } else {
    if(i6<1.002134919166565){
     s0+=351.0;
     s1+=10.0;
    } else {
     s1+=29.0;
    }
   }
  }
 } else {
  if(i6<1.0006496906280518){
   if(i51<-0.00010794867557706311){
    if(i14<0.99878990650177){
     s0+=613.0;
     s1+=19.0;
    } else {
     s0+=639.0;
     s1+=1039.0;
    }
   } else {
    if(i31<1.3758728504180908){
     s0+=2224.0;
     s1+=296.0;
    } else {
     s0+=7.0;
     s1+=51.0;
    }
   }
  } else {
   if(i63<0.007065365090966225){
    if(i60<0.09992183744907379){
     s0+=320.0;
     s1+=495.0;
    } else {
     s0+=18.0;
     s1+=368.0;
    }
   } else {
    if(i20<0.0035128998570144176){
     s0+=23.0;
     s1+=65.0;
    } else {
     s0+=30.0;
     s1+=1347.0;
    }
   }
  }
 }
} else {
 if(i31<1.2835514545440674){
  if(i1<0.07561951875686646){
   if(i9<1.0037834644317627){
    if(i74<5.5235564104805235e-06){
     s0+=805.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   } else {
    if(i30<0.001379642402753234){
     s0+=34.0;
     s1+=285.0;
    } else {
     s0+=554.0;
     s1+=25.0;
    }
   }
  } else {
   if(i20<0.0017679319716989994){
    if(i23<0.0006340835243463516){
     s0+=28.0;
     s1+=97.0;
    } else {
     s0+=403.0;
     s1+=51.0;
    }
   } else {
    if(i3<0.0007569789886474609){
     s0+=351.0;
     s1+=1677.0;
    } else {
     s0+=28.0;
     s1+=2846.0;
    }
   }
  }
 } else {
  if(i33<0.9989496469497681){
   if(i29<1.4944241046905518){
    s0+=183.0;
   } else {
    s1+=16.0;
   }
  } else {
   if(i2<0.09442025423049927){
    if(i6<1.0097339153289795){
     s0+=16.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=5817.0;
   }
  }
 }
}
if(i0<0.07909071445465088){
 if(i63<0.0075655728578567505){
  if(i10<0.0014827251434326172){
   if(i23<0.00028163345996290445){
    if(i5<-4.48779173893854e-05){
     s0+=284.0;
     s1+=150.0;
    } else {
     s0+=51572.0;
     s1+=180.0;
    }
   } else {
    if(i15<0.9946646690368652){
     s0+=8480.0;
     s1+=53.0;
    } else {
     s0+=5383.0;
     s1+=1032.0;
    }
   }
  } else {
   if(i61<0.013953149318695068){
    if(i27<1.274820327758789){
     s1+=117.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i14<1.0012116432189941){
     s0+=9.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i44<-1.4951204320823308e-05){
   if(i3<0.0002963542938232422){
    if(i63<0.019923970103263855){
     s0+=371.0;
     s1+=38.0;
    } else {
     s0+=79.0;
     s1+=59.0;
    }
   } else {
    if(i26<0.006949278060346842){
     s0+=28.0;
     s1+=25.0;
    } else {
     s0+=51.0;
     s1+=568.0;
    }
   }
  } else {
   if(i2<0.032473087310791016){
    if(i28<0.0018951594829559326){
     s0+=1217.0;
     s1+=223.0;
    } else {
     s0+=1030.0;
     s1+=24.0;
    }
   } else {
    if(i72<1.009932279586792){
     s0+=443.0;
     s1+=312.0;
    } else {
     s0+=238.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i15<1.0009795427322388){
  if(i6<0.9962878227233887){
   if(i71<0.0008460406097583473){
    if(i47<0.0051015811040997505){
     s0+=570.0;
     s1+=7.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i70<0.0008748056134209037){
     s0+=32.0;
     s1+=8.0;
    } else {
     s0+=16.0;
     s1+=90.0;
    }
   }
  } else {
   if(i39<0.045629262924194336){
    if(i56<0.006883293390274048){
     s0+=39.0;
     s1+=1766.0;
    } else {
     s0+=51.0;
     s1+=447.0;
    }
   } else {
    if(i60<0.12199720740318298){
     s0+=1029.0;
     s1+=770.0;
    } else {
     s0+=24.0;
     s1+=595.0;
    }
   }
  }
 } else {
  if(i1<0.11198830604553223){
   if(i56<0.006282985210418701){
    if(i35<0.057187408208847046){
     s0+=11.0;
     s1+=1016.0;
    } else {
     s0+=66.0;
     s1+=97.0;
    }
   } else {
    if(i70<0.0005296866875141859){
     s0+=66.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i4<3.248453140258789e-05){
    if(i55<1.000000238418579){
     s0+=12.0;
     s1+=418.0;
    } else {
     s0+=43.0;
     s1+=138.0;
    }
   } else {
    if(i51<-0.00012170190166216344){
     s0+=8.0;
     s1+=8394.0;
    } else {
     s0+=15.0;
     s1+=526.0;
    }
   }
  }
 }
}
if(i6<1.0024771690368652){
 if(i37<1.0107730627059937){
  if(i43<0.0003811563947238028){
   if(i25<1.0087978839874268){
    if(i21<1.0063867568969727){
     s0+=49253.0;
     s1+=165.0;
    } else {
     s0+=43.0;
     s1+=15.0;
    }
   } else {
    if(i1<0.06503918766975403){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   if(i4<1.2576580047607422e-05){
    if(i30<0.0010662820423021913){
     s0+=4165.0;
     s1+=1467.0;
    } else {
     s0+=14734.0;
     s1+=1090.0;
    }
   } else {
    if(i1<0.063508540391922){
     s0+=370.0;
     s1+=179.0;
    } else {
     s0+=165.0;
     s1+=776.0;
    }
   }
  }
 } else {
  if(i8<0.17244571447372437){
   if(i34<1.1750470399856567){
    if(i5<-1.589873863849789e-05){
     s0+=35.0;
     s1+=803.0;
    } else {
     s0+=305.0;
     s1+=5.0;
    }
   } else {
    if(i5<-4.155402712058276e-05){
     s0+=158.0;
     s1+=293.0;
    } else {
     s0+=1233.0;
     s1+=85.0;
    }
   }
  } else {
   if(i2<0.23610463738441467){
    if(i39<0.11771607398986816){
     s0+=9.0;
     s1+=142.0;
    } else {
     s0+=77.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.9976338148117065){
     s0+=13.0;
    } else {
     s0+=44.0;
     s1+=865.0;
    }
   }
  }
 }
} else {
 if(i43<0.0001883803342934698){
  s0+=30.0;
 } else {
  if(i32<0.01686345785856247){
   if(i6<1.0041444301605225){
    if(i41<0.0017393863527104259){
     s1+=398.0;
    } else {
     s0+=280.0;
     s1+=92.0;
    }
   } else {
    if(i46<0.998361349105835){
     s0+=40.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=1655.0;
    }
   }
  } else {
   if(i53<1.0007860660552979){
    if(i1<0.011465340852737427){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=8.0;
     s1+=9123.0;
    }
   } else {
    if(i31<1.3329194784164429){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i17<0.00011485815048217773){
 if(i62<0.025613613426685333){
  if(i12<1.0469666719436646){
   if(i56<-0.0027385056018829346){
    if(i40<0.00034182806848548353){
     s0+=98.0;
    } else {
     s0+=84.0;
     s1+=177.0;
    }
   } else {
    if(i19<1.0033679008483887){
     s0+=51477.0;
     s1+=172.0;
    } else {
     s0+=26.0;
     s1+=45.0;
    }
   }
  } else {
   if(i4<1.0669231414794922e-05){
    if(i1<0.08075588941574097){
     s0+=2252.0;
     s1+=114.0;
    } else {
     s0+=136.0;
     s1+=184.0;
    }
   } else {
    if(i26<0.013719944283366203){
     s0+=235.0;
     s1+=156.0;
    } else {
     s0+=26.0;
     s1+=311.0;
    }
   }
  }
 } else {
  if(i1<0.08656936883926392){
   if(i27<1.100754976272583){
    if(i22<1.0450081825256348){
     s0+=1915.0;
     s1+=99.0;
    } else {
     s0+=733.0;
     s1+=929.0;
    }
   } else {
    if(i19<1.0070008039474487){
     s0+=11458.0;
     s1+=702.0;
    } else {
     s0+=111.0;
     s1+=160.0;
    }
   }
  } else {
   if(i30<0.005847700871527195){
    if(i58<-0.021458126604557037){
     s0+=886.0;
     s1+=340.0;
    } else {
     s0+=335.0;
     s1+=1563.0;
    }
   } else {
    if(i3<-0.0015492439270019531){
     s0+=38.0;
     s1+=23.0;
    } else {
     s0+=202.0;
     s1+=2407.0;
    }
   }
  }
 }
} else {
 if(i2<0.05543801188468933){
  if(i7<0.0005862712860107422){
   if(i20<0.004441430792212486){
    if(i41<0.0007921825163066387){
     s0+=141.0;
     s1+=32.0;
    } else {
     s0+=552.0;
     s1+=1.0;
    }
   } else {
    if(i76<0.9983059763908386){
     s0+=1.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   s1+=232.0;
  }
 } else {
  if(i53<0.9988893270492554){
   s0+=57.0;
  } else {
   if(i40<0.0002803359238896519){
    s0+=9.0;
   } else {
    if(i17<0.0002117753028869629){
     s0+=94.0;
     s1+=1275.0;
    } else {
     s0+=1.0;
     s1+=8422.0;
    }
   }
  }
 }
}
if(i7<0.000436246395111084){
 if(i25<1.0082769393920898){
  if(i1<0.08194559812545776){
   if(i54<-0.028485804796218872){
    if(i41<0.00043999386252835393){
     s0+=848.0;
     s1+=21.0;
    } else {
     s0+=1191.0;
     s1+=420.0;
    }
   } else {
    if(i65<0.0015180862974375486){
     s0+=59630.0;
     s1+=577.0;
    } else {
     s0+=4498.0;
     s1+=496.0;
    }
   }
  } else {
   if(i5<-6.503607437480241e-06){
    if(i33<0.9991261959075928){
     s0+=93.0;
     s1+=9.0;
    } else {
     s0+=225.0;
     s1+=1364.0;
    }
   } else {
    if(i49<0.04425749182701111){
     s0+=521.0;
     s1+=23.0;
    } else {
     s0+=281.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i40<0.010160263627767563){
   if(i10<0.0008136630058288574){
    if(i31<1.0749402046203613){
     s0+=11.0;
     s1+=312.0;
    } else {
     s0+=1941.0;
     s1+=695.0;
    }
   } else {
    if(i40<0.0025894930586218834){
     s0+=3.0;
     s1+=662.0;
    } else {
     s0+=161.0;
     s1+=126.0;
    }
   }
  } else {
   if(i5<-2.1196898160269484e-05){
    s1+=984.0;
   } else {
    if(i12<1.1946287155151367){
     s1+=3.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
} else {
 if(i0<0.07244879007339478){
  if(i54<-0.017889291048049927){
   if(i63<0.014056527055799961){
    if(i55<1.0020086765289307){
     s0+=80.0;
     s1+=235.0;
    } else {
     s0+=146.0;
     s1+=5.0;
    }
   } else {
    if(i59<0.0004086083499714732){
     s0+=30.0;
     s1+=354.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i15<1.0041167736053467){
    if(i12<1.0184623003005981){
     s0+=7.0;
     s1+=13.0;
    } else {
     s0+=1134.0;
     s1+=93.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s1+=130.0;
    } else {
     s0+=43.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i46<1.003380298614502){
   if(i0<0.11789542436599731){
    if(i66<0.002476560417562723){
     s0+=308.0;
     s1+=148.0;
    } else {
     s0+=7.0;
     s1+=231.0;
    }
   } else {
    if(i61<0.07654029130935669){
     s0+=27.0;
     s1+=1652.0;
    } else {
     s0+=31.0;
     s1+=127.0;
    }
   }
  } else {
   if(i4<3.045797348022461e-05){
    if(i41<0.004170766565948725){
     s0+=15.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=72.0;
    }
   } else {
    if(i76<1.0013340711593628){
     s0+=7.0;
     s1+=2020.0;
    } else {
     s1+=6066.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i23<0.00031641291570849717){
  if(i52<1.0110160112380981){
   if(i13<1.0095566511154175){
    if(i71<0.00028069678228348494){
     s0+=52583.0;
     s1+=185.0;
    } else {
     s0+=1207.0;
     s1+=130.0;
    }
   } else {
    if(i31<1.082112193107605){
     s1+=52.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i27<1.2392117977142334){
    if(i11<1.0375453233718872){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=26.0;
     s1+=135.0;
    }
   } else {
    s0+=26.0;
   }
  }
 } else {
  if(i0<0.07770729064941406){
   if(i40<0.0019846719224005938){
    if(i5<-9.034581125888508e-06){
     s0+=894.0;
     s1+=814.0;
    } else {
     s0+=3747.0;
     s1+=493.0;
    }
   } else {
    if(i47<0.006421868689358234){
     s0+=10241.0;
     s1+=237.0;
    } else {
     s0+=12.0;
     s1+=35.0;
    }
   }
  } else {
   if(i54<0.04368385672569275){
    if(i16<-1.3917684555053711e-05){
     s0+=140.0;
     s1+=10.0;
    } else {
     s0+=294.0;
     s1+=2213.0;
    }
   } else {
    if(i1<0.12369930744171143){
     s0+=747.0;
     s1+=142.0;
    } else {
     s0+=481.0;
     s1+=1059.0;
    }
   }
  }
 }
} else {
 if(i77<0.00044625435839407146){
  if(i5<-4.6546716475859284e-05){
   if(i1<0.050257593393325806){
    if(i56<0.0026400089263916016){
     s0+=63.0;
     s1+=239.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i46<0.9976953268051147){
     s0+=124.0;
     s1+=1456.0;
    } else {
     s0+=22.0;
     s1+=9727.0;
    }
   }
  } else {
   if(i17<0.00012814998626708984){
    if(i19<1.0023894309997559){
     s0+=17.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=217.0;
    }
   } else {
    if(i70<0.0004727955674752593){
     s0+=147.0;
     s1+=4.0;
    } else {
     s1+=44.0;
    }
   }
  }
 } else {
  s0+=158.0;
 }
}
if(i1<0.08504641056060791){
 if(i4<3.93986701965332e-05){
  if(i38<-0.0015586614608764648){
   if(i1<0.0427689254283905){
    if(i27<1.100754976272583){
     s0+=944.0;
     s1+=309.0;
    } else {
     s0+=2492.0;
     s1+=137.0;
    }
   } else {
    if(i52<0.9842050671577454){
     s0+=183.0;
     s1+=315.0;
    } else {
     s0+=310.0;
     s1+=77.0;
    }
   }
  } else {
   if(i37<1.007279634475708){
    if(i22<1.0451585054397583){
     s0+=52608.0;
     s1+=171.0;
    } else {
     s0+=9967.0;
     s1+=841.0;
    }
   } else {
    if(i40<0.0013814147096127272){
     s0+=649.0;
     s1+=342.0;
    } else {
     s0+=1533.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i40<0.00042525172466412187){
   s0+=257.0;
  } else {
   if(i41<0.0016061230562627316){
    if(i16<0.00034931302070617676){
     s1+=480.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i38<-0.0013796985149383545){
     s0+=51.0;
     s1+=348.0;
    } else {
     s0+=205.0;
     s1+=85.0;
    }
   }
  }
 }
} else {
 if(i6<0.9960448741912842){
  if(i15<0.9847978353500366){
   if(i71<0.0006766997976228595){
    s0+=168.0;
   } else {
    if(i70<0.0008454655180685222){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   }
  } else {
   if(i27<1.5234935283660889){
    if(i71<0.0012216202449053526){
     s0+=489.0;
     s1+=4.0;
    } else {
     s0+=21.0;
     s1+=10.0;
    }
   } else {
    if(i8<0.10175654292106628){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   }
  }
 } else {
  if(i15<1.0022319555282593){
   if(i36<0.006331326439976692){
    if(i64<0.004848122596740723){
     s0+=375.0;
     s1+=1782.0;
    } else {
     s0+=698.0;
     s1+=444.0;
    }
   } else {
    if(i63<0.0008016966748982668){
     s0+=65.0;
     s1+=683.0;
    } else {
     s0+=7.0;
     s1+=1053.0;
    }
   }
  } else {
   if(i36<0.005165833048522472){
    if(i58<-0.03658686950802803){
     s0+=45.0;
     s1+=29.0;
    } else {
     s0+=49.0;
     s1+=2085.0;
    }
   } else {
    if(i0<0.12586697936058044){
     s0+=18.0;
     s1+=242.0;
    } else {
     s0+=6.0;
     s1+=7483.0;
    }
   }
  }
 }
}
if(i8<0.0695335865020752){
 if(i10<0.0010274648666381836){
  if(i6<1.0024800300598145){
   if(i26<0.016425956040620804){
    if(i0<0.0785977840423584){
     s0+=58480.0;
     s1+=671.0;
    } else {
     s0+=107.0;
     s1+=146.0;
    }
   } else {
    if(i2<0.06780838966369629){
     s0+=9655.0;
     s1+=1048.0;
    } else {
     s0+=248.0;
     s1+=614.0;
    }
   }
  } else {
   if(i27<1.5682398080825806){
    if(i10<0.0010063648223876953){
     s0+=64.0;
     s1+=475.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i29<1.5166430473327637){
     s0+=67.0;
     s1+=10.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i44<-1.4147464753477834e-05){
   if(i5<-4.229667683830485e-05){
    s1+=1196.0;
   } else {
    if(i28<0.00020298661547712982){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i31<1.145219087600708){
    if(i0<0.06010875105857849){
     s0+=22.0;
     s1+=3.0;
    } else {
     s1+=197.0;
    }
   } else {
    if(i65<0.013470610603690147){
     s0+=200.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i7<-0.00037485361099243164){
  if(i14<0.9988292455673218){
   if(i29<1.498544454574585){
    if(i41<0.0017424665857106447){
     s0+=427.0;
    } else {
     s0+=80.0;
     s1+=4.0;
    }
   } else {
    if(i28<0.0008650567615404725){
     s0+=33.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  } else {
   if(i1<0.11700770258903503){
    s0+=11.0;
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i1<0.11719471216201782){
   if(i56<0.0052336156368255615){
    if(i38<0.003965497016906738){
     s0+=397.0;
     s1+=1229.0;
    } else {
     s0+=341.0;
     s1+=31.0;
    }
   } else {
    if(i40<0.001449853298254311){
     s0+=41.0;
     s1+=55.0;
    } else {
     s0+=488.0;
     s1+=39.0;
    }
   }
  } else {
   if(i47<0.00030140994931571186){
    if(i68<-0.005681905895471573){
     s0+=140.0;
     s1+=29.0;
    } else {
     s0+=20.0;
     s1+=123.0;
    }
   } else {
    if(i41<0.0005087829777039587){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=250.0;
     s1+=11190.0;
    }
   }
  }
 }
}
if(i22<1.0576403141021729){
 if(i24<1.0089378356933594){
  if(i26<0.014151304960250854){
   if(i57<-0.0013936758041381836){
    if(i22<1.0406032800674438){
     s0+=583.0;
     s1+=32.0;
    } else {
     s0+=266.0;
     s1+=105.0;
    }
   } else {
    if(i21<1.0083930492401123){
     s0+=49755.0;
     s1+=89.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i6<0.9969290494918823){
    if(i45<-0.002421170473098755){
     s0+=495.0;
     s1+=19.0;
    } else {
     s0+=5790.0;
     s1+=11.0;
    }
   } else {
    if(i40<0.0003915164270438254){
     s0+=1050.0;
     s1+=14.0;
    } else {
     s0+=767.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i30<0.0011714550200849771){
   if(i53<0.9995821714401245){
    s0+=7.0;
   } else {
    if(i30<0.00030130043160170317){
     s0+=1.0;
    } else {
     s1+=185.0;
    }
   }
  } else {
   if(i79<-0.0001933211024152115){
    if(i72<1.001075029373169){
     s1+=2.0;
    } else {
     s0+=45.0;
    }
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i1<0.0851379930973053){
  if(i7<0.0006172060966491699){
   if(i0<0.06548354029655457){
    if(i30<0.0010666765738278627){
     s0+=1779.0;
     s1+=699.0;
    } else {
     s0+=7542.0;
     s1+=271.0;
    }
   } else {
    if(i39<0.028380870819091797){
     s0+=84.0;
     s1+=458.0;
    } else {
     s0+=789.0;
     s1+=129.0;
    }
   }
  } else {
   if(i41<0.007029146887362003){
    if(i55<1.0022274255752563){
     s0+=36.0;
     s1+=711.0;
    } else {
     s0+=62.0;
     s1+=33.0;
    }
   } else {
    if(i22<1.1268150806427002){
     s0+=295.0;
     s1+=5.0;
    } else {
     s0+=117.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i42<-0.00025019049644470215){
   if(i22<1.398578405380249){
    s0+=342.0;
   } else {
    s1+=50.0;
   }
  } else {
   if(i13<1.0237452983856201){
    if(i54<0.0623440146446228){
     s0+=335.0;
     s1+=4975.0;
    } else {
     s0+=813.0;
     s1+=1560.0;
    }
   } else {
    if(i44<2.6387697289464995e-06){
     s0+=12.0;
     s1+=7276.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i13<1.0081660747528076){
 if(i7<0.00046759843826293945){
  if(i8<0.0755089819431305){
   if(i57<-0.0013530254364013672){
    if(i29<1.1823735237121582){
     s0+=1844.0;
     s1+=912.0;
    } else {
     s0+=3521.0;
     s1+=126.0;
    }
   } else {
    if(i49<0.032534465193748474){
     s0+=57694.0;
     s1+=475.0;
    } else {
     s0+=4186.0;
     s1+=696.0;
    }
   }
  } else {
   if(i32<0.040245652198791504){
    if(i54<0.06968069076538086){
     s0+=444.0;
     s1+=665.0;
    } else {
     s0+=587.0;
     s1+=146.0;
    }
   } else {
    if(i6<0.9911556243896484){
     s0+=10.0;
    } else {
     s0+=4.0;
     s1+=476.0;
    }
   }
  }
 } else {
  if(i10<-0.0016720890998840332){
   if(i1<0.11805927753448486){
    if(i5<-0.0001319591247010976){
     s0+=31.0;
     s1+=76.0;
    } else {
     s0+=783.0;
     s1+=90.0;
    }
   } else {
    if(i43<0.003908683080226183){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=303.0;
    }
   }
  } else {
   if(i5<-6.312556797638535e-05){
    if(i4<3.647804260253906e-05){
     s0+=44.0;
     s1+=71.0;
    } else {
     s0+=65.0;
     s1+=1605.0;
    }
   } else {
    if(i6<1.0022790431976318){
     s0+=427.0;
     s1+=148.0;
    } else {
     s0+=34.0;
     s1+=277.0;
    }
   }
  }
 }
} else {
 if(i20<0.0033320942893624306){
  if(i34<1.1039612293243408){
   if(i0<0.030584067106246948){
    s0+=19.0;
   } else {
    if(i17<7.31050968170166e-05){
     s0+=55.0;
     s1+=51.0;
    } else {
     s1+=584.0;
    }
   }
  } else {
   if(i5<-5.7819510402623564e-05){
    if(i13<1.0146995782852173){
     s0+=5.0;
     s1+=12.0;
    } else {
     s1+=279.0;
    }
   } else {
    if(i50<0.15958240628242493){
     s0+=1070.0;
     s1+=84.0;
    } else {
     s0+=61.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i6<0.9972320795059204){
   if(i42<-9.974837303161621e-05){
    s0+=94.0;
   } else {
    s1+=13.0;
   }
  } else {
   if(i69<4.99601583214826e-07){
    if(i15<0.9983105659484863){
     s0+=48.0;
     s1+=797.0;
    } else {
     s0+=21.0;
     s1+=9126.0;
    }
   } else {
    if(i76<0.9998747110366821){
     s0+=28.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
}
if(i19<1.0028104782104492){
 if(i37<1.0107691287994385){
  if(i18<1.0401519536972046){
   if(i1<0.08235931396484375){
    if(i31<1.0557184219360352){
     s0+=42410.0;
     s1+=1.0;
    } else {
     s0+=22619.0;
     s1+=1498.0;
    }
   } else {
    if(i6<0.9946284890174866){
     s0+=355.0;
     s1+=12.0;
    } else {
     s0+=123.0;
     s1+=733.0;
    }
   }
  } else {
   if(i51<-8.225082274293527e-05){
    if(i7<-0.00026667118072509766){
     s0+=511.0;
     s1+=40.0;
    } else {
     s0+=674.0;
     s1+=939.0;
    }
   } else {
    if(i3<0.00020524859428405762){
     s0+=1372.0;
     s1+=93.0;
    } else {
     s0+=76.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i10<0.0007697641849517822){
   if(i20<0.0035792989656329155){
    if(i79<-0.001226233085617423){
     s0+=1263.0;
     s1+=153.0;
    } else {
     s0+=170.0;
     s1+=159.0;
    }
   } else {
    if(i7<-0.0003642737865447998){
     s0+=157.0;
    } else {
     s0+=173.0;
     s1+=1126.0;
    }
   }
  } else {
   if(i51<-0.00016100102220661938){
    if(i5<-4.335444828029722e-05){
     s0+=16.0;
     s1+=1458.0;
    } else {
     s0+=55.0;
     s1+=100.0;
    }
   } else {
    if(i40<0.0033403693232685328){
     s1+=4.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
} else {
 if(i8<0.040101826190948486){
  if(i63<0.008511889725923538){
   if(i1<0.05280512571334839){
    if(i40<0.0007678174879401922){
     s0+=61.0;
     s1+=30.0;
    } else {
     s0+=641.0;
     s1+=3.0;
    }
   } else {
    if(i17<-0.0002320408821105957){
     s0+=25.0;
    } else {
     s0+=3.0;
     s1+=105.0;
    }
   }
  } else {
   if(i1<0.0022895634174346924){
    if(i62<0.05058102309703827){
     s1+=16.0;
    } else {
     s0+=73.0;
     s1+=13.0;
    }
   } else {
    if(i66<-0.00022616382921114564){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=445.0;
    }
   }
  }
 } else {
  if(i5<-4.587008515954949e-05){
   if(i2<0.1001424491405487){
    if(i78<-0.0004360973834991455){
     s0+=162.0;
     s1+=292.0;
    } else {
     s0+=21.0;
     s1+=747.0;
    }
   } else {
    if(i55<1.0058977603912354){
     s0+=17.0;
     s1+=8586.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   }
  } else {
   if(i27<1.2385294437408447){
    if(i20<0.0011688523227348924){
     s0+=16.0;
    } else {
     s1+=208.0;
    }
   } else {
    if(i13<0.9916349053382874){
     s0+=17.0;
     s1+=67.0;
    } else {
     s0+=241.0;
     s1+=47.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i3<0.0005721151828765869){
  if(i23<0.00030721232178620994){
   if(i21<1.0082042217254639){
    if(i56<-0.004318207502365112){
     s0+=5.0;
     s1+=30.0;
    } else {
     s0+=53384.0;
     s1+=239.0;
    }
   } else {
    if(i8<0.046985924243927){
     s0+=185.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=66.0;
    }
   }
  } else {
   if(i17<-0.00023287534713745117){
    if(i11<1.100623607635498){
     s0+=7972.0;
     s1+=129.0;
    } else {
     s0+=206.0;
     s1+=47.0;
    }
   } else {
    if(i42<-3.1948089599609375e-05){
     s0+=3360.0;
     s1+=134.0;
    } else {
     s0+=3634.0;
     s1+=1432.0;
    }
   }
  }
 } else {
  if(i5<-4.330423689680174e-05){
   if(i58<-0.013881156221032143){
    if(i45<-0.017175376415252686){
     s1+=12.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i0<0.013445794582366943){
     s0+=28.0;
     s1+=43.0;
    } else {
     s0+=55.0;
     s1+=786.0;
    }
   }
  } else {
   if(i32<0.009771030396223068){
    if(i6<1.0043795108795166){
     s0+=233.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i38<0.0006490647792816162){
     s1+=68.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i42<-0.0001392960548400879){
  if(i41<0.011186972260475159){
   if(i5<-4.206008816254325e-05){
    if(i34<1.277674913406372){
     s0+=6.0;
     s1+=30.0;
    } else {
     s0+=13.0;
    }
   } else {
    s0+=675.0;
   }
  } else {
   s1+=102.0;
  }
 } else {
  if(i9<1.0068771839141846){
   if(i38<0.004222691059112549){
    if(i20<0.0017844934482127428){
     s0+=220.0;
     s1+=189.0;
    } else {
     s0+=150.0;
     s1+=2912.0;
    }
   } else {
    if(i62<0.19512692093849182){
     s0+=857.0;
     s1+=715.0;
    } else {
     s0+=104.0;
     s1+=823.0;
    }
   }
  } else {
   if(i14<0.999887228012085){
    if(i34<1.2604451179504395){
     s1+=208.0;
    } else {
     s0+=48.0;
     s1+=32.0;
    }
   } else {
    if(i4<2.7298927307128906e-05){
     s0+=19.0;
     s1+=233.0;
    } else {
     s0+=10.0;
     s1+=8784.0;
    }
   }
  }
 }
}
if(i5<-7.496170292142779e-05){
 if(i10<-0.003367692232131958){
  if(i13<0.948022723197937){
   if(i1<0.019196420907974243){
    if(i79<-0.0007810648530721664){
     s1+=2.0;
    } else {
     s0+=113.0;
    }
   } else {
    if(i5<-8.041066030273214e-05){
     s1+=52.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i51<-0.0005135832470841706){
    s1+=19.0;
   } else {
    if(i18<1.0933257341384888){
     s0+=461.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i2<0.056913942098617554){
   if(i6<1.0017437934875488){
    if(i70<0.0015084035694599152){
     s0+=224.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.000718235969543457){
     s0+=30.0;
     s1+=302.0;
    } else {
     s0+=32.0;
     s1+=9.0;
    }
   }
  } else {
   if(i53<0.9988712072372437){
    s0+=63.0;
   } else {
    if(i46<0.9983689785003662){
     s0+=95.0;
     s1+=1624.0;
    } else {
     s0+=14.0;
     s1+=9457.0;
    }
   }
  }
 }
} else {
 if(i25<1.0067229270935059){
  if(i22<1.0576856136322021){
   if(i60<0.010394185781478882){
    if(i73<0.967025101184845){
     s0+=23.0;
     s1+=25.0;
    } else {
     s0+=43933.0;
     s1+=82.0;
    }
   } else {
    if(i3<-0.0002912282943725586){
     s0+=12558.0;
     s1+=228.0;
    } else {
     s0+=1326.0;
     s1+=353.0;
    }
   }
  } else {
   if(i34<1.1037919521331787){
    if(i36<0.0005703050992451608){
     s0+=965.0;
     s1+=144.0;
    } else {
     s0+=256.0;
     s1+=1035.0;
    }
   } else {
    if(i76<1.0004620552062988){
     s0+=5024.0;
     s1+=505.0;
    } else {
     s0+=2617.0;
     s1+=1022.0;
    }
   }
  }
 } else {
  if(i27<1.2371783256530762){
   if(i15<1.0027453899383545){
    if(i44<-6.999111064942554e-06){
     s0+=61.0;
     s1+=649.0;
    } else {
     s0+=1043.0;
     s1+=420.0;
    }
   } else {
    if(i8<0.032164961099624634){
     s0+=20.0;
     s1+=37.0;
    } else {
     s0+=10.0;
     s1+=863.0;
    }
   }
  } else {
   if(i20<0.005847303196787834){
    if(i66<-0.0006790009792894125){
     s0+=131.0;
     s1+=102.0;
    } else {
     s0+=1859.0;
     s1+=161.0;
    }
   } else {
    if(i23<0.0009290252346545458){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=244.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i23<0.0003194544115103781){
  if(i1<0.08271017670631409){
   if(i79<0.00041700227302499115){
    if(i42<0.0001023411750793457){
     s0+=48035.0;
     s1+=149.0;
    } else {
     s0+=5661.0;
     s1+=179.0;
    }
   } else {
    if(i14<0.9992572665214539){
     s0+=5.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i3<-0.00011113286018371582){
    if(i62<0.026411984115839005){
     s0+=195.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=7.0;
    }
   } else {
    if(i34<1.066007137298584){
     s0+=28.0;
    } else {
     s0+=4.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i1<0.08502998948097229){
   if(i41<0.0014294765423983335){
    if(i5<-1.594977584318258e-05){
     s0+=225.0;
     s1+=693.0;
    } else {
     s0+=5358.0;
     s1+=737.0;
    }
   } else {
    if(i8<0.06926485896110535){
     s0+=9121.0;
     s1+=320.0;
    } else {
     s0+=277.0;
     s1+=93.0;
    }
   }
  } else {
   if(i41<0.00045632405090145767){
    if(i17<5.459785461425781e-05){
     s0+=289.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   } else {
    if(i35<0.05820918083190918){
     s0+=154.0;
     s1+=1981.0;
    } else {
     s0+=1201.0;
     s1+=1588.0;
    }
   }
  }
 }
} else {
 if(i0<0.05844426155090332){
  if(i18<1.011942982673645){
   if(i3<0.0005522370338439941){
    s0+=4.0;
   } else {
    if(i27<1.5682398080825806){
     s1+=151.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   }
  } else {
   if(i72<0.9954807162284851){
    if(i46<0.9894553422927856){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=7.0;
     s1+=103.0;
    }
   } else {
    if(i31<1.1341700553894043){
     s0+=8.0;
     s1+=82.0;
    } else {
     s0+=184.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i2<0.1274004876613617){
   if(i72<1.050588607788086){
    if(i54<0.05591920018196106){
     s0+=57.0;
     s1+=1904.0;
    } else {
     s0+=50.0;
     s1+=51.0;
    }
   } else {
    if(i19<1.0083625316619873){
     s0+=39.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i0<0.16919752955436707){
    if(i45<0.0427933931350708){
     s0+=6.0;
     s1+=986.0;
    } else {
     s0+=6.0;
    }
   } else {
    s1+=8042.0;
   }
  }
 }
}
if(i1<0.08523821830749512){
 if(i21<1.0059432983398438){
  if(i6<1.0024782419204712){
   if(i38<-0.0017818212509155273){
    if(i31<1.1792536973953247){
     s0+=1225.0;
     s1+=566.0;
    } else {
     s0+=1848.0;
     s1+=196.0;
    }
   } else {
    if(i36<0.0002955383388325572){
     s0+=35701.0;
    } else {
     s0+=28545.0;
     s1+=1074.0;
    }
   }
  } else {
   if(i38<0.0022560954093933105){
    if(i47<0.001649721059948206){
     s0+=34.0;
     s1+=17.0;
    } else {
     s0+=34.0;
     s1+=410.0;
    }
   } else {
    if(i9<0.9986828565597534){
     s0+=43.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i41<0.0007442073547281325){
   if(i3<0.00017070770263671875){
    if(i67<7.563439794466831e-06){
     s0+=352.0;
     s1+=24.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i20<0.0006091695977374911){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=26.0;
     s1+=643.0;
    }
   }
  } else {
   if(i44<-2.029616734944284e-05){
    if(i22<1.1178693771362305){
     s1+=92.0;
    } else {
     s0+=41.0;
     s1+=45.0;
    }
   } else {
    if(i5<-6.313235644483939e-05){
     s1+=27.0;
    } else {
     s0+=1474.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i13<1.0099660158157349){
  if(i71<0.0008449964225292206){
   if(i6<0.9963165521621704){
    if(i34<1.639693260192871){
     s0+=628.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i58<-0.016178742051124573){
     s0+=644.0;
     s1+=631.0;
    } else {
     s0+=205.0;
     s1+=1446.0;
    }
   }
  } else {
   if(i42<-9.110569953918457e-05){
    if(i20<0.008364232257008553){
     s0+=50.0;
     s1+=23.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i37<0.9933079481124878){
     s0+=8.0;
     s1+=1363.0;
    } else {
     s0+=62.0;
     s1+=524.0;
    }
   }
  }
 } else {
  if(i4<3.796815872192383e-05){
   if(i71<-7.217531674541533e-05){
    if(i44<3.1683553061157e-06){
     s0+=8.0;
     s1+=629.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i77<7.789026130922139e-05){
     s0+=223.0;
     s1+=215.0;
    } else {
     s0+=30.0;
     s1+=474.0;
    }
   }
  } else {
   if(i46<1.007596492767334){
    if(i19<0.9967327117919922){
     s0+=14.0;
    } else {
     s0+=29.0;
     s1+=732.0;
    }
   } else {
    if(i1<0.09123969078063965){
     s0+=1.0;
     s1+=63.0;
    } else {
     s0+=1.0;
     s1+=7666.0;
    }
   }
  }
 }
}
if(i11<1.0452215671539307){
 if(i9<1.0061814785003662){
  if(i0<0.08424308896064758){
   if(i65<0.0017442350508645177){
    if(i6<1.0025041103363037){
     s0+=60701.0;
     s1+=650.0;
    } else {
     s0+=11.0;
     s1+=68.0;
    }
   } else {
    if(i30<0.0009841469582170248){
     s0+=1075.0;
     s1+=535.0;
    } else {
     s0+=3058.0;
     s1+=302.0;
    }
   }
  } else {
   if(i33<0.9992741942405701){
    if(i52<1.0069162845611572){
     s0+=128.0;
     s1+=4.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i67<2.5510622435831465e-05){
     s0+=28.0;
     s1+=674.0;
    } else {
     s0+=45.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i20<0.0022344503086060286){
   if(i0<0.06293892860412598){
    if(i22<1.0583164691925049){
     s0+=39.0;
     s1+=20.0;
    } else {
     s0+=232.0;
    }
   } else {
    if(i3<0.0002097785472869873){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=41.0;
    }
   }
  } else {
   if(i69<-3.3635271847742843e-06){
    if(i7<0.0001964867115020752){
     s0+=1.0;
    } else {
     s1+=347.0;
    }
   } else {
    if(i1<0.06689655780792236){
     s0+=21.0;
    } else {
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i0<0.10037073493003845){
  if(i6<1.0022999048233032){
   if(i14<0.998786985874176){
    if(i5<-4.8050449549918994e-05){
     s0+=55.0;
     s1+=13.0;
    } else {
     s0+=1162.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.06576874852180481){
     s0+=2380.0;
     s1+=418.0;
    } else {
     s0+=980.0;
     s1+=649.0;
    }
   }
  } else {
   if(i31<1.1682090759277344){
    if(i5<-2.1999534510541707e-05){
     s0+=1.0;
     s1+=713.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i16<4.3451786041259766e-05){
     s0+=200.0;
     s1+=84.0;
    } else {
     s0+=36.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i32<0.023885676637291908){
   if(i14<0.9985533952713013){
    if(i30<0.006579754874110222){
     s0+=158.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i15<1.0011379718780518){
     s0+=470.0;
     s1+=727.0;
    } else {
     s0+=89.0;
     s1+=2078.0;
    }
   }
  } else {
   if(i61<0.2105817198753357){
    if(i42<-0.00029206275939941406){
     s0+=66.0;
     s1+=18.0;
    } else {
     s0+=109.0;
     s1+=9468.0;
    }
   } else {
    if(i36<0.005491210147738457){
     s0+=36.0;
    } else {
     s1+=70.0;
    }
   }
  }
 }
}
if(i2<0.07799920439720154){
 if(i9<1.0059202909469604){
  if(i54<-0.02877548336982727){
   if(i3<0.0002968311309814453){
    if(i26<0.018074486404657364){
     s0+=1420.0;
     s1+=149.0;
    } else {
     s0+=751.0;
     s1+=339.0;
    }
   } else {
    if(i70<0.00017874990589916706){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=30.0;
     s1+=296.0;
    }
   }
  } else {
   if(i49<0.02560092881321907){
    if(i13<1.007720708847046){
     s0+=56202.0;
     s1+=515.0;
    } else {
     s0+=127.0;
     s1+=75.0;
    }
   } else {
    if(i10<-0.0016731321811676025){
     s0+=6101.0;
     s1+=56.0;
    } else {
     s0+=3999.0;
     s1+=1002.0;
    }
   }
  }
 } else {
  if(i3<0.0009479522705078125){
   if(i34<1.158369541168213){
    if(i47<5.61980705242604e-05){
     s0+=2.0;
    } else {
     s1+=245.0;
    }
   } else {
    if(i31<1.1049132347106934){
     s1+=4.0;
    } else {
     s0+=660.0;
     s1+=17.0;
    }
   }
  } else {
   if(i19<0.9989523887634277){
    s0+=1.0;
   } else {
    s1+=543.0;
   }
  }
 }
} else {
 if(i33<0.9990366697311401){
  if(i15<0.9991536736488342){
   if(i5<-4.4379528844729066e-05){
    if(i13<1.0018272399902344){
     s0+=22.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   } else {
    s0+=414.0;
   }
  } else {
   if(i18<1.1578208208084106){
    s0+=5.0;
   } else {
    s1+=27.0;
   }
  }
 } else {
  if(i34<1.3240902423858643){
   if(i38<0.004454076290130615){
    if(i25<1.0080991983413696){
     s0+=229.0;
     s1+=1268.0;
    } else {
     s0+=56.0;
     s1+=2321.0;
    }
   } else {
    if(i0<0.12338182330131531){
     s0+=479.0;
     s1+=41.0;
    } else {
     s0+=326.0;
     s1+=824.0;
    }
   }
  } else {
   if(i5<-2.990540087921545e-05){
    if(i17<-0.00013199448585510254){
     s0+=154.0;
     s1+=978.0;
    } else {
     s0+=34.0;
     s1+=8336.0;
    }
   } else {
    if(i39<0.036741286516189575){
     s1+=38.0;
    } else {
     s0+=95.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i8<0.07130923867225647){
 if(i5<-5.6183620472438633e-05){
  if(i21<1.0026969909667969){
   if(i3<0.00048619508743286133){
    if(i63<0.014162983745336533){
     s0+=1440.0;
     s1+=35.0;
    } else {
     s0+=79.0;
     s1+=91.0;
    }
   } else {
    if(i10<-0.0012853145599365234){
     s0+=87.0;
     s1+=73.0;
    } else {
     s0+=27.0;
     s1+=316.0;
    }
   }
  } else {
   if(i0<0.05765557289123535){
    if(i31<1.1894208192825317){
     s0+=14.0;
     s1+=165.0;
    } else {
     s0+=66.0;
     s1+=12.0;
    }
   } else {
    if(i17<-0.00011745095252990723){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=1338.0;
    }
   }
  }
 } else {
  if(i75<0.042553454637527466){
   if(i2<0.07829615473747253){
    if(i57<-0.002153456211090088){
     s0+=101.0;
     s1+=129.0;
    } else {
     s0+=54917.0;
     s1+=559.0;
    }
   } else {
    if(i16<-1.1771917343139648e-05){
     s0+=37.0;
    } else {
     s0+=10.0;
     s1+=142.0;
    }
   }
  } else {
   if(i15<0.9942156076431274){
    if(i20<0.018173586577177048){
     s0+=6389.0;
     s1+=127.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i27<1.2335381507873535){
     s0+=3447.0;
     s1+=1560.0;
    } else {
     s0+=2366.0;
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i1<0.11657580733299255){
  if(i39<0.04048502445220947){
   if(i6<0.9965030550956726){
    if(i37<0.9976776838302612){
     s0+=4.0;
     s1+=24.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i73<1.0398812294006348){
     s0+=49.0;
     s1+=797.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   }
  } else {
   if(i40<0.0013517560437321663){
    if(i69<-2.539227352826856e-06){
     s0+=66.0;
     s1+=232.0;
    } else {
     s0+=298.0;
     s1+=66.0;
    }
   } else {
    if(i5<-8.495699148625135e-05){
     s0+=42.0;
     s1+=68.0;
    } else {
     s0+=905.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i44<2.6895381779468153e-06){
   if(i5<-1.4964483852963895e-05){
    if(i6<1.0035881996154785){
     s0+=188.0;
     s1+=2809.0;
    } else {
     s0+=18.0;
     s1+=8229.0;
    }
   } else {
    if(i41<0.0011166271287947893){
     s0+=190.0;
     s1+=24.0;
    } else {
     s0+=66.0;
     s1+=197.0;
    }
   }
  } else {
   if(i35<0.05647766590118408){
    s1+=5.0;
   } else {
    if(i55<1.0002903938293457){
     s0+=221.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i4<4.106760025024414e-05){
  if(i57<-0.0012880563735961914){
   if(i34<1.197464108467102){
    if(i53<0.9999618530273438){
     s0+=874.0;
     s1+=774.0;
    } else {
     s0+=880.0;
     s1+=67.0;
    }
   } else {
    if(i0<0.0803842842578888){
     s0+=3295.0;
     s1+=81.0;
    } else {
     s0+=5.0;
     s1+=80.0;
    }
   }
  } else {
   if(i24<1.0075129270553589){
    if(i2<0.08544737100601196){
     s0+=58988.0;
     s1+=538.0;
    } else {
     s0+=69.0;
     s1+=181.0;
    }
   } else {
    if(i40<0.0021134400740265846){
     s0+=285.0;
     s1+=288.0;
    } else {
     s0+=388.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i40<0.000426500104367733){
   s0+=203.0;
  } else {
   if(i20<0.001966447103768587){
    if(i47<0.0008840914815664291){
     s0+=56.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i4<0.000744253396987915){
     s0+=7.0;
     s1+=762.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i15<1.0018625259399414){
  if(i0<0.1082543432712555){
   if(i29<1.1037919521331787){
    if(i76<1.0009119510650635){
     s0+=1126.0;
     s1+=423.0;
    } else {
     s0+=11.0;
     s1+=223.0;
    }
   } else {
    if(i47<0.005345191806554794){
     s0+=3412.0;
     s1+=413.0;
    } else {
     s0+=1.0;
     s1+=86.0;
    }
   }
  } else {
   if(i76<0.9973679780960083){
    if(i44<-2.4430223675153684e-06){
     s0+=9.0;
     s1+=57.0;
    } else {
     s0+=193.0;
     s1+=4.0;
    }
   } else {
    if(i54<0.07388746738433838){
     s0+=75.0;
     s1+=1896.0;
    } else {
     s0+=454.0;
     s1+=1065.0;
    }
   }
  }
 } else {
  if(i0<0.06776130199432373){
   if(i47<0.0016173566691577435){
    if(i27<1.1386182308197021){
     s0+=32.0;
     s1+=111.0;
    } else {
     s0+=268.0;
     s1+=26.0;
    }
   } else {
    if(i17<-0.0004143714904785156){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=231.0;
    }
   }
  } else {
   if(i5<-4.278641426935792e-05){
    if(i6<1.0050551891326904){
     s0+=33.0;
     s1+=1840.0;
    } else {
     s0+=4.0;
     s1+=7972.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s0+=17.0;
     s1+=210.0;
    } else {
     s0+=134.0;
     s1+=63.0;
    }
   }
  }
 }
}
if(i24<1.0083980560302734){
 if(i4<3.975629806518555e-05){
  if(i2<0.0835149884223938){
   if(i57<-0.001302868127822876){
    if(i2<0.03850659728050232){
     s0+=4861.0;
     s1+=441.0;
    } else {
     s0+=989.0;
     s1+=580.0;
    }
   } else {
    if(i12<1.0428826808929443){
     s0+=56371.0;
     s1+=221.0;
    } else {
     s0+=4901.0;
     s1+=592.0;
    }
   }
  } else {
   if(i44<2.755621835603961e-06){
    if(i41<0.0004487443366087973){
     s0+=198.0;
     s1+=7.0;
    } else {
     s0+=438.0;
     s1+=1648.0;
    }
   } else {
    if(i27<1.2188851833343506){
     s0+=55.0;
     s1+=25.0;
    } else {
     s0+=168.0;
    }
   }
  }
 } else {
  if(i19<0.9985787868499756){
   if(i59<5.671988765243441e-05){
    if(i55<0.9995782375335693){
     s0+=247.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i15<1.0058448314666748){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i44<-1.2105535461159889e-05){
    if(i32<0.02045651525259018){
     s0+=165.0;
     s1+=727.0;
    } else {
     s0+=10.0;
     s1+=1809.0;
    }
   } else {
    if(i1<0.06367039680480957){
     s0+=24.0;
    } else {
     s0+=7.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i5<-4.1136994695989415e-05){
  if(i55<1.0016767978668213){
   if(i44<-2.5187925984937465e-06){
    if(i16<-1.2993812561035156e-05){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=94.0;
     s1+=9639.0;
    }
   } else {
    if(i13<1.014357566833496){
     s0+=43.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i20<0.006778053008019924){
    if(i2<0.1586463451385498){
     s0+=186.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i25<1.01531982421875){
     s0+=7.0;
     s1+=38.0;
    } else {
     s1+=476.0;
    }
   }
  }
 } else {
  if(i34<1.1016805171966553){
   if(i0<0.06243044137954712){
    if(i3<0.0001468360424041748){
     s0+=254.0;
     s1+=19.0;
    } else {
     s0+=9.0;
     s1+=40.0;
    }
   } else {
    if(i41<0.0005333267617970705){
     s0+=73.0;
     s1+=68.0;
    } else {
     s0+=21.0;
     s1+=359.0;
    }
   }
  } else {
   if(i66<-0.0006397995166480541){
    if(i23<0.004822079092264175){
     s0+=6.0;
     s1+=114.0;
    } else {
     s0+=155.0;
     s1+=47.0;
    }
   } else {
    if(i40<0.008008090779185295){
     s0+=1720.0;
     s1+=77.0;
    } else {
     s0+=145.0;
     s1+=105.0;
    }
   }
  }
 }
}
if(i0<0.08270382881164551){
 if(i5<-4.3895932321902364e-05){
  if(i10<-0.0007759332656860352){
   if(i19<1.0074293613433838){
    if(i54<-0.04917064309120178){
     s0+=98.0;
     s1+=123.0;
    } else {
     s0+=2067.0;
     s1+=91.0;
    }
   } else {
    if(i32<0.026610365137457848){
     s0+=75.0;
     s1+=20.0;
    } else {
     s0+=11.0;
     s1+=54.0;
    }
   }
  } else {
   if(i40<0.0003392327344045043){
    s0+=315.0;
   } else {
    if(i29<1.2280436754226685){
     s0+=29.0;
     s1+=885.0;
    } else {
     s0+=240.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i43<0.00031887926161289215){
   if(i37<1.0111782550811768){
    if(i11<1.0581047534942627){
     s0+=46988.0;
     s1+=54.0;
    } else {
     s0+=28.0;
     s1+=11.0;
    }
   } else {
    if(i74<9.746935347720864e-07){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i34<1.103413462638855){
    if(i7<8.633732795715332e-05){
     s0+=4407.0;
     s1+=830.0;
    } else {
     s0+=273.0;
     s1+=596.0;
    }
   } else {
    if(i7<0.000873565673828125){
     s0+=14810.0;
     s1+=256.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i19<1.0030019283294678){
  if(i6<0.9965448379516602){
   if(i59<0.0001781993341865018){
    if(i53<0.9996007084846497){
     s0+=389.0;
    } else {
     s0+=79.0;
     s1+=39.0;
    }
   } else {
    if(i0<0.09415295720100403){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=91.0;
    }
   }
  } else {
   if(i30<0.006360701285302639){
    if(i68<-0.005527429282665253){
     s0+=745.0;
     s1+=363.0;
    } else {
     s0+=278.0;
     s1+=2035.0;
    }
   } else {
    if(i2<0.162160724401474){
     s0+=61.0;
     s1+=202.0;
    } else {
     s1+=1823.0;
    }
   }
  }
 } else {
  if(i36<0.007024570368230343){
   if(i3<0.0005222558975219727){
    if(i35<0.056688904762268066){
     s0+=1.0;
     s1+=130.0;
    } else {
     s0+=87.0;
     s1+=112.0;
    }
   } else {
    if(i17<-0.00012540817260742188){
     s0+=13.0;
     s1+=72.0;
    } else {
     s0+=11.0;
     s1+=1856.0;
    }
   }
  } else {
   if(i0<0.10691586136817932){
    if(i45<0.012611746788024902){
     s1+=123.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.9936313629150391){
     s0+=7.0;
     s1+=891.0;
    } else {
     s1+=6284.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i6<1.0024787187576294){
  if(i12<1.042891263961792){
   if(i23<0.00028115720488131046){
    if(i66<0.0008453953778371215){
     s0+=50122.0;
     s1+=79.0;
    } else {
     s0+=273.0;
     s1+=73.0;
    }
   } else {
    if(i38<0.0013428926467895508){
     s0+=4451.0;
     s1+=515.0;
    } else {
     s0+=5676.0;
     s1+=27.0;
    }
   }
  } else {
   if(i0<0.06581434607505798){
    if(i73<0.9962350130081177){
     s0+=2578.0;
     s1+=638.0;
    } else {
     s0+=4960.0;
     s1+=259.0;
    }
   } else {
    if(i45<0.010171264410018921){
     s0+=381.0;
     s1+=519.0;
    } else {
     s0+=500.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i44<-1.4155457392917015e-05){
   if(i64<0.0013912320137023926){
    if(i56<0.004303991794586182){
     s0+=30.0;
     s1+=861.0;
    } else {
     s0+=40.0;
     s1+=10.0;
    }
   } else {
    if(i36<0.0023455778136849403){
     s1+=5.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   }
  } else {
   if(i72<0.9963012933731079){
    if(i7<0.0005501508712768555){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i1<0.06984648108482361){
     s0+=145.0;
    } else {
     s0+=13.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i10<0.00034546852111816406){
  if(i4<-4.89354133605957e-05){
   if(i16<-1.7315149307250977e-05){
    if(i16<-2.0682811737060547e-05){
     s0+=568.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.1220240592956543){
     s0+=106.0;
     s1+=29.0;
    } else {
     s0+=14.0;
     s1+=113.0;
    }
   }
  } else {
   if(i32<0.023620575666427612){
    if(i54<0.06150466203689575){
     s0+=355.0;
     s1+=1122.0;
    } else {
     s0+=709.0;
     s1+=238.0;
    }
   } else {
    if(i29<1.337784767150879){
     s0+=159.0;
     s1+=1187.0;
    } else {
     s0+=4.0;
     s1+=1137.0;
    }
   }
  }
 } else {
  if(i5<-2.2282918507698923e-05){
   if(i40<0.00027299163048155606){
    s0+=3.0;
   } else {
    if(i9<1.008004903793335){
     s0+=74.0;
     s1+=1267.0;
    } else {
     s0+=4.0;
     s1+=8804.0;
    }
   }
  } else {
   if(i30<0.005394923500716686){
    if(i20<0.0058893621899187565){
     s0+=83.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i51<-0.0010600832756608725){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
}
if(i5<-8.144946332322434e-05){
 if(i6<1.0000183582305908){
  if(i18<1.0652393102645874){
   if(i63<0.01940857619047165){
    if(i37<1.0180790424346924){
     s0+=606.0;
     s1+=32.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i9<0.9610418081283569){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=41.0;
    }
   }
  } else {
   if(i10<-0.004452913999557495){
    if(i31<1.293237328529358){
     s0+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=185.0;
   }
  }
 } else {
  if(i0<0.0659954845905304){
   if(i32<0.016502201557159424){
    if(i49<0.0673115998506546){
     s0+=8.0;
     s1+=83.0;
    } else {
     s0+=92.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.0674569308757782){
     s0+=16.0;
     s1+=192.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i32<0.01672232337296009){
    if(i59<0.00011943770368816331){
     s0+=12.0;
     s1+=1202.0;
    } else {
     s0+=61.0;
     s1+=12.0;
    }
   } else {
    if(i15<0.998092770576477){
     s0+=7.0;
     s1+=658.0;
    } else {
     s0+=1.0;
     s1+=8528.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005550384521484375){
  if(i1<0.08225265145301819){
   if(i63<0.007429388351738453){
    if(i0<0.06941583752632141){
     s0+=63306.0;
     s1+=841.0;
    } else {
     s0+=1369.0;
     s1+=340.0;
    }
   } else {
    if(i33<0.9992135167121887){
     s0+=1009.0;
     s1+=14.0;
    } else {
     s0+=2238.0;
     s1+=711.0;
    }
   }
  } else {
   if(i7<-0.0003972351551055908){
    if(i36<0.00890285149216652){
     s0+=593.0;
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=16.0;
    }
   } else {
    if(i35<0.05370795726776123){
     s0+=76.0;
     s1+=1600.0;
    } else {
     s0+=1216.0;
     s1+=1183.0;
    }
   }
  }
 } else {
  if(i22<1.0413609743118286){
   if(i44<-1.633342617424205e-05){
    s1+=3.0;
   } else {
    s0+=145.0;
   }
  } else {
   if(i34<1.2261788845062256){
    if(i46<0.9791805744171143){
     s0+=4.0;
    } else {
     s1+=1131.0;
    }
   } else {
    if(i20<0.0041213007643818855){
     s0+=217.0;
     s1+=25.0;
    } else {
     s0+=60.0;
     s1+=334.0;
    }
   }
  }
 }
}
if(i72<1.0144171714782715){
 if(i19<1.0029058456420898){
  if(i13<1.0083014965057373){
   if(i2<0.07722905278205872){
    if(i22<1.0451585054397583){
     s0+=53768.0;
     s1+=212.0;
    } else {
     s0+=12249.0;
     s1+=1484.0;
    }
   } else {
    if(i5<-4.367496330814902e-06){
     s0+=195.0;
     s1+=1015.0;
    } else {
     s0+=335.0;
     s1+=74.0;
    }
   }
  } else {
   if(i40<0.0022208900190889835){
    if(i1<0.05506506562232971){
     s0+=34.0;
     s1+=57.0;
    } else {
     s0+=9.0;
     s1+=429.0;
    }
   } else {
    if(i2<0.08130839467048645){
     s0+=388.0;
     s1+=35.0;
    } else {
     s0+=19.0;
     s1+=336.0;
    }
   }
  }
 } else {
  if(i1<0.06433656811714172){
   if(i17<-0.0002307295799255371){
    if(i5<-0.00018380519759375602){
     s1+=8.0;
    } else {
     s0+=715.0;
     s1+=39.0;
    }
   } else {
    if(i3<0.00045305490493774414){
     s0+=124.0;
     s1+=23.0;
    } else {
     s0+=80.0;
     s1+=386.0;
    }
   }
  } else {
   if(i22<1.0521224737167358){
    if(i41<0.0032568536698818207){
     s0+=4.0;
     s1+=18.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i45<0.016429603099822998){
     s0+=37.0;
     s1+=2922.0;
    } else {
     s0+=43.0;
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i0<0.09896299242973328){
  if(i40<0.0015003684675320983){
   if(i5<-1.6688849427737296e-05){
    if(i0<0.06133425235748291){
     s0+=23.0;
     s1+=10.0;
    } else {
     s0+=24.0;
     s1+=405.0;
    }
   } else {
    if(i47<0.002113738562911749){
     s0+=423.0;
     s1+=11.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i45<0.009778141975402832){
    if(i76<1.0037710666656494){
     s0+=302.0;
     s1+=16.0;
    } else {
     s0+=14.0;
     s1+=30.0;
    }
   } else {
    if(i4<0.0001640915870666504){
     s0+=1251.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i44<6.072103815313312e-07){
   if(i5<-2.1798226953251287e-05){
    if(i0<0.13212499022483826){
     s0+=190.0;
     s1+=778.0;
    } else {
     s0+=86.0;
     s1+=8832.0;
    }
   } else {
    if(i35<0.07125210762023926){
     s0+=8.0;
     s1+=68.0;
    } else {
     s0+=335.0;
     s1+=98.0;
    }
   }
  } else {
   if(i53<1.0000810623168945){
    if(i50<0.07982593774795532){
     s1+=11.0;
    } else {
     s0+=202.0;
     s1+=1.0;
    }
   } else {
    s1+=21.0;
   }
  }
 }
}
if(i2<0.0755770206451416){
 if(i49<0.025634728372097015){
  if(i13<1.0081498622894287){
   if(i16<1.8775463104248047e-05){
    if(i52<0.9709592461585999){
     s0+=229.0;
     s1+=109.0;
    } else {
     s0+=55973.0;
     s1+=412.0;
    }
   } else {
    if(i6<1.002389669418335){
     s0+=551.0;
     s1+=39.0;
    } else {
     s0+=24.0;
     s1+=112.0;
    }
   }
  } else {
   if(i5<-4.0107566746883094e-05){
    if(i40<0.004603016190230846){
     s0+=5.0;
     s1+=325.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i31<1.083398699760437){
     s0+=4.0;
     s1+=44.0;
    } else {
     s0+=125.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i4<3.415346145629883e-05){
   if(i40<0.0016390259843319654){
    if(i42<-3.5643577575683594e-05){
     s0+=1987.0;
     s1+=78.0;
    } else {
     s0+=1125.0;
     s1+=901.0;
    }
   } else {
    if(i70<0.0022468389943242073){
     s0+=8714.0;
     s1+=262.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  } else {
   if(i56<0.0016874074935913086){
    if(i38<0.001665651798248291){
     s0+=91.0;
     s1+=672.0;
    } else {
     s0+=37.0;
     s1+=3.0;
    }
   } else {
    if(i31<1.1590092182159424){
     s0+=31.0;
     s1+=60.0;
    } else {
     s0+=107.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i20<0.004691104404628277){
  if(i53<0.9995709657669067){
   if(i69<-2.338425019843271e-06){
    if(i40<0.0012758575612679124){
     s0+=18.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   } else {
    s0+=424.0;
   }
  } else {
   if(i4<5.2034854888916016e-05){
    if(i27<1.255998969078064){
     s0+=509.0;
     s1+=1517.0;
    } else {
     s0+=741.0;
     s1+=228.0;
    }
   } else {
    if(i55<1.0017063617706299){
     s0+=9.0;
     s1+=735.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i5<4.4096850615460426e-08){
   if(i2<0.11054471135139465){
    if(i39<0.050456345081329346){
     s0+=34.0;
     s1+=987.0;
    } else {
     s0+=187.0;
     s1+=108.0;
    }
   } else {
    if(i44<1.1987051493633771e-06){
     s0+=46.0;
     s1+=10488.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i15<0.9953869581222534){
    s0+=87.0;
   } else {
    s1+=18.0;
   }
  }
 }
}
if(i22<1.0607576370239258){
 if(i8<0.07133829593658447){
  if(i46<1.008540391921997){
   if(i1<0.07695251703262329){
    if(i22<1.042891263961792){
     s0+=51318.0;
     s1+=151.0;
    } else {
     s0+=6893.0;
     s1+=503.0;
    }
   } else {
    if(i6<0.997952938079834){
     s0+=460.0;
     s1+=9.0;
    } else {
     s0+=132.0;
     s1+=146.0;
    }
   }
  } else {
   if(i67<-4.4148241613584105e-06){
    s0+=3.0;
   } else {
    s1+=111.0;
   }
  }
 } else {
  if(i22<1.0494745969772339){
   if(i49<0.030318569391965866){
    if(i21<1.0058728456497192){
     s0+=251.0;
     s1+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i60<0.05734648555517197){
     s0+=26.0;
     s1+=25.0;
    } else {
     s0+=42.0;
    }
   }
  } else {
   if(i17<-0.0001461803913116455){
    if(i18<1.0315464735031128){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=63.0;
     s1+=1.0;
    }
   } else {
    if(i24<1.0042177438735962){
     s0+=29.0;
     s1+=49.0;
    } else {
     s0+=2.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i8<0.06269916892051697){
  if(i9<1.0064716339111328){
   if(i27<1.1013743877410889){
    if(i30<0.0006074454286135733){
     s0+=836.0;
     s1+=112.0;
    } else {
     s0+=336.0;
     s1+=695.0;
    }
   } else {
    if(i0<0.07511177659034729){
     s0+=8216.0;
     s1+=579.0;
    } else {
     s0+=17.0;
     s1+=299.0;
    }
   }
  } else {
   if(i14<1.001845359802246){
    if(i31<1.145219087600708){
     s1+=287.0;
    } else {
     s0+=445.0;
     s1+=13.0;
    }
   } else {
    if(i23<0.00015820114640519023){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=979.0;
    }
   }
  }
 } else {
  if(i33<0.9987826943397522){
   if(i44<-8.557324690627865e-06){
    s1+=10.0;
   } else {
    s0+=359.0;
   }
  } else {
   if(i34<1.3312374353408813){
    if(i47<0.0007186171133071184){
     s0+=768.0;
     s1+=606.0;
    } else {
     s0+=544.0;
     s1+=3215.0;
    }
   } else {
    if(i1<0.10223108530044556){
     s0+=236.0;
     s1+=273.0;
    } else {
     s0+=94.0;
     s1+=8926.0;
    }
   }
  }
 }
}
if(i20<0.005054741632193327){
 if(i5<-4.354407064965926e-05){
  if(i0<0.05899953842163086){
   if(i15<1.0034183263778687){
    if(i65<0.0015532441902905703){
     s0+=432.0;
     s1+=13.0;
    } else {
     s0+=96.0;
     s1+=44.0;
    }
   } else {
    if(i4<3.618001937866211e-05){
     s0+=125.0;
     s1+=31.0;
    } else {
     s0+=4.0;
     s1+=106.0;
    }
   }
  } else {
   if(i19<0.996164083480835){
    if(i21<1.0368952751159668){
     s0+=92.0;
     s1+=17.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i13<1.0065890550613403){
     s0+=126.0;
     s1+=332.0;
    } else {
     s0+=28.0;
     s1+=1428.0;
    }
   }
  }
 } else {
  if(i2<0.08319926261901855){
   if(i75<0.04565153270959854){
    if(i73<0.9695730209350586){
     s0+=78.0;
     s1+=47.0;
    } else {
     s0+=54604.0;
     s1+=417.0;
    }
   } else {
    if(i30<0.0011120425770059228){
     s0+=3424.0;
     s1+=840.0;
    } else {
     s0+=5667.0;
     s1+=174.0;
    }
   }
  } else {
   if(i27<1.255998969078064){
    if(i5<-9.200975000567269e-06){
     s0+=104.0;
     s1+=933.0;
    } else {
     s0+=381.0;
     s1+=158.0;
    }
   } else {
    if(i39<0.03374651074409485){
     s0+=9.0;
     s1+=61.0;
    } else {
     s0+=675.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i21<1.0029411315917969){
  if(i15<0.9972615242004395){
   if(i11<1.082028865814209){
    if(i12<1.044576644897461){
     s0+=3702.0;
     s1+=84.0;
    } else {
     s0+=701.0;
     s1+=241.0;
    }
   } else {
    if(i44<3.7206593788141618e-06){
     s0+=6.0;
     s1+=650.0;
    } else {
     s0+=27.0;
    }
   }
  } else {
   if(i74<7.100195944076404e-06){
    if(i10<-0.001292109489440918){
     s0+=224.0;
     s1+=353.0;
    } else {
     s0+=80.0;
     s1+=1628.0;
    }
   } else {
    if(i79<-0.0026492075994610786){
     s1+=3.0;
    } else {
     s0+=284.0;
    }
   }
  }
 } else {
  if(i3<-0.0004905760288238525){
   if(i42<0.00011530518531799316){
    s0+=68.0;
   } else {
    s1+=53.0;
   }
  } else {
   if(i31<1.2295559644699097){
    if(i70<9.112317638937384e-05){
     s0+=6.0;
     s1+=24.0;
    } else {
     s0+=8.0;
     s1+=2889.0;
    }
   } else {
    if(i3<-0.0003586411476135254){
     s0+=1.0;
     s1+=10.0;
    } else {
     s1+=6704.0;
    }
   }
  }
 }
}
if(i12<1.0576403141021729){
 if(i0<0.0790853202342987){
  if(i45<-0.005852639675140381){
   if(i3<0.0005164146423339844){
    if(i41<0.0013406708603724837){
     s0+=1018.0;
     s1+=409.0;
    } else {
     s0+=1309.0;
     s1+=29.0;
    }
   } else {
    if(i23<0.003864406840875745){
     s0+=4.0;
     s1+=107.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i9<1.0044469833374023){
    if(i23<0.0002731101412791759){
     s0+=50996.0;
     s1+=149.0;
    } else {
     s0+=10498.0;
     s1+=625.0;
    }
   } else {
    if(i5<-4.109957808395848e-05){
     s0+=42.0;
     s1+=158.0;
    } else {
     s0+=348.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i34<1.0724589824676514){
   s0+=188.0;
  } else {
   if(i74<5.517135377886007e-06){
    if(i50<0.06294217705726624){
     s0+=21.0;
     s1+=780.0;
    } else {
     s0+=95.0;
     s1+=296.0;
    }
   } else {
    if(i72<0.9884554147720337){
     s1+=8.0;
    } else {
     s0+=108.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i6<1.0020825862884521){
  if(i5<-4.177656228421256e-05){
   if(i8<0.0965343713760376){
    if(i0<0.0816817581653595){
     s0+=629.0;
     s1+=264.0;
    } else {
     s0+=102.0;
     s1+=411.0;
    }
   } else {
    if(i14<1.001273274421692){
     s1+=934.0;
    } else {
     s0+=56.0;
     s1+=326.0;
    }
   }
  } else {
   if(i40<0.00166222732514143){
    if(i27<1.0877101421356201){
     s0+=627.0;
     s1+=47.0;
    } else {
     s0+=674.0;
     s1+=723.0;
    }
   } else {
    if(i71<0.0005669761449098587){
     s0+=3128.0;
     s1+=376.0;
    } else {
     s0+=828.0;
     s1+=502.0;
    }
   }
  }
 } else {
  if(i0<0.06999784708023071){
   if(i14<1.0017776489257812){
    if(i22<1.0731133222579956){
     s1+=30.0;
    } else {
     s0+=117.0;
     s1+=9.0;
    }
   } else {
    if(i15<1.0036232471466064){
     s0+=90.0;
     s1+=104.0;
    } else {
     s0+=7.0;
     s1+=303.0;
    }
   }
  } else {
   if(i78<0.0002868771553039551){
    if(i2<0.13566938042640686){
     s0+=85.0;
     s1+=614.0;
    } else {
     s0+=3.0;
     s1+=1942.0;
    }
   } else {
    if(i10<3.1113624572753906e-05){
     s0+=21.0;
     s1+=209.0;
    } else {
     s0+=12.0;
     s1+=7839.0;
    }
   }
  }
 }
}
if(i2<0.07742762565612793){
 if(i10<0.0011519193649291992){
  if(i7<0.00043642520904541016){
   if(i56<-0.0022295713424682617){
    if(i10<-0.0019822120666503906){
     s0+=2566.0;
     s1+=41.0;
    } else {
     s0+=2861.0;
     s1+=829.0;
    }
   } else {
    if(i63<0.010320237837731838){
     s0+=61664.0;
     s1+=826.0;
    } else {
     s0+=653.0;
     s1+=162.0;
    }
   }
  } else {
   if(i54<-0.027011513710021973){
    if(i2<0.03278419375419617){
     s0+=116.0;
     s1+=122.0;
    } else {
     s0+=14.0;
     s1+=257.0;
    }
   } else {
    if(i3<0.0005668103694915771){
     s0+=1120.0;
     s1+=99.0;
    } else {
     s0+=198.0;
     s1+=241.0;
    }
   }
  }
 } else {
  if(i27<1.2392117977142334){
   s1+=565.0;
  } else {
   if(i27<1.3812854290008545){
    if(i65<0.012132709845900536){
     s0+=119.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=45.0;
   }
  }
 }
} else {
 if(i33<0.9987839460372925){
  if(i26<0.2528410255908966){
   if(i46<0.9515913724899292){
    if(i6<0.99342942237854){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i42<-0.000258028507232666){
     s0+=475.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i20<0.001723350491374731){
   if(i45<0.014938056468963623){
    if(i3<0.00026530027389526367){
     s0+=210.0;
     s1+=162.0;
    } else {
     s0+=6.0;
     s1+=164.0;
    }
   } else {
    if(i10<0.0019798874855041504){
     s0+=438.0;
     s1+=29.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i10<-0.0006123781204223633){
    if(i66<0.0015597774181514978){
     s0+=538.0;
     s1+=879.0;
    } else {
     s0+=39.0;
     s1+=1069.0;
    }
   } else {
    if(i47<0.0010809542145580053){
     s0+=138.0;
     s1+=1675.0;
    } else {
     s0+=61.0;
     s1+=9828.0;
    }
   }
  }
 }
}
if(i1<0.08417728543281555){
 if(i14<1.0018949508666992){
  if(i54<-0.028919517993927002){
   if(i0<0.036212384700775146){
    if(i2<0.004102945327758789){
     s0+=1188.0;
     s1+=49.0;
    } else {
     s0+=828.0;
     s1+=222.0;
    }
   } else {
    if(i56<0.006900906562805176){
     s0+=126.0;
     s1+=345.0;
    } else {
     s0+=120.0;
     s1+=2.0;
    }
   }
  } else {
   if(i24<1.0072978734970093){
    if(i23<0.00029164640000090003){
     s0+=51988.0;
     s1+=183.0;
    } else {
     s0+=11976.0;
     s1+=950.0;
    }
   } else {
    if(i3<0.00021409988403320312){
     s0+=1540.0;
     s1+=134.0;
    } else {
     s0+=469.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i6<1.0024199485778809){
   if(i47<0.005772506818175316){
    if(i17<-0.0003337562084197998){
     s0+=418.0;
     s1+=5.0;
    } else {
     s0+=154.0;
     s1+=87.0;
    }
   } else {
    s1+=29.0;
   }
  } else {
   if(i10<0.0001169443130493164){
    if(i32<0.019984878599643707){
     s0+=111.0;
     s1+=122.0;
    } else {
     s0+=1.0;
     s1+=124.0;
    }
   } else {
    if(i5<-3.840725912596099e-05){
     s0+=2.0;
     s1+=489.0;
    } else {
     s0+=17.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i30<0.006181949283927679){
  if(i6<0.9964578151702881){
   if(i77<4.462053402676247e-05){
    if(i31<1.1622816324234009){
     s1+=8.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i5<-1.8475395336281508e-05){
     s0+=30.0;
     s1+=4.0;
    } else {
     s0+=597.0;
     s1+=5.0;
    }
   }
  } else {
   if(i64<0.004182875156402588){
    if(i35<0.058565884828567505){
     s0+=70.0;
     s1+=3073.0;
    } else {
     s0+=294.0;
     s1+=725.0;
    }
   } else {
    if(i9<1.0068917274475098){
     s0+=816.0;
     s1+=473.0;
    } else {
     s0+=38.0;
     s1+=226.0;
    }
   }
  }
 } else {
  if(i22<1.0771137475967407){
   if(i8<0.1021948754787445){
    s0+=96.0;
   } else {
    if(i45<0.029061853885650635){
     s1+=21.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i32<0.024413619190454483){
    if(i17<6.854534149169922e-06){
     s0+=85.0;
     s1+=271.0;
    } else {
     s0+=1.0;
     s1+=783.0;
    }
   } else {
    if(i36<0.006553209386765957){
     s0+=23.0;
     s1+=341.0;
    } else {
     s0+=8.0;
     s1+=8243.0;
    }
   }
  }
 }
}
if(i25<1.0082732439041138){
 if(i18<1.0398919582366943){
  if(i54<-0.03282853960990906){
   if(i4<1.0788440704345703e-05){
    if(i2<0.0383317768573761){
     s0+=1371.0;
     s1+=212.0;
    } else {
     s0+=26.0;
     s1+=162.0;
    }
   } else {
    if(i43<0.0002566679031588137){
     s0+=10.0;
    } else {
     s0+=39.0;
     s1+=829.0;
    }
   }
  } else {
   if(i6<1.0024592876434326){
    if(i12<1.0450963973999023){
     s0+=60833.0;
     s1+=863.0;
    } else {
     s0+=3384.0;
     s1+=955.0;
    }
   } else {
    if(i20<0.002380664460361004){
     s0+=50.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=622.0;
    }
   }
  }
 } else {
  if(i1<0.11910766363143921){
   if(i17<6.774067878723145e-05){
    if(i37<0.990490198135376){
     s0+=320.0;
     s1+=215.0;
    } else {
     s0+=2116.0;
     s1+=257.0;
    }
   } else {
    if(i7<0.00035375356674194336){
     s0+=52.0;
     s1+=20.0;
    } else {
     s1+=124.0;
    }
   }
  } else {
   if(i36<0.0035360432229936123){
    if(i18<1.09038245677948){
     s0+=42.0;
     s1+=189.0;
    } else {
     s0+=146.0;
     s1+=13.0;
    }
   } else {
    if(i0<0.1257246732711792){
     s0+=19.0;
     s1+=29.0;
    } else {
     s0+=22.0;
     s1+=1475.0;
    }
   }
  }
 }
} else {
 if(i30<0.006543957628309727){
  if(i5<-3.195790486643091e-05){
   if(i31<1.2271616458892822){
    if(i17<7.152557373046875e-07){
     s0+=227.0;
     s1+=338.0;
    } else {
     s0+=124.0;
     s1+=2960.0;
    }
   } else {
    if(i1<0.14526954293251038){
     s0+=228.0;
     s1+=2.0;
    } else {
     s1+=139.0;
    }
   }
  } else {
   if(i1<0.08365753293037415){
    if(i31<1.074927568435669){
     s0+=11.0;
     s1+=21.0;
    } else {
     s0+=1199.0;
     s1+=32.0;
    }
   } else {
    if(i58<-0.011439884081482887){
     s0+=483.0;
     s1+=114.0;
    } else {
     s0+=98.0;
     s1+=222.0;
    }
   }
  }
 } else {
  if(i55<1.0052437782287598){
   if(i55<1.0014872550964355){
    if(i31<1.2527469396591187){
     s0+=20.0;
     s1+=751.0;
    } else {
     s1+=6458.0;
    }
   } else {
    if(i27<1.4062087535858154){
     s0+=11.0;
    } else {
     s0+=15.0;
     s1+=312.0;
    }
   }
  } else {
   if(i18<1.0980079174041748){
    s0+=33.0;
   } else {
    s1+=47.0;
   }
  }
 }
}
if(i73<1.0131547451019287){
 if(i11<1.0452277660369873){
  if(i4<4.297494888305664e-05){
   if(i65<0.0017702262848615646){
    if(i75<0.04734060913324356){
     s0+=54732.0;
     s1+=507.0;
    } else {
     s0+=5434.0;
     s1+=581.0;
    }
   } else {
    if(i0<0.05877283215522766){
     s0+=4141.0;
     s1+=540.0;
    } else {
     s0+=187.0;
     s1+=312.0;
    }
   }
  } else {
   if(i16<0.0001138150691986084){
    if(i28<0.00016810177476145327){
     s0+=77.0;
     s1+=26.0;
    } else {
     s0+=53.0;
     s1+=672.0;
    }
   } else {
    s0+=151.0;
   }
  }
 } else {
  if(i1<0.07061195373535156){
   if(i67<-3.1503541322308592e-06){
    if(i54<-0.0075480639934539795){
     s0+=8.0;
     s1+=162.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   } else {
    if(i4<1.233816146850586e-05){
     s0+=2565.0;
     s1+=304.0;
    } else {
     s0+=301.0;
     s1+=338.0;
    }
   }
  } else {
   if(i41<0.0005448096781037748){
    if(i16<2.9802322387695312e-06){
     s0+=152.0;
     s1+=16.0;
    } else {
     s0+=19.0;
     s1+=48.0;
    }
   } else {
    if(i33<0.9992955923080444){
     s0+=106.0;
     s1+=12.0;
    } else {
     s0+=188.0;
     s1+=3418.0;
    }
   }
  }
 }
} else {
 if(i32<0.025261729955673218){
  if(i46<1.006011962890625){
   if(i2<0.09778857231140137){
    if(i68<-0.004456997849047184){
     s0+=943.0;
     s1+=6.0;
    } else {
     s0+=449.0;
     s1+=152.0;
    }
   } else {
    if(i58<-0.02306990697979927){
     s0+=423.0;
     s1+=115.0;
    } else {
     s0+=58.0;
     s1+=288.0;
    }
   }
  } else {
   if(i3<0.00047960877418518066){
    if(i43<0.000839542131870985){
     s0+=51.0;
     s1+=345.0;
    } else {
     s0+=535.0;
     s1+=177.0;
    }
   } else {
    if(i2<0.05478349328041077){
     s0+=30.0;
     s1+=7.0;
    } else {
     s0+=49.0;
     s1+=1764.0;
    }
   }
  }
 } else {
  if(i7<-0.000254213809967041){
   if(i47<0.0025441646575927734){
    if(i77<7.711604121141136e-05){
     s0+=110.0;
    } else {
     s0+=22.0;
     s1+=7.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i20<0.003278555814176798){
    if(i4<3.802776336669922e-05){
     s0+=80.0;
     s1+=3.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i17<-0.00046184659004211426){
     s0+=102.0;
     s1+=60.0;
    } else {
     s0+=12.0;
     s1+=7330.0;
    }
   }
  }
 }
}
if(i3<0.0005483627319335938){
 if(i23<0.00031641291570849717){
  if(i8<0.07290294766426086){
   if(i56<-0.004569888114929199){
    if(i79<0.0010525319958105683){
     s1+=29.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i52<1.0115805864334106){
     s0+=53914.0;
     s1+=286.0;
    } else {
     s0+=55.0;
     s1+=76.0;
    }
   }
  } else {
   if(i2<0.09566497802734375){
    if(i7<0.00012922286987304688){
     s0+=152.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i48<3.75211238861084e-05){
     s0+=1.0;
    } else {
     s1+=29.0;
    }
   }
  }
 } else {
  if(i11<1.0401077270507812){
   if(i3<-0.000287860631942749){
    if(i77<0.0001453613513149321){
     s0+=4306.0;
     s1+=398.0;
    } else {
     s0+=4116.0;
     s1+=41.0;
    }
   } else {
    if(i1<0.06333848834037781){
     s0+=1834.0;
     s1+=391.0;
    } else {
     s0+=171.0;
     s1+=379.0;
    }
   }
  } else {
   if(i40<0.010459553450345993){
    if(i5<-2.2753443772671744e-05){
     s0+=1468.0;
     s1+=2199.0;
    } else {
     s0+=4507.0;
     s1+=813.0;
    }
   } else {
    if(i1<0.085751473903656){
     s0+=144.0;
     s1+=42.0;
    } else {
     s0+=11.0;
     s1+=753.0;
    }
   }
  }
 }
} else {
 if(i4<6.133317947387695e-05){
  if(i20<0.00235124584287405){
   if(i5<-6.555067375302315e-05){
    if(i74<-3.6110609471506905e-06){
     s0+=2.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i71<0.0006463441532105207){
     s0+=279.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i43<0.00024667487014085054){
    s0+=32.0;
   } else {
    if(i10<-0.0006322264671325684){
     s0+=113.0;
     s1+=300.0;
    } else {
     s0+=20.0;
     s1+=1153.0;
    }
   }
  }
 } else {
  if(i13<1.0045467615127563){
   if(i31<1.3301633596420288){
    if(i15<1.0060763359069824){
     s0+=93.0;
     s1+=418.0;
    } else {
     s1+=310.0;
    }
   } else {
    s1+=779.0;
   }
  } else {
   if(i30<0.009547540917992592){
    if(i44<-1.3894237781642005e-05){
     s0+=26.0;
     s1+=2909.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   } else {
    s1+=5629.0;
   }
  }
 }
}
if(i7<0.00043338537216186523){
 if(i37<1.0107624530792236){
  if(i49<0.030405839905142784){
   if(i26<0.023874185979366302){
    if(i2<0.07809177041053772){
     s0+=57593.0;
     s1+=514.0;
    } else {
     s0+=359.0;
     s1+=159.0;
    }
   } else {
    if(i12<1.0434019565582275){
     s0+=671.0;
     s1+=56.0;
    } else {
     s0+=125.0;
     s1+=216.0;
    }
   }
  } else {
   if(i8<0.0658295750617981){
    if(i46<0.9744554758071899){
     s0+=4575.0;
     s1+=40.0;
    } else {
     s0+=3761.0;
     s1+=1075.0;
    }
   } else {
    if(i39<0.042528241872787476){
     s0+=59.0;
     s1+=769.0;
    } else {
     s0+=587.0;
     s1+=427.0;
    }
   }
  }
 } else {
  if(i36<0.006401762366294861){
   if(i59<-2.9923121473984793e-05){
    s1+=261.0;
   } else {
    if(i34<1.175590991973877){
     s0+=344.0;
     s1+=758.0;
    } else {
     s0+=1324.0;
     s1+=707.0;
    }
   }
  } else {
   if(i6<0.9952499866485596){
    if(i26<0.024158861488103867){
     s0+=33.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i2<0.1692894697189331){
     s0+=12.0;
     s1+=4.0;
    } else {
     s1+=885.0;
    }
   }
  }
 }
} else {
 if(i17<6.651878356933594e-05){
  if(i12<1.1257290840148926){
   if(i2<0.11352598667144775){
    if(i65<0.0020115934312343597){
     s0+=1323.0;
     s1+=219.0;
    } else {
     s0+=291.0;
     s1+=330.0;
    }
   } else {
    if(i45<0.030779868364334106){
     s0+=20.0;
     s1+=430.0;
    } else {
     s0+=35.0;
     s1+=13.0;
    }
   }
  } else {
   if(i34<1.223900556564331){
    if(i66<0.0037927008233964443){
     s0+=23.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i47<0.00035018351627513766){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=1371.0;
    }
   }
  }
 } else {
  if(i23<0.00020616728579625487){
   if(i77<7.984299736563116e-05){
    s1+=16.0;
   } else {
    if(i69<-8.68356346472865e-06){
     s1+=3.0;
    } else {
     s0+=91.0;
    }
   }
  } else {
   if(i22<1.040667176246643){
    s0+=10.0;
   } else {
    if(i32<0.001958871027454734){
     s0+=17.0;
     s1+=43.0;
    } else {
     s0+=28.0;
     s1+=8641.0;
    }
   }
  }
 }
}
if(i16<2.008676528930664e-05){
 if(i24<1.0081638097763062){
  if(i1<0.08717000484466553){
   if(i12<1.0401114225387573){
    if(i66<0.0007084445096552372){
     s0+=52970.0;
     s1+=144.0;
    } else {
     s0+=5309.0;
     s1+=424.0;
    }
   } else {
    if(i49<0.02581787109375){
     s0+=5290.0;
     s1+=279.0;
    } else {
     s0+=2651.0;
     s1+=890.0;
    }
   }
  } else {
   if(i33<0.9993014335632324){
    if(i41<0.0016453079879283905){
     s0+=478.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=20.0;
    }
   } else {
    if(i61<0.04241460561752319){
     s0+=131.0;
     s1+=1465.0;
    } else {
     s0+=362.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i8<0.06205010414123535){
   if(i27<1.2371783256530762){
    if(i20<0.0016625022981315851){
     s0+=510.0;
     s1+=83.0;
    } else {
     s0+=138.0;
     s1+=500.0;
    }
   } else {
    if(i63<0.011426231823861599){
     s0+=811.0;
    } else {
     s0+=187.0;
     s1+=12.0;
    }
   }
  } else {
   if(i5<-2.376451993768569e-05){
    if(i8<0.18685835599899292){
     s0+=159.0;
     s1+=1092.0;
    } else {
     s0+=1.0;
     s1+=1340.0;
    }
   } else {
    if(i30<0.005955102387815714){
     s0+=616.0;
     s1+=75.0;
    } else {
     s0+=11.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i8<0.05910295248031616){
  if(i19<1.0018322467803955){
   if(i6<1.0011982917785645){
    if(i20<0.013291655108332634){
     s0+=632.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=22.0;
    }
   } else {
    if(i26<0.02053939737379551){
     s0+=51.0;
     s1+=22.0;
    } else {
     s0+=16.0;
     s1+=43.0;
    }
   }
  } else {
   if(i6<1.00230073928833){
    if(i4<2.2113323211669922e-05){
     s0+=194.0;
     s1+=19.0;
    } else {
     s0+=73.0;
     s1+=53.0;
    }
   } else {
    if(i64<0.0015950798988342285){
     s0+=64.0;
     s1+=1174.0;
    } else {
     s0+=27.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i22<1.0644645690917969){
   if(i3<0.000765681266784668){
    if(i36<0.002791089005768299){
     s0+=32.0;
     s1+=8.0;
    } else {
     s0+=115.0;
    }
   } else {
    if(i55<1.0031017065048218){
     s1+=61.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i3<0.0006263256072998047){
    if(i8<0.144336998462677){
     s0+=207.0;
     s1+=213.0;
    } else {
     s0+=2.0;
     s1+=284.0;
    }
   } else {
    if(i17<5.602836608886719e-06){
     s0+=84.0;
     s1+=926.0;
    } else {
     s0+=3.0;
     s1+=7613.0;
    }
   }
  }
 }
}
if(i6<1.0024561882019043){
 if(i43<0.00039715960156172514){
  if(i21<1.0071524381637573){
   if(i11<1.041222095489502){
    if(i57<-0.0016287565231323242){
     s0+=166.0;
     s1+=32.0;
    } else {
     s0+=48220.0;
     s1+=109.0;
    }
   } else {
    if(i9<1.0030741691589355){
     s0+=1131.0;
     s1+=32.0;
    } else {
     s0+=9.0;
     s1+=28.0;
    }
   }
  } else {
   if(i29<1.1076760292053223){
    if(i34<1.0598008632659912){
     s0+=1.0;
    } else {
     s1+=159.0;
    }
   } else {
    if(i76<1.00181245803833){
     s0+=39.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i9<0.9898565411567688){
   if(i0<0.09400123357772827){
    if(i3<0.0002968311309814453){
     s0+=11088.0;
     s1+=263.0;
    } else {
     s0+=71.0;
     s1+=92.0;
    }
   } else {
    if(i16<-1.0460615158081055e-05){
     s0+=218.0;
     s1+=23.0;
    } else {
     s0+=114.0;
     s1+=627.0;
    }
   }
  } else {
   if(i26<0.027945343405008316){
    if(i27<1.100754976272583){
     s0+=2566.0;
     s1+=1334.0;
    } else {
     s0+=6449.0;
     s1+=675.0;
    }
   } else {
    if(i26<0.034086890518665314){
     s0+=333.0;
     s1+=448.0;
    } else {
     s0+=287.0;
     s1+=2050.0;
    }
   }
  }
 }
} else {
 if(i22<1.0483505725860596){
  if(i19<1.0037015676498413){
   s0+=34.0;
  } else {
   if(i30<0.0018839242402464151){
    s1+=22.0;
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i1<0.06528806686401367){
   if(i48<0.001827239990234375){
    if(i23<0.0001740741718094796){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=85.0;
     s1+=454.0;
    }
   } else {
    if(i29<1.187490701675415){
     s1+=7.0;
    } else {
     s0+=70.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<-4.32968299719505e-05){
    if(i9<1.007137417793274){
     s0+=81.0;
     s1+=1689.0;
    } else {
     s0+=1.0;
     s1+=8952.0;
    }
   } else {
    if(i15<1.0049145221710205){
     s0+=7.0;
     s1+=133.0;
    } else {
     s0+=57.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i9<1.0055609941482544){
 if(i3<0.0005511045455932617){
  if(i49<0.03150205686688423){
   if(i2<0.07759344577789307){
    if(i63<0.011174963787198067){
     s0+=58599.0;
     s1+=650.0;
    } else {
     s0+=538.0;
     s1+=142.0;
    }
   } else {
    if(i41<0.0004482500080484897){
     s0+=251.0;
     s1+=5.0;
    } else {
     s0+=450.0;
     s1+=491.0;
    }
   }
  } else {
   if(i6<0.9975502490997314){
    if(i18<1.0343105792999268){
     s0+=5842.0;
     s1+=247.0;
    } else {
     s0+=925.0;
     s1+=258.0;
    }
   } else {
    if(i59<3.04638160741888e-05){
     s0+=1788.0;
     s1+=313.0;
    } else {
     s0+=1439.0;
     s1+=2398.0;
    }
   }
  }
 } else {
  if(i59<-3.92026049667038e-06){
   if(i29<1.2927743196487427){
    if(i76<1.0023257732391357){
     s0+=174.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i60<0.0954156368970871){
    if(i34<1.5874378681182861){
     s0+=156.0;
     s1+=913.0;
    } else {
     s0+=66.0;
     s1+=16.0;
    }
   } else {
    if(i10<-0.003904014825820923){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=1241.0;
    }
   }
  }
 }
} else {
 if(i33<1.0011152029037476){
  if(i53<0.999879002571106){
   if(i0<0.07096382975578308){
    if(i61<0.005176752805709839){
     s0+=15.0;
     s1+=47.0;
    } else {
     s0+=30.0;
     s1+=1.0;
    }
   } else {
    if(i67<9.35112257138826e-06){
     s0+=4.0;
     s1+=2869.0;
    } else {
     s0+=11.0;
     s1+=192.0;
    }
   }
  } else {
   if(i6<1.0041484832763672){
    if(i8<0.06243428587913513){
     s0+=623.0;
     s1+=115.0;
    } else {
     s0+=216.0;
     s1+=363.0;
    }
   } else {
    s1+=773.0;
   }
  }
 } else {
  if(i9<1.0083813667297363){
   if(i3<0.0011053085327148438){
    if(i55<1.0030529499053955){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=15.0;
     s1+=4.0;
    }
   } else {
    if(i17<-3.6954879760742188e-06){
     s0+=4.0;
     s1+=26.0;
    } else {
     s1+=233.0;
    }
   }
  } else {
   s1+=5731.0;
  }
 }
}
if(i12<1.055552363395691){
 if(i15<1.004936933517456){
  if(i37<1.01076078414917){
   if(i23<0.00031646830029785633){
    if(i56<-0.0043458640575408936){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=53678.0;
     s1+=300.0;
    }
   } else {
    if(i9<0.9874374866485596){
     s0+=6728.0;
     s1+=130.0;
    } else {
     s0+=3758.0;
     s1+=1297.0;
    }
   }
  } else {
   if(i45<0.016262322664260864){
    if(i40<0.002371959388256073){
     s0+=13.0;
     s1+=199.0;
    } else {
     s0+=44.0;
     s1+=2.0;
    }
   } else {
    s0+=50.0;
   }
  }
 } else {
  if(i12<1.0385410785675049){
   if(i8<0.05799603462219238){
    if(i5<-6.248899444472045e-05){
     s0+=1.0;
     s1+=15.0;
    } else {
     s0+=250.0;
    }
   } else {
    s1+=39.0;
   }
  } else {
   if(i27<1.274820327758789){
    if(i1<0.02879112958908081){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=270.0;
    }
   } else {
    if(i4<3.737211227416992e-05){
     s0+=35.0;
     s1+=6.0;
    } else {
     s1+=65.0;
    }
   }
  }
 }
} else {
 if(i20<0.00468787644058466){
  if(i10<0.0014476776123046875){
   if(i20<0.002610477153211832){
    if(i71<0.00038468296406790614){
     s0+=3395.0;
     s1+=302.0;
    } else {
     s0+=616.0;
     s1+=363.0;
    }
   } else {
    if(i27<1.255998969078064){
     s0+=238.0;
     s1+=755.0;
    } else {
     s0+=1282.0;
     s1+=217.0;
    }
   }
  } else {
   s1+=900.0;
  }
 } else {
  if(i1<0.09356865286827087){
   if(i67<8.718812750885263e-06){
    if(i58<-0.014598006382584572){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=636.0;
    }
   } else {
    if(i63<0.005182704422622919){
     s0+=458.0;
     s1+=58.0;
    } else {
     s0+=382.0;
     s1+=392.0;
    }
   }
  } else {
   if(i15<0.9903312921524048){
    if(i30<0.005296787247061729){
     s0+=56.0;
     s1+=30.0;
    } else {
     s0+=33.0;
     s1+=272.0;
    }
   } else {
    if(i69<1.8891760191763751e-06){
     s0+=82.0;
     s1+=10805.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i19<1.0028033256530762){
 if(i1<0.08711010217666626){
  if(i49<0.025673814117908478){
   if(i38<-0.0018198490142822266){
    if(i71<0.0004667233442887664){
     s0+=605.0;
     s1+=76.0;
    } else {
     s0+=90.0;
     s1+=133.0;
    }
   } else {
    if(i13<1.0081751346588135){
     s0+=56233.0;
     s1+=423.0;
    } else {
     s0+=160.0;
     s1+=171.0;
    }
   }
  } else {
   if(i34<1.1037919521331787){
    if(i27<1.084442138671875){
     s0+=1715.0;
    } else {
     s0+=807.0;
     s1+=1024.0;
    }
   } else {
    if(i47<0.00647023506462574){
     s0+=8473.0;
     s1+=430.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i33<0.9991734027862549){
   if(i13<1.013311743736267){
    if(i1<0.09789425134658813){
     s0+=76.0;
     s1+=10.0;
    } else {
     s0+=542.0;
     s1+=2.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i70<0.00023136402887757868){
    if(i28<0.0011838333448395133){
     s0+=95.0;
     s1+=538.0;
    } else {
     s0+=446.0;
     s1+=180.0;
    }
   } else {
    if(i46<1.0027122497558594){
     s0+=437.0;
     s1+=1406.0;
    } else {
     s0+=75.0;
     s1+=2147.0;
    }
   }
  }
 }
} else {
 if(i4<3.081560134887695e-05){
  if(i32<0.04709363356232643){
   if(i31<1.2649236917495728){
    if(i8<0.10694077610969543){
     s0+=366.0;
     s1+=103.0;
    } else {
     s0+=17.0;
     s1+=104.0;
    }
   } else {
    if(i62<0.10645285993814468){
     s0+=49.0;
     s1+=37.0;
    } else {
     s0+=556.0;
     s1+=4.0;
    }
   }
  } else {
   if(i17<-0.0008537471294403076){
    if(i42<0.0003485381603240967){
     s0+=23.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i18<0.9622194170951843){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=154.0;
    }
   }
  }
 } else {
  if(i0<0.06462350487709045){
   if(i29<1.2160736322402954){
    if(i41<0.00036131779779680073){
     s0+=5.0;
    } else {
     s0+=3.0;
     s1+=264.0;
    }
   } else {
    if(i63<0.013151717372238636){
     s0+=181.0;
     s1+=11.0;
    } else {
     s0+=11.0;
     s1+=180.0;
    }
   }
  } else {
   if(i1<0.13141056895256042){
    if(i61<0.04135924577713013){
     s0+=60.0;
     s1+=1494.0;
    } else {
     s0+=41.0;
     s1+=37.0;
    }
   } else {
    if(i6<1.0014548301696777){
     s0+=20.0;
     s1+=98.0;
    } else {
     s0+=3.0;
     s1+=8090.0;
    }
   }
  }
 }
}
if(i1<0.08355346322059631){
 if(i4<4.202127456665039e-05){
  if(i63<0.007555217482149601){
   if(i2<0.06630605459213257){
    if(i65<0.001425115973688662){
     s0+=58726.0;
     s1+=562.0;
    } else {
     s0+=4676.0;
     s1+=369.0;
    }
   } else {
    if(i61<0.021955788135528564){
     s0+=285.0;
     s1+=287.0;
    } else {
     s0+=1414.0;
     s1+=121.0;
    }
   }
  } else {
   if(i3<0.00016927719116210938){
    if(i4<-2.473592758178711e-05){
     s0+=1740.0;
     s1+=146.0;
    } else {
     s0+=1399.0;
     s1+=439.0;
    }
   } else {
    if(i25<1.0185604095458984){
     s0+=98.0;
     s1+=239.0;
    } else {
     s0+=100.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i77<0.0001362502371193841){
   if(i54<0.03161099553108215){
    if(i57<0.0016720890998840332){
     s0+=71.0;
     s1+=814.0;
    } else {
     s0+=34.0;
     s1+=14.0;
    }
   } else {
    if(i27<1.6640650033950806){
     s0+=40.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i64<-0.003653496503829956){
    if(i69<-6.610177479160484e-06){
     s0+=3.0;
     s1+=72.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i55<0.999911904335022){
     s0+=273.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i33<0.9991731643676758){
  if(i32<0.08629053086042404){
   if(i14<0.9981576204299927){
    s0+=688.0;
   } else {
    if(i53<0.9995156526565552){
     s1+=15.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   s1+=19.0;
  }
 } else {
  if(i32<0.023398736491799355){
   if(i10<0.0007132291793823242){
    if(i45<0.01427200436592102){
     s0+=308.0;
     s1+=1358.0;
    } else {
     s0+=812.0;
     s1+=318.0;
    }
   } else {
    if(i68<-0.006935798563063145){
     s0+=31.0;
     s1+=92.0;
    } else {
     s0+=13.0;
     s1+=2391.0;
    }
   }
  } else {
   if(i4<-2.4765729904174805e-05){
    if(i40<0.00776703143492341){
     s0+=90.0;
     s1+=79.0;
    } else {
     s0+=31.0;
     s1+=209.0;
    }
   } else {
    if(i70<0.00032395709422416985){
     s0+=97.0;
     s1+=1129.0;
    } else {
     s0+=16.0;
     s1+=8559.0;
    }
   }
  }
 }
}
if(i15<1.0039767026901245){
 if(i11<1.0446083545684814){
  if(i60<0.01029769703745842){
   if(i48<-0.0022746622562408447){
    if(i27<1.1919987201690674){
     s0+=21.0;
     s1+=125.0;
    } else {
     s0+=64.0;
     s1+=14.0;
    }
   } else {
    if(i46<1.008479118347168){
     s0+=45188.0;
     s1+=85.0;
    } else {
     s0+=83.0;
     s1+=31.0;
    }
   }
  } else {
   if(i6<0.9978868961334229){
    if(i4<-7.134675979614258e-05){
     s0+=7833.0;
     s1+=10.0;
    } else {
     s0+=7302.0;
     s1+=354.0;
    }
   } else {
    if(i26<0.02563237026333809){
     s0+=3694.0;
     s1+=793.0;
    } else {
     s0+=411.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i62<0.26749783754348755){
   if(i66<-0.0004014992737211287){
    if(i20<0.0016062806826084852){
     s0+=137.0;
     s1+=19.0;
    } else {
     s0+=208.0;
     s1+=1095.0;
    }
   } else {
    if(i26<0.022268574684858322){
     s0+=4247.0;
     s1+=891.0;
    } else {
     s0+=1194.0;
     s1+=1778.0;
    }
   }
  } else {
   if(i51<-0.0002458530361764133){
    if(i70<0.0002655406715348363){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=8.0;
     s1+=1124.0;
    }
   } else {
    if(i42<0.00012603402137756348){
     s0+=99.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i44<-1.0868601748370565e-05){
  if(i28<0.00011875491327373311){
   if(i31<1.1046062707901){
    s1+=10.0;
   } else {
    s0+=14.0;
   }
  } else {
   if(i47<0.0009920604061335325){
    if(i2<0.11012184619903564){
     s0+=101.0;
     s1+=184.0;
    } else {
     s0+=6.0;
     s1+=648.0;
    }
   } else {
    if(i67<4.205137520330027e-05){
     s0+=49.0;
     s1+=8762.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i24<1.0097527503967285){
   if(i30<0.005346803925931454){
    if(i8<0.23609232902526855){
     s0+=522.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i13<0.9864189028739929){
     s0+=3.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i55<0.9999569654464722){
    if(i3<-0.00013235211372375488){
     s0+=27.0;
    } else {
     s0+=4.0;
     s1+=245.0;
    }
   } else {
    if(i71<0.0002806387492455542){
     s0+=48.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i4<3.820657730102539e-05){
 if(i13<1.0081526041030884){
  if(i28<0.00033615544089116156){
   if(i56<-0.0025614500045776367){
    if(i6<0.9969238042831421){
     s0+=144.0;
     s1+=1.0;
    } else {
     s0+=292.0;
     s1+=173.0;
    }
   } else {
    if(i49<0.048449382185935974){
     s0+=57054.0;
     s1+=495.0;
    } else {
     s0+=195.0;
     s1+=90.0;
    }
   }
  } else {
   if(i2<0.08137232065200806){
    if(i27<1.100754976272583){
     s0+=2355.0;
     s1+=845.0;
    } else {
     s0+=8187.0;
     s1+=437.0;
    }
   } else {
    if(i42<-0.00015559792518615723){
     s0+=342.0;
     s1+=20.0;
    } else {
     s0+=615.0;
     s1+=1599.0;
    }
   }
  }
 } else {
  if(i33<1.0001543760299683){
   if(i7<-0.00023493170738220215){
    if(i55<0.9999684691429138){
     s0+=184.0;
     s1+=9.0;
    } else {
     s0+=8.0;
     s1+=95.0;
    }
   } else {
    if(i51<1.9480023183859885e-05){
     s0+=158.0;
     s1+=1173.0;
    } else {
     s0+=64.0;
     s1+=10.0;
    }
   }
  } else {
   if(i5<-3.558901516953483e-05){
    if(i70<0.00021638715406879783){
     s0+=61.0;
     s1+=2.0;
    } else {
     s0+=42.0;
     s1+=437.0;
    }
   } else {
    if(i43<0.001217277254909277){
     s0+=63.0;
     s1+=66.0;
    } else {
     s0+=598.0;
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i40<0.0003694637562148273){
  s0+=302.0;
 } else {
  if(i28<0.0001616518129594624){
   if(i34<1.2388319969177246){
    s1+=27.0;
   } else {
    s0+=48.0;
   }
  } else {
   if(i1<0.08375871181488037){
    if(i57<0.0017723441123962402){
     s0+=100.0;
     s1+=964.0;
    } else {
     s0+=121.0;
     s1+=24.0;
    }
   } else {
    if(i7<-0.00046381354331970215){
     s0+=14.0;
    } else {
     s0+=137.0;
     s1+=10655.0;
    }
   }
  }
 }
}
if(i6<1.0023467540740967){
 if(i12<1.0452277660369873){
  if(i49<0.02623825892806053){
   if(i45<-0.00667417049407959){
    if(i27<1.0835556983947754){
     s0+=167.0;
    } else {
     s0+=119.0;
     s1+=108.0;
    }
   } else {
    if(i57<-0.0015954971313476562){
     s0+=288.0;
     s1+=103.0;
    } else {
     s0+=53373.0;
     s1+=189.0;
    }
   }
  } else {
   if(i15<0.994409441947937){
    if(i1<0.0859215259552002){
     s0+=5812.0;
     s1+=44.0;
    } else {
     s0+=132.0;
     s1+=32.0;
    }
   } else {
    if(i30<0.0003094755229540169){
     s0+=1019.0;
    } else {
     s0+=1305.0;
     s1+=630.0;
    }
   }
  }
 } else {
  if(i2<0.0783216655254364){
   if(i26<0.015352059155702591){
    if(i41<0.0013184515992179513){
     s0+=2693.0;
     s1+=283.0;
    } else {
     s0+=2104.0;
     s1+=33.0;
    }
   } else {
    if(i36<0.0009369642939418554){
     s0+=469.0;
     s1+=582.0;
    } else {
     s0+=1759.0;
     s1+=343.0;
    }
   }
  } else {
   if(i1<0.11684545874595642){
    if(i73<1.021780014038086){
     s0+=298.0;
     s1+=839.0;
    } else {
     s0+=540.0;
     s1+=87.0;
    }
   } else {
    if(i5<-1.3764003597316332e-05){
     s0+=180.0;
     s1+=2329.0;
    } else {
     s0+=460.0;
     s1+=173.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041282176971436){
  if(i49<0.04787403345108032){
   if(i31<1.1509422063827515){
    if(i12<1.0359106063842773){
     s0+=54.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=506.0;
    }
   } else {
    if(i44<-1.406962110195309e-05){
     s0+=51.0;
     s1+=143.0;
    } else {
     s0+=260.0;
     s1+=23.0;
    }
   }
  } else {
   if(i26<0.03630900755524635){
    if(i41<0.007361902855336666){
     s0+=25.0;
     s1+=216.0;
    } else {
     s0+=62.0;
     s1+=8.0;
    }
   } else {
    if(i0<0.0776621401309967){
     s0+=5.0;
     s1+=24.0;
    } else {
     s1+=713.0;
    }
   }
  }
 } else {
  if(i12<1.1223218441009521){
   if(i45<0.04159167408943176){
    if(i58<-0.03979507088661194){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=3206.0;
    }
   } else {
    if(i14<1.002704381942749){
     s1+=1.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   s1+=6380.0;
  }
 }
}
if(i0<0.08237019181251526){
 if(i19<1.0027893781661987){
  if(i22<1.0451585054397583){
   if(i56<-0.00232502818107605){
    if(i41<0.0003506064531393349){
     s0+=755.0;
    } else {
     s0+=679.0;
     s1+=151.0;
    }
   } else {
    if(i0<0.06504073739051819){
     s0+=50723.0;
     s1+=57.0;
    } else {
     s0+=1769.0;
     s1+=26.0;
    }
   }
  } else {
   if(i40<0.0016373794060200453){
    if(i48<-0.000789642333984375){
     s0+=574.0;
     s1+=731.0;
    } else {
     s0+=5149.0;
     s1+=820.0;
    }
   } else {
    if(i70<0.0019050529226660728){
     s0+=8479.0;
     s1+=327.0;
    } else {
     s0+=52.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i14<1.0019335746765137){
   if(i29<1.140648365020752){
    if(i30<0.0003644806856755167){
     s0+=54.0;
    } else {
     s0+=4.0;
     s1+=116.0;
    }
   } else {
    if(i54<-0.04781508445739746){
     s0+=28.0;
     s1+=42.0;
    } else {
     s0+=865.0;
     s1+=17.0;
    }
   }
  } else {
   if(i58<-0.009315719828009605){
    if(i66<0.0022980407811701298){
     s0+=134.0;
     s1+=9.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   } else {
    if(i6<1.002388834953308){
     s0+=96.0;
     s1+=48.0;
    } else {
     s0+=36.0;
     s1+=691.0;
    }
   }
  }
 }
} else {
 if(i16<-1.621246337890625e-05){
  if(i36<0.0038620082195848227){
   s0+=367.0;
  } else {
   if(i49<0.04167397692799568){
    if(i71<0.0008650330710224807){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i24<0.96454918384552){
     s0+=1.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i10<0.0003477334976196289){
   if(i38<0.003945291042327881){
    if(i55<0.9970653057098389){
     s0+=26.0;
    } else {
     s0+=200.0;
     s1+=2381.0;
    }
   } else {
    if(i60<0.11675278097391129){
     s0+=856.0;
     s1+=743.0;
    } else {
     s0+=34.0;
     s1+=691.0;
    }
   }
  } else {
   if(i6<1.0007100105285645){
    if(i20<0.0018018641276285052){
     s0+=53.0;
    } else {
     s0+=3.0;
     s1+=196.0;
    }
   } else {
    if(i32<0.001375224906951189){
     s0+=7.0;
     s1+=10.0;
    } else {
     s0+=68.0;
     s1+=10055.0;
    }
   }
  }
 }
}
if(i1<0.0853736400604248){
 if(i54<-0.03349575400352478){
  if(i3<0.0001742839813232422){
   if(i8<0.007261455059051514){
    if(i13<0.9952607154846191){
     s0+=588.0;
     s1+=94.0;
    } else {
     s0+=542.0;
     s1+=12.0;
    }
   } else {
    if(i76<1.0004315376281738){
     s0+=406.0;
     s1+=136.0;
    } else {
     s0+=80.0;
     s1+=143.0;
    }
   }
  } else {
   if(i57<0.002612173557281494){
    if(i43<0.00022637889196630567){
     s0+=7.0;
    } else {
     s0+=36.0;
     s1+=599.0;
    }
   } else {
    if(i67<-1.4534874935634434e-05){
     s1+=4.0;
    } else {
     s0+=44.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i16<1.9252300262451172e-05){
   if(i1<0.06630915403366089){
    if(i62<0.01785118132829666){
     s0+=48376.0;
     s1+=239.0;
    } else {
     s0+=14169.0;
     s1+=736.0;
    }
   } else {
    if(i22<1.048384666442871){
     s0+=2468.0;
     s1+=58.0;
    } else {
     s0+=1152.0;
     s1+=613.0;
    }
   }
  } else {
   if(i67<8.11053814686602e-06){
    if(i31<1.0605937242507935){
     s0+=269.0;
    } else {
     s0+=126.0;
     s1+=464.0;
    }
   } else {
    if(i17<-0.0002931654453277588){
     s0+=561.0;
     s1+=18.0;
    } else {
     s0+=287.0;
     s1+=79.0;
    }
   }
  }
 }
} else {
 if(i42<-0.00013971328735351562){
  if(i5<-4.537317727226764e-05){
   if(i30<0.0011202305322512984){
    s0+=11.0;
   } else {
    if(i14<0.9980800151824951){
     s0+=1.0;
    } else {
     s1+=111.0;
    }
   }
  } else {
   if(i10<-0.0005326271057128906){
    s0+=607.0;
   } else {
    if(i60<0.03219103813171387){
     s0+=46.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<1.0018041133880615){
   if(i20<0.0017323328647762537){
    if(i48<-0.00037172436714172363){
     s0+=122.0;
     s1+=157.0;
    } else {
     s0+=451.0;
     s1+=61.0;
    }
   } else {
    if(i58<-0.01939644105732441){
     s0+=416.0;
     s1+=935.0;
    } else {
     s0+=139.0;
     s1+=1997.0;
    }
   }
  } else {
   if(i9<1.0075541734695435){
    if(i0<0.12487208843231201){
     s0+=93.0;
     s1+=378.0;
    } else {
     s0+=23.0;
     s1+=1598.0;
    }
   } else {
    if(i32<0.009249821305274963){
     s0+=5.0;
     s1+=730.0;
    } else {
     s1+=8060.0;
    }
   }
  }
 }
}
if(i2<0.0782729983329773){
 if(i3<0.0006017684936523438){
  if(i22<1.0451585054397583){
   if(i27<1.0850647687911987){
    s0+=35705.0;
   } else {
    if(i56<-0.0020890235900878906){
     s0+=720.0;
     s1+=135.0;
    } else {
     s0+=17708.0;
     s1+=73.0;
    }
   }
  } else {
   if(i27<1.1013743877410889){
    if(i5<-2.0646923076128587e-05){
     s0+=116.0;
     s1+=605.0;
    } else {
     s0+=3502.0;
     s1+=793.0;
    }
   } else {
    if(i63<0.008209346793591976){
     s0+=9350.0;
     s1+=194.0;
    } else {
     s0+=1938.0;
     s1+=328.0;
    }
   }
  }
 } else {
  if(i55<0.9977195262908936){
   if(i7<0.0012978315353393555){
    s0+=89.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i6<1.0042428970336914){
    if(i47<0.0009354750509373844){
     s0+=121.0;
     s1+=17.0;
    } else {
     s0+=106.0;
     s1+=337.0;
    }
   } else {
    if(i15<1.0004258155822754){
     s0+=8.0;
     s1+=22.0;
    } else {
     s0+=2.0;
     s1+=726.0;
    }
   }
  }
 }
} else {
 if(i5<-1.641866947466042e-05){
  if(i2<0.11696702241897583){
   if(i72<1.0367841720581055){
    if(i45<0.014813542366027832){
     s0+=120.0;
     s1+=1859.0;
    } else {
     s0+=185.0;
     s1+=37.0;
    }
   } else {
    if(i46<1.00900137424469){
     s0+=149.0;
     s1+=9.0;
    } else {
     s0+=37.0;
     s1+=88.0;
    }
   }
  } else {
   if(i16<-1.7136335372924805e-05){
    s0+=8.0;
   } else {
    if(i5<-4.561887544696219e-05){
     s0+=42.0;
     s1+=10723.0;
    } else {
     s0+=127.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i16<-1.722574234008789e-05){
   s0+=347.0;
  } else {
   if(i45<0.00886911153793335){
    if(i46<0.997177243232727){
     s0+=54.0;
     s1+=272.0;
    } else {
     s0+=92.0;
     s1+=40.0;
    }
   } else {
    if(i6<1.0017266273498535){
     s0+=588.0;
     s1+=147.0;
    } else {
     s1+=29.0;
    }
   }
  }
 }
}
if(i8<0.07196849584579468){
 if(i14<1.0019060373306274){
  if(i2<0.07753235101699829){
   if(i56<-0.0020637810230255127){
    if(i21<0.9716362953186035){
     s0+=3179.0;
     s1+=95.0;
    } else {
     s0+=2819.0;
     s1+=856.0;
    }
   } else {
    if(i0<0.07893946766853333){
     s0+=62116.0;
     s1+=1039.0;
    } else {
     s0+=43.0;
     s1+=183.0;
    }
   }
  } else {
   if(i74<6.702052814944182e-06){
    if(i64<0.0038805603981018066){
     s0+=26.0;
     s1+=806.0;
    } else {
     s0+=17.0;
     s1+=9.0;
    }
   } else {
    if(i18<1.044689416885376){
     s0+=82.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i13<1.0039125680923462){
   if(i45<0.003390371799468994){
    if(i63<0.01274617575109005){
     s0+=222.0;
     s1+=156.0;
    } else {
     s0+=39.0;
     s1+=276.0;
    }
   } else {
    if(i10<-0.0008022189140319824){
     s0+=381.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i3<0.0009402036666870117){
    if(i29<1.1773569583892822){
     s0+=1.0;
     s1+=90.0;
    } else {
     s0+=57.0;
     s1+=28.0;
    }
   } else {
    if(i76<0.9996901750564575){
     s0+=6.0;
     s1+=13.0;
    } else {
     s1+=1155.0;
    }
   }
  }
 }
} else {
 if(i30<0.006110695190727711){
  if(i5<-1.639903348404914e-05){
   if(i61<0.04213005304336548){
    if(i20<0.0027478644624352455){
     s0+=138.0;
     s1+=329.0;
    } else {
     s0+=145.0;
     s1+=2221.0;
    }
   } else {
    if(i46<1.0057188272476196){
     s0+=289.0;
     s1+=205.0;
    } else {
     s0+=39.0;
     s1+=242.0;
    }
   }
  } else {
   if(i5<-9.393522304890212e-06){
    if(i52<1.01199471950531){
     s0+=99.0;
     s1+=132.0;
    } else {
     s0+=126.0;
     s1+=31.0;
    }
   } else {
    if(i20<0.006060410290956497){
     s0+=922.0;
     s1+=102.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i12<1.0636978149414062){
   if(i3<0.00023102760314941406){
    if(i0<0.09432131052017212){
     s0+=92.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=27.0;
    }
   } else {
    if(i18<1.0625042915344238){
     s1+=119.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i45<0.020008087158203125){
    if(i39<0.07501477003097534){
     s0+=3.0;
     s1+=4726.0;
    } else {
     s0+=8.0;
     s1+=406.0;
    }
   } else {
    if(i2<0.14396342635154724){
     s0+=88.0;
     s1+=5.0;
    } else {
     s0+=19.0;
     s1+=3979.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i11<1.0452277660369873){
  if(i1<0.08468303084373474){
   if(i48<-0.001171112060546875){
    if(i46<0.984403669834137){
     s0+=7593.0;
     s1+=180.0;
    } else {
     s0+=1990.0;
     s1+=605.0;
    }
   } else {
    if(i13<1.0095598697662354){
     s0+=54674.0;
     s1+=485.0;
    } else {
     s0+=95.0;
     s1+=45.0;
    }
   }
  } else {
   if(i41<0.0004559332737699151){
    if(i13<1.001570224761963){
     s0+=267.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i3<-0.000895082950592041){
     s0+=115.0;
     s1+=17.0;
    } else {
     s0+=63.0;
     s1+=566.0;
    }
   }
  }
 } else {
  if(i42<-0.000141143798828125){
   if(i19<1.0003941059112549){
    if(i44<-1.0312498488929123e-05){
     s1+=12.0;
    } else {
     s0+=1351.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i51<-0.00014177258708514273){
    if(i26<0.027829762548208237){
     s0+=1982.0;
     s1+=1126.0;
    } else {
     s0+=172.0;
     s1+=1764.0;
    }
   } else {
    if(i0<0.11012715101242065){
     s0+=1912.0;
     s1+=336.0;
    } else {
     s0+=146.0;
     s1+=251.0;
    }
   }
  }
 }
} else {
 if(i27<1.082350254058838){
  s0+=263.0;
 } else {
  if(i3<0.000979304313659668){
   if(i32<0.00869704969227314){
    if(i29<1.155808687210083){
     s0+=25.0;
     s1+=196.0;
    } else {
     s0+=226.0;
     s1+=37.0;
    }
   } else {
    if(i8<0.03131881356239319){
     s0+=37.0;
     s1+=72.0;
    } else {
     s0+=82.0;
     s1+=1454.0;
    }
   }
  } else {
   if(i27<1.613681674003601){
    if(i53<1.0007838010787964){
     s0+=8.0;
     s1+=8429.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   } else {
    if(i5<-0.0001331260718870908){
     s0+=8.0;
     s1+=1484.0;
    } else {
     s0+=66.0;
     s1+=73.0;
    }
   }
  }
 }
}
if(i3<0.0005489885807037354){
 if(i13<1.0081498622894287){
  if(i26<0.02196212112903595){
   if(i28<0.0003329147002659738){
    if(i48<-0.0016595125198364258){
     s0+=1079.0;
     s1+=144.0;
    } else {
     s0+=54882.0;
     s1+=289.0;
    }
   } else {
    if(i8<0.07072916626930237){
     s0+=6103.0;
     s1+=610.0;
    } else {
     s0+=723.0;
     s1+=251.0;
    }
   }
  } else {
   if(i1<0.08004364371299744){
    if(i15<0.9945660829544067){
     s0+=5097.0;
     s1+=104.0;
    } else {
     s0+=979.0;
     s1+=670.0;
    }
   } else {
    if(i7<-0.0004025697708129883){
     s0+=257.0;
     s1+=11.0;
    } else {
     s0+=331.0;
     s1+=1571.0;
    }
   }
  }
 } else {
  if(i5<-3.35419099428691e-05){
   if(i34<1.1819204092025757){
    if(i17<-0.00010648369789123535){
     s0+=3.0;
    } else {
     s1+=735.0;
    }
   } else {
    if(i0<0.0876639187335968){
     s0+=108.0;
     s1+=45.0;
    } else {
     s0+=29.0;
     s1+=628.0;
    }
   }
  } else {
   if(i7<0.00010272860527038574){
    if(i8<0.13354462385177612){
     s0+=298.0;
     s1+=116.0;
    } else {
     s0+=21.0;
     s1+=194.0;
    }
   } else {
    if(i27<1.1039612293243408){
     s0+=14.0;
     s1+=39.0;
    } else {
     s0+=692.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i27<1.075138807296753){
  s0+=148.0;
 } else {
  if(i4<6.324052810668945e-05){
   if(i28<0.000174283268279396){
    if(i74<1.0455880783410976e-07){
     s0+=93.0;
     s1+=5.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i20<0.0022317501716315746){
     s0+=119.0;
     s1+=21.0;
    } else {
     s0+=136.0;
     s1+=1537.0;
    }
   }
  } else {
   if(i15<1.0061564445495605){
    if(i10<3.6835670471191406e-05){
     s0+=96.0;
     s1+=701.0;
    } else {
     s0+=6.0;
     s1+=1100.0;
    }
   } else {
    if(i3<0.0009215474128723145){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=8213.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i2<0.08083099126815796){
  if(i49<0.0257282555103302){
   if(i46<1.0072370767593384){
    if(i25<1.0067415237426758){
     s0+=55840.0;
     s1+=456.0;
    } else {
     s0+=870.0;
     s1+=104.0;
    }
   } else {
    if(i77<3.121271583950147e-05){
     s0+=8.0;
     s1+=74.0;
    } else {
     s0+=516.0;
     s1+=138.0;
    }
   }
  } else {
   if(i0<0.06631547212600708){
    if(i27<1.100754976272583){
     s0+=2339.0;
     s1+=609.0;
    } else {
     s0+=8574.0;
     s1+=346.0;
    }
   } else {
    if(i29<1.1748476028442383){
     s0+=225.0;
     s1+=417.0;
    } else {
     s0+=589.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i16<-1.7315149307250977e-05){
   if(i42<-0.00012168288230895996){
    s0+=401.0;
   } else {
    if(i66<0.0005704666837118566){
     s0+=19.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i26<0.02884143963456154){
    if(i39<0.053265929222106934){
     s0+=137.0;
     s1+=981.0;
    } else {
     s0+=749.0;
     s1+=281.0;
    }
   } else {
    if(i35<0.05583050847053528){
     s0+=3.0;
     s1+=970.0;
    } else {
     s0+=206.0;
     s1+=989.0;
    }
   }
  }
 }
} else {
 if(i12<1.034064531326294){
  if(i20<0.0038520286325365305){
   if(i23<0.0006416748510673642){
    if(i5<-5.501325358636677e-05){
     s1+=1.0;
    } else {
     s0+=208.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   s1+=60.0;
  }
 } else {
  if(i51<-0.0005461866967380047){
   if(i2<0.16102689504623413){
    if(i19<0.996635913848877){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=719.0;
    }
   } else {
    s1+=6873.0;
   }
  } else {
   if(i20<0.0023749331012368202){
    if(i44<-1.4563018339686096e-05){
     s0+=5.0;
     s1+=183.0;
    } else {
     s0+=137.0;
     s1+=6.0;
    }
   } else {
    if(i10<-0.0006422996520996094){
     s0+=184.0;
     s1+=440.0;
    } else {
     s0+=54.0;
     s1+=3447.0;
    }
   }
  }
 }
}
if(i18<1.0408271551132202){
 if(i0<0.0803423523902893){
  if(i63<0.008502203039824963){
   if(i0<0.06454607844352722){
    if(i57<-0.0013132691383361816){
     s0+=4112.0;
     s1+=439.0;
    } else {
     s0+=58141.0;
     s1+=373.0;
    }
   } else {
    if(i15<1.003591537475586){
     s0+=2399.0;
     s1+=397.0;
    } else {
     s0+=23.0;
     s1+=169.0;
    }
   }
  } else {
   if(i14<1.0016486644744873){
    if(i26<0.014146574772894382){
     s0+=1123.0;
     s1+=123.0;
    } else {
     s0+=853.0;
     s1+=428.0;
    }
   } else {
    if(i10<-0.002372533082962036){
     s0+=68.0;
     s1+=42.0;
    } else {
     s0+=34.0;
     s1+=390.0;
    }
   }
  }
 } else {
  if(i15<0.9910645484924316){
   if(i71<0.0007559499936178327){
    if(i3<-8.732080459594727e-06){
     s0+=157.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i35<0.06587523221969604){
     s1+=52.0;
    } else {
     s0+=13.0;
     s1+=15.0;
    }
   }
  } else {
   if(i22<1.042993187904358){
    if(i18<1.0246431827545166){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=44.0;
     s1+=2.0;
    }
   } else {
    if(i16<-1.564621925354004e-05){
     s0+=6.0;
    } else {
     s0+=35.0;
     s1+=2357.0;
    }
   }
  }
 }
} else {
 if(i8<0.09510228037834167){
  if(i15<1.0014820098876953){
   if(i51<-8.485555008519441e-05){
    if(i20<0.004852136597037315){
     s0+=1346.0;
     s1+=325.0;
    } else {
     s0+=201.0;
     s1+=348.0;
    }
   } else {
    if(i70<0.0017351171700283885){
     s0+=1380.0;
     s1+=96.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i44<-1.414263533661142e-05){
    if(i42<0.0002289116382598877){
     s0+=46.0;
     s1+=359.0;
    } else {
     s0+=14.0;
     s1+=943.0;
    }
   } else {
    if(i71<-9.561899787513539e-05){
     s0+=13.0;
     s1+=190.0;
    } else {
     s0+=266.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i42<-0.00024336576461791992){
   if(i10<0.0010279417037963867){
    if(i71<0.0015903685707598925){
     s0+=232.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=29.0;
   }
  } else {
   if(i41<0.0012329454766586423){
    if(i20<0.0016864030621945858){
     s0+=305.0;
     s1+=20.0;
    } else {
     s0+=45.0;
     s1+=199.0;
    }
   } else {
    if(i0<0.13376128673553467){
     s0+=211.0;
     s1+=320.0;
    } else {
     s0+=118.0;
     s1+=9306.0;
    }
   }
  }
 }
}
if(i8<0.07074698805809021){
 if(i21<1.0066758394241333){
  if(i4<4.1037797927856445e-05){
   if(i1<0.07930245995521545){
    if(i22<1.0451585054397583){
     s0+=53376.0;
     s1+=218.0;
    } else {
     s0+=13172.0;
     s1+=1390.0;
    }
   } else {
    if(i16<-1.138448715209961e-05){
     s0+=348.0;
     s1+=14.0;
    } else {
     s0+=162.0;
     s1+=488.0;
    }
   }
  } else {
   if(i31<1.058716893196106){
    s0+=219.0;
   } else {
    if(i64<0.000702202320098877){
     s0+=40.0;
     s1+=509.0;
    } else {
     s0+=67.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i14<1.001889944076538){
   if(i29<1.1544206142425537){
    if(i17<7.346272468566895e-05){
     s0+=266.0;
     s1+=169.0;
    } else {
     s0+=11.0;
     s1+=530.0;
    }
   } else {
    if(i2<0.07718408107757568){
     s0+=1208.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   }
  } else {
   if(i56<0.006529629230499268){
    if(i11<1.0209898948669434){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=1044.0;
    }
   } else {
    if(i67<8.61552052811021e-07){
     s1+=36.0;
    } else {
     s0+=21.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i5<-2.4677474357304163e-05){
  if(i8<0.11814084649085999){
   if(i64<0.004730701446533203){
    if(i54<0.04531702399253845){
     s0+=131.0;
     s1+=2331.0;
    } else {
     s0+=109.0;
     s1+=167.0;
    }
   } else {
    if(i0<0.12791898846626282){
     s0+=255.0;
     s1+=26.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   }
  } else {
   if(i7<-0.0004929602146148682){
    s0+=4.0;
   } else {
    if(i1<0.1757572889328003){
     s0+=80.0;
     s1+=928.0;
    } else {
     s0+=24.0;
     s1+=8487.0;
    }
   }
  }
 } else {
  if(i50<0.05033600330352783){
   if(i55<1.0017400979995728){
    s1+=95.0;
   } else {
    if(i57<-0.004351019859313965){
     s1+=1.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i14<0.9984382390975952){
    s0+=467.0;
   } else {
    if(i39<0.04157072305679321){
     s0+=48.0;
     s1+=198.0;
    } else {
     s0+=1017.0;
     s1+=345.0;
    }
   }
  }
 }
}
if(i0<0.08378416299819946){
 if(i17<0.00017255544662475586){
  if(i38<-0.0017843842506408691){
   if(i2<0.02138841152191162){
    if(i74<-2.442337745378609e-06){
     s0+=18.0;
     s1+=40.0;
    } else {
     s0+=2669.0;
     s1+=221.0;
    }
   } else {
    if(i59<3.47614441125188e-05){
     s0+=515.0;
     s1+=116.0;
    } else {
     s0+=373.0;
     s1+=638.0;
    }
   }
  } else {
   if(i22<1.0477051734924316){
    if(i56<-0.0017220377922058105){
     s0+=1871.0;
     s1+=144.0;
    } else {
     s0+=52832.0;
     s1+=104.0;
    }
   } else {
    if(i4<1.055002212524414e-05){
     s0+=10009.0;
     s1+=727.0;
    } else {
     s0+=1118.0;
     s1+=571.0;
    }
   }
  }
 } else {
  if(i12<1.035557746887207){
   s0+=154.0;
  } else {
   if(i31<1.2133851051330566){
    if(i5<-4.167876613792032e-05){
     s0+=2.0;
     s1+=450.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i64<-0.00363004207611084){
     s1+=26.0;
    } else {
     s0+=74.0;
    }
   }
  }
 }
} else {
 if(i20<0.004565384704619646){
  if(i11<1.0862454175949097){
   if(i6<0.9965496063232422){
    if(i48<-0.0027928054332733154){
     s0+=16.0;
     s1+=18.0;
    } else {
     s0+=169.0;
     s1+=3.0;
    }
   } else {
    if(i20<0.0012007131008431315){
     s0+=139.0;
     s1+=95.0;
    } else {
     s0+=145.0;
     s1+=1588.0;
    }
   }
  } else {
   if(i59<-4.2220475734211504e-05){
    s1+=234.0;
   } else {
    if(i36<0.0036453697830438614){
     s0+=622.0;
     s1+=23.0;
    } else {
     s0+=196.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i6<0.9967211484909058){
   if(i33<0.9993653297424316){
    s0+=96.0;
   } else {
    if(i76<1.0062851905822754){
     s0+=8.0;
     s1+=101.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  } else {
   if(i2<0.11420184373855591){
    if(i64<0.004099488258361816){
     s0+=23.0;
     s1+=1219.0;
    } else {
     s0+=124.0;
     s1+=39.0;
    }
   } else {
    if(i55<1.0083428621292114){
     s0+=21.0;
     s1+=10371.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i8<0.07132148742675781){
 if(i15<1.0046756267547607){
  if(i45<-0.0058502256870269775){
   if(i7<0.000579535961151123){
    if(i29<1.190589427947998){
     s0+=1495.0;
     s1+=678.0;
    } else {
     s0+=2220.0;
     s1+=121.0;
    }
   } else {
    if(i54<-0.007819712162017822){
     s0+=65.0;
     s1+=241.0;
    } else {
     s0+=58.0;
     s1+=8.0;
    }
   }
  } else {
   if(i23<0.00029986927984282374){
    if(i25<1.0087131261825562){
     s0+=52724.0;
     s1+=252.0;
    } else {
     s0+=107.0;
     s1+=113.0;
    }
   } else {
    if(i9<0.9901224374771118){
     s0+=6755.0;
     s1+=59.0;
    } else {
     s0+=5199.0;
     s1+=1487.0;
    }
   }
  }
 } else {
  if(i20<0.0014419539365917444){
   if(i29<1.1016805171966553){
    s1+=27.0;
   } else {
    if(i59<-3.848370397463441e-05){
     s1+=3.0;
    } else {
     s0+=304.0;
    }
   }
  } else {
   if(i4<2.7418136596679688e-05){
    if(i71<-8.568724297219887e-05){
     s0+=21.0;
     s1+=62.0;
    } else {
     s0+=88.0;
     s1+=11.0;
    }
   } else {
    if(i7<0.0004334449768066406){
     s0+=26.0;
     s1+=104.0;
    } else {
     s0+=5.0;
     s1+=1431.0;
    }
   }
  }
 }
} else {
 if(i15<1.0010273456573486){
  if(i30<0.0061257872730493546){
   if(i39<0.041600555181503296){
    if(i19<0.9944886565208435){
     s0+=13.0;
    } else {
     s0+=76.0;
     s1+=687.0;
    }
   } else {
    if(i41<0.0004558917135000229){
     s0+=336.0;
     s1+=1.0;
    } else {
     s0+=1218.0;
     s1+=698.0;
    }
   }
  } else {
   if(i14<0.9988799095153809){
    if(i58<-0.011845115572214127){
     s0+=11.0;
     s1+=13.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.12137985229492188){
     s0+=127.0;
     s1+=133.0;
    } else {
     s0+=37.0;
     s1+=1656.0;
    }
   }
  }
 } else {
  if(i20<0.0023674815893173218){
   if(i5<-4.277059269952588e-05){
    if(i74<9.336408766102977e-06){
     s0+=1.0;
     s1+=207.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i52<1.0201191902160645){
     s0+=30.0;
     s1+=36.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i20<0.0031557688489556313){
    if(i5<-1.7558608305989765e-05){
     s0+=25.0;
     s1+=275.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i55<1.004622220993042){
     s0+=34.0;
     s1+=8763.0;
    } else {
     s0+=12.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i37<1.0100281238555908){
  if(i28<0.00033149425871670246){
   if(i31<1.0598037242889404){
    if(i78<-0.001244574785232544){
     s0+=192.0;
     s1+=6.0;
    } else {
     s0+=42223.0;
     s1+=8.0;
    }
   } else {
    if(i37<0.9845011234283447){
     s0+=70.0;
     s1+=140.0;
    } else {
     s0+=15171.0;
     s1+=593.0;
    }
   }
  } else {
   if(i32<0.062218017876148224){
    if(i6<0.9976557493209839){
     s0+=7164.0;
     s1+=456.0;
    } else {
     s0+=3754.0;
     s1+=2111.0;
    }
   } else {
    if(i7<-0.00031557679176330566){
     s0+=24.0;
    } else {
     s0+=3.0;
     s1+=307.0;
    }
   }
  }
 } else {
  if(i40<0.010149804875254631){
   if(i70<0.00064716866472736){
    if(i22<1.0737545490264893){
     s0+=98.0;
     s1+=476.0;
    } else {
     s0+=1869.0;
     s1+=623.0;
    }
   } else {
    if(i6<0.9989418983459473){
     s0+=161.0;
     s1+=53.0;
    } else {
     s0+=38.0;
     s1+=515.0;
    }
   }
  } else {
   if(i20<0.0022076177410781384){
    s0+=8.0;
   } else {
    if(i1<0.09469330310821533){
     s0+=6.0;
    } else {
     s1+=568.0;
    }
   }
  }
 }
} else {
 if(i1<0.057951420545578){
  if(i45<-0.0064070820808410645){
   if(i48<0.0026904940605163574){
    if(i28<0.00338366674259305){
     s0+=2.0;
     s1+=214.0;
    } else {
     s0+=22.0;
     s1+=73.0;
    }
   } else {
    s0+=7.0;
   }
  } else {
   if(i74<-3.079192651966878e-07){
    if(i29<1.1470013856887817){
     s1+=26.0;
    } else {
     s0+=163.0;
     s1+=13.0;
    }
   } else {
    if(i21<1.0043504238128662){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i78<0.002286255359649658){
   if(i45<0.009153962135314941){
    if(i20<0.0019741496071219444){
     s0+=25.0;
     s1+=86.0;
    } else {
     s0+=17.0;
     s1+=3556.0;
    }
   } else {
    if(i20<0.007251551374793053){
     s0+=125.0;
     s1+=357.0;
    } else {
     s0+=14.0;
     s1+=1537.0;
    }
   }
  } else {
   s1+=5314.0;
  }
 }
}
if(i4<3.427267074584961e-05){
 if(i28<0.00030849804170429707){
  if(i0<0.08941316604614258){
   if(i0<0.06922763586044312){
    if(i45<-0.007860302925109863){
     s0+=214.0;
     s1+=63.0;
    } else {
     s0+=55465.0;
     s1+=385.0;
    }
   } else {
    if(i5<-2.275132283102721e-05){
     s0+=95.0;
     s1+=150.0;
    } else {
     s0+=898.0;
     s1+=48.0;
    }
   }
  } else {
   if(i42<-0.0002459883689880371){
    s0+=20.0;
   } else {
    if(i4<-4.789233207702637e-05){
     s0+=9.0;
    } else {
     s0+=1.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i2<0.08395859599113464){
   if(i12<1.0401077270507812){
    if(i48<-0.0038917362689971924){
     s0+=3828.0;
     s1+=20.0;
    } else {
     s0+=2892.0;
     s1+=248.0;
    }
   } else {
    if(i45<0.009598731994628906){
     s0+=3887.0;
     s1+=1259.0;
    } else {
     s0+=1757.0;
     s1+=45.0;
    }
   }
  } else {
   if(i61<0.035440921783447266){
    if(i0<0.1003161072731018){
     s0+=198.0;
     s1+=330.0;
    } else {
     s0+=198.0;
     s1+=1827.0;
    }
   } else {
    if(i20<0.006252606399357319){
     s0+=843.0;
     s1+=347.0;
    } else {
     s0+=29.0;
     s1+=335.0;
    }
   }
  }
 }
} else {
 if(i31<1.0590304136276245){
  s0+=453.0;
 } else {
  if(i5<-4.486313628149219e-05){
   if(i9<1.0003668069839478){
    if(i2<0.1124030351638794){
     s0+=190.0;
     s1+=370.0;
    } else {
     s0+=21.0;
     s1+=1006.0;
    }
   } else {
    if(i43<0.00020141592540312558){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=62.0;
     s1+=9980.0;
    }
   }
  } else {
   if(i47<0.0011181130539625883){
    if(i59<2.808212229865603e-05){
     s0+=196.0;
    } else {
     s0+=18.0;
     s1+=53.0;
    }
   } else {
    if(i77<6.253285391721874e-05){
     s0+=12.0;
     s1+=40.0;
    } else {
     s0+=1.0;
     s1+=226.0;
    }
   }
  }
 }
}
if(i10<0.0007590651512145996){
 if(i26<0.022013450041413307){
  if(i1<0.08191567659378052){
   if(i23<0.00028163223760202527){
    if(i14<1.002009630203247){
     s0+=51429.0;
     s1+=203.0;
    } else {
     s0+=8.0;
     s1+=14.0;
    }
   } else {
    if(i33<1.0003412961959839){
     s0+=8629.0;
     s1+=528.0;
    } else {
     s0+=1870.0;
     s1+=444.0;
    }
   }
  } else {
   if(i64<0.005724221467971802){
    if(i20<0.004772352986037731){
     s0+=836.0;
     s1+=384.0;
    } else {
     s0+=78.0;
     s1+=475.0;
    }
   } else {
    if(i70<0.0016784605104476213){
     s0+=547.0;
     s1+=71.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i7<-0.00011330842971801758){
   if(i22<1.044603705406189){
    if(i62<0.0025472166016697884){
     s1+=3.0;
    } else {
     s0+=2807.0;
     s1+=24.0;
    }
   } else {
    if(i9<0.9901253581047058){
     s0+=1265.0;
     s1+=113.0;
    } else {
     s0+=279.0;
     s1+=502.0;
    }
   }
  } else {
   if(i0<0.06408455967903137){
    if(i17<-0.0002766847610473633){
     s0+=1588.0;
     s1+=71.0;
    } else {
     s0+=398.0;
     s1+=536.0;
    }
   } else {
    if(i61<0.018683791160583496){
     s0+=119.0;
     s1+=2460.0;
    } else {
     s0+=475.0;
     s1+=1399.0;
    }
   }
  }
 }
} else {
 if(i3<0.00046062469482421875){
  if(i13<1.010345458984375){
   if(i23<0.00033950095530599356){
    if(i41<0.000581256696023047){
     s1+=3.0;
    } else {
     s0+=362.0;
     s1+=5.0;
    }
   } else {
    if(i20<0.004967371001839638){
     s0+=55.0;
     s1+=15.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i16<9.59634780883789e-06){
    if(i55<1.0019044876098633){
     s1+=375.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i59<-4.162523509876337e-06){
     s0+=29.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i20<0.002218537498265505){
   if(i5<-6.118544115452096e-05){
    s1+=179.0;
   } else {
    if(i34<1.1753523349761963){
     s1+=4.0;
    } else {
     s0+=199.0;
    }
   }
  } else {
   if(i4<4.380941390991211e-05){
    if(i33<1.00050687789917){
     s0+=6.0;
     s1+=288.0;
    } else {
     s0+=12.0;
     s1+=31.0;
    }
   } else {
    if(i30<0.0003890966472681612){
     s0+=1.0;
    } else {
     s1+=9067.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i9<1.0062615871429443){
  if(i6<1.0024776458740234){
   if(i38<-0.0017693936824798584){
    if(i6<0.9975864887237549){
     s0+=1464.0;
     s1+=115.0;
    } else {
     s0+=1113.0;
     s1+=550.0;
    }
   } else {
    if(i8<0.08108097314834595){
     s0+=62414.0;
     s1+=1025.0;
    } else {
     s0+=64.0;
     s1+=198.0;
    }
   }
  } else {
   if(i20<0.0023372648283839226){
    s0+=12.0;
   } else {
    if(i55<1.0026671886444092){
     s0+=1.0;
     s1+=375.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i30<0.0013985940022394061){
   if(i8<0.01884084939956665){
    if(i38<-0.0032295584678649902){
     s1+=19.0;
    } else {
     s0+=5.0;
    }
   } else {
    s1+=306.0;
   }
  } else {
   if(i57<-0.0028802156448364258){
    if(i41<0.0012931074015796185){
     s0+=5.0;
    } else {
     s1+=113.0;
    }
   } else {
    if(i20<0.004685726948082447){
     s0+=304.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i32<0.023757614195346832){
  if(i41<0.0005121006979607046){
   if(i5<-2.531963400542736e-05){
    if(i33<0.9968057870864868){
     s0+=4.0;
    } else {
     s1+=155.0;
    }
   } else {
    if(i33<1.0003972053527832){
     s0+=1682.0;
     s1+=9.0;
    } else {
     s0+=30.0;
     s1+=8.0;
    }
   }
  } else {
   if(i15<1.0030386447906494){
    if(i6<0.9966375827789307){
     s0+=705.0;
     s1+=34.0;
    } else {
     s0+=2477.0;
     s1+=1637.0;
    }
   } else {
    if(i9<1.0065473318099976){
     s0+=188.0;
     s1+=169.0;
    } else {
     s0+=88.0;
     s1+=2414.0;
    }
   }
  }
 } else {
  if(i16<-9.715557098388672e-06){
   if(i15<0.9967686533927917){
    if(i29<1.255998969078064){
     s1+=9.0;
    } else {
     s0+=300.0;
     s1+=4.0;
    }
   } else {
    if(i12<1.1617881059646606){
     s0+=1.0;
     s1+=4.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i1<0.08929991722106934){
    if(i56<0.006167232990264893){
     s0+=58.0;
     s1+=331.0;
    } else {
     s0+=204.0;
     s1+=4.0;
    }
   } else {
    if(i17<4.351139068603516e-06){
     s0+=101.0;
     s1+=1819.0;
    } else {
     s1+=7660.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i3<0.0006611049175262451){
  if(i12<1.0451608896255493){
   if(i2<0.07800713181495667){
    if(i23<0.0002639312588144094){
     s0+=50342.0;
     s1+=159.0;
    } else {
     s0+=11580.0;
     s1+=695.0;
    }
   } else {
    if(i27<1.082772970199585){
     s0+=108.0;
    } else {
     s0+=162.0;
     s1+=243.0;
    }
   }
  } else {
   if(i27<1.229804515838623){
    if(i2<0.061864376068115234){
     s0+=1201.0;
     s1+=347.0;
    } else {
     s0+=106.0;
     s1+=472.0;
    }
   } else {
    if(i32<0.04071928560733795){
     s0+=1700.0;
     s1+=95.0;
    } else {
     s0+=34.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i29<1.0614044666290283){
   s0+=37.0;
  } else {
   if(i28<0.00015499095025006682){
    if(i42<0.00019931793212890625){
     s0+=44.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i15<1.0035288333892822){
     s0+=21.0;
     s1+=161.0;
    } else {
     s0+=1.0;
     s1+=537.0;
    }
   }
  }
 }
} else {
 if(i41<0.004929053131490946){
  if(i17<9.66489315032959e-05){
   if(i47<0.0018777521327137947){
    if(i41<0.00044969620648771524){
     s0+=1234.0;
     s1+=51.0;
    } else {
     s0+=3070.0;
     s1+=1275.0;
    }
   } else {
    if(i20<0.00444300239905715){
     s0+=266.0;
     s1+=14.0;
    } else {
     s0+=71.0;
     s1+=729.0;
    }
   }
  } else {
   if(i4<4.202127456665039e-06){
    if(i1<0.21120643615722656){
     s0+=82.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s0+=11.0;
     s1+=2009.0;
    } else {
     s0+=173.0;
     s1+=474.0;
    }
   }
  }
 } else {
  if(i2<0.099906325340271){
   if(i63<0.010541564784944057){
    if(i10<-0.0005601048469543457){
     s0+=684.0;
     s1+=33.0;
    } else {
     s0+=45.0;
     s1+=50.0;
    }
   } else {
    if(i65<0.0012097940780222416){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=32.0;
     s1+=430.0;
    }
   }
  } else {
   if(i34<1.2590827941894531){
    if(i5<-6.753267371095717e-05){
     s1+=47.0;
    } else {
     s0+=31.0;
     s1+=9.0;
    }
   } else {
    if(i51<-0.000539203523658216){
     s0+=5.0;
     s1+=7406.0;
    } else {
     s0+=65.0;
     s1+=1816.0;
    }
   }
  }
 }
}
if(i0<0.08341756463050842){
 if(i28<0.0002956319658551365){
  if(i31<1.0598037242889404){
   if(i23<0.0003303385165054351){
    s0+=41239.0;
   } else {
    if(i27<1.0840110778808594){
     s0+=426.0;
    } else {
     s0+=133.0;
     s1+=12.0;
    }
   }
  } else {
   if(i29<1.103413462638855){
    if(i5<-2.6745652576209977e-05){
     s0+=40.0;
     s1+=307.0;
    } else {
     s0+=2940.0;
     s1+=302.0;
    }
   } else {
    if(i17<0.00023490190505981445){
     s0+=11770.0;
     s1+=115.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i15<1.00189208984375){
   if(i3<-0.00032144784927368164){
    if(i30<0.0024680788628757){
     s0+=2482.0;
     s1+=352.0;
    } else {
     s0+=5904.0;
     s1+=71.0;
    }
   } else {
    if(i71<0.00039235950680449605){
     s0+=3019.0;
     s1+=524.0;
    } else {
     s0+=1043.0;
     s1+=640.0;
    }
   }
  } else {
   if(i7<0.0004897713661193848){
    if(i27<1.1386182308197021){
     s0+=5.0;
     s1+=122.0;
    } else {
     s0+=348.0;
     s1+=59.0;
    }
   } else {
    if(i55<1.0021655559539795){
     s0+=7.0;
     s1+=600.0;
    } else {
     s0+=30.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i5<-1.270825850951951e-05){
  if(i1<0.12421345710754395){
   if(i41<0.0021158182062208652){
    if(i27<1.2392117977142334){
     s0+=21.0;
     s1+=1674.0;
    } else {
     s0+=79.0;
     s1+=13.0;
    }
   } else {
    if(i45<0.00999489426612854){
     s0+=30.0;
     s1+=473.0;
    } else {
     s0+=357.0;
     s1+=38.0;
    }
   }
  } else {
   if(i41<0.0005819599027745426){
    if(i6<1.0011872053146362){
     s0+=37.0;
     s1+=6.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i2<0.16803422570228577){
     s0+=112.0;
     s1+=1946.0;
    } else {
     s0+=31.0;
     s1+=9536.0;
    }
   }
  }
 } else {
  if(i14<0.9985203742980957){
   s0+=392.0;
  } else {
   if(i50<0.06313502788543701){
    if(i77<0.00010548182763159275){
     s1+=164.0;
    } else {
     s0+=7.0;
     s1+=14.0;
    }
   } else {
    if(i30<0.00490421149879694){
     s0+=497.0;
     s1+=83.0;
    } else {
     s0+=65.0;
     s1+=108.0;
    }
   }
  }
 }
}
if(i8<0.0713091790676117){
 if(i0<0.07557624578475952){
  if(i3<0.0006218850612640381){
   if(i56<-0.002229064702987671){
    if(i43<0.0021455702371895313){
     s0+=1776.0;
     s1+=648.0;
    } else {
     s0+=3838.0;
     s1+=224.0;
    }
   } else {
    if(i75<0.04532010480761528){
     s0+=55304.0;
     s1+=374.0;
    } else {
     s0+=7438.0;
     s1+=483.0;
    }
   }
  } else {
   if(i6<1.0041322708129883){
    if(i67<-3.6156379792373627e-06){
     s0+=154.0;
     s1+=14.0;
    } else {
     s0+=112.0;
     s1+=248.0;
    }
   } else {
    if(i53<1.0007829666137695){
     s0+=15.0;
     s1+=506.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i4<-3.9517879486083984e-05){
   if(i71<0.0008379282662644982){
    if(i6<0.9967716932296753){
     s0+=197.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=14.0;
    }
   } else {
    if(i46<0.9643396735191345){
     s0+=5.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i35<0.05076828598976135){
    if(i56<0.0073912739753723145){
     s0+=28.0;
     s1+=1940.0;
    } else {
     s0+=24.0;
     s1+=59.0;
    }
   } else {
    if(i38<-0.0024719536304473877){
     s1+=10.0;
    } else {
     s0+=126.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i14<0.9987605810165405){
  if(i40<0.03684263676404953){
   if(i11<1.0476436614990234){
    if(i23<0.0004822263726964593){
     s0+=159.0;
     s1+=3.0;
    } else {
     s0+=64.0;
     s1+=43.0;
    }
   } else {
    if(i70<0.0016126249684020877){
     s0+=418.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   s1+=13.0;
  }
 } else {
  if(i0<0.11695581674575806){
   if(i57<0.0038907527923583984){
    if(i21<1.0060317516326904){
     s0+=617.0;
     s1+=671.0;
    } else {
     s0+=42.0;
     s1+=497.0;
    }
   } else {
    if(i43<0.001267922343686223){
     s0+=16.0;
     s1+=17.0;
    } else {
     s0+=382.0;
     s1+=24.0;
    }
   }
  } else {
   if(i3<0.0005078911781311035){
    if(i58<-0.031612738966941833){
     s0+=310.0;
     s1+=577.0;
    } else {
     s0+=56.0;
     s1+=1391.0;
    }
   } else {
    if(i55<1.0016767978668213){
     s0+=24.0;
     s1+=8902.0;
    } else {
     s0+=19.0;
     s1+=389.0;
    }
   }
  }
 }
}
if(i13<1.0081918239593506){
 if(i44<-3.730199750862084e-05){
  if(i20<0.008274402469396591){
   if(i71<0.0010776397539302707){
    s0+=196.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i12<1.0889548063278198){
    if(i3<0.0010637640953063965){
     s0+=215.0;
     s1+=43.0;
    } else {
     s0+=6.0;
     s1+=100.0;
    }
   } else {
    s1+=1068.0;
   }
  }
 } else {
  if(i12<1.0450963973999023){
   if(i0<0.08297067880630493){
    if(i60<0.010508358478546143){
     s0+=44730.0;
     s1+=131.0;
    } else {
     s0+=17090.0;
     s1+=771.0;
    }
   } else {
    if(i14<0.9980460405349731){
     s0+=81.0;
    } else {
     s0+=76.0;
     s1+=311.0;
    }
   }
  } else {
   if(i19<1.0004520416259766){
    if(i8<0.0604398250579834){
     s0+=4864.0;
     s1+=596.0;
    } else {
     s0+=1280.0;
     s1+=926.0;
    }
   } else {
    if(i8<0.10923048853874207){
     s0+=1253.0;
     s1+=1216.0;
    } else {
     s0+=49.0;
     s1+=856.0;
    }
   }
  }
 }
} else {
 if(i5<-4.222309507895261e-05){
  if(i33<0.9989216923713684){
   if(i77<0.00010837355512194335){
    s0+=6.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i3<0.0011821389198303223){
    if(i53<0.9999426603317261){
     s0+=4.0;
     s1+=1906.0;
    } else {
     s0+=104.0;
     s1+=711.0;
    }
   } else {
    if(i13<1.0154021978378296){
     s0+=10.0;
     s1+=729.0;
    } else {
     s1+=6966.0;
    }
   }
  }
 } else {
  if(i8<0.1765328049659729){
   if(i49<0.025646286085247993){
    if(i20<0.005060967523604631){
     s0+=248.0;
     s1+=140.0;
    } else {
     s0+=3.0;
     s1+=88.0;
    }
   } else {
    if(i29<1.150288462638855){
     s0+=114.0;
     s1+=153.0;
    } else {
     s0+=807.0;
     s1+=63.0;
    }
   }
  } else {
   if(i61<0.10276836156845093){
    if(i31<1.3432352542877197){
     s0+=5.0;
     s1+=248.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i1<0.30096694827079773){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i13<1.0083768367767334){
  if(i22<1.0494916439056396){
   if(i66<0.0007894345908425748){
    if(i42<0.00017064809799194336){
     s0+=50368.0;
     s1+=72.0;
    } else {
     s0+=3143.0;
     s1+=96.0;
    }
   } else {
    if(i40<0.0016955274622887373){
     s0+=1120.0;
     s1+=276.0;
    } else {
     s0+=1631.0;
     s1+=1.0;
    }
   }
  } else {
   if(i8<0.06006056070327759){
    if(i2<0.06623813509941101){
     s0+=8247.0;
     s1+=844.0;
    } else {
     s0+=49.0;
     s1+=249.0;
    }
   } else {
    if(i67<2.339505954296328e-05){
     s0+=194.0;
     s1+=706.0;
    } else {
     s0+=187.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i27<1.2392117977142334){
   if(i19<0.998826265335083){
    if(i36<0.0016287732869386673){
     s0+=30.0;
     s1+=4.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i20<0.001277863048017025){
     s0+=4.0;
     s1+=11.0;
    } else {
     s1+=369.0;
    }
   }
  } else {
   if(i38<-0.0031831860542297363){
    if(i28<0.0001657675311435014){
     s0+=2.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i54<0.03301545977592468){
     s0+=193.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i8<0.09463772177696228){
  if(i6<1.0019927024841309){
   if(i29<1.1037919521331787){
    if(i40<0.00034500251058489084){
     s0+=644.0;
     s1+=26.0;
    } else {
     s0+=468.0;
     s1+=829.0;
    }
   } else {
    if(i20<0.003401698311790824){
     s0+=2411.0;
     s1+=127.0;
    } else {
     s0+=1046.0;
     s1+=569.0;
    }
   }
  } else {
   if(i20<0.0022666952572762966){
    if(i0<0.06829550862312317){
     s0+=124.0;
     s1+=28.0;
    } else {
     s0+=23.0;
     s1+=135.0;
    }
   } else {
    if(i17<-0.00010442733764648438){
     s0+=129.0;
     s1+=114.0;
    } else {
     s0+=46.0;
     s1+=2118.0;
    }
   }
  }
 } else {
  if(i44<-3.0534934012393933e-06){
   if(i20<0.0038716234266757965){
    if(i64<0.00666278600692749){
     s0+=57.0;
     s1+=429.0;
    } else {
     s0+=206.0;
     s1+=76.0;
    }
   } else {
    if(i51<-0.00026268669171258807){
     s0+=35.0;
     s1+=8842.0;
    } else {
     s0+=70.0;
     s1+=919.0;
    }
   }
  } else {
   if(i41<0.0017013277392834425){
    if(i28<0.0010555643821135163){
     s0+=18.0;
     s1+=45.0;
    } else {
     s0+=507.0;
     s1+=14.0;
    }
   } else {
    if(i29<1.2527469396591187){
     s0+=11.0;
    } else {
     s0+=3.0;
     s1+=213.0;
    }
   }
  }
 }
}
if(i10<0.0008098483085632324){
 if(i20<0.0050200289115309715){
  if(i26<0.026220187544822693){
   if(i41<0.00033283239463344216){
    if(i41<0.00032068451400846243){
     s0+=36246.0;
    } else {
     s0+=252.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.0756523609161377){
     s0+=24914.0;
     s1+=966.0;
    } else {
     s0+=1597.0;
     s1+=648.0;
    }
   }
  } else {
   if(i17<-0.00019249320030212402){
    if(i3<-0.0006296634674072266){
     s0+=1719.0;
     s1+=43.0;
    } else {
     s0+=180.0;
     s1+=85.0;
    }
   } else {
    if(i16<-1.4930963516235352e-05){
     s0+=86.0;
     s1+=3.0;
    } else {
     s0+=487.0;
     s1+=1265.0;
    }
   }
  }
 } else {
  if(i17<-0.00027441978454589844){
   if(i11<1.082028865814209){
    if(i32<0.07014819234609604){
     s0+=3976.0;
     s1+=133.0;
    } else {
     s0+=1.0;
     s1+=42.0;
    }
   } else {
    if(i47<0.0013851639814674854){
     s0+=10.0;
    } else {
     s0+=23.0;
     s1+=520.0;
    }
   }
  } else {
   if(i4<-4.0471553802490234e-05){
    if(i51<-0.001049388898536563){
     s1+=26.0;
    } else {
     s0+=816.0;
     s1+=22.0;
    }
   } else {
    if(i2<0.034482330083847046){
     s0+=174.0;
     s1+=98.0;
    } else {
     s0+=186.0;
     s1+=3300.0;
    }
   }
  }
 }
} else {
 if(i12<1.0385410785675049){
  if(i24<0.9938399195671082){
   s1+=16.0;
  } else {
   if(i0<0.071225106716156){
    if(i44<-1.6733500160626136e-05){
     s1+=2.0;
    } else {
     s0+=271.0;
    }
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i5<-4.2801930248970166e-05){
   if(i74<5.540061465580948e-06){
    if(i74<3.016633854713291e-06){
     s0+=38.0;
     s1+=9559.0;
    } else {
     s0+=33.0;
     s1+=122.0;
    }
   } else {
    if(i2<0.17039194703102112){
     s0+=40.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i32<0.008784431964159012){
    if(i23<0.013606367632746696){
     s0+=188.0;
     s1+=7.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i31<1.1558825969696045){
     s1+=65.0;
    } else {
     s0+=29.0;
     s1+=28.0;
    }
   }
  }
 }
}
if(i1<0.08441624045372009){
 if(i64<-0.0024153590202331543){
  if(i4<1.3649463653564453e-05){
   if(i41<0.00044038399937562644){
    if(i19<1.0015045404434204){
     s0+=886.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i36<0.0008774693123996258){
     s0+=96.0;
     s1+=192.0;
    } else {
     s0+=1287.0;
     s1+=194.0;
    }
   }
  } else {
   if(i20<0.002882839646190405){
    if(i57<0.0025810599327087402){
     s0+=43.0;
     s1+=78.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i1<0.018725603818893433){
     s0+=36.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=438.0;
    }
   }
  }
 } else {
  if(i0<0.0692034363746643){
   if(i26<0.012930270284414291){
    if(i13<1.0084377527236938){
     s0+=52025.0;
     s1+=312.0;
    } else {
     s0+=158.0;
     s1+=96.0;
    }
   } else {
    if(i15<0.9944905042648315){
     s0+=9011.0;
     s1+=51.0;
    } else {
     s0+=3924.0;
     s1+=824.0;
    }
   }
  } else {
   if(i5<-2.556044637458399e-05){
    if(i41<0.0018663633381947875){
     s0+=39.0;
     s1+=422.0;
    } else {
     s0+=301.0;
     s1+=96.0;
    }
   } else {
    if(i39<0.02602851390838623){
     s0+=13.0;
     s1+=133.0;
    } else {
     s0+=1386.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i5<-1.4545135854859836e-05){
  if(i0<0.0844888687133789){
   if(i46<1.0077171325683594){
    if(i34<1.1220744848251343){
     s0+=12.0;
     s1+=10.0;
    } else {
     s0+=113.0;
     s1+=5.0;
    }
   } else {
    if(i10<-0.00042682886123657227){
     s0+=5.0;
    } else {
     s1+=57.0;
    }
   }
  } else {
   if(i33<0.9988019466400146){
    if(i23<0.0372982993721962){
     s0+=52.0;
     s1+=3.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i0<0.1274578869342804){
     s0+=383.0;
     s1+=2329.0;
    } else {
     s0+=127.0;
     s1+=11145.0;
    }
   }
  }
 } else {
  if(i7<-0.00039565563201904297){
   s0+=595.0;
  } else {
   if(i35<0.058552324771881104){
    if(i23<0.00023797887843102217){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=35.0;
     s1+=299.0;
    }
   } else {
    if(i2<0.288750559091568){
     s0+=648.0;
     s1+=84.0;
    } else {
     s0+=15.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i5<-7.496170292142779e-05){
 if(i9<0.9797049164772034){
  if(i47<0.006460332777351141){
   if(i77<0.00027618903550319374){
    if(i2<0.10169145464897156){
     s0+=620.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i78<-0.015220731496810913){
    s0+=2.0;
   } else {
    s1+=101.0;
   }
  }
 } else {
  if(i29<1.0677311420440674){
   s0+=167.0;
  } else {
   if(i21<0.9986826181411743){
    if(i66<0.0009595605079084635){
     s0+=82.0;
     s1+=92.0;
    } else {
     s0+=80.0;
     s1+=1376.0;
    }
   } else {
    if(i1<0.1319286823272705){
     s0+=51.0;
     s1+=1113.0;
    } else {
     s0+=6.0;
     s1+=8582.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005651116371154785){
  if(i1<0.08334261178970337){
   if(i43<0.0002958982950076461){
    if(i12<1.0486564636230469){
     s0+=45816.0;
     s1+=46.0;
    } else {
     s0+=462.0;
     s1+=62.0;
    }
   } else {
    if(i15<0.9946298599243164){
     s0+=12661.0;
     s1+=169.0;
    } else {
     s0+=8813.0;
     s1+=1763.0;
    }
   }
  } else {
   if(i38<0.004777848720550537){
    if(i7<-0.00041306018829345703){
     s0+=477.0;
     s1+=5.0;
    } else {
     s0+=377.0;
     s1+=2150.0;
    }
   } else {
    if(i20<0.005828134249895811){
     s0+=969.0;
     s1+=260.0;
    } else {
     s0+=80.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i20<0.002312249969691038){
   if(i70<0.00025953195290639997){
    if(i77<0.00010292223305441439){
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i46<0.9861118793487549){
     s1+=2.0;
    } else {
     s0+=229.0;
     s1+=9.0;
    }
   }
  } else {
   if(i36<0.0003760774270631373){
    s0+=46.0;
   } else {
    if(i55<1.0016189813613892){
     s0+=54.0;
     s1+=1138.0;
    } else {
     s0+=31.0;
     s1+=14.0;
    }
   }
  }
 }
}
if(i3<0.0005651116371154785){
 if(i0<0.0791272521018982){
  if(i43<0.00031217283685691655){
   if(i13<1.0081498622894287){
    if(i11<1.0581047534942627){
     s0+=47093.0;
     s1+=58.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   } else {
    if(i40<0.0005973070510663092){
     s1+=61.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i41<0.0014458736404776573){
    if(i4<1.1146068572998047e-05){
     s0+=7795.0;
     s1+=1166.0;
    } else {
     s0+=282.0;
     s1+=251.0;
    }
   } else {
    if(i11<1.0410068035125732){
     s0+=11290.0;
     s1+=106.0;
    } else {
     s0+=2279.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i4<-5.266070365905762e-05){
   if(i33<0.9992927312850952){
    if(i47<0.0019405233906581998){
     s0+=371.0;
    } else {
     s0+=40.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.11826950311660767){
     s0+=117.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=94.0;
    }
   }
  } else {
   if(i38<0.00421220064163208){
    if(i33<0.9989756345748901){
     s0+=89.0;
     s1+=6.0;
    } else {
     s0+=286.0;
     s1+=2474.0;
    }
   } else {
    if(i51<-0.00018589518731459975){
     s0+=476.0;
     s1+=935.0;
    } else {
     s0+=436.0;
     s1+=79.0;
    }
   }
  }
 }
} else {
 if(i5<-4.2401719838380814e-05){
  if(i59<8.659398008603603e-05){
   if(i32<0.002567714313045144){
    if(i55<1.0021827220916748){
     s1+=118.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i36<0.006582237314432859){
     s0+=12.0;
     s1+=2228.0;
    } else {
     s1+=6534.0;
    }
   }
  } else {
   if(i40<0.00849453080445528){
    if(i19<0.9976301193237305){
     s0+=28.0;
    } else {
     s0+=142.0;
     s1+=685.0;
    }
   } else {
    if(i59<0.00031472943373955786){
     s0+=10.0;
     s1+=1814.0;
    } else {
     s0+=21.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i20<0.004145922139286995){
   if(i51<1.8235965399071574e-05){
    if(i70<0.00026675104163587093){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=264.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   s1+=241.0;
  }
 }
}
if(i0<0.0816052258014679){
 if(i67<-7.962589734233916e-06){
  if(i5<-0.00014481728430837393){
   if(i77<0.00016434401914011687){
    s1+=38.0;
   } else {
    if(i8<0.022641867399215698){
     s0+=5.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   s1+=252.0;
  }
 } else {
  if(i16<1.8537044525146484e-05){
   if(i23<0.000302087573800236){
    if(i52<1.0111207962036133){
     s0+=52873.0;
     s1+=267.0;
    } else {
     s0+=59.0;
     s1+=68.0;
    }
   } else {
    if(i29<1.103413462638855){
     s0+=3885.0;
     s1+=1244.0;
    } else {
     s0+=10989.0;
     s1+=365.0;
    }
   }
  } else {
   if(i65<0.00502984132617712){
    if(i70<0.0010407979134470224){
     s0+=634.0;
     s1+=373.0;
    } else {
     s0+=642.0;
     s1+=25.0;
    }
   } else {
    if(i49<0.15725193917751312){
     s0+=11.0;
     s1+=250.0;
    } else {
     s0+=93.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i10<0.0002371072769165039){
  if(i6<0.996038556098938){
   if(i44<-1.0808560546138324e-05){
    if(i34<1.4917596578598022){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=113.0;
    }
   } else {
    if(i19<0.9981918931007385){
     s0+=392.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  } else {
   if(i72<1.0209163427352905){
    if(i35<0.05893644690513611){
     s0+=36.0;
     s1+=1773.0;
    } else {
     s0+=179.0;
     s1+=473.0;
    }
   } else {
    if(i26<0.0306271780282259){
     s0+=707.0;
     s1+=258.0;
    } else {
     s0+=122.0;
     s1+=1092.0;
    }
   }
  }
 } else {
  if(i42<-0.0002504289150238037){
   if(i75<0.2185155153274536){
    s0+=22.0;
   } else {
    s1+=17.0;
   }
  } else {
   if(i31<1.0558756589889526){
    s0+=8.0;
   } else {
    if(i32<0.018036190420389175){
     s0+=163.0;
     s1+=2110.0;
    } else {
     s0+=14.0;
     s1+=8540.0;
    }
   }
  }
 }
}
if(i25<1.008852481842041){
 if(i0<0.08155468106269836){
  if(i16<1.9252300262451172e-05){
   if(i28<0.0002971245558001101){
    if(i12<1.0436501502990723){
     s0+=53186.0;
     s1+=246.0;
    } else {
     s0+=2460.0;
     s1+=192.0;
    }
   } else {
    if(i46<0.9763707518577576){
     s0+=4968.0;
     s1+=62.0;
    } else {
     s0+=5782.0;
     s1+=1189.0;
    }
   }
  } else {
   if(i3<0.0007185637950897217){
    if(i63<0.016551539301872253){
     s0+=1018.0;
     s1+=116.0;
    } else {
     s0+=21.0;
     s1+=79.0;
    }
   } else {
    if(i23<0.0001963864779099822){
     s0+=25.0;
    } else {
     s0+=81.0;
     s1+=602.0;
    }
   }
  }
 } else {
  if(i7<-0.00036221742630004883){
   if(i55<1.0002562999725342){
    if(i17<-8.097290992736816e-05){
     s0+=315.0;
    } else {
     s0+=31.0;
     s1+=2.0;
    }
   } else {
    if(i62<0.05836590379476547){
     s0+=31.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i5<-9.221701475325972e-06){
    if(i2<0.10555663704872131){
     s0+=269.0;
     s1+=753.0;
    } else {
     s0+=74.0;
     s1+=2715.0;
    }
   } else {
    if(i18<1.0370560884475708){
     s0+=21.0;
     s1+=113.0;
    } else {
     s0+=274.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i5<-4.236973472870886e-05){
  if(i1<0.06581196188926697){
   if(i36<0.00286070816218853){
    if(i11<1.0773311853408813){
     s1+=116.0;
    } else {
     s0+=8.0;
     s1+=4.0;
    }
   } else {
    if(i45<-0.011514008045196533){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=137.0;
     s1+=7.0;
    }
   }
  } else {
   if(i5<-5.8065859775524586e-05){
    if(i21<1.0029101371765137){
     s0+=32.0;
     s1+=197.0;
    } else {
     s0+=34.0;
     s1+=9401.0;
    }
   } else {
    if(i7<-0.0003224015235900879){
     s0+=19.0;
    } else {
     s0+=70.0;
     s1+=569.0;
    }
   }
  }
 } else {
  if(i27<1.255998969078064){
   if(i2<0.07533448934555054){
    if(i0<0.07648444175720215){
     s0+=708.0;
     s1+=79.0;
    } else {
     s0+=9.0;
     s1+=59.0;
    }
   } else {
    if(i67<6.401292012014892e-06){
     s0+=245.0;
     s1+=403.0;
    } else {
     s0+=1.0;
     s1+=163.0;
    }
   }
  } else {
   if(i36<0.00781124085187912){
    if(i60<0.11785343289375305){
     s0+=1188.0;
     s1+=14.0;
    } else {
     s0+=24.0;
     s1+=8.0;
    }
   } else {
    if(i67<5.6174561905208975e-05){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i16<1.9252300262451172e-05){
  if(i12<1.0452277660369873){
   if(i66<0.0007819407619535923){
    if(i32<0.006594734266400337){
     s0+=40832.0;
     s1+=49.0;
    } else {
     s0+=15452.0;
     s1+=355.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s0+=1880.0;
     s1+=590.0;
    } else {
     s0+=3293.0;
     s1+=37.0;
    }
   }
  } else {
   if(i26<0.021863065659999847){
    if(i2<0.07446813583374023){
     s0+=4925.0;
     s1+=382.0;
    } else {
     s0+=591.0;
     s1+=306.0;
    }
   } else {
    if(i4<-4.124641418457031e-05){
     s0+=690.0;
     s1+=182.0;
    } else {
     s0+=551.0;
     s1+=1731.0;
    }
   }
  }
 } else {
  if(i65<0.002043986227363348){
   if(i22<1.064502239227295){
    if(i15<1.003828525543213){
     s0+=693.0;
     s1+=45.0;
    } else {
     s0+=20.0;
     s1+=50.0;
    }
   } else {
    if(i6<1.0021263360977173){
     s0+=394.0;
     s1+=171.0;
    } else {
     s0+=90.0;
     s1+=692.0;
    }
   }
  } else {
   if(i0<0.023605316877365112){
    if(i10<-0.002256155014038086){
     s0+=166.0;
     s1+=10.0;
    } else {
     s0+=25.0;
     s1+=58.0;
    }
   } else {
    if(i2<0.038139671087265015){
     s0+=25.0;
     s1+=63.0;
    } else {
     s0+=32.0;
     s1+=1438.0;
    }
   }
  }
 }
} else {
 if(i19<1.0027811527252197){
  if(i5<-3.616909816628322e-05){
   if(i53<0.9999241828918457){
    if(i14<0.9985685348510742){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=1948.0;
    }
   } else {
    if(i0<0.15336495637893677){
     s0+=198.0;
     s1+=170.0;
    } else {
     s0+=10.0;
     s1+=339.0;
    }
   }
  } else {
   if(i2<0.10610967874526978){
    if(i62<0.03100731410086155){
     s0+=169.0;
     s1+=80.0;
    } else {
     s0+=666.0;
     s1+=49.0;
    }
   } else {
    if(i68<-0.011169122532010078){
     s0+=105.0;
     s1+=33.0;
    } else {
     s0+=33.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i3<0.0009390115737915039){
   if(i28<0.00017545002629049122){
    if(i34<1.175731897354126){
     s1+=6.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   } else {
    if(i51<-9.169810800813138e-05){
     s0+=62.0;
     s1+=593.0;
    } else {
     s0+=33.0;
     s1+=15.0;
    }
   }
  } else {
   s1+=7573.0;
  }
 }
}
if(i8<0.07267343997955322){
 if(i1<0.08022052049636841){
  if(i6<1.0024909973144531){
   if(i22<1.0477051734924316){
    if(i71<0.00025583733804523945){
     s0+=49473.0;
     s1+=55.0;
    } else {
     s0+=5936.0;
     s1+=215.0;
    }
   } else {
    if(i42<-3.165006637573242e-05){
     s0+=4541.0;
     s1+=153.0;
    } else {
     s0+=8431.0;
     s1+=1472.0;
    }
   }
  } else {
   if(i57<0.0017723441123962402){
    if(i44<-1.4116389138507657e-05){
     s0+=70.0;
     s1+=802.0;
    } else {
     s0+=97.0;
     s1+=24.0;
    }
   } else {
    if(i42<0.0002517402172088623){
     s0+=78.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i3<-0.0005834102630615234){
   if(i26<0.02366812154650688){
    if(i6<0.9926419258117676){
     s0+=300.0;
    } else {
     s0+=81.0;
     s1+=18.0;
    }
   } else {
    if(i51<5.030316242482513e-05){
     s0+=16.0;
     s1+=30.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i54<0.06045880913734436){
    if(i35<0.04952344298362732){
     s0+=41.0;
     s1+=1915.0;
    } else {
     s0+=80.0;
     s1+=42.0;
    }
   } else {
    if(i35<0.04766249656677246){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=48.0;
    }
   }
  }
 }
} else {
 if(i0<0.10779157280921936){
  if(i45<0.01375800371170044){
   if(i31<1.0595405101776123){
    if(i63<0.001396741485223174){
     s0+=135.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i58<-0.021657610312104225){
     s0+=127.0;
     s1+=8.0;
    } else {
     s0+=193.0;
     s1+=808.0;
    }
   }
  } else {
   if(i39<0.02576315402984619){
    if(i8<0.08044883608818054){
     s0+=6.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i67<-7.4385870902915485e-06){
     s1+=5.0;
    } else {
     s0+=660.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i29<1.368408203125){
   if(i39<0.07461825013160706){
    if(i3<-0.0010925233364105225){
     s0+=14.0;
     s1+=3.0;
    } else {
     s0+=80.0;
     s1+=3621.0;
    }
   } else {
    if(i5<-4.2500600102357566e-05){
     s0+=60.0;
     s1+=693.0;
    } else {
     s0+=637.0;
     s1+=232.0;
    }
   }
  } else {
   if(i8<0.12207424640655518){
    if(i70<0.00019385706400498748){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=543.0;
    }
   } else {
    s1+=6392.0;
   }
  }
 }
}
if(i1<0.08334505558013916){
 if(i12<1.0451608896255493){
  if(i75<0.04676324129104614){
   if(i79<0.0003543536877259612){
    if(i14<1.0020966529846191){
     s0+=53825.0;
     s1+=326.0;
    } else {
     s0+=19.0;
     s1+=37.0;
    }
   } else {
    if(i63<0.005222058854997158){
     s0+=14.0;
     s1+=32.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   }
  } else {
   if(i29<1.1550614833831787){
    if(i44<-7.764758265693672e-06){
     s0+=89.0;
     s1+=173.0;
    } else {
     s0+=2574.0;
     s1+=324.0;
    }
   } else {
    if(i74<-2.6669467843021266e-06){
     s1+=26.0;
    } else {
     s0+=5147.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i6<1.0024573802947998){
   if(i34<1.1037919521331787){
    if(i44<-4.952510607836302e-06){
     s0+=112.0;
     s1+=523.0;
    } else {
     s0+=1669.0;
     s1+=427.0;
    }
   } else {
    if(i70<0.0018032684456557035){
     s0+=5237.0;
     s1+=357.0;
    } else {
     s0+=4.0;
     s1+=69.0;
    }
   }
  } else {
   if(i41<0.0018566767685115337){
    s1+=439.0;
   } else {
    if(i63<0.013661686331033707){
     s0+=177.0;
     s1+=82.0;
    } else {
     s0+=13.0;
     s1+=249.0;
    }
   }
  }
 }
} else {
 if(i42<-0.00014004111289978027){
  if(i19<0.999664306640625){
   if(i5<-4.225862357998267e-05){
    if(i60<0.02485589310526848){
     s0+=17.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   } else {
    s0+=699.0;
   }
  } else {
   if(i74<8.422281098319218e-06){
    s1+=81.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i0<0.1111832857131958){
   if(i43<0.0019181191455572844){
    if(i5<-4.753750545205548e-06){
     s0+=130.0;
     s1+=1353.0;
    } else {
     s0+=120.0;
     s1+=52.0;
    }
   } else {
    if(i3<0.0008410215377807617){
     s0+=625.0;
     s1+=242.0;
    } else {
     s0+=20.0;
     s1+=174.0;
    }
   }
  } else {
   if(i20<0.001685600494965911){
    if(i35<0.07771500945091248){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=246.0;
     s1+=50.0;
    }
   } else {
    if(i32<0.033858612179756165){
     s0+=202.0;
     s1+=4051.0;
    } else {
     s0+=8.0;
     s1+=8022.0;
    }
   }
  }
 }
}
if(i5<-6.400050187949091e-05){
 if(i11<1.0326346158981323){
  if(i67<1.5227175026666373e-05){
   if(i42<6.80685043334961e-05){
    if(i55<0.9987185001373291){
     s0+=155.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    s1+=224.0;
   }
  } else {
   if(i0<0.06983548402786255){
    if(i6<1.0022250413894653){
     s0+=782.0;
     s1+=20.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i16<5.602836608886719e-06){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<1.0008080005645752){
   if(i76<1.00687575340271){
    if(i12<1.0696518421173096){
     s0+=106.0;
     s1+=41.0;
    } else {
     s0+=20.0;
     s1+=526.0;
    }
   } else {
    if(i66<0.0045978957787156105){
     s0+=110.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=29.0;
    }
   }
  } else {
   if(i8<0.016439437866210938){
    if(i75<0.22130084037780762){
     s0+=2.0;
     s1+=65.0;
    } else {
     s0+=52.0;
     s1+=47.0;
    }
   } else {
    if(i0<0.08263787627220154){
     s0+=121.0;
     s1+=553.0;
    } else {
     s0+=72.0;
     s1+=10343.0;
    }
   }
  }
 }
} else {
 if(i13<1.0067918300628662){
  if(i11<1.0398883819580078){
   if(i2<0.07774066925048828){
    if(i71<0.0002805837139021605){
     s0+=53735.0;
     s1+=329.0;
    } else {
     s0+=7971.0;
     s1+=770.0;
    }
   } else {
    if(i67<1.9494760636007413e-05){
     s0+=43.0;
     s1+=323.0;
    } else {
     s0+=150.0;
     s1+=25.0;
    }
   }
  } else {
   if(i43<0.0002921199193224311){
    if(i77<9.010385838337243e-06){
     s1+=2.0;
    } else {
     s0+=1218.0;
    }
   } else {
    if(i1<0.08232194185256958){
     s0+=3842.0;
     s1+=678.0;
    } else {
     s0+=1003.0;
     s1+=1108.0;
    }
   }
  }
 } else {
  if(i5<-4.1100982343778014e-05){
   if(i36<0.002804333344101906){
    if(i56<0.011427342891693115){
     s1+=734.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i75<0.13055208325386047){
     s0+=106.0;
     s1+=37.0;
    } else {
     s0+=8.0;
     s1+=144.0;
    }
   }
  } else {
   if(i70<0.0006287908763624728){
    if(i0<0.11332541704177856){
     s0+=1514.0;
     s1+=156.0;
    } else {
     s0+=189.0;
     s1+=420.0;
    }
   } else {
    if(i55<0.9990649223327637){
     s0+=95.0;
    } else {
     s0+=27.0;
     s1+=245.0;
    }
   }
  }
 }
}
if(i0<0.08468136191368103){
 if(i16<2.3066997528076172e-05){
  if(i12<1.0451585054397583){
   if(i65<0.0016259596450254321){
    if(i25<1.008317470550537){
     s0+=58256.0;
     s1+=409.0;
    } else {
     s0+=78.0;
     s1+=30.0;
    }
   } else {
    if(i31<1.1311933994293213){
     s0+=1597.0;
     s1+=354.0;
    } else {
     s0+=1982.0;
     s1+=12.0;
    }
   }
  } else {
   if(i3<0.00021088123321533203){
    if(i34<1.1037919521331787){
     s0+=1714.0;
     s1+=678.0;
    } else {
     s0+=4568.0;
     s1+=258.0;
    }
   } else {
    if(i5<-4.279288259567693e-05){
     s0+=62.0;
     s1+=289.0;
    } else {
     s0+=563.0;
     s1+=186.0;
    }
   }
  }
 } else {
  if(i54<-0.004613757133483887){
   if(i6<1.0018925666809082){
    if(i47<0.006586940493434668){
     s0+=229.0;
     s1+=41.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i41<0.008506394922733307){
     s0+=16.0;
     s1+=645.0;
    } else {
     s0+=45.0;
     s1+=84.0;
    }
   }
  } else {
   if(i0<0.06979447603225708){
    if(i69<-1.0300228495907504e-05){
     s0+=423.0;
     s1+=6.0;
    } else {
     s0+=124.0;
     s1+=29.0;
    }
   } else {
    if(i50<0.046560138463974){
     s1+=74.0;
    } else {
     s0+=128.0;
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i20<0.004695648327469826){
  if(i61<0.04043230414390564){
   if(i5<-1.2006265023956075e-05){
    if(i43<0.0054031116887927055){
     s0+=72.0;
     s1+=1565.0;
    } else {
     s0+=136.0;
     s1+=230.0;
    }
   } else {
    if(i71<0.00040962756611406803){
     s0+=246.0;
     s1+=44.0;
    } else {
     s0+=49.0;
     s1+=107.0;
    }
   }
  } else {
   if(i9<1.006304144859314){
    if(i12<1.0845621824264526){
     s0+=159.0;
     s1+=104.0;
    } else {
     s0+=542.0;
     s1+=92.0;
    }
   } else {
    if(i18<1.2510236501693726){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<-0.0008116662502288818){
   if(i75<0.27172422409057617){
    if(i65<0.0024257502518594265){
     s0+=186.0;
     s1+=273.0;
    } else {
     s0+=5.0;
     s1+=140.0;
    }
   } else {
    if(i44<3.955356987717096e-06){
     s0+=22.0;
     s1+=825.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i33<0.9986832141876221){
    if(i69<-1.2884925126854796e-07){
     s1+=1.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i31<1.0611364841461182){
     s0+=1.0;
    } else {
     s0+=23.0;
     s1+=10322.0;
    }
   }
  }
 }
}
if(i3<0.0005481839179992676){
 if(i37<1.0100281238555908){
  if(i43<0.0003559023607522249){
   if(i25<1.0081448554992676){
    if(i48<-0.0020020008087158203){
     s0+=31.0;
     s1+=17.0;
    } else {
     s0+=48669.0;
     s1+=94.0;
    }
   } else {
    if(i77<3.546426887623966e-05){
     s0+=4.0;
     s1+=44.0;
    } else {
     s0+=40.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<0.07653331756591797){
    if(i36<0.0008643007022328675){
     s0+=4372.0;
     s1+=1018.0;
    } else {
     s0+=14495.0;
     s1+=399.0;
    }
   } else {
    if(i44<2.123832018696703e-06){
     s0+=717.0;
     s1+=1789.0;
    } else {
     s0+=259.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i47<0.0019135302864015102){
   if(i43<0.0010264082811772823){
    if(i32<0.009634079411625862){
     s0+=173.0;
     s1+=182.0;
    } else {
     s0+=21.0;
     s1+=443.0;
    }
   } else {
    if(i0<0.12044882774353027){
     s0+=1338.0;
     s1+=63.0;
    } else {
     s0+=315.0;
     s1+=555.0;
    }
   }
  } else {
   if(i22<1.066917896270752){
    if(i27<1.1039612293243408){
     s1+=21.0;
    } else {
     s0+=124.0;
     s1+=1.0;
    }
   } else {
    if(i27<1.5682398080825806){
     s0+=24.0;
     s1+=736.0;
    } else {
     s0+=26.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i31<1.055294156074524){
  s0+=189.0;
 } else {
  if(i12<1.1363511085510254){
   if(i58<-0.042304374277591705){
    if(i66<0.002368753543123603){
     s0+=39.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<-4.432716377777979e-05){
     s0+=201.0;
     s1+=4515.0;
    } else {
     s0+=154.0;
     s1+=250.0;
    }
   }
  } else {
   if(i20<0.002738264622166753){
    if(i29<1.2626419067382812){
     s0+=7.0;
     s1+=1.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i3<0.0005989670753479004){
     s0+=2.0;
     s1+=100.0;
    } else {
     s1+=6665.0;
    }
   }
  }
 }
}
if(i10<0.0007538199424743652){
 if(i2<0.08131903409957886){
  if(i12<1.0428826808929443){
   if(i56<-0.002003222703933716){
    if(i15<0.9941015243530273){
     s0+=2735.0;
     s1+=23.0;
    } else {
     s0+=1700.0;
     s1+=453.0;
    }
   } else {
    if(i6<1.0025334358215332){
     s0+=55858.0;
     s1+=246.0;
    } else {
     s0+=4.0;
     s1+=30.0;
    }
   }
  } else {
   if(i20<0.004338705446571112){
    if(i13<0.9947383403778076){
     s0+=865.0;
     s1+=408.0;
    } else {
     s0+=6152.0;
     s1+=469.0;
    }
   } else {
    if(i40<0.0017074700444936752){
     s0+=100.0;
     s1+=489.0;
    } else {
     s0+=1231.0;
     s1+=448.0;
    }
   }
  }
 } else {
  if(i16<-1.7464160919189453e-05){
   if(i17<-0.0004673004150390625){
    if(i17<-0.0004937946796417236){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=351.0;
   }
  } else {
   if(i1<0.12476512789726257){
    if(i51<-7.182182889664546e-05){
     s0+=435.0;
     s1+=1072.0;
    } else {
     s0+=367.0;
     s1+=213.0;
    }
   } else {
    if(i36<0.0011683558113873005){
     s0+=190.0;
     s1+=92.0;
    } else {
     s0+=224.0;
     s1+=3245.0;
    }
   }
  }
 }
} else {
 if(i12<1.0432554483413696){
  if(i0<0.05816635489463806){
   if(i63<0.009142078459262848){
    if(i77<4.162342520430684e-05){
     s1+=6.0;
    } else {
     s0+=349.0;
     s1+=4.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i7<0.00028568506240844727){
    s0+=4.0;
   } else {
    s1+=49.0;
   }
  }
 } else {
  if(i14<0.9988142251968384){
   if(i45<0.09490776062011719){
    s0+=86.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i36<0.005069097504019737){
    if(i29<1.2369153499603271){
     s0+=78.0;
     s1+=2354.0;
    } else {
     s0+=171.0;
     s1+=97.0;
    }
   } else {
    if(i28<0.0001813083072192967){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=7621.0;
    }
   }
  }
 }
}
if(i2<0.07771384716033936){
 if(i3<0.0006018579006195068){
  if(i45<-0.0058502256870269775){
   if(i3<-0.00031054019927978516){
    if(i1<0.04597151279449463){
     s0+=2151.0;
     s1+=104.0;
    } else {
     s0+=174.0;
     s1+=91.0;
    }
   } else {
    if(i53<0.9998490810394287){
     s0+=272.0;
     s1+=386.0;
    } else {
     s0+=1262.0;
     s1+=169.0;
    }
   }
  } else {
   if(i0<0.07116395235061646){
    if(i75<0.04733101651072502){
     s0+=55539.0;
     s1+=361.0;
    } else {
     s0+=8419.0;
     s1+=553.0;
    }
   } else {
    if(i64<0.0010085701942443848){
     s0+=144.0;
     s1+=249.0;
    } else {
     s0+=935.0;
     s1+=141.0;
    }
   }
  }
 } else {
  if(i55<0.9975895881652832){
   if(i67<-1.3002318155486137e-05){
    s1+=1.0;
   } else {
    s0+=78.0;
   }
  } else {
   if(i44<-1.4116389138507657e-05){
    if(i55<1.0018198490142822){
     s0+=55.0;
     s1+=1029.0;
    } else {
     s0+=79.0;
     s1+=39.0;
    }
   } else {
    if(i55<1.00083327293396){
     s0+=140.0;
     s1+=9.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i19<1.0003366470336914){
  if(i61<0.025274306535720825){
   if(i74<1.161841100838501e-05){
    if(i69<1.5968522575349198e-06){
     s0+=182.0;
     s1+=1813.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i70<0.001667490927502513){
     s0+=56.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i36<0.003442241810262203){
    if(i11<1.0844299793243408){
     s0+=393.0;
     s1+=312.0;
    } else {
     s0+=466.0;
     s1+=29.0;
    }
   } else {
    if(i40<0.008356833830475807){
     s0+=147.0;
     s1+=117.0;
    } else {
     s0+=33.0;
     s1+=415.0;
    }
   }
  }
 } else {
  if(i36<0.006295825354754925){
   if(i6<1.0020976066589355){
    if(i39<0.048396944999694824){
     s0+=36.0;
     s1+=675.0;
    } else {
     s0+=324.0;
     s1+=262.0;
    }
   } else {
    if(i21<1.010695457458496){
     s0+=40.0;
     s1+=457.0;
    } else {
     s0+=8.0;
     s1+=1437.0;
    }
   }
  } else {
   if(i22<1.0649700164794922){
    if(i56<-0.004016786813735962){
     s1+=1.0;
    } else {
     s0+=26.0;
    }
   } else {
    if(i32<0.02369127795100212){
     s0+=28.0;
     s1+=901.0;
    } else {
     s0+=12.0;
     s1+=7613.0;
    }
   }
  }
 }
}
if(i4<3.331899642944336e-05){
 if(i37<1.0100734233856201){
  if(i0<0.0820854902267456){
   if(i23<0.00030656089074909687){
    if(i13<1.0103344917297363){
     s0+=53106.0;
     s1+=213.0;
    } else {
     s0+=8.0;
     s1+=15.0;
    }
   } else {
    if(i41<0.0014749669935554266){
     s0+=5420.0;
     s1+=1184.0;
    } else {
     s0+=8738.0;
     s1+=280.0;
    }
   }
  } else {
   if(i35<0.059477537870407104){
    if(i19<0.9913726449012756){
     s0+=79.0;
     s1+=18.0;
    } else {
     s0+=50.0;
     s1+=1149.0;
    }
   } else {
    if(i39<0.04905879497528076){
     s0+=17.0;
     s1+=104.0;
    } else {
     s0+=675.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i30<0.006547089666128159){
   if(i22<1.0737545490264893){
    if(i31<1.1063084602355957){
     s0+=63.0;
     s1+=569.0;
    } else {
     s0+=110.0;
     s1+=43.0;
    }
   } else {
    if(i32<0.023702966049313545){
     s0+=1489.0;
     s1+=334.0;
    } else {
     s0+=213.0;
     s1+=380.0;
    }
   }
  } else {
   if(i37<1.0168204307556152){
    if(i18<1.079446792602539){
     s0+=82.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   } else {
    if(i74<-1.0520420801185537e-06){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=511.0;
    }
   }
  }
 }
} else {
 if(i29<1.0624027252197266){
  s0+=540.0;
 } else {
  if(i17<-8.869171142578125e-05){
   if(i2<0.11229062080383301){
    if(i26<0.07474636286497116){
     s0+=216.0;
     s1+=192.0;
    } else {
     s0+=3.0;
     s1+=83.0;
    }
   } else {
    if(i71<0.00019288720795884728){
     s0+=28.0;
     s1+=47.0;
    } else {
     s0+=14.0;
     s1+=620.0;
    }
   }
  } else {
   if(i70<0.00046447254135273397){
    if(i0<0.05944150686264038){
     s0+=130.0;
     s1+=56.0;
    } else {
     s0+=95.0;
     s1+=2373.0;
    }
   } else {
    if(i22<1.033584713935852){
     s0+=2.0;
    } else {
     s0+=4.0;
     s1+=8604.0;
    }
   }
  }
 }
}
if(i3<0.0005488693714141846){
 if(i49<0.03146731108427048){
  if(i52<1.0094547271728516){
   if(i0<0.08276823163032532){
    if(i48<-0.0016675591468811035){
     s0+=1965.0;
     s1+=292.0;
    } else {
     s0+=56511.0;
     s1+=391.0;
    }
   } else {
    if(i6<0.9968075156211853){
     s0+=169.0;
     s1+=3.0;
    } else {
     s0+=116.0;
     s1+=219.0;
    }
   }
  } else {
   if(i23<0.000660609919577837){
    if(i4<-4.887580871582031e-06){
     s0+=297.0;
     s1+=43.0;
    } else {
     s0+=256.0;
     s1+=589.0;
    }
   } else {
    if(i2<0.09735721349716187){
     s0+=746.0;
     s1+=27.0;
    } else {
     s0+=138.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i13<1.0160374641418457){
   if(i8<0.06656584143638611){
    if(i29<1.1823735237121582){
     s0+=2484.0;
     s1+=1103.0;
    } else {
     s0+=6454.0;
     s1+=200.0;
    }
   } else {
    if(i7<-0.00041240453720092773){
     s0+=295.0;
     s1+=10.0;
    } else {
     s0+=901.0;
     s1+=1776.0;
    }
   }
  } else {
   if(i70<0.0002634910633787513){
    if(i27<1.255998969078064){
     s0+=8.0;
     s1+=80.0;
    } else {
     s0+=119.0;
     s1+=1.0;
    }
   } else {
    if(i16<-1.9371509552001953e-05){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=493.0;
    }
   }
  }
 }
} else {
 if(i22<1.0419573783874512){
  if(i32<0.011193444952368736){
   s0+=161.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i0<0.06511685252189636){
   if(i31<1.1353518962860107){
    s1+=278.0;
   } else {
    if(i28<0.0006351779447868466){
     s0+=134.0;
     s1+=11.0;
    } else {
     s0+=109.0;
     s1+=232.0;
    }
   }
  } else {
   if(i20<0.0023674815893173218){
    if(i67<-6.905944246682338e-06){
     s1+=157.0;
    } else {
     s0+=39.0;
     s1+=47.0;
    }
   } else {
    if(i20<0.007310018874704838){
     s0+=101.0;
     s1+=2348.0;
    } else {
     s0+=18.0;
     s1+=8702.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i0<0.08023357391357422){
  if(i74<-4.156763679930009e-06){
   if(i59<0.00029194224043749273){
    s1+=100.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i19<1.0023704767227173){
    if(i45<-0.0057353973388671875){
     s0+=2735.0;
     s1+=572.0;
    } else {
     s0+=60927.0;
     s1+=740.0;
    }
   } else {
    if(i34<1.207309603691101){
     s0+=270.0;
     s1+=283.0;
    } else {
     s0+=1017.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i22<1.0494438409805298){
   if(i3<-0.0006937384605407715){
    if(i48<-0.006525099277496338){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=155.0;
    }
   } else {
    if(i34<1.0724589824676514){
     s0+=35.0;
    } else {
     s0+=33.0;
     s1+=47.0;
    }
   }
  } else {
   if(i15<0.9933593273162842){
    if(i30<0.00641845166683197){
     s0+=60.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=47.0;
    }
   } else {
    if(i45<0.013130664825439453){
     s0+=15.0;
     s1+=860.0;
    } else {
     s0+=11.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i2<0.08367037773132324){
  if(i17<0.00014477968215942383){
   if(i3<0.00046688318252563477){
    if(i43<0.0019004088826477528){
     s0+=1774.0;
     s1+=607.0;
    } else {
     s0+=2403.0;
     s1+=169.0;
    }
   } else {
    if(i32<0.022980567067861557){
     s0+=193.0;
     s1+=198.0;
    } else {
     s0+=3.0;
     s1+=165.0;
    }
   }
  } else {
   if(i3<0.0009226799011230469){
    if(i36<0.002522985450923443){
     s0+=20.0;
     s1+=123.0;
    } else {
     s0+=70.0;
     s1+=1.0;
    }
   } else {
    s1+=498.0;
   }
  }
 } else {
  if(i44<8.163889901879884e-07){
   if(i0<0.11970272660255432){
    if(i45<0.015286475419998169){
     s0+=140.0;
     s1+=1197.0;
    } else {
     s0+=415.0;
     s1+=47.0;
    }
   } else {
    if(i70<0.00017230675439350307){
     s0+=174.0;
     s1+=364.0;
    } else {
     s0+=193.0;
     s1+=11031.0;
    }
   }
  } else {
   if(i14<0.9988545775413513){
    if(i42<-0.00013583898544311523){
     s0+=276.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i35<0.05021435022354126){
     s1+=45.0;
    } else {
     s0+=121.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i16<1.8417835235595703e-05){
 if(i73<1.0131361484527588){
  if(i12<1.0450963973999023){
   if(i38<-0.0017633140087127686){
    if(i40<0.002160575706511736){
     s0+=761.0;
     s1+=251.0;
    } else {
     s0+=926.0;
     s1+=16.0;
    }
   } else {
    if(i22<1.0475225448608398){
     s0+=53745.0;
     s1+=195.0;
    } else {
     s0+=5768.0;
     s1+=474.0;
    }
   }
  } else {
   if(i4<1.1146068572998047e-05){
    if(i26<0.02299373969435692){
     s0+=4329.0;
     s1+=528.0;
    } else {
     s0+=830.0;
     s1+=1058.0;
    }
   } else {
    if(i31<1.0566685199737549){
     s0+=140.0;
    } else {
     s0+=322.0;
     s1+=1022.0;
    }
   }
  }
 } else {
  if(i5<-2.850331293302588e-05){
   if(i53<0.9999005794525146){
    if(i51<-2.7485199098009616e-05){
     s0+=90.0;
     s1+=2189.0;
    } else {
     s0+=22.0;
     s1+=6.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s1+=171.0;
    } else {
     s0+=325.0;
     s1+=241.0;
    }
   }
  } else {
   if(i50<0.17180046439170837){
    if(i27<1.1013743877410889){
     s0+=469.0;
     s1+=141.0;
    } else {
     s0+=1284.0;
     s1+=65.0;
    }
   } else {
    if(i29<1.255998969078064){
     s0+=57.0;
     s1+=123.0;
    } else {
     s0+=173.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i55<1.0020716190338135){
  if(i3<0.0006731748580932617){
   if(i29<1.0635170936584473){
    s0+=337.0;
   } else {
    if(i10<-0.0006192326545715332){
     s0+=341.0;
     s1+=321.0;
    } else {
     s0+=8.0;
     s1+=181.0;
    }
   }
  } else {
   if(i44<-1.4410115909413435e-05){
    if(i5<-0.0001529193395981565){
     s0+=1.0;
     s1+=6323.0;
    } else {
     s0+=110.0;
     s1+=3180.0;
    }
   } else {
    if(i32<0.007928572595119476){
     s0+=81.0;
     s1+=10.0;
    } else {
     s1+=38.0;
    }
   }
  }
 } else {
  if(i32<0.03392529487609863){
   if(i10<4.792213439941406e-05){
    if(i10<-0.0022394657135009766){
     s0+=580.0;
     s1+=12.0;
    } else {
     s0+=282.0;
     s1+=108.0;
    }
   } else {
    if(i33<1.0011844635009766){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i67<4.7143847041297704e-05){
    if(i9<0.964030385017395){
     s0+=2.0;
    } else {
     s1+=465.0;
    }
   } else {
    if(i17<-0.0005834102630615234){
     s0+=27.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i17<0.00011473894119262695){
 if(i8<0.07531765103340149){
  if(i0<0.08209472894668579){
   if(i65<0.001811589696444571){
    if(i0<0.06905913352966309){
     s0+=61420.0;
     s1+=718.0;
    } else {
     s0+=1448.0;
     s1+=355.0;
    }
   } else {
    if(i3<0.0003980398178100586){
     s0+=5297.0;
     s1+=817.0;
    } else {
     s0+=103.0;
     s1+=361.0;
    }
   }
  } else {
   if(i9<0.9858740568161011){
    if(i23<0.017518915235996246){
     s0+=103.0;
     s1+=7.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i42<-0.00014606118202209473){
     s0+=10.0;
    } else {
     s0+=60.0;
     s1+=795.0;
    }
   }
  }
 } else {
  if(i47<0.001347231213003397){
   if(i11<1.1283799409866333){
    if(i49<0.044682811945676804){
     s0+=415.0;
     s1+=260.0;
    } else {
     s0+=135.0;
     s1+=520.0;
    }
   } else {
    if(i40<0.005680879577994347){
     s0+=341.0;
     s1+=6.0;
    } else {
     s0+=282.0;
     s1+=138.0;
    }
   }
  } else {
   if(i6<0.9965398907661438){
    if(i5<-1.8026121324510314e-05){
     s0+=50.0;
     s1+=121.0;
    } else {
     s0+=154.0;
     s1+=11.0;
    }
   } else {
    if(i23<0.006941428408026695){
     s0+=310.0;
     s1+=1445.0;
    } else {
     s0+=40.0;
     s1+=1677.0;
    }
   }
  }
 }
} else {
 if(i22<1.0540467500686646){
  if(i19<1.0008599758148193){
   if(i73<1.0107566118240356){
    if(i52<1.0095691680908203){
     s0+=345.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i69<-5.029041403759038e-06){
    s1+=48.0;
   } else {
    s0+=81.0;
   }
  }
 } else {
  if(i3<0.0005409717559814453){
   if(i8<0.047435641288757324){
    if(i34<1.1663256883621216){
     s1+=70.0;
    } else {
     s0+=235.0;
     s1+=7.0;
    }
   } else {
    if(i1<0.08277320861816406){
     s0+=48.0;
     s1+=13.0;
    } else {
     s0+=5.0;
     s1+=473.0;
    }
   }
  } else {
   if(i20<0.0022657362278550863){
    if(i14<1.0018715858459473){
     s0+=112.0;
     s1+=39.0;
    } else {
     s1+=120.0;
    }
   } else {
    if(i20<0.0024835874792188406){
     s0+=9.0;
     s1+=65.0;
    } else {
     s0+=1.0;
     s1+=9152.0;
    }
   }
  }
 }
}
if(i10<0.0007564425468444824){
 if(i18<1.0428704023361206){
  if(i1<0.08225265145301819){
   if(i6<1.0024738311767578){
    if(i38<-0.0015021562576293945){
     s0+=3638.0;
     s1+=760.0;
    } else {
     s0+=62407.0;
     s1+=941.0;
    }
   } else {
    if(i70<0.0004133117035962641){
     s0+=30.0;
     s1+=52.0;
    } else {
     s0+=16.0;
     s1+=289.0;
    }
   }
  } else {
   if(i14<0.9986150860786438){
    if(i49<0.03151183947920799){
     s0+=312.0;
     s1+=2.0;
    } else {
     s0+=94.0;
     s1+=27.0;
    }
   } else {
    if(i22<1.0415217876434326){
     s0+=67.0;
     s1+=6.0;
    } else {
     s0+=89.0;
     s1+=1420.0;
    }
   }
  }
 } else {
  if(i0<0.11259463429450989){
   if(i1<0.07292419672012329){
    if(i66<0.0058188606053590775){
     s0+=1886.0;
     s1+=173.0;
    } else {
     s0+=13.0;
     s1+=32.0;
    }
   } else {
    if(i61<0.011544346809387207){
     s0+=237.0;
     s1+=326.0;
    } else {
     s0+=955.0;
     s1+=177.0;
    }
   }
  } else {
   if(i5<-1.1577296390896663e-05){
    if(i26<0.02150629833340645){
     s0+=130.0;
     s1+=274.0;
    } else {
     s0+=99.0;
     s1+=2602.0;
    }
   } else {
    if(i53<1.0000678300857544){
     s0+=435.0;
     s1+=52.0;
    } else {
     s0+=7.0;
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i17<0.00016486644744873047){
  if(i18<1.0269005298614502){
   if(i42<0.00021785497665405273){
    if(i44<-1.3686396414414048e-05){
     s1+=46.0;
    } else {
     s0+=383.0;
     s1+=16.0;
    }
   } else {
    s1+=41.0;
   }
  } else {
   if(i2<0.06426283717155457){
    if(i6<1.0026352405548096){
     s0+=118.0;
     s1+=26.0;
    } else {
     s0+=18.0;
     s1+=48.0;
    }
   } else {
    if(i5<-2.3782708012731746e-05){
     s0+=22.0;
     s1+=603.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i17<0.00021451711654663086){
   if(i20<0.0021483751479536295){
    if(i43<0.00037516752490773797){
     s0+=26.0;
     s1+=14.0;
    } else {
     s0+=98.0;
    }
   } else {
    if(i76<0.9963820576667786){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=604.0;
    }
   }
  } else {
   if(i25<1.0088461637496948){
    if(i19<1.0009182691574097){
     s0+=14.0;
     s1+=4.0;
    } else {
     s1+=813.0;
    }
   } else {
    s1+=7712.0;
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i5<-4.9340127588948235e-05){
  if(i2<0.058725595474243164){
   if(i49<0.10399225354194641){
    if(i3<0.0005463361740112305){
     s0+=443.0;
     s1+=60.0;
    } else {
     s1+=212.0;
    }
   } else {
    if(i20<0.021055793389678){
     s0+=1222.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   }
  } else {
   if(i45<0.009275555610656738){
    if(i33<0.9991589784622192){
     s0+=20.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=673.0;
    }
   } else {
    if(i18<1.011641502380371){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=104.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i38<-0.001654297113418579){
   if(i40<0.002942953258752823){
    if(i30<0.0004567262949422002){
     s0+=749.0;
     s1+=13.0;
    } else {
     s0+=471.0;
     s1+=508.0;
    }
   } else {
    if(i0<0.07110971212387085){
     s0+=1022.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   }
  } else {
   if(i24<1.0082120895385742){
    if(i8<0.08108469843864441){
     s0+=60538.0;
     s1+=958.0;
    } else {
     s0+=40.0;
     s1+=119.0;
    }
   } else {
    if(i77<2.2865759092383087e-05){
     s0+=1.0;
     s1+=36.0;
    } else {
     s0+=432.0;
     s1+=129.0;
    }
   }
  }
 }
} else {
 if(i1<0.09603643417358398){
  if(i6<1.002455234527588){
   if(i22<1.0920991897583008){
    if(i13<1.008144736289978){
     s0+=2133.0;
     s1+=535.0;
    } else {
     s0+=76.0;
     s1+=223.0;
    }
   } else {
    if(i71<0.0013749842764809728){
     s0+=2266.0;
     s1+=172.0;
    } else {
     s0+=58.0;
     s1+=95.0;
    }
   }
  } else {
   if(i27<1.2392117977142334){
    s1+=494.0;
   } else {
    if(i63<0.013477733358740807){
     s0+=165.0;
     s1+=72.0;
    } else {
     s0+=9.0;
     s1+=243.0;
    }
   }
  }
 } else {
  if(i5<-1.4546285456162877e-05){
   if(i14<0.9980631470680237){
    s0+=24.0;
   } else {
    if(i20<0.0029870427679270506){
     s0+=198.0;
     s1+=651.0;
    } else {
     s0+=171.0;
     s1+=11836.0;
    }
   }
  } else {
   if(i41<0.0017783797811716795){
    if(i35<0.06448957324028015){
     s0+=50.0;
     s1+=35.0;
    } else {
     s0+=575.0;
     s1+=12.0;
    }
   } else {
    if(i27<1.2648893594741821){
     s0+=7.0;
     s1+=153.0;
    } else {
     s0+=96.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i1<0.08509460091590881){
 if(i7<0.000580132007598877){
  if(i63<0.0075721750035882){
   if(i22<1.0451585054397583){
    if(i3<0.000723719596862793){
     s0+=53112.0;
     s1+=169.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=3059.0;
     s1+=1030.0;
    } else {
     s0+=8923.0;
     s1+=176.0;
    }
   }
  } else {
   if(i0<0.04104390740394592){
    if(i14<0.9983723163604736){
     s0+=936.0;
     s1+=7.0;
    } else {
     s0+=1833.0;
     s1+=365.0;
    }
   } else {
    if(i43<0.002860685344785452){
     s0+=138.0;
     s1+=311.0;
    } else {
     s0+=389.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i9<1.0007495880126953){
   if(i63<0.011104725301265717){
    if(i59<0.00013782574387732893){
     s0+=182.0;
     s1+=74.0;
    } else {
     s0+=532.0;
     s1+=2.0;
    }
   } else {
    if(i56<0.00407072901725769){
     s0+=36.0;
     s1+=252.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i76<1.0003204345703125){
    if(i72<0.9945380091667175){
     s1+=12.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i29<1.0646642446517944){
     s0+=8.0;
    } else {
     s0+=16.0;
     s1+=644.0;
    }
   }
  }
 }
} else {
 if(i32<0.024092823266983032){
  if(i46<1.0027891397476196){
   if(i5<-8.244486707553733e-06){
    if(i35<0.06047779321670532){
     s0+=84.0;
     s1+=621.0;
    } else {
     s0+=484.0;
     s1+=348.0;
    }
   } else {
    if(i66<0.0035238596610724926){
     s0+=697.0;
     s1+=89.0;
    } else {
     s0+=18.0;
     s1+=37.0;
    }
   }
  } else {
   if(i5<-2.113297159667127e-05){
    if(i33<0.9989794492721558){
     s0+=8.0;
    } else {
     s0+=81.0;
     s1+=2886.0;
    }
   } else {
    if(i20<0.0017596199177205563){
     s0+=214.0;
    } else {
     s0+=28.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i70<0.0003659698413684964){
   if(i16<-1.2814998626708984e-05){
    if(i35<0.04426279664039612){
     s1+=2.0;
    } else {
     s0+=110.0;
    }
   } else {
    if(i54<0.10463076829910278){
     s0+=29.0;
     s1+=1283.0;
    } else {
     s0+=111.0;
     s1+=120.0;
    }
   }
  } else {
   if(i5<2.6504842480790103e-06){
    if(i9<0.9760328531265259){
     s0+=28.0;
     s1+=62.0;
    } else {
     s0+=28.0;
     s1+=8416.0;
    }
   } else {
    if(i4<-4.100799560546875e-05){
     s0+=33.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
}
if(i12<1.0576403141021729){
 if(i15<1.0044970512390137){
  if(i22<1.0495078563690186){
   if(i56<-0.0022396743297576904){
    if(i51<0.00010995837510563433){
     s0+=838.0;
     s1+=224.0;
    } else {
     s0+=990.0;
     s1+=24.0;
    }
   } else {
    if(i52<1.0129302740097046){
     s0+=54717.0;
     s1+=178.0;
    } else {
     s0+=17.0;
     s1+=10.0;
    }
   }
  } else {
   if(i0<0.06763890385627747){
    if(i30<0.000993275549262762){
     s0+=2014.0;
     s1+=496.0;
    } else {
     s0+=5642.0;
     s1+=138.0;
    }
   } else {
    if(i39<0.03656342625617981){
     s0+=39.0;
     s1+=635.0;
    } else {
     s0+=387.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i12<1.0342864990234375){
   if(i1<0.08524471521377563){
    if(i34<1.1428227424621582){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=290.0;
     s1+=1.0;
    }
   } else {
    s1+=26.0;
   }
  } else {
   if(i19<0.9978232383728027){
    if(i6<1.0014393329620361){
     s0+=28.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i2<0.04421761631965637){
     s0+=24.0;
     s1+=36.0;
    } else {
     s0+=5.0;
     s1+=416.0;
    }
   }
  }
 }
} else {
 if(i32<0.02573603019118309){
  if(i0<0.08241817355155945){
   if(i29<1.103413462638855){
    if(i44<-3.853799626085674e-06){
     s0+=23.0;
     s1+=589.0;
    } else {
     s0+=765.0;
     s1+=211.0;
    }
   } else {
    if(i70<0.0005513797514140606){
     s0+=2576.0;
     s1+=176.0;
    } else {
     s0+=1058.0;
     s1+=251.0;
    }
   }
  } else {
   if(i15<1.0021100044250488){
    if(i58<-0.017860954627394676){
     s0+=849.0;
     s1+=313.0;
    } else {
     s0+=187.0;
     s1+=861.0;
    }
   } else {
    if(i38<0.005309879779815674){
     s0+=27.0;
     s1+=2357.0;
    } else {
     s0+=67.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i7<-0.00026667118072509766){
   if(i29<1.255998969078064){
    if(i53<1.0001989603042603){
     s1+=10.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i47<0.0032357468735426664){
     s0+=214.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   }
  } else {
   if(i51<-0.0002115007082466036){
    if(i0<0.06469330191612244){
     s0+=116.0;
     s1+=120.0;
    } else {
     s0+=53.0;
     s1+=8779.0;
    }
   } else {
    if(i19<1.0026112794876099){
     s0+=169.0;
     s1+=142.0;
    } else {
     s0+=28.0;
     s1+=641.0;
    }
   }
  }
 }
}
if(i12<1.0576403141021729){
 if(i13<1.0080902576446533){
  if(i62<0.021128494292497635){
   if(i6<1.0025303363800049){
    if(i13<1.0058603286743164){
     s0+=51924.0;
     s1+=298.0;
    } else {
     s0+=294.0;
     s1+=51.0;
    }
   } else {
    if(i20<0.001783262356184423){
     s0+=22.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i6<1.0007810592651367){
    if(i0<0.07733863592147827){
     s0+=12257.0;
     s1+=675.0;
    } else {
     s0+=320.0;
     s1+=435.0;
    }
   } else {
    if(i48<0.0009022355079650879){
     s0+=70.0;
     s1+=453.0;
    } else {
     s0+=125.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i0<0.061554670333862305){
   if(i40<0.0013223127461969852){
    if(i3<0.00021895766258239746){
     s0+=12.0;
     s1+=3.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i59<6.481930176960304e-05){
     s0+=134.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i77<0.0003712906618602574){
    if(i29<1.175590991973877){
     s1+=355.0;
    } else {
     s0+=5.0;
     s1+=87.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i26<0.02893107384443283){
   if(i17<0.00012367963790893555){
    if(i5<-1.9681740013766102e-05){
     s0+=1392.0;
     s1+=721.0;
    } else {
     s0+=3359.0;
     s1+=256.0;
    }
   } else {
    if(i0<0.05864238739013672){
     s0+=56.0;
     s1+=7.0;
    } else {
     s0+=11.0;
     s1+=272.0;
    }
   }
  } else {
   if(i5<-4.5398060137813445e-06){
    if(i32<0.025675583630800247){
     s0+=366.0;
     s1+=696.0;
    } else {
     s0+=81.0;
     s1+=1265.0;
    }
   } else {
    if(i43<0.00286917039193213){
     s0+=26.0;
     s1+=52.0;
    } else {
     s0+=476.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i10<-0.0006322860717773438){
   if(i32<0.023330083116889){
    if(i54<0.007107555866241455){
     s0+=43.0;
     s1+=91.0;
    } else {
     s0+=193.0;
     s1+=41.0;
    }
   } else {
    if(i59<0.00010253516666125506){
     s0+=7.0;
     s1+=47.0;
    } else {
     s0+=9.0;
     s1+=615.0;
    }
   }
  } else {
   if(i9<1.0098402500152588){
    if(i44<-1.2909038559882902e-05){
     s0+=85.0;
     s1+=2009.0;
    } else {
     s0+=85.0;
     s1+=55.0;
    }
   } else {
    if(i28<0.00018105251365341246){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=8191.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i73<1.0114860534667969){
  if(i2<0.07799920439720154){
   if(i12<1.0451608896255493){
    if(i65<0.0020542312413454056){
     s0+=59055.0;
     s1+=461.0;
    } else {
     s0+=2488.0;
     s1+=307.0;
    }
   } else {
    if(i5<-1.9973509552073665e-05){
     s0+=1462.0;
     s1+=733.0;
    } else {
     s0+=4101.0;
     s1+=430.0;
    }
   }
  } else {
   if(i3<-0.0007263422012329102){
    if(i59<0.00018977181753143668){
     s0+=292.0;
     s1+=26.0;
    } else {
     s0+=29.0;
     s1+=62.0;
    }
   } else {
    if(i40<0.00036470353370532393){
     s0+=54.0;
    } else {
     s0+=106.0;
     s1+=1401.0;
    }
   }
  }
 } else {
  if(i8<0.08192315697669983){
   if(i34<1.1819204092025757){
    if(i9<1.0022518634796143){
     s0+=731.0;
     s1+=160.0;
    } else {
     s0+=177.0;
     s1+=370.0;
    }
   } else {
    if(i27<1.2392117977142334){
     s0+=32.0;
     s1+=28.0;
    } else {
     s0+=1120.0;
     s1+=19.0;
    }
   }
  } else {
   if(i14<0.9981062412261963){
    if(i74<9.559055797581095e-06){
     s0+=197.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i26<0.033173102885484695){
     s0+=672.0;
     s1+=506.0;
    } else {
     s0+=112.0;
     s1+=981.0;
    }
   }
  }
 }
} else {
 if(i34<1.0795294046401978){
  s0+=150.0;
 } else {
  if(i4<6.145238876342773e-05){
   if(i51<-0.00041513037285767496){
    if(i32<0.005887914448976517){
     s0+=18.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=864.0;
    }
   } else {
    if(i30<0.002061466919258237){
     s1+=341.0;
    } else {
     s0+=248.0;
     s1+=304.0;
    }
   }
  } else {
   if(i24<0.993016242980957){
    if(i19<1.0008394718170166){
     s0+=12.0;
     s1+=11.0;
    } else {
     s0+=58.0;
     s1+=1126.0;
    }
   } else {
    if(i6<1.0040760040283203){
     s0+=37.0;
     s1+=230.0;
    } else {
     s0+=14.0;
     s1+=8695.0;
    }
   }
  }
 }
}
if(i22<1.0576403141021729){
 if(i25<1.0088106393814087){
  if(i75<0.04633980616927147){
   if(i56<-0.0027794837951660156){
    if(i76<0.997936487197876){
     s0+=56.0;
    } else {
     s0+=68.0;
     s1+=73.0;
    }
   } else {
    if(i46<1.0091545581817627){
     s0+=52996.0;
     s1+=174.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i3<7.542967796325684e-05){
    if(i22<1.0417436361312866){
     s0+=3927.0;
     s1+=67.0;
    } else {
     s0+=1424.0;
     s1+=271.0;
    }
   } else {
    if(i49<0.020984496921300888){
     s0+=96.0;
     s1+=13.0;
    } else {
     s0+=38.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i30<0.0011738879838958383){
   if(i31<1.0558756589889526){
    s0+=5.0;
   } else {
    s1+=187.0;
   }
  } else {
   if(i33<1.001084566116333){
    s0+=29.0;
   } else {
    s1+=1.0;
   }
  }
 }
} else {
 if(i5<-6.260709051275626e-05){
  if(i78<-0.006327390670776367){
   if(i0<0.03167089819908142){
    if(i47<0.00654654810205102){
     s0+=483.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i16<8.881092071533203e-06){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=160.0;
    }
   }
  } else {
   if(i9<0.9816328287124634){
    if(i11<1.0827677249908447){
     s0+=171.0;
     s1+=20.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i32<0.021474197506904602){
     s0+=309.0;
     s1+=2596.0;
    } else {
     s0+=45.0;
     s1+=9472.0;
    }
   }
  }
 } else {
  if(i2<0.07471531629562378){
   if(i29<1.103413462638855){
    if(i41<0.0005211419193074107){
     s0+=1382.0;
     s1+=272.0;
    } else {
     s0+=123.0;
     s1+=899.0;
    }
   } else {
    if(i4<6.300210952758789e-05){
     s0+=8283.0;
     s1+=309.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i35<0.054035484790802){
    if(i67<4.183274359093048e-05){
     s0+=68.0;
     s1+=1446.0;
    } else {
     s0+=26.0;
     s1+=10.0;
    }
   } else {
    if(i7<-0.0004056096076965332){
     s0+=311.0;
     s1+=4.0;
    } else {
     s0+=1100.0;
     s1+=1076.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i0<0.0817616879940033){
  if(i63<0.007850630208849907){
   if(i22<1.0451585054397583){
    if(i78<-0.0008176267147064209){
     s0+=4727.0;
     s1+=122.0;
    } else {
     s0+=48298.0;
     s1+=56.0;
    }
   } else {
    if(i15<0.9946306943893433){
     s0+=5171.0;
     s1+=39.0;
    } else {
     s0+=7170.0;
     s1+=1117.0;
    }
   }
  } else {
   if(i7<-0.00039008259773254395){
    if(i15<0.978935718536377){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=1000.0;
     s1+=8.0;
    }
   } else {
    if(i2<0.02717733383178711){
     s0+=1601.0;
     s1+=253.0;
    } else {
     s0+=662.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i61<0.03554892539978027){
   if(i68<-0.008939268067479134){
    if(i34<1.3312374353408813){
     s0+=213.0;
     s1+=72.0;
    } else {
     s0+=38.0;
     s1+=257.0;
    }
   } else {
    if(i38<0.004567861557006836){
     s0+=201.0;
     s1+=2159.0;
    } else {
     s0+=98.0;
     s1+=304.0;
    }
   }
  } else {
   if(i0<0.2166682481765747){
    if(i31<1.1559686660766602){
     s0+=364.0;
     s1+=293.0;
    } else {
     s0+=530.0;
     s1+=66.0;
    }
   } else {
    if(i16<-1.576542854309082e-05){
     s0+=92.0;
    } else {
     s0+=63.0;
     s1+=439.0;
    }
   }
  }
 }
} else {
 if(i40<0.00042648223461583257){
  if(i21<1.0084927082061768){
   s0+=293.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i2<0.05592253804206848){
   if(i34<1.2510931491851807){
    s1+=334.0;
   } else {
    if(i41<0.003389721503481269){
     s0+=91.0;
    } else {
     s0+=118.0;
     s1+=198.0;
    }
   }
  } else {
   if(i2<0.1258956789970398){
    if(i45<0.014994293451309204){
     s0+=83.0;
     s1+=1681.0;
    } else {
     s0+=118.0;
     s1+=63.0;
    }
   } else {
    if(i27<1.082350254058838){
     s0+=5.0;
    } else {
     s0+=26.0;
     s1+=9284.0;
    }
   }
  }
 }
}
if(i23<0.000342563318554312){
 if(i0<0.0832170844078064){
  if(i10<0.001172482967376709){
   if(i13<1.0081498622894287){
    if(i66<0.0008567798649892211){
     s0+=54232.0;
     s1+=258.0;
    } else {
     s0+=325.0;
     s1+=124.0;
    }
   } else {
    if(i29<1.1294562816619873){
     s0+=2.0;
     s1+=104.0;
    } else {
     s0+=115.0;
     s1+=3.0;
    }
   }
  } else {
   if(i42<0.00018966197967529297){
    if(i29<1.169237732887268){
     s1+=10.0;
    } else {
     s0+=59.0;
    }
   } else {
    s1+=63.0;
   }
  }
 } else {
  if(i31<1.0581047534942627){
   s0+=52.0;
  } else {
   if(i21<1.0023770332336426){
    if(i4<-4.6133995056152344e-05){
     s0+=22.0;
    } else {
     s0+=5.0;
     s1+=45.0;
    }
   } else {
    if(i41<0.00025968035333789885){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=351.0;
    }
   }
  }
 }
} else {
 if(i3<0.00018596649169921875){
  if(i17<-0.00021973252296447754){
   if(i63<-0.007934227585792542){
    if(i7<-0.000365525484085083){
     s0+=76.0;
     s1+=5.0;
    } else {
     s0+=53.0;
     s1+=125.0;
    }
   } else {
    if(i11<1.0735777616500854){
     s0+=7919.0;
     s1+=231.0;
    } else {
     s0+=532.0;
     s1+=297.0;
    }
   }
  } else {
   if(i2<0.07866263389587402){
    if(i40<0.0020073039922863245){
     s0+=3561.0;
     s1+=1106.0;
    } else {
     s0+=2315.0;
     s1+=75.0;
    }
   } else {
    if(i20<0.0016062806826084852){
     s0+=422.0;
     s1+=125.0;
    } else {
     s0+=358.0;
     s1+=1343.0;
    }
   }
  }
 } else {
  if(i3<0.0005117058753967285){
   if(i2<0.0956161618232727){
    if(i34<1.150278091430664){
     s0+=18.0;
     s1+=223.0;
    } else {
     s0+=627.0;
     s1+=139.0;
    }
   } else {
    if(i70<0.00023330809199251235){
     s0+=90.0;
     s1+=157.0;
    } else {
     s0+=59.0;
     s1+=782.0;
    }
   }
  } else {
   if(i12<1.1363511085510254){
    if(i10<-0.0005464553833007812){
     s0+=221.0;
     s1+=431.0;
    } else {
     s0+=157.0;
     s1+=4010.0;
    }
   } else {
    if(i51<-0.0001267548359464854){
     s1+=6768.0;
    } else {
     s0+=12.0;
     s1+=243.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i26<0.022326184436678886){
  if(i5<-4.4246869947528467e-05){
   if(i29<1.226324200630188){
    if(i41<0.0021820247638970613){
     s0+=20.0;
     s1+=500.0;
    } else {
     s0+=243.0;
     s1+=45.0;
    }
   } else {
    if(i72<1.0561453104019165){
     s0+=684.0;
     s1+=51.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i23<0.0003141001798212528){
    if(i2<0.09193557500839233){
     s0+=53041.0;
     s1+=226.0;
    } else {
     s0+=14.0;
     s1+=29.0;
    }
   } else {
    if(i27<1.100754976272583){
     s0+=3206.0;
     s1+=903.0;
    } else {
     s0+=6607.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i13<0.9985313415527344){
   if(i1<0.07768920063972473){
    if(i4<-1.9341707229614258e-05){
     s0+=4917.0;
     s1+=207.0;
    } else {
     s0+=494.0;
     s1+=389.0;
    }
   } else {
    if(i57<0.002641022205352783){
     s0+=167.0;
     s1+=724.0;
    } else {
     s0+=217.0;
     s1+=183.0;
    }
   }
  } else {
   if(i9<0.9904056787490845){
    if(i5<-1.2453347153495997e-07){
     s0+=146.0;
     s1+=118.0;
    } else {
     s0+=225.0;
     s1+=1.0;
    }
   } else {
    if(i20<0.002792577724903822){
     s0+=480.0;
     s1+=283.0;
    } else {
     s0+=205.0;
     s1+=1473.0;
    }
   }
  }
 }
} else {
 if(i41<0.0005168176139704883){
  if(i13<1.0066871643066406){
   s0+=300.0;
  } else {
   s1+=8.0;
  }
 } else {
  if(i10<0.0014304518699645996){
   if(i32<0.02204940840601921){
    if(i34<1.2261788845062256){
     s0+=13.0;
     s1+=482.0;
    } else {
     s0+=441.0;
     s1+=284.0;
    }
   } else {
    if(i20<0.008085840381681919){
     s0+=7.0;
     s1+=338.0;
    } else {
     s0+=1.0;
     s1+=2152.0;
    }
   }
  } else {
   if(i20<0.0005743784131482244){
    if(i51<-0.0001545339182484895){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=8113.0;
   }
  }
 }
}
if(i50<0.06021153926849365){
 if(i2<0.07240381836891174){
  if(i19<1.0029276609420776){
   if(i26<0.01691431924700737){
    if(i66<0.0008371025323867798){
     s0+=55536.0;
     s1+=330.0;
    } else {
     s0+=2886.0;
     s1+=375.0;
    }
   } else {
    if(i12<1.0398929119110107){
     s0+=6456.0;
     s1+=225.0;
    } else {
     s0+=2212.0;
     s1+=933.0;
    }
   }
  } else {
   if(i31<1.179369568824768){
    if(i44<-1.3898094039177522e-05){
     s0+=59.0;
     s1+=703.0;
    } else {
     s0+=112.0;
     s1+=41.0;
    }
   } else {
    if(i3<0.0009598135948181152){
     s0+=886.0;
     s1+=72.0;
    } else {
     s0+=47.0;
     s1+=167.0;
    }
   }
  }
 } else {
  if(i42<-0.00014662742614746094){
   if(i7<-0.00030243396759033203){
    s0+=114.0;
   } else {
    if(i77<0.0003068797814194113){
     s1+=20.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i39<0.0422082245349884){
    if(i0<0.0783689022064209){
     s0+=52.0;
     s1+=141.0;
    } else {
     s0+=9.0;
     s1+=4390.0;
    }
   } else {
    if(i10<-0.0008905529975891113){
     s0+=93.0;
     s1+=23.0;
    } else {
     s0+=52.0;
     s1+=248.0;
    }
   }
  }
 }
} else {
 if(i5<-2.22776743612485e-05){
  if(i0<0.10104182362556458){
   if(i54<0.0396750271320343){
    if(i20<0.0056835077702999115){
     s0+=153.0;
     s1+=104.0;
    } else {
     s0+=9.0;
     s1+=156.0;
    }
   } else {
    if(i40<0.0013578323414549232){
     s0+=31.0;
     s1+=23.0;
    } else {
     s0+=300.0;
     s1+=10.0;
    }
   }
  } else {
   if(i20<0.006494247820228338){
    if(i54<0.09380689263343811){
     s0+=81.0;
     s1+=1294.0;
    } else {
     s0+=171.0;
     s1+=98.0;
    }
   } else {
    if(i78<-0.001598447561264038){
     s0+=22.0;
     s1+=847.0;
    } else {
     s0+=4.0;
     s1+=6439.0;
    }
   }
  }
 } else {
  if(i14<0.9984594583511353){
   s0+=661.0;
  } else {
   if(i30<0.00478353351354599){
    if(i17<-6.160140037536621e-05){
     s0+=445.0;
     s1+=198.0;
    } else {
     s0+=634.0;
     s1+=35.0;
    }
   } else {
    if(i50<0.09223675727844238){
     s0+=78.0;
     s1+=16.0;
    } else {
     s0+=58.0;
     s1+=201.0;
    }
   }
  }
 }
}
if(i2<0.07772430777549744){
 if(i10<0.0012130141258239746){
  if(i7<0.00044977664947509766){
   if(i26<0.01642666384577751){
    if(i48<-0.001480013132095337){
     s0+=3221.0;
     s1+=375.0;
    } else {
     s0+=55240.0;
     s1+=379.0;
    }
   } else {
    if(i27<1.100754976272583){
     s0+=1622.0;
     s1+=884.0;
    } else {
     s0+=7715.0;
     s1+=272.0;
    }
   }
  } else {
   if(i3<0.0006022751331329346){
    if(i47<0.006415048614144325){
     s0+=1154.0;
     s1+=170.0;
    } else {
     s0+=3.0;
     s1+=27.0;
    }
   } else {
    if(i20<0.0017867935821413994){
     s0+=91.0;
    } else {
     s0+=124.0;
     s1+=516.0;
    }
   }
  }
 } else {
  if(i47<0.0007600435055792332){
   if(i5<-6.242403469514102e-05){
    s1+=29.0;
   } else {
    if(i76<0.998877763748169){
     s1+=5.0;
    } else {
     s0+=80.0;
    }
   }
  } else {
   if(i20<0.001562295132316649){
    if(i49<0.03840241581201553){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=553.0;
   }
  }
 }
} else {
 if(i9<1.0075500011444092){
  if(i41<0.00045610684901475906){
   if(i34<1.0670123100280762){
    s0+=183.0;
   } else {
    if(i42<0.00011864304542541504){
     s0+=145.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   }
  } else {
   if(i33<0.9990426301956177){
    if(i69<-2.2329252260533394e-06){
     s1+=22.0;
    } else {
     s0+=278.0;
     s1+=2.0;
    }
   } else {
    if(i38<0.004331856966018677){
     s0+=237.0;
     s1+=3253.0;
    } else {
     s0+=954.0;
     s1+=1633.0;
    }
   }
  }
 } else {
  if(i36<0.0011273277923464775){
   if(i43<0.004539507441222668){
    s1+=453.0;
   } else {
    s0+=38.0;
   }
  } else {
   if(i47<0.0008409160654991865){
    if(i9<1.0097484588623047){
     s0+=22.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=487.0;
    }
   } else {
    if(i41<0.00188181281555444){
     s0+=1.0;
     s1+=264.0;
    } else {
     s1+=7774.0;
    }
   }
  }
 }
}
if(i11<1.0452277660369873){
 if(i7<0.0005856752395629883){
  if(i66<0.0007282724836841226){
   if(i21<1.00663423538208){
    if(i26<0.02533843368291855){
     s0+=56064.0;
     s1+=328.0;
    } else {
     s0+=1661.0;
     s1+=356.0;
    }
   } else {
    if(i0<0.06302368640899658){
     s0+=483.0;
     s1+=40.0;
    } else {
     s0+=44.0;
     s1+=172.0;
    }
   }
  } else {
   if(i4<-1.6808509826660156e-05){
    if(i40<0.0027416953817009926){
     s0+=1575.0;
     s1+=406.0;
    } else {
     s0+=3959.0;
     s1+=45.0;
    }
   } else {
    if(i34<1.2048285007476807){
     s0+=370.0;
     s1+=558.0;
    } else {
     s0+=779.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i15<1.0008268356323242){
   if(i38<-0.0008854568004608154){
    if(i59<0.00016098818741738796){
     s0+=8.0;
     s1+=69.0;
    } else {
     s0+=101.0;
     s1+=33.0;
    }
   } else {
    if(i67<1.675746898399666e-05){
     s0+=37.0;
     s1+=28.0;
    } else {
     s0+=237.0;
    }
   }
  } else {
   if(i27<1.075138807296753){
    s0+=10.0;
   } else {
    if(i3<-8.64267349243164e-05){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=597.0;
    }
   }
  }
 }
} else {
 if(i26<0.02830483391880989){
  if(i3<0.0004813671112060547){
   if(i10<0.0005338788032531738){
    if(i41<0.0004502544761635363){
     s0+=1311.0;
     s1+=26.0;
    } else {
     s0+=3023.0;
     s1+=831.0;
    }
   } else {
    if(i7<-0.0002517998218536377){
     s0+=87.0;
    } else {
     s0+=191.0;
     s1+=480.0;
    }
   }
  } else {
   if(i5<-4.657533281715587e-05){
    if(i17<-5.4836273193359375e-06){
     s0+=172.0;
     s1+=132.0;
    } else {
     s0+=7.0;
     s1+=2589.0;
    }
   } else {
    if(i20<0.0039696237072348595){
     s0+=121.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i14<0.9986293911933899){
   if(i44<-9.480752851231955e-06){
    if(i19<0.9938113689422607){
     s0+=2.0;
    } else {
     s1+=17.0;
    }
   } else {
    s0+=415.0;
   }
  } else {
   if(i70<0.00018667653785087168){
    if(i19<1.0002806186676025){
     s0+=164.0;
     s1+=148.0;
    } else {
     s0+=19.0;
     s1+=240.0;
    }
   } else {
    if(i2<0.10478797554969788){
     s0+=302.0;
     s1+=827.0;
    } else {
     s0+=52.0;
     s1+=8908.0;
    }
   }
  }
 }
}
if(i0<0.08061712980270386){
 if(i14<1.0016374588012695){
  if(i65<0.0016995577607303858){
   if(i22<1.0475225448608398){
    if(i57<-0.0013756155967712402){
     s0+=552.0;
     s1+=76.0;
    } else {
     s0+=53275.0;
     s1+=96.0;
    }
   } else {
    if(i0<0.06547293066978455){
     s0+=8114.0;
     s1+=466.0;
    } else {
     s0+=755.0;
     s1+=416.0;
    }
   }
  } else {
   if(i6<0.9965313076972961){
    if(i8<0.047184377908706665){
     s0+=2545.0;
     s1+=49.0;
    } else {
     s0+=197.0;
     s1+=34.0;
    }
   } else {
    if(i0<0.05756831169128418){
     s0+=2718.0;
     s1+=632.0;
    } else {
     s0+=189.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i6<1.0024760961532593){
   if(i65<0.008386913686990738){
    if(i11<1.0149191617965698){
     s0+=15.0;
     s1+=20.0;
    } else {
     s0+=772.0;
     s1+=69.0;
    }
   } else {
    if(i0<0.017728298902511597){
     s0+=37.0;
     s1+=13.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i41<0.009579181671142578){
    if(i31<1.1353518962860107){
     s1+=542.0;
    } else {
     s0+=84.0;
     s1+=250.0;
    }
   } else {
    if(i32<0.03276146203279495){
     s0+=66.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i20<0.004835044965147972){
  if(i54<0.05863472819328308){
   if(i4<-5.570054054260254e-05){
    if(i46<0.9710037708282471){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=204.0;
     s1+=5.0;
    }
   } else {
    if(i50<0.0627412497997284){
     s0+=28.0;
     s1+=1300.0;
    } else {
     s0+=366.0;
     s1+=865.0;
    }
   }
  } else {
   if(i1<0.1359865367412567){
    if(i11<1.0423915386199951){
     s0+=9.0;
     s1+=15.0;
    } else {
     s0+=507.0;
     s1+=22.0;
    }
   } else {
    if(i54<0.11887934803962708){
     s0+=74.0;
     s1+=220.0;
    } else {
     s0+=360.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i33<0.998814582824707){
   if(i36<0.017295226454734802){
    s0+=100.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i59<0.00010793771070893854){
    if(i67<3.477095378912054e-05){
     s0+=3.0;
     s1+=8953.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i0<0.11034998297691345){
     s0+=166.0;
     s1+=226.0;
    } else {
     s0+=34.0;
     s1+=2375.0;
    }
   }
  }
 }
}
if(i7<0.0004399418830871582){
 if(i0<0.08242163062095642){
  if(i26<0.014117121696472168){
   if(i59<-2.1004625523346476e-05){
    if(i34<1.1944798231124878){
     s1+=23.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i38<-0.0017410814762115479){
     s0+=1417.0;
     s1+=219.0;
    } else {
     s0+=54368.0;
     s1+=391.0;
    }
   }
  } else {
   if(i15<0.9942162036895752){
    if(i32<0.07686731219291687){
     s0+=8191.0;
     s1+=87.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i59<2.9928130970802158e-05){
     s0+=2597.0;
     s1+=358.0;
    } else {
     s0+=1145.0;
     s1+=912.0;
    }
   }
  }
 } else {
  if(i7<-0.00038823485374450684){
   if(i69<-3.2578052469034446e-06){
    if(i37<0.9937430024147034){
     s1+=14.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   } else {
    if(i30<0.027536440640687943){
     s0+=422.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i5<-2.2282918507698923e-05){
    if(i39<0.050290435552597046){
     s0+=38.0;
     s1+=2287.0;
    } else {
     s0+=193.0;
     s1+=1157.0;
    }
   } else {
    if(i54<0.059376686811447144){
     s0+=240.0;
     s1+=542.0;
    } else {
     s0+=493.0;
     s1+=148.0;
    }
   }
  }
 }
} else {
 if(i6<1.0019476413726807){
  if(i70<0.001696707447990775){
   if(i0<0.13009801506996155){
    if(i0<0.09549373388290405){
     s0+=1369.0;
     s1+=123.0;
    } else {
     s0+=90.0;
     s1+=61.0;
    }
   } else {
    if(i69<-4.663579602492973e-06){
     s0+=10.0;
     s1+=158.0;
    } else {
     s0+=19.0;
     s1+=22.0;
    }
   }
  } else {
   if(i1<0.02404358983039856){
    if(i4<1.3828277587890625e-05){
     s0+=47.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i11<1.031524658203125){
     s0+=13.0;
     s1+=26.0;
    } else {
     s1+=290.0;
    }
   }
  }
 } else {
  if(i28<0.0001616518129594624){
   if(i16<2.5212764739990234e-05){
    if(i5<-4.229134356137365e-05){
     s1+=6.0;
    } else {
     s0+=55.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i30<0.0003479564911685884){
    s0+=15.0;
   } else {
    if(i32<0.0191107839345932){
     s0+=243.0;
     s1+=2218.0;
    } else {
     s0+=12.0;
     s1+=8172.0;
    }
   }
  }
 }
}
if(i1<0.08509460091590881){
 if(i0<0.06633281707763672){
  if(i14<1.001819133758545){
   if(i57<-0.001288086175918579){
    if(i30<0.0009845886379480362){
     s0+=1343.0;
     s1+=574.0;
    } else {
     s0+=4129.0;
     s1+=190.0;
    }
   } else {
    if(i64<-0.002419769763946533){
     s0+=1158.0;
     s1+=185.0;
    } else {
     s0+=59258.0;
     s1+=470.0;
    }
   }
  } else {
   if(i27<1.4786540269851685){
    if(i3<0.000372469425201416){
     s0+=72.0;
     s1+=22.0;
    } else {
     s0+=41.0;
     s1+=370.0;
    }
   } else {
    if(i65<0.007623638026416302){
     s0+=485.0;
     s1+=13.0;
    } else {
     s0+=53.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i35<0.03593099117279053){
   if(i33<0.9991872310638428){
    if(i5<-3.134028156637214e-05){
     s1+=11.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i5<9.37234563025413e-06){
     s0+=39.0;
     s1+=836.0;
    } else {
     s0+=21.0;
     s1+=5.0;
    }
   }
  } else {
   if(i39<0.02343234419822693){
    if(i44<-2.2286278635874623e-06){
     s0+=14.0;
     s1+=59.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i74<-3.135786528218887e-06){
     s0+=8.0;
     s1+=28.0;
    } else {
     s0+=2497.0;
     s1+=190.0;
    }
   }
  }
 }
} else {
 if(i19<1.0004401206970215){
  if(i53<0.9995633363723755){
   if(i44<-6.757870778528741e-06){
    if(i33<0.9966787099838257){
     s0+=13.0;
    } else {
     s1+=109.0;
    }
   } else {
    s0+=575.0;
   }
  } else {
   if(i5<-1.3539904102799483e-05){
    if(i39<0.049043864011764526){
     s0+=51.0;
     s1+=1518.0;
    } else {
     s0+=299.0;
     s1+=757.0;
    }
   } else {
    if(i35<0.05938461422920227){
     s0+=54.0;
     s1+=196.0;
    } else {
     s0+=502.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i19<1.0027844905853271){
   if(i58<-0.02081724815070629){
    if(i12<1.22279691696167){
     s0+=222.0;
     s1+=132.0;
    } else {
     s1+=276.0;
    }
   } else {
    if(i20<0.0017159300623461604){
     s0+=62.0;
     s1+=61.0;
    } else {
     s0+=36.0;
     s1+=1146.0;
    }
   }
  } else {
   if(i4<4.5239925384521484e-05){
    if(i1<0.1060633659362793){
     s0+=57.0;
     s1+=59.0;
    } else {
     s0+=53.0;
     s1+=620.0;
    }
   } else {
    if(i55<1.005753517150879){
     s0+=28.0;
     s1+=9076.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i7<0.00043389201164245605){
 if(i8<0.07239019870758057){
  if(i0<0.07876047492027283){
   if(i12<1.0410068035125732){
    if(i65<0.0015895863762125373){
     s0+=55425.0;
     s1+=284.0;
    } else {
     s0+=3225.0;
     s1+=276.0;
    }
   } else {
    if(i26<0.018044620752334595){
     s0+=6842.0;
     s1+=477.0;
    } else {
     s0+=1761.0;
     s1+=791.0;
    }
   }
  } else {
   if(i52<1.0051349401474){
    if(i29<1.067516803741455){
     s0+=111.0;
    } else {
     s0+=74.0;
     s1+=368.0;
    }
   } else {
    if(i22<1.140648365020752){
     s0+=17.0;
     s1+=576.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  if(i20<0.0049648648127913475){
   if(i58<-0.0232231542468071){
    if(i40<0.00564728956669569){
     s0+=553.0;
     s1+=34.0;
    } else {
     s0+=246.0;
     s1+=163.0;
    }
   } else {
    if(i26<0.012702293694019318){
     s0+=403.0;
     s1+=182.0;
    } else {
     s0+=291.0;
     s1+=876.0;
    }
   }
  } else {
   if(i10<-0.004370748996734619){
    if(i18<1.068432331085205){
     s0+=35.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i51<6.722416583215818e-05){
     s0+=62.0;
     s1+=1981.0;
    } else {
     s0+=23.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i6<1.0015933513641357){
  if(i11<1.0819685459136963){
   if(i51<-0.000594601035118103){
    s1+=21.0;
   } else {
    if(i32<0.042858004570007324){
     s0+=1304.0;
     s1+=182.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   if(i20<0.004006131552159786){
    if(i66<0.0036543214228004217){
     s0+=89.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i2<0.10349476337432861){
     s0+=23.0;
     s1+=57.0;
    } else {
     s1+=286.0;
    }
   }
  }
 } else {
  if(i9<1.0098415613174438){
   if(i12<1.1223218441009521){
    if(i18<1.0831290483474731){
     s0+=276.0;
     s1+=1470.0;
    } else {
     s0+=123.0;
     s1+=51.0;
    }
   } else {
    if(i28<0.000722624477930367){
     s0+=9.0;
     s1+=4.0;
    } else {
     s1+=1519.0;
    }
   }
  } else {
   if(i9<1.0098929405212402){
    if(i9<1.0098836421966553){
     s1+=17.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=7656.0;
   }
  }
 }
}
if(i7<0.00043970346450805664){
 if(i52<1.0098108053207397){
  if(i43<0.0004062138614244759){
   if(i30<0.0002945290761999786){
    s0+=34709.0;
   } else {
    if(i7<0.00012832880020141602){
     s0+=13869.0;
     s1+=91.0;
    } else {
     s0+=991.0;
     s1+=164.0;
    }
   }
  } else {
   if(i6<0.9969282746315002){
    if(i50<0.07823914289474487){
     s0+=11159.0;
     s1+=206.0;
    } else {
     s0+=233.0;
     s1+=89.0;
    }
   } else {
    if(i47<0.0015681954100728035){
     s0+=5193.0;
     s1+=1652.0;
    } else {
     s0+=804.0;
     s1+=990.0;
    }
   }
  }
 } else {
  if(i20<0.0032737338915467262){
   if(i79<-0.00120267434976995){
    if(i50<0.14048579335212708){
     s0+=1543.0;
     s1+=64.0;
    } else {
     s0+=154.0;
     s1+=99.0;
    }
   } else {
    if(i53<0.999852180480957){
     s0+=82.0;
     s1+=410.0;
    } else {
     s0+=302.0;
     s1+=94.0;
    }
   }
  } else {
   if(i6<0.9981043338775635){
    if(i70<0.0016687223687767982){
     s0+=285.0;
     s1+=43.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i14<0.998515248298645){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=46.0;
     s1+=1946.0;
    }
   }
  }
 }
} else {
 if(i2<0.08095675706863403){
  if(i38<-0.0008232593536376953){
   if(i48<-0.008041143417358398){
    if(i54<-0.06496751308441162){
     s0+=17.0;
     s1+=90.0;
    } else {
     s0+=146.0;
     s1+=12.0;
    }
   } else {
    if(i3<0.0002224445343017578){
     s0+=95.0;
     s1+=21.0;
    } else {
     s0+=83.0;
     s1+=751.0;
    }
   }
  } else {
   if(i6<1.002316951751709){
    if(i6<1.0001070499420166){
     s0+=635.0;
     s1+=1.0;
    } else {
     s0+=433.0;
     s1+=52.0;
    }
   } else {
    if(i40<0.002480277791619301){
     s0+=13.0;
     s1+=417.0;
    } else {
     s0+=110.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i10<3.1113624572753906e-05){
   if(i12<1.125575304031372){
    if(i39<0.0466553270816803){
     s0+=5.0;
     s1+=348.0;
    } else {
     s0+=221.0;
     s1+=145.0;
    }
   } else {
    if(i34<1.223900556564331){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=966.0;
    }
   }
  } else {
   if(i5<-3.487195135676302e-05){
    if(i70<0.00017256883438676596){
     s0+=3.0;
     s1+=185.0;
    } else {
     s1+=8131.0;
    }
   } else {
    if(i6<1.0016958713531494){
     s0+=2.0;
    } else {
     s1+=24.0;
    }
   }
  }
 }
}
if(i4<3.725290298461914e-05){
 if(i22<1.0494996309280396){
  if(i23<0.00031863641925156116){
   if(i24<1.0089375972747803){
    if(i71<0.0002805837139021605){
     s0+=48953.0;
     s1+=35.0;
    } else {
     s0+=1144.0;
     s1+=82.0;
    }
   } else {
    if(i42<0.00018417835235595703){
     s0+=18.0;
     s1+=4.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i6<1.0003299713134766){
    if(i30<0.0009342562407255173){
     s0+=2035.0;
     s1+=249.0;
    } else {
     s0+=4217.0;
     s1+=7.0;
    }
   } else {
    if(i53<1.0003983974456787){
     s0+=8.0;
     s1+=53.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i8<0.06070226430892944){
   if(i41<0.0014468778390437365){
    if(i1<0.06919944286346436){
     s0+=4751.0;
     s1+=898.0;
    } else {
     s0+=159.0;
     s1+=613.0;
    }
   } else {
    if(i63<0.015104195103049278){
     s0+=6335.0;
     s1+=95.0;
    } else {
     s0+=475.0;
     s1+=163.0;
    }
   }
  } else {
   if(i26<0.025098389014601707){
    if(i45<0.013396501541137695){
     s0+=622.0;
     s1+=893.0;
    } else {
     s0+=1020.0;
     s1+=162.0;
    }
   } else {
    if(i6<0.996375560760498){
     s0+=258.0;
     s1+=115.0;
    } else {
     s0+=359.0;
     s1+=2107.0;
    }
   }
  }
 }
} else {
 if(i53<0.9992542862892151){
  s0+=337.0;
 } else {
  if(i29<1.3060506582260132){
   if(i9<1.009843349456787){
    if(i41<0.007838070392608643){
     s0+=254.0;
     s1+=1465.0;
    } else {
     s0+=131.0;
     s1+=45.0;
    }
   } else {
    if(i20<0.0012111288961023092){
     s0+=4.0;
     s1+=24.0;
    } else {
     s1+=2186.0;
    }
   }
  } else {
   if(i32<0.020046064630150795){
    if(i1<0.13027164340019226){
     s0+=75.0;
     s1+=77.0;
    } else {
     s1+=462.0;
    }
   } else {
    if(i2<0.09684181213378906){
     s0+=8.0;
     s1+=235.0;
    } else {
     s1+=7091.0;
    }
   }
  }
 }
}
if(i0<0.08134973049163818){
 if(i3<0.0006022751331329346){
  if(i63<0.0075655728578567505){
   if(i57<-0.001388251781463623){
    if(i34<1.1037919521331787){
     s0+=801.0;
     s1+=412.0;
    } else {
     s0+=3131.0;
     s1+=57.0;
    }
   } else {
    if(i12<1.042891263961792){
     s0+=56348.0;
     s1+=240.0;
    } else {
     s0+=5477.0;
     s1+=535.0;
    }
   }
  } else {
   if(i26<0.01738235540688038){
    if(i15<1.002859115600586){
     s0+=2080.0;
     s1+=177.0;
    } else {
     s0+=48.0;
     s1+=55.0;
    }
   } else {
    if(i2<0.022161245346069336){
     s0+=852.0;
     s1+=147.0;
    } else {
     s0+=318.0;
     s1+=418.0;
    }
   }
  }
 } else {
  if(i23<0.000212929182453081){
   if(i3<0.0006247758865356445){
    if(i78<0.0006164908409118652){
     s0+=7.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i2<0.07286304235458374){
     s0+=99.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.0022464096546173096){
    if(i55<0.9976022243499756){
     s0+=24.0;
    } else {
     s0+=118.0;
     s1+=929.0;
    }
   } else {
    if(i29<1.1319596767425537){
     s1+=4.0;
    } else {
     s0+=65.0;
    }
   }
  }
 }
} else {
 if(i7<-0.0004054605960845947){
  if(i29<1.498544454574585){
   if(i43<0.000664639170281589){
    if(i60<0.028690867125988007){
     s0+=40.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=379.0;
   }
  } else {
   if(i37<0.9946084022521973){
    s1+=13.0;
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i4<3.343820571899414e-05){
   if(i39<0.05028095841407776){
    if(i23<0.00019544619135558605){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=136.0;
     s1+=2237.0;
    }
   } else {
    if(i20<0.0032215318642556667){
     s0+=823.0;
     s1+=246.0;
    } else {
     s0+=225.0;
     s1+=844.0;
    }
   }
  } else {
   if(i20<0.00645125936716795){
    if(i45<0.03180348873138428){
     s0+=71.0;
     s1+=1696.0;
    } else {
     s0+=68.0;
     s1+=15.0;
    }
   } else {
    if(i26<0.0017369873821735382){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=23.0;
     s1+=9046.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i8<0.07132148742675781){
  if(i43<0.0003127905074506998){
   if(i37<1.011173963546753){
    if(i72<1.020533800125122){
     s0+=46881.0;
     s1+=81.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<1.0067038536071777){
     s0+=1.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i17<-0.00018996000289916992){
    if(i30<0.002115575596690178){
     s0+=1664.0;
     s1+=179.0;
    } else {
     s0+=11072.0;
     s1+=168.0;
    }
   } else {
    if(i40<0.000391516339732334){
     s0+=2546.0;
     s1+=66.0;
    } else {
     s0+=6460.0;
     s1+=2055.0;
    }
   }
  }
 } else {
  if(i42<-0.00013762712478637695){
   if(i14<0.9980460405349731){
    s0+=435.0;
   } else {
    if(i22<1.1001815795898438){
     s0+=9.0;
     s1+=46.0;
    } else {
     s0+=45.0;
     s1+=15.0;
    }
   }
  } else {
   if(i1<0.10822051763534546){
    if(i58<-0.015428520739078522){
     s0+=513.0;
     s1+=43.0;
    } else {
     s0+=452.0;
     s1+=520.0;
    }
   } else {
    if(i64<0.006670176982879639){
     s0+=108.0;
     s1+=1610.0;
    } else {
     s0+=365.0;
     s1+=651.0;
    }
   }
  }
 }
} else {
 if(i1<0.0602172315120697){
  if(i5<-4.390087997308001e-05){
   if(i54<0.01019442081451416){
    if(i27<1.5682398080825806){
     s0+=5.0;
     s1+=331.0;
    } else {
     s0+=62.0;
     s1+=46.0;
    }
   } else {
    if(i22<1.0685104131698608){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=42.0;
    }
   }
  } else {
   if(i32<0.008952641859650612){
    s0+=267.0;
   } else {
    if(i8<0.037414371967315674){
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i33<0.9977169036865234){
   s0+=12.0;
  } else {
   if(i5<-6.315972132142633e-05){
    if(i17<1.1920928955078125e-05){
     s0+=92.0;
     s1+=1033.0;
    } else {
     s0+=1.0;
     s1+=9599.0;
    }
   } else {
    if(i20<0.00253513315692544){
     s0+=66.0;
     s1+=12.0;
    } else {
     s0+=43.0;
     s1+=572.0;
    }
   }
  }
 }
}
if(i0<0.08507418632507324){
 if(i4<3.93986701965332e-05){
  if(i57<-0.0013684630393981934){
   if(i9<0.9874266982078552){
    if(i7<0.00040924549102783203){
     s0+=3150.0;
     s1+=83.0;
    } else {
     s0+=268.0;
     s1+=61.0;
    }
   } else {
    if(i37<0.988978385925293){
     s0+=1171.0;
     s1+=751.0;
    } else {
     s0+=946.0;
     s1+=85.0;
    }
   }
  } else {
   if(i13<1.0081672668457031){
    if(i29<1.0598037242889404){
     s0+=35726.0;
    } else {
     s0+=27227.0;
     s1+=918.0;
    }
   } else {
    if(i36<0.001337061868980527){
     s0+=60.0;
     s1+=252.0;
    } else {
     s0+=651.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i36<0.0004962342791259289){
   s0+=247.0;
  } else {
   if(i56<0.003122568130493164){
    if(i34<1.25206458568573){
     s0+=2.0;
     s1+=632.0;
    } else {
     s0+=183.0;
     s1+=380.0;
    }
   } else {
    if(i3<0.0013949275016784668){
     s0+=97.0;
     s1+=9.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i10<0.0001519620418548584){
  if(i61<0.035562098026275635){
   if(i20<0.005509626120328903){
    if(i42<-0.00024062395095825195){
     s0+=131.0;
    } else {
     s0+=231.0;
     s1+=1009.0;
    }
   } else {
    if(i42<-0.0005628466606140137){
     s0+=4.0;
    } else {
     s0+=22.0;
     s1+=1706.0;
    }
   }
  } else {
   if(i60<0.11671285331249237){
    if(i53<0.9995807409286499){
     s0+=255.0;
     s1+=8.0;
    } else {
     s0+=620.0;
     s1+=418.0;
    }
   } else {
    if(i47<0.0011190944351255894){
     s0+=49.0;
     s1+=6.0;
    } else {
     s1+=339.0;
    }
   }
  }
 } else {
  if(i7<-0.0003567636013031006){
   s0+=16.0;
  } else {
   if(i47<0.001037308480590582){
    if(i58<-0.03428575396537781){
     s0+=66.0;
     s1+=20.0;
    } else {
     s0+=98.0;
     s1+=1300.0;
    }
   } else {
    if(i29<1.0682156085968018){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=8993.0;
    }
   }
  }
 }
}
if(i2<0.08135956525802612){
 if(i17<0.00016170740127563477){
  if(i12<1.0451608896255493){
   if(i57<-0.0014071464538574219){
    if(i78<-0.0020968616008758545){
     s0+=2464.0;
     s1+=71.0;
    } else {
     s0+=1389.0;
     s1+=425.0;
    }
   } else {
    if(i13<1.009965181350708){
     s0+=58121.0;
     s1+=408.0;
    } else {
     s0+=8.0;
     s1+=14.0;
    }
   }
  } else {
   if(i26<0.01692713052034378){
    if(i3<0.00043505430221557617){
     s0+=5199.0;
     s1+=397.0;
    } else {
     s0+=137.0;
     s1+=209.0;
    }
   } else {
    if(i27<1.1013743877410889){
     s0+=212.0;
     s1+=596.0;
    } else {
     s0+=1887.0;
     s1+=592.0;
    }
   }
  }
 } else {
  if(i7<0.00048470497131347656){
   if(i58<0.002889864379540086){
    if(i3<0.0005336999893188477){
     s0+=229.0;
     s1+=7.0;
    } else {
     s0+=45.0;
     s1+=26.0;
    }
   } else {
    if(i15<1.0015549659729004){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=40.0;
    }
   }
  } else {
   if(i69<-4.387484295875765e-06){
    if(i7<0.000563204288482666){
     s0+=6.0;
     s1+=50.0;
    } else {
     s1+=593.0;
    }
   } else {
    s0+=16.0;
   }
  }
 }
} else {
 if(i0<0.11907947063446045){
  if(i68<-0.004652862437069416){
   if(i66<0.003303706645965576){
    if(i35<0.05586853623390198){
     s0+=31.0;
     s1+=53.0;
    } else {
     s0+=617.0;
     s1+=25.0;
    }
   } else {
    if(i33<0.9993427395820618){
     s0+=8.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i61<0.03987300395965576){
    if(i4<-7.018446922302246e-05){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=76.0;
     s1+=1514.0;
    }
   } else {
    if(i0<0.09581315517425537){
     s0+=128.0;
     s1+=20.0;
    } else {
     s0+=84.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i42<-0.0002683401107788086){
   if(i29<1.4587624073028564){
    s0+=269.0;
   } else {
    s1+=46.0;
   }
  } else {
   if(i6<1.001499056816101){
    if(i20<0.0016862079501152039){
     s0+=188.0;
     s1+=66.0;
    } else {
     s0+=146.0;
     s1+=1802.0;
    }
   } else {
    if(i1<0.16881603002548218){
     s0+=57.0;
     s1+=1393.0;
    } else {
     s1+=8408.0;
    }
   }
  }
 }
}
if(i6<1.0024337768554688){
 if(i23<0.0003136898740194738){
  if(i0<0.08859431743621826){
   if(i22<1.0487183332443237){
    if(i37<1.0124123096466064){
     s0+=49655.0;
     s1+=102.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i2<0.05866283178329468){
     s0+=3907.0;
     s1+=130.0;
    } else {
     s0+=281.0;
     s1+=113.0;
    }
   }
  } else {
   if(i74<3.71918099517643e-06){
    if(i3<-0.00025391578674316406){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=78.0;
    }
   } else {
    if(i44<-1.1280025319138076e-05){
     s1+=2.0;
    } else {
     s0+=25.0;
    }
   }
  }
 } else {
  if(i15<0.9942054748535156){
   if(i50<0.08484581112861633){
    if(i7<0.00040590763092041016){
     s0+=8346.0;
     s1+=217.0;
    } else {
     s0+=782.0;
     s1+=137.0;
    }
   } else {
    if(i33<0.9992941617965698){
     s0+=229.0;
     s1+=1.0;
    } else {
     s0+=74.0;
     s1+=457.0;
    }
   }
  } else {
   if(i0<0.07651817798614502){
    if(i29<1.103413462638855){
     s0+=2369.0;
     s1+=1083.0;
    } else {
     s0+=3924.0;
     s1+=308.0;
    }
   } else {
    if(i39<0.050517737865448){
     s0+=177.0;
     s1+=2227.0;
    } else {
     s0+=952.0;
     s1+=940.0;
    }
   }
  }
 }
} else {
 if(i20<0.0019228286109864712){
  if(i44<-1.51755311890156e-05){
   s1+=117.0;
  } else {
   s0+=211.0;
  }
 } else {
  if(i0<0.04816526174545288){
   if(i38<0.0002688169479370117){
    if(i31<1.1961640119552612){
     s0+=3.0;
     s1+=152.0;
    } else {
     s0+=42.0;
     s1+=88.0;
    }
   } else {
    if(i12<1.063080906867981){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i15<1.0062191486358643){
    if(i26<0.028052672743797302){
     s0+=94.0;
     s1+=578.0;
    } else {
     s0+=25.0;
     s1+=1858.0;
    }
   } else {
    if(i20<0.0021798061206936836){
     s0+=6.0;
     s1+=36.0;
    } else {
     s1+=8494.0;
    }
   }
  }
 }
}
if(i20<0.005152252968400717){
 if(i10<0.001150667667388916){
  if(i26<0.022253090515732765){
   if(i75<0.04678185284137726){
    if(i25<1.0080991983413696){
     s0+=54166.0;
     s1+=366.0;
    } else {
     s0+=368.0;
     s1+=258.0;
    }
   } else {
    if(i1<0.07099106907844543){
     s0+=6221.0;
     s1+=447.0;
    } else {
     s0+=1295.0;
     s1+=437.0;
    }
   }
  } else {
   if(i0<0.06812524795532227){
    if(i34<1.2413508892059326){
     s0+=896.0;
     s1+=427.0;
    } else {
     s0+=2444.0;
     s1+=30.0;
    }
   } else {
    if(i31<1.2561023235321045){
     s0+=437.0;
     s1+=1366.0;
    } else {
     s0+=307.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i1<0.060172438621520996){
   if(i33<1.0008708238601685){
    if(i29<1.1722280979156494){
     s1+=18.0;
    } else {
     s0+=90.0;
    }
   } else {
    s1+=39.0;
   }
  } else {
   if(i43<0.0048500848934054375){
    if(i9<1.0096707344055176){
     s0+=15.0;
     s1+=131.0;
    } else {
     s1+=1098.0;
    }
   } else {
    if(i20<0.002359146950766444){
     s0+=37.0;
     s1+=7.0;
    } else {
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i2<0.0682801902294159){
  if(i3<0.00030738115310668945){
   if(i3<-0.000402599573135376){
    if(i27<1.1618170738220215){
     s0+=43.0;
     s1+=42.0;
    } else {
     s0+=3737.0;
     s1+=38.0;
    }
   } else {
    if(i31<1.101605772972107){
     s0+=12.0;
     s1+=125.0;
    } else {
     s0+=616.0;
     s1+=56.0;
    }
   }
  } else {
   if(i64<0.0012073218822479248){
    if(i27<1.594835877418518){
     s0+=32.0;
     s1+=571.0;
    } else {
     s0+=34.0;
     s1+=31.0;
    }
   } else {
    if(i49<0.0589420422911644){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=79.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i10<-0.000903785228729248){
   if(i20<0.009308931417763233){
    if(i8<0.10322555899620056){
     s0+=290.0;
     s1+=101.0;
    } else {
     s0+=36.0;
     s1+=198.0;
    }
   } else {
    if(i51<-7.295847171917558e-05){
     s0+=8.0;
     s1+=852.0;
    } else {
     s0+=19.0;
     s1+=143.0;
    }
   }
  } else {
   if(i30<0.000471723556984216){
    s0+=1.0;
   } else {
    if(i19<0.9947384595870972){
     s0+=28.0;
     s1+=99.0;
    } else {
     s0+=21.0;
     s1+=10071.0;
    }
   }
  }
 }
}
if(i22<1.0576403141021729){
 if(i13<1.0082252025604248){
  if(i25<1.009838581085205){
   if(i22<1.0428826808929443){
    if(i38<-0.0017419755458831787){
     s0+=645.0;
     s1+=47.0;
    } else {
     s0+=51448.0;
     s1+=110.0;
    }
   } else {
    if(i23<0.00033505650935694575){
     s0+=4997.0;
     s1+=118.0;
    } else {
     s0+=1596.0;
     s1+=440.0;
    }
   }
  } else {
   if(i9<0.9985002279281616){
    s0+=11.0;
   } else {
    s1+=75.0;
   }
  }
 } else {
  if(i22<1.0467772483825684){
   s0+=5.0;
  } else {
   s1+=129.0;
  }
 }
} else {
 if(i16<1.9490718841552734e-05){
  if(i3<0.00015994906425476074){
   if(i26<0.022370118647813797){
    if(i57<-0.001617521047592163){
     s0+=1851.0;
     s1+=430.0;
    } else {
     s0+=5860.0;
     s1+=444.0;
    }
   } else {
    if(i8<0.04430514574050903){
     s0+=1845.0;
     s1+=328.0;
    } else {
     s0+=798.0;
     s1+=1657.0;
    }
   }
  } else {
   if(i8<0.057962119579315186){
    if(i2<0.061252743005752563){
     s0+=629.0;
     s1+=213.0;
    } else {
     s0+=5.0;
     s1+=297.0;
    }
   } else {
    if(i8<0.18673038482666016){
     s0+=351.0;
     s1+=1093.0;
    } else {
     s0+=13.0;
     s1+=1395.0;
    }
   }
  }
 } else {
  if(i12<1.0640453100204468){
   if(i10<-0.0008037686347961426){
    if(i33<1.0014734268188477){
     s0+=75.0;
     s1+=138.0;
    } else {
     s0+=394.0;
     s1+=30.0;
    }
   } else {
    if(i30<0.0020499005913734436){
     s0+=2.0;
     s1+=512.0;
    } else {
     s0+=21.0;
     s1+=235.0;
    }
   }
  } else {
   if(i3<0.0007084012031555176){
    if(i1<0.13722434639930725){
     s0+=300.0;
     s1+=184.0;
    } else {
     s0+=11.0;
     s1+=399.0;
    }
   } else {
    if(i29<1.3005231618881226){
     s0+=92.0;
     s1+=2074.0;
    } else {
     s0+=33.0;
     s1+=6922.0;
    }
   }
  }
 }
}
if(i2<0.07827213406562805){
 if(i15<1.0052664279937744){
  if(i62<0.018489662557840347){
   if(i13<1.0081498622894287){
    if(i45<-0.011534124612808228){
     s0+=100.0;
     s1+=53.0;
    } else {
     s0+=50915.0;
     s1+=300.0;
    }
   } else {
    if(i5<-2.2400592570193112e-05){
     s0+=19.0;
     s1+=142.0;
    } else {
     s0+=45.0;
    }
   }
  } else {
   if(i0<0.0663345456123352){
    if(i43<0.00182811776176095){
     s0+=7071.0;
     s1+=980.0;
    } else {
     s0+=9599.0;
     s1+=344.0;
    }
   } else {
    if(i30<0.0010414537973701954){
     s0+=236.0;
     s1+=452.0;
    } else {
     s0+=985.0;
     s1+=181.0;
    }
   }
  }
 } else {
  if(i3<0.0005509853363037109){
   if(i63<0.0068163699470460415){
    if(i27<1.1386182308197021){
     s1+=11.0;
    } else {
     s0+=293.0;
    }
   } else {
    if(i6<1.0006358623504639){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=28.0;
    }
   }
  } else {
   if(i56<0.0029348134994506836){
    if(i28<0.00011482839909149334){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=744.0;
    }
   } else {
    if(i29<1.2369153499603271){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985270500183105){
  if(i23<0.052900124341249466){
   if(i69<-3.2469019970449153e-06){
    if(i52<1.0064566135406494){
     s0+=34.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i7<-0.0003688931465148926){
     s0+=452.0;
    } else {
     s0+=57.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i46<1.010603904724121){
   if(i0<0.12318399548530579){
    if(i68<-0.004401110112667084){
     s0+=658.0;
     s1+=183.0;
    } else {
     s0+=210.0;
     s1+=1285.0;
    }
   } else {
    if(i26<0.029474429786205292){
     s0+=227.0;
     s1+=594.0;
    } else {
     s0+=76.0;
     s1+=3172.0;
    }
   }
  } else {
   if(i13<0.9944316148757935){
    if(i40<0.005250428803265095){
     s0+=48.0;
    } else {
     s1+=152.0;
    }
   } else {
    if(i3<0.0004194974899291992){
     s0+=68.0;
     s1+=640.0;
    } else {
     s0+=10.0;
     s1+=7757.0;
    }
   }
  }
 }
}
if(i0<0.0834648609161377){
 if(i6<1.002474308013916){
  if(i26<0.015740053728222847){
   if(i31<1.0572319030761719){
    if(i38<-0.002621948719024658){
     s0+=308.0;
     s1+=8.0;
    } else {
     s0+=41604.0;
     s1+=1.0;
    }
   } else {
    if(i29<1.103413462638855){
     s0+=3815.0;
     s1+=582.0;
    } else {
     s0+=12856.0;
     s1+=127.0;
    }
   }
  } else {
   if(i29<1.196009874343872){
    if(i15<0.9941792488098145){
     s0+=1266.0;
     s1+=28.0;
    } else {
     s0+=1668.0;
     s1+=1154.0;
    }
   } else {
    if(i47<0.006478466093540192){
     s0+=7800.0;
     s1+=193.0;
    } else {
     s0+=6.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i44<-1.464216438762378e-05){
   if(i40<0.0025617112405598164){
    if(i31<1.1969804763793945){
     s1+=670.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i63<0.011380767449736595){
     s0+=81.0;
     s1+=34.0;
    } else {
     s0+=18.0;
     s1+=231.0;
    }
   }
  } else {
   if(i47<0.0015371253248304129){
    if(i59<-3.5965320421382785e-05){
     s1+=4.0;
    } else {
     s0+=185.0;
    }
   } else {
    s1+=28.0;
   }
  }
 }
} else {
 if(i3<0.0001469254493713379){
  if(i33<0.9989378452301025){
   if(i42<-0.000258028507232666){
    s0+=394.0;
   } else {
    if(i11<1.0419373512268066){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i72<1.0275911092758179){
    if(i3<-0.0008037090301513672){
     s0+=96.0;
     s1+=85.0;
    } else {
     s0+=208.0;
     s1+=1348.0;
    }
   } else {
    if(i5<-2.336248871870339e-05){
     s0+=96.0;
     s1+=404.0;
    } else {
     s0+=395.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i32<0.023849956691265106){
   if(i5<-1.5557387087028474e-05){
    if(i56<0.005778759717941284){
     s0+=139.0;
     s1+=2703.0;
    } else {
     s0+=150.0;
     s1+=347.0;
    }
   } else {
    if(i20<0.00439181225374341){
     s0+=62.0;
     s1+=4.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i6<1.0014134645462036){
    if(i71<0.0002635815180838108){
     s0+=46.0;
     s1+=177.0;
    } else {
     s0+=6.0;
     s1+=433.0;
    }
   } else {
    s1+=8300.0;
   }
  }
 }
}
if(i6<1.0024182796478271){
 if(i37<1.0107730627059937){
  if(i36<0.00039642155752517283){
   if(i6<1.0006968975067139){
    if(i14<1.0005075931549072){
     s0+=36445.0;
     s1+=14.0;
    } else {
     s0+=19.0;
     s1+=4.0;
    }
   } else {
    if(i30<0.00028440868481993675){
     s0+=2471.0;
    } else {
     s0+=3.0;
     s1+=90.0;
    }
   }
  } else {
   if(i8<0.07074183225631714){
    if(i41<0.0013459748588502407){
     s0+=9515.0;
     s1+=1682.0;
    } else {
     s0+=19589.0;
     s1+=404.0;
    }
   } else {
    if(i66<0.002615132834762335){
     s0+=831.0;
     s1+=837.0;
    } else {
     s0+=72.0;
     s1+=687.0;
    }
   }
  }
 } else {
  if(i43<0.0011127840261906385){
   if(i0<0.06355267763137817){
    if(i39<0.0016083717346191406){
     s0+=16.0;
     s1+=27.0;
    } else {
     s0+=94.0;
     s1+=15.0;
    }
   } else {
    if(i42<0.00017687678337097168){
     s0+=49.0;
     s1+=687.0;
    } else {
     s0+=20.0;
     s1+=7.0;
    }
   }
  } else {
   if(i1<0.12354776263237){
    if(i20<0.004054144024848938){
     s0+=1161.0;
     s1+=17.0;
    } else {
     s0+=209.0;
     s1+=108.0;
    }
   } else {
    if(i26<0.04014841467142105){
     s0+=244.0;
     s1+=284.0;
    } else {
     s0+=62.0;
     s1+=946.0;
    }
   }
  }
 }
} else {
 if(i1<0.06488978862762451){
  if(i47<0.0008894928032532334){
   if(i6<1.0046477317810059){
    if(i75<0.004831500351428986){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=168.0;
     s1+=7.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i41<0.006782321725040674){
    if(i28<0.0069168442860245705){
     s0+=12.0;
     s1+=376.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i63<0.01747957617044449){
     s0+=77.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i20<0.0022804737091064453){
   if(i59<-3.0127686841296963e-05){
    s1+=146.0;
   } else {
    if(i29<1.235811710357666){
     s0+=2.0;
     s1+=26.0;
    } else {
     s0+=67.0;
    }
   }
  } else {
   if(i22<1.0629007816314697){
    if(i47<0.002719948999583721){
     s1+=98.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i1<0.13139626383781433){
     s0+=65.0;
     s1+=1476.0;
    } else {
     s0+=10.0;
     s1+=8973.0;
    }
   }
  }
 }
}
if(i4<3.641843795776367e-05){
 if(i24<1.0077662467956543){
  if(i31<1.067622423171997){
   if(i60<0.014263826422393322){
    if(i56<-0.0028408169746398926){
     s0+=132.0;
     s1+=25.0;
    } else {
     s0+=41743.0;
     s1+=18.0;
    }
   } else {
    if(i31<1.0557184219360352){
     s0+=3247.0;
    } else {
     s0+=623.0;
     s1+=129.0;
    }
   }
  } else {
   if(i8<0.07557395100593567){
    if(i1<0.08346086740493774){
     s0+=20991.0;
     s1+=1388.0;
    } else {
     s0+=204.0;
     s1+=389.0;
    }
   } else {
    if(i39<0.050517737865448){
     s0+=70.0;
     s1+=795.0;
    } else {
     s0+=697.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i17<8.630752563476562e-05){
   if(i0<0.07903033494949341){
    if(i5<-4.002040077466518e-05){
     s0+=128.0;
     s1+=100.0;
    } else {
     s0+=1727.0;
     s1+=104.0;
    }
   } else {
    if(i47<0.0013645583530887961){
     s0+=515.0;
     s1+=428.0;
    } else {
     s0+=51.0;
     s1+=646.0;
    }
   }
  } else {
   if(i6<0.9993144273757935){
    s0+=40.0;
   } else {
    if(i0<0.05710357427597046){
     s0+=154.0;
     s1+=30.0;
    } else {
     s0+=68.0;
     s1+=736.0;
    }
   }
  }
 }
} else {
 if(i40<0.0003586439706850797){
  s0+=332.0;
 } else {
  if(i9<1.0097808837890625){
   if(i70<0.0005371171282604337){
    if(i53<0.9999502897262573){
     s0+=24.0;
     s1+=591.0;
    } else {
     s0+=310.0;
     s1+=283.0;
    }
   } else {
    if(i3<0.00045055150985717773){
     s0+=18.0;
    } else {
     s0+=131.0;
     s1+=2399.0;
    }
   }
  } else {
   if(i28<9.946837235474959e-05){
    s0+=2.0;
   } else {
    if(i2<0.058522045612335205){
     s0+=3.0;
     s1+=252.0;
    } else {
     s1+=8240.0;
    }
   }
  }
 }
}
if(i16<1.7702579498291016e-05){
 if(i18<1.0398095846176147){
  if(i66<0.000783991243224591){
   if(i25<1.0074161291122437){
    if(i22<1.0486011505126953){
     s0+=52390.0;
     s1+=100.0;
    } else {
     s0+=5666.0;
     s1+=674.0;
    }
   } else {
    if(i2<0.06571498513221741){
     s0+=907.0;
     s1+=164.0;
    } else {
     s0+=37.0;
     s1+=349.0;
    }
   }
  } else {
   if(i15<0.9943366050720215){
    if(i12<1.0420591831207275){
     s0+=3302.0;
     s1+=52.0;
    } else {
     s0+=726.0;
     s1+=137.0;
    }
   } else {
    if(i29<1.1832531690597534){
     s0+=1066.0;
     s1+=1008.0;
    } else {
     s0+=1365.0;
     s1+=173.0;
    }
   }
  }
 } else {
  if(i8<0.16939646005630493){
   if(i10<0.0004812777042388916){
    if(i19<1.0002496242523193){
     s0+=2697.0;
     s1+=615.0;
    } else {
     s0+=554.0;
     s1+=436.0;
    }
   } else {
    if(i43<0.0015808369498699903){
     s0+=59.0;
     s1+=661.0;
    } else {
     s0+=208.0;
     s1+=55.0;
    }
   }
  } else {
   if(i33<0.9986991882324219){
    if(i36<0.01284066028892994){
     s0+=119.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i47<0.0004121961537748575){
     s0+=116.0;
     s1+=57.0;
    } else {
     s0+=41.0;
     s1+=1733.0;
    }
   }
  }
 }
} else {
 if(i17<-9.66787338256836e-05){
  if(i11<1.0927753448486328){
   if(i57<-0.0010084807872772217){
    if(i6<1.000095009803772){
     s0+=244.0;
     s1+=40.0;
    } else {
     s0+=123.0;
     s1+=361.0;
    }
   } else {
    if(i13<1.0115236043930054){
     s0+=836.0;
     s1+=125.0;
    } else {
     s0+=5.0;
     s1+=40.0;
    }
   }
  } else {
   if(i69<-8.208159670175519e-06){
    if(i5<-1.9665352738229558e-05){
     s1+=580.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i22<1.1427462100982666){
     s0+=28.0;
    } else {
     s0+=17.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i44<-1.385561699862592e-05){
   if(i29<1.0614310503005981){
    s0+=155.0;
   } else {
    if(i6<1.0019230842590332){
     s0+=72.0;
     s1+=57.0;
    } else {
     s0+=82.0;
     s1+=9591.0;
    }
   }
  } else {
   if(i28<0.0002599513973109424){
    if(i76<1.002142310142517){
     s0+=244.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i47<0.0013731506187468767){
     s0+=21.0;
    } else {
     s1+=58.0;
    }
   }
  }
 }
}
if(i17<0.00011473894119262695){
 if(i26<0.02349843643605709){
  if(i14<1.0016393661499023){
   if(i65<0.0015783412382006645){
    if(i0<0.08225393295288086){
     s0+=58285.0;
     s1+=560.0;
    } else {
     s0+=743.0;
     s1+=560.0;
    }
   } else {
    if(i0<0.06286844611167908){
     s0+=3995.0;
     s1+=434.0;
    } else {
     s0+=444.0;
     s1+=281.0;
    }
   }
  } else {
   if(i65<0.002022169064730406){
    if(i0<0.1272171437740326){
     s0+=610.0;
     s1+=158.0;
    } else {
     s0+=13.0;
     s1+=103.0;
    }
   } else {
    if(i4<1.8417835235595703e-05){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=32.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i32<0.05420113354921341){
   if(i3<-0.0005537569522857666){
    if(i8<0.07074368000030518){
     s0+=4059.0;
     s1+=123.0;
    } else {
     s0+=307.0;
     s1+=209.0;
    }
   } else {
    if(i10<-0.0019068121910095215){
     s0+=612.0;
     s1+=257.0;
    } else {
     s0+=849.0;
     s1+=2801.0;
    }
   }
  } else {
   if(i17<-0.0009254813194274902){
    if(i14<1.0006309747695923){
     s0+=214.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i7<-0.0006605982780456543){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=1484.0;
    }
   }
  }
 }
} else {
 if(i20<0.0025990318972617388){
  if(i17<0.00019806623458862305){
   if(i41<0.0007978853536769748){
    if(i78<0.000596463680267334){
     s0+=22.0;
    } else {
     s0+=2.0;
     s1+=91.0;
    }
   } else {
    s0+=446.0;
   }
  } else {
   if(i1<0.07076343894004822){
    if(i3<0.0009701251983642578){
     s0+=175.0;
     s1+=8.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i53<0.9988077878952026){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i40<0.0003508160007186234){
   s0+=80.0;
  } else {
   if(i16<-1.1712312698364258e-05){
    if(i43<0.03648247569799423){
     s0+=63.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i31<1.0577372312545776){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=9581.0;
    }
   }
  }
 }
}
if(i6<1.002457618713379){
 if(i11<1.0452215671539307){
  if(i43<0.00035303455661050975){
   if(i12<1.0570688247680664){
    if(i66<0.000842639128677547){
     s0+=48171.0;
     s1+=71.0;
    } else {
     s0+=134.0;
     s1+=29.0;
    }
   } else {
    if(i3<0.00021120905876159668){
     s0+=39.0;
     s1+=3.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i68<-0.0029961196705698967){
    if(i2<0.08809053897857666){
     s0+=6773.0;
     s1+=39.0;
    } else {
     s0+=33.0;
     s1+=92.0;
    }
   } else {
    if(i31<1.1055917739868164){
     s0+=4191.0;
     s1+=1318.0;
    } else {
     s0+=5878.0;
     s1+=352.0;
    }
   }
  }
 } else {
  if(i8<0.07950085401535034){
   if(i1<0.09063020348548889){
    if(i5<-2.541539288358763e-05){
     s0+=975.0;
     s1+=549.0;
    } else {
     s0+=3348.0;
     s1+=307.0;
    }
   } else {
    if(i42<-0.00014799833297729492){
     s0+=35.0;
    } else {
     s0+=25.0;
     s1+=516.0;
    }
   }
  } else {
   if(i35<0.058459728956222534){
    if(i28<0.00018538348376750946){
     s0+=1.0;
    } else {
     s0+=13.0;
     s1+=962.0;
    }
   } else {
    if(i32<0.03819344565272331){
     s0+=1217.0;
     s1+=816.0;
    } else {
     s0+=27.0;
     s1+=642.0;
    }
   }
  }
 }
} else {
 if(i9<1.0098940134048462){
  if(i43<0.00018785527208819985){
   s0+=24.0;
  } else {
   if(i44<-1.4280451068771072e-05){
    if(i19<0.9981971979141235){
     s0+=36.0;
     s1+=8.0;
    } else {
     s0+=116.0;
     s1+=2784.0;
    }
   } else {
    if(i41<0.001576162176206708){
     s0+=6.0;
     s1+=68.0;
    } else {
     s0+=143.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i8<0.04683604836463928){
   if(i4<3.758072853088379e-05){
    s0+=33.0;
   } else {
    s1+=440.0;
   }
  } else {
   if(i8<0.05322575569152832){
    if(i50<0.04572227597236633){
     s1+=146.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s1+=7858.0;
   }
  }
 }
}
if(i4<3.427267074584961e-05){
 if(i8<0.07105270028114319){
  if(i2<0.07751694321632385){
   if(i12<1.0410068035125732){
    if(i52<0.9867154359817505){
     s0+=11331.0;
     s1+=370.0;
    } else {
     s0+=47603.0;
     s1+=205.0;
    }
   } else {
    if(i29<1.1037919521331787){
     s0+=2960.0;
     s1+=1029.0;
    } else {
     s0+=6366.0;
     s1+=328.0;
    }
   }
  } else {
   if(i29<1.0806758403778076){
    if(i53<0.9994930624961853){
     s0+=72.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    if(i3<-0.0006773471832275391){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=619.0;
    }
   }
  }
 } else {
  if(i20<0.004998667631298304){
   if(i1<0.10798698663711548){
    if(i79<-0.0013537131017073989){
     s0+=465.0;
     s1+=41.0;
    } else {
     s0+=529.0;
     s1+=325.0;
    }
   } else {
    if(i72<1.0403151512145996){
     s0+=224.0;
     s1+=651.0;
    } else {
     s0+=446.0;
     s1+=131.0;
    }
   }
  } else {
   if(i2<0.09228837490081787){
    if(i38<0.0035924911499023438){
     s0+=24.0;
     s1+=147.0;
    } else {
     s0+=135.0;
     s1+=13.0;
    }
   } else {
    if(i44<3.9029846448102035e-06){
     s0+=34.0;
     s1+=1394.0;
    } else {
     s0+=44.0;
    }
   }
  }
 }
} else {
 if(i14<0.9990659952163696){
  if(i54<0.2953518331050873){
   s0+=459.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i44<-1.0872935490624513e-05){
   if(i23<0.000179713882971555){
    if(i30<0.0012810582993552089){
     s1+=9.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i6<1.0041139125823975){
     s0+=357.0;
     s1+=1983.0;
    } else {
     s0+=50.0;
     s1+=9666.0;
    }
   }
  } else {
   if(i46<1.0131443738937378){
    if(i10<0.0003769993782043457){
     s1+=5.0;
    } else {
     s0+=76.0;
    }
   } else {
    if(i48<0.0029283761978149414){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=54.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i8<0.07105270028114319){
  if(i23<0.00028052114066667855){
   if(i21<1.006638526916504){
    if(i48<-0.0027790069580078125){
     s0+=42.0;
     s1+=19.0;
    } else {
     s0+=51931.0;
     s1+=154.0;
    }
   } else {
    if(i31<1.0762503147125244){
     s0+=8.0;
     s1+=105.0;
    } else {
     s0+=292.0;
     s1+=3.0;
    }
   }
  } else {
   if(i15<0.9945645332336426){
    if(i64<-0.003409475088119507){
     s0+=490.0;
     s1+=107.0;
    } else {
     s0+=8961.0;
     s1+=115.0;
    }
   } else {
    if(i53<0.9998470544815063){
     s0+=2336.0;
     s1+=1404.0;
    } else {
     s0+=4531.0;
     s1+=685.0;
    }
   }
  }
 } else {
  if(i33<0.9987839460372925){
   if(i11<1.3700618743896484){
    if(i33<0.9987680912017822){
     s0+=431.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i59<3.652639134088531e-05){
    if(i6<1.0005459785461426){
     s0+=593.0;
     s1+=270.0;
    } else {
     s0+=193.0;
     s1+=476.0;
    }
   } else {
    if(i39<0.04207468032836914){
     s0+=35.0;
     s1+=1128.0;
    } else {
     s0+=666.0;
     s1+=1025.0;
    }
   }
  }
 }
} else {
 if(i22<1.0413084030151367){
  if(i2<0.08175519108772278){
   s0+=171.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i20<0.0022098517511039972){
   if(i30<0.002396935597062111){
    s1+=116.0;
   } else {
    if(i3<0.0014189481735229492){
     s0+=155.0;
     s1+=10.0;
    } else {
     s1+=65.0;
    }
   }
  } else {
   if(i9<1.0066472291946411){
    if(i2<0.11605507135391235){
     s0+=203.0;
     s1+=690.0;
    } else {
     s0+=39.0;
     s1+=1645.0;
    }
   } else {
    if(i0<0.054697901010513306){
     s0+=8.0;
     s1+=108.0;
    } else {
     s0+=8.0;
     s1+=9015.0;
    }
   }
  }
 }
}
if(i4<3.725290298461914e-05){
 if(i11<1.0452277660369873){
  if(i63<0.008367275819182396){
   if(i23<0.0002725797239691019){
    if(i52<1.012413740158081){
     s0+=51300.0;
     s1+=192.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   } else {
    if(i22<1.0451428890228271){
     s0+=6925.0;
     s1+=143.0;
    } else {
     s0+=5353.0;
     s1+=1237.0;
    }
   }
  } else {
   if(i2<0.036909252405166626){
    if(i40<0.0016602588584646583){
     s0+=524.0;
     s1+=157.0;
    } else {
     s0+=766.0;
     s1+=34.0;
    }
   } else {
    if(i7<-0.00039055943489074707){
     s0+=67.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=158.0;
    }
   }
  }
 } else {
  if(i8<0.07132148742675781){
   if(i40<0.0019846719224005938){
    if(i13<1.0080132484436035){
     s0+=1426.0;
     s1+=510.0;
    } else {
     s0+=66.0;
     s1+=333.0;
    }
   } else {
    if(i0<0.083985835313797){
     s0+=2470.0;
     s1+=160.0;
    } else {
     s0+=10.0;
     s1+=140.0;
    }
   }
  } else {
   if(i1<0.12464547157287598){
    if(i38<0.0044648051261901855){
     s0+=302.0;
     s1+=519.0;
    } else {
     s0+=615.0;
     s1+=18.0;
    }
   } else {
    if(i5<-1.3781947927782312e-05){
     s0+=114.0;
     s1+=1789.0;
    } else {
     s0+=413.0;
     s1+=142.0;
    }
   }
  }
 }
} else {
 if(i43<0.00027994957054033875){
  if(i13<1.0082154273986816){
   if(i77<6.535352440550923e-05){
    s1+=3.0;
   } else {
    s0+=269.0;
   }
  } else {
   if(i0<0.04219064116477966){
    s0+=9.0;
   } else {
    s1+=44.0;
   }
  }
 } else {
  if(i34<1.0762357711791992){
   s0+=46.0;
  } else {
   if(i51<-0.0005582542507909238){
    if(i2<0.16102689504623413){
     s0+=8.0;
     s1+=686.0;
    } else {
     s1+=6785.0;
    }
   } else {
    if(i6<1.0042016506195068){
     s0+=333.0;
     s1+=1069.0;
    } else {
     s0+=35.0;
     s1+=3043.0;
    }
   }
  }
 }
}
if(i6<1.0024179220199585){
 if(i37<1.0107730627059937){
  if(i71<0.0002805837139021605){
   if(i22<1.0495158433914185){
    if(i43<0.00029301250469870865){
     s0+=44643.0;
    } else {
     s0+=6326.0;
     s1+=143.0;
    }
   } else {
    if(i20<0.004338400438427925){
     s0+=6746.0;
     s1+=578.0;
    } else {
     s0+=269.0;
     s1+=380.0;
    }
   }
  } else {
   if(i17<-0.0001927018165588379){
    if(i2<0.08452960848808289){
     s0+=8410.0;
     s1+=335.0;
    } else {
     s0+=283.0;
     s1+=553.0;
    }
   } else {
    if(i59<3.553168062353507e-05){
     s0+=1427.0;
     s1+=231.0;
    } else {
     s0+=766.0;
     s1+=1489.0;
    }
   }
  }
 } else {
  if(i60<0.12271574139595032){
   if(i5<-2.8505450245575048e-05){
    if(i27<1.2392117977142334){
     s1+=969.0;
    } else {
     s0+=457.0;
     s1+=320.0;
    }
   } else {
    if(i30<0.005285820923745632){
     s0+=1261.0;
     s1+=122.0;
    } else {
     s0+=152.0;
     s1+=135.0;
    }
   }
  } else {
   if(i0<0.1963871419429779){
    if(i20<0.0110878124833107){
     s0+=33.0;
     s1+=4.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i44<6.606883289350662e-06){
     s0+=1.0;
     s1+=504.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i5<-4.353338590590283e-05){
  if(i10<6.896257400512695e-05){
   if(i28<0.008931426331400871){
    if(i43<0.009301968850195408){
     s0+=164.0;
     s1+=412.0;
    } else {
     s0+=4.0;
     s1+=223.0;
    }
   } else {
    if(i43<0.008583629503846169){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=441.0;
    }
   }
  } else {
   if(i2<0.04418855905532837){
    if(i47<0.0005130892968736589){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=199.0;
    }
   } else {
    if(i44<-9.299145858676638e-06){
     s0+=2.0;
     s1+=9768.0;
    } else {
     s0+=3.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i32<0.008589306846261024){
   if(i47<0.0010946791153401136){
    s0+=156.0;
   } else {
    if(i67<-3.983032911492046e-06){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i69<-3.800387958108331e-06){
    s1+=232.0;
   } else {
    if(i27<1.1386182308197021){
     s1+=6.0;
    } else {
     s0+=35.0;
    }
   }
  }
 }
}
if(i0<0.08299723267555237){
 if(i4<3.987550735473633e-05){
  if(i65<0.0016028950922191143){
   if(i21<1.0058002471923828){
    if(i8<0.054269641637802124){
     s0+=56606.0;
     s1+=480.0;
    } else {
     s0+=4834.0;
     s1+=301.0;
    }
   } else {
    if(i27<1.1108002662658691){
     s0+=282.0;
     s1+=264.0;
    } else {
     s0+=823.0;
     s1+=22.0;
    }
   }
  } else {
   if(i2<0.0586925745010376){
    if(i30<0.0011054769856855273){
     s0+=1463.0;
     s1+=546.0;
    } else {
     s0+=4495.0;
     s1+=240.0;
    }
   } else {
    if(i50<0.04671663045883179){
     s0+=24.0;
     s1+=221.0;
    } else {
     s0+=273.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i55<0.9975895881652832){
   s0+=261.0;
  } else {
   if(i20<0.0018921524751931429){
    if(i38<-0.0017255544662475586){
     s1+=6.0;
    } else {
     s0+=124.0;
     s1+=4.0;
    }
   } else {
    if(i45<0.006529420614242554){
     s0+=98.0;
     s1+=909.0;
    } else {
     s0+=58.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i14<0.998519778251648){
  if(i69<-2.5011081561387982e-06){
   if(i53<0.9980651140213013){
    s0+=18.0;
   } else {
    if(i20<0.002415473572909832){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   }
  } else {
   if(i12<1.398578405380249){
    s0+=425.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i20<0.001723350491374731){
   if(i15<1.009873390197754){
    if(i72<1.0208734273910522){
     s0+=107.0;
     s1+=157.0;
    } else {
     s0+=451.0;
     s1+=40.0;
    }
   } else {
    if(i58<-0.04525216668844223){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   }
  } else {
   if(i9<1.0022867918014526){
    if(i26<0.02151349186897278){
     s0+=361.0;
     s1+=403.0;
    } else {
     s0+=230.0;
     s1+=3054.0;
    }
   } else {
    if(i6<1.004449486732483){
     s0+=87.0;
     s1+=2072.0;
    } else {
     s0+=10.0;
     s1+=8287.0;
    }
   }
  }
 }
}
if(i13<1.008563756942749){
 if(i22<1.0576403141021729){
  if(i25<1.0092427730560303){
   if(i0<0.08355078101158142){
    if(i56<-0.002239435911178589){
     s0+=1934.0;
     s1+=287.0;
    } else {
     s0+=56520.0;
     s1+=301.0;
    }
   } else {
    if(i74<2.5881622605083976e-06){
     s0+=44.0;
     s1+=75.0;
    } else {
     s0+=177.0;
     s1+=22.0;
    }
   }
  } else {
   if(i30<0.0011675884015858173){
    s1+=99.0;
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i26<0.023377880454063416){
   if(i3<0.0004635453224182129){
    if(i4<1.3530254364013672e-05){
     s0+=7840.0;
     s1+=745.0;
    } else {
     s0+=426.0;
     s1+=183.0;
    }
   } else {
    if(i43<0.0013145430712029338){
     s0+=30.0;
     s1+=326.0;
    } else {
     s0+=158.0;
     s1+=177.0;
    }
   }
  } else {
   if(i15<0.993173360824585){
    if(i70<0.0018621085910126567){
     s0+=1686.0;
     s1+=295.0;
    } else {
     s0+=79.0;
     s1+=206.0;
    }
   } else {
    if(i8<0.03400677442550659){
     s0+=552.0;
     s1+=315.0;
    } else {
     s0+=417.0;
     s1+=3146.0;
    }
   }
  }
 }
} else {
 if(i2<0.08227956295013428){
  if(i19<1.0026066303253174){
   if(i34<1.1063789129257202){
    if(i44<-2.626469040478696e-06){
     s1+=239.0;
    } else {
     s0+=65.0;
     s1+=3.0;
    }
   } else {
    if(i74<5.798632173537044e-06){
     s0+=681.0;
     s1+=52.0;
    } else {
     s0+=9.0;
     s1+=15.0;
    }
   }
  } else {
   if(i40<0.0023838651832193136){
    if(i28<0.00013015017611905932){
     s0+=2.0;
     s1+=6.0;
    } else {
     s1+=602.0;
    }
   } else {
    if(i44<-1.7766968085197732e-05){
     s1+=74.0;
    } else {
     s0+=97.0;
    }
   }
  }
 } else {
  if(i10<0.00023859739303588867){
   if(i5<-3.624794044299051e-05){
    if(i0<0.11498689651489258){
     s0+=23.0;
     s1+=47.0;
    } else {
     s0+=30.0;
     s1+=732.0;
    }
   } else {
    if(i27<1.255998969078064){
     s0+=82.0;
     s1+=230.0;
    } else {
     s0+=204.0;
     s1+=47.0;
    }
   }
  } else {
   if(i4<5.525350570678711e-05){
    if(i5<-2.1366115106502548e-05){
     s0+=46.0;
     s1+=1261.0;
    } else {
     s0+=21.0;
     s1+=7.0;
    }
   } else {
    s1+=7614.0;
   }
  }
 }
}
if(i10<0.0007669925689697266){
 if(i20<0.005033953581005335){
  if(i2<0.07771864533424377){
   if(i38<-0.0015491843223571777){
    if(i42<-3.784894943237305e-05){
     s0+=1487.0;
     s1+=70.0;
    } else {
     s0+=1294.0;
     s1+=545.0;
    }
   } else {
    if(i23<0.0003148638643324375){
     s0+=51777.0;
     s1+=218.0;
    } else {
     s0+=9119.0;
     s1+=777.0;
    }
   }
  } else {
   if(i39<0.04708695411682129){
    if(i77<8.984366286313161e-05){
     s0+=65.0;
     s1+=911.0;
    } else {
     s0+=107.0;
     s1+=148.0;
    }
   } else {
    if(i27<1.255998969078064){
     s0+=515.0;
     s1+=351.0;
    } else {
     s0+=808.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i10<-0.0016330182552337646){
   if(i2<0.0937989354133606){
    if(i54<-0.06131160259246826){
     s0+=88.0;
     s1+=122.0;
    } else {
     s0+=3896.0;
     s1+=92.0;
    }
   } else {
    if(i2<0.11727350950241089){
     s0+=41.0;
     s1+=71.0;
    } else {
     s0+=11.0;
     s1+=592.0;
    }
   }
  } else {
   if(i7<-0.00041490793228149414){
    s0+=783.0;
   } else {
    if(i2<0.013825416564941406){
     s0+=68.0;
     s1+=23.0;
    } else {
     s0+=140.0;
     s1+=3302.0;
    }
   }
  }
 }
} else {
 if(i0<0.05761834979057312){
  if(i44<-1.417127077729674e-05){
   s1+=216.0;
  } else {
   if(i37<0.9735628962516785){
    s1+=1.0;
   } else {
    if(i17<0.00024306774139404297){
     s0+=550.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<-4.330423689680174e-05){
   if(i43<0.00018987638759426773){
    if(i57<-5.543231964111328e-06){
     s0+=7.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<-0.0002989768981933594){
     s0+=18.0;
    } else {
     s0+=2.0;
     s1+=9741.0;
    }
   }
  } else {
   if(i27<1.1386182308197021){
    s1+=109.0;
   } else {
    if(i36<0.0038229599595069885){
     s0+=93.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   }
  }
 }
}
if(i0<0.08195176720619202){
 if(i6<1.002474308013916){
  if(i23<0.0002809908182825893){
   if(i9<1.0042959451675415){
    if(i48<-0.0017580389976501465){
     s0+=281.0;
     s1+=33.0;
    } else {
     s0+=51839.0;
     s1+=131.0;
    }
   } else {
    if(i27<1.1386182308197021){
     s0+=32.0;
     s1+=60.0;
    } else {
     s0+=363.0;
    }
   }
  } else {
   if(i6<0.9969292879104614){
    if(i70<0.0022793624084442854){
     s0+=9262.0;
     s1+=154.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i59<3.412243677303195e-05){
     s0+=4836.0;
     s1+=472.0;
    } else {
     s0+=2769.0;
     s1+=1220.0;
    }
   }
  }
 } else {
  if(i29<1.2160736322402954){
   if(i29<1.0580317974090576){
    s0+=4.0;
   } else {
    if(i43<0.0038572936318814754){
     s0+=1.0;
     s1+=629.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   }
  } else {
   if(i57<-0.002220720052719116){
    if(i71<-6.168417166918516e-05){
     s0+=8.0;
    } else {
     s0+=32.0;
     s1+=218.0;
    }
   } else {
    if(i54<-0.03962358832359314){
     s0+=5.0;
     s1+=27.0;
    } else {
     s0+=227.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i9<1.0063388347625732){
  if(i20<0.004806322976946831){
   if(i61<0.032519519329071045){
    if(i33<0.9986792802810669){
     s0+=112.0;
    } else {
     s0+=253.0;
     s1+=1022.0;
    }
   } else {
    if(i39<0.055247485637664795){
     s0+=74.0;
     s1+=123.0;
    } else {
     s0+=893.0;
     s1+=192.0;
    }
   }
  } else {
   if(i14<0.9980086088180542){
    s0+=85.0;
   } else {
    if(i39<0.04517140984535217){
     s0+=1.0;
     s1+=1885.0;
    } else {
     s0+=189.0;
     s1+=1358.0;
    }
   }
  }
 } else {
  if(i5<-2.235615102108568e-05){
   if(i7<-0.00043469667434692383){
    s0+=1.0;
   } else {
    if(i10<0.0006344914436340332){
     s0+=13.0;
     s1+=371.0;
    } else {
     s0+=12.0;
     s1+=8963.0;
    }
   }
  } else {
   if(i4<-1.1920928955078125e-05){
    s1+=9.0;
   } else {
    if(i47<0.0010411773109808564){
     s0+=56.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i4<3.427267074584961e-05){
 if(i12<1.0452215671539307){
  if(i0<0.08341902494430542){
   if(i65<0.0017348774708807468){
    if(i71<0.0002723319048527628){
     s0+=52421.0;
     s1+=212.0;
    } else {
     s0+=6052.0;
     s1+=278.0;
    }
   } else {
    if(i36<0.0008648711955174804){
     s0+=950.0;
     s1+=325.0;
    } else {
     s0+=2339.0;
     s1+=54.0;
    }
   }
  } else {
   if(i6<0.9956993460655212){
    if(i50<0.09433344006538391){
     s0+=103.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i42<0.00016185641288757324){
     s0+=33.0;
     s1+=212.0;
    } else {
     s0+=44.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i4<1.1026859283447266e-05){
   if(i30<0.005974637344479561){
    if(i14<0.9986410140991211){
     s0+=1997.0;
     s1+=9.0;
    } else {
     s0+=4512.0;
     s1+=1715.0;
    }
   } else {
    if(i2<0.08575984835624695){
     s0+=620.0;
     s1+=108.0;
    } else {
     s0+=45.0;
     s1+=740.0;
    }
   }
  } else {
   if(i53<0.9998993873596191){
    if(i36<0.0005522695719264448){
     s0+=73.0;
    } else {
     s0+=91.0;
     s1+=895.0;
    }
   } else {
    if(i62<0.1101745218038559){
     s0+=812.0;
     s1+=465.0;
    } else {
     s0+=177.0;
     s1+=292.0;
    }
   }
  }
 }
} else {
 if(i5<-4.32968299719505e-05){
  if(i3<0.00042515993118286133){
   s0+=189.0;
  } else {
   if(i17<6.079673767089844e-06){
    if(i2<0.13081911206245422){
     s0+=234.0;
     s1+=440.0;
    } else {
     s0+=17.0;
     s1+=863.0;
    }
   } else {
    if(i43<0.0001822777558118105){
     s0+=3.0;
    } else {
     s0+=12.0;
     s1+=10060.0;
    }
   }
  }
 } else {
  if(i53<0.9994522333145142){
   s0+=317.0;
  } else {
   if(i29<1.2296775579452515){
    if(i1<0.05648958683013916){
     s0+=21.0;
     s1+=25.0;
    } else {
     s0+=13.0;
     s1+=260.0;
    }
   } else {
    if(i10<-0.0007238984107971191){
     s0+=2.0;
     s1+=23.0;
    } else {
     s0+=167.0;
    }
   }
  }
 }
}
if(i1<0.0852321982383728){
 if(i22<1.0485899448394775){
  if(i56<-0.002243131399154663){
   if(i2<0.04207971692085266){
    if(i53<0.9998379349708557){
     s0+=513.0;
     s1+=84.0;
    } else {
     s0+=1098.0;
     s1+=20.0;
    }
   } else {
    if(i43<0.0011022964026778936){
     s0+=73.0;
     s1+=99.0;
    } else {
     s0+=98.0;
     s1+=4.0;
    }
   }
  } else {
   if(i25<1.0107519626617432){
    if(i23<0.00025782122975215316){
     s0+=46941.0;
     s1+=61.0;
    } else {
     s0+=7269.0;
     s1+=105.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i2<0.058641403913497925){
   if(i6<1.002650499343872){
    if(i41<0.001363984658382833){
     s0+=4710.0;
     s1+=816.0;
    } else {
     s0+=6648.0;
     s1+=232.0;
    }
   } else {
    if(i31<1.1509525775909424){
     s0+=1.0;
     s1+=338.0;
    } else {
     s0+=147.0;
     s1+=179.0;
    }
   }
  } else {
   if(i3<0.00046700239181518555){
    if(i35<0.03524532914161682){
     s0+=102.0;
     s1+=475.0;
    } else {
     s0+=1530.0;
     s1+=197.0;
    }
   } else {
    if(i38<0.003240823745727539){
     s0+=30.0;
     s1+=440.0;
    } else {
     s0+=56.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i14<0.9985091686248779){
  if(i36<0.008839060552418232){
   if(i4<-3.224611282348633e-05){
    s0+=557.0;
   } else {
    if(i14<0.9980377554893494){
     s0+=39.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i9<0.9753037691116333){
    s0+=22.0;
   } else {
    if(i49<0.022542908787727356){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i13<1.0156707763671875){
   if(i36<0.006298048421740532){
    if(i79<-0.0024547490756958723){
     s0+=384.0;
     s1+=174.0;
    } else {
     s0+=571.0;
     s1+=2492.0;
    }
   } else {
    if(i22<1.0771137475967407){
     s0+=45.0;
     s1+=27.0;
    } else {
     s0+=76.0;
     s1+=2523.0;
    }
   }
  } else {
   if(i13<1.0235681533813477){
    if(i5<-4.3160176574019715e-05){
     s0+=1.0;
     s1+=1396.0;
    } else {
     s0+=129.0;
     s1+=99.0;
    }
   } else {
    if(i44<-8.48619583848631e-06){
     s0+=4.0;
     s1+=7209.0;
    } else {
     s0+=18.0;
     s1+=184.0;
    }
   }
  }
 }
}
if(i9<1.0047039985656738){
 if(i8<0.08099564909934998){
  if(i6<1.0024974346160889){
   if(i23<0.0003013329696841538){
    if(i25<1.0087212324142456){
     s0+=53178.0;
     s1+=225.0;
    } else {
     s0+=60.0;
     s1+=46.0;
    }
   } else {
    if(i29<1.1812903881072998){
     s0+=5598.0;
     s1+=2011.0;
    } else {
     s0+=9639.0;
     s1+=350.0;
    }
   }
  } else {
   if(i32<0.009132562205195427){
    if(i58<-0.0059322211891412735){
     s0+=43.0;
     s1+=1.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i70<0.0004029916599392891){
     s0+=30.0;
     s1+=32.0;
    } else {
     s0+=19.0;
     s1+=336.0;
    }
   }
  }
 } else {
  if(i71<0.0004660844278987497){
   if(i26<0.018142905086278915){
    if(i64<0.004190325736999512){
     s0+=150.0;
     s1+=70.0;
    } else {
     s0+=318.0;
     s1+=15.0;
    }
   } else {
    if(i5<-1.2539566341729369e-05){
     s0+=140.0;
     s1+=709.0;
    } else {
     s0+=248.0;
     s1+=80.0;
    }
   }
  } else {
   if(i5<1.2781321856891736e-05){
    if(i0<0.12013652920722961){
     s0+=119.0;
     s1+=342.0;
    } else {
     s0+=31.0;
     s1+=2217.0;
    }
   } else {
    if(i53<1.0000600814819336){
     s0+=122.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i23<0.00021139491582289338){
  if(i36<0.0008627963252365589){
   if(i37<1.0053894519805908){
    s0+=2.0;
   } else {
    if(i42<0.00037020444869995117){
     s1+=58.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i2<0.0711376965045929){
    s0+=305.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i4<3.266334533691406e-05){
   if(i1<0.08274880051612854){
    if(i51<-0.00034893088741227984){
     s0+=472.0;
     s1+=22.0;
    } else {
     s0+=111.0;
     s1+=111.0;
    }
   } else {
    if(i27<1.2604451179504395){
     s0+=23.0;
     s1+=588.0;
    } else {
     s0+=145.0;
     s1+=193.0;
    }
   }
  } else {
   if(i44<-1.3807641153107397e-05){
    if(i32<0.00040641502710059285){
     s0+=2.0;
    } else {
     s0+=35.0;
     s1+=9643.0;
    }
   } else {
    if(i1<0.08730629086494446){
     s0+=101.0;
     s1+=13.0;
    } else {
     s0+=19.0;
     s1+=248.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i2<0.07742854952812195){
  if(i64<-0.0024193525314331055){
   if(i20<0.005810434464365244){
    if(i2<0.021752893924713135){
     s0+=1696.0;
     s1+=127.0;
    } else {
     s0+=338.0;
     s1+=217.0;
    }
   } else {
    if(i11<1.0386161804199219){
     s0+=186.0;
     s1+=85.0;
    } else {
     s0+=19.0;
     s1+=263.0;
    }
   }
  } else {
   if(i31<1.0557184219360352){
    s0+=42140.0;
   } else {
    if(i30<0.001009470084682107){
     s0+=5429.0;
     s1+=1334.0;
    } else {
     s0+=18653.0;
     s1+=307.0;
    }
   }
  }
 } else {
  if(i4<6.318092346191406e-06){
   if(i42<-0.00014224648475646973){
    if(i71<0.002163417637348175){
     s0+=438.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i30<0.00037778192199766636){
     s0+=85.0;
    } else {
     s0+=629.0;
     s1+=1107.0;
    }
   }
  } else {
   if(i19<1.0015175342559814){
    if(i50<0.06429246068000793){
     s0+=14.0;
     s1+=172.0;
    } else {
     s0+=163.0;
     s1+=173.0;
    }
   } else {
    if(i26<0.01839008927345276){
     s0+=60.0;
     s1+=191.0;
    } else {
     s0+=25.0;
     s1+=2003.0;
    }
   }
  }
 }
} else {
 if(i0<0.08273714780807495){
  if(i5<-3.935630229534581e-05){
   if(i29<1.2271616458892822){
    if(i54<0.032001495361328125){
     s0+=4.0;
     s1+=660.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i20<0.006973780691623688){
     s0+=113.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   }
  } else {
   if(i13<1.0319185256958008){
    if(i41<0.0007325062761083245){
     s0+=106.0;
     s1+=60.0;
    } else {
     s0+=694.0;
     s1+=6.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i20<0.0033071450889110565){
   if(i35<0.058881133794784546){
    if(i38<0.005540609359741211){
     s0+=5.0;
     s1+=546.0;
    } else {
     s0+=20.0;
     s1+=10.0;
    }
   } else {
    if(i38<0.004517495632171631){
     s0+=36.0;
     s1+=145.0;
    } else {
     s0+=301.0;
     s1+=99.0;
    }
   }
  } else {
   if(i14<0.9989993572235107){
    if(i41<0.0016871243715286255){
     s0+=54.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i69<1.0231178748654202e-06){
     s0+=33.0;
     s1+=9415.0;
    } else {
     s0+=2.0;
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
