/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=30 top_hat_box=20 top_hat_box=15 difference_of_gaussian=15 top_hat_box=10 laplace_box_of_gaussian_blur=15 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 maximum_box=2 maximum_box=3 difference_of_gaussian=10 gaussian_blur=15 mean_box=15 difference_of_gaussian=20 mean_box=10 gaussian_blur=5 median_box=5 sobel_of_gaussian_blur=10 gaussian_blur=2 maximum_box=5 laplace_box_of_gaussian_blur=10 mean_box=3 laplace_box_of_gaussian_blur=20 maximum_box=1 sobel_of_median_box=5 gaussian_blur=3 gaussian_blur=1 variance_box=2 mean_box=5 median_box=3 variance_box=3 gaussian_blur=20 mean_box=2 maximum_box=30 maximum_box=10 maximum_box=20 difference_of_gaussian=30 variance_box=15 variance_box=30 top_hat_box=2 variance_box=10 sobel_of_gaussian_blur=1 maximum_box=15 variance_box=20 top_hat_box=3 sobel_of_gaussian_blur=5 top_hat_box=5 small_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=15 difference_of_gaussian=2 laplace_box_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=5 top_hat_box=1 laplace_box_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=1 variance_box=5 large_hessian_eigenvalue_of_gaussian_blur=10 large_hessian_eigenvalue_of_gaussian_blur=2 small_hessian_eigenvalue_of_gaussian_blur=1 difference_of_gaussian=3 gaussian_blur=30 sobel_of_gaussian_blur=20 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=2 mean_box=20 sobel_of_gaussian_blur=2 sobel_of_median_box=3 laplace_box_of_gaussian_blur=3 mean_box=30 small_hessian_eigenvalue_of_gaussian_blur=20 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=1 sobel_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=20 difference_of_gaussian=5 variance_box=1 laplace_box_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=3
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 81
max_depth = 5
num_trees = 250
feature_importances = 0.11834799080666286,0.127721106017191,0.10647933684702844,0.0643489411701304,0.041789666509176406,0.05741409751414383,0.05259525590223211,0.055345032070234106,0.023257722152361358,0.021011916589368965,0.029375900972296035,0.01731322281689595,0.01064314084836111,0.04206167029759878,0.0162125740427612,0.032259534408424474,0.01799574850855663,0.010460519742773056,0.004931013915025894,0.009376938936419301,0.011730136299766302,0.00504012609631448,0.01289278625469165,0.011285369498165521,0.004355717851231489,0.010290544041823035,0.000539763102804398,0.0034211557456825057,0.0017632691592470548,0.0024940341094256573,0.005117121684236463,0.0026339132152685667,0.001348318825314647,0.003472652448998253,0.0032152048415361447,0.002619431273024225,0.0020742355854748706,0.003231444998058986,0.002178675925640375,0.002286669897700262,0.002233661100972133,0.0002806484467593106,0.003313647771293217,0.00258880974017224,0.002604297327941,0.0027675884850704748,0.001390471602101012,0.0018311032722261723,0.0017541552981070927,0.0024463950961678372,0.0018124947469065503,0.0013770645779616893,0.0006220848760628443,0.0009725186749880247,0.0012069329923438373,0.0009353370539295996,0.0019452900735087543,0.0010052771035907544,0.000870944367114158,0.0010258790089682176,0.0010756769972091699,0.0013309955570395301,0.0006488230398464309,0.0009244367960822184,0.0008386849830375691,0.001002171259692483,0.0007620448902207312,0.00027624590762251794,0.0009611470971966905,0.001413123228285822,0.0011221023599829166,0.0011760182927945252,0.0006717165357353141,0.0008388021370072265,0.000602287202643646,0.00023128133528263896,0.00029690851292155703,0.0015218173990381172,7.967039060575079e-05,0.0002131715506669724,9.637198885637455e-05
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_in78_TYPE in78, IMAGE_in79_TYPE in79, IMAGE_in80_TYPE in80, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i20<0.00011211633682250977){
 if(i1<0.08393841981887817){
  if(i19<1.0451585054397583){
   if(i52<0.0002863490954041481){
    if(i7<-5.636283094645478e-05){
     s1+=2.0;
    } else {
     s0+=48739.0;
     s1+=42.0;
    }
   } else {
    if(i14<0.9939502477645874){
     s0+=4218.0;
     s1+=4.0;
    } else {
     s0+=818.0;
     s1+=162.0;
    }
   }
  } else {
   if(i13<0.0006368160247802734){
    if(i34<1.1031841039657593){
     s0+=5356.0;
     s1+=1375.0;
    } else {
     s0+=8981.0;
     s1+=368.0;
    }
   } else {
    if(i49<0.0017331838607788086){
     s0+=233.0;
     s1+=434.0;
    } else {
     s0+=322.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i5<-4.929304122924805e-05){
   if(i31<0.9993178248405457){
    if(i36<-0.00014340877532958984){
     s0+=326.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i7<-4.2239975300617516e-05){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=76.0;
     s1+=68.0;
    }
   }
  } else {
   if(i35<1.3312374353408813){
    if(i63<0.005401134490966797){
     s0+=316.0;
     s1+=2019.0;
    } else {
     s0+=612.0;
     s1+=396.0;
    }
   } else {
    if(i39<0.054422199726104736){
     s0+=6.0;
     s1+=1410.0;
    } else {
     s0+=138.0;
     s1+=858.0;
    }
   }
  }
 }
} else {
 if(i30<0.0002852793550118804){
  if(i18<1.0080926418304443){
   if(i76<-5.846211024618242e-06){
    s1+=7.0;
   } else {
    if(i21<1.0083391666412354){
     s0+=514.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i27<0.0001832272973842919){
    if(i34<1.1333069801330566){
     s1+=34.0;
    } else {
     s0+=37.0;
     s1+=2.0;
    }
   } else {
    if(i74<1.0000287294387817){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=125.0;
    }
   }
  }
 } else {
  if(i38<0.0004695047391578555){
   s0+=50.0;
  } else {
   if(i1<0.06510257720947266){
    if(i72<-4.783833446708741e-06){
     s0+=1.0;
     s1+=247.0;
    } else {
     s0+=164.0;
     s1+=29.0;
    }
   } else {
    if(i3<3.3468008041381836e-05){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=61.0;
     s1+=9557.0;
    }
   }
  }
 }
}
if(i7<-7.277324766619131e-05){
 if(i1<0.06308376789093018){
  if(i14<1.0017423629760742){
   if(i3<0.00047665834426879883){
    if(i48<0.006539278198033571){
     s0+=778.0;
     s1+=29.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i58<0.0058226026594638824){
     s0+=63.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=55.0;
    }
   }
  } else {
   if(i50<0.006999790668487549){
    if(i5<2.0265579223632812e-05){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=221.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i19<1.0567119121551514){
   if(i72<-1.03072543424787e-05){
    s0+=38.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i64<2.8861964892712422e-05){
    if(i20<6.258487701416016e-06){
     s0+=66.0;
     s1+=1145.0;
    } else {
     s0+=3.0;
     s1+=9566.0;
    }
   } else {
    if(i61<1.0004127025604248){
     s1+=358.0;
    } else {
     s0+=63.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i30<0.0003156907041557133){
  if(i18<1.0087131261825562){
   if(i6<1.00287926197052){
    if(i22<1.8775463104248047e-05){
     s0+=53749.0;
     s1+=269.0;
    } else {
     s0+=219.0;
     s1+=36.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s1+=40.0;
    } else {
     s0+=34.0;
    }
   }
  } else {
   if(i42<1.1063789129257202){
    if(i33<1.0877101421356201){
     s0+=25.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=175.0;
    }
   } else {
    if(i45<0.017317909747362137){
     s0+=146.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i33<1.255998969078064){
   if(i38<0.0005124137969687581){
    if(i33<1.0840110778808594){
     s0+=2376.0;
    } else {
     s0+=1735.0;
     s1+=513.0;
    }
   } else {
    if(i10<-0.0011103451251983643){
     s0+=1146.0;
     s1+=344.0;
    } else {
     s0+=806.0;
     s1+=3195.0;
    }
   }
  } else {
   if(i44<0.059162646532058716){
    if(i3<0.00047701597213745117){
     s0+=8729.0;
     s1+=406.0;
    } else {
     s0+=62.0;
     s1+=182.0;
    }
   } else {
    if(i48<0.0012936537386849523){
     s0+=675.0;
     s1+=54.0;
    } else {
     s0+=410.0;
     s1+=409.0;
    }
   }
  }
 }
}
if(i7<-7.076597830746323e-05){
 if(i64<3.247587301302701e-05){
  if(i33<1.082350254058838){
   s0+=161.0;
  } else {
   if(i10<-0.0008057951927185059){
    if(i1<0.06251806020736694){
     s0+=186.0;
     s1+=87.0;
    } else {
     s0+=54.0;
     s1+=621.0;
    }
   } else {
    if(i0<0.05142247676849365){
     s0+=26.0;
     s1+=146.0;
    } else {
     s0+=43.0;
     s1+=10403.0;
    }
   }
  }
 } else {
  if(i79<-0.0028856396675109863){
   if(i45<0.04963045194745064){
    if(i1<0.10667821764945984){
     s0+=644.0;
     s1+=15.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i65<0.05702821910381317){
     s0+=6.0;
    } else {
     s0+=3.0;
     s1+=77.0;
    }
   }
  } else {
   if(i75<0.00015118272858671844){
    if(i69<0.08704182505607605){
     s0+=74.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i27<0.0005489034811034799){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i2<0.07660335302352905){
  if(i3<0.0006027519702911377){
   if(i27<0.0002944310544990003){
    if(i70<-0.0031135082244873047){
     s0+=192.0;
     s1+=115.0;
    } else {
     s0+=56016.0;
     s1+=483.0;
    }
   } else {
    if(i33<1.100754976272583){
     s0+=3075.0;
     s1+=1055.0;
    } else {
     s0+=8631.0;
     s1+=373.0;
    }
   }
  } else {
   if(i33<1.2392117977142334){
    if(i35<1.0657644271850586){
     s0+=69.0;
    } else {
     s1+=316.0;
    }
   } else {
    if(i32<0.9994988441467285){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=135.0;
    }
   }
  }
 } else {
  if(i7<-1.2737207725876942e-05){
   if(i38<0.002106049796566367){
    if(i33<1.255998969078064){
     s0+=92.0;
     s1+=1983.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i1<0.13189154863357544){
     s0+=423.0;
     s1+=161.0;
    } else {
     s0+=93.0;
     s1+=559.0;
    }
   }
  } else {
   if(i44<0.054701775312423706){
    if(i76<6.016727638780139e-06){
     s0+=44.0;
     s1+=201.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i5<4.357099533081055e-05){
     s0+=1041.0;
     s1+=127.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
}
if(i0<0.08504641056060791){
 if(i5<4.1812658309936523e-05){
  if(i40<0.00035485124681144953){
   if(i43<0.0002955076633952558){
    s0+=34868.0;
   } else {
    if(i19<1.0581047534942627){
     s0+=4858.0;
     s1+=20.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  } else {
   if(i43<0.0008772581350058317){
    if(i38<0.0004895749152638018){
     s0+=4814.0;
     s1+=404.0;
    } else {
     s0+=1419.0;
     s1+=1053.0;
    }
   } else {
    if(i19<1.0576856136322021){
     s0+=14840.0;
     s1+=40.0;
    } else {
     s0+=7989.0;
     s1+=618.0;
    }
   }
  }
 } else {
  if(i17<0.002375594340264797){
   if(i36<0.00019147992134094238){
    if(i16<1.025543451309204){
     s0+=233.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i42<1.0657644271850586){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   if(i50<0.007392257452011108){
    if(i6<1.0016043186187744){
     s0+=33.0;
     s1+=8.0;
    } else {
     s0+=85.0;
     s1+=879.0;
    }
   } else {
    if(i8<1.1235028505325317){
     s0+=82.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i31<0.9990390539169312){
  if(i19<1.398578405380249){
   if(i18<0.997482419013977){
    s0+=468.0;
   } else {
    if(i72<-2.506166538296384e-06){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=179.0;
    }
   }
  } else {
   s1+=13.0;
  }
 } else {
  if(i5<3.4749507904052734e-05){
   if(i17<0.0017346350941807032){
    if(i46<0.06329602003097534){
     s0+=24.0;
     s1+=102.0;
    } else {
     s0+=563.0;
     s1+=122.0;
    }
   } else {
    if(i38<0.001883243559859693){
     s0+=81.0;
     s1+=1567.0;
    } else {
     s0+=483.0;
     s1+=1472.0;
    }
   }
  } else {
   if(i42<1.3005231618881226){
    if(i42<1.282500147819519){
     s0+=110.0;
     s1+=2943.0;
    } else {
     s0+=22.0;
     s1+=17.0;
    }
   } else {
    if(i43<0.005191545933485031){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=16.0;
     s1+=7720.0;
    }
   }
  }
 }
}
if(i21<1.008514165878296){
 if(i3<0.000570446252822876){
  if(i2<0.08160167932510376){
   if(i1<0.06928205490112305){
    if(i41<0.04190307855606079){
     s0+=53667.0;
     s1+=427.0;
    } else {
     s0+=11870.0;
     s1+=929.0;
    }
   } else {
    if(i44<0.04103738069534302){
     s0+=113.0;
     s1+=381.0;
    } else {
     s0+=1536.0;
     s1+=129.0;
    }
   }
  } else {
   if(i7<-4.131563400733285e-06){
    if(i13<-0.000432431697845459){
     s0+=90.0;
     s1+=4.0;
    } else {
     s0+=319.0;
     s1+=1716.0;
    }
   } else {
    if(i59<-0.018003810197114944){
     s0+=416.0;
     s1+=23.0;
    } else {
     s0+=119.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i47<-1.3563414540840313e-05){
   if(i20<-0.00012564659118652344){
    if(i42<1.4617822170257568){
     s0+=124.0;
     s1+=259.0;
    } else {
     s0+=8.0;
     s1+=215.0;
    }
   } else {
    if(i71<1.0057945251464844){
     s0+=24.0;
     s1+=1970.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i69<0.03162756562232971){
    if(i30<0.00020192298688925803){
     s0+=151.0;
    } else {
     s0+=46.0;
     s1+=14.0;
    }
   } else {
    if(i59<-0.05094006657600403){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i25<1.0218091011047363){
  if(i12<1.0029211044311523){
   if(i4<0.05660352110862732){
    if(i0<0.0682392418384552){
     s0+=1413.0;
     s1+=168.0;
    } else {
     s0+=22.0;
     s1+=224.0;
    }
   } else {
    if(i17<0.0035789392422884703){
     s0+=646.0;
     s1+=420.0;
    } else {
     s0+=134.0;
     s1+=987.0;
    }
   }
  } else {
   if(i6<1.004145860671997){
    if(i2<0.06316649913787842){
     s0+=100.0;
     s1+=39.0;
    } else {
     s0+=35.0;
     s1+=400.0;
    }
   } else {
    if(i38<0.010073119774460793){
     s1+=1197.0;
    } else {
     s0+=3.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i7<-3.1306590244639665e-05){
   if(i16<1.0196558237075806){
    if(i6<1.0039265155792236){
     s0+=19.0;
     s1+=133.0;
    } else {
     s1+=388.0;
    }
   } else {
    if(i24<0.006139648612588644){
     s0+=1.0;
     s1+=148.0;
    } else {
     s1+=6723.0;
    }
   }
  } else {
   if(i73<0.0012503779726102948){
    if(i75<8.880624955054373e-05){
     s0+=184.0;
    } else {
     s0+=16.0;
     s1+=30.0;
    }
   } else {
    s1+=12.0;
   }
  }
 }
}
if(i16<1.0081671476364136){
 if(i19<1.0572319030761719){
  if(i9<1.0398883819580078){
   if(i73<0.0006835000240243971){
    if(i26<1.0163133144378662){
     s0+=50991.0;
     s1+=118.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i6<0.9965823292732239){
     s0+=2287.0;
     s1+=21.0;
    } else {
     s0+=1012.0;
     s1+=200.0;
    }
   }
  } else {
   if(i65<0.009172074496746063){
    if(i76<-2.4644075438118307e-06){
     s1+=8.0;
    } else {
     s0+=2655.0;
     s1+=26.0;
    }
   } else {
    if(i5<-1.7523765563964844e-05){
     s0+=1349.0;
     s1+=110.0;
    } else {
     s0+=267.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i65<0.15965405106544495){
   if(i5<2.8789043426513672e-05){
    if(i42<1.103413462638855){
     s0+=1664.0;
     s1+=1259.0;
    } else {
     s0+=8910.0;
     s1+=1177.0;
    }
   } else {
    if(i24<0.022695496678352356){
     s0+=235.0;
     s1+=485.0;
    } else {
     s0+=112.0;
     s1+=1088.0;
    }
   }
  } else {
   if(i1<0.04478573799133301){
    if(i28<0.9248287677764893){
     s0+=92.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   } else {
    if(i45<0.04112007096409798){
     s0+=14.0;
     s1+=2.0;
    } else {
     s1+=1328.0;
    }
   }
  }
 }
} else {
 if(i48<0.00104647153057158){
  if(i36<1.4036893844604492e-05){
   if(i7<-2.793263047351502e-05){
    if(i7<-3.31311603076756e-05){
     s1+=763.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   } else {
    if(i46<0.14351439476013184){
     s0+=122.0;
     s1+=42.0;
    } else {
     s0+=3.0;
     s1+=97.0;
    }
   }
  } else {
   if(i1<0.1726764738559723){
    if(i13<0.0005682110786437988){
     s0+=832.0;
     s1+=138.0;
    } else {
     s1+=165.0;
    }
   } else {
    if(i7<-4.342442116467282e-05){
     s1+=322.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i31<0.998813271522522){
   if(i10<0.0014193356037139893){
    s0+=126.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i15<1.006255865097046){
    if(i45<0.02303205616772175){
     s0+=194.0;
     s1+=355.0;
    } else {
     s0+=13.0;
     s1+=1016.0;
    }
   } else {
    if(i1<0.06887984275817871){
     s0+=17.0;
     s1+=214.0;
    } else {
     s0+=3.0;
     s1+=7993.0;
    }
   }
  }
 }
}
if(i23<1.0406770706176758){
 if(i50<-0.0058502256870269775){
  if(i11<1.0012686252593994){
   if(i5<3.129243850708008e-05){
    if(i21<0.9371647834777832){
     s0+=1011.0;
     s1+=21.0;
    } else {
     s0+=2332.0;
     s1+=788.0;
    }
   } else {
    if(i30<0.00031422270694747567){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=152.0;
    }
   }
  } else {
   if(i2<0.017583131790161133){
    if(i57<0.00015594623982906342){
     s0+=12.0;
     s1+=74.0;
    } else {
     s0+=157.0;
     s1+=13.0;
    }
   } else {
    if(i3<0.00023686885833740234){
     s0+=36.0;
     s1+=56.0;
    } else {
     s0+=11.0;
     s1+=1287.0;
    }
   }
  }
 } else {
  if(i15<1.0048989057540894){
   if(i2<0.08029741048812866){
    if(i56<0.0002994866808876395){
     s0+=46098.0;
     s1+=43.0;
    } else {
     s0+=16580.0;
     s1+=1007.0;
    }
   } else {
    if(i61<0.9993482232093811){
     s0+=84.0;
    } else {
     s0+=79.0;
     s1+=697.0;
    }
   }
  } else {
   if(i47<-1.4906235264788847e-05){
    if(i17<0.0014021124225109816){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=451.0;
    }
   } else {
    if(i37<0.0012001653667539358){
     s0+=25.0;
     s1+=165.0;
    } else {
     s0+=455.0;
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i0<0.09948408603668213){
  if(i64<-6.669309186690953e-06){
   if(i3<0.000916898250579834){
    s0+=3.0;
   } else {
    if(i33<1.5942578315734863){
     s1+=220.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i51<-0.00011381808144506067){
    if(i12<1.002640724182129){
     s0+=1599.0;
     s1+=433.0;
    } else {
     s0+=73.0;
     s1+=200.0;
    }
   } else {
    if(i14<1.0012602806091309){
     s0+=1498.0;
     s1+=61.0;
    } else {
     s0+=56.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i22<-1.6361474990844727e-05){
   if(i37<0.005668687634170055){
    if(i62<8.08174954727292e-05){
     s1+=1.0;
    } else {
     s0+=266.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i48<0.0007380262250080705){
    if(i14<1.004007339477539){
     s0+=398.0;
     s1+=270.0;
    } else {
     s0+=3.0;
     s1+=345.0;
    }
   } else {
    if(i2<0.1407366693019867){
     s0+=285.0;
     s1+=1264.0;
    } else {
     s0+=91.0;
     s1+=9426.0;
    }
   }
  }
 }
}
if(i10<0.0007560849189758301){
 if(i17<0.004808079916983843){
  if(i0<0.0852343738079071){
   if(i58<0.0019898847676813602){
    if(i34<1.0598037242889404){
     s0+=41637.0;
     s1+=15.0;
    } else {
     s0+=18271.0;
     s1+=884.0;
    }
   } else {
    if(i33<1.0835556983947754){
     s0+=1032.0;
    } else {
     s0+=2212.0;
     s1+=711.0;
    }
   }
  } else {
   if(i24<0.021726366132497787){
    if(i39<0.05329614877700806){
     s0+=388.0;
     s1+=262.0;
    } else {
     s0+=663.0;
     s1+=71.0;
    }
   } else {
    if(i23<1.0849921703338623){
     s0+=110.0;
     s1+=818.0;
    } else {
     s0+=363.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i5<-1.245737075805664e-05){
   if(i2<0.0826224684715271){
    if(i43<0.0009984723292291164){
     s0+=135.0;
     s1+=115.0;
    } else {
     s0+=4637.0;
     s1+=86.0;
    }
   } else {
    if(i11<0.9979498386383057){
     s0+=84.0;
    } else {
     s0+=31.0;
     s1+=370.0;
    }
   }
  } else {
   if(i20<-0.0001844167709350586){
    if(i23<1.0889548063278198){
     s0+=673.0;
     s1+=447.0;
    } else {
     s1+=370.0;
    }
   } else {
    if(i2<0.016350537538528442){
     s0+=53.0;
     s1+=26.0;
    } else {
     s0+=91.0;
     s1+=2944.0;
    }
   }
  }
 }
} else {
 if(i10<0.0014296770095825195){
  if(i27<0.00016474597214255482){
   if(i1<0.06379631161689758){
    if(i72<-4.983964572602417e-06){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=358.0;
    }
   } else {
    if(i61<0.9996534585952759){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   }
  } else {
   if(i17<0.0044273450039327145){
    if(i42<1.1944798231124878){
     s0+=87.0;
     s1+=255.0;
    } else {
     s0+=234.0;
     s1+=56.0;
    }
   } else {
    if(i11<0.9987986087799072){
     s0+=5.0;
    } else {
     s1+=1049.0;
    }
   }
  }
 } else {
  if(i7<-6.249437865335494e-05){
   s1+=8344.0;
  } else {
   if(i57<-1.9460618204902858e-05){
    s1+=144.0;
   } else {
    if(i35<1.2156331539154053){
     s1+=17.0;
    } else {
     s0+=25.0;
    }
   }
  }
 }
}
if(i6<1.0024337768554688){
 if(i1<0.08225393295288086){
  if(i69<0.02560092881321907){
   if(i50<-0.0077676475048065186){
    if(i43<0.00040711110341362655){
     s0+=222.0;
     s1+=6.0;
    } else {
     s0+=245.0;
     s1+=202.0;
    }
   } else {
    if(i15<1.0044379234313965){
     s0+=56205.0;
     s1+=409.0;
    } else {
     s0+=372.0;
     s1+=129.0;
    }
   }
  } else {
   if(i20<-0.0002867281436920166){
    if(i54<-0.0386236310005188){
     s0+=368.0;
     s1+=85.0;
    } else {
     s0+=5969.0;
     s1+=34.0;
    }
   } else {
    if(i1<0.06053951382637024){
     s0+=4828.0;
     s1+=686.0;
    } else {
     s0+=712.0;
     s1+=584.0;
    }
   }
  }
 } else {
  if(i13<-0.00043773651123046875){
   if(i15<0.9812150001525879){
    if(i42<1.498544454574585){
     s0+=72.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    s0+=363.0;
   }
  } else {
   if(i49<0.00444406270980835){
    if(i24<0.016033794730901718){
     s0+=197.0;
     s1+=541.0;
    } else {
     s0+=96.0;
     s1+=1991.0;
    }
   } else {
    if(i57<4.051432915730402e-05){
     s0+=471.0;
     s1+=181.0;
    } else {
     s0+=448.0;
     s1+=1033.0;
    }
   }
  }
 }
} else {
 if(i51<-0.0005583568126894534){
  if(i5<3.400444984436035e-05){
   if(i8<1.04166579246521){
    s0+=2.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i14<0.9926901459693909){
    if(i67<1.0000982284545898){
     s0+=2.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i0<0.1267291009426117){
     s0+=2.0;
     s1+=281.0;
    } else {
     s1+=6995.0;
    }
   }
  }
 } else {
  if(i6<1.0045181512832642){
   if(i0<0.05816301703453064){
    if(i42<1.178355097770691){
     s0+=19.0;
     s1+=126.0;
    } else {
     s0+=188.0;
     s1+=34.0;
    }
   } else {
    if(i8<1.0833278894424438){
     s0+=48.0;
     s1+=737.0;
    } else {
     s0+=96.0;
     s1+=228.0;
    }
   }
  } else {
   if(i57<0.00012941667228005826){
    if(i20<-1.7285346984863281e-06){
     s0+=3.0;
     s1+=129.0;
    } else {
     s1+=2635.0;
    }
   } else {
    if(i36<0.00022724270820617676){
     s0+=21.0;
    } else {
     s0+=8.0;
     s1+=138.0;
    }
   }
  }
 }
}
if(i3<0.0005481839179992676){
 if(i46<0.06077057123184204){
  if(i8<1.0410094261169434){
   if(i55<0.008322732523083687){
    if(i0<0.07851552963256836){
     s0+=61076.0;
     s1+=796.0;
    } else {
     s0+=346.0;
     s1+=315.0;
    }
   } else {
    if(i6<0.995444118976593){
     s0+=643.0;
     s1+=7.0;
    } else {
     s0+=693.0;
     s1+=308.0;
    }
   }
  } else {
   if(i0<0.0780755877494812){
    if(i12<1.0003020763397217){
     s0+=4244.0;
     s1+=401.0;
    } else {
     s0+=855.0;
     s1+=349.0;
    }
   } else {
    if(i35<1.0724589824676514){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=100.0;
     s1+=1106.0;
    }
   }
  }
 } else {
  if(i24<0.02648836188018322){
   if(i28<1.0040465593338013){
    if(i74<0.981994092464447){
     s0+=20.0;
     s1+=92.0;
    } else {
     s0+=1541.0;
     s1+=232.0;
    }
   } else {
    if(i33<1.255998969078064){
     s0+=66.0;
     s1+=333.0;
    } else {
     s0+=203.0;
     s1+=31.0;
    }
   }
  } else {
   if(i11<0.9986646771430969){
    if(i47<-9.821748790272977e-06){
     s0+=21.0;
     s1+=20.0;
    } else {
     s0+=238.0;
     s1+=2.0;
    }
   } else {
    if(i4<0.11139896512031555){
     s0+=211.0;
     s1+=347.0;
    } else {
     s0+=113.0;
     s1+=1199.0;
    }
   }
  }
 }
} else {
 if(i7<-4.32968299719505e-05){
  if(i6<1.0043929815292358){
   if(i38<0.007757608778774738){
    if(i36<0.0002669394016265869){
     s0+=10.0;
     s1+=1410.0;
    } else {
     s0+=40.0;
     s1+=161.0;
    }
   } else {
    if(i42<1.344179391860962){
     s0+=121.0;
     s1+=21.0;
    } else {
     s0+=37.0;
     s1+=352.0;
    }
   }
  } else {
   if(i77<-0.001327425241470337){
    if(i36<0.00020137429237365723){
     s0+=22.0;
     s1+=231.0;
    } else {
     s0+=5.0;
     s1+=1166.0;
    }
   } else {
    if(i12<0.9974164962768555){
     s0+=3.0;
     s1+=133.0;
    } else {
     s0+=2.0;
     s1+=7953.0;
    }
   }
  }
 } else {
  if(i22<2.7477741241455078e-05){
   if(i75<9.116412547882646e-05){
    if(i46<0.09029170870780945){
     s1+=43.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.004672819748520851){
     s0+=356.0;
    } else {
     s1+=55.0;
    }
   }
  } else {
   if(i35<1.0657644271850586){
    s0+=7.0;
   } else {
    if(i11<1.0020787715911865){
     s0+=1.0;
     s1+=14.0;
    } else {
     s1+=167.0;
    }
   }
  }
 }
}
if(i11<1.0016403198242188){
 if(i8<1.0452277660369873){
  if(i70<-0.0023182928562164307){
   if(i21<0.9553036689758301){
    if(i15<0.9884791374206543){
     s0+=2345.0;
     s1+=49.0;
    } else {
     s0+=10.0;
     s1+=34.0;
    }
   } else {
    if(i52<0.00040371392969973385){
     s0+=1381.0;
     s1+=222.0;
    } else {
     s0+=918.0;
     s1+=611.0;
    }
   }
  } else {
   if(i9<1.0469666719436646){
    if(i11<1.0006134510040283){
     s0+=55888.0;
     s1+=359.0;
    } else {
     s0+=2364.0;
     s1+=157.0;
    }
   } else {
    if(i8<1.0338393449783325){
     s0+=1047.0;
     s1+=97.0;
    } else {
     s0+=722.0;
     s1+=412.0;
    }
   }
  }
 } else {
  if(i0<0.08918169140815735){
   if(i42<1.1037919521331787){
    if(i38<0.0005211567040532827){
     s0+=881.0;
     s1+=176.0;
    } else {
     s0+=170.0;
     s1+=428.0;
    }
   } else {
    if(i52<0.0013385883066803217){
     s0+=2951.0;
     s1+=174.0;
    } else {
     s0+=37.0;
     s1+=84.0;
    }
   }
  } else {
   if(i37<0.006360701285302639){
    if(i7<-1.3802891771774739e-05){
     s0+=358.0;
     s1+=1750.0;
    } else {
     s0+=766.0;
     s1+=127.0;
    }
   } else {
    if(i61<1.0003769397735596){
     s0+=27.0;
     s1+=2100.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i19<1.0644469261169434){
  if(i34<1.115822672843933){
   if(i6<1.0025243759155273){
    if(i73<0.00043169723358005285){
     s0+=91.0;
     s1+=7.0;
    } else {
     s1+=16.0;
    }
   } else {
    s1+=170.0;
   }
  } else {
   if(i15<1.008641004562378){
    if(i23<1.0152859687805176){
     s0+=43.0;
     s1+=6.0;
    } else {
     s0+=346.0;
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i10<-0.0024747848510742188){
   if(i45<0.03771286830306053){
    if(i9<1.1542948484420776){
     s0+=357.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=50.0;
    }
   } else {
    if(i0<0.0016897022724151611){
     s0+=3.0;
    } else {
     s1+=169.0;
    }
   }
  } else {
   if(i16<1.015785574913025){
    if(i2<0.1258956789970398){
     s0+=381.0;
     s1+=1449.0;
    } else {
     s0+=24.0;
     s1+=1593.0;
    }
   } else {
    if(i2<0.05994004011154175){
     s0+=4.0;
     s1+=86.0;
    } else {
     s1+=6788.0;
    }
   }
  }
 }
}
if(i0<0.08355346322059631){
 if(i19<1.0486011505126953){
  if(i30<0.0002816809283103794){
   if(i52<0.0002860315144062042){
    if(i21<1.0091400146484375){
     s0+=47681.0;
     s1+=31.0;
    } else {
     s0+=3.0;
     s1+=5.0;
    }
   } else {
    if(i50<0.0004360377788543701){
     s0+=126.0;
     s1+=65.0;
    } else {
     s0+=750.0;
     s1+=7.0;
    }
   }
  } else {
   if(i19<1.0428826808929443){
    if(i35<1.197464108467102){
     s0+=2503.0;
     s1+=116.0;
    } else {
     s0+=3491.0;
    }
   } else {
    if(i33<1.1013743877410889){
     s0+=383.0;
     s1+=166.0;
    } else {
     s0+=631.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i35<1.1037919521331787){
   if(i45<0.00408219825476408){
    if(i38<0.0005034152418375015){
     s0+=1619.0;
     s1+=32.0;
    } else {
     s0+=129.0;
     s1+=206.0;
    }
   } else {
    if(i71<0.9964056611061096){
     s0+=185.0;
    } else {
     s0+=651.0;
     s1+=1447.0;
    }
   }
  } else {
   if(i78<0.0002891707990784198){
    if(i3<0.0009415149688720703){
     s0+=5571.0;
     s1+=143.0;
    } else {
     s0+=7.0;
     s1+=52.0;
    }
   } else {
    if(i63<-0.0015742778778076172){
     s0+=1391.0;
     s1+=592.0;
    } else {
     s0+=3768.0;
     s1+=205.0;
    }
   }
  }
 }
} else {
 if(i36<-0.00014024972915649414){
  if(i35<1.5942578315734863){
   if(i20<-8.311867713928223e-05){
    s0+=595.0;
   } else {
    if(i11<0.9981576204299927){
     s0+=73.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=29.0;
    }
   }
  } else {
   if(i9<1.173022985458374){
    s0+=5.0;
   } else {
    s1+=115.0;
   }
  }
 } else {
  if(i38<0.0005116930697113276){
   if(i72<-1.3683908264283673e-06){
    if(i48<0.00047176823136396706){
     s0+=94.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=136.0;
    }
   } else {
    s0+=191.0;
   }
  } else {
   if(i20<8.881092071533203e-05){
    if(i7<-1.7099609976867214e-05){
     s0+=573.0;
     s1+=3641.0;
    } else {
     s0+=508.0;
     s1+=521.0;
    }
   } else {
    if(i15<1.0075511932373047){
     s0+=39.0;
     s1+=805.0;
    } else {
     s0+=17.0;
     s1+=8917.0;
    }
   }
  }
 }
}
if(i1<0.07873639464378357){
 if(i5<4.184246063232422e-05){
  if(i30<0.0002819819201249629){
   if(i29<1.0111806392669678){
    if(i31<1.0004222393035889){
     s0+=49322.0;
     s1+=118.0;
    } else {
     s0+=2979.0;
     s1+=105.0;
    }
   } else {
    if(i28<1.0124223232269287){
     s0+=2.0;
     s1+=53.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i37<0.001125785056501627){
    if(i47<-6.748596661054762e-06){
     s0+=144.0;
     s1+=521.0;
    } else {
     s0+=4181.0;
     s1+=793.0;
    }
   } else {
    if(i54<-0.028874605894088745){
     s0+=1397.0;
     s1+=257.0;
    } else {
     s0+=10572.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i34<1.0577372312545776){
   s0+=223.0;
  } else {
   if(i47<-1.4720981198479421e-05){
    if(i42<1.2563519477844238){
     s0+=18.0;
     s1+=594.0;
    } else {
     s0+=120.0;
     s1+=219.0;
    }
   } else {
    if(i37<0.0017281041946262121){
     s1+=26.0;
    } else {
     s0+=144.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3534850950236432e-05){
  if(i0<0.12467041611671448){
   if(i54<0.046632468700408936){
    if(i32<1.0422158241271973){
     s0+=120.0;
     s1+=2374.0;
    } else {
     s0+=72.0;
     s1+=17.0;
    }
   } else {
    if(i35<1.1423697471618652){
     s0+=7.0;
     s1+=54.0;
    } else {
     s0+=417.0;
     s1+=54.0;
    }
   }
  } else {
   if(i34<1.0587575435638428){
    s0+=9.0;
   } else {
    if(i17<0.002277703257277608){
     s0+=94.0;
     s1+=210.0;
    } else {
     s0+=87.0;
     s1+=11105.0;
    }
   }
  }
 } else {
  if(i44<0.045311152935028076){
   if(i76<6.604631380469073e-06){
    if(i57<1.5949108274071477e-05){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=212.0;
    }
   } else {
    s0+=66.0;
   }
  } else {
   if(i64<-3.2759651276137447e-06){
    s1+=28.0;
   } else {
    if(i36<-0.00013780593872070312){
     s0+=397.0;
    } else {
     s0+=742.0;
     s1+=183.0;
    }
   }
  }
 }
}
if(i7<-6.902814493514597e-05){
 if(i1<0.049892693758010864){
  if(i55<0.010561475530266762){
   if(i15<1.0065656900405884){
    if(i68<0.11466279625892639){
     s0+=109.0;
     s1+=7.0;
    } else {
     s0+=686.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i18<0.8935263156890869){
    if(i13<0.0006687045097351074){
     s0+=57.0;
     s1+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i3<-0.00032895803451538086){
     s0+=22.0;
     s1+=8.0;
    } else {
     s0+=40.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i19<1.049600601196289){
   if(i22<2.968311309814453e-05){
    s1+=4.0;
   } else {
    s0+=97.0;
   }
  } else {
   if(i3<0.00015181303024291992){
    if(i31<1.0017868280410767){
     s0+=14.0;
     s1+=377.0;
    } else {
     s0+=67.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.1285477876663208){
     s0+=138.0;
     s1+=1607.0;
    } else {
     s0+=8.0;
     s1+=9399.0;
    }
   }
  }
 }
} else {
 if(i17<0.004423444624990225){
  if(i60<-0.0013617873191833496){
   if(i2<0.056345134973526){
    if(i33<1.100754976272583){
     s0+=1172.0;
     s1+=462.0;
    } else {
     s0+=2007.0;
     s1+=109.0;
    }
   } else {
    if(i61<0.9995617866516113){
     s0+=150.0;
     s1+=3.0;
    } else {
     s0+=198.0;
     s1+=540.0;
    }
   }
  } else {
   if(i4<0.06809821724891663){
    if(i69<0.037268802523612976){
     s0+=56726.0;
     s1+=645.0;
    } else {
     s0+=2336.0;
     s1+=370.0;
    }
   } else {
    if(i39<0.04201284050941467){
     s0+=181.0;
     s1+=452.0;
    } else {
     s0+=1566.0;
     s1+=396.0;
    }
   }
  }
 } else {
  if(i8<1.0447232723236084){
   if(i28<1.0048006772994995){
    if(i3<9.387731552124023e-05){
     s0+=4880.0;
     s1+=221.0;
    } else {
     s0+=63.0;
     s1+=224.0;
    }
   } else {
    if(i22<-7.867813110351562e-06){
     s0+=15.0;
    } else {
     s1+=149.0;
    }
   }
  } else {
   if(i5<-2.8192996978759766e-05){
    if(i62<0.001714130979962647){
     s0+=441.0;
     s1+=54.0;
    } else {
     s1+=67.0;
    }
   } else {
    if(i20<-0.00013700127601623535){
     s0+=220.0;
     s1+=423.0;
    } else {
     s0+=11.0;
     s1+=1331.0;
    }
   }
  }
 }
}
if(i6<1.0024676322937012){
 if(i2<0.08318522572517395){
  if(i9<1.042891263961792){
   if(i60<-0.0012745559215545654){
    if(i28<0.9745481610298157){
     s0+=2316.0;
     s1+=11.0;
    } else {
     s0+=1864.0;
     s1+=441.0;
    }
   } else {
    if(i0<0.07653579115867615){
     s0+=55896.0;
     s1+=209.0;
    } else {
     s0+=673.0;
     s1+=90.0;
    }
   }
  } else {
   if(i35<1.1034480333328247){
    if(i24<0.014257697388529778){
     s0+=1861.0;
     s1+=308.0;
    } else {
     s0+=398.0;
     s1+=835.0;
    }
   } else {
    if(i62<0.0017954460345208645){
     s0+=6213.0;
     s1+=384.0;
    } else {
     s0+=1.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i6<0.9965964555740356){
   if(i47<-1.0646240298228804e-05){
    if(i36<0.00029963254928588867){
     s0+=22.0;
     s1+=119.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i11<0.9985276460647583){
     s0+=387.0;
    } else {
     s0+=37.0;
     s1+=20.0;
    }
   }
  } else {
   if(i59<-0.017545655369758606){
    if(i0<0.17860108613967896){
     s0+=586.0;
     s1+=223.0;
    } else {
     s0+=162.0;
     s1+=1056.0;
    }
   } else {
    if(i44<0.06008884310722351){
     s0+=18.0;
     s1+=1711.0;
    } else {
     s0+=179.0;
     s1+=475.0;
    }
   }
  }
 }
} else {
 if(i6<1.0041769742965698){
  if(i57<-1.3448517165670637e-05){
   if(i10<0.0016054511070251465){
    if(i48<0.0011181130539625883){
     s0+=164.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=130.0;
   }
  } else {
   if(i76<-5.375764430937124e-06){
    if(i62<0.0004890665877610445){
     s0+=21.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i47<-1.135862294177059e-05){
     s0+=91.0;
     s1+=1332.0;
    } else {
     s0+=38.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i51<-6.007081174175255e-05){
   if(i1<0.011465340852737427){
    if(i38<0.00961223803460598){
     s1+=12.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i15<1.0063384771347046){
     s0+=18.0;
     s1+=939.0;
    } else {
     s1+=8200.0;
    }
   }
  } else {
   if(i0<0.035122036933898926){
    if(i59<-0.001605828758329153){
     s0+=11.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i49<0.007558673620223999){
     s0+=1.0;
     s1+=580.0;
    } else {
     s0+=6.0;
     s1+=35.0;
    }
   }
  }
 }
}
if(i22<1.8775463104248047e-05){
 if(i1<0.0841948390007019){
  if(i9<1.0451608896255493){
   if(i27<0.00027627588133327663){
    if(i80<0.00041198456892743707){
     s0+=52636.0;
     s1+=265.0;
    } else {
     s0+=30.0;
     s1+=22.0;
    }
   } else {
    if(i14<0.9938123226165771){
     s0+=5667.0;
     s1+=43.0;
    } else {
     s0+=3060.0;
     s1+=457.0;
    }
   }
  } else {
   if(i37<0.0011287308298051357){
    if(i40<0.0003431905061006546){
     s0+=1188.0;
     s1+=35.0;
    } else {
     s0+=984.0;
     s1+=846.0;
    }
   } else {
    if(i55<0.00905423890799284){
     s0+=3201.0;
     s1+=109.0;
    } else {
     s0+=1327.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i11<0.998519778251648){
   if(i43<0.008514813147485256){
    if(i20<-7.447600364685059e-05){
     s0+=377.0;
    } else {
     s0+=52.0;
     s1+=4.0;
    }
   } else {
    if(i13<-0.0008066296577453613){
     s0+=6.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i7<-1.3797138308291323e-05){
    if(i61<1.0003561973571777){
     s0+=316.0;
     s1+=3957.0;
    } else {
     s0+=72.0;
     s1+=21.0;
    }
   } else {
    if(i70<-0.0007598400115966797){
     s0+=49.0;
     s1+=167.0;
    } else {
     s0+=465.0;
     s1+=130.0;
    }
   }
  }
 }
} else {
 if(i3<0.0007030367851257324){
  if(i62<0.001699634245596826){
   if(i16<1.010549545288086){
    if(i10<-0.002254992723464966){
     s0+=642.0;
     s1+=20.0;
    } else {
     s0+=748.0;
     s1+=322.0;
    }
   } else {
    if(i4<0.1101159155368805){
     s0+=44.0;
     s1+=39.0;
    } else {
     s1+=70.0;
    }
   }
  } else {
   if(i0<0.039185166358947754){
    if(i55<0.0353853702545166){
     s0+=55.0;
     s1+=3.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i19<1.095107913017273){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=339.0;
    }
   }
  }
 } else {
  if(i56<0.00022894925496075302){
   s0+=25.0;
  } else {
   if(i45<0.019983120262622833){
    if(i33<1.5682398080825806){
     s0+=50.0;
     s1+=2063.0;
    } else {
     s0+=131.0;
     s1+=85.0;
    }
   } else {
    if(i45<0.02133597992360592){
     s0+=6.0;
     s1+=166.0;
    } else {
     s0+=2.0;
     s1+=7691.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i4<0.0719602108001709){
  if(i11<1.0019803047180176){
   if(i9<1.0436501502990723){
    if(i73<0.0006968764937482774){
     s0+=55055.0;
     s1+=279.0;
    } else {
     s0+=6002.0;
     s1+=514.0;
    }
   } else {
    if(i7<-2.0705771021312103e-05){
     s0+=584.0;
     s1+=496.0;
    } else {
     s0+=2494.0;
     s1+=233.0;
    }
   }
  } else {
   if(i28<0.9864842891693115){
    if(i48<0.002721876837313175){
     s1+=16.0;
    } else {
     s0+=192.0;
     s1+=3.0;
    }
   } else {
    if(i71<1.0023691654205322){
     s0+=20.0;
     s1+=272.0;
    } else {
     s0+=37.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i1<0.09229984879493713){
   if(i7<-2.4393904823227786e-05){
    if(i57<0.00014264474157243967){
     s0+=41.0;
     s1+=120.0;
    } else {
     s0+=61.0;
     s1+=4.0;
    }
   } else {
    if(i8<1.0264811515808105){
     s0+=11.0;
     s1+=16.0;
    } else {
     s0+=307.0;
     s1+=24.0;
    }
   }
  } else {
   if(i11<0.9976413249969482){
    s0+=25.0;
   } else {
    if(i5<-6.16908073425293e-05){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=513.0;
    }
   }
  }
 }
} else {
 if(i7<-4.284904571250081e-05){
  if(i7<-8.246807556133717e-05){
   if(i25<0.9583079814910889){
    if(i1<0.017026126384735107){
     s0+=71.0;
     s1+=11.0;
    } else {
     s0+=12.0;
     s1+=175.0;
    }
   } else {
    if(i28<0.9967862367630005){
     s0+=128.0;
     s1+=1250.0;
    } else {
     s0+=11.0;
     s1+=9221.0;
    }
   }
  } else {
   if(i64<8.427454304182902e-06){
    if(i57<7.661257404834032e-05){
     s0+=28.0;
     s1+=1191.0;
    } else {
     s0+=75.0;
     s1+=259.0;
    }
   } else {
    if(i8<1.110565185546875){
     s0+=495.0;
     s1+=414.0;
    } else {
     s0+=8.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i0<0.0855303406715393){
   if(i16<0.991970419883728){
    if(i42<1.184276819229126){
     s0+=41.0;
     s1+=194.0;
    } else {
     s0+=459.0;
     s1+=44.0;
    }
   } else {
    if(i33<1.1013743877410889){
     s0+=832.0;
     s1+=312.0;
    } else {
     s0+=2887.0;
     s1+=84.0;
    }
   }
  } else {
   if(i59<-0.017514362931251526){
    if(i2<0.18631723523139954){
     s0+=671.0;
     s1+=127.0;
    } else {
     s0+=214.0;
     s1+=313.0;
    }
   } else {
    if(i66<-0.0073914192616939545){
     s0+=123.0;
     s1+=56.0;
    } else {
     s0+=136.0;
     s1+=766.0;
    }
   }
  }
 }
}
if(i4<0.07258680462837219){
 if(i1<0.07885652780532837){
  if(i10<0.0011520981788635254){
   if(i11<1.0018949508666992){
    if(i19<1.0451585054397583){
     s0+=53907.0;
     s1+=197.0;
    } else {
     s0+=14278.0;
     s1+=1599.0;
    }
   } else {
    if(i5<1.817941665649414e-05){
     s0+=419.0;
     s1+=23.0;
    } else {
     s0+=226.0;
     s1+=459.0;
    }
   }
  } else {
   if(i36<0.0001601576805114746){
    if(i33<1.2160128355026245){
     s1+=58.0;
    } else {
     s0+=124.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.0006734569324180484){
     s0+=2.0;
    } else {
     s1+=398.0;
    }
   }
  }
 } else {
  if(i5<-5.4776668548583984e-05){
   if(i68<0.08163051307201385){
    if(i52<0.0009523219196125865){
     s0+=114.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i65<0.05288369953632355){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i1<0.08378243446350098){
    if(i63<0.0016094446182250977){
     s0+=32.0;
     s1+=178.0;
    } else {
     s0+=72.0;
     s1+=16.0;
    }
   } else {
    if(i34<1.0526313781738281){
     s0+=8.0;
    } else {
     s0+=18.0;
     s1+=1719.0;
    }
   }
  }
 }
} else {
 if(i6<1.0018045902252197){
  if(i0<0.1102154552936554){
   if(i17<0.0031813383102416992){
    if(i23<1.0249141454696655){
     s0+=15.0;
     s1+=51.0;
    } else {
     s0+=686.0;
     s1+=106.0;
    }
   } else {
    if(i37<0.0025526490062475204){
     s0+=66.0;
     s1+=234.0;
    } else {
     s0+=300.0;
     s1+=118.0;
    }
   }
  } else {
   if(i43<0.003926820121705532){
    if(i49<0.007024705410003662){
     s0+=282.0;
     s1+=680.0;
    } else {
     s0+=364.0;
     s1+=41.0;
    }
   } else {
    if(i0<0.17875021696090698){
     s0+=122.0;
     s1+=249.0;
    } else {
     s0+=35.0;
     s1+=1129.0;
    }
   }
  }
 } else {
  if(i7<-4.286456896807067e-05){
   if(i6<1.0028424263000488){
    if(i31<1.0008776187896729){
     s0+=2.0;
     s1+=461.0;
    } else {
     s0+=50.0;
     s1+=174.0;
    }
   } else {
    if(i51<-9.666566620580852e-05){
     s0+=18.0;
     s1+=8479.0;
    } else {
     s0+=25.0;
     s1+=481.0;
    }
   }
  } else {
   if(i34<1.1105778217315674){
    s1+=84.0;
   } else {
    if(i48<0.0011165256146341562){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i2<0.07800713181495667){
 if(i5<4.1544437408447266e-05){
  if(i40<0.0003377264365553856){
   if(i21<1.007236123085022){
    if(i28<1.0076223611831665){
     s0+=39019.0;
     s1+=37.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i7<-2.6830170099856332e-05){
     s1+=25.0;
    } else {
     s0+=105.0;
    }
   }
  } else {
   if(i33<1.100754976272583){
    if(i42<1.0716924667358398){
     s0+=3596.0;
     s1+=83.0;
    } else {
     s0+=1388.0;
     s1+=1480.0;
    }
   } else {
    if(i50<-0.007301777601242065){
     s0+=2511.0;
     s1+=331.0;
    } else {
     s0+=22264.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i71<0.9976886510848999){
   if(i3<0.0029084086418151855){
    s0+=230.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i27<0.00016751090879552066){
    if(i17<0.0017781280912458897){
     s0+=75.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   } else {
    if(i49<0.0021879076957702637){
     s0+=121.0;
     s1+=1112.0;
    } else {
     s0+=54.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i39<0.047754138708114624){
   if(i38<0.00045171473175287247){
    if(i13<8.857250213623047e-05){
     s0+=58.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i2<0.08519101142883301){
     s0+=70.0;
     s1+=185.0;
    } else {
     s0+=44.0;
     s1+=1455.0;
    }
   }
  } else {
   if(i28<1.0123178958892822){
    if(i7<-8.43579437059816e-06){
     s0+=505.0;
     s1+=318.0;
    } else {
     s0+=680.0;
     s1+=51.0;
    }
   } else {
    if(i10<0.00080108642578125){
     s0+=73.0;
     s1+=36.0;
    } else {
     s1+=198.0;
    }
   }
  }
 } else {
  if(i34<1.0567991733551025){
   s0+=31.0;
  } else {
   if(i47<1.950120804394828e-06){
    if(i2<0.09719064831733704){
     s0+=175.0;
     s1+=615.0;
    } else {
     s0+=77.0;
     s1+=10919.0;
    }
   } else {
    if(i23<1.0375258922576904){
     s1+=1.0;
    } else {
     s0+=65.0;
    }
   }
  }
 }
}
if(i2<0.07800713181495667){
 if(i11<1.0018281936645508){
  if(i55<0.007525492459535599){
   if(i4<0.06299415230751038){
    if(i16<1.0078576803207397){
     s0+=63038.0;
     s1+=869.0;
    } else {
     s0+=510.0;
     s1+=145.0;
    }
   } else {
    if(i39<0.03246420621871948){
     s0+=101.0;
     s1+=236.0;
    } else {
     s0+=1450.0;
     s1+=110.0;
    }
   }
  } else {
   if(i1<0.04105493426322937){
    if(i24<0.016575796529650688){
     s0+=1846.0;
     s1+=116.0;
    } else {
     s0+=975.0;
     s1+=263.0;
    }
   } else {
    if(i70<0.003847658634185791){
     s0+=256.0;
     s1+=368.0;
    } else {
     s0+=300.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i43<0.0020958702079951763){
   if(i28<1.0010385513305664){
    if(i45<0.004379699472337961){
     s0+=8.0;
    } else {
     s1+=43.0;
    }
   } else {
    s1+=569.0;
   }
  } else {
   if(i6<1.0042171478271484){
    if(i45<0.0387536883354187){
     s0+=796.0;
     s1+=137.0;
    } else {
     s0+=2.0;
     s1+=61.0;
    }
   } else {
    if(i15<0.9805631041526794){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=264.0;
    }
   }
  }
 }
} else {
 if(i36<-0.0002440810203552246){
  if(i9<1.398578405380249){
   if(i52<0.002274327678605914){
    s0+=450.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=47.0;
  }
 } else {
  if(i37<0.006140879821032286){
   if(i59<-0.01952616311609745){
    if(i1<0.1322275698184967){
     s0+=484.0;
     s1+=40.0;
    } else {
     s0+=283.0;
     s1+=518.0;
    }
   } else {
    if(i5<-5.900859832763672e-05){
     s0+=58.0;
    } else {
     s0+=358.0;
     s1+=3772.0;
    }
   }
  } else {
   if(i71<1.0015754699707031){
    if(i5<-7.367134094238281e-05){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=8986.0;
    }
   } else {
    if(i47<-1.0471116183907725e-05){
     s0+=79.0;
     s1+=553.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
}
if(i30<0.00033433391945436597){
 if(i1<0.08213692903518677){
  if(i15<1.0044429302215576){
   if(i73<0.0008567798649892211){
    if(i21<1.0085242986679077){
     s0+=53521.0;
     s1+=187.0;
    } else {
     s0+=174.0;
     s1+=33.0;
    }
   } else {
    if(i35<1.069220781326294){
     s0+=119.0;
    } else {
     s0+=78.0;
     s1+=129.0;
    }
   }
  } else {
   if(i43<0.001050787977874279){
    if(i31<1.0003888607025146){
     s0+=27.0;
     s1+=9.0;
    } else {
     s1+=171.0;
    }
   } else {
    if(i36<0.0002620816230773926){
     s0+=515.0;
     s1+=3.0;
    } else {
     s1+=41.0;
    }
   }
  }
 } else {
  if(i14<0.9941467046737671){
   if(i24<0.024042222648859024){
    s0+=65.0;
   } else {
    if(i25<0.9955273866653442){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i40<0.00036424078280106187){
    if(i15<1.002964735031128){
     s0+=37.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i6<0.9989248514175415){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=342.0;
    }
   }
  }
 }
} else {
 if(i11<1.000446081161499){
  if(i3<0.00015282630920410156){
   if(i1<0.07587873935699463){
    if(i40<0.00198186794295907){
     s0+=3811.0;
     s1+=872.0;
    } else {
     s0+=8164.0;
     s1+=110.0;
    }
   } else {
    if(i11<0.998518705368042){
     s0+=513.0;
     s1+=15.0;
    } else {
     s0+=773.0;
     s1+=1602.0;
    }
   }
  } else {
   if(i51<-4.4521118979901075e-05){
    if(i38<0.0006425991305150092){
     s0+=37.0;
     s1+=18.0;
    } else {
     s0+=32.0;
     s1+=975.0;
    }
   } else {
    if(i56<0.00605575367808342){
     s0+=43.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<3.36766242980957e-05){
   if(i0<0.09351268410682678){
    if(i35<1.100754976272583){
     s0+=2.0;
     s1+=262.0;
    } else {
     s0+=2341.0;
     s1+=237.0;
    }
   } else {
    if(i2<0.18998858332633972){
     s0+=310.0;
     s1+=479.0;
    } else {
     s0+=22.0;
     s1+=432.0;
    }
   }
  } else {
   if(i6<1.0037964582443237){
    if(i71<1.002075433731079){
     s0+=237.0;
     s1+=1366.0;
    } else {
     s0+=106.0;
     s1+=89.0;
    }
   } else {
    if(i10<3.635883331298828e-05){
     s0+=60.0;
     s1+=698.0;
    } else {
     s0+=18.0;
     s1+=9151.0;
    }
   }
  }
 }
}
if(i2<0.07740697264671326){
 if(i3<0.0006022751331329346){
  if(i54<-0.030526429414749146){
   if(i0<0.023782968521118164){
    if(i5<-2.4199485778808594e-05){
     s0+=884.0;
     s1+=29.0;
    } else {
     s0+=659.0;
     s1+=134.0;
    }
   } else {
    if(i52<0.00044342863839119673){
     s0+=456.0;
     s1+=190.0;
    } else {
     s0+=57.0;
     s1+=198.0;
    }
   }
  } else {
   if(i9<1.0410068035125732){
    if(i34<1.0556960105895996){
     s0+=40742.0;
     s1+=2.0;
    } else {
     s0+=18102.0;
     s1+=584.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=2707.0;
     s1+=819.0;
    } else {
     s0+=5256.0;
     s1+=195.0;
    }
   }
  }
 } else {
  if(i3<0.0009791254997253418){
   if(i75<0.00012964782945346087){
    if(i34<1.1345939636230469){
     s1+=223.0;
    } else {
     s0+=99.0;
     s1+=55.0;
    }
   } else {
    if(i9<1.0624380111694336){
     s0+=118.0;
    } else {
     s0+=69.0;
     s1+=54.0;
    }
   }
  } else {
   if(i50<0.008910059928894043){
    if(i0<0.011465340852737427){
     s0+=23.0;
     s1+=29.0;
    } else {
     s0+=15.0;
     s1+=745.0;
    }
   } else {
    if(i34<1.1609115600585938){
     s1+=5.0;
    } else {
     s0+=19.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i39<0.048344552516937256){
   if(i61<0.999567985534668){
    if(i47<-5.61638535145903e-06){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i50<0.021574676036834717){
     s0+=85.0;
     s1+=1735.0;
    } else {
     s0+=57.0;
     s1+=64.0;
    }
   }
  } else {
   if(i20<0.00010979175567626953){
    if(i4<0.21278280019760132){
     s0+=1119.0;
     s1+=215.0;
    } else {
     s0+=159.0;
     s1+=130.0;
    }
   } else {
    if(i34<1.0569010972976685){
     s0+=8.0;
    } else {
     s0+=19.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i34<1.0587215423583984){
   s0+=24.0;
  } else {
   if(i72<1.2479620181693463e-06){
    if(i9<1.08823561668396){
     s0+=211.0;
     s1+=1930.0;
    } else {
     s0+=26.0;
     s1+=9597.0;
    }
   } else {
    s0+=58.0;
   }
  }
 }
}
if(i0<0.0854833722114563){
 if(i6<1.0024782419204712){
  if(i63<-0.0026479363441467285){
   if(i5<1.1682510375976562e-05){
    if(i1<0.024825632572174072){
     s0+=1564.0;
     s1+=151.0;
    } else {
     s0+=242.0;
     s1+=254.0;
    }
   } else {
    if(i2<0.007968813180923462){
     s0+=35.0;
     s1+=7.0;
    } else {
     s0+=53.0;
     s1+=192.0;
    }
   }
  } else {
   if(i68<0.018661119043827057){
    if(i73<0.0008626417256891727){
     s0+=50730.0;
     s1+=221.0;
    } else {
     s0+=190.0;
     s1+=132.0;
    }
   } else {
    if(i43<0.0008754185982979834){
     s0+=3971.0;
     s1+=933.0;
    } else {
     s0+=12007.0;
     s1+=312.0;
    }
   }
  }
 } else {
  if(i40<0.0018134602578356862){
   if(i27<0.00011482839909149334){
    if(i15<1.0073738098144531){
     s0+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i19<1.0365145206451416){
     s0+=2.0;
    } else {
     s1+=634.0;
    }
   }
  } else {
   if(i26<0.9968529343605042){
    if(i54<0.005633443593978882){
     s0+=20.0;
     s1+=287.0;
    } else {
     s0+=24.0;
     s1+=10.0;
    }
   } else {
    if(i3<0.0016014575958251953){
     s0+=229.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i11<0.9988362193107605){
  if(i57<6.784353172406554e-05){
   if(i48<0.0019424647325649858){
    s0+=465.0;
   } else {
    if(i75<0.00020085618598386645){
     s1+=1.0;
    } else {
     s0+=61.0;
    }
   }
  } else {
   if(i6<0.9955521821975708){
    if(i22<-2.059340476989746e-05){
     s0+=182.0;
     s1+=1.0;
    } else {
     s0+=44.0;
     s1+=31.0;
    }
   } else {
    if(i76<1.0625006325426511e-05){
     s1+=48.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i20<8.52346420288086e-05){
   if(i39<0.04555344581604004){
    if(i72<1.0679045772121754e-06){
     s0+=60.0;
     s1+=2572.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i17<0.003874550573527813){
     s0+=802.0;
     s1+=304.0;
    } else {
     s0+=248.0;
     s1+=1405.0;
    }
   }
  } else {
   if(i17<0.00218489789403975){
    if(i28<1.0103132724761963){
     s0+=42.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=206.0;
    }
   } else {
    if(i47<-1.0743715392891318e-05){
     s1+=9117.0;
    } else {
     s0+=10.0;
     s1+=376.0;
    }
   }
  }
 }
}
if(i0<0.08355417847633362){
 if(i6<1.002470850944519){
  if(i60<-0.0013626515865325928){
   if(i37<0.0009905935730785131){
    if(i38<0.00041922059608623385){
     s0+=1109.0;
     s1+=38.0;
    } else {
     s0+=104.0;
     s1+=569.0;
    }
   } else {
    if(i1<0.057472437620162964){
     s0+=4220.0;
     s1+=233.0;
    } else {
     s0+=217.0;
     s1+=156.0;
    }
   }
  } else {
   if(i1<0.06867614388465881){
    if(i54<-0.031314998865127563){
     s0+=745.0;
     s1+=169.0;
    } else {
     s0+=60693.0;
     s1+=495.0;
    }
   } else {
    if(i7<-1.8571467080619186e-05){
     s0+=398.0;
     s1+=330.0;
    } else {
     s0+=1322.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i47<-1.4372940313478466e-05){
   if(i50<0.007080674171447754){
    if(i38<0.007855774834752083){
     s0+=11.0;
     s1+=747.0;
    } else {
     s0+=55.0;
     s1+=91.0;
    }
   } else {
    if(i33<1.476589322090149){
     s1+=8.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i38<0.001453240867704153){
    if(i51<-8.08455515652895e-05){
     s1+=30.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=169.0;
   }
  }
 }
} else {
 if(i31<0.9993027448654175){
  if(i19<1.398578405380249){
   if(i11<0.9985244870185852){
    if(i43<0.008777138777077198){
     s0+=665.0;
     s1+=4.0;
    } else {
     s0+=27.0;
     s1+=3.0;
    }
   } else {
    if(i64<8.51231743581593e-06){
     s0+=10.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   s1+=51.0;
  }
 } else {
  if(i0<0.12475001811981201){
   if(i49<0.004359066486358643){
    if(i38<0.0004476824833545834){
     s0+=70.0;
     s1+=10.0;
    } else {
     s0+=234.0;
     s1+=2320.0;
    }
   } else {
    if(i4<0.06623095273971558){
     s0+=7.0;
     s1+=19.0;
    } else {
     s0+=677.0;
     s1+=30.0;
    }
   }
  } else {
   if(i38<0.0005841255187988281){
    if(i31<1.0002150535583496){
     s0+=114.0;
     s1+=5.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i17<0.003219360951334238){
     s0+=188.0;
     s1+=662.0;
    } else {
     s0+=70.0;
     s1+=10994.0;
    }
   }
  }
 }
}
if(i10<0.0007561445236206055){
 if(i19<1.0576403141021729){
  if(i21<1.0090001821517944){
   if(i60<-0.0012906193733215332){
    if(i14<0.9938033223152161){
     s0+=1185.0;
     s1+=5.0;
    } else {
     s0+=793.0;
     s1+=320.0;
    }
   } else {
    if(i6<1.0025479793548584){
     s0+=56419.0;
     s1+=356.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i57<1.4530077351082582e-05){
    if(i79<0.0011458396911621094){
     s0+=39.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i57<7.464752707164735e-05){
     s0+=8.0;
     s1+=119.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i3<0.0002002716064453125){
   if(i7<-3.838324482785538e-05){
    if(i29<1.0112807750701904){
     s0+=1644.0;
     s1+=674.0;
    } else {
     s0+=51.0;
     s1+=484.0;
    }
   } else {
    if(i37<0.001122238114476204){
     s0+=2120.0;
     s1+=1103.0;
    } else {
     s0+=6997.0;
     s1+=793.0;
    }
   }
  } else {
   if(i45<0.023260176181793213){
    if(i70<0.0036329329013824463){
     s0+=384.0;
     s1+=815.0;
    } else {
     s0+=537.0;
     s1+=173.0;
    }
   } else {
    if(i24<0.016793109476566315){
     s0+=65.0;
     s1+=71.0;
    } else {
     s0+=59.0;
     s1+=2267.0;
    }
   }
  }
 }
} else {
 if(i0<0.0613788366317749){
  if(i47<-1.4767040738661308e-05){
   s1+=216.0;
  } else {
   if(i1<0.05765587091445923){
    if(i27<0.0006093994015827775){
     s0+=589.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=6.0;
    }
   } else {
    if(i75<5.8656463806983083e-05){
     s1+=4.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i47<-1.568866991874529e-06){
   if(i7<-4.281087967683561e-05){
    if(i72<5.828572966493084e-07){
     s0+=4.0;
     s1+=9615.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i19<1.1053385734558105){
     s0+=2.0;
     s1+=109.0;
    } else {
     s0+=75.0;
     s1+=34.0;
    }
   }
  } else {
   if(i1<0.11722859740257263){
    if(i47<-1.2688069546129555e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i0<0.14886516332626343){
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i18<1.00811767578125){
  if(i0<0.08408471941947937){
   if(i54<-0.028887540102005005){
    if(i4<0.02712741494178772){
     s0+=1982.0;
     s1+=286.0;
    } else {
     s0+=133.0;
     s1+=266.0;
    }
   } else {
    if(i30<0.00031406956259161234){
     s0+=53092.0;
     s1+=220.0;
    } else {
     s0+=11724.0;
     s1+=988.0;
    }
   }
  } else {
   if(i69<0.030677109956741333){
    if(i36<-0.0001208186149597168){
     s0+=364.0;
    } else {
     s0+=229.0;
     s1+=166.0;
    }
   } else {
    if(i31<0.999100923538208){
     s0+=236.0;
     s1+=11.0;
    } else {
     s0+=357.0;
     s1+=1459.0;
    }
   }
  }
 } else {
  if(i1<0.08372092247009277){
   if(i1<0.06548601388931274){
    if(i42<1.0778207778930664){
     s0+=16.0;
     s1+=52.0;
    } else {
     s0+=1351.0;
     s1+=59.0;
    }
   } else {
    if(i80<-0.0011320920893922448){
     s0+=381.0;
     s1+=60.0;
    } else {
     s0+=51.0;
     s1+=142.0;
    }
   }
  } else {
   if(i39<0.04665803909301758){
    if(i31<0.9987375736236572){
     s0+=6.0;
    } else {
     s0+=43.0;
     s1+=965.0;
    }
   } else {
    if(i2<0.2929229140281677){
     s0+=593.0;
     s1+=352.0;
    } else {
     s0+=50.0;
     s1+=369.0;
    }
   }
  }
 }
} else {
 if(i33<1.075138807296753){
  s0+=134.0;
 } else {
  if(i27<0.0001623183925403282){
   if(i13<0.0006344914436340332){
    if(i1<0.057788580656051636){
     s0+=84.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i5<6.133317947387695e-05){
    if(i2<0.11664202809333801){
     s0+=217.0;
     s1+=506.0;
    } else {
     s0+=30.0;
     s1+=1025.0;
    }
   } else {
    if(i71<1.0021661520004272){
     s0+=59.0;
     s1+=9817.0;
    } else {
     s0+=41.0;
     s1+=300.0;
    }
   }
  }
 }
}
if(i13<0.00043570995330810547){
 if(i32<1.0098109245300293){
  if(i30<0.00031641291570849717){
   if(i16<1.0080902576446533){
    if(i1<0.07723328471183777){
     s0+=53263.0;
     s1+=194.0;
    } else {
     s0+=240.0;
     s1+=37.0;
    }
   } else {
    if(i38<0.000873132492415607){
     s0+=9.0;
     s1+=50.0;
    } else {
     s0+=71.0;
    }
   }
  } else {
   if(i0<0.08253571391105652){
    if(i35<1.1037919521331787){
     s0+=3028.0;
     s1+=1084.0;
    } else {
     s0+=9391.0;
     s1+=285.0;
    }
   } else {
    if(i13<-0.0004025697708129883){
     s0+=413.0;
     s1+=10.0;
    } else {
     s0+=333.0;
     s1+=1509.0;
    }
   }
  }
 } else {
  if(i20<0.00011140108108520508){
   if(i17<0.0033131204545497894){
    if(i4<0.21551024913787842){
     s0+=1905.0;
     s1+=248.0;
    } else {
     s0+=76.0;
     s1+=112.0;
    }
   } else {
    if(i22<-9.98377799987793e-06){
     s0+=244.0;
     s1+=10.0;
    } else {
     s0+=91.0;
     s1+=1071.0;
    }
   }
  } else {
   if(i61<0.9998990297317505){
    if(i13<-0.00033167004585266113){
     s0+=21.0;
    } else {
     s1+=1181.0;
    }
   } else {
    if(i7<-5.0298542191740125e-05){
     s0+=6.0;
     s1+=46.0;
    } else {
     s0+=122.0;
     s1+=32.0;
    }
   }
  }
 }
} else {
 if(i12<1.001825213432312){
  if(i51<-0.0006325537106022239){
   if(i12<0.994940996170044){
    if(i9<1.1300619840621948){
     s0+=2.0;
    } else {
     s1+=62.0;
    }
   } else {
    s1+=670.0;
   }
  } else {
   if(i14<1.0012016296386719){
    if(i41<0.5288410782814026){
     s0+=1144.0;
     s1+=193.0;
    } else {
     s0+=10.0;
     s1+=64.0;
    }
   } else {
    if(i48<0.0015254274476319551){
     s0+=73.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i51<-0.00018927993369288743){
   if(i30<0.00019467777747195214){
    if(i40<0.0022505465894937515){
     s1+=7.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i12<1.0050410032272339){
     s0+=113.0;
     s1+=1448.0;
    } else {
     s0+=13.0;
     s1+=6920.0;
    }
   }
  } else {
   if(i14<1.0002171993255615){
    if(i9<1.0819685459136963){
     s0+=367.0;
     s1+=113.0;
    } else {
     s0+=43.0;
     s1+=134.0;
    }
   } else {
    if(i17<0.0009787008166313171){
     s0+=21.0;
     s1+=4.0;
    } else {
     s0+=60.0;
     s1+=1484.0;
    }
   }
  }
 }
}
if(i5<3.796815872192383e-05){
 if(i1<0.08023625612258911){
  if(i19<1.0451585054397583){
   if(i70<-0.0023179054260253906){
    if(i6<0.995439887046814){
     s0+=831.0;
    } else {
     s0+=750.0;
     s1+=135.0;
    }
   } else {
    if(i73<0.0004987050779163837){
     s0+=48462.0;
     s1+=35.0;
    } else {
     s0+=3906.0;
     s1+=55.0;
    }
   }
  } else {
   if(i37<0.0011278176680207253){
    if(i17<0.0028298445977270603){
     s0+=4218.0;
     s1+=768.0;
    } else {
     s0+=229.0;
     s1+=565.0;
    }
   } else {
    if(i7<-4.498241833061911e-05){
     s0+=1687.0;
     s1+=259.0;
    } else {
     s0+=8585.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i22<-1.6361474990844727e-05){
   if(i72<-3.2578052469034446e-06){
    if(i52<0.0005116349784657359){
     s0+=8.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i48<0.000377062417101115){
     s0+=37.0;
     s1+=4.0;
    } else {
     s0+=426.0;
    }
   }
  } else {
   if(i53<0.02605891227722168){
    if(i39<0.040069520473480225){
     s0+=33.0;
     s1+=1835.0;
    } else {
     s0+=237.0;
     s1+=519.0;
    }
   } else {
    if(i2<0.23760953545570374){
     s0+=904.0;
     s1+=689.0;
    } else {
     s0+=60.0;
     s1+=484.0;
    }
   }
  }
 }
} else {
 if(i61<0.9992542862892151){
  s0+=325.0;
 } else {
  if(i10<0.001430511474609375){
   if(i17<0.0022362954914569855){
    if(i7<-5.283438804326579e-05){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=150.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.1319558322429657){
     s0+=253.0;
     s1+=1143.0;
    } else {
     s0+=26.0;
     s1+=2075.0;
    }
   }
  } else {
   s1+=8306.0;
  }
 }
}
if(i6<1.0024447441101074){
 if(i23<1.0398095846176147){
  if(i2<0.08033359050750732){
   if(i9<1.0428826808929443){
    if(i60<-0.0011130273342132568){
     s0+=4745.0;
     s1+=459.0;
    } else {
     s0+=55570.0;
     s1+=205.0;
    }
   } else {
    if(i33<1.1013743877410889){
     s0+=1538.0;
     s1+=730.0;
    } else {
     s0+=4360.0;
     s1+=382.0;
    }
   }
  } else {
   if(i71<0.9969272613525391){
    s0+=83.0;
   } else {
    if(i19<1.0494745969772339){
     s0+=54.0;
     s1+=28.0;
    } else {
     s0+=25.0;
     s1+=926.0;
    }
   }
  }
 } else {
  if(i0<0.09794756770133972){
   if(i30<0.0010922306682914495){
    if(i28<1.0048027038574219){
     s0+=1206.0;
     s1+=239.0;
    } else {
     s0+=166.0;
     s1+=226.0;
    }
   } else {
    if(i58<0.016472227871418){
     s0+=1860.0;
     s1+=104.0;
    } else {
     s0+=15.0;
     s1+=33.0;
    }
   }
  } else {
   if(i31<0.9987976551055908){
    if(i38<0.006358373444527388){
     s0+=272.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i0<0.12466582655906677){
     s0+=362.0;
     s1+=448.0;
    } else {
     s0+=326.0;
     s1+=2070.0;
    }
   }
  }
 }
} else {
 if(i1<0.06890687346458435){
  if(i36<0.0001786947250366211){
   if(i47<-1.4807534171268344e-05){
    if(i75<0.0001581763499416411){
     s1+=65.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i49<-0.006130784749984741){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=158.0;
    }
   }
  } else {
   if(i50<0.007098734378814697){
    if(i48<0.0006215780740603805){
     s0+=19.0;
    } else {
     s0+=51.0;
     s1+=511.0;
    }
   } else {
    if(i44<0.006475239992141724){
     s1+=1.0;
    } else {
     s0+=23.0;
    }
   }
  }
 } else {
  if(i6<1.0038928985595703){
   if(i56<0.010882877744734287){
    if(i49<0.003237426280975342){
     s0+=11.0;
     s1+=488.0;
    } else {
     s0+=87.0;
     s1+=194.0;
    }
   } else {
    s1+=469.0;
   }
  } else {
   if(i57<0.00010812678374350071){
    if(i1<0.07021626830101013){
     s0+=2.0;
     s1+=18.0;
    } else {
     s1+=8394.0;
    }
   } else {
    if(i24<0.021747633814811707){
     s0+=16.0;
     s1+=48.0;
    } else {
     s0+=11.0;
     s1+=1217.0;
    }
   }
  }
 }
}
if(i10<0.0009575486183166504){
 if(i3<0.0005484223365783691){
  if(i2<0.07751640677452087){
   if(i69<0.02560092881321907){
    if(i29<0.9740207195281982){
     s0+=147.0;
     s1+=97.0;
    } else {
     s0+=56773.0;
     s1+=596.0;
    }
   } else {
    if(i6<0.9978663325309753){
     s0+=8165.0;
     s1+=278.0;
    } else {
     s0+=3478.0;
     s1+=1108.0;
    }
   }
  } else {
   if(i46<0.06413805484771729){
    if(i5<-5.2601099014282227e-05){
     s0+=98.0;
     s1+=11.0;
    } else {
     s0+=50.0;
     s1+=1118.0;
    }
   } else {
    if(i7<-1.6659481843817048e-05){
     s0+=549.0;
     s1+=1592.0;
    } else {
     s0+=1066.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i75<0.0004394306743051857){
   if(i0<0.13191434741020203){
    if(i42<1.1773569583892822){
     s1+=278.0;
    } else {
     s0+=263.0;
     s1+=528.0;
    }
   } else {
    if(i45<0.016191795468330383){
     s0+=20.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=1527.0;
    }
   }
  } else {
   s0+=173.0;
  }
 }
} else {
 if(i30<0.00023823828087188303){
  if(i33<1.2392117977142334){
   if(i6<1.002671241760254){
    s0+=18.0;
   } else {
    s1+=41.0;
   }
  } else {
   s0+=149.0;
  }
 } else {
  if(i13<-0.00029531121253967285){
   s0+=45.0;
  } else {
   if(i0<0.06563374400138855){
    if(i47<-1.4155528333503753e-05){
     s1+=198.0;
    } else {
     s0+=77.0;
     s1+=12.0;
    }
   } else {
    if(i43<0.0038185841403901577){
     s0+=59.0;
     s1+=1805.0;
    } else {
     s1+=7628.0;
    }
   }
  }
 }
}
if(i1<0.08179634809494019){
 if(i11<1.0019474029541016){
  if(i8<1.039496898651123){
   if(i49<-0.0018936991691589355){
    if(i34<1.1579601764678955){
     s0+=900.0;
     s1+=377.0;
    } else {
     s0+=1408.0;
     s1+=47.0;
    }
   } else {
    if(i70<-0.001993417739868164){
     s0+=2922.0;
     s1+=255.0;
    } else {
     s0+=57164.0;
     s1+=386.0;
    }
   }
  } else {
   if(i17<0.004147971048951149){
    if(i33<1.1013743877410889){
     s0+=1812.0;
     s1+=495.0;
    } else {
     s0+=3721.0;
     s1+=146.0;
    }
   } else {
    if(i6<0.9983225464820862){
     s0+=640.0;
     s1+=52.0;
    } else {
     s0+=157.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i14<1.000489592552185){
   if(i48<0.005736974533647299){
    if(i38<0.006681518629193306){
     s0+=108.0;
     s1+=103.0;
    } else {
     s0+=463.0;
     s1+=11.0;
    }
   } else {
    s1+=51.0;
   }
  } else {
   if(i33<1.5682398080825806){
    if(i50<0.012381792068481445){
     s0+=12.0;
     s1+=684.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i55<0.017135974019765854){
     s0+=35.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i31<0.9988100528717041){
  if(i37<0.026985373347997665){
   if(i0<0.08253628015518188){
    if(i63<0.0029145777225494385){
     s0+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i3<-0.0004962384700775146){
     s0+=401.0;
    } else {
     s0+=39.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=11.0;
  }
 } else {
  if(i5<3.784894943237305e-05){
   if(i49<0.004452645778656006){
    if(i33<1.0840110778808594){
     s0+=47.0;
    } else {
     s0+=278.0;
     s1+=2363.0;
    }
   } else {
    if(i17<0.003613385371863842){
     s0+=666.0;
     s1+=151.0;
    } else {
     s0+=189.0;
     s1+=870.0;
    }
   }
  } else {
   if(i7<-5.585599137702957e-05){
    if(i20<-1.8477439880371094e-06){
     s0+=65.0;
     s1+=932.0;
    } else {
     s0+=4.0;
     s1+=9457.0;
    }
   } else {
    if(i63<0.007400214672088623){
     s0+=14.0;
     s1+=322.0;
    } else {
     s0+=36.0;
     s1+=48.0;
    }
   }
  }
 }
}
if(i4<0.0716162919998169){
 if(i2<0.07557299733161926){
  if(i9<1.0451740026474){
   if(i19<1.0451585054397583){
    if(i60<-0.0013273358345031738){
     s0+=1686.0;
     s1+=144.0;
    } else {
     s0+=52286.0;
     s1+=113.0;
    }
   } else {
    if(i1<0.06623813509941101){
     s0+=7539.0;
     s1+=473.0;
    } else {
     s0+=229.0;
     s1+=189.0;
    }
   }
  } else {
   if(i20<0.00020933151245117188){
    if(i22<1.7821788787841797e-05){
     s0+=6395.0;
     s1+=1105.0;
    } else {
     s0+=673.0;
     s1+=538.0;
    }
   } else {
    if(i66<-0.003973602317273617){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=510.0;
    }
   }
  }
 } else {
  if(i76<6.84053884469904e-06){
   if(i44<0.05193832516670227){
    if(i19<1.0350184440612793){
     s0+=8.0;
    } else {
     s0+=16.0;
     s1+=1615.0;
    }
   } else {
    if(i1<0.08589226007461548){
     s0+=82.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=31.0;
    }
   }
  } else {
   if(i52<0.0009558014571666718){
    s0+=91.0;
   } else {
    if(i50<0.02291765809059143){
     s1+=1.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i17<0.004691458307206631){
  if(i7<-2.228838457085658e-05){
   if(i66<-0.0052673970349133015){
    if(i40<0.00857621431350708){
     s0+=254.0;
     s1+=116.0;
    } else {
     s0+=4.0;
     s1+=85.0;
    }
   } else {
    if(i2<0.08281978964805603){
     s0+=62.0;
     s1+=114.0;
    } else {
     s0+=48.0;
     s1+=1013.0;
    }
   }
  } else {
   if(i74<0.9899768233299255){
    if(i67<0.9974626302719116){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=43.0;
     s1+=156.0;
    }
   } else {
    if(i39<0.04205438494682312){
     s0+=54.0;
     s1+=104.0;
    } else {
     s0+=1131.0;
     s1+=166.0;
    }
   }
  }
 } else {
  if(i15<0.9977933168411255){
   if(i1<0.10978254675865173){
    if(i29<0.9949096441268921){
     s0+=31.0;
     s1+=210.0;
    } else {
     s0+=226.0;
     s1+=23.0;
    }
   } else {
    if(i72<2.305480848008301e-06){
     s0+=28.0;
     s1+=1429.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i17<0.006179448217153549){
    if(i59<-0.0293644480407238){
     s0+=32.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=703.0;
    }
   } else {
    if(i56<0.00025739058037288487){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=8366.0;
    }
   }
  }
 }
}
if(i1<0.08130630850791931){
 if(i6<1.0024913549423218){
  if(i56<0.00031232391484081745){
   if(i18<1.0092809200286865){
    if(i52<0.0003197892801836133){
     s0+=47149.0;
     s1+=36.0;
    } else {
     s0+=103.0;
     s1+=31.0;
    }
   } else {
    if(i79<0.0010161399841308594){
     s1+=38.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i57<9.018322452902794e-05){
    if(i36<-3.415346145629883e-05){
     s0+=5965.0;
     s1+=142.0;
    } else {
     s0+=5290.0;
     s1+=1569.0;
    }
   } else {
    if(i17<0.017902560532093048){
     s0+=10705.0;
     s1+=232.0;
    } else {
     s0+=44.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i6<1.0041882991790771){
   if(i42<1.2160736322402954){
    if(i46<0.052839040756225586){
     s0+=2.0;
     s1+=225.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i52<0.0004854578000959009){
     s0+=193.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=55.0;
    }
   }
  } else {
   if(i38<0.010877899825572968){
    if(i14<0.9992104172706604){
     s0+=4.0;
     s1+=9.0;
    } else {
     s1+=555.0;
    }
   } else {
    if(i50<-0.04537779092788696){
     s1+=13.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i15<1.0068615674972534){
  if(i39<0.04493790864944458){
   if(i61<0.9993451833724976){
    s0+=77.0;
   } else {
    if(i22<-1.4841556549072266e-05){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=62.0;
     s1+=2973.0;
    }
   }
  } else {
   if(i24<0.029311606660485268){
    if(i49<0.004298865795135498){
     s0+=370.0;
     s1+=311.0;
    } else {
     s0+=765.0;
     s1+=118.0;
    }
   } else {
    if(i22<-1.6361474990844727e-05){
     s0+=172.0;
     s1+=2.0;
    } else {
     s0+=221.0;
     s1+=1395.0;
    }
   }
  }
 } else {
  if(i22<-5.960464477539063e-08){
   if(i19<1.2561023235321045){
    s1+=194.0;
   } else {
    if(i45<0.03612867370247841){
     s0+=30.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i17<0.0018948492361232638){
    if(i15<1.0097708702087402){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=150.0;
    }
   } else {
    if(i6<1.0009877681732178){
     s0+=8.0;
     s1+=82.0;
    } else {
     s0+=7.0;
     s1+=8796.0;
    }
   }
  }
 }
}
if(i10<0.0008068680763244629){
 if(i2<0.07751694321632385){
  if(i73<0.0006787946913391352){
   if(i65<0.01130121573805809){
    if(i7<-3.236351039959118e-05){
     s0+=1003.0;
     s1+=111.0;
    } else {
     s0+=45973.0;
     s1+=40.0;
    }
   } else {
    if(i14<0.9952019453048706){
     s0+=9556.0;
     s1+=59.0;
    } else {
     s0+=3482.0;
     s1+=782.0;
    }
   }
  } else {
   if(i37<0.0009850456845015287){
    if(i33<1.0840110778808594){
     s0+=1358.0;
    } else {
     s0+=209.0;
     s1+=815.0;
    }
   } else {
    if(i7<-9.897875133901834e-05){
     s0+=242.0;
     s1+=191.0;
    } else {
     s0+=6533.0;
     s1+=485.0;
    }
   }
  }
 } else {
  if(i37<0.005847700871527195){
   if(i36<-0.00024387240409851074){
    s0+=415.0;
   } else {
    if(i46<0.06313100457191467){
     s0+=66.0;
     s1+=1213.0;
    } else {
     s0+=1163.0;
     s1+=1171.0;
    }
   }
  } else {
   if(i1<0.11074650287628174){
    if(i55<0.003136987332254648){
     s0+=150.0;
     s1+=10.0;
    } else {
     s0+=19.0;
     s1+=179.0;
    }
   } else {
    if(i18<1.0073609352111816){
     s0+=8.0;
     s1+=1326.0;
    } else {
     s0+=72.0;
     s1+=988.0;
    }
   }
  }
 }
} else {
 if(i20<0.0002136826515197754){
  if(i17<0.0022586388513445854){
   if(i38<0.0007959202048368752){
    s1+=67.0;
   } else {
    s0+=413.0;
   }
  } else {
   if(i0<0.06124892830848694){
    if(i36<8.96751880645752e-05){
     s0+=111.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=64.0;
    }
   } else {
    if(i45<0.0014975987141951919){
     s0+=6.0;
    } else {
     s0+=19.0;
     s1+=1221.0;
    }
   }
  }
 } else {
  if(i0<0.05812498927116394){
   if(i17<0.001789874630048871){
    s0+=19.0;
   } else {
    s1+=117.0;
   }
  } else {
   s1+=8592.0;
  }
 }
}
if(i3<0.0005483031272888184){
 if(i1<0.08194735646247864){
  if(i38<0.00034801644505932927){
   if(i29<1.0075364112854004){
    if(i8<1.0434911251068115){
     s0+=35530.0;
    } else {
     s0+=810.0;
     s1+=7.0;
    }
   } else {
    if(i64<3.473403467069147e-06){
     s0+=187.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i3<-0.00030490756034851074){
    if(i60<-0.000571131706237793){
     s0+=4306.0;
     s1+=395.0;
    } else {
     s0+=19590.0;
     s1+=178.0;
    }
   } else {
    if(i54<-0.02698764204978943){
     s0+=656.0;
     s1+=487.0;
    } else {
     s0+=7713.0;
     s1+=997.0;
    }
   }
  }
 } else {
  if(i11<0.9981943368911743){
   if(i52<0.0008461903780698776){
    if(i38<0.0017404931131750345){
     s0+=369.0;
    } else {
     s0+=38.0;
     s1+=4.0;
    }
   } else {
    if(i7<-2.6139419787796214e-05){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i44<0.05819499492645264){
    if(i0<0.0890817642211914){
     s0+=65.0;
     s1+=236.0;
    } else {
     s0+=12.0;
     s1+=1707.0;
    }
   } else {
    if(i24<0.027916863560676575){
     s0+=944.0;
     s1+=368.0;
    } else {
     s0+=193.0;
     s1+=1040.0;
    }
   }
  }
 }
} else {
 if(i7<-4.32968299719505e-05){
  if(i1<0.04006141424179077){
   if(i33<1.5682398080825806){
    if(i49<0.0006043016910552979){
     s0+=8.0;
     s1+=148.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i63<-0.005551129579544067){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=78.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<-3.6954879760742188e-06){
    if(i17<0.007322127465158701){
     s0+=121.0;
     s1+=144.0;
    } else {
     s0+=36.0;
     s1+=968.0;
    }
   } else {
    if(i0<0.05929875373840332){
     s0+=2.0;
     s1+=147.0;
    } else {
     s0+=4.0;
     s1+=10092.0;
    }
   }
  }
 } else {
  if(i57<-7.288181222975254e-07){
   if(i47<-1.4617358829127625e-05){
    s1+=34.0;
   } else {
    if(i15<1.0099058151245117){
     s0+=346.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i17<0.0022957399487495422){
    if(i28<0.9935189485549927){
     s1+=5.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i33<1.3812854290008545){
     s1+=158.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   }
  }
 }
}
if(i1<0.08532509207725525){
 if(i19<1.0486011505126953){
  if(i52<0.00024172909616027027){
   if(i26<1.0177702903747559){
    if(i24<0.020728111267089844){
     s0+=48521.0;
     s1+=23.0;
    } else {
     s0+=826.0;
     s1+=36.0;
    }
   } else {
    if(i53<0.013289570808410645){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i6<0.9965447783470154){
    if(i1<0.08226674795150757){
     s0+=5209.0;
     s1+=25.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   } else {
    if(i47<-2.0235038391547278e-06){
     s0+=475.0;
     s1+=247.0;
    } else {
     s0+=857.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i13<0.0006092190742492676){
   if(i42<1.103413462638855){
    if(i43<0.00033255916787311435){
     s0+=1541.0;
     s1+=17.0;
    } else {
     s0+=1312.0;
     s1+=1431.0;
    }
   } else {
    if(i45<0.06144336611032486){
     s0+=10258.0;
     s1+=471.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   }
  } else {
   if(i71<1.0021698474884033){
    if(i59<-0.010780546814203262){
     s0+=137.0;
     s1+=31.0;
    } else {
     s0+=76.0;
     s1+=884.0;
    }
   } else {
    if(i29<0.9919023513793945){
     s0+=116.0;
     s1+=52.0;
    } else {
     s0+=282.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i37<0.006140701472759247){
  if(i44<0.060980141162872314){
   if(i12<0.9943699836730957){
    s0+=90.0;
   } else {
    if(i50<0.021744996309280396){
     s0+=35.0;
     s1+=3055.0;
    } else {
     s0+=30.0;
     s1+=71.0;
    }
   }
  } else {
   if(i17<0.005850831046700478){
    if(i56<0.0017370434943586588){
     s0+=182.0;
     s1+=405.0;
    } else {
     s0+=989.0;
     s1+=191.0;
    }
   } else {
    if(i15<0.9923698306083679){
     s0+=58.0;
     s1+=26.0;
    } else {
     s0+=6.0;
     s1+=616.0;
    }
   }
  }
 } else {
  if(i10<-0.004012554883956909){
   if(i8<1.1084734201431274){
    if(i29<0.9878053665161133){
     s1+=15.0;
    } else {
     s0+=37.0;
    }
   } else {
    s1+=66.0;
   }
  } else {
   if(i7<1.1880049896717537e-05){
    if(i1<0.133192241191864){
     s0+=69.0;
     s1+=429.0;
    } else {
     s0+=24.0;
     s1+=8908.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
}
if(i9<1.052894115447998){
 if(i6<1.0024954080581665){
  if(i2<0.07766672968864441){
   if(i9<1.0451608896255493){
    if(i73<0.0007866320665925741){
     s0+=56721.0;
     s1+=282.0;
    } else {
     s0+=5352.0;
     s1+=523.0;
    }
   } else {
    if(i77<-0.0008963644504547119){
     s0+=275.0;
     s1+=183.0;
    } else {
     s0+=1505.0;
     s1+=203.0;
    }
   }
  } else {
   if(i14<0.9940632581710815){
    if(i25<0.9598606824874878){
     s0+=7.0;
     s1+=20.0;
    } else {
     s0+=239.0;
     s1+=19.0;
    }
   } else {
    if(i33<1.082772970199585){
     s0+=38.0;
    } else {
     s0+=75.0;
     s1+=544.0;
    }
   }
  }
 } else {
  if(i52<-1.275758222618606e-05){
   if(i42<1.2084944248199463){
    s1+=10.0;
   } else {
    s0+=74.0;
   }
  } else {
   if(i9<1.0259637832641602){
    if(i16<1.0003079175949097){
     s1+=13.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i12<1.0001490116119385){
     s0+=1.0;
    } else {
     s0+=8.0;
     s1+=351.0;
    }
   }
  }
 }
} else {
 if(i1<0.08518582582473755){
  if(i11<1.0018606185913086){
   if(i33<1.1013743877410889){
    if(i37<0.0002946359745692462){
     s0+=483.0;
    } else {
     s0+=553.0;
     s1+=617.0;
    }
   } else {
    if(i18<0.9687761068344116){
     s0+=804.0;
     s1+=180.0;
    } else {
     s0+=3443.0;
     s1+=182.0;
    }
   }
  } else {
   if(i6<1.002983570098877){
    if(i55<0.013191236183047295){
     s0+=392.0;
     s1+=32.0;
    } else {
     s0+=16.0;
     s1+=101.0;
    }
   } else {
    if(i15<0.9985734224319458){
     s0+=55.0;
     s1+=137.0;
    } else {
     s0+=15.0;
     s1+=541.0;
    }
   }
  }
 } else {
  if(i47<8.210640771721955e-07){
   if(i13<0.0005678534507751465){
    if(i45<0.02350486069917679){
     s0+=673.0;
     s1+=1622.0;
    } else {
     s0+=100.0;
     s1+=2435.0;
    }
   } else {
    if(i5<5.125999450683594e-05){
     s0+=110.0;
     s1+=445.0;
    } else {
     s0+=41.0;
     s1+=8405.0;
    }
   }
  } else {
   if(i67<1.0003737211227417){
    if(i61<1.0000755786895752){
     s0+=348.0;
     s1+=13.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i0<0.1872488260269165){
     s1+=24.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i4<0.07196682691574097){
 if(i12<1.0034825801849365){
  if(i21<1.007453203201294){
   if(i1<0.07875025272369385){
    if(i19<1.0486011505126953){
     s0+=55191.0;
     s1+=329.0;
    } else {
     s0+=10545.0;
     s1+=1259.0;
    }
   } else {
    if(i11<0.9979071617126465){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=75.0;
     s1+=438.0;
    }
   }
  } else {
   if(i52<-8.871044701663777e-05){
    if(i33<1.1919987201690674){
     s0+=28.0;
     s1+=410.0;
    } else {
     s0+=184.0;
     s1+=11.0;
    }
   } else {
    if(i24<0.016876429319381714){
     s0+=1477.0;
     s1+=176.0;
    } else {
     s0+=446.0;
     s1+=350.0;
    }
   }
  }
 } else {
  if(i20<-0.0001404881477355957){
   if(i63<-0.002812117338180542){
    if(i12<1.0059421062469482){
     s0+=34.0;
     s1+=27.0;
    } else {
     s0+=19.0;
     s1+=73.0;
    }
   } else {
    if(i64<2.1567493604379706e-06){
     s0+=10.0;
     s1+=15.0;
    } else {
     s0+=662.0;
     s1+=13.0;
    }
   }
  } else {
   if(i36<0.00018683075904846191){
    if(i61<0.999957799911499){
     s0+=14.0;
     s1+=217.0;
    } else {
     s0+=93.0;
     s1+=20.0;
    }
   } else {
    if(i6<1.0017085075378418){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1358.0;
    }
   }
  }
 }
} else {
 if(i3<0.00048351287841796875){
  if(i2<0.11255711317062378){
   if(i54<0.05042850971221924){
    if(i11<0.998065710067749){
     s0+=162.0;
    } else {
     s0+=420.0;
     s1+=640.0;
    }
   } else {
    if(i29<0.9925370216369629){
     s0+=57.0;
     s1+=26.0;
    } else {
     s0+=569.0;
     s1+=34.0;
    }
   }
  } else {
   if(i31<0.9988152980804443){
    if(i68<0.5034436583518982){
     s0+=230.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i59<-0.03178538382053375){
     s0+=320.0;
     s1+=534.0;
    } else {
     s0+=68.0;
     s1+=1367.0;
    }
   }
  }
 } else {
  if(i0<0.1319286823272705){
   if(i59<-0.01807250641286373){
    if(i47<-3.743382330867462e-05){
     s0+=5.0;
     s1+=28.0;
    } else {
     s0+=113.0;
     s1+=2.0;
    }
   } else {
    if(i66<-0.009018277749419212){
     s0+=16.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=746.0;
    }
   }
  } else {
   if(i10<-0.0006684064865112305){
    if(i62<0.00015605997759848833){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=514.0;
    }
   } else {
    if(i1<0.13819530606269836){
     s0+=8.0;
     s1+=131.0;
    } else {
     s0+=9.0;
     s1+=8592.0;
    }
   }
  }
 }
}
if(i13<0.00044995546340942383){
 if(i8<1.0452277660369873){
  if(i38<0.00034868367947638035){
   if(i4<0.07683870196342468){
    if(i38<0.00033287779660895467){
     s0+=35835.0;
    } else {
     s0+=269.0;
     s1+=2.0;
    }
   } else {
    if(i33<1.0770790576934814){
     s0+=40.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i4<0.07131516933441162){
    if(i9<1.0398929119110107){
     s0+=23438.0;
     s1+=540.0;
    } else {
     s0+=4363.0;
     s1+=902.0;
    }
   } else {
    if(i6<0.9957147836685181){
     s0+=127.0;
     s1+=14.0;
    } else {
     s0+=126.0;
     s1+=354.0;
    }
   }
  }
 } else {
  if(i7<-3.185664536431432e-05){
   if(i40<0.0002547678886912763){
    s0+=48.0;
   } else {
    if(i22<-1.284480094909668e-05){
     s0+=120.0;
     s1+=8.0;
    } else {
     s0+=367.0;
     s1+=3076.0;
    }
   }
  } else {
   if(i1<0.07536956667900085){
    if(i37<0.0011261515319347382){
     s0+=1102.0;
     s1+=209.0;
    } else {
     s0+=2212.0;
     s1+=39.0;
    }
   } else {
    if(i54<0.04118576645851135){
     s0+=325.0;
     s1+=499.0;
    } else {
     s0+=963.0;
     s1+=260.0;
    }
   }
  }
 }
} else {
 if(i32<1.0185467004776){
  if(i5<4.571676254272461e-05){
   if(i23<1.0819685459136963){
    if(i4<0.1081123948097229){
     s0+=1296.0;
     s1+=347.0;
    } else {
     s0+=7.0;
     s1+=117.0;
    }
   } else {
    if(i57<0.00011221675958950073){
     s0+=22.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=127.0;
    }
   }
  } else {
   if(i30<0.00019469035032670945){
    if(i50<-0.005522191524505615){
     s1+=1.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i47<-1.4231220120564103e-05){
     s0+=170.0;
     s1+=3262.0;
    } else {
     s0+=19.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i5<3.731250762939453e-05){
   if(i69<0.06429128348827362){
    if(i21<1.034447431564331){
     s0+=140.0;
     s1+=17.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i47<-1.5080303455761168e-05){
     s1+=135.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i3<0.0009456276893615723){
    if(i67<1.00162935256958){
     s0+=44.0;
     s1+=56.0;
    } else {
     s0+=5.0;
     s1+=241.0;
    }
   } else {
    if(i3<0.0013409852981567383){
     s0+=25.0;
     s1+=472.0;
    } else {
     s0+=7.0;
     s1+=6391.0;
    }
   }
  }
 }
}
if(i5<3.641843795776367e-05){
 if(i2<0.07908812165260315){
  if(i19<1.0451585054397583){
   if(i60<-0.001362532377243042){
    if(i69<0.0361582487821579){
     s0+=521.0;
     s1+=101.0;
    } else {
     s0+=1000.0;
     s1+=23.0;
    }
   } else {
    if(i52<0.000271995784714818){
     s0+=48016.0;
     s1+=34.0;
    } else {
     s0+=4212.0;
     s1+=73.0;
    }
   }
  } else {
   if(i37<0.001092148944735527){
    if(i1<0.06601384282112122){
     s0+=4274.0;
     s1+=891.0;
    } else {
     s0+=241.0;
     s1+=500.0;
    }
   } else {
    if(i2<0.06320038437843323){
     s0+=9636.0;
     s1+=332.0;
    } else {
     s0+=918.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i17<0.0016376655548810959){
   if(i28<0.9964505434036255){
    if(i66<-0.004744412377476692){
     s0+=143.0;
     s1+=37.0;
    } else {
     s0+=82.0;
     s1+=134.0;
    }
   } else {
    if(i20<0.00011736154556274414){
     s0+=438.0;
     s1+=21.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i67<0.997382640838623){
    if(i6<0.9976973533630371){
     s0+=344.0;
     s1+=37.0;
    } else {
     s0+=10.0;
     s1+=111.0;
    }
   } else {
    if(i63<0.004528909921646118){
     s0+=183.0;
     s1+=2031.0;
    } else {
     s0+=453.0;
     s1+=825.0;
    }
   }
  }
 }
} else {
 if(i34<1.0590304136276245){
  s0+=358.0;
 } else {
  if(i7<-4.660761624109e-05){
   if(i10<6.896257400512695e-05){
    if(i56<0.009068145416676998){
     s0+=219.0;
     s1+=462.0;
    } else {
     s0+=16.0;
     s1+=839.0;
    }
   } else {
    if(i56<0.00020020415831822902){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=10003.0;
    }
   }
  } else {
   if(i36<0.0001761913299560547){
    if(i1<0.0690508782863617){
     s0+=116.0;
     s1+=5.0;
    } else {
     s0+=59.0;
     s1+=83.0;
    }
   } else {
    if(i48<0.0009178371401503682){
     s0+=4.0;
    } else {
     s0+=8.0;
     s1+=231.0;
    }
   }
  }
 }
}
if(i23<1.0406770706176758){
 if(i6<1.002474308013916){
  if(i30<0.00031641250825487077){
   if(i29<1.010939359664917){
    if(i80<0.0003550780238583684){
     s0+=53690.0;
     s1+=273.0;
    } else {
     s0+=15.0;
     s1+=21.0;
    }
   } else {
    if(i33<1.1039612293243408){
     s0+=6.0;
     s1+=73.0;
    } else {
     s0+=20.0;
     s1+=5.0;
    }
   }
  } else {
   if(i14<0.9942126274108887){
    if(i65<0.2261473536491394){
     s0+=8035.0;
     s1+=288.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i0<0.06913682818412781){
     s0+=4809.0;
     s1+=995.0;
    } else {
     s0+=217.0;
     s1+=1256.0;
    }
   }
  }
 } else {
  if(i17<0.001819764031097293){
   if(i1<0.0706314742565155){
    if(i75<4.3440151785034686e-05){
     s1+=5.0;
    } else {
     s0+=93.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i71<1.0026733875274658){
    if(i45<0.0049140965566039085){
     s0+=11.0;
     s1+=145.0;
    } else {
     s0+=9.0;
     s1+=1662.0;
    }
   } else {
    if(i72<-7.301647201529704e-06){
     s0+=9.0;
     s1+=50.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i24<0.029106704518198967){
  if(i5<3.17692756652832e-05){
   if(i7<-2.2444684873335063e-05){
    if(i40<0.001443968154489994){
     s0+=80.0;
     s1+=467.0;
    } else {
     s0+=682.0;
     s1+=302.0;
    }
   } else {
    if(i40<0.006456744857132435){
     s0+=2197.0;
     s1+=110.0;
    } else {
     s0+=240.0;
     s1+=62.0;
    }
   }
  } else {
   if(i28<1.000046968460083){
    if(i42<1.2441256046295166){
     s0+=38.0;
     s1+=84.0;
    } else {
     s0+=157.0;
     s1+=46.0;
    }
   } else {
    if(i17<0.002532206941395998){
     s0+=67.0;
     s1+=170.0;
    } else {
     s0+=28.0;
     s1+=2166.0;
    }
   }
  }
 } else {
  if(i22<-1.436471939086914e-05){
   if(i11<0.9987703561782837){
    if(i38<0.005793606862425804){
     s0+=301.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i1<0.10239440202713013){
    if(i34<1.2007768154144287){
     s0+=80.0;
     s1+=275.0;
    } else {
     s0+=202.0;
     s1+=106.0;
    }
   } else {
    if(i43<0.0011706677032634616){
     s0+=50.0;
     s1+=61.0;
    } else {
     s0+=94.0;
     s1+=8441.0;
    }
   }
  }
 }
}
if(i1<0.08200663328170776){
 if(i5<3.93986701965332e-05){
  if(i9<1.04337739944458){
   if(i60<-0.0012134313583374023){
    if(i21<0.9637179970741272){
     s0+=2321.0;
     s1+=29.0;
    } else {
     s0+=2165.0;
     s1+=419.0;
    }
   } else {
    if(i41<0.04639077186584473){
     s0+=52071.0;
     s1+=119.0;
    } else {
     s0+=4105.0;
     s1+=117.0;
    }
   }
  } else {
   if(i7<-2.3177639377536252e-05){
    if(i33<1.2371783256530762){
     s0+=76.0;
     s1+=556.0;
    } else {
     s0+=1882.0;
     s1+=223.0;
    }
   } else {
    if(i79<-0.00029531121253967285){
     s0+=1968.0;
     s1+=479.0;
    } else {
     s0+=4253.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i17<0.002520764246582985){
   if(i14<1.0066173076629639){
    if(i14<1.0052945613861084){
     s0+=282.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   } else {
    if(i72<-5.716201030736556e-06){
     s1+=34.0;
    } else {
     s0+=29.0;
     s1+=10.0;
    }
   }
  } else {
   if(i67<0.9989733695983887){
    if(i16<1.0195457935333252){
     s0+=65.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<0.001539766788482666){
     s0+=70.0;
     s1+=904.0;
    } else {
     s0+=77.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00041115283966064453){
  if(i37<0.007618185132741928){
   s0+=423.0;
  } else {
   if(i26<1.0027556419372559){
    if(i67<0.9986824989318848){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i14<1.0022306442260742){
   if(i45<0.024648796766996384){
    if(i70<0.006471544504165649){
     s0+=635.0;
     s1+=1434.0;
    } else {
     s0+=431.0;
     s1+=235.0;
    }
   } else {
    if(i19<1.063935399055481){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=116.0;
     s1+=2408.0;
    }
   }
  } else {
   if(i7<-4.329100192990154e-05){
    if(i6<1.0049705505371094){
     s0+=23.0;
     s1+=1728.0;
    } else {
     s0+=4.0;
     s1+=8077.0;
    }
   } else {
    if(i35<1.1820628643035889){
     s0+=1.0;
     s1+=119.0;
    } else {
     s0+=78.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i2<0.08162686228752136){
 if(i10<0.001141965389251709){
  if(i5<3.725290298461914e-05){
   if(i69<0.026191487908363342){
    if(i26<0.9715127944946289){
     s0+=347.0;
     s1+=125.0;
    } else {
     s0+=57074.0;
     s1+=609.0;
    }
   } else {
    if(i42<1.1823735237121582){
     s0+=3732.0;
     s1+=1238.0;
    } else {
     s0+=7899.0;
     s1+=229.0;
    }
   }
  } else {
   if(i17<0.0042679146863520145){
    if(i57<1.2938326108269393e-05){
     s0+=352.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=55.0;
    }
   } else {
    if(i23<1.0442280769348145){
     s0+=47.0;
     s1+=437.0;
    } else {
     s0+=85.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i72<-4.402698323247023e-06){
   if(i30<0.0001881267235148698){
    if(i38<0.0011672263499349356){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i47<-1.3392786058830097e-05){
     s0+=1.0;
     s1+=671.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i40<0.0019146113190799952){
    s1+=38.0;
   } else {
    s0+=109.0;
   }
  }
 }
} else {
 if(i3<0.00010436773300170898){
  if(i22<-1.7434358596801758e-05){
   if(i67<0.9987537860870361){
    s0+=394.0;
   } else {
    if(i2<0.0822528600692749){
     s1+=1.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i17<0.0016116161132231355){
    if(i76<4.0001432353165e-06){
     s0+=396.0;
     s1+=69.0;
    } else {
     s0+=21.0;
     s1+=60.0;
    }
   } else {
    if(i59<-0.01954205334186554){
     s0+=260.0;
     s1+=476.0;
    } else {
     s0+=74.0;
     s1+=1068.0;
    }
   }
  }
 } else {
  if(i7<-4.209806502331048e-05){
   if(i20<-4.351139068603516e-06){
    if(i1<0.13068589568138123){
     s0+=131.0;
     s1+=257.0;
    } else {
     s0+=19.0;
     s1+=1122.0;
    }
   } else {
    if(i20<3.74913215637207e-05){
     s0+=10.0;
     s1+=316.0;
    } else {
     s0+=2.0;
     s1+=9570.0;
    }
   }
  } else {
   if(i49<0.004478394985198975){
    if(i44<0.06001076102256775){
     s0+=2.0;
     s1+=254.0;
    } else {
     s0+=42.0;
     s1+=82.0;
    }
   } else {
    if(i5<5.263090133666992e-05){
     s0+=231.0;
     s1+=113.0;
    } else {
     s0+=3.0;
     s1+=64.0;
    }
   }
  }
 }
}
if(i2<0.0772174596786499){
 if(i11<1.0019137859344482){
  if(i60<-0.0013528764247894287){
   if(i30<0.002448005136102438){
    if(i38<0.000392589601688087){
     s0+=1031.0;
     s1+=1.0;
    } else {
     s0+=1065.0;
     s1+=708.0;
    }
   } else {
    if(i58<0.006450389511883259){
     s0+=2022.0;
     s1+=6.0;
    } else {
     s0+=1517.0;
     s1+=184.0;
    }
   }
  } else {
   if(i7<-4.507463745540008e-05){
    if(i29<1.0051413774490356){
     s0+=778.0;
     s1+=76.0;
    } else {
     s0+=128.0;
     s1+=252.0;
    }
   } else {
    if(i56<0.0002958982950076461){
     s0+=45877.0;
     s1+=45.0;
    } else {
     s0+=16272.0;
     s1+=882.0;
    }
   }
  }
 } else {
  if(i6<1.0023943185806274){
   if(i45<0.03834982216358185){
    if(i38<0.007575421594083309){
     s0+=137.0;
     s1+=67.0;
    } else {
     s0+=378.0;
     s1+=8.0;
    }
   } else {
    if(i65<0.0392494797706604){
     s0+=1.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i50<0.009289354085922241){
    if(i19<1.0389022827148438){
     s0+=11.0;
    } else {
     s0+=57.0;
     s1+=878.0;
    }
   } else {
    if(i15<0.9999709129333496){
     s0+=34.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i12<1.000347375869751){
  if(i7<-1.0091582225868478e-05){
   if(i2<0.11247509717941284){
    if(i66<-0.0048672351986169815){
     s0+=248.0;
     s1+=28.0;
    } else {
     s0+=115.0;
     s1+=564.0;
    }
   } else {
    if(i17<0.0012779386015608907){
     s0+=70.0;
     s1+=52.0;
    } else {
     s0+=72.0;
     s1+=1748.0;
    }
   }
  } else {
   if(i44<0.045533180236816406){
    if(i9<1.0248169898986816){
     s0+=28.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=103.0;
    }
   } else {
    if(i31<0.9992896318435669){
     s0+=379.0;
    } else {
     s0+=479.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i20<1.710653305053711e-05){
   if(i0<0.1095823347568512){
    if(i49<0.003922939300537109){
     s0+=45.0;
     s1+=355.0;
    } else {
     s0+=201.0;
     s1+=16.0;
    }
   } else {
    if(i17<0.0030048866756260395){
     s0+=106.0;
     s1+=143.0;
    } else {
     s0+=52.0;
     s1+=1572.0;
    }
   }
  } else {
   if(i3<0.0008349418640136719){
    if(i64<-4.832195372728165e-06){
     s0+=14.0;
     s1+=12.0;
    } else {
     s0+=49.0;
     s1+=915.0;
    }
   } else {
    if(i1<0.11540773510932922){
     s0+=2.0;
     s1+=537.0;
    } else {
     s1+=7762.0;
    }
   }
  }
 }
}
if(i1<0.0819428563117981){
 if(i64<-7.986887794686481e-06){
  if(i22<2.288818359375e-05){
   s0+=6.0;
  } else {
   if(i71<0.997494101524353){
    s0+=3.0;
   } else {
    s1+=275.0;
   }
  }
 } else {
  if(i49<-0.0015752315521240234){
   if(i3<0.000507354736328125){
    if(i33<1.1991922855377197){
     s0+=1380.0;
     s1+=587.0;
    } else {
     s0+=2535.0;
     s1+=212.0;
    }
   } else {
    if(i71<0.9977006316184998){
     s0+=8.0;
    } else {
     s0+=35.0;
     s1+=417.0;
    }
   }
  } else {
   if(i18<1.006798505783081){
    if(i1<0.06919768452644348){
     s0+=62042.0;
     s1+=740.0;
    } else {
     s0+=1421.0;
     s1+=305.0;
    }
   } else {
    if(i47<-8.681935469212476e-06){
     s0+=713.0;
     s1+=487.0;
    } else {
     s0+=1372.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i14<1.001682996749878){
  if(i17<0.005320684984326363){
   if(i74<1.0308845043182373){
    if(i7<-6.503607437480241e-06){
     s0+=175.0;
     s1+=1043.0;
    } else {
     s0+=431.0;
     s1+=127.0;
    }
   } else {
    if(i2<0.14794650673866272){
     s0+=441.0;
     s1+=24.0;
    } else {
     s0+=300.0;
     s1+=193.0;
    }
   }
  } else {
   if(i2<0.1150398850440979){
    if(i54<0.04976227879524231){
     s0+=21.0;
     s1+=438.0;
    } else {
     s0+=122.0;
     s1+=40.0;
    }
   } else {
    if(i11<0.9979265928268433){
     s0+=21.0;
    } else {
     s0+=16.0;
     s1+=2065.0;
    }
   }
  }
 } else {
  if(i3<0.00019860267639160156){
   if(i24<0.028897514566779137){
    if(i49<0.005146116018295288){
     s0+=15.0;
     s1+=62.0;
    } else {
     s0+=31.0;
     s1+=2.0;
    }
   } else {
    if(i59<-0.08737979084253311){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   }
  } else {
   if(i20<0.00021332502365112305){
    if(i47<-1.3312721421243623e-05){
     s0+=39.0;
     s1+=1838.0;
    } else {
     s0+=60.0;
     s1+=248.0;
    }
   } else {
    s1+=7758.0;
   }
  }
 }
}
if(i5<3.74913215637207e-05){
 if(i19<1.0494916439056396){
  if(i49<-0.001549065113067627){
   if(i35<1.069220781326294){
    s0+=774.0;
   } else {
    if(i38<0.001328806858509779){
     s0+=71.0;
     s1+=135.0;
    } else {
     s0+=167.0;
    }
   }
  } else {
   if(i52<0.0002510949270799756){
    if(i69<0.030965659767389297){
     s0+=48856.0;
     s1+=60.0;
    } else {
     s0+=711.0;
     s1+=46.0;
    }
   } else {
    if(i6<0.9969073534011841){
     s0+=5072.0;
     s1+=36.0;
    } else {
     s0+=739.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i1<0.07580173015594482){
   if(i42<1.103413462638855){
    if(i33<1.084442138671875){
     s0+=1459.0;
    } else {
     s0+=1089.0;
     s1+=1065.0;
    }
   } else {
    if(i54<-0.03389614820480347){
     s0+=1176.0;
     s1+=210.0;
    } else {
     s0+=8615.0;
     s1+=177.0;
    }
   }
  } else {
   if(i7<-1.338246056548087e-05){
    if(i44<0.05097836256027222){
     s0+=41.0;
     s1+=1722.0;
    } else {
     s0+=621.0;
     s1+=1526.0;
    }
   } else {
    if(i23<1.0421991348266602){
     s0+=88.0;
     s1+=243.0;
    } else {
     s0+=892.0;
     s1+=169.0;
    }
   }
  }
 }
} else {
 if(i6<0.9994790554046631){
  s0+=305.0;
 } else {
  if(i27<0.00016888932441361248){
   if(i17<0.0018811732297763228){
    if(i75<5.6864671932999045e-05){
     s1+=3.0;
    } else {
     s0+=67.0;
    }
   } else {
    if(i47<-1.142027394962497e-05){
     s1+=41.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i9<1.1363511085510254){
    if(i17<0.0022366377525031567){
     s0+=119.0;
     s1+=142.0;
    } else {
     s0+=254.0;
     s1+=4554.0;
    }
   } else {
    if(i3<0.000606834888458252){
     s0+=9.0;
     s1+=81.0;
    } else {
     s0+=2.0;
     s1+=6730.0;
    }
   }
  }
 }
}
if(i2<0.07862180471420288){
 if(i6<1.0024954080581665){
  if(i24<0.014118511229753494){
   if(i50<-0.006174355745315552){
    if(i43<0.00034702866105362773){
     s0+=490.0;
    } else {
     s0+=1115.0;
     s1+=215.0;
    }
   } else {
    if(i16<1.008623719215393){
     s0+=54723.0;
     s1+=292.0;
    } else {
     s0+=263.0;
     s1+=69.0;
    }
   }
  } else {
   if(i35<1.103413462638855){
    if(i37<0.0004908947739750147){
     s0+=2146.0;
     s1+=139.0;
    } else {
     s0+=690.0;
     s1+=974.0;
    }
   } else {
    if(i13<0.00024765729904174805){
     s0+=8394.0;
     s1+=220.0;
    } else {
     s0+=1369.0;
     s1+=272.0;
    }
   }
  }
 } else {
  if(i33<1.2392117977142334){
   if(i42<1.0580317974090576){
    s0+=2.0;
   } else {
    s1+=848.0;
   }
  } else {
   if(i32<1.0007588863372803){
    if(i33<1.5682398080825806){
     s0+=14.0;
     s1+=241.0;
    } else {
     s0+=33.0;
     s1+=37.0;
    }
   } else {
    if(i7<-9.193647565552965e-05){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=223.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i7<-1.354130290565081e-05){
  if(i2<0.09731084108352661){
   if(i59<-0.016074631363153458){
    if(i44<0.0538826584815979){
     s0+=6.0;
     s1+=14.0;
    } else {
     s0+=205.0;
     s1+=14.0;
    }
   } else {
    if(i60<0.004012882709503174){
     s0+=56.0;
     s1+=947.0;
    } else {
     s0+=80.0;
     s1+=35.0;
    }
   }
  } else {
   if(i7<-4.209477629046887e-05){
    if(i5<0.0008414089679718018){
     s0+=112.0;
     s1+=11447.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i53<0.0522993803024292){
     s0+=69.0;
     s1+=790.0;
    } else {
     s0+=153.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i36<-0.00013405084609985352){
   if(i71<0.9999003410339355){
    s0+=395.0;
   } else {
    if(i52<0.0005369660211727023){
     s0+=8.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i46<0.060621559619903564){
    if(i64<1.397487721988e-05){
     s1+=168.0;
    } else {
     s0+=15.0;
     s1+=5.0;
    }
   } else {
    if(i12<1.0026814937591553){
     s0+=635.0;
     s1+=152.0;
    } else {
     s1+=49.0;
    }
   }
  }
 }
}
if(i10<0.0008229315280914307){
 if(i0<0.08663547039031982){
  if(i11<1.0018954277038574){
   if(i73<0.0007821143371984363){
    if(i19<1.0486011505126953){
     s0+=52968.0;
     s1+=125.0;
    } else {
     s0+=7993.0;
     s1+=804.0;
    }
   } else {
    if(i15<0.989449679851532){
     s0+=4781.0;
     s1+=171.0;
    } else {
     s0+=2149.0;
     s1+=858.0;
    }
   }
  } else {
   if(i49<0.000840306282043457){
    if(i71<1.002923846244812){
     s0+=95.0;
     s1+=456.0;
    } else {
     s0+=164.0;
     s1+=30.0;
    }
   } else {
    if(i15<0.999846339225769){
     s0+=399.0;
     s1+=5.0;
    } else {
     s0+=15.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i13<-0.00041115283966064453){
   if(i72<-3.581243163353065e-06){
    if(i58<0.001327355159446597){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    s0+=637.0;
   }
  } else {
   if(i44<0.058552324771881104){
    if(i17<0.0009551168768666685){
     s0+=13.0;
     s1+=10.0;
    } else {
     s0+=36.0;
     s1+=2590.0;
    }
   } else {
    if(i1<0.11696699261665344){
     s0+=664.0;
     s1+=176.0;
    } else {
     s0+=451.0;
     s1+=1980.0;
    }
   }
  }
 }
} else {
 if(i2<0.05543801188468933){
  if(i6<1.0041356086730957){
   if(i63<-0.0018034577369689941){
    if(i47<-1.3432262676360551e-05){
     s1+=47.0;
    } else {
     s0+=38.0;
     s1+=5.0;
    }
   } else {
    if(i33<1.1386182308197021){
     s1+=27.0;
    } else {
     s0+=462.0;
    }
   }
  } else {
   s1+=256.0;
  }
 } else {
  if(i10<0.0014304518699645996){
   if(i7<-4.3320978875271976e-05){
    if(i3<-0.00020608305931091309){
     s0+=14.0;
    } else {
     s0+=3.0;
     s1+=1081.0;
    }
   } else {
    if(i34<1.1417303085327148){
     s1+=79.0;
    } else {
     s0+=87.0;
     s1+=36.0;
    }
   }
  } else {
   s1+=8487.0;
  }
 }
}
if(i7<-6.255788321141154e-05){
 if(i2<0.05290094017982483){
  if(i28<1.0023481845855713){
   if(i5<2.0384788513183594e-05){
    if(i63<-0.009202271699905396){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=991.0;
     s1+=33.0;
    }
   } else {
    if(i74<0.9384285807609558){
     s0+=25.0;
     s1+=97.0;
    } else {
     s0+=180.0;
     s1+=47.0;
    }
   }
  } else {
   if(i33<1.5535719394683838){
    s1+=210.0;
   } else {
    if(i78<0.003315435256808996){
     s0+=25.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i35<1.0762357711791992){
   s0+=92.0;
  } else {
   if(i0<0.11697441339492798){
    if(i59<-0.01587773859500885){
     s0+=194.0;
     s1+=66.0;
    } else {
     s0+=61.0;
     s1+=1374.0;
    }
   } else {
    if(i1<0.1206410825252533){
     s0+=14.0;
     s1+=133.0;
    } else {
     s0+=14.0;
     s1+=10330.0;
    }
   }
  }
 }
} else {
 if(i34<1.0598037242889404){
  if(i27<0.00032637501135468483){
   if(i50<-0.010887831449508667){
    if(i38<0.00034154055174440145){
     s0+=52.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i77<-0.0010325312614440918){
     s0+=1930.0;
     s1+=4.0;
    } else {
     s0+=40204.0;
     s1+=2.0;
    }
   }
  } else {
   if(i57<5.667197910952382e-05){
    if(i56<0.0010490763233974576){
     s0+=1339.0;
    } else {
     s0+=133.0;
     s1+=4.0;
    }
   } else {
    if(i14<0.9947634935379028){
     s0+=350.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i3<0.00017148256301879883){
   if(i0<0.08219337463378906){
    if(i58<0.0015356064541265368){
     s0+=18114.0;
     s1+=586.0;
    } else {
     s0+=4227.0;
     s1+=828.0;
    }
   } else {
    if(i14<0.9921433925628662){
     s0+=571.0;
     s1+=168.0;
    } else {
     s0+=834.0;
     s1+=1490.0;
    }
   }
  } else {
   if(i33<1.1039612293243408){
    if(i37<0.0002737786853685975){
     s0+=54.0;
    } else {
     s1+=986.0;
    }
   } else {
    if(i79<-0.0006743073463439941){
     s0+=126.0;
     s1+=466.0;
    } else {
     s0+=1446.0;
     s1+=378.0;
    }
   }
  }
 }
}
if(i2<0.07769986987113953){
 if(i9<1.0452277660369873){
  if(i70<-0.0018874704837799072){
   if(i9<1.0398828983306885){
    if(i15<0.9850653409957886){
     s0+=2640.0;
     s1+=20.0;
    } else {
     s0+=1945.0;
     s1+=387.0;
    }
   } else {
    if(i10<-0.0013489127159118652){
     s0+=170.0;
     s1+=22.0;
    } else {
     s0+=141.0;
     s1+=169.0;
    }
   }
  } else {
   if(i19<1.0475037097930908){
    if(i10<0.0012308955192565918){
     s0+=52768.0;
     s1+=107.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i69<0.026685357093811035){
     s0+=3601.0;
     s1+=107.0;
    } else {
     s0+=806.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i13<0.0005398392677307129){
   if(i3<0.00021088123321533203){
    if(i33<1.1013743877410889){
     s0+=1611.0;
     s1+=613.0;
    } else {
     s0+=4555.0;
     s1+=263.0;
    }
   } else {
    if(i42<1.140648365020752){
     s0+=145.0;
     s1+=304.0;
    } else {
     s0+=408.0;
     s1+=69.0;
    }
   }
  } else {
   if(i5<4.178285598754883e-05){
    if(i29<0.9755867719650269){
     s0+=32.0;
     s1+=54.0;
    } else {
     s0+=401.0;
     s1+=57.0;
    }
   } else {
    if(i63<0.002937614917755127){
     s0+=90.0;
     s1+=883.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i62<0.0005398851353675127){
  if(i39<0.052898526191711426){
   if(i76<6.053558536223136e-06){
    if(i2<0.09328749775886536){
     s0+=145.0;
     s1+=452.0;
    } else {
     s0+=34.0;
     s1+=3071.0;
    }
   } else {
    s0+=56.0;
   }
  } else {
   if(i14<1.0021097660064697){
    if(i37<0.005354189779609442){
     s0+=892.0;
     s1+=144.0;
    } else {
     s0+=115.0;
     s1+=272.0;
    }
   } else {
    if(i57<0.00011631918459897861){
     s0+=55.0;
     s1+=663.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i14<0.998394250869751){
   if(i19<1.0819685459136963){
    if(i15<0.99021315574646){
     s0+=214.0;
     s1+=2.0;
    } else {
     s0+=123.0;
     s1+=109.0;
    }
   } else {
    if(i38<0.0005439085653051734){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=77.0;
     s1+=1240.0;
    }
   }
  } else {
   if(i71<1.0057350397109985){
    if(i72<-7.488434334845806e-07){
     s0+=43.0;
     s1+=7862.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.004494937602430582){
     s0+=13.0;
    } else {
     s1+=23.0;
    }
   }
  }
 }
}
if(i0<0.08512812852859497){
 if(i15<1.006005883216858){
  if(i58<0.00153979635797441){
   if(i68<0.02359943836927414){
    if(i9<1.045206069946289){
     s0+=50494.0;
     s1+=154.0;
    } else {
     s0+=2371.0;
     s1+=195.0;
    }
   } else {
    if(i33<1.100754976272583){
     s0+=1811.0;
     s1+=561.0;
    } else {
     s0+=7586.0;
     s1+=131.0;
    }
   }
  } else {
   if(i3<0.0002757906913757324){
    if(i2<0.04377186298370361){
     s0+=5342.0;
     s1+=484.0;
    } else {
     s0+=824.0;
     s1+=385.0;
    }
   } else {
    if(i38<0.008507536724209785){
     s0+=43.0;
     s1+=364.0;
    } else {
     s0+=79.0;
     s1+=104.0;
    }
   }
  }
 } else {
  if(i40<0.001582652097567916){
   if(i7<-3.5348464734852314e-05){
    if(i17<0.0007377100409939885){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=589.0;
    }
   } else {
    if(i67<1.0026745796203613){
     s0+=21.0;
     s1+=3.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i7<-9.306553693022579e-05){
    s1+=65.0;
   } else {
    if(i52<0.00026943261036649346){
     s0+=597.0;
     s1+=5.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0003749728202819824){
  if(i47<-1.0025632036558818e-05){
   if(i66<-0.003400370478630066){
    if(i24<0.02773149311542511){
     s0+=32.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   } else {
    if(i65<0.06787551939487457){
     s1+=8.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i62<7.743417518213391e-05){
    if(i4<0.10645490884780884){
     s0+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i37<0.005568662658333778){
     s0+=603.0;
    } else {
     s0+=38.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i10<0.0007127523422241211){
   if(i1<0.12343046069145203){
    if(i60<0.003993809223175049){
     s0+=549.0;
     s1+=1267.0;
    } else {
     s0+=354.0;
     s1+=77.0;
    }
   } else {
    if(i59<-0.032164592295885086){
     s0+=324.0;
     s1+=972.0;
    } else {
     s0+=54.0;
     s1+=2154.0;
    }
   }
  } else {
   if(i10<0.001422107219696045){
    if(i3<6.046891212463379e-05){
     s0+=8.0;
     s1+=10.0;
    } else {
     s0+=45.0;
     s1+=1282.0;
    }
   } else {
    s1+=8209.0;
   }
  }
 }
}
if(i0<0.08194559812545776){
 if(i16<1.0083014965057373){
  if(i63<-0.00292891263961792){
   if(i0<0.02956211566925049){
    if(i31<1.0010061264038086){
     s0+=1252.0;
     s1+=184.0;
    } else {
     s0+=55.0;
     s1+=88.0;
    }
   } else {
    if(i5<1.8894672393798828e-05){
     s0+=168.0;
     s1+=131.0;
    } else {
     s0+=3.0;
     s1+=184.0;
    }
   }
  } else {
   if(i9<1.0398929119110107){
    if(i70<-0.0020244717597961426){
     s0+=4013.0;
     s1+=334.0;
    } else {
     s0+=53837.0;
     s1+=165.0;
    }
   } else {
    if(i29<0.9932315349578857){
     s0+=1265.0;
     s1+=516.0;
    } else {
     s0+=7394.0;
     s1+=608.0;
    }
   }
  }
 } else {
  if(i19<1.0862454175949097){
   if(i37<0.0011852806201204658){
    if(i46<0.06334272027015686){
     s0+=14.0;
     s1+=491.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i45<0.016339853405952454){
     s0+=50.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=27.0;
    }
   }
  } else {
   if(i72<-7.832708433852531e-06){
    s1+=87.0;
   } else {
    if(i35<1.1063789129257202){
     s0+=46.0;
     s1+=25.0;
    } else {
     s0+=797.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i6<0.9965432286262512){
  if(i36<-0.00013998150825500488){
   s0+=700.0;
  } else {
   if(i19<1.0719997882843018){
    if(i18<0.9829270839691162){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=102.0;
    }
   } else {
    if(i35<1.5269668102264404){
     s0+=39.0;
     s1+=65.0;
    } else {
     s1+=84.0;
    }
   }
  }
 } else {
  if(i6<1.0018513202667236){
   if(i66<-0.00521823950111866){
    if(i0<0.15914711356163025){
     s0+=640.0;
     s1+=145.0;
    } else {
     s0+=196.0;
     s1+=924.0;
    }
   } else {
    if(i39<0.0457739531993866){
     s0+=59.0;
     s1+=1568.0;
    } else {
     s0+=295.0;
     s1+=510.0;
    }
   }
  } else {
   if(i2<0.1407366693019867){
    if(i70<0.007384181022644043){
     s0+=75.0;
     s1+=1833.0;
    } else {
     s0+=50.0;
     s1+=43.0;
    }
   } else {
    if(i53<0.051139771938323975){
     s0+=2.0;
     s1+=7558.0;
    } else {
     s0+=13.0;
     s1+=1548.0;
    }
   }
  }
 }
}
if(i0<0.08514660596847534){
 if(i6<1.0024913549423218){
  if(i30<0.0003154152072966099){
   if(i29<1.0112468004226685){
    if(i12<1.0031107664108276){
     s0+=53704.0;
     s1+=252.0;
    } else {
     s0+=68.0;
     s1+=19.0;
    }
   } else {
    if(i42<1.1008371114730835){
     s0+=1.0;
     s1+=61.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i40<0.0018917224369943142){
    if(i33<1.0840110778808594){
     s0+=2211.0;
    } else {
     s0+=2279.0;
     s1+=1445.0;
    }
   } else {
    if(i63<-0.0027083754539489746){
     s0+=1167.0;
     s1+=253.0;
    } else {
     s0+=9462.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i48<0.0009354750509373844){
   if(i36<0.00018680095672607422){
    if(i35<1.2374356985092163){
     s0+=1.0;
     s1+=21.0;
    } else {
     s0+=165.0;
    }
   } else {
    if(i15<1.006248950958252){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i49<0.0030058324337005615){
    if(i63<0.0028183460235595703){
     s0+=43.0;
     s1+=886.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i6<1.005470633506775){
     s0+=45.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i22<-1.6361474990844727e-05){
  if(i3<-0.0004886984825134277){
   if(i64<4.300865839468315e-05){
    if(i16<1.0135821104049683){
     s0+=551.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.9841711521148682){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=49.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.9964107275009155){
    s1+=2.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i10<0.0006539225578308105){
   if(i53<0.03633636236190796){
    if(i50<0.02121680974960327){
     s0+=147.0;
     s1+=2843.0;
    } else {
     s0+=318.0;
     s1+=660.0;
    }
   } else {
    if(i43<0.006003519520163536){
     s0+=717.0;
     s1+=445.0;
    } else {
     s0+=91.0;
     s1+=505.0;
    }
   }
  } else {
   if(i0<0.09741330146789551){
    if(i70<0.006102323532104492){
     s0+=6.0;
     s1+=341.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   } else {
    if(i62<0.0001353893312625587){
     s0+=18.0;
     s1+=183.0;
    } else {
     s0+=25.0;
     s1+=9042.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i25<1.0066334009170532){
  if(i0<0.08579924702644348){
   if(i49<-0.00161665678024292){
    if(i27<0.0023968378081917763){
     s0+=1530.0;
     s1+=596.0;
    } else {
     s0+=1892.0;
     s1+=146.0;
    }
   } else {
    if(i34<1.0557184219360352){
     s0+=42088.0;
     s1+=1.0;
    } else {
     s0+=21846.0;
     s1+=1114.0;
    }
   }
  } else {
   if(i47<3.149025360471569e-06){
    if(i6<0.9956993460655212){
     s0+=292.0;
     s1+=70.0;
    } else {
     s0+=646.0;
     s1+=1800.0;
    }
   } else {
    if(i22<-1.2874603271484375e-05){
     s0+=312.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i40<0.010156700387597084){
   if(i19<1.073743224143982){
    if(i0<0.06724274158477783){
     s0+=93.0;
     s1+=99.0;
    } else {
     s0+=7.0;
     s1+=574.0;
    }
   } else {
    if(i64<2.056276935036294e-05){
     s0+=1849.0;
     s1+=586.0;
    } else {
     s1+=80.0;
    }
   }
  } else {
   if(i51<-0.00048654922284185886){
    if(i46<0.019309163093566895){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=382.0;
    }
   } else {
    if(i14<1.002143383026123){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i19<1.0413084030151367){
  if(i75<9.567839151713997e-05){
   s1+=2.0;
  } else {
   s0+=188.0;
  }
 } else {
  if(i17<0.0019889972172677517){
   if(i3<0.000985860824584961){
    if(i64<-1.4788554381084396e-06){
     s0+=120.0;
    } else {
     s1+=15.0;
    }
   } else {
    s1+=123.0;
   }
  } else {
   if(i71<1.0016355514526367){
    if(i6<1.0033774375915527){
     s0+=94.0;
     s1+=1198.0;
    } else {
     s0+=45.0;
     s1+=9740.0;
    }
   } else {
    if(i45<0.012609112076461315){
     s0+=82.0;
     s1+=15.0;
    } else {
     s0+=24.0;
     s1+=540.0;
    }
   }
  }
 }
}
if(i1<0.08204472064971924){
 if(i22<1.9252300262451172e-05){
  if(i73<0.0007176984800025821){
   if(i19<1.048384666442871){
    if(i25<1.0083866119384766){
     s0+=52644.0;
     s1+=88.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i6<1.0009429454803467){
     s0+=7320.0;
     s1+=489.0;
    } else {
     s0+=646.0;
     s1+=317.0;
    }
   }
  } else {
   if(i14<0.9942113161087036){
    if(i63<-0.001484513282775879){
     s0+=638.0;
     s1+=85.0;
    } else {
     s0+=4031.0;
     s1+=33.0;
    }
   } else {
    if(i57<3.198310878360644e-05){
     s0+=1967.0;
     s1+=172.0;
    } else {
     s0+=993.0;
     s1+=793.0;
    }
   }
  }
 } else {
  if(i14<1.0009605884552002){
   if(i63<-0.003166407346725464){
    if(i59<-0.00021178508177399635){
     s0+=3.0;
     s1+=61.0;
    } else {
     s0+=39.0;
     s1+=40.0;
    }
   } else {
    if(i55<0.012455555610358715){
     s0+=1098.0;
     s1+=82.0;
    } else {
     s0+=12.0;
     s1+=29.0;
    }
   }
  } else {
   if(i17<0.002065476728603244){
    if(i9<1.0755102634429932){
     s0+=69.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i49<0.00209808349609375){
     s0+=17.0;
     s1+=736.0;
    } else {
     s0+=22.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i37<0.006140879821032286){
  if(i11<0.9985270500183105){
   if(i38<0.0017424665857106447){
    s0+=425.0;
   } else {
    if(i7<-3.9517704863101244e-05){
     s1+=12.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i44<0.05819219350814819){
    if(i5<-5.8263540267944336e-05){
     s0+=13.0;
    } else {
     s0+=69.0;
     s1+=3164.0;
    }
   } else {
    if(i7<-2.2995565814198926e-05){
     s0+=343.0;
     s1+=1188.0;
    } else {
     s0+=708.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i1<0.11058551073074341){
   if(i73<0.0011175191029906273){
    if(i74<0.9986423254013062){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=94.0;
     s1+=9.0;
    }
   } else {
    if(i49<0.002425670623779297){
     s0+=2.0;
     s1+=227.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  } else {
   if(i37<0.0075609078630805016){
    if(i1<0.1384539008140564){
     s0+=22.0;
     s1+=57.0;
    } else {
     s0+=19.0;
     s1+=728.0;
    }
   } else {
    if(i28<0.9959431886672974){
     s0+=12.0;
     s1+=1297.0;
    } else {
     s0+=1.0;
     s1+=7176.0;
    }
   }
  }
 }
}
if(i5<3.820657730102539e-05){
 if(i1<0.08225274085998535){
  if(i27<0.00031474261777475476){
   if(i9<1.0436501502990723){
    if(i77<-0.0012580156326293945){
     s0+=2611.0;
     s1+=174.0;
    } else {
     s0+=51106.0;
     s1+=175.0;
    }
   } else {
    if(i7<-3.251160524087027e-05){
     s0+=315.0;
     s1+=184.0;
    } else {
     s0+=2806.0;
     s1+=146.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i51<-8.625200280221179e-05){
     s0+=385.0;
     s1+=513.0;
    } else {
     s0+=2559.0;
     s1+=495.0;
    }
   } else {
    if(i54<-0.04238039255142212){
     s0+=973.0;
     s1+=252.0;
    } else {
     s0+=7979.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i44<0.05801314115524292){
   if(i42<1.0672621726989746){
    if(i7<-1.9654713469208218e-05){
     s1+=4.0;
    } else {
     s0+=83.0;
    }
   } else {
    if(i11<0.998153567314148){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=52.0;
     s1+=2006.0;
    }
   }
  } else {
   if(i4<0.17246755957603455){
    if(i17<0.004106204491108656){
     s0+=887.0;
     s1+=212.0;
    } else {
     s0+=270.0;
     s1+=387.0;
    }
   } else {
    if(i47<2.7292053346172906e-06){
     s0+=141.0;
     s1+=861.0;
    } else {
     s0+=129.0;
    }
   }
  }
 }
} else {
 if(i19<1.049600601196289){
  if(i31<1.0009835958480835){
   if(i20<3.316998481750488e-05){
    s1+=2.0;
   } else {
    if(i26<1.0102944374084473){
     s0+=311.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   s1+=17.0;
  }
 } else {
  if(i2<0.05852234363555908){
   if(i47<-1.4685972928418778e-05){
    if(i49<0.0017438232898712158){
     s0+=61.0;
     s1+=609.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i35<1.2348568439483643){
     s1+=16.0;
    } else {
     s0+=100.0;
    }
   }
  } else {
   if(i7<-4.4378328311722726e-05){
    if(i0<0.13188841938972473){
     s0+=111.0;
     s1+=1507.0;
    } else {
     s0+=26.0;
     s1+=9249.0;
    }
   } else {
    if(i20<0.00017029047012329102){
     s0+=18.0;
     s1+=198.0;
    } else {
     s0+=53.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i1<0.08134973049163818){
 if(i6<1.0024693012237549){
  if(i70<-0.0022151172161102295){
   if(i37<0.0009905935730785131){
    if(i40<0.0003958317101933062){
     s0+=855.0;
     s1+=7.0;
    } else {
     s0+=331.0;
     s1+=616.0;
    }
   } else {
    if(i5<3.153085708618164e-05){
     s0+=4577.0;
     s1+=328.0;
    } else {
     s0+=49.0;
     s1+=96.0;
    }
   }
  } else {
   if(i24<0.021627211943268776){
    if(i15<1.0039652585983276){
     s0+=58387.0;
     s1+=344.0;
    } else {
     s0+=724.0;
     s1+=158.0;
    }
   } else {
    if(i43<0.0009708788711577654){
     s0+=503.0;
     s1+=443.0;
    } else {
     s0+=3651.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i40<0.00099872425198555){
   if(i35<1.069656252861023){
    s0+=7.0;
   } else {
    if(i42<1.2066810131072998){
     s1+=569.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  } else {
   if(i13<0.0005913972854614258){
    if(i42<1.158913493156433){
     s1+=7.0;
    } else {
     s0+=166.0;
    }
   } else {
    if(i74<0.9931865930557251){
     s0+=39.0;
     s1+=289.0;
    } else {
     s0+=70.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i10<0.00023704767227172852){
  if(i13<-0.0004054605960845947){
   if(i62<0.000880039413459599){
    if(i62<0.0006176920142024755){
     s0+=345.0;
    } else {
     s0+=33.0;
     s1+=1.0;
    }
   } else {
    if(i34<1.2067863941192627){
     s0+=59.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i39<0.050078392028808594){
    if(i0<0.09171810746192932){
     s0+=76.0;
     s1+=252.0;
    } else {
     s0+=24.0;
     s1+=2178.0;
    }
   } else {
    if(i40<0.008495919406414032){
     s0+=962.0;
     s1+=565.0;
    } else {
     s0+=61.0;
     s1+=675.0;
    }
   }
  }
 } else {
  if(i3<0.0001436173915863037){
   if(i45<0.01565569080412388){
    if(i34<1.2604451179504395){
     s0+=13.0;
     s1+=56.0;
    } else {
     s0+=74.0;
    }
   } else {
    if(i31<0.9997652769088745){
     s1+=128.0;
    } else {
     s0+=18.0;
     s1+=42.0;
    }
   }
  } else {
   if(i3<0.0008675456047058105){
    if(i52<-5.791401054011658e-05){
     s1+=743.0;
    } else {
     s0+=83.0;
     s1+=543.0;
    }
   } else {
    if(i62<0.00017006637062877417){
     s0+=2.0;
     s1+=186.0;
    } else {
     s1+=8727.0;
    }
   }
  }
 }
}
if(i0<0.08507683873176575){
 if(i1<0.06630510091781616){
  if(i70<-0.0023172497749328613){
   if(i13<0.000594794750213623){
    if(i35<1.197464108467102){
     s0+=1605.0;
     s1+=627.0;
    } else {
     s0+=3591.0;
     s1+=101.0;
    }
   } else {
    if(i54<0.004273355007171631){
     s0+=87.0;
     s1+=391.0;
    } else {
     s0+=170.0;
     s1+=21.0;
    }
   }
  } else {
   if(i7<-4.9392576329410076e-05){
    if(i29<1.0058350563049316){
     s0+=636.0;
     s1+=86.0;
    } else {
     s0+=114.0;
     s1+=179.0;
    }
   } else {
    if(i17<0.004424636252224445){
     s0+=56969.0;
     s1+=382.0;
    } else {
     s0+=3143.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i15<1.0028736591339111){
   if(i60<-0.0010048747062683105){
    if(i63<0.0030368566513061523){
     s0+=35.0;
     s1+=275.0;
    } else {
     s0+=138.0;
     s1+=8.0;
    }
   } else {
    if(i19<1.045206069946289){
     s0+=1496.0;
     s1+=39.0;
    } else {
     s0+=890.0;
     s1+=303.0;
    }
   }
  } else {
   if(i44<0.041057080030441284){
    if(i74<1.0308207273483276){
     s0+=29.0;
     s1+=473.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   } else {
    if(i18<1.01271390914917){
     s0+=42.0;
     s1+=30.0;
    } else {
     s0+=107.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i31<0.9991060495376587){
  if(i38<0.011189809069037437){
   if(i47<-1.0199353710049763e-05){
    if(i19<1.050245761871338){
     s0+=15.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=628.0;
   }
  } else {
   s1+=27.0;
  }
 } else {
  if(i3<0.0004442930221557617){
   if(i49<0.004374951124191284){
    if(i17<0.0010371237294748425){
     s0+=118.0;
     s1+=34.0;
    } else {
     s0+=178.0;
     s1+=2066.0;
    }
   } else {
    if(i1<0.1600431203842163){
     s0+=588.0;
     s1+=127.0;
    } else {
     s0+=193.0;
     s1+=752.0;
    }
   }
  } else {
   if(i7<-5.614959809463471e-05){
    if(i1<0.1306760609149933){
     s0+=71.0;
     s1+=1178.0;
    } else {
     s0+=16.0;
     s1+=9495.0;
    }
   } else {
    if(i17<0.0046147312968969345){
     s0+=101.0;
     s1+=115.0;
    } else {
     s0+=2.0;
     s1+=338.0;
    }
   }
  }
 }
}
if(i9<1.0564017295837402){
 if(i56<0.00030241315835155547){
  if(i7<-4.4849144615000114e-05){
   if(i32<1.0057883262634277){
    if(i31<1.0005356073379517){
     s0+=294.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i75<0.0001179913233499974){
     s1+=81.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i29<1.0113708972930908){
    if(i79<-0.001273512840270996){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=46849.0;
     s1+=32.0;
    }
   } else {
    if(i30<0.00017675507115200162){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i16<1.008097529411316){
   if(i10<-0.0014890730381011963){
    if(i13<0.000666201114654541){
     s0+=10829.0;
     s1+=150.0;
    } else {
     s0+=199.0;
     s1+=51.0;
    }
   } else {
    if(i12<1.0008481740951538){
     s0+=6412.0;
     s1+=1032.0;
    } else {
     s0+=263.0;
     s1+=602.0;
    }
   }
  } else {
   if(i17<0.0018762546824291348){
    if(i29<1.0109089612960815){
     s0+=80.0;
    } else {
     s0+=12.0;
     s1+=46.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s0+=10.0;
     s1+=311.0;
    } else {
     s0+=25.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i1<0.08946725726127625){
  if(i12<1.0027947425842285){
   if(i35<1.1037919521331787){
    if(i37<0.0002766135148704052){
     s0+=337.0;
    } else {
     s0+=523.0;
     s1+=625.0;
    }
   } else {
    if(i62<0.0017944240244105458){
     s0+=3913.0;
     s1+=335.0;
    } else {
     s0+=3.0;
     s1+=49.0;
    }
   }
  } else {
   if(i6<1.003465175628662){
    if(i49<-0.0007557570934295654){
     s0+=95.0;
     s1+=155.0;
    } else {
     s0+=209.0;
     s1+=14.0;
    }
   } else {
    if(i71<1.002249002456665){
     s0+=27.0;
     s1+=685.0;
    } else {
     s0+=22.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i11<0.9985091686248779){
   if(i35<1.434314250946045){
    s0+=295.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i5<3.331899642944336e-05){
    if(i52<0.0004981254460290074){
     s0+=669.0;
     s1+=1269.0;
    } else {
     s0+=97.0;
     s1+=1101.0;
    }
   } else {
    if(i0<0.13653436303138733){
     s0+=91.0;
     s1+=1122.0;
    } else {
     s0+=31.0;
     s1+=9215.0;
    }
   }
  }
 }
}
if(i7<-7.31103791622445e-05){
 if(i2<0.05229908227920532){
  if(i6<1.0037493705749512){
   if(i8<1.0985201597213745){
    if(i63<-0.0023750662803649902){
     s0+=124.0;
     s1+=37.0;
    } else {
     s0+=709.0;
     s1+=23.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i42<1.2563519477844238){
    s1+=126.0;
   } else {
    if(i47<-4.027991963084787e-05){
     s0+=4.0;
     s1+=64.0;
    } else {
     s0+=27.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i34<1.0585076808929443){
   s0+=63.0;
  } else {
   if(i5<1.6570091247558594e-05){
    if(i51<-0.00031051383120939136){
     s1+=380.0;
    } else {
     s0+=82.0;
     s1+=34.0;
    }
   } else {
    if(i71<1.0031647682189941){
     s0+=91.0;
     s1+=10487.0;
    } else {
     s0+=42.0;
     s1+=220.0;
    }
   }
  }
 }
} else {
 if(i4<0.07092970609664917){
  if(i0<0.0784960389137268){
   if(i5<4.202127456665039e-05){
    if(i19<1.0451585054397583){
     s0+=53241.0;
     s1+=201.0;
    } else {
     s0+=13850.0;
     s1+=1518.0;
    }
   } else {
    if(i30<0.00025357899721711874){
     s0+=107.0;
     s1+=10.0;
    } else {
     s0+=91.0;
     s1+=312.0;
    }
   }
  } else {
   if(i14<0.9930689334869385){
    if(i8<1.1149210929870605){
     s0+=407.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   } else {
    if(i40<0.00044315183185972273){
     s0+=68.0;
     s1+=11.0;
    } else {
     s0+=119.0;
     s1+=1009.0;
    }
   }
  }
 } else {
  if(i17<0.0017184583703055978){
   if(i7<-1.1619420547503978e-05){
    if(i25<0.9988868832588196){
     s0+=12.0;
     s1+=65.0;
    } else {
     s0+=244.0;
     s1+=63.0;
    }
   } else {
    if(i13<-0.0003190338611602783){
     s0+=71.0;
     s1+=26.0;
    } else {
     s0+=517.0;
     s1+=16.0;
    }
   }
  } else {
   if(i61<0.9995808601379395){
    if(i71<0.9995822906494141){
     s0+=373.0;
     s1+=46.0;
    } else {
     s0+=4.0;
     s1+=54.0;
    }
   } else {
    if(i35<1.1819204092025757){
     s0+=112.0;
     s1+=1128.0;
    } else {
     s0+=721.0;
     s1+=1254.0;
    }
   }
  }
 }
}
if(i3<0.0005651116371154785){
 if(i1<0.08242720365524292){
  if(i49<-0.001654297113418579){
   if(i9<1.0332696437835693){
    if(i26<0.9597855806350708){
     s0+=923.0;
     s1+=11.0;
    } else {
     s0+=527.0;
     s1+=90.0;
    }
   } else {
    if(i34<1.096760869026184){
     s0+=454.0;
     s1+=444.0;
    } else {
     s0+=1818.0;
     s1+=301.0;
    }
   }
  } else {
   if(i2<0.060812294483184814){
    if(i19<1.0451585054397583){
     s0+=50989.0;
     s1+=120.0;
    } else {
     s0+=10466.0;
     s1+=664.0;
    }
   } else {
    if(i53<0.017799735069274902){
     s0+=506.0;
     s1+=388.0;
    } else {
     s0+=3229.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i7<-1.2278081158001442e-05){
   if(i61<1.0003736019134521){
    if(i24<0.020341746509075165){
     s0+=331.0;
     s1+=763.0;
    } else {
     s0+=158.0;
     s1+=2293.0;
    }
   } else {
    if(i19<1.09696626663208){
     s0+=113.0;
     s1+=1.0;
    } else {
     s0+=27.0;
     s1+=98.0;
    }
   }
  } else {
   if(i13<-0.0004054605960845947){
    s0+=376.0;
   } else {
    if(i44<0.048490315675735474){
     s0+=6.0;
     s1+=169.0;
    } else {
     s0+=600.0;
     s1+=130.0;
    }
   }
  }
 }
} else {
 if(i10<0.0014264583587646484){
  if(i35<1.0657644271850586){
   s0+=142.0;
  } else {
   if(i1<0.08277314901351929){
    if(i47<-1.415376755176112e-05){
     s0+=157.0;
     s1+=595.0;
    } else {
     s0+=155.0;
     s1+=22.0;
    }
   } else {
    if(i47<-1.1637752322712913e-05){
     s0+=79.0;
     s1+=2561.0;
    } else {
     s0+=24.0;
     s1+=21.0;
    }
   }
  }
 } else {
  s1+=8326.0;
 }
}
if(i8<1.0452277660369873){
 if(i0<0.08524474501609802){
  if(i5<3.93986701965332e-05){
   if(i54<-0.029019176959991455){
    if(i4<0.022086888551712036){
     s0+=1210.0;
     s1+=148.0;
    } else {
     s0+=92.0;
     s1+=140.0;
    }
   } else {
    if(i60<-0.0013273358345031738){
     s0+=4042.0;
     s1+=534.0;
    } else {
     s0+=59287.0;
     s1+=570.0;
    }
   }
  } else {
   if(i6<1.0016067028045654){
    if(i4<0.07652103900909424){
     s0+=254.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i52<9.070343367056921e-06){
     s0+=62.0;
     s1+=39.0;
    } else {
     s0+=13.0;
     s1+=326.0;
    }
   }
  }
 } else {
  if(i6<0.9956993460655212){
   if(i31<0.9999587535858154){
    if(i29<0.9731327295303345){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=289.0;
     s1+=1.0;
    }
   } else {
    if(i29<0.9887970685958862){
     s1+=8.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i49<0.005541980266571045){
    if(i19<1.0458018779754639){
     s0+=46.0;
     s1+=26.0;
    } else {
     s0+=24.0;
     s1+=988.0;
    }
   } else {
    if(i18<0.9762420058250427){
     s1+=1.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
} else {
 if(i15<1.0062782764434814){
  if(i42<1.3825137615203857){
   if(i2<0.09567230939865112){
    if(i5<8.52346420288086e-06){
     s0+=3590.0;
     s1+=518.0;
    } else {
     s0+=821.0;
     s1+=497.0;
    }
   } else {
    if(i44<0.07524457573890686){
     s0+=56.0;
     s1+=1448.0;
    } else {
     s0+=863.0;
     s1+=653.0;
    }
   }
  } else {
   if(i2<0.08061379194259644){
    if(i58<0.002937433309853077){
     s0+=144.0;
     s1+=5.0;
    } else {
     s0+=12.0;
     s1+=119.0;
    }
   } else {
    if(i6<0.9895551204681396){
     s0+=1.0;
    } else {
     s0+=12.0;
     s1+=1416.0;
    }
   }
  }
 } else {
  if(i10<0.0009532570838928223){
   if(i17<0.0031222000252455473){
    if(i9<1.1283799409866333){
     s0+=47.0;
     s1+=59.0;
    } else {
     s0+=213.0;
     s1+=10.0;
    }
   } else {
    if(i22<-1.1563301086425781e-05){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=733.0;
    }
   }
  } else {
   if(i17<0.0022433847188949585){
    if(i2<0.07768476009368896){
     s0+=54.0;
     s1+=43.0;
    } else {
     s0+=11.0;
     s1+=213.0;
    }
   } else {
    if(i1<0.06385549902915955){
     s0+=6.0;
     s1+=164.0;
    } else {
     s0+=1.0;
     s1+=8383.0;
    }
   }
  }
 }
}
if(i3<0.0005651414394378662){
 if(i8<1.0451873540878296){
  if(i69<0.02661413699388504){
   if(i50<-0.007765620946884155){
    if(i38<0.0004058502963744104){
     s0+=177.0;
     s1+=4.0;
    } else {
     s0+=213.0;
     s1+=202.0;
    }
   } else {
    if(i57<-2.1328620277927257e-05){
     s1+=25.0;
    } else {
     s0+=55472.0;
     s1+=459.0;
    }
   }
  } else {
   if(i10<-0.0017104744911193848){
    if(i10<-0.0022612810134887695){
     s0+=5372.0;
     s1+=61.0;
    } else {
     s0+=562.0;
     s1+=56.0;
    }
   } else {
    if(i34<1.0556960105895996){
     s0+=1532.0;
     s1+=1.0;
    } else {
     s0+=1837.0;
     s1+=1105.0;
    }
   }
  }
 } else {
  if(i24<0.0284640621393919){
   if(i16<1.010788917541504){
    if(i7<-1.6419226085417904e-05){
     s0+=1276.0;
     s1+=688.0;
    } else {
     s0+=2897.0;
     s1+=147.0;
    }
   } else {
    if(i17<0.0036436873488128185){
     s0+=403.0;
     s1+=288.0;
    } else {
     s0+=28.0;
     s1+=349.0;
    }
   }
  } else {
   if(i72<1.6862572920217644e-06){
    if(i48<0.0007575269555673003){
     s0+=208.0;
     s1+=236.0;
    } else {
     s0+=308.0;
     s1+=1926.0;
    }
   } else {
    s0+=380.0;
   }
  }
 }
} else {
 if(i4<0.055297911167144775){
  if(i30<0.0002010625321418047){
   if(i7<-4.926710607833229e-05){
    s1+=5.0;
   } else {
    s0+=147.0;
   }
  } else {
   if(i63<0.0012366175651550293){
    if(i0<0.059334903955459595){
     s0+=126.0;
     s1+=396.0;
    } else {
     s0+=7.0;
     s1+=796.0;
    }
   } else {
    if(i15<1.0065257549285889){
     s0+=45.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i7<-4.317488128435798e-05){
   if(i0<0.12644004821777344){
    if(i10<2.5570392608642578e-05){
     s0+=86.0;
     s1+=235.0;
    } else {
     s1+=780.0;
    }
   } else {
    if(i10<0.00023192167282104492){
     s0+=30.0;
     s1+=949.0;
    } else {
     s1+=8219.0;
    }
   }
  } else {
   if(i17<0.00253513315692544){
    s0+=60.0;
   } else {
    if(i45<0.005258115474134684){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=146.0;
    }
   }
  }
 }
}
if(i10<0.0008068680763244629){
 if(i23<1.0428704023361206){
  if(i9<1.0436501502990723){
   if(i27<0.0003073502448387444){
    if(i4<0.08755296468734741){
     s0+=53704.0;
     s1+=355.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i35<1.2048285007476807){
     s0+=2316.0;
     s1+=558.0;
    } else {
     s0+=4933.0;
     s1+=108.0;
    }
   }
  } else {
   if(i5<2.8431415557861328e-05){
    if(i33<1.229804515838623){
     s0+=2593.0;
     s1+=1273.0;
    } else {
     s0+=3087.0;
     s1+=338.0;
    }
   } else {
    if(i58<0.005609732121229172){
     s0+=102.0;
     s1+=343.0;
    } else {
     s0+=15.0;
     s1+=448.0;
    }
   }
  }
 } else {
  if(i45<0.024941280484199524){
   if(i51<-0.00011188413918716833){
    if(i0<0.08938705921173096){
     s0+=1057.0;
     s1+=220.0;
    } else {
     s0+=654.0;
     s1+=826.0;
    }
   } else {
    if(i42<1.4294929504394531){
     s0+=1440.0;
     s1+=116.0;
    } else {
     s0+=36.0;
     s1+=53.0;
    }
   }
  } else {
   if(i13<-0.0002548694610595703){
    if(i17<0.0065079983323812485){
     s0+=285.0;
     s1+=14.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i0<0.09150230884552002){
     s0+=123.0;
     s1+=89.0;
    } else {
     s0+=94.0;
     s1+=2413.0;
    }
   }
  }
 }
} else {
 if(i2<0.05544477701187134){
  if(i55<0.006253540515899658){
   if(i13<0.0005966424942016602){
    if(i17<0.004563967697322369){
     s0+=456.0;
     s1+=21.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   } else {
    s1+=32.0;
   }
  } else {
   if(i7<-5.22074697073549e-05){
    if(i47<-1.1700723916874267e-05){
     s1+=247.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    if(i33<1.1386182308197021){
     s1+=19.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.0022362954914569855){
   if(i10<0.0014663934707641602){
    if(i9<1.0609204769134521){
     s0+=5.0;
     s1+=60.0;
    } else {
     s0+=70.0;
    }
   } else {
    s1+=225.0;
   }
  } else {
   if(i37<0.0003450419462751597){
    s0+=1.0;
   } else {
    if(i2<0.0930938720703125){
     s0+=19.0;
     s1+=810.0;
    } else {
     s0+=2.0;
     s1+=8598.0;
    }
   }
  }
 }
}
if(i18<1.0081071853637695){
 if(i6<1.0024573802947998){
  if(i1<0.08523356914520264){
   if(i60<-0.0012745261192321777){
    if(i34<1.1803476810455322){
     s0+=2292.0;
     s1+=846.0;
    } else {
     s0+=3561.0;
     s1+=221.0;
    }
   } else {
    if(i30<0.0003353881184011698){
     s0+=53632.0;
     s1+=161.0;
    } else {
     s0+=8079.0;
     s1+=679.0;
    }
   }
  } else {
   if(i53<0.04117169976234436){
    if(i31<0.998668372631073){
     s0+=123.0;
    } else {
     s0+=122.0;
     s1+=1585.0;
    }
   } else {
    if(i51<-0.00010872291022678837){
     s0+=120.0;
     s1+=192.0;
    } else {
     s0+=362.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i47<-1.3801046407024842e-05){
   if(i1<0.03178900480270386){
    if(i54<-0.0252438485622406){
     s0+=8.0;
     s1+=96.0;
    } else {
     s0+=23.0;
     s1+=6.0;
    }
   } else {
    if(i71<1.0045487880706787){
     s0+=44.0;
     s1+=2113.0;
    } else {
     s0+=15.0;
     s1+=20.0;
    }
   }
  } else {
   if(i11<1.0019912719726562){
    if(i17<0.003151420969516039){
     s0+=85.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i13<0.0006226897239685059){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i5<3.331899642944336e-05){
  if(i17<0.0043257614597678185){
   if(i42<1.0950405597686768){
    if(i19<1.0722787380218506){
     s0+=95.0;
     s1+=386.0;
    } else {
     s0+=283.0;
     s1+=102.0;
    }
   } else {
    if(i0<0.1254681646823883){
     s0+=1560.0;
     s1+=55.0;
    } else {
     s0+=257.0;
     s1+=186.0;
    }
   }
  } else {
   if(i13<-0.0003986954689025879){
    s0+=139.0;
   } else {
    if(i33<1.5608327388763428){
     s0+=25.0;
     s1+=1127.0;
    } else {
     s0+=49.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i17<0.0022614020854234695){
   if(i72<-6.346352165564895e-06){
    if(i28<1.0079184770584106){
     s0+=2.0;
    } else {
     s1+=120.0;
    }
   } else {
    if(i14<1.0145940780639648){
     s0+=144.0;
     s1+=2.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i10<3.159046173095703e-05){
    if(i0<0.1422494649887085){
     s0+=81.0;
     s1+=37.0;
    } else {
     s0+=10.0;
     s1+=413.0;
    }
   } else {
    if(i10<0.0009249448776245117){
     s0+=8.0;
     s1+=600.0;
    } else {
     s1+=8004.0;
    }
   }
  }
 }
}
if(i13<0.00043517351150512695){
 if(i4<0.07234883308410645){
  if(i19<1.0486011505126953){
   if(i79<-0.0006464123725891113){
    if(i9<1.0450081825256348){
     s0+=6514.0;
     s1+=225.0;
    } else {
     s0+=35.0;
     s1+=33.0;
    }
   } else {
    if(i56<0.0002908173482865095){
     s0+=42926.0;
     s1+=5.0;
    } else {
     s0+=5939.0;
     s1+=68.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i33<1.084442138671875){
     s0+=1586.0;
    } else {
     s0+=1197.0;
     s1+=1630.0;
    }
   } else {
    if(i42<1.1823735237121582){
     s0+=2492.0;
     s1+=575.0;
    } else {
     s0+=6841.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i13<-0.00037485361099243164){
   if(i31<0.9997230768203735){
    if(i43<0.008514813147485256){
     s0+=461.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i27<0.0017050839960575104){
     s0+=20.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i17<0.0016448013484477997){
    if(i20<0.00024694204330444336){
     s0+=633.0;
     s1+=123.0;
    } else {
     s0+=2.0;
     s1+=36.0;
    }
   } else {
    if(i51<-0.00011120819544885308){
     s0+=217.0;
     s1+=2858.0;
    } else {
     s0+=265.0;
     s1+=248.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005705356597900391){
  if(i62<0.0018924064934253693){
   if(i14<1.0010632276535034){
    if(i23<1.0657634735107422){
     s0+=1194.0;
     s1+=170.0;
    } else {
     s0+=139.0;
     s1+=163.0;
    }
   } else {
    if(i56<0.00023476051865145564){
     s0+=49.0;
    } else {
     s0+=42.0;
     s1+=189.0;
    }
   }
  } else {
   if(i8<1.0314399003982544){
    if(i19<1.1349503993988037){
     s0+=11.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    s1+=188.0;
   }
  }
 } else {
  if(i35<1.0657644271850586){
   s0+=71.0;
  } else {
   if(i17<0.0016509999986737967){
    if(i14<1.011098861694336){
     s0+=83.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i5<7.528066635131836e-05){
     s0+=162.0;
     s1+=1390.0;
    } else {
     s0+=71.0;
     s1+=9141.0;
    }
   }
  }
 }
}
if(i15<1.0056464672088623){
 if(i68<0.03418995067477226){
  if(i1<0.0848722755908966){
   if(i50<-0.00785413384437561){
    if(i3<0.00016510486602783203){
     s0+=413.0;
     s1+=175.0;
    } else {
     s0+=3.0;
     s1+=84.0;
    }
   } else {
    if(i79<-0.0013214945793151855){
     s0+=53.0;
     s1+=73.0;
    } else {
     s0+=56211.0;
     s1+=563.0;
    }
   }
  } else {
   if(i53<0.045789748430252075){
    if(i8<1.0845823287963867){
     s0+=59.0;
     s1+=422.0;
    } else {
     s0+=45.0;
     s1+=12.0;
    }
   } else {
    if(i28<1.004520297050476){
     s0+=123.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i51<-8.848602010402828e-05){
   if(i17<0.005857805721461773){
    if(i24<0.03393682837486267){
     s0+=2658.0;
     s1+=658.0;
    } else {
     s0+=364.0;
     s1+=731.0;
    }
   } else {
    if(i77<-0.007875621318817139){
     s0+=325.0;
     s1+=285.0;
    } else {
     s0+=141.0;
     s1+=2371.0;
    }
   }
  } else {
   if(i6<0.9993947148323059){
    if(i14<0.9946316480636597){
     s0+=6988.0;
     s1+=104.0;
    } else {
     s0+=2037.0;
     s1+=413.0;
    }
   } else {
    if(i49<0.0009076297283172607){
     s0+=243.0;
     s1+=631.0;
    } else {
     s0+=416.0;
     s1+=281.0;
    }
   }
  }
 }
} else {
 if(i0<0.06785187125205994){
  if(i17<0.0027900077402591705){
   if(i34<1.0862454175949097){
    s1+=69.0;
   } else {
    if(i20<0.00025075674057006836){
     s0+=639.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i51<-0.0002984167658723891){
    if(i63<-0.002731144428253174){
     s0+=2.0;
     s1+=26.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   } else {
    if(i22<-5.066394805908203e-06){
     s0+=8.0;
    } else {
     s1+=223.0;
    }
   }
  }
 } else {
  if(i17<0.001634836895391345){
   if(i7<-4.3649655708577484e-05){
    s1+=145.0;
   } else {
    s0+=147.0;
   }
  } else {
   if(i17<0.0031570899300277233){
    if(i30<0.002560798544436693){
     s0+=28.0;
     s1+=491.0;
    } else {
     s0+=64.0;
     s1+=61.0;
    }
   } else {
    if(i72<8.892739060684107e-07){
     s0+=10.0;
     s1+=9367.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i13<0.00043517351150512695){
 if(i7<-4.5911234337836504e-05){
  if(i0<0.06697142124176025){
   if(i42<1.2206636667251587){
    if(i6<0.9999234080314636){
     s0+=244.0;
     s1+=46.0;
    } else {
     s1+=84.0;
    }
   } else {
    if(i9<1.0690147876739502){
     s0+=1299.0;
     s1+=2.0;
    } else {
     s0+=172.0;
     s1+=32.0;
    }
   }
  } else {
   if(i9<1.0401138067245483){
    if(i21<0.9973588585853577){
     s0+=74.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.060826301574707){
     s0+=13.0;
    } else {
     s0+=43.0;
     s1+=2531.0;
    }
   }
  }
 } else {
  if(i4<0.07075947523117065){
   if(i0<0.07836440205574036){
    if(i58<0.0015179489273577929){
     s0+=59585.0;
     s1+=679.0;
    } else {
     s0+=5317.0;
     s1+=746.0;
    }
   } else {
    if(i3<-0.0006113052368164062){
     s0+=411.0;
     s1+=19.0;
    } else {
     s0+=178.0;
     s1+=509.0;
    }
   }
  } else {
   if(i11<0.99846351146698){
    if(i71<1.0012438297271729){
     s0+=538.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i50<0.01768144965171814){
     s0+=499.0;
     s1+=983.0;
    } else {
     s0+=676.0;
     s1+=304.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005491971969604492){
  if(i45<0.035618968307971954){
   if(i0<0.11222156882286072){
    if(i57<0.00014009876758791506){
     s0+=628.0;
     s1+=191.0;
    } else {
     s0+=768.0;
     s1+=23.0;
    }
   } else {
    if(i30<0.01485908031463623){
     s0+=33.0;
     s1+=152.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   }
  } else {
   if(i75<0.00016725354362279177){
    if(i7<-6.0251884860917926e-05){
     s1+=30.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i25<0.8847005367279053){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i37<0.0003471831150818616){
   s0+=72.0;
  } else {
   if(i2<0.06643521785736084){
    if(i34<1.1353518962860107){
     s0+=2.0;
     s1+=561.0;
    } else {
     s0+=208.0;
     s1+=287.0;
    }
   } else {
    if(i6<1.0029398202896118){
     s0+=68.0;
     s1+=449.0;
    } else {
     s0+=54.0;
     s1+=9330.0;
    }
   }
  }
 }
}
if(i0<0.0852321982383728){
 if(i11<1.0017335414886475){
  if(i55<0.0075655728578567505){
   if(i2<0.06629371643066406){
    if(i58<0.0015185982920229435){
     s0+=58947.0;
     s1+=591.0;
    } else {
     s0+=4122.0;
     s1+=378.0;
    }
   } else {
    if(i19<1.045206069946289){
     s0+=1081.0;
     s1+=28.0;
    } else {
     s0+=741.0;
     s1+=384.0;
    }
   }
  } else {
   if(i7<-3.350339466123842e-05){
    if(i2<0.024620920419692993){
     s0+=279.0;
     s1+=62.0;
    } else {
     s0+=87.0;
     s1+=310.0;
    }
   } else {
    if(i36<-3.421306610107422e-05){
     s0+=1568.0;
     s1+=64.0;
    } else {
     s0+=1401.0;
     s1+=384.0;
    }
   }
  }
 } else {
  if(i71<1.0019999742507935){
   if(i20<-0.0001780390739440918){
    if(i59<-0.011444653384387493){
     s0+=116.0;
     s1+=12.0;
    } else {
     s0+=101.0;
     s1+=151.0;
    }
   } else {
    if(i43<0.0003550970577634871){
     s0+=29.0;
    } else {
     s0+=64.0;
     s1+=775.0;
    }
   }
  } else {
   if(i55<0.0182935893535614){
    if(i60<0.00017052888870239258){
     s0+=207.0;
     s1+=33.0;
    } else {
     s0+=342.0;
     s1+=2.0;
    }
   } else {
    if(i51<0.00020192998636048287){
     s0+=2.0;
     s1+=45.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3425011275103316e-05){
  if(i20<0.00010162591934204102){
   if(i74<1.0111472606658936){
    if(i6<0.9953687191009521){
     s0+=49.0;
     s1+=32.0;
    } else {
     s0+=38.0;
     s1+=1803.0;
    }
   } else {
    if(i2<0.12596634030342102){
     s0+=458.0;
     s1+=473.0;
    } else {
     s0+=152.0;
     s1+=1771.0;
    }
   }
  } else {
   if(i22<0.00036394596099853516){
    if(i3<6.046891212463379e-05){
     s0+=11.0;
     s1+=16.0;
    } else {
     s0+=30.0;
     s1+=9502.0;
    }
   } else {
    s0+=14.0;
   }
  }
 } else {
  if(i7<3.945881871914025e-06){
   if(i52<0.000292164389975369){
    if(i38<0.0017783655785024166){
     s0+=362.0;
     s1+=63.0;
    } else {
     s0+=69.0;
     s1+=63.0;
    }
   } else {
    if(i13<-0.0004964172840118408){
     s0+=25.0;
    } else {
     s0+=52.0;
     s1+=206.0;
    }
   }
  } else {
   if(i71<0.999956488609314){
    if(i8<1.0051453113555908){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=542.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.03154253959655762){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=147.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i3<0.0005474090576171875){
 if(i2<0.08024245500564575){
  if(i27<0.0002929338370449841){
   if(i73<0.0008579068235121667){
    if(i32<1.0091968774795532){
     s0+=54674.0;
     s1+=299.0;
    } else {
     s0+=503.0;
     s1+=117.0;
    }
   } else {
    if(i66<-0.0019367283675819635){
     s0+=309.0;
    } else {
     s0+=415.0;
     s1+=182.0;
    }
   }
  } else {
   if(i56<0.0018346523866057396){
    if(i33<1.0840110778808594){
     s0+=2268.0;
    } else {
     s0+=2631.0;
     s1+=1249.0;
    }
   } else {
    if(i29<0.9658257961273193){
     s0+=1551.0;
     s1+=211.0;
    } else {
     s0+=6520.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i38<0.0005117687396705151){
   if(i30<0.0006722419057041407){
    if(i35<1.0670123100280762){
     s0+=58.0;
    } else {
     s0+=13.0;
     s1+=74.0;
    }
   } else {
    if(i5<6.973743438720703e-06){
     s0+=301.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=4.0;
    }
   }
  } else {
   if(i13<-0.0004120469093322754){
    if(i48<0.00208307895809412){
     s0+=261.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i53<0.03584134578704834){
     s0+=329.0;
     s1+=2567.0;
    } else {
     s0+=517.0;
     s1+=747.0;
    }
   }
  }
 }
} else {
 if(i30<0.00020094995852559805){
  if(i19<1.0500216484069824){
   if(i79<-0.00015160441398620605){
    s1+=1.0;
   } else {
    s0+=197.0;
   }
  } else {
   if(i14<1.004664659500122){
    s0+=26.0;
   } else {
    s1+=17.0;
   }
  }
 } else {
  if(i2<0.06425774097442627){
   if(i33<1.2392117977142334){
    if(i19<1.040667176246643){
     s0+=18.0;
    } else {
     s1+=501.0;
    }
   } else {
    if(i49<-0.0013030469417572021){
     s0+=62.0;
     s1+=238.0;
    } else {
     s0+=155.0;
     s1+=22.0;
    }
   }
  } else {
   if(i47<-1.0880534318857826e-05){
    if(i15<1.008797287940979){
     s0+=139.0;
     s1+=2473.0;
    } else {
     s0+=1.0;
     s1+=8377.0;
    }
   } else {
    if(i61<0.9999520778656006){
     s1+=66.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i5<3.7610530853271484e-05){
 if(i8<1.0452277660369873){
  if(i19<1.0477051734924316){
   if(i65<0.010657332837581635){
    if(i77<-0.0020852386951446533){
     s0+=22.0;
     s1+=29.0;
    } else {
     s0+=42355.0;
     s1+=35.0;
    }
   } else {
    if(i3<-0.0002751648426055908){
     s0+=11897.0;
     s1+=129.0;
    } else {
     s0+=969.0;
     s1+=146.0;
    }
   }
  } else {
   if(i34<1.1038793325424194){
    if(i9<1.0338647365570068){
     s0+=1640.0;
     s1+=177.0;
    } else {
     s0+=1685.0;
     s1+=1043.0;
    }
   } else {
    if(i17<0.022545944899320602){
     s0+=6330.0;
     s1+=371.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i45<0.039698630571365356){
   if(i2<0.07532477378845215){
    if(i5<1.233816146850586e-05){
     s0+=3386.0;
     s1+=383.0;
    } else {
     s0+=464.0;
     s1+=263.0;
    }
   } else {
    if(i17<0.0017094442155212164){
     s0+=611.0;
     s1+=141.0;
    } else {
     s0+=848.0;
     s1+=1804.0;
    }
   }
  } else {
   if(i8<1.064087152481079){
    if(i70<0.0014366209506988525){
     s1+=8.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i62<0.00020201998995617032){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=980.0;
    }
   }
  }
 }
} else {
 if(i35<1.0795294046401978){
  s0+=298.0;
 } else {
  if(i4<0.05031991004943848){
   if(i33<1.2392117977142334){
    if(i5<3.892183303833008e-05){
     s0+=6.0;
     s1+=10.0;
    } else {
     s1+=630.0;
    }
   } else {
    if(i55<0.012148389592766762){
     s0+=173.0;
     s1+=23.0;
    } else {
     s0+=25.0;
     s1+=333.0;
    }
   }
  } else {
   if(i2<0.13857463002204895){
    if(i39<0.06488406658172607){
     s0+=128.0;
     s1+=1646.0;
    } else {
     s0+=78.0;
     s1+=77.0;
    }
   } else {
    if(i17<0.0029764750506728888){
     s0+=8.0;
     s1+=142.0;
    } else {
     s0+=5.0;
     s1+=8863.0;
    }
   }
  }
 }
}
if(i0<0.0834135115146637){
 if(i6<1.0024782419204712){
  if(i1<0.06659525632858276){
   if(i9<1.0398929119110107){
    if(i52<0.0002569589705672115){
     s0+=48952.0;
     s1+=75.0;
    } else {
     s0+=7959.0;
     s1+=342.0;
    }
   } else {
    if(i32<0.9901838898658752){
     s0+=1970.0;
     s1+=589.0;
    } else {
     s0+=7434.0;
     s1+=460.0;
    }
   }
  } else {
   if(i7<-1.9037492165807635e-05){
    if(i46<0.04308032989501953){
     s0+=7.0;
     s1+=291.0;
    } else {
     s0+=509.0;
     s1+=174.0;
    }
   } else {
    if(i46<0.0429266095161438){
     s0+=66.0;
     s1+=130.0;
    } else {
     s0+=1775.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i42<1.2287709712982178){
   if(i17<0.0010231889318674803){
    s0+=5.0;
   } else {
    if(i78<0.005158021114766598){
     s0+=7.0;
     s1+=671.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i54<-0.02908220887184143){
    if(i73<0.0006008984055370092){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=210.0;
    }
   } else {
    if(i58<0.005385528318583965){
     s0+=207.0;
     s1+=17.0;
    } else {
     s0+=5.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i14<1.000473976135254){
  if(i7<-1.3781947927782312e-05){
   if(i1<0.0925416648387909){
    if(i39<0.041146159172058105){
     s0+=39.0;
     s1+=203.0;
    } else {
     s0+=229.0;
     s1+=23.0;
    }
   } else {
    if(i53<0.0379372239112854){
     s0+=92.0;
     s1+=2136.0;
    } else {
     s0+=221.0;
     s1+=667.0;
    }
   }
  } else {
   if(i11<0.99846351146698){
    s0+=600.0;
   } else {
    if(i57<3.441865192144178e-05){
     s0+=384.0;
     s1+=30.0;
    } else {
     s0+=179.0;
     s1+=351.0;
    }
   }
  }
 } else {
  if(i15<1.0075860023498535){
   if(i7<-2.2722239009453915e-05){
    if(i48<0.0015074795810505748){
     s0+=85.0;
     s1+=575.0;
    } else {
     s0+=27.0;
     s1+=1469.0;
    }
   } else {
    if(i17<0.003324896562844515){
     s0+=122.0;
     s1+=33.0;
    } else {
     s0+=1.0;
     s1+=67.0;
    }
   }
  } else {
   if(i7<-2.4693823434063233e-05){
    if(i1<0.087272047996521){
     s0+=5.0;
     s1+=124.0;
    } else {
     s0+=2.0;
     s1+=8607.0;
    }
   } else {
    if(i29<1.0557209253311157){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i5<3.7610530853271484e-05){
 if(i32<1.0100643634796143){
  if(i4<0.07914415001869202){
   if(i2<0.08031636476516724){
    if(i56<0.0003134743310511112){
     s0+=47095.0;
     s1+=82.0;
    } else {
     s0+=19682.0;
     s1+=1762.0;
    }
   } else {
    if(i5<-5.143880844116211e-05){
     s0+=110.0;
    } else {
     s0+=46.0;
     s1+=435.0;
    }
   }
  } else {
   if(i3<-0.0008554160594940186){
    if(i13<-0.0003389716148376465){
     s0+=217.0;
     s1+=8.0;
    } else {
     s0+=35.0;
     s1+=52.0;
    }
   } else {
    if(i24<0.016820767894387245){
     s0+=209.0;
     s1+=118.0;
    } else {
     s0+=145.0;
     s1+=969.0;
    }
   }
  }
 } else {
  if(i0<0.08711346983909607){
   if(i33<1.1013743877410889){
    if(i48<0.0003634952590800822){
     s0+=378.0;
     s1+=78.0;
    } else {
     s0+=28.0;
     s1+=171.0;
    }
   } else {
    if(i64<1.6629928722977638e-05){
     s0+=1273.0;
     s1+=8.0;
    } else {
     s0+=275.0;
     s1+=63.0;
    }
   }
  } else {
   if(i30<0.0010582534596323967){
    if(i17<0.0013291826471686363){
     s0+=42.0;
     s1+=23.0;
    } else {
     s0+=24.0;
     s1+=848.0;
    }
   } else {
    if(i51<-0.0007881643250584602){
     s0+=57.0;
     s1+=483.0;
    } else {
     s0+=631.0;
     s1+=487.0;
    }
   }
  }
 }
} else {
 if(i1<0.06276670098304749){
  if(i17<0.003525563282892108){
   if(i31<1.0008773803710938){
    if(i10<0.002747833728790283){
     s0+=387.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i78<0.00012687427806667984){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=32.0;
    }
   }
  } else {
   if(i38<0.009009975008666515){
    if(i19<1.0387111902236938){
     s0+=12.0;
    } else {
     s0+=21.0;
     s1+=398.0;
    }
   } else {
    if(i9<1.1249381303787231){
     s0+=80.0;
     s1+=1.0;
    } else {
     s1+=54.0;
    }
   }
  }
 } else {
  if(i71<0.996997594833374){
   s0+=28.0;
  } else {
   if(i6<1.0037964582443237){
    if(i4<0.1467985212802887){
     s0+=172.0;
     s1+=611.0;
    } else {
     s0+=3.0;
     s1+=741.0;
    }
   } else {
    if(i15<1.0089988708496094){
     s0+=32.0;
     s1+=1581.0;
    } else {
     s1+=8233.0;
    }
   }
  }
 }
}
if(i1<0.08244869112968445){
 if(i22<2.1755695343017578e-05){
  if(i16<1.0077202320098877){
   if(i73<0.0007678050315007567){
    if(i19<1.048384666442871){
     s0+=52654.0;
     s1+=107.0;
    } else {
     s0+=7646.0;
     s1+=659.0;
    }
   } else {
    if(i37<0.0009988772217184305){
     s0+=1182.0;
     s1+=700.0;
    } else {
     s0+=5866.0;
     s1+=313.0;
    }
   }
  } else {
   if(i70<0.004476964473724365){
    if(i37<0.0011296006850898266){
     s0+=25.0;
     s1+=288.0;
    } else {
     s0+=448.0;
     s1+=59.0;
    }
   } else {
    if(i48<0.001735328696668148){
     s0+=516.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i50<0.004975378513336182){
   if(i54<-0.0004101395606994629){
    if(i5<2.7835369110107422e-05){
     s0+=140.0;
     s1+=45.0;
    } else {
     s0+=88.0;
     s1+=770.0;
    }
   } else {
    if(i14<0.9993255138397217){
     s0+=170.0;
     s1+=6.0;
    } else {
     s0+=33.0;
     s1+=94.0;
    }
   }
  } else {
   if(i10<0.0001163482666015625){
    if(i15<0.9988924860954285){
     s0+=527.0;
     s1+=1.0;
    } else {
     s0+=47.0;
     s1+=17.0;
    }
   } else {
    s1+=14.0;
   }
  }
 }
} else {
 if(i7<-1.3539904102799483e-05){
  if(i7<-4.460688796825707e-05){
   if(i20<-1.8477439880371094e-06){
    if(i19<1.1255662441253662){
     s0+=203.0;
     s1+=282.0;
    } else {
     s0+=14.0;
     s1+=1624.0;
    }
   } else {
    if(i7<-0.0007050128187984228){
     s0+=11.0;
    } else {
     s0+=10.0;
     s1+=10318.0;
    }
   }
  } else {
   if(i35<1.1820628643035889){
    if(i56<0.00022926239762455225){
     s0+=10.0;
    } else {
     s0+=20.0;
     s1+=915.0;
    }
   } else {
    if(i53<0.01927882432937622){
     s0+=75.0;
     s1+=308.0;
    } else {
     s0+=348.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i39<0.049366116523742676){
   if(i12<0.9917329549789429){
    if(i79<-0.0035833120346069336){
     s1+=1.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i5<-6.145238876342773e-05){
     s0+=16.0;
    } else {
     s0+=34.0;
     s1+=262.0;
    }
   }
  } else {
   if(i64<-1.8200555587100098e-06){
    s1+=22.0;
   } else {
    if(i61<1.0000680685043335){
     s0+=852.0;
     s1+=85.0;
    } else {
     s0+=48.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i11<1.0016309022903442){
 if(i28<1.0078349113464355){
  if(i0<0.08502665162086487){
   if(i49<-0.0015031397342681885){
    if(i27<0.0024205991066992283){
     s0+=1659.0;
     s1+=589.0;
    } else {
     s0+=1814.0;
     s1+=132.0;
    }
   } else {
    if(i9<1.0428826808929443){
     s0+=57925.0;
     s1+=428.0;
    } else {
     s0+=5406.0;
     s1+=626.0;
    }
   }
  } else {
   if(i6<0.9956286549568176){
    if(i36<-0.00010374188423156738){
     s0+=596.0;
     s1+=3.0;
    } else {
     s0+=55.0;
     s1+=84.0;
    }
   } else {
    if(i44<0.05883333086967468){
     s0+=53.0;
     s1+=1376.0;
    } else {
     s0+=726.0;
     s1+=1010.0;
    }
   }
  }
 } else {
  if(i61<0.9998716115951538){
   if(i72<1.2800055628758855e-06){
    if(i20<6.16908073425293e-05){
     s0+=202.0;
     s1+=253.0;
    } else {
     s0+=26.0;
     s1+=1809.0;
    }
   } else {
    s0+=114.0;
   }
  } else {
   if(i62<0.0006248049321584404){
    if(i34<1.075645923614502){
     s1+=78.0;
    } else {
     s0+=1218.0;
     s1+=149.0;
    }
   } else {
    s1+=269.0;
   }
  }
 }
} else {
 if(i5<2.6881694793701172e-05){
  if(i1<0.10928311944007874){
   if(i45<0.03977186232805252){
    if(i8<1.1234147548675537){
     s0+=842.0;
     s1+=72.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i77<-0.020525306463241577){
     s0+=4.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i68<0.07573540508747101){
    if(i49<0.00402987003326416){
     s1+=6.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i47<-1.5957908544805832e-05){
     s1+=172.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i45<0.020511459559202194){
   if(i34<1.1353518962860107){
    if(i33<1.0763556957244873){
     s0+=2.0;
    } else {
     s0+=8.0;
     s1+=1229.0;
    }
   } else {
    if(i20<0.0002110004425048828){
     s0+=377.0;
     s1+=246.0;
    } else {
     s1+=814.0;
    }
   }
  } else {
   if(i15<1.0007423162460327){
    if(i48<0.002354461932554841){
     s0+=30.0;
     s1+=158.0;
    } else {
     s0+=1.0;
     s1+=947.0;
    }
   } else {
    if(i15<1.0020145177841187){
     s0+=1.0;
     s1+=113.0;
    } else {
     s1+=6581.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i2<0.08122581243515015){
  if(i9<1.04337739944458){
   if(i52<0.0002753396984189749){
    if(i0<0.07938027381896973){
     s0+=52093.0;
     s1+=165.0;
    } else {
     s0+=320.0;
     s1+=40.0;
    }
   } else {
    if(i28<0.9803566336631775){
     s0+=5951.0;
     s1+=50.0;
    } else {
     s0+=2310.0;
     s1+=509.0;
    }
   }
  } else {
   if(i42<1.1037919521331787){
    if(i7<-1.842150595621206e-05){
     s0+=191.0;
     s1+=634.0;
    } else {
     s0+=2289.0;
     s1+=430.0;
    }
   } else {
    if(i24<0.02519458904862404){
     s0+=4808.0;
     s1+=144.0;
    } else {
     s0+=955.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i44<0.060662150382995605){
   if(i33<1.0762357711791992){
    s0+=76.0;
   } else {
    if(i13<-0.0004315376281738281){
     s0+=12.0;
    } else {
     s0+=62.0;
     s1+=1943.0;
    }
   }
  } else {
   if(i7<-1.381049514748156e-05){
    if(i24<0.04227672517299652){
     s0+=432.0;
     s1+=482.0;
    } else {
     s0+=30.0;
     s1+=726.0;
    }
   } else {
    if(i50<-0.03377866744995117){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=897.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i19<1.0419573783874512){
  if(i17<0.005010402295738459){
   s0+=180.0;
  } else {
   s1+=1.0;
  }
 } else {
  if(i17<0.002467944985255599){
   if(i10<0.001435399055480957){
    if(i7<-5.255727228359319e-05){
     s0+=7.0;
     s1+=37.0;
    } else {
     s0+=163.0;
     s1+=12.0;
    }
   } else {
    s1+=193.0;
   }
  } else {
   if(i33<1.5682398080825806){
    if(i6<1.0028668642044067){
     s0+=53.0;
     s1+=686.0;
    } else {
     s0+=21.0;
     s1+=8000.0;
    }
   } else {
    if(i48<0.0023641809821128845){
     s0+=110.0;
     s1+=203.0;
    } else {
     s0+=49.0;
     s1+=2593.0;
    }
   }
  }
 }
}
if(i7<-8.167419582605362e-05){
 if(i8<1.0326414108276367){
  if(i9<1.0392191410064697){
   if(i12<1.0098800659179688){
    if(i14<1.0046815872192383){
     s0+=519.0;
     s1+=1.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i42<1.5946319103240967){
     s0+=2.0;
     s1+=29.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i5<2.7358531951904297e-05){
    if(i1<0.007006287574768066){
     s0+=66.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i10<-0.00310322642326355){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i20<-0.00038743019104003906){
   if(i62<0.0015988398808985949){
    if(i0<0.14163103699684143){
     s0+=129.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i0<0.022618919610977173){
     s0+=6.0;
    } else {
     s1+=115.0;
    }
   }
  } else {
   if(i42<1.0677311420440674){
    s0+=9.0;
   } else {
    if(i1<0.05150720477104187){
     s0+=52.0;
     s1+=134.0;
    } else {
     s0+=60.0;
     s1+=10199.0;
    }
   }
  }
 }
} else {
 if(i8<1.0410068035125732){
  if(i6<1.0024782419204712){
   if(i30<0.0003069911035709083){
    if(i21<1.0103824138641357){
     s0+=52528.0;
     s1+=234.0;
    } else {
     s0+=36.0;
     s1+=26.0;
    }
   } else {
    if(i14<0.9942127466201782){
     s0+=7188.0;
     s1+=112.0;
    } else {
     s0+=3429.0;
     s1+=1192.0;
    }
   }
  } else {
   if(i11<1.0019948482513428){
    if(i34<1.125915288925171){
     s0+=8.0;
     s1+=93.0;
    } else {
     s0+=95.0;
     s1+=6.0;
    }
   } else {
    if(i50<0.0007424652576446533){
     s1+=151.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i10<0.0006375312805175781){
   if(i65<0.019553886726498604){
    if(i0<0.09172892570495605){
     s0+=2731.0;
     s1+=222.0;
    } else {
     s0+=173.0;
     s1+=177.0;
    }
   } else {
    if(i6<0.9981983304023743){
     s0+=2262.0;
     s1+=473.0;
    } else {
     s0+=1758.0;
     s1+=2200.0;
    }
   }
  } else {
   if(i47<-1.2998728379898239e-05){
    if(i27<0.00016351061640307307){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=761.0;
    }
   } else {
    if(i56<0.001577326562255621){
     s0+=97.0;
     s1+=463.0;
    } else {
     s0+=222.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i8<1.0452277660369873){
 if(i5<4.184246063232422e-05){
  if(i4<0.07077249884605408){
   if(i1<0.07886818051338196){
    if(i19<1.0451585054397583){
     s0+=53797.0;
     s1+=212.0;
    } else {
     s0+=10767.0;
     s1+=1019.0;
    }
   } else {
    if(i76<3.990543518739287e-06){
     s0+=25.0;
     s1+=289.0;
    } else {
     s0+=106.0;
     s1+=13.0;
    }
   }
  } else {
   if(i44<0.047059059143066406){
    if(i10<-0.0020415186882019043){
     s0+=19.0;
     s1+=20.0;
    } else {
     s0+=13.0;
     s1+=260.0;
    }
   } else {
    if(i56<0.00030238175531849265){
     s0+=169.0;
    } else {
     s0+=249.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i11<1.0004181861877441){
   s0+=195.0;
  } else {
   if(i48<0.0008549399208277464){
    if(i12<1.0058149099349976){
     s0+=58.0;
     s1+=14.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i8<1.0449998378753662){
     s0+=7.0;
     s1+=701.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i2<0.09212127327919006){
  if(i12<1.0034488439559937){
   if(i42<1.1037919521331787){
    if(i36<5.614757537841797e-05){
     s0+=978.0;
     s1+=292.0;
    } else {
     s0+=134.0;
     s1+=491.0;
    }
   } else {
    if(i45<0.05534786731004715){
     s0+=3250.0;
     s1+=313.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i43<0.0028176368214190006){
    if(i3<0.00041610002517700195){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=578.0;
    }
   } else {
    if(i5<6.526708602905273e-05){
     s0+=178.0;
     s1+=67.0;
    } else {
     s0+=41.0;
     s1+=279.0;
    }
   }
  }
 } else {
  if(i38<0.0005813481984660029){
   if(i17<0.0033888001926243305){
    if(i31<1.000394582748413){
     s0+=289.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i38<0.00045452307676896453){
     s0+=3.0;
    } else {
     s1+=74.0;
    }
   }
  } else {
   if(i36<-0.000271528959274292){
    if(i47<-1.111404890252743e-05){
     s1+=24.0;
    } else {
     s0+=175.0;
    }
   } else {
    if(i7<-1.3524296264222357e-05){
     s0+=337.0;
     s1+=12036.0;
    } else {
     s0+=293.0;
     s1+=186.0;
    }
   }
  }
 }
}
if(i22<1.627206802368164e-05){
 if(i0<0.08558851480484009){
  if(i58<0.0015180862974375486){
   if(i30<0.0002821004600264132){
    if(i21<1.009287714958191){
     s0+=51152.0;
     s1+=139.0;
    } else {
     s0+=58.0;
     s1+=93.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=2816.0;
     s1+=666.0;
    } else {
     s0+=6988.0;
     s1+=89.0;
    }
   }
  } else {
   if(i40<0.001737307058647275){
    if(i52<0.00045470433542504907){
     s0+=1804.0;
     s1+=427.0;
    } else {
     s0+=122.0;
     s1+=380.0;
    }
   } else {
    if(i69<0.0005312277935445309){
     s1+=7.0;
    } else {
     s0+=4368.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i13<-0.00040593743324279785){
   if(i43<0.008656437508761883){
    if(i38<0.001722568180412054){
     s0+=588.0;
    } else {
     s0+=39.0;
     s1+=1.0;
    }
   } else {
    if(i31<0.9991846084594727){
     s0+=16.0;
    } else {
     s0+=5.0;
     s1+=12.0;
    }
   }
  } else {
   if(i59<-0.019084356725215912){
    if(i57<3.8632366340607405e-05){
     s0+=482.0;
     s1+=286.0;
    } else {
     s0+=194.0;
     s1+=830.0;
    }
   } else {
    if(i34<1.0589735507965088){
     s0+=46.0;
     s1+=2.0;
    } else {
     s0+=212.0;
     s1+=2888.0;
    }
   }
  }
 }
} else {
 if(i15<1.003890037536621){
  if(i24<0.026654062792658806){
   if(i60<-0.0009459257125854492){
    if(i11<1.0018953084945679){
     s0+=101.0;
     s1+=59.0;
    } else {
     s0+=62.0;
     s1+=221.0;
    }
   } else {
    if(i42<1.063619613647461){
     s0+=456.0;
    } else {
     s0+=820.0;
     s1+=218.0;
    }
   }
  } else {
   if(i9<1.065577745437622){
    if(i1<0.09613490104675293){
     s0+=401.0;
     s1+=60.0;
    } else {
     s0+=7.0;
     s1+=100.0;
    }
   } else {
    if(i7<-4.931973307975568e-05){
     s0+=69.0;
     s1+=1512.0;
    } else {
     s0+=57.0;
     s1+=165.0;
    }
   }
  }
 } else {
  if(i27<0.0001796021533664316){
   if(i7<-4.229134356137365e-05){
    s1+=39.0;
   } else {
    if(i62<0.0005787968984805048){
     s0+=76.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i42<1.0624027252197266){
    s0+=18.0;
   } else {
    if(i20<1.1146068572998047e-05){
     s0+=92.0;
     s1+=226.0;
    } else {
     s0+=40.0;
     s1+=8535.0;
    }
   }
  }
 }
}
if(i2<0.07751694321632385){
 if(i6<1.0024913549423218){
  if(i56<0.0003121616318821907){
   if(i25<1.0074647665023804){
    if(i21<1.010046124458313){
     s0+=47152.0;
     s1+=52.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i40<0.0013835355639457703){
     s1+=60.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i20<-0.0002486109733581543){
    if(i3<0.0002060532569885254){
     s0+=11121.0;
     s1+=125.0;
    } else {
     s0+=133.0;
     s1+=64.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=4558.0;
     s1+=1478.0;
    } else {
     s0+=6084.0;
     s1+=368.0;
    }
   }
  }
 } else {
  if(i35<1.25206458568573){
   if(i6<1.0025405883789062){
    if(i69<0.01785461977124214){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i63<0.00361478328704834){
     s0+=2.0;
     s1+=856.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i58<0.0019875334110111){
    if(i42<1.1958975791931152){
     s1+=6.0;
    } else {
     s0+=200.0;
     s1+=8.0;
    }
   } else {
    if(i72<-4.343351974966936e-06){
     s0+=32.0;
     s1+=273.0;
    } else {
     s0+=18.0;
    }
   }
  }
 }
} else {
 if(i6<1.001508116722107){
  if(i44<0.057342320680618286){
   if(i6<0.9955588579177856){
    if(i30<0.006827927194535732){
     s0+=92.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i53<0.02504044771194458){
     s0+=30.0;
     s1+=1393.0;
    } else {
     s0+=59.0;
     s1+=261.0;
    }
   }
  } else {
   if(i51<-0.00014324614312499762){
    if(i43<0.0039328401908278465){
     s0+=571.0;
     s1+=345.0;
    } else {
     s0+=117.0;
     s1+=746.0;
    }
   } else {
    if(i42<1.5506668090820312){
     s0+=701.0;
     s1+=134.0;
    } else {
     s0+=7.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i55<0.005383692681789398){
   if(i62<0.0004628858878277242){
    if(i71<1.0006577968597412){
     s0+=74.0;
     s1+=1285.0;
    } else {
     s0+=79.0;
     s1+=25.0;
    }
   } else {
    if(i0<0.12403479218482971){
     s0+=66.0;
     s1+=398.0;
    } else {
     s0+=8.0;
     s1+=3551.0;
    }
   }
  } else {
   if(i71<1.0024058818817139){
    if(i2<0.0848461389541626){
     s0+=5.0;
     s1+=94.0;
    } else {
     s0+=2.0;
     s1+=5351.0;
    }
   } else {
    if(i2<0.08125191926956177){
     s0+=4.0;
    } else {
     s1+=158.0;
    }
   }
  }
 }
}
if(i27<0.00035107252188026905){
 if(i1<0.07907044887542725){
  if(i19<1.0486280918121338){
   if(i77<-0.001335740089416504){
    if(i19<1.0451428890228271){
     s0+=2319.0;
     s1+=71.0;
    } else {
     s0+=39.0;
     s1+=24.0;
    }
   } else {
    if(i3<0.0006679892539978027){
     s0+=49956.0;
     s1+=84.0;
    } else {
     s0+=51.0;
     s1+=8.0;
    }
   }
  } else {
   if(i6<1.0024690628051758){
    if(i33<1.1013743877410889){
     s0+=1668.0;
     s1+=400.0;
    } else {
     s0+=4371.0;
     s1+=65.0;
    }
   } else {
    if(i35<1.2388319969177246){
     s0+=2.0;
     s1+=229.0;
    } else {
     s0+=88.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<-3.769993782043457e-05){
   if(i70<-0.0026734471321105957){
    s1+=2.0;
   } else {
    if(i26<0.9982204437255859){
     s0+=41.0;
     s1+=2.0;
    } else {
     s0+=104.0;
    }
   }
  } else {
   if(i16<1.0043659210205078){
    if(i24<0.01117764599621296){
     s0+=71.0;
     s1+=9.0;
    } else {
     s0+=15.0;
     s1+=194.0;
    }
   } else {
    if(i35<1.0598008632659912){
     s0+=4.0;
    } else {
     s0+=7.0;
     s1+=858.0;
    }
   }
  }
 }
} else {
 if(i3<0.0002154707908630371){
  if(i51<-5.6830132962204516e-05){
   if(i0<0.08583629131317139){
    if(i24<0.01684083417057991){
     s0+=1727.0;
     s1+=143.0;
    } else {
     s0+=1389.0;
     s1+=516.0;
    }
   } else {
    if(i39<0.05575871467590332){
     s0+=119.0;
     s1+=1197.0;
    } else {
     s0+=557.0;
     s1+=543.0;
    }
   }
  } else {
   if(i56<0.0023442567326128483){
    if(i33<1.0840110778808594){
     s0+=1340.0;
    } else {
     s0+=1069.0;
     s1+=472.0;
    }
   } else {
    if(i4<0.13813656568527222){
     s0+=5272.0;
     s1+=89.0;
    } else {
     s0+=69.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i20<9.959936141967773e-05){
   if(i24<0.023170366883277893){
    if(i50<0.009289354085922241){
     s0+=182.0;
     s1+=355.0;
    } else {
     s0+=434.0;
     s1+=121.0;
    }
   } else {
    if(i2<0.11449724435806274){
     s0+=185.0;
     s1+=531.0;
    } else {
     s0+=40.0;
     s1+=1741.0;
    }
   }
  } else {
   if(i3<0.0008937716484069824){
    if(i7<-4.3391417420934886e-05){
     s0+=4.0;
     s1+=850.0;
    } else {
     s0+=80.0;
     s1+=74.0;
    }
   } else {
    s1+=8423.0;
   }
  }
 }
}
if(i0<0.0835462212562561){
 if(i12<1.0027661323547363){
  if(i30<0.0003149877011310309){
   if(i31<1.0003976821899414){
    if(i79<-0.0009921789169311523){
     s0+=469.0;
     s1+=68.0;
    } else {
     s0+=49995.0;
     s1+=112.0;
    }
   } else {
    if(i8<1.0485590696334839){
     s0+=3381.0;
     s1+=104.0;
    } else {
     s0+=49.0;
     s1+=64.0;
    }
   }
  } else {
   if(i5<-3.1054019927978516e-05){
    if(i40<0.0018924323376268148){
     s0+=1418.0;
     s1+=222.0;
    } else {
     s0+=6591.0;
     s1+=55.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=2258.0;
     s1+=1053.0;
    } else {
     s0+=3592.0;
     s1+=380.0;
    }
   }
  }
 } else {
  if(i38<0.0018016749527305365){
   if(i40<0.00031912661506794393){
    s0+=109.0;
   } else {
    if(i42<1.2148544788360596){
     s1+=531.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i5<6.23464584350586e-05){
    if(i63<-0.003222227096557617){
     s0+=44.0;
     s1+=72.0;
    } else {
     s0+=1041.0;
     s1+=36.0;
    }
   } else {
    if(i49<0.0007401704788208008){
     s0+=29.0;
     s1+=322.0;
    } else {
     s0+=24.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690323956310749){
  if(i59<-0.0193558968603611){
   if(i37<0.005340319126844406){
    if(i20<0.00026279687881469727){
     s0+=894.0;
     s1+=76.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   } else {
    if(i38<0.0026118247769773006){
     s1+=130.0;
    } else {
     s0+=108.0;
     s1+=83.0;
    }
   }
  } else {
   if(i34<1.0670123100280762){
    if(i36<9.369850158691406e-05){
     s0+=266.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=10.0;
    }
   } else {
    if(i70<0.005857616662979126){
     s0+=198.0;
     s1+=1870.0;
    } else {
     s0+=241.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i11<0.9981412887573242){
   if(i36<-0.00010961294174194336){
    s0+=99.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i15<0.992016077041626){
    if(i58<0.0016758701531216502){
     s0+=156.0;
     s1+=315.0;
    } else {
     s0+=8.0;
     s1+=705.0;
    }
   } else {
    if(i1<0.1268107295036316){
     s0+=63.0;
     s1+=1294.0;
    } else {
     s0+=9.0;
     s1+=9434.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i46<0.06009453535079956){
  if(i16<1.0080969333648682){
   if(i58<0.0017671771347522736){
    if(i2<0.07707598805427551){
     s0+=61836.0;
     s1+=920.0;
    } else {
     s0+=84.0;
     s1+=429.0;
    }
   } else {
    if(i45<0.04728122055530548){
     s0+=5204.0;
     s1+=965.0;
    } else {
     s0+=19.0;
     s1+=149.0;
    }
   }
  } else {
   if(i45<0.019891440868377686){
    if(i35<1.1063789129257202){
     s0+=50.0;
     s1+=334.0;
    } else {
     s0+=640.0;
     s1+=73.0;
    }
   } else {
    if(i4<0.028279095888137817){
     s0+=40.0;
     s1+=3.0;
    } else {
     s0+=31.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i6<0.9965264797210693){
   if(i40<0.010416017845273018){
    if(i67<0.9980954527854919){
     s0+=569.0;
    } else {
     s0+=220.0;
     s1+=45.0;
    }
   } else {
    if(i1<0.10154074430465698){
     s0+=67.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=83.0;
    }
   }
  } else {
   if(i0<0.11114823818206787){
    if(i59<-0.01732328161597252){
     s0+=503.0;
     s1+=29.0;
    } else {
     s0+=674.0;
     s1+=269.0;
    }
   } else {
    if(i17<0.0016849820967763662){
     s0+=291.0;
     s1+=96.0;
    } else {
     s0+=195.0;
     s1+=1706.0;
    }
   }
  }
 }
} else {
 if(i19<1.0419573783874512){
  if(i1<0.08400857448577881){
   s0+=173.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i6<1.0041425228118896){
   if(i0<0.10112336277961731){
    if(i59<-0.011541126295924187){
     s0+=122.0;
     s1+=16.0;
    } else {
     s0+=203.0;
     s1+=450.0;
    }
   } else {
    if(i0<0.13140657544136047){
     s0+=55.0;
     s1+=236.0;
    } else {
     s0+=24.0;
     s1+=1233.0;
    }
   }
  } else {
   if(i20<-0.0004550814628601074){
    s0+=8.0;
   } else {
    if(i33<1.613681674003601){
     s0+=7.0;
     s1+=8310.0;
    } else {
     s0+=38.0;
     s1+=1574.0;
    }
   }
  }
 }
}
if(i6<1.0023632049560547){
 if(i23<1.040531039237976){
  if(i19<1.0485899448394775){
   if(i58<0.0014724319335073233){
    if(i56<0.00026075198547914624){
     s0+=43135.0;
     s1+=15.0;
    } else {
     s0+=10449.0;
     s1+=189.0;
    }
   } else {
    if(i6<1.0004308223724365){
     s0+=2053.0;
     s1+=150.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  } else {
   if(i3<0.0001913905143737793){
    if(i6<0.9966784715652466){
     s0+=4175.0;
     s1+=121.0;
    } else {
     s0+=6171.0;
     s1+=1508.0;
    }
   } else {
    if(i4<0.05739220976829529){
     s0+=572.0;
     s1+=376.0;
    } else {
     s0+=29.0;
     s1+=383.0;
    }
   }
  }
 } else {
  if(i1<0.10357791185379028){
   if(i6<0.9982973337173462){
    if(i73<0.0062414128333330154){
     s0+=1359.0;
     s1+=49.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   } else {
    if(i66<-0.004304696340113878){
     s0+=790.0;
     s1+=38.0;
    } else {
     s0+=907.0;
     s1+=493.0;
    }
   }
  } else {
   if(i11<0.99855637550354){
    if(i57<0.0001601684489287436){
     s0+=239.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i7<-1.301903830608353e-05){
     s0+=295.0;
     s1+=2197.0;
    } else {
     s0+=291.0;
     s1+=151.0;
    }
   }
  }
 }
} else {
 if(i7<-4.3679225200321525e-05){
  if(i47<-1.077459819498472e-05){
   if(i0<0.052453845739364624){
    if(i33<1.5682398080825806){
     s0+=13.0;
     s1+=295.0;
    } else {
     s0+=48.0;
     s1+=32.0;
    }
   } else {
    if(i10<3.5643577575683594e-05){
     s0+=92.0;
     s1+=939.0;
    } else {
     s0+=3.0;
     s1+=10052.0;
    }
   }
  } else {
   if(i16<1.0164074897766113){
    s0+=35.0;
   } else {
    s1+=56.0;
   }
  }
 } else {
  if(i48<0.0011400864459574223){
   if(i17<0.0036194403655827045){
    s0+=275.0;
   } else {
    s1+=7.0;
   }
  } else {
   s1+=216.0;
  }
 }
}
if(i2<0.08162686228752136){
 if(i11<1.001636028289795){
  if(i27<0.0002956066164188087){
   if(i16<1.00761079788208){
    if(i52<0.0002783343952614814){
     s0+=53200.0;
     s1+=263.0;
    } else {
     s0+=2622.0;
     s1+=223.0;
    }
   } else {
    if(i38<0.0007330843945965171){
     s0+=21.0;
     s1+=129.0;
    } else {
     s0+=277.0;
     s1+=8.0;
    }
   }
  } else {
   if(i1<0.06633681058883667){
    if(i63<-3.5196542739868164e-05){
     s0+=4106.0;
     s1+=779.0;
    } else {
     s0+=6991.0;
     s1+=200.0;
    }
   } else {
    if(i34<1.1475300788879395){
     s0+=506.0;
     s1+=491.0;
    } else {
     s0+=576.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i14<1.0033619403839111){
   if(i63<-0.0030285120010375977){
    if(i70<0.004547625780105591){
     s0+=42.0;
     s1+=159.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i38<0.006781460251659155){
     s0+=346.0;
     s1+=178.0;
    } else {
     s0+=556.0;
     s1+=9.0;
    }
   }
  } else {
   if(i37<0.002507573226466775){
    if(i19<1.0387842655181885){
     s0+=3.0;
    } else {
     s1+=695.0;
    }
   } else {
    if(i50<-0.005246490240097046){
     s0+=6.0;
     s1+=242.0;
    } else {
     s0+=57.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005291998386383057){
  if(i31<0.9988265037536621){
   if(i69<0.5517469048500061){
    if(i72<-2.4194796424126253e-06){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=404.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i53<0.031333327293395996){
    if(i26<1.032172679901123){
     s0+=71.0;
     s1+=2479.0;
    } else {
     s0+=222.0;
     s1+=570.0;
    }
   } else {
    if(i46<0.1571609079837799){
     s0+=711.0;
     s1+=576.0;
    } else {
     s0+=134.0;
     s1+=566.0;
    }
   }
  }
 } else {
  if(i17<0.0018941687885671854){
   if(i57<-3.0564868211513385e-05){
    s1+=148.0;
   } else {
    if(i27<0.0005530494963750243){
     s0+=3.0;
     s1+=25.0;
    } else {
     s0+=64.0;
    }
   }
  } else {
   if(i30<0.00017802309594117105){
    s0+=3.0;
   } else {
    if(i22<-1.6003847122192383e-05){
     s0+=6.0;
    } else {
     s0+=20.0;
     s1+=9429.0;
    }
   }
  }
 }
}
if(i25<1.0066382884979248){
 if(i3<0.0005737841129302979){
  if(i19<1.0572319030761719){
   if(i1<0.07893311977386475){
    if(i73<0.0007819363963790238){
     s0+=55483.0;
     s1+=264.0;
    } else {
     s0+=2798.0;
     s1+=286.0;
    }
   } else {
    if(i13<-0.0001049041748046875){
     s0+=267.0;
     s1+=25.0;
    } else {
     s0+=110.0;
     s1+=115.0;
    }
   }
  } else {
   if(i23<1.0307881832122803){
    if(i33<1.1013743877410889){
     s0+=931.0;
     s1+=655.0;
    } else {
     s0+=6123.0;
     s1+=673.0;
    }
   } else {
    if(i0<0.10505789518356323){
     s0+=2666.0;
     s1+=526.0;
    } else {
     s0+=494.0;
     s1+=1235.0;
    }
   }
  }
 } else {
  if(i40<0.00046766275772824883){
   s0+=109.0;
  } else {
   if(i1<0.11581021547317505){
    if(i70<0.00034692883491516113){
     s0+=118.0;
     s1+=698.0;
    } else {
     s0+=73.0;
     s1+=31.0;
    }
   } else {
    if(i53<0.04592430591583252){
     s0+=3.0;
     s1+=1277.0;
    } else {
     s0+=28.0;
     s1+=190.0;
    }
   }
  }
 }
} else {
 if(i14<1.0041444301605225){
  if(i0<0.08710533380508423){
   if(i43<0.001085550058633089){
    if(i72<-2.618153985167737e-06){
     s0+=44.0;
     s1+=180.0;
    } else {
     s0+=213.0;
     s1+=58.0;
    }
   } else {
    if(i62<0.000650276429951191){
     s0+=1197.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   }
  } else {
   if(i43<0.00393908703699708){
    if(i19<1.117687702178955){
     s0+=26.0;
     s1+=667.0;
    } else {
     s0+=360.0;
     s1+=83.0;
    }
   } else {
    if(i48<0.0009592960705049336){
     s0+=60.0;
     s1+=62.0;
    } else {
     s0+=32.0;
     s1+=1338.0;
    }
   }
  }
 } else {
  if(i15<1.008596420288086){
   if(i45<0.0157301165163517){
    if(i72<-4.154011548962444e-06){
     s0+=31.0;
     s1+=174.0;
    } else {
     s0+=123.0;
     s1+=17.0;
    }
   } else {
    s1+=317.0;
   }
  } else {
   if(i3<0.0005462765693664551){
    if(i61<0.9999210238456726){
     s1+=202.0;
    } else {
     s0+=55.0;
     s1+=10.0;
    }
   } else {
    if(i7<-4.3521460611373186e-05){
     s1+=7725.0;
    } else {
     s0+=21.0;
     s1+=16.0;
    }
   }
  }
 }
}
if(i6<1.0024747848510742){
 if(i2<0.08135956525802612){
  if(i8<1.0401114225387573){
   if(i70<-0.0020640194416046143){
    if(i2<0.057425737380981445){
     s0+=4905.0;
     s1+=550.0;
    } else {
     s0+=109.0;
     s1+=192.0;
    }
   } else {
    if(i24<0.01962396502494812){
     s0+=53737.0;
     s1+=204.0;
    } else {
     s0+=4014.0;
     s1+=245.0;
    }
   }
  } else {
   if(i24<0.014220732264220715){
    if(i3<0.00021976232528686523){
     s0+=3661.0;
     s1+=122.0;
    } else {
     s0+=347.0;
     s1+=114.0;
    }
   } else {
    if(i40<0.0017681571189314127){
     s0+=444.0;
     s1+=631.0;
    } else {
     s0+=1811.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i22<-1.6361474990844727e-05){
   if(i36<-0.00010260939598083496){
    s0+=365.0;
   } else {
    if(i2<0.14466288685798645){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i7<-1.229697409144137e-05){
    if(i39<0.054164618253707886){
     s0+=90.0;
     s1+=2314.0;
    } else {
     s0+=432.0;
     s1+=980.0;
    }
   } else {
    if(i46<0.06680354475975037){
     s0+=19.0;
     s1+=155.0;
    } else {
     s0+=583.0;
     s1+=136.0;
    }
   }
  }
 }
} else {
 if(i5<6.371736526489258e-05){
  if(i27<0.00020123543799854815){
   if(i42<1.155869722366333){
    if(i64<1.6032233816076769e-06){
     s0+=4.0;
     s1+=5.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i30<0.0005782353109680116){
     s0+=100.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i31<1.0002073049545288){
    s1+=501.0;
   } else {
    if(i48<0.0010448535904288292){
     s0+=86.0;
     s1+=26.0;
    } else {
     s0+=66.0;
     s1+=760.0;
    }
   }
  }
 } else {
  if(i6<1.0045642852783203){
   if(i12<0.9962513446807861){
    s0+=10.0;
   } else {
    if(i2<0.12084516882896423){
     s0+=60.0;
     s1+=184.0;
    } else {
     s0+=2.0;
     s1+=531.0;
    }
   }
  } else {
   if(i1<0.0036190152168273926){
    if(i68<0.18327194452285767){
     s1+=13.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i79<-0.0018370747566223145){
     s0+=18.0;
     s1+=904.0;
    } else {
     s0+=10.0;
     s1+=8471.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i69<0.02724400721490383){
  if(i19<1.0494996309280396){
   if(i18<1.009296178817749){
    if(i73<0.000841564848087728){
     s0+=50543.0;
     s1+=81.0;
    } else {
     s0+=547.0;
     s1+=136.0;
    }
   } else {
    if(i56<0.0007644525030627847){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i17<0.004518337547779083){
    if(i2<0.0747620165348053){
     s0+=6180.0;
     s1+=403.0;
    } else {
     s0+=395.0;
     s1+=445.0;
    }
   } else {
    if(i40<0.002989719854667783){
     s0+=93.0;
     s1+=393.0;
    } else {
     s0+=311.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i6<0.9973050355911255){
   if(i0<0.08580896258354187){
    if(i0<0.055686235427856445){
     s0+=5835.0;
     s1+=77.0;
    } else {
     s0+=1241.0;
     s1+=99.0;
    }
   } else {
    if(i11<0.9985024333000183){
     s0+=390.0;
     s1+=15.0;
    } else {
     s0+=65.0;
     s1+=258.0;
    }
   }
  } else {
   if(i19<1.0447213649749756){
    if(i17<0.0033750273287296295){
     s0+=1040.0;
     s1+=6.0;
    } else {
     s0+=99.0;
     s1+=36.0;
    }
   } else {
    if(i45<0.025473933666944504){
     s0+=3373.0;
     s1+=2197.0;
    } else {
     s0+=196.0;
     s1+=1297.0;
    }
   }
  }
 }
} else {
 if(i34<1.0533727407455444){
  s0+=147.0;
 } else {
  if(i17<0.002189040184020996){
   if(i47<-1.4819078387517948e-05){
    if(i7<-6.555067375302315e-05){
     s1+=163.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i79<-0.0015028417110443115){
     s1+=6.0;
    } else {
     s0+=148.0;
    }
   }
  } else {
   if(i1<0.04550674557685852){
    if(i54<-0.0019288957118988037){
     s0+=53.0;
     s1+=237.0;
    } else {
     s0+=56.0;
     s1+=1.0;
    }
   } else {
    if(i28<1.0004189014434814){
     s0+=151.0;
     s1+=1814.0;
    } else {
     s0+=29.0;
     s1+=9600.0;
    }
   }
  }
 }
}
if(i5<3.641843795776367e-05){
 if(i26<1.0114855766296387){
  if(i9<1.0451585054397583){
   if(i4<0.07109633088111877){
    if(i19<1.042891263961792){
     s0+=51453.0;
     s1+=159.0;
    } else {
     s0+=9838.0;
     s1+=680.0;
    }
   } else {
    if(i23<1.019634485244751){
     s0+=2.0;
     s1+=65.0;
    } else {
     s0+=325.0;
     s1+=84.0;
    }
   }
  } else {
   if(i0<0.07556551694869995){
    if(i11<0.9991185665130615){
     s0+=2068.0;
     s1+=69.0;
    } else {
     s0+=3396.0;
     s1+=930.0;
    }
   } else {
    if(i31<0.9990403652191162){
     s0+=203.0;
     s1+=3.0;
    } else {
     s0+=159.0;
     s1+=1416.0;
    }
   }
  }
 } else {
  if(i0<0.09949645400047302){
   if(i0<0.07058781385421753){
    if(i56<0.0008308797841891646){
     s0+=318.0;
     s1+=36.0;
    } else {
     s0+=1006.0;
     s1+=12.0;
    }
   } else {
    if(i40<0.0014980912674218416){
     s0+=215.0;
     s1+=294.0;
    } else {
     s0+=690.0;
     s1+=22.0;
    }
   }
  } else {
   if(i59<-0.01935247704386711){
    if(i24<0.039243921637535095){
     s0+=566.0;
     s1+=128.0;
    } else {
     s0+=152.0;
     s1+=599.0;
    }
   } else {
    if(i11<0.9977079033851624){
     s0+=8.0;
    } else {
     s0+=63.0;
     s1+=1024.0;
    }
   }
  }
 }
} else {
 if(i6<0.9997913241386414){
  s0+=330.0;
 } else {
  if(i15<1.0100232362747192){
   if(i3<0.0009374618530273438){
    if(i47<-1.5864296074141748e-05){
     s0+=162.0;
     s1+=883.0;
    } else {
     s0+=202.0;
     s1+=215.0;
    }
   } else {
    if(i33<1.613681674003601){
     s0+=29.0;
     s1+=1886.0;
    } else {
     s0+=64.0;
     s1+=241.0;
    }
   }
  } else {
   s1+=8257.0;
  }
 }
}
if(i2<0.07800492644309998){
 if(i50<-0.006169945001602173){
  if(i1<0.035642027854919434){
   if(i5<2.8789043426513672e-05){
    if(i1<0.006260573863983154){
     s0+=1928.0;
     s1+=61.0;
    } else {
     s0+=1238.0;
     s1+=258.0;
    }
   } else {
    if(i33<1.5682398080825806){
     s0+=14.0;
     s1+=143.0;
    } else {
     s0+=45.0;
     s1+=24.0;
    }
   }
  } else {
   if(i12<1.0008502006530762){
    if(i44<0.012182056903839111){
     s0+=32.0;
     s1+=115.0;
    } else {
     s0+=441.0;
     s1+=133.0;
    }
   } else {
    if(i77<0.0022521615028381348){
     s0+=14.0;
     s1+=584.0;
    } else {
     s0+=37.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i3<0.0006679892539978027){
   if(i19<1.0486011505126953){
    if(i52<0.00027220460469834507){
     s0+=50054.0;
     s1+=65.0;
    } else {
     s0+=5034.0;
     s1+=168.0;
    }
   } else {
    if(i40<0.001520917983725667){
     s0+=3930.0;
     s1+=1053.0;
    } else {
     s0+=6345.0;
     s1+=114.0;
    }
   }
  } else {
   if(i34<1.1353518962860107){
    if(i61<0.9989579319953918){
     s0+=24.0;
    } else {
     s0+=2.0;
     s1+=438.0;
    }
   } else {
    if(i72<-7.947390258777887e-06){
     s0+=30.0;
     s1+=38.0;
    } else {
     s0+=125.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i51<-0.00012407597387209535){
  if(i14<1.0023059844970703){
   if(i43<0.003722722176462412){
    if(i11<0.9980583190917969){
     s0+=222.0;
    } else {
     s0+=479.0;
     s1+=1213.0;
    }
   } else {
    if(i24<0.021944643929600716){
     s0+=139.0;
     s1+=173.0;
    } else {
     s0+=45.0;
     s1+=2066.0;
    }
   }
  } else {
   if(i2<0.10871180891990662){
    if(i39<0.050807446241378784){
     s0+=29.0;
     s1+=660.0;
    } else {
     s0+=39.0;
     s1+=49.0;
    }
   } else {
    if(i17<0.0002921752166002989){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=19.0;
     s1+=8348.0;
    }
   }
  }
 } else {
  if(i5<6.079673767089844e-06){
   if(i49<0.0031634867191314697){
    if(i76<5.340634743333794e-06){
     s0+=107.0;
     s1+=236.0;
    } else {
     s0+=149.0;
     s1+=3.0;
    }
   } else {
    if(i37<0.010333970189094543){
     s0+=421.0;
     s1+=27.0;
    } else {
     s0+=28.0;
     s1+=15.0;
    }
   }
  } else {
   if(i73<0.0010079750791192055){
    if(i43<0.0023503967095166445){
     s0+=17.0;
     s1+=217.0;
    } else {
     s0+=167.0;
     s1+=106.0;
    }
   } else {
    if(i71<0.9968653917312622){
     s0+=2.0;
    } else {
     s0+=19.0;
     s1+=748.0;
    }
   }
  }
 }
}
if(i2<0.07910805940628052){
 if(i5<4.190206527709961e-05){
  if(i54<-0.028778642416000366){
   if(i2<0.032396793365478516){
    if(i35<1.0714969635009766){
     s0+=628.0;
     s1+=5.0;
    } else {
     s0+=1434.0;
     s1+=287.0;
    }
   } else {
    if(i80<-0.0011707574594765902){
     s0+=214.0;
     s1+=64.0;
    } else {
     s0+=72.0;
     s1+=251.0;
    }
   }
  } else {
   if(i60<-0.0013585686683654785){
    if(i35<1.1037919521331787){
     s0+=1047.0;
     s1+=440.0;
    } else {
     s0+=3524.0;
     s1+=115.0;
    }
   } else {
    if(i24<0.016540659591555595){
     s0+=55563.0;
     s1+=304.0;
    } else {
     s0+=6572.0;
     s1+=632.0;
    }
   }
  }
 } else {
  if(i17<0.002396007999777794){
   if(i57<-3.0349207008839585e-05){
    s1+=30.0;
   } else {
    if(i64<-1.01356590676005e-05){
     s1+=11.0;
    } else {
     s0+=244.0;
     s1+=22.0;
    }
   }
  } else {
   if(i38<0.009010059759020805){
    if(i12<0.9978737831115723){
     s0+=45.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=988.0;
    }
   } else {
    if(i40<0.014693964272737503){
     s0+=86.0;
     s1+=15.0;
    } else {
     s1+=42.0;
    }
   }
  }
 }
} else {
 if(i2<0.12487757205963135){
  if(i50<0.01598876714706421){
   if(i44<0.058077067136764526){
    if(i3<-0.0008687973022460938){
     s0+=47.0;
     s1+=12.0;
    } else {
     s0+=34.0;
     s1+=1938.0;
    }
   } else {
    if(i48<0.0015758411027491093){
     s0+=311.0;
     s1+=96.0;
    } else {
     s0+=75.0;
     s1+=278.0;
    }
   }
  } else {
   if(i64<-6.821712759119691e-06){
    s1+=39.0;
   } else {
    if(i17<0.004071786999702454){
     s0+=482.0;
     s1+=6.0;
    } else {
     s0+=214.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i61<0.999548077583313){
   if(i14<0.9923447370529175){
    if(i68<0.4039856195449829){
     s0+=196.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i7<-2.136538205377292e-05){
     s1+=220.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i7<-2.152561501134187e-05){
    if(i11<0.9982416033744812){
     s0+=7.0;
    } else {
     s0+=122.0;
     s1+=10843.0;
    }
   } else {
    if(i66<-0.011067498475313187){
     s0+=180.0;
     s1+=39.0;
    } else {
     s0+=79.0;
     s1+=292.0;
    }
   }
  }
 }
}
if(i1<0.08202168345451355){
 if(i6<1.002474308013916){
  if(i58<0.0015202329959720373){
   if(i8<1.0410068035125732){
    if(i24<0.013151541352272034){
     s0+=49649.0;
     s1+=139.0;
    } else {
     s0+=8887.0;
     s1+=359.0;
    }
   } else {
    if(i7<-2.0011177184642293e-05){
     s0+=1154.0;
     s1+=332.0;
    } else {
     s0+=2871.0;
     s1+=134.0;
    }
   }
  } else {
   if(i36<-3.55839729309082e-05){
    if(i7<4.771753083332442e-06){
     s0+=1330.0;
     s1+=97.0;
    } else {
     s0+=1803.0;
     s1+=18.0;
    }
   } else {
    if(i61<0.9998080730438232){
     s0+=416.0;
     s1+=565.0;
    } else {
     s0+=3054.0;
     s1+=436.0;
    }
   }
  }
 } else {
  if(i47<-1.4116389138507657e-05){
   if(i50<0.011726051568984985){
    if(i33<1.5682398080825806){
     s0+=19.0;
     s1+=858.0;
    } else {
     s0+=56.0;
     s1+=55.0;
    }
   } else {
    s0+=39.0;
   }
  } else {
   if(i43<0.0019440462347120047){
    if(i30<0.0001875946472864598){
     s0+=3.0;
    } else {
     s1+=29.0;
    }
   } else {
    s0+=159.0;
   }
  }
 }
} else {
 if(i7<-1.2737207725876942e-05){
  if(i6<1.0023688077926636){
   if(i54<0.035024493932724){
    if(i33<1.0762357711791992){
     s0+=11.0;
    } else {
     s0+=94.0;
     s1+=1849.0;
    }
   } else {
    if(i37<0.006201508454978466){
     s0+=446.0;
     s1+=672.0;
    } else {
     s0+=82.0;
     s1+=762.0;
    }
   }
  } else {
   if(i15<1.0091257095336914){
    if(i2<0.13170388340950012){
     s0+=95.0;
     s1+=531.0;
    } else {
     s0+=10.0;
     s1+=1577.0;
    }
   } else {
    s1+=8226.0;
   }
  }
 } else {
  if(i36<-0.00013405084609985352){
   s0+=428.0;
  } else {
   if(i63<0.0027585625648498535){
    if(i21<0.9977840185165405){
     s0+=10.0;
     s1+=124.0;
    } else {
     s0+=106.0;
     s1+=80.0;
    }
   } else {
    if(i12<1.0028133392333984){
     s0+=514.0;
     s1+=137.0;
    } else {
     s1+=36.0;
    }
   }
  }
 }
}
if(i2<0.07806527614593506){
 if(i1<0.06919863820075989){
  if(i55<0.008576029911637306){
   if(i5<4.017353057861328e-05){
    if(i73<0.0007278312696143985){
     s0+=58214.0;
     s1+=419.0;
    } else {
     s0+=6092.0;
     s1+=539.0;
    }
   } else {
    if(i6<1.0042203664779663){
     s0+=406.0;
     s1+=96.0;
    } else {
     s0+=10.0;
     s1+=91.0;
    }
   }
  } else {
   if(i6<1.0020053386688232){
    if(i40<0.002169114537537098){
     s0+=862.0;
     s1+=379.0;
    } else {
     s0+=1747.0;
     s1+=188.0;
    }
   } else {
    if(i77<0.0028429031372070312){
     s0+=48.0;
     s1+=423.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i44<0.039458125829696655){
   if(i12<0.9965218901634216){
    if(i64<2.1968282453599386e-05){
     s1+=6.0;
    } else {
     s0+=66.0;
     s1+=2.0;
    }
   } else {
    if(i17<0.001668775686994195){
     s0+=31.0;
     s1+=57.0;
    } else {
     s0+=12.0;
     s1+=807.0;
    }
   }
  } else {
   if(i1<0.08539137244224548){
    if(i50<-0.004388660192489624){
     s0+=41.0;
     s1+=49.0;
    } else {
     s0+=1524.0;
     s1+=78.0;
    }
   } else {
    if(i61<1.0002610683441162){
     s0+=13.0;
     s1+=72.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
} else {
 if(i28<1.0098775625228882){
  if(i11<0.998519778251648){
   if(i47<-1.0022712558566127e-05){
    if(i75<0.00017042853869497776){
     s1+=20.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   } else {
    if(i43<0.008514813147485256){
     s0+=454.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.12493923306465149){
    if(i7<-1.229988720297115e-05){
     s0+=500.0;
     s1+=1396.0;
    } else {
     s0+=404.0;
     s1+=162.0;
    }
   } else {
    if(i48<0.00037402554880827665){
     s0+=129.0;
     s1+=148.0;
    } else {
     s0+=165.0;
     s1+=3415.0;
    }
   }
  }
 } else {
  if(i11<0.9986293911933899){
   s0+=31.0;
  } else {
   if(i6<1.0018020868301392){
    if(i38<0.0006485733320005238){
     s0+=78.0;
     s1+=43.0;
    } else {
     s0+=51.0;
     s1+=616.0;
    }
   } else {
    if(i42<1.253311276435852){
     s0+=6.0;
     s1+=1597.0;
    } else {
     s1+=6698.0;
    }
   }
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i44<0.05626368522644043){
  if(i8<1.0452215671539307){
   if(i58<0.0015700520016252995){
    if(i1<0.07894015312194824){
     s0+=59250.0;
     s1+=576.0;
    } else {
     s0+=96.0;
     s1+=372.0;
    }
   } else {
    if(i0<0.0623302161693573){
     s0+=4777.0;
     s1+=530.0;
    } else {
     s0+=252.0;
     s1+=306.0;
    }
   }
  } else {
   if(i7<-2.319970735698007e-05){
    if(i4<0.06386417150497437){
     s0+=866.0;
     s1+=643.0;
    } else {
     s0+=101.0;
     s1+=1014.0;
    }
   } else {
    if(i0<0.08252593874931335){
     s0+=2951.0;
     s1+=207.0;
    } else {
     s0+=71.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i51<-0.00011205784539924935){
   if(i7<-2.5304183509433642e-05){
    if(i24<0.022301655262708664){
     s0+=173.0;
     s1+=247.0;
    } else {
     s0+=35.0;
     s1+=917.0;
    }
   } else {
    if(i52<0.00038444867823272943){
     s0+=745.0;
     s1+=94.0;
    } else {
     s0+=95.0;
     s1+=122.0;
    }
   }
  } else {
   if(i1<0.1095840334892273){
    if(i70<-0.001707315444946289){
     s0+=149.0;
     s1+=30.0;
    } else {
     s0+=783.0;
     s1+=26.0;
    }
   } else {
    if(i17<0.00625206483528018){
     s0+=236.0;
     s1+=79.0;
    } else {
     s0+=4.0;
     s1+=67.0;
    }
   }
  }
 }
} else {
 if(i42<1.0624027252197266){
  s0+=291.0;
 } else {
  if(i1<0.06269454956054688){
   if(i47<-1.415376755176112e-05){
    if(i49<0.0008101463317871094){
     s0+=78.0;
     s1+=473.0;
    } else {
     s0+=48.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.1095032691955566){
     s1+=6.0;
    } else {
     s0+=109.0;
    }
   }
  } else {
   if(i43<0.005150961689651012){
    if(i20<-9.140372276306152e-05){
     s0+=62.0;
     s1+=78.0;
    } else {
     s0+=50.0;
     s1+=2060.0;
    }
   } else {
    if(i57<9.936602873494849e-05){
     s0+=1.0;
     s1+=6945.0;
    } else {
     s0+=65.0;
     s1+=1903.0;
    }
   }
  }
 }
}
if(i4<0.07161784172058105){
 if(i3<0.0005738139152526855){
  if(i19<1.0486011505126953){
   if(i73<0.0007656904053874314){
    if(i1<0.07795825600624084){
     s0+=52954.0;
     s1+=85.0;
    } else {
     s0+=120.0;
     s1+=30.0;
    }
   } else {
    if(i14<0.9939570426940918){
     s0+=1963.0;
     s1+=2.0;
    } else {
     s0+=920.0;
     s1+=227.0;
    }
   }
  } else {
   if(i6<0.9978667497634888){
    if(i6<0.9963630437850952){
     s0+=4138.0;
     s1+=70.0;
    } else {
     s0+=1909.0;
     s1+=216.0;
    }
   } else {
    if(i35<1.1423697471618652){
     s0+=2303.0;
     s1+=1629.0;
    } else {
     s0+=4306.0;
     s1+=452.0;
    }
   }
  }
 } else {
  if(i17<0.0019255280494689941){
   if(i11<1.0030009746551514){
    if(i7<-5.667106233886443e-05){
     s1+=10.0;
    } else {
     s0+=175.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i33<1.5682398080825806){
    if(i11<0.9965044260025024){
     s0+=30.0;
    } else {
     s0+=51.0;
     s1+=1805.0;
    }
   } else {
    if(i58<0.00824443344026804){
     s0+=92.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=146.0;
    }
   }
  }
 }
} else {
 if(i7<-2.1764026314485818e-05){
  if(i0<0.11726287007331848){
   if(i59<-0.017192691564559937){
    if(i58<0.003934682346880436){
     s0+=291.0;
     s1+=19.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i71<1.0022246837615967){
     s0+=113.0;
     s1+=912.0;
    } else {
     s0+=72.0;
     s1+=60.0;
    }
   }
  } else {
   if(i17<0.004596595652401447){
    if(i44<0.08503338694572449){
     s0+=1.0;
     s1+=750.0;
    } else {
     s0+=152.0;
     s1+=161.0;
    }
   } else {
    if(i24<0.0012323842383921146){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=25.0;
     s1+=10045.0;
    }
   }
  }
 } else {
  if(i39<0.04216885566711426){
   if(i35<1.255998969078064){
    if(i36<4.2825937271118164e-05){
     s0+=6.0;
     s1+=180.0;
    } else {
     s0+=19.0;
     s1+=20.0;
    }
   } else {
    if(i28<0.9877244234085083){
     s0+=9.0;
     s1+=46.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   }
  } else {
   if(i11<1.0017064809799194){
    if(i24<0.02682838961482048){
     s0+=936.0;
     s1+=70.0;
    } else {
     s0+=373.0;
     s1+=192.0;
    }
   } else {
    s1+=45.0;
   }
  }
 }
}
if(i4<0.07264465093612671){
 if(i2<0.07751694321632385){
  if(i22<1.8417835235595703e-05){
   if(i27<0.0002934373333118856){
    if(i7<-4.3694999476429075e-05){
     s0+=276.0;
     s1+=118.0;
    } else {
     s0+=55300.0;
     s1+=430.0;
    }
   } else {
    if(i34<1.1034480333328247){
     s0+=3954.0;
     s1+=1103.0;
    } else {
     s0+=8018.0;
     s1+=240.0;
    }
   }
  } else {
   if(i15<1.0047991275787354){
    if(i58<0.002025496680289507){
     s0+=1086.0;
     s1+=137.0;
    } else {
     s0+=220.0;
     s1+=383.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s0+=3.0;
     s1+=624.0;
    } else {
     s0+=101.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i76<6.140713139757281e-06){
   if(i22<0.0003522634506225586){
    if(i19<1.0443915128707886){
     s0+=17.0;
     s1+=7.0;
    } else {
     s0+=37.0;
     s1+=1579.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   if(i21<0.9134103059768677){
    s1+=2.0;
   } else {
    if(i9<1.0934338569641113){
     s0+=119.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005041360855102539){
  if(i48<0.001881905598565936){
   if(i7<-1.3564323126047384e-05){
    if(i23<1.0819284915924072){
     s0+=139.0;
     s1+=818.0;
    } else {
     s0+=301.0;
     s1+=284.0;
    }
   } else {
    if(i60<-0.005539029836654663){
     s0+=25.0;
     s1+=69.0;
    } else {
     s0+=1038.0;
     s1+=152.0;
    }
   }
  } else {
   if(i2<0.09945693612098694){
    if(i54<0.04917451739311218){
     s0+=71.0;
     s1+=284.0;
    } else {
     s0+=193.0;
     s1+=19.0;
    }
   } else {
    if(i17<0.004664204083383083){
     s0+=30.0;
     s1+=17.0;
    } else {
     s0+=37.0;
     s1+=2095.0;
    }
   }
  }
 } else {
  if(i10<0.0007617473602294922){
   if(i5<7.033348083496094e-06){
    if(i37<0.005246881395578384){
     s0+=50.0;
     s1+=17.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i57<-4.1038433664652985e-06){
     s0+=14.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=398.0;
    }
   }
  } else {
   if(i7<-4.2749379645101726e-05){
    if(i3<-0.0003349184989929199){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=8206.0;
    }
   } else {
    if(i17<0.002610375639051199){
     s0+=42.0;
     s1+=3.0;
    } else {
     s1+=73.0;
    }
   }
  }
 }
}
if(i2<0.07805490493774414){
 if(i11<1.0018706321716309){
  if(i30<0.00030670693377032876){
   if(i21<1.0084904432296753){
    if(i12<1.0031108856201172){
     s0+=53375.0;
     s1+=198.0;
    } else {
     s0+=68.0;
     s1+=25.0;
    }
   } else {
    if(i72<-4.8832380343810655e-06){
     s0+=9.0;
     s1+=104.0;
    } else {
     s0+=234.0;
     s1+=51.0;
    }
   }
  } else {
   if(i15<0.9896807074546814){
    if(i50<-0.010750055313110352){
     s0+=1594.0;
     s1+=166.0;
    } else {
     s0+=6570.0;
     s1+=28.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=2741.0;
     s1+=1305.0;
    } else {
     s0+=3954.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i14<1.000288724899292){
   if(i3<0.00037020444869995117){
    if(i55<0.030293164774775505){
     s0+=470.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.00715433107689023){
     s0+=26.0;
     s1+=100.0;
    } else {
     s0+=108.0;
     s1+=33.0;
    }
   }
  } else {
   if(i17<0.0009787008166313171){
    if(i15<0.9979709386825562){
     s1+=1.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i50<0.011906921863555908){
     s0+=48.0;
     s1+=924.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<0.00038677453994750977){
  if(i48<0.0019118732307106256){
   if(i8<1.084410548210144){
    if(i11<0.998519778251648){
     s0+=173.0;
     s1+=13.0;
    } else {
     s0+=244.0;
     s1+=1217.0;
    }
   } else {
    if(i73<0.0022588802967220545){
     s0+=817.0;
     s1+=243.0;
    } else {
     s0+=81.0;
     s1+=162.0;
    }
   }
  } else {
   if(i45<0.023436620831489563){
    if(i77<-0.0011206567287445068){
     s0+=188.0;
     s1+=114.0;
    } else {
     s0+=58.0;
     s1+=300.0;
    }
   } else {
    if(i17<0.004926726222038269){
     s0+=27.0;
    } else {
     s0+=39.0;
     s1+=1967.0;
    }
   }
  }
 } else {
  if(i0<0.10156497359275818){
   if(i66<-0.004308140836656094){
    if(i62<0.0006551355472765863){
     s0+=53.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i70<0.006252169609069824){
     s0+=9.0;
     s1+=414.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   }
  } else {
   if(i38<0.0005823549581691623){
    if(i8<1.1313570737838745){
     s0+=2.0;
     s1+=65.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i45<0.015255270525813103){
     s0+=32.0;
     s1+=1183.0;
    } else {
     s0+=4.0;
     s1+=8350.0;
    }
   }
  }
 }
}
if(i6<1.0024782419204712){
 if(i25<1.0068442821502686){
  if(i1<0.08523356914520264){
   if(i54<-0.032056063413619995){
    if(i3<0.00014677643775939941){
     s0+=1669.0;
     s1+=392.0;
    } else {
     s0+=57.0;
     s1+=145.0;
    }
   } else {
    if(i1<0.06929019093513489){
     s0+=64596.0;
     s1+=990.0;
    } else {
     s0+=1765.0;
     s1+=455.0;
    }
   }
  } else {
   if(i51<-8.057556988205761e-05){
    if(i5<-5.8025121688842773e-05){
     s0+=126.0;
     s1+=74.0;
    } else {
     s0+=279.0;
     s1+=1644.0;
    }
   } else {
    if(i11<0.9985136985778809){
     s0+=216.0;
    } else {
     s0+=357.0;
     s1+=441.0;
    }
   }
  }
 } else {
  if(i0<0.07900139689445496){
   if(i42<1.1016805171966553){
    if(i48<0.0003257741336710751){
     s0+=172.0;
     s1+=40.0;
    } else {
     s0+=3.0;
     s1+=148.0;
    }
   } else {
    if(i52<0.00022799607540946454){
     s0+=1117.0;
     s1+=21.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   }
  } else {
   if(i19<1.117687702178955){
    if(i17<0.0010229009203612804){
     s0+=34.0;
     s1+=19.0;
    } else {
     s0+=34.0;
     s1+=805.0;
    }
   } else {
    if(i37<0.006343541666865349){
     s0+=411.0;
     s1+=186.0;
    } else {
     s0+=20.0;
     s1+=496.0;
    }
   }
  }
 }
} else {
 if(i45<0.017800193279981613){
  if(i42<1.2287709712982178){
   if(i35<1.2314128875732422){
    if(i34<1.050185203552246){
     s0+=3.0;
    } else {
     s1+=1609.0;
    }
   } else {
    if(i43<0.00407069968059659){
     s0+=25.0;
     s1+=14.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i0<0.1314777135848999){
    if(i6<1.005873441696167){
     s0+=296.0;
     s1+=41.0;
    } else {
     s0+=5.0;
     s1+=39.0;
    }
   } else {
    if(i20<0.00021255016326904297){
     s0+=15.0;
     s1+=19.0;
    } else {
     s1+=480.0;
    }
   }
  }
 } else {
  if(i2<0.011465340852737427){
   if(i55<0.029441140592098236){
    s0+=6.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i0<0.1289145052433014){
    if(i26<1.0382049083709717){
     s0+=4.0;
     s1+=759.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    s1+=8104.0;
   }
  }
 }
}
if(i10<0.0007561445236206055){
 if(i30<0.0003164255467709154){
  if(i29<1.0095566511154175){
   if(i70<-0.0046111345291137695){
    if(i42<1.0775264501571655){
     s0+=3.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i12<1.0034291744232178){
     s0+=53539.0;
     s1+=248.0;
    } else {
     s0+=28.0;
     s1+=58.0;
    }
   }
  } else {
   if(i2<0.06228703260421753){
    if(i34<1.0828015804290771){
     s0+=44.0;
     s1+=36.0;
    } else {
     s0+=52.0;
     s1+=1.0;
    }
   } else {
    if(i76<3.472226580925053e-06){
     s0+=6.0;
     s1+=93.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i29<1.0158348083496094){
   if(i4<0.06941980123519897){
    if(i33<1.2371783256530762){
     s0+=5131.0;
     s1+=1715.0;
    } else {
     s0+=9273.0;
     s1+=545.0;
    }
   } else {
    if(i31<0.9992953538894653){
     s0+=370.0;
     s1+=28.0;
    } else {
     s0+=842.0;
     s1+=2532.0;
    }
   }
  } else {
   if(i45<0.025659997016191483){
    if(i7<-2.8668155209743418e-05){
     s0+=244.0;
     s1+=315.0;
    } else {
     s0+=701.0;
     s1+=120.0;
    }
   } else {
    if(i3<-0.0003896057605743408){
     s0+=97.0;
     s1+=86.0;
    } else {
     s0+=81.0;
     s1+=1300.0;
    }
   }
  }
 }
} else {
 if(i47<-1.3725371900363825e-05){
  if(i78<6.0484777350211516e-05){
   if(i0<0.04597190022468567){
    s0+=2.0;
   } else {
    s1+=32.0;
   }
  } else {
   if(i9<1.0342504978179932){
    if(i66<0.0001056590408552438){
     s0+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i45<0.0028333626687526703){
     s0+=1.0;
     s1+=139.0;
    } else {
     s1+=9222.0;
    }
   }
  }
 } else {
  if(i1<0.06988966464996338){
   if(i55<0.011991474777460098){
    if(i11<1.002103567123413){
     s0+=635.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i22<4.1425228118896484e-06){
     s1+=14.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   }
  } else {
   if(i51<-9.287800639867783e-05){
    if(i17<0.002701497171074152){
     s0+=40.0;
     s1+=166.0;
    } else {
     s0+=5.0;
     s1+=423.0;
    }
   } else {
    if(i38<0.001611895626410842){
     s1+=2.0;
    } else {
     s0+=27.0;
    }
   }
  }
 }
}
if(i20<0.00011593103408813477){
 if(i19<1.0576403141021729){
  if(i73<0.000818131142295897){
   if(i18<1.008354663848877){
    if(i65<0.011447932571172714){
     s0+=45009.0;
     s1+=44.0;
    } else {
     s0+=10602.0;
     s1+=324.0;
    }
   } else {
    if(i37<0.0011494692880660295){
     s0+=14.0;
     s1+=116.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i51<0.00010991646558977664){
    if(i15<0.9897298216819763){
     s0+=813.0;
     s1+=24.0;
    } else {
     s0+=315.0;
     s1+=258.0;
    }
   } else {
    if(i76<3.031727260349726e-07){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=1643.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i1<0.08368849754333496){
   if(i3<0.0004954934120178223){
    if(i34<1.1031841039657593){
     s0+=2134.0;
     s1+=950.0;
    } else {
     s0+=8117.0;
     s1+=408.0;
    }
   } else {
    if(i62<0.0005533070070669055){
     s0+=112.0;
     s1+=98.0;
    } else {
     s0+=85.0;
     s1+=379.0;
    }
   }
  } else {
   if(i7<-1.1991860446869396e-05){
    if(i44<0.05817347764968872){
     s0+=22.0;
     s1+=2196.0;
    } else {
     s0+=570.0;
     s1+=1998.0;
    }
   } else {
    if(i59<-0.019178232178092003){
     s0+=625.0;
     s1+=104.0;
    } else {
     s0+=140.0;
     s1+=207.0;
    }
   }
  }
 }
} else {
 if(i6<1.0000183582305908){
  if(i60<0.00474625825881958){
   s0+=391.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i2<0.053018003702163696){
   if(i72<-4.84598695038585e-06){
    if(i9<1.0330078601837158){
     s0+=4.0;
    } else {
     s1+=271.0;
    }
   } else {
    if(i37<0.0009641869692131877){
     s0+=14.0;
     s1+=11.0;
    } else {
     s0+=360.0;
     s1+=4.0;
    }
   }
  } else {
   if(i0<0.08296775817871094){
    if(i35<1.2388319969177246){
     s0+=1.0;
     s1+=307.0;
    } else {
     s0+=65.0;
     s1+=33.0;
    }
   } else {
    if(i51<-0.00012702716048806906){
     s0+=10.0;
     s1+=8888.0;
    } else {
     s0+=22.0;
     s1+=503.0;
    }
   }
  }
 }
}
if(i14<1.0040111541748047){
 if(i0<0.0853736400604248){
  if(i19<1.0451585054397583){
   if(i73<0.0007040876662358642){
    if(i56<0.00028570869471877813){
     s0+=42889.0;
     s1+=6.0;
    } else {
     s0+=7732.0;
     s1+=62.0;
    }
   } else {
    if(i79<-0.0015766322612762451){
     s0+=1930.0;
     s1+=21.0;
    } else {
     s0+=1067.0;
     s1+=138.0;
    }
   }
  } else {
   if(i37<0.001123190624639392){
    if(i43<0.00032969104358926415){
     s0+=2748.0;
     s1+=18.0;
    } else {
     s0+=1790.0;
     s1+=1433.0;
    }
   } else {
    if(i5<3.5822391510009766e-05){
     s0+=10050.0;
     s1+=472.0;
    } else {
     s0+=233.0;
     s1+=239.0;
    }
   }
  }
 } else {
  if(i17<0.004805178847163916){
   if(i39<0.054121196269989014){
    if(i64<1.6410886019002646e-05){
     s0+=184.0;
     s1+=1017.0;
    } else {
     s0+=288.0;
     s1+=53.0;
    }
   } else {
    if(i2<0.28585293889045715){
     s0+=1073.0;
     s1+=191.0;
    } else {
     s0+=99.0;
     s1+=120.0;
    }
   }
  } else {
   if(i7<6.178543117130175e-07){
    if(i1<0.09275153279304504){
     s0+=114.0;
     s1+=179.0;
    } else {
     s0+=93.0;
     s1+=3272.0;
    }
   } else {
    if(i12<1.0000070333480835){
     s0+=64.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i27<0.0001854972797445953){
  if(i72<-5.029041403759038e-06){
   if(i1<0.038439393043518066){
    s0+=5.0;
   } else {
    if(i71<1.00215744972229){
     s0+=1.0;
     s1+=90.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i10<0.0015953779220581055){
    if(i73<-6.239001959329471e-05){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=367.0;
    }
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i11<0.9989855289459229){
   s0+=81.0;
  } else {
   if(i3<0.0001430511474609375){
    if(i17<0.0027029081247746944){
     s0+=56.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=48.0;
    }
   } else {
    if(i7<-4.35077199654188e-05){
     s0+=34.0;
     s1+=9709.0;
    } else {
     s0+=132.0;
     s1+=111.0;
    }
   }
  }
 }
}
if(i4<0.07267516851425171){
 if(i5<4.190206527709961e-05){
  if(i1<0.07875025272369385){
   if(i55<0.007082522381097078){
    if(i2<0.056510210037231445){
     s0+=58692.0;
     s1+=602.0;
    } else {
     s0+=5772.0;
     s1+=532.0;
    }
   } else {
    if(i1<0.02972722053527832){
     s0+=2971.0;
     s1+=274.0;
    } else {
     s0+=988.0;
     s1+=516.0;
    }
   }
  } else {
   if(i6<0.9967767596244812){
    if(i9<1.0706243515014648){
     s0+=155.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i46<0.057685673236846924){
     s0+=11.0;
     s1+=753.0;
    } else {
     s0+=81.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i42<1.0633710622787476){
   s0+=210.0;
  } else {
   if(i17<0.0019465598743408918){
    if(i36<0.00023254752159118652){
     s0+=95.0;
     s1+=6.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i0<0.05063772201538086){
     s0+=102.0;
     s1+=282.0;
    } else {
     s0+=52.0;
     s1+=1575.0;
    }
   }
  }
 }
} else {
 if(i22<-1.3321638107299805e-05){
  if(i67<0.998432993888855){
   if(i40<0.03782590478658676){
    if(i42<1.5754120349884033){
     s0+=378.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i40<0.005814115982502699){
    if(i52<0.0006276865024119616){
     s0+=45.0;
    } else {
     s0+=18.0;
     s1+=9.0;
    }
   } else {
    if(i19<1.118648648262024){
     s0+=11.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i0<0.12524020671844482){
   if(i6<1.002014398574829){
    if(i63<0.004225939512252808){
     s0+=462.0;
     s1+=759.0;
    } else {
     s0+=581.0;
     s1+=58.0;
    }
   } else {
    if(i49<0.0036692917346954346){
     s0+=12.0;
     s1+=590.0;
    } else {
     s0+=90.0;
     s1+=24.0;
    }
   }
  } else {
   if(i47<-7.618998552061385e-07){
    if(i7<-1.3259301340440288e-05){
     s0+=138.0;
     s1+=10789.0;
    } else {
     s0+=116.0;
     s1+=100.0;
    }
   } else {
    if(i6<0.9988510608673096){
     s0+=38.0;
     s1+=101.0;
    } else {
     s0+=83.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i22<1.9848346710205078e-05){
 if(i23<1.0398966073989868){
  if(i56<0.00037389714270830154){
   if(i14<1.0039854049682617){
    if(i18<1.0092780590057373){
     s0+=47857.0;
     s1+=147.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i70<-0.00017064809799194336){
     s0+=285.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=57.0;
    }
   }
  } else {
   if(i1<0.07543641328811646){
    if(i42<1.103413462638855){
     s0+=3839.0;
     s1+=1066.0;
    } else {
     s0+=13269.0;
     s1+=300.0;
    }
   } else {
    if(i38<0.0004274578532204032){
     s0+=93.0;
     s1+=7.0;
    } else {
     s0+=180.0;
     s1+=1207.0;
    }
   }
  }
 } else {
  if(i2<0.09645095467567444){
   if(i34<1.1037919521331787){
    if(i11<1.0004494190216064){
     s0+=1047.0;
     s1+=301.0;
    } else {
     s0+=48.0;
     s1+=218.0;
    }
   } else {
    if(i62<0.0008119379635900259){
     s0+=1612.0;
     s1+=52.0;
    } else {
     s0+=441.0;
     s1+=100.0;
    }
   }
  } else {
   if(i13<-0.0004030168056488037){
    if(i22<-1.7315149307250977e-05){
     s0+=225.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0006421919679269195){
     s0+=262.0;
     s1+=183.0;
    } else {
     s0+=320.0;
     s1+=2977.0;
    }
   }
  }
 }
} else {
 if(i2<0.07667464017868042){
  if(i3<0.0006679892539978027){
   if(i14<1.0002620220184326){
    if(i49<-0.004734158515930176){
     s0+=68.0;
     s1+=50.0;
    } else {
     s0+=885.0;
     s1+=44.0;
    }
   } else {
    if(i31<1.0007331371307373){
     s0+=66.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=75.0;
    }
   }
  } else {
   if(i33<1.5682398080825806){
    if(i17<0.001560520613566041){
     s0+=44.0;
     s1+=5.0;
    } else {
     s0+=27.0;
     s1+=939.0;
    }
   } else {
    if(i17<0.017531823366880417){
     s0+=80.0;
     s1+=8.0;
    } else {
     s1+=53.0;
    }
   }
  }
 } else {
  if(i3<0.0006921291351318359){
   if(i68<0.1329481303691864){
    if(i44<0.05934670567512512){
     s0+=23.0;
     s1+=114.0;
    } else {
     s0+=162.0;
     s1+=76.0;
    }
   } else {
    if(i38<0.01136375218629837){
     s0+=16.0;
     s1+=347.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i45<0.01811710000038147){
    if(i14<1.0063992738723755){
     s0+=69.0;
     s1+=152.0;
    } else {
     s1+=1020.0;
    }
   } else {
    if(i10<-0.0006455183029174805){
     s0+=8.0;
     s1+=470.0;
    } else {
     s1+=7243.0;
    }
   }
  }
 }
}
if(i15<1.0060365200042725){
 if(i4<0.08111581206321716){
  if(i9<1.0446083545684814){
   if(i58<0.0015186606906354427){
    if(i24<0.015985876321792603){
     s0+=51393.0;
     s1+=205.0;
    } else {
     s0+=6226.0;
     s1+=368.0;
    }
   } else {
    if(i4<0.030655384063720703){
     s0+=3015.0;
     s1+=179.0;
    } else {
     s0+=893.0;
     s1+=274.0;
    }
   }
  } else {
   if(i1<0.08505642414093018){
    if(i3<0.00022429227828979492){
     s0+=6746.0;
     s1+=979.0;
    } else {
     s0+=566.0;
     s1+=574.0;
    }
   } else {
    if(i54<0.058717936277389526){
     s0+=70.0;
     s1+=761.0;
    } else {
     s0+=67.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i24<0.028845055028796196){
   if(i17<0.002391222631558776){
    if(i54<0.0572686493396759){
     s0+=135.0;
     s1+=76.0;
    } else {
     s0+=365.0;
     s1+=22.0;
    }
   } else {
    if(i7<-6.185920938150957e-06){
     s0+=228.0;
     s1+=638.0;
    } else {
     s0+=131.0;
     s1+=30.0;
    }
   }
  } else {
   if(i7<-1.0507101251278073e-05){
    if(i24<0.040218427777290344){
     s0+=65.0;
     s1+=355.0;
    } else {
     s0+=50.0;
     s1+=2421.0;
    }
   } else {
    if(i43<0.0038763978518545628){
     s0+=220.0;
     s1+=38.0;
    } else {
     s0+=15.0;
     s1+=84.0;
    }
   }
  }
 }
} else {
 if(i30<0.00018696072220336646){
  if(i75<4.200144758215174e-05){
   s1+=19.0;
  } else {
   if(i48<0.0008686588844284415){
    s0+=160.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i4<0.06590187549591064){
   if(i40<0.0021132645197212696){
    if(i40<0.0011387335835024714){
     s0+=1.0;
     s1+=842.0;
    } else {
     s0+=18.0;
     s1+=173.0;
    }
   } else {
    if(i5<6.902217864990234e-05){
     s0+=381.0;
     s1+=41.0;
    } else {
     s1+=351.0;
    }
   }
  } else {
   if(i62<0.00013831874821335077){
    if(i7<-3.9122132875490934e-05){
     s0+=1.0;
     s1+=119.0;
    } else {
     s0+=78.0;
     s1+=2.0;
    }
   } else {
    if(i7<-4.2749379645101726e-05){
     s0+=11.0;
     s1+=8652.0;
    } else {
     s0+=59.0;
     s1+=141.0;
    }
   }
  }
 }
}
if(i12<1.002927541732788){
 if(i9<1.0469921827316284){
  if(i0<0.08320280909538269){
   if(i19<1.0451585054397583){
    if(i56<0.0002512491191737354){
     s0+=41671.0;
     s1+=6.0;
    } else {
     s0+=12246.0;
     s1+=219.0;
    }
   } else {
    if(i40<0.0016838080482557416){
     s0+=3526.0;
     s1+=613.0;
    } else {
     s0+=4268.0;
     s1+=57.0;
    }
   }
  } else {
   if(i22<-1.2785196304321289e-05){
    if(i74<1.0152506828308105){
     s0+=327.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.0469491481781006){
     s0+=104.0;
     s1+=13.0;
    } else {
     s0+=38.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i2<0.0923108160495758){
   if(i33<1.1013743877410889){
    if(i37<0.0002946359745692462){
     s0+=843.0;
    } else {
     s0+=684.0;
     s1+=1146.0;
    }
   } else {
    if(i16<0.9500246644020081){
     s0+=11.0;
     s1+=38.0;
    } else {
     s0+=5346.0;
     s1+=465.0;
    }
   }
  } else {
   if(i31<0.9988973140716553){
    s0+=276.0;
   } else {
    if(i49<0.004385799169540405){
     s0+=100.0;
     s1+=2256.0;
    } else {
     s0+=586.0;
     s1+=1461.0;
    }
   }
  }
 }
} else {
 if(i5<3.081560134887695e-05){
  if(i9<1.0722830295562744){
   if(i1<0.09549784660339355){
    if(i3<0.00018352270126342773){
     s0+=705.0;
     s1+=4.0;
    } else {
     s0+=129.0;
     s1+=30.0;
    }
   } else {
    if(i22<2.574920654296875e-05){
     s0+=3.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  } else {
   if(i4<0.09810325503349304){
    if(i2<0.10529464483261108){
     s0+=98.0;
     s1+=42.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i42<1.2571572065353394){
     s0+=16.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=193.0;
    }
   }
  }
 } else {
  if(i4<0.05427795648574829){
   if(i27<0.00015551103570032865){
    if(i1<0.05753287672996521){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.07051843404769897){
     s0+=109.0;
     s1+=431.0;
    } else {
     s1+=587.0;
    }
   }
  } else {
   if(i51<-9.024181781569496e-05){
    if(i0<0.1051480770111084){
     s0+=15.0;
     s1+=426.0;
    } else {
     s0+=7.0;
     s1+=7874.0;
    }
   } else {
    if(i0<0.09820052981376648){
     s0+=48.0;
     s1+=102.0;
    } else {
     s0+=26.0;
     s1+=643.0;
    }
   }
  }
 }
}
if(i2<0.07752794027328491){
 if(i13<0.0005588531494140625){
  if(i9<1.040665864944458){
   if(i70<-0.002234131097793579){
    if(i10<-0.001980125904083252){
     s0+=2162.0;
     s1+=9.0;
    } else {
     s0+=1711.0;
     s1+=357.0;
    }
   } else {
    if(i16<1.0084054470062256){
     s0+=54967.0;
     s1+=210.0;
    } else {
     s0+=28.0;
     s1+=18.0;
    }
   }
  } else {
   if(i6<0.9979710578918457){
    if(i16<0.9913929104804993){
     s0+=655.0;
     s1+=157.0;
    } else {
     s0+=3829.0;
     s1+=101.0;
    }
   } else {
    if(i35<1.1178040504455566){
     s0+=2050.0;
     s1+=1045.0;
    } else {
     s0+=2898.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i6<1.0015573501586914){
   if(i62<0.0018929548095911741){
    if(i14<1.0029102563858032){
     s0+=686.0;
     s1+=36.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i45<0.029320932924747467){
     s0+=4.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i33<1.5682398080825806){
    if(i40<0.000431504740845412){
     s0+=17.0;
    } else {
     s0+=70.0;
     s1+=1010.0;
    }
   } else {
    if(i74<0.9245002269744873){
     s0+=11.0;
     s1+=56.0;
    } else {
     s0+=95.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3806367860524915e-05){
  if(i14<1.0016109943389893){
   if(i24<0.021543405950069427){
    if(i49<0.0031461119651794434){
     s0+=79.0;
     s1+=441.0;
    } else {
     s0+=308.0;
     s1+=121.0;
    }
   } else {
    if(i11<0.997739315032959){
     s0+=17.0;
    } else {
     s0+=188.0;
     s1+=2924.0;
    }
   }
  } else {
   if(i7<-4.2076273530256e-05){
    if(i76<1.0391868272563443e-05){
     s0+=40.0;
     s1+=9858.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i42<1.1820628643035889){
     s0+=2.0;
     s1+=120.0;
    } else {
     s0+=86.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i73<0.0025321487337350845){
   if(i5<3.30805778503418e-05){
    if(i39<0.039821505546569824){
     s0+=66.0;
     s1+=103.0;
    } else {
     s0+=992.0;
     s1+=126.0;
    }
   } else {
    if(i1<0.09841182827949524){
     s0+=1.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i31<0.9994378685951233){
    if(i44<0.022942662239074707){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i29<0.9885833859443665){
     s1+=95.0;
    } else {
     s0+=11.0;
     s1+=23.0;
    }
   }
  }
 }
}
if(i0<0.08515334129333496){
 if(i70<-0.0020895302295684814){
  if(i22<2.0742416381835938e-05){
   if(i10<-0.001294851303100586){
    if(i51<-0.0005582773592323065){
     s1+=12.0;
    } else {
     s0+=3432.0;
     s1+=144.0;
    }
   } else {
    if(i38<0.0003880792937707156){
     s0+=1047.0;
    } else {
     s0+=1203.0;
     s1+=812.0;
    }
   }
  } else {
   if(i57<0.0001475006138207391){
    if(i23<1.0353074073791504){
     s0+=4.0;
     s1+=427.0;
    } else {
     s0+=17.0;
     s1+=66.0;
    }
   } else {
    if(i9<1.082106590270996){
     s0+=295.0;
     s1+=15.0;
    } else {
     s0+=23.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i21<1.0067009925842285){
   if(i69<0.026269998401403427){
    if(i76<-3.843868398689665e-06){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=55045.0;
     s1+=196.0;
    }
   } else {
    if(i14<0.9946650266647339){
     s0+=4012.0;
     s1+=48.0;
    } else {
     s0+=1524.0;
     s1+=485.0;
    }
   }
  } else {
   if(i33<1.1013743877410889){
    if(i7<-2.4829172616591677e-05){
     s0+=10.0;
     s1+=598.0;
    } else {
     s0+=604.0;
     s1+=59.0;
    }
   } else {
    if(i10<0.0014679431915283203){
     s0+=2051.0;
     s1+=145.0;
    } else {
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i15<1.0063631534576416){
  if(i31<0.9991189241409302){
   if(i40<0.021980872377753258){
    if(i32<0.9966022372245789){
     s0+=432.0;
    } else {
     s0+=183.0;
     s1+=8.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i7<-1.4434041077038273e-05){
    if(i45<0.023449715226888657){
     s0+=492.0;
     s1+=1254.0;
    } else {
     s0+=71.0;
     s1+=2817.0;
    }
   } else {
    if(i39<0.04206883907318115){
     s0+=19.0;
     s1+=235.0;
    } else {
     s0+=619.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i5<7.510185241699219e-06){
   if(i17<0.0020367263350635767){
    s0+=60.0;
   } else {
    if(i15<1.0066962242126465){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=114.0;
    }
   }
  } else {
   if(i48<0.0009370872285217047){
    if(i71<1.0001606941223145){
     s0+=27.0;
     s1+=837.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9965388774871826){
     s0+=5.0;
     s1+=184.0;
    } else {
     s1+=8213.0;
    }
   }
  }
 }
}
if(i2<0.07742848992347717){
 if(i11<1.0016478300094604){
  if(i9<1.0401114225387573){
   if(i49<-0.0015021562576293945){
    if(i2<0.0516238808631897){
     s0+=1826.0;
     s1+=161.0;
    } else {
     s0+=16.0;
     s1+=38.0;
    }
   } else {
    if(i56<0.00028967903926968575){
     s0+=43805.0;
     s1+=36.0;
    } else {
     s0+=12816.0;
     s1+=310.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i43<0.00029563141288235784){
     s0+=1994.0;
    } else {
     s0+=1323.0;
     s1+=1271.0;
    }
   } else {
    if(i32<0.9606837034225464){
     s0+=887.0;
     s1+=183.0;
    } else {
     s0+=5576.0;
     s1+=174.0;
    }
   }
  }
 } else {
  if(i71<1.0022356510162354){
   if(i3<0.00048154592514038086){
    if(i61<1.0003678798675537){
     s0+=64.0;
     s1+=67.0;
    } else {
     s0+=188.0;
    }
   } else {
    if(i27<0.00016222380509134382){
     s0+=53.0;
     s1+=16.0;
    } else {
     s0+=80.0;
     s1+=1021.0;
    }
   }
  } else {
   if(i9<1.12269127368927){
    if(i60<0.0008974671363830566){
     s0+=243.0;
     s1+=46.0;
    } else {
     s0+=355.0;
     s1+=1.0;
    }
   } else {
    if(i30<0.004816035274416208){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i3<0.00014764070510864258){
  if(i17<0.0016062806826084852){
   if(i24<0.02889775112271309){
    if(i8<1.0180093050003052){
     s1+=5.0;
    } else {
     s0+=469.0;
     s1+=34.0;
    }
   } else {
    if(i60<0.0039020776748657227){
     s0+=20.0;
     s1+=76.0;
    } else {
     s0+=63.0;
     s1+=1.0;
    }
   }
  } else {
   if(i13<-0.000432431697845459){
    if(i64<4.362725303508341e-05){
     s0+=382.0;
    } else {
     s0+=24.0;
     s1+=5.0;
    }
   } else {
    if(i51<-1.179346872959286e-05){
     s0+=244.0;
     s1+=1678.0;
    } else {
     s0+=196.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i5<3.975629806518555e-05){
   if(i14<1.0022330284118652){
    if(i31<1.0003297328948975){
     s0+=52.0;
     s1+=552.0;
    } else {
     s0+=274.0;
     s1+=362.0;
    }
   } else {
    if(i74<1.028212308883667){
     s0+=5.0;
     s1+=513.0;
    } else {
     s0+=29.0;
     s1+=226.0;
    }
   }
  } else {
   if(i6<1.0037965774536133){
    if(i2<0.1407354176044464){
     s0+=78.0;
     s1+=304.0;
    } else {
     s0+=5.0;
     s1+=845.0;
    }
   } else {
    if(i12<0.9974284172058105){
     s0+=12.0;
     s1+=144.0;
    } else {
     s0+=11.0;
     s1+=8952.0;
    }
   }
  }
 }
}
if(i10<0.0008068680763244629){
 if(i0<0.08502665162086487){
  if(i19<1.0485899448394775){
   if(i54<-0.03687697649002075){
    if(i22<-4.649162292480469e-06){
     s0+=188.0;
     s1+=8.0;
    } else {
     s0+=87.0;
     s1+=39.0;
    }
   } else {
    if(i0<0.06640687584877014){
     s0+=52920.0;
     s1+=239.0;
    } else {
     s0+=2488.0;
     s1+=95.0;
    }
   }
  } else {
   if(i24<0.014940250664949417){
    if(i3<0.0004298090934753418){
     s0+=8216.0;
     s1+=401.0;
    } else {
     s0+=109.0;
     s1+=159.0;
    }
   } else {
    if(i37<0.0011244562920182943){
     s0+=368.0;
     s1+=837.0;
    } else {
     s0+=4233.0;
     s1+=684.0;
    }
   }
  }
 } else {
  if(i53<0.035830020904541016){
   if(i11<0.9981412887573242){
    if(i36<-0.00011727213859558105){
     s0+=358.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i49<0.004599928855895996){
     s0+=92.0;
     s1+=2735.0;
    } else {
     s0+=356.0;
     s1+=984.0;
    }
   }
  } else {
   if(i47<-1.1499775609991048e-05){
    if(i56<0.009087515994906425){
     s0+=252.0;
     s1+=216.0;
    } else {
     s0+=50.0;
     s1+=504.0;
    }
   } else {
    if(i17<0.0058171311393380165){
     s0+=833.0;
     s1+=237.0;
    } else {
     s1+=64.0;
    }
   }
  }
 }
} else {
 if(i7<-4.283253656467423e-05){
  if(i0<0.06055617332458496){
   if(i12<1.0009113550186157){
    if(i57<-2.0420036889845505e-05){
     s1+=3.0;
    } else {
     s0+=141.0;
     s1+=5.0;
    }
   } else {
    if(i27<0.0001230995694641024){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=200.0;
    }
   }
  } else {
   if(i6<0.9996024370193481){
    s0+=15.0;
   } else {
    if(i56<0.00027604971546679735){
     s0+=1.0;
     s1+=41.0;
    } else {
     s0+=2.0;
     s1+=9518.0;
    }
   }
  }
 } else {
  if(i17<0.0024733669124543667){
   if(i61<0.9998122453689575){
    s1+=6.0;
   } else {
    s0+=403.0;
   }
  } else {
   if(i61<1.0001485347747803){
    if(i21<1.0402189493179321){
     s0+=3.0;
     s1+=125.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i2<0.07751694321632385){
 if(i6<1.0024950504302979){
  if(i27<0.0002956066164188087){
   if(i56<0.00028957900940440595){
    if(i29<1.0111782550811768){
     s0+=45242.0;
     s1+=33.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i1<0.0794154703617096){
     s0+=10870.0;
     s1+=381.0;
    } else {
     s0+=16.0;
     s1+=62.0;
    }
   }
  } else {
   if(i40<0.0019988492131233215){
    if(i45<0.012674153782427311){
     s0+=4017.0;
     s1+=665.0;
    } else {
     s0+=282.0;
     s1+=581.0;
    }
   } else {
    if(i55<0.015525983646512032){
     s0+=7330.0;
     s1+=135.0;
    } else {
     s0+=1054.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i22<1.9490718841552734e-05){
   if(i42<1.2066810131072998){
    if(i56<0.00018859072588384151){
     s0+=2.0;
    } else {
     s1+=138.0;
    }
   } else {
    s0+=143.0;
   }
  } else {
   if(i42<1.2280436754226685){
    if(i19<1.0357894897460938){
     s0+=6.0;
    } else {
     s0+=11.0;
     s1+=752.0;
    }
   } else {
    if(i26<0.9961633682250977){
     s0+=39.0;
     s1+=220.0;
    } else {
     s0+=79.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i31<0.9989357590675354){
  if(i43<0.02070678398013115){
   if(i38<0.0017667785286903381){
    s0+=434.0;
   } else {
    if(i33<1.2660750150680542){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   s1+=14.0;
  }
 } else {
  if(i45<0.023696068674325943){
   if(i15<1.0074667930603027){
    if(i73<0.002478447975590825){
     s0+=1136.0;
     s1+=1358.0;
    } else {
     s0+=18.0;
     s1+=363.0;
    }
   } else {
    if(i3<0.00013443827629089355){
     s0+=52.0;
     s1+=51.0;
    } else {
     s0+=24.0;
     s1+=2193.0;
    }
   }
  } else {
   if(i19<1.0638914108276367){
    if(i20<-0.00024947524070739746){
     s0+=68.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i47<2.8145786927780136e-06){
     s0+=105.0;
     s1+=10005.0;
    } else {
     s0+=31.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i6<1.002474308013916){
 if(i30<0.00031714141368865967){
  if(i21<1.0101372003555298){
   if(i60<-0.0027903318405151367){
    if(i36<-4.789233207702637e-05){
     s0+=3.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i52<0.00028056680457666516){
     s0+=52632.0;
     s1+=168.0;
    } else {
     s0+=1297.0;
     s1+=115.0;
    }
   }
  } else {
   if(i3<0.00018453598022460938){
    if(i34<1.0755466222763062){
     s1+=16.0;
    } else {
     s0+=66.0;
     s1+=10.0;
    }
   } else {
    if(i68<0.031485121697187424){
     s0+=2.0;
     s1+=91.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i4<0.07075154781341553){
   if(i2<0.07645884156227112){
    if(i34<1.1034480333328247){
     s0+=4175.0;
     s1+=1309.0;
    } else {
     s0+=10528.0;
     s1+=388.0;
    }
   } else {
    if(i36<-0.0001766979694366455){
     s0+=61.0;
    } else {
     s0+=33.0;
     s1+=627.0;
    }
   }
  } else {
   if(i45<0.040245652198791504){
    if(i39<0.04706370830535889){
     s0+=210.0;
     s1+=1270.0;
    } else {
     s0+=1558.0;
     s1+=839.0;
    }
   } else {
    if(i10<-0.005327403545379639){
     s0+=23.0;
     s1+=14.0;
    } else {
     s0+=18.0;
     s1+=1037.0;
    }
   }
  }
 }
} else {
 if(i1<0.06267303228378296){
  if(i17<0.0020079840905964375){
   if(i35<1.1753523349761963){
    if(i72<-5.702067028323654e-06){
     s1+=14.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=136.0;
   }
  } else {
   if(i12<1.0012798309326172){
    if(i78<0.000519437831826508){
     s0+=10.0;
     s1+=22.0;
    } else {
     s0+=20.0;
     s1+=2.0;
    }
   } else {
    if(i63<0.0003211498260498047){
     s0+=36.0;
     s1+=477.0;
    } else {
     s0+=35.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i3<0.0008802115917205811){
   if(i37<0.0028166084084659815){
    s1+=413.0;
   } else {
    if(i1<0.12887677550315857){
     s0+=96.0;
     s1+=50.0;
    } else {
     s0+=4.0;
     s1+=368.0;
    }
   }
  } else {
   if(i45<0.018105944618582726){
    if(i49<0.007033705711364746){
     s0+=15.0;
     s1+=1653.0;
    } else {
     s0+=35.0;
     s1+=30.0;
    }
   } else {
    if(i6<1.0031406879425049){
     s0+=3.0;
     s1+=73.0;
    } else {
     s1+=8199.0;
    }
   }
  }
 }
}
if(i14<1.0040063858032227){
 if(i1<0.08341756463050842){
  if(i30<0.00030651327688246965){
   if(i6<1.0015591382980347){
    if(i73<0.0008577682310715318){
     s0+=52094.0;
     s1+=119.0;
    } else {
     s0+=180.0;
     s1+=90.0;
    }
   } else {
    if(i66<-0.0011803691741079092){
     s0+=7.0;
     s1+=31.0;
    } else {
     s0+=1005.0;
     s1+=70.0;
    }
   }
  } else {
   if(i45<0.0748399868607521){
    if(i35<1.1037919521331787){
     s0+=3605.0;
     s1+=1273.0;
    } else {
     s0+=11832.0;
     s1+=678.0;
    }
   } else {
    s1+=48.0;
   }
  }
 } else {
  if(i11<0.998518705368042){
   if(i36<-0.00012364983558654785){
    if(i52<0.0019358338322490454){
     s0+=458.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i25<0.9826464056968689){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i0<0.1225271224975586){
    if(i60<0.003836512565612793){
     s0+=416.0;
     s1+=1324.0;
    } else {
     s0+=311.0;
     s1+=68.0;
    }
   } else {
    if(i53<0.06013607978820801){
     s0+=119.0;
     s1+=3090.0;
    } else {
     s0+=211.0;
     s1+=515.0;
    }
   }
  }
 }
} else {
 if(i7<-4.223889482091181e-05){
  if(i27<0.00016283465083688498){
   if(i35<1.2388319969177246){
    s1+=26.0;
   } else {
    s0+=45.0;
   }
  } else {
   if(i0<0.06458726525306702){
    if(i47<-1.380674984829966e-05){
     s0+=19.0;
     s1+=339.0;
    } else {
     s0+=71.0;
     s1+=15.0;
    }
   } else {
    if(i10<3.5822391510009766e-05){
     s0+=26.0;
     s1+=396.0;
    } else {
     s0+=15.0;
     s1+=9052.0;
    }
   }
  }
 } else {
  if(i13<0.0005969405174255371){
   if(i0<0.20366638898849487){
    if(i18<0.9714523553848267){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=537.0;
     s1+=13.0;
    }
   } else {
    s1+=26.0;
   }
  } else {
   s1+=67.0;
  }
 }
}
if(i3<0.0005484223365783691){
 if(i4<0.07199648022651672){
  if(i56<0.00033131666714325547){
   if(i15<1.0051085948944092){
    if(i52<0.0003125505172647536){
     s0+=47442.0;
     s1+=58.0;
    } else {
     s0+=120.0;
     s1+=42.0;
    }
   } else {
    if(i43<0.0010721690487116575){
     s1+=78.0;
    } else {
     s0+=97.0;
    }
   }
  } else {
   if(i43<0.002683280035853386){
    if(i0<0.07756397128105164){
     s0+=9095.0;
     s1+=1457.0;
    } else {
     s0+=337.0;
     s1+=812.0;
    }
   } else {
    if(i1<0.08441877365112305){
     s0+=11489.0;
     s1+=240.0;
    } else {
     s0+=10.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i7<-1.2737207725876942e-05){
   if(i1<0.10013291239738464){
    if(i66<-0.004309171810746193){
     s0+=322.0;
     s1+=24.0;
    } else {
     s0+=131.0;
     s1+=352.0;
    }
   } else {
    if(i7<-3.694921178976074e-05){
     s0+=62.0;
     s1+=1594.0;
    } else {
     s0+=192.0;
     s1+=659.0;
    }
   }
  } else {
   if(i39<0.04320770502090454){
    if(i77<-0.0019022822380065918){
     s0+=2.0;
     s1+=71.0;
    } else {
     s0+=52.0;
     s1+=37.0;
    }
   } else {
    if(i4<0.299236536026001){
     s0+=998.0;
     s1+=88.0;
    } else {
     s0+=83.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i42<1.0591429471969604){
  s0+=181.0;
 } else {
  if(i2<0.05846378207206726){
   if(i42<1.2160736322402954){
    if(i50<0.009273290634155273){
     s0+=4.0;
     s1+=434.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i73<0.0006612044526264071){
     s0+=143.0;
     s1+=6.0;
    } else {
     s0+=75.0;
     s1+=180.0;
    }
   }
  } else {
   if(i0<0.12387019395828247){
    if(i26<1.0388787984848022){
     s0+=102.0;
     s1+=1423.0;
    } else {
     s0+=46.0;
     s1+=16.0;
    }
   } else {
    if(i1<0.12324169278144836){
     s0+=6.0;
     s1+=38.0;
    } else {
     s0+=16.0;
     s1+=9536.0;
    }
   }
  }
 }
}
if(i2<0.07742854952812195){
 if(i28<1.007131814956665){
  if(i63<-0.003101915121078491){
   if(i5<1.1801719665527344e-05){
    if(i11<0.9983209371566772){
     s0+=441.0;
     s1+=4.0;
    } else {
     s0+=760.0;
     s1+=283.0;
    }
   } else {
    if(i33<1.428532600402832){
     s0+=37.0;
     s1+=70.0;
    } else {
     s0+=20.0;
     s1+=200.0;
    }
   }
  } else {
   if(i19<1.0451585054397583){
    if(i6<1.00254487991333){
     s0+=53865.0;
     s1+=185.0;
    } else {
     s0+=9.0;
     s1+=11.0;
    }
   } else {
    if(i1<0.06658446788787842){
     s0+=11565.0;
     s1+=987.0;
    } else {
     s0+=784.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i11<1.0017204284667969){
   if(i43<0.0011071416083723307){
    if(i7<-2.6093963242601603e-05){
     s1+=312.0;
    } else {
     s0+=213.0;
     s1+=25.0;
    }
   } else {
    if(i7<-6.324185960693285e-05){
     s1+=40.0;
    } else {
     s0+=1334.0;
     s1+=8.0;
    }
   }
  } else {
   if(i72<-4.367348083178513e-06){
    if(i10<-1.9431114196777344e-05){
     s0+=31.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=557.0;
    }
   } else {
    if(i33<1.175731897354126){
     s1+=4.0;
    } else {
     s0+=21.0;
    }
   }
  }
 }
} else {
 if(i7<-1.3540186046157032e-05){
  if(i10<0.0007508397102355957){
   if(i50<0.013973623514175415){
    if(i13<-0.0004121065139770508){
     s0+=27.0;
    } else {
     s0+=115.0;
     s1+=2637.0;
    }
   } else {
    if(i1<0.12336614727973938){
     s0+=417.0;
     s1+=84.0;
    } else {
     s0+=183.0;
     s1+=1683.0;
    }
   }
  } else {
   if(i37<0.0002933115465566516){
    s0+=3.0;
   } else {
    if(i1<0.08871990442276001){
     s0+=14.0;
     s1+=124.0;
    } else {
     s0+=25.0;
     s1+=9065.0;
    }
   }
  }
 } else {
  if(i36<-0.00013780593872070312){
   s0+=438.0;
  } else {
   if(i79<-0.0005272030830383301){
    if(i49<0.003049790859222412){
     s0+=38.0;
     s1+=219.0;
    } else {
     s0+=152.0;
     s1+=59.0;
    }
   } else {
    if(i61<1.0000531673431396){
     s0+=478.0;
     s1+=46.0;
    } else {
     s0+=60.0;
     s1+=92.0;
    }
   }
  }
 }
}
if(i11<1.0016478300094604){
 if(i0<0.08566990494728088){
  if(i60<-0.0013020038604736328){
   if(i6<0.9965313076972961){
    if(i35<1.1800893545150757){
     s0+=784.0;
     s1+=60.0;
    } else {
     s0+=2181.0;
     s1+=29.0;
    }
   } else {
    if(i42<1.1831107139587402){
     s0+=1122.0;
     s1+=740.0;
    } else {
     s0+=1352.0;
     s1+=105.0;
    }
   }
  } else {
   if(i69<0.03042469173669815){
    if(i16<1.0079257488250732){
     s0+=57463.0;
     s1+=302.0;
    } else {
     s0+=213.0;
     s1+=219.0;
    }
   } else {
    if(i49<0.0026106834411621094){
     s0+=2341.0;
     s1+=603.0;
    } else {
     s0+=2823.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i6<0.9959895610809326){
   if(i64<4.170567262917757e-05){
    if(i67<0.9994407892227173){
     s0+=580.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=28.0;
    }
   } else {
    if(i4<0.09548294544219971){
     s0+=52.0;
     s1+=24.0;
    } else {
     s0+=2.0;
     s1+=67.0;
    }
   }
  } else {
   if(i62<0.00022252259077504277){
    if(i71<0.999875545501709){
     s0+=146.0;
     s1+=684.0;
    } else {
     s0+=384.0;
     s1+=121.0;
    }
   } else {
    if(i17<0.0028230007737874985){
     s0+=271.0;
     s1+=277.0;
    } else {
     s0+=182.0;
     s1+=3417.0;
    }
   }
  }
 }
} else {
 if(i6<1.0024185180664062){
  if(i1<0.1027006208896637){
   if(i65<0.14075611531734467){
    if(i3<0.000348508358001709){
     s0+=777.0;
     s1+=57.0;
    } else {
     s0+=169.0;
     s1+=105.0;
    }
   } else {
    if(i5<-2.8848648071289062e-05){
     s0+=12.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i48<0.0020966778974980116){
    if(i14<1.0011866092681885){
     s0+=40.0;
     s1+=15.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i0<0.11804389953613281){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i2<0.04957941174507141){
   if(i43<0.002048094291239977){
    if(i34<1.0544558763504028){
     s0+=1.0;
    } else {
     s1+=193.0;
    }
   } else {
    if(i3<0.0009992718696594238){
     s0+=68.0;
     s1+=8.0;
    } else {
     s0+=35.0;
     s1+=131.0;
    }
   }
  } else {
   if(i7<-0.00011488653399283066){
    if(i10<3.713369369506836e-05){
     s0+=14.0;
     s1+=452.0;
    } else {
     s0+=1.0;
     s1+=7327.0;
    }
   } else {
    if(i20<-3.635883331298828e-06){
     s0+=91.0;
     s1+=470.0;
    } else {
     s0+=10.0;
     s1+=1239.0;
    }
   }
  }
 }
}
if(i25<1.0066354274749756){
 if(i19<1.0572319030761719){
  if(i56<0.00031347566982731223){
   if(i77<-0.0016675591468811035){
    if(i3<-0.000620722770690918){
     s0+=73.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i47<-1.6648868040647358e-05){
     s0+=151.0;
     s1+=9.0;
    } else {
     s0+=46590.0;
     s1+=22.0;
    }
   }
  } else {
   if(i14<0.9943897128105164){
    if(i40<0.0012191799469292164){
     s0+=1583.0;
     s1+=23.0;
    } else {
     s0+=7261.0;
     s1+=2.0;
    }
   } else {
    if(i48<0.0012427837355062366){
     s0+=2928.0;
     s1+=313.0;
    } else {
     s0+=243.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i6<1.0009489059448242){
   if(i2<0.07552385330200195){
    if(i33<1.1013743877410889){
     s0+=1324.0;
     s1+=697.0;
    } else {
     s0+=7653.0;
     s1+=336.0;
    }
   } else {
    if(i36<-0.00013816356658935547){
     s0+=285.0;
     s1+=36.0;
    } else {
     s0+=569.0;
     s1+=1662.0;
    }
   }
  } else {
   if(i58<0.002099083736538887){
    if(i7<-7.045199890853837e-05){
     s0+=109.0;
     s1+=569.0;
    } else {
     s0+=316.0;
     s1+=369.0;
    }
   } else {
    if(i10<-0.003021717071533203){
     s0+=15.0;
     s1+=31.0;
    } else {
     s0+=54.0;
     s1+=1644.0;
    }
   }
  }
 }
} else {
 if(i24<0.023719191551208496){
  if(i3<0.00046890974044799805){
   if(i0<0.07606983184814453){
    if(i7<-3.877588460454717e-05){
     s0+=93.0;
     s1+=109.0;
    } else {
     s0+=1027.0;
     s1+=30.0;
    }
   } else {
    if(i34<1.152409315109253){
     s0+=69.0;
     s1+=548.0;
    } else {
     s0+=302.0;
     s1+=23.0;
    }
   }
  } else {
   if(i17<0.0023749331012368202){
    if(i47<-1.4778223885514308e-05){
     s0+=4.0;
     s1+=172.0;
    } else {
     s0+=159.0;
    }
   } else {
    if(i28<1.0014315843582153){
     s0+=28.0;
     s1+=5.0;
    } else {
     s0+=39.0;
     s1+=2120.0;
    }
   }
  }
 } else {
  if(i17<0.00316638988442719){
   if(i19<1.2016124725341797){
    if(i1<0.07385653257369995){
     s0+=74.0;
     s1+=26.0;
    } else {
     s0+=17.0;
     s1+=164.0;
    }
   } else {
    if(i62<0.00032933574402704835){
     s0+=177.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=36.0;
    }
   }
  } else {
   if(i47<1.3169864132578368e-06){
    if(i12<0.9979548454284668){
     s0+=13.0;
     s1+=412.0;
    } else {
     s0+=3.0;
     s1+=7295.0;
    }
   } else {
    if(i34<1.1781821250915527){
     s1+=1.0;
    } else {
     s0+=88.0;
    }
   }
  }
 }
}
if(i0<0.08584877848625183){
 if(i6<1.0024793148040771){
  if(i24<0.016617346554994583){
   if(i56<0.0003023870231118053){
    if(i9<1.0581047534942627){
     s0+=46066.0;
     s1+=71.0;
    } else {
     s0+=55.0;
     s1+=19.0;
    }
   } else {
    if(i37<0.0010786921484395862){
     s0+=4273.0;
     s1+=565.0;
    } else {
     s0+=8634.0;
     s1+=139.0;
    }
   }
  } else {
   if(i6<0.9971604347229004){
    if(i49<0.0014165639877319336){
     s0+=2510.0;
     s1+=105.0;
    } else {
     s0+=4637.0;
     s1+=11.0;
    }
   } else {
    if(i55<0.00741677638143301){
     s0+=2175.0;
     s1+=712.0;
    } else {
     s0+=530.0;
     s1+=590.0;
    }
   }
  }
 } else {
  if(i48<0.0009006377658806741){
   if(i72<-5.55674523639027e-06){
    s1+=38.0;
   } else {
    if(i58<0.0036994880065321922){
     s0+=159.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i28<0.9974277019500732){
    if(i58<0.0023777754977345467){
     s0+=47.0;
     s1+=13.0;
    } else {
     s0+=30.0;
     s1+=190.0;
    }
   } else {
    if(i34<1.2102389335632324){
     s0+=4.0;
     s1+=669.0;
    } else {
     s0+=28.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i12<0.9947360754013062){
  if(i47<-1.7997190298046917e-06){
   if(i9<1.1150976419448853){
    if(i40<0.004963528830558062){
     s0+=39.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    s1+=159.0;
   }
  } else {
   if(i37<0.006183123216032982){
    if(i3<-0.0006090700626373291){
     s0+=487.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   } else {
    if(i31<0.999739408493042){
     s0+=6.0;
    } else {
     s1+=21.0;
    }
   }
  }
 } else {
  if(i3<0.0005391836166381836){
   if(i17<0.0017367787659168243){
    if(i39<0.0407719612121582){
     s0+=49.0;
     s1+=143.0;
    } else {
     s0+=555.0;
     s1+=109.0;
    }
   } else {
    if(i50<0.016704171895980835){
     s0+=177.0;
     s1+=2178.0;
    } else {
     s0+=434.0;
     s1+=840.0;
    }
   }
  } else {
   if(i20<6.258487701416016e-06){
    if(i1<0.13177666068077087){
     s0+=74.0;
     s1+=214.0;
    } else {
     s0+=14.0;
     s1+=904.0;
    }
   } else {
    if(i48<0.0010572461178526282){
     s0+=35.0;
     s1+=959.0;
    } else {
     s0+=3.0;
     s1+=8509.0;
    }
   }
  }
 }
}
if(i22<1.627206802368164e-05){
 if(i0<0.08408460021018982){
  if(i73<0.0007803354528732598){
   if(i18<1.0072929859161377){
    if(i1<0.0765371322631836){
     s0+=58433.0;
     s1+=489.0;
    } else {
     s0+=242.0;
     s1+=84.0;
    }
   } else {
    if(i40<0.001635709311813116){
     s0+=503.0;
     s1+=367.0;
    } else {
     s0+=1180.0;
     s1+=31.0;
    }
   }
  } else {
   if(i42<1.185624122619629){
    if(i7<5.2583682190743275e-06){
     s0+=583.0;
     s1+=763.0;
    } else {
     s0+=1683.0;
     s1+=89.0;
    }
   } else {
    if(i2<0.06465300917625427){
     s0+=4463.0;
     s1+=70.0;
    } else {
     s0+=143.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i71<0.9971526861190796){
   s0+=345.0;
  } else {
   if(i11<0.998518705368042){
    if(i61<0.9997957944869995){
     s0+=313.0;
     s1+=6.0;
    } else {
     s0+=52.0;
     s1+=25.0;
    }
   } else {
    if(i54<0.03927499055862427){
     s0+=188.0;
     s1+=2520.0;
    } else {
     s0+=724.0;
     s1+=1520.0;
    }
   }
  }
 }
} else {
 if(i7<-6.647764530498534e-05){
  if(i2<0.06331902742385864){
   if(i3<0.000486910343170166){
    if(i55<0.009051572531461716){
     s0+=360.0;
    } else {
     s0+=53.0;
     s1+=39.0;
    }
   } else {
    if(i59<-0.008859323337674141){
     s0+=63.0;
     s1+=5.0;
    } else {
     s0+=43.0;
     s1+=502.0;
    }
   }
  } else {
   if(i34<1.0585076808929443){
    s0+=35.0;
   } else {
    if(i6<1.002433180809021){
     s0+=120.0;
     s1+=423.0;
    } else {
     s0+=56.0;
     s1+=9170.0;
    }
   }
  }
 } else {
  if(i1<0.08529368042945862){
   if(i49<-0.0012156963348388672){
    if(i14<0.9999572038650513){
     s0+=115.0;
     s1+=54.0;
    } else {
     s0+=22.0;
     s1+=169.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s0+=333.0;
     s1+=172.0;
    } else {
     s0+=862.0;
     s1+=20.0;
    }
   }
  } else {
   if(i38<0.0023715649731457233){
    if(i62<0.00019930253620259464){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=383.0;
    }
   } else {
    if(i1<0.13190019130706787){
     s0+=130.0;
     s1+=44.0;
    } else {
     s0+=22.0;
     s1+=198.0;
    }
   }
  }
 }
}
if(i18<1.0078692436218262){
 if(i7<-4.97650180477649e-05){
  if(i2<0.08148184418678284){
   if(i11<1.001105785369873){
    if(i55<0.03424692898988724){
     s0+=1379.0;
     s1+=75.0;
    } else {
     s0+=15.0;
     s1+=29.0;
    }
   } else {
    if(i50<0.0024060308933258057){
     s0+=225.0;
     s1+=750.0;
    } else {
     s0+=408.0;
     s1+=14.0;
    }
   }
  } else {
   if(i73<0.0007930041174404323){
    if(i54<0.05671766400337219){
     s0+=7.0;
     s1+=125.0;
    } else {
     s0+=72.0;
     s1+=30.0;
    }
   } else {
    if(i75<0.00033681350760161877){
     s0+=13.0;
     s1+=2100.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<0.08111366629600525){
   if(i0<0.07844924926757812){
    if(i19<1.0451585054397583){
     s0+=53220.0;
     s1+=206.0;
    } else {
     s0+=11658.0;
     s1+=1251.0;
    }
   } else {
    if(i11<0.9986481666564941){
     s0+=528.0;
     s1+=3.0;
    } else {
     s0+=393.0;
     s1+=587.0;
    }
   }
  } else {
   if(i7<-3.6675319279311225e-06){
    if(i26<0.9981428384780884){
     s0+=13.0;
     s1+=301.0;
    } else {
     s0+=174.0;
     s1+=368.0;
    }
   } else {
    if(i43<0.003877317998558283){
     s0+=307.0;
     s1+=26.0;
    } else {
     s0+=39.0;
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i15<1.0100226402282715){
  if(i7<-3.352927524247207e-05){
   if(i7<-4.209495455143042e-05){
    if(i2<0.0776180624961853){
     s0+=193.0;
     s1+=288.0;
    } else {
     s0+=115.0;
     s1+=1945.0;
    }
   } else {
    if(i13<0.0002646446228027344){
     s0+=33.0;
     s1+=236.0;
    } else {
     s0+=205.0;
     s1+=85.0;
    }
   }
  } else {
   if(i34<1.1005322933197021){
    if(i17<0.001644766773097217){
     s0+=413.0;
     s1+=24.0;
    } else {
     s0+=27.0;
     s1+=297.0;
    }
   } else {
    if(i40<0.007728006225079298){
     s0+=1459.0;
     s1+=61.0;
    } else {
     s0+=168.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i1<0.058560341596603394){
   if(i74<1.0023999214172363){
    if(i22<1.8775463104248047e-05){
     s0+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i33<1.1386182308197021){
     s1+=2.0;
    } else {
     s0+=65.0;
    }
   }
  } else {
   if(i38<0.000580477062612772){
    if(i62<0.00025727954925969243){
     s0+=18.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i0<0.08153027296066284){
     s0+=26.0;
     s1+=114.0;
    } else {
     s0+=8.0;
     s1+=7952.0;
    }
   }
  }
 }
}
if(i0<0.08355346322059631){
 if(i19<1.0485899448394775){
  if(i74<0.9724506139755249){
   if(i15<0.9850637912750244){
    if(i6<0.9954203367233276){
     s0+=699.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.00040133862057700753){
     s0+=291.0;
     s1+=8.0;
    } else {
     s0+=44.0;
     s1+=84.0;
    }
   }
  } else {
   if(i58<0.001647579250857234){
    if(i60<-0.0013937950134277344){
     s0+=406.0;
     s1+=72.0;
    } else {
     s0+=53736.0;
     s1+=118.0;
    }
   } else {
    if(i6<1.0006229877471924){
     s0+=855.0;
     s1+=63.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i14<1.0053043365478516){
   if(i40<0.0016208033775910735){
    if(i45<0.011427847668528557){
     s0+=4041.0;
     s1+=714.0;
    } else {
     s0+=246.0;
     s1+=757.0;
    }
   } else {
    if(i13<0.0007624030113220215){
     s0+=8276.0;
     s1+=356.0;
    } else {
     s0+=307.0;
     s1+=235.0;
    }
   }
  } else {
   if(i7<-5.853642142028548e-05){
    if(i5<1.1712312698364258e-05){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=566.0;
    }
   } else {
    if(i34<1.1056361198425293){
     s1+=61.0;
    } else {
     s0+=170.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i71<0.9970192909240723){
  s0+=395.0;
 } else {
  if(i11<0.9985270500183105){
   if(i72<-3.066828412556788e-06){
    if(i51<-0.00011028362496290356){
     s1+=15.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i47<-9.801444321055897e-06){
     s1+=4.0;
    } else {
     s0+=329.0;
    }
   }
  } else {
   if(i12<1.0030226707458496){
    if(i53<0.02675837278366089){
     s0+=314.0;
     s1+=3098.0;
    } else {
     s0+=862.0;
     s1+=1391.0;
    }
   } else {
    if(i6<1.001692295074463){
     s0+=90.0;
     s1+=407.0;
    } else {
     s0+=47.0;
     s1+=9110.0;
    }
   }
  }
 }
}
if(i3<0.000546872615814209){
 if(i30<0.00031641291570849717){
  if(i70<-0.004633128643035889){
   if(i13<-0.00014412403106689453){
    s0+=3.0;
   } else {
    s1+=29.0;
   }
  } else {
   if(i16<1.010897159576416){
    if(i26<1.0144118070602417){
     s0+=53810.0;
     s1+=311.0;
    } else {
     s0+=51.0;
     s1+=45.0;
    }
   } else {
    if(i56<0.0008630447555333376){
     s1+=76.0;
    } else {
     s0+=12.0;
    }
   }
  }
 } else {
  if(i14<0.9938193559646606){
   if(i6<0.9969092607498169){
    if(i51<-0.0007793536060489714){
     s0+=68.0;
     s1+=72.0;
    } else {
     s0+=7817.0;
     s1+=176.0;
    }
   } else {
    if(i27<0.007108177058398724){
     s0+=1058.0;
     s1+=249.0;
    } else {
     s0+=57.0;
     s1+=210.0;
    }
   }
  } else {
   if(i43<0.0002838091750163585){
    s0+=2114.0;
   } else {
    if(i34<1.1084140539169312){
     s0+=1140.0;
     s1+=2449.0;
    } else {
     s0+=4355.0;
     s1+=1891.0;
    }
   }
  }
 }
} else {
 if(i7<-4.405036452226341e-05){
  if(i6<1.0037964582443237){
   if(i76<-4.155349870416103e-06){
    if(i36<0.0002474784851074219){
     s0+=50.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i31<1.0023105144500732){
     s0+=96.0;
     s1+=1411.0;
    } else {
     s0+=34.0;
     s1+=16.0;
    }
   }
  } else {
   if(i0<0.035122036933898926){
    if(i36<0.00017830729484558105){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=104.0;
    }
   } else {
    if(i1<0.12586697936058044){
     s0+=41.0;
     s1+=1497.0;
    } else {
     s0+=6.0;
     s1+=8364.0;
    }
   }
  }
 } else {
  if(i22<2.7358531951904297e-05){
   if(i20<3.460049629211426e-05){
    s1+=48.0;
   } else {
    if(i48<0.0019273036159574986){
     s0+=299.0;
     s1+=4.0;
    } else {
     s0+=49.0;
     s1+=42.0;
    }
   }
  } else {
   if(i67<1.0013625621795654){
    s0+=8.0;
   } else {
    if(i7<-4.3696763896150514e-05){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=147.0;
    }
   }
  }
 }
}
if(i23<1.0437428951263428){
 if(i1<0.07829615473747253){
  if(i12<1.0029321908950806){
   if(i60<-0.0012879669666290283){
    if(i4<0.03756207227706909){
     s0+=4366.0;
     s1+=495.0;
    } else {
     s0+=734.0;
     s1+=373.0;
    }
   } else {
    if(i19<1.0486011505126953){
     s0+=53619.0;
     s1+=83.0;
    } else {
     s0+=7525.0;
     s1+=677.0;
    }
   }
  } else {
   if(i6<1.001776933670044){
    if(i54<-0.026979058980941772){
     s0+=95.0;
     s1+=63.0;
    } else {
     s0+=740.0;
     s1+=14.0;
    }
   } else {
    if(i72<-5.32487865712028e-06){
     s0+=43.0;
     s1+=629.0;
    } else {
     s0+=95.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i39<0.047968894243240356){
   if(i3<-0.0008642077445983887){
    if(i35<1.476589322090149){
     s0+=72.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=17.0;
    }
   } else {
    if(i34<1.0533337593078613){
     s0+=9.0;
    } else {
     s0+=31.0;
     s1+=2537.0;
    }
   }
  } else {
   if(i7<-6.702322025375906e-06){
    if(i70<-0.00042369961738586426){
     s0+=18.0;
     s1+=147.0;
    } else {
     s0+=130.0;
     s1+=91.0;
    }
   } else {
    if(i18<0.9497289657592773){
     s1+=2.0;
    } else {
     s0+=171.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i35<1.3724634647369385){
  if(i2<0.09731084108352661){
   if(i57<-1.7541889974381775e-05){
    if(i36<0.00014510750770568848){
     s0+=36.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=249.0;
    }
   } else {
    if(i20<8.571147918701172e-05){
     s0+=2134.0;
     s1+=406.0;
    } else {
     s0+=102.0;
     s1+=221.0;
    }
   }
  } else {
   if(i78<0.0012470127549022436){
    if(i20<2.86102294921875e-05){
     s0+=179.0;
     s1+=462.0;
    } else {
     s0+=24.0;
     s1+=1815.0;
    }
   } else {
    if(i37<0.005352937616407871){
     s0+=619.0;
     s1+=280.0;
    } else {
     s0+=66.0;
     s1+=733.0;
    }
   }
  }
 } else {
  if(i0<0.12137985229492188){
   if(i9<1.124587059020996){
    if(i20<6.216764450073242e-05){
     s0+=364.0;
     s1+=34.0;
    } else {
     s1+=47.0;
    }
   } else {
    if(i47<-1.179822447738843e-05){
     s1+=204.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i7<-2.2986572730587795e-05){
    if(i10<0.00015026330947875977){
     s0+=26.0;
     s1+=1198.0;
    } else {
     s1+=6199.0;
    }
   } else {
    if(i16<0.9979609251022339){
     s1+=5.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i15<1.005561351776123){
 if(i1<0.08414876461029053){
  if(i5<4.1812658309936523e-05){
   if(i73<0.0006775606307201087){
    if(i1<0.06984469294548035){
     s0+=58724.0;
     s1+=533.0;
    } else {
     s0+=1377.0;
     s1+=295.0;
    }
   } else {
    if(i36<-4.3451786041259766e-05){
     s0+=4088.0;
     s1+=139.0;
    } else {
     s0+=4211.0;
     s1+=1036.0;
    }
   }
  } else {
   if(i71<0.9976742267608643){
    if(i49<-0.018145978450775146){
     s1+=1.0;
    } else {
     s0+=226.0;
    }
   } else {
    if(i58<0.0050418926402926445){
     s0+=81.0;
     s1+=148.0;
    } else {
     s0+=12.0;
     s1+=253.0;
    }
   }
  }
 } else {
  if(i6<0.9963688254356384){
   if(i7<-1.837456329667475e-05){
    if(i20<-9.420514106750488e-05){
     s0+=15.0;
     s1+=114.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i67<0.9995050430297852){
     s0+=377.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=14.0;
    }
   }
  } else {
   if(i17<0.0035792989656329155){
    if(i74<1.0255043506622314){
     s0+=172.0;
     s1+=758.0;
    } else {
     s0+=592.0;
     s1+=139.0;
    }
   } else {
    if(i24<0.026267964392900467){
     s0+=161.0;
     s1+=559.0;
    } else {
     s0+=73.0;
     s1+=2769.0;
    }
   }
  }
 }
} else {
 if(i1<0.06429246068000793){
  if(i47<-1.4610423932026606e-05){
   if(i10<0.00012558698654174805){
    if(i62<0.0007665689336135983){
     s0+=28.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=287.0;
   }
  } else {
   if(i65<0.004897191189229488){
    s1+=9.0;
   } else {
    if(i37<0.001171391922980547){
     s0+=16.0;
     s1+=13.0;
    } else {
     s0+=622.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i1<0.07960036396980286){
   if(i50<0.006232261657714844){
    if(i46<0.05381244421005249){
     s0+=7.0;
     s1+=295.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i47<-1.4216507224773522e-05){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=69.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<0.0001093745231628418){
    if(i48<0.0008475014474242926){
     s0+=129.0;
     s1+=20.0;
    } else {
     s0+=14.0;
     s1+=660.0;
    }
   } else {
    if(i28<1.0027891397476196){
     s0+=8.0;
     s1+=282.0;
    } else {
     s0+=7.0;
     s1+=8837.0;
    }
   }
  }
 }
}
if(i3<0.0005663037300109863){
 if(i27<0.00032319044112227857){
  if(i9<1.0451608896255493){
   if(i58<0.0018990279641002417){
    if(i32<1.0136464834213257){
     s0+=54500.0;
     s1+=317.0;
    } else {
     s0+=6.0;
     s1+=20.0;
    }
   } else {
    if(i61<0.9998096823692322){
     s0+=71.0;
     s1+=89.0;
    } else {
     s0+=306.0;
     s1+=3.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i7<-2.1719548385590315e-05){
     s0+=76.0;
     s1+=367.0;
    } else {
     s0+=836.0;
     s1+=123.0;
    }
   } else {
    if(i1<0.08434635400772095){
     s0+=1773.0;
     s1+=19.0;
    } else {
     s0+=12.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i4<0.07072916626930237){
   if(i51<-3.8519508962053806e-05){
    if(i1<0.07524541020393372){
     s0+=4016.0;
     s1+=741.0;
    } else {
     s0+=64.0;
     s1+=566.0;
    }
   } else {
    if(i59<-0.00797745306044817){
     s0+=4833.0;
     s1+=70.0;
    } else {
     s0+=2576.0;
     s1+=494.0;
    }
   }
  } else {
   if(i11<0.9985270500183105){
    if(i9<1.398578405380249){
     s0+=396.0;
     s1+=13.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i39<0.041623055934906006){
     s0+=79.0;
     s1+=1307.0;
    } else {
     s0+=1242.0;
     s1+=1387.0;
    }
   }
  }
 }
} else {
 if(i0<0.06272327899932861){
  if(i17<0.0036592232063412666){
   if(i6<1.0045082569122314){
    if(i7<-4.953697498422116e-05){
     s0+=13.0;
     s1+=16.0;
    } else {
     s0+=197.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i20<-0.00012028217315673828){
    if(i29<0.9856914281845093){
     s0+=37.0;
     s1+=95.0;
    } else {
     s0+=46.0;
     s1+=7.0;
    }
   } else {
    if(i63<0.0006886422634124756){
     s0+=13.0;
     s1+=337.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i61<0.9986217021942139){
   s0+=15.0;
  } else {
   if(i1<0.13856518268585205){
    if(i54<0.05895063281059265){
     s0+=78.0;
     s1+=1834.0;
    } else {
     s0+=81.0;
     s1+=38.0;
    }
   } else {
    if(i51<-0.00038541562389582396){
     s0+=1.0;
     s1+=7731.0;
    } else {
     s0+=16.0;
     s1+=1296.0;
    }
   }
  }
 }
}
if(i9<1.0576403141021729){
 if(i1<0.0810140073299408){
  if(i60<-0.0013129115104675293){
   if(i9<1.0398828983306885){
    if(i38<0.001367727993056178){
     s0+=1505.0;
     s1+=318.0;
    } else {
     s0+=2482.0;
     s1+=28.0;
    }
   } else {
    if(i15<0.9854007959365845){
     s0+=269.0;
     s1+=12.0;
    } else {
     s0+=271.0;
     s1+=368.0;
    }
   }
  } else {
   if(i21<1.0083997249603271){
    if(i12<1.0027837753295898){
     s0+=59252.0;
     s1+=451.0;
    } else {
     s0+=396.0;
     s1+=107.0;
    }
   } else {
    if(i40<0.0012827127939090133){
     s0+=56.0;
     s1+=199.0;
    } else {
     s0+=232.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i42<1.0670123100280762){
   if(i67<0.9997798204421997){
    s0+=175.0;
   } else {
    if(i64<4.5843612497264985e-06){
     s0+=18.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   }
  } else {
   if(i14<0.9939890503883362){
    if(i70<-0.0011202096939086914){
     s0+=7.0;
     s1+=25.0;
    } else {
     s0+=120.0;
     s1+=8.0;
    }
   } else {
    if(i56<0.00022870703833177686){
     s0+=16.0;
    } else {
     s0+=52.0;
     s1+=1016.0;
    }
   }
  }
 }
} else {
 if(i20<0.00010508298873901367){
  if(i65<0.0985604077577591){
   if(i5<3.153085708618164e-05){
    if(i7<-1.3831800970365293e-05){
     s0+=1938.0;
     s1+=1546.0;
    } else {
     s0+=3542.0;
     s1+=399.0;
    }
   } else {
    if(i45<0.022053010761737823){
     s0+=291.0;
     s1+=294.0;
    } else {
     s0+=26.0;
     s1+=576.0;
    }
   }
  } else {
   if(i9<1.063843011856079){
    if(i78<0.007101141847670078){
     s0+=92.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i47<1.228697499300324e-07){
     s0+=98.0;
     s1+=2118.0;
    } else {
     s0+=108.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i3<0.0009312033653259277){
   if(i0<0.07542645931243896){
    if(i18<1.015038013458252){
     s0+=53.0;
     s1+=58.0;
    } else {
     s0+=116.0;
     s1+=2.0;
    }
   } else {
    if(i7<-4.317488128435798e-05){
     s0+=2.0;
     s1+=966.0;
    } else {
     s0+=49.0;
     s1+=118.0;
    }
   }
  } else {
   s1+=8438.0;
  }
 }
}
if(i1<0.084678053855896){
 if(i6<1.0024913549423218){
  if(i33<1.0856719017028809){
   s0+=38258.0;
  } else {
   if(i1<0.06617730855941772){
    if(i74<0.9891507029533386){
     s0+=5253.0;
     s1+=918.0;
    } else {
     s0+=23702.0;
     s1+=536.0;
    }
   } else {
    if(i34<1.1040328741073608){
     s0+=722.0;
     s1+=569.0;
    } else {
     s0+=1269.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i37<0.0024557739961892366){
   if(i45<0.0015554078854620457){
    if(i73<0.0002679421450011432){
     s0+=3.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i54<0.012179255485534668){
     s1+=598.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   }
  } else {
   if(i13<0.0005913972854614258){
    s0+=166.0;
   } else {
    if(i55<0.015703432261943817){
     s0+=97.0;
     s1+=104.0;
    } else {
     s0+=3.0;
     s1+=231.0;
    }
   }
  }
 }
} else {
 if(i22<-1.621246337890625e-05){
  if(i38<0.0017798126209527254){
   s0+=329.0;
  } else {
   if(i27<0.0014359316555783153){
    s0+=20.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i20<6.490945816040039e-05){
   if(i53<0.03251275420188904){
    if(i57<7.236829333123751e-06){
     s0+=60.0;
     s1+=17.0;
    } else {
     s0+=204.0;
     s1+=2980.0;
    }
   } else {
    if(i17<0.004804608412086964){
     s0+=652.0;
     s1+=255.0;
    } else {
     s0+=143.0;
     s1+=780.0;
    }
   }
  } else {
   if(i36<-0.0005347728729248047){
    s0+=14.0;
   } else {
    if(i10<0.0014032721519470215){
     s0+=93.0;
     s1+=1754.0;
    } else {
     s1+=8307.0;
    }
   }
  }
 }
}
if(i4<0.07131588459014893){
 if(i9<1.0446083545684814){
  if(i60<-0.001322627067565918){
   if(i33<1.2392117977142334){
    if(i42<1.061751127243042){
     s0+=1105.0;
     s1+=3.0;
    } else {
     s0+=552.0;
     s1+=505.0;
    }
   } else {
    if(i6<1.0030241012573242){
     s0+=2552.0;
     s1+=37.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i12<1.0033626556396484){
    if(i69<0.032534971833229065){
     s0+=54004.0;
     s1+=169.0;
    } else {
     s0+=3219.0;
     s1+=189.0;
    }
   } else {
    if(i5<2.562999725341797e-05){
     s0+=151.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i7<-4.3019401346100494e-05){
   if(i14<1.0012452602386475){
    if(i1<0.08361798524856567){
     s0+=671.0;
     s1+=333.0;
    } else {
     s0+=1.0;
     s1+=168.0;
    }
   } else {
    if(i34<1.2227340936660767){
     s0+=5.0;
     s1+=1378.0;
    } else {
     s0+=128.0;
     s1+=442.0;
    }
   }
  } else {
   if(i1<0.0783689022064209){
    if(i36<-3.55839729309082e-05){
     s0+=2158.0;
     s1+=48.0;
    } else {
     s0+=4172.0;
     s1+=845.0;
    }
   } else {
    if(i64<1.950776277226396e-05){
     s0+=30.0;
     s1+=461.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i7<-2.541973299230449e-05){
  if(i0<0.12466564774513245){
   if(i49<0.004370927810668945){
    if(i54<0.050117433071136475){
     s0+=50.0;
     s1+=1192.0;
    } else {
     s0+=62.0;
     s1+=62.0;
    }
   } else {
    if(i6<1.0056800842285156){
     s0+=373.0;
     s1+=31.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i15<1.0063438415527344){
    if(i52<0.0002167368511436507){
     s0+=73.0;
     s1+=332.0;
    } else {
     s0+=43.0;
     s1+=2379.0;
    }
   } else {
    if(i37<0.0021908872295171022){
     s0+=1.0;
     s1+=374.0;
    } else {
     s1+=7658.0;
    }
   }
  }
 } else {
  if(i31<0.9992939233779907){
   if(i39<0.021798044443130493){
    if(i12<0.9951244592666626){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=456.0;
   }
  } else {
   if(i26<1.0014252662658691){
    if(i44<0.05497634410858154){
     s0+=11.0;
     s1+=182.0;
    } else {
     s0+=68.0;
     s1+=111.0;
    }
   } else {
    if(i4<0.193059504032135){
     s0+=829.0;
     s1+=217.0;
    } else {
     s0+=95.0;
     s1+=148.0;
    }
   }
  }
 }
}
if(i1<0.0806320309638977){
 if(i13<0.000554502010345459){
  if(i60<-0.0013585686683654785){
   if(i77<-0.005604356527328491){
    if(i5<2.205371856689453e-05){
     s0+=2605.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i61<0.9999637603759766){
     s0+=1695.0;
     s1+=734.0;
    } else {
     s0+=1310.0;
     s1+=102.0;
    }
   }
  } else {
   if(i21<1.0072379112243652){
    if(i27<0.0003015560796484351){
     s0+=54874.0;
     s1+=214.0;
    } else {
     s0+=5841.0;
     s1+=403.0;
    }
   } else {
    if(i5<1.150369644165039e-05){
     s0+=1731.0;
     s1+=182.0;
    } else {
     s0+=561.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i70<0.0027244091033935547){
   if(i68<0.09313447028398514){
    if(i31<1.0004328489303589){
     s0+=88.0;
    } else {
     s0+=80.0;
     s1+=697.0;
    }
   } else {
    if(i58<0.008514843881130219){
     s0+=330.0;
     s1+=30.0;
    } else {
     s0+=39.0;
     s1+=183.0;
    }
   }
  } else {
   if(i40<0.0008492370252497494){
    s1+=8.0;
   } else {
    if(i75<0.00017618320998735726){
     s0+=312.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i43<0.006072480697184801){
  if(i31<0.9989756345748901){
   if(i36<-0.0002544522285461426){
    s0+=401.0;
   } else {
    if(i47<-8.171786248567514e-06){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i7<-1.3541021871787962e-05){
    if(i49<0.004671573638916016){
     s0+=127.0;
     s1+=3398.0;
    } else {
     s0+=390.0;
     s1+=694.0;
    }
   } else {
    if(i44<0.050781041383743286){
     s0+=22.0;
     s1+=190.0;
    } else {
     s0+=678.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i7<2.0863681129412726e-06){
   if(i17<0.0016182645922526717){
    if(i11<1.0012049674987793){
     s0+=16.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i45<0.01686345785856247){
     s0+=65.0;
     s1+=534.0;
    } else {
     s0+=53.0;
     s1+=9066.0;
    }
   }
  } else {
   if(i23<1.032347321510315){
    s1+=2.0;
   } else {
    s0+=15.0;
   }
  }
 }
}
if(i0<0.08729004859924316){
 if(i5<3.88026237487793e-05){
  if(i19<1.0451585054397583){
   if(i19<1.0424679517745972){
    if(i60<-0.0014193058013916016){
     s0+=1316.0;
     s1+=63.0;
    } else {
     s0+=49342.0;
     s1+=50.0;
    }
   } else {
    if(i21<0.9890245199203491){
     s0+=325.0;
     s1+=56.0;
    } else {
     s0+=2701.0;
     s1+=34.0;
    }
   }
  } else {
   if(i33<1.1013743877410889){
    if(i77<-0.0006984472274780273){
     s0+=298.0;
     s1+=714.0;
    } else {
     s0+=3186.0;
     s1+=800.0;
    }
   } else {
    if(i7<-3.853336602333002e-05){
     s0+=2141.0;
     s1+=343.0;
    } else {
     s0+=9458.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i42<1.0633710622787476){
   s0+=241.0;
  } else {
   if(i33<1.2392117977142334){
    s1+=666.0;
   } else {
    if(i73<0.0007565352134406567){
     s0+=191.0;
     s1+=30.0;
    } else {
     s0+=81.0;
     s1+=363.0;
    }
   }
  }
 }
} else {
 if(i61<0.9993880987167358){
  s0+=339.0;
 } else {
  if(i11<0.9985154867172241){
   if(i13<-0.0003844797611236572){
    if(i61<0.9998186230659485){
     s0+=285.0;
    } else {
     s0+=14.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.07299426198005676){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i22<1.9848346710205078e-05){
    if(i44<0.059781670570373535){
     s0+=48.0;
     s1+=2621.0;
    } else {
     s0+=840.0;
     s1+=1862.0;
    }
   } else {
    if(i6<1.0023179054260254){
     s0+=159.0;
     s1+=452.0;
    } else {
     s0+=68.0;
     s1+=8928.0;
    }
   }
  }
 }
}
if(i16<1.0081671476364136){
 if(i12<1.0031821727752686){
  if(i56<0.00038227683398872614){
   if(i77<-0.0018795430660247803){
    if(i10<-0.0012374520301818848){
     s0+=48.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i28<1.0052082538604736){
     s0+=48661.0;
     s1+=122.0;
    } else {
     s0+=560.0;
     s1+=54.0;
    }
   }
  } else {
   if(i9<1.0398929119110107){
    if(i6<1.0007848739624023){
     s0+=12019.0;
     s1+=494.0;
    } else {
     s0+=57.0;
     s1+=83.0;
    }
   } else {
    if(i62<0.0017143434379249811){
     s0+=7445.0;
     s1+=2691.0;
    } else {
     s0+=13.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i1<0.05760931968688965){
   if(i9<1.0725321769714355){
    if(i3<0.0005675554275512695){
     s0+=684.0;
     s1+=11.0;
    } else {
     s0+=37.0;
     s1+=67.0;
    }
   } else {
    if(i54<-0.03776240348815918){
     s0+=29.0;
     s1+=118.0;
    } else {
     s0+=61.0;
     s1+=10.0;
    }
   }
  } else {
   if(i49<0.003284066915512085){
    if(i0<0.08053520321846008){
     s0+=21.0;
     s1+=207.0;
    } else {
     s0+=6.0;
     s1+=1356.0;
    }
   } else {
    if(i24<0.04342816770076752){
     s0+=164.0;
     s1+=130.0;
    } else {
     s0+=1.0;
     s1+=524.0;
    }
   }
  }
 }
} else {
 if(i7<-4.210587576380931e-05){
  if(i20<6.258487701416016e-06){
   if(i19<1.1239211559295654){
    if(i26<1.0486326217651367){
     s0+=43.0;
     s1+=145.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i34<1.2295559644699097){
     s0+=8.0;
     s1+=194.0;
    } else {
     s1+=344.0;
    }
   }
  } else {
   if(i0<0.06217551231384277){
    if(i18<1.015315055847168){
     s0+=16.0;
     s1+=219.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   } else {
    if(i11<0.9985032677650452){
     s0+=4.0;
    } else {
     s0+=11.0;
     s1+=9236.0;
    }
   }
  }
 } else {
  if(i11<1.000044584274292){
   if(i46<0.02627161145210266){
    if(i2<0.029928356409072876){
     s0+=101.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=21.0;
    }
   } else {
    if(i37<0.005277782678604126){
     s0+=180.0;
     s1+=224.0;
    } else {
     s0+=6.0;
     s1+=195.0;
    }
   }
  } else {
   if(i37<0.0012253632303327322){
    if(i11<1.0001788139343262){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=127.0;
    }
   } else {
    if(i62<0.0005776783218607306){
     s0+=912.0;
     s1+=81.0;
    } else {
     s0+=4.0;
     s1+=82.0;
    }
   }
  }
 }
}
if(i0<0.08554530143737793){
 if(i13<0.0005838274955749512){
  if(i2<0.06600281596183777){
   if(i30<0.00028137461049482226){
    if(i25<1.0075058937072754){
     s0+=51197.0;
     s1+=163.0;
    } else {
     s0+=239.0;
     s1+=83.0;
    }
   } else {
    if(i40<0.0016375385457649827){
     s0+=4982.0;
     s1+=1102.0;
    } else {
     s0+=10041.0;
     s1+=207.0;
    }
   }
  } else {
   if(i11<0.9986259937286377){
    if(i6<0.9972977042198181){
     s0+=750.0;
     s1+=5.0;
    } else {
     s0+=41.0;
     s1+=9.0;
    }
   } else {
    if(i44<0.03946402668952942){
     s0+=48.0;
     s1+=469.0;
    } else {
     s0+=1225.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i71<1.0021698474884033){
   if(i15<1.0004246234893799){
    if(i5<6.145238876342773e-05){
     s0+=238.0;
     s1+=94.0;
    } else {
     s0+=41.0;
     s1+=160.0;
    }
   } else {
    if(i40<0.00031315884552896023){
     s0+=17.0;
    } else {
     s0+=3.0;
     s1+=650.0;
    }
   }
  } else {
   if(i55<0.015779653564095497){
    if(i6<1.004730224609375){
     s0+=442.0;
     s1+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i61<1.0007635354995728){
     s0+=4.0;
     s1+=47.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i22<-1.621246337890625e-05){
  if(i36<-0.0001291334629058838){
   if(i3<-0.0004943609237670898){
    s0+=557.0;
   } else {
    if(i29<1.0067780017852783){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i21<0.9898993968963623){
    if(i46<0.030533790588378906){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i70<0.014344543218612671){
     s0+=19.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<1.0018045902252197){
   if(i24<0.021521087735891342){
    if(i56<0.001406637136824429){
     s0+=145.0;
     s1+=482.0;
    } else {
     s0+=606.0;
     s1+=241.0;
    }
   } else {
    if(i1<0.11021235585212708){
     s0+=189.0;
     s1+=508.0;
    } else {
     s0+=151.0;
     s1+=1917.0;
    }
   }
  } else {
   if(i3<0.0008353590965270996){
    if(i61<0.9999417066574097){
     s0+=1.0;
     s1+=724.0;
    } else {
     s0+=110.0;
     s1+=415.0;
    }
   } else {
    if(i10<3.5643577575683594e-05){
     s0+=51.0;
     s1+=783.0;
    } else {
     s0+=7.0;
     s1+=8897.0;
    }
   }
  }
 }
}
if(i6<1.0024597644805908){
 if(i9<1.0452277660369873){
  if(i70<-0.002003312110900879){
   if(i28<0.9744628667831421){
    if(i5<3.0279159545898438e-05){
     s0+=2473.0;
     s1+=31.0;
    } else {
     s0+=7.0;
     s1+=14.0;
    }
   } else {
    if(i57<3.010677028214559e-05){
     s0+=1123.0;
     s1+=53.0;
    } else {
     s0+=949.0;
     s1+=522.0;
    }
   }
  } else {
   if(i27<0.00029743221239186823){
    if(i12<1.0033574104309082){
     s0+=53270.0;
     s1+=237.0;
    } else {
     s0+=37.0;
     s1+=21.0;
    }
   } else {
    if(i9<1.0368338823318481){
     s0+=3063.0;
     s1+=66.0;
    } else {
     s0+=1146.0;
     s1+=214.0;
    }
   }
  }
 } else {
  if(i4<0.06110787391662598){
   if(i42<1.1037919521331787){
    if(i0<0.06566911935806274){
     s0+=1608.0;
     s1+=509.0;
    } else {
     s0+=104.0;
     s1+=407.0;
    }
   } else {
    if(i69<0.05416109412908554){
     s0+=3372.0;
     s1+=191.0;
    } else {
     s0+=1256.0;
     s1+=294.0;
    }
   }
  } else {
   if(i24<0.02793904021382332){
    if(i49<0.004216402769088745){
     s0+=624.0;
     s1+=929.0;
    } else {
     s0+=1043.0;
     s1+=158.0;
    }
   } else {
    if(i43<0.003925688099116087){
     s0+=405.0;
     s1+=743.0;
    } else {
     s0+=120.0;
     s1+=1575.0;
    }
   }
  }
 }
} else {
 if(i30<0.00018719921354204416){
  if(i57<1.0678752914827783e-05){
   s0+=81.0;
  } else {
   s1+=13.0;
  }
 } else {
  if(i17<0.00222661136649549){
   if(i20<0.0002881288528442383){
    if(i34<1.1993272304534912){
     s0+=6.0;
     s1+=20.0;
    } else {
     s0+=113.0;
    }
   } else {
    s1+=141.0;
   }
  } else {
   if(i0<0.052453845739364624){
    if(i18<1.0162396430969238){
     s0+=49.0;
     s1+=309.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i10<3.5643577575683594e-05){
     s0+=95.0;
     s1+=987.0;
    } else {
     s0+=13.0;
     s1+=9850.0;
    }
   }
  }
 }
}
if(i14<1.0038785934448242){
 if(i2<0.08083099126815796){
  if(i9<1.0410068035125732){
   if(i73<0.0007819239399395883){
    if(i18<1.0111193656921387){
     s0+=54173.0;
     s1+=207.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i37<0.000977640855126083){
     s0+=983.0;
     s1+=396.0;
    } else {
     s0+=4015.0;
     s1+=59.0;
    }
   }
  } else {
   if(i1<0.06320935487747192){
    if(i29<0.990405261516571){
     s0+=1292.0;
     s1+=590.0;
    } else {
     s0+=6837.0;
     s1+=434.0;
    }
   } else {
    if(i46<0.0450211763381958){
     s0+=125.0;
     s1+=486.0;
    } else {
     s0+=1322.0;
     s1+=306.0;
    }
   }
  }
 } else {
  if(i22<-1.6391277313232422e-05){
   if(i36<-0.00012168288230895996){
    s0+=365.0;
   } else {
    if(i30<0.001282987417653203){
     s0+=20.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i38<0.0005116504617035389){
    if(i47<-5.695063464372652e-06){
     s0+=15.0;
     s1+=65.0;
    } else {
     s0+=259.0;
     s1+=9.0;
    }
   } else {
    if(i45<0.02409222722053528){
     s0+=723.0;
     s1+=1568.0;
    } else {
     s0+=157.0;
     s1+=3001.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004799962043762207){
  if(i51<-0.0002511269995011389){
   if(i71<0.9998822808265686){
    if(i2<0.05885198712348938){
     s0+=47.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=288.0;
    }
   } else {
    if(i46<0.07436427474021912){
     s0+=126.0;
     s1+=22.0;
    } else {
     s0+=5.0;
     s1+=37.0;
    }
   }
  } else {
   if(i1<0.0653887689113617){
    if(i47<-1.4719027603860013e-05){
     s0+=7.0;
     s1+=5.0;
    } else {
     s0+=433.0;
     s1+=5.0;
    }
   } else {
    if(i69<0.029727643355727196){
     s0+=10.0;
     s1+=13.0;
    } else {
     s1+=42.0;
    }
   }
  }
 } else {
  if(i9<1.0341004133224487){
   if(i56<0.0005498152459040284){
    if(i45<0.003876366186887026){
     s1+=2.0;
    } else {
     s0+=41.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i3<0.0009004473686218262){
    if(i33<1.2392117977142334){
     s1+=402.0;
    } else {
     s0+=107.0;
     s1+=291.0;
    }
   } else {
    if(i16<1.0037147998809814){
     s0+=16.0;
     s1+=820.0;
    } else {
     s0+=8.0;
     s1+=8076.0;
    }
   }
  }
 }
}
if(i6<1.0024776458740234){
 if(i24<0.025340702384710312){
  if(i1<0.08195516467094421){
   if(i38<0.0003336736117489636){
    if(i16<1.0064079761505127){
     s0+=36573.0;
     s1+=2.0;
    } else {
     s0+=31.0;
     s1+=4.0;
    }
   } else {
    if(i23<1.002878189086914){
     s0+=1457.0;
     s1+=371.0;
    } else {
     s0+=26238.0;
     s1+=844.0;
    }
   }
  } else {
   if(i50<0.013397693634033203){
    if(i22<-1.3947486877441406e-05){
     s0+=147.0;
     s1+=6.0;
    } else {
     s0+=189.0;
     s1+=956.0;
    }
   } else {
    if(i0<0.1314643919467926){
     s0+=538.0;
     s1+=26.0;
    } else {
     s0+=223.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i3<-0.0006291568279266357){
   if(i25<0.996003270149231){
    if(i1<0.08597782254219055){
     s0+=3879.0;
     s1+=68.0;
    } else {
     s0+=145.0;
     s1+=120.0;
    }
   } else {
    if(i43<0.003384101204574108){
     s0+=124.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=99.0;
    }
   }
  } else {
   if(i80<2.5313453079434112e-05){
    if(i1<0.06726598739624023){
     s0+=527.0;
     s1+=350.0;
    } else {
     s0+=333.0;
     s1+=2499.0;
    }
   } else {
    if(i0<0.06439739465713501){
     s0+=523.0;
     s1+=136.0;
    } else {
     s0+=26.0;
     s1+=149.0;
    }
   }
  }
 }
} else {
 if(i5<6.622076034545898e-05){
  if(i65<0.08094307780265808){
   if(i7<-4.399527460918762e-05){
    if(i71<1.0029473304748535){
     s0+=63.0;
     s1+=799.0;
    } else {
     s0+=39.0;
     s1+=11.0;
    }
   } else {
    if(i72<-5.271689587971196e-06){
     s1+=53.0;
    } else {
     s0+=149.0;
     s1+=32.0;
    }
   }
  } else {
   if(i8<1.061802864074707){
    if(i8<1.0596532821655273){
     s1+=14.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=462.0;
   }
  }
 } else {
  if(i10<1.2218952178955078e-05){
   if(i45<0.017200911417603493){
    if(i49<-0.001373589038848877){
     s0+=5.0;
     s1+=65.0;
    } else {
     s0+=80.0;
     s1+=24.0;
    }
   } else {
    if(i2<0.011663466691970825){
     s0+=3.0;
     s1+=15.0;
    } else {
     s0+=2.0;
     s1+=717.0;
    }
   }
  } else {
   if(i1<0.0036190152168273926){
    if(i58<0.01144736260175705){
     s0+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i54<0.17202243208885193){
     s1+=8082.0;
    } else {
     s0+=3.0;
     s1+=886.0;
    }
   }
  }
 }
}
if(i16<1.0083014965057373){
 if(i4<0.07131022214889526){
  if(i22<2.294778823852539e-05){
   if(i56<0.0003127918462269008){
    if(i12<1.003558874130249){
     s0+=47083.0;
     s1+=67.0;
    } else {
     s0+=20.0;
     s1+=14.0;
    }
   } else {
    if(i14<0.994426965713501){
     s0+=12510.0;
     s1+=182.0;
    } else {
     s0+=7804.0;
     s1+=1892.0;
    }
   }
  } else {
   if(i60<-0.000472337007522583){
    if(i71<1.002873182296753){
     s0+=138.0;
     s1+=415.0;
    } else {
     s0+=135.0;
     s1+=50.0;
    }
   } else {
    if(i14<1.0034043788909912){
     s0+=538.0;
     s1+=45.0;
    } else {
     s0+=6.0;
     s1+=84.0;
    }
   }
  }
 } else {
  if(i6<1.0006656646728516){
   if(i44<0.05089995265007019){
    if(i5<-6.499886512756348e-05){
     s0+=38.0;
     s1+=19.0;
    } else {
     s0+=44.0;
     s1+=564.0;
    }
   } else {
    if(i1<0.10836640000343323){
     s0+=860.0;
     s1+=138.0;
    } else {
     s0+=497.0;
     s1+=546.0;
    }
   }
  } else {
   if(i73<0.0011824277462437749){
    if(i15<1.0023860931396484){
     s0+=166.0;
     s1+=250.0;
    } else {
     s0+=28.0;
     s1+=419.0;
    }
   } else {
    if(i45<0.016872627660632133){
     s0+=10.0;
     s1+=74.0;
    } else {
     s1+=1277.0;
    }
   }
  }
 }
} else {
 if(i48<0.0010296711698174477){
  if(i0<0.08955118060112){
   if(i35<1.1663256883621216){
    if(i47<-2.6899097065324895e-06){
     s1+=199.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i49<-0.003742396831512451){
     s0+=15.0;
     s1+=27.0;
    } else {
     s0+=643.0;
     s1+=10.0;
    }
   }
  } else {
   if(i66<-0.00989723950624466){
    if(i34<1.316622257232666){
     s0+=193.0;
     s1+=24.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i59<-0.05149360001087189){
     s0+=18.0;
     s1+=11.0;
    } else {
     s0+=51.0;
     s1+=1186.0;
    }
   }
  }
 } else {
  if(i38<0.0004608698363881558){
   s0+=51.0;
  } else {
   if(i31<0.9989389777183533){
    if(i22<-1.3589859008789062e-05){
     s0+=103.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i14<1.0008275508880615){
     s0+=171.0;
     s1+=1321.0;
    } else {
     s0+=41.0;
     s1+=8200.0;
    }
   }
  }
 }
}
if(i11<1.0015883445739746){
 if(i29<1.0107624530792236){
  if(i19<1.0486011505126953){
   if(i1<0.07795825600624084){
    if(i50<-0.006785064935684204){
     s0+=662.0;
     s1+=114.0;
    } else {
     s0+=54629.0;
     s1+=216.0;
    }
   } else {
    if(i44<0.04185137152671814){
     s0+=43.0;
     s1+=37.0;
    } else {
     s0+=297.0;
     s1+=22.0;
    }
   }
  } else {
   if(i3<0.00022339820861816406){
    if(i2<0.0708150863647461){
     s0+=10804.0;
     s1+=1062.0;
    } else {
     s0+=887.0;
     s1+=1251.0;
    }
   } else {
    if(i1<0.057032495737075806){
     s0+=340.0;
     s1+=110.0;
    } else {
     s0+=46.0;
     s1+=724.0;
    }
   }
  }
 } else {
  if(i61<0.9998672008514404){
   if(i3<0.00012290477752685547){
    if(i16<1.010773777961731){
     s0+=503.0;
     s1+=242.0;
    } else {
     s0+=92.0;
     s1+=259.0;
    }
   } else {
    if(i43<0.0005594362737610936){
     s0+=7.0;
    } else {
     s0+=26.0;
     s1+=2015.0;
    }
   }
  } else {
   if(i45<0.04701409488916397){
    if(i2<0.22384312748908997){
     s0+=1161.0;
     s1+=348.0;
    } else {
     s0+=51.0;
     s1+=217.0;
    }
   } else {
    s1+=139.0;
   }
  }
 }
} else {
 if(i29<1.020751714706421){
  if(i1<0.06574225425720215){
   if(i5<3.057718276977539e-05){
    if(i48<0.006605907343327999){
     s0+=735.0;
     s1+=57.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i3<0.0009720325469970703){
     s0+=158.0;
     s1+=173.0;
    } else {
     s0+=38.0;
     s1+=346.0;
    }
   }
  } else {
   if(i5<3.4689903259277344e-05){
    if(i2<0.10568144917488098){
     s0+=240.0;
     s1+=67.0;
    } else {
     s0+=12.0;
     s1+=178.0;
    }
   } else {
    if(i15<1.0004018545150757){
     s0+=84.0;
     s1+=843.0;
    } else {
     s0+=5.0;
     s1+=2192.0;
    }
   }
  }
 } else {
  if(i12<1.0005221366882324){
   if(i51<-0.0006499304436147213){
    s1+=301.0;
   } else {
    if(i48<0.0022733460646122694){
     s0+=49.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i3<0.000156402587890625){
    if(i48<0.0013495499733835459){
     s0+=5.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i47<-1.3133369066054001e-05){
     s0+=4.0;
     s1+=6409.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i17<0.004690325818955898){
  if(i56<0.00038283286266960204){
   if(i21<1.0082120895385742){
    if(i56<0.0003007931518368423){
     s0+=44998.0;
     s1+=52.0;
    } else {
     s0+=2448.0;
     s1+=98.0;
    }
   } else {
    if(i6<1.0008087158203125){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=140.0;
    }
   }
  } else {
   if(i19<1.0451428890228271){
    if(i80<-0.0005052732303738594){
     s0+=5904.0;
     s1+=9.0;
    } else {
     s0+=1502.0;
     s1+=127.0;
    }
   } else {
    if(i6<0.9968685507774353){
     s0+=3246.0;
     s1+=129.0;
    } else {
     s0+=6398.0;
     s1+=2451.0;
    }
   }
  }
 } else {
  if(i5<-1.7583370208740234e-05){
   if(i4<0.0814594030380249){
    if(i43<0.0009015197865664959){
     s0+=185.0;
     s1+=108.0;
    } else {
     s0+=4723.0;
     s1+=94.0;
    }
   } else {
    if(i31<0.9990869760513306){
     s0+=83.0;
    } else {
     s0+=20.0;
     s1+=311.0;
    }
   }
  } else {
   if(i45<0.014369050040841103){
    if(i79<0.0005149543285369873){
     s0+=408.0;
     s1+=89.0;
    } else {
     s1+=116.0;
    }
   } else {
    if(i28<0.9738616943359375){
     s0+=276.0;
     s1+=203.0;
    } else {
     s0+=120.0;
     s1+=1578.0;
    }
   }
  }
 }
} else {
 if(i30<0.00019999750657007098){
  if(i45<0.007761236745864153){
   if(i51<-0.00029234192334115505){
    if(i7<-5.3609277529176325e-05){
     s1+=13.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=182.0;
   }
  } else {
   if(i11<1.0014469623565674){
    s0+=1.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i17<0.0022366377525031567){
   if(i7<-6.566824595211074e-05){
    if(i10<0.00019031763076782227){
     s0+=1.0;
    } else {
     s1+=169.0;
    }
   } else {
    if(i79<-0.001756906509399414){
     s1+=6.0;
    } else {
     s0+=122.0;
    }
   }
  } else {
   if(i10<-0.0005553960800170898){
    if(i45<0.021116044372320175){
     s0+=187.0;
     s1+=161.0;
    } else {
     s0+=9.0;
     s1+=718.0;
    }
   } else {
    if(i43<0.00036955118412151933){
     s0+=20.0;
    } else {
     s0+=71.0;
     s1+=10692.0;
    }
   }
  }
 }
}
if(i0<0.08523821830749512){
 if(i49<-0.0017818212509155273){
  if(i5<3.4749507904052734e-05){
   if(i42<1.185624122619629){
    if(i11<0.9981702566146851){
     s0+=314.0;
     s1+=2.0;
    } else {
     s0+=857.0;
     s1+=563.0;
    }
   } else {
    if(i66<-0.0022575040347874165){
     s0+=177.0;
     s1+=66.0;
    } else {
     s0+=2034.0;
     s1+=80.0;
    }
   }
  } else {
   if(i78<0.0027772090397775173){
    if(i67<0.998863697052002){
     s0+=10.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=455.0;
    }
   } else {
    if(i63<-0.0041391849517822266){
     s0+=5.0;
     s1+=119.0;
    } else {
     s0+=33.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i3<0.0005668103694915771){
   if(i2<0.06312990188598633){
    if(i40<0.00033771764719858766){
     s0+=38082.0;
     s1+=38.0;
    } else {
     s0+=24508.0;
     s1+=807.0;
    }
   } else {
    if(i39<0.027688175439834595){
     s0+=126.0;
     s1+=358.0;
    } else {
     s0+=2833.0;
     s1+=217.0;
    }
   }
  } else {
   if(i34<1.1353518962860107){
    if(i37<0.0003409801865927875){
     s0+=102.0;
    } else {
     s0+=4.0;
     s1+=408.0;
    }
   } else {
    if(i54<-0.0454598069190979){
     s1+=9.0;
    } else {
     s0+=249.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00039127469062805176){
  if(i71<1.000303864479065){
   if(i47<-9.801444321055897e-06){
    if(i13<-0.0004462301731109619){
     s0+=20.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=600.0;
   }
  } else {
   if(i44<0.06897968053817749){
    if(i67<0.998955488204956){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=37.0;
     s1+=2.0;
    }
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i51<-0.00012376118684187531){
   if(i7<-2.2307223844109103e-05){
    if(i10<9.47713851928711e-06){
     s0+=196.0;
     s1+=2099.0;
    } else {
     s0+=40.0;
     s1+=9869.0;
    }
   } else {
    if(i39<0.040084004402160645){
     s0+=30.0;
     s1+=223.0;
    } else {
     s0+=389.0;
     s1+=196.0;
    }
   }
  } else {
   if(i54<0.04566776752471924){
    if(i35<1.0724589824676514){
     s0+=23.0;
    } else {
     s0+=49.0;
     s1+=1009.0;
    }
   } else {
    if(i7<-9.090043022297323e-05){
     s0+=16.0;
     s1+=157.0;
    } else {
     s0+=511.0;
     s1+=256.0;
    }
   }
  }
 }
}
if(i15<1.0046703815460205){
 if(i0<0.0824175775051117){
  if(i69<0.026235653087496758){
   if(i58<0.002102223224937916){
    if(i23<1.037137508392334){
     s0+=54373.0;
     s1+=262.0;
    } else {
     s0+=1787.0;
     s1+=96.0;
    }
   } else {
    if(i5<2.193450927734375e-05){
     s0+=917.0;
     s1+=224.0;
    } else {
     s0+=2.0;
     s1+=68.0;
    }
   }
  } else {
   if(i15<0.990140974521637){
    if(i48<0.006460332777351141){
     s0+=7070.0;
     s1+=246.0;
    } else {
     s0+=9.0;
     s1+=51.0;
    }
   } else {
    if(i7<-1.6776961274445057e-05){
     s0+=667.0;
     s1+=778.0;
    } else {
     s0+=3067.0;
     s1+=467.0;
    }
   }
  }
 } else {
  if(i7<-1.3541021871787962e-05){
   if(i13<-0.0004035532474517822){
    if(i36<-0.00012871623039245605){
     s0+=86.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=13.0;
    }
   } else {
    if(i0<0.12467041611671448){
     s0+=462.0;
     s1+=1124.0;
    } else {
     s0+=119.0;
     s1+=2640.0;
    }
   }
  } else {
   if(i5<-5.9932470321655273e-05){
    s0+=530.0;
   } else {
    if(i57<3.5183744330424815e-05){
     s0+=493.0;
     s1+=59.0;
    } else {
     s0+=222.0;
     s1+=332.0;
    }
   }
  }
 }
} else {
 if(i29<1.0200753211975098){
  if(i1<0.05894085764884949){
   if(i36<0.00013816356658935547){
    if(i72<-4.858605734625598e-06){
     s1+=5.0;
    } else {
     s0+=519.0;
     s1+=20.0;
    }
   } else {
    if(i33<1.2385294437408447){
     s0+=7.0;
     s1+=202.0;
    } else {
     s0+=259.0;
     s1+=53.0;
    }
   }
  } else {
   if(i72<7.64727246860275e-07){
    if(i10<0.0006679892539978027){
     s0+=108.0;
     s1+=293.0;
    } else {
     s0+=38.0;
     s1+=2369.0;
    }
   } else {
    s0+=31.0;
   }
  }
 } else {
  if(i71<0.9995827674865723){
   if(i0<0.06786248087882996){
    if(i47<-2.097267315548379e-05){
     s1+=6.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i7<-3.2727162761148065e-05){
     s0+=1.0;
     s1+=6103.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i48<0.0010414787102490664){
    if(i16<1.026198148727417){
     s0+=276.0;
     s1+=17.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i24<0.01135084219276905){
     s0+=22.0;
     s1+=124.0;
    } else {
     s0+=6.0;
     s1+=1572.0;
    }
   }
  }
 }
}
if(i13<0.0004321932792663574){
 if(i0<0.08502736687660217){
  if(i33<1.0856719017028809){
   s0+=38046.0;
  } else {
   if(i2<0.06347137689590454){
    if(i35<1.0991880893707275){
     s0+=3784.0;
     s1+=1068.0;
    } else {
     s0+=24138.0;
     s1+=285.0;
    }
   } else {
    if(i49<-0.0007602870464324951){
     s0+=71.0;
     s1+=201.0;
    } else {
     s0+=1636.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i7<-1.3541021871787962e-05){
   if(i31<0.999174177646637){
    if(i19<1.398578405380249){
     s0+=90.0;
     s1+=11.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i53<0.025538504123687744){
     s0+=89.0;
     s1+=2374.0;
    } else {
     s0+=269.0;
     s1+=1054.0;
    }
   }
  } else {
   if(i13<-0.0003972351551055908){
    s0+=535.0;
   } else {
    if(i23<1.0386853218078613){
     s0+=22.0;
     s1+=192.0;
    } else {
     s0+=572.0;
     s1+=135.0;
    }
   }
  }
 }
} else {
 if(i10<0.00045043230056762695){
  if(i65<0.13934436440467834){
   if(i3<0.0005511045455932617){
    if(i2<0.10063302516937256){
     s0+=1348.0;
     s1+=213.0;
    } else {
     s0+=73.0;
     s1+=261.0;
    }
   } else {
    if(i34<1.0528943538665771){
     s0+=43.0;
    } else {
     s0+=256.0;
     s1+=1028.0;
    }
   }
  } else {
   if(i9<1.0629453659057617){
    if(i6<0.9990541934967041){
     s0+=27.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i48<0.0009456973057240248){
     s0+=6.0;
    } else {
     s1+=888.0;
    }
   }
  }
 } else {
  if(i40<0.0004233341314829886){
   if(i49<-0.0004941821098327637){
    s1+=2.0;
   } else {
    s0+=37.0;
   }
  } else {
   if(i2<0.05009138584136963){
    if(i72<-5.135206265549641e-06){
     s1+=246.0;
    } else {
     s0+=63.0;
     s1+=6.0;
    }
   } else {
    if(i9<1.0270830392837524){
     s0+=1.0;
    } else {
     s0+=14.0;
     s1+=8682.0;
    }
   }
  }
 }
}
if(i13<0.00043570995330810547){
 if(i16<1.0081751346588135){
  if(i0<0.08236891031265259){
   if(i56<0.00028934289002791047){
    if(i21<1.010046124458313){
     s0+=45993.0;
     s1+=39.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i35<1.103413462638855){
     s0+=5190.0;
     s1+=1244.0;
    } else {
     s0+=15527.0;
     s1+=350.0;
    }
   }
  } else {
   if(i5<-4.8607587814331055e-05){
    if(i48<0.003764538327232003){
     s0+=668.0;
     s1+=56.0;
    } else {
     s0+=10.0;
     s1+=86.0;
    }
   } else {
    if(i39<0.04563671350479126){
     s0+=67.0;
     s1+=1042.0;
    } else {
     s0+=702.0;
     s1+=516.0;
    }
   }
  }
 } else {
  if(i34<1.1514935493469238){
   if(i56<0.0044536287896335125){
    if(i3<0.00013971328735351562){
     s0+=63.0;
     s1+=257.0;
    } else {
     s0+=6.0;
     s1+=931.0;
    }
   } else {
    s0+=64.0;
   }
  } else {
   if(i7<-4.780606832355261e-05){
    if(i29<1.0158690214157104){
     s0+=36.0;
     s1+=113.0;
    } else {
     s0+=1.0;
     s1+=908.0;
    }
   } else {
    if(i36<2.5957822799682617e-05){
     s0+=233.0;
     s1+=265.0;
    } else {
     s0+=717.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i6<1.001575231552124){
  if(i4<0.10412237048149109){
   if(i30<0.015504173003137112){
    if(i70<-0.0016608834266662598){
     s0+=366.0;
     s1+=123.0;
    } else {
     s0+=991.0;
     s1+=80.0;
    }
   } else {
    if(i45<0.03122534602880478){
     s0+=6.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i62<0.0003694567712955177){
    if(i38<0.005272430367767811){
     s0+=32.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i71<0.9985263347625732){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=285.0;
    }
   }
  }
 } else {
  if(i17<0.001982320100069046){
   if(i11<1.002051591873169){
    if(i7<-5.378843707148917e-05){
     s1+=8.0;
    } else {
     s0+=118.0;
    }
   } else {
    s1+=84.0;
   }
  } else {
   if(i1<0.07935556769371033){
    if(i43<0.0026918367948383093){
     s0+=2.0;
     s1+=538.0;
    } else {
     s0+=190.0;
     s1+=373.0;
    }
   } else {
    if(i1<0.13177666068077087){
     s0+=96.0;
     s1+=1314.0;
    } else {
     s0+=11.0;
     s1+=8405.0;
    }
   }
  }
 }
}
if(i77<0.004162013530731201){
 if(i7<-7.806075154803693e-05){
  if(i3<8.803606033325195e-05){
   if(i0<0.07663440704345703){
    if(i69<0.14230597019195557){
     s0+=181.0;
     s1+=33.0;
    } else {
     s0+=435.0;
     s1+=4.0;
    }
   } else {
    if(i22<3.236532211303711e-05){
     s0+=2.0;
     s1+=158.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<0.051503509283065796){
    if(i14<1.0016263723373413){
     s0+=97.0;
     s1+=49.0;
    } else {
     s0+=20.0;
     s1+=130.0;
    }
   } else {
    if(i12<1.0005388259887695){
     s0+=64.0;
     s1+=316.0;
    } else {
     s0+=43.0;
     s1+=5243.0;
    }
   }
  }
 } else {
  if(i8<1.041234016418457){
   if(i34<1.0556960105895996){
    if(i41<0.09921935200691223){
     s0+=41500.0;
    } else {
     s0+=469.0;
     s1+=2.0;
    }
   } else {
    if(i9<1.0412344932556152){
     s0+=17948.0;
     s1+=881.0;
    } else {
     s0+=2757.0;
     s1+=1021.0;
    }
   }
  } else {
   if(i14<1.000975489616394){
    if(i4<0.058040499687194824){
     s0+=4038.0;
     s1+=633.0;
    } else {
     s0+=2009.0;
     s1+=1753.0;
    }
   } else {
    if(i7<-3.213229501852766e-05){
     s0+=237.0;
     s1+=1477.0;
    } else {
     s0+=466.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i22<-1.7315149307250977e-05){
  s0+=332.0;
 } else {
  if(i48<0.0005382062518037856){
   if(i13<0.0005856156349182129){
    if(i12<0.9963136315345764){
     s1+=3.0;
    } else {
     s0+=149.0;
    }
   } else {
    s1+=22.0;
   }
  } else {
   if(i0<0.0798918604850769){
    if(i62<0.0006511626415885985){
     s0+=38.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i71<1.0014865398406982){
     s0+=7.0;
     s1+=5211.0;
    } else {
     s0+=15.0;
     s1+=248.0;
    }
   }
  }
 }
}
if(i1<0.08195176720619202){
 if(i13<0.000580132007598877){
  if(i55<0.007421890273690224){
   if(i70<-0.0017706453800201416){
    if(i42<1.1823735237121582){
     s0+=1772.0;
     s1+=546.0;
    } else {
     s0+=2964.0;
     s1+=3.0;
    }
   } else {
    if(i16<1.0083014965057373){
     s0+=59866.0;
     s1+=555.0;
    } else {
     s0+=503.0;
     s1+=186.0;
    }
   }
  } else {
   if(i4<0.022677630186080933){
    if(i33<1.1919987201690674){
     s0+=1202.0;
     s1+=266.0;
    } else {
     s0+=1277.0;
     s1+=43.0;
    }
   } else {
    if(i40<0.0021161497570574284){
     s0+=312.0;
     s1+=364.0;
    } else {
     s0+=684.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i49<-3.516674041748047e-05){
   if(i20<-0.00033545494079589844){
    if(i45<0.036857426166534424){
     s0+=141.0;
     s1+=13.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i6<1.0020928382873535){
     s0+=78.0;
     s1+=59.0;
    } else {
     s0+=36.0;
     s1+=661.0;
    }
   }
  } else {
   if(i3<0.0008704066276550293){
    if(i14<1.0032740831375122){
     s0+=526.0;
     s1+=25.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i33<1.476589322090149){
     s0+=2.0;
     s1+=92.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i11<0.998518705368042){
  if(i72<-3.520189011396724e-06){
   if(i75<0.0001877254107967019){
    if(i0<0.08638381958007812){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i33<1.632873296737671){
     s0+=15.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i38<0.010979468934237957){
    if(i14<0.994873046875){
     s0+=415.0;
    } else {
     s0+=81.0;
     s1+=3.0;
    }
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i3<0.0005219578742980957){
   if(i74<1.0256047248840332){
    if(i7<1.5583273125230335e-06){
     s0+=200.0;
     s1+=2115.0;
    } else {
     s0+=122.0;
     s1+=64.0;
    }
   } else {
    if(i45<0.025434426963329315){
     s0+=684.0;
     s1+=432.0;
    } else {
     s0+=104.0;
     s1+=685.0;
    }
   }
  } else {
   if(i0<0.13692575693130493){
    if(i54<0.05890500545501709){
     s0+=36.0;
     s1+=1478.0;
    } else {
     s0+=101.0;
     s1+=17.0;
    }
   } else {
    if(i0<0.16775760054588318){
     s0+=25.0;
     s1+=828.0;
    } else {
     s0+=1.0;
     s1+=8428.0;
    }
   }
  }
 }
}
if(i7<-8.168155909515917e-05){
 if(i6<0.9967300295829773){
  if(i2<0.0927031934261322){
   if(i80<-0.0042123571038246155){
    s1+=3.0;
   } else {
    if(i49<-0.007304459810256958){
     s0+=95.0;
     s1+=5.0;
    } else {
     s0+=322.0;
    }
   }
  } else {
   if(i31<0.9967203736305237){
    s0+=18.0;
   } else {
    s1+=38.0;
   }
  }
 } else {
  if(i20<-0.00040480494499206543){
   if(i43<0.013324098661541939){
    if(i46<0.13220089673995972){
     s0+=169.0;
     s1+=11.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i1<0.017811059951782227){
     s0+=29.0;
     s1+=1.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i2<0.016509532928466797){
    if(i36<0.0001849830150604248){
     s0+=50.0;
    } else {
     s0+=16.0;
     s1+=39.0;
    }
   } else {
    if(i28<0.9966620802879333){
     s0+=106.0;
     s1+=1418.0;
    } else {
     s0+=21.0;
     s1+=9302.0;
    }
   }
  }
 }
} else {
 if(i2<0.07553675770759583){
  if(i7<-4.3895932321902364e-05){
   if(i42<1.2261788845062256){
    if(i15<1.0021278858184814){
     s0+=250.0;
     s1+=154.0;
    } else {
     s0+=4.0;
     s1+=535.0;
    }
   } else {
    if(i11<1.0039721727371216){
     s0+=1801.0;
     s1+=89.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i19<1.0451585054397583){
    if(i19<1.0412344932556152){
     s0+=49131.0;
     s1+=107.0;
    } else {
     s0+=3714.0;
     s1+=108.0;
    }
   } else {
    if(i1<0.06581345200538635){
     s0+=12493.0;
     s1+=1062.0;
    } else {
     s0+=838.0;
     s1+=496.0;
    }
   }
  }
 } else {
  if(i11<0.9985270500183105){
   if(i7<-4.47869642812293e-05){
    if(i33<1.277674913406372){
     s1+=12.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    if(i47<-1.2068006981280632e-05){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=556.0;
     s1+=1.0;
    }
   }
  } else {
   if(i74<1.026161789894104){
    if(i5<-5.14984130859375e-05){
     s0+=123.0;
     s1+=37.0;
    } else {
     s0+=390.0;
     s1+=2528.0;
    }
   } else {
    if(i17<0.0035790109541267157){
     s0+=811.0;
     s1+=204.0;
    } else {
     s0+=110.0;
     s1+=926.0;
    }
   }
  }
 }
}
if(i16<1.0081498622894287){
 if(i0<0.08355346322059631){
  if(i70<-0.0023182928562164307){
   if(i1<0.05694472789764404){
    if(i36<-3.55839729309082e-05){
     s0+=2556.0;
     s1+=66.0;
    } else {
     s0+=2600.0;
     s1+=741.0;
    }
   } else {
    if(i59<-0.011422261595726013){
     s0+=202.0;
     s1+=42.0;
    } else {
     s0+=49.0;
     s1+=391.0;
    }
   }
  } else {
   if(i8<1.040146827697754){
    if(i40<0.0003228323766961694){
     s0+=37137.0;
     s1+=4.0;
    } else {
     s0+=21121.0;
     s1+=469.0;
    }
   } else {
    if(i24<0.01656070351600647){
     s0+=3644.0;
     s1+=150.0;
    } else {
     s0+=1013.0;
     s1+=447.0;
    }
   }
  }
 } else {
  if(i7<-1.0923353329417296e-05){
   if(i39<0.045533955097198486){
    if(i22<-1.1831521987915039e-05){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=45.0;
     s1+=2138.0;
    }
   } else {
    if(i24<0.03891783952713013){
     s0+=482.0;
     s1+=409.0;
    } else {
     s0+=61.0;
     s1+=883.0;
    }
   }
  } else {
   if(i11<0.9985276460647583){
    s0+=560.0;
   } else {
    if(i50<0.008885353803634644){
     s0+=114.0;
     s1+=204.0;
    } else {
     s0+=378.0;
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i2<0.07871240377426147){
  if(i34<1.1170852184295654){
   if(i56<0.0012943089241161942){
    if(i10<0.0005196332931518555){
     s0+=33.0;
     s1+=80.0;
    } else {
     s0+=1.0;
     s1+=632.0;
    }
   } else {
    if(i61<1.0000402927398682){
     s0+=58.0;
     s1+=2.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i76<-4.469015038921498e-06){
    if(i58<-5.900888936594129e-06){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=88.0;
    }
   } else {
    if(i17<0.006363295949995518){
     s0+=829.0;
     s1+=77.0;
    } else {
     s0+=1.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i47<1.966271611308912e-06){
   if(i62<0.00046818790724501014){
    if(i7<-4.58206377516035e-05){
     s0+=25.0;
     s1+=2302.0;
    } else {
     s0+=287.0;
     s1+=491.0;
    }
   } else {
    if(i10<-0.001719653606414795){
     s0+=11.0;
     s1+=81.0;
    } else {
     s0+=9.0;
     s1+=7129.0;
    }
   }
  } else {
   if(i43<0.003526771441102028){
    s0+=71.0;
   } else {
    s1+=5.0;
   }
  }
 }
}
if(i1<0.08225265145301819){
 if(i14<1.004927158355713){
  if(i3<0.0005654096603393555){
   if(i30<0.0002811383455991745){
    if(i32<1.0113385915756226){
     s0+=52111.0;
     s1+=222.0;
    } else {
     s0+=44.0;
     s1+=42.0;
    }
   } else {
    if(i35<1.1034480333328247){
     s0+=4164.0;
     s1+=1235.0;
    } else {
     s0+=12374.0;
     s1+=484.0;
    }
   }
  } else {
   if(i49<-0.0014258623123168945){
    if(i36<0.00010895729064941406){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=37.0;
     s1+=202.0;
    }
   } else {
    if(i42<1.2160736322402954){
     s0+=115.0;
     s1+=111.0;
    } else {
     s0+=161.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i36<0.00014063715934753418){
   if(i78<0.0003107660450041294){
    if(i7<-6.250166188692674e-05){
     s1+=6.0;
    } else {
     s0+=312.0;
     s1+=5.0;
    }
   } else {
    if(i15<1.006859302520752){
     s0+=39.0;
     s1+=19.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i13<0.00038170814514160156){
    if(i43<0.0008943807915784419){
     s1+=5.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i17<0.0013813176192343235){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=661.0;
    }
   }
  }
 }
} else {
 if(i5<9.59634780883789e-06){
  if(i31<0.9987812042236328){
   if(i11<0.9980377554893494){
    s0+=388.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i63<0.003572702407836914){
    if(i70<0.007421135902404785){
     s0+=82.0;
     s1+=1033.0;
    } else {
     s0+=99.0;
     s1+=179.0;
    }
   } else {
    if(i51<-0.00012586856610141695){
     s0+=259.0;
     s1+=552.0;
    } else {
     s0+=394.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i17<0.0032188878394663334){
   if(i63<0.007384955883026123){
    if(i39<0.04646962881088257){
     s0+=26.0;
     s1+=605.0;
    } else {
     s0+=126.0;
     s1+=178.0;
    }
   } else {
    if(i1<0.2451292872428894){
     s0+=129.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   }
  } else {
   if(i4<0.1404971480369568){
    if(i54<0.056682288646698){
     s0+=29.0;
     s1+=3229.0;
    } else {
     s0+=125.0;
     s1+=164.0;
    }
   } else {
    if(i6<0.9995965957641602){
     s0+=6.0;
     s1+=16.0;
    } else {
     s0+=7.0;
     s1+=8026.0;
    }
   }
  }
 }
}
if(i15<1.005615234375){
 if(i69<0.03773730993270874){
  if(i6<1.0024685859680176){
   if(i18<1.0067417621612549){
    if(i1<0.08837053179740906){
     s0+=59533.0;
     s1+=816.0;
    } else {
     s0+=254.0;
     s1+=205.0;
    }
   } else {
    if(i52<-6.255135667743161e-05){
     s0+=116.0;
     s1+=227.0;
    } else {
     s0+=1610.0;
     s1+=423.0;
    }
   }
  } else {
   if(i57<-8.678425729158334e-07){
    if(i59<0.001229514367878437){
     s0+=21.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i45<0.00825441163033247){
     s0+=14.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=261.0;
    }
   }
  }
 } else {
  if(i22<8.404254913330078e-06){
   if(i25<0.9830304384231567){
    if(i2<0.0765518844127655){
     s0+=4803.0;
     s1+=148.0;
    } else {
     s0+=189.0;
     s1+=262.0;
    }
   } else {
    if(i2<0.062076836824417114){
     s0+=1477.0;
     s1+=373.0;
    } else {
     s0+=533.0;
     s1+=1181.0;
    }
   }
  } else {
   if(i25<0.9549698829650879){
    if(i45<0.04845164716243744){
     s0+=390.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=185.0;
    }
   } else {
    if(i24<0.05652964115142822){
     s0+=927.0;
     s1+=1095.0;
    } else {
     s0+=72.0;
     s1+=1543.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004976391792297363){
  if(i2<0.07412725687026978){
   if(i40<0.0011157639091834426){
    if(i19<1.0748438835144043){
     s1+=83.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    if(i73<0.0022325182799249887){
     s0+=580.0;
     s1+=4.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   }
  } else {
   if(i32<1.0482147932052612){
    if(i7<-2.1780528186354786e-05){
     s0+=11.0;
     s1+=516.0;
    } else {
     s0+=19.0;
     s1+=13.0;
    }
   } else {
    if(i2<0.2603822946548462){
     s0+=93.0;
     s1+=13.0;
    } else {
     s0+=17.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i20<0.00021392107009887695){
   if(i7<-4.353338590590283e-05){
    if(i27<0.00011861200619023293){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=28.0;
     s1+=1179.0;
    }
   } else {
    if(i17<0.0037837205454707146){
     s0+=150.0;
    } else {
     s1+=92.0;
    }
   }
  } else {
   if(i8<1.028503656387329){
    if(i47<-1.3247521565062925e-05){
     s1+=70.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i30<0.0001823700440581888){
     s0+=1.0;
    } else {
     s1+=8436.0;
    }
   }
  }
 }
}
if(i0<0.08241075277328491){
 if(i6<1.0024688243865967){
  if(i40<0.00034515804145485163){
   if(i28<1.0070221424102783){
    if(i15<1.003774881362915){
     s0+=39525.0;
     s1+=23.0;
    } else {
     s0+=85.0;
     s1+=10.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i49<-0.001547783613204956){
    if(i2<0.036379456520080566){
     s0+=2939.0;
     s1+=390.0;
    } else {
     s0+=443.0;
     s1+=483.0;
    }
   } else {
    if(i42<1.103413462638855){
     s0+=5369.0;
     s1+=918.0;
    } else {
     s0+=20287.0;
     s1+=205.0;
    }
   }
  }
 } else {
  if(i47<-1.4388753697858192e-05){
   if(i73<-0.00045466923620551825){
    if(i20<0.0001697540283203125){
     s0+=14.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i70<0.00473707914352417){
     s0+=60.0;
     s1+=856.0;
    } else {
     s0+=21.0;
     s1+=7.0;
    }
   }
  } else {
   if(i38<0.001453491160646081){
    if(i3<0.0005203485488891602){
     s0+=10.0;
    } else {
     s1+=26.0;
    }
   } else {
    s0+=152.0;
   }
  }
 }
} else {
 if(i31<0.9990449547767639){
  if(i38<0.011189809069037437){
   if(i38<0.0017404931131750345){
    s0+=701.0;
   } else {
    if(i7<-4.304347748984583e-05){
     s1+=5.0;
    } else {
     s0+=52.0;
    }
   }
  } else {
   s1+=23.0;
  }
 } else {
  if(i12<1.003000020980835){
   if(i7<-1.3797138308291323e-05){
    if(i44<0.05373561382293701){
     s0+=40.0;
     s1+=2255.0;
    } else {
     s0+=556.0;
     s1+=2041.0;
    }
   } else {
    if(i74<1.011681318283081){
     s0+=175.0;
     s1+=289.0;
    } else {
     s0+=541.0;
     s1+=86.0;
    }
   }
  } else {
   if(i51<-9.886785119306296e-05){
    if(i62<0.00017212433158420026){
     s0+=15.0;
     s1+=174.0;
    } else {
     s0+=23.0;
     s1+=8506.0;
    }
   } else {
    if(i54<0.054259032011032104){
     s0+=6.0;
     s1+=612.0;
    } else {
     s0+=102.0;
     s1+=217.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i9<1.0452277660369873){
  if(i58<0.0017414403846487403){
   if(i1<0.08468303084373474){
    if(i38<0.00034801167203113437){
     s0+=34669.0;
     s1+=3.0;
    } else {
     s0+=24027.0;
     s1+=469.0;
    }
   } else {
    if(i3<-0.0007506310939788818){
     s0+=70.0;
     s1+=11.0;
    } else {
     s0+=43.0;
     s1+=193.0;
    }
   }
  } else {
   if(i5<-1.990795135498047e-05){
    if(i37<0.0021514827385544777){
     s0+=838.0;
     s1+=146.0;
    } else {
     s0+=1624.0;
     s1+=13.0;
    }
   } else {
    if(i34<1.1047927141189575){
     s0+=274.0;
     s1+=218.0;
    } else {
     s0+=462.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i45<0.04025735706090927){
   if(i16<1.0103721618652344){
    if(i7<-2.655830940057058e-05){
     s0+=1619.0;
     s1+=1186.0;
    } else {
     s0+=6105.0;
     s1+=1107.0;
    }
   } else {
    if(i2<0.07479354739189148){
     s0+=429.0;
     s1+=116.0;
    } else {
     s0+=241.0;
     s1+=1036.0;
    }
   }
  } else {
   if(i19<1.0910286903381348){
    s0+=71.0;
   } else {
    if(i73<0.012133044190704823){
     s0+=12.0;
     s1+=988.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i0<0.06999784708023071){
  if(i36<0.00013881921768188477){
   if(i45<0.023655613884329796){
    if(i63<-0.007923424243927002){
     s1+=3.0;
    } else {
     s0+=217.0;
     s1+=4.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i19<1.0419573783874512){
    s0+=59.0;
   } else {
    if(i27<0.0001753343385644257){
     s0+=37.0;
     s1+=11.0;
    } else {
     s0+=107.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i15<1.0091257095336914){
   if(i45<0.022399989888072014){
    if(i74<1.0234254598617554){
     s0+=31.0;
     s1+=372.0;
    } else {
     s0+=128.0;
     s1+=86.0;
    }
   } else {
    if(i12<0.9982770681381226){
     s0+=3.0;
     s1+=21.0;
    } else {
     s1+=2038.0;
    }
   }
  } else {
   s1+=8531.0;
  }
 }
}
if(i7<-7.277324766619131e-05){
 if(i2<0.04977726936340332){
  if(i8<1.0398086309432983){
   if(i3<0.0006274580955505371){
    if(i48<0.006405787542462349){
     s0+=699.0;
     s1+=12.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i14<0.9972400069236755){
     s0+=2.0;
    } else {
     s1+=62.0;
    }
   }
  } else {
   if(i20<-0.0001042485237121582){
    if(i54<-0.10310384631156921){
     s0+=1.0;
     s1+=38.0;
    } else {
     s0+=107.0;
     s1+=14.0;
    }
   } else {
    if(i33<1.5944836139678955){
     s1+=165.0;
    } else {
     s0+=15.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i11<0.9974955320358276){
   s0+=63.0;
  } else {
   if(i14<0.999587893486023){
    if(i8<1.088716745376587){
     s0+=125.0;
     s1+=190.0;
    } else {
     s0+=14.0;
     s1+=1073.0;
    }
   } else {
    if(i5<0.00011438131332397461){
     s0+=46.0;
     s1+=3022.0;
    } else {
     s0+=3.0;
     s1+=6870.0;
    }
   }
  }
 }
} else {
 if(i9<1.0452215671539307){
  if(i0<0.0786188542842865){
   if(i6<1.0025532245635986){
    if(i79<-0.000783085823059082){
     s0+=7726.0;
     s1+=484.0;
    } else {
     s0+=53025.0;
     s1+=288.0;
    }
   } else {
    if(i38<0.0016773645766079426){
     s0+=6.0;
     s1+=96.0;
    } else {
     s0+=63.0;
     s1+=8.0;
    }
   }
  } else {
   if(i19<1.0481507778167725){
    if(i3<-0.0009479522705078125){
     s0+=330.0;
    } else {
     s0+=235.0;
     s1+=51.0;
    }
   } else {
    if(i6<0.995573103427887){
     s0+=94.0;
     s1+=2.0;
    } else {
     s0+=63.0;
     s1+=295.0;
    }
   }
  }
 } else {
  if(i38<0.0004483674420043826){
   if(i11<1.0005335807800293){
    if(i38<0.0004060521605424583){
     s0+=1293.0;
    } else {
     s0+=699.0;
     s1+=16.0;
    }
   } else {
    if(i76<1.0038311302196234e-06){
     s0+=74.0;
    } else {
     s1+=81.0;
    }
   }
  } else {
   if(i34<1.104381799697876){
    if(i17<0.0016309567727148533){
     s0+=752.0;
     s1+=324.0;
    } else {
     s0+=439.0;
     s1+=2049.0;
    }
   } else {
    if(i36<-0.0001392960548400879){
     s0+=1159.0;
     s1+=26.0;
    } else {
     s0+=3912.0;
     s1+=2124.0;
    }
   }
  }
 }
}
if(i5<3.641843795776367e-05){
 if(i1<0.08195626735687256){
  if(i27<0.0002956066164188087){
   if(i70<-0.003156691789627075){
    if(i36<-2.4825334548950195e-05){
     s0+=127.0;
     s1+=4.0;
    } else {
     s0+=55.0;
     s1+=119.0;
    }
   } else {
    if(i9<1.0436501502990723){
     s0+=52784.0;
     s1+=215.0;
    } else {
     s0+=2876.0;
     s1+=265.0;
    }
   }
  } else {
   if(i42<1.1812903881072998){
    if(i37<0.0003070284437853843){
     s0+=2153.0;
     s1+=1.0;
    } else {
     s0+=2692.0;
     s1+=1330.0;
    }
   } else {
    if(i48<0.006421868689358234){
     s0+=7934.0;
     s1+=181.0;
    } else {
     s0+=10.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i13<-0.00043773651123046875){
   if(i52<0.0010126952547580004){
    if(i14<0.9819715619087219){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=390.0;
    }
   } else {
    if(i79<-0.0036767125129699707){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i59<-0.019386082887649536){
    if(i24<0.04029349237680435){
     s0+=762.0;
     s1+=223.0;
    } else {
     s0+=64.0;
     s1+=773.0;
    }
   } else {
    if(i17<0.0016932865837588906){
     s0+=188.0;
     s1+=182.0;
    } else {
     s0+=141.0;
     s1+=2166.0;
    }
   }
  }
 }
} else {
 if(i34<1.0590304136276245){
  s0+=398.0;
 } else {
  if(i17<0.0022362954914569855){
   if(i7<-5.827110726386309e-05){
    if(i15<1.0076467990875244){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=177.0;
    }
   } else {
    if(i15<0.9941567182540894){
     s1+=8.0;
    } else {
     s0+=145.0;
    }
   }
  } else {
   if(i10<-0.0006331801414489746){
    if(i2<0.11276799440383911){
     s0+=191.0;
     s1+=265.0;
    } else {
     s0+=20.0;
     s1+=594.0;
    }
   } else {
    if(i10<3.0934810638427734e-05){
     s0+=53.0;
     s1+=562.0;
    } else {
     s0+=12.0;
     s1+=10126.0;
    }
   }
  }
 }
}
if(i5<3.701448440551758e-05){
 if(i8<1.0452277660369873){
  if(i2<0.0808405876159668){
   if(i24<0.014366740360856056){
    if(i50<-0.007856816053390503){
     s0+=935.0;
     s1+=187.0;
    } else {
     s0+=53182.0;
     s1+=258.0;
    }
   } else {
    if(i14<0.9938127994537354){
     s0+=7681.0;
     s1+=50.0;
    } else {
     s0+=2967.0;
     s1+=902.0;
    }
   }
  } else {
   if(i14<0.9940632581710815){
    if(i19<1.0700350999832153){
     s0+=145.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=48.0;
    }
   } else {
    if(i65<0.005237992387264967){
     s0+=22.0;
     s1+=6.0;
    } else {
     s0+=21.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i1<0.09208527207374573){
   if(i50<0.009573519229888916){
    if(i7<-3.046550409635529e-05){
     s0+=354.0;
     s1+=523.0;
    } else {
     s0+=2407.0;
     s1+=327.0;
    }
   } else {
    if(i80<-0.0015864440938457847){
     s0+=1235.0;
     s1+=4.0;
    } else {
     s0+=412.0;
     s1+=36.0;
    }
   }
  } else {
   if(i7<-1.3793662219541147e-05){
    if(i39<0.05654561519622803){
     s0+=28.0;
     s1+=1621.0;
    } else {
     s0+=330.0;
     s1+=773.0;
    }
   } else {
    if(i61<1.0000531673431396){
     s0+=700.0;
     s1+=93.0;
    } else {
     s0+=16.0;
     s1+=112.0;
    }
   }
  }
 }
} else {
 if(i34<1.0590304136276245){
  s0+=345.0;
 } else {
  if(i7<-4.5369753934210166e-05){
   if(i15<1.0012471675872803){
    if(i0<0.12437629699707031){
     s0+=187.0;
     s1+=423.0;
    } else {
     s0+=21.0;
     s1+=956.0;
    }
   } else {
    if(i62<0.00020678623695857823){
     s0+=22.0;
     s1+=268.0;
    } else {
     s0+=20.0;
     s1+=9593.0;
    }
   }
  } else {
   if(i13<0.0006111264228820801){
    if(i43<0.00227586692199111){
     s0+=3.0;
     s1+=67.0;
    } else {
     s0+=190.0;
     s1+=15.0;
    }
   } else {
    if(i10<-0.001417696475982666){
     s0+=8.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=225.0;
    }
   }
  }
 }
}
if(i1<0.07891923189163208){
 if(i6<1.0024782419204712){
  if(i41<0.04556460678577423){
   if(i29<1.0113568305969238){
    if(i30<0.0002916347293648869){
     s0+=51580.0;
     s1+=179.0;
    } else {
     s0+=4588.0;
     s1+=362.0;
    }
   } else {
    if(i7<-2.7509959181770682e-05){
     s0+=19.0;
     s1+=94.0;
    } else {
     s0+=86.0;
     s1+=3.0;
    }
   }
  } else {
   if(i33<1.100754976272583){
    if(i37<0.0004220494593027979){
     s0+=2034.0;
     s1+=35.0;
    } else {
     s0+=1020.0;
     s1+=792.0;
    }
   } else {
    if(i2<0.06161251664161682){
     s0+=8535.0;
     s1+=300.0;
    } else {
     s0+=846.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i47<-1.4114700206846464e-05){
   if(i49<0.001763761043548584){
    if(i34<1.1961640119552612){
     s0+=8.0;
     s1+=649.0;
    } else {
     s0+=61.0;
     s1+=180.0;
    }
   } else {
    if(i42<1.1675405502319336){
     s1+=4.0;
    } else {
     s0+=39.0;
    }
   }
  } else {
   if(i13<0.000613093376159668){
    if(i59<0.005268087610602379){
     s0+=157.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=12.0;
   }
  }
 }
} else {
 if(i5<7.808208465576172e-06){
  if(i39<0.0480802059173584){
   if(i76<1.1121408533654176e-05){
    if(i7<1.752530261001084e-05){
     s0+=100.0;
     s1+=1265.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i35<1.5269668102264404){
     s0+=83.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i43<0.0038805664516985416){
    if(i59<-0.02733602188527584){
     s0+=557.0;
     s1+=14.0;
    } else {
     s0+=474.0;
     s1+=256.0;
    }
   } else {
    if(i4<0.14387106895446777){
     s0+=247.0;
     s1+=28.0;
    } else {
     s0+=20.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i6<1.0021567344665527){
   if(i45<0.02594878524541855){
    if(i50<0.01678144931793213){
     s0+=99.0;
     s1+=740.0;
    } else {
     s0+=300.0;
     s1+=130.0;
    }
   } else {
    if(i29<1.0283206701278687){
     s0+=2.0;
     s1+=523.0;
    } else {
     s0+=48.0;
     s1+=341.0;
    }
   }
  } else {
   if(i16<1.0233194828033447){
    if(i47<-1.2969486306246836e-05){
     s0+=75.0;
     s1+=3554.0;
    } else {
     s0+=46.0;
     s1+=167.0;
    }
   } else {
    if(i17<0.0018751592142507434){
     s0+=2.0;
     s1+=54.0;
    } else {
     s1+=6937.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i9<1.0451608896255493){
  if(i50<-0.006175518035888672){
   if(i5<3.600120544433594e-05){
    if(i4<0.037779778242111206){
     s0+=1868.0;
     s1+=185.0;
    } else {
     s0+=77.0;
     s1+=99.0;
    }
   } else {
    if(i29<0.9446893334388733){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=57.0;
    }
   }
  } else {
   if(i6<1.0026992559432983){
    if(i24<0.01393103413283825){
     s0+=50746.0;
     s1+=188.0;
    } else {
     s0+=9186.0;
     s1+=353.0;
    }
   } else {
    if(i47<-1.6224952560150996e-05){
     s1+=68.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i5<3.415346145629883e-05){
   if(i40<0.0020140809938311577){
    if(i37<0.00032641866710036993){
     s0+=1267.0;
     s1+=15.0;
    } else {
     s0+=1629.0;
     s1+=939.0;
    }
   } else {
    if(i50<-0.020884394645690918){
     s0+=863.0;
     s1+=188.0;
    } else {
     s0+=3221.0;
     s1+=72.0;
    }
   }
  } else {
   if(i60<0.0017554163932800293){
    if(i15<0.9985824823379517){
     s0+=102.0;
     s1+=189.0;
    } else {
     s0+=23.0;
     s1+=682.0;
    }
   } else {
    if(i6<1.0045833587646484){
     s0+=148.0;
     s1+=13.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i14<1.0010182857513428){
  if(i22<-1.6063451766967773e-05){
   if(i47<-1.0808560546138324e-05){
    if(i27<0.0006786506855860353){
     s0+=3.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i22<-1.7344951629638672e-05){
     s0+=394.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=5.0;
    }
   }
  } else {
   if(i24<0.0246770940721035){
    if(i63<0.004069149494171143){
     s0+=229.0;
     s1+=592.0;
    } else {
     s0+=596.0;
     s1+=119.0;
    }
   } else {
    if(i39<0.05505213141441345){
     s0+=38.0;
     s1+=1815.0;
    } else {
     s0+=254.0;
     s1+=1043.0;
    }
   }
  }
 } else {
  if(i42<1.2889986038208008){
   if(i39<0.05429428815841675){
    if(i66<-0.005505883134901524){
     s0+=24.0;
     s1+=287.0;
    } else {
     s0+=12.0;
     s1+=2388.0;
    }
   } else {
    if(i47<-1.3336426491150633e-05){
     s0+=31.0;
     s1+=542.0;
    } else {
     s0+=113.0;
     s1+=121.0;
    }
   }
  } else {
   if(i76<1.0509746061870828e-05){
    if(i8<1.0629057884216309){
     s0+=9.0;
     s1+=416.0;
    } else {
     s0+=3.0;
     s1+=6961.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i8<1.0451881885528564){
  if(i49<-0.0017766356468200684){
   if(i0<0.03775167465209961){
    if(i40<0.0016602588584646583){
     s0+=685.0;
     s1+=229.0;
    } else {
     s0+=1583.0;
     s1+=42.0;
    }
   } else {
    if(i28<0.9942518472671509){
     s0+=155.0;
     s1+=339.0;
    } else {
     s0+=228.0;
     s1+=38.0;
    }
   }
  } else {
   if(i16<1.0080902576446533){
    if(i1<0.08526468276977539){
     s0+=61873.0;
     s1+=854.0;
    } else {
     s0+=140.0;
     s1+=351.0;
    }
   } else {
    if(i68<0.02120649814605713){
     s0+=23.0;
     s1+=93.0;
    } else {
     s0+=101.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i17<0.004971951246261597){
   if(i52<-8.14119484857656e-05){
    if(i17<0.0017414414323866367){
     s0+=212.0;
     s1+=43.0;
    } else {
     s0+=98.0;
     s1+=373.0;
    }
   } else {
    if(i7<-6.6013717514579184e-06){
     s0+=1970.0;
     s1+=1032.0;
    } else {
     s0+=2774.0;
     s1+=153.0;
    }
   }
  } else {
   if(i1<0.08564546704292297){
    if(i61<1.0003831386566162){
     s0+=235.0;
     s1+=266.0;
    } else {
     s0+=187.0;
     s1+=6.0;
    }
   } else {
    if(i31<0.9986945986747742){
     s0+=56.0;
     s1+=1.0;
    } else {
     s0+=85.0;
     s1+=1676.0;
    }
   }
  }
 }
} else {
 if(i19<1.0419573783874512){
  if(i7<-4.719635035144165e-05){
   s1+=1.0;
  } else {
   s0+=176.0;
  }
 } else {
  if(i20<0.00021392107009887695){
   if(i7<-4.643234933610074e-05){
    if(i0<0.12303322553634644){
     s0+=231.0;
     s1+=889.0;
    } else {
     s0+=22.0;
     s1+=2037.0;
    }
   } else {
    if(i45<0.007567045744508505){
     s0+=115.0;
     s1+=14.0;
    } else {
     s0+=46.0;
     s1+=309.0;
    }
   }
  } else {
   s1+=8476.0;
  }
 }
}
if(i0<0.08509460091590881){
 if(i11<1.00193452835083){
  if(i56<0.00028926131199114025){
   if(i21<1.0095493793487549){
    if(i77<-0.0021465718746185303){
     s1+=2.0;
    } else {
     s0+=46534.0;
     s1+=65.0;
    }
   } else {
    s1+=43.0;
   }
  } else {
   if(i42<1.103413462638855){
    if(i34<1.067455530166626){
     s0+=4041.0;
     s1+=165.0;
    } else {
     s0+=1758.0;
     s1+=1451.0;
    }
   } else {
    if(i3<0.00026667118072509766){
     s0+=15776.0;
     s1+=402.0;
    } else {
     s0+=521.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i3<0.0004775524139404297){
   if(i45<0.04177436977624893){
    if(i64<1.5059609722811729e-05){
     s0+=11.0;
     s1+=18.0;
    } else {
     s0+=487.0;
     s1+=20.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i57<6.59342622384429e-05){
    if(i17<0.0012950306991115212){
     s0+=12.0;
    } else {
     s1+=534.0;
    }
   } else {
    if(i29<0.9919050931930542){
     s0+=55.0;
     s1+=298.0;
    } else {
     s0+=102.0;
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0004050135612487793){
  if(i37<0.008032998070120811){
   if(i14<0.994355320930481){
    s0+=626.0;
   } else {
    if(i47<-8.832528692437336e-06){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=30.0;
    }
   }
  } else {
   if(i9<1.0457030534744263){
    if(i49<-0.0035808682441711426){
     s1+=1.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i28<0.9620866179466248){
     s0+=1.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i62<0.00023448503634426743){
   if(i49<0.004372000694274902){
    if(i37<0.0006518943700939417){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=110.0;
     s1+=1038.0;
    }
   } else {
    if(i20<0.00010472536087036133){
     s0+=447.0;
     s1+=136.0;
    } else {
     s0+=1.0;
     s1+=79.0;
    }
   }
  } else {
   if(i0<0.1293582320213318){
    if(i54<0.05646306276321411){
     s0+=178.0;
     s1+=1840.0;
    } else {
     s0+=367.0;
     s1+=47.0;
    }
   } else {
    if(i31<0.99728924036026){
     s0+=7.0;
    } else {
     s0+=122.0;
     s1+=10628.0;
    }
   }
  }
 }
}
if(i16<1.0081498622894287){
 if(i9<1.0452215671539307){
  if(i1<0.08297067880630493){
   if(i19<1.0451585054397583){
    if(i79<-0.000752568244934082){
     s0+=5551.0;
     s1+=171.0;
    } else {
     s0+=48929.0;
     s1+=66.0;
    }
   } else {
    if(i2<0.05801886320114136){
     s0+=7118.0;
     s1+=419.0;
    } else {
     s0+=616.0;
     s1+=251.0;
    }
   }
  } else {
   if(i67<0.997981607913971){
    if(i32<1.007214069366455){
     s0+=104.0;
     s1+=6.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i20<-0.0003027915954589844){
     s0+=60.0;
     s1+=24.0;
    } else {
     s0+=29.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i7<-2.3177639377536252e-05){
   if(i69<0.03956310451030731){
    if(i33<1.2371783256530762){
     s0+=66.0;
     s1+=592.0;
    } else {
     s0+=1058.0;
     s1+=198.0;
    }
   } else {
    if(i2<0.06285017728805542){
     s0+=539.0;
     s1+=353.0;
    } else {
     s0+=225.0;
     s1+=2773.0;
    }
   }
  } else {
   if(i79<-0.00047710537910461426){
    if(i3<-0.00026863813400268555){
     s0+=1265.0;
     s1+=193.0;
    } else {
     s0+=353.0;
     s1+=447.0;
    }
   } else {
    if(i24<0.02936738356947899){
     s0+=3770.0;
     s1+=112.0;
    } else {
     s0+=234.0;
     s1+=172.0;
    }
   }
  }
 }
} else {
 if(i6<1.002274513244629){
  if(i71<1.0002961158752441){
   if(i72<9.164457992483221e-07){
    if(i31<0.9988512992858887){
     s0+=41.0;
    } else {
     s0+=276.0;
     s1+=1398.0;
    }
   } else {
    s0+=183.0;
   }
  } else {
   if(i59<-0.005132067017257214){
    if(i48<0.001995919970795512){
     s0+=225.0;
     s1+=65.0;
    } else {
     s0+=4.0;
     s1+=235.0;
    }
   } else {
    if(i7<-4.717841511592269e-05){
     s0+=14.0;
     s1+=74.0;
    } else {
     s0+=413.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i17<0.0022073215804994106){
   if(i6<1.004642128944397){
    if(i72<-5.134922048455337e-06){
     s1+=37.0;
    } else {
     s0+=171.0;
     s1+=6.0;
    }
   } else {
    s1+=134.0;
   }
  } else {
   if(i2<0.12857815623283386){
    if(i14<0.9978141784667969){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=23.0;
     s1+=1306.0;
    }
   } else {
    if(i28<0.9948010444641113){
     s0+=3.0;
     s1+=239.0;
    } else {
     s1+=7333.0;
    }
   }
  }
 }
}
if(i15<1.0059590339660645){
 if(i24<0.02208344265818596){
  if(i2<0.07829615473747253){
   if(i12<1.0029255151748657){
    if(i70<-0.0020726919174194336){
     s0+=3423.0;
     s1+=583.0;
    } else {
     s0+=58552.0;
     s1+=464.0;
    }
   } else {
    if(i35<1.2011767625808716){
     s0+=81.0;
     s1+=105.0;
    } else {
     s0+=392.0;
     s1+=77.0;
    }
   }
  } else {
   if(i26<1.0239845514297485){
    if(i6<0.9969233274459839){
     s0+=247.0;
     s1+=17.0;
    } else {
     s0+=255.0;
     s1+=559.0;
    }
   } else {
    if(i62<0.0005211067036725581){
     s0+=455.0;
     s1+=48.0;
    } else {
     s0+=90.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i1<0.0797206461429596){
   if(i15<0.9901070594787598){
    if(i49<-0.003736823797225952){
     s0+=803.0;
     s1+=196.0;
    } else {
     s0+=4511.0;
     s1+=20.0;
    }
   } else {
    if(i34<1.0587794780731201){
     s0+=382.0;
     s1+=10.0;
    } else {
     s0+=549.0;
     s1+=893.0;
    }
   }
  } else {
   if(i44<0.05886644124984741){
    if(i42<1.0679112672805786){
     s0+=26.0;
    } else {
     s0+=19.0;
     s1+=2135.0;
    }
   } else {
    if(i13<-0.0004054605960845947){
     s0+=211.0;
     s1+=7.0;
    } else {
     s0+=382.0;
     s1+=1636.0;
    }
   }
  }
 }
} else {
 if(i48<0.0007877458119764924){
  if(i6<1.0041477680206299){
   if(i36<1.627206802368164e-05){
    if(i51<-0.0005023959674872458){
     s0+=55.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=287.0;
    }
   } else {
    if(i34<1.083292841911316){
     s1+=33.0;
    } else {
     s0+=586.0;
    }
   }
  } else {
   s1+=450.0;
  }
 } else {
  if(i7<-4.317488128435798e-05){
   if(i11<0.998688817024231){
    s0+=30.0;
   } else {
    if(i14<1.001951813697815){
     s0+=24.0;
     s1+=849.0;
    } else {
     s1+=8456.0;
    }
   }
  } else {
   if(i37<0.0024207099340856075){
    if(i19<1.1176903247833252){
     s1+=114.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i4<0.13900592923164368){
     s0+=84.0;
    } else {
     s1+=57.0;
    }
   }
  }
 }
}
if(i8<1.0452215671539307){
 if(i2<0.07712078094482422){
  if(i11<1.0019073486328125){
   if(i49<-0.0018933415412902832){
    if(i38<0.001353473518975079){
     s0+=1022.0;
     s1+=465.0;
    } else {
     s0+=1410.0;
     s1+=56.0;
    }
   } else {
    if(i41<0.043528951704502106){
     s0+=54631.0;
     s1+=425.0;
    } else {
     s0+=7600.0;
     s1+=445.0;
    }
   }
  } else {
   if(i6<1.0015428066253662){
    if(i36<0.0003573298454284668){
     s0+=23.0;
     s1+=29.0;
    } else {
     s0+=312.0;
     s1+=4.0;
    }
   } else {
    if(i58<0.0013985096011310816){
     s0+=33.0;
     s1+=50.0;
    } else {
     s0+=13.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i14<0.9940365552902222){
   if(i52<0.0009022223530337214){
    if(i14<0.9932217597961426){
     s0+=200.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=7.0;
    }
   } else {
    if(i65<0.07678067684173584){
     s1+=42.0;
    } else {
     s0+=20.0;
     s1+=11.0;
    }
   }
  } else {
   if(i34<1.0581717491149902){
    if(i8<1.0224109888076782){
     s1+=3.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i76<9.028890417539515e-06){
     s0+=35.0;
     s1+=925.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i6<1.0015792846679688){
  if(i4<0.08119150996208191){
   if(i0<0.08951044082641602){
    if(i33<1.1013743877410889){
     s0+=932.0;
     s1+=453.0;
    } else {
     s0+=3016.0;
     s1+=273.0;
    }
   } else {
    if(i66<-0.00757225975394249){
     s0+=59.0;
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=402.0;
    }
   }
  } else {
   if(i37<0.0059573352336883545){
    if(i7<-1.381069523631595e-05){
     s0+=271.0;
     s1+=685.0;
    } else {
     s0+=729.0;
     s1+=69.0;
    }
   } else {
    if(i19<1.0790610313415527){
     s0+=27.0;
    } else {
     s0+=70.0;
     s1+=1133.0;
    }
   }
  }
 } else {
  if(i25<1.0255985260009766){
   if(i3<0.0004470646381378174){
    if(i7<-3.358311369083822e-05){
     s0+=80.0;
     s1+=247.0;
    } else {
     s0+=141.0;
     s1+=26.0;
    }
   } else {
    if(i1<0.06540951132774353){
     s0+=141.0;
     s1+=311.0;
    } else {
     s0+=175.0;
     s1+=4202.0;
    }
   }
  } else {
   if(i62<0.00018808231106959283){
    if(i36<9.340047836303711e-05){
     s0+=14.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i2<0.03819093108177185){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=6519.0;
    }
   }
  }
 }
}
if(i4<0.07109606266021729){
 if(i3<0.0005878210067749023){
  if(i41<0.045310452580451965){
   if(i60<-0.0029738545417785645){
    if(i70<-0.009683996438980103){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=101.0;
    }
   } else {
    if(i9<1.0451608896255493){
     s0+=53599.0;
     s1+=275.0;
    } else {
     s0+=2537.0;
     s1+=514.0;
    }
   }
  } else {
   if(i2<0.07751694321632385){
    if(i40<0.0020232335664331913){
     s0+=4319.0;
     s1+=1028.0;
    } else {
     s0+=8061.0;
     s1+=250.0;
    }
   } else {
    if(i6<0.9952781796455383){
     s0+=46.0;
    } else {
     s0+=23.0;
     s1+=474.0;
    }
   }
  }
 } else {
  if(i27<0.00017708349332679063){
   if(i7<-4.466340396902524e-05){
    s1+=45.0;
   } else {
    if(i52<7.995622581802309e-05){
     s0+=157.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i59<-0.01081925630569458){
    if(i2<0.07569462060928345){
     s0+=67.0;
     s1+=20.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i17<0.0022737530525773764){
     s0+=69.0;
     s1+=60.0;
    } else {
     s0+=70.0;
     s1+=1797.0;
    }
   }
  }
 }
} else {
 if(i17<0.004691104404628277){
  if(i15<1.0090327262878418){
   if(i11<0.9986073970794678){
    if(i6<0.9969772100448608){
     s0+=430.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=10.0;
    }
   } else {
    if(i66<-0.004573552869260311){
     s0+=883.0;
     s1+=281.0;
    } else {
     s0+=337.0;
     s1+=806.0;
    }
   }
  } else {
   if(i49<0.010296106338500977){
    if(i0<0.09226921200752258){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=609.0;
    }
   } else {
    if(i15<1.033280849456787){
     s0+=18.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i6<0.9963064193725586){
   if(i35<1.5404508113861084){
    if(i42<1.4303699731826782){
     s0+=134.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=16.0;
    }
   } else {
    if(i78<0.0008384655229747295){
     s0+=14.0;
     s1+=4.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i28<0.9972957968711853){
    if(i8<1.1222549676895142){
     s0+=276.0;
     s1+=889.0;
    } else {
     s0+=1.0;
     s1+=1174.0;
    }
   } else {
    if(i71<1.0067238807678223){
     s0+=9.0;
     s1+=8596.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i1<0.08340436220169067){
 if(i11<1.0018284320831299){
  if(i19<1.0467959642410278){
   if(i50<-0.00617489218711853){
    if(i43<0.0003881434095092118){
     s0+=518.0;
     s1+=6.0;
    } else {
     s0+=177.0;
     s1+=81.0;
    }
   } else {
    if(i77<-0.000918269157409668){
     s0+=6736.0;
     s1+=145.0;
    } else {
     s0+=47581.0;
     s1+=38.0;
    }
   }
  } else {
   if(i37<0.0011266183573752642){
    if(i1<0.06314149498939514){
     s0+=3614.0;
     s1+=832.0;
    } else {
     s0+=320.0;
     s1+=573.0;
    }
   } else {
    if(i63<-0.0027083754539489746){
     s0+=1110.0;
     s1+=238.0;
    } else {
     s0+=8707.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i5<3.319978713989258e-05){
   if(i55<0.009886574000120163){
    if(i33<1.3482874631881714){
     s0+=12.0;
     s1+=19.0;
    } else {
     s0+=504.0;
     s1+=9.0;
    }
   } else {
    if(i1<0.016770392656326294){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=9.0;
     s1+=52.0;
    }
   }
  } else {
   if(i40<0.0010118726640939713){
    if(i27<0.0001222851569764316){
     s0+=5.0;
    } else {
     s1+=469.0;
    }
   } else {
    if(i49<-0.0013939738273620605){
     s0+=49.0;
     s1+=351.0;
    } else {
     s0+=154.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i43<0.006295613944530487){
  if(i6<0.9965493679046631){
   if(i69<0.0651930570602417){
    if(i10<-0.003258049488067627){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=276.0;
    }
   } else {
    if(i36<-0.00014212727546691895){
     s0+=165.0;
    } else {
     s0+=9.0;
     s1+=19.0;
    }
   }
  } else {
   if(i17<0.0017158968839794397){
    if(i44<0.05853345990180969){
     s0+=18.0;
     s1+=185.0;
    } else {
     s0+=534.0;
     s1+=107.0;
    }
   } else {
    if(i53<0.052200257778167725){
     s0+=284.0;
     s1+=3947.0;
    } else {
     s0+=221.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i9<1.0764193534851074){
   if(i61<1.0005804300308228){
    if(i7<-1.1253676348133013e-05){
     s0+=12.0;
     s1+=354.0;
    } else {
     s0+=11.0;
    }
   } else {
    s0+=35.0;
   }
  } else {
   if(i71<1.0020780563354492){
    if(i17<0.007223013322800398){
     s0+=26.0;
     s1+=792.0;
    } else {
     s0+=8.0;
     s1+=7943.0;
    }
   } else {
    if(i17<0.006475933827459812){
     s0+=20.0;
    } else {
     s0+=13.0;
     s1+=421.0;
    }
   }
  }
 }
}
if(i4<0.07109606266021729){
 if(i5<4.0471553802490234e-05){
  if(i56<0.0003127783420495689){
   if(i21<1.008384108543396){
    if(i32<1.012852430343628){
     s0+=46968.0;
     s1+=77.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i16<1.006800889968872){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   }
  } else {
   if(i1<0.07751640677452087){
    if(i37<0.0010416010627523065){
     s0+=5118.0;
     s1+=1295.0;
    } else {
     s0+=16141.0;
     s1+=468.0;
    }
   } else {
    if(i35<1.0696015357971191){
     s0+=62.0;
    } else {
     s0+=96.0;
     s1+=849.0;
    }
   }
  }
 } else {
  if(i34<1.0577372312545776){
   s0+=258.0;
  } else {
   if(i6<1.0041346549987793){
    if(i57<-1.2175896699773148e-05){
     s0+=113.0;
     s1+=31.0;
    } else {
     s0+=129.0;
     s1+=412.0;
    }
   } else {
    if(i33<1.5682398080825806){
     s0+=4.0;
     s1+=1302.0;
    } else {
     s0+=17.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i12<1.0015947818756104){
  if(i40<0.010467801243066788){
   if(i17<0.0019032624550163746){
    if(i38<0.0005824657273478806){
     s0+=515.0;
     s1+=32.0;
    } else {
     s0+=296.0;
     s1+=171.0;
    }
   } else {
    if(i7<-9.379833500133827e-06){
     s0+=482.0;
     s1+=1604.0;
    } else {
     s0+=492.0;
     s1+=110.0;
    }
   }
  } else {
   if(i51<2.1360538084991276e-05){
    if(i2<0.08223351836204529){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=3.0;
     s1+=1167.0;
    }
   } else {
    if(i0<0.1411190927028656){
     s0+=29.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i15<1.007612705230713){
   if(i17<0.002890031784772873){
    if(i26<1.0220508575439453){
     s0+=5.0;
     s1+=72.0;
    } else {
     s0+=179.0;
     s1+=13.0;
    }
   } else {
    if(i1<0.09631592035293579){
     s0+=100.0;
     s1+=172.0;
    } else {
     s0+=47.0;
     s1+=2233.0;
    }
   }
  } else {
   if(i42<1.253311276435852){
    if(i42<1.2524442672729492){
     s0+=1.0;
     s1+=947.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   } else {
    s1+=6014.0;
   }
  }
 }
}
if(i13<0.00043314695358276367){
 if(i4<0.07074183225631714){
  if(i52<-8.217233698815107e-05){
   if(i37<0.003236672841012478){
    if(i35<1.1820628643035889){
     s0+=86.0;
     s1+=420.0;
    } else {
     s0+=103.0;
     s1+=10.0;
    }
   } else {
    s0+=180.0;
   }
  } else {
   if(i27<0.000304182234685868){
    if(i19<1.048384666442871){
     s0+=50714.0;
     s1+=163.0;
    } else {
     s0+=5359.0;
     s1+=399.0;
    }
   } else {
    if(i2<0.07645884156227112){
     s0+=10892.0;
     s1+=1206.0;
    } else {
     s0+=63.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i17<0.004643522202968597){
   if(i38<0.0004557690699584782){
    if(i11<1.0005743503570557){
     s0+=385.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i66<-0.0042205872014164925){
     s0+=927.0;
     s1+=311.0;
    } else {
     s0+=252.0;
     s1+=882.0;
    }
   }
  } else {
   if(i36<-0.0002668797969818115){
    if(i56<0.033183783292770386){
     s0+=93.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i79<-0.0023981034755706787){
     s0+=64.0;
     s1+=180.0;
    } else {
     s0+=33.0;
     s1+=1975.0;
    }
   }
  }
 }
} else {
 if(i45<0.026486588642001152){
  if(i25<1.005556344985962){
   if(i62<0.0008257284061983228){
    if(i6<1.0015573501586914){
     s0+=321.0;
     s1+=102.0;
    } else {
     s0+=106.0;
     s1+=501.0;
    }
   } else {
    if(i44<0.09043282270431519){
     s0+=908.0;
     s1+=114.0;
    } else {
     s0+=15.0;
     s1+=60.0;
    }
   }
  } else {
   if(i47<-1.622044510440901e-05){
    if(i5<3.3915042877197266e-05){
     s0+=81.0;
     s1+=33.0;
    } else {
     s0+=69.0;
     s1+=2495.0;
    }
   } else {
    if(i34<1.1005322933197021){
     s0+=21.0;
     s1+=83.0;
    } else {
     s0+=162.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i3<-0.0006461143493652344){
   if(i54<-0.0525931715965271){
    s1+=12.0;
   } else {
    s0+=92.0;
   }
  } else {
   if(i1<0.08131295442581177){
    if(i63<0.0008745193481445312){
     s0+=13.0;
     s1+=226.0;
    } else {
     s0+=30.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.0013229881878942251){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=6.0;
     s1+=7664.0;
    }
   }
  }
 }
}
if(i13<0.00044038891792297363){
 if(i27<0.00032602797728031874){
  if(i2<0.09015443921089172){
   if(i29<1.009566068649292){
    if(i69<0.05776247754693031){
     s0+=56987.0;
     s1+=516.0;
    } else {
     s0+=42.0;
     s1+=47.0;
    }
   } else {
    if(i38<0.00073317188071087){
     s0+=129.0;
     s1+=136.0;
    } else {
     s0+=260.0;
     s1+=22.0;
    }
   }
  } else {
   if(i64<1.9617258658399805e-05){
    if(i33<1.0840110778808594){
     s0+=6.0;
    } else {
     s1+=273.0;
    }
   } else {
    if(i75<0.00013418853632174432){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=29.0;
    }
   }
  }
 } else {
  if(i28<1.0048902034759521){
   if(i1<0.0813591480255127){
    if(i40<0.0016938874032348394){
     s0+=3000.0;
     s1+=828.0;
    } else {
     s0+=7036.0;
     s1+=220.0;
    }
   } else {
    if(i38<0.0005144427996128798){
     s0+=321.0;
     s1+=43.0;
    } else {
     s0+=658.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i10<0.0007561445236206055){
    if(i61<0.9998717308044434){
     s0+=232.0;
     s1+=449.0;
    } else {
     s0+=690.0;
     s1+=245.0;
    }
   } else {
    if(i78<0.0002016046637436375){
     s0+=27.0;
     s1+=115.0;
    } else {
     s0+=40.0;
     s1+=1159.0;
    }
   }
  }
 }
} else {
 if(i43<0.0004188957973383367){
  s0+=224.0;
 } else {
  if(i22<3.5822391510009766e-05){
   if(i6<1.002212405204773){
    if(i4<0.11133962869644165){
     s0+=1182.0;
     s1+=307.0;
    } else {
     s0+=32.0;
     s1+=322.0;
    }
   } else {
    if(i30<0.00018448790069669485){
     s0+=37.0;
     s1+=7.0;
    } else {
     s0+=105.0;
     s1+=3174.0;
    }
   }
  } else {
   if(i12<1.0003437995910645){
    if(i57<0.00021223742805887014){
     s0+=35.0;
     s1+=124.0;
    } else {
     s0+=79.0;
     s1+=4.0;
    }
   } else {
    if(i5<7.587671279907227e-05){
     s0+=129.0;
     s1+=319.0;
    } else {
     s0+=42.0;
     s1+=6820.0;
    }
   }
  }
 }
}
if(i6<1.0024179220199585){
 if(i16<1.0081526041030884){
  if(i2<0.08138653635978699){
   if(i60<-0.0013793110847473145){
    if(i20<-0.0002899467945098877){
     s0+=2793.0;
     s1+=119.0;
    } else {
     s0+=2696.0;
     s1+=872.0;
    }
   } else {
    if(i30<0.0002820672234520316){
     s0+=52027.0;
     s1+=144.0;
    } else {
     s0+=10884.0;
     s1+=823.0;
    }
   }
  } else {
   if(i44<0.0578877329826355){
    if(i11<0.9980413913726807){
     s0+=56.0;
    } else {
     s0+=22.0;
     s1+=1164.0;
    }
   } else {
    if(i65<0.11535649001598358){
     s0+=1002.0;
     s1+=446.0;
    } else {
     s0+=36.0;
     s1+=349.0;
    }
   }
  }
 } else {
  if(i17<0.003641538554802537){
   if(i42<1.0950405597686768){
    if(i33<1.089235782623291){
     s0+=37.0;
    } else {
     s0+=1.0;
     s1+=369.0;
    }
   } else {
    if(i24<0.03446628153324127){
     s0+=935.0;
     s1+=101.0;
    } else {
     s0+=77.0;
     s1+=183.0;
    }
   }
  } else {
   if(i36<-0.00022518634796142578){
    if(i19<1.453892469406128){
     s0+=95.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i71<1.002363681793213){
     s0+=8.0;
     s1+=1134.0;
    } else {
     s0+=11.0;
     s1+=80.0;
    }
   }
  }
 }
} else {
 if(i45<0.01686345785856247){
  if(i3<0.0009384751319885254){
   if(i34<1.1486610174179077){
    if(i51<-0.00011753672151826322){
     s0+=3.0;
     s1+=398.0;
    } else {
     s0+=31.0;
     s1+=38.0;
    }
   } else {
    if(i4<0.11787521839141846){
     s0+=261.0;
     s1+=18.0;
    } else {
     s0+=7.0;
     s1+=21.0;
    }
   }
  } else {
   if(i38<0.009030956774950027){
    if(i10<-0.0009061098098754883){
     s0+=11.0;
     s1+=37.0;
    } else {
     s1+=1637.0;
    }
   } else {
    if(i0<0.14506548643112183){
     s0+=70.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i3<0.001463472843170166){
   if(i71<0.99756920337677){
    if(i1<0.1407603621482849){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<1.0007503032684326){
     s0+=9.0;
     s1+=2096.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i74<0.8982072472572327){
    if(i45<0.019569091498851776){
     s0+=1.0;
    } else {
     s1+=113.0;
    }
   } else {
    s1+=6942.0;
   }
  }
 }
}
if(i0<0.08509331941604614){
 if(i6<1.0024954080581665){
  if(i56<0.0002921563573181629){
   if(i32<1.0113673210144043){
    if(i16<1.0095185041427612){
     s0+=46325.0;
     s1+=36.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i79<0.0005804300308227539){
     s0+=9.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i0<0.06630915403366089){
    if(i34<1.1031841039657593){
     s0+=6793.0;
     s1+=1061.0;
    } else {
     s0+=13671.0;
     s1+=289.0;
    }
   } else {
    if(i46<0.04172179102897644){
     s0+=79.0;
     s1+=429.0;
    } else {
     s0+=2083.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i36<0.00015270709991455078){
   if(i35<1.2374356985092163){
    s1+=37.0;
   } else {
    if(i17<0.010711029171943665){
     s0+=157.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i49<0.003022611141204834){
    if(i48<0.0005665921489708126){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=62.0;
     s1+=919.0;
    }
   } else {
    if(i10<0.0004718303680419922){
     s0+=38.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i43<0.006295825354754925){
  if(i36<-0.00013971328735351562){
   if(i47<-9.429550118511543e-06){
    if(i31<0.9962488412857056){
     s0+=10.0;
    } else {
     s1+=27.0;
    }
   } else {
    s0+=643.0;
   }
  } else {
   if(i6<1.0019667148590088){
    if(i33<1.255998969078064){
     s0+=407.0;
     s1+=1832.0;
    } else {
     s0+=656.0;
     s1+=433.0;
    }
   } else {
    if(i63<0.009060502052307129){
     s0+=46.0;
     s1+=2174.0;
    } else {
     s0+=35.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i9<1.0429720878601074){
   if(i64<3.5834877053275704e-05){
    if(i23<1.037135362625122){
     s1+=40.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i13<0.0004965066909790039){
     s0+=68.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i5<-0.00011226534843444824){
    if(i2<0.1187845766544342){
     s0+=13.0;
     s1+=1.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i71<1.0020780563354492){
     s0+=30.0;
     s1+=8887.0;
    } else {
     s0+=67.0;
     s1+=418.0;
    }
   }
  }
 }
}
if(i1<0.08237019181251526){
 if(i13<0.0005928277969360352){
  if(i54<-0.028488874435424805){
   if(i3<0.000273972749710083){
    if(i36<-5.626678466796875e-05){
     s0+=1050.0;
     s1+=51.0;
    } else {
     s0+=1200.0;
     s1+=455.0;
    }
   } else {
    if(i77<0.0029066801071166992){
     s0+=26.0;
     s1+=118.0;
    } else {
     s0+=29.0;
     s1+=4.0;
    }
   }
  } else {
   if(i9<1.0428826808929443){
    if(i6<1.0025544166564941){
     s0+=59521.0;
     s1+=570.0;
    } else {
     s0+=53.0;
     s1+=31.0;
    }
   } else {
    if(i34<1.1031841039657593){
     s0+=2915.0;
     s1+=830.0;
    } else {
     s0+=3815.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i57<0.0001415932783856988){
   if(i19<1.0629007816314697){
    if(i60<-0.0007912218570709229){
     s0+=5.0;
     s1+=39.0;
    } else {
     s0+=165.0;
     s1+=26.0;
    }
   } else {
    if(i71<1.0021673440933228){
     s0+=43.0;
     s1+=680.0;
    } else {
     s0+=50.0;
     s1+=41.0;
    }
   }
  } else {
   if(i9<1.0999420881271362){
    if(i16<0.9770869612693787){
     s0+=35.0;
     s1+=30.0;
    } else {
     s0+=494.0;
     s1+=13.0;
    }
   } else {
    if(i33<1.5269668102264404){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=101.0;
    }
   }
  }
 }
} else {
 if(i17<0.00469526881352067){
  if(i49<0.004208505153656006){
   if(i7<-6.076155841583386e-06){
    if(i39<0.05634811520576477){
     s0+=56.0;
     s1+=1638.0;
    } else {
     s0+=147.0;
     s1+=208.0;
    }
   } else {
    if(i39<0.03850364685058594){
     s0+=33.0;
     s1+=60.0;
    } else {
     s0+=224.0;
     s1+=31.0;
    }
   }
  } else {
   if(i2<0.13257765769958496){
    if(i0<0.14291715621948242){
     s0+=529.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i39<0.09403181076049805){
     s0+=26.0;
     s1+=270.0;
    } else {
     s0+=341.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i19<1.049620509147644){
   if(i76<1.7962196352527826e-06){
    s1+=21.0;
   } else {
    if(i8<1.0433669090270996){
     s0+=47.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  } else {
   if(i13<-0.0005213022232055664){
    s0+=60.0;
   } else {
    if(i25<1.0030992031097412){
     s0+=145.0;
     s1+=2334.0;
    } else {
     s0+=17.0;
     s1+=9407.0;
    }
   }
  }
 }
}
if(i0<0.0853736400604248){
 if(i12<1.003481388092041){
  if(i19<1.0486011505126953){
   if(i58<0.0021026460453867912){
    if(i41<0.0434558242559433){
     s0+=50266.0;
     s1+=78.0;
    } else {
     s0+=4444.0;
     s1+=128.0;
    }
   } else {
    if(i19<1.0451428890228271){
     s0+=962.0;
     s1+=73.0;
    } else {
     s0+=56.0;
     s1+=54.0;
    }
   }
  } else {
   if(i35<1.1037919521331787){
    if(i65<0.014782924205064774){
     s0+=2143.0;
     s1+=452.0;
    } else {
     s0+=545.0;
     s1+=979.0;
    }
   } else {
    if(i54<-0.032567232847213745){
     s0+=1118.0;
     s1+=267.0;
    } else {
     s0+=8794.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i5<2.9981136322021484e-05){
   if(i51<-0.0003881995799019933){
    if(i7<-3.9029087929520756e-05){
     s1+=21.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i72<-1.5225917195493821e-05){
     s1+=3.0;
    } else {
     s0+=595.0;
     s1+=10.0;
    }
   }
  } else {
   if(i6<1.0041823387145996){
    if(i32<1.002992868423462){
     s0+=41.0;
     s1+=192.0;
    } else {
     s0+=113.0;
     s1+=53.0;
    }
   } else {
    if(i59<-0.01840902864933014){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=565.0;
    }
   }
  }
 }
} else {
 if(i13<-0.0004025697708129883){
  if(i15<0.9812237024307251){
   if(i22<-2.0503997802734375e-05){
    if(i31<0.9991846084594727){
     s0+=184.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i65<0.05833515152335167){
     s1+=10.0;
    } else {
     s0+=21.0;
     s1+=2.0;
    }
   }
  } else {
   if(i72<-2.3502188923885114e-06){
    if(i74<1.0152645111083984){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=412.0;
   }
  }
 } else {
  if(i20<0.00010401010513305664){
   if(i2<0.11781337857246399){
    if(i55<0.00211217999458313){
     s0+=660.0;
     s1+=596.0;
    } else {
     s0+=168.0;
     s1+=646.0;
    }
   } else {
    if(i39<0.08912628889083862){
     s0+=44.0;
     s1+=2525.0;
    } else {
     s0+=364.0;
     s1+=715.0;
    }
   }
  } else {
   if(i6<1.000537633895874){
    if(i28<1.0166083574295044){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i38<0.00188356451690197){
     s0+=32.0;
     s1+=1212.0;
    } else {
     s1+=8296.0;
    }
   }
  }
 }
}
if(i5<3.427267074584961e-05){
 if(i0<0.08545136451721191){
  if(i58<0.001516862423159182){
   if(i1<0.07401639223098755){
    if(i6<1.0007750988006592){
     s0+=58193.0;
     s1+=481.0;
    } else {
     s0+=3025.0;
     s1+=236.0;
    }
   } else {
    if(i55<0.0007741059525869787){
     s0+=604.0;
     s1+=94.0;
    } else {
     s0+=110.0;
     s1+=180.0;
    }
   }
  } else {
   if(i42<1.1939998865127563){
    if(i0<0.055351823568344116){
     s0+=2354.0;
     s1+=578.0;
    } else {
     s0+=323.0;
     s1+=305.0;
    }
   } else {
    if(i0<0.05873209238052368){
     s0+=3602.0;
     s1+=115.0;
    } else {
     s0+=298.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i31<0.9992890357971191){
   if(i3<-0.0004944801330566406){
    if(i57<0.00019650257308967412){
     s0+=554.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i75<0.00029616703977808356){
     s0+=2.0;
     s1+=42.0;
    } else {
     s0+=51.0;
    }
   }
  } else {
   if(i17<0.0017323328647762537){
    if(i23<1.0459262132644653){
     s0+=63.0;
     s1+=128.0;
    } else {
     s0+=502.0;
     s1+=88.0;
    }
   } else {
    if(i50<0.016723811626434326){
     s0+=96.0;
     s1+=2046.0;
    } else {
     s0+=383.0;
     s1+=864.0;
    }
   }
  }
 }
} else {
 if(i31<0.9989447593688965){
  if(i69<0.1596543937921524){
   s0+=428.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i16<1.0179741382598877){
   if(i0<0.059265196323394775){
    if(i26<0.9968529343605042){
     s0+=73.0;
     s1+=329.0;
    } else {
     s0+=164.0;
     s1+=78.0;
    }
   } else {
    if(i12<0.9974123239517212){
     s0+=28.0;
     s1+=12.0;
    } else {
     s0+=195.0;
     s1+=3676.0;
    }
   }
  } else {
   if(i3<0.0008994340896606445){
    if(i48<0.0011181130539625883){
     s0+=45.0;
     s1+=106.0;
    } else {
     s1+=486.0;
    }
   } else {
    s1+=7202.0;
   }
  }
 }
}
if(i2<0.07755398750305176){
 if(i64<-7.967214514792431e-06){
  if(i38<0.009813876822590828){
   if(i17<0.0004179899697192013){
    s0+=2.0;
   } else {
    s1+=396.0;
   }
  } else {
   if(i0<0.03697293996810913){
    s0+=6.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i7<-4.929910210194066e-05){
   if(i15<0.997965395450592){
    if(i8<1.0882463455200195){
     s0+=2050.0;
     s1+=172.0;
    } else {
     s0+=7.0;
     s1+=96.0;
    }
   } else {
    if(i33<1.2371783256530762){
     s1+=528.0;
    } else {
     s0+=245.0;
     s1+=156.0;
    }
   }
  } else {
   if(i34<1.0556960105895996){
    if(i34<1.05283784866333){
     s0+=41939.0;
    } else {
     s0+=842.0;
     s1+=2.0;
    }
   } else {
    if(i1<0.06921237707138062){
     s0+=23097.0;
     s1+=1413.0;
    } else {
     s0+=938.0;
     s1+=530.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i59<-0.022543031722307205){
   if(i28<1.0128755569458008){
    if(i2<0.22314825654029846){
     s0+=745.0;
     s1+=47.0;
    } else {
     s0+=142.0;
     s1+=128.0;
    }
   } else {
    if(i70<0.013342797756195068){
     s0+=7.0;
     s1+=65.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  } else {
   if(i7<-1.7832426237873733e-05){
    if(i44<0.05781048536300659){
     s0+=30.0;
     s1+=1389.0;
    } else {
     s0+=155.0;
     s1+=461.0;
    }
   } else {
    if(i44<0.04290282726287842){
     s0+=31.0;
     s1+=195.0;
    } else {
     s0+=384.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i13<-0.0005213022232055664){
   s0+=98.0;
  } else {
   if(i0<0.11830508708953857){
    if(i49<0.004662930965423584){
     s0+=31.0;
     s1+=1000.0;
    } else {
     s0+=183.0;
     s1+=25.0;
    }
   } else {
    if(i4<0.16144102811813354){
     s0+=15.0;
     s1+=3164.0;
    } else {
     s1+=7388.0;
    }
   }
  }
 }
}
if(i25<1.0066354274749756){
 if(i3<0.0005736351013183594){
  if(i34<1.067455530166626){
   if(i30<0.0003069911617785692){
    if(i60<-0.0028323233127593994){
     s1+=1.0;
    } else {
     s0+=43277.0;
     s1+=31.0;
    }
   } else {
    if(i6<1.0006431341171265){
     s0+=2915.0;
     s1+=82.0;
    } else {
     s1+=62.0;
    }
   }
  } else {
   if(i41<0.04073362052440643){
    if(i29<0.9875475168228149){
     s0+=74.0;
     s1+=165.0;
    } else {
     s0+=12019.0;
     s1+=396.0;
    }
   } else {
    if(i4<0.06935787200927734){
     s0+=9385.0;
     s1+=1424.0;
    } else {
     s0+=988.0;
     s1+=1602.0;
    }
   }
  }
 } else {
  if(i47<-1.1244095730944537e-05){
   if(i17<0.0018794939387589693){
    s0+=14.0;
   } else {
    if(i45<0.022051971405744553){
     s0+=167.0;
     s1+=510.0;
    } else {
     s0+=3.0;
     s1+=1751.0;
    }
   }
  } else {
   if(i17<0.005090468563139439){
    s0+=106.0;
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i6<1.0026359558105469){
  if(i0<0.08373916149139404){
   if(i34<1.083398699760437){
    if(i7<-2.5316527171526104e-05){
     s0+=4.0;
     s1+=217.0;
    } else {
     s0+=70.0;
     s1+=7.0;
    }
   } else {
    if(i61<0.999807596206665){
     s0+=194.0;
     s1+=46.0;
    } else {
     s0+=1178.0;
     s1+=27.0;
    }
   }
  } else {
   if(i48<0.0016706683672964573){
    if(i34<1.139992117881775){
     s0+=33.0;
     s1+=501.0;
    } else {
     s0+=454.0;
     s1+=268.0;
    }
   } else {
    if(i33<1.5608327388763428){
     s0+=4.0;
     s1+=742.0;
    } else {
     s0+=10.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i7<-4.330327283241786e-05){
   if(i30<0.00019105226965621114){
    if(i40<0.002289750147610903){
     s1+=17.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i10<6.896257400512695e-05){
     s0+=51.0;
     s1+=246.0;
    } else {
     s0+=3.0;
     s1+=8930.0;
    }
   }
  } else {
   if(i45<0.008440881967544556){
    if(i41<0.12904615700244904){
     s0+=106.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<0.00011166930198669434){
     s0+=8.0;
    } else {
     s1+=95.0;
    }
   }
  }
 }
}
if(i7<-8.056790102273226e-05){
 if(i10<-0.003571122884750366){
  if(i51<-0.0004784336779266596){
   if(i13<-0.00023609399795532227){
    s0+=3.0;
   } else {
    s1+=40.0;
   }
  } else {
   if(i59<0.008183500729501247){
    if(i4<0.09087929129600525){
     s0+=458.0;
     s1+=13.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i38<0.000490949722006917){
   s0+=169.0;
  } else {
   if(i2<0.006077468395233154){
    if(i20<-0.0001327991485595703){
     s0+=84.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=26.0;
    }
   } else {
    if(i29<1.0058366060256958){
     s0+=94.0;
     s1+=1850.0;
    } else {
     s0+=55.0;
     s1+=8895.0;
    }
   }
  }
 }
} else {
 if(i9<1.0452277660369873){
  if(i1<0.08296343684196472){
   if(i70<-0.0020244717597961426){
    if(i14<0.994226336479187){
     s0+=2529.0;
     s1+=39.0;
    } else {
     s0+=1695.0;
     s1+=520.0;
    }
   } else {
    if(i17<0.004466645419597626){
     s0+=54231.0;
     s1+=224.0;
    } else {
     s0+=3227.0;
     s1+=147.0;
    }
   }
  } else {
   if(i6<0.9964866042137146){
    if(i22<-1.4424324035644531e-05){
     s0+=83.0;
    } else {
     s0+=26.0;
     s1+=17.0;
    }
   } else {
    if(i39<0.04891058802604675){
     s0+=2.0;
     s1+=233.0;
    } else {
     s0+=58.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i0<0.07553297281265259){
   if(i34<1.1036889553070068){
    if(i6<1.001190185546875){
     s0+=2097.0;
     s1+=523.0;
    } else {
     s0+=107.0;
     s1+=430.0;
    }
   } else {
    if(i17<0.007656694855540991){
     s0+=4271.0;
     s1+=187.0;
    } else {
     s0+=144.0;
     s1+=90.0;
    }
   }
  } else {
   if(i66<-0.0054019480012357235){
    if(i11<0.9988136291503906){
     s0+=272.0;
     s1+=15.0;
    } else {
     s0+=1015.0;
     s1+=1033.0;
    }
   } else {
    if(i7<-8.369925126316957e-06){
     s0+=272.0;
     s1+=2573.0;
    } else {
     s0+=315.0;
     s1+=118.0;
    }
   }
  }
 }
}
if(i23<1.0408271551132202){
 if(i55<0.009067431092262268){
  if(i6<1.002474308013916){
   if(i65<0.009638347662985325){
    if(i2<0.08714807033538818){
     s0+=44955.0;
     s1+=168.0;
    } else {
     s0+=7.0;
     s1+=81.0;
    }
   } else {
    if(i14<0.9945468902587891){
     s0+=14029.0;
     s1+=173.0;
    } else {
     s0+=5926.0;
     s1+=1651.0;
    }
   }
  } else {
   if(i36<0.0001894831657409668){
    if(i17<0.0020582894794642925){
     s0+=115.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=207.0;
    }
   } else {
    if(i14<1.0003045797348022){
     s0+=8.0;
     s1+=33.0;
    } else {
     s0+=3.0;
     s1+=644.0;
    }
   }
  }
 } else {
  if(i16<1.0102672576904297){
   if(i2<0.04331564903259277){
    if(i22<2.6881694793701172e-05){
     s0+=1627.0;
     s1+=338.0;
    } else {
     s0+=51.0;
     s1+=152.0;
    }
   } else {
    if(i47<-1.9810559024335817e-06){
     s0+=25.0;
     s1+=628.0;
    } else {
     s0+=85.0;
     s1+=36.0;
    }
   }
  } else {
   if(i1<0.018595606088638306){
    if(i47<-2.44891743932385e-05){
     s1+=9.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i74<1.016204833984375){
     s0+=10.0;
     s1+=719.0;
    } else {
     s0+=14.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i0<0.10795721411705017){
  if(i12<1.0035501718521118){
   if(i35<1.1037919521331787){
    if(i36<5.7637691497802734e-05){
     s0+=696.0;
     s1+=207.0;
    } else {
     s0+=102.0;
     s1+=327.0;
    }
   } else {
    if(i49<-0.009537816047668457){
     s0+=50.0;
     s1+=55.0;
    } else {
     s0+=2383.0;
     s1+=194.0;
    }
   }
  } else {
   if(i34<1.2007768154144287){
    if(i5<3.743171691894531e-05){
     s0+=24.0;
     s1+=1.0;
    } else {
     s1+=375.0;
    }
   } else {
    if(i11<1.0038564205169678){
     s0+=117.0;
     s1+=22.0;
    } else {
     s0+=4.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i11<0.99855637550354){
   if(i36<-0.00013753771781921387){
    if(i38<0.006358467508107424){
     s0+=252.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i38<0.0005806618137285113){
    if(i48<0.0008455659844912589){
     s0+=144.0;
     s1+=5.0;
    } else {
     s1+=91.0;
    }
   } else {
    if(i7<-1.2303214134590235e-05){
     s0+=231.0;
     s1+=10832.0;
    } else {
     s0+=183.0;
     s1+=136.0;
    }
   }
  }
 }
}
if(i15<1.0059590339660645){
 if(i9<1.0469921827316284){
  if(i0<0.08320280909538269){
   if(i40<0.000338383368216455){
    if(i65<0.013231314718723297){
     s0+=37532.0;
     s1+=2.0;
    } else {
     s0+=997.0;
     s1+=21.0;
    }
   } else {
    if(i50<-0.00387728214263916){
     s0+=2342.0;
     s1+=452.0;
    } else {
     s0+=21161.0;
     s1+=504.0;
    }
   }
  } else {
   if(i33<1.081748127937317){
    s0+=245.0;
   } else {
    if(i3<-0.0008778274059295654){
     s0+=131.0;
     s1+=6.0;
    } else {
     s0+=92.0;
     s1+=401.0;
    }
   }
  }
 } else {
  if(i65<0.09707742184400558){
   if(i7<-3.693011967698112e-05){
    if(i4<0.05837982892990112){
     s0+=748.0;
     s1+=383.0;
    } else {
     s0+=414.0;
     s1+=1218.0;
    }
   } else {
    if(i34<1.1082366704940796){
     s0+=2305.0;
     s1+=1212.0;
    } else {
     s0+=3993.0;
     s1+=532.0;
    }
   }
  } else {
   if(i7<-4.637955498765223e-05){
    if(i10<-0.003926068544387817){
     s0+=99.0;
     s1+=45.0;
    } else {
     s0+=9.0;
     s1+=1829.0;
    }
   } else {
    if(i67<0.9993390440940857){
     s0+=175.0;
     s1+=17.0;
    } else {
     s0+=134.0;
     s1+=195.0;
    }
   }
  }
 }
} else {
 if(i10<0.0014304518699645996){
  if(i48<0.0009609339758753777){
   if(i19<1.0903667211532593){
    if(i73<0.000391149427741766){
     s0+=7.0;
     s1+=175.0;
    } else {
     s0+=104.0;
     s1+=1.0;
    }
   } else {
    if(i6<0.9992302656173706){
     s1+=15.0;
    } else {
     s0+=611.0;
     s1+=4.0;
    }
   }
  } else {
   if(i24<0.023991651833057404){
    if(i5<-1.1235475540161133e-05){
     s0+=21.0;
    } else {
     s0+=36.0;
     s1+=543.0;
    }
   } else {
    if(i22<-1.704692840576172e-05){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=1071.0;
    }
   }
  }
 } else {
  if(i27<0.00014984999143052846){
   if(i38<0.002755897119641304){
    s1+=8.0;
   } else {
    s0+=14.0;
   }
  } else {
   if(i1<0.031037092208862305){
    if(i31<1.000516414642334){
     s0+=9.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i1<0.05294200778007507){
     s0+=1.0;
     s1+=69.0;
    } else {
     s1+=8342.0;
    }
   }
  }
 }
}
if(i5<3.7610530853271484e-05){
 if(i21<1.0075823068618774){
  if(i56<0.0004917093901894987){
   if(i0<0.08978813886642456){
    if(i50<-0.007111847400665283){
     s0+=223.0;
     s1+=36.0;
    } else {
     s0+=50709.0;
     s1+=240.0;
    }
   } else {
    if(i22<-1.2814998626708984e-06){
     s0+=78.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=48.0;
    }
   }
  } else {
   if(i19<1.0467555522918701){
    if(i10<-0.0014764964580535889){
     s0+=6353.0;
     s1+=15.0;
    } else {
     s0+=1541.0;
     s1+=143.0;
    }
   } else {
    if(i11<0.9988439083099365){
     s0+=2949.0;
     s1+=154.0;
    } else {
     s0+=5706.0;
     s1+=2752.0;
    }
   }
  }
 } else {
  if(i42<1.1411950588226318){
   if(i3<0.00014522671699523926){
    if(i48<0.000290922645945102){
     s0+=398.0;
     s1+=53.0;
    } else {
     s0+=227.0;
     s1+=424.0;
    }
   } else {
    if(i40<0.00024690188001841307){
     s0+=31.0;
    } else {
     s0+=12.0;
     s1+=756.0;
    }
   }
  } else {
   if(i37<0.006631399039179087){
    if(i1<0.11171340942382812){
     s0+=1693.0;
     s1+=95.0;
    } else {
     s0+=306.0;
     s1+=295.0;
    }
   } else {
    if(i23<1.0449190139770508){
     s0+=83.0;
     s1+=12.0;
    } else {
     s0+=24.0;
     s1+=481.0;
    }
   }
  }
 }
} else {
 if(i37<0.0003959996975027025){
  s0+=290.0;
 } else {
  if(i15<1.0098880529403687){
   if(i47<-1.4918727174517699e-05){
    if(i10<-0.0005559325218200684){
     s0+=214.0;
     s1+=871.0;
    } else {
     s0+=45.0;
     s1+=2180.0;
    }
   } else {
    if(i38<0.001453789183869958){
     s1+=111.0;
    } else {
     s0+=150.0;
     s1+=70.0;
    }
   }
  } else {
   s1+=8467.0;
  }
 }
}
if(i20<0.00011497735977172852){
 if(i7<-4.936173718306236e-05){
  if(i52<0.0019441149197518826){
   if(i28<0.9700172543525696){
    if(i8<1.0647863149642944){
     s0+=422.0;
     s1+=46.0;
    } else {
     s0+=17.0;
     s1+=119.0;
    }
   } else {
    if(i51<-0.00029630292556248605){
     s0+=112.0;
     s1+=2088.0;
    } else {
     s0+=554.0;
     s1+=793.0;
    }
   }
  } else {
   if(i7<-0.00014052991173230112){
    if(i5<-7.271766662597656e-06){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=258.0;
    }
   } else {
    if(i1<0.06146702170372009){
     s0+=1019.0;
     s1+=30.0;
    } else {
     s0+=5.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i24<0.021964389830827713){
   if(i2<0.07568106055259705){
    if(i49<-0.001736462116241455){
     s0+=2037.0;
     s1+=372.0;
    } else {
     s0+=59566.0;
     s1+=660.0;
    }
   } else {
    if(i7<-2.1657506295014173e-05){
     s0+=263.0;
     s1+=391.0;
    } else {
     s0+=882.0;
     s1+=194.0;
    }
   }
  } else {
   if(i8<1.0332090854644775){
    if(i1<0.06989428400993347){
     s0+=3586.0;
     s1+=205.0;
    } else {
     s0+=114.0;
     s1+=149.0;
    }
   } else {
    if(i13<-0.00038626790046691895){
     s0+=666.0;
     s1+=7.0;
    } else {
     s0+=1172.0;
     s1+=1696.0;
    }
   }
  }
 }
} else {
 if(i6<1.0000413656234741){
  if(i69<0.4636215567588806){
   s0+=300.0;
  } else {
   s1+=1.0;
  }
 } else {
  if(i17<0.0016460036858916283){
   if(i20<0.0002396702766418457){
    if(i10<0.0007793903350830078){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=345.0;
     s1+=8.0;
    }
   } else {
    s1+=115.0;
   }
  } else {
   if(i3<0.0007762908935546875){
    if(i1<0.06111994385719299){
     s0+=76.0;
     s1+=49.0;
    } else {
     s0+=45.0;
     s1+=827.0;
    }
   } else {
    if(i27<0.0001468790287617594){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=8965.0;
    }
   }
  }
 }
}
if(i8<1.0452277660369873){
 if(i0<0.08303344249725342){
  if(i1<0.06783118844032288){
   if(i5<4.178285598754883e-05){
    if(i73<0.0007149018347263336){
     s0+=56550.0;
     s1+=317.0;
    } else {
     s0+=6625.0;
     s1+=739.0;
    }
   } else {
    if(i9<1.0332242250442505){
     s0+=220.0;
     s1+=12.0;
    } else {
     s0+=53.0;
     s1+=191.0;
    }
   }
  } else {
   if(i55<0.0010348916985094547){
    if(i26<0.9913498163223267){
     s0+=79.0;
     s1+=47.0;
    } else {
     s0+=1190.0;
     s1+=92.0;
    }
   } else {
    if(i53<0.024755388498306274){
     s0+=29.0;
     s1+=239.0;
    } else {
     s0+=109.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i3<-0.0007085204124450684){
   if(i79<-0.001898050308227539){
    if(i28<0.9708074331283569){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=11.0;
     s1+=41.0;
    }
   } else {
    if(i13<-0.0003452599048614502){
     s0+=279.0;
    } else {
     s0+=34.0;
     s1+=11.0;
    }
   }
  } else {
   if(i43<0.0004414969589561224){
    if(i25<1.0037925243377686){
     s0+=58.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i49<0.004315793514251709){
     s0+=35.0;
     s1+=986.0;
    } else {
     s0+=25.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i2<0.09759753942489624){
  if(i12<1.0005630254745483){
   if(i33<1.1013743877410889){
    if(i17<0.0020958753302693367){
     s0+=911.0;
     s1+=131.0;
    } else {
     s0+=56.0;
     s1+=340.0;
    }
   } else {
    if(i16<0.949460506439209){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=2942.0;
     s1+=239.0;
    }
   }
  } else {
   if(i34<1.1354990005493164){
    if(i40<0.00024777540238574147){
     s0+=49.0;
    } else {
     s0+=126.0;
     s1+=1145.0;
    }
   } else {
    if(i73<0.0012856051325798035){
     s0+=672.0;
     s1+=99.0;
    } else {
     s0+=112.0;
     s1+=357.0;
    }
   }
  }
 } else {
  if(i13<-0.0004030168056488037){
   if(i43<0.0035463175736367702){
    s0+=218.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i48<0.0003012093948200345){
    if(i59<-0.020214926451444626){
     s0+=212.0;
     s1+=38.0;
    } else {
     s0+=29.0;
     s1+=196.0;
    }
   } else {
    if(i3<0.0007533431053161621){
     s0+=411.0;
     s1+=2733.0;
    } else {
     s0+=48.0;
     s1+=9067.0;
    }
   }
  }
 }
}
if(i1<0.08144927024841309){
 if(i64<-7.681656825297978e-06){
  if(i33<1.5942578315734863){
   if(i9<1.0348615646362305){
    s0+=2.0;
   } else {
    s1+=273.0;
   }
  } else {
   if(i10<0.0006333589553833008){
    s0+=7.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i49<-0.0015400052070617676){
   if(i47<-1.4938867025193758e-05){
    if(i9<1.041278600692749){
     s0+=568.0;
     s1+=33.0;
    } else {
     s0+=209.0;
     s1+=522.0;
    }
   } else {
    if(i6<0.9964621067047119){
     s0+=1213.0;
     s1+=42.0;
    } else {
     s0+=2058.0;
     s1+=582.0;
    }
   }
  } else {
   if(i7<-4.3694999476429075e-05){
    if(i6<1.0013864040374756){
     s0+=1851.0;
     s1+=112.0;
    } else {
     s0+=170.0;
     s1+=396.0;
    }
   } else {
    if(i19<1.0469921827316284){
     s0+=53211.0;
     s1+=166.0;
    } else {
     s0+=10091.0;
     s1+=842.0;
    }
   }
  }
 }
} else {
 if(i20<3.248453140258789e-05){
  if(i13<-0.00043773651123046875){
   if(i72<-3.2578052469034446e-06){
    if(i61<0.9998235702514648){
     s1+=6.0;
    } else {
     s0+=18.0;
    }
   } else {
    s0+=385.0;
   }
  } else {
   if(i24<0.022065088152885437){
    if(i50<0.010702401399612427){
     s0+=148.0;
     s1+=448.0;
    } else {
     s0+=673.0;
     s1+=142.0;
    }
   } else {
    if(i54<0.05536562204360962){
     s0+=58.0;
     s1+=1961.0;
    } else {
     s0+=286.0;
     s1+=1144.0;
    }
   }
  }
 } else {
  if(i7<-2.2271022316999733e-05){
   if(i31<0.9988303184509277){
    if(i56<0.03742198273539543){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i43<0.0002702376223169267){
     s0+=5.0;
    } else {
     s0+=66.0;
     s1+=10388.0;
    }
   }
  } else {
   if(i56<0.010868781246244907){
    if(i17<0.0028631901368498802){
     s0+=117.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i51<-0.001054481603205204){
     s0+=2.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
}
if(i7<-7.277324766619131e-05){
 if(i2<0.04818016290664673){
  if(i9<1.040674090385437){
   if(i13<0.0014811158180236816){
    if(i28<1.0003350973129272){
     s0+=560.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i2<0.0083751380443573){
    if(i10<-0.0008631646633148193){
     s0+=93.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i55<0.008353050798177719){
     s0+=75.0;
     s1+=29.0;
    } else {
     s0+=22.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i34<1.0611095428466797){
   s0+=81.0;
  } else {
   if(i51<-0.00012251175940036774){
    if(i2<0.1405991017818451){
     s0+=95.0;
     s1+=1497.0;
    } else {
     s0+=7.0;
     s1+=8779.0;
    }
   } else {
    if(i14<0.9953209757804871){
     s0+=76.0;
     s1+=5.0;
    } else {
     s0+=39.0;
     s1+=763.0;
    }
   }
  }
 }
} else {
 if(i19<1.0495078563690186){
  if(i50<-0.006679236888885498){
   if(i14<0.993783712387085){
    s0+=294.0;
   } else {
    if(i37<0.00033244170481339097){
     s0+=359.0;
    } else {
     s0+=29.0;
     s1+=112.0;
    }
   }
  } else {
   if(i60<-0.0013608038425445557){
    if(i36<-4.801154136657715e-05){
     s0+=640.0;
     s1+=2.0;
    } else {
     s0+=404.0;
     s1+=123.0;
    }
   } else {
    if(i1<0.07826951146125793){
     s0+=54540.0;
     s1+=178.0;
    } else {
     s0+=287.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i15<1.0059590339660645){
   if(i69<0.03262358903884888){
    if(i0<0.0757194459438324){
     s0+=7017.0;
     s1+=563.0;
    } else {
     s0+=784.0;
     s1+=666.0;
    }
   } else {
    if(i4<0.04800456762313843){
     s0+=3482.0;
     s1+=627.0;
    } else {
     s0+=1704.0;
     s1+=2184.0;
    }
   }
  } else {
   if(i42<1.1752636432647705){
    if(i7<-2.1507592464331537e-05){
     s0+=2.0;
     s1+=935.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i46<0.10259383916854858){
     s0+=648.0;
     s1+=93.0;
    } else {
     s0+=49.0;
     s1+=125.0;
    }
   }
  }
 }
}
if(i8<1.0452215671539307){
 if(i4<0.0758189857006073){
  if(i16<1.0083768367767334){
   if(i11<1.0019018650054932){
    if(i0<0.08284488320350647){
     s0+=64122.0;
     s1+=1217.0;
    } else {
     s0+=364.0;
     s1+=331.0;
    }
   } else {
    if(i76<-1.4884576557960827e-06){
     s0+=36.0;
     s1+=217.0;
    } else {
     s0+=321.0;
     s1+=94.0;
    }
   }
  } else {
   if(i7<-4.0899998566601425e-05){
    if(i37<0.0046406094916164875){
     s0+=1.0;
     s1+=280.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.0924489498138428){
     s0+=4.0;
     s1+=35.0;
    } else {
     s0+=186.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i76<5.546845386561472e-06){
   if(i45<0.005168158560991287){
    if(i49<-0.0007079839706420898){
     s0+=2.0;
     s1+=25.0;
    } else {
     s0+=39.0;
     s1+=4.0;
    }
   } else {
    if(i34<1.0535036325454712){
     s0+=3.0;
    } else {
     s0+=33.0;
     s1+=577.0;
    }
   }
  } else {
   if(i4<0.08548155426979065){
    if(i10<-0.00044462084770202637){
     s0+=82.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=5.0;
    }
   } else {
    if(i20<-0.0001278221607208252){
     s0+=13.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i11<1.0015573501586914){
  if(i7<-3.0338433134602383e-05){
   if(i0<0.09194600582122803){
    if(i37<0.0017173569649457932){
     s0+=87.0;
     s1+=378.0;
    } else {
     s0+=408.0;
     s1+=147.0;
    }
   } else {
    if(i28<1.0076096057891846){
     s0+=146.0;
     s1+=1340.0;
    } else {
     s0+=13.0;
     s1+=1927.0;
    }
   }
  } else {
   if(i43<0.003886224702000618){
    if(i12<1.000504732131958){
     s0+=3417.0;
     s1+=355.0;
    } else {
     s0+=455.0;
     s1+=274.0;
    }
   } else {
    if(i1<0.11889669299125671){
     s0+=489.0;
     s1+=42.0;
    } else {
     s0+=61.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i5<4.500150680541992e-05){
   if(i9<1.1191260814666748){
    if(i71<1.0024505853652954){
     s0+=197.0;
     s1+=180.0;
    } else {
     s0+=262.0;
     s1+=12.0;
    }
   } else {
    if(i13<0.0004382133483886719){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=297.0;
    }
   }
  } else {
   if(i2<0.06109321117401123){
    if(i70<0.0030856728553771973){
     s0+=55.0;
     s1+=372.0;
    } else {
     s0+=50.0;
     s1+=7.0;
    }
   } else {
    if(i31<1.001237392425537){
     s0+=82.0;
     s1+=2531.0;
    } else {
     s0+=26.0;
     s1+=6287.0;
    }
   }
  }
 }
}
if(i8<1.0452277660369873){
 if(i13<0.0006572604179382324){
  if(i24<0.01664423756301403){
   if(i2<0.08511126041412354){
    if(i49<-0.0017376542091369629){
     s0+=1409.0;
     s1+=250.0;
    } else {
     s0+=55135.0;
     s1+=389.0;
    }
   } else {
    if(i9<1.0452475547790527){
     s0+=62.0;
     s1+=43.0;
    } else {
     s0+=7.0;
     s1+=86.0;
    }
   }
  } else {
   if(i43<0.002533131279051304){
    if(i19<1.0447213649749756){
     s0+=1640.0;
     s1+=87.0;
    } else {
     s0+=639.0;
     s1+=1051.0;
    }
   } else {
    if(i2<0.09552010893821716){
     s0+=6222.0;
     s1+=54.0;
    } else {
     s1+=66.0;
    }
   }
  }
 } else {
  if(i14<1.000259280204773){
   if(i5<5.0961971282958984e-05){
    if(i74<0.8827263712882996){
     s0+=13.0;
     s1+=12.0;
    } else {
     s0+=241.0;
     s1+=28.0;
    }
   } else {
    if(i57<0.00026016225456260145){
     s0+=1.0;
     s1+=56.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i75<0.0005139985005371273){
    if(i69<0.26784074306488037){
     s0+=3.0;
     s1+=624.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
} else {
 if(i14<1.001816987991333){
  if(i48<0.0018778357189148664){
   if(i10<0.0007708966732025146){
    if(i31<0.9993119835853577){
     s0+=1156.0;
     s1+=12.0;
    } else {
     s0+=3164.0;
     s1+=1383.0;
    }
   } else {
    if(i1<0.06810584664344788){
     s0+=24.0;
    } else {
     s0+=6.0;
     s1+=229.0;
    }
   }
  } else {
   if(i1<0.09158831834793091){
    if(i51<-0.0002381949161645025){
     s0+=121.0;
     s1+=264.0;
    } else {
     s0+=723.0;
     s1+=131.0;
    }
   } else {
    if(i11<0.9966206550598145){
     s0+=20.0;
    } else {
     s0+=98.0;
     s1+=1963.0;
    }
   }
  }
 } else {
  if(i5<3.123283386230469e-05){
   if(i31<0.9999035596847534){
    if(i1<0.05639752745628357){
     s0+=33.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=366.0;
    }
   } else {
    if(i7<-3.2525305869057775e-05){
     s0+=49.0;
     s1+=268.0;
    } else {
     s0+=276.0;
     s1+=42.0;
    }
   }
  } else {
   if(i6<1.004080057144165){
    if(i64<-3.2262248623737833e-06){
     s0+=107.0;
     s1+=156.0;
    } else {
     s0+=31.0;
     s1+=807.0;
    }
   } else {
    if(i2<0.005251765251159668){
     s0+=7.0;
     s1+=18.0;
    } else {
     s0+=21.0;
     s1+=8620.0;
    }
   }
  }
 }
}
if(i15<1.005570411682129){
 if(i1<0.08316218852996826){
  if(i3<0.0007005035877227783){
   if(i69<0.02678873762488365){
    if(i70<-0.0028129518032073975){
     s0+=595.0;
     s1+=268.0;
    } else {
     s0+=57251.0;
     s1+=399.0;
    }
   } else {
    if(i37<0.0010459813056513667){
     s0+=2327.0;
     s1+=943.0;
    } else {
     s0+=8517.0;
     s1+=433.0;
    }
   }
  } else {
   if(i50<0.0024647414684295654){
    if(i75<0.0006425097235478461){
     s0+=45.0;
     s1+=363.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i78<0.00030606583459302783){
     s1+=6.0;
    } else {
     s0+=47.0;
    }
   }
  }
 } else {
  if(i11<0.9985275268554688){
   if(i17<0.007006634026765823){
    if(i7<-3.651856241049245e-05){
     s0+=19.0;
     s1+=15.0;
    } else {
     s0+=420.0;
     s1+=2.0;
    }
   } else {
    if(i78<0.00039553892565891147){
     s0+=2.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i50<0.01320996880531311){
    if(i7<-7.959481990837958e-06){
     s0+=101.0;
     s1+=2596.0;
    } else {
     s0+=118.0;
     s1+=159.0;
    }
   } else {
    if(i37<0.006126588676124811){
     s0+=703.0;
     s1+=604.0;
    } else {
     s0+=110.0;
     s1+=968.0;
    }
   }
  }
 }
} else {
 if(i7<-4.40081421402283e-05){
  if(i1<0.058233946561813354){
   if(i12<1.0011978149414062){
    if(i34<1.1621103286743164){
     s1+=23.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i36<9.673833847045898e-05){
     s0+=2.0;
    } else {
     s1+=183.0;
    }
   }
  } else {
   if(i47<-1.6501983282068977e-06){
    if(i19<1.044567584991455){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=9854.0;
    }
   } else {
    if(i19<1.141402244567871){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i34<1.108748435974121){
   if(i17<0.0007791555253788829){
    s0+=11.0;
   } else {
    if(i40<0.0005978115950711071){
     s0+=2.0;
     s1+=10.0;
    } else {
     s1+=194.0;
    }
   }
  } else {
   if(i52<-0.00017851853044703603){
    if(i40<0.009442124515771866){
     s0+=66.0;
     s1+=6.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i2<0.22720882296562195){
     s0+=699.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   }
  }
 }
}
if(i7<-7.877762982388958e-05){
 if(i8<1.028456211090088){
  if(i3<0.00031697750091552734){
   if(i48<0.006547184661030769){
    if(i6<1.0006535053253174){
     s0+=560.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i41<0.3509664535522461){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i38<0.010281147435307503){
    if(i69<0.3219742774963379){
     s1+=162.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i0<0.06308519840240479){
   if(i58<0.0036589321680366993){
    if(i33<1.466446042060852){
     s0+=19.0;
     s1+=39.0;
    } else {
     s0+=119.0;
    }
   } else {
    if(i64<3.212198498658836e-05){
     s0+=16.0;
     s1+=162.0;
    } else {
     s0+=27.0;
     s1+=18.0;
    }
   }
  } else {
   if(i38<0.0004882849752902985){
    s0+=8.0;
   } else {
    if(i19<1.0689795017242432){
     s0+=32.0;
     s1+=106.0;
    } else {
     s0+=93.0;
     s1+=10567.0;
    }
   }
  }
 }
} else {
 if(i4<0.06910938024520874){
  if(i14<1.0039854049682617){
   if(i1<0.07724055647850037){
    if(i50<-0.0058502256870269775){
     s0+=3477.0;
     s1+=775.0;
    } else {
     s0+=63549.0;
     s1+=1053.0;
    }
   } else {
    if(i31<0.9991819858551025){
     s0+=96.0;
    } else {
     s0+=98.0;
     s1+=739.0;
    }
   }
  } else {
   if(i35<1.1458663940429688){
    if(i33<1.070241093635559){
     s0+=24.0;
    } else {
     s0+=8.0;
     s1+=532.0;
    }
   } else {
    if(i2<0.06618639826774597){
     s0+=596.0;
     s1+=22.0;
    } else {
     s0+=7.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i1<0.09293755888938904){
   if(i60<-0.0010020434856414795){
    if(i63<0.004187077283859253){
     s0+=24.0;
     s1+=131.0;
    } else {
     s0+=79.0;
     s1+=4.0;
    }
   } else {
    if(i44<0.04450666904449463){
     s0+=47.0;
     s1+=164.0;
    } else {
     s0+=1041.0;
     s1+=56.0;
    }
   }
  } else {
   if(i39<0.059875279664993286){
    if(i71<0.9960113167762756){
     s0+=11.0;
    } else {
     s0+=107.0;
     s1+=1863.0;
    }
   } else {
    if(i48<0.0018565563950687647){
     s0+=860.0;
     s1+=392.0;
    } else {
     s0+=103.0;
     s1+=367.0;
    }
   }
  }
 }
}
if(i12<1.0026135444641113){
 if(i0<0.08792895078659058){
  if(i2<0.060888081789016724){
   if(i9<1.0406901836395264){
    if(i60<-0.0012906789779663086){
     s0+=3440.0;
     s1+=291.0;
    } else {
     s0+=52277.0;
     s1+=101.0;
    }
   } else {
    if(i33<1.1013743877410889){
     s0+=2515.0;
     s1+=653.0;
    } else {
     s0+=5877.0;
     s1+=257.0;
    }
   }
  } else {
   if(i53<0.013806760311126709){
    if(i74<1.023827314376831){
     s0+=190.0;
     s1+=534.0;
    } else {
     s0+=178.0;
     s1+=10.0;
    }
   } else {
    if(i24<0.016710270196199417){
     s0+=2837.0;
     s1+=109.0;
    } else {
     s0+=766.0;
     s1+=213.0;
    }
   }
  }
 } else {
  if(i11<0.998518705368042){
   if(i43<0.008528437465429306){
    if(i47<-9.801444321055897e-06){
     s0+=8.0;
     s1+=7.0;
    } else {
     s0+=660.0;
    }
   } else {
    if(i67<0.9995321035385132){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i17<0.0016846086364239454){
    if(i70<0.0033204257488250732){
     s0+=153.0;
     s1+=166.0;
    } else {
     s0+=314.0;
     s1+=27.0;
    }
   } else {
    if(i63<0.00426030158996582){
     s0+=108.0;
     s1+=2731.0;
    } else {
     s0+=339.0;
     s1+=1204.0;
    }
   }
  }
 }
} else {
 if(i1<0.06513646245002747){
  if(i5<3.0100345611572266e-05){
   if(i50<-0.00560036301612854){
    if(i8<1.073691964149475){
     s0+=289.0;
     s1+=24.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i54<-0.024050742387771606){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=691.0;
     s1+=5.0;
    }
   }
  } else {
   if(i36<0.0001786947250366211){
    if(i35<1.2378153800964355){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=132.0;
     s1+=15.0;
    }
   } else {
    if(i59<-0.00886853039264679){
     s0+=33.0;
     s1+=13.0;
    } else {
     s0+=38.0;
     s1+=446.0;
    }
   }
  }
 } else {
  if(i5<3.427267074584961e-05){
   if(i2<0.11029744148254395){
    if(i23<1.0250921249389648){
     s0+=2.0;
     s1+=55.0;
    } else {
     s0+=142.0;
     s1+=50.0;
    }
   } else {
    if(i7<-4.588354568113573e-05){
     s0+=4.0;
     s1+=309.0;
    } else {
     s0+=43.0;
     s1+=102.0;
    }
   }
  } else {
   if(i2<0.12478673458099365){
    if(i74<1.059504508972168){
     s0+=70.0;
     s1+=1561.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i14<0.9953768253326416){
     s0+=3.0;
     s1+=217.0;
    } else {
     s0+=3.0;
     s1+=7913.0;
    }
   }
  }
 }
}
if(i1<0.08162996172904968){
 if(i22<2.2709369659423828e-05){
  if(i9<1.0451585054397583){
   if(i30<0.000273131241556257){
    if(i18<1.0087099075317383){
     s0+=50669.0;
     s1+=158.0;
    } else {
     s0+=50.0;
     s1+=22.0;
    }
   } else {
    if(i6<1.0008896589279175){
     s0+=10936.0;
     s1+=576.0;
    } else {
     s0+=30.0;
     s1+=79.0;
    }
   }
  } else {
   if(i12<1.0003747940063477){
    if(i35<1.1037919521331787){
     s0+=1524.0;
     s1+=518.0;
    } else {
     s0+=4088.0;
     s1+=152.0;
    }
   } else {
    if(i38<0.0008285917574539781){
     s0+=192.0;
     s1+=476.0;
    } else {
     s0+=1043.0;
     s1+=167.0;
    }
   }
  }
 } else {
  if(i10<0.000430375337600708){
   if(i9<1.1240943670272827){
    if(i66<-0.0020782616920769215){
     s0+=588.0;
     s1+=44.0;
    } else {
     s0+=350.0;
     s1+=253.0;
    }
   } else {
    if(i64<4.612584598362446e-05){
     s0+=4.0;
     s1+=128.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i12<1.0018839836120605){
    s0+=15.0;
   } else {
    if(i17<0.0013261734275147319){
     s0+=3.0;
    } else {
     s1+=458.0;
    }
   }
  }
 }
} else {
 if(i11<0.9980460405349731){
  if(i20<-0.00046819448471069336){
   if(i6<0.9923680424690247){
    s0+=15.0;
   } else {
    if(i65<0.07166881859302521){
     s1+=6.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   s0+=408.0;
  }
 } else {
  if(i3<0.0005481243133544922){
   if(i46<0.06300857663154602){
    if(i53<0.028446882963180542){
     s0+=9.0;
     s1+=1330.0;
    } else {
     s0+=35.0;
     s1+=76.0;
    }
   } else {
    if(i24<0.023559365421533585){
     s0+=811.0;
     s1+=486.0;
    } else {
     s0+=262.0;
     s1+=1545.0;
    }
   }
  } else {
   if(i2<0.1332053244113922){
    if(i32<1.0362846851348877){
     s0+=79.0;
     s1+=1467.0;
    } else {
     s0+=46.0;
     s1+=58.0;
    }
   } else {
    if(i15<1.005746603012085){
     s0+=20.0;
     s1+=1390.0;
    } else {
     s1+=7683.0;
    }
   }
  }
 }
}
if(i25<1.0078225135803223){
 if(i1<0.08522754907608032){
  if(i27<0.0003158371546305716){
   if(i13<0.0006255507469177246){
    if(i77<-0.0010109245777130127){
     s0+=3941.0;
     s1+=237.0;
    } else {
     s0+=52707.0;
     s1+=311.0;
    }
   } else {
    if(i17<0.00588529696688056){
     s0+=89.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  } else {
   if(i3<0.00021690130233764648){
    if(i42<1.1032289266586304){
     s0+=2812.0;
     s1+=895.0;
    } else {
     s0+=8242.0;
     s1+=324.0;
    }
   } else {
    if(i14<1.000658631324768){
     s0+=286.0;
     s1+=180.0;
    } else {
     s0+=68.0;
     s1+=534.0;
    }
   }
  }
 } else {
  if(i38<0.00045622797915712){
   if(i7<-1.853988942457363e-05){
    if(i70<0.006156355142593384){
     s1+=9.0;
    } else {
     s0+=7.0;
    }
   } else {
    s0+=279.0;
   }
  } else {
   if(i53<0.04086020588874817){
    if(i72<2.2108461052994244e-06){
     s0+=183.0;
     s1+=3352.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i17<0.006180282682180405){
     s0+=523.0;
     s1+=194.0;
    } else {
     s0+=45.0;
     s1+=391.0;
    }
   }
  }
 }
} else {
 if(i17<0.0027515811379998922){
  if(i34<1.0862454175949097){
   if(i15<1.0029380321502686){
    if(i43<0.0008263252093456686){
     s0+=49.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i20<2.8192996978759766e-05){
     s0+=5.0;
    } else {
     s1+=447.0;
    }
   }
  } else {
   if(i5<6.222724914550781e-05){
    if(i76<3.6319006539997645e-06){
     s0+=1396.0;
     s1+=65.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i0<0.06301751732826233){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=170.0;
    }
   }
  }
 } else {
  if(i31<0.9990435838699341){
   if(i7<-6.390281487256289e-05){
    s1+=20.0;
   } else {
    s0+=120.0;
   }
  } else {
   if(i1<0.04620867967605591){
    if(i6<1.0035693645477295){
     s0+=44.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i71<1.0017485618591309){
     s0+=54.0;
     s1+=9539.0;
    } else {
     s0+=62.0;
     s1+=475.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i5<4.178285598754883e-05){
  if(i24<0.015796178951859474){
   if(i70<-0.0024039745330810547){
    if(i43<0.0008531825733371079){
     s0+=703.0;
     s1+=294.0;
    } else {
     s0+=1651.0;
     s1+=68.0;
    }
   } else {
    if(i10<0.0016200542449951172){
     s0+=56066.0;
     s1+=333.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i3<-0.00031045079231262207){
    if(i49<0.0017246603965759277){
     s0+=3615.0;
     s1+=356.0;
    } else {
     s0+=4923.0;
     s1+=22.0;
    }
   } else {
    if(i40<0.0016307421028614044){
     s0+=751.0;
     s1+=801.0;
    } else {
     s0+=1368.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i67<0.998948872089386){
   if(i21<1.015002727508545){
    s0+=231.0;
   } else {
    if(i50<-0.01171785593032837){
     s1+=5.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i72<-5.026173312216997e-06){
    if(i20<-0.00010818243026733398){
     s0+=123.0;
     s1+=133.0;
    } else {
     s0+=23.0;
     s1+=736.0;
    }
   } else {
    if(i47<-1.533514296170324e-05){
     s1+=16.0;
    } else {
     s0+=125.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i38<0.00045606427011080086){
  if(i10<0.0004207789897918701){
   if(i38<0.0004476824833545834){
    if(i31<1.0004558563232422){
     s0+=287.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i9<1.064903974533081){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i33<1.075138807296753){
    s0+=5.0;
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i6<1.0015729665756226){
   if(i44<0.05801957845687866){
    if(i30<0.00019544619135558605){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=60.0;
     s1+=1664.0;
    }
   } else {
    if(i4<0.16959986090660095){
     s0+=873.0;
     s1+=471.0;
    } else {
     s0+=256.0;
     s1+=766.0;
    }
   }
  } else {
   if(i7<-4.647164678317495e-05){
    if(i28<1.0015984773635864){
     s0+=92.0;
     s1+=1654.0;
    } else {
     s0+=9.0;
     s1+=9114.0;
    }
   } else {
    if(i17<0.0025524762459099293){
     s0+=67.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=308.0;
    }
   }
  }
 }
}
if(i15<1.0055609941482544){
 if(i1<0.08316195011138916){
  if(i3<0.0006358921527862549){
   if(i70<-0.00202062726020813){
    if(i68<0.11445200443267822){
     s0+=2885.0;
     s1+=838.0;
    } else {
     s0+=3155.0;
     s1+=126.0;
    }
   } else {
    if(i68<0.025071438401937485){
     s0+=53542.0;
     s1+=255.0;
    } else {
     s0+=9133.0;
     s1+=720.0;
    }
   }
  } else {
   if(i57<-5.780639185104519e-06){
    if(i75<9.813042561290786e-05){
     s1+=2.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i59<-0.013928234577178955){
     s0+=41.0;
     s1+=12.0;
    } else {
     s0+=56.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i11<0.9985139966011047){
   if(i64<4.439468466443941e-05){
    if(i8<1.3863475322723389){
     s0+=449.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i22<-2.0802021026611328e-05){
     s0+=11.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i53<0.031056880950927734){
    if(i74<1.0279157161712646){
     s0+=71.0;
     s1+=2624.0;
    } else {
     s0+=149.0;
     s1+=625.0;
    }
   } else {
    if(i40<0.008299360051751137){
     s0+=767.0;
     s1+=553.0;
    } else {
     s0+=51.0;
     s1+=538.0;
    }
   }
  }
 }
} else {
 if(i0<0.06785187125205994){
  if(i43<0.0011093226494267583){
   if(i20<9.328126907348633e-05){
    if(i62<0.00034301861887797713){
     s0+=22.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=264.0;
   }
  } else {
   if(i62<0.0005734845763072371){
    if(i72<-8.849980986269657e-06){
     s1+=13.0;
    } else {
     s0+=628.0;
     s1+=7.0;
    }
   } else {
    s1+=30.0;
   }
  }
 } else {
  if(i5<1.1861324310302734e-05){
   if(i24<0.044044144451618195){
    if(i9<1.1321890354156494){
     s0+=21.0;
     s1+=93.0;
    } else {
     s0+=104.0;
     s1+=15.0;
    }
   } else {
    if(i38<0.0012593526626005769){
     s0+=6.0;
    } else {
     s1+=124.0;
    }
   }
  } else {
   if(i35<1.274404764175415){
    if(i56<0.004081093706190586){
     s0+=23.0;
     s1+=2122.0;
    } else {
     s0+=71.0;
     s1+=123.0;
    }
   } else {
    if(i2<0.06836315989494324){
     s0+=1.0;
    } else {
     s0+=10.0;
     s1+=7510.0;
    }
   }
  }
 }
}
if(i1<0.08283153176307678){
 if(i13<0.0006372928619384766){
  if(i60<-0.001097947359085083){
   if(i40<0.0016937782056629658){
    if(i45<0.010632868856191635){
     s0+=2175.0;
     s1+=574.0;
    } else {
     s0+=77.0;
     s1+=261.0;
    }
   } else {
    if(i58<0.006009003613144159){
     s0+=2701.0;
     s1+=20.0;
    } else {
     s0+=1517.0;
     s1+=226.0;
    }
   }
  } else {
   if(i14<1.0043315887451172){
    if(i8<1.0406912565231323){
     s0+=57401.0;
     s1+=415.0;
    } else {
     s0+=4441.0;
     s1+=639.0;
    }
   } else {
    if(i15<1.0062553882598877){
     s0+=296.0;
     s1+=17.0;
    } else {
     s0+=76.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i6<1.0023460388183594){
   if(i65<0.15371271967887878){
    if(i14<0.9969495534896851){
     s0+=414.0;
     s1+=26.0;
    } else {
     s0+=132.0;
     s1+=60.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i37<0.002841759007424116){
    if(i71<1.0048445463180542){
     s1+=461.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i29<0.9831713438034058){
     s0+=13.0;
     s1+=193.0;
    } else {
     s0+=69.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i36<-0.00023856759071350098){
  if(i48<0.003176102414727211){
   if(i36<-0.00025719404220581055){
    s0+=372.0;
   } else {
    if(i36<-0.00025585293769836426){
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=45.0;
  }
 } else {
  if(i5<3.36766242980957e-05){
   if(i48<0.0007454447913914919){
    if(i49<0.0043364763259887695){
     s0+=147.0;
     s1+=680.0;
    } else {
     s0+=464.0;
     s1+=70.0;
    }
   } else {
    if(i7<1.5218374755932018e-06){
     s0+=458.0;
     s1+=2464.0;
    } else {
     s0+=98.0;
     s1+=43.0;
    }
   }
  } else {
   if(i7<-4.928194175590761e-05){
    if(i2<0.1307239532470703){
     s0+=85.0;
     s1+=1244.0;
    } else {
     s0+=8.0;
     s1+=9205.0;
    }
   } else {
    if(i9<1.0907046794891357){
     s0+=7.0;
     s1+=231.0;
    } else {
     s0+=62.0;
     s1+=56.0;
    }
   }
  }
 }
}
if(i2<0.07843470573425293){
 if(i54<-0.028684139251708984){
  if(i10<0.0008515119552612305){
   if(i24<0.02920064702630043){
    if(i0<0.026839733123779297){
     s0+=1424.0;
     s1+=141.0;
    } else {
     s0+=453.0;
     s1+=233.0;
    }
   } else {
    if(i31<0.9994285106658936){
     s0+=219.0;
     s1+=9.0;
    } else {
     s0+=222.0;
     s1+=372.0;
    }
   }
  } else {
   if(i71<1.0016860961914062){
    if(i13<-0.00035187602043151855){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=305.0;
    }
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i5<4.035234451293945e-05){
   if(i40<0.00033232971327379346){
    if(i36<9.781122207641602e-05){
     s0+=35302.0;
    } else {
     s0+=3293.0;
     s1+=31.0;
    }
   } else {
    if(i2<0.06307107210159302){
     s0+=26027.0;
     s1+=965.0;
    } else {
     s0+=1874.0;
     s1+=508.0;
    }
   }
  } else {
   if(i71<0.9975920915603638){
    s0+=240.0;
   } else {
    if(i0<0.045853644609451294){
     s0+=91.0;
     s1+=25.0;
    } else {
     s0+=104.0;
     s1+=639.0;
    }
   }
  }
 }
} else {
 if(i5<3.343820571899414e-05){
  if(i11<0.998519778251648){
   if(i47<-1.0022712558566127e-05){
    if(i19<1.045987606048584){
     s0+=13.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i42<1.4761377573013306){
     s0+=496.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   }
  } else {
   if(i49<0.004182755947113037){
    if(i43<0.0003195429453626275){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=220.0;
     s1+=2191.0;
    }
   } else {
    if(i2<0.1552351415157318){
     s0+=680.0;
     s1+=132.0;
    } else {
     s0+=188.0;
     s1+=848.0;
    }
   }
  }
 } else {
  if(i7<-5.916287045693025e-05){
   if(i36<-0.0005376040935516357){
    s0+=13.0;
   } else {
    if(i2<0.13856756687164307){
     s0+=73.0;
     s1+=1268.0;
    } else {
     s0+=4.0;
     s1+=9095.0;
    }
   }
  } else {
   if(i9<1.0849725008010864){
    if(i31<1.0019264221191406){
     s0+=4.0;
     s1+=280.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i72<-4.889870069746394e-06){
     s0+=25.0;
     s1+=94.0;
    } else {
     s0+=59.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i1<0.0816052258014679){
 if(i22<2.2709369659423828e-05){
  if(i9<1.0451608896255493){
   if(i56<0.0002890152973122895){
    if(i6<1.0025386810302734){
     s0+=45062.0;
     s1+=31.0;
    } else {
     s0+=46.0;
     s1+=10.0;
    }
   } else {
    if(i42<1.1476502418518066){
     s0+=5505.0;
     s1+=711.0;
    } else {
     s0+=10786.0;
     s1+=17.0;
    }
   }
  } else {
   if(i38<0.00143264583311975){
    if(i2<0.05395594239234924){
     s0+=2889.0;
     s1+=517.0;
    } else {
     s0+=767.0;
     s1+=564.0;
    }
   } else {
    if(i47<-1.7885453416965902e-05){
     s0+=427.0;
     s1+=104.0;
    } else {
     s0+=2826.0;
     s1+=125.0;
    }
   }
  }
 } else {
  if(i50<0.003838837146759033){
   if(i6<1.0016162395477295){
    if(i58<0.008408383466303349){
     s0+=248.0;
     s1+=25.0;
    } else {
     s0+=27.0;
     s1+=58.0;
    }
   } else {
    if(i67<0.9990019798278809){
     s0+=16.0;
    } else {
     s0+=70.0;
     s1+=782.0;
    }
   }
  } else {
   if(i14<1.0060830116271973){
    if(i59<0.0031063752248883247){
     s0+=519.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    s1+=27.0;
   }
  }
 }
} else {
 if(i43<0.006297338753938675){
  if(i53<0.03614196181297302){
   if(i5<-5.677342414855957e-05){
    s0+=145.0;
   } else {
    if(i50<0.021125316619873047){
     s0+=129.0;
     s1+=3561.0;
    } else {
     s0+=289.0;
     s1+=357.0;
    }
   }
  } else {
   if(i27<0.0009952045511454344){
    if(i0<0.09715703129768372){
     s0+=140.0;
     s1+=33.0;
    } else {
     s0+=46.0;
     s1+=394.0;
    }
   } else {
    if(i0<0.18312332034111023){
     s0+=596.0;
     s1+=72.0;
    } else {
     s0+=217.0;
     s1+=301.0;
    }
   }
  }
 } else {
  if(i28<1.0042555332183838){
   if(i2<0.0972030758857727){
    if(i44<0.0614410936832428){
     s0+=6.0;
     s1+=76.0;
    } else {
     s0+=59.0;
     s1+=27.0;
    }
   } else {
    if(i4<0.1516885757446289){
     s0+=53.0;
     s1+=657.0;
    } else {
     s0+=3.0;
     s1+=1431.0;
    }
   }
  } else {
   if(i17<0.0012524838093668222){
    if(i64<-4.348992206359981e-06){
     s1+=16.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i1<0.11059114336967468){
     s0+=2.0;
     s1+=71.0;
    } else {
     s1+=7389.0;
    }
   }
  }
 }
}
if(i13<0.0004342198371887207){
 if(i4<0.07233726978302002){
  if(i29<1.0103590488433838){
   if(i41<0.042337507009506226){
    if(i70<-0.0036101937294006348){
     s0+=104.0;
     s1+=129.0;
    } else {
     s0+=54674.0;
     s1+=481.0;
    }
   } else {
    if(i15<0.9874438047409058){
     s0+=5888.0;
     s1+=101.0;
    } else {
     s0+=5720.0;
     s1+=1304.0;
    }
   }
  } else {
   if(i70<0.004548966884613037){
    if(i56<0.0011525019071996212){
     s0+=94.0;
     s1+=478.0;
    } else {
     s0+=233.0;
     s1+=29.0;
    }
   } else {
    if(i17<0.003442878369241953){
     s0+=730.0;
     s1+=16.0;
    } else {
     s0+=37.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i19<1.049466609954834){
   if(i29<1.0073039531707764){
    if(i44<0.04185137152671814){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=269.0;
     s1+=11.0;
    }
   } else {
    if(i64<3.923885742551647e-06){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i2<0.11595979332923889){
    if(i54<0.05025547742843628){
     s0+=383.0;
     s1+=577.0;
    } else {
     s0+=526.0;
     s1+=52.0;
    }
   } else {
    if(i36<-0.0002630650997161865){
     s0+=194.0;
     s1+=38.0;
    } else {
     s0+=342.0;
     s1+=2503.0;
    }
   }
  }
 }
} else {
 if(i45<0.02606992796063423){
  if(i28<1.0046050548553467){
   if(i6<1.0015194416046143){
    if(i4<0.13066712021827698){
     s0+=1117.0;
     s1+=124.0;
    } else {
     s0+=17.0;
     s1+=78.0;
    }
   } else {
    if(i23<1.0566184520721436){
     s0+=100.0;
     s1+=470.0;
    } else {
     s0+=172.0;
     s1+=93.0;
    }
   }
  } else {
   if(i10<7.265806198120117e-05){
    if(i78<0.0008169533684849739){
     s0+=159.0;
     s1+=51.0;
    } else {
     s0+=4.0;
     s1+=41.0;
    }
   } else {
    if(i30<0.0001881267235148698){
     s0+=61.0;
     s1+=3.0;
    } else {
     s0+=52.0;
     s1+=2539.0;
    }
   }
  }
 } else {
  if(i6<0.9984887838363647){
   if(i62<0.001708543160930276){
    s0+=117.0;
   } else {
    if(i29<0.840011715888977){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   }
  } else {
   if(i18<0.8908909559249878){
    if(i17<0.01808445155620575){
     s0+=8.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i14<0.9866682887077332){
     s0+=6.0;
     s1+=29.0;
    } else {
     s0+=13.0;
     s1+=7823.0;
    }
   }
  }
 }
}
if(i20<0.00011485815048217773){
 if(i13<0.0004558563232421875){
  if(i74<1.0149815082550049){
   if(i30<0.0003335053916089237){
    if(i29<1.011582374572754){
     s0+=53699.0;
     s1+=335.0;
    } else {
     s0+=16.0;
     s1+=51.0;
    }
   } else {
    if(i5<-3.55839729309082e-05){
     s0+=7843.0;
     s1+=453.0;
    } else {
     s0+=4955.0;
     s1+=2353.0;
    }
   }
  } else {
   if(i24<0.027252310886979103){
    if(i66<-0.004101090133190155){
     s0+=1214.0;
     s1+=86.0;
    } else {
     s0+=491.0;
     s1+=317.0;
    }
   } else {
    if(i5<-7.012486457824707e-05){
     s0+=111.0;
     s1+=29.0;
    } else {
     s0+=221.0;
     s1+=924.0;
    }
   }
  }
 } else {
  if(i71<1.0022629499435425){
   if(i24<0.01506062038242817){
    if(i31<1.0009386539459229){
     s0+=314.0;
     s1+=41.0;
    } else {
     s0+=127.0;
     s1+=180.0;
    }
   } else {
    if(i1<0.11353820562362671){
     s0+=287.0;
     s1+=589.0;
    } else {
     s0+=53.0;
     s1+=1479.0;
    }
   }
  } else {
   if(i1<0.1371173858642578){
    if(i58<0.0044240280985832214){
     s0+=791.0;
     s1+=45.0;
    } else {
     s0+=68.0;
     s1+=95.0;
    }
   } else {
    if(i9<1.0897595882415771){
     s0+=2.0;
     s1+=9.0;
    } else {
     s1+=236.0;
    }
   }
  }
 }
} else {
 if(i61<0.9993911385536194){
  s0+=186.0;
 } else {
  if(i8<1.0344531536102295){
   if(i13<0.0005854368209838867){
    if(i35<1.1663256883621216){
     s0+=72.0;
     s1+=52.0;
    } else {
     s0+=301.0;
     s1+=8.0;
    }
   } else {
    s1+=141.0;
   }
  } else {
   if(i7<-4.330327283241786e-05){
    if(i3<-2.1517276763916016e-05){
     s0+=61.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=9699.0;
    }
   } else {
    if(i13<0.00020837783813476562){
     s0+=1.0;
     s1+=89.0;
    } else {
     s0+=144.0;
     s1+=53.0;
    }
   }
  }
 }
}
if(i1<0.08304375410079956){
 if(i50<-0.006226569414138794){
  if(i5<3.4749507904052734e-05){
   if(i6<0.9975239038467407){
    if(i4<0.03395339846611023){
     s0+=1863.0;
     s1+=56.0;
    } else {
     s0+=134.0;
     s1+=65.0;
    }
   } else {
    if(i52<0.0004487998376134783){
     s0+=1246.0;
     s1+=186.0;
    } else {
     s0+=431.0;
     s1+=415.0;
    }
   }
  } else {
   if(i71<1.002697229385376){
    if(i27<0.0072006648406386375){
     s0+=7.0;
     s1+=501.0;
    } else {
     s0+=26.0;
     s1+=99.0;
    }
   } else {
    if(i65<0.03479593247175217){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=24.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<1.0047059059143066){
   if(i9<1.042891263961792){
    if(i56<0.00026921340031549335){
     s0+=43999.0;
     s1+=22.0;
    } else {
     s0+=14858.0;
     s1+=440.0;
    }
   } else {
    if(i69<0.033711034804582596){
     s0+=4772.0;
     s1+=338.0;
    } else {
     s0+=1377.0;
     s1+=482.0;
    }
   }
  } else {
   if(i42<1.140648365020752){
    if(i7<-2.8442458642530255e-05){
     s1+=461.0;
    } else {
     s0+=43.0;
     s1+=8.0;
    }
   } else {
    if(i17<0.005812514573335648){
     s0+=722.0;
     s1+=3.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i13<-0.00039127469062805176){
  if(i47<-1.0080972970172297e-05){
   if(i42<1.4761377573013306){
    if(i66<-0.003470776369795203){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i43<0.0038620082195848227){
    s0+=399.0;
   } else {
    if(i9<1.0977870225906372){
     s0+=22.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<1.0018045902252197){
   if(i74<1.0255898237228394){
    if(i54<0.06156757473945618){
     s0+=129.0;
     s1+=1796.0;
    } else {
     s0+=172.0;
     s1+=250.0;
    }
   } else {
    if(i17<0.003630175720900297){
     s0+=676.0;
     s1+=190.0;
    } else {
     s0+=109.0;
     s1+=884.0;
    }
   }
  } else {
   if(i1<0.12320312857627869){
    if(i74<1.0459368228912354){
     s0+=62.0;
     s1+=1146.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   } else {
    if(i45<0.010191461071372032){
     s0+=13.0;
     s1+=391.0;
    } else {
     s0+=7.0;
     s1+=9283.0;
    }
   }
  }
 }
}
if(i0<0.08334505558013916){
 if(i15<1.0059412717819214){
  if(i3<0.0005654096603393555){
   if(i9<1.04337739944458){
    if(i42<1.067622423171997){
     s0+=37763.0;
     s1+=17.0;
    } else {
     s0+=22600.0;
     s1+=679.0;
    }
   } else {
    if(i35<1.1034480333328247){
     s0+=2203.0;
     s1+=929.0;
    } else {
     s0+=5467.0;
     s1+=381.0;
    }
   }
  } else {
   if(i49<-0.0012250542640686035){
    if(i4<0.016615211963653564){
     s0+=39.0;
     s1+=77.0;
    } else {
     s0+=13.0;
     s1+=281.0;
    }
   } else {
    if(i31<1.0009496212005615){
     s0+=129.0;
     s1+=4.0;
    } else {
     s0+=79.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i17<0.0029456287156790495){
   if(i24<0.008329758420586586){
    if(i7<-4.415932926349342e-05){
     s0+=2.0;
     s1+=70.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i57<-2.638936712173745e-05){
     s0+=7.0;
     s1+=24.0;
    } else {
     s0+=507.0;
     s1+=45.0;
    }
   }
  } else {
   if(i56<0.003040425945073366){
    if(i31<0.999250054359436){
     s0+=6.0;
    } else {
     s0+=4.0;
     s1+=465.0;
    }
   } else {
    if(i12<1.0042479038238525){
     s0+=30.0;
    } else {
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i1<0.11061453819274902){
  if(i44<0.05495789647102356){
   if(i67<0.9946907758712769){
    if(i42<1.5262155532836914){
     s0+=178.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i1<0.08273869752883911){
     s0+=91.0;
     s1+=79.0;
    } else {
     s0+=29.0;
     s1+=1508.0;
    }
   }
  } else {
   if(i49<0.003971189260482788){
    if(i47<-9.957775546354242e-06){
     s0+=51.0;
     s1+=131.0;
    } else {
     s0+=288.0;
     s1+=53.0;
    }
   } else {
    if(i40<0.00172718265093863){
     s0+=78.0;
     s1+=18.0;
    } else {
     s0+=574.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i47<2.677727934496943e-06){
   if(i71<0.9965941905975342){
    s0+=112.0;
   } else {
    if(i35<1.3312374353408813){
     s0+=415.0;
     s1+=3183.0;
    } else {
     s0+=48.0;
     s1+=9174.0;
    }
   }
  } else {
   if(i46<0.09779921174049377){
    if(i48<0.0012385249137878418){
     s1+=17.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i43<0.0035463175736367702){
     s0+=210.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i0<0.0851379930973053){
 if(i10<0.0011545419692993164){
  if(i9<1.0436501502990723){
   if(i49<-0.0015491843223571777){
    if(i2<0.04268959164619446){
     s0+=1961.0;
     s1+=194.0;
    } else {
     s0+=64.0;
     s1+=111.0;
    }
   } else {
    if(i19<1.0428826808929443){
     s0+=51283.0;
     s1+=106.0;
    } else {
     s0+=7961.0;
     s1+=438.0;
    }
   }
  } else {
   if(i5<3.3736228942871094e-05){
    if(i42<1.103413462638855){
     s0+=2262.0;
     s1+=960.0;
    } else {
     s0+=5560.0;
     s1+=366.0;
    }
   } else {
    if(i50<0.0037183761596679688){
     s0+=137.0;
     s1+=491.0;
    } else {
     s0+=124.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i33<1.2392117977142334){
   s1+=428.0;
  } else {
   if(i7<-7.877049210947007e-05){
    s1+=59.0;
   } else {
    if(i74<0.9079498052597046){
     s1+=1.0;
    } else {
     s0+=121.0;
    }
   }
  }
 }
} else {
 if(i3<0.00018146634101867676){
  if(i6<0.996038556098938){
   if(i7<-2.6483263354748487e-05){
    if(i14<0.9852790832519531){
     s0+=2.0;
     s1+=47.0;
    } else {
     s0+=46.0;
     s1+=29.0;
    }
   } else {
    if(i16<0.9396334290504456){
     s1+=6.0;
    } else {
     s0+=619.0;
     s1+=7.0;
    }
   }
  } else {
   if(i45<0.014691513031721115){
    if(i38<0.0006418157136067748){
     s0+=342.0;
     s1+=109.0;
    } else {
     s0+=174.0;
     s1+=282.0;
    }
   } else {
    if(i49<0.005760788917541504){
     s0+=61.0;
     s1+=1104.0;
    } else {
     s0+=236.0;
     s1+=365.0;
    }
   }
  }
 } else {
  if(i5<4.9054622650146484e-05){
   if(i17<0.003927876241505146){
    if(i31<1.0003114938735962){
     s0+=43.0;
     s1+=396.0;
    } else {
     s0+=215.0;
     s1+=73.0;
    }
   } else {
    if(i10<-0.0006322264671325684){
     s0+=60.0;
     s1+=355.0;
    } else {
     s1+=1061.0;
    }
   }
  } else {
   if(i10<0.00015026330947875977){
    if(i24<0.016035933047533035){
     s0+=29.0;
     s1+=59.0;
    } else {
     s0+=20.0;
     s1+=933.0;
    }
   } else {
    if(i45<0.009802194312214851){
     s0+=15.0;
     s1+=695.0;
    } else {
     s0+=1.0;
     s1+=8213.0;
    }
   }
  }
 }
}
if(i2<0.0775308609008789){
 if(i5<4.106760025024414e-05){
  if(i33<1.0850647687911987){
   s0+=38238.0;
  } else {
   if(i13<-7.572770118713379e-05){
    if(i73<0.0007543147657997906){
     s0+=17289.0;
     s1+=161.0;
    } else {
     s0+=3536.0;
     s1+=400.0;
    }
   } else {
    if(i35<1.1038670539855957){
     s0+=1409.0;
     s1+=1162.0;
    } else {
     s0+=8486.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i36<0.0001386702060699463){
   if(i73<0.0034511126577854156){
    if(i16<1.025221347808838){
     s0+=292.0;
     s1+=3.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i51<-0.0001912829466164112){
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  } else {
   if(i14<1.0041160583496094){
    if(i42<1.2499912977218628){
     s0+=40.0;
     s1+=162.0;
    } else {
     s0+=130.0;
     s1+=110.0;
    }
   } else {
    if(i13<0.0005822181701660156){
     s0+=26.0;
     s1+=87.0;
    } else {
     s0+=4.0;
     s1+=707.0;
    }
   }
  }
 }
} else {
 if(i3<0.00014764070510864258){
  if(i11<0.9986300468444824){
   if(i52<0.0010152988834306598){
    if(i11<0.9976415634155273){
     s0+=392.0;
    } else {
     s0+=78.0;
     s1+=17.0;
    }
   } else {
    if(i0<0.13696715235710144){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i39<0.04318714141845703){
    if(i38<0.0004521366208791733){
     s0+=6.0;
    } else {
     s0+=53.0;
     s1+=1082.0;
    }
   } else {
    if(i2<0.12531068921089172){
     s0+=598.0;
     s1+=220.0;
    } else {
     s0+=196.0;
     s1+=549.0;
    }
   }
  }
 } else {
  if(i17<0.0032579330727458){
   if(i23<1.0713186264038086){
    if(i17<0.0015889236237853765){
     s0+=33.0;
     s1+=95.0;
    } else {
     s0+=10.0;
     s1+=527.0;
    }
   } else {
    if(i7<-6.48328714305535e-05){
     s1+=142.0;
    } else {
     s0+=240.0;
     s1+=36.0;
    }
   }
  } else {
   if(i1<0.11708569526672363){
    if(i49<0.003967493772506714){
     s0+=16.0;
     s1+=893.0;
    } else {
     s0+=134.0;
     s1+=41.0;
    }
   } else {
    if(i17<0.004560216795653105){
     s0+=23.0;
     s1+=386.0;
    } else {
     s0+=19.0;
     s1+=9800.0;
    }
   }
  }
 }
}
if(i1<0.07771003246307373){
 if(i5<3.892183303833008e-05){
  if(i9<1.042891263961792){
   if(i34<1.0557184219360352){
    s0+=41659.0;
   } else {
    if(i43<0.0008605740149505436){
     s0+=4047.0;
     s1+=493.0;
    } else {
     s0+=14757.0;
     s1+=81.0;
    }
   }
  } else {
   if(i40<0.001708840485662222){
    if(i43<0.00029563141288235784){
     s0+=1533.0;
    } else {
     s0+=1809.0;
     s1+=967.0;
    }
   } else {
    if(i62<0.0017844669055193663){
     s0+=4787.0;
     s1+=241.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i54<-0.005124688148498535){
   if(i11<1.0017335414886475){
    if(i17<0.0037180492654442787){
     s0+=85.0;
     s1+=4.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i75<0.00012729702575597912){
     s0+=19.0;
     s1+=571.0;
    } else {
     s0+=37.0;
     s1+=135.0;
    }
   }
  } else {
   if(i58<0.00045478736865334213){
    if(i6<1.0041226148605347){
     s0+=220.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i14<1.0009782314300537){
     s0+=120.0;
     s1+=9.0;
    } else {
     s0+=46.0;
     s1+=99.0;
    }
   }
  }
 }
} else {
 if(i15<1.0071825981140137){
  if(i11<0.998518705368042){
   if(i72<-2.427898152745911e-06){
    if(i11<0.9978988170623779){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=30.0;
    }
   } else {
    if(i65<0.2509811818599701){
     s0+=502.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i7<-1.269704989681486e-05){
    if(i44<0.05531474947929382){
     s0+=59.0;
     s1+=2601.0;
    } else {
     s0+=651.0;
     s1+=1998.0;
    }
   } else {
    if(i39<0.039821505546569824){
     s0+=19.0;
     s1+=217.0;
    } else {
     s0+=693.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i6<1.000551700592041){
   if(i48<0.0004945752443745732){
    s0+=43.0;
   } else {
    if(i44<0.18627417087554932){
     s1+=85.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i6<1.0020079612731934){
    if(i40<0.0028131739236414433){
     s0+=1.0;
     s1+=250.0;
    } else {
     s0+=31.0;
     s1+=131.0;
    }
   } else {
    if(i15<1.0091257095336914){
     s0+=14.0;
     s1+=414.0;
    } else {
     s1+=8403.0;
    }
   }
  }
 }
}
if(i4<0.0726744532585144){
 if(i3<0.0006021559238433838){
  if(i2<0.07799866795539856){
   if(i9<1.0428826808929443){
    if(i56<0.00031344068702310324){
     s0+=45730.0;
     s1+=56.0;
    } else {
     s0+=14575.0;
     s1+=599.0;
    }
   } else {
    if(i40<0.001429928233847022){
     s0+=3161.0;
     s1+=1091.0;
    } else {
     s0+=5027.0;
     s1+=364.0;
    }
   }
  } else {
   if(i11<0.9984877109527588){
    s0+=88.0;
   } else {
    if(i39<0.045774102210998535){
     s0+=15.0;
     s1+=740.0;
    } else {
     s0+=31.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i43<0.0003664245014078915){
   s0+=83.0;
  } else {
   if(i0<0.06828692555427551){
    if(i47<-1.4669136362499557e-05){
     s0+=98.0;
     s1+=516.0;
    } else {
     s0+=93.0;
     s1+=8.0;
    }
   } else {
    if(i49<0.0029744207859039307){
     s0+=5.0;
     s1+=1344.0;
    } else {
     s0+=22.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i43<0.006003519520163536){
  if(i10<0.0007140636444091797){
   if(i13<-0.00040084123611450195){
    if(i20<-8.097290992736816e-05){
     s0+=342.0;
    } else {
     s0+=78.0;
     s1+=2.0;
    }
   } else {
    if(i44<0.05517083406448364){
     s0+=86.0;
     s1+=949.0;
    } else {
     s0+=1189.0;
     s1+=918.0;
    }
   }
  } else {
   if(i56<0.005519764497876167){
    if(i34<1.314624547958374){
     s0+=3.0;
     s1+=1130.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i8<1.1387019157409668){
     s0+=38.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i19<1.0636978149414062){
   if(i0<0.11841413378715515){
    if(i64<4.761114723805804e-06){
     s1+=1.0;
    } else {
     s0+=94.0;
     s1+=2.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i1<0.1331298053264618){
    if(i66<-0.008522676303982735){
     s0+=87.0;
     s1+=31.0;
    } else {
     s0+=29.0;
     s1+=441.0;
    }
   } else {
    if(i62<0.00020681078603956848){
     s0+=12.0;
     s1+=275.0;
    } else {
     s0+=19.0;
     s1+=8700.0;
    }
   }
  }
 }
}
if(i10<0.0008068680763244629){
 if(i3<0.000570446252822876){
  if(i19<1.055574655532837){
   if(i70<-0.0023250579833984375){
    if(i33<1.0840110778808594){
     s0+=991.0;
    } else {
     s0+=779.0;
     s1+=263.0;
    }
   } else {
    if(i0<0.07916712760925293){
     s0+=55616.0;
     s1+=248.0;
    } else {
     s0+=590.0;
     s1+=132.0;
    }
   }
  } else {
   if(i1<0.07653090357780457){
    if(i42<1.103413462638855){
     s0+=1777.0;
     s1+=870.0;
    } else {
     s0+=8837.0;
     s1+=395.0;
    }
   } else {
    if(i17<0.0017323328647762537){
     s0+=651.0;
     s1+=232.0;
    } else {
     s0+=867.0;
     s1+=2780.0;
    }
   }
  }
 } else {
  if(i71<0.9974570870399475){
   if(i8<1.1260439157485962){
    s0+=114.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i0<0.07652154564857483){
    if(i17<0.004980201832950115){
     s0+=65.0;
     s1+=16.0;
    } else {
     s0+=94.0;
     s1+=336.0;
    }
   } else {
    if(i0<0.1319122314453125){
     s0+=67.0;
     s1+=440.0;
    } else {
     s0+=14.0;
     s1+=1454.0;
    }
   }
  }
 }
} else {
 if(i19<1.0540467500686646){
  if(i18<1.0069608688354492){
   if(i36<0.00024837255477905273){
    s0+=176.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=54.0;
  }
 } else {
  if(i9<1.0385410785675049){
   if(i17<0.004384704865515232){
    s0+=121.0;
   } else {
    s1+=15.0;
   }
  } else {
   if(i1<0.059377700090408325){
    if(i47<-1.4578472473658621e-05){
     s1+=171.0;
    } else {
     s0+=212.0;
     s1+=9.0;
    }
   } else {
    if(i13<-0.00035005807876586914){
     s0+=7.0;
    } else {
     s0+=74.0;
     s1+=9780.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i29<1.0100734233856201){
  if(i9<1.0452215671539307){
   if(i2<0.08066606521606445){
    if(i60<-0.001293778419494629){
     s0+=4390.0;
     s1+=474.0;
    } else {
     s0+=57455.0;
     s1+=349.0;
    }
   } else {
    if(i6<0.9956707954406738){
     s0+=119.0;
     s1+=4.0;
    } else {
     s0+=62.0;
     s1+=208.0;
    }
   }
  } else {
   if(i36<-0.00013741850852966309){
    if(i65<0.22027656435966492){
     s0+=1624.0;
     s1+=24.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i1<0.0774390697479248){
     s0+=4396.0;
     s1+=841.0;
    } else {
     s0+=437.0;
     s1+=1522.0;
    }
   }
  }
 } else {
  if(i1<0.0913553535938263){
   if(i33<1.1039612293243408){
    if(i9<1.0722787380218506){
     s0+=110.0;
     s1+=286.0;
    } else {
     s0+=145.0;
     s1+=27.0;
    }
   } else {
    if(i62<0.0007213754579424858){
     s0+=1030.0;
     s1+=4.0;
    } else {
     s0+=163.0;
     s1+=59.0;
    }
   }
  } else {
   if(i39<0.05130678415298462){
    if(i36<-0.0002460777759552002){
     s0+=4.0;
    } else {
     s0+=36.0;
     s1+=948.0;
    }
   } else {
    if(i17<0.00492875836789608){
     s0+=511.0;
     s1+=161.0;
    } else {
     s0+=15.0;
     s1+=494.0;
    }
   }
  }
 }
} else {
 if(i61<0.9991605877876282){
  s0+=205.0;
 } else {
  if(i10<0.001422107219696045){
   if(i45<0.022958025336265564){
    if(i40<0.002281468128785491){
     s0+=24.0;
     s1+=556.0;
    } else {
     s0+=363.0;
     s1+=343.0;
    }
   } else {
    if(i2<0.08085379004478455){
     s0+=9.0;
     s1+=148.0;
    } else {
     s1+=2253.0;
    }
   }
  } else {
   s1+=8449.0;
  }
 }
}
if(i2<0.0808488130569458){
 if(i5<4.1812658309936523e-05){
  if(i60<-0.00129622220993042){
   if(i37<0.0009905935730785131){
    if(i19<1.0419425964355469){
     s0+=1024.0;
     s1+=64.0;
    } else {
     s0+=390.0;
     s1+=554.0;
    }
   } else {
    if(i1<0.05784514546394348){
     s0+=4135.0;
     s1+=211.0;
    } else {
     s0+=253.0;
     s1+=126.0;
    }
   }
  } else {
   if(i0<0.07561221718788147){
    if(i19<1.0486011505126953){
     s0+=53307.0;
     s1+=99.0;
    } else {
     s0+=8648.0;
     s1+=804.0;
    }
   } else {
    if(i46<0.05319380760192871){
     s0+=275.0;
     s1+=310.0;
    } else {
     s0+=970.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i35<1.0677311420440674){
   s0+=192.0;
  } else {
   if(i59<-0.011182060465216637){
    if(i54<0.009939014911651611){
     s0+=3.0;
     s1+=14.0;
    } else {
     s0+=72.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.2524442672729492){
     s1+=818.0;
    } else {
     s0+=189.0;
     s1+=310.0;
    }
   }
  }
 }
} else {
 if(i28<1.010192632675171){
  if(i3<-0.0006327629089355469){
   if(i11<0.9985275268554688){
    if(i38<0.0066936323419213295){
     s0+=352.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i9<1.1115961074829102){
     s0+=88.0;
     s1+=25.0;
    } else {
     s0+=12.0;
     s1+=132.0;
    }
   }
  } else {
   if(i17<0.0017367787659168243){
    if(i50<0.015166282653808594){
     s0+=119.0;
     s1+=146.0;
    } else {
     s0+=313.0;
     s1+=14.0;
    }
   } else {
    if(i11<0.9980583190917969){
     s0+=50.0;
    } else {
     s0+=517.0;
     s1+=4613.0;
    }
   }
  }
 } else {
  if(i47<-1.7232530353794573e-06){
   if(i17<0.003166212234646082){
    if(i8<1.1533257961273193){
     s0+=9.0;
     s1+=507.0;
    } else {
     s0+=48.0;
     s1+=13.0;
    }
   } else {
    s1+=8299.0;
   }
  } else {
   if(i43<0.0035530836321413517){
    if(i33<1.223331332206726){
     s0+=4.0;
     s1+=15.0;
    } else {
     s0+=75.0;
    }
   } else {
    s1+=18.0;
   }
  }
 }
}
if(i1<0.08173757791519165){
 if(i30<0.0002811383455991745){
  if(i6<1.0024893283843994){
   if(i26<1.0111441612243652){
    if(i52<0.00028312348877079785){
     s0+=51101.0;
     s1+=92.0;
    } else {
     s0+=973.0;
     s1+=115.0;
    }
   } else {
    if(i13<0.0001723766326904297){
     s0+=189.0;
     s1+=3.0;
    } else {
     s0+=37.0;
     s1+=37.0;
    }
   }
  } else {
   if(i22<2.47955322265625e-05){
    if(i37<0.0015790006145834923){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=96.0;
    }
   } else {
    s1+=38.0;
   }
  }
 } else {
  if(i11<1.0018947124481201){
   if(i42<1.103413462638855){
    if(i37<0.0002943750296253711){
     s0+=2505.0;
    } else {
     s0+=1947.0;
     s1+=1479.0;
    }
   } else {
    if(i63<-0.0027083754539489746){
     s0+=1105.0;
     s1+=229.0;
    } else {
     s0+=10684.0;
     s1+=195.0;
    }
   }
  } else {
   if(i33<1.4786540269851685){
    if(i49<0.002333015203475952){
     s0+=50.0;
     s1+=664.0;
    } else {
     s0+=58.0;
     s1+=3.0;
    }
   } else {
    if(i45<0.037064798176288605){
     s0+=587.0;
     s1+=61.0;
    } else {
     s0+=2.0;
     s1+=147.0;
    }
   }
  }
 }
} else {
 if(i5<9.238719940185547e-06){
  if(i43<0.003927893005311489){
   if(i66<-0.005801730789244175){
    if(i48<0.004030453972518444){
     s0+=564.0;
     s1+=31.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i39<0.05496707558631897){
     s0+=137.0;
     s1+=832.0;
    } else {
     s0+=328.0;
     s1+=154.0;
    }
   }
  } else {
   if(i24<0.022238951176404953){
    if(i34<1.253044605255127){
     s0+=93.0;
     s1+=36.0;
    } else {
     s0+=16.0;
     s1+=45.0;
    }
   } else {
    if(i42<1.2527469396591187){
     s0+=37.0;
     s1+=52.0;
    } else {
     s0+=53.0;
     s1+=731.0;
    }
   }
  }
 } else {
  if(i28<1.0092179775238037){
   if(i68<0.19299477338790894){
    if(i23<1.0831290483474731){
     s0+=174.0;
     s1+=1368.0;
    } else {
     s0+=218.0;
     s1+=263.0;
    }
   } else {
    if(i43<0.0049816640093922615){
     s0+=30.0;
     s1+=58.0;
    } else {
     s0+=12.0;
     s1+=1684.0;
    }
   }
  } else {
   if(i6<1.001800775527954){
    if(i66<-0.010458783246576786){
     s0+=29.0;
     s1+=49.0;
    } else {
     s0+=14.0;
     s1+=332.0;
    }
   } else {
    if(i1<0.08539506793022156){
     s0+=4.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=8355.0;
    }
   }
  }
 }
}
if(i6<1.0024573802947998){
 if(i0<0.08776506781578064){
  if(i70<-0.002248018980026245){
   if(i3<-0.0002738833427429199){
    if(i40<0.002545401453971863){
     s0+=1253.0;
     s1+=252.0;
    } else {
     s0+=2886.0;
     s1+=55.0;
    }
   } else {
    if(i2<0.04416581988334656){
     s0+=1294.0;
     s1+=346.0;
    } else {
     s0+=164.0;
     s1+=357.0;
    }
   }
  } else {
   if(i1<0.07289853692054749){
    if(i18<1.006241798400879){
     s0+=59957.0;
     s1+=528.0;
    } else {
     s0+=2344.0;
     s1+=256.0;
    }
   } else {
    if(i46<0.05054444074630737){
     s0+=71.0;
     s1+=300.0;
    } else {
     s0+=1008.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i22<-1.6063451766967773e-05){
   if(i38<0.0016459620092064142){
    s0+=539.0;
   } else {
    if(i0<0.18763813376426697){
     s0+=42.0;
     s1+=10.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i17<0.0016448013484477997){
    if(i49<0.004367470741271973){
     s0+=148.0;
     s1+=171.0;
    } else {
     s0+=376.0;
     s1+=47.0;
    }
   } else {
    if(i49<0.004519045352935791){
     s0+=111.0;
     s1+=2336.0;
    } else {
     s0+=460.0;
     s1+=1203.0;
    }
   }
  }
 }
} else {
 if(i17<0.0023674815893173218){
  if(i13<0.000587165355682373){
   if(i64<1.9972046629845863e-06){
    if(i16<1.0233423709869385){
     s0+=195.0;
     s1+=9.0;
    } else {
     s0+=10.0;
     s1+=29.0;
    }
   } else {
    s1+=53.0;
   }
  } else {
   if(i64<5.103418970975326e-06){
    s1+=150.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i14<1.006155014038086){
   if(i20<6.258487701416016e-06){
    if(i19<1.1228240728378296){
     s0+=99.0;
     s1+=239.0;
    } else {
     s0+=31.0;
     s1+=608.0;
    }
   } else {
    if(i25<1.003666877746582){
     s0+=19.0;
     s1+=275.0;
    } else {
     s0+=2.0;
     s1+=1389.0;
    }
   }
  } else {
   s1+=8530.0;
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i4<0.07105270028114319){
  if(i16<1.008097529411316){
   if(i73<0.0007540961960330606){
    if(i68<0.034112509340047836){
     s0+=54966.0;
     s1+=348.0;
    } else {
     s0+=4967.0;
     s1+=584.0;
    }
   } else {
    if(i40<0.0020712981931865215){
     s0+=1803.0;
     s1+=849.0;
    } else {
     s0+=5781.0;
     s1+=315.0;
    }
   }
  } else {
   if(i33<1.1039612293243408){
    if(i7<-2.12968880077824e-05){
     s0+=2.0;
     s1+=361.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s0+=167.0;
     s1+=131.0;
    } else {
     s0+=541.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i2<0.10606038570404053){
   if(i54<0.045115530490875244){
    if(i24<0.012420162558555603){
     s0+=396.0;
     s1+=108.0;
    } else {
     s0+=227.0;
     s1+=477.0;
    }
   } else {
    if(i0<0.11535480618476868){
     s0+=691.0;
     s1+=42.0;
    } else {
     s0+=15.0;
     s1+=20.0;
    }
   }
  } else {
   if(i48<0.0013417573645710945){
    if(i66<-0.011032254435122013){
     s0+=315.0;
     s1+=35.0;
    } else {
     s0+=256.0;
     s1+=828.0;
    }
   } else {
    if(i71<0.9967299699783325){
     s0+=38.0;
    } else {
     s0+=80.0;
     s1+=1404.0;
    }
   }
  }
 }
} else {
 if(i71<0.9970604181289673){
  s0+=244.0;
 } else {
  if(i61<0.9992232918739319){
   s0+=58.0;
  } else {
   if(i14<1.0064330101013184){
    if(i71<0.9975241422653198){
     s0+=42.0;
     s1+=14.0;
    } else {
     s0+=335.0;
     s1+=3086.0;
    }
   } else {
    if(i7<-4.353338590590283e-05){
     s0+=3.0;
     s1+=8596.0;
    } else {
     s0+=41.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i2<0.08023786544799805){
 if(i6<1.0024782419204712){
  if(i1<0.06630921363830566){
   if(i70<-0.0022439658641815186){
    if(i40<0.001696474850177765){
     s0+=1409.0;
     s1+=593.0;
    } else {
     s0+=4120.0;
     s1+=221.0;
    }
   } else {
    if(i34<1.0598037242889404){
     s0+=41937.0;
     s1+=6.0;
    } else {
     s0+=19035.0;
     s1+=636.0;
    }
   }
  } else {
   if(i53<0.021029412746429443){
    if(i46<0.04793262481689453){
     s0+=73.0;
     s1+=452.0;
    } else {
     s0+=399.0;
     s1+=137.0;
    }
   } else {
    if(i50<-0.0030345916748046875){
     s0+=51.0;
     s1+=40.0;
    } else {
     s0+=2178.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i42<1.2287709712982178){
   if(i72<-3.997135081590386e-06){
    if(i17<0.0008288463577628136){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=985.0;
    }
   } else {
    if(i30<0.0007660470437258482){
     s0+=15.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i74<0.9938971996307373){
    if(i50<-0.004328548908233643){
     s0+=12.0;
     s1+=223.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   } else {
    if(i61<0.999941349029541){
     s1+=3.0;
    } else {
     s0+=197.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i7<-1.2278027497814037e-05){
  if(i2<0.11708790063858032){
   if(i53<0.038982003927230835){
    if(i60<0.00433880090713501){
     s0+=101.0;
     s1+=1693.0;
    } else {
     s0+=136.0;
     s1+=67.0;
    }
   } else {
    if(i57<0.0001042666335706599){
     s0+=97.0;
     s1+=118.0;
    } else {
     s0+=138.0;
     s1+=10.0;
    }
   }
  } else {
   if(i38<0.0005819007637910545){
    if(i36<1.519918441772461e-06){
     s0+=50.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i22<-1.7881393432617188e-05){
     s0+=11.0;
    } else {
     s0+=135.0;
     s1+=11458.0;
    }
   }
  }
 } else {
  if(i36<-0.0001359879970550537){
   s0+=397.0;
  } else {
   if(i26<1.0065099000930786){
    if(i5<-5.599856376647949e-05){
     s0+=19.0;
    } else {
     s0+=56.0;
     s1+=221.0;
    }
   } else {
    if(i2<0.2583838105201721){
     s0+=489.0;
     s1+=60.0;
    } else {
     s0+=27.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i2<0.07874476909637451){
 if(i11<1.0018972158432007){
  if(i9<1.0412344932556152){
   if(i30<0.0002816471678670496){
    if(i52<0.00028892216505482793){
     s0+=48916.0;
     s1+=70.0;
    } else {
     s0+=869.0;
     s1+=106.0;
    }
   } else {
    if(i56<0.0017070426838472486){
     s0+=3614.0;
     s1+=467.0;
    } else {
     s0+=6038.0;
     s1+=23.0;
    }
   }
  } else {
   if(i35<1.1034480333328247){
    if(i37<0.00029014633037149906){
     s0+=1722.0;
    } else {
     s0+=1020.0;
     s1+=1244.0;
    }
   } else {
    if(i52<0.0007469029515050352){
     s0+=5534.0;
     s1+=179.0;
    } else {
     s0+=708.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i5<3.5822391510009766e-05){
   if(i63<-0.002269566059112549){
    if(i10<-0.0008946061134338379){
     s0+=37.0;
     s1+=29.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i37<0.0025568113196641207){
     s0+=59.0;
     s1+=19.0;
    } else {
     s0+=422.0;
     s1+=5.0;
    }
   }
  } else {
   if(i28<0.9976445436477661){
    if(i70<-0.0015271902084350586){
     s0+=79.0;
     s1+=246.0;
    } else {
     s0+=46.0;
     s1+=3.0;
    }
   } else {
    if(i60<0.002621769905090332){
     s0+=18.0;
     s1+=761.0;
    } else {
     s0+=33.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i22<-1.4007091522216797e-05){
  if(i43<0.003430403769016266){
   if(i7<-4.438096220837906e-05){
    if(i69<0.03128909319639206){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i13<-0.0003503859043121338){
     s0+=415.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i30<0.0017469464801251888){
    s0+=44.0;
   } else {
    if(i4<0.08669853210449219){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i0<0.12524020671844482){
   if(i44<0.05750924348831177){
    if(i3<-0.0008642077445983887){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=58.0;
     s1+=1898.0;
    }
   } else {
    if(i30<0.00129477318841964){
     s0+=209.0;
     s1+=260.0;
    } else {
     s0+=662.0;
     s1+=65.0;
    }
   }
  } else {
   if(i48<0.0003073447151109576){
    if(i39<0.07880523800849915){
     s0+=6.0;
     s1+=117.0;
    } else {
     s0+=126.0;
     s1+=33.0;
    }
   } else {
    if(i61<0.9978753328323364){
     s0+=22.0;
    } else {
     s0+=203.0;
     s1+=11574.0;
    }
   }
  }
 }
}
if(i19<1.0576403141021729){
 if(i16<1.0081672668457031){
  if(i29<1.0116345882415771){
   if(i6<1.0026906728744507){
    if(i60<-0.001375645399093628){
     s0+=1880.0;
     s1+=275.0;
    } else {
     s0+=56828.0;
     s1+=363.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s1+=35.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i37<0.0011695465072989464){
    s1+=68.0;
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i43<0.0015251110307872295){
   if(i7<-2.296302409376949e-05){
    s1+=119.0;
   } else {
    s0+=2.0;
   }
  } else {
   s0+=8.0;
  }
 }
} else {
 if(i6<1.0015597343444824){
  if(i46<0.05319005250930786){
   if(i1<0.0663565993309021){
    if(i59<-0.008958074264228344){
     s0+=2937.0;
     s1+=38.0;
    } else {
     s0+=6297.0;
     s1+=869.0;
    }
   } else {
    if(i13<-0.0003662109375){
     s0+=44.0;
     s1+=2.0;
    } else {
     s0+=139.0;
     s1+=1034.0;
    }
   }
  } else {
   if(i39<0.028177380561828613){
    if(i37<0.0052160704508423805){
     s0+=61.0;
     s1+=202.0;
    } else {
     s0+=11.0;
     s1+=339.0;
    }
   } else {
    if(i51<-0.0001075693653547205){
     s0+=1143.0;
     s1+=1337.0;
    } else {
     s0+=915.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i1<0.0655854344367981){
   if(i34<1.1481032371520996){
    if(i33<1.2385294437408447){
     s0+=2.0;
     s1+=325.0;
    } else {
     s0+=37.0;
     s1+=52.0;
    }
   } else {
    if(i49<-0.0049301981925964355){
     s0+=15.0;
     s1+=168.0;
    } else {
     s0+=519.0;
     s1+=38.0;
    }
   }
  } else {
   if(i17<0.0026697830762714148){
    if(i60<0.0035685300827026367){
     s0+=35.0;
     s1+=348.0;
    } else {
     s0+=105.0;
     s1+=22.0;
    }
   } else {
    if(i28<1.0006494522094727){
     s0+=155.0;
     s1+=1656.0;
    } else {
     s0+=18.0;
     s1+=9550.0;
    }
   }
  }
 }
}
if(i12<1.0029146671295166){
 if(i9<1.0469921827316284){
  if(i49<-0.0017362236976623535){
   if(i4<0.031017690896987915){
    if(i18<0.9648520946502686){
     s0+=831.0;
     s1+=12.0;
    } else {
     s0+=722.0;
     s1+=155.0;
    }
   } else {
    if(i33<1.0821808576583862){
     s0+=53.0;
    } else {
     s0+=92.0;
     s1+=172.0;
    }
   }
  } else {
   if(i2<0.07910159230232239){
    if(i69<0.026191605255007744){
     s0+=53619.0;
     s1+=216.0;
    } else {
     s0+=6527.0;
     s1+=378.0;
    }
   } else {
    if(i12<0.9977527856826782){
     s0+=189.0;
     s1+=28.0;
    } else {
     s0+=66.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i4<0.0629006028175354){
   if(i33<1.1013743877410889){
    if(i24<0.009950486943125725){
     s0+=992.0;
     s1+=172.0;
    } else {
     s0+=391.0;
     s1+=710.0;
    }
   } else {
    if(i7<-4.814213025383651e-05){
     s0+=464.0;
     s1+=301.0;
    } else {
     s0+=3980.0;
     s1+=193.0;
    }
   }
  } else {
   if(i17<0.004701472818851471){
    if(i23<1.049032211303711){
     s0+=228.0;
     s1+=614.0;
    } else {
     s0+=1395.0;
     s1+=649.0;
    }
   } else {
    if(i19<1.0665628910064697){
     s0+=109.0;
     s1+=103.0;
    } else {
     s0+=187.0;
     s1+=2633.0;
    }
   }
  }
 }
} else {
 if(i2<0.04761308431625366){
  if(i5<3.165006637573242e-05){
   if(i13<0.0012312531471252441){
    if(i4<0.046002715826034546){
     s0+=727.0;
     s1+=19.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i50<-0.0054874420166015625){
    if(i69<0.2512498199939728){
     s0+=8.0;
     s1+=268.0;
    } else {
     s0+=22.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.2288426160812378){
     s0+=4.0;
     s1+=53.0;
    } else {
     s0+=104.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i10<-0.0007956027984619141){
   if(i2<0.09737274050712585){
    if(i63<-0.00010886788368225098){
     s0+=10.0;
     s1+=107.0;
    } else {
     s0+=226.0;
     s1+=23.0;
    }
   } else {
    if(i62<0.00022305709717329592){
     s0+=16.0;
     s1+=30.0;
    } else {
     s0+=28.0;
     s1+=650.0;
    }
   }
  } else {
   if(i33<1.077897071838379){
    s0+=13.0;
   } else {
    if(i7<-4.21387012465857e-05){
     s0+=14.0;
     s1+=9271.0;
    } else {
     s0+=116.0;
     s1+=161.0;
    }
   }
  }
 }
}
if(i13<0.00044035911560058594){
 if(i8<1.0450963973999023){
  if(i29<1.010624885559082){
   if(i73<0.0007895255112089217){
    if(i7<-3.989048127550632e-05){
     s0+=727.0;
     s1+=145.0;
    } else {
     s0+=57685.0;
     s1+=554.0;
    }
   } else {
    if(i37<0.001001958386041224){
     s0+=1189.0;
     s1+=653.0;
    } else {
     s0+=4757.0;
     s1+=305.0;
    }
   }
  } else {
   if(i80<-0.0012997937155887485){
    if(i0<0.09062042832374573){
     s0+=93.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i79<0.0013172030448913574){
     s0+=11.0;
     s1+=100.0;
    } else {
     s0+=41.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i43<0.006001306232064962){
   if(i33<1.255998969078064){
    if(i2<0.0758657455444336){
     s0+=1994.0;
     s1+=558.0;
    } else {
     s0+=541.0;
     s1+=1745.0;
    }
   } else {
    if(i17<0.005853212904185057){
     s0+=2290.0;
     s1+=99.0;
    } else {
     s0+=19.0;
     s1+=157.0;
    }
   }
  } else {
   if(i4<0.10103774070739746){
    if(i54<-0.04248574376106262){
     s0+=4.0;
     s1+=65.0;
    } else {
     s0+=162.0;
     s1+=31.0;
    }
   } else {
    if(i7<-3.825133899226785e-05){
     s1+=1266.0;
    } else {
     s0+=23.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i15<1.0044066905975342){
  if(i45<0.02638157084584236){
   if(i62<0.0008398856152780354){
    if(i26<0.9990804195404053){
     s0+=80.0;
     s1+=301.0;
    } else {
     s0+=502.0;
     s1+=187.0;
    }
   } else {
    if(i1<0.11706295609474182){
     s0+=957.0;
     s1+=87.0;
    } else {
     s0+=6.0;
     s1+=67.0;
    }
   }
  } else {
   if(i19<1.0819711685180664){
    if(i14<0.9936016798019409){
     s0+=105.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   } else {
    if(i0<0.0011035501956939697){
     s0+=19.0;
     s1+=20.0;
    } else {
     s0+=18.0;
     s1+=1689.0;
    }
   }
  }
 } else {
  if(i30<0.0002014274796238169){
   if(i38<0.0010454285657033324){
    if(i34<1.0624027252197266){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i43<0.001984868198633194){
     s1+=2.0;
    } else {
     s0+=44.0;
    }
   }
  } else {
   if(i7<-4.32968299719505e-05){
    if(i19<1.1222221851348877){
     s0+=37.0;
     s1+=1961.0;
    } else {
     s1+=6601.0;
    }
   } else {
    if(i45<0.0084343571215868){
     s0+=51.0;
     s1+=1.0;
    } else {
     s1+=119.0;
    }
   }
  }
 }
}
if(i7<-7.494917372241616e-05){
 if(i6<0.9999475479125977){
  if(i51<-0.0004326529451645911){
   if(i42<1.1183866262435913){
    s0+=153.0;
   } else {
    if(i50<-0.0774725079536438){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=260.0;
    }
   }
  } else {
   if(i46<0.09392911195755005){
    if(i55<0.019923970103263855){
     s0+=556.0;
     s1+=6.0;
    } else {
     s0+=15.0;
     s1+=17.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i45<0.01899676024913788){
   if(i30<0.002341504441574216){
    if(i10<-0.0007842779159545898){
     s0+=49.0;
     s1+=36.0;
    } else {
     s0+=18.0;
     s1+=1572.0;
    }
   } else {
    if(i1<0.13187822699546814){
     s0+=163.0;
     s1+=22.0;
    } else {
     s0+=9.0;
     s1+=180.0;
    }
   }
  } else {
   if(i1<0.005609393119812012){
    if(i6<1.0025742053985596){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i9<1.042703628540039){
     s0+=5.0;
     s1+=37.0;
    } else {
     s0+=9.0;
     s1+=9072.0;
    }
   }
  }
 }
} else {
 if(i1<0.07851806282997131){
  if(i30<0.0002816389314830303){
   if(i18<1.008420705795288){
    if(i16<1.009930968284607){
     s0+=52168.0;
     s1+=164.0;
    } else {
     s0+=6.0;
     s1+=11.0;
    }
   } else {
    if(i68<0.015027790330350399){
     s0+=23.0;
     s1+=90.0;
    } else {
     s0+=113.0;
     s1+=11.0;
    }
   }
  } else {
   if(i33<1.100754976272583){
    if(i12<1.0006375312805176){
     s0+=3825.0;
     s1+=880.0;
    } else {
     s0+=33.0;
     s1+=572.0;
    }
   } else {
    if(i13<0.0009888410568237305){
     s0+=12114.0;
     s1+=447.0;
    } else {
     s0+=8.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i7<-1.2714536751445848e-05){
   if(i22<-1.341104507446289e-05){
    if(i43<0.003814063500612974){
     s0+=58.0;
    } else {
     s0+=7.0;
     s1+=16.0;
    }
   } else {
    if(i49<0.003944694995880127){
     s0+=125.0;
     s1+=2366.0;
    } else {
     s0+=501.0;
     s1+=856.0;
    }
   }
  } else {
   if(i6<0.9960691928863525){
    if(i36<-0.00013017654418945312){
     s0+=451.0;
    } else {
     s0+=66.0;
     s1+=6.0;
    }
   } else {
    if(i44<0.04796719551086426){
     s0+=12.0;
     s1+=221.0;
    } else {
     s0+=671.0;
     s1+=150.0;
    }
   }
  }
 }
}
if(i1<0.08203884959220886){
 if(i5<3.9637088775634766e-05){
  if(i19<1.0485899448394775){
   if(i60<-0.0013020038604736328){
    if(i34<1.0547096729278564){
     s0+=1052.0;
    } else {
     s0+=765.0;
     s1+=225.0;
    }
   } else {
    if(i41<0.04687690734863281){
     s0+=50395.0;
     s1+=44.0;
    } else {
     s0+=3402.0;
     s1+=73.0;
    }
   }
  } else {
   if(i42<1.103413462638855){
    if(i37<0.0002946359745692462){
     s0+=1503.0;
     s1+=1.0;
    } else {
     s0+=1272.0;
     s1+=1328.0;
    }
   } else {
    if(i2<0.06646567583084106){
     s0+=9720.0;
     s1+=316.0;
    } else {
     s0+=651.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i6<1.0016067028045654){
   if(i49<-0.00395888090133667){
    if(i11<1.0034959316253662){
     s1+=9.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=251.0;
   }
  } else {
   if(i35<1.2510931491851807){
    if(i68<0.18596181273460388){
     s1+=624.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i26<0.9968529343605042){
     s0+=43.0;
     s1+=331.0;
    } else {
     s0+=211.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i61<0.9995558857917786){
  if(i3<1.7285346984863281e-06){
   if(i48<0.0013448602985590696){
    s0+=295.0;
   } else {
    if(i31<0.9986874461174011){
     s0+=120.0;
     s1+=1.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i43<0.0010348651558160782){
    s0+=10.0;
   } else {
    s1+=250.0;
   }
  }
 } else {
  if(i14<1.002197027206421){
   if(i40<0.008748764172196388){
    if(i39<0.04930472373962402){
     s0+=112.0;
     s1+=1609.0;
    } else {
     s0+=979.0;
     s1+=658.0;
    }
   } else {
    if(i0<0.11271136999130249){
     s0+=47.0;
     s1+=68.0;
    } else {
     s0+=19.0;
     s1+=1687.0;
    }
   }
  } else {
   if(i47<-1.3659048818226438e-05){
    if(i51<-0.0003757644444704056){
     s0+=4.0;
     s1+=7370.0;
    } else {
     s0+=32.0;
     s1+=1865.0;
    }
   } else {
    if(i7<-4.233765503158793e-05){
     s0+=1.0;
     s1+=465.0;
    } else {
     s0+=70.0;
     s1+=142.0;
    }
   }
  }
 }
}
if(i0<0.08514660596847534){
 if(i5<3.975629806518555e-05){
  if(i52<0.0002567516639828682){
   if(i68<0.026707809418439865){
    if(i52<-9.927840437740088e-05){
     s0+=32.0;
     s1+=70.0;
    } else {
     s0+=53074.0;
     s1+=331.0;
    }
   } else {
    if(i43<0.0008607734343968332){
     s0+=1511.0;
     s1+=464.0;
    } else {
     s0+=2718.0;
     s1+=79.0;
    }
   }
  } else {
   if(i56<0.0016098808264359832){
    if(i6<0.9969290494918823){
     s0+=1383.0;
     s1+=58.0;
    } else {
     s0+=1060.0;
     s1+=803.0;
    }
   } else {
    if(i20<-0.00032955408096313477){
     s0+=6364.0;
     s1+=82.0;
    } else {
     s0+=2399.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i37<0.00039478979306295514){
   s0+=233.0;
  } else {
   if(i35<1.2524442672729492){
    if(i5<0.0006798505783081055){
     s0+=2.0;
     s1+=584.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i58<0.0030299294739961624){
     s0+=225.0;
     s1+=47.0;
    } else {
     s0+=48.0;
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i3<-0.0007499754428863525){
  if(i13<-0.0004050135612487793){
   if(i64<4.444492151378654e-05){
    if(i48<0.002848862437531352){
     s0+=579.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i78<0.0007986405398696661){
     s0+=19.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i16<0.9873154163360596){
    if(i51<5.253836570773274e-05){
     s0+=3.0;
     s1+=104.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   } else {
    if(i19<1.0720034837722778){
     s0+=47.0;
    } else {
     s0+=26.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i17<0.0018948492361232638){
   if(i44<0.06252604722976685){
    if(i60<0.003020048141479492){
     s0+=36.0;
     s1+=256.0;
    } else {
     s0+=50.0;
     s1+=15.0;
    }
   } else {
    if(i15<1.0122036933898926){
     s0+=531.0;
     s1+=85.0;
    } else {
     s0+=2.0;
     s1+=29.0;
    }
   }
  } else {
   if(i11<0.9989709854125977){
    if(i69<0.0760306566953659){
     s0+=102.0;
     s1+=17.0;
    } else {
     s0+=17.0;
     s1+=67.0;
    }
   } else {
    if(i3<0.0007030367851257324){
     s0+=460.0;
     s1+=3398.0;
    } else {
     s0+=55.0;
     s1+=10045.0;
    }
   }
  }
 }
}
if(i15<1.005580186843872){
 if(i0<0.0846821665763855){
  if(i50<-0.006095230579376221){
   if(i1<0.049291640520095825){
    if(i15<0.984200119972229){
     s0+=1442.0;
     s1+=55.0;
    } else {
     s0+=1881.0;
     s1+=578.0;
    }
   } else {
    if(i36<-0.00014194846153259277){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=80.0;
     s1+=409.0;
    }
   }
  } else {
   if(i24<0.01393103413283825){
    if(i41<0.0424540713429451){
     s0+=49564.0;
     s1+=139.0;
    } else {
     s0+=4820.0;
     s1+=175.0;
    }
   } else {
    if(i15<0.9922969341278076){
     s0+=7938.0;
     s1+=77.0;
    } else {
     s0+=2763.0;
     s1+=892.0;
    }
   }
  }
 } else {
  if(i11<0.9985139966011047){
   if(i64<4.427175008459017e-05){
    if(i65<0.25885656476020813){
     s0+=650.0;
     s1+=4.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i8<1.0399566888809204){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   }
  } else {
   if(i17<0.0034740320406854153){
    if(i39<0.050847142934799194){
     s0+=91.0;
     s1+=602.0;
    } else {
     s0+=668.0;
     s1+=192.0;
    }
   } else {
    if(i2<0.11052539944648743){
     s0+=255.0;
     s1+=701.0;
    } else {
     s0+=61.0;
     s1+=2776.0;
    }
   }
  }
 }
} else {
 if(i10<0.001430511474609375){
  if(i0<0.07313823699951172){
   if(i25<1.0125592947006226){
    if(i35<1.1380741596221924){
     s0+=5.0;
     s1+=161.0;
    } else {
     s0+=315.0;
     s1+=35.0;
    }
   } else {
    if(i19<1.0796111822128296){
     s1+=10.0;
    } else {
     s0+=336.0;
     s1+=1.0;
    }
   }
  } else {
   if(i36<0.0001214742660522461){
    if(i34<1.1458663940429688){
     s0+=1.0;
     s1+=313.0;
    } else {
     s0+=217.0;
     s1+=292.0;
    }
   } else {
    if(i17<0.0020408062264323235){
     s0+=34.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=1071.0;
    }
   }
  }
 } else {
  if(i56<0.00026622985024005175){
   s0+=9.0;
  } else {
   if(i27<0.00015076692216098309){
    if(i3<0.001439213752746582){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i56<0.00030329570290632546){
     s0+=3.0;
     s1+=18.0;
    } else {
     s0+=3.0;
     s1+=8473.0;
    }
   }
  }
 }
}
if(i16<1.0081671476364136){
 if(i5<4.0471553802490234e-05){
  if(i40<0.0003896197595167905){
   if(i32<1.009056568145752){
    if(i34<1.0596027374267578){
     s0+=38810.0;
     s1+=6.0;
    } else {
     s0+=2297.0;
     s1+=87.0;
    }
   } else {
    if(i31<1.0004451274871826){
     s0+=163.0;
    } else {
     s0+=9.0;
     s1+=27.0;
    }
   }
  } else {
   if(i13<-0.00015145540237426758){
    if(i46<0.05998837947845459){
     s0+=17117.0;
     s1+=428.0;
    } else {
     s0+=691.0;
     s1+=140.0;
    }
   } else {
    if(i33<1.1039612293243408){
     s0+=952.0;
     s1+=1525.0;
    } else {
     s0+=9499.0;
     s1+=1549.0;
    }
   }
  }
 } else {
  if(i61<0.9989104866981506){
   s0+=239.0;
  } else {
   if(i2<0.04014497995376587){
    if(i58<0.004920675419270992){
     s0+=76.0;
     s1+=36.0;
    } else {
     s0+=16.0;
     s1+=102.0;
    }
   } else {
    if(i10<-0.0006383657455444336){
     s0+=101.0;
     s1+=591.0;
    } else {
     s0+=19.0;
     s1+=1559.0;
    }
   }
  }
 }
} else {
 if(i22<2.0563602447509766e-05){
  if(i0<0.08918169140815735){
   if(i69<0.022015877068042755){
    if(i40<0.0016821976751089096){
     s0+=13.0;
     s1+=197.0;
    } else {
     s0+=108.0;
     s1+=7.0;
    }
   } else {
    if(i19<1.0731133222579956){
     s0+=2.0;
     s1+=101.0;
    } else {
     s0+=815.0;
     s1+=56.0;
    }
   }
  } else {
   if(i72<1.0808669230755186e-06){
    if(i50<0.020438075065612793){
     s0+=59.0;
     s1+=1704.0;
    } else {
     s0+=258.0;
     s1+=900.0;
    }
   } else {
    s0+=67.0;
   }
  }
 } else {
  if(i71<1.002241611480713){
   if(i10<-0.0009061694145202637){
    if(i40<0.001968579599633813){
     s0+=8.0;
    } else {
     s0+=14.0;
     s1+=92.0;
    }
   } else {
    if(i6<1.0041351318359375){
     s0+=14.0;
     s1+=274.0;
    } else {
     s0+=5.0;
     s1+=7057.0;
    }
   }
  } else {
   if(i72<-7.875909432186745e-06){
    if(i62<0.0005044963909313083){
     s0+=3.0;
    } else {
     s1+=378.0;
    }
   } else {
    if(i77<-1.9550323486328125e-05){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=73.0;
    }
   }
  }
 }
}
if(i1<0.08316218852996826){
 if(i9<1.0452277660369873){
  if(i30<0.00027311110170558095){
   if(i6<1.0025484561920166){
    if(i24<0.03748059645295143){
     s0+=50975.0;
     s1+=138.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i35<1.2284629344940186){
     s1+=46.0;
    } else {
     s0+=78.0;
    }
   }
  } else {
   if(i14<0.994339644908905){
    if(i3<0.0007944107055664062){
     s0+=7762.0;
     s1+=54.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i6<1.0010008811950684){
     s0+=3425.0;
     s1+=548.0;
    } else {
     s0+=21.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i12<1.0025877952575684){
   if(i24<0.016913533210754395){
    if(i6<1.0012482404708862){
     s0+=4598.0;
     s1+=245.0;
    } else {
     s0+=290.0;
     s1+=165.0;
    }
   } else {
    if(i5<-2.8192996978759766e-05){
     s0+=889.0;
     s1+=102.0;
    } else {
     s0+=943.0;
     s1+=725.0;
    }
   }
  } else {
   if(i70<0.0029546618461608887){
    if(i64<1.0736745934991632e-05){
     s0+=97.0;
     s1+=725.0;
    } else {
     s0+=194.0;
     s1+=134.0;
    }
   } else {
    if(i13<0.0011005997657775879){
     s0+=189.0;
     s1+=6.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i36<-0.00025263428688049316){
  if(i45<0.0754694938659668){
   if(i7<-4.206008816254325e-05){
    if(i65<0.03776869177818298){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    s0+=406.0;
   }
  } else {
   s1+=46.0;
  }
 } else {
  if(i37<0.006545321550220251){
   if(i44<0.06352350115776062){
    if(i39<0.054114311933517456){
     s0+=85.0;
     s1+=3507.0;
    } else {
     s0+=47.0;
     s1+=117.0;
    }
   } else {
    if(i17<0.0033516818657517433){
     s0+=831.0;
     s1+=247.0;
    } else {
     s0+=201.0;
     s1+=957.0;
    }
   }
  } else {
   if(i20<-0.0006484389305114746){
    if(i4<0.10996261239051819){
     s0+=36.0;
     s1+=2.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i11<0.9984599947929382){
     s0+=10.0;
     s1+=14.0;
    } else {
     s0+=72.0;
     s1+=9136.0;
    }
   }
  }
 }
}
if(i0<0.08509460091590881){
 if(i14<1.0049314498901367){
  if(i50<-0.006128162145614624){
   if(i5<3.36766242980957e-05){
    if(i0<0.02138841152191162){
     s0+=2378.0;
     s1+=174.0;
    } else {
     s0+=1195.0;
     s1+=577.0;
    }
   } else {
    if(i2<0.020502746105194092){
     s0+=33.0;
     s1+=35.0;
    } else {
     s0+=24.0;
     s1+=210.0;
    }
   }
  } else {
   if(i31<1.0003982782363892){
    if(i24<0.022396035492420197){
     s0+=55702.0;
     s1+=418.0;
    } else {
     s0+=3753.0;
     s1+=444.0;
    }
   } else {
    if(i40<0.0008532250649295747){
     s0+=1946.0;
     s1+=401.0;
    } else {
     s0+=3719.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i67<1.0005652904510498){
   if(i63<-0.001720130443572998){
    if(i6<1.0006358623504639){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=73.0;
    }
   } else {
    if(i7<-6.227990525076166e-05){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=284.0;
     s1+=8.0;
    }
   }
  } else {
   if(i48<0.0007600435055792332){
    if(i3<0.0016055703163146973){
     s0+=69.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i72<-3.979182110924739e-06){
     s0+=3.0;
     s1+=620.0;
    } else {
     s0+=33.0;
    }
   }
  }
 }
} else {
 if(i22<-1.4007091522216797e-05){
  if(i43<0.0038620082195848227){
   if(i36<-0.00013971328735351562){
    s0+=571.0;
   } else {
    if(i14<0.9953924417495728){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i2<0.1187845766544342){
    if(i16<0.9878746271133423){
     s0+=6.0;
     s1+=11.0;
    } else {
     s0+=60.0;
    }
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i6<1.0019726753234863){
   if(i49<0.00433698296546936){
    if(i19<1.0417189598083496){
     s0+=49.0;
     s1+=1.0;
    } else {
     s0+=209.0;
     s1+=2241.0;
    }
   } else {
    if(i68<0.2596823275089264){
     s0+=906.0;
     s1+=664.0;
    } else {
     s0+=28.0;
     s1+=352.0;
    }
   }
  } else {
   if(i2<0.1381077766418457){
    if(i33<1.613681674003601){
     s0+=71.0;
     s1+=1616.0;
    } else {
     s0+=42.0;
     s1+=49.0;
    }
   } else {
    if(i45<0.008602181449532509){
     s0+=9.0;
     s1+=195.0;
    } else {
     s0+=5.0;
     s1+=8890.0;
    }
   }
  }
 }
}
if(i15<1.0043543577194214){
 if(i2<0.08139219880104065){
  if(i41<0.04403430223464966){
   if(i60<-0.0017949342727661133){
    if(i61<0.9999724626541138){
     s0+=58.0;
     s1+=163.0;
    } else {
     s0+=68.0;
     s1+=14.0;
    }
   } else {
    if(i24<0.04236513376235962){
     s0+=55490.0;
     s1+=431.0;
    } else {
     s0+=40.0;
     s1+=60.0;
    }
   }
  } else {
   if(i49<0.002457737922668457){
    if(i4<0.049757927656173706){
     s0+=7237.0;
     s1+=980.0;
    } else {
     s0+=896.0;
     s1+=622.0;
    }
   } else {
    if(i37<0.0010480068158358335){
     s0+=291.0;
     s1+=38.0;
    } else {
     s0+=4316.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i53<0.04043230414390564){
   if(i33<1.0821808576583862){
    s0+=92.0;
   } else {
    if(i0<0.1075262725353241){
     s0+=301.0;
     s1+=649.0;
    } else {
     s0+=127.0;
     s1+=2650.0;
    }
   }
  } else {
   if(i43<0.006003519520163536){
    if(i24<0.027839571237564087){
     s0+=597.0;
     s1+=72.0;
    } else {
     s0+=231.0;
     s1+=217.0;
    }
   } else {
    if(i0<0.16007521748542786){
     s0+=65.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=387.0;
    }
   }
  }
 }
} else {
 if(i7<-4.2233383283019066e-05){
  if(i6<0.999359130859375){
   if(i64<1.881059870356694e-05){
    if(i10<0.00039526820182800293){
     s1+=1.0;
    } else {
     s0+=60.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i1<0.05765557289123535){
    if(i37<0.003602284938097){
     s1+=223.0;
    } else {
     s0+=71.0;
     s1+=50.0;
    }
   } else {
    if(i30<0.0001231635978911072){
     s0+=1.0;
    } else {
     s0+=28.0;
     s1+=10065.0;
    }
   }
  }
 } else {
  if(i17<0.002725629135966301){
   if(i34<1.083996295928955){
    if(i16<1.0071913003921509){
     s0+=27.0;
     s1+=5.0;
    } else {
     s1+=65.0;
    }
   } else {
    if(i22<-6.586313247680664e-06){
     s0+=4.0;
     s1+=13.0;
    } else {
     s0+=1112.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<1.2534937858581543){
    if(i38<0.0029311811085790396){
     s0+=2.0;
     s1+=289.0;
    } else {
     s0+=40.0;
    }
   } else {
    s0+=35.0;
   }
  }
 }
}
if(i14<1.0037583112716675){
 if(i0<0.08502998948097229){
  if(i55<0.008823718875646591){
   if(i73<0.000708526058588177){
    if(i21<1.0071911811828613){
     s0+=57933.0;
     s1+=490.0;
    } else {
     s0+=1702.0;
     s1+=280.0;
    }
   } else {
    if(i40<0.001886394340544939){
     s0+=1478.0;
     s1+=617.0;
    } else {
     s0+=4806.0;
     s1+=66.0;
    }
   }
  } else {
   if(i2<0.021021246910095215){
    if(i48<0.0067940447479486465){
     s0+=1688.0;
     s1+=196.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i29<0.9895360469818115){
     s0+=144.0;
     s1+=397.0;
    } else {
     s0+=665.0;
     s1+=242.0;
    }
   }
  }
 } else {
  if(i5<-5.370378494262695e-05){
   if(i7<-4.2802443203981966e-05){
    if(i9<1.0319316387176514){
     s0+=12.0;
    } else {
     s1+=85.0;
    }
   } else {
    if(i11<0.9984476566314697){
     s0+=565.0;
     s1+=7.0;
    } else {
     s0+=50.0;
     s1+=38.0;
    }
   }
  } else {
   if(i24<0.023284560069441795){
    if(i9<1.08536958694458){
     s0+=323.0;
     s1+=725.0;
    } else {
     s0+=601.0;
     s1+=252.0;
    }
   } else {
    if(i38<0.0005811940645799041){
     s0+=102.0;
     s1+=172.0;
    } else {
     s0+=234.0;
     s1+=3565.0;
    }
   }
  }
 }
} else {
 if(i14<1.0069149732589722){
  if(i7<-4.275495302863419e-05){
   if(i31<0.9990973472595215){
    if(i13<-0.0002772510051727295){
     s0+=42.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i28<0.9979692101478577){
     s0+=69.0;
     s1+=308.0;
    } else {
     s0+=22.0;
     s1+=1000.0;
    }
   }
  } else {
   if(i17<0.003368741599842906){
    if(i0<0.10606852173805237){
     s0+=559.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=24.0;
    }
   } else {
    if(i11<0.9992661476135254){
     s0+=5.0;
    } else {
     s1+=68.0;
    }
   }
  }
 } else {
  if(i56<0.00023109890753403306){
   s0+=80.0;
  } else {
   if(i3<-8.594989776611328e-05){
    s0+=24.0;
   } else {
    if(i7<-4.523610186879523e-05){
     s0+=3.0;
     s1+=8470.0;
    } else {
     s0+=54.0;
     s1+=47.0;
    }
   }
  }
 }
}
if(i0<0.08548527956008911){
 if(i7<-5.271797999739647e-05){
  if(i42<1.2479579448699951){
   if(i37<0.0003618334303610027){
    s0+=244.0;
   } else {
    if(i49<0.0031044185161590576){
     s0+=28.0;
     s1+=817.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i45<0.049913786351680756){
    if(i14<1.0009751319885254){
     s0+=1537.0;
     s1+=76.0;
    } else {
     s0+=142.0;
     s1+=145.0;
    }
   } else {
    if(i55<0.006213969551026821){
     s0+=9.0;
    } else {
     s0+=10.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i19<1.0451585054397583){
   if(i60<-0.0013450086116790771){
    if(i1<0.05556321144104004){
     s0+=1341.0;
     s1+=100.0;
    } else {
     s0+=41.0;
     s1+=57.0;
    }
   } else {
    if(i33<1.0856719017028809){
     s0+=34334.0;
    } else {
     s0+=17694.0;
     s1+=105.0;
    }
   }
  } else {
   if(i19<1.0920991897583008){
    if(i29<0.9904108047485352){
     s0+=688.0;
     s1+=680.0;
    } else {
     s0+=7579.0;
     s1+=879.0;
    }
   } else {
    if(i22<3.248453140258789e-05){
     s0+=5416.0;
     s1+=187.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i14<1.000990867614746){
  if(i13<-0.00038823485374450684){
   if(i43<0.008839060552418232){
    if(i22<-1.71661376953125e-05){
     s0+=582.0;
    } else {
     s0+=39.0;
     s1+=3.0;
    }
   } else {
    if(i9<1.045822024345398){
     s0+=20.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   }
  } else {
   if(i65<0.11679643392562866){
    if(i49<0.004693031311035156){
     s0+=274.0;
     s1+=1817.0;
    } else {
     s0+=766.0;
     s1+=534.0;
    }
   } else {
    if(i13<-0.0003050863742828369){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=22.0;
     s1+=1237.0;
    }
   }
  }
 } else {
  if(i62<0.00023448503634426743){
   if(i20<9.79304313659668e-05){
    if(i26<1.0288841724395752){
     s0+=21.0;
     s1+=121.0;
    } else {
     s0+=69.0;
     s1+=10.0;
    }
   } else {
    if(i0<0.10080009698867798){
     s0+=2.0;
     s1+=93.0;
    } else {
     s1+=544.0;
    }
   }
  } else {
   if(i47<-1.9637511286418885e-05){
    if(i19<1.0629007816314697){
     s0+=11.0;
     s1+=36.0;
    } else {
     s0+=5.0;
     s1+=8362.0;
    }
   } else {
    if(i17<0.002157864859327674){
     s0+=59.0;
     s1+=61.0;
    } else {
     s0+=28.0;
     s1+=1152.0;
    }
   }
  }
 }
}
if(i7<-7.829310197848827e-05){
 if(i1<0.06111961603164673){
  if(i6<1.0012006759643555){
   if(i62<0.001996253849938512){
    if(i63<-0.009092241525650024){
     s0+=2.0;
     s1+=17.0;
    } else {
     s0+=658.0;
     s1+=15.0;
    }
   } else {
    if(i22<1.4424324035644531e-05){
     s0+=3.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i14<1.0009640455245972){
    if(i61<1.000399112701416){
     s0+=12.0;
     s1+=48.0;
    } else {
     s0+=50.0;
     s1+=3.0;
    }
   } else {
    if(i33<1.5682398080825806){
     s0+=1.0;
     s1+=157.0;
    } else {
     s0+=12.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i34<1.0611095428466797){
   s0+=22.0;
  } else {
   if(i2<0.1286463737487793){
    if(i63<0.00446850061416626){
     s0+=36.0;
     s1+=1347.0;
    } else {
     s0+=76.0;
     s1+=21.0;
    }
   } else {
    if(i33<1.613681674003601){
     s1+=7891.0;
    } else {
     s0+=15.0;
     s1+=1597.0;
    }
   }
  }
 }
} else {
 if(i16<1.0081751346588135){
  if(i9<1.042891263961792){
   if(i1<0.08210653066635132){
    if(i5<4.875659942626953e-05){
     s0+=60011.0;
     s1+=713.0;
    } else {
     s0+=17.0;
     s1+=52.0;
    }
   } else {
    if(i12<0.9976711273193359){
     s0+=117.0;
     s1+=20.0;
    } else {
     s0+=31.0;
     s1+=203.0;
    }
   }
  } else {
   if(i69<0.03543702885508537){
    if(i25<1.0040233135223389){
     s0+=5007.0;
     s1+=478.0;
    } else {
     s0+=1023.0;
     s1+=387.0;
    }
   } else {
    if(i24<0.02351083979010582){
     s0+=1595.0;
     s1+=518.0;
    } else {
     s0+=1076.0;
     s1+=1429.0;
    }
   }
  }
 } else {
  if(i2<0.07903140783309937){
   if(i35<1.1039612293243408){
    if(i9<1.0739737749099731){
     s0+=9.0;
     s1+=466.0;
    } else {
     s0+=37.0;
     s1+=33.0;
    }
   } else {
    if(i62<0.0005783198866993189){
     s0+=842.0;
     s1+=21.0;
    } else {
     s0+=45.0;
     s1+=33.0;
    }
   }
  } else {
   if(i74<1.0383350849151611){
    if(i19<1.2009022235870361){
     s0+=31.0;
     s1+=1036.0;
    } else {
     s0+=51.0;
     s1+=119.0;
    }
   } else {
    if(i17<0.0039472077041864395){
     s0+=316.0;
     s1+=114.0;
    } else {
     s0+=18.0;
     s1+=376.0;
    }
   }
  }
 }
}
if(i0<0.08346298336982727){
 if(i15<1.005952000617981){
  if(i77<-0.0013012290000915527){
   if(i5<-1.2755393981933594e-05){
    if(i57<9.884640894597396e-05){
     s0+=2953.0;
     s1+=416.0;
    } else {
     s0+=6039.0;
     s1+=54.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=26.0;
     s1+=366.0;
    } else {
     s0+=1074.0;
     s1+=532.0;
    }
   }
  } else {
   if(i30<0.00032609456684440374){
    if(i32<1.0115805864334106){
     s0+=52658.0;
     s1+=235.0;
    } else {
     s0+=60.0;
     s1+=52.0;
    }
   } else {
    if(i3<0.00014731287956237793){
     s0+=4999.0;
     s1+=529.0;
    } else {
     s0+=416.0;
     s1+=272.0;
    }
   }
  }
 } else {
  if(i7<-4.3531494156923145e-05){
   if(i37<0.004468533210456371){
    if(i79<0.0020273923873901367){
     s1+=579.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i17<0.00485140411183238){
     s0+=66.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=59.0;
    }
   }
  } else {
   if(i37<0.0012298778165131807){
    if(i48<5.61980705242604e-05){
     s0+=3.0;
    } else {
     s1+=39.0;
    }
   } else {
    s0+=553.0;
   }
  }
 }
} else {
 if(i7<-1.3797138308291323e-05){
  if(i11<0.9981412887573242){
   if(i34<1.2959449291229248){
    if(i10<-0.0021583735942840576){
     s1+=7.0;
    } else {
     s0+=38.0;
     s1+=4.0;
    }
   } else {
    s0+=57.0;
   }
  } else {
   if(i45<0.02340644784271717){
    if(i66<-0.005331927444785833){
     s0+=481.0;
     s1+=427.0;
    } else {
     s0+=124.0;
     s1+=3305.0;
    }
   } else {
    if(i1<0.08325594663619995){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=63.0;
     s1+=9996.0;
    }
   }
  }
 } else {
  if(i31<0.9992939233779907){
   if(i13<-0.0003669261932373047){
    s0+=542.0;
   } else {
    if(i20<-0.00017377734184265137){
     s1+=1.0;
    } else {
     s0+=41.0;
    }
   }
  } else {
   if(i44<0.05752962827682495){
    if(i10<-4.011392593383789e-05){
     s0+=32.0;
     s1+=292.0;
    } else {
     s0+=25.0;
     s1+=5.0;
    }
   } else {
    if(i40<0.007294333539903164){
     s0+=608.0;
     s1+=72.0;
    } else {
     s0+=29.0;
     s1+=76.0;
    }
   }
  }
 }
}
if(i0<0.08564203977584839){
 if(i22<2.199411392211914e-05){
  if(i19<1.0485899448394775){
   if(i60<-0.001270204782485962){
    if(i2<0.04998895525932312){
     s0+=1754.0;
     s1+=160.0;
    } else {
     s0+=95.0;
     s1+=71.0;
    }
   } else {
    if(i36<6.955862045288086e-05){
     s0+=46719.0;
     s1+=54.0;
    } else {
     s0+=6970.0;
     s1+=76.0;
    }
   }
  } else {
   if(i34<1.1036889553070068){
    if(i15<1.0058038234710693){
     s0+=3933.0;
     s1+=1249.0;
    } else {
     s0+=1.0;
     s1+=238.0;
    }
   } else {
    if(i24<0.023337144404649734){
     s0+=6663.0;
     s1+=114.0;
    } else {
     s0+=2174.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i50<0.004984021186828613){
   if(i62<0.0011825195979326963){
    if(i3<0.00031512975692749023){
     s0+=79.0;
     s1+=11.0;
    } else {
     s0+=99.0;
     s1+=769.0;
    }
   } else {
    if(i63<-0.0037047266960144043){
     s0+=19.0;
     s1+=121.0;
    } else {
     s0+=229.0;
     s1+=32.0;
    }
   }
  } else {
   if(i10<-1.290440559387207e-05){
    if(i47<-1.5348094166256487e-05){
     s0+=542.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i13<-0.00039246678352355957){
  if(i22<-2.053380012512207e-05){
   s0+=594.0;
  } else {
   if(i57<0.0001819776080083102){
    if(i13<-0.00040227174758911133){
     s0+=62.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    if(i65<0.06340515613555908){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i51<-0.0001178065431304276){
   if(i45<0.02348601631820202){
    if(i49<0.005096703767776489){
     s0+=136.0;
     s1+=3040.0;
    } else {
     s0+=403.0;
     s1+=296.0;
    }
   } else {
    if(i48<0.0007406284566968679){
     s0+=72.0;
     s1+=237.0;
    } else {
     s0+=33.0;
     s1+=9039.0;
    }
   }
  } else {
   if(i63<0.003972679376602173){
    if(i56<0.00029978511156514287){
     s0+=22.0;
    } else {
     s0+=72.0;
     s1+=927.0;
    }
   } else {
    if(i2<0.1690409779548645){
     s0+=461.0;
     s1+=103.0;
    } else {
     s0+=33.0;
     s1+=263.0;
    }
   }
  }
 }
}
if(i6<1.0024588108062744){
 if(i17<0.0044783358462154865){
  if(i4<0.07070773839950562){
   if(i56<0.00033134594559669495){
    if(i77<-0.0016645193099975586){
     s0+=56.0;
     s1+=22.0;
    } else {
     s0+=46229.0;
     s1+=107.0;
    }
   } else {
    if(i36<-3.415346145629883e-05){
     s0+=8148.0;
     s1+=188.0;
    } else {
     s0+=8352.0;
     s1+=1513.0;
    }
   }
  } else {
   if(i38<0.0004557690699584782){
    if(i47<-4.351114512246568e-06){
     s0+=39.0;
     s1+=20.0;
    } else {
     s0+=347.0;
    }
   } else {
    if(i42<1.2533326148986816){
     s0+=759.0;
     s1+=1034.0;
    } else {
     s0+=515.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i4<0.06386023759841919){
   if(i43<0.001637335866689682){
    if(i61<0.9997317790985107){
     s0+=314.0;
    } else {
     s0+=14.0;
     s1+=436.0;
    }
   } else {
    if(i0<0.08416342735290527){
     s0+=5500.0;
     s1+=188.0;
    } else {
     s0+=12.0;
     s1+=91.0;
    }
   }
  } else {
   if(i11<0.9983946084976196){
    if(i3<-0.0002963244915008545){
     s0+=166.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i28<0.9898278713226318){
     s0+=289.0;
     s1+=769.0;
    } else {
     s0+=38.0;
     s1+=1430.0;
    }
   }
  }
 }
} else {
 if(i7<-4.353338590590283e-05){
  if(i2<0.0494500994682312){
   if(i77<0.001623392105102539){
    if(i72<-3.7388902001112e-06){
     s0+=44.0;
     s1+=348.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i44<0.0054104626178741455){
     s0+=5.0;
     s1+=11.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i0<0.1318863034248352){
    if(i33<1.613681674003601){
     s0+=43.0;
     s1+=1625.0;
    } else {
     s0+=59.0;
     s1+=54.0;
    }
   } else {
    if(i45<0.009148737415671349){
     s0+=5.0;
     s1+=279.0;
    } else {
     s1+=8672.0;
    }
   }
  }
 } else {
  if(i45<0.008814338594675064){
   if(i34<1.1173423528671265){
    if(i68<0.016883157193660736){
     s0+=8.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i70<-0.01187509298324585){
     s1+=1.0;
    } else {
     s0+=167.0;
    }
   }
  } else {
   if(i36<0.00014096498489379883){
    if(i33<1.1386182308197021){
     s1+=6.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   } else {
    s1+=202.0;
   }
  }
 }
}
if(i13<0.0004393458366394043){
 if(i4<0.07165247201919556){
  if(i24<0.01600024104118347){
   if(i7<-3.99233540520072e-05){
    if(i25<1.0086231231689453){
     s0+=818.0;
     s1+=59.0;
    } else {
     s0+=43.0;
     s1+=275.0;
    }
   } else {
    if(i70<-0.0026089847087860107){
     s0+=1833.0;
     s1+=332.0;
    } else {
     s0+=55203.0;
     s1+=240.0;
    }
   }
  } else {
   if(i2<0.07556414604187012){
    if(i43<0.0009282472310587764){
     s0+=2167.0;
     s1+=888.0;
    } else {
     s0+=7538.0;
     s1+=271.0;
    }
   } else {
    if(i3<-0.0008103549480438232){
     s0+=38.0;
     s1+=1.0;
    } else {
     s0+=18.0;
     s1+=539.0;
    }
   }
  }
 } else {
  if(i47<-8.166902262018993e-06){
   if(i61<0.9998903870582581){
    if(i33<1.0762357711791992){
     s0+=15.0;
    } else {
     s0+=61.0;
     s1+=1759.0;
    }
   } else {
    if(i52<0.0008305410156026483){
     s0+=309.0;
     s1+=328.0;
    } else {
     s0+=21.0;
     s1+=241.0;
    }
   }
  } else {
   if(i13<-0.00040519237518310547){
    s0+=428.0;
   } else {
    if(i7<-1.466026333218906e-05){
     s0+=124.0;
     s1+=754.0;
    } else {
     s0+=731.0;
     s1+=243.0;
    }
   }
  }
 }
} else {
 if(i4<0.08103537559509277){
  if(i14<1.0029387474060059){
   if(i17<0.005143381655216217){
    if(i32<0.9856857061386108){
     s0+=9.0;
     s1+=24.0;
    } else {
     s0+=740.0;
     s1+=17.0;
    }
   } else {
    if(i64<1.0668448339856695e-05){
     s0+=57.0;
     s1+=269.0;
    } else {
     s0+=686.0;
     s1+=221.0;
    }
   }
  } else {
   if(i34<1.0590304136276245){
    s0+=13.0;
   } else {
    if(i27<0.00011773408186854795){
     s0+=23.0;
    } else {
     s0+=38.0;
     s1+=1863.0;
    }
   }
  }
 } else {
  if(i0<0.12144678831100464){
   if(i63<0.004157662391662598){
    if(i50<0.01946854591369629){
     s0+=10.0;
     s1+=394.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   } else {
    if(i58<0.0030443379655480385){
     s0+=136.0;
     s1+=9.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i47<-1.588408849784173e-05){
    if(i2<0.1610669493675232){
     s0+=54.0;
     s1+=775.0;
    } else {
     s0+=3.0;
     s1+=7485.0;
    }
   } else {
    if(i8<1.1888067722320557){
     s0+=2.0;
     s1+=75.0;
    } else {
     s0+=11.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i10<0.0007564425468444824){
 if(i68<0.025262560695409775){
  if(i2<0.08224359154701233){
   if(i73<0.0008437490905635059){
    if(i2<0.07546266913414001){
     s0+=53702.0;
     s1+=354.0;
    } else {
     s0+=210.0;
     s1+=67.0;
    }
   } else {
    if(i36<-5.6684017181396484e-05){
     s0+=186.0;
     s1+=11.0;
    } else {
     s0+=192.0;
     s1+=291.0;
    }
   }
  } else {
   if(i16<1.001075267791748){
    if(i73<0.00024172243138309568){
     s0+=84.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=17.0;
    }
   } else {
    if(i42<1.176748275756836){
     s0+=21.0;
     s1+=252.0;
    } else {
     s0+=58.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i4<0.07114008069038391){
   if(i6<0.9982187747955322){
    if(i0<0.07589945197105408){
     s0+=10457.0;
     s1+=314.0;
    } else {
     s0+=334.0;
     s1+=114.0;
    }
   } else {
    if(i0<0.08288678526878357){
     s0+=3505.0;
     s1+=1149.0;
    } else {
     s0+=60.0;
     s1+=465.0;
    }
   }
  } else {
   if(i3<0.0004686713218688965){
    if(i48<0.0012353933416306973){
     s0+=985.0;
     s1+=625.0;
    } else {
     s0+=510.0;
     s1+=1540.0;
    }
   } else {
    if(i71<0.997489333152771){
     s0+=18.0;
     s1+=13.0;
    } else {
     s0+=116.0;
     s1+=1809.0;
    }
   }
  }
 }
} else {
 if(i56<0.00030625652289018035){
  if(i0<0.058158278465270996){
   if(i11<1.0012199878692627){
    if(i29<1.0105547904968262){
     s0+=243.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i34<1.125725507736206){
     s1+=26.0;
    } else {
     s0+=37.0;
    }
   }
  } else {
   if(i5<1.6868114471435547e-05){
    s0+=15.0;
   } else {
    if(i40<0.0012023585150018334){
     s1+=75.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i2<0.05359897017478943){
   if(i3<0.0009390115737915039){
    if(i42<1.126044750213623){
     s1+=45.0;
    } else {
     s0+=290.0;
     s1+=2.0;
    }
   } else {
    s1+=195.0;
   }
  } else {
   if(i7<-4.333112156018615e-05){
    if(i13<-0.00031441450119018555){
     s0+=17.0;
    } else {
     s0+=3.0;
     s1+=9529.0;
    }
   } else {
    if(i42<1.1386182308197021){
     s1+=110.0;
    } else {
     s0+=91.0;
     s1+=41.0;
    }
   }
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i23<1.0406770706176758){
  if(i1<0.08197155594825745){
   if(i49<-0.0017818212509155273){
    if(i40<0.0020228372886776924){
     s0+=993.0;
     s1+=490.0;
    } else {
     s0+=2094.0;
     s1+=215.0;
    }
   } else {
    if(i8<1.0401519536972046){
     s0+=60385.0;
     s1+=631.0;
    } else {
     s0+=2968.0;
     s1+=385.0;
    }
   }
  } else {
   if(i6<0.9960232973098755){
    if(i57<0.00017715993453748524){
     s0+=128.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=25.0;
    }
   } else {
    if(i53<0.0434756875038147){
     s0+=20.0;
     s1+=963.0;
    } else {
     s0+=35.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i0<0.10516080260276794){
   if(i28<1.0031306743621826){
    if(i73<0.005826964508742094){
     s0+=2409.0;
     s1+=262.0;
    } else {
     s0+=8.0;
     s1+=27.0;
    }
   } else {
    if(i35<1.144650936126709){
     s0+=89.0;
     s1+=295.0;
    } else {
     s0+=567.0;
     s1+=64.0;
    }
   }
  } else {
   if(i11<0.9988088011741638){
    if(i34<1.453892469406128){
     s0+=281.0;
     s1+=12.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i63<0.0057790279388427734){
     s0+=106.0;
     s1+=1410.0;
    } else {
     s0+=420.0;
     s1+=740.0;
    }
   }
  }
 }
} else {
 if(i40<0.0003704305854626){
  s0+=272.0;
 } else {
  if(i0<0.062794029712677){
   if(i58<0.0019831215031445026){
    if(i43<0.0020464644767344){
     s0+=3.0;
     s1+=75.0;
    } else {
     s0+=139.0;
     s1+=10.0;
    }
   } else {
    if(i70<0.0029217302799224854){
     s0+=62.0;
     s1+=372.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i33<1.082350254058838){
    s0+=15.0;
   } else {
    if(i10<3.5643577575683594e-05){
     s0+=139.0;
     s1+=1258.0;
    } else {
     s0+=69.0;
     s1+=9716.0;
    }
   }
  }
 }
}
if(i8<1.0452277660369873){
 if(i4<0.08122652769088745){
  if(i2<0.07644954323768616){
   if(i6<1.0025041103363037){
    if(i54<-0.03155791759490967){
     s0+=1040.0;
     s1+=268.0;
    } else {
     s0+=63886.0;
     s1+=1042.0;
    }
   } else {
    if(i17<0.0020060387905687094){
     s0+=95.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=381.0;
    }
   }
  } else {
   if(i5<-1.582503318786621e-05){
    if(i39<0.03980940580368042){
     s0+=53.0;
     s1+=31.0;
    } else {
     s0+=215.0;
     s1+=6.0;
    }
   } else {
    if(i50<0.013978719711303711){
     s0+=37.0;
     s1+=468.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<0.9956306219100952){
   if(i52<0.0006535259308293462){
    s0+=30.0;
   } else {
    if(i23<1.0272388458251953){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i14<0.9934918880462646){
    if(i73<0.0012248025741428137){
     s0+=15.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   } else {
    if(i3<-0.0010180771350860596){
     s0+=1.0;
    } else {
     s0+=5.0;
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i0<0.1012888252735138){
  if(i3<0.0005206465721130371){
   if(i40<0.0019210854079574347){
    if(i0<0.06920036673545837){
     s0+=1348.0;
     s1+=332.0;
    } else {
     s0+=333.0;
     s1+=464.0;
    }
   } else {
    if(i16<0.9750310182571411){
     s0+=45.0;
     s1+=66.0;
    } else {
     s0+=2952.0;
     s1+=195.0;
    }
   }
  } else {
   if(i33<1.2392117977142334){
    s1+=575.0;
   } else {
    if(i45<0.020323265343904495){
     s0+=224.0;
     s1+=90.0;
    } else {
     s0+=21.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i11<0.9988088011741638){
   if(i52<0.0011660442687571049){
    if(i36<-0.00013688206672668457){
     s0+=328.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i3<0.0005483627319335938){
    if(i17<0.0017336398595944047){
     s0+=321.0;
     s1+=104.0;
    } else {
     s0+=251.0;
     s1+=2257.0;
    }
   } else {
    if(i1<0.12861096858978271){
     s0+=76.0;
     s1+=663.0;
    } else {
     s0+=33.0;
     s1+=9141.0;
    }
   }
  }
 }
}
if(i14<1.0037767887115479){
 if(i5<3.3795833587646484e-05){
  if(i24<0.02196298912167549){
   if(i73<0.0008119478588923812){
    if(i7<-4.184448698651977e-05){
     s0+=649.0;
     s1+=313.0;
    } else {
     s0+=57784.0;
     s1+=670.0;
    }
   } else {
    if(i40<0.0020298282615840435){
     s0+=1276.0;
     s1+=599.0;
    } else {
     s0+=2797.0;
     s1+=144.0;
    }
   }
  } else {
   if(i3<-0.0006040334701538086){
    if(i4<0.08934512734413147){
     s0+=4980.0;
     s1+=107.0;
    } else {
     s0+=187.0;
     s1+=160.0;
    }
   } else {
    if(i45<0.012322617694735527){
     s0+=1013.0;
     s1+=468.0;
    } else {
     s0+=773.0;
     s1+=2229.0;
    }
   }
  }
 } else {
  if(i71<0.9975786209106445){
   if(i8<1.1260439157485962){
    s0+=450.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i1<0.06267303228378296){
    if(i49<-0.0018211007118225098){
     s0+=50.0;
     s1+=108.0;
    } else {
     s0+=194.0;
     s1+=47.0;
    }
   } else {
    if(i4<0.13510701060295105){
     s0+=124.0;
     s1+=683.0;
    } else {
     s0+=17.0;
     s1+=1421.0;
    }
   }
  }
 }
} else {
 if(i5<3.3915042877197266e-05){
  if(i7<-4.0027181967161596e-05){
   if(i6<0.9995837211608887){
    if(i1<0.10311806201934814){
     s0+=110.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i8<1.0341124534606934){
     s0+=35.0;
     s1+=16.0;
    } else {
     s0+=17.0;
     s1+=429.0;
    }
   }
  } else {
   if(i37<0.005468936637043953){
    if(i10<0.0013184547424316406){
     s0+=520.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i6<1.0041277408599854){
   if(i57<-1.1560200618987437e-05){
    if(i61<0.9999359846115112){
     s1+=125.0;
    } else {
     s0+=105.0;
     s1+=12.0;
    }
   } else {
    if(i45<0.007498080842196941){
     s0+=18.0;
     s1+=86.0;
    } else {
     s0+=4.0;
     s1+=615.0;
    }
   }
  } else {
   if(i15<1.005018949508667){
    if(i39<0.0641753077507019){
     s0+=6.0;
     s1+=499.0;
    } else {
     s0+=21.0;
     s1+=129.0;
    }
   } else {
    s1+=8179.0;
   }
  }
 }
}
if(i2<0.07832354307174683){
 if(i3<0.0006022751331329346){
  if(i8<1.0398929119110107){
   if(i77<-0.0010584890842437744){
    if(i5<-1.8477439880371094e-05){
     s0+=8910.0;
     s1+=298.0;
    } else {
     s0+=1134.0;
     s1+=448.0;
    }
   } else {
    if(i19<1.0483907461166382){
     s0+=47812.0;
     s1+=59.0;
    } else {
     s0+=5035.0;
     s1+=308.0;
    }
   }
  } else {
   if(i37<0.0011272118426859379){
    if(i33<1.0856719017028809){
     s0+=1131.0;
    } else {
     s0+=954.0;
     s1+=696.0;
    }
   } else {
    if(i55<0.010191204026341438){
     s0+=3127.0;
     s1+=120.0;
    } else {
     s0+=975.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i67<0.998948872089386){
   if(i46<0.003977477550506592){
    s1+=3.0;
   } else {
    if(i48<0.0009974836139008403){
     s1+=1.0;
    } else {
     s0+=98.0;
    }
   }
  } else {
   if(i35<1.2510931491851807){
    if(i59<-0.01801712065935135){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=787.0;
    }
   } else {
    if(i73<0.0007757434505037963){
     s0+=160.0;
     s1+=18.0;
    } else {
     s0+=81.0;
     s1+=283.0;
    }
   }
  }
 }
} else {
 if(i10<0.00024193525314331055){
  if(i39<0.047919273376464844){
   if(i11<0.9980413913726807){
    s0+=87.0;
   } else {
    if(i49<0.004224807024002075){
     s0+=25.0;
     s1+=1894.0;
    } else {
     s0+=63.0;
     s1+=386.0;
    }
   }
  } else {
   if(i1<0.13044583797454834){
    if(i50<0.01394006609916687){
     s0+=351.0;
     s1+=168.0;
    } else {
     s0+=643.0;
     s1+=27.0;
    }
   } else {
    if(i38<0.0015607490204274654){
     s0+=311.0;
     s1+=67.0;
    } else {
     s0+=121.0;
     s1+=1087.0;
    }
   }
  }
 } else {
  if(i31<0.9989066123962402){
   if(i18<1.0552997589111328){
    s0+=28.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i6<1.0009291172027588){
    if(i16<1.004547357559204){
     s0+=85.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=363.0;
    }
   } else {
    if(i0<0.10420745611190796){
     s0+=59.0;
     s1+=424.0;
    } else {
     s0+=28.0;
     s1+=9359.0;
    }
   }
  }
 }
}
if(i7<-7.899370393715799e-05){
 if(i25<0.9438957571983337){
  if(i9<1.041349172592163){
   if(i68<0.15615621209144592){
    if(i4<0.06092080473899841){
     s0+=4.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i1<0.12618392705917358){
     s0+=385.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.01316517498344183){
    if(i54<-0.1484774947166443){
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i48<0.005400088615715504){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i43<0.0005744909285567701){
   s0+=166.0;
  } else {
   if(i10<-0.0036817193031311035){
    if(i48<0.0057467808946967125){
     s0+=106.0;
     s1+=3.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i10<-0.0008057951927185059){
     s0+=130.0;
     s1+=703.0;
    } else {
     s0+=48.0;
     s1+=10192.0;
    }
   }
  }
 }
} else {
 if(i0<0.08176484704017639){
  if(i15<1.0043967962265015){
   if(i49<-0.001558065414428711){
    if(i36<-3.4421682357788086e-05){
     s0+=1727.0;
     s1+=112.0;
    } else {
     s0+=1557.0;
     s1+=664.0;
    }
   } else {
    if(i9<1.0401519536972046){
     s0+=56072.0;
     s1+=338.0;
    } else {
     s0+=7528.0;
     s1+=740.0;
    }
   }
  } else {
   if(i37<0.0011708507081493735){
    if(i7<-2.860844506358262e-05){
     s0+=4.0;
     s1+=514.0;
    } else {
     s0+=56.0;
     s1+=15.0;
    }
   } else {
    if(i20<-7.063150405883789e-05){
     s0+=7.0;
     s1+=13.0;
    } else {
     s0+=990.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i22<-1.5676021575927734e-05){
   if(i13<-0.000388413667678833){
    if(i47<-9.034853064804338e-06){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=683.0;
    }
   } else {
    if(i12<0.9969407320022583){
     s1+=6.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i44<0.05406048893928528){
    if(i34<1.0581047534942627){
     s0+=19.0;
    } else {
     s0+=80.0;
     s1+=2243.0;
    }
   } else {
    if(i73<-0.0004779958981089294){
     s0+=112.0;
     s1+=408.0;
    } else {
     s0+=1215.0;
     s1+=1153.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i9<1.044858694076538){
  if(i11<1.0019152164459229){
   if(i19<1.0428826808929443){
    if(i70<-0.0022437572479248047){
     s0+=1509.0;
     s1+=105.0;
    } else {
     s0+=50404.0;
     s1+=65.0;
    }
   } else {
    if(i1<0.0692848265171051){
     s0+=9512.0;
     s1+=526.0;
    } else {
     s0+=264.0;
     s1+=151.0;
    }
   }
  } else {
   if(i3<0.0004222393035888672){
    if(i42<1.154260277748108){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=209.0;
     s1+=2.0;
    }
   } else {
    if(i62<0.00030236574821174145){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i3<0.000505983829498291){
   if(i24<0.018068313598632812){
    if(i16<0.9825764298439026){
     s0+=28.0;
     s1+=53.0;
    } else {
     s0+=5427.0;
     s1+=365.0;
    }
   } else {
    if(i34<1.1083450317382812){
     s0+=209.0;
     s1+=555.0;
    } else {
     s0+=1569.0;
     s1+=246.0;
    }
   }
  } else {
   if(i34<1.1961640119552612){
    if(i14<1.0026394128799438){
     s0+=30.0;
     s1+=90.0;
    } else {
     s1+=568.0;
    }
   } else {
    if(i58<0.006425943225622177){
     s0+=246.0;
     s1+=14.0;
    } else {
     s0+=19.0;
     s1+=189.0;
    }
   }
  }
 }
} else {
 if(i37<0.006181949283927679){
  if(i27<0.0017354353331029415){
   if(i19<1.0494358539581299){
    if(i15<0.9909355044364929){
     s0+=79.0;
    } else {
     s0+=74.0;
     s1+=41.0;
    }
   } else {
    if(i7<-1.1507087947393302e-05){
     s0+=201.0;
     s1+=3448.0;
    } else {
     s0+=150.0;
     s1+=115.0;
    }
   }
  } else {
   if(i13<0.0004968345165252686){
    if(i17<0.005913563072681427){
     s0+=991.0;
     s1+=331.0;
    } else {
     s0+=3.0;
     s1+=122.0;
    }
   } else {
    if(i1<0.1424158215522766){
     s0+=76.0;
     s1+=110.0;
    } else {
     s0+=1.0;
     s1+=376.0;
    }
   }
  }
 } else {
  if(i19<1.0771137475967407){
   if(i74<0.9987691640853882){
    if(i6<0.9940890073776245){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    s0+=54.0;
   }
  } else {
   if(i45<0.030596956610679626){
    if(i28<1.0126137733459473){
     s0+=78.0;
     s1+=439.0;
    } else {
     s0+=4.0;
     s1+=1196.0;
    }
   } else {
    if(i17<0.0016521763755008578){
     s0+=14.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=7833.0;
    }
   }
  }
 }
}
if(i9<1.05519437789917){
 if(i32<1.0083978176116943){
  if(i2<0.0782729983329773){
   if(i60<-0.0010924041271209717){
    if(i5<3.62396240234375e-05){
     s0+=5174.0;
     s1+=620.0;
    } else {
     s0+=20.0;
     s1+=148.0;
    }
   } else {
    if(i16<1.0104639530181885){
     s0+=58498.0;
     s1+=417.0;
    } else {
     s0+=3.0;
     s1+=35.0;
    }
   }
  } else {
   if(i12<0.9977967739105225){
    if(i42<1.0982158184051514){
     s0+=135.0;
     s1+=1.0;
    } else {
     s0+=79.0;
     s1+=34.0;
    }
   } else {
    if(i10<-0.002346813678741455){
     s0+=49.0;
     s1+=21.0;
    } else {
     s0+=63.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i14<0.9981926083564758){
   if(i36<-0.00018924474716186523){
    if(i61<0.9979386329650879){
     s0+=25.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i0<0.09107857942581177){
     s0+=366.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=18.0;
    }
   }
  } else {
   if(i7<-2.807818236760795e-05){
    if(i34<1.1509422063827515){
     s0+=9.0;
     s1+=430.0;
    } else {
     s0+=41.0;
     s1+=18.0;
    }
   } else {
    if(i60<0.001797497272491455){
     s0+=198.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i12<1.0025055408477783){
  if(i0<0.09085914492607117){
   if(i42<1.103413462638855){
    if(i17<0.0021165155339986086){
     s0+=856.0;
     s1+=307.0;
    } else {
     s0+=50.0;
     s1+=331.0;
    }
   } else {
    if(i45<0.05087926238775253){
     s0+=3924.0;
     s1+=305.0;
    } else {
     s0+=6.0;
     s1+=56.0;
    }
   }
  } else {
   if(i59<-0.0193558968603611){
    if(i0<0.17503276467323303){
     s0+=591.0;
     s1+=128.0;
    } else {
     s0+=277.0;
     s1+=1042.0;
    }
   } else {
    if(i17<0.0016930855344980955){
     s0+=106.0;
     s1+=93.0;
    } else {
     s0+=120.0;
     s1+=2292.0;
    }
   }
  }
 } else {
  if(i2<0.1001424491405487){
   if(i20<-3.784894943237305e-05){
    if(i50<0.00027054548263549805){
     s0+=103.0;
     s1+=273.0;
    } else {
     s0+=277.0;
     s1+=28.0;
    }
   } else {
    if(i22<1.8835067749023438e-05){
     s0+=101.0;
     s1+=62.0;
    } else {
     s0+=10.0;
     s1+=1004.0;
    }
   }
  } else {
   if(i51<-0.0001253588416147977){
    if(i17<0.0016258698888123035){
     s0+=20.0;
     s1+=50.0;
    } else {
     s0+=9.0;
     s1+=8071.0;
    }
   } else {
    if(i59<-0.09408491849899292){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=45.0;
     s1+=688.0;
    }
   }
  }
 }
}
if(i1<0.08204472064971924){
 if(i9<1.0451608896255493){
  if(i6<1.0025699138641357){
   if(i41<0.042654380202293396){
    if(i49<-0.0021910369396209717){
     s0+=72.0;
     s1+=41.0;
    } else {
     s0+=53065.0;
     s1+=260.0;
    }
   } else {
    if(i20<-0.00031059980392456055){
     s0+=4826.0;
     s1+=25.0;
    } else {
     s0+=4171.0;
     s1+=491.0;
    }
   }
  } else {
   if(i35<1.2284629344940186){
    s1+=100.0;
   } else {
    if(i3<0.000981450080871582){
     s0+=58.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i5<3.36766242980957e-05){
   if(i35<1.1037919521331787){
    if(i43<0.00033114937832579017){
     s0+=1064.0;
     s1+=2.0;
    } else {
     s0+=777.0;
     s1+=845.0;
    }
   } else {
    if(i24<0.026159683242440224){
     s0+=4426.0;
     s1+=128.0;
    } else {
     s0+=823.0;
     s1+=208.0;
    }
   }
  } else {
   if(i43<0.002511280123144388){
    if(i50<0.028406202793121338){
     s1+=496.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i58<0.0031854682601988316){
     s0+=231.0;
     s1+=55.0;
    } else {
     s0+=45.0;
     s1+=324.0;
    }
   }
  }
 }
} else {
 if(i5<7.331371307373047e-06){
  if(i39<0.04928514361381531){
   if(i22<-2.0265579223632812e-05){
    s0+=81.0;
   } else {
    if(i39<0.03896516561508179){
     s0+=16.0;
     s1+=965.0;
    } else {
     s0+=54.0;
     s1+=239.0;
    }
   }
  } else {
   if(i2<0.29483744502067566){
    if(i62<0.0005668719531968236){
     s0+=713.0;
     s1+=166.0;
    } else {
     s0+=243.0;
     s1+=205.0;
    }
   } else {
    if(i72<1.4623094557464356e-06){
     s0+=17.0;
     s1+=254.0;
    } else {
     s0+=60.0;
    }
   }
  }
 } else {
  if(i10<0.0004997849464416504){
   if(i17<0.003927876241505146){
    if(i26<1.0300097465515137){
     s0+=53.0;
     s1+=274.0;
    } else {
     s0+=229.0;
     s1+=6.0;
    }
   } else {
    if(i17<0.007701498456299305){
     s0+=106.0;
     s1+=530.0;
    } else {
     s0+=32.0;
     s1+=1754.0;
    }
   }
  } else {
   if(i6<1.0038797855377197){
    if(i17<0.002746391575783491){
     s0+=76.0;
     s1+=189.0;
    } else {
     s0+=1.0;
     s1+=1056.0;
    }
   } else {
    s1+=8383.0;
   }
  }
 }
}
if(i13<0.0004329085350036621){
 if(i2<0.07801145315170288){
  if(i40<0.00034515804145485163){
   if(i21<1.0085997581481934){
    if(i23<1.0425481796264648){
     s0+=38950.0;
     s1+=16.0;
    } else {
     s0+=284.0;
     s1+=11.0;
    }
   } else {
    if(i11<1.0004974603652954){
     s0+=26.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  } else {
   if(i38<0.0006627029506489635){
    if(i36<-3.3974647521972656e-05){
     s0+=4415.0;
     s1+=45.0;
    } else {
     s0+=3126.0;
     s1+=1300.0;
    }
   } else {
    if(i9<1.057593822479248){
     s0+=18584.0;
     s1+=170.0;
    } else {
     s0+=2406.0;
     s1+=268.0;
    }
   }
  }
 } else {
  if(i7<-1.354130290565081e-05){
   if(i11<0.9980583190917969){
    if(i36<-0.0001360774040222168){
     s0+=76.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i44<0.05374839901924133){
     s0+=17.0;
     s1+=1895.0;
    } else {
     s0+=369.0;
     s1+=1722.0;
    }
   }
  } else {
   if(i7<-4.267125405021943e-06){
    if(i57<3.4417142160236835e-05){
     s0+=226.0;
     s1+=34.0;
    } else {
     s0+=52.0;
     s1+=182.0;
    }
   } else {
    if(i39<0.04098403453826904){
     s0+=75.0;
     s1+=78.0;
    } else {
     s0+=740.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i1<0.07431367039680481){
  if(i70<-0.0006168186664581299){
   if(i10<-0.0023827552795410156){
    if(i50<-0.05746296048164368){
     s0+=3.0;
     s1+=27.0;
    } else {
     s0+=335.0;
     s1+=28.0;
    }
   } else {
    if(i49<-0.0008232593536376953){
     s0+=63.0;
     s1+=568.0;
    } else {
     s0+=88.0;
     s1+=50.0;
    }
   }
  } else {
   if(i3<0.0011383295059204102){
    if(i43<0.0016044259537011385){
     s0+=286.0;
     s1+=117.0;
    } else {
     s0+=728.0;
     s1+=41.0;
    }
   } else {
    if(i34<1.2141520977020264){
     s1+=77.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i7<-7.203654968179762e-05){
   if(i12<1.000335693359375){
    if(i1<0.12801018357276917){
     s0+=56.0;
     s1+=36.0;
    } else {
     s0+=6.0;
     s1+=502.0;
    }
   } else {
    if(i10<-0.004069209098815918){
     s0+=11.0;
     s1+=12.0;
    } else {
     s0+=36.0;
     s1+=8968.0;
    }
   }
  } else {
   if(i5<4.559755325317383e-05){
    if(i44<0.047478169202804565){
     s0+=3.0;
     s1+=154.0;
    } else {
     s0+=222.0;
     s1+=171.0;
    }
   } else {
    if(i10<-0.0005683302879333496){
     s0+=23.0;
     s1+=108.0;
    } else {
     s1+=412.0;
    }
   }
  }
 }
}
if(i17<0.0048013897612690926){
 if(i28<1.0079176425933838){
  if(i58<0.0019793114624917507){
   if(i69<0.035975560545921326){
    if(i24<0.022099249064922333){
     s0+=56019.0;
     s1+=399.0;
    } else {
     s0+=1376.0;
     s1+=272.0;
    }
   } else {
    if(i2<0.06639611721038818){
     s0+=2559.0;
     s1+=265.0;
    } else {
     s0+=622.0;
     s1+=755.0;
    }
   }
  } else {
   if(i36<-5.599856376647949e-05){
    if(i6<0.9993255734443665){
     s0+=1907.0;
     s1+=124.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i1<0.04567605257034302){
     s0+=1081.0;
     s1+=350.0;
    } else {
     s0+=274.0;
     s1+=514.0;
    }
   }
  }
 } else {
  if(i13<0.0006163716316223145){
   if(i34<1.083398699760437){
    if(i6<0.999940037727356){
     s0+=17.0;
     s1+=6.0;
    } else {
     s0+=10.0;
     s1+=436.0;
    }
   } else {
    if(i2<0.10159805417060852){
     s0+=1404.0;
     s1+=76.0;
    } else {
     s0+=122.0;
     s1+=405.0;
    }
   }
  } else {
   if(i33<1.613681674003601){
    if(i11<1.0019283294677734){
     s0+=8.0;
     s1+=5.0;
    } else {
     s1+=679.0;
    }
   } else {
    if(i43<0.014349125325679779){
     s0+=26.0;
    } else {
     s1+=33.0;
    }
   }
  }
 }
} else {
 if(i6<0.9983505010604858){
  if(i27<0.013493949547410011){
   if(i44<0.08528786897659302){
    if(i38<0.0014416194753721356){
     s0+=173.0;
     s1+=82.0;
    } else {
     s0+=4460.0;
     s1+=130.0;
    }
   } else {
    if(i13<-0.0005458295345306396){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=83.0;
    }
   }
  } else {
   if(i2<0.03793221712112427){
    if(i45<0.04985794797539711){
     s0+=194.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i43<0.0031702080741524696){
     s0+=29.0;
    } else {
     s0+=1.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i20<-0.00013461709022521973){
   if(i51<-0.00030635029543191195){
    if(i0<0.0035457611083984375){
     s0+=17.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=686.0;
    }
   } else {
    if(i4<0.10395950078964233){
     s0+=663.0;
     s1+=260.0;
    } else {
     s0+=5.0;
     s1+=213.0;
    }
   }
  } else {
   if(i15<0.9994574785232544){
    if(i68<0.24164432287216187){
     s0+=52.0;
     s1+=499.0;
    } else {
     s1+=450.0;
    }
   } else {
    if(i28<0.996715784072876){
     s0+=20.0;
     s1+=505.0;
    } else {
     s1+=9755.0;
    }
   }
  }
 }
}
if(i10<0.0008230209350585938){
 if(i0<0.08587989211082458){
  if(i30<0.00028437981382012367){
   if(i18<1.008845329284668){
    if(i73<0.0008567798649892211){
     s0+=52002.0;
     s1+=143.0;
    } else {
     s0+=186.0;
     s1+=85.0;
    }
   } else {
    if(i14<1.0014946460723877){
     s0+=67.0;
     s1+=17.0;
    } else {
     s0+=16.0;
     s1+=51.0;
    }
   }
  } else {
   if(i5<1.1146068572998047e-05){
    if(i40<0.0019525859970599413){
     s0+=5265.0;
     s1+=1247.0;
    } else {
     s0+=10094.0;
     s1+=174.0;
    }
   } else {
    if(i60<0.002016127109527588){
     s0+=503.0;
     s1+=743.0;
    } else {
     s0+=420.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i17<0.004803019110113382){
   if(i13<-0.0003972351551055908){
    if(i72<-3.827683940471616e-06){
     s0+=15.0;
     s1+=7.0;
    } else {
     s0+=565.0;
     s1+=3.0;
    }
   } else {
    if(i49<0.004382222890853882){
     s0+=264.0;
     s1+=1061.0;
    } else {
     s0+=766.0;
     s1+=286.0;
    }
   }
  } else {
   if(i31<0.9988031387329102){
    if(i8<1.3700618743896484){
     s0+=79.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i8<1.1222549676895142){
     s0+=218.0;
     s1+=1695.0;
    } else {
     s1+=1763.0;
    }
   }
  }
 }
} else {
 if(i30<0.0002459106326568872){
  if(i33<1.1386182308197021){
   s1+=44.0;
  } else {
   if(i32<1.0104186534881592){
    if(i13<0.0005943775177001953){
     s0+=321.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i1<0.05689558386802673){
     s0+=2.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i5<-1.2814998626708984e-06){
   if(i68<0.08397827297449112){
    s0+=63.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i71<0.9995262622833252){
    if(i7<-3.904203185811639e-05){
     s0+=1.0;
     s1+=6987.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i7<-4.368554800748825e-05){
     s0+=33.0;
     s1+=2730.0;
    } else {
     s0+=133.0;
     s1+=121.0;
    }
   }
  }
 }
}
if(i13<0.00043660402297973633){
 if(i29<1.0107624530792236){
  if(i30<0.0003064582124352455){
   if(i70<-0.004863113164901733){
    if(i16<0.9861322641372681){
     s1+=25.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i29<1.0095620155334473){
     s0+=53626.0;
     s1+=223.0;
    } else {
     s0+=68.0;
     s1+=42.0;
    }
   }
  } else {
   if(i1<0.07890453934669495){
    if(i15<0.9877541065216064){
     s0+=7392.0;
     s1+=106.0;
    } else {
     s0+=5891.0;
     s1+=1229.0;
    }
   } else {
    if(i6<0.9960522651672363){
     s0+=386.0;
     s1+=83.0;
    } else {
     s0+=351.0;
     s1+=1505.0;
    }
   }
  }
 } else {
  if(i40<0.010084545239806175){
   if(i1<0.086748868227005){
    if(i37<0.0011738205794245005){
     s0+=193.0;
     s1+=218.0;
    } else {
     s0+=935.0;
     s1+=58.0;
    }
   } else {
    if(i54<0.059697896242141724){
     s0+=145.0;
     s1+=1135.0;
    } else {
     s0+=431.0;
     s1+=279.0;
    }
   }
  } else {
   if(i24<0.00418584980070591){
    if(i27<0.0044563570991158485){
     s1+=2.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i61<1.000439167022705){
     s0+=1.0;
     s1+=902.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005710422992706299){
  if(i9<1.1205039024353027){
   if(i36<0.0002605319023132324){
    if(i4<0.12727275490760803){
     s0+=419.0;
     s1+=136.0;
    } else {
     s0+=1.0;
     s1+=77.0;
    }
   } else {
    if(i20<-0.0003660917282104492){
     s0+=549.0;
     s1+=4.0;
    } else {
     s0+=452.0;
     s1+=102.0;
    }
   }
  } else {
   if(i59<-0.09459677338600159){
    if(i9<1.2239465713500977){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i75<0.00011118543625343591){
     s0+=22.0;
     s1+=46.0;
    } else {
     s0+=4.0;
     s1+=324.0;
    }
   }
  }
 } else {
  if(i56<0.00021836573432665318){
   s0+=65.0;
  } else {
   if(i17<0.0011869680602103472){
    if(i20<0.00030690431594848633){
     s0+=41.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i1<0.045035749673843384){
     s0+=92.0;
     s1+=224.0;
    } else {
     s0+=140.0;
     s1+=10281.0;
    }
   }
  }
 }
}
if(i21<1.0082120895385742){
 if(i3<0.0005705654621124268){
  if(i2<0.08200451731681824){
   if(i70<-0.002227604389190674){
    if(i18<0.9681090712547302){
     s0+=3451.0;
     s1+=271.0;
    } else {
     s0+=2403.0;
     s1+=745.0;
    }
   } else {
    if(i68<0.025071024894714355){
     s0+=53007.0;
     s1+=173.0;
    } else {
     s0+=8459.0;
     s1+=603.0;
    }
   }
  } else {
   if(i36<-0.00014096498489379883){
    if(i43<0.015801364555954933){
     s0+=319.0;
     s1+=20.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i44<0.058934152126312256){
     s0+=29.0;
     s1+=1026.0;
    } else {
     s0+=516.0;
     s1+=642.0;
    }
   }
  }
 } else {
  if(i42<1.0614044666290283){
   s0+=120.0;
  } else {
   if(i14<1.000906229019165){
    if(i24<0.02818385884165764){
     s0+=87.0;
     s1+=78.0;
    } else {
     s0+=42.0;
     s1+=453.0;
    }
   } else {
    if(i62<0.0004609866882674396){
     s0+=67.0;
     s1+=420.0;
    } else {
     s0+=14.0;
     s1+=1563.0;
    }
   }
  }
 }
} else {
 if(i14<1.0039055347442627){
  if(i0<0.08518528938293457){
   if(i0<0.06547725200653076){
    if(i7<-3.9383696275763214e-05){
     s0+=162.0;
     s1+=89.0;
    } else {
     s0+=1365.0;
     s1+=46.0;
    }
   } else {
    if(i70<0.00586247444152832){
     s0+=119.0;
     s1+=232.0;
    } else {
     s0+=296.0;
     s1+=5.0;
    }
   }
  } else {
   if(i31<0.9988265037536621){
    if(i61<0.9994838237762451){
     s1+=5.0;
    } else {
     s0+=96.0;
    }
   } else {
    if(i24<0.027860477566719055){
     s0+=407.0;
     s1+=695.0;
    } else {
     s0+=89.0;
     s1+=1742.0;
    }
   }
  }
 } else {
  if(i7<-4.35077199654188e-05){
   if(i22<-1.2874603271484375e-05){
    s0+=36.0;
   } else {
    if(i2<0.03609275817871094){
     s0+=9.0;
     s1+=31.0;
    } else {
     s0+=16.0;
     s1+=8080.0;
    }
   }
  } else {
   if(i17<0.002564367838203907){
    if(i50<-0.004063963890075684){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=144.0;
    }
   } else {
    if(i45<0.008930349722504616){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   }
  }
 }
}
if(i0<0.08511286973953247){
 if(i8<1.0401476621627808){
  if(i3<0.0005664229393005371){
   if(i56<0.0003127905074506998){
    if(i4<0.08031284809112549){
     s0+=46057.0;
     s1+=62.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<-0.00023359060287475586){
     s0+=10072.0;
     s1+=88.0;
    } else {
     s0+=6546.0;
     s1+=964.0;
    }
   }
  } else {
   if(i75<0.0001362179609714076){
    if(i48<0.000831815239507705){
     s0+=27.0;
    } else {
     s0+=12.0;
     s1+=241.0;
    }
   } else {
    if(i72<-8.180240911315195e-06){
     s1+=9.0;
    } else {
     s0+=136.0;
    }
   }
  }
 } else {
  if(i6<1.0029287338256836){
   if(i1<0.06347870826721191){
    if(i45<0.06089533120393753){
     s0+=5087.0;
     s1+=497.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i34<1.1040328741073608){
     s0+=336.0;
     s1+=384.0;
    } else {
     s0+=810.0;
     s1+=163.0;
    }
   }
  } else {
   if(i18<1.0158922672271729){
    if(i63<0.002641439437866211){
     s0+=37.0;
     s1+=570.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i33<1.2392117977142334){
     s1+=58.0;
    } else {
     s0+=80.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i7<-2.2292942958301865e-05){
  if(i10<-0.0006077885627746582){
   if(i1<0.1076916754245758){
    if(i49<0.0032364726066589355){
     s0+=30.0;
     s1+=169.0;
    } else {
     s0+=224.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.0050052618607878685){
     s0+=81.0;
     s1+=248.0;
    } else {
     s0+=31.0;
     s1+=1183.0;
    }
   }
  } else {
   if(i10<0.00027552247047424316){
    if(i33<1.613681674003601){
     s0+=79.0;
     s1+=1377.0;
    } else {
     s0+=34.0;
     s1+=83.0;
    }
   } else {
    if(i22<-1.4632940292358398e-05){
     s0+=11.0;
    } else {
     s0+=41.0;
     s1+=10291.0;
    }
   }
  }
 } else {
  if(i31<0.9993025064468384){
   s0+=604.0;
  } else {
   if(i66<-0.004725180566310883){
    if(i17<0.0035473559983074665){
     s0+=534.0;
     s1+=92.0;
    } else {
     s0+=24.0;
     s1+=101.0;
    }
   } else {
    if(i57<1.9323693777550943e-05){
     s0+=101.0;
     s1+=26.0;
    } else {
     s0+=91.0;
     s1+=490.0;
    }
   }
  }
 }
}
if(i5<3.725290298461914e-05){
 if(i1<0.08223840594291687){
  if(i34<1.0557184219360352){
   if(i80<9.931065142154694e-05){
    s0+=40315.0;
   } else {
    if(i35<1.081458568572998){
     s0+=2625.0;
    } else {
     s0+=113.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<1.103413462638855){
    if(i43<0.00039760678191669285){
     s0+=2261.0;
     s1+=129.0;
    } else {
     s0+=1844.0;
     s1+=1523.0;
    }
   } else {
    if(i63<-0.0028172433376312256){
     s0+=1184.0;
     s1+=215.0;
    } else {
     s0+=20530.0;
     s1+=282.0;
    }
   }
  }
 } else {
  if(i6<0.9963967800140381){
   if(i37<0.007437320426106453){
    if(i11<0.9985275268554688){
     s0+=400.0;
    } else {
     s0+=48.0;
     s1+=30.0;
    }
   } else {
    if(i52<0.0006084603955969214){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=9.0;
     s1+=125.0;
    }
   }
  } else {
   if(i44<0.058077067136764526){
    if(i56<0.00022568789427168667){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=1869.0;
    }
   } else {
    if(i4<0.21060433983802795){
     s0+=903.0;
     s1+=648.0;
    } else {
     s0+=89.0;
     s1+=722.0;
    }
   }
  }
 }
} else {
 if(i11<0.9987264275550842){
  s0+=289.0;
 } else {
  if(i17<0.002279817359521985){
   if(i7<-5.431678437162191e-05){
    if(i1<0.04054054617881775){
     s0+=2.0;
    } else {
     s1+=183.0;
    }
   } else {
    if(i69<0.07228104770183563){
     s0+=163.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i20<-4.112720489501953e-06){
    if(i2<0.1253403127193451){
     s0+=203.0;
     s1+=474.0;
    } else {
     s0+=29.0;
     s1+=857.0;
    }
   } else {
    if(i1<0.015055090188980103){
     s0+=4.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=10089.0;
    }
   }
  }
 }
}
if(i2<0.08135956525802612){
 if(i11<1.0018284320831299){
  if(i2<0.06312254071235657){
   if(i58<0.0014724319335073233){
    if(i16<1.0080132484436035){
     s0+=58708.0;
     s1+=528.0;
    } else {
     s0+=344.0;
     s1+=116.0;
    }
   } else {
    if(i33<1.100754976272583){
     s0+=1803.0;
     s1+=634.0;
    } else {
     s0+=4917.0;
     s1+=242.0;
    }
   }
  } else {
   if(i63<0.00035178661346435547){
    if(i50<0.007174551486968994){
     s0+=119.0;
     s1+=341.0;
    } else {
     s0+=158.0;
     s1+=30.0;
    }
   } else {
    if(i39<0.031598836183547974){
     s0+=164.0;
     s1+=211.0;
    } else {
     s0+=2540.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i64<4.940680355502991e-06){
   if(i35<1.613681674003601){
    if(i43<0.00037292009801603854){
     s0+=19.0;
    } else {
     s0+=29.0;
     s1+=902.0;
    }
   } else {
    if(i54<-0.13190820813179016){
     s1+=15.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i54<-0.04352378845214844){
    if(i9<1.0697002410888672){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=5.0;
     s1+=134.0;
    }
   } else {
    if(i10<7.086992263793945e-05){
     s0+=671.0;
     s1+=74.0;
    } else {
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i31<0.9987839460372925){
  if(i14<0.9989016056060791){
   if(i27<0.00025124388048425317){
    if(i74<1.0126608610153198){
     s0+=32.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=376.0;
   }
  } else {
   if(i12<1.002030849456787){
    s0+=1.0;
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i17<0.001689004828222096){
   if(i7<-4.9101356125902385e-05){
    s1+=114.0;
   } else {
    if(i26<1.0085198879241943){
     s0+=60.0;
     s1+=113.0;
    } else {
     s0+=492.0;
     s1+=70.0;
    }
   }
  } else {
   if(i0<0.12466564774513245){
    if(i59<-0.01936184987425804){
     s0+=313.0;
     s1+=51.0;
    } else {
     s0+=175.0;
     s1+=1792.0;
    }
   } else {
    if(i17<0.0035818179603666067){
     s0+=152.0;
     s1+=694.0;
    } else {
     s0+=36.0;
     s1+=10791.0;
    }
   }
  }
 }
}
if(i2<0.07786163687705994){
 if(i22<1.9252300262451172e-05){
  if(i8<1.0398929119110107){
   if(i60<-0.0012906789779663086){
    if(i0<0.05709770321846008){
     s0+=4498.0;
     s1+=460.0;
    } else {
     s0+=264.0;
     s1+=195.0;
    }
   } else {
    if(i29<1.0116345882415771){
     s0+=57337.0;
     s1+=391.0;
    } else {
     s0+=11.0;
     s1+=28.0;
    }
   }
  } else {
   if(i1<0.06347870826721191){
    if(i55<0.006535847671329975){
     s0+=3040.0;
     s1+=172.0;
    } else {
     s0+=1829.0;
     s1+=359.0;
    }
   } else {
    if(i35<1.100754976272583){
     s0+=240.0;
     s1+=336.0;
    } else {
     s0+=627.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i15<1.0059412717819214){
   if(i9<1.1223218441009521){
    if(i62<0.0012023388408124447){
     s0+=629.0;
     s1+=318.0;
    } else {
     s0+=624.0;
     s1+=46.0;
    }
   } else {
    if(i74<0.8145996332168579){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=121.0;
    }
   }
  } else {
   if(i7<-4.191448897472583e-05){
    if(i12<0.9976963400840759){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=595.0;
    }
   } else {
    if(i37<0.0018538348376750946){
     s1+=38.0;
    } else {
     s0+=45.0;
    }
   }
  }
 }
} else {
 if(i37<0.006100778467953205){
  if(i7<-1.3546939044317696e-05){
   if(i50<0.015379160642623901){
    if(i72<1.3741976090386743e-06){
     s0+=149.0;
     s1+=3192.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i34<1.2643331289291382){
     s0+=351.0;
     s1+=808.0;
    } else {
     s0+=105.0;
    }
   }
  } else {
   if(i50<0.016160190105438232){
    if(i61<0.9995757341384888){
     s0+=264.0;
    } else {
     s0+=264.0;
     s1+=233.0;
    }
   } else {
    if(i36<0.00021308660507202148){
     s0+=520.0;
     s1+=24.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i1<0.11374092102050781){
   if(i17<0.009493734687566757){
    if(i73<0.002982892794534564){
     s0+=133.0;
     s1+=8.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i70<0.0031148195266723633){
     s0+=2.0;
     s1+=213.0;
    } else {
     s0+=8.0;
     s1+=13.0;
    }
   }
  } else {
   if(i1<0.16398528218269348){
    if(i17<0.006387039553374052){
     s0+=45.0;
     s1+=32.0;
    } else {
     s0+=6.0;
     s1+=567.0;
    }
   } else {
    if(i6<1.0009832382202148){
     s0+=14.0;
     s1+=815.0;
    } else {
     s1+=8047.0;
    }
   }
  }
 }
}
if(i13<0.00043389201164245605){
 if(i16<1.0081751346588135){
  if(i56<0.00047700421418994665){
   if(i21<1.0097150802612305){
    if(i29<1.0108444690704346){
     s0+=50969.0;
     s1+=268.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i71<1.0004804134368896){
     s0+=2.0;
     s1+=49.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   }
  } else {
   if(i5<-1.245737075805664e-05){
    if(i46<0.07674342393875122){
     s0+=13874.0;
     s1+=905.0;
    } else {
     s0+=409.0;
     s1+=306.0;
    }
   } else {
    if(i57<2.331993709958624e-05){
     s0+=2203.0;
     s1+=231.0;
    } else {
     s0+=694.0;
     s1+=1519.0;
    }
   }
  }
 } else {
  if(i7<-4.074617027072236e-05){
   if(i1<0.05960044264793396){
    if(i42<1.2228267192840576){
     s1+=74.0;
    } else {
     s0+=44.0;
     s1+=4.0;
    }
   } else {
    if(i7<-4.2801930248970166e-05){
     s0+=4.0;
     s1+=1845.0;
    } else {
     s0+=11.0;
     s1+=42.0;
    }
   }
  } else {
   if(i36<2.110004425048828e-05){
    if(i1<0.08534097671508789){
     s0+=225.0;
     s1+=31.0;
    } else {
     s0+=75.0;
     s1+=363.0;
    }
   } else {
    if(i4<0.23389744758605957){
     s0+=749.0;
     s1+=134.0;
    } else {
     s0+=7.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i7<-6.647764530498534e-05){
  if(i10<-0.003036677837371826){
   if(i16<0.9728618860244751){
    if(i13<0.0007666349411010742){
     s0+=57.0;
     s1+=18.0;
    } else {
     s0+=6.0;
     s1+=53.0;
    }
   } else {
    if(i62<0.0017089960165321827){
     s0+=195.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   }
  } else {
   if(i24<0.02665172517299652){
    if(i6<1.003957748413086){
     s0+=191.0;
     s1+=207.0;
    } else {
     s0+=33.0;
     s1+=2078.0;
    }
   } else {
    if(i2<0.06261250376701355){
     s0+=37.0;
     s1+=228.0;
    } else {
     s0+=19.0;
     s1+=7638.0;
    }
   }
  }
 } else {
  if(i14<1.0009582042694092){
   if(i2<0.11952093243598938){
    if(i58<0.003949620760977268){
     s0+=1058.0;
     s1+=99.0;
    } else {
     s0+=44.0;
     s1+=88.0;
    }
   } else {
    if(i44<0.09963282942771912){
     s1+=163.0;
    } else {
     s0+=45.0;
     s1+=69.0;
    }
   }
  } else {
   if(i56<0.00030411931220442057){
    if(i64<1.5938966271278332e-06){
     s0+=89.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i34<1.1158488988876343){
     s0+=14.0;
     s1+=486.0;
    } else {
     s0+=80.0;
     s1+=141.0;
    }
   }
  }
 }
}
if(i13<0.00043660402297973633){
 if(i32<1.009537935256958){
  if(i30<0.0003150216653011739){
   if(i52<0.0002800737274810672){
    if(i32<1.008366346359253){
     s0+=52006.0;
     s1+=121.0;
    } else {
     s0+=187.0;
     s1+=33.0;
    }
   } else {
    if(i14<0.9951115250587463){
     s0+=1126.0;
     s1+=2.0;
    } else {
     s0+=90.0;
     s1+=114.0;
    }
   }
  } else {
   if(i0<0.07661107182502747){
    if(i14<0.9942140579223633){
     s0+=7414.0;
     s1+=107.0;
    } else {
     s0+=4803.0;
     s1+=1202.0;
    }
   } else {
    if(i22<-1.3887882232666016e-05){
     s0+=426.0;
     s1+=21.0;
    } else {
     s0+=518.0;
     s1+=1610.0;
    }
   }
  }
 } else {
  if(i7<-2.8503831345005892e-05){
   if(i61<0.9998981952667236){
    if(i22<-1.3500452041625977e-05){
     s0+=62.0;
     s1+=7.0;
    } else {
     s0+=30.0;
     s1+=1990.0;
    }
   } else {
    if(i33<1.2371783256530762){
     s0+=2.0;
     s1+=194.0;
    } else {
     s0+=296.0;
     s1+=183.0;
    }
   }
  } else {
   if(i2<0.07919043302536011){
    if(i48<0.0021724202670156956){
     s0+=1423.0;
     s1+=31.0;
    } else {
     s0+=52.0;
     s1+=31.0;
    }
   } else {
    if(i19<1.2538942098617554){
     s0+=393.0;
     s1+=293.0;
    } else {
     s0+=223.0;
    }
   }
  }
 }
} else {
 if(i45<0.026203269138932228){
  if(i3<0.0005718469619750977){
   if(i2<0.10236567258834839){
    if(i14<1.001185655593872){
     s0+=1155.0;
     s1+=124.0;
    } else {
     s0+=85.0;
     s1+=78.0;
    }
   } else {
    if(i50<0.01527625322341919){
     s0+=5.0;
     s1+=58.0;
    } else {
     s0+=53.0;
     s1+=51.0;
    }
   }
  } else {
   if(i6<1.0044277906417847){
    if(i42<1.2271616458892822){
     s0+=97.0;
     s1+=471.0;
    } else {
     s0+=230.0;
     s1+=103.0;
    }
   } else {
    if(i10<0.00026530027389526367){
     s0+=24.0;
     s1+=108.0;
    } else {
     s0+=1.0;
     s1+=2288.0;
    }
   }
  }
 } else {
  if(i4<0.06779563426971436){
   if(i50<0.005953550338745117){
    if(i3<-0.0007256269454956055){
     s0+=8.0;
    } else {
     s0+=24.0;
     s1+=451.0;
    }
   } else {
    if(i10<-0.0017812252044677734){
     s0+=112.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i20<-0.0006186068058013916){
    if(i43<0.012016517110168934){
     s0+=12.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i28<0.9855123162269592){
     s0+=14.0;
     s1+=668.0;
    } else {
     s0+=1.0;
     s1+=6994.0;
    }
   }
  }
 }
}
if(i4<0.07267343997955322){
 if(i57<-1.9830178644042462e-05){
  if(i20<0.0002142786979675293){
   if(i37<0.001427631126716733){
    s1+=22.0;
   } else {
    if(i80<0.0007855650037527084){
     s0+=68.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   s1+=818.0;
  }
 } else {
  if(i1<0.07826146483421326){
   if(i6<1.0024782419204712){
    if(i54<-0.029092639684677124){
     s0+=2285.0;
     s1+=602.0;
    } else {
     s0+=66600.0;
     s1+=1275.0;
    }
   } else {
    if(i72<-4.473649823921733e-06){
     s0+=110.0;
     s1+=592.0;
    } else {
     s0+=95.0;
     s1+=4.0;
    }
   }
  } else {
   if(i5<-4.798173904418945e-05){
    if(i80<-0.0022830800153315067){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=142.0;
     s1+=6.0;
    }
   } else {
    if(i44<0.050410956144332886){
     s0+=26.0;
     s1+=1223.0;
    } else {
     s0+=107.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i1<0.11252734065055847){
  if(i63<0.0033878982067108154){
   if(i50<0.014506220817565918){
    if(i7<-1.4586268662242219e-05){
     s0+=77.0;
     s1+=849.0;
    } else {
     s0+=216.0;
     s1+=71.0;
    }
   } else {
    if(i0<0.11162522435188293){
     s0+=196.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  } else {
   if(i56<0.0016995453042909503){
    if(i73<0.0009279222576878965){
     s0+=190.0;
     s1+=46.0;
    } else {
     s0+=6.0;
     s1+=27.0;
    }
   } else {
    if(i42<1.498544454574585){
     s0+=517.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i13<-0.00040227174758911133){
   if(i44<0.10384014248847961){
    if(i20<-0.00023046135902404785){
     s1+=6.0;
    } else {
     s0+=18.0;
    }
   } else {
    s0+=185.0;
   }
  } else {
   if(i5<3.4749507904052734e-05){
    if(i7<-1.3570891496783588e-05){
     s0+=168.0;
     s1+=1851.0;
    } else {
     s0+=242.0;
     s1+=174.0;
    }
   } else {
    if(i51<-0.00037732167402282357){
     s0+=15.0;
     s1+=7869.0;
    } else {
     s0+=58.0;
     s1+=1385.0;
    }
   }
  }
 }
}
if(i6<1.0024325847625732){
 if(i29<1.0107730627059937){
  if(i1<0.08524090051651001){
   if(i30<0.00030578963924199343){
    if(i16<1.0104166269302368){
     s0+=53631.0;
     s1+=261.0;
    } else {
     s0+=11.0;
     s1+=15.0;
    }
   } else {
    if(i6<0.9979645013809204){
     s0+=10046.0;
     s1+=377.0;
    } else {
     s0+=4541.0;
     s1+=1395.0;
    }
   }
  } else {
   if(i7<-7.816519428160973e-06){
    if(i70<0.0049072206020355225){
     s0+=149.0;
     s1+=1511.0;
    } else {
     s0+=118.0;
     s1+=110.0;
    }
   } else {
    if(i39<0.05490332841873169){
     s0+=99.0;
     s1+=117.0;
    } else {
     s0+=403.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i24<0.03916608542203903){
   if(i37<0.0011832208838313818){
    if(i48<0.0002817696949932724){
     s0+=188.0;
     s1+=119.0;
    } else {
     s0+=27.0;
     s1+=470.0;
    }
   } else {
    if(i28<1.0129446983337402){
     s0+=1169.0;
     s1+=216.0;
    } else {
     s0+=328.0;
     s1+=284.0;
    }
   }
  } else {
   if(i7<-9.718510227685329e-06){
    if(i22<-2.03549861907959e-05){
     s0+=3.0;
    } else {
     s0+=39.0;
     s1+=951.0;
    }
   } else {
    if(i61<1.0000617504119873){
     s0+=82.0;
     s1+=9.0;
    } else {
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i17<0.002279817359521985){
  if(i6<1.004623293876648){
   if(i75<4.6642911911476403e-05){
    s1+=38.0;
   } else {
    if(i47<-1.572370638314169e-05){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=238.0;
    }
   }
  } else {
   s1+=156.0;
  }
 } else {
  if(i45<0.017789900302886963){
   if(i41<0.3052768111228943){
    if(i57<7.045065285637975e-05){
     s0+=8.0;
     s1+=1885.0;
    } else {
     s0+=106.0;
     s1+=146.0;
    }
   } else {
    if(i16<1.0154602527618408){
     s0+=42.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=53.0;
    }
   }
  } else {
   if(i4<0.011465340852737427){
    if(i64<2.0185290850349702e-05){
     s0+=1.0;
     s1+=58.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i51<-0.0005396505002863705){
     s1+=6920.0;
    } else {
     s0+=4.0;
     s1+=1853.0;
    }
   }
  }
 }
}
if(i15<1.0058752298355103){
 if(i56<0.0004842254566028714){
  if(i16<1.0080902576446533){
   if(i3<0.0007486343383789062){
    if(i12<1.003429889678955){
     s0+=51450.0;
     s1+=380.0;
    } else {
     s0+=22.0;
     s1+=30.0;
    }
   } else {
    s1+=37.0;
   }
  } else {
   if(i34<1.083398699760437){
    if(i38<0.00028681184630841017){
     s0+=1.0;
    } else {
     s1+=93.0;
    }
   } else {
    if(i8<1.0471223592758179){
     s0+=16.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i1<0.0813697874546051){
   if(i66<-0.002451307373121381){
    if(i6<1.0024747848510742){
     s0+=9364.0;
     s1+=200.0;
    } else {
     s0+=29.0;
     s1+=59.0;
    }
   } else {
    if(i33<1.100754976272583){
     s0+=1607.0;
     s1+=1017.0;
    } else {
     s0+=6318.0;
     s1+=596.0;
    }
   }
  } else {
   if(i39<0.04312053322792053){
    if(i17<0.0010096339974552393){
     s0+=23.0;
     s1+=12.0;
    } else {
     s0+=76.0;
     s1+=2651.0;
    }
   } else {
    if(i37<0.006140701472759247){
     s0+=1212.0;
     s1+=730.0;
    } else {
     s0+=135.0;
     s1+=939.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005142688751220703){
  if(i48<0.0008703053463250399){
   if(i11<1.0000536441802979){
    if(i40<0.002627583220601082){
     s1+=225.0;
    } else {
     s0+=65.0;
     s1+=12.0;
    }
   } else {
    if(i33<1.1386182308197021){
     s0+=5.0;
     s1+=38.0;
    } else {
     s0+=541.0;
     s1+=2.0;
    }
   }
  } else {
   if(i47<4.457437796645536e-07){
    if(i1<0.07436561584472656){
     s0+=31.0;
     s1+=39.0;
    } else {
     s1+=507.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i27<0.00016920713824220002){
   if(i48<0.0007935910252854228){
    s0+=57.0;
   } else {
    if(i48<0.000831815239507705){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=31.0;
    }
   }
  } else {
   if(i45<0.011322317644953728){
    if(i66<-0.006935798563063145){
     s0+=34.0;
     s1+=11.0;
    } else {
     s0+=67.0;
     s1+=1209.0;
    }
   } else {
    if(i5<3.3795833587646484e-05){
     s0+=2.0;
     s1+=15.0;
    } else {
     s1+=8346.0;
    }
   }
  }
 }
}
if(i5<3.832578659057617e-05){
 if(i4<0.07196676731109619){
  if(i27<0.0002956066164188087){
   if(i26<1.010094165802002){
    if(i60<-0.0026429295539855957){
     s0+=88.0;
     s1+=81.0;
    } else {
     s0+=55127.0;
     s1+=433.0;
    }
   } else {
    if(i0<0.08272892236709595){
     s0+=768.0;
     s1+=84.0;
    } else {
     s0+=1.0;
     s1+=98.0;
    }
   }
  } else {
   if(i1<0.07744550704956055){
    if(i6<0.9978128671646118){
     s0+=7931.0;
     s1+=257.0;
    } else {
     s0+=4412.0;
     s1+=1046.0;
    }
   } else {
    if(i11<0.9980232119560242){
     s0+=62.0;
    } else {
     s0+=83.0;
     s1+=690.0;
    }
   }
  }
 } else {
  if(i0<0.11114823818206787){
   if(i60<0.003652811050415039){
    if(i38<0.0004475691239349544){
     s0+=222.0;
     s1+=15.0;
    } else {
     s0+=514.0;
     s1+=561.0;
    }
   } else {
    if(i73<-0.0004156704235356301){
     s0+=35.0;
     s1+=17.0;
    } else {
     s0+=365.0;
     s1+=7.0;
    }
   }
  } else {
   if(i47<2.6805928428075276e-06){
    if(i44<0.07923251390457153){
     s0+=18.0;
     s1+=1297.0;
    } else {
     s0+=418.0;
     s1+=947.0;
    }
   } else {
    if(i71<0.9998641014099121){
     s0+=185.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i75<0.00032167122117243707){
  if(i6<0.9998562932014465){
   s0+=77.0;
  } else {
   if(i30<0.000179713882971555){
    if(i36<0.0001957416534423828){
     s0+=44.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i5<6.133317947387695e-05){
     s0+=239.0;
     s1+=1404.0;
    } else {
     s0+=111.0;
     s1+=10390.0;
    }
   }
  }
 } else {
  s0+=195.0;
 }
}
if(i2<0.07742387056350708){
 if(i13<0.0005224347114562988){
  if(i1<0.06758424639701843){
   if(i54<-0.027904421091079712){
    if(i36<-3.403425216674805e-05){
     s0+=1233.0;
     s1+=75.0;
    } else {
     s0+=1186.0;
     s1+=424.0;
    }
   } else {
    if(i24<0.014192360453307629){
     s0+=53390.0;
     s1+=347.0;
    } else {
     s0+=10568.0;
     s1+=615.0;
    }
   }
  } else {
   if(i59<-0.001290041022002697){
    if(i46<0.046308040618896484){
     s0+=107.0;
     s1+=246.0;
    } else {
     s0+=1798.0;
     s1+=201.0;
    }
   } else {
    if(i46<0.054102957248687744){
     s0+=28.0;
     s1+=173.0;
    } else {
     s0+=37.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i66<-0.0032091743778437376){
   if(i49<-0.0005993843078613281){
    if(i17<0.007208989933133125){
     s0+=2.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i6<1.004479169845581){
     s0+=422.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   }
  } else {
   if(i15<1.0062546730041504){
    if(i3<0.0006889700889587402){
     s0+=446.0;
     s1+=142.0;
    } else {
     s0+=88.0;
     s1+=291.0;
    }
   } else {
    if(i6<1.0041539669036865){
     s0+=33.0;
     s1+=67.0;
    } else {
     s1+=571.0;
    }
   }
  }
 }
} else {
 if(i38<0.0005117261316627264){
  if(i7<-1.851023262133822e-05){
   if(i64<2.8364570425765123e-06){
    s0+=21.0;
   } else {
    if(i35<1.0538196563720703){
     s0+=2.0;
    } else {
     s1+=98.0;
    }
   }
  } else {
   if(i57<6.0441147070378065e-05){
    if(i13<0.0004156827926635742){
     s0+=416.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i47<-2.4849778128555045e-06){
     s1+=12.0;
    } else {
     s0+=63.0;
    }
   }
  }
 } else {
  if(i47<2.735205043791211e-06){
   if(i7<-4.304716640035622e-05){
    if(i15<1.0023798942565918){
     s0+=224.0;
     s1+=2296.0;
    } else {
     s0+=32.0;
     s1+=9772.0;
    }
   } else {
    if(i42<1.1411712169647217){
     s0+=99.0;
     s1+=841.0;
    } else {
     s0+=762.0;
     s1+=719.0;
    }
   }
  } else {
   if(i67<0.999427855014801){
    if(i52<0.0005931662162765861){
     s0+=207.0;
    } else {
     s0+=85.0;
     s1+=3.0;
    }
   } else {
    s1+=19.0;
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
