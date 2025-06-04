/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=20 top_hat_box=15 top_hat_box=30 gaussian_blur=10 difference_of_gaussian=15 top_hat_box=10 small_hessian_eigenvalue_of_gaussian_blur=10 maximum_box=3 laplace_box_of_gaussian_blur=15 maximum_box=2 difference_of_gaussian=20 gaussian_blur=5 laplace_box_of_gaussian_blur=10 median_box=5 mean_box=10 gaussian_blur=15 sobel_of_gaussian_blur=10 laplace_box_of_gaussian_blur=20 sobel_of_median_box=5 gaussian_blur=2 median_box=3 difference_of_gaussian=10 mean_box=15 mean_box=5 maximum_box=5 gaussian_blur=3 mean_box=2 variance_box=3 maximum_box=1 mean_box=3 variance_box=5 gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=5 variance_box=15 maximum_box=30 sobel_of_gaussian_blur=5 sobel_of_median_box=3 variance_box=30 variance_box=10 variance_box=2 top_hat_box=2 maximum_box=15 variance_box=20 maximum_box=20 gaussian_blur=1 maximum_box=10 top_hat_box=5 sobel_of_gaussian_blur=15 difference_of_gaussian=2 laplace_box_of_gaussian_blur=1 difference_of_gaussian=30 top_hat_box=3 laplace_box_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=5 laplace_box_of_gaussian_blur=2 laplace_box_of_gaussian_blur=5 small_hessian_eigenvalue_of_gaussian_blur=15 small_hessian_eigenvalue_of_gaussian_blur=1 sobel_of_gaussian_blur=1 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=15 gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=3 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=2 sobel_of_gaussian_blur=20 sobel_of_gaussian_blur=3 mean_box=20 top_hat_box=1 small_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_gaussian_blur=2 sobel_of_gaussian_blur=30 mean_box=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 77
max_depth = 5
num_trees = 250
feature_importances = 0.10155025314942898,0.10790255694822411,0.084752845368859,0.07197768290153438,0.0886890006662418,0.03723598114754615,0.047050415451544814,0.03622768014748478,0.057711579081237675,0.03063147590142472,0.024668142620978974,0.020567404472047163,0.013564661625622561,0.038012181372312104,0.01863181003226421,0.018599783601129176,0.010570529354840149,0.009755685637864572,0.011675975108866714,0.003367497495501587,0.013551164200884782,0.017198483115961796,0.014389737464640454,0.004563916525983443,0.009032882174205925,0.015679537634239557,0.007239203790968785,0.002952920633865403,0.005660023653823013,0.002829262058472575,0.0018195716429338011,0.0015561402325703865,0.0011624728084388659,0.002546982419457399,0.0034598659706659256,0.002881518351765236,0.0011254556489586258,0.0029118066091762553,0.00244933946945399,0.0032990441744474314,0.002373596419267232,0.0025556241082387607,0.001723340813140391,0.002194898313826447,0.00044927608647143394,0.0029480208674884326,0.0043998319297649715,0.0016399467392472578,0.001885792731774481,0.0014707828064969108,0.0026376121932795756,0.002213652317110471,0.0009116357981191866,0.0011977187724326478,0.0018227306331057129,0.00039344972744832026,0.0021750441537889756,0.0006459228675365174,0.001055511526583472,0.0012135385902479635,0.0006092555206454342,0.0011426618338210843,0.0015473626943509789,0.0013273549218798457,0.0008910231293643424,0.0008848638011245252,0.0007739940619905757,0.0009095919647742613,0.0011793553896409363,0.0006377491934711669,0.0004841219413043581,0.000439264421952582,0.0010723166624974478,0.0009308617011542787,0.0006618436787715753,0.0004133647651670349,0.000734616256853391
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i2<0.08592218160629272){
 if(i4<0.0006093978881835938){
  if(i9<1.0401476621627808){
   if(i64<-0.0013785362243652344){
    if(i45<1.1792536973953247){
     s0+=1645.0;
     s1+=603.0;
    } else {
     s0+=3056.0;
     s1+=63.0;
    }
   } else {
    if(i7<1.042891263961792){
     s0+=55642.0;
     s1+=239.0;
    } else {
     s0+=2306.0;
     s1+=234.0;
    }
   }
  } else {
   if(i6<-3.009623833349906e-05){
    if(i54<0.012242376804351807){
     s0+=600.0;
     s1+=607.0;
    } else {
     s0+=386.0;
     s1+=1.0;
    }
   } else {
    if(i8<-1.6182661056518555e-05){
     s0+=2715.0;
     s1+=87.0;
    } else {
     s0+=2537.0;
     s1+=355.0;
    }
   }
  }
 } else {
  if(i52<0.0025781989097595215){
   if(i38<0.0004246023017913103){
    s0+=71.0;
   } else {
    if(i16<0.0017963189166039228){
     s0+=38.0;
     s1+=2.0;
    } else {
     s0+=96.0;
     s1+=954.0;
    }
   }
  } else {
   if(i3<1.0045833587646484){
    if(i6<-0.00010159416706301272){
     s1+=2.0;
    } else {
     s0+=96.0;
     s1+=5.0;
    }
   } else {
    s1+=17.0;
   }
  }
 }
} else {
 if(i10<-0.0004031956195831299){
  if(i63<0.00018563203047960997){
   if(i21<-0.0005519390106201172){
    s0+=498.0;
   } else {
    if(i69<0.0005696525913663208){
     s0+=31.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   }
  } else {
   if(i12<-0.0004891753196716309){
    if(i59<-0.0026348531246185303){
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=1.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i3<1.0016975402832031){
   if(i16<0.0017367787659168243){
    if(i10<-0.0002739131450653076){
     s0+=5.0;
     s1+=79.0;
    } else {
     s0+=555.0;
     s1+=139.0;
    }
   } else {
    if(i61<1.0003552436828613){
     s0+=416.0;
     s1+=2871.0;
    } else {
     s0+=113.0;
     s1+=92.0;
    }
   }
  } else {
   if(i11<1.0073866844177246){
    if(i63<-2.298178878845647e-05){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=130.0;
     s1+=2123.0;
    }
   } else {
    if(i18<0.008451334200799465){
     s0+=3.0;
     s1+=430.0;
    } else {
     s0+=1.0;
     s1+=8350.0;
    }
   }
  }
 }
}
if(i0<0.08316218852996826){
 if(i22<1.0029031038284302){
  if(i65<0.0007802886539138854){
   if(i9<1.0408353805541992){
    if(i50<7.921457290649414e-05){
     s0+=49409.0;
     s1+=141.0;
    } else {
     s0+=7717.0;
     s1+=224.0;
    }
   } else {
    if(i12<7.000565528869629e-05){
     s0+=4038.0;
     s1+=478.0;
    } else {
     s0+=336.0;
     s1+=192.0;
    }
   }
  } else {
   if(i23<0.9744505882263184){
    if(i59<-0.0025346875190734863){
     s0+=306.0;
     s1+=71.0;
    } else {
     s0+=3133.0;
     s1+=15.0;
    }
   } else {
    if(i0<0.05786067247390747){
     s0+=3063.0;
     s1+=672.0;
    } else {
     s0+=366.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i75<0.00013412514817900956){
   if(i37<0.001677412074059248){
    if(i7<1.0293384790420532){
     s0+=31.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=503.0;
    }
   } else {
    if(i8<6.92605972290039e-05){
     s0+=464.0;
     s1+=61.0;
    } else {
     s0+=8.0;
     s1+=218.0;
    }
   }
  } else {
   if(i54<-0.05129086971282959){
    if(i70<0.09584565460681915){
     s0+=24.0;
     s1+=7.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i59<-0.0033887922763824463){
     s0+=12.0;
     s1+=32.0;
    } else {
     s0+=571.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i6<-1.2280826922506094e-05){
  if(i18<0.026091277599334717){
   if(i27<0.00216960022225976){
    if(i21<-0.0008998215198516846){
     s0+=81.0;
     s1+=37.0;
    } else {
     s0+=101.0;
     s1+=2655.0;
    }
   } else {
    if(i2<0.14800065755844116){
     s0+=255.0;
     s1+=129.0;
    } else {
     s0+=99.0;
     s1+=574.0;
    }
   }
  } else {
   if(i12<-0.0008565187454223633){
    if(i18<0.06906357407569885){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i56<-3.135093038508785e-07){
     s0+=119.0;
     s1+=10244.0;
    } else {
     s0+=27.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i31<0.9992896318435669){
   s0+=415.0;
  } else {
   if(i54<0.012648820877075195){
    if(i46<0.07083749771118164){
     s0+=21.0;
     s1+=190.0;
    } else {
     s0+=127.0;
     s1+=79.0;
    }
   } else {
    if(i1<0.288750559091568){
     s0+=429.0;
     s1+=47.0;
    } else {
     s0+=12.0;
     s1+=54.0;
    }
   }
  }
 }
}
if(i8<3.653764724731445e-05){
 if(i19<1.0072548389434814){
  if(i27<0.0003237726050429046){
   if(i55<-0.0009322762489318848){
    if(i52<-0.002559751272201538){
     s0+=27.0;
     s1+=68.0;
    } else {
     s0+=545.0;
     s1+=20.0;
    }
   } else {
    if(i1<0.07661336660385132){
     s0+=53005.0;
     s1+=186.0;
    } else {
     s0+=156.0;
     s1+=37.0;
    }
   }
  } else {
   if(i0<0.08194559812545776){
    if(i21<-0.0013468265533447266){
     s0+=8588.0;
     s1+=268.0;
    } else {
     s0+=4649.0;
     s1+=1192.0;
    }
   } else {
    if(i6<-1.573444933455903e-06){
     s0+=314.0;
     s1+=1450.0;
    } else {
     s0+=428.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i12<9.900331497192383e-05){
   if(i2<0.08710417151451111){
    if(i41<1.1040980815887451){
     s0+=469.0;
     s1+=249.0;
    } else {
     s0+=1364.0;
     s1+=49.0;
    }
   } else {
    if(i6<-1.9801833332167007e-05){
     s0+=194.0;
     s1+=998.0;
    } else {
     s0+=478.0;
     s1+=129.0;
    }
   }
  } else {
   if(i30<0.0009473838144913316){
    if(i34<1.2651259899139404){
     s0+=2.0;
     s1+=418.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i16<0.004908029921352863){
     s0+=193.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=212.0;
    }
   }
  }
 }
} else {
 if(i61<0.9991834163665771){
  s0+=354.0;
 } else {
  if(i12<0.00021499395370483398){
   if(i0<0.06430476903915405){
    if(i73<-5.000026703783078e-06){
     s0+=139.0;
     s1+=361.0;
    } else {
     s0+=106.0;
     s1+=12.0;
    }
   } else {
    if(i22<1.003528118133545){
     s0+=134.0;
     s1+=823.0;
    } else {
     s0+=71.0;
     s1+=2173.0;
    }
   }
  } else {
   if(i47<6.273738836171106e-05){
    if(i19<1.0164417028427124){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=8285.0;
   }
  }
 }
}
if(i20<1.0103590488433838){
 if(i27<0.0003449253854341805){
  if(i8<4.246830940246582e-05){
   if(i6<-4.4834745494881645e-05){
    if(i75<9.776806109584868e-05){
     s0+=34.0;
     s1+=83.0;
    } else {
     s0+=210.0;
     s1+=26.0;
    }
   } else {
    if(i53<-0.00011445126438047737){
     s0+=7.0;
     s1+=29.0;
    } else {
     s0+=54462.0;
     s1+=355.0;
    }
   }
  } else {
   if(i16<0.0035551246255636215){
    if(i14<1.0064058303833008){
     s0+=192.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=46.0;
    }
   } else {
    s1+=120.0;
   }
  }
 } else {
  if(i5<0.06728500127792358){
   if(i2<0.07608500123023987){
    if(i49<-0.0031415820121765137){
     s0+=3661.0;
     s1+=1285.0;
    } else {
     s0+=8941.0;
     s1+=372.0;
    }
   } else {
    if(i3<0.9958086609840393){
     s0+=243.0;
     s1+=11.0;
    } else {
     s0+=82.0;
     s1+=766.0;
    }
   }
  } else {
   if(i40<0.04246187210083008){
    if(i50<-0.0002620220184326172){
     s0+=28.0;
    } else {
     s0+=67.0;
     s1+=2151.0;
    }
   } else {
    if(i14<1.0007390975952148){
     s0+=1008.0;
     s1+=532.0;
    } else {
     s0+=53.0;
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i6<-4.132984031457454e-05){
  if(i0<0.07956704497337341){
   if(i42<0.002807590877637267){
    if(i54<0.015421748161315918){
     s1+=298.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i56<-4.497233749134466e-05){
     s1+=16.0;
    } else {
     s0+=173.0;
     s1+=18.0;
    }
   }
  } else {
   if(i12<1.1146068572998047e-05){
    if(i7<1.1239407062530518){
     s0+=92.0;
     s1+=246.0;
    } else {
     s0+=12.0;
     s1+=615.0;
    }
   } else {
    if(i74<0.004197911359369755){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=14.0;
     s1+=8798.0;
    }
   }
  }
 } else {
  if(i53<-6.67887507006526e-05){
   if(i35<0.009579312056303024){
    if(i32<-0.0009627538383938372){
     s0+=15.0;
     s1+=11.0;
    } else {
     s0+=136.0;
     s1+=2.0;
    }
   } else {
    if(i34<1.2604451179504395){
     s0+=10.0;
     s1+=278.0;
    } else {
     s0+=114.0;
    }
   }
  } else {
   if(i65<-0.00048134406097233295){
    if(i61<0.9995706081390381){
     s0+=37.0;
    } else {
     s0+=45.0;
     s1+=151.0;
    }
   } else {
    if(i1<0.19296151399612427){
     s0+=1511.0;
     s1+=218.0;
    } else {
     s0+=34.0;
     s1+=154.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i1<0.07665607333183289){
  if(i48<-0.001657634973526001){
   if(i4<0.0002968907356262207){
    if(i11<0.9823057651519775){
     s0+=1339.0;
     s1+=53.0;
    } else {
     s0+=2164.0;
     s1+=529.0;
    }
   } else {
    if(i44<0.9996258616447449){
     s0+=47.0;
     s1+=338.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   }
  } else {
   if(i4<0.0007769465446472168){
    if(i24<1.0451585054397583){
     s0+=53159.0;
     s1+=192.0;
    } else {
     s0+=11428.0;
     s1+=1064.0;
    }
   } else {
    if(i33<0.0015870946226641536){
     s1+=116.0;
    } else {
     s0+=65.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i6<-9.321247489424422e-06){
   if(i31<0.9987680912017822){
    if(i42<0.021088406443595886){
     s0+=78.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i48<0.003944754600524902){
     s0+=113.0;
     s1+=2545.0;
    } else {
     s0+=406.0;
     s1+=1095.0;
    }
   }
  } else {
   if(i28<1.051631212234497){
    if(i37<0.00050411990378052){
     s0+=169.0;
     s1+=1.0;
    } else {
     s0+=130.0;
     s1+=135.0;
    }
   } else {
    if(i51<0.040611326694488525){
     s0+=4.0;
     s1+=11.0;
    } else {
     s0+=572.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i12<0.0002142786979675293){
  if(i6<-4.222855932312086e-05){
   if(i34<1.613681674003601){
    if(i75<7.016667950665578e-05){
     s0+=41.0;
     s1+=606.0;
    } else {
     s0+=19.0;
     s1+=1585.0;
    }
   } else {
    if(i75<0.00016879546456038952){
     s0+=51.0;
     s1+=12.0;
    } else {
     s1+=111.0;
    }
   }
  } else {
   if(i37<0.0021176612935960293){
    if(i1<0.0609833300113678){
     s0+=431.0;
     s1+=45.0;
    } else {
     s0+=298.0;
     s1+=599.0;
    }
   } else {
    if(i44<0.9981393814086914){
     s0+=13.0;
     s1+=46.0;
    } else {
     s0+=514.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i1<0.03658613562583923){
   if(i55<0.0010673999786376953){
    s1+=76.0;
   } else {
    s0+=4.0;
   }
  } else {
   if(i27<0.00019104243256151676){
    if(i76<1.0088660717010498){
     s1+=1.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i46<0.03922334313392639){
     s0+=1.0;
     s1+=1453.0;
    } else {
     s1+=6473.0;
    }
   }
  }
 }
}
if(i1<0.07742387056350708){
 if(i3<1.0024800300598145){
  if(i67<0.008474690839648247){
   if(i7<1.0451585054397583){
    if(i58<0.04214908927679062){
     s0+=52520.0;
     s1+=273.0;
    } else {
     s0+=8479.0;
     s1+=381.0;
    }
   } else {
    if(i34<1.1013743877410889){
     s0+=1404.0;
     s1+=624.0;
    } else {
     s0+=3668.0;
     s1+=119.0;
    }
   }
  } else {
   if(i71<1.0004370212554932){
    if(i39<0.002417474053800106){
     s0+=1029.0;
     s1+=300.0;
    } else {
     s0+=1130.0;
     s1+=63.0;
    }
   } else {
    if(i52<0.005399435758590698){
     s0+=409.0;
     s1+=408.0;
    } else {
     s0+=187.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i45<1.1353518962860107){
   if(i4<0.00048661231994628906){
    if(i29<1.0066959857940674){
     s0+=7.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=777.0;
   }
  } else {
   if(i54<-0.006205439567565918){
    if(i27<0.00036941529833711684){
     s0+=8.0;
    } else {
     s0+=26.0;
     s1+=252.0;
    }
   } else {
    if(i60<-7.671947969356552e-06){
     s0+=2.0;
     s1+=19.0;
    } else {
     s0+=222.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5570072719128802e-05){
  if(i11<1.007555365562439){
   if(i72<0.0295831561088562){
    if(i51<0.05396527051925659){
     s0+=14.0;
     s1+=2269.0;
    } else {
     s0+=160.0;
     s1+=1111.0;
    }
   } else {
    if(i0<0.12668082118034363){
     s0+=365.0;
     s1+=203.0;
    } else {
     s0+=138.0;
     s1+=993.0;
    }
   }
  } else {
   if(i56<-7.491947826565593e-07){
    if(i12<0.00021332502365112305){
     s0+=17.0;
     s1+=1040.0;
    } else {
     s1+=7990.0;
    }
   } else {
    s0+=25.0;
   }
  }
 } else {
  if(i46<0.060584038496017456){
   if(i60<1.4351621757668909e-05){
    if(i42<0.00039990193909034133){
     s0+=2.0;
    } else {
     s1+=158.0;
    }
   } else {
    if(i12<-0.0001818835735321045){
     s0+=62.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   }
  } else {
   if(i6<-6.639141247433145e-06){
    if(i18<0.023264354094862938){
     s0+=179.0;
     s1+=31.0;
    } else {
     s0+=79.0;
     s1+=139.0;
    }
   } else {
    if(i3<1.0012118816375732){
     s0+=814.0;
     s1+=79.0;
    } else {
     s1+=21.0;
    }
   }
  }
 }
}
if(i2<0.08351385593414307){
 if(i10<0.000526130199432373){
  if(i45<1.0557184219360352){
   s0+=42857.0;
  } else {
   if(i8<1.1861324310302734e-05){
    if(i64<-0.000879824161529541){
     s0+=4943.0;
     s1+=898.0;
    } else {
     s0+=19278.0;
     s1+=589.0;
    }
   } else {
    if(i1<0.058663010597229004){
     s0+=939.0;
     s1+=251.0;
    } else {
     s0+=159.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i22<1.0025039911270142){
   if(i62<0.0014583684969693422){
    if(i69<0.0015383206773549318){
     s0+=431.0;
     s1+=34.0;
    } else {
     s0+=9.0;
     s1+=10.0;
    }
   } else {
    if(i4<0.000395357608795166){
     s0+=135.0;
     s1+=43.0;
    } else {
     s0+=38.0;
     s1+=85.0;
    }
   }
  } else {
   if(i60<9.740948371472768e-06){
    if(i52<0.00473707914352417){
     s0+=66.0;
     s1+=719.0;
    } else {
     s0+=25.0;
     s1+=5.0;
    }
   } else {
    if(i54<-0.0523514449596405){
     s0+=5.0;
     s1+=51.0;
    } else {
     s0+=239.0;
     s1+=44.0;
    }
   }
  }
 }
} else {
 if(i50<-0.00014027953147888184){
  if(i3<0.9979575872421265){
   if(i43<1.5942578315734863){
    if(i37<0.001722568180412054){
     s0+=668.0;
    } else {
     s0+=42.0;
     s1+=8.0;
    }
   } else {
    if(i53<0.0026237480342388153){
     s0+=9.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i6<-2.8338439733488485e-05){
    s1+=118.0;
   } else {
    s0+=2.0;
   }
  }
 } else {
  if(i14<1.0021934509277344){
   if(i72<0.02584517002105713){
    if(i40<0.04517433047294617){
     s0+=68.0;
     s1+=2167.0;
    } else {
     s0+=226.0;
     s1+=556.0;
    }
   } else {
    if(i1<0.1739814281463623){
     s0+=796.0;
     s1+=480.0;
    } else {
     s0+=116.0;
     s1+=900.0;
    }
   }
  } else {
   if(i17<1.913309097290039e-05){
    if(i66<1.003676414489746){
     s0+=88.0;
     s1+=1579.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i23<0.9972430467605591){
     s0+=25.0;
     s1+=816.0;
    } else {
     s0+=2.0;
     s1+=7445.0;
    }
   }
  }
 }
}
if(i17<1.7940998077392578e-05){
 if(i1<0.0783216655254364){
  if(i39<0.0002955581876449287){
   if(i26<1.0084259510040283){
    if(i45<1.0598037242889404){
     s0+=41014.0;
     s1+=6.0;
    } else {
     s0+=14108.0;
     s1+=459.0;
    }
   } else {
    if(i42<0.0006449330830946565){
     s0+=234.0;
     s1+=148.0;
    } else {
     s0+=519.0;
     s1+=25.0;
    }
   }
  } else {
   if(i2<0.06633126735687256){
    if(i43<1.103413462638855){
     s0+=2839.0;
     s1+=702.0;
    } else {
     s0+=7828.0;
     s1+=231.0;
    }
   } else {
    if(i59<0.0014005601406097412){
     s0+=345.0;
     s1+=392.0;
    } else {
     s0+=900.0;
     s1+=117.0;
    }
   }
  }
 } else {
  if(i6<-1.3797138308291323e-05){
   if(i31<1.0003293752670288){
    if(i40<0.04982560873031616){
     s0+=22.0;
     s1+=2246.0;
    } else {
     s0+=201.0;
     s1+=1059.0;
    }
   } else {
    if(i16<0.003343538148328662){
     s0+=160.0;
     s1+=55.0;
    } else {
     s0+=49.0;
     s1+=510.0;
    }
   }
  } else {
   if(i53<0.0004629204049706459){
    if(i31<0.9995163679122925){
     s0+=343.0;
     s1+=6.0;
    } else {
     s0+=503.0;
     s1+=135.0;
    }
   } else {
    if(i40<0.04758089780807495){
     s0+=12.0;
     s1+=131.0;
    } else {
     s0+=183.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i8<4.559755325317383e-05){
  if(i32<-0.0002097450924338773){
   if(i2<0.09990796446800232){
    if(i16<0.005989062134176493){
     s0+=232.0;
     s1+=29.0;
    } else {
     s0+=30.0;
     s1+=116.0;
    }
   } else {
    if(i31<1.0003936290740967){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=14.0;
     s1+=337.0;
    }
   }
  } else {
   if(i3<1.0004909038543701){
    if(i5<0.10942855477333069){
     s0+=836.0;
     s1+=41.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   } else {
    if(i18<0.013727417215704918){
     s0+=200.0;
     s1+=34.0;
    } else {
     s0+=99.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i24<1.0409044027328491){
   if(i16<0.004810746293514967){
    s0+=171.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i1<0.04542848467826843){
    if(i59<-0.0005320310592651367){
     s0+=57.0;
     s1+=323.0;
    } else {
     s0+=56.0;
     s1+=14.0;
    }
   } else {
    if(i3<1.002431869506836){
     s0+=48.0;
     s1+=132.0;
    } else {
     s0+=84.0;
     s1+=9620.0;
    }
   }
  }
 }
}
if(i10<0.00043570995330810547){
 if(i20<1.0107624530792236){
  if(i5<0.07073834538459778){
   if(i0<0.07844537496566772){
    if(i24<1.0451585054397583){
     s0+=53351.0;
     s1+=217.0;
    } else {
     s0+=12794.0;
     s1+=1341.0;
    }
   } else {
    if(i22<0.9954022169113159){
     s0+=112.0;
     s1+=1.0;
    } else {
     s0+=53.0;
     s1+=465.0;
    }
   }
  } else {
   if(i37<0.00045563807361759245){
    if(i3<1.0010960102081299){
     s0+=339.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i73<1.3222995676187566e-06){
     s0+=546.0;
     s1+=1252.0;
    } else {
     s0+=216.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i18<0.03504959121346474){
   if(i30<0.0012440262362360954){
    if(i37<0.0005228157388046384){
     s0+=137.0;
     s1+=134.0;
    } else {
     s0+=67.0;
     s1+=832.0;
    }
   } else {
    if(i2<0.13207444548606873){
     s0+=1171.0;
     s1+=38.0;
    } else {
     s0+=172.0;
     s1+=302.0;
    }
   }
  } else {
   if(i0<0.06537392735481262){
    if(i38<0.002715560607612133){
     s1+=5.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i17<-2.053380012512207e-05){
     s0+=43.0;
    } else {
     s0+=80.0;
     s1+=1289.0;
    }
   }
  }
 }
} else {
 if(i0<0.07414737343788147){
  if(i54<-0.003622114658355713){
   if(i8<2.0444393157958984e-05){
    if(i67<0.019292384386062622){
     s0+=184.0;
     s1+=14.0;
    } else {
     s0+=14.0;
     s1+=35.0;
    }
   } else {
    if(i3<1.0045642852783203){
     s0+=80.0;
     s1+=283.0;
    } else {
     s0+=6.0;
     s1+=327.0;
    }
   }
  } else {
   if(i23<1.007344365119934){
    if(i4<0.0011861324310302734){
     s0+=1053.0;
     s1+=91.0;
    } else {
     s0+=8.0;
     s1+=33.0;
    }
   } else {
    if(i33<0.0014848432037979364){
     s1+=118.0;
    } else {
     s0+=83.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i14<1.0004799365997314){
   if(i1<0.11799255013465881){
    if(i64<0.0017226934432983398){
     s0+=57.0;
     s1+=159.0;
    } else {
     s0+=228.0;
     s1+=36.0;
    }
   } else {
    if(i18<0.02580535039305687){
     s0+=35.0;
     s1+=87.0;
    } else {
     s0+=12.0;
     s1+=970.0;
    }
   }
  } else {
   if(i4<0.0005182027816772461){
    if(i76<1.028120517730713){
     s0+=7.0;
     s1+=122.0;
    } else {
     s0+=30.0;
     s1+=33.0;
    }
   } else {
    if(i14<1.0061445236206055){
     s0+=37.0;
     s1+=1293.0;
    } else {
     s0+=1.0;
     s1+=7790.0;
    }
   }
  }
 }
}
if(i18<0.022738464176654816){
 if(i4<0.0006031990051269531){
  if(i53<-9.353731729788706e-05){
   if(i19<1.0065414905548096){
    if(i0<0.06759673357009888){
     s0+=80.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   } else {
    if(i13<1.010892391204834){
     s0+=161.0;
     s1+=111.0;
    } else {
     s0+=16.0;
     s1+=426.0;
    }
   }
  } else {
   if(i53<0.0003359973197802901){
    if(i0<0.0832170844078064){
     s0+=58377.0;
     s1+=546.0;
    } else {
     s0+=649.0;
     s1+=307.0;
    }
   } else {
    if(i48<0.001018136739730835){
     s0+=1953.0;
     s1+=754.0;
    } else {
     s0+=2692.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i3<1.004129409790039){
   if(i35<0.008603962138295174){
    if(i24<1.0500216484069824){
     s0+=99.0;
     s1+=1.0;
    } else {
     s0+=122.0;
     s1+=116.0;
    }
   } else {
    if(i24<1.0832065343856812){
     s0+=3.0;
     s1+=189.0;
    } else {
     s0+=76.0;
     s1+=183.0;
    }
   }
  } else {
   if(i3<1.0053491592407227){
    if(i41<1.2541108131408691){
     s1+=331.0;
    } else {
     s0+=14.0;
     s1+=46.0;
    }
   } else {
    if(i1<0.014997810125350952){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=1638.0;
    }
   }
  }
 }
} else {
 if(i24<1.0447213649749756){
  if(i12<-0.00022032856941223145){
   if(i2<0.09432131052017212){
    if(i37<0.0006438973359763622){
     s0+=79.0;
     s1+=1.0;
    } else {
     s0+=2833.0;
    }
   } else {
    if(i59<0.002098590135574341){
     s0+=2.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i37<0.0004337178834248334){
    if(i74<0.009362194687128067){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=284.0;
     s1+=1.0;
    }
   } else {
    if(i15<0.9995266795158386){
     s0+=71.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i0<0.06310796737670898){
   if(i3<0.9979199171066284){
    if(i30<0.002527885138988495){
     s0+=121.0;
     s1+=58.0;
    } else {
     s0+=1841.0;
     s1+=35.0;
    }
   } else {
    if(i66<1.0014889240264893){
     s0+=395.0;
     s1+=607.0;
    } else {
     s0+=265.0;
     s1+=45.0;
    }
   }
  } else {
   if(i50<-0.0002537667751312256){
    if(i16<0.011773558333516121){
     s0+=229.0;
     s1+=2.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i4<0.00015017390251159668){
     s0+=462.0;
     s1+=1765.0;
    } else {
     s0+=168.0;
     s1+=9839.0;
    }
   }
  }
 }
}
if(i3<1.0023839473724365){
 if(i0<0.08543512225151062){
  if(i67<0.007702217437326908){
   if(i7<1.04337739944458){
    if(i24<1.042891263961792){
     s0+=51336.0;
     s1+=138.0;
    } else {
     s0+=8451.0;
     s1+=452.0;
    }
   } else {
    if(i18<0.023493872955441475){
     s0+=5456.0;
     s1+=446.0;
    } else {
     s0+=684.0;
     s1+=343.0;
    }
   }
  } else {
   if(i3<0.9965313076972961){
    if(i69<0.00199949461966753){
     s0+=1435.0;
     s1+=71.0;
    } else {
     s0+=8.0;
     s1+=18.0;
    }
   } else {
    if(i63<3.1702387786936015e-05){
     s0+=1287.0;
     s1+=182.0;
    } else {
     s0+=594.0;
     s1+=608.0;
    }
   }
  }
 } else {
  if(i35<0.03817488253116608){
   if(i50<-0.00013816356658935547){
    if(i13<1.0140326023101807){
     s0+=398.0;
     s1+=13.0;
    } else {
     s0+=8.0;
     s1+=10.0;
    }
   } else {
    if(i34<1.255998969078064){
     s0+=370.0;
     s1+=1874.0;
    } else {
     s0+=615.0;
     s1+=596.0;
    }
   }
  } else {
   if(i18<0.02093459479510784){
    if(i72<0.04012748599052429){
     s0+=3.0;
     s1+=10.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i61<1.0005053281784058){
     s0+=9.0;
     s1+=1066.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i2<0.06563782691955566){
  if(i59<-0.0011143088340759277){
   if(i64<0.0017723441123962402){
    if(i4<0.0005282163619995117){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=21.0;
     s1+=394.0;
    }
   } else {
    if(i45<1.152099847793579){
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   }
  } else {
   if(i56<-1.557877658342477e-05){
    if(i45<1.190043568611145){
     s0+=1.0;
     s1+=66.0;
    } else {
     s0+=39.0;
     s1+=8.0;
    }
   } else {
    if(i4<0.0010033845901489258){
     s0+=179.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i16<0.0021808247547596693){
   if(i21<0.001955687999725342){
    if(i37<0.001201123115606606){
     s0+=2.0;
     s1+=16.0;
    } else {
     s0+=53.0;
     s1+=3.0;
    }
   } else {
    s1+=155.0;
   }
  } else {
   if(i21<3.5643577575683594e-05){
    if(i24<1.123103141784668){
     s0+=84.0;
     s1+=214.0;
    } else {
     s0+=9.0;
     s1+=791.0;
    }
   } else {
    if(i16<0.0023674815893173218){
     s0+=3.0;
     s1+=57.0;
    } else {
     s0+=2.0;
     s1+=9579.0;
    }
   }
  }
 }
}
if(i1<0.07724285125732422){
 if(i7<1.0452277660369873){
  if(i64<-0.001325845718383789){
   if(i38<0.001614164561033249){
    if(i31<0.9992245435714722){
     s0+=483.0;
     s1+=8.0;
    } else {
     s0+=779.0;
     s1+=498.0;
    }
   } else {
    if(i35<0.05134042352437973){
     s0+=2938.0;
     s1+=51.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  } else {
   if(i19<1.0083763599395752){
    if(i7<1.0401519536972046){
     s0+=54769.0;
     s1+=258.0;
    } else {
     s0+=2827.0;
     s1+=165.0;
    }
   } else {
    if(i56<-8.679760867380537e-06){
     s0+=31.0;
     s1+=36.0;
    } else {
     s0+=61.0;
    }
   }
  }
 } else {
  if(i4<0.00047135353088378906){
   if(i34<1.1013743877410889){
    if(i43<1.081458568572998){
     s0+=1078.0;
     s1+=87.0;
    } else {
     s0+=547.0;
     s1+=759.0;
    }
   } else {
    if(i47<0.006099649704992771){
     s0+=5208.0;
     s1+=364.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i50<0.00014036893844604492){
    if(i43<1.2374356985092163){
     s1+=34.0;
    } else {
     s0+=137.0;
     s1+=20.0;
    }
   } else {
    if(i66<1.00213623046875){
     s0+=82.0;
     s1+=938.0;
    } else {
     s0+=79.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015729665756226){
  if(i71<0.9976110458374023){
   if(i35<0.039285555481910706){
    if(i3<0.996962308883667){
     s0+=394.0;
     s1+=3.0;
    } else {
     s0+=59.0;
     s1+=44.0;
    }
   } else {
    if(i11<0.9764522314071655){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=69.0;
    }
   }
  } else {
   if(i49<0.03540477156639099){
    if(i18<0.012734581716358662){
     s0+=119.0;
     s1+=192.0;
    } else {
     s0+=133.0;
     s1+=1436.0;
    }
   } else {
    if(i18<0.027925817295908928){
     s0+=821.0;
     s1+=279.0;
    } else {
     s0+=229.0;
     s1+=982.0;
    }
   }
  }
 } else {
  if(i35<0.018110502511262894){
   if(i49<0.06891191005706787){
    if(i51<0.04944369196891785){
     s1+=1063.0;
    } else {
     s0+=82.0;
     s1+=617.0;
    }
   } else {
    if(i11<1.0068027973175049){
     s0+=109.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=110.0;
    }
   }
  } else {
   if(i21<0.000272214412689209){
    if(i18<0.007604099810123444){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=1214.0;
    }
   } else {
    s1+=7936.0;
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i2<0.07855063676834106){
  if(i64<-0.001266568899154663){
   if(i10<0.0006071329116821289){
    if(i8<-1.7702579498291016e-05){
     s0+=4197.0;
     s1+=320.0;
    } else {
     s0+=1488.0;
     s1+=592.0;
    }
   } else {
    if(i59<0.00017142295837402344){
     s0+=72.0;
     s1+=429.0;
    } else {
     s0+=157.0;
     s1+=28.0;
    }
   }
  } else {
   if(i19<1.006474494934082){
    if(i27<0.00031646789284422994){
     s0+=52316.0;
     s1+=136.0;
    } else {
     s0+=7771.0;
     s1+=591.0;
    }
   } else {
    if(i34<1.1039612293243408){
     s0+=594.0;
     s1+=486.0;
    } else {
     s0+=1782.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i45<1.067292332649231){
   if(i23<1.0044617652893066){
    if(i2<0.07856589555740356){
     s1+=1.0;
    } else {
     s0+=318.0;
     s1+=3.0;
    }
   } else {
    if(i50<0.00033783912658691406){
     s1+=10.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i12<-0.00021439790725708008){
    if(i40<0.028933852910995483){
     s0+=50.0;
     s1+=82.0;
    } else {
     s0+=160.0;
     s1+=12.0;
    }
   } else {
    if(i14<0.9906984567642212){
     s0+=35.0;
    } else {
     s0+=128.0;
     s1+=1921.0;
    }
   }
  }
 }
} else {
 if(i22<1.0027821063995361){
  if(i16<0.004687995184212923){
   if(i40<0.04266005754470825){
    if(i14<0.9877378940582275){
     s0+=11.0;
    } else {
     s0+=71.0;
     s1+=679.0;
    }
   } else {
    if(i6<-1.2284267540962901e-05){
     s0+=494.0;
     s1+=428.0;
    } else {
     s0+=1009.0;
     s1+=96.0;
    }
   }
  } else {
   if(i73<1.3039709756412776e-06){
    if(i0<0.08946084976196289){
     s0+=106.0;
     s1+=64.0;
    } else {
     s0+=101.0;
     s1+=2569.0;
    }
   } else {
    s0+=79.0;
   }
  }
 } else {
  if(i1<0.08273211121559143){
   if(i6<-7.270733476616442e-05){
    if(i67<-0.0008550273487344384){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   } else {
    if(i42<0.0016538349445909262){
     s1+=15.0;
    } else {
     s0+=57.0;
     s1+=4.0;
    }
   }
  } else {
   if(i3<1.001805305480957){
    if(i18<0.026107940822839737){
     s0+=73.0;
     s1+=74.0;
    } else {
     s0+=5.0;
     s1+=399.0;
    }
   } else {
    if(i7<1.0629007816314697){
     s0+=13.0;
     s1+=261.0;
    } else {
     s0+=31.0;
     s1+=7776.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i36<0.03706105798482895){
  if(i3<1.0024782419204712){
   if(i1<0.07863450050354004){
    if(i52<-0.0026089847087860107){
     s0+=1007.0;
     s1+=394.0;
    } else {
     s0+=59900.0;
     s1+=523.0;
    }
   } else {
    if(i59<0.0025745928287506104){
     s0+=127.0;
     s1+=247.0;
    } else {
     s0+=493.0;
     s1+=97.0;
    }
   }
  } else {
   if(i66<1.0057405233383179){
    if(i39<0.00016969078569673002){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=21.0;
     s1+=410.0;
    }
   } else {
    s0+=12.0;
   }
  }
 } else {
  if(i6<-8.895844803191721e-05){
   if(i2<0.03636088967323303){
    if(i59<-0.006064087152481079){
     s0+=11.0;
     s1+=45.0;
    } else {
     s0+=324.0;
     s1+=8.0;
    }
   } else {
    if(i24<1.0983526706695557){
     s0+=62.0;
     s1+=97.0;
    } else {
     s0+=30.0;
     s1+=1615.0;
    }
   }
  } else {
   if(i25<0.971622109413147){
    if(i1<0.08668991923332214){
     s0+=4047.0;
     s1+=124.0;
    } else {
     s0+=87.0;
     s1+=225.0;
    }
   } else {
    if(i2<0.06863322854042053){
     s0+=2875.0;
     s1+=657.0;
    } else {
     s0+=820.0;
     s1+=1598.0;
    }
   }
  }
 }
} else {
 if(i16<0.003223753534257412){
  if(i38<0.0013629414606839418){
   if(i34<1.089235782623291){
    s0+=46.0;
   } else {
    if(i34<1.2392117977142334){
     s0+=5.0;
     s1+=706.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i2<0.15514898300170898){
    if(i65<0.0012484195176512003){
     s0+=903.0;
     s1+=6.0;
    } else {
     s0+=141.0;
     s1+=57.0;
    }
   } else {
    if(i7<1.1870136260986328){
     s0+=12.0;
     s1+=244.0;
    } else {
     s0+=53.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i17<-1.0758638381958008e-05){
   if(i56<-8.431820788246114e-06){
    s1+=3.0;
   } else {
    s0+=104.0;
   }
  } else {
   if(i56<1.935438376676757e-06){
    if(i13<1.015415072441101){
     s0+=77.0;
     s1+=1552.0;
    } else {
     s0+=1.0;
     s1+=8398.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i1<0.07770967483520508){
 if(i48<-0.0015400052070617676){
  if(i50<0.00014856457710266113){
   if(i24<1.1462448835372925){
    if(i18<0.030317138880491257){
     s0+=1614.0;
     s1+=449.0;
    } else {
     s0+=120.0;
     s1+=156.0;
    }
   } else {
    if(i58<1.055970549583435){
     s0+=1742.0;
     s1+=63.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i15<1.0017681121826172){
    if(i21<0.0011943578720092773){
     s0+=485.0;
     s1+=84.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i2<0.01684609055519104){
     s0+=106.0;
     s1+=55.0;
    } else {
     s0+=26.0;
     s1+=540.0;
    }
   }
  }
 } else {
  if(i25<1.006333827972412){
   if(i18<0.014841577038168907){
    if(i30<0.0002812578168231994){
     s0+=44731.0;
     s1+=20.0;
    } else {
     s0+=9996.0;
     s1+=316.0;
    }
   } else {
    if(i4<-0.00021636486053466797){
     s0+=8064.0;
     s1+=331.0;
    } else {
     s0+=1002.0;
     s1+=495.0;
    }
   }
  } else {
   if(i4<0.000980973243713379){
    if(i33<0.0011279636528342962){
     s0+=205.0;
     s1+=353.0;
    } else {
     s0+=1063.0;
     s1+=53.0;
    }
   } else {
    if(i28<1.0781869888305664){
     s0+=2.0;
     s1+=266.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i11<1.0068771839141846){
  if(i22<1.000347375869751){
   if(i72<0.03164392709732056){
    if(i31<0.9987642765045166){
     s0+=137.0;
    } else {
     s0+=239.0;
     s1+=1141.0;
    }
   } else {
    if(i6<-1.0123767424374819e-05){
     s0+=275.0;
     s1+=360.0;
    } else {
     s0+=651.0;
     s1+=63.0;
    }
   }
  } else {
   if(i49<0.04909437894821167){
    if(i18<0.013311333954334259){
     s0+=44.0;
     s1+=157.0;
    } else {
     s0+=12.0;
     s1+=1778.0;
    }
   } else {
    if(i2<0.13584333658218384){
     s0+=300.0;
     s1+=70.0;
    } else {
     s0+=89.0;
     s1+=1157.0;
    }
   }
  }
 } else {
  if(i15<0.9999194741249084){
   if(i31<0.9997648000717163){
    s1+=294.0;
   } else {
    if(i37<0.001231062808074057){
     s0+=42.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i12<5.632638931274414e-05){
    if(i75<7.63393472880125e-05){
     s0+=21.0;
     s1+=17.0;
    } else {
     s0+=4.0;
     s1+=173.0;
    }
   } else {
    if(i12<0.00021082162857055664){
     s0+=13.0;
     s1+=891.0;
    } else {
     s1+=7915.0;
    }
   }
  }
 }
}
if(i26<1.0100464820861816){
 if(i6<-4.974954208591953e-05){
  if(i7<1.0409984588623047){
   if(i58<0.13263823091983795){
    if(i31<1.0004756450653076){
     s0+=311.0;
    } else {
     s0+=43.0;
     s1+=143.0;
    }
   } else {
    if(i0<0.08711674809455872){
     s0+=1179.0;
     s1+=5.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i0<0.05143377184867859){
    if(i49<-0.024809658527374268){
     s0+=100.0;
     s1+=321.0;
    } else {
     s0+=324.0;
     s1+=45.0;
    }
   } else {
    if(i10<-0.00036975741386413574){
     s0+=23.0;
     s1+=7.0;
    } else {
     s0+=180.0;
     s1+=2955.0;
    }
   }
  }
 } else {
  if(i39<0.0003070179664064199){
   if(i52<-0.0028385519981384277){
    if(i53<0.00021730861044488847){
     s0+=100.0;
    } else {
     s0+=153.0;
     s1+=125.0;
    }
   } else {
    if(i1<0.09079620242118835){
     s0+=56178.0;
     s1+=391.0;
    } else {
     s0+=16.0;
     s1+=59.0;
    }
   }
  } else {
   if(i0<0.07751241326332092){
    if(i34<1.100754976272583){
     s0+=2451.0;
     s1+=741.0;
    } else {
     s0+=6460.0;
     s1+=253.0;
    }
   } else {
    if(i15<0.9985202550888062){
     s0+=333.0;
     s1+=12.0;
    } else {
     s0+=395.0;
     s1+=1041.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005329549312591553){
  if(i11<1.006690502166748){
   if(i0<0.08421045541763306){
    if(i6<-2.7568294171942398e-05){
     s0+=236.0;
     s1+=198.0;
    } else {
     s0+=1337.0;
     s1+=46.0;
    }
   } else {
    if(i40<0.05198517441749573){
     s0+=70.0;
     s1+=655.0;
    } else {
     s0+=599.0;
     s1+=491.0;
    }
   }
  } else {
   if(i43<1.274404764175415){
    if(i1<0.07407978177070618){
     s0+=235.0;
     s1+=65.0;
    } else {
     s0+=82.0;
     s1+=734.0;
    }
   } else {
    if(i6<-3.9666298107476905e-05){
     s1+=949.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i41<1.337784767150879){
   if(i23<0.9991837739944458){
    if(i70<0.1010989174246788){
     s0+=220.0;
     s1+=61.0;
    } else {
     s0+=4.0;
     s1+=98.0;
    }
   } else {
    if(i2<0.07046622037887573){
     s0+=57.0;
     s1+=59.0;
    } else {
     s0+=36.0;
     s1+=1997.0;
    }
   }
  } else {
   if(i0<0.08034554123878479){
    if(i19<1.0092871189117432){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i2<0.117348313331604){
     s0+=2.0;
     s1+=25.0;
    } else {
     s1+=5619.0;
    }
   }
  }
 }
}
if(i3<1.0024135112762451){
 if(i44<1.0116682052612305){
  if(i1<0.07712078094482422){
   if(i48<-0.0015752315521240234){
    if(i38<0.0016580200754106045){
     s0+=1210.0;
     s1+=501.0;
    } else {
     s0+=2711.0;
     s1+=328.0;
    }
   } else {
    if(i20<1.0103588104248047){
     s0+=62971.0;
     s1+=1015.0;
    } else {
     s0+=262.0;
     s1+=147.0;
    }
   }
  } else {
   if(i10<-0.00037357211112976074){
    if(i10<-0.0004337131977081299){
     s0+=290.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=10.0;
    }
   } else {
    if(i51<0.049348533153533936){
     s0+=17.0;
     s1+=1242.0;
    } else {
     s0+=223.0;
     s1+=439.0;
    }
   }
  }
 } else {
  if(i32<-0.00021940184524282813){
   if(i1<0.09636646509170532){
    if(i41<1.1040980815887451){
     s0+=179.0;
     s1+=195.0;
    } else {
     s0+=922.0;
     s1+=41.0;
    }
   } else {
    if(i16<0.0017118009272962809){
     s0+=166.0;
     s1+=55.0;
    } else {
     s0+=211.0;
     s1+=1541.0;
    }
   }
  } else {
   if(i3<0.9992711544036865){
    if(i18<0.029003020375967026){
     s0+=802.0;
     s1+=9.0;
    } else {
     s0+=124.0;
     s1+=39.0;
    }
   } else {
    if(i33<0.0003179670893587172){
     s0+=183.0;
    } else {
     s0+=376.0;
     s1+=300.0;
    }
   }
  }
 }
} else {
 if(i16<0.0020571204368025064){
  if(i63<-2.987684820254799e-05){
   s1+=136.0;
  } else {
   if(i37<0.0008052448974922299){
    if(i14<1.0042835474014282){
     s0+=23.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i34<1.3947240114212036){
     s0+=205.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i2<0.05714097619056702){
   if(i69<0.00013652790221385658){
    s0+=14.0;
   } else {
    if(i39<0.001986755058169365){
     s0+=20.0;
     s1+=243.0;
    } else {
     s0+=33.0;
     s1+=93.0;
    }
   }
  } else {
   if(i1<0.1316651701927185){
    if(i57<-0.018275186419487){
     s0+=63.0;
     s1+=57.0;
    } else {
     s0+=27.0;
     s1+=1785.0;
    }
   } else {
    if(i11<1.0050253868103027){
     s0+=7.0;
     s1+=1037.0;
    } else {
     s1+=7953.0;
    }
   }
  }
 }
}
if(i0<0.08314955234527588){
 if(i4<0.0006384849548339844){
  if(i24<1.0451585054397583){
   if(i62<0.0021552634425461292){
    if(i52<-0.0023250579833984375){
     s0+=747.0;
     s1+=56.0;
    } else {
     s0+=52495.0;
     s1+=90.0;
    }
   } else {
    if(i74<0.05352358892560005){
     s0+=220.0;
     s1+=64.0;
    } else {
     s0+=689.0;
     s1+=9.0;
    }
   }
  } else {
   if(i41<1.103413462638855){
    if(i30<0.00046037728316150606){
     s0+=2796.0;
     s1+=289.0;
    } else {
     s0+=1209.0;
     s1+=1115.0;
    }
   } else {
    if(i59<-0.0027083754539489746){
     s0+=1224.0;
     s1+=260.0;
    } else {
     s0+=9873.0;
     s1+=245.0;
    }
   }
  }
 } else {
  if(i56<-1.4116389138507657e-05){
   if(i37<0.008506896905601025){
    if(i60<4.659742444346193e-06){
     s0+=4.0;
     s1+=697.0;
    } else {
     s0+=29.0;
     s1+=121.0;
    }
   } else {
    if(i7<1.124276876449585){
     s0+=90.0;
     s1+=15.0;
    } else {
     s1+=78.0;
    }
   }
  } else {
   if(i64<-0.001250624656677246){
    if(i38<0.004417781718075275){
     s1+=17.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i35<0.009771030396223068){
     s0+=146.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3797138308291323e-05){
  if(i21<0.0007980465888977051){
   if(i59<0.002789437770843506){
    if(i54<0.027642041444778442){
     s0+=38.0;
     s1+=2190.0;
    } else {
     s0+=56.0;
     s1+=150.0;
    }
   } else {
    if(i65<0.0014319648034870625){
     s0+=539.0;
     s1+=1162.0;
    } else {
     s0+=22.0;
     s1+=763.0;
    }
   }
  } else {
   if(i0<0.09510040283203125){
    if(i51<0.05393105745315552){
     s0+=1.0;
     s1+=265.0;
    } else {
     s0+=19.0;
     s1+=4.0;
    }
   } else {
    if(i34<1.2648893594741821){
     s0+=22.0;
     s1+=1520.0;
    } else {
     s1+=7495.0;
    }
   }
  }
 } else {
  if(i40<0.049601614475250244){
   if(i61<0.9995722770690918){
    s0+=99.0;
   } else {
    if(i46<0.06723582744598389){
     s0+=7.0;
     s1+=186.0;
    } else {
     s0+=38.0;
     s1+=68.0;
    }
   }
  } else {
   if(i17<2.4616718292236328e-05){
    if(i53<0.0004660844278987497){
     s0+=719.0;
     s1+=45.0;
    } else {
     s0+=164.0;
     s1+=65.0;
    }
   } else {
    s1+=23.0;
   }
  }
 }
}
if(i2<0.08416828513145447){
 if(i3<1.0026404857635498){
  if(i0<0.06606307625770569){
   if(i49<-0.03105112910270691){
    if(i56<-4.950073162035551e-06){
     s0+=474.0;
     s1+=318.0;
    } else {
     s0+=1500.0;
     s1+=226.0;
    }
   } else {
    if(i62<0.0017735722940415144){
     s0+=60475.0;
     s1+=522.0;
    } else {
     s0+=3869.0;
     s1+=454.0;
    }
   }
  } else {
   if(i18<0.01452926266938448){
    if(i13<1.0092737674713135){
     s0+=1741.0;
     s1+=97.0;
    } else {
     s0+=52.0;
     s1+=58.0;
    }
   } else {
    if(i59<0.0008702278137207031){
     s0+=123.0;
     s1+=327.0;
    } else {
     s0+=689.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i27<0.00018719921354204416){
   if(i38<0.0007350931409746408){
    if(i0<0.045300960540771484){
     s0+=3.0;
    } else {
     s1+=13.0;
    }
   } else {
    s0+=83.0;
   }
  } else {
   if(i45<1.1877408027648926){
    if(i37<0.007367859128862619){
     s0+=8.0;
     s1+=757.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i62<0.0055505018681287766){
     s0+=171.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=154.0;
    }
   }
  }
 }
} else {
 if(i21<0.00023859739303588867){
  if(i18<0.022570330649614334){
   if(i40<0.045954227447509766){
    if(i10<-0.0004182159900665283){
     s0+=247.0;
     s1+=3.0;
    } else {
     s0+=53.0;
     s1+=449.0;
    }
   } else {
    if(i5<0.23536896705627441){
     s0+=845.0;
     s1+=125.0;
    } else {
     s0+=27.0;
     s1+=41.0;
    }
   }
  } else {
   if(i73<1.0180884828514536e-06){
    if(i43<1.0696015357971191){
     s0+=31.0;
    } else {
     s0+=348.0;
     s1+=3031.0;
    }
   } else {
    if(i39<0.001550643821246922){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=205.0;
    }
   }
  }
 } else {
  if(i15<0.9985833764076233){
   s0+=22.0;
  } else {
   if(i16<0.0016472353599965572){
    if(i66<0.9999185800552368){
     s0+=13.0;
     s1+=128.0;
    } else {
     s0+=105.0;
     s1+=2.0;
    }
   } else {
    if(i42<0.0003453522513154894){
     s0+=1.0;
    } else {
     s0+=40.0;
     s1+=10203.0;
    }
   }
  }
 }
}
if(i22<1.0025990009307861){
 if(i25<1.007649302482605){
  if(i9<1.0433766841888428){
   if(i54<-0.00612872838973999){
    if(i4<-0.0003044605255126953){
     s0+=1728.0;
     s1+=183.0;
    } else {
     s0+=699.0;
     s1+=417.0;
    }
   } else {
    if(i0<0.08468303084373474){
     s0+=60625.0;
     s1+=638.0;
    } else {
     s0+=99.0;
     s1+=289.0;
    }
   }
  } else {
   if(i31<0.9993607997894287){
    if(i22<1.0006346702575684){
     s0+=1418.0;
     s1+=31.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i6<-1.5905165128060617e-05){
     s0+=947.0;
     s1+=1536.0;
    } else {
     s0+=2396.0;
     s1+=414.0;
    }
   }
  }
 } else {
  if(i25<1.0341553688049316){
   if(i31<1.0001325607299805){
    if(i13<1.0107473134994507){
     s0+=448.0;
     s1+=196.0;
    } else {
     s0+=85.0;
     s1+=959.0;
    }
   } else {
    if(i37<0.0006277068750932813){
     s0+=59.0;
     s1+=369.0;
    } else {
     s0+=1014.0;
     s1+=315.0;
    }
   }
  } else {
   if(i73<-3.1218033313962223e-07){
    if(i33<0.003089416539296508){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=928.0;
    }
   } else {
    if(i22<0.9988330602645874){
     s0+=18.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i32<-0.0001293605746468529){
  if(i0<0.06623661518096924){
   if(i50<0.00018668174743652344){
    if(i70<0.12336075305938721){
     s0+=219.0;
     s1+=42.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i14<1.0004600286483765){
     s0+=80.0;
     s1+=39.0;
    } else {
     s0+=18.0;
     s1+=196.0;
    }
   }
  } else {
   if(i8<3.6776065826416016e-05){
    if(i47<0.0007606274448335171){
     s0+=42.0;
     s1+=10.0;
    } else {
     s0+=34.0;
     s1+=414.0;
    }
   } else {
    if(i69<1.2656475519179367e-05){
     s0+=2.0;
    } else {
     s0+=25.0;
     s1+=8704.0;
    }
   }
  }
 } else {
  if(i3<1.002596378326416){
   if(i10<0.0002110600471496582){
    if(i2<0.13351067900657654){
     s0+=507.0;
     s1+=4.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i31<1.0004346370697021){
     s0+=31.0;
     s1+=140.0;
    } else {
     s0+=546.0;
     s1+=167.0;
    }
   }
  } else {
   if(i8<6.222724914550781e-05){
    if(i19<0.995079755783081){
     s0+=6.0;
     s1+=55.0;
    } else {
     s0+=35.0;
     s1+=14.0;
    }
   } else {
    if(i37<0.010617179796099663){
     s0+=6.0;
     s1+=979.0;
    } else {
     s0+=30.0;
     s1+=51.0;
    }
   }
  }
 }
}
if(i6<-8.167879423126578e-05){
 if(i45<1.0611095428466797){
  s0+=163.0;
 } else {
  if(i0<0.03260982036590576){
   if(i49<-0.11708718538284302){
    if(i8<4.0471553802490234e-05){
     s0+=7.0;
     s1+=4.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i11<0.9973115921020508){
     s0+=442.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  } else {
   if(i1<0.08286300301551819){
    if(i54<0.008885949850082397){
     s0+=27.0;
     s1+=601.0;
    } else {
     s0+=97.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.12743261456489563){
     s0+=49.0;
     s1+=745.0;
    } else {
     s0+=17.0;
     s1+=9602.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005562901496887207){
  if(i46<0.06652304530143738){
   if(i27<0.0002805232652463019){
    if(i2<0.08219277858734131){
     s0+=51851.0;
     s1+=278.0;
    } else {
     s0+=155.0;
     s1+=64.0;
    }
   } else {
    if(i12<-0.0002091526985168457){
     s0+=8621.0;
     s1+=285.0;
    } else {
     s0+=7350.0;
     s1+=2627.0;
    }
   }
  } else {
   if(i56<3.442369461481576e-06){
    if(i2<0.11304759979248047){
     s0+=954.0;
     s1+=220.0;
    } else {
     s0+=542.0;
     s1+=1256.0;
    }
   } else {
    if(i71<0.9993982315063477){
     s0+=320.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i27<0.00019737060938496143){
   if(i7<1.0468157529830933){
    if(i1<0.06306934356689453){
     s0+=174.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<1.609325408935547e-05){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i4<0.0009366869926452637){
    if(i35<0.008645521476864815){
     s0+=156.0;
     s1+=133.0;
    } else {
     s0+=69.0;
     s1+=545.0;
    }
   } else {
    if(i6<-8.15664607216604e-05){
     s0+=3.0;
    } else {
     s0+=18.0;
     s1+=774.0;
    }
   }
  }
 }
}
if(i8<3.74913215637207e-05){
 if(i26<1.0100789070129395){
  if(i39<0.0003499566810205579){
   if(i36<0.030718792229890823){
    if(i19<1.0072804689407349){
     s0+=55505.0;
     s1+=412.0;
    } else {
     s0+=276.0;
     s1+=98.0;
    }
   } else {
    if(i42<0.000929362780880183){
     s0+=698.0;
     s1+=273.0;
    } else {
     s0+=1207.0;
     s1+=31.0;
    }
   }
  } else {
   if(i4<-0.0003101527690887451){
    if(i23<0.973746657371521){
     s0+=4557.0;
     s1+=114.0;
    } else {
     s0+=2773.0;
     s1+=601.0;
    }
   } else {
    if(i1<0.06412133574485779){
     s0+=2272.0;
     s1+=616.0;
    } else {
     s0+=388.0;
     s1+=1272.0;
    }
   }
  }
 } else {
  if(i6<-2.8301838028710335e-05){
   if(i0<0.0923108160495758){
    if(i10<0.0002995133399963379){
     s0+=128.0;
     s1+=274.0;
    } else {
     s0+=335.0;
     s1+=49.0;
    }
   } else {
    if(i42<0.002024947665631771){
     s0+=5.0;
     s1+=668.0;
    } else {
     s0+=123.0;
     s1+=852.0;
    }
   }
  } else {
   if(i16<0.003444085828959942){
    if(i5<0.21551024913787842){
     s0+=1793.0;
     s1+=66.0;
    } else {
     s0+=58.0;
     s1+=70.0;
    }
   } else {
    if(i34<1.255998969078064){
     s0+=4.0;
     s1+=144.0;
    } else {
     s0+=197.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i24<1.0413084030151367){
  if(i75<9.025424515129998e-05){
   s1+=1.0;
  } else {
   s0+=318.0;
  }
 } else {
  if(i2<0.06957119703292847){
   if(i47<0.0008866193820722401){
    if(i44<0.9920483827590942){
     s1+=15.0;
    } else {
     s0+=99.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.5682398080825806){
     s0+=36.0;
     s1+=553.0;
    } else {
     s0+=117.0;
     s1+=65.0;
    }
   }
  } else {
   if(i12<-9.447336196899414e-05){
    if(i18<0.02669510245323181){
     s0+=62.0;
     s1+=74.0;
    } else {
     s0+=31.0;
     s1+=616.0;
    }
   } else {
    if(i4<-0.00010877847671508789){
     s0+=6.0;
    } else {
     s0+=66.0;
     s1+=10314.0;
    }
   }
  }
 }
}
if(i1<0.07663694024085999){
 if(i49<-0.028004169464111328){
  if(i56<-1.4545254089171067e-05){
   if(i60<1.2476759366109036e-05){
    if(i52<0.003271162509918213){
     s0+=7.0;
     s1+=446.0;
    } else {
     s0+=25.0;
     s1+=7.0;
    }
   } else {
    if(i1<0.013944029808044434){
     s0+=228.0;
     s1+=14.0;
    } else {
     s0+=64.0;
     s1+=163.0;
    }
   }
  } else {
   if(i0<0.025642752647399902){
    if(i37<0.00036064948653802276){
     s0+=687.0;
    } else {
     s0+=1074.0;
     s1+=182.0;
    }
   } else {
    if(i33<0.0011852530296891928){
     s0+=131.0;
     s1+=222.0;
    } else {
     s0+=302.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i4<0.0006833970546722412){
   if(i36<0.026243435218930244){
    if(i13<1.0081672668457031){
     s0+=56108.0;
     s1+=484.0;
    } else {
     s0+=122.0;
     s1+=132.0;
    }
   } else {
    if(i34<1.100754976272583){
     s0+=2134.0;
     s1+=693.0;
    } else {
     s0+=7962.0;
     s1+=177.0;
    }
   }
  } else {
   if(i38<0.002438970375806093){
    if(i30<0.00022894925496075302){
     s0+=40.0;
    } else {
     s0+=6.0;
     s1+=493.0;
    }
   } else {
    if(i48<-0.003265291452407837){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=155.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i6<-1.4540169104293454e-05){
  if(i18<0.02790466696023941){
   if(i12<9.66191291809082e-05){
    if(i57<-0.017501644790172577){
     s0+=344.0;
     s1+=223.0;
    } else {
     s0+=191.0;
     s1+=828.0;
    }
   } else {
    if(i4<5.459785461425781e-05){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=50.0;
     s1+=2588.0;
    }
   }
  } else {
   if(i1<0.10090082883834839){
    if(i51<0.058933407068252563){
     s0+=12.0;
     s1+=414.0;
    } else {
     s0+=78.0;
     s1+=59.0;
    }
   } else {
    if(i66<0.9953998923301697){
     s0+=3.0;
    } else {
     s0+=63.0;
     s1+=9543.0;
    }
   }
  }
 } else {
  if(i51<0.05316463112831116){
   if(i60<2.035643410636112e-05){
    if(i44<1.0156447887420654){
     s0+=4.0;
     s1+=216.0;
    } else {
     s0+=18.0;
     s1+=15.0;
    }
   } else {
    if(i16<0.007261242717504501){
     s0+=90.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.005282765254378319){
    if(i13<1.0251742601394653){
     s0+=985.0;
     s1+=94.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i60<1.7921262042364106e-05){
     s0+=61.0;
     s1+=96.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i3<1.0024352073669434){
 if(i1<0.08395969867706299){
  if(i18<0.017024660483002663){
   if(i52<-0.0023458898067474365){
    if(i38<0.0015613820869475603){
     s0+=923.0;
     s1+=365.0;
    } else {
     s0+=1637.0;
     s1+=64.0;
    }
   } else {
    if(i6<-4.358176374807954e-05){
     s0+=639.0;
     s1+=121.0;
    } else {
     s0+=56574.0;
     s1+=298.0;
    }
   }
  } else {
   if(i11<0.990065336227417){
    if(i59<-0.002893507480621338){
     s0+=455.0;
     s1+=141.0;
    } else {
     s0+=6560.0;
     s1+=50.0;
    }
   } else {
    if(i50<-3.185868263244629e-05){
     s0+=1212.0;
     s1+=90.0;
    } else {
     s0+=1376.0;
     s1+=1150.0;
    }
   }
  }
 } else {
  if(i10<-0.00041115283966064453){
   if(i12<-0.00048235058784484863){
    if(i76<0.9889630675315857){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=345.0;
   }
  } else {
   if(i16<0.0016115106409415603){
    if(i66<0.9998023509979248){
     s0+=61.0;
     s1+=125.0;
    } else {
     s0+=421.0;
     s1+=73.0;
    }
   } else {
    if(i48<0.004473268985748291){
     s0+=87.0;
     s1+=2097.0;
    } else {
     s0+=457.0;
     s1+=1113.0;
    }
   }
  }
 }
} else {
 if(i0<0.06267303228378296){
  if(i59<-0.0019291043281555176){
   if(i26<1.017494559288025){
    if(i66<1.0019254684448242){
     s0+=7.0;
     s1+=304.0;
    } else {
     s0+=11.0;
     s1+=16.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i50<0.00017911195755004883){
    if(i43<1.1386182308197021){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=154.0;
    }
   } else {
    if(i41<1.2160736322402954){
     s0+=12.0;
     s1+=103.0;
    } else {
     s0+=45.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i11<1.0096521377563477){
   if(i1<0.11356890201568604){
    if(i76<1.0290566682815552){
     s0+=50.0;
     s1+=615.0;
    } else {
     s0+=68.0;
     s1+=30.0;
    }
   } else {
    if(i6<-4.161027754889801e-05){
     s0+=20.0;
     s1+=1721.0;
    } else {
     s0+=9.0;
     s1+=60.0;
    }
   }
  } else {
   if(i27<0.00028193602338433266){
    if(i69<0.00011471097241155803){
     s0+=3.0;
    } else {
     s1+=83.0;
    }
   } else {
    s1+=8461.0;
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i24<1.0494916439056396){
  if(i25<1.0073940753936768){
   if(i55<-0.0005171895027160645){
    if(i11<0.9901217222213745){
     s0+=6725.0;
     s1+=33.0;
    } else {
     s0+=1568.0;
     s1+=323.0;
    }
   } else {
    if(i19<1.0119974613189697){
     s0+=48104.0;
     s1+=98.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i60<5.7028705668926705e-06){
    s0+=4.0;
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i13<1.0107730627059937){
   if(i0<0.07580173015594482){
    if(i4<-0.0003166794776916504){
     s0+=6431.0;
     s1+=317.0;
    } else {
     s0+=5619.0;
     s1+=1050.0;
    }
   } else {
    if(i4<-0.0008054077625274658){
     s0+=311.0;
     s1+=119.0;
    } else {
     s0+=1038.0;
     s1+=2135.0;
    }
   }
  } else {
   if(i0<0.08225876092910767){
    if(i45<1.0950405597686768){
     s1+=96.0;
    } else {
     s0+=344.0;
     s1+=50.0;
    }
   } else {
    if(i28<1.090121865272522){
     s0+=31.0;
     s1+=798.0;
    } else {
     s0+=248.0;
     s1+=460.0;
    }
   }
  }
 }
} else {
 if(i24<1.0413084030151367){
  if(i2<0.08388888835906982){
   if(i70<0.01397530548274517){
    s0+=197.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i2<0.059265196323394775){
   if(i56<-1.4669136362499557e-05){
    if(i64<0.0014969110488891602){
     s0+=55.0;
     s1+=406.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   } else {
    if(i69<0.0005551257636398077){
     s0+=98.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i12<-9.775161743164062e-06){
    if(i24<1.12269127368927){
     s0+=124.0;
     s1+=256.0;
    } else {
     s0+=24.0;
     s1+=899.0;
    }
   } else {
    if(i6<-4.32968299719505e-05){
     s0+=15.0;
     s1+=10005.0;
    } else {
     s0+=72.0;
     s1+=130.0;
    }
   }
  }
 }
}
if(i25<1.007971167564392){
 if(i1<0.08162105083465576){
  if(i7<1.0451608896255493){
   if(i67<0.008005918003618717){
    if(i39<0.0002762996300589293){
     s0+=52727.0;
     s1+=270.0;
    } else {
     s0+=8272.0;
     s1+=451.0;
    }
   } else {
    if(i4<0.0005369782447814941){
     s0+=1065.0;
     s1+=150.0;
    } else {
     s0+=2.0;
     s1+=37.0;
    }
   }
  } else {
   if(i36<0.03035837970674038){
    if(i6<-6.904714973643422e-05){
     s0+=25.0;
     s1+=81.0;
    } else {
     s0+=3951.0;
     s1+=340.0;
    }
   } else {
    if(i57<-0.009255691431462765){
     s0+=955.0;
     s1+=104.0;
    } else {
     s0+=1264.0;
     s1+=1047.0;
    }
   }
  }
 } else {
  if(i40<0.05407917499542236){
   if(i17<-1.913309097290039e-05){
    s0+=84.0;
   } else {
    if(i40<0.0378478467464447){
     s0+=4.0;
     s1+=2195.0;
    } else {
     s0+=103.0;
     s1+=568.0;
    }
   }
  } else {
   if(i33<0.005325671285390854){
    if(i22<1.0034561157226562){
     s0+=808.0;
     s1+=203.0;
    } else {
     s0+=31.0;
     s1+=95.0;
    }
   } else {
    if(i16<0.008431247435510159){
     s0+=110.0;
     s1+=176.0;
    } else {
     s0+=14.0;
     s1+=526.0;
    }
   }
  }
 }
} else {
 if(i33<0.00645595695823431){
  if(i8<3.3915042877197266e-05){
   if(i16<0.0036398223601281643){
    if(i34<1.1108002662658691){
     s0+=132.0;
     s1+=366.0;
    } else {
     s0+=1281.0;
     s1+=42.0;
    }
   } else {
    if(i45<1.2954777479171753){
     s0+=2.0;
     s1+=628.0;
    } else {
     s0+=131.0;
    }
   }
  } else {
   if(i6<-4.414974318933673e-05){
    if(i66<1.003111481666565){
     s0+=20.0;
     s1+=2280.0;
    } else {
     s0+=28.0;
     s1+=71.0;
    }
   } else {
    if(i45<1.1204545497894287){
     s1+=82.0;
    } else {
     s0+=129.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i38<0.008706342428922653){
   if(i1<0.13319233059883118){
    if(i66<1.0004160404205322){
     s1+=26.0;
    } else {
     s0+=28.0;
     s1+=2.0;
    }
   } else {
    if(i16<0.0019430698594078422){
     s0+=4.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=1080.0;
    }
   }
  } else {
   if(i24<1.1235179901123047){
    if(i28<1.115952968597412){
     s1+=77.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=6140.0;
   }
  }
 }
}
if(i17<1.627206802368164e-05){
 if(i7<1.0469921827316284){
  if(i39<0.00030417158268392086){
   if(i65<0.0008439854718744755){
    if(i44<1.0145108699798584){
     s0+=53502.0;
     s1+=216.0;
    } else {
     s0+=37.0;
     s1+=22.0;
    }
   } else {
    if(i41<1.1013743877410889){
     s0+=353.0;
     s1+=143.0;
    } else {
     s0+=410.0;
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.0765518844127655){
    if(i68<-0.001856852089986205){
     s0+=3953.0;
     s1+=27.0;
    } else {
     s0+=3298.0;
     s1+=488.0;
    }
   } else {
    if(i22<0.9959939122200012){
     s0+=74.0;
     s1+=6.0;
    } else {
     s0+=61.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i4<0.00014922022819519043){
   if(i63<2.4618157112854533e-05){
    if(i37<0.0006424858001992106){
     s0+=2296.0;
     s1+=88.0;
    } else {
     s0+=651.0;
     s1+=247.0;
    }
   } else {
    if(i8<-1.7702579498291016e-05){
     s0+=2930.0;
     s1+=759.0;
    } else {
     s0+=524.0;
     s1+=1210.0;
    }
   }
  } else {
   if(i0<0.06555318832397461){
    if(i34<1.1039612293243408){
     s0+=79.0;
     s1+=139.0;
    } else {
     s0+=410.0;
     s1+=36.0;
    }
   } else {
    if(i18<0.027057500556111336){
     s0+=255.0;
     s1+=930.0;
    } else {
     s0+=30.0;
     s1+=1389.0;
    }
   }
  }
 }
} else {
 if(i23<1.0063711404800415){
  if(i16<0.005191958509385586){
   if(i2<0.08805540204048157){
    if(i32<2.19204794120742e-05){
     s0+=900.0;
     s1+=36.0;
    } else {
     s0+=47.0;
     s1+=43.0;
    }
   } else {
    if(i64<0.002552628517150879){
     s0+=31.0;
     s1+=142.0;
    } else {
     s0+=105.0;
     s1+=11.0;
    }
   }
  } else {
   if(i60<3.4045926440740004e-05){
    if(i21<-0.002331346273422241){
     s0+=198.0;
     s1+=194.0;
    } else {
     s0+=203.0;
     s1+=2347.0;
    }
   } else {
    if(i24<1.1204297542572021){
     s0+=352.0;
     s1+=7.0;
    } else {
     s0+=130.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i4<0.0004703998565673828){
   if(i18<0.028917651623487473){
    if(i1<0.09463724493980408){
     s0+=149.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i56<-1.0132086572411936e-05){
     s1+=84.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i9<1.0327413082122803){
    if(i47<0.0007483663503080606){
     s0+=46.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=66.0;
    }
   } else {
    if(i56<-1.4073981219553389e-05){
     s0+=36.0;
     s1+=8093.0;
    } else {
     s0+=35.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i20<1.0099639892578125){
 if(i7<1.0470023155212402){
  if(i0<0.08023625612258911){
   if(i15<1.001828908920288){
    if(i62<0.001622648211196065){
     s0+=58532.0;
     s1+=454.0;
    } else {
     s0+=3653.0;
     s1+=437.0;
    }
   } else {
    if(i60<1.9088740373263136e-05){
     s0+=37.0;
     s1+=126.0;
    } else {
     s0+=233.0;
     s1+=7.0;
    }
   }
  } else {
   if(i41<1.0703742504119873){
    if(i3<1.0008809566497803){
     s0+=180.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i51<0.05141943693161011){
     s0+=13.0;
     s1+=342.0;
    } else {
     s0+=108.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i15<1.0005106925964355){
   if(i16<0.00651895347982645){
    if(i2<0.08016949892044067){
     s0+=4048.0;
     s1+=495.0;
    } else {
     s0+=646.0;
     s1+=617.0;
    }
   } else {
    if(i25<0.9525933265686035){
     s0+=132.0;
     s1+=12.0;
    } else {
     s0+=17.0;
     s1+=321.0;
    }
   }
  } else {
   if(i62<0.002545702736824751){
    if(i2<0.0865468680858612){
     s0+=943.0;
     s1+=353.0;
    } else {
     s0+=108.0;
     s1+=717.0;
    }
   } else {
    if(i0<0.013983547687530518){
     s0+=137.0;
     s1+=56.0;
    } else {
     s0+=98.0;
     s1+=2178.0;
    }
   }
  }
 }
} else {
 if(i14<1.0026004314422607){
  if(i33<0.006460351869463921){
   if(i4<0.00048100948333740234){
    if(i47<0.0019424010533839464){
     s0+=1669.0;
     s1+=559.0;
    } else {
     s0+=79.0;
     s1+=356.0;
    }
   } else {
    if(i2<0.11061209440231323){
     s0+=65.0;
     s1+=43.0;
    } else {
     s0+=35.0;
     s1+=317.0;
    }
   }
  } else {
   if(i24<1.1350657939910889){
    if(i61<0.9999301433563232){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=108.0;
     s1+=5.0;
    }
   } else {
    if(i5<0.1453413963317871){
     s0+=24.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=1133.0;
    }
   }
  }
 } else {
  if(i15<1.0016794204711914){
   if(i66<1.0013446807861328){
    if(i33<0.005797132384032011){
     s0+=168.0;
     s1+=716.0;
    } else {
     s1+=811.0;
    }
   } else {
    if(i74<0.026972675696015358){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   }
  } else {
   if(i16<0.00033010132028721273){
    s0+=3.0;
   } else {
    if(i11<1.0058778524398804){
     s0+=26.0;
     s1+=316.0;
    } else {
     s1+=6602.0;
    }
   }
  }
 }
}
if(i26<1.010343074798584){
 if(i14<1.0042946338653564){
  if(i62<0.0019976231269538403){
   if(i36<0.03042060136795044){
    if(i13<1.0076875686645508){
     s0+=56783.0;
     s1+=504.0;
    } else {
     s0+=100.0;
     s1+=123.0;
    }
   } else {
    if(i11<0.9901293516159058){
     s0+=4303.0;
     s1+=163.0;
    } else {
     s0+=1589.0;
     s1+=1143.0;
    }
   }
  } else {
   if(i1<0.061063677072525024){
    if(i17<2.4974346160888672e-05){
     s0+=4369.0;
     s1+=624.0;
    } else {
     s0+=143.0;
     s1+=164.0;
    }
   } else {
    if(i54<0.006053805351257324){
     s0+=235.0;
     s1+=1283.0;
    } else {
     s0+=195.0;
     s1+=135.0;
    }
   }
  }
 } else {
  if(i16<0.0016372899990528822){
   if(i66<0.9995822906494141){
    if(i47<0.0006017495761625469){
     s0+=5.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i47<0.0006690642330795527){
     s0+=331.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   }
  } else {
   if(i7<1.0340505838394165){
    if(i17<1.4662742614746094e-05){
     s0+=45.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i31<0.9994468688964844){
     s0+=58.0;
    } else {
     s0+=36.0;
     s1+=2129.0;
    }
   }
  }
 }
} else {
 if(i16<0.0033421688713133335){
  if(i21<0.0014307498931884766){
   if(i13<1.0253968238830566){
    if(i9<1.0611401796340942){
     s0+=573.0;
     s1+=292.0;
    } else {
     s0+=1598.0;
     s1+=139.0;
    }
   } else {
    if(i30<0.015225107781589031){
     s0+=3.0;
     s1+=68.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   s1+=476.0;
  }
 } else {
  if(i31<0.9989315271377563){
   if(i24<1.398578405380249){
    if(i10<-0.000303119421005249){
     s0+=221.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i24<1.0657923221588135){
    if(i11<0.9994570016860962){
     s0+=119.0;
     s1+=24.0;
    } else {
     s0+=3.0;
     s1+=148.0;
    }
   } else {
    if(i19<1.0095374584197998){
     s0+=137.0;
     s1+=278.0;
    } else {
     s0+=123.0;
     s1+=9516.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i3<1.002493143081665){
  if(i0<0.08370915055274963){
   if(i18<0.013863257132470608){
    if(i76<0.9724776744842529){
     s0+=951.0;
     s1+=136.0;
    } else {
     s0+=52774.0;
     s1+=294.0;
    }
   } else {
    if(i75<0.00014426393317990005){
     s0+=5905.0;
     s1+=901.0;
    } else {
     s0+=5390.0;
     s1+=48.0;
    }
   }
  } else {
   if(i3<0.9956083297729492){
    if(i42<0.008401433005928993){
     s0+=103.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=12.0;
    }
   } else {
    if(i72<0.03712177276611328){
     s0+=12.0;
     s1+=510.0;
    } else {
     s0+=51.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i56<-1.4672929864900652e-05){
   if(i12<-0.0003713369369506836){
    if(i37<0.008987829089164734){
     s1+=2.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i5<0.012670040130615234){
     s0+=1.0;
     s1+=43.0;
    } else {
     s1+=612.0;
    }
   }
  } else {
   if(i0<0.06030690670013428){
    if(i44<0.9950523376464844){
     s1+=2.0;
    } else {
     s0+=101.0;
    }
   } else {
    if(i30<0.0003451454686000943){
     s0+=3.0;
    } else {
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i0<0.09197771549224854){
  if(i22<1.000556468963623){
   if(i34<1.1013743877410889){
    if(i66<1.000413417816162){
     s0+=885.0;
     s1+=266.0;
    } else {
     s0+=38.0;
     s1+=103.0;
    }
   } else {
    if(i16<0.006917156279087067){
     s0+=2777.0;
     s1+=163.0;
    } else {
     s0+=65.0;
     s1+=59.0;
    }
   }
  } else {
   if(i52<0.004275858402252197){
    if(i11<1.0061250925064087){
     s0+=376.0;
     s1+=545.0;
    } else {
     s0+=41.0;
     s1+=528.0;
    }
   } else {
    if(i4<0.0014567375183105469){
     s0+=458.0;
     s1+=29.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i14<1.0006675720214844){
   if(i56<-3.597644990804838e-06){
    if(i1<0.16610375046730042){
     s0+=359.0;
     s1+=773.0;
    } else {
     s0+=50.0;
     s1+=1600.0;
    }
   } else {
    if(i43<1.255998969078064){
     s0+=261.0;
     s1+=353.0;
    } else {
     s0+=358.0;
     s1+=52.0;
    }
   }
  } else {
   if(i11<1.0061652660369873){
    if(i6<-4.2621424654498696e-05){
     s0+=42.0;
     s1+=1167.0;
    } else {
     s0+=104.0;
     s1+=231.0;
    }
   } else {
    if(i4<0.00011882185935974121){
     s0+=9.0;
     s1+=13.0;
    } else {
     s0+=8.0;
     s1+=8544.0;
    }
   }
  }
 }
}
if(i1<0.07752794027328491){
 if(i3<1.0025529861450195){
  if(i30<0.00031217283685691655){
   if(i25<1.0079731941223145){
    if(i56<-1.3720928109250963e-05){
     s0+=316.0;
     s1+=13.0;
    } else {
     s0+=46922.0;
     s1+=49.0;
    }
   } else {
    if(i38<0.0014654280385002494){
     s1+=56.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i9<1.0348398685455322){
    if(i52<-0.0006663799285888672){
     s0+=5400.0;
     s1+=707.0;
    } else {
     s0+=9587.0;
     s1+=125.0;
    }
   } else {
    if(i43<1.1037919521331787){
     s0+=1486.0;
     s1+=836.0;
    } else {
     s0+=5251.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i56<-1.4415785699384287e-05){
   if(i45<1.2007768154144287){
    if(i27<0.00014111415657680482){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=886.0;
    }
   } else {
    if(i22<1.0052576065063477){
     s0+=49.0;
     s1+=23.0;
    } else {
     s0+=24.0;
     s1+=151.0;
    }
   }
  } else {
   if(i42<0.002068678382784128){
    s1+=33.0;
   } else {
    s0+=141.0;
   }
  }
 }
} else {
 if(i32<-0.00010877126624109223){
  if(i22<1.0003451108932495){
   if(i33<0.006447122897952795){
    if(i68<-0.00686555914580822){
     s0+=435.0;
     s1+=110.0;
    } else {
     s0+=308.0;
     s1+=1045.0;
    }
   } else {
    if(i2<0.13234597444534302){
     s0+=46.0;
     s1+=77.0;
    } else {
     s0+=10.0;
     s1+=1138.0;
    }
   }
  } else {
   if(i4<0.0006920695304870605){
    if(i54<0.01793310046195984){
     s0+=29.0;
     s1+=1014.0;
    } else {
     s0+=185.0;
     s1+=465.0;
    }
   } else {
    if(i1<0.13066041469573975){
     s0+=12.0;
     s1+=961.0;
    } else {
     s0+=1.0;
     s1+=7905.0;
    }
   }
  }
 } else {
  if(i51<0.05482393503189087){
   if(i31<0.9989080429077148){
    s0+=50.0;
   } else {
    if(i54<0.01263570785522461){
     s0+=12.0;
     s1+=732.0;
    } else {
     s0+=24.0;
     s1+=32.0;
    }
   }
  } else {
   if(i3<1.0013976097106934){
    if(i53<0.0007735503604635596){
     s0+=609.0;
     s1+=80.0;
    } else {
     s0+=121.0;
     s1+=97.0;
    }
   } else {
    if(i0<0.11361876130104065){
     s0+=46.0;
     s1+=39.0;
    } else {
     s0+=14.0;
     s1+=265.0;
    }
   }
  }
 }
}
if(i1<0.07771864533424377){
 if(i10<0.000634312629699707){
  if(i39<0.0002993344678543508){
   if(i25<1.0077142715454102){
    if(i64<-0.0021684467792510986){
     s0+=94.0;
     s1+=103.0;
    } else {
     s0+=55936.0;
     s1+=409.0;
    }
   } else {
    if(i74<0.020377371460199356){
     s0+=19.0;
     s1+=158.0;
    } else {
     s0+=497.0;
     s1+=12.0;
    }
   }
  } else {
   if(i14<0.9944708347320557){
    if(i57<-0.006941773928701878){
     s0+=4582.0;
     s1+=51.0;
    } else {
     s0+=2220.0;
     s1+=124.0;
    }
   } else {
    if(i63<3.198266131221317e-05){
     s0+=3650.0;
     s1+=412.0;
    } else {
     s0+=1623.0;
     s1+=983.0;
    }
   }
  }
 } else {
  if(i23<1.0033763647079468){
   if(i12<-0.0003343522548675537){
    if(i59<-0.006331264972686768){
     s1+=35.0;
    } else {
     s0+=384.0;
     s1+=23.0;
    }
   } else {
    if(i35<0.013990459032356739){
     s0+=141.0;
     s1+=87.0;
    } else {
     s0+=58.0;
     s1+=232.0;
    }
   }
  } else {
   if(i63<6.153815775178373e-05){
    if(i43<1.0657644271850586){
     s0+=5.0;
    } else {
     s1+=632.0;
    }
   } else {
    if(i66<1.002289056777954){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=31.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i2<0.11255711317062378){
  if(i76<1.0259730815887451){
   if(i46<0.06423646211624146){
    if(i61<0.9994072914123535){
     s0+=18.0;
    } else {
     s0+=50.0;
     s1+=1191.0;
    }
   } else {
    if(i59<0.0036226511001586914){
     s0+=185.0;
     s1+=271.0;
    } else {
     s0+=267.0;
     s1+=31.0;
    }
   }
  } else {
   if(i54<0.014474630355834961){
    if(i26<1.0108789205551147){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=97.0;
    }
   } else {
    if(i15<1.0036227703094482){
     s0+=430.0;
     s1+=14.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i10<-0.0004030168056488037){
   if(i43<1.434314250946045){
    if(i61<0.9999673962593079){
     s0+=272.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i69<0.00017000598018057644){
    if(i51<0.0877084732055664){
     s0+=16.0;
     s1+=422.0;
    } else {
     s0+=229.0;
     s1+=84.0;
    }
   } else {
    if(i0<0.17014861106872559){
     s0+=241.0;
     s1+=2411.0;
    } else {
     s0+=34.0;
     s1+=9380.0;
    }
   }
  }
 }
}
if(i3<1.0024912357330322){
 if(i29<1.0081638097763062){
  if(i34<1.0850647687911987){
   s0+=38416.0;
  } else {
   if(i5<0.07210132479667664){
    if(i27<0.0002871057949960232){
     s0+=17313.0;
     s1+=199.0;
    } else {
     s0+=11611.0;
     s1+=1922.0;
    }
   } else {
    if(i6<-6.460102667915635e-06){
     s0+=520.0;
     s1+=1609.0;
    } else {
     s0+=535.0;
     s1+=120.0;
    }
   }
  }
 } else {
  if(i35<0.025479737669229507){
   if(i1<0.07922449707984924){
    if(i30<0.0007636518566869199){
     s0+=275.0;
     s1+=306.0;
    } else {
     s0+=1557.0;
     s1+=59.0;
    }
   } else {
    if(i51<0.059477537870407104){
     s0+=21.0;
     s1+=554.0;
    } else {
     s0+=461.0;
     s1+=303.0;
    }
   }
  } else {
   if(i17<-1.5616416931152344e-05){
    s0+=59.0;
   } else {
    if(i21<-0.0033205747604370117){
     s0+=64.0;
     s1+=16.0;
    } else {
     s0+=92.0;
     s1+=824.0;
    }
   }
  }
 }
} else {
 if(i27<0.00018719921354204416){
  if(i60<2.5687327251944225e-06){
   if(i6<-7.262259896378964e-05){
    s1+=2.0;
   } else {
    s0+=70.0;
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i0<0.07021626830101013){
   if(i38<0.0022725495509803295){
    s1+=341.0;
   } else {
    if(i47<0.001715787104330957){
     s0+=113.0;
     s1+=13.0;
    } else {
     s0+=36.0;
     s1+=205.0;
    }
   }
  } else {
   if(i42<0.005150961689651012){
    if(i41<1.2369153499603271){
     s0+=6.0;
     s1+=1899.0;
    } else {
     s0+=60.0;
     s1+=106.0;
    }
   } else {
    if(i1<0.1258956789970398){
     s0+=32.0;
     s1+=347.0;
    } else {
     s0+=7.0;
     s1+=8169.0;
    }
   }
  }
 }
}
if(i1<0.07751694321632385){
 if(i4<0.0006022751331329346){
  if(i24<1.0451585054397583){
   if(i54<-0.006227642297744751){
    if(i61<0.9998683929443359){
     s0+=214.0;
     s1+=52.0;
    } else {
     s0+=521.0;
     s1+=12.0;
    }
   } else {
    if(i39<0.00028981620562262833){
     s0+=48835.0;
     s1+=92.0;
    } else {
     s0+=4277.0;
     s1+=89.0;
    }
   }
  } else {
   if(i38<0.0016350378282368183){
    if(i64<-0.0015284419059753418){
     s0+=349.0;
     s1+=538.0;
    } else {
     s0+=5501.0;
     s1+=1035.0;
    }
   } else {
    if(i35<0.0486038438975811){
     s0+=8834.0;
     s1+=306.0;
    } else {
     s0+=47.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i50<0.00015547871589660645){
   if(i67<0.010202694684267044){
    if(i64<0.0006940960884094238){
     s0+=77.0;
     s1+=31.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   } else {
    if(i59<-2.2709369659423828e-05){
     s0+=1.0;
     s1+=43.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i22<1.001713514328003){
    if(i49<-0.054917484521865845){
     s1+=13.0;
    } else {
     s0+=70.0;
     s1+=25.0;
    }
   } else {
    if(i52<0.0033368468284606934){
     s0+=67.0;
     s1+=1011.0;
    } else {
     s0+=34.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010463595390319824){
  if(i50<-0.00013780593872070312){
   if(i16<0.00610341178253293){
    if(i30<0.0024259367492049932){
     s0+=134.0;
     s1+=26.0;
    } else {
     s0+=341.0;
     s1+=1.0;
    }
   } else {
    if(i75<0.00018467538757249713){
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i16<0.0013495204038918018){
    if(i63<3.7360536225605756e-05){
     s0+=402.0;
     s1+=3.0;
    } else {
     s0+=41.0;
     s1+=90.0;
    }
   } else {
    if(i6<-2.6482014163775602e-06){
     s0+=318.0;
     s1+=1650.0;
    } else {
     s0+=159.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i14<1.002117395401001){
   if(i18<0.02220289781689644){
    if(i39<0.0008826956618577242){
     s0+=53.0;
     s1+=275.0;
    } else {
     s0+=250.0;
     s1+=89.0;
    }
   } else {
    if(i57<-0.019372206181287766){
     s0+=118.0;
     s1+=909.0;
    } else {
     s0+=8.0;
     s1+=1150.0;
    }
   }
  } else {
   if(i42<0.0002694146241992712){
    s0+=2.0;
   } else {
    if(i2<0.1120515763759613){
     s0+=54.0;
     s1+=746.0;
    } else {
     s0+=37.0;
     s1+=9092.0;
    }
   }
  }
 }
}
if(i23<1.0070768594741821){
 if(i0<0.08524090051651001){
  if(i54<-0.005713969469070435){
   if(i50<-3.403425216674805e-05){
    if(i47<0.0005393227329477668){
     s0+=695.0;
     s1+=5.0;
    } else {
     s0+=1053.0;
     s1+=116.0;
    }
   } else {
    if(i8<2.2649765014648438e-05){
     s0+=1636.0;
     s1+=587.0;
    } else {
     s0+=55.0;
     s1+=381.0;
    }
   }
  } else {
   if(i3<1.0024787187576294){
    if(i7<1.0406912565231323){
     s0+=57226.0;
     s1+=364.0;
    } else {
     s0+=7055.0;
     s1+=769.0;
    }
   } else {
    if(i54<0.005092978477478027){
     s0+=47.0;
     s1+=141.0;
    } else {
     s0+=66.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i18<0.02612747624516487){
   if(i51<0.060342252254486084){
    if(i43<1.0670123100280762){
     s0+=56.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=568.0;
    }
   } else {
    if(i14<1.0019915103912354){
     s0+=794.0;
     s1+=161.0;
    } else {
     s0+=46.0;
     s1+=93.0;
    }
   }
  } else {
   if(i61<0.9995661973953247){
    if(i4<-0.0007070302963256836){
     s0+=179.0;
    } else {
     s0+=11.0;
     s1+=115.0;
    }
   } else {
    if(i65<0.0012527820654213428){
     s0+=170.0;
     s1+=1578.0;
    } else {
     s0+=26.0;
     s1+=1858.0;
    }
   }
  }
 }
} else {
 if(i8<3.3795833587646484e-05){
  if(i9<1.0410068035125732){
   if(i41<1.0862454175949097){
    if(i34<1.089235782623291){
     s0+=38.0;
     s1+=5.0;
    } else {
     s1+=60.0;
    }
   } else {
    if(i53<-0.00017523069982416928){
     s1+=12.0;
    } else {
     s0+=714.0;
     s1+=1.0;
    }
   }
  } else {
   if(i31<0.9998252391815186){
    if(i41<1.255998969078064){
     s0+=16.0;
     s1+=513.0;
    } else {
     s0+=146.0;
     s1+=84.0;
    }
   } else {
    if(i45<1.078540325164795){
     s1+=192.0;
    } else {
     s0+=832.0;
     s1+=432.0;
    }
   }
  }
 } else {
  if(i16<0.0022317501716315746){
   if(i56<-1.490806789661292e-05){
    if(i11<1.0076467990875244){
     s0+=3.0;
     s1+=3.0;
    } else {
     s1+=172.0;
    }
   } else {
    s0+=134.0;
   }
  } else {
   if(i16<0.00383553234860301){
    if(i64<0.0032144784927368164){
     s0+=7.0;
     s1+=502.0;
    } else {
     s0+=19.0;
     s1+=36.0;
    }
   } else {
    s1+=8436.0;
   }
  }
 }
}
if(i0<0.08532509207725525){
 if(i6<-4.987316424376331e-05){
  if(i41<1.2454195022583008){
   if(i66<0.9977935552597046){
    if(i24<1.0584006309509277){
     s0+=252.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i68<-0.004295306280255318){
     s0+=39.0;
     s1+=1.0;
    } else {
     s0+=67.0;
     s1+=888.0;
    }
   }
  } else {
   if(i6<-0.0001181033585453406){
    if(i23<0.9132589101791382){
     s0+=68.0;
    } else {
     s0+=43.0;
     s1+=240.0;
    }
   } else {
    if(i49<-0.049087584018707275){
     s0+=72.0;
     s1+=83.0;
    } else {
     s0+=1687.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i38<0.0003519622841849923){
   if(i19<1.0092799663543701){
    if(i20<1.006609559059143){
     s0+=39161.0;
     s1+=21.0;
    } else {
     s0+=336.0;
     s1+=8.0;
    }
   } else {
    if(i3<1.0008602142333984){
     s0+=24.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i43<1.103413462638855){
    if(i45<1.067455530166626){
     s0+=3758.0;
     s1+=156.0;
    } else {
     s0+=1310.0;
     s1+=1416.0;
    }
   } else {
    if(i48<-0.005193501710891724){
     s0+=1019.0;
     s1+=184.0;
    } else {
     s0+=21792.0;
     s1+=198.0;
    }
   }
  }
 }
} else {
 if(i6<-1.381049514748156e-05){
  if(i6<-4.207072197459638e-05){
   if(i7<1.1222549676895142){
    if(i57<-0.023151813074946404){
     s0+=140.0;
     s1+=179.0;
    } else {
     s0+=103.0;
     s1+=3976.0;
    }
   } else {
    if(i29<0.9693474173545837){
     s0+=7.0;
     s1+=528.0;
    } else {
     s0+=2.0;
     s1+=7489.0;
    }
   }
  } else {
   if(i46<0.06387624144554138){
    if(i4<-0.0007686614990234375){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=530.0;
    }
   } else {
    if(i34<1.2604451179504395){
     s0+=66.0;
     s1+=534.0;
    } else {
     s0+=303.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i50<-0.00013816356658935547){
   s0+=404.0;
  } else {
   if(i46<0.06701958179473877){
    if(i48<0.006879240274429321){
     s0+=5.0;
     s1+=185.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i38<0.005677706096321344){
     s0+=416.0;
     s1+=74.0;
    } else {
     s0+=75.0;
     s1+=123.0;
    }
   }
  }
 }
}
if(i4<0.0005462765693664551){
 if(i76<1.013131856918335){
  if(i62<0.0019798099528998137){
   if(i36<0.029534533619880676){
    if(i1<0.08938753604888916){
     s0+=56645.0;
     s1+=530.0;
    } else {
     s0+=53.0;
     s1+=163.0;
    }
   } else {
    if(i11<0.9901316165924072){
     s0+=4364.0;
     s1+=98.0;
    } else {
     s0+=1672.0;
     s1+=1011.0;
    }
   }
  } else {
   if(i35<0.04013325646519661){
    if(i8<-3.5762786865234375e-05){
     s0+=2544.0;
     s1+=190.0;
    } else {
     s0+=2431.0;
     s1+=1080.0;
    }
   } else {
    if(i3<0.9966648817062378){
     s0+=58.0;
     s1+=34.0;
    } else {
     s0+=16.0;
     s1+=331.0;
    }
   }
  }
 } else {
  if(i6<-2.5419891244382598e-05){
   if(i32<-0.00015959935262799263){
    if(i34<1.2392117977142334){
     s0+=4.0;
     s1+=852.0;
    } else {
     s0+=402.0;
     s1+=785.0;
    }
   } else {
    if(i68<-0.0038090189918875694){
     s0+=370.0;
     s1+=60.0;
    } else {
     s0+=22.0;
     s1+=54.0;
    }
   }
  } else {
   if(i42<0.0038824148941785097){
    if(i47<0.002222497947514057){
     s0+=1866.0;
     s1+=114.0;
    } else {
     s0+=21.0;
     s1+=35.0;
    }
   } else {
    if(i37<0.002389608882367611){
     s1+=107.0;
    } else {
     s0+=305.0;
     s1+=25.0;
    }
   }
  }
 }
} else {
 if(i39<0.00017408328130841255){
  if(i75<8.167164196493104e-05){
   s1+=27.0;
  } else {
   if(i2<0.07457354664802551){
    s0+=178.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i16<0.0023753298446536064){
   if(i14<1.011521339416504){
    if(i31<1.0008337497711182){
     s0+=123.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i23<1.0085517168045044){
     s0+=6.0;
     s1+=1.0;
    } else {
     s1+=172.0;
    }
   }
  } else {
   if(i0<0.08263787627220154){
    if(i11<0.9985259771347046){
     s0+=154.0;
     s1+=205.0;
    } else {
     s0+=22.0;
     s1+=705.0;
    }
   } else {
    if(i21<3.0934810638427734e-05){
     s0+=80.0;
     s1+=1105.0;
    } else {
     s0+=2.0;
     s1+=9179.0;
    }
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i12<0.0001507401466369629){
  if(i2<0.07855063676834106){
   if(i15<1.001828908920288){
    if(i52<-0.0017170906066894531){
     s0+=6511.0;
     s1+=946.0;
    } else {
     s0+=60577.0;
     s1+=812.0;
    }
   } else {
    if(i66<1.0022380352020264){
     s0+=218.0;
     s1+=394.0;
    } else {
     s0+=447.0;
     s1+=64.0;
    }
   }
  } else {
   if(i37<0.0004559876397252083){
    if(i3<1.0011980533599854){
     s0+=332.0;
     s1+=5.0;
    } else {
     s0+=7.0;
     s1+=10.0;
    }
   } else {
    if(i60<1.4509000720863696e-05){
     s0+=110.0;
     s1+=752.0;
    } else {
     s0+=294.0;
     s1+=178.0;
    }
   }
  }
 } else {
  if(i3<1.0000526905059814){
   s0+=227.0;
  } else {
   if(i12<0.0002333521842956543){
    if(i42<0.0025690863840281963){
     s0+=41.0;
     s1+=342.0;
    } else {
     s0+=142.0;
     s1+=52.0;
    }
   } else {
    s1+=1143.0;
   }
  }
 }
} else {
 if(i35<0.023752287030220032){
  if(i14<1.0021175146102905){
   if(i28<1.0266549587249756){
    if(i71<0.9959338307380676){
     s0+=24.0;
    } else {
     s0+=12.0;
     s1+=228.0;
    }
   } else {
    if(i40<0.0510481595993042){
     s0+=228.0;
     s1+=617.0;
    } else {
     s0+=1251.0;
     s1+=395.0;
    }
   }
  } else {
   if(i59<0.00825721025466919){
    if(i66<1.00416898727417){
     s0+=62.0;
     s1+=1794.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    if(i42<0.003814655588939786){
     s0+=37.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i73<4.4185588876644033e-07){
   if(i1<0.08401608467102051){
    if(i44<0.9785783290863037){
     s1+=43.0;
    } else {
     s0+=81.0;
     s1+=5.0;
    }
   } else {
    if(i4<0.0005170702934265137){
     s0+=118.0;
     s1+=1322.0;
    } else {
     s0+=1.0;
     s1+=8167.0;
    }
   }
  } else {
   if(i70<0.17863300442695618){
    if(i51<0.048938632011413574){
     s1+=5.0;
    } else {
     s0+=181.0;
     s1+=2.0;
    }
   } else {
    s1+=9.0;
   }
  }
 }
}
if(i2<0.08502998948097229){
 if(i8<4.178285598754883e-05){
  if(i36<0.025790594518184662){
   if(i25<1.007964849472046){
    if(i54<-0.007474273443222046){
     s0+=531.0;
     s1+=164.0;
    } else {
     s0+=56225.0;
     s1+=414.0;
    }
   } else {
    if(i33<0.0011734982253983617){
     s0+=32.0;
     s1+=165.0;
    } else {
     s0+=231.0;
     s1+=14.0;
    }
   }
  } else {
   if(i3<0.997785747051239){
    if(i3<0.9963637590408325){
     s0+=6098.0;
     s1+=73.0;
    } else {
     s0+=1697.0;
     s1+=178.0;
    }
   } else {
    if(i33<0.0011105937883257866){
     s0+=1468.0;
     s1+=847.0;
    } else {
     s0+=2369.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i37<0.00046586914686486125){
   s0+=228.0;
  } else {
   if(i59<0.0027196407318115234){
    if(i41<1.2160736322402954){
     s0+=4.0;
     s1+=605.0;
    } else {
     s0+=198.0;
     s1+=332.0;
    }
   } else {
    if(i2<0.08471900224685669){
     s0+=73.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i4<0.00014632940292358398){
  if(i6<-7.432664006046252e-06){
   if(i16<0.0016116161132231355){
    if(i38<0.004959553014487028){
     s0+=201.0;
     s1+=54.0;
    } else {
     s0+=1.0;
     s1+=57.0;
    }
   } else {
    if(i40<0.045812785625457764){
     s0+=48.0;
     s1+=1069.0;
    } else {
     s0+=289.0;
     s1+=564.0;
    }
   }
  } else {
   if(i36<0.04186062514781952){
    if(i17<1.2695789337158203e-05){
     s0+=535.0;
     s1+=19.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i27<0.0021033398807048798){
     s0+=19.0;
     s1+=64.0;
    } else {
     s0+=436.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i12<-9.775161743164062e-06){
   if(i35<0.025927254930138588){
    if(i51<0.06010115146636963){
     s0+=12.0;
     s1+=261.0;
    } else {
     s0+=292.0;
     s1+=124.0;
    }
   } else {
    if(i47<0.0005748386029154062){
     s0+=27.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=1155.0;
    }
   }
  } else {
   if(i37<0.00026583089493215084){
    s0+=9.0;
   } else {
    if(i3<1.0038797855377197){
     s0+=103.0;
     s1+=1630.0;
    } else {
     s0+=1.0;
     s1+=8962.0;
    }
   }
  }
 }
}
if(i0<0.08316662907600403){
 if(i4<0.0006218850612640381){
  if(i59<-0.002382516860961914){
   if(i18<0.014121542684733868){
    if(i35<0.04882224649190903){
     s0+=1527.0;
     s1+=107.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i0<0.01808735728263855){
     s0+=772.0;
     s1+=127.0;
    } else {
     s0+=241.0;
     s1+=406.0;
    }
   }
  } else {
   if(i45<1.0556960105895996){
    if(i52<-0.003278195858001709){
     s0+=406.0;
     s1+=1.0;
    } else {
     s0+=41866.0;
    }
   } else {
    if(i1<0.06075805425643921){
     s0+=22064.0;
     s1+=935.0;
    } else {
     s0+=2412.0;
     s1+=580.0;
    }
   }
  }
 } else {
  if(i75<0.00013978286006022245){
   if(i56<-1.4116389138507657e-05){
    if(i70<0.030973508954048157){
     s0+=9.0;
     s1+=684.0;
    } else {
     s0+=65.0;
     s1+=169.0;
    }
   } else {
    if(i16<0.0033556013368070126){
     s0+=52.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i47<0.00310238148085773){
    if(i15<1.0045270919799805){
     s0+=179.0;
     s1+=6.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i22<0.9980968236923218){
     s0+=2.0;
    } else {
     s1+=73.0;
    }
   }
  }
 }
} else {
 if(i2<0.12399810552597046){
  if(i76<1.0296645164489746){
   if(i49<0.0564497709274292){
    if(i72<0.04475104808807373){
     s0+=129.0;
     s1+=2033.0;
    } else {
     s0+=112.0;
     s1+=55.0;
    }
   } else {
    if(i51<0.057037174701690674){
     s0+=16.0;
     s1+=25.0;
    } else {
     s0+=244.0;
     s1+=24.0;
    }
   }
  } else {
   if(i68<-0.004071750212460756){
    if(i47<0.001998397521674633){
     s0+=415.0;
     s1+=8.0;
    } else {
     s0+=54.0;
     s1+=32.0;
    }
   } else {
    if(i72<0.04155200719833374){
     s0+=4.0;
     s1+=94.0;
    } else {
     s0+=18.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i56<-2.5792555788939353e-06){
   if(i6<-1.4637426829722244e-05){
    if(i37<0.0004599250969476998){
     s0+=11.0;
    } else {
     s0+=135.0;
     s1+=11227.0;
    }
   } else {
    if(i28<1.084121584892273){
     s0+=1.0;
     s1+=45.0;
    } else {
     s0+=61.0;
     s1+=19.0;
    }
   }
  } else {
   if(i50<-0.00013431906700134277){
    s0+=284.0;
   } else {
    if(i63<3.637566260294989e-05){
     s0+=166.0;
     s1+=64.0;
    } else {
     s0+=15.0;
     s1+=225.0;
    }
   }
  }
 }
}
if(i5<0.07183805108070374){
 if(i23<1.0072290897369385){
  if(i0<0.07876446843147278){
   if(i54<-0.005239725112915039){
    if(i45<1.055511236190796){
     s0+=874.0;
    } else {
     s0+=2826.0;
     s1+=1016.0;
    }
   } else {
    if(i9<1.037574291229248){
     s0+=57512.0;
     s1+=488.0;
    } else {
     s0+=6089.0;
     s1+=599.0;
    }
   }
  } else {
   if(i4<-0.0007597804069519043){
    if(i58<0.5983467102050781){
     s0+=140.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i24<1.0411651134490967){
     s0+=19.0;
     s1+=7.0;
    } else {
     s0+=37.0;
     s1+=664.0;
    }
   }
  }
 } else {
  if(i73<-5.667973709932994e-06){
   if(i4<0.00033986568450927734){
    if(i66<1.0010650157928467){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=48.0;
     s1+=2.0;
    }
   } else {
    if(i66<1.0030908584594727){
     s0+=3.0;
     s1+=1224.0;
    } else {
     s0+=25.0;
     s1+=14.0;
    }
   }
  } else {
   if(i24<1.073743224143982){
    if(i1<0.05639639496803284){
     s0+=116.0;
     s1+=49.0;
    } else {
     s0+=7.0;
     s1+=308.0;
    }
   } else {
    if(i1<0.07560527324676514){
     s0+=1331.0;
     s1+=86.0;
    } else {
     s0+=14.0;
     s1+=189.0;
    }
   }
  }
 }
} else {
 if(i17<-1.4126300811767578e-05){
  if(i13<1.0126763582229614){
   if(i53<0.0024045673198997974){
    if(i6<-6.246878183446825e-05){
     s1+=3.0;
    } else {
     s0+=485.0;
     s1+=7.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i28<1.1206846237182617){
    s1+=8.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i12<8.657574653625488e-05){
   if(i16<0.003346665995195508){
    if(i51<0.05373695492744446){
     s0+=50.0;
     s1+=279.0;
    } else {
     s0+=1053.0;
     s1+=310.0;
    }
   } else {
    if(i0<0.12054523825645447){
     s0+=353.0;
     s1+=628.0;
    } else {
     s0+=49.0;
     s1+=2541.0;
    }
   }
  } else {
   if(i45<1.0545824766159058){
    s0+=15.0;
   } else {
    if(i16<0.0025939950719475746){
     s0+=82.0;
     s1+=272.0;
    } else {
     s0+=3.0;
     s1+=8385.0;
    }
   }
  }
 }
}
if(i0<0.08200663328170776){
 if(i15<1.0018329620361328){
  if(i30<0.000297709833830595){
   if(i9<1.0486375093460083){
    if(i24<1.0494996309280396){
     s0+=44983.0;
     s1+=37.0;
    } else {
     s0+=1343.0;
     s1+=35.0;
    }
   } else {
    if(i4<0.00020042061805725098){
     s0+=199.0;
    } else {
     s0+=24.0;
     s1+=53.0;
    }
   }
  } else {
   if(i33<0.0011257174191996455){
    if(i34<1.0850647687911987){
     s0+=3315.0;
    } else {
     s0+=2519.0;
     s1+=1467.0;
    }
   } else {
    if(i59<-0.002823352813720703){
     s0+=1140.0;
     s1+=228.0;
    } else {
     s0+=15060.0;
     s1+=243.0;
    }
   }
  }
 } else {
  if(i66<1.001810073852539){
   if(i21<-0.0007759332656860352){
    if(i67<0.007997049018740654){
     s0+=161.0;
     s1+=36.0;
    } else {
     s0+=29.0;
     s1+=115.0;
    }
   } else {
    if(i10<0.0005848407745361328){
     s0+=43.0;
     s1+=33.0;
    } else {
     s0+=14.0;
     s1+=681.0;
    }
   }
  } else {
   if(i62<0.0066518401727080345){
    if(i66<1.0021698474884033){
     s0+=26.0;
     s1+=21.0;
    } else {
     s0+=493.0;
     s1+=17.0;
    }
   } else {
    if(i12<-0.0003680884838104248){
     s0+=39.0;
     s1+=9.0;
    } else {
     s1+=38.0;
    }
   }
  }
 }
} else {
 if(i14<1.0009905099868774){
  if(i50<-0.0001392960548400879){
   if(i24<1.398578405380249){
    if(i21<-0.0005689859390258789){
     s0+=425.0;
     s1+=2.0;
    } else {
     s0+=59.0;
     s1+=21.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i48<0.003945708274841309){
    if(i38<0.00048793136375024915){
     s0+=55.0;
     s1+=6.0;
    } else {
     s0+=173.0;
     s1+=2091.0;
    }
   } else {
    if(i0<0.12336614727973938){
     s0+=570.0;
     s1+=89.0;
    } else {
     s0+=271.0;
     s1+=1367.0;
    }
   }
  }
 } else {
  if(i4<0.0004125833511352539){
   if(i68<-0.005524440202862024){
    if(i16<0.0028728474862873554){
     s0+=76.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=156.0;
    }
   } else {
    if(i4<-0.00038748979568481445){
     s0+=8.0;
     s1+=5.0;
    } else {
     s0+=20.0;
     s1+=544.0;
    }
   }
  } else {
   if(i32<-0.00012170190166216344){
    if(i18<0.0192604698240757){
     s0+=17.0;
     s1+=1482.0;
    } else {
     s0+=4.0;
     s1+=7629.0;
    }
   } else {
    if(i10<0.0004132390022277832){
     s0+=24.0;
     s1+=36.0;
    } else {
     s0+=25.0;
     s1+=649.0;
    }
   }
  }
 }
}
if(i2<0.08353149890899658){
 if(i8<3.936886787414551e-05){
  if(i27<0.00030656089074909687){
   if(i20<1.011214256286621){
    if(i52<-0.004793614149093628){
     s0+=3.0;
     s1+=23.0;
    } else {
     s0+=53557.0;
     s1+=248.0;
    }
   } else {
    if(i43<1.1039612293243408){
     s1+=53.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  } else {
   if(i14<0.9946650862693787){
    if(i35<0.07268466055393219){
     s0+=8877.0;
     s1+=182.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i2<0.06340861320495605){
     s0+=5300.0;
     s1+=980.0;
    } else {
     s0+=932.0;
     s1+=619.0;
    }
   }
  }
 } else {
  if(i61<0.9990551471710205){
   s0+=247.0;
  } else {
   if(i73<-4.835804702452151e-06){
    if(i40<0.0290987491607666){
     s0+=97.0;
     s1+=868.0;
    } else {
     s0+=54.0;
     s1+=63.0;
    }
   } else {
    if(i54<-0.009093403816223145){
     s1+=18.0;
    } else {
     s0+=119.0;
    }
   }
  }
 }
} else {
 if(i16<0.0053061991930007935){
  if(i68<-0.005161321721971035){
   if(i1<0.1376476287841797){
    if(i16<0.003821420483291149){
     s0+=603.0;
     s1+=9.0;
    } else {
     s0+=149.0;
     s1+=25.0;
    }
   } else {
    if(i57<-0.03076494298875332){
     s0+=389.0;
     s1+=110.0;
    } else {
     s0+=35.0;
     s1+=271.0;
    }
   }
  } else {
   if(i8<-4.8160552978515625e-05){
    if(i15<0.9984689950942993){
     s0+=380.0;
     s1+=1.0;
    } else {
     s0+=35.0;
     s1+=11.0;
    }
   } else {
    if(i6<-1.4464780178968795e-05){
     s0+=109.0;
     s1+=2128.0;
    } else {
     s0+=174.0;
     s1+=252.0;
    }
   }
  }
 } else {
  if(i10<-0.0004748702049255371){
   s0+=52.0;
  } else {
   if(i14<0.9936031699180603){
    if(i7<1.0691044330596924){
     s0+=81.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=548.0;
    }
   } else {
    if(i24<1.0644469261169434){
     s0+=23.0;
     s1+=127.0;
    } else {
     s0+=71.0;
     s1+=10372.0;
    }
   }
  }
 }
}
if(i0<0.08390545845031738){
 if(i7<1.0451608896255493){
  if(i64<-0.0010868310928344727){
   if(i4<0.0005543828010559082){
    if(i43<1.1394507884979248){
     s0+=1946.0;
     s1+=435.0;
    } else {
     s0+=3141.0;
     s1+=54.0;
    }
   } else {
    if(i9<1.0448253154754639){
     s0+=5.0;
     s1+=84.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i29<1.008404016494751){
    if(i4<0.0009406805038452148){
     s0+=56983.0;
     s1+=324.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i75<4.405308936838992e-05){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=80.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i6<-4.1132268961519e-05){
   if(i37<0.0014751683920621872){
    if(i13<0.9907234907150269){
     s0+=4.0;
    } else {
     s1+=595.0;
    }
   } else {
    if(i65<0.0013242128770798445){
     s0+=629.0;
     s1+=178.0;
    } else {
     s0+=336.0;
     s1+=499.0;
    }
   }
  } else {
   if(i43<1.1037919521331787){
    if(i34<1.0850647687911987){
     s0+=1096.0;
    } else {
     s0+=692.0;
     s1+=769.0;
    }
   } else {
    if(i20<0.9743653535842896){
     s0+=444.0;
     s1+=114.0;
    } else {
     s0+=4277.0;
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i6<-9.648835657571908e-06){
  if(i3<1.0019726753234863){
   if(i54<0.01614353060722351){
    if(i31<0.9989756345748901){
     s0+=33.0;
     s1+=9.0;
    } else {
     s0+=109.0;
     s1+=2100.0;
    }
   } else {
    if(i35<0.023416481912136078){
     s0+=434.0;
     s1+=230.0;
    } else {
     s0+=75.0;
     s1+=733.0;
    }
   }
  } else {
   if(i8<5.716085433959961e-05){
    if(i35<0.013154275715351105){
     s0+=51.0;
     s1+=236.0;
    } else {
     s0+=7.0;
     s1+=814.0;
    }
   } else {
    if(i21<0.0002599954605102539){
     s0+=41.0;
     s1+=933.0;
    } else {
     s0+=1.0;
     s1+=8603.0;
    }
   }
  }
 } else {
  if(i3<0.9958091378211975){
   if(i53<0.0009428771445527673){
    s0+=372.0;
   } else {
    if(i53<0.000949051755014807){
     s1+=1.0;
    } else {
     s0+=20.0;
    }
   }
  } else {
   if(i51<0.05742615461349487){
    if(i53<2.182425669161603e-05){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=13.0;
     s1+=165.0;
    }
   } else {
    if(i42<0.001794898766092956){
     s0+=326.0;
     s1+=23.0;
    } else {
     s0+=75.0;
     s1+=56.0;
    }
   }
  }
 }
}
if(i8<3.701448440551758e-05){
 if(i39<0.0003143476787954569){
  if(i9<1.0455060005187988){
   if(i20<1.0095653533935547){
    if(i45<1.0598037242889404){
     s0+=41765.0;
     s1+=10.0;
    } else {
     s0+=14530.0;
     s1+=618.0;
    }
   } else {
    if(i30<0.001097826985642314){
     s0+=98.0;
     s1+=133.0;
    } else {
     s0+=121.0;
     s1+=2.0;
    }
   }
  } else {
   if(i5<0.061012089252471924){
    if(i25<1.0060515403747559){
     s0+=533.0;
     s1+=23.0;
    } else {
     s0+=137.0;
     s1+=77.0;
    }
   } else {
    if(i6<-1.8550193999544717e-05){
     s0+=8.0;
     s1+=141.0;
    } else {
     s0+=40.0;
    }
   }
  }
 } else {
  if(i12<-0.00021976232528686523){
   if(i10<0.0002053380012512207){
    if(i14<0.9917820692062378){
     s0+=4283.0;
     s1+=148.0;
    } else {
     s0+=1308.0;
     s1+=185.0;
    }
   } else {
    if(i24<1.1266913414001465){
     s0+=925.0;
     s1+=66.0;
    } else {
     s0+=370.0;
     s1+=409.0;
    }
   }
  } else {
   if(i37<0.0004478240152820945){
    if(i15<1.0005630254745483){
     s0+=2767.0;
     s1+=57.0;
    } else {
     s0+=4.0;
     s1+=52.0;
    }
   } else {
    if(i41<1.1032289266586304){
     s0+=515.0;
     s1+=1643.0;
    } else {
     s0+=3021.0;
     s1+=2004.0;
    }
   }
  }
 }
} else {
 if(i15<0.9987264275550842){
  s0+=304.0;
 } else {
  if(i6<-4.329586590756662e-05){
   if(i4<0.0012003779411315918){
    if(i10<0.0008009076118469238){
     s0+=30.0;
     s1+=1818.0;
    } else {
     s0+=182.0;
     s1+=502.0;
    }
   } else {
    if(i0<0.005251765251159668){
     s0+=10.0;
     s1+=23.0;
    } else {
     s0+=36.0;
     s1+=8896.0;
    }
   }
  } else {
   if(i16<0.002581370761618018){
    if(i23<0.9862775206565857){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=196.0;
    }
   } else {
    if(i14<0.9935343265533447){
     s0+=5.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=230.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i1<0.07771864533424377){
  if(i67<0.007583861239254475){
   if(i1<0.06134477257728577){
    if(i42<0.00030590000096708536){
     s0+=34531.0;
     s1+=1.0;
    } else {
     s0+=27381.0;
     s1+=813.0;
    }
   } else {
    if(i18<0.015559984371066093){
     s0+=2654.0;
     s1+=169.0;
    } else {
     s0+=835.0;
     s1+=404.0;
    }
   }
  } else {
   if(i2<0.021696239709854126){
    if(i41<1.094307780265808){
     s0+=628.0;
     s1+=112.0;
    } else {
     s0+=1363.0;
     s1+=57.0;
    }
   } else {
    if(i53<0.0004735045658890158){
     s0+=1194.0;
     s1+=316.0;
    } else {
     s0+=234.0;
     s1+=272.0;
    }
   }
  }
 } else {
  if(i10<-0.0003960132598876953){
   if(i27<0.06081487238407135){
    if(i22<0.9956386089324951){
     s0+=420.0;
     s1+=2.0;
    } else {
     s0+=82.0;
     s1+=7.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i6<-1.338246056548087e-05){
    if(i40<0.04879671335220337){
     s0+=63.0;
     s1+=2002.0;
    } else {
     s0+=479.0;
     s1+=1008.0;
    }
   } else {
    if(i63<3.382514842087403e-05){
     s0+=479.0;
     s1+=59.0;
    } else {
     s0+=190.0;
     s1+=313.0;
    }
   }
  }
 }
} else {
 if(i30<0.0002465705038048327){
  if(i60<2.752795353444526e-06){
   s0+=192.0;
  } else {
   s1+=16.0;
  }
 } else {
  if(i0<0.06354200839996338){
   if(i59<-0.0012831389904022217){
    if(i76<1.0050839185714722){
     s0+=17.0;
     s1+=396.0;
    } else {
     s0+=29.0;
     s1+=29.0;
    }
   } else {
    if(i16<0.00214948202483356){
     s0+=82.0;
    } else {
     s0+=72.0;
     s1+=75.0;
    }
   }
  } else {
   if(i16<0.0023749331012368202){
    if(i6<-5.3198618843453005e-05){
     s1+=177.0;
    } else {
     s0+=56.0;
     s1+=9.0;
    }
   } else {
    if(i1<0.13971233367919922){
     s0+=134.0;
     s1+=2021.0;
    } else {
     s0+=13.0;
     s1+=8865.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i0<0.0852343738079071){
  if(i7<1.0401363372802734){
   if(i36<0.026693392544984818){
    if(i22<1.0031929016113281){
     s0+=51394.0;
     s1+=236.0;
    } else {
     s0+=62.0;
     s1+=38.0;
    }
   } else {
    if(i0<0.06931564211845398){
     s0+=7302.0;
     s1+=240.0;
    } else {
     s0+=206.0;
     s1+=103.0;
    }
   }
  } else {
   if(i8<3.081560134887695e-05){
    if(i19<0.9951162934303284){
     s0+=2779.0;
     s1+=773.0;
    } else {
     s0+=6831.0;
     s1+=549.0;
    }
   } else {
    if(i28<1.0472536087036133){
     s0+=69.0;
     s1+=438.0;
    } else {
     s0+=113.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i43<1.368408203125){
   if(i17<-1.5437602996826172e-05){
    if(i15<0.9980460405349731){
     s0+=320.0;
    } else {
     s0+=16.0;
     s1+=2.0;
    }
   } else {
    if(i76<1.0230085849761963){
     s0+=184.0;
     s1+=1278.0;
    } else {
     s0+=467.0;
     s1+=391.0;
    }
   }
  } else {
   if(i2<0.12590593099594116){
    if(i54<0.015399366617202759){
     s0+=17.0;
     s1+=260.0;
    } else {
     s0+=81.0;
     s1+=8.0;
    }
   } else {
    if(i41<1.3027660846710205){
     s0+=12.0;
     s1+=96.0;
    } else {
     s0+=1.0;
     s1+=1651.0;
    }
   }
  }
 }
} else {
 if(i47<0.0010541309602558613){
  if(i30<0.001594250788912177){
   if(i1<0.056555747985839844){
    if(i34<1.2392117977142334){
     s0+=47.0;
     s1+=76.0;
    } else {
     s0+=152.0;
    }
   } else {
    if(i22<0.9968287944793701){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=999.0;
    }
   }
  } else {
   if(i1<0.17472201585769653){
    if(i6<-5.6210261391242966e-05){
     s1+=47.0;
    } else {
     s0+=729.0;
     s1+=48.0;
    }
   } else {
    if(i48<0.011783599853515625){
     s0+=13.0;
     s1+=391.0;
    } else {
     s0+=37.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i73<1.1674071629386162e-06){
   if(i15<0.9983862042427063){
    s0+=43.0;
   } else {
    if(i2<0.08275294303894043){
     s0+=110.0;
     s1+=459.0;
    } else {
     s0+=90.0;
     s1+=8858.0;
    }
   }
  } else {
   s0+=88.0;
  }
 }
}
if(i10<0.0004246830940246582){
 if(i20<1.0107624530792236){
  if(i62<0.0019798099528998137){
   if(i30<0.00034514738945290446){
    if(i29<1.0077297687530518){
     s0+=47671.0;
     s1+=89.0;
    } else {
     s0+=69.0;
     s1+=49.0;
    }
   } else {
    if(i34<1.2298874855041504){
     s0+=5143.0;
     s1+=1447.0;
    } else {
     s0+=9909.0;
     s1+=145.0;
    }
   }
  } else {
   if(i5<0.08022162318229675){
    if(i23<0.9744123220443726){
     s0+=1866.0;
     s1+=47.0;
    } else {
     s0+=2576.0;
     s1+=803.0;
    }
   } else {
    if(i15<0.9984269142150879){
     s0+=152.0;
    } else {
     s0+=68.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i0<0.09613671898841858){
   if(i75<2.4077937268884853e-05){
    if(i76<1.0221288204193115){
     s1+=49.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i24<1.0737545490264893){
     s0+=143.0;
     s1+=215.0;
    } else {
     s0+=1045.0;
     s1+=87.0;
    }
   }
  } else {
   if(i73<9.489361900705262e-07){
    if(i66<0.9999187588691711){
     s0+=98.0;
     s1+=1714.0;
    } else {
     s0+=279.0;
     s1+=505.0;
    }
   } else {
    s0+=75.0;
   }
  }
 }
} else {
 if(i3<1.001571774482727){
  if(i70<0.13310542702674866){
   if(i24<1.0819685459136963){
    if(i63<0.00010062835644930601){
     s0+=380.0;
     s1+=52.0;
    } else {
     s0+=524.0;
     s1+=1.0;
    }
   } else {
    if(i6<-3.929877493646927e-05){
     s0+=360.0;
     s1+=299.0;
    } else {
     s0+=203.0;
     s1+=36.0;
    }
   }
  } else {
   if(i39<0.00690871849656105){
    if(i67<0.011624444276094437){
     s0+=35.0;
     s1+=1.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i75<7.89215846452862e-05){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i56<-1.3843342458130792e-05){
   if(i45<1.3005231618881226){
    if(i1<0.14084625244140625){
     s0+=261.0;
     s1+=2139.0;
    } else {
     s0+=8.0;
     s1+=2543.0;
    }
   } else {
    if(i75<2.3896263883216307e-05){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=6139.0;
    }
   }
  } else {
   if(i16<0.002889813855290413){
    s0+=107.0;
   } else {
    s1+=89.0;
   }
  }
 }
}
if(i21<0.0007557272911071777){
 if(i28<1.0406770706176758){
  if(i1<0.07753103971481323){
   if(i54<-0.006163239479064941){
    if(i3<1.0012844800949097){
     s0+=3259.0;
     s1+=678.0;
    } else {
     s0+=47.0;
     s1+=292.0;
    }
   } else {
    if(i3<1.0025041103363037){
     s0+=62440.0;
     s1+=1014.0;
    } else {
     s0+=31.0;
     s1+=108.0;
    }
   }
  } else {
   if(i31<0.9992760419845581){
    if(i17<-1.7255544662475586e-05){
     s0+=127.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=13.0;
    }
   } else {
    if(i1<0.08576282858848572){
     s0+=94.0;
     s1+=223.0;
    } else {
     s0+=15.0;
     s1+=1079.0;
    }
   }
  }
 } else {
  if(i2<0.11907947063446045){
   if(i43<1.1037919521331787){
    if(i34<1.0981647968292236){
     s0+=756.0;
     s1+=226.0;
    } else {
     s0+=25.0;
     s1+=247.0;
    }
   } else {
    if(i6<-4.5387416321318597e-05){
     s0+=489.0;
     s1+=345.0;
    } else {
     s0+=2253.0;
     s1+=85.0;
    }
   }
  } else {
   if(i37<0.0015499028377234936){
    if(i40<0.08560150861740112){
     s0+=49.0;
     s1+=305.0;
    } else {
     s0+=422.0;
     s1+=14.0;
    }
   } else {
    if(i18<0.021934231743216515){
     s0+=143.0;
     s1+=187.0;
    } else {
     s0+=79.0;
     s1+=2395.0;
    }
   }
  }
 }
} else {
 if(i8<3.832578659057617e-05){
  if(i27<0.00030201557092368603){
   if(i56<-1.2904526556667406e-05){
    s1+=33.0;
   } else {
    if(i1<0.07907482981681824){
     s0+=422.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i24<1.1495144367218018){
    if(i38<0.002843335270881653){
     s0+=4.0;
     s1+=459.0;
    } else {
     s0+=18.0;
     s1+=10.0;
    }
   } else {
    if(i63<1.7626631233724765e-05){
     s0+=115.0;
     s1+=45.0;
    } else {
     s1+=116.0;
    }
   }
  }
 } else {
  if(i3<1.0041437149047852){
   if(i69<0.0004632583004422486){
    if(i16<0.00240415520966053){
     s0+=168.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=276.0;
    }
   } else {
    if(i31<0.9955891370773315){
     s0+=2.0;
    } else {
     s1+=427.0;
    }
   }
  } else {
   s1+=8661.0;
  }
 }
}
if(i13<1.0081498622894287){
 if(i2<0.08233362436294556){
  if(i4<0.0006610751152038574){
   if(i7<1.0410068035125732){
    if(i62<0.0016715090023353696){
     s0+=56382.0;
     s1+=297.0;
    } else {
     s0+=3053.0;
     s1+=291.0;
    }
   } else {
    if(i53<0.0003550180699676275){
     s0+=6672.0;
     s1+=620.0;
    } else {
     s0+=1927.0;
     s1+=645.0;
    }
   }
  } else {
   if(i30<0.00024962573661468923){
    s0+=41.0;
   } else {
    if(i40<0.021257668733596802){
     s0+=58.0;
     s1+=392.0;
    } else {
     s0+=46.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i56<-6.483546712843236e-06){
   if(i2<0.12466564774513245){
    if(i54<0.01321941614151001){
     s0+=110.0;
     s1+=827.0;
    } else {
     s0+=333.0;
     s1+=41.0;
    }
   } else {
    if(i66<0.9956883788108826){
     s0+=12.0;
    } else {
     s0+=64.0;
     s1+=2261.0;
    }
   }
  } else {
   if(i10<-0.0003693103790283203){
    if(i69<4.035797610413283e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=627.0;
     s1+=2.0;
    }
   } else {
    if(i63<3.220616781618446e-05){
     s0+=435.0;
     s1+=158.0;
    } else {
     s0+=106.0;
     s1+=488.0;
    }
   }
  }
 }
} else {
 if(i1<0.07780468463897705){
  if(i6<-4.227057070238516e-05){
   if(i55<0.0015274882316589355){
    if(i43<1.25206458568573){
     s0+=1.0;
     s1+=624.0;
    } else {
     s0+=23.0;
     s1+=62.0;
    }
   } else {
    if(i42<0.0035965258721262217){
     s0+=6.0;
     s1+=47.0;
    } else {
     s0+=48.0;
     s1+=5.0;
    }
   }
  } else {
   if(i45<1.083398699760437){
    if(i21<-6.756186485290527e-05){
     s0+=16.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=81.0;
    }
   } else {
    if(i45<1.1047927141189575){
     s0+=49.0;
     s1+=25.0;
    } else {
     s0+=742.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i8<3.653764724731445e-05){
   if(i12<3.403425216674805e-05){
    if(i76<1.0364530086517334){
     s0+=63.0;
     s1+=393.0;
    } else {
     s0+=260.0;
     s1+=227.0;
    }
   } else {
    if(i1<0.09002330899238586){
     s0+=26.0;
     s1+=74.0;
    } else {
     s0+=20.0;
     s1+=772.0;
    }
   }
  } else {
   if(i16<0.0023669356014579535){
    if(i56<-1.391861769661773e-05){
     s1+=143.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i14<0.9979335069656372){
     s0+=24.0;
     s1+=310.0;
    } else {
     s0+=9.0;
     s1+=8224.0;
    }
   }
  }
 }
}
if(i15<1.0016210079193115){
 if(i13<1.010759949684143){
  if(i5<0.07235640287399292){
   if(i0<0.07877224683761597){
    if(i65<0.0007947437115944922){
     s0+=60671.0;
     s1+=758.0;
    } else {
     s0+=6836.0;
     s1+=864.0;
    }
   } else {
    if(i34<1.0840110778808594){
     s0+=100.0;
    } else {
     s0+=96.0;
     s1+=532.0;
    }
   }
  } else {
   if(i17<-1.3083219528198242e-05){
    if(i42<0.008824159391224384){
     s0+=460.0;
     s1+=13.0;
    } else {
     s0+=16.0;
     s1+=8.0;
    }
   } else {
    if(i45<1.309299111366272){
     s0+=1007.0;
     s1+=1256.0;
    } else {
     s0+=28.0;
     s1+=477.0;
    }
   }
  }
 } else {
  if(i56<1.9696044546435587e-06){
   if(i53<-8.495456859236583e-05){
    if(i6<-3.354738873895258e-05){
     s0+=11.0;
     s1+=1405.0;
    } else {
     s0+=38.0;
     s1+=71.0;
    }
   } else {
    if(i69<0.00046468788059428334){
     s0+=509.0;
     s1+=622.0;
    } else {
     s0+=13.0;
     s1+=597.0;
    }
   }
  } else {
   if(i41<1.255998969078064){
    if(i24<1.1476294994354248){
     s0+=23.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=76.0;
   }
  }
 }
} else {
 if(i21<-0.0008696317672729492){
  if(i24<1.1204980611801147){
   if(i0<0.11740151047706604){
    if(i60<8.748556865612045e-06){
     s0+=36.0;
     s1+=54.0;
    } else {
     s0+=763.0;
     s1+=36.0;
    }
   } else {
    if(i59<0.007400214672088623){
     s0+=1.0;
     s1+=70.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<0.032221488654613495){
    if(i55<-0.003934741020202637){
     s0+=135.0;
     s1+=14.0;
    } else {
     s0+=44.0;
     s1+=184.0;
    }
   } else {
    if(i2<0.0011035501956939697){
     s0+=8.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=625.0;
    }
   }
  }
 } else {
  if(i4<0.00043278932571411133){
   if(i75<0.00017448209109716117){
    if(i16<0.004248831421136856){
     s0+=129.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    s1+=52.0;
   }
  } else {
   if(i3<1.0041333436965942){
    if(i53<-1.2055417755618691e-05){
     s0+=81.0;
     s1+=65.0;
    } else {
     s0+=65.0;
     s1+=518.0;
    }
   } else {
    if(i2<0.16888171434402466){
     s0+=26.0;
     s1+=2071.0;
    } else {
     s1+=6726.0;
    }
   }
  }
 }
}
if(i6<-6.939917511772364e-05){
 if(i2<0.05771780014038086){
  if(i11<0.9968827366828918){
   if(i4<0.0009516477584838867){
    if(i49<-0.04864165186882019){
     s0+=68.0;
     s1+=36.0;
    } else {
     s0+=776.0;
     s1+=16.0;
    }
   } else {
    if(i38<0.01325063407421112){
     s0+=29.0;
     s1+=47.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i48<-0.0027005374431610107){
    if(i4<0.0008190274238586426){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=125.0;
    }
   } else {
    if(i64<0.002871215343475342){
     s0+=2.0;
     s1+=36.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i24<1.0514323711395264){
   if(i15<1.0013391971588135){
    s0+=81.0;
   } else {
    if(i27<0.0022770375944674015){
     s1+=8.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i66<1.0030517578125){
    if(i32<-0.0003160636406391859){
     s0+=24.0;
     s1+=9336.0;
    } else {
     s0+=97.0;
     s1+=1919.0;
    }
   } else {
    if(i63<0.00021461267897393554){
     s0+=33.0;
     s1+=274.0;
    } else {
     s0+=56.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i1<0.07756328582763672){
  if(i27<0.0002822906826622784){
   if(i6<-4.479684503166936e-05){
    if(i15<1.0011084079742432){
     s0+=188.0;
     s1+=28.0;
    } else {
     s0+=4.0;
     s1+=94.0;
    }
   } else {
    if(i52<-0.0038475394248962402){
     s0+=4.0;
     s1+=38.0;
    } else {
     s0+=51961.0;
     s1+=175.0;
    }
   }
  } else {
   if(i34<1.100754976272583){
    if(i34<1.0840110778808594){
     s0+=3009.0;
    } else {
     s0+=947.0;
     s1+=1549.0;
    }
   } else {
    if(i67<0.009611687622964382){
     s0+=10424.0;
     s1+=230.0;
    } else {
     s0+=1654.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i68<-0.004478569142520428){
   if(i16<0.005623483099043369){
    if(i18<0.02857445739209652){
     s0+=837.0;
     s1+=84.0;
    } else {
     s0+=314.0;
     s1+=302.0;
    }
   } else {
    if(i36<0.06469210982322693){
     s0+=61.0;
     s1+=169.0;
    } else {
     s0+=16.0;
     s1+=369.0;
    }
   }
  } else {
   if(i45<1.0670123100280762){
    if(i50<9.909272193908691e-05){
     s0+=185.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=26.0;
    }
   } else {
    if(i51<0.06000372767448425){
     s0+=54.0;
     s1+=1575.0;
    } else {
     s0+=230.0;
     s1+=437.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i58<0.054378435015678406){
  if(i4<0.0006036758422851562){
   if(i18<0.022929998114705086){
    if(i7<1.0436501502990723){
     s0+=53267.0;
     s1+=292.0;
    } else {
     s0+=3602.0;
     s1+=334.0;
    }
   } else {
    if(i24<1.0452215671539307){
     s0+=1392.0;
     s1+=32.0;
    } else {
     s0+=222.0;
     s1+=460.0;
    }
   }
  } else {
   if(i3<1.0016067028045654){
    if(i35<0.04511367902159691){
     s0+=69.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i35<0.00807192549109459){
     s0+=23.0;
     s1+=30.0;
    } else {
     s0+=7.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i14<1.0014715194702148){
   if(i0<0.08587026596069336){
    if(i4<3.269314765930176e-05){
     s0+=9139.0;
     s1+=722.0;
    } else {
     s0+=793.0;
     s1+=430.0;
    }
   } else {
    if(i15<0.9985270500183105){
     s0+=326.0;
     s1+=11.0;
    } else {
     s0+=551.0;
     s1+=1775.0;
    }
   }
  } else {
   if(i10<0.00022968649864196777){
    if(i27<0.015745019540190697){
     s0+=239.0;
     s1+=50.0;
    } else {
     s0+=12.0;
     s1+=72.0;
    }
   } else {
    if(i69<0.00022854452254250646){
     s0+=53.0;
     s1+=93.0;
    } else {
     s0+=32.0;
     s1+=1530.0;
    }
   }
  }
 }
} else {
 if(i16<0.003203703323379159){
  if(i34<1.1039612293243408){
   if(i24<1.0862454175949097){
    if(i10<-0.00015941262245178223){
     s0+=9.0;
    } else {
     s0+=26.0;
     s1+=629.0;
    }
   } else {
    s0+=47.0;
   }
  } else {
   if(i3<1.004279613494873){
    if(i17<1.3709068298339844e-06){
     s0+=93.0;
     s1+=160.0;
    } else {
     s0+=1038.0;
     s1+=100.0;
    }
   } else {
    s1+=202.0;
   }
  }
 } else {
  if(i61<0.9995800256729126){
   if(i56<-5.535204309126129e-06){
    s1+=249.0;
   } else {
    s0+=95.0;
   }
  } else {
   if(i4<-0.00037276744842529297){
    if(i71<0.999250054359436){
     s0+=26.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i15<0.9987289905548096){
     s0+=7.0;
    } else {
     s0+=51.0;
     s1+=9720.0;
    }
   }
  }
 }
}
if(i14<1.0038018226623535){
 if(i39<0.0003233144525438547){
  if(i53<-0.00012345753202680498){
   if(i64<-0.0006565451622009277){
    s0+=4.0;
   } else {
    if(i48<-0.002774357795715332){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=108.0;
    }
   }
  } else {
   if(i20<1.0116113424301147){
    if(i2<0.08436259627342224){
     s0+=56954.0;
     s1+=603.0;
    } else {
     s0+=266.0;
     s1+=180.0;
    }
   } else {
    if(i30<0.0011264376807957888){
     s0+=27.0;
     s1+=112.0;
    } else {
     s0+=121.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i3<1.000572681427002){
   if(i1<0.08163893222808838){
    if(i4<-0.00030493736267089844){
     s0+=7804.0;
     s1+=402.0;
    } else {
     s0+=3105.0;
     s1+=788.0;
    }
   } else {
    if(i56<1.720171894703526e-06){
     s0+=697.0;
     s1+=1766.0;
    } else {
     s0+=331.0;
     s1+=49.0;
    }
   }
  } else {
   if(i6<-5.447497824206948e-05){
    if(i20<1.0173516273498535){
     s0+=263.0;
     s1+=1022.0;
    } else {
     s0+=34.0;
     s1+=1276.0;
    }
   } else {
    if(i47<0.0018747362773865461){
     s0+=688.0;
     s1+=423.0;
    } else {
     s0+=43.0;
     s1+=291.0;
    }
   }
  }
 }
} else {
 if(i16<0.0015546975191682577){
  if(i8<6.598234176635742e-05){
   if(i9<1.0401662588119507){
    if(i7<1.0484097003936768){
     s0+=416.0;
    } else {
     s0+=32.0;
     s1+=3.0;
    }
   } else {
    if(i38<0.0010051337303593755){
     s0+=3.0;
     s1+=53.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=70.0;
  }
 } else {
  if(i43<1.0663723945617676){
   s0+=16.0;
  } else {
   if(i7<1.0342366695404053){
    if(i4<0.000536799430847168){
     s0+=52.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i4<-0.00012475252151489258){
     s0+=84.0;
     s1+=12.0;
    } else {
     s0+=139.0;
     s1+=9868.0;
    }
   }
  }
 }
}
if(i0<0.08204472064971924){
 if(i48<-0.0015400052070617676){
  if(i71<1.0005624294281006){
   if(i43<1.1037919521331787){
    if(i61<0.9998747110366821){
     s0+=413.0;
     s1+=311.0;
    } else {
     s0+=663.0;
     s1+=24.0;
    }
   } else {
    if(i13<1.022684097290039){
     s0+=1801.0;
     s1+=107.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i8<3.4749507904052734e-05){
    if(i43<1.1820628643035889){
     s0+=110.0;
     s1+=224.0;
    } else {
     s0+=946.0;
     s1+=119.0;
    }
   } else {
    if(i12<-0.00045108795166015625){
     s0+=17.0;
     s1+=21.0;
    } else {
     s0+=24.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i6<-4.987779902876355e-05){
   if(i41<1.2271616458892822){
    if(i11<1.0017647743225098){
     s0+=263.0;
     s1+=94.0;
    } else {
     s1+=349.0;
    }
   } else {
    if(i49<-0.05192694067955017){
     s1+=8.0;
    } else {
     s0+=1268.0;
     s1+=28.0;
    }
   }
  } else {
   if(i0<0.0663345456123352){
    if(i9<1.0401519536972046){
     s0+=57659.0;
     s1+=357.0;
    } else {
     s0+=3974.0;
     s1+=308.0;
    }
   } else {
    if(i6<-2.4189375835703686e-05){
     s0+=294.0;
     s1+=249.0;
    } else {
     s0+=2067.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i16<0.004690013825893402){
  if(i50<-0.00013780593872070312){
   if(i4<-0.0004886984825134277){
    s0+=307.0;
   } else {
    if(i41<1.1326812505722046){
     s0+=41.0;
    } else {
     s0+=7.0;
     s1+=22.0;
    }
   }
  } else {
   if(i40<0.049341022968292236){
    if(i48<0.005065113306045532){
     s0+=63.0;
     s1+=1652.0;
    } else {
     s0+=75.0;
     s1+=101.0;
    }
   } else {
    if(i68<-0.005347290076315403){
     s0+=713.0;
     s1+=170.0;
    } else {
     s0+=228.0;
     s1+=399.0;
    }
   }
  }
 } else {
  if(i17<-1.990795135498047e-05){
   s0+=108.0;
  } else {
   if(i21<-0.0020270049571990967){
    if(i40<0.045141369104385376){
     s1+=292.0;
    } else {
     s0+=110.0;
     s1+=242.0;
    }
   } else {
    if(i0<0.11661168932914734){
     s0+=68.0;
     s1+=1078.0;
    } else {
     s0+=18.0;
     s1+=10115.0;
    }
   }
  }
 }
}
if(i3<1.0024447441101074){
 if(i13<1.0081751346588135){
  if(i58<0.053139977157115936){
   if(i1<0.08277261257171631){
    if(i30<0.0003123942296952009){
     s0+=46536.0;
     s1+=64.0;
    } else {
     s0+=11394.0;
     s1+=727.0;
    }
   } else {
    if(i14<0.9934672117233276){
     s0+=96.0;
     s1+=6.0;
    } else {
     s0+=104.0;
     s1+=249.0;
    }
   }
  } else {
   if(i10<8.487701416015625e-05){
    if(i14<0.994252622127533){
     s0+=5175.0;
     s1+=251.0;
    } else {
     s0+=3760.0;
     s1+=1149.0;
    }
   } else {
    if(i32<-0.00045019190292805433){
     s0+=99.0;
     s1+=489.0;
    } else {
     s0+=2233.0;
     s1+=1099.0;
    }
   }
  }
 } else {
  if(i69<0.000558319385163486){
   if(i6<-3.351712803123519e-05){
    if(i61<0.9998993873596191){
     s0+=13.0;
     s1+=722.0;
    } else {
     s0+=122.0;
     s1+=147.0;
    }
   } else {
    if(i46<0.12653961777687073){
     s0+=907.0;
     s1+=127.0;
    } else {
     s0+=114.0;
     s1+=194.0;
    }
   }
  } else {
   if(i37<0.00045947066973894835){
    s0+=47.0;
   } else {
    if(i4<-0.0015106499195098877){
     s0+=1.0;
    } else {
     s0+=13.0;
     s1+=708.0;
    }
   }
  }
 }
} else {
 if(i3<1.0041437149047852){
  if(i1<0.05852234363555908){
   if(i41<1.2160736322402954){
    if(i3<1.0025231838226318){
     s0+=20.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=150.0;
    }
   } else {
    if(i67<0.01683720014989376){
     s0+=221.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=38.0;
    }
   }
  } else {
   if(i47<0.000981661374680698){
    if(i35<0.011213745921850204){
     s0+=53.0;
     s1+=34.0;
    } else {
     s0+=1.0;
     s1+=166.0;
    }
   } else {
    if(i34<1.5876636505126953){
     s0+=34.0;
     s1+=1103.0;
    } else {
     s0+=29.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i11<1.0055315494537354){
   if(i34<1.613681674003601){
    if(i18<0.03175463527441025){
     s0+=8.0;
     s1+=187.0;
    } else {
     s1+=738.0;
    }
   } else {
    if(i38<0.008757822215557098){
     s0+=39.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=121.0;
    }
   }
  } else {
   if(i21<-2.8789043426513672e-05){
    if(i70<0.036505162715911865){
     s0+=1.0;
    } else {
     s1+=49.0;
    }
   } else {
    s1+=8606.0;
   }
  }
 }
}
if(i5<0.07131022214889526){
 if(i1<0.07553675770759583){
  if(i4<0.0006018579006195068){
   if(i27<0.00030515011167153716){
    if(i19<1.0088484287261963){
     s0+=53231.0;
     s1+=225.0;
    } else {
     s0+=108.0;
     s1+=89.0;
    }
   } else {
    if(i33<0.0010893684811890125){
     s0+=3826.0;
     s1+=1213.0;
    } else {
     s0+=11360.0;
     s1+=465.0;
    }
   }
  } else {
   if(i34<1.2392117977142334){
    if(i43<1.0657644271850586){
     s0+=65.0;
    } else {
     s1+=718.0;
    }
   } else {
    if(i62<0.004204196855425835){
     s0+=240.0;
     s1+=45.0;
    } else {
     s0+=31.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i8<-4.2438507080078125e-05){
   if(i6<-3.766420195461251e-05){
    if(i58<0.12725503742694855){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=131.0;
   }
  } else {
   if(i24<1.0451853275299072){
    if(i1<0.07995575666427612){
     s0+=32.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.07780981063842773){
     s0+=22.0;
     s1+=80.0;
    } else {
     s0+=9.0;
     s1+=1500.0;
    }
   }
  }
 }
} else {
 if(i3<1.0018045902252197){
  if(i2<0.11994969844818115){
   if(i46<0.057822972536087036){
    if(i57<-0.019408151507377625){
     s0+=11.0;
    } else {
     s0+=31.0;
     s1+=347.0;
    }
   } else {
    if(i68<-0.0044517964124679565){
     s0+=775.0;
     s1+=41.0;
    } else {
     s0+=461.0;
     s1+=341.0;
    }
   }
  } else {
   if(i59<0.007329165935516357){
    if(i31<0.9986880421638489){
     s0+=67.0;
    } else {
     s0+=79.0;
     s1+=1358.0;
    }
   } else {
    if(i70<0.12199720740318298){
     s0+=420.0;
     s1+=139.0;
    } else {
     s0+=37.0;
     s1+=398.0;
    }
   }
  }
 } else {
  if(i56<-1.2705522749456577e-05){
   if(i2<0.1299923062324524){
    if(i59<0.004227638244628906){
     s0+=32.0;
     s1+=729.0;
    } else {
     s0+=78.0;
     s1+=20.0;
    }
   } else {
    if(i5<0.16358709335327148){
     s0+=20.0;
     s1+=2311.0;
    } else {
     s1+=6671.0;
    }
   }
  } else {
   if(i32<-0.0002599042491056025){
    if(i10<0.00032252073287963867){
     s1+=146.0;
    } else {
     s0+=8.0;
     s1+=17.0;
    }
   } else {
    if(i18<0.04249682277441025){
     s0+=29.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i0<0.08202600479125977){
 if(i8<4.178285598754883e-05){
  if(i18<0.014270048588514328){
   if(i11<1.005543828010559){
    if(i44<0.9715132713317871){
     s0+=1069.0;
     s1+=157.0;
    } else {
     s0+=54941.0;
     s1+=387.0;
    }
   } else {
    if(i7<1.0738025903701782){
     s0+=129.0;
     s1+=112.0;
    } else {
     s0+=182.0;
     s1+=1.0;
    }
   }
  } else {
   if(i75<0.00014578242553398013){
    if(i34<1.2371783256530762){
     s0+=2375.0;
     s1+=1191.0;
    } else {
     s0+=4710.0;
     s1+=112.0;
    }
   } else {
    if(i59<-0.003932684659957886){
     s0+=102.0;
     s1+=68.0;
    } else {
     s0+=5261.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i52<0.0029476583003997803){
   if(i30<0.0002465705038048327){
    s0+=93.0;
   } else {
    if(i16<0.0018080538138747215){
     s0+=54.0;
     s1+=5.0;
    } else {
     s0+=122.0;
     s1+=913.0;
    }
   }
  } else {
   if(i22<1.0054715871810913){
    if(i8<4.4405460357666016e-05){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=206.0;
    }
   } else {
    if(i20<1.0233275890350342){
     s0+=12.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010436773300170898){
  if(i15<0.998518705368042){
   if(i6<-3.6645451473305e-05){
    if(i22<0.9947303533554077){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   } else {
    if(i23<0.9744254350662231){
     s0+=108.0;
     s1+=3.0;
    } else {
     s0+=370.0;
    }
   }
  } else {
   if(i72<0.03154522180557251){
    if(i19<1.0156493186950684){
     s0+=64.0;
     s1+=994.0;
    } else {
     s0+=130.0;
     s1+=305.0;
    }
   } else {
    if(i18<0.04610152542591095){
     s0+=532.0;
     s1+=231.0;
    } else {
     s0+=22.0;
     s1+=239.0;
    }
   }
  }
 } else {
  if(i42<0.006419763900339603){
   if(i68<-0.0054930225014686584){
    if(i1<0.15975487232208252){
     s0+=282.0;
     s1+=85.0;
    } else {
     s0+=45.0;
     s1+=514.0;
    }
   } else {
    if(i45<1.0558756589889526){
     s0+=9.0;
    } else {
     s0+=66.0;
     s1+=2788.0;
    }
   }
  } else {
   if(i0<0.1306760609149933){
    if(i52<0.0011110901832580566){
     s0+=4.0;
     s1+=373.0;
    } else {
     s0+=45.0;
     s1+=28.0;
    }
   } else {
    if(i11<1.005340814590454){
     s0+=18.0;
     s1+=1379.0;
    } else {
     s1+=7269.0;
    }
   }
  }
 }
}
if(i1<0.07905879616737366){
 if(i4<0.0006161332130432129){
  if(i18<0.014147572219371796){
   if(i53<0.0002860948152374476){
    if(i25<1.0073914527893066){
     s0+=52553.0;
     s1+=128.0;
    } else {
     s0+=725.0;
     s1+=131.0;
    }
   } else {
    if(i13<0.9916032552719116){
     s0+=1011.0;
     s1+=269.0;
    } else {
     s0+=2304.0;
     s1+=76.0;
    }
   }
  } else {
   if(i38<0.0020235865376889706){
    if(i14<0.9941507577896118){
     s0+=1684.0;
     s1+=44.0;
    } else {
     s0+=2083.0;
     s1+=1251.0;
    }
   } else {
    if(i48<-0.009258806705474854){
     s0+=543.0;
     s1+=140.0;
    } else {
     s0+=8311.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i3<1.0042097568511963){
   if(i63<-6.27819372311933e-06){
    if(i62<0.002031391952186823){
     s0+=167.0;
     s1+=8.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i49<0.006371259689331055){
     s0+=41.0;
     s1+=276.0;
    } else {
     s0+=84.0;
     s1+=21.0;
    }
   }
  } else {
   if(i11<0.9805631041526794){
    s0+=4.0;
   } else {
    if(i49<0.04258492588996887){
     s0+=8.0;
     s1+=780.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i33<0.006125407759100199){
  if(i72<0.04175800085067749){
   if(i50<-0.0002550184726715088){
    s0+=155.0;
   } else {
    if(i51<0.05757138133049011){
     s0+=63.0;
     s1+=2764.0;
    } else {
     s0+=437.0;
     s1+=914.0;
    }
   }
  } else {
   if(i8<4.9054622650146484e-05){
    if(i6<-1.379530476697255e-05){
     s0+=303.0;
     s1+=228.0;
    } else {
     s0+=618.0;
     s1+=57.0;
    }
   } else {
    if(i21<-0.0006497502326965332){
     s0+=16.0;
     s1+=19.0;
    } else {
     s0+=1.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i0<0.10757628083229065){
   if(i24<1.123103141784668){
    if(i76<0.9852533936500549){
     s1+=12.0;
    } else {
     s0+=86.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.018138021230697632){
     s0+=4.0;
     s1+=168.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.16360238194465637){
    if(i76<1.0570744276046753){
     s0+=17.0;
     s1+=728.0;
    } else {
     s0+=51.0;
     s1+=4.0;
    }
   } else {
    if(i33<0.006438796874135733){
     s0+=3.0;
     s1+=121.0;
    } else {
     s0+=2.0;
     s1+=8466.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i1<0.07771384716033936){
  if(i18<0.014333808794617653){
   if(i54<-0.007633864879608154){
    if(i42<0.0008481056429445744){
     s0+=392.0;
     s1+=149.0;
    } else {
     s0+=767.0;
     s1+=59.0;
    }
   } else {
    if(i19<1.0070688724517822){
     s0+=54085.0;
     s1+=265.0;
    } else {
     s0+=1298.0;
     s1+=146.0;
    }
   }
  } else {
   if(i11<0.9900818467140198){
    if(i35<0.07268466055393219){
     s0+=8076.0;
     s1+=164.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i74<0.034175463020801544){
     s0+=2237.0;
     s1+=442.0;
    } else {
     s0+=1804.0;
     s1+=831.0;
    }
   }
  }
 } else {
  if(i51<0.05683034658432007){
   if(i15<0.9981733560562134){
    if(i15<0.9980686902999878){
     s0+=91.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.08642363548278809){
     s0+=78.0;
     s1+=234.0;
    } else {
     s0+=10.0;
     s1+=1688.0;
    }
   }
  } else {
   if(i16<0.00517629086971283){
    if(i6<-1.2582263479998801e-05){
     s0+=492.0;
     s1+=504.0;
    } else {
     s0+=938.0;
     s1+=102.0;
    }
   } else {
    if(i32<-0.00011510305921547115){
     s0+=69.0;
     s1+=845.0;
    } else {
     s0+=98.0;
     s1+=85.0;
    }
   }
  }
 }
} else {
 if(i41<1.0624027252197266){
  s0+=195.0;
 } else {
  if(i16<0.0019231135956943035){
   if(i8<6.377696990966797e-05){
    if(i33<0.0012779240496456623){
     s1+=8.0;
    } else {
     s0+=132.0;
     s1+=3.0;
    }
   } else {
    if(i14<1.0075042247772217){
     s0+=2.0;
    } else {
     s1+=107.0;
    }
   }
  } else {
   if(i3<1.003580093383789){
    if(i1<0.11605095863342285){
     s0+=194.0;
     s1+=422.0;
    } else {
     s0+=34.0;
     s1+=1045.0;
    }
   } else {
    if(i32<-6.89718290232122e-05){
     s0+=38.0;
     s1+=9380.0;
    } else {
     s0+=50.0;
     s1+=675.0;
    }
   }
  }
 }
}
if(i2<0.0851379930973053){
 if(i15<1.0019333362579346){
  if(i0<0.06633460521697998){
   if(i54<-0.00612872838973999){
    if(i1<0.021368980407714844){
     s0+=2619.0;
     s1+=221.0;
    } else {
     s0+=933.0;
     s1+=505.0;
    }
   } else {
    if(i7<1.0451608896255493){
     s0+=58148.0;
     s1+=379.0;
    } else {
     s0+=4427.0;
     s1+=484.0;
    }
   }
  } else {
   if(i51<0.033338695764541626){
    if(i8<-5.2541494369506836e-05){
     s0+=32.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=477.0;
    }
   } else {
    if(i40<0.03236377239227295){
     s0+=187.0;
     s1+=111.0;
    } else {
     s0+=2164.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i14<1.0002937316894531){
   if(i32<-0.0005458942614495754){
    if(i25<1.016465663909912){
     s1+=61.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i13<0.9744990468025208){
     s0+=24.0;
     s1+=52.0;
    } else {
     s0+=501.0;
     s1+=53.0;
    }
   }
  } else {
   if(i64<0.00250166654586792){
    if(i43<1.613681674003601){
     s0+=29.0;
     s1+=713.0;
    } else {
     s0+=22.0;
     s1+=25.0;
    }
   } else {
    if(i20<1.021596074104309){
     s0+=27.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0004025697708129883){
  if(i15<0.9976335763931274){
   s0+=558.0;
  } else {
   if(i50<-0.00012871623039245605){
    if(i34<1.24208402633667){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i20<0.9928604364395142){
     s0+=7.0;
     s1+=12.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i21<0.00042048096656799316){
   if(i46<0.06341630220413208){
    if(i3<0.9961743354797363){
     s0+=18.0;
     s1+=20.0;
    } else {
     s0+=46.0;
     s1+=1500.0;
    }
   } else {
    if(i5<0.12490114569664001){
     s0+=827.0;
     s1+=605.0;
    } else {
     s0+=283.0;
     s1+=1808.0;
    }
   }
  } else {
   if(i31<0.9974426031112671){
    s0+=7.0;
   } else {
    if(i47<0.0003010411746799946){
     s0+=54.0;
     s1+=209.0;
    } else {
     s0+=59.0;
     s1+=9783.0;
    }
   }
  }
 }
}
if(i1<0.07742387056350708){
 if(i8<4.088878631591797e-05){
  if(i45<1.0557184219360352){
   if(i21<-0.0014272630214691162){
    if(i22<0.9977974891662598){
     s0+=2977.0;
    } else {
     s0+=62.0;
     s1+=2.0;
    }
   } else {
    s0+=39971.0;
   }
  } else {
   if(i8<1.2218952178955078e-05){
    if(i37<0.0006755393696948886){
     s0+=6996.0;
     s1+=1214.0;
    } else {
     s0+=17618.0;
     s1+=344.0;
    }
   } else {
    if(i34<1.1039612293243408){
     s0+=67.0;
     s1+=373.0;
    } else {
     s0+=1155.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i3<1.0016067028045654){
   if(i67<0.011964676901698112){
    s0+=246.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i14<1.0041942596435547){
    if(i16<0.004724640399217606){
     s0+=95.0;
     s1+=5.0;
    } else {
     s0+=77.0;
     s1+=259.0;
    }
   } else {
    if(i76<1.0307388305664062){
     s0+=28.0;
     s1+=819.0;
    } else {
     s0+=21.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985270500183105){
  if(i42<0.008514813147485256){
   if(i11<0.99564528465271){
    s0+=402.0;
   } else {
    if(i10<-0.0004189908504486084){
     s0+=93.0;
    } else {
     s0+=18.0;
     s1+=12.0;
    }
   }
  } else {
   if(i13<0.9885221123695374){
    s1+=12.0;
   } else {
    if(i44<0.9633215665817261){
     s1+=1.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i21<0.0007128119468688965){
   if(i6<-1.9305094610899687e-05){
    if(i0<0.09562930464744568){
     s0+=282.0;
     s1+=394.0;
    } else {
     s0+=257.0;
     s1+=3698.0;
    }
   } else {
    if(i40<0.04502269625663757){
     s0+=68.0;
     s1+=348.0;
    } else {
     s0+=718.0;
     s1+=226.0;
    }
   }
  } else {
   if(i6<-4.2076273530256e-05){
    if(i66<0.9964345693588257){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=9059.0;
    }
   } else {
    if(i30<0.0026235703844577074){
     s1+=71.0;
    } else {
     s0+=47.0;
     s1+=36.0;
    }
   }
  }
 }
}
if(i8<3.427267074584961e-05){
 if(i0<0.081397145986557){
  if(i38<0.0003341931151226163){
   if(i13<1.0064079761505127){
    if(i28<1.035097360610962){
     s0+=37696.0;
     s1+=7.0;
    } else {
     s0+=1192.0;
     s1+=14.0;
    }
   } else {
    if(i24<1.0516349077224731){
     s0+=20.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i33<0.0010401553008705378){
    if(i24<1.0450632572174072){
     s0+=4609.0;
     s1+=215.0;
    } else {
     s0+=1981.0;
     s1+=1196.0;
    }
   } else {
    if(i76<0.955005407333374){
     s0+=2200.0;
     s1+=223.0;
    } else {
     s0+=20919.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i15<0.9980583190917969){
   if(i56<-1.0808560546138324e-05){
    s1+=6.0;
   } else {
    s0+=454.0;
   }
  } else {
   if(i40<0.04848363995552063){
    if(i44<1.02785325050354){
     s0+=57.0;
     s1+=1893.0;
    } else {
     s0+=59.0;
     s1+=298.0;
    }
   } else {
    if(i75<9.244109969586134e-05){
     s0+=740.0;
     s1+=367.0;
    } else {
     s0+=253.0;
     s1+=773.0;
    }
   }
  }
 }
} else {
 if(i45<1.0590304136276245){
  s0+=528.0;
 } else {
  if(i0<0.06354200839996338){
   if(i16<0.002356067532673478){
    if(i41<1.185258150100708){
     s1+=21.0;
    } else {
     s0+=131.0;
     s1+=3.0;
    }
   } else {
    if(i54<0.005348026752471924){
     s0+=90.0;
     s1+=527.0;
    } else {
     s0+=49.0;
     s1+=3.0;
    }
   }
  } else {
   if(i35<0.01795000582933426){
    if(i23<0.9992361664772034){
     s0+=103.0;
     s1+=121.0;
    } else {
     s0+=60.0;
     s1+=1900.0;
    }
   } else {
    if(i3<1.0014986991882324){
     s0+=17.0;
     s1+=91.0;
    } else {
     s0+=12.0;
     s1+=9111.0;
    }
   }
  }
 }
}
if(i2<0.0852321982383728){
 if(i21<0.0011545419692993164){
  if(i48<-0.0015790760517120361){
   if(i0<0.0579167902469635){
    if(i35<0.04817597568035126){
     s0+=3856.0;
     s1+=644.0;
    } else {
     s0+=7.0;
     s1+=76.0;
    }
   } else {
    if(i15<0.9984396696090698){
     s0+=20.0;
    } else {
     s0+=59.0;
     s1+=340.0;
    }
   }
  } else {
   if(i23<1.006691575050354){
    if(i24<1.0475225448608398){
     s0+=54257.0;
     s1+=232.0;
    } else {
     s0+=9612.0;
     s1+=951.0;
    }
   } else {
    if(i45<1.083398699760437){
     s0+=62.0;
     s1+=237.0;
    } else {
     s0+=1102.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i16<0.0019305176101624966){
   if(i37<0.0015762344701215625){
    s1+=16.0;
   } else {
    s0+=109.0;
   }
  } else {
   if(i45<1.2388319969177246){
    s1+=460.0;
   } else {
    if(i66<0.9999032020568848){
     s1+=35.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985244870185852){
  if(i37<0.006805916782468557){
   if(i6<-4.7452816943405196e-05){
    if(i22<0.9950709939002991){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    s0+=630.0;
   }
  } else {
   if(i12<-0.0004938244819641113){
    if(i9<1.0162153244018555){
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=1.0;
    }
   } else {
    if(i24<1.0678050518035889){
     s0+=9.0;
    } else {
     s1+=21.0;
    }
   }
  }
 } else {
  if(i23<1.011074185371399){
   if(i51<0.058159083127975464){
    if(i18<0.012722586281597614){
     s0+=36.0;
     s1+=255.0;
    } else {
     s0+=37.0;
     s1+=2546.0;
    }
   } else {
    if(i16<0.004122932441532612){
     s0+=836.0;
     s1+=351.0;
    } else {
     s0+=231.0;
     s1+=2144.0;
    }
   }
  } else {
   if(i12<0.00011235475540161133){
    if(i47<0.0004155283095315099){
     s0+=93.0;
     s1+=5.0;
    } else {
     s0+=27.0;
     s1+=691.0;
    }
   } else {
    if(i6<-4.179455208941363e-05){
     s1+=8035.0;
    } else {
     s0+=2.0;
     s1+=72.0;
    }
   }
  }
 }
}
if(i15<1.0016393661499023){
 if(i5<0.07233726978302002){
  if(i2<0.08173167705535889){
   if(i39<0.0002956286771222949){
    if(i3<1.0024442672729492){
     s0+=55962.0;
     s1+=483.0;
    } else {
     s0+=92.0;
     s1+=46.0;
    }
   } else {
    if(i38<0.0019988492131233215){
     s0+=3995.0;
     s1+=1172.0;
    } else {
     s0+=7710.0;
     s1+=220.0;
    }
   }
  } else {
   if(i10<-0.0003351569175720215){
    if(i24<1.1268455982208252){
     s0+=300.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i66<0.9999449849128723){
     s0+=28.0;
     s1+=704.0;
    } else {
     s0+=109.0;
     s1+=180.0;
    }
   }
  }
 } else {
  if(i42<0.005999207496643066){
   if(i57<-0.02065214142203331){
    if(i2<0.1814751923084259){
     s0+=664.0;
     s1+=61.0;
    } else {
     s0+=285.0;
     s1+=261.0;
    }
   } else {
    if(i42<0.0004302638117223978){
     s0+=180.0;
     s1+=10.0;
    } else {
     s0+=450.0;
     s1+=1600.0;
    }
   }
  } else {
   if(i72<0.02407604455947876){
    if(i43<1.274404764175415){
     s0+=5.0;
    } else {
     s0+=6.0;
     s1+=1280.0;
    }
   } else {
    if(i5<0.14961859583854675){
     s0+=93.0;
     s1+=29.0;
    } else {
     s0+=7.0;
     s1+=676.0;
    }
   }
  }
 }
} else {
 if(i8<3.49879264831543e-05){
  if(i2<0.11514094471931458){
   if(i7<1.121130108833313){
    if(i43<1.26149320602417){
     s0+=213.0;
     s1+=76.0;
    } else {
     s0+=693.0;
     s1+=29.0;
    }
   } else {
    if(i6<-4.928122507408261e-05){
     s1+=39.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  } else {
   if(i8<-3.266334533691406e-05){
    s0+=2.0;
   } else {
    if(i47<0.0011122901923954487){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i0<0.06264051795005798){
   if(i49<-0.017911404371261597){
    if(i34<1.594835877418518){
     s0+=6.0;
     s1+=366.0;
    } else {
     s0+=35.0;
     s1+=31.0;
    }
   } else {
    if(i33<0.0017554257065057755){
     s1+=53.0;
    } else {
     s0+=126.0;
     s1+=27.0;
    }
   }
  } else {
   if(i24<1.122573733329773){
    if(i68<-0.01093561202287674){
     s0+=36.0;
     s1+=2.0;
    } else {
     s0+=82.0;
     s1+=2033.0;
    }
   } else {
    if(i0<0.08061829209327698){
     s0+=7.0;
     s1+=79.0;
    } else {
     s0+=9.0;
     s1+=7391.0;
    }
   }
  }
 }
}
if(i24<1.057713270187378){
 if(i0<0.0785500705242157){
  if(i25<1.007272720336914){
   if(i62<0.001569605665281415){
    if(i27<0.00028528441907837987){
     s0+=50117.0;
     s1+=89.0;
    } else {
     s0+=6146.0;
     s1+=213.0;
    }
   } else {
    if(i24<1.0415217876434326){
     s0+=1380.0;
     s1+=29.0;
    } else {
     s0+=600.0;
     s1+=198.0;
    }
   }
  } else {
   if(i42<0.0013708686456084251){
    if(i13<1.0036967992782593){
     s0+=2.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i12<0.0002651214599609375){
     s0+=23.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i8<-1.424551010131836e-05){
   if(i72<0.0347822904586792){
    if(i60<1.8322385585634038e-05){
     s0+=8.0;
     s1+=40.0;
    } else {
     s0+=86.0;
     s1+=6.0;
    }
   } else {
    if(i9<1.0215423107147217){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=231.0;
     s1+=5.0;
    }
   }
  } else {
   if(i34<1.0840110778808594){
    s0+=78.0;
   } else {
    if(i34<1.2542991638183594){
     s0+=5.0;
     s1+=231.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
} else {
 if(i6<-7.311336230486631e-05){
  if(i23<0.9614344835281372){
   if(i6<-0.00014134492084849626){
    if(i5<0.012618392705917358){
     s0+=26.0;
     s1+=17.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i47<0.006415048614144325){
     s0+=469.0;
     s1+=19.0;
    } else {
     s0+=4.0;
     s1+=31.0;
    }
   }
  } else {
   if(i0<0.05946558713912964){
    if(i14<1.0012284517288208){
     s0+=98.0;
     s1+=63.0;
    } else {
     s0+=23.0;
     s1+=208.0;
    }
   } else {
    if(i21<-0.0025450587272644043){
     s0+=46.0;
     s1+=104.0;
    } else {
     s0+=89.0;
     s1+=10962.0;
    }
   }
  }
 } else {
  if(i4<0.00016647577285766602){
   if(i43<1.1037919521331787){
    if(i33<0.000713666551746428){
     s0+=1301.0;
     s1+=278.0;
    } else {
     s0+=322.0;
     s1+=964.0;
    }
   } else {
    if(i1<0.08577913045883179){
     s0+=7872.0;
     s1+=296.0;
    } else {
     s0+=729.0;
     s1+=1039.0;
    }
   }
  } else {
   if(i34<1.2385294437408447){
    if(i8<3.153085708618164e-05){
     s0+=268.0;
     s1+=796.0;
    } else {
     s1+=950.0;
    }
   } else {
    if(i53<0.0003702653048094362){
     s0+=885.0;
     s1+=89.0;
    } else {
     s0+=128.0;
     s1+=466.0;
    }
   }
  }
 }
}
if(i8<3.808736801147461e-05){
 if(i0<0.08208942413330078){
  if(i45<1.0598037242889404){
   if(i48<-0.0016743838787078857){
    if(i63<5.426986899692565e-05){
     s0+=579.0;
     s1+=1.0;
    } else {
     s0+=106.0;
     s1+=17.0;
    }
   } else {
    if(i43<1.0727559328079224){
     s0+=35959.0;
    } else {
     s0+=7170.0;
     s1+=22.0;
    }
   }
  } else {
   if(i15<0.9986104965209961){
    if(i38<0.0018773255869746208){
     s0+=2226.0;
     s1+=61.0;
    } else {
     s0+=6895.0;
     s1+=7.0;
    }
   } else {
    if(i49<-0.024743765592575073){
     s0+=1404.0;
     s1+=668.0;
    } else {
     s0+=14430.0;
     s1+=1271.0;
    }
   }
  }
 } else {
  if(i31<0.9989747405052185){
   if(i44<1.2257282733917236){
    if(i74<0.48262670636177063){
     s0+=402.0;
     s1+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i1<0.10639911890029907){
    if(i51<0.06040489673614502){
     s0+=112.0;
     s1+=885.0;
    } else {
     s0+=542.0;
     s1+=102.0;
    }
   } else {
    if(i6<-1.3781947927782312e-05){
     s0+=192.0;
     s1+=2351.0;
    } else {
     s0+=295.0;
     s1+=183.0;
    }
   }
  }
 }
} else {
 if(i33<0.000395697308704257){
  s0+=244.0;
 } else {
  if(i1<0.05846378207206726){
   if(i38<0.0009929767111316323){
    if(i40<0.02983999252319336){
     s0+=2.0;
     s1+=346.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i53<0.0001442988868802786){
     s0+=136.0;
     s1+=12.0;
    } else {
     s0+=92.0;
     s1+=231.0;
    }
   }
  } else {
   if(i3<0.999854564666748){
    s0+=22.0;
   } else {
    if(i23<0.9976953268051147){
     s0+=148.0;
     s1+=1568.0;
    } else {
     s0+=64.0;
     s1+=9491.0;
    }
   }
  }
 }
}
if(i5<0.07091546058654785){
 if(i14<1.0043950080871582){
  if(i1<0.07560837268829346){
   if(i58<0.04409857839345932){
    if(i65<0.0008752255234867334){
     s0+=54584.0;
     s1+=474.0;
    } else {
     s0+=607.0;
     s1+=217.0;
    }
   } else {
    if(i38<0.002176247537136078){
     s0+=4606.0;
     s1+=1119.0;
    } else {
     s0+=8288.0;
     s1+=371.0;
    }
   }
  } else {
   if(i45<1.0670123100280762){
    if(i5<0.07067078351974487){
     s0+=97.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i8<-4.7147274017333984e-05){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=735.0;
    }
   }
  }
 } else {
  if(i56<-1.4461485079664271e-05){
   if(i59<0.0034087002277374268){
    if(i3<0.9999279975891113){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=1519.0;
    }
   } else {
    s0+=6.0;
   }
  } else {
   if(i11<1.010062575340271){
    if(i31<1.0009784698486328){
     s0+=495.0;
     s1+=40.0;
    } else {
     s0+=4.0;
     s1+=15.0;
    }
   } else {
    if(i38<0.0022898786701261997){
     s1+=133.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i4<0.00014764070510864258){
  if(i37<0.0004476824833545834){
   if(i0<0.07311689853668213){
    if(i4<8.475780487060547e-05){
     s0+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i49<0.032989174127578735){
     s0+=110.0;
     s1+=4.0;
    } else {
     s0+=235.0;
    }
   }
  } else {
   if(i51<0.04909595847129822){
    if(i8<-6.499886512756348e-05){
     s0+=30.0;
     s1+=23.0;
    } else {
     s0+=14.0;
     s1+=629.0;
    }
   } else {
    if(i35<0.04016807675361633){
     s0+=1218.0;
     s1+=721.0;
    } else {
     s0+=34.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i69<0.00021976041898597032){
   if(i66<1.0000243186950684){
    if(i28<1.1218153238296509){
     s0+=13.0;
     s1+=464.0;
    } else {
     s0+=59.0;
     s1+=48.0;
    }
   } else {
    if(i76<0.9990774393081665){
     s1+=3.0;
    } else {
     s0+=101.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.12510830163955688){
    if(i48<0.004315495491027832){
     s0+=85.0;
     s1+=779.0;
    } else {
     s0+=177.0;
     s1+=35.0;
    }
   } else {
    if(i57<-0.03701924532651901){
     s0+=57.0;
     s1+=2056.0;
    } else {
     s0+=9.0;
     s1+=7591.0;
    }
   }
  }
 }
}
if(i8<3.737211227416992e-05){
 if(i1<0.07771864533424377){
  if(i2<0.06633725762367249){
   if(i67<0.00770148728042841){
    if(i62<0.0014691633405163884){
     s0+=56987.0;
     s1+=433.0;
    } else {
     s0+=4468.0;
     s1+=361.0;
    }
   } else {
    if(i3<0.9967564344406128){
     s0+=1385.0;
     s1+=59.0;
    } else {
     s0+=1757.0;
     s1+=594.0;
    }
   }
  } else {
   if(i51<0.03719210624694824){
    if(i50<-3.793835639953613e-05){
     s0+=326.0;
     s1+=28.0;
    } else {
     s0+=153.0;
     s1+=497.0;
    }
   } else {
    if(i36<0.03497447818517685){
     s0+=2863.0;
     s1+=76.0;
    } else {
     s0+=616.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i51<0.057211071252822876){
   if(i4<-0.0008823871612548828){
    if(i49<-0.049105048179626465){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=123.0;
     s1+=2.0;
    }
   } else {
    if(i73<1.7521144854981685e-06){
     s0+=45.0;
     s1+=1919.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i35<0.04245457425713539){
    if(i16<0.002390740904957056){
     s0+=803.0;
     s1+=181.0;
    } else {
     s0+=706.0;
     s1+=746.0;
    }
   } else {
    if(i4<-0.0017175674438476562){
     s0+=11.0;
    } else {
     s0+=9.0;
     s1+=510.0;
    }
   }
  }
 }
} else {
 if(i15<0.9990412592887878){
  s0+=319.0;
 } else {
  if(i12<0.00021499395370483398){
   if(i0<0.06888946890830994){
    if(i63<-8.857868124323431e-06){
     s0+=135.0;
     s1+=20.0;
    } else {
     s0+=159.0;
     s1+=419.0;
    }
   } else {
    if(i7<1.1364943981170654){
     s0+=173.0;
     s1+=1386.0;
    } else {
     s0+=7.0;
     s1+=1491.0;
    }
   }
  } else {
   if(i26<1.0022099018096924){
    if(i27<0.0001992931356653571){
     s0+=2.0;
    } else {
     s1+=706.0;
    }
   } else {
    s1+=7659.0;
   }
  }
 }
}
if(i18<0.023747090250253677){
 if(i1<0.07751694321632385){
  if(i4<0.0006022751331329346){
   if(i65<0.0007821143371984363){
    if(i12<8.70823860168457e-05){
     s0+=57783.0;
     s1+=475.0;
    } else {
     s0+=1029.0;
     s1+=151.0;
    }
   } else {
    if(i10<-0.00040799379348754883){
     s0+=1302.0;
     s1+=8.0;
    } else {
     s0+=3136.0;
     s1+=655.0;
    }
   }
  } else {
   if(i73<-5.33090633325628e-06){
    if(i14<1.0030114650726318){
     s0+=136.0;
     s1+=83.0;
    } else {
     s0+=8.0;
     s1+=577.0;
    }
   } else {
    if(i0<0.06875377893447876){
     s0+=142.0;
     s1+=18.0;
    } else {
     s0+=10.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i14<1.001355767250061){
   if(i59<0.0025756359100341797){
    if(i22<0.9956482648849487){
     s0+=95.0;
     s1+=8.0;
    } else {
     s0+=127.0;
     s1+=446.0;
    }
   } else {
    if(i76<0.9809290766716003){
     s0+=12.0;
     s1+=34.0;
    } else {
     s0+=875.0;
     s1+=218.0;
    }
   }
  } else {
   if(i60<1.0423151252325624e-05){
    if(i68<-0.006328734569251537){
     s0+=69.0;
     s1+=194.0;
    } else {
     s0+=16.0;
     s1+=2074.0;
    }
   } else {
    if(i56<-1.277329010918038e-05){
     s0+=21.0;
     s1+=80.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
} else {
 if(i25<0.9941580295562744){
  if(i5<0.07020258903503418){
   if(i11<0.9884300231933594){
    if(i48<-0.011871099472045898){
     s0+=271.0;
     s1+=100.0;
    } else {
     s0+=4370.0;
     s1+=77.0;
    }
   } else {
    if(i45<1.05495023727417){
     s0+=232.0;
    } else {
     s0+=263.0;
     s1+=656.0;
    }
   }
  } else {
   if(i73<1.1429370943005779e-06){
    if(i3<0.9942731857299805){
     s0+=59.0;
     s1+=33.0;
    } else {
     s0+=126.0;
     s1+=1692.0;
    }
   } else {
    if(i66<0.9998900890350342){
     s0+=113.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i2<0.06722259521484375){
   if(i43<1.103413462638855){
    if(i43<1.072852373123169){
     s0+=24.0;
    } else {
     s0+=42.0;
     s1+=190.0;
    }
   } else {
    if(i50<0.00012215971946716309){
     s0+=262.0;
     s1+=25.0;
    } else {
     s0+=62.0;
     s1+=62.0;
    }
   }
  } else {
   if(i69<0.0001463921944377944){
    if(i68<-0.004379192367196083){
     s0+=104.0;
     s1+=41.0;
    } else {
     s0+=19.0;
     s1+=215.0;
    }
   } else {
    if(i22<0.994774580001831){
     s0+=87.0;
     s1+=139.0;
    } else {
     s0+=164.0;
     s1+=8982.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i5<0.0809776782989502){
  if(i3<1.0024800300598145){
   if(i18<0.01712321862578392){
    if(i64<-0.0013258159160614014){
     s0+=2470.0;
     s1+=438.0;
    } else {
     s0+=54481.0;
     s1+=258.0;
    }
   } else {
    if(i3<0.9971195459365845){
     s0+=6461.0;
     s1+=88.0;
    } else {
     s0+=1689.0;
     s1+=947.0;
    }
   }
  } else {
   if(i16<0.0020079840905964375){
    if(i70<0.0035084704868495464){
     s1+=5.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i49<0.040248721837997437){
     s0+=4.0;
     s1+=516.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i4<-0.0010540485382080078){
   s0+=43.0;
  } else {
   if(i54<0.022432327270507812){
    if(i42<0.0004693646333180368){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=498.0;
    }
   } else {
    s0+=10.0;
   }
  }
 }
} else {
 if(i8<1.150369644165039e-05){
  if(i1<0.08090239763259888){
   if(i30<0.0019016145961359143){
    if(i35<0.012384096160531044){
     s0+=1251.0;
     s1+=117.0;
    } else {
     s0+=249.0;
     s1+=258.0;
    }
   } else {
    if(i54<-0.039107680320739746){
     s0+=222.0;
     s1+=60.0;
    } else {
     s0+=1832.0;
     s1+=49.0;
    }
   }
  } else {
   if(i31<0.998927116394043){
    if(i35<0.08445771783590317){
     s0+=333.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i49<0.054368793964385986){
     s0+=150.0;
     s1+=978.0;
    } else {
     s0+=563.0;
     s1+=533.0;
    }
   }
  }
 } else {
  if(i2<0.10121026635169983){
   if(i41<1.140648365020752){
    if(i41<1.0570924282073975){
     s0+=75.0;
    } else {
     s0+=7.0;
     s1+=857.0;
    }
   } else {
    if(i49<-0.03814089298248291){
     s0+=47.0;
     s1+=338.0;
    } else {
     s0+=748.0;
     s1+=229.0;
    }
   }
  } else {
   if(i6<-4.2749379645101726e-05){
    if(i73<-0.00011845072731375694){
     s0+=4.0;
    } else {
     s0+=98.0;
     s1+=10703.0;
    }
   } else {
    if(i34<1.2392117977142334){
     s0+=34.0;
     s1+=271.0;
    } else {
     s0+=126.0;
     s1+=95.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i8<3.892183303833008e-05){
  if(i0<0.0832170844078064){
   if(i65<0.0007540961960330606){
    if(i11<1.0054492950439453){
     s0+=58070.0;
     s1+=474.0;
    } else {
     s0+=140.0;
     s1+=55.0;
    }
   } else {
    if(i11<0.9895240068435669){
     s0+=4674.0;
     s1+=130.0;
    } else {
     s0+=1709.0;
     s1+=730.0;
    }
   }
  } else {
   if(i31<0.9988081455230713){
    if(i56<-1.0199353710049763e-05){
     s1+=1.0;
    } else {
     s0+=90.0;
    }
   } else {
    if(i51<0.05893644690513611){
     s0+=16.0;
     s1+=515.0;
    } else {
     s0+=79.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i42<0.00048341951332986355){
   s0+=287.0;
  } else {
   if(i27<0.00020304648205637932){
    if(i45<1.125725507736206){
     s1+=14.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i60<3.1184914405457675e-05){
     s0+=36.0;
     s1+=789.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i1<0.09391182661056519){
  if(i8<3.49879264831543e-05){
   if(i61<0.9995900392532349){
    if(i5<0.09228986501693726){
     s0+=992.0;
     s1+=48.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i13<0.9907782077789307){
     s0+=162.0;
     s1+=220.0;
    } else {
     s0+=3385.0;
     s1+=778.0;
    }
   }
  } else {
   if(i54<0.013217806816101074){
    if(i38<0.0022908300161361694){
     s0+=4.0;
     s1+=742.0;
    } else {
     s0+=142.0;
     s1+=352.0;
    }
   } else {
    if(i11<1.0091159343719482){
     s0+=92.0;
     s1+=6.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i15<0.99855637550354){
   if(i41<1.4755783081054688){
    s0+=268.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i0<0.12336069345474243){
    if(i72<0.03064054250717163){
     s0+=83.0;
     s1+=855.0;
    } else {
     s0+=267.0;
     s1+=140.0;
    }
   } else {
    if(i8<3.4749507904052734e-05){
     s0+=323.0;
     s1+=1903.0;
    } else {
     s0+=36.0;
     s1+=9474.0;
    }
   }
  }
 }
}
if(i29<1.0102111101150513){
 if(i18<0.02192845195531845){
  if(i15<1.0016372203826904){
   if(i65<0.0008118866244331002){
    if(i9<1.0428826808929443){
     s0+=55289.0;
     s1+=243.0;
    } else {
     s0+=2379.0;
     s1+=243.0;
    }
   } else {
    if(i6<4.340879058872815e-06){
     s0+=2055.0;
     s1+=717.0;
    } else {
     s0+=1941.0;
     s1+=88.0;
    }
   }
  } else {
   if(i63<5.883222911506891e-05){
    if(i56<-1.3888485227653291e-05){
     s1+=399.0;
    } else {
     s0+=92.0;
     s1+=36.0;
    }
   } else {
    if(i62<0.002202405594289303){
     s0+=449.0;
     s1+=72.0;
    } else {
     s0+=45.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i8<-1.895427703857422e-05){
   if(i3<0.9967280626296997){
    if(i2<0.09388455748558044){
     s0+=4713.0;
     s1+=49.0;
    } else {
     s0+=190.0;
     s1+=121.0;
    }
   } else {
    if(i63<4.270375211490318e-05){
     s0+=235.0;
     s1+=26.0;
    } else {
     s0+=413.0;
     s1+=474.0;
    }
   }
  } else {
   if(i35<0.0242583267390728){
    if(i0<0.05086275935173035){
     s0+=580.0;
     s1+=297.0;
    } else {
     s0+=323.0;
     s1+=1277.0;
    }
   } else {
    if(i29<0.8929785490036011){
     s0+=51.0;
     s1+=74.0;
    } else {
     s0+=50.0;
     s1+=2323.0;
    }
   }
  }
 }
} else {
 if(i0<0.08227017521858215){
  if(i16<0.002918744459748268){
   if(i36<0.010843499563634396){
    if(i41<1.1016805171966553){
     s0+=20.0;
     s1+=86.0;
    } else {
     s0+=57.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.00021594762802124023){
     s0+=1286.0;
     s1+=46.0;
    } else {
     s1+=49.0;
    }
   }
  } else {
   if(i56<-4.6036948333494365e-06){
    if(i42<0.003641997929662466){
     s0+=28.0;
     s1+=324.0;
    } else {
     s0+=93.0;
     s1+=24.0;
    }
   } else {
    if(i34<1.1726077795028687){
     s1+=2.0;
    } else {
     s0+=144.0;
    }
   }
  }
 } else {
  if(i2<0.1731448471546173){
   if(i26<1.0420944690704346){
    if(i57<-0.01678195782005787){
     s0+=94.0;
     s1+=70.0;
    } else {
     s0+=102.0;
     s1+=2168.0;
    }
   } else {
    if(i21<0.0014804601669311523){
     s0+=226.0;
     s1+=34.0;
    } else {
     s1+=69.0;
    }
   }
  } else {
   if(i11<1.0065338611602783){
    if(i17<-2.1070241928100586e-05){
     s0+=44.0;
    } else {
     s0+=87.0;
     s1+=727.0;
    }
   } else {
    if(i47<0.000300381681881845){
     s0+=15.0;
     s1+=31.0;
    } else {
     s0+=2.0;
     s1+=7022.0;
    }
   }
  }
 }
}
if(i2<0.08442455530166626){
 if(i27<0.00028071465203538537){
  if(i52<-0.004553258419036865){
   if(i13<0.9854577779769897){
    s1+=25.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i20<1.0111806392669678){
    if(i3<1.0025041103363037){
     s0+=52309.0;
     s1+=178.0;
    } else {
     s0+=71.0;
     s1+=106.0;
    }
   } else {
    if(i9<1.034277081489563){
     s0+=7.0;
    } else {
     s0+=15.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i50<-3.55839729309082e-05){
   if(i0<0.0699542760848999){
    if(i43<1.254315733909607){
     s0+=3311.0;
     s1+=115.0;
    } else {
     s0+=3357.0;
     s1+=10.0;
    }
   } else {
    if(i59<0.0011382997035980225){
     s0+=33.0;
     s1+=49.0;
    } else {
     s0+=232.0;
     s1+=13.0;
    }
   }
  } else {
   if(i37<0.0015818317187950015){
    if(i6<-1.939993308042176e-05){
     s0+=69.0;
     s1+=1055.0;
    } else {
     s0+=2937.0;
     s1+=811.0;
    }
   } else {
    if(i24<1.0819685459136963){
     s0+=3970.0;
     s1+=68.0;
    } else {
     s0+=2737.0;
     s1+=627.0;
    }
   }
  }
 }
} else {
 if(i50<-0.00013780593872070312){
  if(i24<1.3704814910888672){
   if(i3<0.9984493851661682){
    if(i14<0.994796633720398){
     s0+=648.0;
    } else {
     s0+=72.0;
     s1+=9.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   s1+=95.0;
  }
 } else {
  if(i21<0.0006978809833526611){
   if(i16<0.0016834354028105736){
    if(i63<3.271287278039381e-05){
     s0+=465.0;
     s1+=21.0;
    } else {
     s0+=92.0;
     s1+=184.0;
    }
   } else {
    if(i40<0.045191168785095215){
     s0+=52.0;
     s1+=2606.0;
    } else {
     s0+=649.0;
     s1+=1673.0;
    }
   }
  } else {
   if(i12<0.00021332502365112305){
    if(i6<-4.317488128435798e-05){
     s0+=3.0;
     s1+=1136.0;
    } else {
     s0+=41.0;
     s1+=128.0;
    }
   } else {
    s1+=8166.0;
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i17<2.0325183868408203e-05){
  if(i0<0.08408311009407043){
   if(i18<0.01706589199602604){
    if(i24<1.0451585054397583){
     s0+=48601.0;
     s1+=137.0;
    } else {
     s0+=10115.0;
     s1+=533.0;
    }
   } else {
    if(i3<0.9978045225143433){
     s0+=7185.0;
     s1+=203.0;
    } else {
     s0+=1515.0;
     s1+=923.0;
    }
   }
  } else {
   if(i10<-0.00043773651123046875){
    if(i63<0.0001766272180248052){
     s0+=364.0;
    } else {
     s0+=10.0;
     s1+=7.0;
    }
   } else {
    if(i46<0.0672118067741394){
     s0+=28.0;
     s1+=920.0;
    } else {
     s0+=589.0;
     s1+=939.0;
    }
   }
  }
 } else {
  if(i3<1.0016077756881714){
   if(i0<0.10274949669837952){
    if(i49<-0.04922834038734436){
     s0+=20.0;
     s1+=58.0;
    } else {
     s0+=992.0;
     s1+=64.0;
    }
   } else {
    if(i45<1.0633710622787476){
     s0+=19.0;
    } else {
     s0+=21.0;
     s1+=183.0;
    }
   }
  } else {
   if(i35<0.020604779943823814){
    if(i37<0.00703484658151865){
     s0+=114.0;
     s1+=552.0;
    } else {
     s0+=143.0;
     s1+=33.0;
    }
   } else {
    s1+=1502.0;
   }
  }
 }
} else {
 if(i6<-4.210590850561857e-05){
  if(i35<0.012239184230566025){
   if(i43<1.2388319969177246){
    s1+=1178.0;
   } else {
    if(i16<0.003190630115568638){
     s0+=57.0;
     s1+=12.0;
    } else {
     s0+=27.0;
     s1+=194.0;
    }
   }
  } else {
   if(i12<-5.447864532470703e-05){
    if(i56<-3.103767812717706e-05){
     s1+=166.0;
    } else {
     s0+=38.0;
     s1+=209.0;
    }
   } else {
    if(i27<0.0002266766387037933){
     s0+=3.0;
     s1+=16.0;
    } else {
     s1+=8570.0;
    }
   }
  }
 } else {
  if(i16<0.0029168641194701195){
   if(i31<0.9998968839645386){
    if(i1<0.07488101720809937){
     s0+=130.0;
     s1+=20.0;
    } else {
     s0+=19.0;
     s1+=226.0;
    }
   } else {
    if(i62<0.009556818753480911){
     s0+=864.0;
     s1+=22.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i56<1.9442848042672267e-06){
    if(i34<1.255998969078064){
     s0+=19.0;
     s1+=434.0;
    } else {
     s0+=67.0;
     s1+=65.0;
    }
   } else {
    if(i45<1.1526808738708496){
     s1+=1.0;
    } else {
     s0+=125.0;
    }
   }
  }
 }
}
if(i5<0.07196682691574097){
 if(i48<-0.0015082061290740967){
  if(i0<0.04913914203643799){
   if(i10<0.0005886554718017578){
    if(i24<1.0920991897583008){
     s0+=1480.0;
     s1+=432.0;
    } else {
     s0+=2217.0;
     s1+=103.0;
    }
   } else {
    if(i59<-0.0015960335731506348){
     s0+=47.0;
     s1+=239.0;
    } else {
     s0+=66.0;
     s1+=15.0;
    }
   }
  } else {
   if(i17<-1.9758939743041992e-05){
    s0+=77.0;
   } else {
    if(i16<0.0024496226105839014){
     s0+=146.0;
     s1+=172.0;
    } else {
     s0+=26.0;
     s1+=1062.0;
    }
   }
  }
 } else {
  if(i3<1.0024828910827637){
   if(i1<0.0783102810382843){
    if(i9<1.0401114225387573){
     s0+=59636.0;
     s1+=594.0;
    } else {
     s0+=4938.0;
     s1+=649.0;
    }
   } else {
    if(i61<0.999503493309021){
     s0+=75.0;
    } else {
     s0+=45.0;
     s1+=609.0;
    }
   }
  } else {
   if(i38<0.0024418397806584835){
    if(i30<0.00018789678870234638){
     s0+=26.0;
    } else {
     s0+=4.0;
     s1+=735.0;
    }
   } else {
    if(i22<1.0058586597442627){
     s0+=179.0;
     s1+=31.0;
    } else {
     s0+=12.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i6<-2.3738448362564668e-05){
  if(i0<0.10105317831039429){
   if(i54<0.010071873664855957){
    if(i56<9.221994332619943e-07){
     s0+=47.0;
     s1+=478.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i27<0.001060049282386899){
     s0+=38.0;
     s1+=35.0;
    } else {
     s0+=276.0;
     s1+=13.0;
    }
   }
  } else {
   if(i16<0.0026702366303652525){
    if(i39<0.004353112541139126){
     s0+=20.0;
     s1+=291.0;
    } else {
     s0+=65.0;
     s1+=16.0;
    }
   } else {
    if(i15<0.9979477524757385){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=130.0;
     s1+=11096.0;
    }
   }
  }
 } else {
  if(i40<0.042008280754089355){
   if(i0<0.08246937394142151){
    if(i51<0.04350048303604126){
     s0+=11.0;
     s1+=15.0;
    } else {
     s0+=45.0;
     s1+=2.0;
    }
   } else {
    if(i51<0.05952528119087219){
     s0+=7.0;
     s1+=216.0;
    } else {
     s0+=26.0;
     s1+=41.0;
    }
   }
  } else {
   if(i16<0.006083653308451176){
    if(i34<1.255998969078064){
     s0+=668.0;
     s1+=238.0;
    } else {
     s0+=679.0;
     s1+=24.0;
    }
   } else {
    if(i22<0.9921085834503174){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i18<0.02265756204724312){
  if(i2<0.08502736687660217){
   if(i7<1.0412344932556152){
    if(i29<0.980318546295166){
     s0+=2969.0;
     s1+=163.0;
    } else {
     s0+=52099.0;
     s1+=262.0;
    }
   } else {
    if(i4<0.0001665055751800537){
     s0+=7014.0;
     s1+=430.0;
    } else {
     s0+=816.0;
     s1+=270.0;
    }
   }
  } else {
   if(i12<5.984306335449219e-05){
    if(i40<0.05339214205741882){
     s0+=393.0;
     s1+=382.0;
    } else {
     s0+=788.0;
     s1+=98.0;
    }
   } else {
    if(i34<1.2392117977142334){
     s0+=10.0;
     s1+=450.0;
    } else {
     s0+=49.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i9<1.0401077270507812){
   if(i38<0.003284469246864319){
    if(i8<-4.83393669128418e-05){
     s0+=330.0;
     s1+=10.0;
    } else {
     s0+=388.0;
     s1+=557.0;
    }
   } else {
    if(i21<-0.0017796456813812256){
     s0+=4265.0;
     s1+=41.0;
    } else {
     s0+=117.0;
     s1+=42.0;
    }
   }
  } else {
   if(i4<-0.0006962716579437256){
    if(i6<-7.002431084401906e-05){
     s0+=2.0;
     s1+=95.0;
    } else {
     s0+=700.0;
     s1+=122.0;
    }
   } else {
    if(i6<-1.1520266525621992e-05){
     s0+=481.0;
     s1+=2316.0;
    } else {
     s0+=419.0;
     s1+=195.0;
    }
   }
  }
 }
} else {
 if(i6<-4.258579429006204e-05){
  if(i14<1.0019569396972656){
   if(i24<1.1255970001220703){
    if(i17<2.7120113372802734e-05){
     s0+=2.0;
     s1+=126.0;
    } else {
     s0+=140.0;
     s1+=121.0;
    }
   } else {
    if(i19<0.9928269386291504){
     s0+=40.0;
     s1+=276.0;
    } else {
     s1+=800.0;
    }
   }
  } else {
   if(i21<2.2709369659423828e-05){
    if(i66<0.9976024031639099){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=578.0;
    }
   } else {
    if(i21<0.0014226436614990234){
     s0+=6.0;
     s1+=1269.0;
    } else {
     s1+=7979.0;
    }
   }
  }
 } else {
  if(i71<1.002403736114502){
   if(i56<-1.5947953215800226e-05){
    s1+=13.0;
   } else {
    if(i55<0.0017367005348205566){
     s0+=323.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i16<0.0021534801926463842){
    if(i35<0.01187171321362257){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i3<1.0012544393539429){
     s0+=7.0;
     s1+=10.0;
    } else {
     s1+=232.0;
    }
   }
  }
 }
}
if(i7<1.057713270187378){
 if(i3<1.002457618713379){
  if(i0<0.08208948373794556){
   if(i65<0.0007084445096552372){
    if(i53<-0.00011841173545690253){
     s0+=7.0;
     s1+=26.0;
    } else {
     s0+=58105.0;
     s1+=453.0;
    }
   } else {
    if(i34<1.100754976272583){
     s0+=1613.0;
     s1+=573.0;
    } else {
     s0+=4813.0;
     s1+=175.0;
    }
   }
  } else {
   if(i34<1.0840110778808594){
    s0+=139.0;
   } else {
    if(i37<0.0017707983497530222){
     s0+=34.0;
     s1+=623.0;
    } else {
     s0+=137.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i16<0.0016495271120220423){
   if(i56<-1.525262268842198e-05){
    s1+=5.0;
   } else {
    s0+=95.0;
   }
  } else {
   if(i73<-3.7660681755369296e-06){
    if(i31<1.0025321245193481){
     s0+=5.0;
     s1+=546.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i22<1.0050745010375977){
     s0+=13.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i0<0.09230968356132507){
  if(i43<1.1037919521331787){
   if(i10<0.0001246631145477295){
    if(i34<1.0877101421356201){
     s0+=533.0;
     s1+=38.0;
    } else {
     s0+=244.0;
     s1+=403.0;
    }
   } else {
    s1+=564.0;
   }
  } else {
   if(i10<0.0007089972496032715){
    if(i35<0.045524537563323975){
     s0+=3926.0;
     s1+=333.0;
    } else {
     s0+=17.0;
     s1+=61.0;
    }
   } else {
    if(i64<0.0014258623123168945){
     s0+=127.0;
     s1+=481.0;
    } else {
     s0+=178.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i33<0.006100778467953205){
   if(i46<0.07787460088729858){
    if(i51<0.06595513224601746){
     s0+=14.0;
     s1+=2115.0;
    } else {
     s0+=23.0;
     s1+=99.0;
    }
   } else {
    if(i47<0.002051393035799265){
     s0+=938.0;
     s1+=497.0;
    } else {
     s0+=39.0;
     s1+=606.0;
    }
   }
  } else {
   if(i21<-0.00424957275390625){
    if(i7<1.0798602104187012){
     s0+=18.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i42<0.006422080099582672){
     s0+=31.0;
     s1+=386.0;
    } else {
     s0+=49.0;
     s1+=8981.0;
    }
   }
  }
 }
}
if(i5<0.07265964150428772){
 if(i22<1.003311276435852){
  if(i30<0.0003340567054692656){
   if(i56<-1.4139463019091636e-05){
    if(i3<1.0006864070892334){
     s0+=366.0;
    } else {
     s0+=3.0;
     s1+=66.0;
    }
   } else {
    if(i55<-0.0009938478469848633){
     s0+=65.0;
     s1+=20.0;
    } else {
     s0+=47409.0;
     s1+=100.0;
    }
   }
  } else {
   if(i43<1.100754976272583){
    if(i6<-7.891289897088427e-06){
     s0+=272.0;
     s1+=1289.0;
    } else {
     s0+=4104.0;
     s1+=559.0;
    }
   } else {
    if(i6<-5.029772000852972e-05){
     s0+=1283.0;
     s1+=461.0;
    } else {
     s0+=14702.0;
     s1+=457.0;
    }
   }
  }
 } else {
  if(i7<1.0409021377563477){
   if(i41<1.138953447341919){
    if(i10<0.00036144256591796875){
     s0+=2.0;
    } else {
     s1+=77.0;
    }
   } else {
    if(i0<0.08039376139640808){
     s0+=541.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i3<1.004243016242981){
    if(i4<0.00036853551864624023){
     s0+=163.0;
     s1+=41.0;
    } else {
     s0+=157.0;
     s1+=343.0;
    }
   } else {
    if(i21<-0.0029851794242858887){
     s0+=5.0;
    } else {
     s0+=9.0;
     s1+=1279.0;
    }
   }
  }
 }
} else {
 if(i22<1.0015941858291626){
  if(i0<0.11255711317062378){
   if(i40<0.04211556911468506){
    if(i54<0.013792544603347778){
     s0+=40.0;
     s1+=359.0;
    } else {
     s0+=43.0;
     s1+=9.0;
    }
   } else {
    if(i30<0.0014944786671549082){
     s0+=358.0;
     s1+=186.0;
    } else {
     s0+=616.0;
     s1+=14.0;
    }
   }
  } else {
   if(i57<-0.020647983998060226){
    if(i6<-2.319347913726233e-05){
     s0+=91.0;
     s1+=765.0;
    } else {
     s0+=495.0;
     s1+=137.0;
    }
   } else {
    if(i10<-0.0006736516952514648){
     s0+=16.0;
    } else {
     s0+=24.0;
     s1+=1595.0;
    }
   }
  }
 } else {
  if(i16<0.0025409935042262077){
   if(i8<6.079673767089844e-05){
    if(i9<1.0866000652313232){
     s0+=19.0;
     s1+=74.0;
    } else {
     s0+=138.0;
    }
   } else {
    s1+=128.0;
   }
  } else {
   if(i19<1.0118237733840942){
    if(i35<0.02289140224456787){
     s0+=131.0;
     s1+=393.0;
    } else {
     s0+=19.0;
     s1+=1586.0;
    }
   } else {
    if(i1<0.0768468976020813){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=7209.0;
    }
   }
  }
 }
}
if(i4<0.0005491375923156738){
 if(i2<0.0859215259552002){
  if(i9<1.0401519536972046){
   if(i44<0.9794771671295166){
    if(i2<0.05246362090110779){
     s0+=4929.0;
     s1+=322.0;
    } else {
     s0+=141.0;
     s1+=167.0;
    }
   } else {
    if(i0<0.07662707567214966){
     s0+=57387.0;
     s1+=582.0;
    } else {
     s0+=248.0;
     s1+=105.0;
    }
   }
  } else {
   if(i41<1.1037919521331787){
    if(i43<1.081458568572998){
     s0+=1233.0;
     s1+=93.0;
    } else {
     s0+=671.0;
     s1+=616.0;
    }
   } else {
    if(i69<0.0017852075397968292){
     s0+=4215.0;
     s1+=278.0;
    } else {
     s1+=39.0;
    }
   }
  }
 } else {
  if(i8<-5.7816505432128906e-05){
   if(i73<-4.77818502986338e-06){
    if(i69<0.001690442906692624){
     s0+=28.0;
     s1+=20.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i15<0.9977657794952393){
     s0+=469.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=10.0;
    }
   }
  } else {
   if(i18<0.02884378284215927){
    if(i54<0.016118168830871582){
     s0+=325.0;
     s1+=1135.0;
    } else {
     s0+=643.0;
     s1+=127.0;
    }
   } else {
    if(i56<4.5083443183102645e-06){
     s0+=169.0;
     s1+=2000.0;
    } else {
     s0+=12.0;
    }
   }
  }
 }
} else {
 if(i75<0.0004389965906739235){
  if(i6<-4.5561682782135904e-05){
   if(i21<-2.1278858184814453e-05){
    if(i18<0.020522307604551315){
     s0+=150.0;
     s1+=121.0;
    } else {
     s0+=89.0;
     s1+=1084.0;
    }
   } else {
    if(i3<1.003238320350647){
     s0+=8.0;
     s1+=540.0;
    } else {
     s0+=8.0;
     s1+=9521.0;
    }
   }
  } else {
   if(i45<1.133939266204834){
    if(i16<0.004186177626252174){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=218.0;
    }
   } else {
    if(i35<0.012600897811353207){
     s0+=187.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=70.0;
    }
   }
  }
 } else {
  s0+=188.0;
 }
}
if(i2<0.0851379930973053){
 if(i17<1.9252300262451172e-05){
  if(i0<0.06630954146385193){
   if(i39<0.00029179174453020096){
    if(i64<-0.0027503669261932373){
     s0+=67.0;
     s1+=60.0;
    } else {
     s0+=54204.0;
     s1+=288.0;
    }
   } else {
    if(i68<-0.0024512861855328083){
     s0+=4863.0;
     s1+=77.0;
    } else {
     s0+=6309.0;
     s1+=891.0;
    }
   }
  } else {
   if(i46<0.042167603969573975){
    if(i24<1.0372374057769775){
     s0+=44.0;
     s1+=4.0;
    } else {
     s0+=29.0;
     s1+=395.0;
    }
   } else {
    if(i7<1.0410044193267822){
     s0+=1535.0;
     s1+=58.0;
    } else {
     s0+=889.0;
     s1+=232.0;
    }
   }
  }
 } else {
  if(i3<1.0015428066253662){
   if(i35<0.04203273728489876){
    if(i12<-0.0003298521041870117){
     s0+=579.0;
     s1+=7.0;
    } else {
     s0+=528.0;
     s1+=49.0;
    }
   } else {
    if(i63<0.0004086083499714732){
     s1+=33.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i54<0.009289354085922241){
    if(i49<0.028611689805984497){
     s0+=117.0;
     s1+=892.0;
    } else {
     s0+=30.0;
     s1+=5.0;
    }
   } else {
    if(i7<1.124587059020996){
     s0+=65.0;
     s1+=4.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i3<0.9957077503204346){
  if(i56<-1.0568282959866337e-05){
   if(i33<0.006286232732236385){
    s0+=38.0;
   } else {
    if(i2<0.14962339401245117){
     s0+=33.0;
     s1+=25.0;
    } else {
     s0+=5.0;
     s1+=62.0;
    }
   }
  } else {
   if(i37<0.006805916782468557){
    s0+=556.0;
   } else {
    if(i39<0.0014933941420167685){
     s0+=33.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i16<0.0018948492361232638){
   if(i12<0.00021719932556152344){
    if(i53<0.00031558421324007213){
     s0+=575.0;
     s1+=66.0;
    } else {
     s0+=65.0;
     s1+=187.0;
    }
   } else {
    s1+=160.0;
   }
  } else {
   if(i2<0.1323392689228058){
    if(i68<-0.005358011927455664){
     s0+=394.0;
     s1+=139.0;
    } else {
     s0+=108.0;
     s1+=2366.0;
    }
   } else {
    if(i6<-4.596019061864354e-05){
     s0+=19.0;
     s1+=10316.0;
    } else {
     s0+=114.0;
     s1+=728.0;
    }
   }
  }
 }
}
if(i4<0.0005469322204589844){
 if(i45<1.0598037242889404){
  if(i30<0.0003843046724796295){
   if(i25<0.9851629734039307){
    if(i41<1.069220781326294){
     s0+=4446.0;
    } else {
     s1+=3.0;
    }
   } else {
    s0+=36769.0;
   }
  } else {
   if(i20<0.988978385925293){
    if(i45<1.0547096729278564){
     s0+=785.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=42.0;
    }
   } else {
    if(i69<0.0006294409395195544){
     s0+=1743.0;
    } else {
     s0+=256.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i8<1.1861324310302734e-05){
   if(i1<0.07660335302352905){
    if(i38<0.0016369889490306377){
     s0+=7905.0;
     s1+=1275.0;
    } else {
     s0+=15733.0;
     s1+=241.0;
    }
   } else {
    if(i6<-1.3793662219541147e-05){
     s0+=390.0;
     s1+=1734.0;
    } else {
     s0+=914.0;
     s1+=332.0;
    }
   }
  } else {
   if(i5<0.04783892631530762){
    if(i43<1.1039612293243408){
     s0+=48.0;
     s1+=161.0;
    } else {
     s0+=798.0;
     s1+=149.0;
    }
   } else {
    if(i10<0.0003413558006286621){
     s0+=186.0;
     s1+=999.0;
    } else {
     s0+=484.0;
     s1+=537.0;
    }
   }
  }
 }
} else {
 if(i56<-9.94788933894597e-06){
  if(i30<0.00021611133706755936){
   s0+=44.0;
  } else {
   if(i35<0.01799534633755684){
    if(i14<1.0063517093658447){
     s0+=314.0;
     s1+=522.0;
    } else {
     s0+=38.0;
     s1+=1814.0;
    }
   } else {
    if(i21<-0.00311124324798584){
     s0+=11.0;
     s1+=45.0;
    } else {
     s0+=29.0;
     s1+=9253.0;
    }
   }
  }
 } else {
  if(i20<1.0175069570541382){
   s0+=175.0;
  } else {
   if(i35<0.007517041638493538){
    s0+=6.0;
   } else {
    s1+=44.0;
   }
  }
 }
}
if(i5<0.07132309675216675){
 if(i0<0.07792800664901733){
  if(i4<0.0006022751331329346){
   if(i58<0.040564656257629395){
    if(i25<1.0061839818954468){
     s0+=53642.0;
     s1+=449.0;
    } else {
     s0+=535.0;
     s1+=130.0;
    }
   } else {
    if(i12<-0.0002193748950958252){
     s0+=7007.0;
     s1+=152.0;
    } else {
     s0+=7192.0;
     s1+=1072.0;
    }
   }
  } else {
   if(i54<0.0069498419761657715){
    if(i24<1.0415534973144531){
     s0+=60.0;
    } else {
     s0+=176.0;
     s1+=825.0;
    }
   } else {
    if(i33<0.0027024170849472284){
     s1+=5.0;
    } else {
     s0+=86.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i3<0.9967798590660095){
   if(i24<1.069517731666565){
    s0+=126.0;
   } else {
    if(i72<0.030352652072906494){
     s1+=16.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i48<0.005284905433654785){
    if(i17<-1.049041748046875e-05){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=43.0;
     s1+=1899.0;
    }
   } else {
    if(i15<1.0014081001281738){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i2<0.1111399233341217){
  if(i56<-6.799176844651811e-06){
   if(i54<0.01364964246749878){
    if(i32<-0.00011056878429371864){
     s0+=50.0;
     s1+=633.0;
    } else {
     s0+=94.0;
     s1+=164.0;
    }
   } else {
    if(i53<-0.00015815453662071377){
     s1+=4.0;
    } else {
     s0+=442.0;
     s1+=20.0;
    }
   }
  } else {
   if(i18<0.02797951176762581){
    if(i52<-0.003234684467315674){
     s0+=40.0;
     s1+=30.0;
    } else {
     s0+=603.0;
     s1+=28.0;
    }
   } else {
    if(i24<1.107304573059082){
     s0+=20.0;
     s1+=83.0;
    } else {
     s0+=78.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i15<0.9985154867172241){
   if(i37<0.004255969077348709){
    s0+=247.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i69<0.0001353733823634684){
    if(i9<1.1452434062957764){
     s0+=65.0;
     s1+=254.0;
    } else {
     s0+=164.0;
     s1+=16.0;
    }
   } else {
    if(i21<-1.0371208190917969e-05){
     s0+=292.0;
     s1+=2284.0;
    } else {
     s0+=50.0;
     s1+=9104.0;
    }
   }
  }
 }
}
if(i8<3.820657730102539e-05){
 if(i24<1.0494996309280396){
  if(i74<0.018993373960256577){
   if(i3<1.0025296211242676){
    if(i55<-0.0011028945446014404){
     s0+=48.0;
     s1+=63.0;
    } else {
     s0+=47590.0;
     s1+=74.0;
    }
   } else {
    if(i61<1.000080943107605){
     s0+=4.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i4<5.4895877838134766e-05){
    if(i42<0.0008412663592025638){
     s0+=2768.0;
     s1+=232.0;
    } else {
     s0+=5937.0;
     s1+=11.0;
    }
   } else {
    if(i56<-7.920396456029266e-06){
     s0+=4.0;
     s1+=70.0;
    } else {
     s0+=66.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i18<0.021923843771219254){
   if(i53<-9.26050342968665e-05){
    if(i37<0.0014135707169771194){
     s0+=134.0;
     s1+=455.0;
    } else {
     s0+=141.0;
     s1+=19.0;
    }
   } else {
    if(i5<0.0607130229473114){
     s0+=8915.0;
     s1+=685.0;
    } else {
     s0+=1408.0;
     s1+=591.0;
    }
   }
  } else {
   if(i2<0.06722325086593628){
    if(i41<1.1955413818359375){
     s0+=264.0;
     s1+=370.0;
    } else {
     s0+=2207.0;
     s1+=113.0;
    }
   } else {
    if(i73<1.5278560567821842e-06){
     s0+=539.0;
     s1+=2794.0;
    } else {
     s0+=233.0;
    }
   }
  }
 }
} else {
 if(i41<1.0611095428466797){
  s0+=277.0;
 } else {
  if(i6<-4.32968299719505e-05){
   if(i12<6.258487701416016e-06){
    if(i35<0.022032108157873154){
     s0+=231.0;
     s1+=246.0;
    } else {
     s0+=5.0;
     s1+=1018.0;
    }
   } else {
    if(i16<0.0008191149681806564){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=5.0;
     s1+=10281.0;
    }
   }
  } else {
   if(i34<1.2392117977142334){
    s1+=211.0;
   } else {
    if(i13<1.002942681312561){
     s1+=32.0;
    } else {
     s0+=166.0;
    }
   }
  }
 }
}
if(i14<1.0038821697235107){
 if(i2<0.08523821830749512){
  if(i18<0.016540851444005966){
   if(i4<0.0006026923656463623){
    if(i0<0.06959414482116699){
     s0+=57042.0;
     s1+=528.0;
    } else {
     s0+=1246.0;
     s1+=142.0;
    }
   } else {
    if(i56<-1.380900721414946e-05){
     s0+=46.0;
     s1+=70.0;
    } else {
     s0+=80.0;
     s1+=4.0;
    }
   }
  } else {
   if(i34<1.2371783256530762){
    if(i14<0.993751585483551){
     s0+=1047.0;
     s1+=16.0;
    } else {
     s0+=1381.0;
     s1+=1141.0;
    }
   } else {
    if(i67<0.011440282687544823){
     s0+=6820.0;
     s1+=79.0;
    } else {
     s0+=673.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i22<0.9953738451004028){
   if(i16<0.006178419105708599){
    if(i33<0.005862330086529255){
     s0+=550.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=48.0;
    }
   } else {
    if(i1<0.08433419466018677){
     s0+=9.0;
    } else {
     s0+=2.0;
     s1+=147.0;
    }
   }
  } else {
   if(i16<0.0018080024747177958){
    if(i28<1.0403504371643066){
     s0+=40.0;
     s1+=119.0;
    } else {
     s0+=585.0;
     s1+=94.0;
    }
   } else {
    if(i40<0.04519572854042053){
     s0+=44.0;
     s1+=2643.0;
    } else {
     s0+=606.0;
     s1+=1709.0;
    }
   }
  }
 }
} else {
 if(i27<0.00019995711045339704){
  if(i2<0.06566077470779419){
   if(i43<1.1016805171966553){
    if(i26<1.0045795440673828){
     s0+=23.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   } else {
    s0+=346.0;
   }
  } else {
   if(i31<1.000579833984375){
    s0+=1.0;
   } else {
    s1+=17.0;
   }
  }
 } else {
  if(i4<0.00014841556549072266){
   if(i33<0.0061811413615942){
    if(i0<0.08361339569091797){
     s0+=140.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i23<0.9809473752975464){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   }
  } else {
   if(i2<0.07137495279312134){
    if(i73<-4.571659246721538e-06){
     s0+=19.0;
     s1+=436.0;
    } else {
     s0+=127.0;
     s1+=24.0;
    }
   } else {
    if(i56<-1.2714373951894231e-05){
     s0+=37.0;
     s1+=9329.0;
    } else {
     s0+=64.0;
     s1+=333.0;
    }
   }
  }
 }
}
if(i3<1.002431869506836){
 if(i7<1.0450963973999023){
  if(i27<0.00028104009106755257){
   if(i0<0.07893314957618713){
    if(i20<1.0119495391845703){
     s0+=51131.0;
     s1+=161.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i74<0.02565310336649418){
     s0+=133.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=19.0;
    }
   }
  } else {
   if(i1<0.08399125933647156){
    if(i42<0.0008681913604959846){
     s0+=2816.0;
     s1+=575.0;
    } else {
     s0+=8110.0;
     s1+=114.0;
    }
   } else {
    if(i22<0.9937425255775452){
     s0+=41.0;
    } else {
     s0+=28.0;
     s1+=194.0;
    }
   }
  }
 } else {
  if(i35<0.04031705483794212){
   if(i21<0.0010605156421661377){
    if(i70<0.018610836938023567){
     s0+=3758.0;
     s1+=590.0;
    } else {
     s0+=4807.0;
     s1+=2572.0;
    }
   } else {
    if(i0<0.06010875105857849){
     s0+=31.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=300.0;
    }
   }
  } else {
   if(i18<0.024510862305760384){
    if(i15<1.0011327266693115){
     s0+=72.0;
     s1+=13.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i24<1.065779685974121){
     s0+=11.0;
    } else {
     s0+=14.0;
     s1+=1090.0;
    }
   }
  }
 }
} else {
 if(i47<0.00099403306376189){
  if(i56<-1.4369477867148817e-05){
   if(i9<1.0266828536987305){
    if(i37<0.001966297859326005){
     s0+=2.0;
    } else {
     s1+=16.0;
    }
   } else {
    s1+=774.0;
   }
  } else {
   if(i41<1.1983051300048828){
    if(i6<-4.753739631269127e-05){
     s1+=147.0;
    } else {
     s0+=17.0;
    }
   } else {
    s0+=196.0;
   }
  }
 } else {
  if(i66<1.002123475074768){
   if(i21<0.0002599358558654785){
    if(i35<0.01683904603123665){
     s0+=82.0;
     s1+=145.0;
    } else {
     s0+=8.0;
     s1+=920.0;
    }
   } else {
    if(i16<0.002568235155194998){
     s0+=10.0;
     s1+=91.0;
    } else {
     s0+=2.0;
     s1+=8702.0;
    }
   }
  } else {
   if(i21<-9.238719940185547e-06){
    if(i75<0.00015565635112579912){
     s0+=84.0;
     s1+=50.0;
    } else {
     s1+=72.0;
    }
   } else {
    if(i6<-8.463750418741256e-05){
     s1+=288.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i7<1.0564017295837402){
 if(i14<1.00433349609375){
  if(i18<0.014277550391852856){
   if(i25<1.0085896253585815){
    if(i64<-0.001345127820968628){
     s0+=1663.0;
     s1+=325.0;
    } else {
     s0+=52128.0;
     s1+=207.0;
    }
   } else {
    if(i38<0.0011973970104008913){
     s1+=111.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i14<0.9943885803222656){
    if(i0<0.10115325450897217){
     s0+=7952.0;
     s1+=61.0;
    } else {
     s0+=40.0;
     s1+=26.0;
    }
   } else {
    if(i35<0.01133939903229475){
     s0+=2053.0;
     s1+=418.0;
    } else {
     s0+=328.0;
     s1+=861.0;
    }
   }
  }
 } else {
  if(i10<0.00038743019104003906){
   if(i7<1.045311689376831){
    if(i15<1.0012636184692383){
     s0+=325.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i41<1.1354939937591553){
     s1+=99.0;
    } else {
     s0+=33.0;
     s1+=1.0;
    }
   }
  } else {
   if(i24<1.0415534973144531){
    s0+=11.0;
   } else {
    if(i53<-1.8280748918186873e-05){
     s0+=5.0;
     s1+=16.0;
    } else {
     s1+=359.0;
    }
   }
  }
 }
} else {
 if(i6<-4.392413393361494e-05){
  if(i63<9.187040268443525e-05){
   if(i8<-2.232193946838379e-05){
    if(i33<0.0031086828093975782){
     s1+=22.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i21<4.947185516357422e-06){
     s0+=57.0;
     s1+=282.0;
    } else {
     s0+=29.0;
     s1+=9372.0;
    }
   }
  } else {
   if(i0<0.1248999834060669){
    if(i62<0.0030228353571146727){
     s0+=545.0;
     s1+=106.0;
    } else {
     s0+=181.0;
     s1+=592.0;
    }
   } else {
    if(i47<0.0018786402652040124){
     s0+=24.0;
     s1+=140.0;
    } else {
     s0+=6.0;
     s1+=2386.0;
    }
   }
  }
 } else {
  if(i43<1.1037919521331787){
   if(i73<-3.5754969758272637e-06){
    if(i22<0.997596263885498){
     s0+=2.0;
     s1+=5.0;
    } else {
     s1+=244.0;
    }
   } else {
    if(i70<0.015328649431467056){
     s0+=571.0;
     s1+=120.0;
    } else {
     s0+=323.0;
     s1+=519.0;
    }
   }
  } else {
   if(i1<0.10735037922859192){
    if(i17<3.1888484954833984e-05){
     s0+=3949.0;
     s1+=253.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i9<1.0847642421722412){
     s0+=15.0;
     s1+=372.0;
    } else {
     s0+=585.0;
     s1+=422.0;
    }
   }
  }
 }
}
if(i3<1.0024597644805908){
 if(i9<1.0451881885528564){
  if(i5<0.0808773934841156){
   if(i27<0.0002829785516951233){
    if(i29<1.0101690292358398){
     s0+=51986.0;
     s1+=193.0;
    } else {
     s0+=33.0;
     s1+=29.0;
    }
   } else {
    if(i14<0.9943345785140991){
     s0+=8386.0;
     s1+=123.0;
    } else {
     s0+=4561.0;
     s1+=1386.0;
    }
   }
  } else {
   if(i24<1.0458996295928955){
    if(i44<0.9958763122558594){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i4<-0.0010848641395568848){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i1<0.0869467556476593){
   if(i18<0.0181228406727314){
    if(i11<1.0036578178405762){
     s0+=2744.0;
     s1+=175.0;
    } else {
     s0+=341.0;
     s1+=167.0;
    }
   } else {
    if(i34<1.1039612293243408){
     s0+=137.0;
     s1+=350.0;
    } else {
     s0+=1092.0;
     s1+=301.0;
    }
   }
  } else {
   if(i31<0.9988291263580322){
    if(i45<1.5345615148544312){
     s0+=314.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i48<0.004445195198059082){
     s0+=144.0;
     s1+=1783.0;
    } else {
     s0+=707.0;
     s1+=1154.0;
    }
   }
  }
 }
} else {
 if(i7<1.0326924324035645){
  if(i47<0.0009270512382499874){
   s0+=46.0;
  } else {
   s1+=40.0;
  }
 } else {
  if(i0<0.05839836597442627){
   if(i47<0.0009530502138659358){
    if(i38<0.001506741507910192){
     s0+=6.0;
     s1+=16.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i66<1.0016248226165771){
     s0+=35.0;
     s1+=332.0;
    } else {
     s0+=51.0;
     s1+=18.0;
    }
   }
  } else {
   if(i1<0.1316651701927185){
    if(i59<0.00608333945274353){
     s0+=106.0;
     s1+=1969.0;
    } else {
     s0+=48.0;
     s1+=11.0;
    }
   } else {
    if(i0<0.1725631058216095){
     s0+=19.0;
     s1+=887.0;
    } else {
     s1+=8135.0;
    }
   }
  }
 }
}
if(i3<1.0024672746658325){
 if(i5<0.07071012258529663){
  if(i54<-0.006045013666152954){
   if(i35<0.0486038438975811){
    if(i11<0.9823535680770874){
     s0+=1405.0;
     s1+=41.0;
    } else {
     s0+=2315.0;
     s1+=797.0;
    }
   } else {
    if(i44<0.7913037538528442){
     s0+=11.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=93.0;
    }
   }
  } else {
   if(i70<0.011314015835523605){
    if(i65<0.0008430439047515392){
     s0+=47222.0;
     s1+=245.0;
    } else {
     s0+=44.0;
     s1+=54.0;
    }
   } else {
    if(i7<1.0428757667541504){
     s0+=14155.0;
     s1+=406.0;
    } else {
     s0+=3649.0;
     s1+=1062.0;
    }
   }
  }
 } else {
  if(i6<-2.190807572333142e-05){
   if(i1<0.10101139545440674){
    if(i48<0.004608809947967529){
     s0+=125.0;
     s1+=431.0;
    } else {
     s0+=287.0;
     s1+=19.0;
    }
   } else {
    if(i35<0.023413043469190598){
     s0+=173.0;
     s1+=673.0;
    } else {
     s0+=19.0;
     s1+=1516.0;
    }
   }
  } else {
   if(i53<0.0005619194125756621){
    if(i18<0.02846486121416092){
     s0+=1051.0;
     s1+=89.0;
    } else {
     s0+=273.0;
     s1+=213.0;
    }
   } else {
    if(i61<0.9995603561401367){
     s0+=78.0;
     s1+=1.0;
    } else {
     s0+=72.0;
     s1+=257.0;
    }
   }
  }
 }
} else {
 if(i2<0.062826007604599){
  if(i50<0.00018084049224853516){
   if(i47<0.0014994479715824127){
    if(i26<0.9269554615020752){
     s1+=2.0;
    } else {
     s0+=139.0;
     s1+=3.0;
    }
   } else {
    if(i43<1.5944836139678955){
     s1+=46.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i14<1.0005964040756226){
    if(i15<1.0033777952194214){
     s0+=14.0;
     s1+=43.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i7<1.0262722969055176){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=24.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i16<0.00218489789403975){
   if(i25<1.0201711654663086){
    if(i52<0.002781391143798828){
     s0+=13.0;
     s1+=39.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i12<0.0003045797348022461){
     s0+=2.0;
    } else {
     s1+=114.0;
    }
   }
  } else {
   if(i11<1.0012447834014893){
    if(i0<0.12597206234931946){
     s0+=65.0;
     s1+=205.0;
    } else {
     s1+=796.0;
    }
   } else {
    if(i47<0.0017265563365072012){
     s0+=22.0;
     s1+=2030.0;
    } else {
     s0+=1.0;
     s1+=7453.0;
    }
   }
  }
 }
}
if(i8<3.427267074584961e-05){
 if(i2<0.08558851480484009){
  if(i39<0.0002956066164188087){
   if(i19<1.008420705795288){
    if(i64<-0.0017223656177520752){
     s0+=260.0;
     s1+=135.0;
    } else {
     s0+=54962.0;
     s1+=304.0;
    }
   } else {
    if(i42<0.0006169204716570675){
     s0+=77.0;
     s1+=109.0;
    } else {
     s0+=370.0;
     s1+=38.0;
    }
   }
  } else {
   if(i43<1.103413462638855){
    if(i45<1.067455530166626){
     s0+=2463.0;
     s1+=100.0;
    } else {
     s0+=804.0;
     s1+=938.0;
    }
   } else {
    if(i59<-0.0029067695140838623){
     s0+=1099.0;
     s1+=209.0;
    } else {
     s0+=8425.0;
     s1+=226.0;
    }
   }
  }
 } else {
  if(i15<0.998518705368042){
   if(i63<0.00018399985856376588){
    if(i3<0.9969772100448608){
     s0+=644.0;
    } else {
     s0+=22.0;
     s1+=7.0;
    }
   } else {
    if(i67<0.007090716622769833){
     s0+=37.0;
     s1+=9.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i51<0.05971965193748474){
    if(i2<0.08951902389526367){
     s0+=53.0;
     s1+=128.0;
    } else {
     s0+=35.0;
     s1+=1745.0;
    }
   } else {
    if(i5<0.1601322889328003){
     s0+=804.0;
     s1+=436.0;
    } else {
     s0+=168.0;
     s1+=853.0;
    }
   }
  }
 }
} else {
 if(i7<1.0336670875549316){
  if(i53<0.00011508363240864128){
   s0+=459.0;
  } else {
   if(i2<0.2450319528579712){
    s1+=54.0;
   } else {
    s0+=3.0;
   }
  }
 } else {
  if(i45<1.0590304136276245){
   s0+=48.0;
  } else {
   if(i0<0.06785306334495544){
    if(i50<0.00014036893844604492){
     s0+=115.0;
     s1+=27.0;
    } else {
     s0+=143.0;
     s1+=595.0;
    }
   } else {
    if(i18<0.026358166709542274){
     s0+=146.0;
     s1+=2653.0;
    } else {
     s0+=41.0;
     s1+=8502.0;
    }
   }
  }
 }
}
if(i2<0.0847247838973999){
 if(i17<2.2113323211669922e-05){
  if(i9<1.0398929119110107){
   if(i7<1.0436501502990723){
    if(i62<0.001749246846884489){
     s0+=56666.0;
     s1+=323.0;
    } else {
     s0+=2910.0;
     s1+=283.0;
    }
   } else {
    if(i20<0.993108868598938){
     s0+=660.0;
     s1+=317.0;
    } else {
     s0+=2119.0;
     s1+=151.0;
    }
   }
  } else {
   if(i64<0.002759397029876709){
    if(i8<9.000301361083984e-06){
     s0+=3847.0;
     s1+=557.0;
    } else {
     s0+=445.0;
     s1+=409.0;
    }
   } else {
    if(i23<1.006527066230774){
     s0+=1316.0;
     s1+=8.0;
    } else {
     s0+=370.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i49<-0.00021475553512573242){
   if(i14<1.0019397735595703){
    if(i53<0.0002700574405025691){
     s0+=199.0;
     s1+=20.0;
    } else {
     s0+=80.0;
     s1+=172.0;
    }
   } else {
    if(i56<-9.555627912050113e-06){
     s0+=23.0;
     s1+=562.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i56<-3.194784949300811e-05){
    if(i21<-3.9696693420410156e-05){
     s0+=408.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i38<0.0015725234989076853){
     s0+=60.0;
     s1+=93.0;
    } else {
     s0+=193.0;
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i15<0.9986474514007568){
  if(i31<0.9985921382904053){
   s0+=506.0;
  } else {
   if(i15<0.9979311227798462){
    if(i26<0.9705166816711426){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=93.0;
     s1+=2.0;
    }
   } else {
    if(i72<0.04462423920631409){
     s0+=27.0;
     s1+=33.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i18<0.023208389058709145){
   if(i48<0.004655390977859497){
    if(i3<1.0009236335754395){
     s0+=211.0;
     s1+=498.0;
    } else {
     s0+=54.0;
     s1+=2150.0;
    }
   } else {
    if(i60<-6.571827270818176e-06){
     s1+=189.0;
    } else {
     s0+=633.0;
     s1+=180.0;
    }
   }
  } else {
   if(i69<0.00017633981769904494){
    if(i28<1.1279879808425903){
     s0+=37.0;
     s1+=453.0;
    } else {
     s0+=106.0;
     s1+=16.0;
    }
   } else {
    if(i16<0.0032758209854364395){
     s0+=97.0;
     s1+=474.0;
    } else {
     s0+=120.0;
     s1+=10058.0;
    }
   }
  }
 }
}
if(i3<1.002474308013916){
 if(i13<1.0081982612609863){
  if(i58<0.04734017327427864){
   if(i54<-0.009297609329223633){
    if(i45<1.1637288331985474){
     s0+=43.0;
     s1+=99.0;
    } else {
     s0+=71.0;
     s1+=1.0;
    }
   } else {
    if(i7<1.0436501502990723){
     s0+=53954.0;
     s1+=328.0;
    } else {
     s0+=3296.0;
     s1+=466.0;
    }
   }
  } else {
   if(i5<0.06862813234329224){
    if(i8<-1.7702579498291016e-05){
     s0+=8088.0;
     s1+=423.0;
    } else {
     s0+=2999.0;
     s1+=1022.0;
    }
   } else {
    if(i40<0.04033303260803223){
     s0+=58.0;
     s1+=869.0;
    } else {
     s0+=1221.0;
     s1+=715.0;
    }
   }
  }
 } else {
  if(i6<-3.3156386052723974e-05){
   if(i0<0.05780738592147827){
    if(i55<0.0012693405151367188){
     s0+=7.0;
     s1+=47.0;
    } else {
     s0+=53.0;
     s1+=11.0;
    }
   } else {
    if(i15<1.0011577606201172){
     s0+=23.0;
     s1+=1209.0;
    } else {
     s0+=52.0;
     s1+=214.0;
    }
   }
  } else {
   if(i38<0.007575768977403641){
    if(i24<1.0731287002563477){
     s0+=9.0;
     s1+=47.0;
    } else {
     s0+=849.0;
     s1+=161.0;
    }
   } else {
    if(i18<0.038189779967069626){
     s0+=115.0;
     s1+=50.0;
    } else {
     s0+=17.0;
     s1+=121.0;
    }
   }
  }
 }
} else {
 if(i39<0.00016248287283815444){
  if(i0<0.058975428342819214){
   if(i53<1.9975490431534126e-05){
    s0+=66.0;
   } else {
    if(i75<5.348110425984487e-05){
     s1+=2.0;
    } else {
     s0+=14.0;
    }
   }
  } else {
   if(i50<0.00015181303024291992){
    s0+=3.0;
   } else {
    s1+=35.0;
   }
  }
 } else {
  if(i21<0.0014290213584899902){
   if(i10<0.00043323636054992676){
    if(i43<1.2648893594741821){
     s0+=84.0;
     s1+=72.0;
    } else {
     s1+=86.0;
    }
   } else {
    if(i22<0.9971460103988647){
     s0+=29.0;
     s1+=16.0;
    } else {
     s0+=174.0;
     s1+=2714.0;
    }
   }
  } else {
   if(i30<0.00023986244923435152){
    s0+=5.0;
   } else {
    if(i69<0.00010427578672533855){
     s0+=6.0;
     s1+=43.0;
    } else {
     s1+=8265.0;
    }
   }
  }
 }
}
if(i0<0.08225393295288086){
 if(i10<0.000526130199432373){
  if(i7<1.0398929119110107){
   if(i19<1.0087194442749023){
    if(i48<-0.001657634973526001){
     s0+=1625.0;
     s1+=178.0;
    } else {
     s0+=56555.0;
     s1+=321.0;
    }
   } else {
    if(i43<1.1760990619659424){
     s1+=17.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i37<0.001431108103133738){
    if(i63<3.132668643957004e-05){
     s0+=4226.0;
     s1+=513.0;
    } else {
     s0+=1016.0;
     s1+=708.0;
    }
   } else {
    if(i64<-0.0010863244533538818){
     s0+=908.0;
     s1+=136.0;
    } else {
     s0+=3847.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i59<-1.0788440704345703e-05){
   if(i8<4.571676254272461e-05){
    if(i54<-0.0017595291137695312){
     s0+=97.0;
     s1+=113.0;
    } else {
     s0+=217.0;
     s1+=33.0;
    }
   } else {
    if(i73<-4.417811396706384e-06){
     s0+=73.0;
     s1+=747.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i14<0.9994622468948364){
    if(i9<1.001302719116211){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=554.0;
     s1+=14.0;
    }
   } else {
    if(i2<0.06305000185966492){
     s0+=67.0;
     s1+=15.0;
    } else {
     s0+=37.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i6<-1.4963203284423798e-05){
  if(i15<0.9980631470680237){
   if(i11<0.9828672409057617){
    if(i74<0.08257079124450684){
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=51.0;
   }
  } else {
   if(i45<1.3008317947387695){
    if(i6<-4.623188215191476e-05){
     s0+=228.0;
     s1+=5336.0;
    } else {
     s0+=390.0;
     s1+=1472.0;
    }
   } else {
    if(i8<-6.619095802307129e-05){
     s0+=13.0;
     s1+=52.0;
    } else {
     s0+=3.0;
     s1+=7004.0;
    }
   }
  }
 } else {
  if(i44<1.0127208232879639){
   if(i31<0.9993013143539429){
    s0+=211.0;
   } else {
    if(i37<0.0005097823450341821){
     s0+=49.0;
     s1+=12.0;
    } else {
     s0+=75.0;
     s1+=294.0;
    }
   }
  } else {
   if(i22<1.0031061172485352){
    if(i18<0.037017740309238434){
     s0+=516.0;
     s1+=28.0;
    } else {
     s0+=164.0;
     s1+=69.0;
    }
   } else {
    s1+=40.0;
   }
  }
 }
}
if(i15<1.0016474723815918){
 if(i13<1.0081751346588135){
  if(i0<0.08242163062095642){
   if(i24<1.0467959642410278){
    if(i45<1.0557184219360352){
     s0+=41757.0;
     s1+=2.0;
    } else {
     s0+=13142.0;
     s1+=245.0;
    }
   } else {
    if(i45<1.1031841039657593){
     s0+=4720.0;
     s1+=1194.0;
    } else {
     s0+=8031.0;
     s1+=255.0;
    }
   }
  } else {
   if(i10<-0.00043773651123046875){
    if(i69<0.0008532053325325251){
     s0+=305.0;
    } else {
     s0+=65.0;
     s1+=7.0;
    }
   } else {
    if(i51<0.05853345990180969){
     s0+=36.0;
     s1+=1194.0;
    } else {
     s0+=692.0;
     s1+=770.0;
    }
   }
  }
 } else {
  if(i31<1.0002464056015015){
   if(i13<1.010773777961731){
    if(i1<0.09209480881690979){
     s0+=257.0;
     s1+=59.0;
    } else {
     s0+=41.0;
     s1+=191.0;
    }
   } else {
    if(i10<-0.00023245811462402344){
     s0+=100.0;
     s1+=68.0;
    } else {
     s0+=122.0;
     s1+=2072.0;
    }
   }
  } else {
   if(i6<-4.3363510485505685e-05){
    if(i48<-0.0012653470039367676){
     s0+=23.0;
     s1+=67.0;
    } else {
     s0+=10.0;
     s1+=426.0;
    }
   } else {
    if(i20<1.001434326171875){
     s0+=1.0;
     s1+=36.0;
    } else {
     s0+=705.0;
     s1+=119.0;
    }
   }
  }
 }
} else {
 if(i4<0.0004349946975708008){
  if(i0<0.1095009446144104){
   if(i54<-0.007752567529678345){
    if(i36<0.10830557346343994){
     s0+=2.0;
     s1+=44.0;
    } else {
     s0+=110.0;
     s1+=31.0;
    }
   } else {
    if(i41<1.1480928659439087){
     s0+=52.0;
     s1+=45.0;
    } else {
     s0+=743.0;
     s1+=10.0;
    }
   }
  } else {
   if(i36<0.013098247349262238){
    s0+=7.0;
   } else {
    if(i1<0.1270102858543396){
     s0+=11.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i2<0.07511201500892639){
   if(i59<6.154179573059082e-05){
    if(i47<0.0007634264184162021){
     s0+=36.0;
     s1+=4.0;
    } else {
     s0+=62.0;
     s1+=601.0;
    }
   } else {
    if(i42<0.0020942571572959423){
     s1+=26.0;
    } else {
     s0+=130.0;
     s1+=27.0;
    }
   }
  } else {
   if(i2<0.13193079829216003){
    if(i76<1.046627163887024){
     s0+=66.0;
     s1+=1293.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i6<-5.448270167107694e-05){
     s0+=9.0;
     s1+=7824.0;
    } else {
     s0+=14.0;
     s1+=116.0;
    }
   }
  }
 }
}
if(i2<0.08502736687660217){
 if(i21<0.0012145638465881348){
  if(i7<1.0436501502990723){
   if(i30<0.0002915279765147716){
    if(i53<0.000303612498100847){
     s0+=45413.0;
     s1+=15.0;
    } else {
     s0+=100.0;
     s1+=30.0;
    }
   } else {
    if(i24<1.0412344932556152){
     s0+=9122.0;
     s1+=89.0;
    } else {
     s0+=6471.0;
     s1+=729.0;
    }
   }
  } else {
   if(i34<1.1013743877410889){
    if(i56<-6.7273508648213465e-06){
     s0+=58.0;
     s1+=621.0;
    } else {
     s0+=1910.0;
     s1+=426.0;
    }
   } else {
    if(i15<1.0028514862060547){
     s0+=5693.0;
     s1+=504.0;
    } else {
     s0+=168.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i31<1.0007784366607666){
   if(i69<0.000545192277058959){
    if(i42<0.002599977655336261){
     s1+=42.0;
    } else {
     s0+=101.0;
    }
   } else {
    s1+=88.0;
   }
  } else {
   if(i15<1.0018436908721924){
    if(i15<1.0018248558044434){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=353.0;
   }
  }
 }
} else {
 if(i8<3.0100345611572266e-05){
  if(i17<-1.9729137420654297e-05){
   if(i50<-0.00012597441673278809){
    s0+=584.0;
   } else {
    if(i18<0.01709110476076603){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i40<0.04697912931442261){
    if(i44<1.031606912612915){
     s0+=57.0;
     s1+=1705.0;
    } else {
     s0+=46.0;
     s1+=208.0;
    }
   } else {
    if(i41<1.3726040124893188){
     s0+=1027.0;
     s1+=782.0;
    } else {
     s0+=22.0;
     s1+=299.0;
    }
   }
  }
 } else {
  if(i12<-5.334615707397461e-05){
   if(i65<0.0014138241531327367){
    if(i73<-7.864068720664363e-06){
     s0+=25.0;
     s1+=197.0;
    } else {
     s0+=117.0;
     s1+=157.0;
    }
   } else {
    if(i35<0.005186386406421661){
     s0+=5.0;
     s1+=19.0;
    } else {
     s1+=555.0;
    }
   }
  } else {
   if(i3<0.9974263906478882){
    s0+=13.0;
   } else {
    if(i56<-1.1153619198012166e-05){
     s0+=39.0;
     s1+=10037.0;
    } else {
     s0+=22.0;
     s1+=111.0;
    }
   }
  }
 }
}
if(i0<0.08000534772872925){
 if(i4<0.0006022751331329346){
  if(i27<0.00030670006526634097){
   if(i20<1.0108616352081299){
    if(i52<-0.004633128643035889){
     s0+=10.0;
     s1+=39.0;
    } else {
     s0+=53331.0;
     s1+=231.0;
    }
   } else {
    if(i33<0.0011726651573553681){
     s0+=1.0;
     s1+=64.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   }
  } else {
   if(i14<0.9940367341041565){
    if(i49<-0.03626486659049988){
     s0+=581.0;
     s1+=69.0;
    } else {
     s0+=8157.0;
     s1+=36.0;
    }
   } else {
    if(i42<0.00028440169990062714){
     s0+=2056.0;
    } else {
     s0+=4681.0;
     s1+=1553.0;
    }
   }
  }
 } else {
  if(i3<1.0042097568511963){
   if(i56<-1.4672929864900652e-05){
    if(i45<1.1682090759277344){
     s0+=4.0;
     s1+=208.0;
    } else {
     s0+=117.0;
     s1+=94.0;
    }
   } else {
    if(i68<0.00042515387758612633){
     s0+=201.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=13.0;
    }
   }
  } else {
   if(i49<0.03697368502616882){
    if(i14<0.9992104172706604){
     s0+=5.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=527.0;
    }
   } else {
    if(i73<-1.3585363376478199e-05){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i16<0.004690013825893402){
  if(i59<0.004821598529815674){
   if(i31<0.9992965459823608){
    if(i50<-0.00023829936981201172){
     s0+=176.0;
    } else {
     s0+=44.0;
     s1+=15.0;
    }
   } else {
    if(i6<-1.819785393308848e-05){
     s0+=152.0;
     s1+=1850.0;
    } else {
     s0+=315.0;
     s1+=325.0;
    }
   }
  } else {
   if(i3<1.003562092781067){
    if(i32<-0.00014354355516843498){
     s0+=398.0;
     s1+=179.0;
    } else {
     s0+=514.0;
     s1+=40.0;
    }
   } else {
    if(i72<0.015291035175323486){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=56.0;
    }
   }
  }
 } else {
  if(i3<0.9954802989959717){
   if(i73<-2.4494995614077197e-06){
    if(i37<0.009456923231482506){
     s0+=7.0;
     s1+=65.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    s0+=89.0;
   }
  } else {
   if(i10<-0.0004471242427825928){
    s0+=14.0;
   } else {
    if(i66<1.0054662227630615){
     s0+=160.0;
     s1+=11701.0;
    } else {
     s0+=33.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i3<1.0024782419204712){
  if(i65<0.0007085025426931679){
   if(i27<0.00030670693377032876){
    if(i26<1.012300729751587){
     s0+=52542.0;
     s1+=176.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   } else {
    if(i3<1.0008418560028076){
     s0+=5326.0;
     s1+=440.0;
    } else {
     s0+=93.0;
     s1+=167.0;
    }
   }
  } else {
   if(i41<1.1843469142913818){
    if(i31<0.9992443323135376){
     s0+=814.0;
     s1+=17.0;
    } else {
     s0+=1442.0;
     s1+=930.0;
    }
   } else {
    if(i0<0.08521470427513123){
     s0+=4802.0;
     s1+=109.0;
    } else {
     s0+=2.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i15<1.0020140409469604){
   if(i43<1.2388319969177246){
    if(i38<0.00028578576166182756){
     s0+=1.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i2<0.14130422472953796){
     s0+=121.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i36<0.2269056737422943){
    s1+=625.0;
   } else {
    if(i54<-0.032050490379333496){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i16<0.004687285050749779){
  if(i16<0.0017458111979067326){
   if(i18<0.0345749631524086){
    if(i6<-4.4840839109383523e-05){
     s0+=3.0;
     s1+=162.0;
    } else {
     s0+=2455.0;
     s1+=143.0;
    }
   } else {
    if(i39<0.004409436136484146){
     s0+=21.0;
     s1+=89.0;
    } else {
     s0+=104.0;
     s1+=32.0;
    }
   }
  } else {
   if(i21<0.00023505091667175293){
    if(i69<0.0004086814296897501){
     s0+=878.0;
     s1+=539.0;
    } else {
     s0+=1300.0;
     s1+=220.0;
    }
   } else {
    if(i4<-0.00010707974433898926){
     s0+=95.0;
     s1+=11.0;
    } else {
     s0+=186.0;
     s1+=1237.0;
    }
   }
  }
 } else {
  if(i2<0.09369176626205444){
   if(i38<0.002374672796577215){
    if(i56<-3.45652233590954e-06){
     s0+=31.0;
     s1+=547.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i65<0.003962497226893902){
     s0+=550.0;
     s1+=147.0;
    } else {
     s0+=25.0;
     s1+=243.0;
    }
   }
  } else {
   if(i73<1.7211367548952694e-06){
    if(i1<0.12688428163528442){
     s0+=102.0;
     s1+=1091.0;
    } else {
     s0+=18.0;
     s1+=10012.0;
    }
   } else {
    s0+=58.0;
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i9<1.042873740196228){
  if(i65<0.0006788353202864528){
   if(i7<1.042891263961792){
    if(i7<1.0375813245773315){
     s0+=50337.0;
     s1+=114.0;
    } else {
     s0+=4295.0;
     s1+=131.0;
    }
   } else {
    if(i1<0.07127124071121216){
     s0+=2452.0;
     s1+=175.0;
    } else {
     s0+=50.0;
     s1+=216.0;
    }
   }
  } else {
   if(i38<0.002396525116637349){
    if(i38<0.0003910916857421398){
     s0+=1011.0;
     s1+=23.0;
    } else {
     s0+=1137.0;
     s1+=905.0;
    }
   } else {
    if(i2<0.08690255880355835){
     s0+=5015.0;
     s1+=94.0;
    } else {
     s0+=73.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i18<0.024018488824367523){
   if(i16<0.004344141110777855){
    if(i6<-2.292977660545148e-05){
     s0+=780.0;
     s1+=592.0;
    } else {
     s0+=3711.0;
     s1+=180.0;
    }
   } else {
    if(i34<1.250974416732788){
     s0+=14.0;
     s1+=432.0;
    } else {
     s0+=548.0;
     s1+=118.0;
    }
   }
  } else {
   if(i4<-0.0006831586360931396){
    if(i33<0.005425734911113977){
     s0+=455.0;
     s1+=14.0;
    } else {
     s0+=72.0;
     s1+=173.0;
    }
   } else {
    if(i66<0.9995776414871216){
     s0+=116.0;
     s1+=910.0;
    } else {
     s0+=573.0;
     s1+=1279.0;
    }
   }
  }
 }
} else {
 if(i61<0.9991834163665771){
  s0+=173.0;
 } else {
  if(i12<0.00021505355834960938){
   if(i69<0.00048449044697918){
    if(i18<0.03720201179385185){
     s0+=275.0;
     s1+=315.0;
    } else {
     s0+=27.0;
     s1+=369.0;
    }
   } else {
    if(i0<0.013445794582366943){
     s0+=30.0;
     s1+=31.0;
    } else {
     s0+=75.0;
     s1+=2505.0;
    }
   }
  } else {
   s1+=8356.0;
  }
 }
}
if(i9<1.0451881885528564){
 if(i1<0.07718312740325928){
  if(i54<-0.005502372980117798){
   if(i3<1.0026929378509521){
    if(i61<0.999849259853363){
     s0+=1172.0;
     s1+=403.0;
    } else {
     s0+=2034.0;
     s1+=151.0;
    }
   } else {
    if(i58<0.43464964628219604){
     s0+=3.0;
     s1+=207.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i24<1.0475037097930908){
    if(i3<1.0025479793548584){
     s0+=54253.0;
     s1+=187.0;
    } else {
     s0+=24.0;
     s1+=14.0;
    }
   } else {
    if(i3<1.0026397705078125){
     s0+=7303.0;
     s1+=564.0;
    } else {
     s0+=51.0;
     s1+=125.0;
    }
   }
  }
 } else {
  if(i10<-0.0003580451011657715){
   if(i5<0.08783835172653198){
    if(i15<0.9982115626335144){
     s0+=134.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i17<-1.6927719116210938e-05){
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   }
  } else {
   if(i38<0.0004265800234861672){
    if(i25<1.0037925243377686){
     s0+=46.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i69<0.0008096707169897854){
     s0+=36.0;
     s1+=830.0;
    } else {
     s0+=80.0;
     s1+=164.0;
    }
   }
  }
 }
} else {
 if(i6<-3.625392128014937e-05){
  if(i0<0.09221664071083069){
   if(i34<1.2371783256530762){
    s1+=771.0;
   } else {
    if(i26<0.9969225525856018){
     s0+=212.0;
     s1+=381.0;
    } else {
     s0+=668.0;
     s1+=110.0;
    }
   }
  } else {
   if(i73<8.81996015777986e-07){
    if(i29<1.0082451105117798){
     s0+=157.0;
     s1+=2300.0;
    } else {
     s0+=70.0;
     s1+=9492.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i4<0.0006088018417358398){
   if(i0<0.09415411949157715){
    if(i6<-1.7018490325426683e-05){
     s0+=883.0;
     s1+=269.0;
    } else {
     s0+=3104.0;
     s1+=175.0;
    }
   } else {
    if(i68<-0.0053516048938035965){
     s0+=707.0;
     s1+=271.0;
    } else {
     s0+=172.0;
     s1+=556.0;
    }
   }
  } else {
   if(i71<1.0015389919281006){
    s0+=1.0;
   } else {
    s1+=127.0;
   }
  }
 }
}
if(i3<1.002413034439087){
 if(i0<0.08419644832611084){
  if(i49<-0.027513355016708374){
   if(i1<0.03278711438179016){
    if(i53<0.00042231258703395724){
     s0+=1541.0;
     s1+=79.0;
    } else {
     s0+=739.0;
     s1+=213.0;
    }
   } else {
    if(i52<0.005210191011428833){
     s0+=126.0;
     s1+=386.0;
    } else {
     s0+=167.0;
     s1+=14.0;
    }
   }
  } else {
   if(i7<1.042891263961792){
    if(i55<-0.0005806386470794678){
     s0+=9612.0;
     s1+=427.0;
    } else {
     s0+=50048.0;
     s1+=165.0;
    }
   } else {
    if(i1<0.060247063636779785){
     s0+=5630.0;
     s1+=398.0;
    } else {
     s0+=1335.0;
     s1+=441.0;
    }
   }
  }
 } else {
  if(i17<-1.564621925354004e-05){
   if(i33<0.005596180912107229){
    if(i56<-9.346737897431012e-06){
     s1+=1.0;
    } else {
     s0+=360.0;
     s1+=2.0;
    }
   } else {
    if(i13<0.9886659383773804){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   }
  } else {
   if(i72<0.025712668895721436){
    if(i48<0.004962652921676636){
     s0+=44.0;
     s1+=1911.0;
    } else {
     s0+=162.0;
     s1+=478.0;
    }
   } else {
    if(i16<0.0035873602610081434){
     s0+=754.0;
     s1+=377.0;
    } else {
     s0+=152.0;
     s1+=825.0;
    }
   }
  }
 }
} else {
 if(i16<0.0020571204368025064){
  if(i73<-4.84598695038585e-06){
   if(i56<-1.4715543329657521e-05){
    s1+=129.0;
   } else {
    s0+=6.0;
   }
  } else {
   if(i71<0.9999789595603943){
    if(i27<0.00047929209540598094){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   } else {
    s0+=211.0;
   }
  }
 } else {
  if(i35<0.0191107839345932){
   if(i43<1.2314128875732422){
    s1+=1667.0;
   } else {
    if(i8<9.173154830932617e-05){
     s0+=148.0;
     s1+=138.0;
    } else {
     s0+=37.0;
     s1+=624.0;
    }
   }
  } else {
   if(i61<1.0007861852645874){
    if(i1<0.08061829209327698){
     s0+=4.0;
     s1+=276.0;
    } else {
     s0+=1.0;
     s1+=8571.0;
    }
   } else {
    if(i23<0.9805799126625061){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i10<0.00043314695358276367){
 if(i39<0.0003148145042359829){
  if(i2<0.08254918456077576){
   if(i45<1.0598037242889404){
    if(i36<0.04943002387881279){
     s0+=41470.0;
     s1+=7.0;
    } else {
     s0+=41.0;
     s1+=5.0;
    }
   } else {
    if(i44<0.9838545322418213){
     s0+=122.0;
     s1+=159.0;
    } else {
     s0+=14884.0;
     s1+=504.0;
    }
   }
  } else {
   if(i8<-4.100799560546875e-05){
    if(i64<-0.0015088021755218506){
     s1+=2.0;
    } else {
     s0+=223.0;
    }
   } else {
    if(i41<1.0664865970611572){
     s0+=42.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=307.0;
    }
   }
  }
 } else {
  if(i1<0.08347344398498535){
   if(i41<1.1032289266586304){
    if(i10<7.426738739013672e-05){
     s0+=2755.0;
     s1+=691.0;
    } else {
     s0+=161.0;
     s1+=421.0;
    }
   } else {
    if(i59<-0.0026186108589172363){
     s0+=1108.0;
     s1+=188.0;
    } else {
     s0+=7153.0;
     s1+=143.0;
    }
   }
  } else {
   if(i31<0.9988065958023071){
    if(i15<0.9980377554893494){
     s0+=354.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i16<0.0017367787659168243){
     s0+=536.0;
     s1+=240.0;
    } else {
     s0+=309.0;
     s1+=3238.0;
    }
   }
  }
 }
} else {
 if(i13<1.0090789794921875){
  if(i1<0.08161565661430359){
   if(i8<4.184246063232422e-05){
    if(i16<0.01580936834216118){
     s0+=1256.0;
     s1+=172.0;
    } else {
     s0+=20.0;
     s1+=36.0;
    }
   } else {
    if(i16<0.0017781280912458897){
     s0+=59.0;
    } else {
     s0+=120.0;
     s1+=570.0;
    }
   }
  } else {
   if(i4<0.0007258057594299316){
    if(i16<0.009575298056006432){
     s0+=174.0;
     s1+=129.0;
    } else {
     s0+=5.0;
     s1+=336.0;
    }
   } else {
    if(i69<0.0004424965300131589){
     s0+=26.0;
     s1+=261.0;
    } else {
     s0+=9.0;
     s1+=1410.0;
    }
   }
  }
 } else {
  if(i6<-4.484942110138945e-05){
   if(i0<0.08061408996582031){
    if(i34<1.5870765447616577){
     s0+=2.0;
     s1+=400.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   } else {
    if(i22<0.9981629848480225){
     s0+=17.0;
     s1+=226.0;
    } else {
     s0+=2.0;
     s1+=7630.0;
    }
   }
  } else {
   if(i37<0.0024351945612579584){
    if(i0<0.06895676255226135){
     s0+=64.0;
     s1+=7.0;
    } else {
     s1+=101.0;
    }
   } else {
    if(i61<1.0002105236053467){
     s0+=94.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i18<0.02373841032385826){
  if(i15<1.0018665790557861){
   if(i55<-0.0008745789527893066){
    if(i12<-0.000183790922164917){
     s0+=3790.0;
     s1+=217.0;
    } else {
     s0+=1476.0;
     s1+=562.0;
    }
   } else {
    if(i9<1.0436232089996338){
     s0+=55146.0;
     s1+=346.0;
    } else {
     s0+=3028.0;
     s1+=387.0;
    }
   }
  } else {
   if(i4<0.000401914119720459){
    if(i20<0.9879351854324341){
     s0+=15.0;
     s1+=18.0;
    } else {
     s0+=273.0;
     s1+=12.0;
    }
   } else {
    if(i43<1.2191295623779297){
     s0+=2.0;
     s1+=235.0;
    } else {
     s0+=169.0;
     s1+=224.0;
    }
   }
  }
 } else {
  if(i9<1.03987717628479){
   if(i12<-0.00023412704467773438){
    if(i46<0.0835275948047638){
     s0+=4167.0;
     s1+=46.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i42<0.00048346916446462274){
     s0+=258.0;
     s1+=24.0;
    } else {
     s0+=160.0;
     s1+=672.0;
    }
   }
  } else {
   if(i4<-0.0005604326725006104){
    if(i32<-0.0007638446986675262){
     s0+=7.0;
     s1+=88.0;
    } else {
     s0+=637.0;
     s1+=138.0;
    }
   } else {
    if(i47<0.00043254747288301587){
     s0+=240.0;
     s1+=223.0;
    } else {
     s0+=385.0;
     s1+=2799.0;
    }
   }
  }
 }
} else {
 if(i0<0.08273869752883911){
  if(i24<1.0836663246154785){
   if(i48<0.0038431882858276367){
    if(i34<1.2392117977142334){
     s0+=8.0;
     s1+=549.0;
    } else {
     s0+=29.0;
     s1+=12.0;
    }
   } else {
    s0+=28.0;
   }
  } else {
   if(i16<0.005586568266153336){
    if(i15<1.0028791427612305){
     s0+=863.0;
     s1+=55.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i70<0.07750390470027924){
     s0+=6.0;
     s1+=110.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i6<-3.319251845823601e-05){
   if(i6<-4.483560405788012e-05){
    if(i11<1.0073164701461792){
     s0+=20.0;
     s1+=1221.0;
    } else {
     s1+=8418.0;
    }
   } else {
    if(i44<1.0388624668121338){
     s0+=12.0;
     s1+=258.0;
    } else {
     s0+=56.0;
     s1+=45.0;
    }
   }
  } else {
   if(i75<8.660169260110706e-05){
    if(i31<1.0000581741333008){
     s0+=67.0;
     s1+=104.0;
    } else {
     s0+=208.0;
     s1+=11.0;
    }
   } else {
    if(i61<0.9999684691429138){
     s0+=44.0;
     s1+=81.0;
    } else {
     s0+=5.0;
     s1+=229.0;
    }
   }
  }
 }
}
if(i22<1.0027968883514404){
 if(i23<1.0084033012390137){
  if(i30<0.0004777025314979255){
   if(i20<1.011582374572754){
    if(i64<-0.001617342233657837){
     s0+=223.0;
     s1+=54.0;
    } else {
     s0+=50765.0;
     s1+=265.0;
    }
   } else {
    if(i38<0.00030886224703863263){
     s0+=1.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i34<1.255998969078064){
    if(i22<1.0004034042358398){
     s0+=5521.0;
     s1+=1694.0;
    } else {
     s0+=297.0;
     s1+=843.0;
    }
   } else {
    if(i5<0.10396060347557068){
     s0+=11061.0;
     s1+=432.0;
    } else {
     s0+=374.0;
     s1+=810.0;
    }
   }
  }
 } else {
  if(i5<0.051724791526794434){
   if(i47<0.0016976187471300364){
    if(i0<0.06299957633018494){
     s0+=975.0;
     s1+=42.0;
    } else {
     s0+=2.0;
     s1+=130.0;
    }
   } else {
    if(i11<1.0008480548858643){
     s0+=3.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i6<-2.7671110728988424e-05){
    if(i1<0.0846673846244812){
     s0+=83.0;
     s1+=155.0;
    } else {
     s0+=16.0;
     s1+=1927.0;
    }
   } else {
    if(i63<1.7044008927769028e-05){
     s0+=271.0;
     s1+=29.0;
    } else {
     s0+=80.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i12<-0.0002560615539550781){
  if(i1<0.10258379578590393){
   if(i67<0.019952531903982162){
    if(i3<1.0049138069152832){
     s0+=816.0;
     s1+=17.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i0<0.006911367177963257){
     s0+=29.0;
     s1+=8.0;
    } else {
     s1+=67.0;
    }
   }
  } else {
   if(i18<0.021780287846922874){
    if(i20<0.9964594841003418){
     s1+=24.0;
    } else {
     s0+=7.0;
     s1+=7.0;
    }
   } else {
    if(i10<0.00015416741371154785){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=284.0;
    }
   }
  }
 } else {
  if(i38<0.00031755148665979505){
   s0+=92.0;
  } else {
   if(i12<0.0002034902572631836){
    if(i2<0.10505783557891846){
     s0+=320.0;
     s1+=718.0;
    } else {
     s0+=57.0;
     s1+=1972.0;
    }
   } else {
    if(i16<0.0015450140926986933){
     s0+=1.0;
     s1+=80.0;
    } else {
     s1+=7495.0;
    }
   }
  }
 }
}
if(i1<0.07540395855903625){
 if(i14<1.0070875883102417){
  if(i27<0.0002805505646392703){
   if(i19<1.008420705795288){
    if(i45<1.0596027374267578){
     s0+=40901.0;
    } else {
     s0+=11122.0;
     s1+=210.0;
    }
   } else {
    if(i45<1.0738153457641602){
     s0+=16.0;
     s1+=98.0;
    } else {
     s0+=101.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.0012859702110290527){
    if(i17<1.8894672393798828e-05){
     s0+=7937.0;
     s1+=1438.0;
    } else {
     s0+=437.0;
     s1+=447.0;
    }
   } else {
    if(i38<0.001996876671910286){
     s0+=1642.0;
     s1+=250.0;
    } else {
     s0+=6530.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i10<0.00046509504318237305){
   if(i41<1.158913493156433){
    s1+=28.0;
   } else {
    if(i30<0.010354507714509964){
     s0+=144.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i21<0.0010421276092529297){
    if(i74<0.020471278578042984){
     s0+=8.0;
    } else {
     s1+=40.0;
    }
   } else {
    s1+=527.0;
   }
  }
 }
} else {
 if(i4<0.00010436773300170898){
  if(i10<-0.00040471553802490234){
   if(i60<4.362725303508341e-05){
    if(i10<-0.0004094839096069336){
     s0+=499.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i4<-0.0017380714416503906){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i63<2.9162620194256306e-05){
    if(i37<0.0006418608827516437){
     s0+=439.0;
     s1+=38.0;
    } else {
     s0+=94.0;
     s1+=217.0;
    }
   } else {
    if(i6<1.558209078211803e-06){
     s0+=290.0;
     s1+=1630.0;
    } else {
     s0+=190.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i42<0.006582930218428373){
   if(i16<0.00262562558054924){
    if(i54<0.01665973663330078){
     s0+=82.0;
     s1+=511.0;
    } else {
     s0+=187.0;
     s1+=20.0;
    }
   } else {
    if(i49<0.04744720458984375){
     s0+=26.0;
     s1+=2212.0;
    } else {
     s0+=141.0;
     s1+=720.0;
    }
   }
  } else {
   if(i1<0.1316651701927185){
    if(i34<1.5876636505126953){
     s0+=4.0;
     s1+=295.0;
    } else {
     s0+=55.0;
     s1+=87.0;
    }
   } else {
    if(i69<0.0002293056168127805){
     s0+=13.0;
     s1+=338.0;
    } else {
     s0+=2.0;
     s1+=8157.0;
    }
   }
  }
 }
}
if(i6<-7.502458174712956e-05){
 if(i55<-0.006779193878173828){
  if(i0<0.03802254796028137){
   if(i16<0.025224223732948303){
    if(i35<0.05005916208028793){
     s0+=444.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i75<0.0002109142515109852){
    if(i60<3.205963730579242e-05){
     s1+=7.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i66<1.0030667781829834){
     s1+=131.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i15<0.997884213924408){
   s0+=147.0;
  } else {
   if(i9<1.0644457340240479){
    if(i1<0.029039978981018066){
     s0+=119.0;
     s1+=57.0;
    } else {
     s0+=110.0;
     s1+=1321.0;
    }
   } else {
    if(i12<-1.8477439880371094e-06){
     s0+=130.0;
     s1+=1166.0;
    } else {
     s0+=4.0;
     s1+=8559.0;
    }
   }
  }
 }
} else {
 if(i5<0.06863737106323242){
  if(i3<1.0024776458740234){
   if(i49<-0.028778642416000366){
    if(i0<0.023527324199676514){
     s0+=1731.0;
     s1+=187.0;
    } else {
     s0+=465.0;
     s1+=406.0;
    }
   } else {
    if(i27<0.0003012871602550149){
     s0+=52847.0;
     s1+=312.0;
    } else {
     s0+=12831.0;
     s1+=1544.0;
    }
   }
  } else {
   if(i27<0.00016685228911228478){
    if(i5<0.057446837425231934){
     s0+=54.0;
     s1+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i42<0.0027134947013109922){
     s0+=6.0;
     s1+=480.0;
    } else {
     s0+=112.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i1<0.10599952936172485){
   if(i51<0.04793471097946167){
    if(i21<-0.0020062029361724854){
     s0+=29.0;
     s1+=7.0;
    } else {
     s0+=60.0;
     s1+=445.0;
    }
   } else {
    if(i30<0.0014294625725597143){
     s0+=546.0;
     s1+=328.0;
    } else {
     s0+=885.0;
     s1+=44.0;
    }
   }
  } else {
   if(i6<-1.1511471711855847e-05){
    if(i59<0.007416188716888428){
     s0+=34.0;
     s1+=1382.0;
    } else {
     s0+=186.0;
     s1+=381.0;
    }
   } else {
    if(i3<0.9958910346031189){
     s0+=228.0;
     s1+=2.0;
    } else {
     s0+=249.0;
     s1+=187.0;
    }
   }
  }
 }
}
if(i12<0.00011485815048217773){
 if(i6<-6.005581599310972e-05){
  if(i3<0.9988604784011841){
   if(i5<0.08203521370887756){
    if(i67<0.03526788949966431){
     s0+=930.0;
     s1+=29.0;
    } else {
     s0+=5.0;
     s1+=24.0;
    }
   } else {
    if(i10<0.0007737874984741211){
     s1+=173.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i2<0.09745433926582336){
    if(i49<0.016121894121170044){
     s0+=183.0;
     s1+=465.0;
    } else {
     s0+=270.0;
     s1+=32.0;
    }
   } else {
    if(i34<1.594835877418518){
     s0+=27.0;
     s1+=1775.0;
    } else {
     s0+=49.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i24<1.0494916439056396){
   if(i64<-0.0013929903507232666){
    if(i34<1.0840110778808594){
     s0+=993.0;
    } else {
     s0+=495.0;
     s1+=252.0;
    }
   } else {
    if(i29<1.0089375972747803){
     s0+=54449.0;
     s1+=201.0;
    } else {
     s0+=37.0;
     s1+=19.0;
    }
   }
  } else {
   if(i70<0.013599896803498268){
    if(i25<0.9868296384811401){
     s0+=145.0;
     s1+=187.0;
    } else {
     s0+=4439.0;
     s1+=345.0;
    }
   } else {
    if(i45<1.1038793325424194){
     s0+=1108.0;
     s1+=1785.0;
    } else {
     s0+=7101.0;
     s1+=1492.0;
    }
   }
  }
 }
} else {
 if(i16<0.0025721562560647726){
  if(i21<0.001597285270690918){
   if(i42<0.00112192053347826){
    if(i38<0.0003444876929279417){
     s0+=181.0;
    } else {
     s0+=11.0;
     s1+=128.0;
    }
   } else {
    s0+=475.0;
   }
  } else {
   s1+=326.0;
  }
 } else {
  if(i7<1.0385410785675049){
   if(i21<0.0014039576053619385){
    if(i31<1.0002529621124268){
     s0+=78.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i15<0.9986312985420227){
    s0+=59.0;
   } else {
    if(i29<0.984386682510376){
     s0+=2.0;
     s1+=246.0;
    } else {
     s0+=1.0;
     s1+=9353.0;
    }
   }
  }
 }
}
if(i4<0.0005468428134918213){
 if(i0<0.08468136191368103){
  if(i27<0.00028400548035278916){
   if(i53<0.00028897367883473635){
    if(i25<1.0066382884979248){
     s0+=51472.0;
     s1+=94.0;
    } else {
     s0+=299.0;
     s1+=105.0;
    }
   } else {
    if(i42<0.0008284393115900457){
     s0+=114.0;
     s1+=109.0;
    } else {
     s0+=811.0;
     s1+=4.0;
    }
   }
  } else {
   if(i38<0.0020229704678058624){
    if(i42<0.00040006142808124423){
     s0+=3051.0;
     s1+=69.0;
    } else {
     s0+=2652.0;
     s1+=1480.0;
    }
   } else {
    if(i35<0.07268466055393219){
     s0+=10792.0;
     s1+=294.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i34<1.0835556983947754){
   s0+=174.0;
  } else {
   if(i10<-0.0004035532474517822){
    if(i28<1.047889232635498){
     s0+=17.0;
     s1+=11.0;
    } else {
     s0+=234.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.022221852093935013){
     s0+=652.0;
     s1+=909.0;
    } else {
     s0+=320.0;
     s1+=2375.0;
    }
   }
  }
 }
} else {
 if(i16<0.002195025561377406){
  if(i12<0.00028783082962036133){
   if(i16<0.001887293066829443){
    if(i65<0.0011559556005522609){
     s0+=270.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i64<9.763240814208984e-05){
     s0+=5.0;
     s1+=23.0;
    } else {
     s0+=29.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=129.0;
  }
 } else {
  if(i12<6.079673767089844e-06){
   if(i1<0.1268107295036316){
    if(i52<0.003603518009185791){
     s0+=117.0;
     s1+=511.0;
    } else {
     s0+=98.0;
     s1+=36.0;
    }
   } else {
    if(i0<0.16229525208473206){
     s0+=22.0;
     s1+=159.0;
    } else {
     s1+=679.0;
    }
   }
  } else {
   if(i37<0.0003921393654309213){
    s0+=46.0;
   } else {
    if(i56<-9.35251773626078e-06){
     s0+=8.0;
     s1+=10012.0;
    } else {
     s0+=7.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i7<1.0527000427246094){
 if(i15<1.0020674467086792){
  if(i20<1.0081474781036377){
   if(i30<0.00031703064450994134){
    if(i3<1.0025386810302734){
     s0+=47265.0;
     s1+=57.0;
    } else {
     s0+=34.0;
     s1+=14.0;
    }
   } else {
    if(i15<0.9991633296012878){
     s0+=9245.0;
     s1+=287.0;
    } else {
     s0+=6848.0;
     s1+=1171.0;
    }
   }
  } else {
   if(i19<1.008852243423462){
    if(i38<0.0012138800229877234){
     s0+=144.0;
     s1+=89.0;
    } else {
     s0+=208.0;
     s1+=5.0;
    }
   } else {
    if(i30<0.0009622303186915815){
     s0+=44.0;
     s1+=246.0;
    } else {
     s0+=52.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i60<1.713501478661783e-05){
   if(i36<0.1997937113046646){
    if(i57<-0.02618575468659401){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=296.0;
    }
   } else {
    s0+=1.0;
   }
  } else {
   if(i2<0.0986124575138092){
    if(i12<-0.0001239180564880371){
     s0+=213.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=28.0;
   }
  }
 }
} else {
 if(i3<1.001884937286377){
  if(i0<0.0852128267288208){
   if(i20<0.9907213449478149){
    if(i50<-3.796815872192383e-05){
     s0+=561.0;
     s1+=40.0;
    } else {
     s0+=573.0;
     s1+=409.0;
    }
   } else {
    if(i41<1.103413462638855){
     s0+=1017.0;
     s1+=377.0;
    } else {
     s0+=3280.0;
     s1+=102.0;
    }
   }
  } else {
   if(i6<-1.2280826922506094e-05){
    if(i61<0.999876856803894){
     s0+=78.0;
     s1+=1495.0;
    } else {
     s0+=372.0;
     s1+=1031.0;
    }
   } else {
    if(i37<0.0017012340249493718){
     s0+=640.0;
     s1+=80.0;
    } else {
     s0+=95.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i16<0.0022614020854234695){
   if(i56<-1.4174011084833182e-05){
    if(i21<0.00019031763076782227){
     s0+=2.0;
    } else {
     s1+=149.0;
    }
   } else {
    if(i34<1.1354939937591553){
     s1+=55.0;
    } else {
     s0+=190.0;
    }
   }
  } else {
   if(i14<1.0030012130737305){
    if(i2<0.12144678831100464){
     s0+=155.0;
     s1+=329.0;
    } else {
     s0+=24.0;
     s1+=1341.0;
    }
   } else {
    if(i14<1.0063927173614502){
     s0+=48.0;
     s1+=1177.0;
    } else {
     s0+=3.0;
     s1+=8262.0;
    }
   }
  }
 }
}
if(i3<1.002474308013916){
 if(i24<1.0495078563690186){
  if(i30<0.0002893407945521176){
   if(i6<-4.5936125388834625e-05){
    if(i31<1.0001766681671143){
     s0+=184.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i38<0.00036404276033863425){
     s0+=37165.0;
    } else {
     s0+=7661.0;
     s1+=19.0;
    }
   }
  } else {
   if(i64<-0.0004520714282989502){
    if(i0<0.056258559226989746){
     s0+=2066.0;
     s1+=205.0;
    } else {
     s0+=174.0;
     s1+=101.0;
    }
   } else {
    if(i2<0.06641915440559387){
     s0+=8386.0;
     s1+=31.0;
    } else {
     s0+=1014.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i0<0.07542160153388977){
   if(i0<0.05865669250488281){
    if(i41<1.103413462638855){
     s0+=2189.0;
     s1+=576.0;
    } else {
     s0+=8513.0;
     s1+=279.0;
    }
   } else {
    if(i18<0.024385206401348114){
     s0+=1433.0;
     s1+=312.0;
    } else {
     s0+=244.0;
     s1+=296.0;
    }
   }
  } else {
   if(i33<0.006454504560679197){
    if(i17<-1.621246337890625e-05){
     s0+=334.0;
     s1+=3.0;
    } else {
     s0+=1302.0;
     s1+=2470.0;
    }
   } else {
    if(i0<0.10643497109413147){
     s0+=87.0;
     s1+=84.0;
    } else {
     s0+=25.0;
     s1+=1397.0;
    }
   }
  }
 }
} else {
 if(i27<0.00018719921354204416){
  if(i37<0.0007577379001304507){
   if(i34<1.0757708549499512){
    s0+=4.0;
   } else {
    s1+=15.0;
   }
  } else {
   s0+=75.0;
  }
 } else {
  if(i56<-1.3717812180402689e-05){
   if(i61<1.0007799863815308){
    if(i0<0.04850319027900696){
     s0+=55.0;
     s1+=250.0;
    } else {
     s0+=80.0;
     s1+=10768.0;
    }
   } else {
    if(i9<1.1576873064041138){
     s0+=13.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i41<1.1983051300048828){
    s1+=166.0;
   } else {
    if(i33<0.005111893638968468){
     s0+=134.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i7<1.0452215671539307){
  if(i24<1.0451585054397583){
   if(i15<1.001680850982666){
    if(i58<0.0503167025744915){
     s0+=49929.0;
     s1+=82.0;
    } else {
     s0+=4050.0;
     s1+=125.0;
    }
   } else {
    if(i3<1.0025243759155273){
     s0+=170.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=30.0;
    }
   }
  } else {
   if(i43<1.1037919521331787){
    if(i37<0.000444896228145808){
     s0+=1629.0;
     s1+=75.0;
    } else {
     s0+=313.0;
     s1+=562.0;
    }
   } else {
    if(i1<0.08477768301963806){
     s0+=5958.0;
     s1+=188.0;
    } else {
     s0+=13.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i1<0.08191055059432983){
   if(i60<-3.7119980333955027e-06){
    if(i54<0.019355744123458862){
     s0+=5.0;
     s1+=147.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i16<0.004338358994573355){
     s0+=5464.0;
     s1+=707.0;
    } else {
     s0+=1120.0;
     s1+=762.0;
    }
   }
  } else {
   if(i6<-1.2346746188995894e-05){
    if(i40<0.04734119772911072){
     s0+=14.0;
     s1+=1944.0;
    } else {
     s0+=378.0;
     s1+=1134.0;
    }
   } else {
    if(i40<0.03871282935142517){
     s0+=23.0;
     s1+=98.0;
    } else {
     s0+=620.0;
     s1+=81.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005219578742980957){
  if(i1<0.07909488677978516){
   if(i41<1.1039612293243408){
    if(i50<5.373358726501465e-05){
     s0+=59.0;
     s1+=47.0;
    } else {
     s1+=155.0;
    }
   } else {
    if(i47<0.0017683805199339986){
     s0+=652.0;
     s1+=21.0;
    } else {
     s0+=24.0;
     s1+=34.0;
    }
   }
  } else {
   if(i56<2.836251724147587e-06){
    if(i15<1.0002464056015015){
     s0+=38.0;
     s1+=1018.0;
    } else {
     s0+=244.0;
     s1+=439.0;
    }
   } else {
    s0+=67.0;
   }
  }
 } else {
  if(i39<0.0001628445170354098){
   if(i14<1.0052945613861084){
    if(i35<0.0076179467141628265){
     s0+=41.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.0005761057836934924){
     s0+=3.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i16<0.0024835874792188406){
    if(i56<-1.4655049199063797e-05){
     s0+=6.0;
     s1+=221.0;
    } else {
     s0+=100.0;
    }
   } else {
    if(i12<6.258487701416016e-06){
     s0+=43.0;
     s1+=412.0;
    } else {
     s0+=7.0;
     s1+=8794.0;
    }
   }
  }
 }
}
if(i13<1.0081498622894287){
 if(i1<0.08137065172195435){
  if(i10<0.000614166259765625){
   if(i24<1.0451585054397583){
    if(i30<0.0002821038942784071){
     s0+=42879.0;
     s1+=17.0;
    } else {
     s0+=11041.0;
     s1+=233.0;
    }
   } else {
    if(i67<0.006466258317232132){
     s0+=11325.0;
     s1+=984.0;
    } else {
     s0+=2543.0;
     s1+=708.0;
    }
   }
  } else {
   if(i21<-0.0023456215858459473){
    if(i67<0.015662504360079765){
     s0+=405.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=56.0;
    }
   } else {
    if(i62<0.002006828086450696){
     s0+=221.0;
     s1+=160.0;
    } else {
     s0+=37.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i16<0.005298605188727379){
   if(i51<0.06065872311592102){
    if(i3<0.9954521059989929){
     s0+=86.0;
    } else {
     s0+=51.0;
     s1+=790.0;
    }
   } else {
    if(i8<5.811452865600586e-06){
     s0+=755.0;
     s1+=161.0;
    } else {
     s0+=133.0;
     s1+=122.0;
    }
   }
  } else {
   if(i35<0.023437827825546265){
    if(i55<-0.0007496178150177002){
     s0+=120.0;
     s1+=119.0;
    } else {
     s0+=10.0;
     s1+=204.0;
    }
   } else {
    if(i8<-6.619095802307129e-05){
     s0+=14.0;
     s1+=61.0;
    } else {
     s0+=13.0;
     s1+=2088.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005218386650085449){
  if(i0<0.08277627825737){
   if(i38<0.0017670923843979836){
    if(i48<0.003033161163330078){
     s0+=48.0;
     s1+=217.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   } else {
    if(i6<-5.5886830523377284e-05){
     s0+=19.0;
     s1+=39.0;
    } else {
     s0+=691.0;
     s1+=5.0;
    }
   }
  } else {
   if(i68<-0.009686357341706753){
    if(i43<1.3312374353408813){
     s0+=228.0;
     s1+=85.0;
    } else {
     s0+=11.0;
     s1+=210.0;
    }
   } else {
    if(i49<0.07398271560668945){
     s0+=55.0;
     s1+=1065.0;
    } else {
     s0+=62.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i2<0.0733182430267334){
   if(i45<1.1486610174179077){
    if(i47<0.0004505072138272226){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=280.0;
    }
   } else {
    if(i62<0.004095179960131645){
     s0+=123.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=46.0;
    }
   }
  } else {
   if(i56<-1.2926075214636512e-05){
    if(i0<0.1333080232143402){
     s0+=33.0;
     s1+=1022.0;
    } else {
     s0+=9.0;
     s1+=7851.0;
    }
   } else {
    if(i31<1.0002018213272095){
     s0+=4.0;
     s1+=157.0;
    } else {
     s0+=51.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i0<0.08318096399307251){
 if(i15<1.0019333362579346){
  if(i7<1.0412344932556152){
   if(i74<0.021737542003393173){
    if(i3<1.002650260925293){
     s0+=48966.0;
     s1+=176.0;
    } else {
     s0+=36.0;
     s1+=14.0;
    }
   } else {
    if(i38<0.0016955535393208265){
     s0+=2960.0;
     s1+=410.0;
    } else {
     s0+=7716.0;
     s1+=22.0;
    }
   }
  } else {
   if(i43<1.1034480333328247){
    if(i38<0.0003813856455963105){
     s0+=1872.0;
     s1+=82.0;
    } else {
     s0+=907.0;
     s1+=1100.0;
    }
   } else {
    if(i13<0.9825764298439026){
     s0+=230.0;
     s1+=110.0;
    } else {
     s0+=5999.0;
     s1+=281.0;
    }
   }
  }
 } else {
  if(i54<0.004997670650482178){
   if(i60<1.9958981283707544e-05){
    if(i16<0.0007064669043757021){
     s0+=16.0;
    } else {
     s0+=60.0;
     s1+=828.0;
    }
   } else {
    if(i49<-0.05760791897773743){
     s0+=9.0;
     s1+=56.0;
    } else {
     s0+=204.0;
     s1+=22.0;
    }
   }
  } else {
   if(i45<1.1083450317382812){
    s1+=20.0;
   } else {
    if(i10<0.0016609430313110352){
     s0+=386.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i31<0.9988119006156921){
  if(i7<1.398578405380249){
   if(i50<-0.000257641077041626){
    s0+=417.0;
   } else {
    if(i63<6.852570368209854e-05){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i11<1.0075511932373047){
   if(i37<0.0004476824833545834){
    if(i51<0.06289386749267578){
     s0+=12.0;
     s1+=13.0;
    } else {
     s0+=103.0;
    }
   } else {
    if(i40<0.047407060861587524){
     s0+=65.0;
     s1+=3209.0;
    } else {
     s0+=936.0;
     s1+=1826.0;
    }
   }
  } else {
   if(i69<0.00013850320829078555){
    if(i7<1.195167064666748){
     s0+=1.0;
     s1+=141.0;
    } else {
     s0+=48.0;
     s1+=3.0;
    }
   } else {
    if(i4<0.0002739429473876953){
     s0+=12.0;
     s1+=174.0;
    } else {
     s0+=5.0;
     s1+=8773.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i18<0.02239593304693699){
  if(i24<1.0485899448394775){
   if(i64<-0.0014497637748718262){
    if(i45<1.0547096729278564){
     s0+=771.0;
    } else {
     s0+=299.0;
     s1+=175.0;
    }
   } else {
    if(i19<1.0112338066101074){
     s0+=51407.0;
     s1+=98.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i21<0.0010905265808105469){
    if(i14<0.9949928522109985){
     s0+=4107.0;
     s1+=180.0;
    } else {
     s0+=7154.0;
     s1+=1429.0;
    }
   } else {
    if(i52<-0.0014148950576782227){
     s0+=49.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i2<0.07767760753631592){
   if(i21<-0.0015143752098083496){
    if(i59<-0.0031505227088928223){
     s0+=262.0;
     s1+=87.0;
    } else {
     s0+=4605.0;
     s1+=22.0;
    }
   } else {
    if(i18<0.03508090227842331){
     s0+=945.0;
     s1+=427.0;
    } else {
     s0+=79.0;
     s1+=297.0;
    }
   }
  } else {
   if(i50<-0.00014024972915649414){
    if(i37<0.0016455529257655144){
     s0+=280.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=36.0;
    }
   } else {
    if(i40<0.04320770502090454){
     s0+=45.0;
     s1+=1530.0;
    } else {
     s0+=407.0;
     s1+=1057.0;
    }
   }
  }
 }
} else {
 if(i6<-4.432347122929059e-05){
  if(i13<1.0154021978378296){
   if(i23<0.9973486661911011){
    if(i70<0.09515705704689026){
     s0+=174.0;
     s1+=391.0;
    } else {
     s0+=8.0;
     s1+=909.0;
    }
   } else {
    if(i69<0.00020450309966690838){
     s0+=21.0;
     s1+=69.0;
    } else {
     s0+=20.0;
     s1+=1906.0;
    }
   }
  } else {
   s1+=8068.0;
  }
 } else {
  if(i63<-1.0909279808402061e-06){
   if(i49<-0.030091434717178345){
    s1+=12.0;
   } else {
    if(i37<0.0019492767751216888){
     s0+=336.0;
     s1+=39.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i56<-9.931880413205363e-06){
    if(i22<1.001981258392334){
     s0+=9.0;
     s1+=6.0;
    } else {
     s1+=223.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i2<0.08563503623008728){
  if(i48<-0.0015491843223571777){
   if(i0<0.03781166672706604){
    if(i2<0.00019878149032592773){
     s0+=1539.0;
     s1+=36.0;
    } else {
     s0+=1780.0;
     s1+=336.0;
    }
   } else {
    if(i19<0.9832996129989624){
     s0+=149.0;
     s1+=354.0;
    } else {
     s0+=398.0;
     s1+=102.0;
    }
   }
  } else {
   if(i27<0.0002821004600264132){
    if(i62<0.002371183130890131){
     s0+=51836.0;
     s1+=255.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i3<0.9983136057853699){
     s0+=9147.0;
     s1+=236.0;
    } else {
     s0+=3728.0;
     s1+=835.0;
    }
   }
  }
 } else {
  if(i37<0.00045610684901475906){
   if(i15<1.0005196332931519){
    if(i35<0.010844557546079159){
     s0+=350.0;
    } else {
     s0+=120.0;
     s1+=4.0;
    }
   } else {
    if(i34<1.0763556957244873){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i51<0.05959305167198181){
    if(i10<-0.00044080615043640137){
     s0+=105.0;
    } else {
     s0+=58.0;
     s1+=1878.0;
    }
   } else {
    if(i35<0.04024439677596092){
     s0+=1160.0;
     s1+=903.0;
    } else {
     s0+=31.0;
     s1+=553.0;
    }
   }
  }
 }
} else {
 if(i33<0.0003409801865927875){
  s0+=197.0;
 } else {
  if(i27<0.0001684205053607002){
   if(i45<1.1046062707901){
    s1+=6.0;
   } else {
    s0+=38.0;
   }
  } else {
   if(i8<6.216764450073242e-05){
    if(i2<0.09208622574806213){
     s0+=193.0;
     s1+=368.0;
    } else {
     s0+=75.0;
     s1+=1219.0;
    }
   } else {
    if(i35<0.019121291115880013){
     s0+=123.0;
     s1+=1892.0;
    } else {
     s0+=5.0;
     s1+=8221.0;
    }
   }
  }
 }
}
if(i26<1.0101572275161743){
 if(i3<1.0024445056915283){
  if(i2<0.08546119928359985){
   if(i54<-0.00612872838973999){
    if(i41<1.1907789707183838){
     s0+=1325.0;
     s1+=577.0;
    } else {
     s0+=2275.0;
     s1+=236.0;
    }
   } else {
    if(i24<1.0477051734924316){
     s0+=54508.0;
     s1+=192.0;
    } else {
     s0+=8923.0;
     s1+=843.0;
    }
   }
  } else {
   if(i22<0.9950711727142334){
    if(i47<0.003147291950881481){
     s0+=434.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=40.0;
    }
   } else {
    if(i18<0.023361574858427048){
     s0+=320.0;
     s1+=392.0;
    } else {
     s0+=171.0;
     s1+=1301.0;
    }
   }
  }
 } else {
  if(i8<6.192922592163086e-05){
   if(i69<0.00019819075532723218){
    if(i26<0.9974216222763062){
     s1+=2.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i35<0.007669283542782068){
     s0+=75.0;
     s1+=80.0;
    } else {
     s0+=18.0;
     s1+=276.0;
    }
   }
  } else {
   if(i2<0.0365215539932251){
    if(i57<-0.005463200621306896){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=102.0;
    }
   } else {
    if(i35<0.004772431217133999){
     s0+=9.0;
     s1+=108.0;
    } else {
     s0+=9.0;
     s1+=2049.0;
    }
   }
  }
 }
} else {
 if(i0<0.08393236994743347){
  if(i41<1.1037919521331787){
   if(i71<1.0007169246673584){
    if(i11<1.0033760070800781){
     s0+=372.0;
     s1+=46.0;
    } else {
     s0+=36.0;
     s1+=113.0;
    }
   } else {
    if(i68<-0.004783515818417072){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=208.0;
    }
   }
  } else {
   if(i12<0.00021827220916748047){
    if(i15<1.0032036304473877){
     s0+=1671.0;
     s1+=64.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   } else {
    s1+=41.0;
   }
  }
 } else {
  if(i8<3.343820571899414e-05){
   if(i68<-0.005431506782770157){
    if(i33<0.006007483694702387){
     s0+=667.0;
     s1+=262.0;
    } else {
     s0+=48.0;
     s1+=498.0;
    }
   } else {
    if(i35<0.002344210632145405){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=40.0;
     s1+=876.0;
    }
   }
  } else {
   if(i6<-6.087031579227187e-05){
    if(i16<0.007140776142477989){
     s0+=46.0;
     s1+=1337.0;
    } else {
     s0+=1.0;
     s1+=7138.0;
    }
   } else {
    if(i41<1.24220871925354){
     s0+=24.0;
     s1+=243.0;
    } else {
     s0+=36.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i2<0.08504307270050049){
 if(i15<1.0018949508666992){
  if(i58<0.040564656257629395){
   if(i64<-0.00276908278465271){
    if(i45<1.2038772106170654){
     s0+=31.0;
     s1+=109.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i3<1.0024893283843994){
     s0+=54679.0;
     s1+=522.0;
    } else {
     s0+=57.0;
     s1+=72.0;
    }
   }
  } else {
   if(i2<0.06633245944976807){
    if(i37<0.0014310486149042845){
     s0+=5614.0;
     s1+=798.0;
    } else {
     s0+=7002.0;
     s1+=182.0;
    }
   } else {
    if(i72<0.011654794216156006){
     s0+=207.0;
     s1+=378.0;
    } else {
     s0+=1098.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i37<0.006910898722708225){
   if(i64<0.0015937089920043945){
    if(i33<0.0016419971361756325){
     s0+=6.0;
     s1+=419.0;
    } else {
     s0+=70.0;
     s1+=271.0;
    }
   } else {
    if(i11<1.0009174346923828){
     s0+=72.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=42.0;
    }
   }
  } else {
   if(i67<0.017540091648697853){
    if(i32<-0.0006055042031221092){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=506.0;
     s1+=6.0;
    }
   } else {
    if(i32<-5.527710891328752e-05){
     s0+=2.0;
     s1+=133.0;
    } else {
     s0+=8.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i16<0.00470145046710968){
  if(i12<0.00010192394256591797){
   if(i3<0.9962878227233887){
    if(i31<0.9991836547851562){
     s0+=442.0;
    } else {
     s0+=72.0;
     s1+=12.0;
    }
   } else {
    if(i28<1.063055157661438){
     s0+=187.0;
     s1+=868.0;
    } else {
     s0+=792.0;
     s1+=312.0;
    }
   }
  } else {
   if(i3<0.999962568283081){
    s0+=15.0;
   } else {
    if(i68<-0.00831519067287445){
     s0+=27.0;
     s1+=29.0;
    } else {
     s0+=12.0;
     s1+=1030.0;
    }
   }
  }
 } else {
  if(i12<-0.00013530254364013672){
   if(i36<0.08074849843978882){
    if(i5<0.11229062080383301){
     s0+=175.0;
     s1+=78.0;
    } else {
     s0+=19.0;
     s1+=148.0;
    }
   } else {
    if(i6<2.0134029909968376e-06){
     s0+=38.0;
     s1+=933.0;
    } else {
     s0+=32.0;
     s1+=6.0;
    }
   }
  } else {
   if(i56<1.3199291970522609e-06){
    if(i16<0.005962865427136421){
     s0+=27.0;
     s1+=937.0;
    } else {
     s0+=9.0;
     s1+=9475.0;
    }
   } else {
    if(i22<0.9951046705245972){
     s0+=31.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i11<1.0060316324234009){
 if(i5<0.07131588459014893){
  if(i39<0.00030652416171506047){
   if(i27<0.00028137979097664356){
    if(i22<1.003455400466919){
     s0+=51666.0;
     s1+=225.0;
    } else {
     s0+=18.0;
     s1+=49.0;
    }
   } else {
    if(i41<1.1158984899520874){
     s0+=1873.0;
     s1+=411.0;
    } else {
     s0+=2859.0;
     s1+=33.0;
    }
   }
  } else {
   if(i41<1.1812903881072998){
    if(i42<0.0003967643133364618){
     s0+=2291.0;
     s1+=44.0;
    } else {
     s0+=2088.0;
     s1+=1625.0;
    }
   } else {
    if(i48<-0.009863823652267456){
     s0+=566.0;
     s1+=280.0;
    } else {
     s0+=6957.0;
     s1+=292.0;
    }
   }
  }
 } else {
  if(i37<0.004913683049380779){
   if(i50<-0.00024387240409851074){
    if(i73<-2.464774524923996e-06){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=409.0;
    }
   } else {
    if(i18<0.022392623126506805){
     s0+=884.0;
     s1+=445.0;
    } else {
     s0+=282.0;
     s1+=1139.0;
    }
   }
  } else {
   if(i6<-3.518643643474206e-05){
    if(i27<0.00765795074403286){
     s0+=175.0;
     s1+=814.0;
    } else {
     s0+=19.0;
     s1+=1474.0;
    }
   } else {
    if(i72<0.020093142986297607){
     s0+=13.0;
     s1+=127.0;
    } else {
     s0+=135.0;
     s1+=45.0;
    }
   }
  }
 }
} else {
 if(i1<0.05543801188468933){
  if(i56<-1.4278632079367526e-05){
   if(i5<0.05407315492630005){
    if(i63<5.650012826663442e-05){
     s0+=1.0;
     s1+=307.0;
    } else {
     s0+=6.0;
     s1+=11.0;
    }
   } else {
    s0+=2.0;
   }
  } else {
   if(i63<-3.291899338364601e-05){
    s1+=3.0;
   } else {
    if(i57<0.008024429902434349){
     s0+=503.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i16<0.0016358825378119946){
   if(i6<-4.440088014234789e-05){
    if(i13<1.0061123371124268){
     s0+=1.0;
    } else {
     s1+=122.0;
    }
   } else {
    s0+=183.0;
   }
  } else {
   if(i3<1.0016963481903076){
    if(i16<0.0031222000252455473){
     s0+=54.0;
     s1+=166.0;
    } else {
     s0+=7.0;
     s1+=350.0;
    }
   } else {
    if(i21<-3.337860107421875e-05){
     s0+=9.0;
     s1+=71.0;
    } else {
     s0+=21.0;
     s1+=9170.0;
    }
   }
  }
 }
}
if(i13<1.0080137252807617){
 if(i4<0.0006021559238433838){
  if(i18<0.022738464176654816){
   if(i70<0.009776148945093155){
    if(i24<1.052894115447998){
     s0+=43323.0;
     s1+=64.0;
    } else {
     s0+=2805.0;
     s1+=134.0;
    }
   } else {
    if(i1<0.07650461792945862){
     s0+=16386.0;
     s1+=790.0;
    } else {
     s0+=728.0;
     s1+=392.0;
    }
   }
  } else {
   if(i2<0.07688859105110168){
    if(i42<0.0027228049002587795){
     s0+=844.0;
     s1+=599.0;
    } else {
     s0+=4778.0;
     s1+=117.0;
    }
   } else {
    if(i6<-8.268278179457411e-06){
     s0+=269.0;
     s1+=1544.0;
    } else {
     s0+=333.0;
     s1+=123.0;
    }
   }
  }
 } else {
  if(i33<0.00038137802039273083){
   s0+=72.0;
  } else {
   if(i1<0.06356170773506165){
    if(i48<0.0008172392845153809){
     s0+=77.0;
     s1+=330.0;
    } else {
     s0+=52.0;
     s1+=13.0;
    }
   } else {
    if(i21<-0.000647127628326416){
     s0+=66.0;
     s1+=474.0;
    } else {
     s0+=6.0;
     s1+=1396.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005357563495635986){
  if(i2<0.08918991684913635){
   if(i24<1.0731133222579956){
    if(i38<0.0020303153432905674){
     s0+=11.0;
     s1+=277.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i13<1.0239787101745605){
     s0+=848.0;
     s1+=91.0;
    } else {
     s0+=11.0;
     s1+=18.0;
    }
   }
  } else {
   if(i31<1.0001592636108398){
    if(i15<0.9987479448318481){
     s0+=44.0;
    } else {
     s0+=59.0;
     s1+=2097.0;
    }
   } else {
    if(i6<-4.285261093173176e-05){
     s0+=2.0;
     s1+=402.0;
    } else {
     s0+=238.0;
     s1+=105.0;
    }
   }
  }
 } else {
  if(i16<0.0022995241452008486){
   if(i21<0.001223444938659668){
    if(i6<-5.578429772867821e-05){
     s1+=5.0;
    } else {
     s0+=49.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i21<-2.1278858184814453e-05){
    if(i16<0.004708010703325272){
     s0+=31.0;
    } else {
     s0+=21.0;
     s1+=449.0;
    }
   } else {
    if(i12<3.743171691894531e-05){
     s0+=3.0;
     s1+=112.0;
    } else {
     s1+=7522.0;
    }
   }
  }
 }
}
if(i21<0.0007696449756622314){
 if(i4<0.0005661249160766602){
  if(i39<0.0003172574797645211){
   if(i45<1.0598037242889404){
    if(i26<0.9704058766365051){
     s0+=49.0;
     s1+=4.0;
    } else {
     s0+=42086.0;
     s1+=8.0;
    }
   } else {
    if(i43<1.103413462638855){
     s0+=2454.0;
     s1+=701.0;
    } else {
     s0+=12481.0;
     s1+=135.0;
    }
   }
  } else {
   if(i11<0.9876878261566162){
    if(i10<0.00015282630920410156){
     s0+=5393.0;
     s1+=236.0;
    } else {
     s0+=1119.0;
     s1+=363.0;
    }
   } else {
    if(i41<1.0596027374267578){
     s0+=1373.0;
    } else {
     s0+=5210.0;
     s1+=3437.0;
    }
   }
  }
 } else {
  if(i15<1.0002965927124023){
   if(i67<0.032196853309869766){
    s0+=127.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i2<0.1320442259311676){
    if(i34<1.613681674003601){
     s0+=84.0;
     s1+=743.0;
    } else {
     s0+=105.0;
     s1+=44.0;
    }
   } else {
    if(i3<1.0023459196090698){
     s0+=16.0;
     s1+=217.0;
    } else {
     s0+=5.0;
     s1+=1255.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i3<1.0001311302185059){
   if(i35<0.05647256597876549){
    s0+=172.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i5<0.04638785123825073){
    if(i16<0.0020205089822411537){
     s0+=47.0;
     s1+=24.0;
    } else {
     s0+=7.0;
     s1+=605.0;
    }
   } else {
    if(i30<0.0001747442875057459){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=9146.0;
    }
   }
  }
 } else {
  if(i16<0.0025527137331664562){
   if(i73<-1.4709009974467335e-06){
    s0+=418.0;
   } else {
    if(i10<3.3020973205566406e-05){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   }
  } else {
   if(i66<1.0016396045684814){
    if(i34<1.2927743196487427){
     s0+=1.0;
     s1+=127.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i4<0.0005484819412231445){
 if(i2<0.08391055464744568){
  if(i49<-0.028002113103866577){
   if(i8<-2.2470951080322266e-05){
    if(i2<0.03629139065742493){
     s0+=1198.0;
     s1+=63.0;
    } else {
     s0+=121.0;
     s1+=65.0;
    }
   } else {
    if(i6<-2.7562855393625796e-05){
     s0+=147.0;
     s1+=231.0;
    } else {
     s0+=989.0;
     s1+=256.0;
    }
   }
  } else {
   if(i1<0.06312990188598633){
    if(i24<1.0451585054397583){
     s0+=51559.0;
     s1+=153.0;
    } else {
     s0+=11817.0;
     s1+=831.0;
    }
   } else {
    if(i51<0.03537672758102417){
     s0+=112.0;
     s1+=298.0;
    } else {
     s0+=2730.0;
     s1+=208.0;
    }
   }
  }
 } else {
  if(i15<0.9985270500183105){
   if(i41<1.5754120349884033){
    if(i31<0.9986975193023682){
     s0+=597.0;
    } else {
     s0+=131.0;
     s1+=14.0;
    }
   } else {
    if(i73<-1.0063097306556301e-06){
     s1+=5.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i61<0.9998725652694702){
    if(i40<0.0599023699760437){
     s0+=72.0;
     s1+=1539.0;
    } else {
     s0+=202.0;
     s1+=415.0;
    }
   } else {
    if(i41<1.3377856016159058){
     s0+=868.0;
     s1+=905.0;
    } else {
     s0+=20.0;
     s1+=433.0;
    }
   }
  }
 }
} else {
 if(i38<0.0003116395091637969){
  s0+=183.0;
 } else {
  if(i27<0.0001797717995941639){
   if(i53<2.0724972273455933e-05){
    s0+=46.0;
   } else {
    if(i24<1.043100118637085){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.06888946890830994){
    if(i16<0.0027601029723882675){
     s0+=97.0;
     s1+=31.0;
    } else {
     s0+=106.0;
     s1+=594.0;
    }
   } else {
    if(i12<-5.435943603515625e-05){
     s0+=107.0;
     s1+=857.0;
    } else {
     s0+=53.0;
     s1+=10187.0;
    }
   }
  }
 }
}
if(i0<0.08408460021018982){
 if(i22<1.0027947425842285){
  if(i27<0.00031641291570849717){
   if(i20<1.0116050243377686){
    if(i53<0.00028511020354926586){
     s0+=52677.0;
     s1+=167.0;
    } else {
     s0+=1142.0;
     s1+=118.0;
    }
   } else {
    if(i38<0.001257279422134161){
     s0+=4.0;
     s1+=56.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.0014454065822064877){
    if(i6<-1.7935562937054783e-05){
     s0+=156.0;
     s1+=628.0;
    } else {
     s0+=5435.0;
     s1+=835.0;
    }
   } else {
    if(i35<0.07466641068458557){
     s0+=8803.0;
     s1+=311.0;
    } else {
     s1+=25.0;
    }
   }
  }
 } else {
  if(i15<1.0018941164016724){
   if(i12<-0.0002551078796386719){
    if(i70<0.00747490581125021){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=672.0;
     s1+=13.0;
    }
   } else {
    if(i42<0.0020294489804655313){
     s0+=116.0;
     s1+=121.0;
    } else {
     s0+=151.0;
     s1+=19.0;
    }
   }
  } else {
   if(i63<0.0001292133383685723){
    if(i12<-6.854534149169922e-05){
     s0+=38.0;
     s1+=55.0;
    } else {
     s0+=18.0;
     s1+=669.0;
    }
   } else {
    if(i20<0.9811258316040039){
     s0+=62.0;
     s1+=135.0;
    } else {
     s0+=149.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985275268554688){
  if(i42<0.008514813147485256){
   if(i56<-1.0199353710049763e-05){
    if(i60<1.0620699868013617e-05){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    s0+=447.0;
   }
  } else {
   if(i21<-0.004228562116622925){
    if(i10<-0.000478208065032959){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i6<-2.1036785256001167e-05){
   if(i16<0.0026728585362434387){
    if(i64<0.003900766372680664){
     s0+=43.0;
     s1+=692.0;
    } else {
     s0+=144.0;
     s1+=15.0;
    }
   } else {
    if(i35<0.022884562611579895){
     s0+=254.0;
     s1+=2704.0;
    } else {
     s0+=39.0;
     s1+=9921.0;
    }
   }
  } else {
   if(i49<0.059152185916900635){
    if(i21<-0.00015103816986083984){
     s0+=98.0;
     s1+=445.0;
    } else {
     s0+=99.0;
     s1+=34.0;
    }
   } else {
    if(i37<0.0018564584897831082){
     s0+=354.0;
     s1+=33.0;
    } else {
     s0+=142.0;
     s1+=136.0;
    }
   }
  }
 }
}
if(i15<1.0016282796859741){
 if(i0<0.08420151472091675){
  if(i48<-0.0015439391136169434){
   if(i8<-3.540515899658203e-05){
    if(i46<0.012805193662643433){
     s0+=1375.0;
     s1+=32.0;
    } else {
     s0+=419.0;
     s1+=66.0;
    }
   } else {
    if(i37<0.00031949413823895156){
     s0+=785.0;
    } else {
     s0+=1394.0;
     s1+=664.0;
    }
   }
  } else {
   if(i19<1.0073298215866089){
    if(i27<0.00030562852043658495){
     s0+=52819.0;
     s1+=164.0;
    } else {
     s0+=10137.0;
     s1+=710.0;
    }
   } else {
    if(i21<0.0004914402961730957){
     s0+=1453.0;
     s1+=215.0;
    } else {
     s0+=283.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i17<-1.621246337890625e-05){
   if(i37<0.006805916782468557){
    if(i14<0.9941398501396179){
     s0+=336.0;
    } else {
     s0+=42.0;
     s1+=2.0;
    }
   } else {
    if(i4<-0.0017843246459960938){
     s0+=6.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i37<0.0005117261316627264){
    if(i39<0.0007173813064582646){
     s0+=45.0;
     s1+=96.0;
    } else {
     s0+=186.0;
     s1+=2.0;
    }
   } else {
    if(i40<0.047769248485565186){
     s0+=65.0;
     s1+=2813.0;
    } else {
     s0+=691.0;
     s1+=1626.0;
    }
   }
  }
 }
} else {
 if(i0<0.07262927293777466){
  if(i61<1.0004069805145264){
   if(i34<1.2392117977142334){
    s1+=366.0;
   } else {
    if(i26<1.002265214920044){
     s0+=115.0;
     s1+=295.0;
    } else {
     s0+=154.0;
     s1+=15.0;
    }
   }
  } else {
   if(i7<1.0947712659835815){
    if(i8<8.970499038696289e-05){
     s0+=621.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   } else {
    if(i3<0.9980338215827942){
     s0+=2.0;
    } else {
     s1+=73.0;
    }
   }
  }
 } else {
  if(i3<1.0023677349090576){
   if(i1<0.11345064640045166){
    if(i62<0.0024913137312978506){
     s0+=204.0;
     s1+=43.0;
    } else {
     s1+=65.0;
    }
   } else {
    if(i18<0.021355215460062027){
     s0+=16.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=348.0;
    }
   }
  } else {
   if(i35<0.01672711968421936){
    if(i68<-0.0057313814759254456){
     s0+=51.0;
     s1+=85.0;
    } else {
     s0+=17.0;
     s1+=1248.0;
    }
   } else {
    if(i1<0.08160188794136047){
     s0+=2.0;
     s1+=142.0;
    } else {
     s1+=7681.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i19<1.0078692436218262){
  if(i51<0.057029932737350464){
   if(i7<1.0452277660369873){
    if(i64<-0.0012745261192321777){
     s0+=4388.0;
     s1+=557.0;
    } else {
     s0+=56946.0;
     s1+=416.0;
    }
   } else {
    if(i35<0.014365743845701218){
     s0+=3630.0;
     s1+=631.0;
    } else {
     s0+=1626.0;
     s1+=1134.0;
    }
   }
  } else {
   if(i0<0.10954597592353821){
    if(i67<0.01388589758425951){
     s0+=989.0;
     s1+=93.0;
    } else {
     s0+=44.0;
     s1+=28.0;
    }
   } else {
    if(i6<-8.460518074571155e-06){
     s0+=48.0;
     s1+=456.0;
    } else {
     s0+=220.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i1<0.07772868871688843){
   if(i24<1.0731133222579956){
    if(i43<1.1039612293243408){
     s0+=98.0;
     s1+=258.0;
    } else {
     s0+=186.0;
     s1+=13.0;
    }
   } else {
    if(i43<1.1040980815887451){
     s0+=244.0;
     s1+=48.0;
    } else {
     s0+=1265.0;
     s1+=34.0;
    }
   }
  } else {
   if(i68<-0.004295593127608299){
    if(i6<-3.355216176714748e-05){
     s0+=113.0;
     s1+=760.0;
    } else {
     s0+=622.0;
     s1+=171.0;
    }
   } else {
    if(i21<-0.00045296549797058105){
     s0+=25.0;
     s1+=50.0;
    } else {
     s0+=32.0;
     s1+=827.0;
    }
   }
  }
 }
} else {
 if(i0<0.05748438835144043){
  if(i64<-0.0011000633239746094){
   if(i59<0.0007372796535491943){
    if(i16<0.002553943544626236){
     s0+=7.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=332.0;
    }
   } else {
    if(i1<0.049086570739746094){
     s0+=47.0;
    } else {
     s0+=5.0;
     s1+=8.0;
    }
   }
  } else {
   if(i60<3.1445006243302487e-07){
    if(i21<0.001399695873260498){
     s0+=277.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   } else {
    if(i37<0.006693776231259108){
     s0+=2.0;
     s1+=48.0;
    } else {
     s0+=38.0;
    }
   }
  }
 } else {
  if(i11<1.0095746517181396){
   if(i0<0.1373630166053772){
    if(i59<0.004263550043106079){
     s0+=74.0;
     s1+=948.0;
    } else {
     s0+=103.0;
     s1+=18.0;
    }
   } else {
    if(i2<0.1692928671836853){
     s0+=15.0;
     s1+=321.0;
    } else {
     s1+=1468.0;
    }
   }
  } else {
   if(i12<0.00020164251327514648){
    if(i6<-4.4586766307475045e-05){
     s1+=436.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    s1+=8049.0;
   }
  }
 }
}
if(i10<0.0004342198371887207){
 if(i9<1.0452277660369873){
  if(i36<0.02661413699388504){
   if(i6<-4.241688293404877e-05){
    if(i15<0.9994986653327942){
     s0+=389.0;
     s1+=7.0;
    } else {
     s0+=57.0;
     s1+=156.0;
    }
   } else {
    if(i58<0.05736400559544563){
     s0+=53885.0;
     s1+=331.0;
    } else {
     s0+=1127.0;
     s1+=157.0;
    }
   }
  } else {
   if(i3<0.9968571066856384){
    if(i70<0.06236584484577179){
     s0+=2134.0;
     s1+=138.0;
    } else {
     s0+=4040.0;
     s1+=6.0;
    }
   } else {
    if(i18<0.02979222498834133){
     s0+=2557.0;
     s1+=633.0;
    } else {
     s0+=181.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i16<0.004499905742704868){
   if(i1<0.09213748574256897){
    if(i12<0.0002262592315673828){
     s0+=3869.0;
     s1+=532.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i68<-0.005662765819579363){
     s0+=593.0;
     s1+=198.0;
    } else {
     s0+=164.0;
     s1+=853.0;
    }
   }
  } else {
   if(i4<-0.0005331635475158691){
    if(i13<0.9914709329605103){
     s0+=45.0;
     s1+=138.0;
    } else {
     s0+=318.0;
     s1+=39.0;
    }
   } else {
    if(i3<0.9990062117576599){
     s0+=57.0;
     s1+=283.0;
    } else {
     s0+=17.0;
     s1+=1941.0;
    }
   }
  }
 }
} else {
 if(i2<0.0896381139755249){
  if(i63<0.00014504548744298518){
   if(i52<-0.0011962056159973145){
    if(i56<-1.4286111763794906e-05){
     s0+=28.0;
     s1+=554.0;
    } else {
     s0+=15.0;
     s1+=14.0;
    }
   } else {
    if(i11<1.004582166671753){
     s0+=642.0;
     s1+=120.0;
    } else {
     s0+=111.0;
     s1+=393.0;
    }
   }
  } else {
   if(i49<-0.04840397834777832){
    if(i14<1.0017530918121338){
     s0+=35.0;
     s1+=91.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i67<0.015624262392520905){
     s0+=755.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i33<0.007180941291153431){
   if(i12<-9.745359420776367e-05){
    if(i18<0.02392595075070858){
     s0+=131.0;
     s1+=40.0;
    } else {
     s0+=47.0;
     s1+=287.0;
    }
   } else {
    if(i51<0.06809020042419434){
     s0+=1.0;
     s1+=1627.0;
    } else {
     s0+=32.0;
     s1+=460.0;
    }
   }
  } else {
   if(i24<1.0771137475967407){
    if(i3<1.0012967586517334){
     s0+=28.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i18<0.00097155652474612){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=7383.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i0<0.07909071445465088){
  if(i24<1.0451585054397583){
   if(i52<-0.0022437572479248047){
    if(i34<1.0840110778808594){
     s0+=960.0;
    } else {
     s0+=675.0;
     s1+=139.0;
    }
   } else {
    if(i74<0.020735740661621094){
     s0+=45793.0;
     s1+=23.0;
    } else {
     s0+=6392.0;
     s1+=60.0;
    }
   }
  } else {
   if(i45<1.1036889553070068){
    if(i18<0.016892557963728905){
     s0+=4896.0;
     s1+=545.0;
    } else {
     s0+=485.0;
     s1+=804.0;
    }
   } else {
    if(i76<0.9330364465713501){
     s0+=1314.0;
     s1+=153.0;
    } else {
     s0+=8225.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i40<0.049041420221328735){
   if(i61<0.9993432760238647){
    s0+=109.0;
   } else {
    if(i8<-5.599856376647949e-05){
     s0+=48.0;
     s1+=52.0;
    } else {
     s0+=135.0;
     s1+=2307.0;
    }
   }
  } else {
   if(i10<-0.0004054605960845947){
    if(i47<0.0019484253134578466){
     s0+=369.0;
     s1+=1.0;
    } else {
     s0+=36.0;
     s1+=7.0;
    }
   } else {
    if(i47<0.0011118948459625244){
     s0+=769.0;
     s1+=280.0;
    } else {
     s0+=391.0;
     s1+=871.0;
    }
   }
  }
 }
} else {
 if(i15<0.9987809658050537){
  s0+=137.0;
 } else {
  if(i43<1.0657644271850586){
   s0+=17.0;
  } else {
   if(i16<0.0019228286109864712){
    if(i56<-1.5163986972765997e-05){
     s1+=101.0;
    } else {
     s0+=135.0;
     s1+=1.0;
    }
   } else {
    if(i63<8.695388532942161e-05){
     s0+=38.0;
     s1+=8911.0;
    } else {
     s0+=247.0;
     s1+=2647.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i1<0.08023566007614136){
  if(i15<1.002000331878662){
   if(i7<1.0401363372802734){
    if(i13<1.0083967447280884){
     s0+=58606.0;
     s1+=561.0;
    } else {
     s0+=31.0;
     s1+=25.0;
    }
   } else {
    if(i45<1.0598037242889404){
     s0+=1932.0;
     s1+=11.0;
    } else {
     s0+=4087.0;
     s1+=845.0;
    }
   }
  } else {
   if(i8<3.147125244140625e-05){
    if(i56<-2.135925751645118e-05){
     s0+=276.0;
     s1+=8.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i49<0.03322973847389221){
     s0+=18.0;
     s1+=325.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i14<0.9935930967330933){
   if(i23<0.9651181697845459){
    if(i51<0.06616795063018799){
     s1+=18.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i5<0.09642413258552551){
     s0+=163.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   }
  } else {
   if(i33<0.00036156445275992155){
    s0+=19.0;
   } else {
    if(i8<-5.5462121963500977e-05){
     s0+=14.0;
    } else {
     s0+=18.0;
     s1+=867.0;
    }
   }
  }
 }
} else {
 if(i18<0.022061459720134735){
  if(i23<1.0087471008300781){
   if(i8<5.346536636352539e-05){
    if(i6<-1.3115760339132976e-05){
     s0+=1186.0;
     s1+=458.0;
    } else {
     s0+=2488.0;
     s1+=95.0;
    }
   } else {
    if(i61<0.9999538660049438){
     s0+=8.0;
     s1+=90.0;
    } else {
     s0+=83.0;
     s1+=102.0;
    }
   }
  } else {
   if(i6<-3.357388050062582e-05){
    if(i12<9.864568710327148e-06){
     s0+=40.0;
     s1+=26.0;
    } else {
     s0+=57.0;
     s1+=2240.0;
    }
   } else {
    if(i3<1.0023252964019775){
     s0+=530.0;
     s1+=63.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i11<0.9902040958404541){
   if(i56<-5.247852641332429e-06){
    if(i58<0.3200155198574066){
     s0+=219.0;
     s1+=187.0;
    } else {
     s0+=59.0;
     s1+=540.0;
    }
   } else {
    if(i16<0.006301453337073326){
     s0+=406.0;
     s1+=21.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i37<0.0018861290300264955){
    if(i50<-0.0001361370086669922){
     s0+=143.0;
     s1+=16.0;
    } else {
     s0+=352.0;
     s1+=1399.0;
    }
   } else {
    if(i0<0.09900322556495667){
     s0+=158.0;
     s1+=326.0;
    } else {
     s0+=77.0;
     s1+=8985.0;
    }
   }
  }
 }
}
if(i11<1.0060217380523682){
 if(i7<1.0452277660369873){
  if(i4<0.0006580352783203125){
   if(i5<0.07717716693878174){
    if(i53<0.0002615389530546963){
     s0+=52958.0;
     s1+=280.0;
    } else {
     s0+=8971.0;
     s1+=689.0;
    }
   } else {
    if(i10<-0.00041285157203674316){
     s0+=45.0;
    } else {
     s0+=76.0;
     s1+=136.0;
    }
   }
  } else {
   if(i42<0.0004313714453019202){
    s0+=32.0;
   } else {
    if(i31<1.0020616054534912){
     s1+=153.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i0<0.0915621817111969){
   if(i3<1.00127112865448){
    if(i18<0.01706167869269848){
     s0+=4797.0;
     s1+=320.0;
    } else {
     s0+=1750.0;
     s1+=914.0;
    }
   } else {
    if(i59<-0.00235903263092041){
     s0+=32.0;
     s1+=279.0;
    } else {
     s0+=378.0;
     s1+=318.0;
    }
   }
  } else {
   if(i4<-0.0008591413497924805){
    if(i56<-1.041128325596219e-05){
     s0+=8.0;
     s1+=87.0;
    } else {
     s0+=254.0;
     s1+=5.0;
    }
   } else {
    if(i18<0.028148431330919266){
     s0+=624.0;
     s1+=853.0;
    } else {
     s0+=180.0;
     s1+=3094.0;
    }
   }
  }
 }
} else {
 if(i8<3.3915042877197266e-05){
  if(i2<0.08058902621269226){
   if(i61<0.9999008178710938){
    if(i34<1.2160128355026245){
     s0+=2.0;
     s1+=59.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i30<0.000267513794824481){
     s0+=44.0;
     s1+=31.0;
    } else {
     s0+=401.0;
     s1+=11.0;
    }
   }
  } else {
   if(i37<0.0005846812855452299){
    if(i32<-0.0006126381340436637){
     s0+=37.0;
    } else {
     s0+=6.0;
     s1+=29.0;
    }
   } else {
    if(i66<1.0002844333648682){
     s0+=14.0;
     s1+=538.0;
    } else {
     s0+=56.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i0<0.07021626830101013){
   if(i45<1.133395791053772){
    s1+=257.0;
   } else {
    if(i62<0.004095179960131645){
     s0+=143.0;
     s1+=4.0;
    } else {
     s1+=44.0;
    }
   }
  } else {
   if(i16<0.0021808247547596693){
    if(i11<1.011218786239624){
     s0+=18.0;
     s1+=3.0;
    } else {
     s1+=140.0;
    }
   } else {
    if(i3<1.0044289827346802){
     s0+=13.0;
     s1+=893.0;
    } else {
     s1+=8109.0;
    }
   }
  }
 }
}
if(i4<0.0005469322204589844){
 if(i0<0.08195626735687256){
  if(i74<0.018595686182379723){
   if(i20<1.009491205215454){
    if(i13<1.0083825588226318){
     s0+=51189.0;
     s1+=293.0;
    } else {
     s0+=14.0;
     s1+=25.0;
    }
   } else {
    if(i21<0.00041419267654418945){
     s0+=218.0;
     s1+=21.0;
    } else {
     s0+=32.0;
     s1+=119.0;
    }
   }
  } else {
   if(i41<1.103413462638855){
    if(i22<1.00065016746521){
     s0+=4382.0;
     s1+=830.0;
    } else {
     s0+=19.0;
     s1+=304.0;
    }
   } else {
    if(i76<0.9390013217926025){
     s0+=1515.0;
     s1+=224.0;
    } else {
     s0+=11718.0;
     s1+=219.0;
    }
   }
  }
 } else {
  if(i16<0.001814414979889989){
   if(i6<-1.2599655747180805e-05){
    if(i26<1.0253775119781494){
     s0+=42.0;
     s1+=201.0;
    } else {
     s0+=123.0;
     s1+=7.0;
    }
   } else {
    if(i37<0.00179765815846622){
     s0+=489.0;
     s1+=25.0;
    } else {
     s0+=34.0;
     s1+=34.0;
    }
   }
  } else {
   if(i14<0.9934015274047852){
    if(i41<1.3685884475708008){
     s0+=439.0;
     s1+=207.0;
    } else {
     s0+=20.0;
     s1+=271.0;
    }
   } else {
    if(i48<0.004761368036270142){
     s0+=104.0;
     s1+=1892.0;
    } else {
     s0+=328.0;
     s1+=693.0;
    }
   }
  }
 }
} else {
 if(i27<0.0002014274796238169){
  if(i5<0.06190040707588196){
   if(i16<0.004952658899128437){
    if(i46<0.013651371002197266){
     s0+=31.0;
     s1+=2.0;
    } else {
     s0+=163.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i0<0.0692531168460846){
   if(i48<-5.221366882324219e-05){
    if(i59<0.0006570219993591309){
     s0+=72.0;
     s1+=561.0;
    } else {
     s0+=35.0;
     s1+=12.0;
    }
   } else {
    if(i41<1.1464574337005615){
     s0+=16.0;
     s1+=33.0;
    } else {
     s0+=127.0;
     s1+=3.0;
    }
   }
  } else {
   if(i4<0.0008363723754882812){
    if(i0<0.12877166271209717){
     s0+=92.0;
     s1+=272.0;
    } else {
     s0+=16.0;
     s1+=706.0;
    }
   } else {
    if(i63<0.00010748376371338964){
     s0+=4.0;
     s1+=8462.0;
    } else {
     s0+=49.0;
     s1+=1551.0;
    }
   }
  }
 }
}
if(i3<1.0024571418762207){
 if(i19<1.0075641870498657){
  if(i2<0.08763730525970459){
   if(i24<1.0451585054397583){
    if(i45<1.0557184219360352){
     s0+=40895.0;
     s1+=1.0;
    } else {
     s0+=12965.0;
     s1+=202.0;
    }
   } else {
    if(i1<0.06308424472808838){
     s0+=12340.0;
     s1+=1211.0;
    } else {
     s0+=836.0;
     s1+=513.0;
    }
   }
  } else {
   if(i4<-0.0006738901138305664){
    if(i10<-0.0003968775272369385){
     s0+=469.0;
     s1+=6.0;
    } else {
     s0+=60.0;
     s1+=105.0;
    }
   } else {
    if(i6<6.387540452124085e-06){
     s0+=309.0;
     s1+=1562.0;
    } else {
     s0+=121.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i6<-3.352927524247207e-05){
   if(i61<0.9999158382415771){
    if(i50<-0.00021973252296447754){
     s0+=94.0;
     s1+=22.0;
    } else {
     s0+=24.0;
     s1+=1320.0;
    }
   } else {
    if(i38<0.008585168048739433){
     s0+=342.0;
     s1+=261.0;
    } else {
     s1+=191.0;
    }
   }
  } else {
   if(i33<0.0011358463671058416){
    if(i16<0.001969217322766781){
     s0+=436.0;
     s1+=46.0;
    } else {
     s1+=259.0;
    }
   } else {
    if(i33<0.006047732662409544){
     s0+=1711.0;
     s1+=69.0;
    } else {
     s0+=68.0;
     s1+=119.0;
    }
   }
  }
 }
} else {
 if(i0<0.059381723403930664){
  if(i50<0.00016418099403381348){
   if(i59<-0.002009451389312744){
    if(i61<0.9999346137046814){
     s1+=25.0;
    } else {
     s0+=12.0;
     s1+=5.0;
    }
   } else {
    if(i38<0.001134527032263577){
     s1+=6.0;
    } else {
     s0+=119.0;
    }
   }
  } else {
   if(i14<1.0042438507080078){
    if(i71<1.0014865398406982){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=93.0;
    }
   } else {
    if(i9<1.0226775407791138){
     s0+=14.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=245.0;
    }
   }
  }
 } else {
  if(i56<-1.1807423106802162e-05){
   if(i21<3.5643577575683594e-05){
    if(i24<1.1228240728378296){
     s0+=79.0;
     s1+=177.0;
    } else {
     s0+=10.0;
     s1+=733.0;
    }
   } else {
    if(i0<0.07022622227668762){
     s0+=13.0;
     s1+=185.0;
    } else {
     s0+=10.0;
     s1+=9718.0;
    }
   }
  } else {
   if(i61<0.9999610185623169){
    s1+=88.0;
   } else {
    if(i41<1.1580243110656738){
     s1+=14.0;
    } else {
     s0+=38.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i11<1.0055148601531982){
 if(i7<1.0452215671539307){
  if(i41<1.067622423171997){
   if(i41<1.0598037242889404){
    s0+=36436.0;
   } else {
    if(i56<-7.648455721209757e-06){
     s0+=3.0;
     s1+=43.0;
    } else {
     s0+=2083.0;
    }
   }
  } else {
   if(i8<3.236532211303711e-05){
    if(i42<0.0008615254191681743){
     s0+=4929.0;
     s1+=849.0;
    } else {
     s0+=18644.0;
     s1+=181.0;
    }
   } else {
    if(i73<-2.7762885110860225e-06){
     s0+=6.0;
     s1+=209.0;
    } else {
     s0+=6.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i8<1.9729137420654297e-05){
   if(i1<0.0877649188041687){
    if(i36<0.03261728584766388){
     s0+=4258.0;
     s1+=401.0;
    } else {
     s0+=2309.0;
     s1+=781.0;
    }
   } else {
    if(i37<0.0005436755018308759){
     s0+=238.0;
     s1+=46.0;
    } else {
     s0+=572.0;
     s1+=1686.0;
    }
   }
  } else {
   if(i1<0.11781337857246399){
    if(i76<0.9925280809402466){
     s0+=104.0;
     s1+=544.0;
    } else {
     s0+=499.0;
     s1+=261.0;
    }
   } else {
    if(i16<0.0031508957035839558){
     s0+=71.0;
     s1+=57.0;
    } else {
     s0+=40.0;
     s1+=1790.0;
    }
   }
  }
 }
} else {
 if(i4<0.0005388855934143066){
  if(i45<1.1514935493469238){
   if(i66<1.001293420791626){
    if(i41<1.1820628643035889){
     s0+=17.0;
     s1+=564.0;
    } else {
     s0+=15.0;
     s1+=15.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i33<0.0065444279462099075){
    if(i34<1.442169427871704){
     s0+=747.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i38<0.008620803244411945){
     s0+=4.0;
    } else {
     s1+=237.0;
    }
   }
  }
 } else {
  if(i8<6.586313247680664e-05){
   if(i27<0.00021778987138532102){
    if(i7<1.046690821647644){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i16<0.00232123164460063){
     s0+=96.0;
     s1+=7.0;
    } else {
     s0+=15.0;
     s1+=934.0;
    }
   }
  } else {
   if(i47<0.0015216120518743992){
    if(i3<1.00394606590271){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=1373.0;
    }
   } else {
    s1+=7008.0;
   }
  }
 }
}
if(i4<0.0005480647087097168){
 if(i65<-0.00040708616143092513){
  if(i2<0.09491747617721558){
   if(i30<0.0011649163207039237){
    if(i9<1.0430965423583984){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=61.0;
    }
   } else {
    if(i34<1.1663256883621216){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=168.0;
     s1+=1.0;
    }
   }
  } else {
   if(i6<-1.17291092465166e-05){
    if(i37<0.0005805568653158844){
     s0+=29.0;
     s1+=32.0;
    } else {
     s0+=31.0;
     s1+=690.0;
    }
   } else {
    if(i40<0.05512702465057373){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=120.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i9<1.0445520877838135){
   if(i62<0.0016181248938664794){
    if(i36<0.02785578928887844){
     s0+=54428.0;
     s1+=367.0;
    } else {
     s0+=5385.0;
     s1+=620.0;
    }
   } else {
    if(i1<0.058023810386657715){
     s0+=4640.0;
     s1+=522.0;
    } else {
     s0+=173.0;
     s1+=329.0;
    }
   }
  } else {
   if(i2<0.0908067524433136){
    if(i68<-0.0037049981765449047){
     s0+=1671.0;
     s1+=47.0;
    } else {
     s0+=2828.0;
     s1+=796.0;
    }
   } else {
    if(i72<0.023937582969665527){
     s0+=155.0;
     s1+=1364.0;
    } else {
     s0+=772.0;
     s1+=620.0;
    }
   }
  }
 }
} else {
 if(i30<0.0002465705038048327){
  if(i13<1.0082154273986816){
   s0+=192.0;
  } else {
   if(i2<0.04415282607078552){
    s0+=6.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i0<0.06511685252189636){
   if(i47<0.000972532550804317){
    if(i53<2.1239979105303064e-05){
     s0+=92.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   } else {
    if(i64<0.0014969110488891602){
     s0+=80.0;
     s1+=509.0;
    } else {
     s0+=47.0;
     s1+=5.0;
    }
   }
  } else {
   if(i0<0.12669983506202698){
    if(i49<0.049685150384902954){
     s0+=59.0;
     s1+=1640.0;
    } else {
     s0+=108.0;
     s1+=32.0;
    }
   } else {
    if(i56<-1.1704927601385862e-05){
     s0+=26.0;
     s1+=9372.0;
    } else {
     s0+=7.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i19<1.0081071853637695){
 if(i3<1.00246000289917){
  if(i1<0.08598864078521729){
   if(i76<0.976586103439331){
    if(i21<-0.002078026533126831){
     s0+=2397.0;
     s1+=119.0;
    } else {
     s0+=2326.0;
     s1+=558.0;
    }
   } else {
    if(i30<0.0003133073332719505){
     s0+=46605.0;
     s1+=63.0;
    } else {
     s0+=16114.0;
     s1+=1283.0;
    }
   }
  } else {
   if(i40<0.054991722106933594){
    if(i37<0.00045214727288112044){
     s0+=86.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=1323.0;
    }
   } else {
    if(i38<0.01047204528003931){
     s0+=550.0;
     s1+=270.0;
    } else {
     s0+=9.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i39<0.00015551103570032865){
   if(i15<1.0021988153457642){
    s0+=55.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i22<1.003418207168579){
    if(i56<-1.2594462532433681e-05){
     s0+=36.0;
     s1+=237.0;
    } else {
     s0+=29.0;
     s1+=14.0;
    }
   } else {
    if(i44<1.0234932899475098){
     s0+=33.0;
     s1+=1918.0;
    } else {
     s0+=17.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i0<0.08270779252052307){
  if(i14<1.004587173461914){
   if(i47<0.0016453629359602928){
    if(i41<1.0778207778930664){
     s0+=15.0;
     s1+=105.0;
    } else {
     s0+=1616.0;
     s1+=75.0;
    }
   } else {
    if(i38<0.0011565559543669224){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=201.0;
     s1+=66.0;
    }
   }
  } else {
   if(i56<-1.4425161680264864e-05){
    if(i37<0.009008464403450489){
     s0+=1.0;
     s1+=281.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i38<0.0015651085413992405){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=90.0;
    }
   }
  }
 } else {
  if(i4<0.0004884600639343262){
   if(i48<0.004609405994415283){
    if(i72<0.03575468063354492){
     s0+=43.0;
     s1+=844.0;
    } else {
     s0+=48.0;
     s1+=137.0;
    }
   } else {
    if(i18<0.02789069339632988){
     s0+=429.0;
     s1+=60.0;
    } else {
     s0+=140.0;
     s1+=602.0;
    }
   }
  } else {
   if(i0<0.16358953714370728){
    if(i54<0.02137172222137451){
     s0+=10.0;
     s1+=1384.0;
    } else {
     s0+=82.0;
     s1+=18.0;
    }
   } else {
    if(i29<0.9902587532997131){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=7576.0;
    }
   }
  }
 }
}
if(i10<0.000451505184173584){
 if(i20<1.0107624530792236){
  if(i24<1.0486011505126953){
   if(i64<-0.001361250877380371){
    if(i4<-0.0010061264038085938){
     s0+=652.0;
    } else {
     s0+=1074.0;
     s1+=231.0;
    }
   } else {
    if(i19<1.0107784271240234){
     s0+=53862.0;
     s1+=145.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i7<1.0398966073989868){
    if(i0<0.0805501937866211){
     s0+=5715.0;
     s1+=278.0;
    } else {
     s0+=41.0;
     s1+=98.0;
    }
   } else {
    if(i36<0.033906903117895126){
     s0+=4074.0;
     s1+=676.0;
    } else {
     s0+=2203.0;
     s1+=1914.0;
    }
   }
  }
 } else {
  if(i2<0.08951902389526367){
   if(i45<1.0749402046203613){
    if(i27<0.00018052721861749887){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=151.0;
    }
   } else {
    if(i33<0.0011714673601090908){
     s0+=195.0;
     s1+=104.0;
    } else {
     s0+=1003.0;
     s1+=53.0;
    }
   }
  } else {
   if(i61<0.9998749494552612){
    if(i8<-2.7835369110107422e-05){
     s0+=88.0;
     s1+=17.0;
    } else {
     s0+=76.0;
     s1+=1915.0;
    }
   } else {
    if(i38<0.008102597668766975){
     s0+=343.0;
     s1+=241.0;
    } else {
     s0+=31.0;
     s1+=279.0;
    }
   }
  }
 }
} else {
 if(i3<1.0018727779388428){
  if(i67<0.0138658806681633){
   if(i0<0.1095815896987915){
    if(i5<0.05372822284698486){
     s0+=909.0;
     s1+=27.0;
    } else {
     s0+=417.0;
     s1+=83.0;
    }
   } else {
    if(i18<0.02586521953344345){
     s0+=37.0;
     s1+=39.0;
    } else {
     s0+=7.0;
     s1+=290.0;
    }
   }
  } else {
   if(i23<0.9048173427581787){
    s0+=8.0;
   } else {
    if(i38<0.008878473192453384){
     s0+=26.0;
     s1+=57.0;
    } else {
     s0+=4.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i3<1.0042009353637695){
   if(i7<1.122573733329773){
    if(i35<0.00817785318940878){
     s0+=159.0;
     s1+=122.0;
    } else {
     s0+=116.0;
     s1+=637.0;
    }
   } else {
    if(i34<1.2648893594741821){
     s0+=6.0;
     s1+=43.0;
    } else {
     s1+=507.0;
    }
   }
  } else {
   if(i21<-0.0031030774116516113){
    s0+=7.0;
   } else {
    if(i1<0.03171542286872864){
     s0+=9.0;
     s1+=100.0;
    } else {
     s0+=26.0;
     s1+=9024.0;
    }
   }
  }
 }
}
if(i4<0.0005480647087097168){
 if(i0<0.0820821225643158){
  if(i39<0.000294954254059121){
   if(i52<-0.003113090991973877){
    if(i38<0.0011097458191215992){
     s0+=82.0;
     s1+=115.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i6<-4.013608850073069e-05){
     s0+=568.0;
     s1+=124.0;
    } else {
     s0+=55695.0;
     s1+=291.0;
    }
   }
  } else {
   if(i14<0.9937622547149658){
    if(i67<0.012933371588587761){
     s0+=6108.0;
     s1+=22.0;
    } else {
     s0+=683.0;
     s1+=92.0;
    }
   } else {
    if(i34<1.100754976272583){
     s0+=2255.0;
     s1+=1001.0;
    } else {
     s0+=3723.0;
     s1+=346.0;
    }
   }
  }
 } else {
  if(i59<0.002865612506866455){
   if(i4<-0.0008687973022460938){
    if(i66<1.0010998249053955){
     s0+=132.0;
    } else {
     s0+=18.0;
     s1+=46.0;
    }
   } else {
    if(i46<0.06591641902923584){
     s0+=17.0;
     s1+=1242.0;
    } else {
     s0+=171.0;
     s1+=661.0;
    }
   }
  } else {
   if(i1<0.12738820910453796){
    if(i51<0.058077067136764526){
     s0+=33.0;
     s1+=133.0;
    } else {
     s0+=737.0;
     s1+=118.0;
    }
   } else {
    if(i56<-3.0303745006676763e-06){
     s0+=136.0;
     s1+=971.0;
    } else {
     s0+=318.0;
     s1+=175.0;
    }
   }
  }
 }
} else {
 if(i45<1.055294156074524){
  s0+=143.0;
 } else {
  if(i4<0.0009525418281555176){
   if(i16<0.0023922412656247616){
    if(i74<0.008508661761879921){
     s0+=6.0;
     s1+=22.0;
    } else {
     s0+=149.0;
     s1+=20.0;
    }
   } else {
    if(i10<0.0007506012916564941){
     s0+=14.0;
     s1+=1215.0;
    } else {
     s0+=132.0;
     s1+=377.0;
    }
   }
  } else {
   if(i0<0.04723888635635376){
    if(i54<-0.00335809588432312){
     s0+=10.0;
     s1+=177.0;
    } else {
     s0+=27.0;
     s1+=4.0;
    }
   } else {
    if(i35<0.017832711338996887){
     s0+=58.0;
     s1+=1698.0;
    } else {
     s0+=2.0;
     s1+=8096.0;
    }
   }
  }
 }
}
if(i0<0.0806320309638977){
 if(i24<1.0486011505126953){
  if(i24<1.0417436361312866){
   if(i53<0.00029855285538360476){
    if(i3<1.0027213096618652){
     s0+=46577.0;
     s1+=30.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i30<0.0003998214961029589){
     s0+=138.0;
     s1+=43.0;
    } else {
     s0+=4187.0;
     s1+=45.0;
    }
   }
  } else {
   if(i52<-0.002074718475341797){
    if(i42<0.0010120802326127887){
     s0+=99.0;
     s1+=163.0;
    } else {
     s0+=176.0;
     s1+=13.0;
    }
   } else {
    if(i19<1.0109455585479736){
     s0+=4859.0;
     s1+=70.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i4<0.0005081295967102051){
   if(i43<1.1037919521331787){
    if(i71<1.0003775358200073){
     s0+=2238.0;
     s1+=685.0;
    } else {
     s0+=350.0;
     s1+=499.0;
    }
   } else {
    if(i47<0.006550593301653862){
     s0+=10442.0;
     s1+=444.0;
    } else {
     s0+=5.0;
     s1+=25.0;
    }
   }
  } else {
   if(i45<1.1481032371520996){
    if(i39<0.0024153520353138447){
     s1+=576.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i65<0.0013969831634312868){
     s0+=228.0;
     s1+=20.0;
    } else {
     s0+=62.0;
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i17<-1.3947486877441406e-05){
  if(i6<-3.674704203149304e-05){
   if(i2<0.1425894796848297){
    if(i73<-2.367799424973782e-06){
     s1+=5.0;
    } else {
     s0+=24.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i33<0.005320611409842968){
    if(i10<-0.00039526820182800293){
     s0+=374.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i7<1.0874242782592773){
     s0+=21.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i12<9.5367431640625e-05){
   if(i72<0.03126269578933716){
    if(i6<-1.2010445061605424e-05){
     s0+=173.0;
     s1+=3029.0;
    } else {
     s0+=192.0;
     s1+=237.0;
    }
   } else {
    if(i1<0.17536818981170654){
     s0+=865.0;
     s1+=378.0;
    } else {
     s0+=127.0;
     s1+=782.0;
    }
   }
  } else {
   if(i61<0.9973669052124023){
    s0+=8.0;
   } else {
    if(i11<1.0138256549835205){
     s0+=55.0;
     s1+=2251.0;
    } else {
     s1+=7390.0;
    }
   }
  }
 }
}
if(i0<0.08203768730163574){
 if(i17<1.8537044525146484e-05){
  if(i18<0.01492716558277607){
   if(i3<1.0026335716247559){
    if(i76<0.9715059995651245){
     s0+=1145.0;
     s1+=170.0;
    } else {
     s0+=55534.0;
     s1+=491.0;
    }
   } else {
    if(i50<0.0001805424690246582){
     s0+=43.0;
     s1+=10.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i7<1.0398929119110107){
    if(i4<-0.0007129311561584473){
     s0+=6003.0;
     s1+=10.0;
    } else {
     s0+=2283.0;
     s1+=256.0;
    }
   } else {
    if(i12<-0.00021630525588989258){
     s0+=1141.0;
     s1+=52.0;
    } else {
     s0+=1619.0;
     s1+=999.0;
    }
   }
  }
 } else {
  if(i7<1.0412964820861816){
   if(i3<1.0021252632141113){
    if(i6<8.434853953076527e-07){
     s0+=686.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i50<0.00020870566368103027){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=8.0;
     s1+=69.0;
    }
   }
  } else {
   if(i42<0.0019136026967316866){
    if(i75<0.00028790562646463513){
     s0+=2.0;
     s1+=478.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i62<0.003189630340784788){
     s0+=592.0;
     s1+=92.0;
    } else {
     s0+=84.0;
     s1+=406.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985270500183105){
  if(i41<1.498544454574585){
   if(i37<0.0017424665857106447){
    s0+=451.0;
   } else {
    if(i61<0.9994113445281982){
     s1+=3.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i24<1.0700592994689941){
    s0+=14.0;
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i6<-1.4174920579534955e-05){
   if(i4<0.0006920695304870605){
    if(i54<0.016230463981628418){
     s0+=104.0;
     s1+=2323.0;
    } else {
     s0+=395.0;
     s1+=1169.0;
    }
   } else {
    if(i21<-2.0742416381835938e-05){
     s0+=45.0;
     s1+=875.0;
    } else {
     s0+=27.0;
     s1+=9447.0;
    }
   }
  } else {
   if(i52<-0.0006867647171020508){
    if(i59<0.008343487977981567){
     s0+=25.0;
     s1+=192.0;
    } else {
     s0+=54.0;
     s1+=24.0;
    }
   } else {
    if(i16<0.0036123706959187984){
     s0+=562.0;
     s1+=105.0;
    } else {
     s0+=15.0;
     s1+=116.0;
    }
   }
  }
 }
}
if(i5<0.0713215172290802){
 if(i8<3.820657730102539e-05){
  if(i2<0.07855033874511719){
   if(i24<1.0451585054397583){
    if(i34<1.0856719017028809){
     s0+=34872.0;
    } else {
     s0+=18359.0;
     s1+=222.0;
    }
   } else {
    if(i42<0.0008673948468640447){
     s0+=4986.0;
     s1+=1156.0;
    } else {
     s0+=9485.0;
     s1+=471.0;
    }
   }
  } else {
   if(i0<0.07885745167732239){
    if(i18<0.037326499819755554){
     s0+=454.0;
     s1+=27.0;
    } else {
     s0+=11.0;
     s1+=26.0;
    }
   } else {
    if(i15<0.997915506362915){
     s0+=96.0;
    } else {
     s0+=90.0;
     s1+=771.0;
    }
   }
  }
 } else {
  if(i24<1.0407118797302246){
   if(i75<9.567839151713997e-05){
    s1+=1.0;
   } else {
    s0+=268.0;
   }
  } else {
   if(i21<0.0014309287071228027){
    if(i63<-1.0859444955713116e-05){
     s0+=119.0;
     s1+=30.0;
    } else {
     s0+=157.0;
     s1+=823.0;
    }
   } else {
    s1+=1079.0;
   }
  }
 }
} else {
 if(i3<1.0017274618148804){
  if(i46<0.05975621938705444){
   if(i15<0.9985195398330688){
    s0+=17.0;
   } else {
    if(i4<-0.0008623301982879639){
     s0+=20.0;
     s1+=9.0;
    } else {
     s0+=25.0;
     s1+=647.0;
    }
   }
  } else {
   if(i17<-1.4722347259521484e-05){
    if(i33<0.009224174544215202){
     s0+=408.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=10.0;
    }
   } else {
    if(i2<0.11690914630889893){
     s0+=985.0;
     s1+=357.0;
    } else {
     s0+=421.0;
     s1+=1668.0;
    }
   }
  }
 } else {
  if(i1<0.1275956630706787){
   if(i12<-9.179115295410156e-06){
    if(i52<0.000572890043258667){
     s0+=20.0;
     s1+=150.0;
    } else {
     s0+=101.0;
     s1+=34.0;
    }
   } else {
    if(i6<-4.2115912947338074e-05){
     s0+=7.0;
     s1+=721.0;
    } else {
     s0+=35.0;
     s1+=62.0;
    }
   }
  } else {
   if(i35<0.017956532537937164){
    if(i57<-0.037284739315509796){
     s0+=27.0;
     s1+=24.0;
    } else {
     s1+=800.0;
    }
   } else {
    s1+=8178.0;
   }
  }
 }
}
if(i15<1.0016392469406128){
 if(i2<0.08523821830749512){
  if(i7<1.0451608896255493){
   if(i36<0.026191605255007744){
    if(i45<1.0557184219360352){
     s0+=40474.0;
    } else {
     s0+=13250.0;
     s1+=335.0;
    }
   } else {
    if(i53<0.0006763872224837542){
     s0+=4032.0;
     s1+=415.0;
    } else {
     s0+=3934.0;
     s1+=31.0;
    }
   }
  } else {
   if(i24<1.0920991897583008){
    if(i18<0.01699357107281685){
     s0+=2820.0;
     s1+=412.0;
    } else {
     s0+=491.0;
     s1+=645.0;
    }
   } else {
    if(i16<0.005606451071798801){
     s0+=3072.0;
     s1+=154.0;
    } else {
     s0+=225.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i37<0.0005117261316627264){
   if(i23<1.002558946609497){
    if(i71<1.0008821487426758){
     s0+=465.0;
     s1+=14.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i27<0.0007185616414062679){
     s0+=8.0;
     s1+=61.0;
    } else {
     s0+=61.0;
    }
   }
  } else {
   if(i17<-1.5109777450561523e-05){
    if(i61<0.9997957944869995){
     s0+=350.0;
     s1+=1.0;
    } else {
     s0+=29.0;
     s1+=19.0;
    }
   } else {
    if(i6<-2.3561533453175798e-05){
     s0+=237.0;
     s1+=3790.0;
    } else {
     s0+=517.0;
     s1+=685.0;
    }
   }
  }
 }
} else {
 if(i23<1.0044195652008057){
  if(i16<0.011544367298483849){
   if(i11<0.989822268486023){
    if(i50<0.00029754638671875){
     s0+=68.0;
     s1+=71.0;
    } else {
     s0+=413.0;
     s1+=16.0;
    }
   } else {
    if(i16<0.005925847217440605){
     s0+=381.0;
     s1+=212.0;
    } else {
     s0+=136.0;
     s1+=603.0;
    }
   }
  } else {
   if(i0<0.014011949300765991){
    if(i68<0.003220782382413745){
     s0+=96.0;
     s1+=4.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i24<1.0790610313415527){
     s0+=14.0;
    } else {
     s0+=26.0;
     s1+=1419.0;
    }
   }
  }
 } else {
  if(i2<0.05900764465332031){
   if(i76<0.9955775737762451){
    if(i61<1.0006651878356934){
     s1+=108.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i3<1.004164695739746){
     s0+=107.0;
     s1+=26.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i2<0.0740794837474823){
    if(i66<1.0023047924041748){
     s0+=5.0;
     s1+=205.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.0937768816947937){
     s0+=12.0;
     s1+=335.0;
    } else {
     s0+=4.0;
     s1+=7268.0;
    }
   }
  }
 }
}
if(i1<0.07910728454589844){
 if(i24<1.0486011505126953){
  if(i19<1.0107784271240234){
   if(i45<1.0557184219360352){
    if(i36<0.06419296562671661){
     s0+=42030.0;
    } else {
     s0+=240.0;
     s1+=1.0;
    }
   } else {
    if(i76<0.9896485805511475){
     s0+=1717.0;
     s1+=250.0;
    } else {
     s0+=12082.0;
     s1+=116.0;
    }
   }
  } else {
   s1+=5.0;
  }
 } else {
  if(i3<1.0024913549423218){
   if(i34<1.1013743877410889){
    if(i33<0.0002946359745692462){
     s0+=1451.0;
     s1+=1.0;
    } else {
     s0+=1118.0;
     s1+=1254.0;
    }
   } else {
    if(i67<0.010090014897286892){
     s0+=8952.0;
     s1+=225.0;
    } else {
     s0+=1501.0;
     s1+=344.0;
    }
   }
  } else {
   if(i45<1.1514184474945068){
    s1+=847.0;
   } else {
    if(i3<1.0044004917144775){
     s0+=255.0;
     s1+=64.0;
    } else {
     s0+=13.0;
     s1+=201.0;
    }
   }
  }
 }
} else {
 if(i2<0.12388715147972107){
  if(i54<0.014416813850402832){
   if(i10<-0.00038421154022216797){
    if(i6<-2.4795797799015418e-05){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i50<-0.00024828314781188965){
     s0+=21.0;
    } else {
     s0+=272.0;
     s1+=2097.0;
    }
   }
  } else {
   if(i45<1.1040328741073608){
    if(i56<-1.0603107511997223e-05){
     s0+=6.0;
     s1+=28.0;
    } else {
     s0+=80.0;
     s1+=9.0;
    }
   } else {
    if(i51<0.04161486029624939){
     s1+=13.0;
    } else {
     s0+=563.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i3<0.9954944849014282){
   if(i66<1.0004202127456665){
    s0+=262.0;
   } else {
    s1+=68.0;
   }
  } else {
   if(i12<5.817413330078125e-05){
    if(i40<0.08384746313095093){
     s0+=22.0;
     s1+=1960.0;
    } else {
     s0+=318.0;
     s1+=677.0;
    }
   } else {
    if(i6<-2.2337351765600033e-05){
     s0+=19.0;
     s1+=8954.0;
    } else {
     s0+=29.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i5<0.0811576247215271){
  if(i4<0.0005880594253540039){
   if(i43<1.0714969635009766){
    if(i28<1.0434911251068115){
     s0+=37081.0;
     s1+=8.0;
    } else {
     s0+=63.0;
     s1+=6.0;
    }
   } else {
    if(i37<0.0013550537405535579){
     s0+=9593.0;
     s1+=1491.0;
    } else {
     s0+=18403.0;
     s1+=185.0;
    }
   }
  } else {
   if(i75<0.00013585299893748015){
    if(i27<0.000179713882971555){
     s0+=26.0;
     s1+=4.0;
    } else {
     s0+=11.0;
     s1+=520.0;
    }
   } else {
    if(i53<8.156811963999644e-05){
     s0+=115.0;
    } else {
     s0+=7.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i8<-6.216764450073242e-05){
   if(i37<0.006939256563782692){
    s0+=32.0;
   } else {
    if(i71<0.9996505975723267){
     s1+=4.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i37<0.0003157434402965009){
    s0+=12.0;
   } else {
    if(i68<-0.0041320244781672955){
     s0+=17.0;
     s1+=46.0;
    } else {
     s0+=5.0;
     s1+=423.0;
    }
   }
  }
 }
} else {
 if(i16<0.004435015842318535){
  if(i0<0.07466310262680054){
   if(i64<0.001631617546081543){
    if(i6<-3.269514490966685e-05){
     s0+=110.0;
     s1+=211.0;
    } else {
     s0+=1615.0;
     s1+=165.0;
    }
   } else {
    if(i43<1.1037919521331787){
     s0+=317.0;
     s1+=47.0;
    } else {
     s0+=1401.0;
     s1+=6.0;
    }
   }
  } else {
   if(i14<1.0018470287322998){
    if(i68<-0.004478569142520428){
     s0+=969.0;
     s1+=182.0;
    } else {
     s0+=263.0;
     s1+=559.0;
    }
   } else {
    if(i30<0.00345016922801733){
     s0+=32.0;
     s1+=848.0;
    } else {
     s0+=121.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i50<-0.00025582313537597656){
   if(i10<-0.0004525184631347656){
    s0+=260.0;
   } else {
    s1+=36.0;
   }
  } else {
   if(i0<0.08540502190589905){
    if(i66<1.0022027492523193){
     s0+=252.0;
     s1+=796.0;
    } else {
     s0+=261.0;
     s1+=46.0;
    }
   } else {
    if(i13<1.0042206048965454){
     s0+=129.0;
     s1+=2047.0;
    } else {
     s0+=21.0;
     s1+=9316.0;
    }
   }
  }
 }
}
if(i5<0.07130923867225647){
 if(i7<1.0452277660369873){
  if(i1<0.07641810178756714){
   if(i48<-0.0013678371906280518){
    if(i43<1.0703742504119873){
     s0+=976.0;
    } else {
     s0+=1609.0;
     s1+=392.0;
    }
   } else {
    if(i24<1.042891263961792){
     s0+=50550.0;
     s1+=114.0;
    } else {
     s0+=8597.0;
     s1+=467.0;
    }
   }
  } else {
   if(i21<-0.00077018141746521){
    if(i61<0.9996216297149658){
     s0+=66.0;
    } else {
     s0+=37.0;
     s1+=27.0;
    }
   } else {
    if(i45<1.0603303909301758){
     s0+=8.0;
    } else {
     s1+=100.0;
    }
   }
  }
 } else {
  if(i3<1.0024590492248535){
   if(i21<0.0010905265808105469){
    if(i34<1.1013743877410889){
     s0+=1618.0;
     s1+=959.0;
    } else {
     s0+=5320.0;
     s1+=636.0;
    }
   } else {
    if(i33<0.0035672138910740614){
     s0+=2.0;
     s1+=179.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i14<1.0051655769348145){
    if(i63<-4.572474608721677e-06){
     s0+=65.0;
     s1+=19.0;
    } else {
     s0+=92.0;
     s1+=320.0;
    }
   } else {
    if(i50<0.0001366138458251953){
     s0+=26.0;
     s1+=117.0;
    } else {
     s0+=5.0;
     s1+=1315.0;
    }
   }
  }
 }
} else {
 if(i3<1.0015729665756226){
  if(i0<0.11259463429450989){
   if(i40<0.040006816387176514){
    if(i6<-2.33780883718282e-05){
     s0+=10.0;
     s1+=276.0;
    } else {
     s0+=73.0;
     s1+=94.0;
    }
   } else {
    if(i41<1.1550614833831787){
     s0+=461.0;
     s1+=185.0;
    } else {
     s0+=738.0;
     s1+=39.0;
    }
   }
  } else {
   if(i51<0.08777368068695068){
    if(i50<-0.0006065964698791504){
     s0+=7.0;
    } else {
     s0+=18.0;
     s1+=1195.0;
    }
   } else {
    if(i10<-0.00040784478187561035){
     s0+=190.0;
    } else {
     s0+=399.0;
     s1+=666.0;
    }
   }
  }
 } else {
  if(i5<0.12818750739097595){
   if(i14<1.0061488151550293){
    if(i59<0.004212141036987305){
     s0+=60.0;
     s1+=581.0;
    } else {
     s0+=107.0;
     s1+=45.0;
    }
   } else {
    if(i48<0.007657766342163086){
     s0+=9.0;
     s1+=1451.0;
    } else {
     s0+=18.0;
     s1+=12.0;
    }
   }
  } else {
   if(i59<0.008213162422180176){
    if(i69<0.00019429560052230954){
     s0+=3.0;
     s1+=208.0;
    } else {
     s1+=5819.0;
    }
   } else {
    if(i16<0.002199697308242321){
     s0+=3.0;
    } else {
     s0+=11.0;
     s1+=1933.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i21<0.001131892204284668){
  if(i24<1.0486011505126953){
   if(i62<0.0014723644126206636){
    if(i4<0.0009561777114868164){
     s0+=53667.0;
     s1+=185.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i14<0.9939496517181396){
     s0+=1222.0;
     s1+=6.0;
    } else {
     s0+=814.0;
     s1+=195.0;
    }
   }
  } else {
   if(i10<0.0007272958755493164){
    if(i2<0.07664677500724792){
     s0+=8904.0;
     s1+=964.0;
    } else {
     s0+=260.0;
     s1+=719.0;
    }
   } else {
    if(i60<3.119599568890408e-05){
     s0+=34.0;
     s1+=348.0;
    } else {
     s0+=87.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i45<1.1514184474945068){
   s1+=256.0;
  } else {
   if(i8<6.99758529663086e-05){
    s0+=71.0;
   } else {
    s1+=103.0;
   }
  }
 }
} else {
 if(i6<-3.853461385006085e-05){
  if(i0<0.09206801652908325){
   if(i37<0.0014427935238927603){
    if(i14<0.9916336536407471){
     s0+=1.0;
    } else {
     s1+=673.0;
    }
   } else {
    if(i67<0.01557006873190403){
     s0+=739.0;
     s1+=200.0;
    } else {
     s0+=15.0;
     s1+=341.0;
    }
   }
  } else {
   if(i10<-0.00045248866081237793){
    if(i41<1.434314250946045){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i2<0.13240036368370056){
     s0+=169.0;
     s1+=1344.0;
    } else {
     s0+=38.0;
     s1+=10424.0;
    }
   }
  }
 } else {
  if(i71<1.0004851818084717){
   if(i5<0.06289580464363098){
    if(i6<-2.5271683625760488e-05){
     s0+=190.0;
     s1+=109.0;
    } else {
     s0+=2351.0;
     s1+=87.0;
    }
   } else {
    if(i40<0.03405320644378662){
     s0+=69.0;
     s1+=231.0;
    } else {
     s0+=1096.0;
     s1+=328.0;
    }
   }
  } else {
   if(i16<0.0038951572496443987){
    if(i25<0.991591215133667){
     s0+=57.0;
     s1+=166.0;
    } else {
     s0+=910.0;
     s1+=134.0;
    }
   } else {
    if(i63<0.0001166815563919954){
     s0+=8.0;
     s1+=491.0;
    } else {
     s0+=123.0;
     s1+=92.0;
    }
   }
  }
 }
}
if(i21<0.000811159610748291){
 if(i15<1.001636028289795){
  if(i1<0.07756569981575012){
   if(i18<0.016561254858970642){
    if(i65<0.0008422484388574958){
     s0+=55609.0;
     s1+=254.0;
    } else {
     s0+=2878.0;
     s1+=406.0;
    }
   } else {
    if(i11<0.9901387095451355){
     s0+=6743.0;
     s1+=135.0;
    } else {
     s0+=2568.0;
     s1+=1095.0;
    }
   }
  } else {
   if(i50<-0.0001424849033355713){
    if(i6<-4.4379528844729066e-05){
     s0+=19.0;
     s1+=34.0;
    } else {
     s0+=537.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.02272750250995159){
     s0+=791.0;
     s1+=690.0;
    } else {
     s0+=299.0;
     s1+=2148.0;
    }
   }
  }
 } else {
  if(i61<1.0004775524139404){
   if(i32<-0.0006231711013242602){
    s1+=740.0;
   } else {
    if(i14<1.0002524852752686){
     s0+=487.0;
     s1+=444.0;
    } else {
     s0+=100.0;
     s1+=978.0;
    }
   }
  } else {
   if(i7<1.0890878438949585){
    if(i69<0.0018166175577789545){
     s0+=575.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    s1+=239.0;
   }
  }
 }
} else {
 if(i6<-4.331939635449089e-05){
  if(i73<3.449382575126947e-07){
   if(i17<-1.1712312698364258e-05){
    if(i4<0.00010481476783752441){
     s0+=28.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<0.05761834979057312){
     s0+=53.0;
     s1+=219.0;
    } else {
     s0+=2.0;
     s1+=9544.0;
    }
   }
  } else {
   if(i10<-0.00018844008445739746){
    s0+=106.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i37<0.0007988205761648715){
   s1+=79.0;
  } else {
   if(i47<0.0011181130539625883){
    s0+=375.0;
   } else {
    if(i75<0.00010561202361714095){
     s0+=2.0;
    } else {
     s1+=50.0;
    }
   }
  }
 }
}
if(i11<1.0060343742370605){
 if(i35<0.052215248346328735){
  if(i2<0.08346086740493774){
   if(i48<-0.0017818212509155273){
    if(i22<1.0004796981811523){
     s0+=2677.0;
     s1+=440.0;
    } else {
     s0+=575.0;
     s1+=479.0;
    }
   } else {
    if(i30<0.0002968048211187124){
     s0+=46224.0;
     s1+=61.0;
    } else {
     s0+=18311.0;
     s1+=1324.0;
    }
   }
  } else {
   if(i40<0.048294395208358765){
    if(i17<-2.0176172256469727e-05){
     s0+=315.0;
    } else {
     s0+=140.0;
     s1+=2149.0;
    }
   } else {
    if(i56<-8.91835406946484e-06){
     s0+=583.0;
     s1+=626.0;
    } else {
     s0+=960.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i8<-0.00010326504707336426){
   if(i24<1.2482025623321533){
    s0+=477.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i17<-1.5527009963989258e-05){
    s0+=3.0;
   } else {
    if(i52<-0.04490917921066284){
     s0+=4.0;
     s1+=13.0;
    } else {
     s1+=1583.0;
    }
   }
  }
 }
} else {
 if(i2<0.06696397066116333){
  if(i34<1.1386182308197021){
   if(i64<0.0026172995567321777){
    s1+=250.0;
   } else {
    s0+=1.0;
   }
  } else {
   if(i16<0.00485140411183238){
    if(i18<0.03512899950146675){
     s0+=560.0;
     s1+=3.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i37<0.0015050740912556648){
     s0+=1.0;
    } else {
     s1+=66.0;
    }
   }
  }
 } else {
  if(i0<0.0886048674583435){
   if(i44<1.0211455821990967){
    if(i72<0.0367392897605896){
     s0+=14.0;
     s1+=479.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i34<1.1386182308197021){
     s1+=25.0;
    } else {
     s0+=109.0;
     s1+=5.0;
    }
   }
  } else {
   if(i16<0.0017034506890922785){
    if(i12<0.0002251267433166504){
     s0+=77.0;
     s1+=3.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i15<0.9982759952545166){
     s0+=1.0;
    } else {
     s0+=22.0;
     s1+=9242.0;
    }
   }
  }
 }
}
if(i1<0.0782729983329773){
 if(i63<-2.252397098345682e-05){
  if(i21<0.0014305710792541504){
   if(i41<1.175731897354126){
    s1+=2.0;
   } else {
    s0+=34.0;
   }
  } else {
   s1+=322.0;
  }
 } else {
  if(i8<4.297494888305664e-05){
   if(i27<0.00028711382765322924){
    if(i9<1.0461347103118896){
     s0+=52328.0;
     s1+=259.0;
    } else {
     s0+=392.0;
     s1+=55.0;
    }
   } else {
    if(i57<-0.009500976651906967){
     s0+=5760.0;
     s1+=139.0;
    } else {
     s0+=10549.0;
     s1+=1729.0;
    }
   }
  } else {
   if(i38<0.000426500104367733){
    s0+=203.0;
   } else {
    if(i45<1.1353518962860107){
     s0+=6.0;
     s1+=466.0;
    } else {
     s0+=209.0;
     s1+=300.0;
    }
   }
  }
 }
} else {
 if(i31<0.9987901449203491){
  if(i30<0.04387877136468887){
   if(i15<0.9980455040931702){
    s0+=434.0;
   } else {
    s1+=3.0;
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i69<0.0002227617660537362){
   if(i6<-1.2755635907524265e-05){
    if(i68<-0.010831650346517563){
     s0+=120.0;
     s1+=24.0;
    } else {
     s0+=72.0;
     s1+=1060.0;
    }
   } else {
    if(i40<0.040000349283218384){
     s0+=16.0;
     s1+=57.0;
    } else {
     s0+=428.0;
     s1+=64.0;
    }
   }
  } else {
   if(i3<1.002113938331604){
    if(i5<0.1251770257949829){
     s0+=604.0;
     s1+=1102.0;
    } else {
     s0+=59.0;
     s1+=1491.0;
    }
   } else {
    if(i12<0.00021332502365112305){
     s0+=109.0;
     s1+=2233.0;
    } else {
     s1+=7616.0;
    }
   }
  }
 }
}
if(i2<0.08502998948097229){
 if(i11<1.0061482191085815){
  if(i7<1.0449585914611816){
   if(i3<1.0025051832199097){
    if(i52<-0.0020501017570495605){
     s0+=4358.0;
     s1+=515.0;
    } else {
     s0+=57517.0;
     s1+=306.0;
    }
   } else {
    if(i50<0.00018680095672607422){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i20<0.9907166361808777){
    if(i0<0.01067766547203064){
     s0+=783.0;
     s1+=88.0;
    } else {
     s0+=507.0;
     s1+=728.0;
    }
   } else {
    if(i8<1.2218952178955078e-05){
     s0+=4860.0;
     s1+=424.0;
    } else {
     s0+=638.0;
     s1+=322.0;
    }
   }
  }
 } else {
  if(i38<0.0010130200535058975){
   if(i39<9.707786375656724e-05){
    if(i12<0.00015223026275634766){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i43<1.2392117977142334){
     s1+=543.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i4<0.0009420514106750488){
    if(i76<0.9964736104011536){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=566.0;
     s1+=6.0;
    }
   } else {
    if(i64<0.007334709167480469){
     s1+=82.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i15<0.9988582730293274){
  if(i56<-1.0307636330253445e-05){
   if(i0<0.08134803175926208){
    s0+=16.0;
   } else {
    if(i75<0.0002636830904521048){
     s0+=1.0;
     s1+=35.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i10<-0.00035953521728515625){
    if(i15<0.9980583190917969){
     s0+=528.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.06143748760223389){
     s1+=20.0;
    } else {
     s0+=73.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i1<0.12589031457901){
   if(i57<-0.0190792977809906){
    if(i35<0.024566709995269775){
     s0+=486.0;
     s1+=36.0;
    } else {
     s0+=35.0;
     s1+=61.0;
    }
   } else {
    if(i54<0.017074793577194214){
     s0+=137.0;
     s1+=2515.0;
    } else {
     s0+=200.0;
     s1+=58.0;
    }
   }
  } else {
   if(i42<0.0011683264747262){
    if(i27<0.0019182435935363173){
     s0+=1.0;
     s1+=116.0;
    } else {
     s0+=146.0;
     s1+=3.0;
    }
   } else {
    if(i3<1.0015254020690918){
     s0+=152.0;
     s1+=1592.0;
    } else {
     s0+=33.0;
     s1+=9586.0;
    }
   }
  }
 }
}
if(i8<3.7729740142822266e-05){
 if(i2<0.08555245399475098){
  if(i62<0.001481689978390932){
   if(i44<1.007295846939087){
    if(i67<0.009671933948993683){
     s0+=57302.0;
     s1+=561.0;
    } else {
     s0+=228.0;
     s1+=107.0;
    }
   } else {
    if(i18<0.021870916709303856){
     s0+=3749.0;
     s1+=202.0;
    } else {
     s0+=343.0;
     s1+=120.0;
    }
   }
  } else {
   if(i27<0.0025095115415751934){
    if(i41<1.1476502418518066){
     s0+=1615.0;
     s1+=804.0;
    } else {
     s0+=1609.0;
     s1+=110.0;
    }
   } else {
    if(i4<0.00021880865097045898){
     s0+=3447.0;
     s1+=132.0;
    } else {
     s0+=56.0;
     s1+=71.0;
    }
   }
  }
 } else {
  if(i34<1.0840110778808594){
   s0+=325.0;
  } else {
   if(i15<0.998518705368042){
    if(i34<1.4901387691497803){
     s0+=341.0;
     s1+=4.0;
    } else {
     s0+=75.0;
     s1+=23.0;
    }
   } else {
    if(i59<0.004818081855773926){
     s0+=384.0;
     s1+=2467.0;
    } else {
     s0+=653.0;
     s1+=913.0;
    }
   }
  }
 }
} else {
 if(i37<0.0005246878135949373){
  if(i44<1.006914734840393){
   s0+=335.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i8<6.145238876342773e-05){
   if(i0<0.06875377893447876){
    if(i45<1.1353518962860107){
     s0+=2.0;
     s1+=111.0;
    } else {
     s0+=178.0;
     s1+=54.0;
    }
   } else {
    if(i5<0.16532522439956665){
     s0+=124.0;
     s1+=649.0;
    } else {
     s1+=617.0;
    }
   }
  } else {
   if(i12<1.1622905731201172e-05){
    if(i47<0.002565381582826376){
     s0+=77.0;
     s1+=140.0;
    } else {
     s0+=32.0;
     s1+=802.0;
    }
   } else {
    if(i12<0.0002073049545288086){
     s0+=11.0;
     s1+=1177.0;
    } else {
     s1+=8297.0;
    }
   }
  }
 }
}
if(i1<0.0755770206451416){
 if(i4<0.0006022751331329346){
  if(i67<0.007412450388073921){
   if(i24<1.0475225448608398){
    if(i58<0.04734060913324356){
     s0+=49861.0;
     s1+=99.0;
    } else {
     s0+=4191.0;
     s1+=134.0;
    }
   } else {
    if(i37<0.0006717229844070971){
     s0+=3812.0;
     s1+=832.0;
    } else {
     s0+=7270.0;
     s1+=174.0;
    }
   }
  } else {
   if(i15<0.9984055161476135){
    if(i5<0.048547953367233276){
     s0+=1132.0;
     s1+=5.0;
    } else {
     s0+=79.0;
     s1+=6.0;
    }
   } else {
    if(i0<0.023500949144363403){
     s0+=1499.0;
     s1+=188.0;
    } else {
     s0+=866.0;
     s1+=574.0;
    }
   }
  }
 } else {
  if(i50<0.00017848610877990723){
   if(i16<0.003981712739914656){
    if(i46<0.0030623972415924072){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=159.0;
    }
   } else {
    if(i34<1.5944836139678955){
     s1+=124.0;
    } else {
     s0+=26.0;
     s1+=3.0;
    }
   }
  } else {
   if(i57<-0.012667029164731503){
    if(i52<-0.018201828002929688){
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   } else {
    if(i42<0.0003453253593761474){
     s0+=22.0;
    } else {
     s0+=71.0;
     s1+=882.0;
    }
   }
  }
 }
} else {
 if(i15<0.9987491369247437){
  if(i35<0.08829273283481598){
   if(i3<0.9956536293029785){
    if(i47<0.003963194787502289){
     s0+=546.0;
     s1+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i40<0.03785046935081482){
     s1+=11.0;
    } else {
     s0+=125.0;
     s1+=18.0;
    }
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i1<0.11906412243843079){
   if(i46<0.06367045640945435){
    if(i48<0.005470544099807739){
     s0+=78.0;
     s1+=1784.0;
    } else {
     s0+=33.0;
     s1+=4.0;
    }
   } else {
    if(i49<0.050900042057037354){
     s0+=317.0;
     s1+=624.0;
    } else {
     s0+=611.0;
     s1+=92.0;
    }
   }
  } else {
   if(i43<1.3184399604797363){
    if(i40<0.08777356147766113){
     s0+=29.0;
     s1+=2290.0;
    } else {
     s0+=314.0;
     s1+=262.0;
    }
   } else {
    if(i37<0.004913742654025555){
     s0+=9.0;
     s1+=42.0;
    } else {
     s0+=29.0;
     s1+=8951.0;
    }
   }
  }
 }
}
if(i46<0.059086769819259644){
 if(i6<-4.368963709566742e-05){
  if(i9<1.0398005247116089){
   if(i7<1.0401725769042969){
    if(i74<0.09197491407394409){
     s0+=335.0;
     s1+=134.0;
    } else {
     s0+=1398.0;
     s1+=6.0;
    }
   } else {
    if(i58<0.34069085121154785){
     s0+=168.0;
     s1+=451.0;
    } else {
     s0+=170.0;
     s1+=13.0;
    }
   }
  } else {
   if(i63<0.00012740647071041167){
    if(i1<0.06655740737915039){
     s0+=185.0;
     s1+=613.0;
    } else {
     s0+=22.0;
     s1+=3314.0;
    }
   } else {
    if(i9<1.0882463455200195){
     s0+=321.0;
     s1+=115.0;
    } else {
     s0+=1.0;
     s1+=451.0;
    }
   }
  }
 } else {
  if(i5<0.07100912928581238){
   if(i2<0.07729661464691162){
    if(i54<-0.006169945001602173){
     s0+=2849.0;
     s1+=570.0;
    } else {
     s0+=62312.0;
     s1+=920.0;
    }
   } else {
    if(i22<0.9979737997055054){
     s0+=384.0;
     s1+=12.0;
    } else {
     s0+=106.0;
     s1+=570.0;
    }
   }
  } else {
   if(i72<0.02940508723258972){
    if(i10<-0.0003846585750579834){
     s0+=6.0;
    } else {
     s0+=7.0;
     s1+=291.0;
    }
   } else {
    if(i3<0.9962934255599976){
     s0+=39.0;
     s1+=2.0;
    } else {
     s0+=24.0;
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i3<1.001920223236084){
  if(i17<-1.4722347259521484e-05){
   if(i71<0.9983331561088562){
    if(i47<0.004319524392485619){
     s0+=570.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i24<1.067427158355713){
     s0+=83.0;
    } else {
     s0+=30.0;
     s1+=18.0;
    }
   }
  } else {
   if(i0<0.1102154552936554){
    if(i68<-0.004448901861906052){
     s0+=832.0;
     s1+=40.0;
    } else {
     s0+=631.0;
     s1+=324.0;
    }
   } else {
    if(i38<0.008263319730758667){
     s0+=452.0;
     s1+=929.0;
    } else {
     s0+=25.0;
     s1+=907.0;
    }
   }
  }
 } else {
  if(i0<0.10036703944206238){
   if(i56<-1.302385499002412e-05){
    if(i59<0.0031519532203674316){
     s0+=8.0;
     s1+=132.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i27<0.001029646722599864){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i16<0.006692173425108194){
    if(i68<-0.00967746414244175){
     s0+=34.0;
     s1+=20.0;
    } else {
     s0+=24.0;
     s1+=843.0;
    }
   } else {
    if(i23<0.9936339855194092){
     s0+=5.0;
     s1+=604.0;
    } else {
     s1+=5850.0;
    }
   }
  }
 }
}
if(i7<1.055552363395691){
 if(i1<0.0766308605670929){
  if(i54<-0.005849778652191162){
   if(i5<0.030234605073928833){
    if(i8<3.534555435180664e-05){
     s0+=2030.0;
     s1+=195.0;
    } else {
     s0+=9.0;
     s1+=45.0;
    }
   } else {
    if(i15<0.9984060525894165){
     s0+=85.0;
     s1+=1.0;
    } else {
     s0+=178.0;
     s1+=249.0;
    }
   }
  } else {
   if(i13<1.0081672668457031){
    if(i19<1.010359764099121){
     s0+=61651.0;
     s1+=777.0;
    } else {
     s0+=44.0;
     s1+=39.0;
    }
   } else {
    if(i6<-4.134308983338997e-05){
     s0+=15.0;
     s1+=144.0;
    } else {
     s0+=87.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i41<1.0670123100280762){
   if(i23<1.0020954608917236){
    if(i31<1.000347375869751){
     s0+=175.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i73<-2.303919245605357e-06){
     s1+=6.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i17<-1.33514404296875e-05){
    if(i61<0.9993785619735718){
     s0+=4.0;
     s1+=3.0;
    } else {
     s0+=78.0;
     s1+=1.0;
    }
   } else {
    if(i68<-0.0047420961782336235){
     s0+=75.0;
     s1+=24.0;
    } else {
     s0+=83.0;
     s1+=846.0;
    }
   }
  }
 }
} else {
 if(i1<0.08312976360321045){
  if(i22<1.0025982856750488){
   if(i48<0.002568840980529785){
    if(i6<-3.186814865330234e-05){
     s0+=557.0;
     s1+=474.0;
    } else {
     s0+=2901.0;
     s1+=431.0;
    }
   } else {
    if(i42<0.0008806383702903986){
     s0+=326.0;
     s1+=37.0;
    } else {
     s0+=1002.0;
     s1+=9.0;
    }
   }
  } else {
   if(i14<1.0049407482147217){
    if(i52<0.003443598747253418){
     s0+=212.0;
     s1+=298.0;
    } else {
     s0+=161.0;
     s1+=15.0;
    }
   } else {
    if(i3<1.003347635269165){
     s0+=20.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=765.0;
    }
   }
  }
 } else {
  if(i56<8.232136678998359e-07){
   if(i11<1.0076498985290527){
    if(i41<1.3005231618881226){
     s0+=770.0;
     s1+=2081.0;
    } else {
     s0+=71.0;
     s1+=2099.0;
    }
   } else {
    if(i16<0.0012375408550724387){
     s0+=33.0;
     s1+=67.0;
    } else {
     s0+=8.0;
     s1+=8582.0;
    }
   }
  } else {
   if(i34<1.255998969078064){
    if(i43<1.1310955286026){
     s0+=73.0;
    } else {
     s0+=14.0;
     s1+=72.0;
    }
   } else {
    s0+=277.0;
   }
  }
 }
}
if(i2<0.08336997032165527){
 if(i17<2.3066997528076172e-05){
  if(i52<-0.0020640194416046143){
   if(i1<0.04139485955238342){
    if(i14<0.9938570261001587){
     s0+=2750.0;
     s1+=44.0;
    } else {
     s0+=2376.0;
     s1+=491.0;
    }
   } else {
    if(i57<-0.009955266490578651){
     s0+=594.0;
     s1+=37.0;
    } else {
     s0+=209.0;
     s1+=487.0;
    }
   }
  } else {
   if(i23<1.0060211420059204){
    if(i18<0.016617346554994583){
     s0+=54493.0;
     s1+=227.0;
    } else {
     s0+=5968.0;
     s1+=604.0;
    }
   } else {
    if(i6<-4.080851067556068e-05){
     s0+=110.0;
     s1+=229.0;
    } else {
     s0+=1555.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i12<-0.00033676624298095703){
   if(i67<0.017959102988243103){
    if(i75<0.0002414187038084492){
     s0+=416.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    if(i15<1.0023833513259888){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=38.0;
    }
   }
  } else {
   if(i14<1.000203251838684){
    if(i67<0.01056872121989727){
     s0+=393.0;
     s1+=38.0;
    } else {
     s0+=20.0;
     s1+=85.0;
    }
   } else {
    if(i3<1.0028141736984253){
     s0+=39.0;
     s1+=62.0;
    } else {
     s0+=30.0;
     s1+=628.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00039246678352355957){
  if(i60<4.444492151378654e-05){
   if(i42<0.016971442848443985){
    if(i6<-4.225862357998267e-05){
     s0+=28.0;
     s1+=4.0;
    } else {
     s0+=628.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i9<1.0398516654968262){
    s0+=17.0;
   } else {
    if(i37<0.008244248107075691){
     s1+=17.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i4<0.00045293569564819336){
   if(i48<0.00421220064163208){
    if(i37<0.0004494989407248795){
     s0+=98.0;
     s1+=20.0;
    } else {
     s0+=186.0;
     s1+=2074.0;
    }
   } else {
    if(i33<0.006046468857675791){
     s0+=812.0;
     s1+=355.0;
    } else {
     s0+=104.0;
     s1+=582.0;
    }
   }
  } else {
   if(i14<1.0000028610229492){
    if(i35<0.022974316030740738){
     s0+=87.0;
     s1+=150.0;
    } else {
     s0+=14.0;
     s1+=893.0;
    }
   } else {
    if(i33<0.008225345984101295){
     s0+=64.0;
     s1+=3012.0;
    } else {
     s0+=4.0;
     s1+=7035.0;
    }
   }
  }
 }
}
if(i0<0.08131605386734009){
 if(i10<0.0004996657371520996){
  if(i52<-0.002227604389190674){
   if(i38<0.001614907057955861){
    if(i10<-9.012222290039062e-05){
     s0+=1218.0;
     s1+=270.0;
    } else {
     s0+=242.0;
     s1+=462.0;
    }
   } else {
    if(i2<0.03784310817718506){
     s0+=3168.0;
     s1+=56.0;
    } else {
     s0+=887.0;
     s1+=154.0;
    }
   }
  } else {
   if(i25<1.0059834718704224){
    if(i18<0.021804604679346085){
     s0+=57676.0;
     s1+=277.0;
    } else {
     s0+=3548.0;
     s1+=388.0;
    }
   } else {
    if(i42<0.0011092626955360174){
     s0+=323.0;
     s1+=309.0;
    } else {
     s0+=1251.0;
     s1+=41.0;
    }
   }
  }
 } else {
  if(i60<9.554679309076164e-06){
   if(i27<0.000212929182453081){
    if(i63<8.765998245507944e-06){
     s0+=166.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i45<1.1392347812652588){
     s0+=14.0;
     s1+=560.0;
    } else {
     s0+=93.0;
     s1+=219.0;
    }
   }
  } else {
   if(i67<0.013259273022413254){
    if(i8<3.415346145629883e-05){
     s0+=703.0;
     s1+=18.0;
    } else {
     s0+=85.0;
     s1+=36.0;
    }
   } else {
    if(i5<0.009204238653182983){
     s0+=37.0;
     s1+=29.0;
    } else {
     s0+=10.0;
     s1+=114.0;
    }
   }
  }
 }
} else {
 if(i11<1.0062663555145264){
  if(i17<-1.7404556274414062e-05){
   if(i43<1.476589322090149){
    s0+=417.0;
   } else {
    if(i2<0.10924643278121948){
     s0+=18.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i16<0.001953133149072528){
    if(i6<-1.2612319551408291e-05){
     s0+=167.0;
     s1+=209.0;
    } else {
     s0+=468.0;
     s1+=77.0;
    }
   } else {
    if(i72<0.028169989585876465){
     s0+=102.0;
     s1+=3142.0;
    } else {
     s0+=549.0;
     s1+=1218.0;
    }
   }
  }
 } else {
  if(i10<0.00042763352394104004){
   if(i4<0.0001378953456878662){
    if(i63<6.364469754771562e-06){
     s0+=50.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=110.0;
    }
   } else {
    if(i69<0.00022010556131135672){
     s0+=27.0;
     s1+=224.0;
    } else {
     s0+=18.0;
     s1+=1113.0;
    }
   }
  } else {
   s1+=7948.0;
  }
 }
}
if(i1<0.07653620839118958){
 if(i49<-0.02901419997215271){
  if(i3<1.0008009672164917){
   if(i0<0.02171996235847473){
    if(i20<0.9872382879257202){
     s0+=913.0;
     s1+=148.0;
    } else {
     s0+=821.0;
     s1+=15.0;
    }
   } else {
    if(i26<0.9435110092163086){
     s0+=25.0;
     s1+=107.0;
    } else {
     s0+=465.0;
     s1+=185.0;
    }
   }
  } else {
   if(i16<0.0031232605688273907){
    if(i29<1.0216803550720215){
     s0+=41.0;
     s1+=73.0;
    } else {
     s0+=55.0;
     s1+=1.0;
    }
   } else {
    if(i61<1.0007697343826294){
     s0+=24.0;
     s1+=502.0;
    } else {
     s0+=9.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i3<1.0024800300598145){
   if(i18<0.01427015196532011){
    if(i55<-0.0008690059185028076){
     s0+=2505.0;
     s1+=200.0;
    } else {
     s0+=52566.0;
     s1+=253.0;
    }
   } else {
    if(i3<0.9978059530258179){
     s0+=8639.0;
     s1+=132.0;
    } else {
     s0+=2696.0;
     s1+=836.0;
    }
   }
  } else {
   if(i42<0.002094490919262171){
    if(i16<0.0008767219842411578){
     s0+=1.0;
    } else {
     s1+=543.0;
    }
   } else {
    if(i4<0.0009869933128356934){
     s0+=198.0;
     s1+=15.0;
    } else {
     s0+=29.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i41<1.368408203125){
  if(i4<0.00010448694229125977){
   if(i51<0.05659031867980957){
    if(i15<0.9981547594070435){
     s0+=92.0;
    } else {
     s0+=73.0;
     s1+=904.0;
    }
   } else {
    if(i18<0.02796657755970955){
     s0+=888.0;
     s1+=185.0;
    } else {
     s0+=358.0;
     s1+=383.0;
    }
   }
  } else {
   if(i48<0.004506736993789673){
    if(i75<0.0002705244696699083){
     s0+=83.0;
     s1+=3760.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i11<1.0081796646118164){
     s0+=438.0;
     s1+=651.0;
    } else {
     s0+=14.0;
     s1+=722.0;
    }
   }
  }
 } else {
  if(i0<0.09863170981407166){
   if(i65<0.0014134332304820418){
    if(i3<0.9987730979919434){
     s0+=86.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i67<-0.00397692434489727){
     s0+=5.0;
    } else {
     s1+=104.0;
    }
   }
  } else {
   if(i38<0.008097231388092041){
    if(i66<1.0021657943725586){
     s0+=3.0;
     s1+=817.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    s1+=6560.0;
   }
  }
 }
}
if(i6<-7.131211168598384e-05){
 if(i4<-0.00010079145431518555){
  if(i2<0.08302104473114014){
   if(i23<0.9385888576507568){
    if(i59<-0.008249133825302124){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=450.0;
     s1+=1.0;
    }
   } else {
    if(i69<0.0016140330117195845){
     s0+=293.0;
     s1+=18.0;
    } else {
     s0+=19.0;
     s1+=22.0;
    }
   }
  } else {
   if(i15<1.0025660991668701){
    if(i7<1.0696622133255005){
     s0+=17.0;
     s1+=3.0;
    } else {
     s1+=196.0;
    }
   } else {
    s0+=18.0;
   }
  }
 } else {
  if(i0<0.031083732843399048){
   if(i11<0.9842425584793091){
    if(i16<0.017965171486139297){
     s0+=105.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i2<0.032300740480422974){
     s0+=18.0;
     s1+=74.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i4<0.00014722347259521484){
    if(i12<-0.00037163496017456055){
     s0+=40.0;
     s1+=12.0;
    } else {
     s0+=9.0;
     s1+=147.0;
    }
   } else {
    if(i0<0.06488946080207825){
     s0+=62.0;
     s1+=272.0;
    } else {
     s0+=79.0;
     s1+=11063.0;
    }
   }
  }
 }
} else {
 if(i29<1.007735252380371){
  if(i1<0.07899314165115356){
   if(i3<1.0024782419204712){
    if(i52<-0.0022163987159729004){
     s0+=5220.0;
     s1+=900.0;
    } else {
     s0+=60740.0;
     s1+=751.0;
    }
   } else {
    if(i16<0.004206561483442783){
     s0+=48.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=234.0;
    }
   }
  } else {
   if(i36<0.04113207012414932){
    if(i51<0.056878507137298584){
     s0+=100.0;
     s1+=235.0;
    } else {
     s0+=508.0;
     s1+=97.0;
    }
   } else {
    if(i72<0.04118311405181885){
     s0+=152.0;
     s1+=1064.0;
    } else {
     s0+=312.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i45<1.1047927141189575){
   if(i25<1.0086066722869873){
    if(i69<0.00010887872485909611){
     s0+=225.0;
     s1+=20.0;
    } else {
     s0+=152.0;
     s1+=382.0;
    }
   } else {
    if(i16<0.0010088675189763308){
     s0+=72.0;
     s1+=30.0;
    } else {
     s0+=16.0;
     s1+=928.0;
    }
   }
  } else {
   if(i35<0.021357350051403046){
    if(i53<-0.000268723932094872){
     s0+=28.0;
     s1+=69.0;
    } else {
     s0+=1771.0;
     s1+=132.0;
    }
   } else {
    if(i1<0.10188320279121399){
     s0+=231.0;
     s1+=20.0;
    } else {
     s0+=185.0;
     s1+=475.0;
    }
   }
  }
 }
}
if(i12<0.00011593103408813477){
 if(i8<3.653764724731445e-05){
  if(i7<1.0452277660369873){
   if(i0<0.0832170844078064){
    if(i24<1.042891263961792){
     s0+=51318.0;
     s1+=184.0;
    } else {
     s0+=9848.0;
     s1+=652.0;
    }
   } else {
    if(i22<0.9964792728424072){
     s0+=145.0;
     s1+=7.0;
    } else {
     s0+=52.0;
     s1+=209.0;
    }
   }
  } else {
   if(i35<0.040396954864263535){
    if(i15<0.998624324798584){
     s0+=2099.0;
     s1+=32.0;
    } else {
     s0+=6164.0;
     s1+=2989.0;
    }
   } else {
    if(i39<0.0007609358872286975){
     s0+=51.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=844.0;
    }
   }
  }
 } else {
  if(i41<1.0646642446517944){
   s0+=182.0;
  } else {
   if(i18<0.02981014922261238){
    if(i45<1.170920968055725){
     s0+=7.0;
     s1+=335.0;
    } else {
     s0+=211.0;
     s1+=236.0;
    }
   } else {
    if(i2<0.07085704803466797){
     s0+=50.0;
     s1+=166.0;
    } else {
     s0+=35.0;
     s1+=1567.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0001512467861175537){
  if(i30<0.04145975783467293){
   s0+=333.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i27<0.00020094995852559805){
   if(i75<4.146267019677907e-05){
    s1+=24.0;
   } else {
    if(i11<1.0136842727661133){
     s0+=260.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i12<0.00021415948867797852){
    if(i2<0.06415283679962158){
     s0+=131.0;
     s1+=101.0;
    } else {
     s0+=64.0;
     s1+=1222.0;
    }
   } else {
    if(i39<0.00011607055785134435){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=8676.0;
    }
   }
  }
 }
}
if(i1<0.08162745833396912){
 if(i2<0.06943264603614807){
  if(i67<0.008471273817121983){
   if(i3<1.0025051832199097){
    if(i18<0.013795321807265282){
     s0+=52970.0;
     s1+=355.0;
    } else {
     s0+=10792.0;
     s1+=592.0;
    }
   } else {
    if(i6<-5.321966455085203e-05){
     s0+=59.0;
     s1+=182.0;
    } else {
     s0+=129.0;
     s1+=23.0;
    }
   }
  } else {
   if(i4<0.00046640634536743164){
    if(i41<1.200620174407959){
     s0+=1178.0;
     s1+=485.0;
    } else {
     s0+=1425.0;
     s1+=119.0;
    }
   } else {
    if(i52<0.0029807090759277344){
     s0+=30.0;
     s1+=468.0;
    } else {
     s0+=19.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i49<0.004240840673446655){
   if(i56<-1.3209830285632052e-05){
    if(i62<-5.69916155654937e-05){
     s0+=34.0;
     s1+=22.0;
    } else {
     s0+=18.0;
     s1+=556.0;
    }
   } else {
    if(i10<-0.0003790855407714844){
     s0+=137.0;
    } else {
     s0+=176.0;
     s1+=223.0;
    }
   }
  } else {
   if(i40<0.0315992534160614){
    if(i10<-0.00037866830825805664){
     s0+=134.0;
     s1+=1.0;
    } else {
     s0+=108.0;
     s1+=339.0;
    }
   } else {
    if(i27<0.0002655143616721034){
     s0+=1138.0;
     s1+=7.0;
    } else {
     s0+=1288.0;
     s1+=173.0;
    }
   }
  }
 }
} else {
 if(i16<0.004687285050749779){
  if(i72<0.03637176752090454){
   if(i50<-0.0002562999725341797){
    s0+=114.0;
   } else {
    if(i16<0.0016473885625600815){
     s0+=186.0;
     s1+=236.0;
    } else {
     s0+=143.0;
     s1+=1548.0;
    }
   }
  } else {
   if(i14<1.0072369575500488){
    if(i57<-0.02392725646495819){
     s0+=639.0;
     s1+=92.0;
    } else {
     s0+=229.0;
     s1+=174.0;
    }
   } else {
    if(i58<0.28785455226898193){
     s1+=111.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i21<-0.0008121132850646973){
   if(i37<0.0015645490493625402){
    if(i4<-0.000800788402557373){
     s0+=90.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i7<1.0889548063278198){
     s0+=156.0;
     s1+=239.0;
    } else {
     s0+=2.0;
     s1+=981.0;
    }
   }
  } else {
   if(i31<0.9987956285476685){
    if(i63<9.33663104660809e-05){
     s0+=35.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i18<0.0012323842383921146){
     s0+=4.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=10032.0;
    }
   }
  }
 }
}
if(i1<0.07771864533424377){
 if(i3<1.0025070905685425){
  if(i18<0.017024660483002663){
   if(i52<-0.002338021993637085){
    if(i43<1.100754976272583){
     s0+=829.0;
     s1+=297.0;
    } else {
     s0+=1662.0;
     s1+=84.0;
    }
   } else {
    if(i20<1.011037826538086){
     s0+=56560.0;
     s1+=320.0;
    } else {
     s0+=707.0;
     s1+=110.0;
    }
   }
  } else {
   if(i14<0.9943897128105164){
    if(i16<0.02095842733979225){
     s0+=7009.0;
     s1+=113.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i63<3.176544851157814e-05){
     s0+=1470.0;
     s1+=249.0;
    } else {
     s0+=890.0;
     s1+=909.0;
    }
   }
  }
 } else {
  if(i41<1.2287709712982178){
   if(i28<1.0802206993103027){
    if(i10<0.0003787875175476074){
     s0+=10.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=867.0;
    }
   } else {
    if(i73<-9.223724191542715e-06){
     s1+=2.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i56<-2.4517121346434578e-05){
    if(i67<0.018111038953065872){
     s0+=71.0;
     s1+=63.0;
    } else {
     s0+=2.0;
     s1+=181.0;
    }
   } else {
    if(i12<-0.00012630224227905273){
     s1+=2.0;
    } else {
     s0+=155.0;
    }
   }
  }
 }
} else {
 if(i4<0.00010463595390319824){
  if(i40<0.049102842807769775){
   if(i41<1.069220781326294){
    s0+=69.0;
   } else {
    if(i56<2.8316524094407214e-06){
     s0+=97.0;
     s1+=1182.0;
    } else {
     s0+=38.0;
     s1+=20.0;
    }
   }
  } else {
   if(i38<0.010500515811145306){
    if(i61<0.999580979347229){
     s0+=346.0;
     s1+=10.0;
    } else {
     s0+=822.0;
     s1+=433.0;
    }
   } else {
    if(i0<0.11242932081222534){
     s0+=32.0;
     s1+=3.0;
    } else {
     s1+=188.0;
    }
   }
  }
 } else {
  if(i13<1.023747444152832){
   if(i35<0.025930769741535187){
    if(i68<-0.005328189581632614){
     s0+=377.0;
     s1+=206.0;
    } else {
     s0+=79.0;
     s1+=1839.0;
    }
   } else {
    if(i6<-3.554850263753906e-05){
     s0+=5.0;
     s1+=2888.0;
    } else {
     s0+=40.0;
     s1+=76.0;
    }
   }
  } else {
   if(i35<0.011213745921850204){
    if(i4<0.000757753849029541){
     s0+=4.0;
     s1+=14.0;
    } else {
     s1+=247.0;
    }
   } else {
    if(i56<-1.0149919035029598e-05){
     s1+=6522.0;
    } else {
     s0+=2.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i6<-7.310696673812345e-05){
 if(i9<1.0289115905761719){
  if(i4<0.0002580881118774414){
   if(i7<0.9749599099159241){
    s1+=2.0;
   } else {
    if(i62<0.012405230663716793){
     s0+=559.0;
     s1+=1.0;
    } else {
     s0+=138.0;
     s1+=12.0;
    }
   }
  } else {
   if(i21<-0.00310322642326355){
    if(i58<0.29550111293792725){
     s1+=19.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i15<1.0010089874267578){
     s0+=1.0;
    } else {
     s1+=207.0;
    }
   }
  }
 } else {
  if(i21<-0.0036808252334594727){
   if(i47<0.005640486255288124){
    if(i59<-0.003838866949081421){
     s1+=3.0;
    } else {
     s0+=157.0;
    }
   } else {
    s1+=42.0;
   }
  } else {
   if(i35<0.016754135489463806){
    if(i23<0.9938127994537354){
     s0+=151.0;
     s1+=36.0;
    } else {
     s0+=49.0;
     s1+=1490.0;
    }
   } else {
    if(i0<0.0033735334873199463){
     s0+=9.0;
     s1+=13.0;
    } else {
     s0+=25.0;
     s1+=9608.0;
    }
   }
  }
 }
} else {
 if(i0<0.07909071445465088){
  if(i4<0.0005903244018554688){
   if(i59<-0.0024167001247406006){
    if(i6<-3.892566746799275e-05){
     s0+=106.0;
     s1+=150.0;
    } else {
     s0+=2181.0;
     s1+=327.0;
    }
   } else {
    if(i7<1.0398929119110107){
     s0+=57136.0;
     s1+=495.0;
    } else {
     s0+=8602.0;
     s1+=906.0;
    }
   }
  } else {
   if(i30<0.0002642031176947057){
    if(i63<5.639274604618549e-06){
     s0+=108.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i16<0.0023833701852709055){
     s0+=97.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=367.0;
    }
   }
  }
 } else {
  if(i51<0.05407792329788208){
   if(i3<0.9945751428604126){
    if(i42<0.008009765297174454){
     s0+=80.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i44<1.0564818382263184){
     s0+=70.0;
     s1+=2004.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   }
  } else {
   if(i6<-2.5305640519945882e-05){
    if(i50<0.0002130270004272461){
     s0+=233.0;
     s1+=856.0;
    } else {
     s0+=203.0;
     s1+=196.0;
    }
   } else {
    if(i42<0.003735526464879513){
     s0+=1010.0;
     s1+=166.0;
    } else {
     s0+=204.0;
     s1+=170.0;
    }
   }
  }
 }
}
if(i20<1.0107395648956299){
 if(i62<0.0021403697319328785){
  if(i4<0.0006031692028045654){
   if(i7<1.0452277660369873){
    if(i74<0.0250717680901289){
     s0+=51486.0;
     s1+=197.0;
    } else {
     s0+=8363.0;
     s1+=525.0;
    }
   } else {
    if(i53<0.00030034189694561064){
     s0+=3602.0;
     s1+=715.0;
    } else {
     s0+=768.0;
     s1+=588.0;
    }
   }
  } else {
   if(i30<0.00023507914738729596){
    if(i63<5.434204012999544e-06){
     s0+=88.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i63<0.00011529849143698812){
     s0+=39.0;
     s1+=589.0;
    } else {
     s0+=74.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i2<0.057616740465164185){
   if(i8<3.212690353393555e-05){
    if(i41<1.1823735237121582){
     s0+=1320.0;
     s1+=453.0;
    } else {
     s0+=2603.0;
     s1+=115.0;
    }
   } else {
    if(i45<1.22328782081604){
     s0+=6.0;
     s1+=225.0;
    } else {
     s0+=51.0;
     s1+=96.0;
    }
   }
  } else {
   if(i50<-0.00014281272888183594){
    if(i22<0.9995909333229065){
     s0+=347.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i37<0.000514055835083127){
     s0+=69.0;
     s1+=19.0;
    } else {
     s0+=153.0;
     s1+=2739.0;
    }
   }
  }
 }
} else {
 if(i1<0.10165438055992126){
  if(i34<1.2392117977142334){
   if(i3<1.0019919872283936){
    if(i16<0.00246905698440969){
     s0+=540.0;
     s1+=128.0;
    } else {
     s0+=14.0;
     s1+=270.0;
    }
   } else {
    if(i6<-2.6787762180902064e-05){
     s1+=682.0;
    } else {
     s0+=13.0;
     s1+=13.0;
    }
   }
  } else {
   if(i12<0.0002516508102416992){
    if(i31<1.0018665790557861){
     s0+=1038.0;
     s1+=27.0;
    } else {
     s0+=34.0;
     s1+=22.0;
    }
   } else {
    s1+=22.0;
   }
  }
 } else {
  if(i16<0.003219360951334238){
   if(i63<-1.6323021554853767e-05){
    if(i54<0.032690852880477905){
     s0+=2.0;
     s1+=271.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.003654223633930087){
     s0+=56.0;
     s1+=176.0;
    } else {
     s0+=281.0;
     s1+=64.0;
    }
   }
  } else {
   if(i8<-6.99162483215332e-05){
    if(i33<0.00798775814473629){
     s0+=36.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i73<1.027287112265185e-06){
     s0+=69.0;
     s1+=9086.0;
    } else {
     s0+=13.0;
    }
   }
  }
 }
}
if(i3<1.0024006366729736){
 if(i0<0.08000516891479492){
  if(i49<-0.0314464271068573){
   if(i15<0.9990472793579102){
    if(i7<1.0901761054992676){
     s0+=382.0;
     s1+=39.0;
    } else {
     s0+=433.0;
     s1+=7.0;
    }
   } else {
    if(i0<0.027069270610809326){
     s0+=922.0;
     s1+=191.0;
    } else {
     s0+=178.0;
     s1+=317.0;
    }
   }
  } else {
   if(i50<-3.892183303833008e-05){
    if(i53<0.0002861263928934932){
     s0+=34390.0;
     s1+=12.0;
    } else {
     s0+=4394.0;
     s1+=91.0;
    }
   } else {
    if(i20<0.9912275075912476){
     s0+=2808.0;
     s1+=615.0;
    } else {
     s0+=25359.0;
     s1+=722.0;
    }
   }
  }
 } else {
  if(i49<0.04462924599647522){
   if(i24<1.0494438409805298){
    if(i50<-3.707408905029297e-05){
     s0+=107.0;
     s1+=1.0;
    } else {
     s0+=52.0;
     s1+=52.0;
    }
   } else {
    if(i8<-5.7816505432128906e-05){
     s0+=114.0;
     s1+=57.0;
    } else {
     s0+=256.0;
     s1+=2262.0;
    }
   }
  } else {
   if(i72<0.02021390199661255){
    if(i6<-1.4709051356476266e-05){
     s0+=25.0;
     s1+=463.0;
    } else {
     s0+=70.0;
     s1+=53.0;
    }
   } else {
    if(i18<0.04107183590531349){
     s0+=1043.0;
     s1+=305.0;
    } else {
     s0+=154.0;
     s1+=561.0;
    }
   }
  }
 }
} else {
 if(i2<0.057951420545578){
  if(i48<-0.002128303050994873){
   if(i52<8.296966552734375e-05){
    if(i36<0.20007267594337463){
     s0+=6.0;
     s1+=255.0;
    } else {
     s0+=13.0;
     s1+=33.0;
    }
   } else {
    if(i17<2.6226043701171875e-05){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i38<0.000935131567530334){
    if(i41<1.063619613647461){
     s0+=25.0;
    } else {
     s0+=2.0;
     s1+=74.0;
    }
   } else {
    if(i47<0.00156967353541404){
     s0+=199.0;
    } else {
     s0+=29.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i21<0.001430511474609375){
   if(i7<1.1368224620819092){
    if(i66<1.003082513809204){
     s0+=145.0;
     s1+=1378.0;
    } else {
     s0+=40.0;
     s1+=34.0;
    }
   } else {
    if(i33<0.00482406560331583){
     s0+=5.0;
     s1+=39.0;
    } else {
     s1+=1226.0;
    }
   }
  } else {
   s1+=8282.0;
  }
 }
}
if(i1<0.08137065172195435){
 if(i12<0.00016164779663085938){
  if(i67<0.007796570658683777){
   if(i24<1.0469921827316284){
    if(i54<-0.006679236888885498){
     s0+=333.0;
     s1+=50.0;
    } else {
     s0+=54002.0;
     s1+=197.0;
    }
   } else {
    if(i41<1.103413462638855){
     s0+=2760.0;
     s1+=1153.0;
    } else {
     s0+=8829.0;
     s1+=258.0;
    }
   }
  } else {
   if(i3<1.0019526481628418){
    if(i6<-1.5315952623495832e-05){
     s0+=888.0;
     s1+=488.0;
    } else {
     s0+=2379.0;
     s1+=295.0;
    }
   } else {
    if(i56<-1.1681285286613274e-05){
     s0+=48.0;
     s1+=324.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i43<1.07004976272583){
   s0+=152.0;
  } else {
   if(i47<0.000936230062507093){
    if(i8<6.598234176635742e-05){
     s0+=150.0;
     s1+=23.0;
    } else {
     s1+=56.0;
    }
   } else {
    if(i56<-1.0960269719362259e-05){
     s1+=645.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i16<0.004802042618393898){
  if(i7<1.1695828437805176){
   if(i68<-0.005032675340771675){
    if(i0<0.1522098183631897){
     s0+=499.0;
     s1+=26.0;
    } else {
     s0+=77.0;
     s1+=217.0;
    }
   } else {
    if(i22<0.9942699670791626){
     s0+=108.0;
     s1+=8.0;
    } else {
     s0+=172.0;
     s1+=1819.0;
    }
   }
  } else {
   if(i42<0.0039378926157951355){
    if(i60<-2.169332219636999e-06){
     s1+=2.0;
    } else {
     s0+=393.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.23748621344566345){
     s0+=102.0;
     s1+=48.0;
    } else {
     s0+=5.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i12<-0.00012040138244628906){
   if(i31<0.9987795352935791){
    if(i39<0.04018105939030647){
     s0+=65.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i27<0.0044778757728636265){
     s0+=132.0;
     s1+=296.0;
    } else {
     s0+=14.0;
     s1+=967.0;
    }
   }
  } else {
   if(i30<0.0002527075703255832){
    s0+=1.0;
   } else {
    if(i18<0.0012295146007090807){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=10075.0;
    }
   }
  }
 }
}
if(i25<1.00690758228302){
 if(i0<0.08523273468017578){
  if(i8<4.1812658309936523e-05){
   if(i52<-0.001779705286026001){
    if(i0<0.05632185935974121){
     s0+=6154.0;
     s1+=742.0;
    } else {
     s0+=381.0;
     s1+=361.0;
    }
   } else {
    if(i18<0.017281342297792435){
     s0+=55349.0;
     s1+=236.0;
    } else {
     s0+=5728.0;
     s1+=592.0;
    }
   }
  } else {
   if(i54<-0.0027967095375061035){
    if(i36<0.21602287888526917){
     s0+=16.0;
     s1+=366.0;
    } else {
     s0+=38.0;
     s1+=75.0;
    }
   } else {
    if(i31<1.0010275840759277){
     s0+=259.0;
     s1+=6.0;
    } else {
     s0+=57.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i15<0.9980583190917969){
   if(i6<-2.4155164283001795e-05){
    if(i52<-0.0016258060932159424){
     s1+=1.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   } else {
    s0+=307.0;
   }
  } else {
   if(i53<0.0004624358844012022){
    if(i51<0.0629245936870575){
     s0+=41.0;
     s1+=649.0;
    } else {
     s0+=453.0;
     s1+=217.0;
    }
   } else {
    if(i56<1.6952214991761139e-06){
     s0+=147.0;
     s1+=2865.0;
    } else {
     s0+=49.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i1<0.06357941031455994){
  if(i37<0.0007442073547281325){
   if(i16<0.0017494331113994122){
    if(i6<-2.8707130695693195e-05){
     s1+=59.0;
    } else {
     s0+=202.0;
    }
   } else {
    if(i34<1.0690243244171143){
     s0+=1.0;
    } else {
     s1+=402.0;
    }
   }
  } else {
   if(i21<0.0016489624977111816){
    if(i69<0.0006964311469346285){
     s0+=1091.0;
     s1+=7.0;
    } else {
     s1+=23.0;
    }
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i45<1.2835514545440674){
   if(i56<-8.844071999192238e-07){
    if(i52<0.006049215793609619){
     s0+=94.0;
     s1+=2899.0;
    } else {
     s0+=476.0;
     s1+=1588.0;
    }
   } else {
    if(i42<0.001604293705895543){
     s0+=126.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  } else {
   if(i15<0.9984006881713867){
    s0+=98.0;
   } else {
    s1+=5872.0;
   }
  }
 }
}
if(i18<0.02274327352643013){
 if(i4<0.0005651116371154785){
  if(i0<0.07837209105491638){
   if(i65<0.0008600818691775203){
    if(i20<1.0081498622894287){
     s0+=57314.0;
     s1+=337.0;
    } else {
     s0+=1456.0;
     s1+=205.0;
    }
   } else {
    if(i30<0.0016810069791972637){
     s0+=1058.0;
     s1+=508.0;
    } else {
     s0+=2704.0;
     s1+=107.0;
    }
   }
  } else {
   if(i68<-0.004175380803644657){
    if(i6<-1.822543708840385e-05){
     s0+=305.0;
     s1+=122.0;
    } else {
     s0+=511.0;
     s1+=24.0;
    }
   } else {
    if(i6<-1.5917572454782203e-05){
     s0+=89.0;
     s1+=861.0;
    } else {
     s0+=346.0;
     s1+=151.0;
    }
   }
  }
 } else {
  if(i6<-4.32968299719505e-05){
   if(i34<1.5682398080825806){
    if(i12<-0.00013107061386108398){
     s0+=28.0;
     s1+=48.0;
    } else {
     s0+=3.0;
     s1+=2194.0;
    }
   } else {
    if(i0<0.137311190366745){
     s0+=98.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=108.0;
    }
   }
  } else {
   if(i10<0.000703662633895874){
    if(i16<0.003792482428252697){
     s0+=240.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i37<0.0003736850921995938){
     s0+=13.0;
    } else {
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i2<0.07544323801994324){
  if(i23<0.9862549304962158){
   if(i8<1.531839370727539e-05){
    if(i4<-0.0003840327262878418){
     s0+=4392.0;
     s1+=59.0;
    } else {
     s0+=377.0;
     s1+=71.0;
    }
   } else {
    if(i62<0.0038402648642659187){
     s0+=70.0;
     s1+=7.0;
    } else {
     s0+=25.0;
     s1+=149.0;
    }
   }
  } else {
   if(i22<1.000209927558899){
    if(i3<0.9968727827072144){
     s0+=476.0;
     s1+=3.0;
    } else {
     s0+=497.0;
     s1+=348.0;
    }
   } else {
    if(i44<1.0057224035263062){
     s0+=35.0;
     s1+=343.0;
    } else {
     s0+=97.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i42<0.0038648955523967743){
   if(i39<0.004606151953339577){
    if(i12<-0.0002846717834472656){
     s0+=56.0;
     s1+=5.0;
    } else {
     s0+=161.0;
     s1+=1815.0;
    }
   } else {
    if(i75<0.00012134057760704309){
     s0+=325.0;
     s1+=2.0;
    } else {
     s0+=38.0;
     s1+=74.0;
    }
   }
  } else {
   if(i24<1.0638914108276367){
    if(i65<0.0013137697242200375){
     s0+=109.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i35<0.029031705111265182){
     s0+=138.0;
     s1+=1558.0;
    } else {
     s0+=19.0;
     s1+=7966.0;
    }
   }
  }
 }
}
if(i7<1.055552363395691){
 if(i5<0.07196849584579468){
  if(i1<0.07751622796058655){
   if(i24<1.0451585054397583){
    if(i52<-0.002239435911178589){
     s0+=1678.0;
     s1+=153.0;
    } else {
     s0+=52188.0;
     s1+=93.0;
    }
   } else {
    if(i3<1.0029139518737793){
     s0+=10188.0;
     s1+=947.0;
    } else {
     s0+=39.0;
     s1+=172.0;
    }
   }
  } else {
   if(i10<-0.0003591477870941162){
    if(i35<0.002703852718695998){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i66<1.002468228340149){
     s0+=16.0;
     s1+=307.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i24<1.0494745969772339){
   if(i50<-2.5331974029541016e-05){
    if(i5<0.10383427143096924){
     s0+=171.0;
    } else {
     s0+=13.0;
     s1+=1.0;
    }
   } else {
    if(i44<0.9966701865196228){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=114.0;
     s1+=11.0;
    }
   }
  } else {
   if(i48<0.0042681097984313965){
    if(i42<0.0002890093601308763){
     s0+=25.0;
    } else {
     s0+=67.0;
     s1+=589.0;
    }
   } else {
    if(i4<0.00039905309677124023){
     s0+=59.0;
     s1+=10.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i17<1.7702579498291016e-05){
  if(i18<0.02271397039294243){
   if(i66<0.9998171329498291){
    if(i21<0.0004852414131164551){
     s0+=1368.0;
     s1+=276.0;
    } else {
     s0+=134.0;
     s1+=588.0;
    }
   } else {
    if(i16<0.004174724221229553){
     s0+=2707.0;
     s1+=183.0;
    } else {
     s0+=103.0;
     s1+=266.0;
    }
   }
  } else {
   if(i2<0.07685795426368713){
    if(i4<-0.00040712952613830566){
     s0+=516.0;
     s1+=54.0;
    } else {
     s0+=363.0;
     s1+=302.0;
    }
   } else {
    if(i17<-1.7315149307250977e-05){
     s0+=204.0;
     s1+=3.0;
    } else {
     s0+=316.0;
     s1+=2715.0;
    }
   }
  }
 } else {
  if(i12<-3.7550926208496094e-06){
   if(i7<1.125575304031372){
    if(i76<0.992425799369812){
     s0+=120.0;
     s1+=283.0;
    } else {
     s0+=753.0;
     s1+=245.0;
    }
   } else {
    if(i16<0.004598122090101242){
     s0+=15.0;
     s1+=11.0;
    } else {
     s0+=10.0;
     s1+=1020.0;
    }
   }
  } else {
   if(i0<0.020637303590774536){
    if(i59<-0.0037503838539123535){
     s1+=20.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i56<-1.4107088645687327e-05){
     s0+=17.0;
     s1+=8640.0;
    } else {
     s0+=21.0;
     s1+=17.0;
    }
   }
  }
 }
}
if(i22<1.0028984546661377){
 if(i26<1.009570598602295){
  if(i9<1.0406901836395264){
   if(i1<0.08471304178237915){
    if(i41<1.067622423171997){
     s0+=38476.0;
     s1+=34.0;
    } else {
     s0+=24089.0;
     s1+=1137.0;
    }
   } else {
    if(i4<-0.0008762776851654053){
     s0+=40.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=275.0;
    }
   }
  } else {
   if(i8<7.808208465576172e-06){
    if(i2<0.07759276032447815){
     s0+=3374.0;
     s1+=387.0;
    } else {
     s0+=677.0;
     s1+=730.0;
    }
   } else {
    if(i63<4.730582531919936e-06){
     s0+=258.0;
     s1+=101.0;
    } else {
     s0+=164.0;
     s1+=564.0;
    }
   }
  }
 } else {
  if(i0<0.08938062191009521){
   if(i45<1.1040328741073608){
    if(i16<0.0016308926278725266){
     s0+=415.0;
     s1+=57.0;
    } else {
     s0+=58.0;
     s1+=261.0;
    }
   } else {
    if(i3<1.0040583610534668){
     s0+=1563.0;
     s1+=50.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i11<1.0068925619125366){
    if(i44<1.0330071449279785){
     s0+=77.0;
     s1+=700.0;
    } else {
     s0+=549.0;
     s1+=575.0;
    }
   } else {
    if(i69<0.00013681905693374574){
     s0+=25.0;
     s1+=55.0;
    } else {
     s0+=22.0;
     s1+=1680.0;
    }
   }
  }
 }
} else {
 if(i0<0.056813448667526245){
  if(i67<0.006650807335972786){
   if(i42<0.0010673291981220245){
    if(i37<0.0003646153782028705){
     s0+=43.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i41<1.1820628643035889){
     s0+=32.0;
     s1+=6.0;
    } else {
     s0+=681.0;
     s1+=3.0;
    }
   }
  } else {
   if(i2<0.006739139556884766){
    if(i58<0.3043133616447449){
     s0+=14.0;
     s1+=27.0;
    } else {
     s0+=107.0;
     s1+=10.0;
    }
   } else {
    if(i62<0.002125923987478018){
     s0+=48.0;
     s1+=21.0;
    } else {
     s0+=11.0;
     s1+=321.0;
    }
   }
  }
 } else {
  if(i0<0.09510040283203125){
   if(i68<-0.0039285714738070965){
    if(i59<-9.191036224365234e-05){
     s0+=4.0;
     s1+=44.0;
    } else {
     s0+=204.0;
     s1+=11.0;
    }
   } else {
    if(i10<0.0005081892013549805){
     s0+=37.0;
     s1+=90.0;
    } else {
     s0+=13.0;
     s1+=759.0;
    }
   }
  } else {
   if(i69<0.0001908936392283067){
    if(i3<1.0018455982208252){
     s0+=24.0;
     s1+=9.0;
    } else {
     s0+=11.0;
     s1+=240.0;
    }
   } else {
    if(i6<-4.2799067159648985e-05){
     s0+=22.0;
     s1+=8749.0;
    } else {
     s0+=28.0;
     s1+=220.0;
    }
   }
  }
 }
}
if(i2<0.08509331941604614){
 if(i39<0.00029937142971903086){
  if(i8<4.318356513977051e-05){
   if(i38<0.0003152709105052054){
    if(i38<0.00028483185451477766){
     s0+=35412.0;
    } else {
     s0+=1333.0;
     s1+=18.0;
    }
   } else {
    if(i8<1.4960765838623047e-05){
     s0+=19105.0;
     s1+=420.0;
    } else {
     s0+=397.0;
     s1+=195.0;
    }
   }
  } else {
   if(i66<0.9999787211418152){
    if(i71<1.0022984743118286){
     s0+=231.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   } else {
    if(i64<-0.00043958425521850586){
     s0+=21.0;
     s1+=47.0;
    } else {
     s0+=3.0;
     s1+=122.0;
    }
   }
  }
 } else {
  if(i14<1.0017495155334473){
   if(i57<-0.00914984755218029){
    if(i11<0.9882005453109741){
     s0+=4452.0;
     s1+=33.0;
    } else {
     s0+=1346.0;
     s1+=92.0;
    }
   } else {
    if(i3<0.9966750144958496){
     s0+=2772.0;
     s1+=101.0;
    } else {
     s0+=3732.0;
     s1+=1244.0;
    }
   }
  } else {
   if(i6<-4.3521460611373186e-05){
    if(i38<0.0047013768926262856){
     s0+=12.0;
     s1+=562.0;
    } else {
     s0+=95.0;
     s1+=175.0;
    }
   } else {
    if(i10<0.0005449056625366211){
     s0+=336.0;
     s1+=59.0;
    } else {
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i42<0.006295825354754925){
  if(i15<0.9985202550888062){
   if(i25<0.9953707456588745){
    s0+=522.0;
   } else {
    if(i34<1.2660750150680542){
     s0+=16.0;
     s1+=6.0;
    } else {
     s0+=115.0;
    }
   }
  } else {
   if(i16<0.0016069458797574043){
    if(i59<0.0050130486488342285){
     s0+=221.0;
     s1+=206.0;
    } else {
     s0+=342.0;
     s1+=21.0;
    }
   } else {
    if(i32<-7.866107625886798e-05){
     s0+=351.0;
     s1+=3839.0;
    } else {
     s0+=230.0;
     s1+=461.0;
    }
   }
  }
 } else {
  if(i16<0.0015569638926535845){
   if(i11<1.0164244174957275){
    s0+=28.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i32<-1.2418589903973043e-05){
    if(i27<0.0003105848445557058){
     s0+=13.0;
    } else {
     s0+=56.0;
     s1+=8896.0;
    }
   } else {
    if(i60<3.647550329333171e-05){
     s0+=8.0;
     s1+=435.0;
    } else {
     s0+=74.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i21<0.0007697939872741699){
 if(i2<0.08408325910568237){
  if(i30<0.0003119684406556189){
   if(i29<1.0095995664596558){
    if(i19<1.009251594543457){
     s0+=47056.0;
     s1+=71.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    s1+=27.0;
   }
  } else {
   if(i41<1.103413462638855){
    if(i41<1.0670123100280762){
     s0+=3009.0;
     s1+=77.0;
    } else {
     s0+=2059.0;
     s1+=1427.0;
    }
   } else {
    if(i20<0.9659768342971802){
     s0+=1462.0;
     s1+=420.0;
    } else {
     s0+=14858.0;
     s1+=465.0;
    }
   }
  }
 } else {
  if(i6<-1.3791455785394646e-05){
   if(i31<0.999174177646637){
    if(i38<0.03048599138855934){
     s0+=101.0;
     s1+=6.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i40<0.0451602041721344){
     s0+=53.0;
     s1+=2615.0;
    } else {
     s0+=540.0;
     s1+=1673.0;
    }
   }
  } else {
   if(i71<0.9980380535125732){
    if(i53<0.001264069927856326){
     s0+=551.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i54<0.009032249450683594){
     s0+=134.0;
     s1+=265.0;
    } else {
     s0+=542.0;
     s1+=110.0;
    }
   }
  }
 }
} else {
 if(i22<1.0026962757110596){
  if(i1<0.05836394429206848){
   if(i16<0.004436378832906485){
    if(i42<0.0010458705946803093){
     s0+=78.0;
     s1+=26.0;
    } else {
     s0+=426.0;
    }
   } else {
    s1+=39.0;
   }
  } else {
   if(i56<-1.7257520994462539e-06){
    if(i35<0.007182389497756958){
     s0+=35.0;
     s1+=157.0;
    } else {
     s0+=12.0;
     s1+=1536.0;
    }
   } else {
    if(i59<-0.00010079145431518555){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=20.0;
    }
   }
  }
 } else {
  if(i6<-4.261390131432563e-05){
   s1+=8238.0;
  } else {
   if(i17<2.300739288330078e-05){
    if(i43<1.1710820198059082){
     s1+=2.0;
    } else {
     s0+=105.0;
    }
   } else {
    if(i30<0.00035029981518164277){
     s0+=1.0;
    } else {
     s1+=25.0;
    }
   }
  }
 }
}
if(i11<1.0056257247924805){
 if(i2<0.0852321982383728){
  if(i24<1.0486011505126953){
   if(i48<-0.0017811357975006104){
    if(i43<1.0703742504119873){
     s0+=583.0;
    } else {
     s0+=135.0;
     s1+=121.0;
    }
   } else {
    if(i27<0.0002654187264852226){
     s0+=47761.0;
     s1+=61.0;
    } else {
     s0+=7330.0;
     s1+=178.0;
    }
   }
  } else {
   if(i43<1.1037919521331787){
    if(i33<0.0002947476168628782){
     s0+=1525.0;
    } else {
     s0+=1154.0;
     s1+=1241.0;
    }
   } else {
    if(i4<0.00037091970443725586){
     s0+=9592.0;
     s1+=452.0;
    } else {
     s0+=248.0;
     s1+=448.0;
    }
   }
  }
 } else {
  if(i53<0.0006783297867514193){
   if(i10<-0.00040403008460998535){
    if(i31<0.9986988306045532){
     s0+=479.0;
    } else {
     s0+=77.0;
     s1+=1.0;
    }
   } else {
    if(i63<3.154389560222626e-05){
     s0+=501.0;
     s1+=445.0;
    } else {
     s0+=474.0;
     s1+=1525.0;
    }
   }
  } else {
   if(i35<0.028715766966342926){
    if(i70<0.07881298661231995){
     s0+=68.0;
     s1+=532.0;
    } else {
     s0+=131.0;
     s1+=86.0;
    }
   } else {
    if(i10<-0.00048094987869262695){
     s0+=13.0;
    } else {
     s0+=10.0;
     s1+=1720.0;
    }
   }
  }
 }
} else {
 if(i21<0.001430511474609375){
  if(i35<0.01074063591659069){
   if(i45<1.1005322933197021){
    if(i47<6.674548785667866e-05){
     s0+=9.0;
    } else {
     s1+=376.0;
    }
   } else {
    if(i42<0.003414732404053211){
     s0+=615.0;
    } else {
     s0+=100.0;
     s1+=48.0;
    }
   }
  } else {
   if(i69<0.0003041001036763191){
    if(i27<0.0014577285619452596){
     s0+=14.0;
     s1+=189.0;
    } else {
     s0+=152.0;
     s1+=36.0;
    }
   } else {
    if(i21<0.00036770105361938477){
     s0+=21.0;
     s1+=278.0;
    } else {
     s0+=6.0;
     s1+=982.0;
    }
   }
  }
 } else {
  if(i5<0.039047449827194214){
   if(i22<1.001098871231079){
    if(i33<0.0033808136358857155){
     s1+=37.0;
    } else {
     s0+=22.0;
    }
   } else {
    s1+=285.0;
   }
  } else {
   if(i47<6.18499907432124e-05){
    s0+=4.0;
   } else {
    if(i5<0.04618576169013977){
     s0+=2.0;
     s1+=132.0;
    } else {
     s1+=8053.0;
    }
   }
  }
 }
}
if(i14<1.0040068626403809){
 if(i35<0.05240020155906677){
  if(i5<0.07131022214889526){
   if(i18<0.01706589199602604){
    if(i53<-0.00011722699855454266){
     s0+=71.0;
     s1+=115.0;
    } else {
     s0+=58846.0;
     s1+=866.0;
    }
   } else {
    if(i38<0.0038681086152791977){
     s0+=3352.0;
     s1+=1577.0;
    } else {
     s0+=5737.0;
     s1+=198.0;
    }
   }
  } else {
   if(i2<0.11263072490692139){
    if(i30<0.0022481074556708336){
     s0+=525.0;
     s1+=489.0;
    } else {
     s0+=694.0;
     s1+=151.0;
    }
   } else {
    if(i51<0.0921899676322937){
     s0+=72.0;
     s1+=1609.0;
    } else {
     s0+=617.0;
     s1+=533.0;
    }
   }
  }
 } else {
  if(i30<0.008499030023813248){
   if(i17<5.602836608886719e-06){
    if(i24<1.0999085903167725){
     s0+=378.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=78.0;
   }
  } else {
   if(i4<-0.0016106665134429932){
    s0+=93.0;
   } else {
    if(i52<-0.04490917921066284){
     s0+=11.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=1574.0;
    }
   }
  }
 }
} else {
 if(i27<0.00018949067452922463){
  if(i5<0.058772772550582886){
   if(i0<0.08314302563667297){
    if(i26<1.0083887577056885){
     s0+=357.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i12<0.0002142786979675293){
   if(i16<0.0026542998384684324){
    if(i42<0.001113276113756001){
     s1+=92.0;
    } else {
     s0+=247.0;
     s1+=25.0;
    }
   } else {
    if(i4<-0.00010833144187927246){
     s0+=74.0;
     s1+=6.0;
    } else {
     s0+=37.0;
     s1+=1759.0;
    }
   }
  } else {
   if(i16<0.0013627300504595041){
    if(i11<1.0109511613845825){
     s0+=2.0;
    } else {
     s1+=104.0;
    }
   } else {
    s1+=7936.0;
   }
  }
 }
}
if(i22<1.0025520324707031){
 if(i11<1.0046993494033813){
  if(i27<0.00031641291570849717){
   if(i44<1.0158846378326416){
    if(i24<1.0451585054397583){
     s0+=48063.0;
     s1+=70.0;
    } else {
     s0+=5190.0;
     s1+=235.0;
    }
   } else {
    if(i8<9.119510650634766e-06){
     s0+=20.0;
     s1+=18.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i14<0.9942117929458618){
    if(i7<1.1154594421386719){
     s0+=8063.0;
     s1+=214.0;
    } else {
     s0+=669.0;
     s1+=384.0;
    }
   } else {
    if(i0<0.0690881609916687){
     s0+=5310.0;
     s1+=1081.0;
    } else {
     s0+=1020.0;
     s1+=2104.0;
    }
   }
  }
 } else {
  if(i6<-3.880578151438385e-05){
   if(i17<-1.1563301086425781e-05){
    s0+=37.0;
   } else {
    if(i0<0.07800298929214478){
     s0+=84.0;
     s1+=232.0;
    } else {
     s0+=26.0;
     s1+=1830.0;
    }
   }
  } else {
   if(i47<0.0010220380499958992){
    if(i41<1.1172288656234741){
     s0+=39.0;
     s1+=68.0;
    } else {
     s0+=782.0;
     s1+=26.0;
    }
   } else {
    if(i50<0.00022554397583007812){
     s0+=17.0;
     s1+=135.0;
    } else {
     s0+=43.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i8<3.331899642944336e-05){
  if(i32<-0.0001731446827761829){
   if(i47<0.0007589368033222854){
    if(i12<-4.744529724121094e-05){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=57.0;
    }
   } else {
    if(i51<0.033735454082489014){
     s0+=93.0;
     s1+=102.0;
    } else {
     s0+=25.0;
     s1+=283.0;
    }
   }
  } else {
   if(i47<0.0022797505371272564){
    if(i0<0.06348013877868652){
     s0+=346.0;
     s1+=31.0;
    } else {
     s0+=64.0;
     s1+=96.0;
    }
   } else {
    if(i0<0.0940866470336914){
     s0+=693.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i1<0.05434945225715637){
   if(i34<1.2392117977142334){
    s1+=310.0;
   } else {
    if(i73<-7.290854682651116e-06){
     s0+=46.0;
     s1+=150.0;
    } else {
     s0+=137.0;
     s1+=23.0;
    }
   }
  } else {
   if(i3<1.0040178298950195){
    if(i0<0.1253136396408081){
     s0+=101.0;
     s1+=322.0;
    } else {
     s0+=15.0;
     s1+=748.0;
    }
   } else {
    if(i2<0.07237464189529419){
     s0+=6.0;
     s1+=112.0;
    } else {
     s0+=10.0;
     s1+=8605.0;
    }
   }
  }
 }
}
if(i3<1.0024573802947998){
 if(i0<0.08223742246627808){
  if(i62<0.0015180862974375486){
   if(i19<1.0066807270050049){
    if(i74<0.03384711220860481){
     s0+=53978.0;
     s1+=200.0;
    } else {
     s0+=6643.0;
     s1+=480.0;
    }
   } else {
    if(i37<0.000733625260181725){
     s0+=719.0;
     s1+=277.0;
    } else {
     s0+=1109.0;
     s1+=35.0;
    }
   }
  } else {
   if(i38<0.0021423969883471727){
    if(i63<3.0540275474777445e-05){
     s0+=1374.0;
     s1+=189.0;
    } else {
     s0+=758.0;
     s1+=576.0;
    }
   } else {
    if(i32<-0.0007503581000491977){
     s0+=82.0;
     s1+=53.0;
    } else {
     s0+=4409.0;
     s1+=265.0;
    }
   }
  }
 } else {
  if(i15<0.9985270500183105){
   if(i42<0.008800484240055084){
    if(i3<0.997001588344574){
     s0+=429.0;
    } else {
     s0+=30.0;
     s1+=3.0;
    }
   } else {
    if(i15<0.9978988170623779){
     s0+=10.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i72<0.025624394416809082){
    if(i54<0.017374098300933838){
     s0+=48.0;
     s1+=2016.0;
    } else {
     s0+=185.0;
     s1+=505.0;
    }
   } else {
    if(i6<-1.710854485281743e-05){
     s0+=378.0;
     s1+=1016.0;
    } else {
     s0+=553.0;
     s1+=200.0;
    }
   }
  }
 }
} else {
 if(i27<0.00018860999261960387){
  if(i34<1.1386182308197021){
   if(i54<4.124641418457031e-05){
    s1+=18.0;
   } else {
    s0+=7.0;
   }
  } else {
   if(i2<0.08314302563667297){
    s0+=76.0;
   } else {
    s1+=1.0;
   }
  }
 } else {
  if(i16<0.0022863384801894426){
   if(i21<0.001925826072692871){
    if(i30<0.0002920327242463827){
     s0+=4.0;
     s1+=22.0;
    } else {
     s0+=131.0;
     s1+=2.0;
    }
   } else {
    s1+=180.0;
   }
  } else {
   if(i0<0.06050592660903931){
    if(i59<0.0008997619152069092){
     s0+=41.0;
     s1+=435.0;
    } else {
     s0+=34.0;
     s1+=3.0;
    }
   } else {
    if(i1<0.1316651701927185){
     s0+=72.0;
     s1+=1807.0;
    } else {
     s0+=10.0;
     s1+=8874.0;
    }
   }
  }
 }
}
if(i21<0.000807344913482666){
 if(i3<1.002378225326538){
  if(i58<0.04807935655117035){
   if(i24<1.0572319030761719){
    if(i67<0.011174803599715233){
     s0+=53302.0;
     s1+=300.0;
    } else {
     s0+=36.0;
     s1+=25.0;
    }
   } else {
    if(i6<-3.253320755902678e-05){
     s0+=371.0;
     s1+=367.0;
    } else {
     s0+=3499.0;
     s1+=434.0;
    }
   }
  } else {
   if(i1<0.08135956525802612){
    if(i23<0.9744479060173035){
     s0+=5263.0;
     s1+=104.0;
    } else {
     s0+=6685.0;
     s1+=1249.0;
    }
   } else {
    if(i51<0.058459728956222534){
     s0+=79.0;
     s1+=1458.0;
    } else {
     s0+=1180.0;
     s1+=1271.0;
    }
   }
  }
 } else {
  if(i37<0.0003460972220636904){
   s0+=34.0;
  } else {
   if(i0<0.11744087934494019){
    if(i59<0.003446817398071289){
     s0+=90.0;
     s1+=640.0;
    } else {
     s0+=70.0;
     s1+=4.0;
    }
   } else {
    if(i22<0.996468186378479){
     s0+=9.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=1352.0;
    }
   }
  }
 }
} else {
 if(i39<0.00017705984646454453){
  if(i73<-5.045103534939699e-06){
   s1+=48.0;
  } else {
   if(i37<0.0007951235165819526){
    s1+=9.0;
   } else {
    if(i38<0.009769214317202568){
     s0+=320.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i4<3.978610038757324e-05){
   if(i1<0.17658290266990662){
    s0+=86.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i8<5.97834587097168e-05){
    if(i2<0.0705956220626831){
     s0+=115.0;
     s1+=102.0;
    } else {
     s0+=70.0;
     s1+=1061.0;
    }
   } else {
    if(i56<-1.4339853805722669e-05){
     s1+=8574.0;
    } else {
     s0+=3.0;
     s1+=29.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i0<0.08350890874862671){
  if(i4<0.0006608664989471436){
   if(i7<1.0410068035125732){
    if(i30<0.00028211803874000907){
     s0+=44208.0;
     s1+=44.0;
    } else {
     s0+=15473.0;
     s1+=554.0;
    }
   } else {
    if(i76<0.9863215088844299){
     s0+=948.0;
     s1+=375.0;
    } else {
     s0+=4340.0;
     s1+=397.0;
    }
   }
  } else {
   if(i73<-5.148723630554741e-06){
    if(i22<0.9985029697418213){
     s0+=26.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=325.0;
    }
   } else {
    if(i54<-0.006120115518569946){
     s1+=2.0;
    } else {
     s0+=76.0;
    }
   }
  }
 } else {
  if(i71<0.9958223104476929){
   if(i3<1.003562092781067){
    s0+=111.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i30<0.0002403100224910304){
    s0+=13.0;
   } else {
    if(i24<1.045040249824524){
     s0+=42.0;
     s1+=18.0;
    } else {
     s0+=34.0;
     s1+=1031.0;
    }
   }
  }
 }
} else {
 if(i16<0.004640925209969282){
  if(i2<0.07556551694869995){
   if(i8<1.4603137969970703e-05){
    if(i6<-5.269698704069015e-06){
     s0+=1235.0;
     s1+=235.0;
    } else {
     s0+=1794.0;
     s1+=43.0;
    }
   } else {
    if(i34<1.1386182308197021){
     s0+=50.0;
     s1+=202.0;
    } else {
     s0+=351.0;
     s1+=51.0;
    }
   }
  } else {
   if(i63<-1.700175016594585e-05){
    if(i70<0.032361630350351334){
     s0+=3.0;
     s1+=590.0;
    } else {
     s0+=19.0;
     s1+=153.0;
    }
   } else {
    if(i46<0.05378428101539612){
     s0+=63.0;
     s1+=433.0;
    } else {
     s0+=1451.0;
     s1+=769.0;
    }
   }
  }
 } else {
  if(i14<0.9926527738571167){
   if(i17<-1.7315149307250977e-05){
    if(i9<1.0483055114746094){
     s1+=1.0;
    } else {
     s0+=215.0;
    }
   } else {
    if(i7<1.0790610313415527){
     s0+=209.0;
     s1+=23.0;
    } else {
     s0+=7.0;
     s1+=452.0;
    }
   }
  } else {
   if(i15<0.9983449578285217){
    if(i76<1.0618973970413208){
     s0+=70.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i21<-0.0008043646812438965){
     s0+=288.0;
     s1+=930.0;
    } else {
     s0+=34.0;
     s1+=10546.0;
    }
   }
  }
 }
}
if(i0<0.08138632774353027){
 if(i8<3.725290298461914e-05){
  if(i45<1.0556960105895996){
   s0+=42747.0;
  } else {
   if(i33<0.0010401868494227529){
    if(i15<1.0006104707717896){
     s0+=5862.0;
     s1+=1122.0;
    } else {
     s0+=69.0;
     s1+=376.0;
    }
   } else {
    if(i49<-0.03500792384147644){
     s0+=1186.0;
     s1+=249.0;
    } else {
     s0+=18896.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i33<0.00039277347968891263){
   s0+=325.0;
  } else {
   if(i16<0.0022395234555006027){
    if(i34<1.2392117977142334){
     s1+=35.0;
    } else {
     s0+=160.0;
     s1+=4.0;
    }
   } else {
    if(i45<1.1709270477294922){
     s0+=7.0;
     s1+=637.0;
    } else {
     s0+=169.0;
     s1+=281.0;
    }
   }
  }
 }
} else {
 if(i4<0.00044399499893188477){
  if(i51<0.05780661106109619){
   if(i34<1.0790932178497314){
    s0+=88.0;
   } else {
    if(i50<-0.00013974308967590332){
     s0+=14.0;
     s1+=20.0;
    } else {
     s0+=55.0;
     s1+=1778.0;
    }
   }
  } else {
   if(i37<0.004774256143718958){
    if(i50<-0.00013685226440429688){
     s0+=388.0;
     s1+=4.0;
    } else {
     s0+=826.0;
     s1+=602.0;
    }
   } else {
    if(i5<0.11635726690292358){
     s0+=163.0;
     s1+=62.0;
    } else {
     s0+=31.0;
     s1+=604.0;
    }
   }
  }
 } else {
  if(i23<1.003338098526001){
   if(i18<0.03448214381933212){
    if(i65<0.0013778818538412452){
     s0+=134.0;
     s1+=170.0;
    } else {
     s0+=2.0;
     s1+=201.0;
    }
   } else {
    if(i45<1.1515998840332031){
     s0+=14.0;
     s1+=33.0;
    } else {
     s0+=21.0;
     s1+=1565.0;
    }
   }
  } else {
   if(i23<1.0135568380355835){
    if(i56<-1.3872251656721346e-05){
     s0+=5.0;
     s1+=1206.0;
    } else {
     s0+=23.0;
     s1+=79.0;
    }
   } else {
    if(i18<0.004118002485483885){
     s0+=2.0;
     s1+=93.0;
    } else {
     s1+=7664.0;
    }
   }
  }
 }
}
if(i8<3.7610530853271484e-05){
 if(i0<0.08562269806861877){
  if(i24<1.0451585054397583){
   if(i52<-0.002238035202026367){
    if(i70<0.03035452403128147){
     s0+=658.0;
     s1+=114.0;
    } else {
     s0+=942.0;
     s1+=16.0;
    }
   } else {
    if(i37<0.00033254752634093165){
     s0+=32941.0;
    } else {
     s0+=19301.0;
     s1+=99.0;
    }
   }
  } else {
   if(i67<0.006843443959951401){
    if(i41<1.103413462638855){
     s0+=3508.0;
     s1+=942.0;
    } else {
     s0+=8752.0;
     s1+=142.0;
    }
   } else {
    if(i43<1.1037919521331787){
     s0+=483.0;
     s1+=512.0;
    } else {
     s0+=2433.0;
     s1+=377.0;
    }
   }
  }
 } else {
  if(i72<0.03674185276031494){
   if(i15<0.9976415634155273){
    s0+=124.0;
   } else {
    if(i66<0.9998615384101868){
     s0+=45.0;
     s1+=1447.0;
    } else {
     s0+=282.0;
     s1+=1140.0;
    }
   }
  } else {
   if(i3<0.9975936412811279){
    if(i37<0.004812789149582386){
     s0+=313.0;
     s1+=21.0;
    } else {
     s0+=23.0;
     s1+=45.0;
    }
   } else {
    if(i74<0.27672499418258667){
     s0+=539.0;
     s1+=494.0;
    } else {
     s0+=4.0;
     s1+=157.0;
    }
   }
  }
 }
} else {
 if(i37<0.0005190003430470824){
  if(i14<1.0039403438568115){
   s0+=299.0;
  } else {
   s1+=9.0;
  }
 } else {
  if(i4<0.0009405612945556641){
   if(i5<0.12957242131233215){
    if(i52<0.006088197231292725){
     s0+=233.0;
     s1+=724.0;
    } else {
     s0+=71.0;
     s1+=18.0;
    }
   } else {
    if(i41<1.22279691696167){
     s0+=9.0;
     s1+=109.0;
    } else {
     s0+=2.0;
     s1+=725.0;
    }
   }
  } else {
   if(i4<0.0014882087707519531){
    if(i0<0.014871776103973389){
     s0+=14.0;
     s1+=18.0;
    } else {
     s0+=59.0;
     s1+=1944.0;
    }
   } else {
    if(i23<0.9948617219924927){
     s0+=12.0;
     s1+=548.0;
    } else {
     s1+=7604.0;
    }
   }
  }
 }
}
if(i8<3.641843795776367e-05){
 if(i0<0.08225274085998535){
  if(i67<0.007525182794779539){
   if(i70<0.009573128074407578){
    if(i52<-0.0045251548290252686){
     s0+=73.0;
     s1+=58.0;
    } else {
     s0+=44660.0;
     s1+=151.0;
    }
   } else {
    if(i14<0.9948952198028564){
     s0+=14604.0;
     s1+=88.0;
    } else {
     s0+=6119.0;
     s1+=977.0;
    }
   }
  } else {
   if(i6<-3.999941691290587e-05){
    if(i1<0.022981643676757812){
     s0+=296.0;
     s1+=34.0;
    } else {
     s0+=58.0;
     s1+=262.0;
    }
   } else {
    if(i43<1.0991880893707275){
     s0+=1108.0;
     s1+=369.0;
    } else {
     s0+=1979.0;
     s1+=111.0;
    }
   }
  }
 } else {
  if(i59<0.0035260915756225586){
   if(i4<-0.000876694917678833){
    if(i16<0.005889225751161575){
     s0+=177.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=30.0;
    }
   } else {
    if(i51<0.0589241087436676){
     s0+=44.0;
     s1+=1712.0;
    } else {
     s0+=211.0;
     s1+=430.0;
    }
   }
  } else {
   if(i38<0.010822607204318047){
    if(i57<-0.022580958902835846){
     s0+=855.0;
     s1+=375.0;
    } else {
     s0+=245.0;
     s1+=384.0;
    }
   } else {
    if(i24<1.0717501640319824){
     s0+=7.0;
     s1+=2.0;
    } else {
     s1+=397.0;
    }
   }
  }
 }
} else {
 if(i42<0.0004908976843580604){
  s0+=332.0;
 } else {
  if(i30<0.00019311215146444738){
   s0+=27.0;
  } else {
   if(i2<0.07043230533599854){
    if(i43<1.25206458568573){
     s0+=1.0;
     s1+=324.0;
    } else {
     s0+=226.0;
     s1+=233.0;
    }
   } else {
    if(i6<-7.07379003870301e-05){
     s0+=72.0;
     s1+=10329.0;
    } else {
     s0+=113.0;
     s1+=774.0;
    }
   }
  }
 }
}
if(i14<1.0041193962097168){
 if(i46<0.06653809547424316){
  if(i0<0.08223840594291687){
   if(i7<1.0434019565582275){
    if(i62<0.0017036328790709376){
     s0+=57513.0;
     s1+=376.0;
    } else {
     s0+=3157.0;
     s1+=367.0;
    }
   } else {
    if(i43<1.1034480333328247){
     s0+=2141.0;
     s1+=956.0;
    } else {
     s0+=5721.0;
     s1+=530.0;
    }
   }
  } else {
   if(i31<0.9992917776107788){
    if(i73<-3.069745389439049e-06){
     s0+=6.0;
     s1+=5.0;
    } else {
     s0+=85.0;
    }
   } else {
    if(i0<0.08915787935256958){
     s0+=71.0;
     s1+=261.0;
    } else {
     s0+=8.0;
     s1+=1623.0;
    }
   }
  }
 } else {
  if(i35<0.04032256454229355){
   if(i1<0.09495621919631958){
    if(i48<0.0035859346389770508){
     s0+=358.0;
     s1+=113.0;
    } else {
     s0+=451.0;
     s1+=9.0;
    }
   } else {
    if(i72<0.04637014865875244){
     s0+=307.0;
     s1+=1206.0;
    } else {
     s0+=622.0;
     s1+=244.0;
    }
   }
  } else {
   if(i4<-0.0015514492988586426){
    if(i1<0.2819158732891083){
     s0+=12.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i21<-0.005308747291564941){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=1545.0;
    }
   }
  }
 }
} else {
 if(i3<1.002792239189148){
  if(i0<0.0633726418018341){
   if(i63<-2.1385416403063573e-05){
    s1+=8.0;
   } else {
    if(i37<0.0005569743807427585){
     s0+=13.0;
     s1+=20.0;
    } else {
     s0+=478.0;
     s1+=8.0;
    }
   }
  } else {
   if(i8<-1.1265277862548828e-05){
    if(i35<0.022169524803757668){
     s0+=16.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i55<0.0011138916015625){
     s0+=39.0;
     s1+=256.0;
    } else {
     s1+=267.0;
    }
   }
  }
 } else {
  if(i39<0.00011875491327373311){
   if(i41<1.217149257659912){
    s1+=5.0;
   } else {
    s0+=25.0;
   }
  } else {
   if(i27<0.0001443778455723077){
    if(i60<2.2436431663663825e-06){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i21<0.001430511474609375){
     s0+=100.0;
     s1+=1454.0;
    } else {
     s0+=2.0;
     s1+=7842.0;
    }
   }
  }
 }
}
if(i6<-8.167904161382467e-05){
 if(i9<1.0326414108276367){
  if(i15<1.002241849899292){
   if(i35<0.04757490009069443){
    if(i1<0.24145954847335815){
     s0+=507.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i64<-0.021526843309402466){
     s0+=12.0;
     s1+=1.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i1<0.01696544885635376){
    if(i7<1.0618994235992432){
     s0+=43.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i12<-0.0005260109901428223){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=142.0;
    }
   }
  }
 } else {
  if(i12<-0.00035959482192993164){
   if(i75<0.0002166774356737733){
    if(i7<1.0979366302490234){
     s0+=136.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i37<0.007313299458473921){
     s0+=3.0;
    } else {
     s1+=115.0;
    }
   }
  } else {
   if(i1<0.04015496373176575){
    if(i35<0.02115776017308235){
     s0+=43.0;
     s1+=35.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   } else {
    if(i37<0.00041189801413565874){
     s0+=6.0;
    } else {
     s0+=80.0;
     s1+=10399.0;
    }
   }
  }
 }
} else {
 if(i1<0.07886061072349548){
  if(i24<1.0486011505126953){
   if(i16<0.003928814083337784){
    if(i30<0.0003139008767902851){
     s0+=42344.0;
     s1+=24.0;
    } else {
     s0+=8193.0;
     s1+=210.0;
    }
   } else {
    if(i4<0.0005526840686798096){
     s0+=5025.0;
     s1+=125.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i1<0.061812758445739746){
    if(i15<1.0018171072006226){
     s0+=11489.0;
     s1+=1143.0;
    } else {
     s0+=292.0;
     s1+=366.0;
    }
   } else {
    if(i3<1.0018973350524902){
     s0+=1195.0;
     s1+=526.0;
    } else {
     s0+=55.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i17<-1.475214958190918e-05){
   if(i53<0.0010900103952735662){
    if(i15<0.9988789558410645){
     s0+=441.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i18<0.022065088152885437){
    if(i11<1.004560947418213){
     s0+=775.0;
     s1+=545.0;
    } else {
     s0+=119.0;
     s1+=678.0;
    }
   } else {
    if(i40<0.049162447452545166){
     s0+=39.0;
     s1+=1525.0;
    } else {
     s0+=358.0;
     s1+=805.0;
    }
   }
  }
 }
}
if(i3<1.0023856163024902){
 if(i74<0.025478476658463478){
  if(i6<-3.660129732452333e-05){
   if(i35<0.007339068688452244){
    if(i11<1.0044939517974854){
     s0+=708.0;
     s1+=12.0;
    } else {
     s0+=18.0;
     s1+=87.0;
    }
   } else {
    if(i13<1.0058891773223877){
     s0+=226.0;
     s1+=80.0;
    } else {
     s0+=18.0;
     s1+=433.0;
    }
   }
  } else {
   if(i55<-0.001292109489440918){
    if(i63<2.3408225388266146e-05){
     s0+=31.0;
     s1+=2.0;
    } else {
     s0+=48.0;
     s1+=165.0;
    }
   } else {
    if(i28<1.0411068201065063){
     s0+=52833.0;
     s1+=278.0;
    } else {
     s0+=843.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i6<-5.690693069482222e-05){
   if(i2<0.09467697143554688){
    if(i23<0.9857637882232666){
     s0+=1231.0;
     s1+=104.0;
    } else {
     s0+=88.0;
     s1+=124.0;
    }
   } else {
    if(i7<1.119666337966919){
     s0+=75.0;
     s1+=349.0;
    } else {
     s1+=951.0;
    }
   }
  } else {
   if(i8<-4.762411117553711e-05){
    if(i5<0.08170393109321594){
     s0+=7111.0;
     s1+=104.0;
    } else {
     s0+=268.0;
     s1+=116.0;
    }
   } else {
    if(i2<0.08242237567901611){
     s0+=6331.0;
     s1+=1160.0;
    } else {
     s0+=994.0;
     s1+=1661.0;
    }
   }
  }
 }
} else {
 if(i16<0.0018958600703626871){
  if(i8<6.490945816040039e-05){
   if(i18<0.001946344505995512){
    if(i7<1.0414466857910156){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i42<0.0008393696043640375){
     s0+=42.0;
     s1+=14.0;
    } else {
     s0+=219.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=86.0;
  }
 } else {
  if(i12<1.1622905731201172e-05){
   if(i5<0.12217521667480469){
    if(i59<0.0017943978309631348){
     s0+=56.0;
     s1+=409.0;
    } else {
     s0+=95.0;
     s1+=70.0;
    }
   } else {
    if(i22<0.9963580369949341){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=663.0;
    }
   }
  } else {
   if(i56<-1.0155606105399784e-05){
    if(i3<1.0033869743347168){
     s0+=16.0;
     s1+=513.0;
    } else {
     s0+=2.0;
     s1+=9388.0;
    }
   } else {
    if(i10<0.00026533007621765137){
     s1+=40.0;
    } else {
     s0+=29.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i1<0.07751694321632385){
 if(i4<0.0006017386913299561){
  if(i39<0.0002956319658551365){
   if(i0<0.07996290922164917){
    if(i3<1.002470850944519){
     s0+=56195.0;
     s1+=487.0;
    } else {
     s0+=38.0;
     s1+=43.0;
    }
   } else {
    if(i16<0.0035811341367661953){
     s0+=34.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=65.0;
    }
   }
  } else {
   if(i38<0.001696474850177765){
    if(i33<0.00048384739784523845){
     s0+=2536.0;
     s1+=99.0;
    } else {
     s0+=1446.0;
     s1+=1083.0;
    }
   } else {
    if(i62<0.006593354512006044){
     s0+=7011.0;
     s1+=111.0;
    } else {
     s0+=1500.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i50<0.000152587890625){
   if(i16<0.0036581805907189846){
    if(i56<-1.4807534171268344e-05){
     s1+=9.0;
    } else {
     s0+=143.0;
     s1+=2.0;
    }
   } else {
    if(i66<0.997670590877533){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=63.0;
    }
   }
  } else {
   if(i24<1.0407118797302246){
    s0+=35.0;
   } else {
    if(i45<1.1353518962860107){
     s0+=1.0;
     s1+=723.0;
    } else {
     s0+=140.0;
     s1+=312.0;
    }
   }
  }
 }
} else {
 if(i73<1.661585883994121e-06){
  if(i16<0.0016681974520906806){
   if(i6<-1.3806367860524915e-05){
    if(i34<1.2604451179504395){
     s0+=35.0;
     s1+=250.0;
    } else {
     s0+=158.0;
     s1+=30.0;
    }
   } else {
    if(i18<0.03411956503987312){
     s0+=509.0;
     s1+=28.0;
    } else {
     s0+=47.0;
     s1+=30.0;
    }
   }
  } else {
   if(i16<0.004172209650278091){
    if(i4<-0.0007576048374176025){
     s0+=130.0;
     s1+=20.0;
    } else {
     s0+=469.0;
     s1+=1728.0;
    }
   } else {
    if(i14<0.9934288859367371){
     s0+=133.0;
     s1+=590.0;
    } else {
     s0+=154.0;
     s1+=11372.0;
    }
   }
  }
 } else {
  s0+=255.0;
 }
}
if(i7<1.055552363395691){
 if(i5<0.07367575168609619){
  if(i2<0.08003091812133789){
   if(i62<0.001506769796833396){
    if(i23<1.0079270601272583){
     s0+=59152.0;
     s1+=521.0;
    } else {
     s0+=226.0;
     s1+=110.0;
    }
   } else {
    if(i33<0.001058667665347457){
     s0+=1307.0;
     s1+=536.0;
    } else {
     s0+=3098.0;
     s1+=108.0;
    }
   }
  } else {
   if(i50<-2.9802322387695312e-05){
    if(i75<4.7965848352760077e-05){
     s1+=10.0;
    } else {
     s0+=365.0;
     s1+=11.0;
    }
   } else {
    if(i59<0.001626431941986084){
     s0+=27.0;
     s1+=325.0;
    } else {
     s0+=121.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i0<0.0925416648387909){
   if(i21<-0.0018322467803955078){
    s0+=115.0;
   } else {
    if(i72<0.02909022569656372){
     s0+=13.0;
     s1+=87.0;
    } else {
     s0+=177.0;
     s1+=42.0;
    }
   }
  } else {
   if(i4<-0.0008701086044311523){
    if(i42<0.008514813147485256){
     s0+=29.0;
     s1+=2.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i45<1.057462215423584){
     s0+=11.0;
    } else {
     s0+=12.0;
     s1+=454.0;
    }
   }
  }
 }
} else {
 if(i47<0.0016787960194051266){
  if(i61<0.9995901584625244){
   if(i15<0.9992355108261108){
    if(i73<-3.1808099265617784e-06){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=852.0;
    }
   } else {
    if(i38<0.0008749705739319324){
     s0+=70.0;
     s1+=12.0;
    } else {
     s1+=35.0;
    }
   }
  } else {
   if(i4<0.000528484582901001){
    if(i6<-2.8431528335204348e-05){
     s0+=510.0;
     s1+=889.0;
    } else {
     s0+=3374.0;
     s1+=864.0;
    }
   } else {
    if(i33<0.006520920433104038){
     s0+=163.0;
     s1+=903.0;
    } else {
     s0+=23.0;
     s1+=1403.0;
    }
   }
  }
 } else {
  if(i32<-0.00023799088376108557){
   if(i60<4.137561336392537e-05){
    if(i75<0.00034718160168267787){
     s0+=139.0;
     s1+=8945.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i9<1.0822045803070068){
     s0+=145.0;
     s1+=14.0;
    } else {
     s1+=152.0;
    }
   }
  } else {
   if(i0<0.08517253398895264){
    if(i60<1.5967412991813035e-06){
     s0+=13.0;
     s1+=278.0;
    } else {
     s0+=1041.0;
     s1+=229.0;
    }
   } else {
    if(i56<-8.239440830948297e-06){
     s0+=136.0;
     s1+=983.0;
    } else {
     s0+=48.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i2<0.08337682485580444){
 if(i54<-0.006634652614593506){
  if(i2<0.03169548511505127){
   if(i14<1.004894733428955){
    if(i4<0.00023573637008666992){
     s0+=2772.0;
     s1+=256.0;
    } else {
     s0+=59.0;
     s1+=77.0;
    }
   } else {
    if(i56<-1.4715877114213072e-05){
     s0+=5.0;
     s1+=60.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   if(i73<-4.712033387477277e-06){
    if(i4<0.0002320408821105957){
     s0+=63.0;
     s1+=52.0;
    } else {
     s0+=16.0;
     s1+=478.0;
    }
   } else {
    if(i43<1.1820628643035889){
     s0+=200.0;
     s1+=315.0;
    } else {
     s0+=387.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i11<1.0044114589691162){
   if(i27<0.00029170140624046326){
    if(i53<0.0002718777395784855){
     s0+=51266.0;
     s1+=106.0;
    } else {
     s0+=1201.0;
     s1+=116.0;
    }
   } else {
    if(i38<0.002201201394200325){
     s0+=4567.0;
     s1+=980.0;
    } else {
     s0+=7628.0;
     s1+=75.0;
    }
   }
  } else {
   if(i43<1.1628741025924683){
    if(i4<0.00016480684280395508){
     s0+=45.0;
     s1+=19.0;
    } else {
     s0+=4.0;
     s1+=400.0;
    }
   } else {
    if(i3<1.0041494369506836){
     s0+=857.0;
     s1+=16.0;
    } else {
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i50<-0.0001392960548400879){
  if(i34<1.5944836139678955){
   if(i37<0.0017404931131750345){
    s0+=649.0;
   } else {
    if(i10<-0.0004360675811767578){
     s0+=51.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i2<0.14267751574516296){
    s0+=9.0;
   } else {
    s1+=96.0;
   }
  }
 } else {
  if(i8<3.36766242980957e-05){
   if(i16<0.0017323328647762537){
    if(i9<1.0609493255615234){
     s0+=110.0;
     s1+=145.0;
    } else {
     s0+=459.0;
     s1+=74.0;
    }
   } else {
    if(i48<0.0045539140701293945){
     s0+=141.0;
     s1+=2094.0;
    } else {
     s0+=478.0;
     s1+=905.0;
    }
   }
  } else {
   if(i6<-7.051671127555892e-05){
    if(i11<1.0073617696762085){
     s0+=56.0;
     s1+=1705.0;
    } else {
     s1+=8336.0;
    }
   } else {
    if(i68<-0.005009979009628296){
     s0+=89.0;
     s1+=197.0;
    } else {
     s0+=12.0;
     s1+=500.0;
    }
   }
  }
 }
}
if(i6<-7.877762982388958e-05){
 if(i21<-0.0036277472972869873){
  if(i75<0.0002760041388683021){
   if(i69<0.0019444378558546305){
    if(i32<-0.0005625475314445794){
     s1+=1.0;
    } else {
     s0+=459.0;
     s1+=6.0;
    }
   } else {
    if(i43<1.580256700515747){
     s0+=4.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   s1+=20.0;
  }
 } else {
  if(i11<0.996880829334259){
   if(i18<0.028286729007959366){
    if(i13<0.9818927049636841){
     s0+=12.0;
     s1+=64.0;
    } else {
     s0+=271.0;
     s1+=27.0;
    }
   } else {
    if(i70<0.09149409830570221){
     s0+=86.0;
     s1+=167.0;
    } else {
     s0+=2.0;
     s1+=814.0;
    }
   }
  } else {
   if(i21<3.904104232788086e-05){
    if(i69<0.0005538525292649865){
     s0+=50.0;
     s1+=33.0;
    } else {
     s0+=3.0;
     s1+=525.0;
    }
   } else {
    s1+=9383.0;
   }
  }
 }
} else {
 if(i0<0.08202600479125977){
  if(i4<0.0005853474140167236){
   if(i27<0.00028163305250927806){
    if(i21<0.0005796551704406738){
     s0+=51467.0;
     s1+=171.0;
    } else {
     s0+=923.0;
     s1+=77.0;
    }
   } else {
    if(i43<1.1034480333328247){
     s0+=3984.0;
     s1+=1350.0;
    } else {
     s0+=11840.0;
     s1+=461.0;
    }
   }
  } else {
   if(i45<1.0533727407455444){
    s0+=110.0;
   } else {
    if(i37<0.001545920385979116){
     s1+=366.0;
    } else {
     s0+=158.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i17<-1.5437602996826172e-05){
   if(i42<0.0084113460034132){
    if(i69<8.04574228823185e-05){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=412.0;
    }
   } else {
    if(i13<0.9886659383773804){
     s1+=16.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i40<0.05028095841407776){
    if(i4<-0.0009722113609313965){
     s0+=16.0;
     s1+=25.0;
    } else {
     s0+=126.0;
     s1+=2523.0;
    }
   } else {
    if(i8<5.745887756347656e-05){
     s0+=1075.0;
     s1+=883.0;
    } else {
     s0+=2.0;
     s1+=194.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i4<0.0005662143230438232){
  if(i27<0.00031646789284422994){
   if(i6<-3.8973750633886084e-05){
    if(i15<1.0000889301300049){
     s0+=516.0;
     s1+=13.0;
    } else {
     s0+=44.0;
     s1+=68.0;
    }
   } else {
    if(i76<1.0179336071014404){
     s0+=53324.0;
     s1+=259.0;
    } else {
     s0+=19.0;
     s1+=11.0;
    }
   }
  } else {
   if(i32<-4.4873286242363974e-05){
    if(i0<0.07572156190872192){
     s0+=5025.0;
     s1+=732.0;
    } else {
     s0+=756.0;
     s1+=1712.0;
    }
   } else {
    if(i68<-0.0025159306824207306){
     s0+=5913.0;
     s1+=128.0;
    } else {
     s0+=3852.0;
     s1+=753.0;
    }
   }
  }
 } else {
  if(i42<0.00039995391853153706){
   s0+=110.0;
  } else {
   if(i8<7.051229476928711e-05){
    if(i21<-0.00067138671875){
     s0+=128.0;
     s1+=266.0;
    } else {
     s0+=20.0;
     s1+=443.0;
    }
   } else {
    if(i7<1.1223218441009521){
     s0+=51.0;
     s1+=647.0;
    } else {
     s1+=982.0;
    }
   }
  }
 }
} else {
 if(i3<1.0022368431091309){
  if(i0<0.08275490999221802){
   if(i7<1.0726792812347412){
    if(i43<1.1063789129257202){
     s0+=9.0;
     s1+=131.0;
    } else {
     s0+=114.0;
     s1+=10.0;
    }
   } else {
    if(i56<-2.812173988786526e-05){
     s1+=7.0;
    } else {
     s0+=664.0;
     s1+=46.0;
    }
   }
  } else {
   if(i73<1.1099932635261212e-06){
    if(i10<0.00011348724365234375){
     s0+=27.0;
     s1+=900.0;
    } else {
     s0+=284.0;
     s1+=662.0;
    }
   } else {
    s0+=71.0;
   }
  }
 } else {
  if(i0<0.059514135122299194){
   if(i14<1.0050307512283325){
    if(i33<0.0024797781370580196){
     s0+=4.0;
     s1+=24.0;
    } else {
     s0+=117.0;
     s1+=6.0;
    }
   } else {
    if(i10<0.0004885196685791016){
     s0+=18.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=167.0;
    }
   }
  } else {
   if(i32<-0.0005780617939308286){
    if(i1<0.057854294776916504){
     s0+=4.0;
     s1+=3.0;
    } else {
     s1+=6366.0;
    }
   } else {
    if(i23<1.009788990020752){
     s0+=68.0;
     s1+=613.0;
    } else {
     s0+=19.0;
     s1+=2125.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i9<1.0433766841888428){
  if(i0<0.08023786544799805){
   if(i54<-0.006163239479064941){
    if(i41<1.181183099746704){
     s0+=1002.0;
     s1+=451.0;
    } else {
     s0+=1779.0;
     s1+=82.0;
    }
   } else {
    if(i36<0.026345448568463326){
     s0+=54123.0;
     s1+=267.0;
    } else {
     s0+=7206.0;
     s1+=425.0;
    }
   }
  } else {
   if(i24<1.0494745969772339){
    if(i34<1.0762357711791992){
     s0+=88.0;
    } else {
     s0+=92.0;
     s1+=34.0;
    }
   } else {
    if(i10<-0.0005804300308227539){
     s0+=16.0;
    } else {
     s0+=29.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i0<0.08242163062095642){
   if(i2<0.06404322385787964){
    if(i41<1.1037919521331787){
     s0+=1112.0;
     s1+=305.0;
    } else {
     s0+=2654.0;
     s1+=139.0;
    }
   } else {
    if(i51<0.03356599807739258){
     s0+=74.0;
     s1+=249.0;
    } else {
     s0+=1047.0;
     s1+=132.0;
    }
   }
  } else {
   if(i56<2.9251777959871106e-06){
    if(i35<0.02375602163374424){
     s0+=907.0;
     s1+=1402.0;
    } else {
     s0+=141.0;
     s1+=1518.0;
    }
   } else {
    if(i61<1.000077486038208){
     s0+=286.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i4<0.0009334683418273926){
  if(i16<0.002151013817638159){
   if(i35<0.012060107663273811){
    if(i63<8.050330507103354e-06){
     s0+=314.0;
    } else {
     s1+=13.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i34<1.0710620880126953){
    s0+=41.0;
   } else {
    if(i10<0.0007280111312866211){
     s0+=28.0;
     s1+=1152.0;
    } else {
     s0+=128.0;
     s1+=365.0;
    }
   }
  }
 } else {
  if(i3<1.0040669441223145){
   if(i7<1.122573733329773){
    if(i1<0.10997745394706726){
     s0+=60.0;
     s1+=49.0;
    } else {
     s0+=3.0;
     s1+=117.0;
    }
   } else {
    s1+=243.0;
   }
  } else {
   if(i34<1.613681674003601){
    if(i27<0.000176901463419199){
     s0+=3.0;
    } else {
     s0+=9.0;
     s1+=8192.0;
    }
   } else {
    if(i69<0.00023333675926551223){
     s0+=25.0;
     s1+=7.0;
    } else {
     s0+=13.0;
     s1+=1403.0;
    }
   }
  }
 }
}
if(i1<0.07910805940628052){
 if(i11<1.0043445825576782){
  if(i48<-0.0015562474727630615){
   if(i68<0.00041710439836606383){
    if(i15<1.0015978813171387){
     s0+=1377.0;
     s1+=465.0;
    } else {
     s0+=65.0;
     s1+=199.0;
    }
   } else {
    if(i17<1.7702579498291016e-05){
     s0+=2104.0;
     s1+=220.0;
    } else {
     s0+=93.0;
     s1+=139.0;
    }
   }
  } else {
   if(i30<0.0003028011415153742){
    if(i53<0.0003157372702844441){
     s0+=46353.0;
     s1+=31.0;
    } else {
     s0+=81.0;
     s1+=26.0;
    }
   } else {
    if(i34<1.100754976272583){
     s0+=4096.0;
     s1+=914.0;
    } else {
     s0+=13934.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i21<0.0014311671257019043){
   if(i4<0.0005161762237548828){
    if(i45<1.0862454175949097){
     s0+=19.0;
     s1+=161.0;
    } else {
     s0+=903.0;
     s1+=43.0;
    }
   } else {
    if(i16<0.0022666952572762966){
     s0+=140.0;
     s1+=15.0;
    } else {
     s0+=14.0;
     s1+=314.0;
    }
   }
  } else {
   if(i8<4.023313522338867e-05){
    if(i15<1.0003633499145508){
     s1+=14.0;
    } else {
     s0+=28.0;
    }
   } else {
    s1+=491.0;
   }
  }
 }
} else {
 if(i40<0.04735064506530762){
  if(i34<1.0762357711791992){
   s0+=63.0;
  } else {
   if(i10<-0.0004451870918273926){
    s0+=17.0;
   } else {
    if(i1<0.09008428454399109){
     s0+=92.0;
     s1+=654.0;
    } else {
     s0+=27.0;
     s1+=7836.0;
    }
   }
  }
 } else {
  if(i0<0.12768682837486267){
   if(i45<1.1037919521331787){
    if(i8<1.0013580322265625e-05){
     s0+=237.0;
     s1+=132.0;
    } else {
     s0+=5.0;
     s1+=160.0;
    }
   } else {
    if(i28<1.0207507610321045){
     s1+=23.0;
    } else {
     s0+=815.0;
     s1+=64.0;
    }
   }
  } else {
   if(i69<0.00044289432116784155){
    if(i73<1.2177392818557564e-06){
     s0+=292.0;
     s1+=967.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i3<0.9965808987617493){
     s0+=50.0;
     s1+=52.0;
    } else {
     s0+=23.0;
     s1+=4069.0;
    }
   }
  }
 }
}
if(i1<0.07871049642562866){
 if(i4<0.0006022751331329346){
  if(i62<0.0014980509877204895){
   if(i25<1.0055946111679077){
    if(i74<0.024835960939526558){
     s0+=52811.0;
     s1+=206.0;
    } else {
     s0+=8396.0;
     s1+=570.0;
    }
   } else {
    if(i0<0.06589308381080627){
     s0+=928.0;
     s1+=98.0;
    } else {
     s0+=201.0;
     s1+=205.0;
    }
   }
  } else {
   if(i14<0.9935956001281738){
    if(i49<-0.03224489092826843){
     s0+=574.0;
     s1+=91.0;
    } else {
     s0+=2640.0;
     s1+=22.0;
    }
   } else {
    if(i37<0.00034981511998921633){
     s0+=1061.0;
    } else {
     s0+=2532.0;
     s1+=963.0;
    }
   }
  }
 } else {
  if(i39<0.00017395430768374354){
   if(i35<0.01064293086528778){
    if(i1<0.06489235162734985){
     s0+=119.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i41<1.2451565265655518){
    if(i22<0.9986668825149536){
     s0+=25.0;
     s1+=3.0;
    } else {
     s0+=31.0;
     s1+=834.0;
    }
   } else {
    if(i48<-0.0029241442680358887){
     s0+=32.0;
     s1+=211.0;
    } else {
     s0+=154.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i50<-0.0002505779266357422){
  if(i24<1.398578405380249){
   if(i73<-2.4194796424126253e-06){
    if(i50<-0.0002637207508087158){
     s0+=26.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=370.0;
   }
  } else {
   s1+=29.0;
  }
 } else {
  if(i0<0.10780218243598938){
   if(i38<0.0021300283260643482){
    if(i37<0.0021022569853812456){
     s0+=181.0;
     s1+=946.0;
    } else {
     s0+=111.0;
     s1+=44.0;
    }
   } else {
    if(i76<0.992605984210968){
     s0+=27.0;
     s1+=309.0;
    } else {
     s0+=522.0;
     s1+=92.0;
    }
   }
  } else {
   if(i47<0.0002983507583849132){
    if(i72<0.061592280864715576){
     s0+=74.0;
     s1+=222.0;
    } else {
     s0+=105.0;
     s1+=12.0;
    }
   } else {
    if(i0<0.13177666068077087){
     s0+=189.0;
     s1+=1106.0;
    } else {
     s0+=155.0;
     s1+=10985.0;
    }
   }
  }
 }
}
if(i3<1.0024571418762207){
 if(i39<0.00031980901258066297){
  if(i52<-0.003156691789627075){
   if(i50<-2.4616718292236328e-05){
    if(i12<-0.00016927719116210938){
     s0+=26.0;
     s1+=3.0;
    } else {
     s0+=127.0;
    }
   } else {
    if(i11<0.997443437576294){
     s0+=6.0;
     s1+=123.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i2<0.08400189876556396){
    if(i13<1.0095598697662354){
     s0+=57105.0;
     s1+=407.0;
    } else {
     s0+=102.0;
     s1+=85.0;
    }
   } else {
    if(i15<0.999313235282898){
     s0+=268.0;
     s1+=11.0;
    } else {
     s0+=27.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i3<0.9980480670928955){
   if(i1<0.08580848574638367){
    if(i14<0.9928405284881592){
     s0+=5535.0;
     s1+=82.0;
    } else {
     s0+=2342.0;
     s1+=280.0;
    }
   } else {
    if(i33<0.005288185551762581){
     s0+=433.0;
     s1+=147.0;
    } else {
     s0+=30.0;
     s1+=317.0;
    }
   }
  } else {
   if(i0<0.08390545845031738){
    if(i63<2.6942891054204665e-05){
     s0+=2635.0;
     s1+=250.0;
    } else {
     s0+=1376.0;
     s1+=889.0;
    }
   } else {
    if(i48<0.004448294639587402){
     s0+=188.0;
     s1+=1979.0;
    } else {
     s0+=665.0;
     s1+=952.0;
    }
   }
  }
 }
} else {
 if(i11<1.010024070739746){
  if(i6<-4.32968299719505e-05){
   if(i0<0.13068589568138123){
    if(i66<1.0018296241760254){
     s0+=71.0;
     s1+=993.0;
    } else {
     s0+=69.0;
     s1+=75.0;
    }
   } else {
    if(i16<0.006179499439895153){
     s0+=6.0;
     s1+=90.0;
    } else {
     s1+=1461.0;
    }
   }
  } else {
   if(i35<0.007787971757352352){
    if(i25<0.9943245649337769){
     s1+=3.0;
    } else {
     s0+=150.0;
     s1+=1.0;
    }
   } else {
    if(i69<0.0004576379433274269){
     s0+=28.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=174.0;
    }
   }
  }
 } else {
  if(i7<1.0468316078186035){
   if(i47<0.0004303481546230614){
    s0+=25.0;
   } else {
    s1+=45.0;
   }
  } else {
   s1+=8300.0;
  }
 }
}
if(i11<1.0057682991027832){
 if(i3<1.0024441480636597){
  if(i18<0.02226199209690094){
   if(i0<0.07568478584289551){
    if(i48<-0.0017445087432861328){
     s0+=2098.0;
     s1+=382.0;
    } else {
     s0+=59694.0;
     s1+=589.0;
    }
   } else {
    if(i49<0.04566776752471924){
     s0+=613.0;
     s1+=568.0;
    } else {
     s0+=801.0;
     s1+=144.0;
    }
   }
  } else {
   if(i4<-0.0005647242069244385){
    if(i46<0.07396534085273743){
     s0+=4884.0;
     s1+=201.0;
    } else {
     s0+=253.0;
     s1+=170.0;
    }
   } else {
    if(i1<0.06283614039421082){
     s0+=1187.0;
     s1+=597.0;
    } else {
     s0+=396.0;
     s1+=2459.0;
    }
   }
  }
 } else {
  if(i47<0.0014424994587898254){
   if(i53<0.00038897228660061955){
    if(i23<1.005251169204712){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=21.0;
    }
   } else {
    if(i56<-3.29371978295967e-05){
     s0+=9.0;
     s1+=4.0;
    } else {
     s1+=188.0;
    }
   }
  } else {
   if(i12<-0.00012087821960449219){
    if(i9<1.0884358882904053){
     s0+=80.0;
     s1+=147.0;
    } else {
     s0+=2.0;
     s1+=272.0;
    }
   } else {
    if(i47<0.001967033836990595){
     s0+=11.0;
     s1+=140.0;
    } else {
     s0+=1.0;
     s1+=1033.0;
    }
   }
  }
 }
} else {
 if(i6<-4.283253656467423e-05){
  if(i0<0.06076401472091675){
   if(i22<1.0015079975128174){
    if(i33<0.00399433821439743){
     s0+=1.0;
     s1+=31.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i52<0.0060738325119018555){
     s1+=215.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i56<-1.5143816654017428e-06){
    if(i23<1.0096099376678467){
     s0+=12.0;
     s1+=905.0;
    } else {
     s0+=6.0;
     s1+=8902.0;
    }
   } else {
    if(i61<0.9996898174285889){
     s0+=9.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i69<0.0004958008648827672){
   if(i38<0.009569477289915085){
    if(i45<1.0862454175949097){
     s1+=50.0;
    } else {
     s0+=812.0;
     s1+=16.0;
    }
   } else {
    if(i18<0.013788953423500061){
     s0+=2.0;
    } else {
     s1+=54.0;
    }
   }
  } else {
   s1+=135.0;
  }
 }
}
if(i1<0.07843470573425293){
 if(i17<1.9252300262451172e-05){
  if(i39<0.0002956319658551365){
   if(i11<1.003794550895691){
    if(i64<-0.0016590356826782227){
     s0+=201.0;
     s1+=126.0;
    } else {
     s0+=54923.0;
     s1+=326.0;
    }
   } else {
    if(i37<0.0007333850953727961){
     s0+=109.0;
     s1+=131.0;
    } else {
     s0+=702.0;
     s1+=2.0;
    }
   }
  } else {
   if(i34<1.100754976272583){
    if(i45<1.067455530166626){
     s0+=2356.0;
     s1+=121.0;
    } else {
     s0+=658.0;
     s1+=916.0;
    }
   } else {
    if(i21<0.0014941096305847168){
     s0+=9008.0;
     s1+=370.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i11<1.0052080154418945){
   if(i26<0.9872706532478333){
    if(i12<-0.0003654062747955322){
     s0+=307.0;
     s1+=60.0;
    } else {
     s0+=68.0;
     s1+=288.0;
    }
   } else {
    if(i16<0.005393423605710268){
     s0+=604.0;
     s1+=13.0;
    } else {
     s0+=256.0;
     s1+=127.0;
    }
   }
  } else {
   if(i71<0.9991790056228638){
    s0+=19.0;
   } else {
    if(i27<0.00021224369993433356){
     s0+=27.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=730.0;
    }
   }
  }
 }
} else {
 if(i17<-1.3887882232666016e-05){
  if(i22<0.9963310956954956){
   if(i10<-0.0004121065139770508){
    if(i66<1.0008341073989868){
     s0+=409.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i22<0.9927024841308594){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i36<0.08588012307882309){
    if(i0<0.12689754366874695){
     s0+=46.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i20<0.9853184223175049){
     s0+=12.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i2<0.12121978402137756){
   if(i32<-7.362361066043377e-05){
    if(i49<0.04643186926841736){
     s0+=240.0;
     s1+=1732.0;
    } else {
     s0+=261.0;
     s1+=77.0;
    }
   } else {
    if(i48<0.0037727952003479004){
     s0+=116.0;
     s1+=296.0;
    } else {
     s0+=279.0;
     s1+=8.0;
    }
   }
  } else {
   if(i47<0.00039558688877150416){
    if(i51<0.0898125171661377){
     s0+=7.0;
     s1+=185.0;
    } else {
     s0+=187.0;
     s1+=65.0;
    }
   } else {
    if(i72<0.054381728172302246){
     s0+=60.0;
     s1+=9837.0;
    } else {
     s0+=184.0;
     s1+=1716.0;
    }
   }
  }
 }
}
if(i12<0.00011557340621948242){
 if(i7<1.0452215671539307){
  if(i24<1.0451585054397583){
   if(i54<-0.006248056888580322){
    if(i6<1.4135732271824963e-05){
     s0+=306.0;
     s1+=62.0;
    } else {
     s0+=428.0;
     s1+=4.0;
    }
   } else {
    if(i8<5.1975250244140625e-05){
     s0+=53169.0;
     s1+=182.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i43<1.1037919521331787){
    if(i36<0.030249789357185364){
     s0+=1825.0;
     s1+=261.0;
    } else {
     s0+=102.0;
     s1+=363.0;
    }
   } else {
    if(i16<0.022564459592103958){
     s0+=5734.0;
     s1+=251.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i5<0.07106125354766846){
   if(i16<0.005631317850202322){
    if(i37<0.00143264583311975){
     s0+=3522.0;
     s1+=1099.0;
    } else {
     s0+=2758.0;
     s1+=105.0;
    }
   } else {
    if(i34<1.5682398080825806){
     s0+=311.0;
     s1+=610.0;
    } else {
     s0+=294.0;
     s1+=83.0;
    }
   }
  } else {
   if(i0<0.11256879568099976){
    if(i48<0.003944694995880127){
     s0+=304.0;
     s1+=663.0;
    } else {
     s0+=606.0;
     s1+=34.0;
    }
   } else {
    if(i3<0.9955565929412842){
     s0+=195.0;
     s1+=59.0;
    } else {
     s0+=527.0;
     s1+=3313.0;
    }
   }
  }
 }
} else {
 if(i7<1.0385931730270386){
  if(i15<1.0022543668746948){
   if(i16<0.004566563293337822){
    if(i20<1.0065189599990845){
     s0+=419.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=5.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i37<0.004874182865023613){
   if(i0<0.06272318959236145){
    if(i34<1.1386182308197021){
     s0+=2.0;
     s1+=180.0;
    } else {
     s0+=259.0;
     s1+=12.0;
    }
   } else {
    if(i50<-0.00018164515495300293){
     s0+=9.0;
    } else {
     s0+=76.0;
     s1+=2623.0;
    }
   }
  } else {
   if(i0<0.08278194069862366){
    if(i35<0.010203177109360695){
     s0+=1.0;
    } else {
     s1+=84.0;
    }
   } else {
    s1+=7335.0;
   }
  }
 }
}
if(i1<0.08162045478820801){
 if(i7<1.0452277660369873){
  if(i4<0.0007367730140686035){
   if(i53<0.00025178759824484587){
    if(i30<0.0003032261156477034){
     s0+=45382.0;
     s1+=15.0;
    } else {
     s0+=7265.0;
     s1+=236.0;
    }
   } else {
    if(i70<0.029977887868881226){
     s0+=1693.0;
     s1+=487.0;
    } else {
     s0+=7523.0;
     s1+=174.0;
    }
   }
  } else {
   if(i75<0.0001143374465755187){
    if(i69<0.0011488287709653378){
     s1+=100.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i56<-1.68364385899622e-05){
     s1+=14.0;
    } else {
     s0+=39.0;
    }
   }
  }
 } else {
  if(i11<1.0060365200042725){
   if(i20<0.9912181496620178){
    if(i8<2.2590160369873047e-05){
     s0+=1246.0;
     s1+=447.0;
    } else {
     s0+=64.0;
     s1+=318.0;
    }
   } else {
    if(i18<0.021702729165554047){
     s0+=5038.0;
     s1+=372.0;
    } else {
     s0+=664.0;
     s1+=421.0;
    }
   }
  } else {
   if(i17<1.8894672393798828e-05){
    if(i45<1.145219087600708){
     s1+=173.0;
    } else {
     s0+=432.0;
     s1+=11.0;
    }
   } else {
    if(i41<1.2271616458892822){
     s1+=631.0;
    } else {
     s0+=31.0;
     s1+=51.0;
    }
   }
  }
 }
} else {
 if(i21<0.0007127523422241211){
  if(i15<0.9985301494598389){
   if(i30<0.04387877136468887){
    if(i7<1.0411070585250854){
     s0+=74.0;
     s1+=3.0;
    } else {
     s0+=377.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i16<0.0017390078864991665){
    if(i63<3.291779285063967e-05){
     s0+=436.0;
     s1+=20.0;
    } else {
     s0+=105.0;
     s1+=189.0;
    }
   } else {
    if(i40<0.049987733364105225){
     s0+=44.0;
     s1+=2720.0;
    } else {
     s0+=574.0;
     s1+=1534.0;
    }
   }
  }
 } else {
  if(i35<0.013085627928376198){
   if(i4<8.037686347961426e-05){
    if(i46<0.18998879194259644){
     s0+=13.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i21<0.001422286033630371){
     s0+=34.0;
     s1+=169.0;
    } else {
     s1+=925.0;
    }
   }
  } else {
   s1+=8197.0;
  }
 }
}
if(i10<0.0004360079765319824){
 if(i9<1.0452215671539307){
  if(i7<1.0410068035125732){
   if(i1<0.08023625612258911){
    if(i58<0.044810034334659576){
     s0+=51570.0;
     s1+=222.0;
    } else {
     s0+=7336.0;
     s1+=358.0;
    }
   } else {
    if(i34<1.0840110778808594){
     s0+=86.0;
    } else {
     s0+=57.0;
     s1+=119.0;
    }
   }
  } else {
   if(i5<0.06073993444442749){
    if(i39<0.0002724377845879644){
     s0+=3007.0;
     s1+=182.0;
    } else {
     s0+=1871.0;
     s1+=577.0;
    }
   } else {
    if(i6<-9.764327842276543e-06){
     s0+=113.0;
     s1+=406.0;
    } else {
     s0+=195.0;
     s1+=57.0;
    }
   }
  }
 } else {
  if(i33<0.0062064072117209435){
   if(i4<0.00012791156768798828){
    if(i2<0.07536956667900085){
     s0+=2944.0;
     s1+=279.0;
    } else {
     s0+=1090.0;
     s1+=855.0;
    }
   } else {
    if(i37<0.002157136332243681){
     s0+=441.0;
     s1+=1160.0;
    } else {
     s0+=237.0;
     s1+=75.0;
    }
   }
  } else {
   if(i32<-0.00015281257219612598){
    if(i16<0.0027037241961807013){
     s0+=46.0;
     s1+=59.0;
    } else {
     s0+=35.0;
     s1+=1531.0;
    }
   } else {
    if(i2<0.11273208260536194){
     s0+=104.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=73.0;
    }
   }
  }
 }
} else {
 if(i66<1.002081036567688){
  if(i3<1.0016077756881714){
   if(i2<0.11195757985115051){
    if(i47<0.006460332777351141){
     s0+=617.0;
     s1+=88.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   } else {
    if(i40<0.07735741138458252){
     s1+=157.0;
    } else {
     s0+=38.0;
     s1+=56.0;
    }
   }
  } else {
   if(i24<1.0411969423294067){
    if(i60<1.7497727640147787e-06){
     s0+=33.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i1<0.05727902054786682){
     s0+=113.0;
     s1+=558.0;
    } else {
     s0+=109.0;
     s1+=9740.0;
    }
   }
  }
 } else {
  if(i18<0.05898994952440262){
   if(i0<0.13184204697608948){
    if(i34<1.3482874631881714){
     s1+=27.0;
    } else {
     s0+=823.0;
     s1+=101.0;
    }
   } else {
    if(i1<0.14246010780334473){
     s0+=6.0;
     s1+=10.0;
    } else {
     s1+=161.0;
    }
   }
  } else {
   if(i11<0.9786213636398315){
    if(i16<0.01589132659137249){
     s0+=89.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i5<0.010286837816238403){
     s0+=13.0;
     s1+=16.0;
    } else {
     s0+=3.0;
     s1+=332.0;
    }
   }
  }
 }
}
if(i8<3.701448440551758e-05){
 if(i5<0.071968674659729){
  if(i24<1.0485899448394775){
   if(i0<0.0801098644733429){
    if(i24<1.0417430400848389){
     s0+=50545.0;
     s1+=113.0;
    } else {
     s0+=5223.0;
     s1+=185.0;
    }
   } else {
    if(i16<0.0045778341591358185){
     s0+=74.0;
     s1+=7.0;
    } else {
     s0+=22.0;
     s1+=20.0;
    }
   }
  } else {
   if(i41<1.103413462638855){
    if(i42<0.000607479247264564){
     s0+=2283.0;
     s1+=437.0;
    } else {
     s0+=486.0;
     s1+=1134.0;
    }
   } else {
    if(i18<0.023210754618048668){
     s0+=7483.0;
     s1+=248.0;
    } else {
     s0+=2423.0;
     s1+=523.0;
    }
   }
  }
 } else {
  if(i15<0.9985267519950867){
   if(i22<1.002837061882019){
    if(i15<0.9979933500289917){
     s0+=442.0;
     s1+=1.0;
    } else {
     s0+=75.0;
     s1+=14.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i33<0.006545540876686573){
    if(i40<0.04760095477104187){
     s0+=142.0;
     s1+=968.0;
    } else {
     s0+=1061.0;
     s1+=662.0;
    }
   } else {
    if(i12<-0.0005940794944763184){
     s0+=70.0;
     s1+=63.0;
    } else {
     s0+=41.0;
     s1+=1061.0;
    }
   }
  }
 }
} else {
 if(i39<0.0002051333722192794){
  if(i7<1.0326924324035645){
   if(i35<0.01566113345324993){
    if(i31<1.0010833740234375){
     s0+=244.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i50<0.0001634657382965088){
    if(i1<0.07222950458526611){
     s0+=45.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i37<0.00033787835855036974){
     s0+=5.0;
    } else {
     s1+=115.0;
    }
   }
  }
 } else {
  if(i34<1.082350254058838){
   s0+=110.0;
  } else {
   if(i0<0.118065744638443){
    if(i40<0.05447709560394287){
     s0+=248.0;
     s1+=1794.0;
    } else {
     s0+=94.0;
     s1+=41.0;
    }
   } else {
    if(i5<0.16358709335327148){
     s0+=35.0;
     s1+=2998.0;
    } else {
     s0+=3.0;
     s1+=6690.0;
    }
   }
  }
 }
}
if(i28<1.0406770706176758){
 if(i13<1.008178472518921){
  if(i65<0.0007831676630303264){
   if(i5<0.0755089819431305){
    if(i10<0.0006927251815795898){
     s0+=59237.0;
     s1+=837.0;
    } else {
     s0+=118.0;
     s1+=115.0;
    }
   } else {
    if(i45<1.056682825088501){
     s0+=55.0;
    } else {
     s0+=63.0;
     s1+=203.0;
    }
   }
  } else {
   if(i50<-3.8295984268188477e-05){
    if(i11<0.9851272106170654){
     s0+=2013.0;
     s1+=28.0;
    } else {
     s0+=1484.0;
     s1+=183.0;
    }
   } else {
    if(i11<0.9820868968963623){
     s0+=2169.0;
     s1+=179.0;
    } else {
     s0+=1206.0;
     s1+=1703.0;
    }
   }
  }
 } else {
  if(i8<6.35981559753418e-05){
   if(i5<0.054705649614334106){
    if(i0<0.06320232152938843){
     s0+=356.0;
     s1+=80.0;
    } else {
     s0+=8.0;
     s1+=156.0;
    }
   } else {
    if(i72<0.02369135618209839){
     s0+=14.0;
     s1+=351.0;
    } else {
     s0+=26.0;
     s1+=72.0;
    }
   }
  } else {
   if(i4<0.0009431242942810059){
    if(i55<0.000788271427154541){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   } else {
    s1+=849.0;
   }
  }
 }
} else {
 if(i23<1.0100040435791016){
  if(i2<0.11265307664871216){
   if(i68<-0.004194732755422592){
    if(i47<0.005146815907210112){
     s0+=1728.0;
     s1+=73.0;
    } else {
     s0+=1.0;
     s1+=37.0;
    }
   } else {
    if(i47<0.0013800684828311205){
     s0+=1123.0;
     s1+=238.0;
    } else {
     s0+=322.0;
     s1+=552.0;
    }
   }
  } else {
   if(i56<8.236017947638175e-07){
    if(i47<0.001800644095055759){
     s0+=354.0;
     s1+=894.0;
    } else {
     s0+=44.0;
     s1+=2232.0;
    }
   } else {
    if(i66<1.0000526905059814){
     s0+=216.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i3<1.0018714666366577){
   if(i7<1.153752088546753){
    if(i5<0.06176424026489258){
     s0+=58.0;
     s1+=62.0;
    } else {
     s0+=27.0;
     s1+=388.0;
    }
   } else {
    if(i33<0.006559000816196203){
     s0+=286.0;
     s1+=19.0;
    } else {
     s0+=2.0;
     s1+=184.0;
    }
   }
  } else {
   if(i6<-4.264275776222348e-05){
    if(i16<0.003795319003984332){
     s0+=14.0;
     s1+=492.0;
    } else {
     s1+=7256.0;
    }
   } else {
    if(i5<0.06460851430892944){
     s0+=39.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i4<0.0005481839179992676){
 if(i9<1.0452215671539307){
  if(i7<1.0433766841888428){
   if(i58<0.04496188461780548){
    if(i65<0.0008759050979278982){
     s0+=52402.0;
     s1+=200.0;
    } else {
     s0+=571.0;
     s1+=163.0;
    }
   } else {
    if(i2<0.07807236909866333){
     s0+=7959.0;
     s1+=375.0;
    } else {
     s0+=230.0;
     s1+=152.0;
    }
   }
  } else {
   if(i70<0.014530779793858528){
    if(i13<1.0095939636230469){
     s0+=2045.0;
     s1+=146.0;
    } else {
     s0+=10.0;
     s1+=67.0;
    }
   } else {
    if(i30<0.001836440758779645){
     s0+=791.0;
     s1+=611.0;
    } else {
     s0+=1138.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i4<0.00012868642807006836){
   if(i18<0.028957966715097427){
    if(i13<1.010773777961731){
     s0+=3724.0;
     s1+=449.0;
    } else {
     s0+=140.0;
     s1+=170.0;
    }
   } else {
    if(i15<0.9987392425537109){
     s0+=418.0;
     s1+=21.0;
    } else {
     s0+=323.0;
     s1+=1208.0;
    }
   }
  } else {
   if(i15<1.000334620475769){
    if(i37<0.00048253126442432404){
     s0+=36.0;
    } else {
     s0+=17.0;
     s1+=657.0;
    }
   } else {
    if(i6<-3.3993939723586664e-05){
     s0+=302.0;
     s1+=762.0;
    } else {
     s0+=627.0;
     s1+=221.0;
    }
   }
  }
 }
} else {
 if(i8<6.133317947387695e-05){
  if(i16<0.0024075713008642197){
   if(i75<8.620948938187212e-05){
    s1+=43.0;
   } else {
    s0+=307.0;
   }
  } else {
   if(i41<1.0590065717697144){
    s0+=35.0;
   } else {
    if(i21<-0.0006322264671325684){
     s0+=113.0;
     s1+=327.0;
    } else {
     s0+=17.0;
     s1+=1145.0;
    }
   }
  }
 } else {
  if(i0<0.057599782943725586){
   if(i66<0.9976493120193481){
    s0+=20.0;
   } else {
    if(i65<0.000780343369115144){
     s0+=32.0;
     s1+=36.0;
    } else {
     s0+=23.0;
     s1+=247.0;
    }
   }
  } else {
   if(i21<0.00015026330947875977){
    if(i31<1.0012407302856445){
     s0+=48.0;
     s1+=199.0;
    } else {
     s0+=7.0;
     s1+=664.0;
    }
   } else {
    if(i63<0.0001341287570539862){
     s1+=8330.0;
    } else {
     s0+=1.0;
     s1+=523.0;
    }
   }
  }
 }
}
if(i2<0.08509460091590881){
 if(i4<0.0006995797157287598){
  if(i7<1.0436501502990723){
   if(i38<0.00036356455530039966){
    if(i24<1.0596027374267578){
     s0+=39042.0;
     s1+=10.0;
    } else {
     s0+=190.0;
     s1+=6.0;
    }
   } else {
    if(i44<0.988980233669281){
     s0+=4356.0;
     s1+=464.0;
    } else {
     s0+=17709.0;
     s1+=267.0;
    }
   }
  } else {
   if(i6<-2.7607866286416538e-05){
    if(i42<0.0012756517389789224){
     s0+=71.0;
     s1+=449.0;
    } else {
     s0+=1545.0;
     s1+=334.0;
    }
   } else {
    if(i20<0.9898573160171509){
     s0+=879.0;
     s1+=363.0;
    } else {
     s0+=5363.0;
     s1+=295.0;
    }
   }
  }
 } else {
  if(i42<0.0020958702079951763){
   if(i34<1.0710620880126953){
    s0+=16.0;
   } else {
    s1+=490.0;
   }
  } else {
   if(i65<0.0006922852480784059){
    if(i6<-8.822197560220957e-05){
     s0+=6.0;
     s1+=28.0;
    } else {
     s0+=150.0;
     s1+=4.0;
    }
   } else {
    if(i57<-0.014306657016277313){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=27.0;
     s1+=368.0;
    }
   }
  }
 }
} else {
 if(i17<-1.5437602996826172e-05){
  if(i61<0.9997957944869995){
   if(i39<0.06396209448575974){
    if(i50<-0.00025960803031921387){
     s0+=509.0;
    } else {
     s0+=62.0;
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i58<0.07498301565647125){
    if(i6<-6.032485907780938e-05){
     s1+=1.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i14<0.9881464242935181){
     s1+=11.0;
    } else {
     s0+=11.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i4<0.0005474090576171875){
   if(i1<0.10890141129493713){
    if(i48<0.004364877939224243){
     s0+=238.0;
     s1+=954.0;
    } else {
     s0+=485.0;
     s1+=38.0;
    }
   } else {
    if(i68<-0.008773302659392357){
     s0+=296.0;
     s1+=619.0;
    } else {
     s0+=120.0;
     s1+=1676.0;
    }
   }
  } else {
   if(i23<1.0041699409484863){
    if(i6<-6.87151841702871e-05){
     s0+=52.0;
     s1+=1632.0;
    } else {
     s0+=69.0;
     s1+=253.0;
    }
   } else {
    if(i14<0.9951828718185425){
     s0+=3.0;
     s1+=125.0;
    } else {
     s0+=10.0;
     s1+=8581.0;
    }
   }
  }
 }
}
if(i22<1.0025789737701416){
 if(i5<0.07194709777832031){
  if(i13<1.0099632740020752){
   if(i24<1.0451585054397583){
    if(i54<-0.006124258041381836){
     s0+=727.0;
     s1+=69.0;
    } else {
     s0+=53156.0;
     s1+=138.0;
    }
   } else {
    if(i34<1.1013743877410889){
     s0+=3482.0;
     s1+=1383.0;
    } else {
     s0+=10038.0;
     s1+=511.0;
    }
   }
  } else {
   if(i30<0.0011100703850388527){
    if(i43<1.1844755411148071){
     s0+=11.0;
     s1+=430.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   } else {
    if(i66<0.9995517730712891){
     s0+=68.0;
     s1+=60.0;
    } else {
     s0+=341.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i73<2.4221176317951176e-06){
   if(i16<0.003270812099799514){
    if(i0<0.10195162892341614){
     s0+=674.0;
     s1+=163.0;
    } else {
     s0+=501.0;
     s1+=590.0;
    }
   } else {
    if(i1<0.11721307039260864){
     s0+=371.0;
     s1+=647.0;
    } else {
     s0+=68.0;
     s1+=2267.0;
    }
   }
  } else {
   s0+=210.0;
  }
 }
} else {
 if(i5<0.04474395513534546){
  if(i3<1.0024901628494263){
   if(i7<1.0443809032440186){
    if(i74<0.11190292239189148){
     s0+=177.0;
     s1+=19.0;
    } else {
     s0+=588.0;
    }
   } else {
    if(i61<1.0001814365386963){
     s0+=68.0;
     s1+=107.0;
    } else {
     s0+=144.0;
     s1+=15.0;
    }
   }
  } else {
   if(i10<0.0005815625190734863){
    if(i41<1.2066810131072998){
     s1+=57.0;
    } else {
     s0+=65.0;
     s1+=3.0;
    }
   } else {
    if(i48<0.002129107713699341){
     s0+=29.0;
     s1+=589.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i3<1.0024361610412598){
   if(i5<0.10985103249549866){
    if(i48<0.003233402967453003){
     s0+=85.0;
     s1+=185.0;
    } else {
     s0+=232.0;
     s1+=43.0;
    }
   } else {
    if(i59<0.010771036148071289){
     s0+=9.0;
     s1+=489.0;
    } else {
     s0+=33.0;
     s1+=131.0;
    }
   }
  } else {
   if(i12<0.00021260976791381836){
    if(i2<0.13191795349121094){
     s0+=93.0;
     s1+=647.0;
    } else {
     s0+=3.0;
     s1+=1419.0;
    }
   } else {
    s1+=7047.0;
   }
  }
 }
}
if(i10<0.0004356503486633301){
 if(i46<0.060191720724105835){
  if(i21<0.0011508762836456299){
   if(i7<1.0450963973999023){
    if(i5<0.07087981700897217){
     s0+=60489.0;
     s1+=778.0;
    } else {
     s0+=74.0;
     s1+=64.0;
    }
   } else {
    if(i22<1.0005630254745483){
     s0+=5364.0;
     s1+=1271.0;
    } else {
     s0+=838.0;
     s1+=853.0;
    }
   }
  } else {
   if(i16<0.002257527317851782){
    if(i74<0.025121068581938744){
     s0+=15.0;
     s1+=81.0;
    } else {
     s0+=55.0;
     s1+=10.0;
    }
   } else {
    if(i6<-4.661543789552525e-05){
     s1+=381.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i4<0.00016033649444580078){
   if(i2<0.10378548502922058){
    if(i6<-1.5048968634800985e-05){
     s0+=326.0;
     s1+=154.0;
    } else {
     s0+=1002.0;
     s1+=32.0;
    }
   } else {
    if(i37<0.001536551397293806){
     s0+=565.0;
     s1+=311.0;
    } else {
     s0+=91.0;
     s1+=730.0;
    }
   }
  } else {
   if(i45<1.253311276435852){
    if(i30<0.003448294475674629){
     s0+=49.0;
     s1+=439.0;
    } else {
     s0+=226.0;
     s1+=196.0;
    }
   } else {
    if(i33<0.004102890379726887){
     s0+=7.0;
    } else {
     s1+=673.0;
    }
   }
  }
 }
} else {
 if(i32<-0.00012400395644363016){
  if(i0<0.06616821885108948){
   if(i37<0.0016775971744209528){
    s1+=155.0;
   } else {
    if(i76<0.9926674365997314){
     s0+=77.0;
     s1+=182.0;
    } else {
     s0+=367.0;
     s1+=22.0;
    }
   }
  } else {
   if(i12<6.258487701416016e-06){
    if(i7<1.125802755355835){
     s0+=205.0;
     s1+=319.0;
    } else {
     s0+=3.0;
     s1+=908.0;
    }
   } else {
    if(i17<1.6033649444580078e-05){
     s0+=8.0;
     s1+=111.0;
    } else {
     s0+=3.0;
     s1+=8266.0;
    }
   }
  }
 } else {
  if(i12<9.85264778137207e-05){
   if(i0<0.11037427186965942){
    if(i49<-0.02622082829475403){
     s0+=37.0;
     s1+=154.0;
    } else {
     s0+=1070.0;
     s1+=155.0;
    }
   } else {
    if(i57<-0.08393275737762451){
     s0+=18.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=311.0;
    }
   }
  } else {
   if(i73<-4.999633347324561e-06){
    s1+=731.0;
   } else {
    if(i9<1.0374231338500977){
     s0+=10.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
}
if(i0<0.08140268921852112){
 if(i7<1.044858694076538){
  if(i52<-0.002064049243927002){
   if(i34<1.2392117977142334){
    if(i1<0.04329529404640198){
     s0+=1577.0;
     s1+=260.0;
    } else {
     s0+=219.0;
     s1+=222.0;
    }
   } else {
    if(i15<1.0017800331115723){
     s0+=2556.0;
     s1+=8.0;
    } else {
     s0+=126.0;
     s1+=44.0;
    }
   }
  } else {
   if(i4<0.0009561777114868164){
    if(i36<0.02661413699388504){
     s0+=52755.0;
     s1+=127.0;
    } else {
     s0+=4699.0;
     s1+=175.0;
    }
   } else {
    s1+=16.0;
   }
  }
 } else {
  if(i71<1.000511884689331){
   if(i0<0.0640261173248291){
    if(i34<1.1013743877410889){
     s0+=1410.0;
     s1+=308.0;
    } else {
     s0+=3253.0;
     s1+=133.0;
    }
   } else {
    if(i48<0.0018687248229980469){
     s0+=195.0;
     s1+=267.0;
    } else {
     s0+=419.0;
     s1+=26.0;
    }
   }
  } else {
   if(i8<4.2498111724853516e-05){
    if(i12<-0.00021216273307800293){
     s0+=931.0;
     s1+=100.0;
    } else {
     s0+=999.0;
     s1+=496.0;
    }
   } else {
    if(i16<0.0020498724188655615){
     s0+=84.0;
     s1+=10.0;
    } else {
     s0+=134.0;
     s1+=732.0;
    }
   }
  }
 }
} else {
 if(i12<5.1021575927734375e-05){
  if(i10<-0.00043901801109313965){
   if(i63<0.00017402941011823714){
    s0+=369.0;
   } else {
    if(i37<0.008337322622537613){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i40<0.046972572803497314){
    if(i16<0.0015773925697430968){
     s0+=37.0;
     s1+=99.0;
    } else {
     s0+=37.0;
     s1+=2409.0;
    }
   } else {
    if(i35<0.027572954073548317){
     s0+=1001.0;
     s1+=501.0;
    } else {
     s0+=82.0;
     s1+=925.0;
    }
   }
  }
 } else {
  if(i50<-0.0005294978618621826){
   s0+=11.0;
  } else {
   if(i16<0.001198897254653275){
    if(i14<1.010129451751709){
     s0+=86.0;
     s1+=7.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i37<0.0003294501220807433){
     s0+=12.0;
    } else {
     s0+=52.0;
     s1+=10268.0;
    }
   }
  }
 }
}
if(i7<1.052894115447998){
 if(i0<0.08242040872573853){
  if(i13<1.0084054470062256){
   if(i52<-0.0023233890533447266){
    if(i45<1.1779849529266357){
     s0+=1594.0;
     s1+=587.0;
    } else {
     s0+=2677.0;
     s1+=28.0;
    }
   } else {
    if(i30<0.0002845627022907138){
     s0+=45715.0;
     s1+=19.0;
    } else {
     s0+=13793.0;
     s1+=558.0;
    }
   }
  } else {
   if(i43<1.1063789129257202){
    s1+=131.0;
   } else {
    if(i56<-1.9790833903243765e-05){
     s1+=8.0;
    } else {
     s0+=118.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i72<0.03806126117706299){
   if(i24<1.0494438409805298){
    if(i45<1.0670123100280762){
     s0+=59.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=41.0;
    }
   } else {
    if(i15<0.9971389770507812){
     s0+=7.0;
    } else {
     s0+=15.0;
     s1+=610.0;
    }
   }
  } else {
   if(i10<-0.00034695863723754883){
    s0+=74.0;
   } else {
    if(i33<0.00030105674522928894){
     s0+=35.0;
    } else {
     s0+=62.0;
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i15<1.0015537738800049){
  if(i38<0.010459553450345993){
   if(i12<0.00010484457015991211){
    if(i5<0.06298303604125977){
     s0+=4137.0;
     s1+=778.0;
    } else {
     s0+=1565.0;
     s1+=1503.0;
    }
   } else {
    if(i1<0.06579792499542236){
     s0+=186.0;
     s1+=52.0;
    } else {
     s0+=67.0;
     s1+=998.0;
    }
   }
  } else {
   if(i1<0.07989996671676636){
    if(i9<1.067557692527771){
     s0+=175.0;
     s1+=17.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i12<-0.0008341372013092041){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1437.0;
    }
   }
  }
 } else {
  if(i8<4.035234451293945e-05){
   if(i69<0.0016338357236236334){
    if(i0<0.11005240678787231){
     s0+=507.0;
     s1+=93.0;
    } else {
     s0+=30.0;
     s1+=130.0;
    }
   } else {
    if(i60<4.7990706661948934e-05){
     s0+=7.0;
     s1+=262.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i0<0.06265565752983093){
    if(i30<0.0014311990235000849){
     s0+=10.0;
     s1+=176.0;
    } else {
     s0+=122.0;
     s1+=176.0;
    }
   } else {
    if(i3<1.0040180683135986){
     s0+=90.0;
     s1+=661.0;
    } else {
     s0+=26.0;
     s1+=8764.0;
    }
   }
  }
 }
}
if(i4<0.0005488693714141846){
 if(i1<0.0805407464504242){
  if(i67<0.0075655728578567505){
   if(i1<0.06118205189704895){
    if(i24<1.0451585054397583){
     s0+=50995.0;
     s1+=115.0;
    } else {
     s0+=10926.0;
     s1+=669.0;
    }
   } else {
    if(i40<0.03083902597427368){
     s0+=286.0;
     s1+=413.0;
    } else {
     s0+=3419.0;
     s1+=213.0;
    }
   }
  } else {
   if(i1<0.021569252014160156){
    if(i41<1.094580888748169){
     s0+=683.0;
     s1+=113.0;
    } else {
     s0+=1453.0;
     s1+=66.0;
    }
   } else {
    if(i20<0.9797463417053223){
     s0+=97.0;
     s1+=236.0;
    } else {
     s0+=1120.0;
     s1+=347.0;
    }
   }
  }
 } else {
  if(i50<-0.00014024972915649414){
   if(i56<-1.0199353710049763e-05){
    if(i66<0.9961166381835938){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   } else {
    s0+=435.0;
   }
  } else {
   if(i16<0.0017159300623461604){
    if(i57<-0.01145651564002037){
     s0+=478.0;
     s1+=99.0;
    } else {
     s0+=54.0;
     s1+=147.0;
    }
   } else {
    if(i49<0.04972177743911743){
     s0+=114.0;
     s1+=1946.0;
    } else {
     s0+=421.0;
     s1+=1004.0;
    }
   }
  }
 }
} else {
 if(i6<-4.212770363665186e-05){
  if(i21<4.64320182800293e-05){
   if(i62<0.005006842315196991){
    if(i70<0.09572003781795502){
     s0+=205.0;
     s1+=288.0;
    } else {
     s0+=11.0;
     s1+=388.0;
    }
   } else {
    if(i7<1.0838570594787598){
     s0+=16.0;
     s1+=132.0;
    } else {
     s1+=516.0;
    }
   }
  } else {
   if(i69<0.0004336069105193019){
    if(i75<0.00012984013301320374){
     s1+=1958.0;
    } else {
     s0+=13.0;
     s1+=115.0;
    }
   } else {
    s1+=8133.0;
   }
  }
 } else {
  if(i12<4.175305366516113e-05){
   if(i14<0.9931684732437134){
    if(i23<0.9905426502227783){
     s1+=10.0;
    } else {
     s0+=2.0;
    }
   } else {
    s1+=135.0;
   }
  } else {
   if(i27<0.00030744215473532677){
    s0+=228.0;
   } else {
    if(i73<-4.327958777139429e-06){
     s0+=1.0;
     s1+=90.0;
    } else {
     s0+=86.0;
     s1+=12.0;
    }
   }
  }
 }
}
if(i3<1.0024782419204712){
 if(i24<1.0494996309280396){
  if(i39<0.00032879417994990945){
   if(i52<-0.002662062644958496){
    if(i43<1.0647327899932861){
     s0+=162.0;
    } else {
     s0+=72.0;
     s1+=66.0;
    }
   } else {
    if(i6<-3.7443835026351735e-05){
     s0+=514.0;
     s1+=42.0;
    } else {
     s0+=51644.0;
     s1+=119.0;
    }
   }
  } else {
   if(i3<1.0002970695495605){
    if(i11<0.9895103573799133){
     s0+=2704.0;
     s1+=10.0;
    } else {
     s0+=1379.0;
     s1+=187.0;
    }
   } else {
    if(i38<0.00029582169372588396){
     s0+=23.0;
    } else {
     s0+=14.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i5<0.058631688356399536){
   if(i34<1.1013743877410889){
    if(i6<-1.5780060493852943e-05){
     s0+=174.0;
     s1+=593.0;
    } else {
     s0+=2051.0;
     s1+=503.0;
    }
   } else {
    if(i2<0.07742062211036682){
     s0+=9317.0;
     s1+=370.0;
    } else {
     s0+=83.0;
     s1+=241.0;
    }
   }
  } else {
   if(i0<0.10264772176742554){
    if(i49<0.0344584584236145){
     s0+=704.0;
     s1+=763.0;
    } else {
     s0+=1011.0;
     s1+=113.0;
    }
   } else {
    if(i6<-1.229988720297115e-05){
     s0+=316.0;
     s1+=2695.0;
    } else {
     s0+=502.0;
     s1+=185.0;
    }
   }
  }
 }
} else {
 if(i6<-4.32968299719505e-05){
  if(i5<0.04666522145271301){
   if(i14<1.0017588138580322){
    if(i7<1.1225965023040771){
     s0+=53.0;
     s1+=30.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i50<0.0001125037670135498){
     s0+=31.0;
     s1+=43.0;
    } else {
     s0+=18.0;
     s1+=670.0;
    }
   }
  } else {
   if(i66<1.0057787895202637){
    if(i12<-2.980232238769531e-07){
     s0+=84.0;
     s1+=829.0;
    } else {
     s0+=7.0;
     s1+=9439.0;
    }
   } else {
    if(i35<0.019469570368528366){
     s0+=12.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i35<0.008440881967544556){
   if(i33<0.0015640459023416042){
    if(i56<-1.1778594853240065e-05){
     s1+=6.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i54<-0.05663779377937317){
     s1+=1.0;
    } else {
     s0+=140.0;
    }
   }
  } else {
   if(i17<1.4066696166992188e-05){
    s0+=26.0;
   } else {
    if(i16<0.002926155459135771){
     s0+=3.0;
    } else {
     s1+=219.0;
    }
   }
  }
 }
}
if(i8<3.7729740142822266e-05){
 if(i5<0.07187026739120483){
  if(i29<1.0074388980865479){
   if(i27<0.0003066366771236062){
    if(i16<0.004898290149867535){
     s0+=51531.0;
     s1+=170.0;
    } else {
     s0+=1354.0;
     s1+=69.0;
    }
   } else {
    if(i21<-0.0014659464359283447){
     s0+=8211.0;
     s1+=234.0;
    } else {
     s0+=5165.0;
     s1+=1392.0;
    }
   }
  } else {
   if(i41<1.1411950588226318){
    if(i37<0.000524780829437077){
     s0+=524.0;
     s1+=147.0;
    } else {
     s0+=106.0;
     s1+=551.0;
    }
   } else {
    if(i69<0.0007330793887376785){
     s0+=1318.0;
     s1+=27.0;
    } else {
     s0+=170.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<-1.3807219147565775e-05){
   if(i40<0.040011584758758545){
    if(i47<0.0007637753151357174){
     s0+=25.0;
     s1+=115.0;
    } else {
     s0+=11.0;
     s1+=1078.0;
    }
   } else {
    if(i5<0.17266303300857544){
     s0+=617.0;
     s1+=698.0;
    } else {
     s0+=46.0;
     s1+=753.0;
    }
   }
  } else {
   if(i76<1.0025222301483154){
    if(i3<0.9961013197898865){
     s0+=174.0;
     s1+=10.0;
    } else {
     s0+=53.0;
     s1+=139.0;
    }
   } else {
    if(i33<0.00532741891220212){
     s0+=882.0;
     s1+=67.0;
    } else {
     s0+=71.0;
     s1+=60.0;
    }
   }
  }
 }
} else {
 if(i3<0.9999792575836182){
  s0+=327.0;
 } else {
  if(i0<0.0584568977355957){
   if(i59<-0.0007108449935913086){
    if(i52<0.0029287338256835938){
     s0+=40.0;
     s1+=397.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i45<1.1316661834716797){
     s0+=17.0;
     s1+=23.0;
    } else {
     s0+=144.0;
     s1+=5.0;
    }
   }
  } else {
   if(i56<-1.1540079867700115e-05){
    if(i32<-0.0005972341168671846){
     s0+=1.0;
     s1+=7227.0;
    } else {
     s0+=143.0;
     s1+=3927.0;
    }
   } else {
    if(i69<0.00040939985774457455){
     s1+=70.0;
    } else {
     s0+=46.0;
     s1+=19.0;
    }
   }
  }
 }
}
if(i2<0.08346086740493774){
 if(i62<0.0018168000970035791){
  if(i24<1.0475225448608398){
   if(i20<1.0112333297729492){
    if(i3<1.002955675125122){
     s0+=53817.0;
     s1+=181.0;
    } else {
     s0+=18.0;
     s1+=13.0;
    }
   } else {
    if(i57<-0.0007472258876077831){
     s1+=3.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i2<0.06398651003837585){
    if(i42<0.0010354123078286648){
     s0+=3355.0;
     s1+=451.0;
    } else {
     s0+=4812.0;
     s1+=64.0;
    }
   } else {
    if(i38<0.001624415279366076){
     s0+=491.0;
     s1+=659.0;
    } else {
     s0+=961.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i6<-4.131850437261164e-05){
   if(i4<0.0002962648868560791){
    if(i0<0.04001423716545105){
     s0+=1027.0;
     s1+=44.0;
    } else {
     s0+=61.0;
     s1+=115.0;
    }
   } else {
    if(i12<-0.0003571510314941406){
     s0+=47.0;
     s1+=35.0;
    } else {
     s0+=82.0;
     s1+=637.0;
    }
   }
  } else {
   if(i41<1.1800893545150757){
    if(i34<1.0835556983947754){
     s0+=1177.0;
    } else {
     s0+=839.0;
     s1+=668.0;
    }
   } else {
    if(i50<0.0003170967102050781){
     s0+=2204.0;
     s1+=36.0;
    } else {
     s0+=36.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i17<-1.576542854309082e-05){
  if(i10<-0.0004138648509979248){
   if(i12<-0.00046762824058532715){
    if(i12<-0.00048604607582092285){
     s0+=31.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    s0+=612.0;
   }
  } else {
   if(i29<0.9565613269805908){
    s0+=5.0;
   } else {
    if(i37<0.0012822393327951431){
     s0+=3.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i6<-1.4970793927204795e-05){
   if(i1<0.10538136959075928){
    if(i59<0.0037862062454223633){
     s0+=188.0;
     s1+=1596.0;
    } else {
     s0+=243.0;
     s1+=34.0;
    }
   } else {
    if(i6<-4.2067425965797156e-05){
     s0+=96.0;
     s1+=11381.0;
    } else {
     s0+=137.0;
     s1+=790.0;
    }
   }
  } else {
   if(i21<-0.0004382133483886719){
    if(i6<1.5247906048898585e-06){
     s0+=104.0;
     s1+=325.0;
    } else {
     s0+=286.0;
     s1+=71.0;
    }
   } else {
    if(i71<1.0045921802520752){
     s0+=368.0;
     s1+=39.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
}
if(i1<0.08023786544799805){
 if(i4<0.0006017684936523438){
  if(i9<1.0401175022125244){
   if(i62<0.0017442350508645177){
    if(i74<0.02484080195426941){
     s0+=51066.0;
     s1+=194.0;
    } else {
     s0+=7642.0;
     s1+=370.0;
    }
   } else {
    if(i4<-0.00031051039695739746){
     s0+=2912.0;
     s1+=177.0;
    } else {
     s0+=1260.0;
     s1+=419.0;
    }
   }
  } else {
   if(i1<0.0576593279838562){
    if(i3<1.0009431838989258){
     s0+=4401.0;
     s1+=371.0;
    } else {
     s0+=372.0;
     s1+=164.0;
    }
   } else {
    if(i40<0.026015639305114746){
     s0+=138.0;
     s1+=330.0;
    } else {
     s0+=1343.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i4<0.0009589195251464844){
   if(i6<-5.012785186409019e-05){
    if(i17<2.568960189819336e-05){
     s1+=160.0;
    } else {
     s0+=76.0;
     s1+=78.0;
    }
   } else {
    if(i35<0.009563520550727844){
     s0+=185.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=91.0;
    }
   }
  } else {
   if(i34<1.594835877418518){
    if(i13<0.9970602989196777){
     s0+=8.0;
     s1+=166.0;
    } else {
     s1+=700.0;
    }
   } else {
    if(i48<-0.009582310914993286){
     s0+=4.0;
     s1+=26.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i16<0.0052970582619309425){
  if(i48<0.004571855068206787){
   if(i37<0.00044839977636002004){
    if(i71<0.9997967481613159){
     s0+=171.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=15.0;
    }
   } else {
    if(i15<0.9985202550888062){
     s0+=144.0;
     s1+=13.0;
    } else {
     s0+=216.0;
     s1+=2275.0;
    }
   }
  } else {
   if(i1<0.13601785898208618){
    if(i31<1.0013675689697266){
     s0+=532.0;
     s1+=32.0;
    } else {
     s0+=10.0;
     s1+=14.0;
    }
   } else {
    if(i68<-0.010984564200043678){
     s0+=256.0;
     s1+=47.0;
    } else {
     s0+=89.0;
     s1+=325.0;
    }
   }
  }
 } else {
  if(i1<0.11537882685661316){
   if(i59<0.0041474103927612305){
    if(i17<-1.8805265426635742e-05){
     s0+=5.0;
    } else {
     s0+=11.0;
     s1+=894.0;
    }
   } else {
    if(i50<5.322694778442383e-05){
     s0+=7.0;
     s1+=17.0;
    } else {
     s0+=133.0;
     s1+=15.0;
    }
   }
  } else {
   if(i33<0.0006993712158873677){
    s0+=16.0;
   } else {
    if(i56<3.758347247639904e-06){
     s0+=18.0;
     s1+=10059.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
}
if(i1<0.07874476909637451){
 if(i24<1.0486011505126953){
  if(i65<0.0007540961960330606){
   if(i76<1.0236551761627197){
    if(i26<1.0131186246871948){
     s0+=52911.0;
     s1+=126.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i74<0.0373397022485733){
    if(i15<0.998562216758728){
     s0+=188.0;
    } else {
     s0+=218.0;
     s1+=153.0;
    }
   } else {
    if(i8<4.291534423828125e-05){
     s0+=2385.0;
     s1+=102.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i8<3.4749507904052734e-05){
   if(i5<0.058631956577301025){
    if(i21<-0.0013447105884552002){
     s0+=4696.0;
     s1+=146.0;
    } else {
     s0+=7234.0;
     s1+=1158.0;
    }
   } else {
    if(i46<0.04813462495803833){
     s0+=115.0;
     s1+=271.0;
    } else {
     s0+=1040.0;
     s1+=218.0;
    }
   }
  } else {
   if(i38<0.0022444475907832384){
    if(i10<-0.0003172755241394043){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=829.0;
    }
   } else {
    if(i19<1.004569172859192){
     s0+=115.0;
     s1+=324.0;
    } else {
     s0+=205.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i15<0.9985250234603882){
  if(i37<0.0017664964543655515){
   s0+=467.0;
  } else {
   if(i10<-0.0004131197929382324){
    if(i0<0.11210763454437256){
     s0+=51.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i24<1.0395243167877197){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i0<0.12336069345474243){
   if(i48<0.004312396049499512){
    if(i72<0.04068654775619507){
     s0+=120.0;
     s1+=2045.0;
    } else {
     s0+=174.0;
     s1+=121.0;
    }
   } else {
    if(i39<0.0007881117053329945){
     s0+=106.0;
     s1+=40.0;
    } else {
     s0+=532.0;
     s1+=18.0;
    }
   }
  } else {
   if(i57<-0.03922440856695175){
    if(i2<0.23204469680786133){
     s0+=200.0;
     s1+=57.0;
    } else {
     s0+=47.0;
     s1+=2159.0;
    }
   } else {
    if(i16<0.0016744555905461311){
     s0+=52.0;
     s1+=109.0;
    } else {
     s0+=23.0;
     s1+=9411.0;
    }
   }
  }
 }
}
if(i7<1.0576403141021729){
 if(i25<1.0058012008666992){
  if(i3<1.0025334358215332){
   if(i1<0.0783139169216156){
    if(i74<0.018550656735897064){
     s0+=50650.0;
     s1+=205.0;
    } else {
     s0+=13243.0;
     s1+=929.0;
    }
   } else {
    if(i6<-6.177908289828338e-06){
     s0+=151.0;
     s1+=440.0;
    } else {
     s0+=228.0;
     s1+=50.0;
    }
   }
  } else {
   if(i50<0.00011014938354492188){
    s0+=13.0;
   } else {
    if(i8<3.9637088775634766e-05){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=251.0;
    }
   }
  }
 } else {
  if(i2<0.06435510516166687){
   if(i43<1.1108002662658691){
    if(i25<1.0080609321594238){
     s0+=65.0;
     s1+=18.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   } else {
    if(i6<-7.172027108026668e-05){
     s1+=5.0;
    } else {
     s0+=458.0;
    }
   }
  } else {
   if(i41<1.1376045942306519){
    if(i6<-1.3292663425090723e-05){
     s0+=4.0;
     s1+=458.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i53<-2.9380214982666075e-05){
     s0+=21.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=98.0;
    }
   }
  }
 }
} else {
 if(i2<0.08575871586799622){
  if(i10<0.0005857348442077637){
   if(i45<1.1036889553070068){
    if(i18<0.016913533210754395){
     s0+=751.0;
     s1+=193.0;
    } else {
     s0+=154.0;
     s1+=382.0;
    }
   } else {
    if(i47<0.005243588238954544){
     s0+=3548.0;
     s1+=236.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i49<0.007236599922180176){
    if(i3<1.001952886581421){
     s0+=116.0;
     s1+=68.0;
    } else {
     s0+=55.0;
     s1+=659.0;
    }
   } else {
    if(i12<8.016824722290039e-05){
     s0+=252.0;
     s1+=9.0;
    } else {
     s1+=20.0;
    }
   }
  }
 } else {
  if(i47<0.0003236053744331002){
   if(i68<-0.0032190466299653053){
    if(i3<1.002570390701294){
     s0+=407.0;
     s1+=43.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i37<0.0006006242474541068){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=174.0;
    }
   }
  } else {
   if(i2<0.13470065593719482){
    if(i40<0.05502769351005554){
     s0+=122.0;
     s1+=1716.0;
    } else {
     s0+=544.0;
     s1+=130.0;
    }
   } else {
    if(i31<0.9988077878952026){
     s0+=186.0;
     s1+=7.0;
    } else {
     s0+=155.0;
     s1+=10858.0;
    }
   }
  }
 }
}
if(i6<-7.848392851883546e-05){
 if(i23<0.9601632952690125){
  if(i69<0.0019066166132688522){
   if(i9<1.0785235166549683){
    if(i27<0.005399429704993963){
     s0+=48.0;
     s1+=9.0;
    } else {
     s0+=442.0;
     s1+=1.0;
    }
   } else {
    s1+=42.0;
   }
  } else {
   if(i21<-0.00588718056678772){
    s0+=7.0;
   } else {
    if(i61<1.0003656148910522){
     s1+=127.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i42<0.0005340322386473417){
   s0+=145.0;
  } else {
   if(i34<1.082350254058838){
    s0+=7.0;
   } else {
    if(i12<-0.0003775656223297119){
     s0+=74.0;
     s1+=109.0;
    } else {
     s0+=108.0;
     s1+=10819.0;
    }
   }
  }
 }
} else {
 if(i7<1.0452277660369873){
  if(i1<0.07910159230232239){
   if(i45<1.0556960105895996){
    s0+=42269.0;
   } else {
    if(i34<1.100754976272583){
     s0+=2647.0;
     s1+=719.0;
    } else {
     s0+=16678.0;
     s1+=211.0;
    }
   }
  } else {
   if(i6<-1.2047205927956384e-05){
    if(i12<-0.00026047229766845703){
     s0+=39.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=176.0;
    }
   } else {
    if(i14<0.9940632581710815){
     s0+=145.0;
     s1+=4.0;
    } else {
     s0+=48.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i6<-4.381894177640788e-05){
   if(i12<-0.00012126564979553223){
    if(i32<-0.0002324732777196914){
     s0+=90.0;
     s1+=332.0;
    } else {
     s0+=474.0;
     s1+=167.0;
    }
   } else {
    if(i4<-0.00013312697410583496){
     s0+=113.0;
     s1+=86.0;
    } else {
     s0+=150.0;
     s1+=1765.0;
    }
   }
  } else {
   if(i18<0.023450762033462524){
    if(i38<0.0015160082839429379){
     s0+=2541.0;
     s1+=802.0;
    } else {
     s0+=3743.0;
     s1+=274.0;
    }
   } else {
    if(i34<1.255998969078064){
     s0+=330.0;
     s1+=1167.0;
    } else {
     s0+=1011.0;
     s1+=251.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i4<0.0005662441253662109){
  if(i30<0.0003977376618422568){
   if(i20<1.011218547821045){
    if(i55<-0.0013267993927001953){
     s0+=6.0;
     s1+=13.0;
    } else {
     s0+=49710.0;
     s1+=170.0;
    }
   } else {
    if(i6<-2.5800971343414858e-05){
     s1+=24.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i8<7.331371307373047e-06){
    if(i39<0.00031144608510658145){
     s0+=8211.0;
     s1+=389.0;
    } else {
     s0+=10741.0;
     s1+=2098.0;
    }
   } else {
    if(i63<1.5142678421398159e-05){
     s0+=472.0;
     s1+=32.0;
    } else {
     s0+=539.0;
     s1+=957.0;
    }
   }
  }
 } else {
  if(i18<0.009141648188233376){
   if(i35<0.004502536728978157){
    if(i2<0.11905992031097412){
     s0+=111.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i11<0.9999605417251587){
     s0+=37.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=65.0;
    }
   }
  } else {
   if(i7<1.1223218441009521){
    if(i27<0.003245001193135977){
     s0+=64.0;
     s1+=764.0;
    } else {
     s0+=112.0;
     s1+=222.0;
    }
   } else {
    if(i43<1.223900556564331){
     s0+=6.0;
    } else {
     s1+=1316.0;
    }
   }
  }
 }
} else {
 if(i22<1.0027964115142822){
  if(i33<0.00645364448428154){
   if(i2<0.07542896270751953){
    if(i74<0.02037600800395012){
     s0+=55.0;
     s1+=122.0;
    } else {
     s0+=665.0;
     s1+=90.0;
    }
   } else {
    if(i24<1.1503826379776){
     s0+=95.0;
     s1+=1190.0;
    } else {
     s0+=334.0;
     s1+=209.0;
    }
   }
  } else {
   if(i18<0.01672767475247383){
    if(i33<0.008111737668514252){
     s0+=32.0;
     s1+=2.0;
    } else {
     s1+=112.0;
    }
   } else {
    if(i38<0.008364771492779255){
     s0+=12.0;
     s1+=53.0;
    } else {
     s0+=6.0;
     s1+=1156.0;
    }
   }
  }
 } else {
  if(i56<-1.7430120351491496e-05){
   s1+=7534.0;
  } else {
   if(i50<3.314018249511719e-05){
    if(i36<0.02673342078924179){
     s0+=12.0;
     s1+=52.0;
    } else {
     s1+=161.0;
    }
   } else {
    if(i1<0.2282278835773468){
     s0+=129.0;
     s1+=53.0;
    } else {
     s0+=7.0;
     s1+=94.0;
    }
   }
  }
 }
}
if(i13<1.0081671476364136){
 if(i2<0.08353149890899658){
  if(i8<3.9637088775634766e-05){
   if(i74<0.01896274834871292){
    if(i53<0.0003556901356205344){
     s0+=51138.0;
     s1+=185.0;
    } else {
     s0+=201.0;
     s1+=147.0;
    }
   } else {
    if(i4<-0.00030219554901123047){
     s0+=12422.0;
     s1+=472.0;
    } else {
     s0+=4098.0;
     s1+=1011.0;
    }
   }
  } else {
   if(i15<1.0011584758758545){
    if(i21<0.0011951923370361328){
     s0+=226.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.0035194121301174164){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=133.0;
     s1+=458.0;
    }
   }
  }
 } else {
  if(i50<-0.00013977289199829102){
   if(i74<0.40230679512023926){
    if(i56<-1.1074892427132e-05){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=640.0;
    }
   } else {
    if(i21<-0.0021266937255859375){
     s0+=6.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i22<1.0008633136749268){
    if(i16<0.0016897472087293863){
     s0+=437.0;
     s1+=68.0;
    } else {
     s0+=304.0;
     s1+=1179.0;
    }
   } else {
    if(i18<0.019280143082141876){
     s0+=122.0;
     s1+=290.0;
    } else {
     s0+=73.0;
     s1+=2287.0;
    }
   }
  }
 }
} else {
 if(i6<-4.329156217863783e-05){
  if(i73<8.094003760561463e-07){
   if(i22<0.9998143911361694){
    if(i61<0.9999426603317261){
     s0+=1.0;
     s1+=934.0;
    } else {
     s0+=76.0;
     s1+=105.0;
    }
   } else {
    if(i47<4.3022813770221546e-05){
     s0+=4.0;
    } else {
     s0+=23.0;
     s1+=9140.0;
    }
   }
  } else {
   s0+=7.0;
  }
 } else {
  if(i43<1.1063789129257202){
   if(i0<0.0343131422996521){
    s0+=24.0;
   } else {
    if(i56<-2.3913755740068154e-06){
     s0+=4.0;
     s1+=280.0;
    } else {
     s0+=52.0;
     s1+=20.0;
    }
   }
  } else {
   if(i18<0.040325842797756195){
    if(i47<0.0019986648112535477){
     s0+=1094.0;
     s1+=168.0;
    } else {
     s0+=4.0;
     s1+=63.0;
    }
   } else {
    if(i73<1.095696688935277e-06){
     s0+=26.0;
     s1+=220.0;
    } else {
     s0+=22.0;
    }
   }
  }
 }
}
if(i11<1.0060044527053833){
 if(i4<0.0005488693714141846){
  if(i36<0.03042469173669815){
   if(i20<1.0095566511154175){
    if(i76<0.9683301448822021){
     s0+=343.0;
     s1+=191.0;
    } else {
     s0+=58321.0;
     s1+=753.0;
    }
   } else {
    if(i30<0.001029209466651082){
     s0+=131.0;
     s1+=322.0;
    } else {
     s0+=706.0;
     s1+=112.0;
    }
   }
  } else {
   if(i55<-0.0032812952995300293){
    if(i46<0.0790012776851654){
     s0+=3879.0;
     s1+=190.0;
    } else {
     s0+=57.0;
     s1+=119.0;
    }
   } else {
    if(i16<0.0058540524914860725){
     s0+=6054.0;
     s1+=1946.0;
    } else {
     s0+=252.0;
     s1+=1069.0;
    }
   }
  }
 } else {
  if(i38<0.0003456164849922061){
   s0+=170.0;
  } else {
   if(i16<0.005925839766860008){
    if(i47<0.0009391958592459559){
     s0+=11.0;
     s1+=135.0;
    } else {
     s0+=125.0;
     s1+=111.0;
    }
   } else {
    if(i30<0.010381422936916351){
     s0+=108.0;
     s1+=926.0;
    } else {
     s0+=3.0;
     s1+=1097.0;
    }
   }
  }
 }
} else {
 if(i16<0.002246198710054159){
  if(i41<1.1657817363739014){
   if(i21<0.0006561279296875){
    s0+=4.0;
   } else {
    s1+=256.0;
   }
  } else {
   if(i0<0.09676876664161682){
    if(i31<1.0016416311264038){
     s0+=605.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i63<-2.9557053494499996e-05){
     s1+=70.0;
    } else {
     s0+=65.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i10<-0.00032448768615722656){
   s0+=21.0;
  } else {
   if(i21<0.0008064508438110352){
    if(i16<0.003166212234646082){
     s0+=75.0;
     s1+=40.0;
    } else {
     s0+=13.0;
     s1+=681.0;
    }
   } else {
    if(i56<-9.275981938117184e-06){
     s0+=1.0;
     s1+=9053.0;
    } else {
     s0+=12.0;
     s1+=218.0;
    }
   }
  }
 }
}
if(i0<0.0817616879940033){
 if(i8<3.93986701965332e-05){
  if(i65<0.0007148704025894403){
   if(i7<1.042891263961792){
    if(i31<1.0005526542663574){
     s0+=52224.0;
     s1+=110.0;
    } else {
     s0+=2405.0;
     s1+=92.0;
    }
   } else {
    if(i34<1.1013743877410889){
     s0+=1964.0;
     s1+=705.0;
    } else {
     s0+=4088.0;
     s1+=93.0;
    }
   }
  } else {
   if(i23<0.9744446277618408){
    if(i35<0.072933129966259){
     s0+=4231.0;
     s1+=77.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i50<-3.555417060852051e-05){
     s0+=2268.0;
     s1+=128.0;
    } else {
     s0+=1548.0;
     s1+=912.0;
    }
   }
  }
 } else {
  if(i16<0.0023817443288862705){
   if(i2<0.07158982753753662){
    if(i5<0.06426012516021729){
     s0+=284.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i51<0.032512784004211426){
     s1+=21.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i49<0.01432541012763977){
    if(i14<0.9988141059875488){
     s0+=80.0;
     s1+=73.0;
    } else {
     s0+=40.0;
     s1+=782.0;
    }
   } else {
    if(i60<-6.318444320640992e-06){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=96.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i8<1.0699033737182617e-05){
  if(i15<0.998518705368042){
   if(i6<-4.206008816254325e-05){
    if(i74<0.011168807744979858){
     s0+=4.0;
    } else {
     s0+=6.0;
     s1+=19.0;
    }
   } else {
    if(i63<0.00017937980010174215){
     s0+=445.0;
    } else {
     s0+=12.0;
     s1+=7.0;
    }
   }
  } else {
   if(i76<1.0114213228225708){
    if(i27<0.0002419536467641592){
     s0+=24.0;
     s1+=11.0;
    } else {
     s0+=97.0;
     s1+=1009.0;
    }
   } else {
    if(i2<0.22449544072151184){
     s0+=636.0;
     s1+=591.0;
    } else {
     s0+=65.0;
     s1+=448.0;
    }
   }
  }
 } else {
  if(i0<0.12486878037452698){
   if(i76<1.03759765625){
    if(i59<0.004365473985671997){
     s0+=46.0;
     s1+=1669.0;
    } else {
     s0+=100.0;
     s1+=19.0;
    }
   } else {
    if(i37<0.0009188452968373895){
     s1+=39.0;
    } else {
     s0+=199.0;
     s1+=8.0;
    }
   }
  } else {
   if(i3<1.0014647245407104){
    if(i69<0.00020678405417129397){
     s0+=55.0;
     s1+=36.0;
    } else {
     s0+=21.0;
     s1+=601.0;
    }
   } else {
    if(i2<0.17274951934814453){
     s0+=34.0;
     s1+=1335.0;
    } else {
     s1+=8422.0;
    }
   }
  }
 }
}
if(i3<1.0024570226669312){
 if(i7<1.0452277660369873){
  if(i24<1.0451585054397583){
   if(i52<-0.0022396743297576904){
    if(i2<0.05544140934944153){
     s0+=1530.0;
     s1+=76.0;
    } else {
     s0+=128.0;
     s1+=53.0;
    }
   } else {
    if(i74<0.02073245868086815){
     s0+=46136.0;
     s1+=24.0;
    } else {
     s0+=6555.0;
     s1+=70.0;
    }
   }
  } else {
   if(i8<3.236532211303711e-05){
    if(i5<0.07009825110435486){
     s0+=7844.0;
     s1+=582.0;
    } else {
     s0+=97.0;
     s1+=176.0;
    }
   } else {
    if(i14<0.9945938587188721){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i6<-4.368963709566742e-05){
   if(i13<1.0071029663085938){
    if(i24<1.1204984188079834){
     s0+=558.0;
     s1+=273.0;
    } else {
     s0+=269.0;
     s1+=874.0;
    }
   } else {
    if(i10<-0.00030177831649780273){
     s0+=16.0;
    } else {
     s0+=65.0;
     s1+=1197.0;
    }
   }
  } else {
   if(i50<-0.00014069676399230957){
    if(i56<-9.369859981234185e-06){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=1771.0;
     s1+=2.0;
    }
   } else {
    if(i55<-0.00047639012336730957){
     s0+=1227.0;
     s1+=1118.0;
    } else {
     s0+=4627.0;
     s1+=1211.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005752444267272949){
  if(i35<0.012997305020689964){
   if(i60<-5.6898556977103e-07){
    if(i11<1.0155237913131714){
     s0+=210.0;
     s1+=46.0;
    } else {
     s1+=155.0;
    }
   } else {
    if(i41<1.0580317974090576){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=199.0;
    }
   }
  } else {
   if(i4<0.000545799732208252){
    if(i65<0.0007179437670856714){
     s1+=13.0;
    } else {
     s0+=4.0;
    }
   } else {
    s1+=1315.0;
   }
  }
 } else {
  if(i21<4.661083221435547e-05){
   if(i38<0.008731629699468613){
    if(i34<1.594835877418518){
     s0+=63.0;
     s1+=491.0;
    } else {
     s0+=97.0;
     s1+=13.0;
    }
   } else {
    if(i69<0.0013345950283110142){
     s0+=13.0;
     s1+=108.0;
    } else {
     s1+=499.0;
    }
   }
  } else {
   if(i30<0.0001956303749466315){
    s0+=2.0;
   } else {
    if(i22<0.9981629252433777){
     s0+=4.0;
     s1+=127.0;
    } else {
     s0+=3.0;
     s1+=8330.0;
    }
   }
  }
 }
}
if(i25<1.0075263977050781){
 if(i7<1.057713270187378){
  if(i39<0.00029620289569720626){
   if(i3<1.0026943683624268){
    if(i62<0.002251114696264267){
     s0+=55516.0;
     s1+=468.0;
    } else {
     s0+=164.0;
     s1+=83.0;
    }
   } else {
    if(i26<1.0021743774414062){
     s1+=73.0;
    } else {
     s0+=11.0;
     s1+=26.0;
    }
   }
  } else {
   if(i11<0.9874355792999268){
    if(i2<0.10501062870025635){
     s0+=5418.0;
     s1+=65.0;
    } else {
     s0+=98.0;
     s1+=59.0;
    }
   } else {
    if(i0<0.08138614892959595){
     s0+=3555.0;
     s1+=777.0;
    } else {
     s0+=96.0;
     s1+=469.0;
    }
   }
  }
 } else {
  if(i3<1.0008735656738281){
   if(i74<0.276669442653656){
    if(i3<0.9968419075012207){
     s0+=1533.0;
     s1+=121.0;
    } else {
     s0+=2718.0;
     s1+=1376.0;
    }
   } else {
    if(i50<-0.00013014674186706543){
     s0+=44.0;
     s1+=8.0;
    } else {
     s0+=37.0;
     s1+=351.0;
    }
   }
  } else {
   if(i42<0.005090325139462948){
    if(i34<1.2392117977142334){
     s0+=6.0;
     s1+=333.0;
    } else {
     s0+=273.0;
     s1+=161.0;
    }
   } else {
    if(i24<1.0983526706695557){
     s0+=73.0;
     s1+=102.0;
    } else {
     s0+=67.0;
     s1+=1760.0;
    }
   }
  }
 }
} else {
 if(i15<1.0018370151519775){
  if(i61<0.9998717308044434){
   if(i16<0.00139084632974118){
    if(i4<0.00029009580612182617){
     s0+=154.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i17<-8.553266525268555e-06){
     s0+=161.0;
     s1+=7.0;
    } else {
     s0+=41.0;
     s1+=2270.0;
    }
   }
  } else {
   if(i43<1.124355673789978){
    s1+=342.0;
   } else {
    if(i18<0.04615013673901558){
     s0+=1368.0;
     s1+=115.0;
    } else {
     s0+=17.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i7<1.0334041118621826){
   if(i19<1.0053789615631104){
    s1+=3.0;
   } else {
    s0+=12.0;
   }
  } else {
   if(i23<1.0051472187042236){
    if(i41<1.2592661380767822){
     s0+=33.0;
     s1+=52.0;
    } else {
     s1+=250.0;
    }
   } else {
    if(i14<0.9998431205749512){
     s0+=30.0;
     s1+=266.0;
    } else {
     s0+=4.0;
     s1+=7003.0;
    }
   }
  }
 }
}
if(i10<0.000444263219833374){
 if(i2<0.0831376314163208){
  if(i52<-0.002064615488052368){
   if(i21<-0.0014686286449432373){
    if(i11<0.9828643798828125){
     s0+=2604.0;
     s1+=25.0;
    } else {
     s0+=510.0;
     s1+=71.0;
    }
   } else {
    if(i63<3.0689247068949044e-05){
     s0+=1706.0;
     s1+=123.0;
    } else {
     s0+=911.0;
     s1+=632.0;
    }
   }
  } else {
   if(i2<0.06640750169754028){
    if(i25<1.0060546398162842){
     s0+=57436.0;
     s1+=421.0;
    } else {
     s0+=1203.0;
     s1+=139.0;
    }
   } else {
    if(i59<-0.00012755393981933594){
     s0+=178.0;
     s1+=219.0;
    } else {
     s0+=3040.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i37<0.00045632405090145767){
   if(i15<1.0005223751068115){
    if(i2<0.09005731344223022){
     s0+=88.0;
     s1+=4.0;
    } else {
     s0+=371.0;
    }
   } else {
    if(i34<1.0763556957244873){
     s0+=4.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i10<-0.0004025697708129883){
    if(i35<0.01357278786599636){
     s0+=75.0;
     s1+=19.0;
    } else {
     s0+=379.0;
    }
   } else {
    if(i66<0.9999029636383057){
     s0+=228.0;
     s1+=2871.0;
    } else {
     s0+=653.0;
     s1+=1173.0;
    }
   }
  }
 }
} else {
 if(i2<0.08454766869544983){
  if(i6<-5.6471377320121974e-05){
   if(i37<0.007027860730886459){
    if(i48<0.0014609992504119873){
     s0+=22.0;
     s1+=680.0;
    } else {
     s0+=44.0;
     s1+=19.0;
    }
   } else {
    if(i48<-0.008741110563278198){
     s0+=27.0;
     s1+=142.0;
    } else {
     s0+=415.0;
     s1+=28.0;
    }
   }
  } else {
   if(i41<1.1480928659439087){
    if(i31<1.0003843307495117){
     s0+=241.0;
    } else {
     s0+=10.0;
     s1+=189.0;
    }
   } else {
    if(i15<1.0029592514038086){
     s0+=719.0;
     s1+=36.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i33<0.008968324400484562){
   if(i40<0.047339677810668945){
    if(i6<-2.8361604563542642e-05){
     s0+=7.0;
     s1+=2336.0;
    } else {
     s0+=5.0;
     s1+=59.0;
    }
   } else {
    if(i3<1.0023704767227173){
     s0+=212.0;
     s1+=140.0;
    } else {
     s0+=57.0;
     s1+=851.0;
    }
   }
  } else {
   if(i60<3.407456824788824e-05){
    if(i0<0.12329819798469543){
     s0+=4.0;
     s1+=150.0;
    } else {
     s0+=2.0;
     s1+=6399.0;
    }
   } else {
    if(i75<0.00020325314835645258){
     s0+=11.0;
    } else {
     s1+=104.0;
    }
   }
  }
 }
}
if(i20<1.0107390880584717){
 if(i17<1.9252300262451172e-05){
  if(i74<0.02527206763625145){
   if(i0<0.0855831503868103){
    if(i6<-4.625340079655871e-05){
     s0+=202.0;
     s1+=109.0;
    } else {
     s0+=53743.0;
     s1+=424.0;
    }
   } else {
    if(i8<-1.7881393432617188e-07){
     s0+=71.0;
     s1+=28.0;
    } else {
     s0+=16.0;
     s1+=169.0;
    }
   }
  } else {
   if(i12<-0.00021979212760925293){
    if(i4<-0.00014474987983703613){
     s0+=8538.0;
     s1+=352.0;
    } else {
     s0+=172.0;
     s1+=119.0;
    }
   } else {
    if(i5<0.05790835618972778){
     s0+=4335.0;
     s1+=1034.0;
    } else {
     s0+=704.0;
     s1+=1249.0;
    }
   }
  }
 } else {
  if(i9<1.0881593227386475){
   if(i12<-0.00023370981216430664){
    if(i62<0.00563281774520874){
     s0+=693.0;
     s1+=36.0;
    } else {
     s0+=73.0;
     s1+=104.0;
    }
   } else {
    if(i37<0.000521427602507174){
     s0+=292.0;
    } else {
     s0+=192.0;
     s1+=1634.0;
    }
   }
  } else {
   if(i43<1.1931172609329224){
    if(i37<0.001961030997335911){
     s1+=2.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i7<1.0973950624465942){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=1126.0;
    }
   }
  }
 }
} else {
 if(i6<-4.222852294333279e-05){
  if(i15<0.9982443451881409){
   s0+=20.0;
  } else {
   if(i3<1.004080057144165){
    if(i17<2.3543834686279297e-05){
     s0+=75.0;
     s1+=1821.0;
    } else {
     s0+=145.0;
     s1+=341.0;
    }
   } else {
    if(i12<3.7729740142822266e-05){
     s0+=29.0;
     s1+=228.0;
    } else {
     s1+=7543.0;
    }
   }
  }
 } else {
  if(i0<0.09582632780075073){
   if(i37<0.0007323022582568228){
    if(i50<3.612041473388672e-05){
     s0+=283.0;
     s1+=42.0;
    } else {
     s0+=26.0;
     s1+=128.0;
    }
   } else {
    if(i8<9.113550186157227e-05){
     s0+=983.0;
     s1+=6.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i34<1.255998969078064){
    if(i37<0.0005111360223963857){
     s0+=52.0;
     s1+=16.0;
    } else {
     s0+=103.0;
     s1+=527.0;
    }
   } else {
    if(i26<1.0163180828094482){
     s0+=49.0;
     s1+=47.0;
    } else {
     s0+=315.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i8<3.629922866821289e-05){
 if(i7<1.0452215671539307){
  if(i1<0.08546668291091919){
   if(i52<-0.0020548999309539795){
    if(i11<0.989699125289917){
     s0+=3178.0;
     s1+=64.0;
    } else {
     s0+=1391.0;
     s1+=445.0;
    }
   } else {
    if(i2<0.07200479507446289){
     s0+=55883.0;
     s1+=240.0;
    } else {
     s0+=1457.0;
     s1+=130.0;
    }
   }
  } else {
   if(i17<-1.5050172805786133e-05){
    s0+=65.0;
   } else {
    if(i50<0.0001646280288696289){
     s0+=7.0;
     s1+=162.0;
    } else {
     s0+=22.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i6<-5.6253080401802436e-05){
   if(i0<0.08139407634735107){
    if(i42<0.002968061016872525){
     s0+=16.0;
     s1+=123.0;
    } else {
     s0+=344.0;
     s1+=84.0;
    }
   } else {
    if(i31<1.0021246671676636){
     s0+=48.0;
     s1+=1343.0;
    } else {
     s0+=26.0;
     s1+=9.0;
    }
   }
  } else {
   if(i2<0.08230835199356079){
    if(i43<1.1037919521331787){
     s0+=1731.0;
     s1+=820.0;
    } else {
     s0+=4844.0;
     s1+=226.0;
    }
   } else {
    if(i57<-0.01792144402861595){
     s0+=1055.0;
     s1+=494.0;
    } else {
     s0+=368.0;
     s1+=1357.0;
    }
   }
  }
 }
} else {
 if(i61<0.9992470741271973){
  s0+=328.0;
 } else {
  if(i18<0.02660762146115303){
   if(i6<-4.6511613618349656e-05){
    if(i2<0.044778794050216675){
     s0+=52.0;
     s1+=95.0;
    } else {
     s0+=128.0;
     s1+=2784.0;
    }
   } else {
    if(i71<1.002440333366394){
     s0+=156.0;
     s1+=20.0;
    } else {
     s0+=12.0;
     s1+=158.0;
    }
   }
  } else {
   if(i6<-4.5551147195510566e-05){
    if(i5<0.02586635947227478){
     s0+=35.0;
     s1+=143.0;
    } else {
     s0+=32.0;
     s1+=8233.0;
    }
   } else {
    if(i43<1.2314128875732422){
     s0+=2.0;
     s1+=85.0;
    } else {
     s0+=19.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i4<0.0005484223365783691){
 if(i1<0.07772868871688843){
  if(i39<0.0002990897628478706){
   if(i13<1.0077778100967407){
    if(i24<1.0451585054397583){
     s0+=49453.0;
     s1+=108.0;
    } else {
     s0+=6688.0;
     s1+=366.0;
    }
   } else {
    if(i75<3.39613325195387e-05){
     s0+=6.0;
     s1+=48.0;
    } else {
     s0+=231.0;
     s1+=62.0;
    }
   }
  } else {
   if(i38<0.0016533960588276386){
    if(i35<0.01218531932681799){
     s0+=3721.0;
     s1+=563.0;
    } else {
     s0+=256.0;
     s1+=637.0;
    }
   } else {
    if(i59<-0.0027060210704803467){
     s0+=1081.0;
     s1+=221.0;
    } else {
     s0+=7401.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i10<-0.0004035532474517822){
   if(i50<-0.00012168288230895996){
    if(i56<-9.521469110040925e-06){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=435.0;
    }
   } else {
    if(i2<0.12919187545776367){
     s0+=42.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i68<-0.004398627206683159){
    if(i37<0.0012132094707340002){
     s0+=461.0;
     s1+=53.0;
    } else {
     s0+=549.0;
     s1+=1329.0;
    }
   } else {
    if(i33<0.0002868868177756667){
     s0+=84.0;
    } else {
     s0+=157.0;
     s1+=2062.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i63<9.144714567810297e-05){
   if(i6<-7.651062333025038e-05){
    if(i47<0.0013344277394935489){
     s0+=1.0;
     s1+=1380.0;
    } else {
     s1+=6563.0;
    }
   } else {
    if(i63<7.087106496328488e-05){
     s0+=2.0;
     s1+=771.0;
    } else {
     s0+=13.0;
     s1+=41.0;
    }
   }
  } else {
   if(i7<1.1223218441009521){
    if(i34<1.5682398080825806){
     s0+=57.0;
     s1+=576.0;
    } else {
     s0+=171.0;
     s1+=27.0;
    }
   } else {
    if(i6<-4.7090321459108964e-05){
     s1+=1889.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i10<0.0007039904594421387){
   if(i12<3.460049629211426e-05){
    s1+=30.0;
   } else {
    if(i47<0.00193595583550632){
     s0+=280.0;
     s1+=1.0;
    } else {
     s0+=44.0;
     s1+=51.0;
    }
   }
  } else {
   if(i30<0.0002754268061835319){
    s0+=22.0;
   } else {
    if(i12<-0.00021898746490478516){
     s0+=4.0;
     s1+=10.0;
    } else {
     s1+=158.0;
    }
   }
  }
 }
}
if(i4<0.0005473494529724121){
 if(i27<0.00031646789284422994){
  if(i18<0.01968834176659584){
   if(i64<-0.0026429295539855957){
    if(i21<-0.0008749663829803467){
     s0+=4.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i25<1.0083773136138916){
     s0+=52548.0;
     s1+=205.0;
    } else {
     s0+=95.0;
     s1+=103.0;
    }
   }
  } else {
   if(i2<0.07353654503822327){
    if(i3<1.0012354850769043){
     s0+=1069.0;
     s1+=28.0;
    } else {
     s0+=49.0;
     s1+=29.0;
    }
   } else {
    if(i60<2.084298466797918e-05){
     s0+=1.0;
     s1+=84.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i5<0.07075187563896179){
   if(i3<0.9967585206031799){
    if(i38<0.0023591318167746067){
     s0+=1312.0;
     s1+=98.0;
    } else {
     s0+=6758.0;
     s1+=51.0;
    }
   } else {
    if(i41<1.1812903881072998){
     s0+=3530.0;
     s1+=1916.0;
    } else {
     s0+=3204.0;
     s1+=218.0;
    }
   }
  } else {
   if(i2<0.11114609241485596){
    if(i46<0.0616682767868042){
     s0+=74.0;
     s1+=331.0;
    } else {
     s0+=1006.0;
     s1+=279.0;
    }
   } else {
    if(i6<-1.1629485015873797e-05){
     s0+=247.0;
     s1+=2063.0;
    } else {
     s0+=469.0;
     s1+=160.0;
    }
   }
  }
 }
} else {
 if(i0<0.05845186114311218){
  if(i49<-0.015030473470687866){
   if(i52<0.0029429197311401367){
    if(i27<0.00019982646335847676){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=25.0;
     s1+=378.0;
    }
   } else {
    s0+=34.0;
   }
  } else {
   if(i6<-4.331935633672401e-05){
    if(i14<1.001037836074829){
     s0+=58.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=42.0;
    }
   } else {
    if(i71<1.002788782119751){
     s0+=254.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i33<0.00033902021823450923){
   s0+=13.0;
  } else {
   if(i32<-0.0005583996535278857){
    if(i11<1.0051238536834717){
     s0+=3.0;
     s1+=710.0;
    } else {
     s1+=6695.0;
    }
   } else {
    if(i16<0.0023753298446536064){
     s0+=68.0;
     s1+=164.0;
    } else {
     s0+=142.0;
     s1+=3671.0;
    }
   }
  }
 }
}
if(i25<1.0066602230072021){
 if(i2<0.08515334129333496){
  if(i64<-0.0014069974422454834){
   if(i3<1.0006260871887207){
    if(i43<1.197464108467102){
     s0+=1649.0;
     s1+=690.0;
    } else {
     s0+=3529.0;
     s1+=139.0;
    }
   } else {
    if(i56<-9.587594831828028e-06){
     s0+=104.0;
     s1+=502.0;
    } else {
     s0+=115.0;
     s1+=14.0;
    }
   }
  } else {
   if(i3<1.0025405883789062){
    if(i67<0.008955667726695538){
     s0+=61440.0;
     s1+=717.0;
    } else {
     s0+=694.0;
     s1+=166.0;
    }
   } else {
    if(i34<1.476589322090149){
     s0+=11.0;
     s1+=103.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i4<-0.0007297098636627197){
   if(i16<0.006009533070027828){
    if(i4<-0.0008778572082519531){
     s0+=521.0;
     s1+=17.0;
    } else {
     s0+=79.0;
     s1+=39.0;
    }
   } else {
    if(i25<0.9436123371124268){
     s0+=13.0;
    } else {
     s0+=10.0;
     s1+=95.0;
    }
   }
  } else {
   if(i16<0.0035780533216893673){
    if(i54<0.01400601863861084){
     s0+=182.0;
     s1+=591.0;
    } else {
     s0+=349.0;
     s1+=100.0;
    }
   } else {
    if(i36<0.09899161010980606){
     s0+=199.0;
     s1+=881.0;
    } else {
     s0+=47.0;
     s1+=1893.0;
    }
   }
  }
 }
} else {
 if(i17<1.913309097290039e-05){
  if(i3<1.0023272037506104){
   if(i47<0.0015741442330181599){
    if(i2<0.08534818887710571){
     s0+=1318.0;
     s1+=157.0;
    } else {
     s0+=467.0;
     s1+=687.0;
    }
   } else {
    if(i71<0.9988975524902344){
     s0+=21.0;
     s1+=76.0;
    } else {
     s0+=15.0;
     s1+=635.0;
    }
   }
  } else {
   if(i66<0.9994630813598633){
    if(i6<-4.1694147512316704e-05){
     s1+=1053.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i73<-4.4135222196928225e-06){
     s0+=3.0;
     s1+=230.0;
    } else {
     s0+=140.0;
     s1+=79.0;
    }
   }
  }
 } else {
  if(i41<1.2590415477752686){
   if(i14<1.0006695985794067){
    if(i69<0.0006205877871252596){
     s0+=125.0;
     s1+=38.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i73<-4.835804702452151e-06){
     s0+=21.0;
     s1+=1739.0;
    } else {
     s0+=28.0;
     s1+=40.0;
    }
   }
  } else {
   s1+=6381.0;
  }
 }
}
if(i4<0.000545799732208252){
 if(i24<1.0495078563690186){
  if(i23<1.0081171989440918){
   if(i64<-0.001270204782485962){
    if(i24<1.040691614151001){
     s0+=1569.0;
     s1+=65.0;
    } else {
     s0+=411.0;
     s1+=180.0;
    }
   } else {
    if(i29<1.0087484121322632){
     s0+=54380.0;
     s1+=190.0;
    } else {
     s0+=49.0;
     s1+=26.0;
    }
   }
  } else {
   if(i26<1.0079820156097412){
    s0+=2.0;
   } else {
    s1+=18.0;
   }
  }
 } else {
  if(i6<-5.8593515859683976e-05){
   if(i11<0.9796841144561768){
    if(i0<0.08558458089828491){
     s0+=740.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=44.0;
    }
   } else {
    if(i2<0.11505118012428284){
     s0+=326.0;
     s1+=354.0;
    } else {
     s0+=5.0;
     s1+=1009.0;
    }
   }
  } else {
   if(i41<1.103413462638855){
    if(i2<0.06857284903526306){
     s0+=2344.0;
     s1+=831.0;
    } else {
     s0+=372.0;
     s1+=1291.0;
    }
   } else {
    if(i6<-3.871785520459525e-05){
     s0+=1061.0;
     s1+=621.0;
    } else {
     s0+=9045.0;
     s1+=992.0;
    }
   }
  }
 }
} else {
 if(i30<0.0002466573496349156){
  if(i55<0.0007765889167785645){
   s0+=193.0;
  } else {
   s1+=12.0;
  }
 } else {
  if(i3<1.004129409790039){
   if(i2<0.1319558322429657){
    if(i43<1.2261788845062256){
     s0+=8.0;
     s1+=402.0;
    } else {
     s0+=326.0;
     s1+=250.0;
    }
   } else {
    if(i3<1.0023404359817505){
     s0+=18.0;
     s1+=308.0;
    } else {
     s0+=5.0;
     s1+=966.0;
    }
   }
  } else {
   if(i12<1.0967254638671875e-05){
    if(i24<1.1245824098587036){
     s0+=35.0;
     s1+=78.0;
    } else {
     s0+=14.0;
     s1+=509.0;
    }
   } else {
    if(i47<0.001400186913087964){
     s0+=7.0;
     s1+=1281.0;
    } else {
     s1+=7878.0;
    }
   }
  }
 }
}
if(i8<3.510713577270508e-05){
 if(i0<0.08208942413330078){
  if(i27<0.0003066955250687897){
   if(i20<1.0116050243377686){
    if(i6<-4.00274402636569e-05){
     s0+=414.0;
     s1+=74.0;
    } else {
     s0+=52962.0;
     s1+=197.0;
    }
   } else {
    if(i23<1.0124223232269287){
     s0+=4.0;
     s1+=52.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i3<0.9965494871139526){
    if(i32<-0.0010676621459424496){
     s1+=3.0;
    } else {
     s0+=7863.0;
     s1+=93.0;
    }
   } else {
    if(i34<1.1039612293243408){
     s0+=2554.0;
     s1+=1194.0;
    } else {
     s0+=4927.0;
     s1+=409.0;
    }
   }
  }
 } else {
  if(i10<-0.00040227174758911133){
   if(i37<0.0068063633516430855){
    if(i37<0.0017427487764507532){
     s0+=388.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i72<0.039529651403427124){
     s1+=15.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i6<-1.4510976143355947e-05){
    if(i54<0.016723811626434326){
     s0+=88.0;
     s1+=2068.0;
    } else {
     s0+=327.0;
     s1+=785.0;
    }
   } else {
    if(i16<0.0017286527436226606){
     s0+=469.0;
     s1+=67.0;
    } else {
     s0+=215.0;
     s1+=322.0;
    }
   }
  }
 }
} else {
 if(i38<0.0003586439706850797){
  s0+=417.0;
 } else {
  if(i18<0.025983285158872604){
   if(i43<1.2261788845062256){
    if(i37<0.003846175270155072){
     s0+=6.0;
     s1+=1618.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i42<0.0034968771506100893){
     s0+=174.0;
     s1+=8.0;
    } else {
     s0+=192.0;
     s1+=1448.0;
    }
   }
  } else {
   if(i35<0.0205608531832695){
    if(i0<0.032380640506744385){
     s0+=38.0;
     s1+=27.0;
    } else {
     s0+=72.0;
     s1+=992.0;
    }
   } else {
    if(i21<-0.0008514523506164551){
     s0+=14.0;
     s1+=503.0;
    } else {
     s1+=7195.0;
    }
   }
  }
 }
}
if(i21<0.0007652044296264648){
 if(i9<1.0436272621154785){
  if(i20<0.9767554998397827){
   if(i46<0.03066191077232361){
    if(i3<0.9993768930435181){
     s0+=2354.0;
     s1+=170.0;
    } else {
     s0+=101.0;
     s1+=200.0;
    }
   } else {
    if(i4<-0.0007965266704559326){
     s0+=137.0;
     s1+=12.0;
    } else {
     s0+=32.0;
     s1+=236.0;
    }
   }
  } else {
   if(i5<0.08101236820220947){
    if(i0<0.08461135625839233){
     s0+=61490.0;
     s1+=1064.0;
    } else {
     s0+=87.0;
     s1+=259.0;
    }
   } else {
    if(i46<0.06702470779418945){
     s0+=5.0;
     s1+=127.0;
    } else {
     s0+=51.0;
     s1+=65.0;
    }
   }
  }
 } else {
  if(i0<0.10373419523239136){
   if(i47<0.0016591963358223438){
    if(i38<0.0017482098191976547){
     s0+=1657.0;
     s1+=463.0;
    } else {
     s0+=2332.0;
     s1+=126.0;
    }
   } else {
    if(i14<0.9958798885345459){
     s0+=1033.0;
     s1+=173.0;
    } else {
     s0+=359.0;
     s1+=705.0;
    }
   }
  } else {
   if(i40<0.06769520044326782){
    if(i56<-7.557341064057255e-08){
     s0+=51.0;
     s1+=2473.0;
    } else {
     s0+=30.0;
     s1+=81.0;
    }
   } else {
    if(i56<-3.0534934012393933e-06){
     s0+=296.0;
     s1+=1023.0;
    } else {
     s0+=457.0;
     s1+=87.0;
    }
   }
  }
 }
} else {
 if(i4<0.000545501708984375){
  if(i1<0.06286510825157166){
   if(i56<-1.281770528294146e-05){
    s1+=48.0;
   } else {
    if(i57<0.005112458951771259){
     s0+=497.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i73<1.1617028121690964e-06){
    if(i34<1.6708848476409912){
     s0+=17.0;
     s1+=539.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=11.0;
   }
  }
 } else {
  if(i6<-4.330423689680174e-05){
   s1+=9179.0;
  } else {
   if(i43<1.2392117977142334){
    s1+=36.0;
   } else {
    s0+=176.0;
   }
  }
 }
}
if(i2<0.08355346322059631){
 if(i12<0.00015494227409362793){
  if(i52<-0.00232502818107605){
   if(i59<0.002024352550506592){
    if(i5<0.030645906925201416){
     s0+=2652.0;
     s1+=531.0;
    } else {
     s0+=382.0;
     s1+=677.0;
    }
   } else {
    if(i58<0.0563921257853508){
     s0+=21.0;
     s1+=18.0;
    } else {
     s0+=2417.0;
     s1+=22.0;
    }
   }
  } else {
   if(i3<1.0025041103363037){
    if(i29<1.006542682647705){
     s0+=60581.0;
     s1+=643.0;
    } else {
     s0+=2594.0;
     s1+=375.0;
    }
   } else {
    if(i45<1.1353518962860107){
     s0+=4.0;
     s1+=174.0;
    } else {
     s0+=105.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i9<1.0326924324035645){
   if(i48<-0.002482295036315918){
    s1+=35.0;
   } else {
    if(i70<0.0030061134602874517){
     s0+=4.0;
     s1+=10.0;
    } else {
     s0+=229.0;
     s1+=7.0;
    }
   }
  } else {
   if(i4<0.0009366869926452637){
    if(i42<0.0023012575693428516){
     s0+=14.0;
     s1+=101.0;
    } else {
     s0+=81.0;
     s1+=1.0;
    }
   } else {
    s1+=376.0;
   }
  }
 }
} else {
 if(i16<0.004687285050749779){
  if(i21<0.0006943047046661377){
   if(i31<0.9993095397949219){
    if(i25<0.9970682859420776){
     s0+=530.0;
     s1+=4.0;
    } else {
     s0+=83.0;
     s1+=7.0;
    }
   } else {
    if(i9<1.0847222805023193){
     s0+=339.0;
     s1+=1014.0;
    } else {
     s0+=711.0;
     s1+=246.0;
    }
   }
  } else {
   if(i48<0.0054544806480407715){
    if(i27<0.0067982980981469154){
     s0+=3.0;
     s1+=1026.0;
    } else {
     s0+=10.0;
     s1+=37.0;
    }
   } else {
    if(i2<0.17361778020858765){
     s0+=33.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i50<-0.0002668797969818115){
   if(i8<-2.8014183044433594e-05){
    s0+=93.0;
   } else {
    s1+=27.0;
   }
  } else {
   if(i60<2.6850393624044955e-05){
    if(i35<0.01647472009062767){
     s0+=120.0;
     s1+=1179.0;
    } else {
     s0+=19.0;
     s1+=9849.0;
    }
   } else {
    if(i32<-0.0002916548401117325){
     s0+=6.0;
     s1+=541.0;
    } else {
     s0+=125.0;
     s1+=103.0;
    }
   }
  }
 }
}
if(i3<1.0024573802947998){
 if(i2<0.08580175042152405){
  if(i7<1.0412344932556152){
   if(i58<0.04630997031927109){
    if(i22<1.002916693687439){
     s0+=52086.0;
     s1+=222.0;
    } else {
     s0+=81.0;
     s1+=21.0;
    }
   } else {
    if(i42<0.0014885745476931334){
     s0+=2499.0;
     s1+=307.0;
    } else {
     s0+=4947.0;
     s1+=33.0;
    }
   }
  } else {
   if(i3<0.9980658292770386){
    if(i15<0.9984381198883057){
     s0+=2151.0;
     s1+=4.0;
    } else {
     s0+=2173.0;
     s1+=219.0;
    }
   } else {
    if(i63<2.5392331735929474e-05){
     s0+=3512.0;
     s1+=367.0;
    } else {
     s0+=1537.0;
     s1+=950.0;
    }
   }
  }
 } else {
  if(i15<0.9980460405349731){
   if(i31<0.9991846084594727){
    s0+=628.0;
   } else {
    if(i72<0.039529651403427124){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i16<0.0017306311056017876){
    if(i43<1.094580888748169){
     s0+=91.0;
     s1+=139.0;
    } else {
     s0+=490.0;
     s1+=92.0;
    }
   } else {
    if(i2<0.12466582655906677){
     s0+=421.0;
     s1+=1200.0;
    } else {
     s0+=153.0;
     s1+=2311.0;
    }
   }
  }
 }
} else {
 if(i14<1.0066018104553223){
  if(i7<1.122573733329773){
   if(i75<9.780886466614902e-05){
    if(i73<-1.085125495592365e-05){
     s0+=47.0;
     s1+=34.0;
    } else {
     s0+=35.0;
     s1+=605.0;
    }
   } else {
    if(i1<0.05240169167518616){
     s0+=125.0;
     s1+=29.0;
    } else {
     s0+=83.0;
     s1+=389.0;
    }
   }
  } else {
   if(i32<-0.00018203805666416883){
    s1+=1437.0;
   } else {
    if(i15<1.0015925168991089){
     s0+=6.0;
    } else {
     s1+=113.0;
    }
   }
  }
 } else {
  if(i56<-1.3748177480010781e-05){
   if(i10<0.0004875063896179199){
    if(i50<0.0001329183578491211){
     s1+=626.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    s1+=7866.0;
   }
  } else {
   if(i41<1.1983051300048828){
    s1+=92.0;
   } else {
    if(i41<1.2927743196487427){
     s0+=72.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   }
  }
 }
}
if(i14<1.0040037631988525){
 if(i0<0.08507966995239258){
  if(i18<0.015766695141792297){
   if(i67<0.011080199852585793){
    if(i52<-0.0022155344486236572){
     s0+=1878.0;
     s1+=302.0;
    } else {
     s0+=55501.0;
     s1+=315.0;
    }
   } else {
    if(i22<1.0006134510040283){
     s0+=868.0;
     s1+=97.0;
    } else {
     s0+=74.0;
     s1+=78.0;
    }
   }
  } else {
   if(i10<-6.780028343200684e-05){
    if(i41<1.1938297748565674){
     s0+=2264.0;
     s1+=315.0;
    } else {
     s0+=5326.0;
     s1+=27.0;
    }
   } else {
    if(i33<0.0011240523308515549){
     s0+=288.0;
     s1+=782.0;
    } else {
     s0+=2905.0;
     s1+=437.0;
    }
   }
  }
 } else {
  if(i16<0.004998667631298304){
   if(i28<1.0846035480499268){
    if(i6<-7.825559805496596e-06){
     s0+=164.0;
     s1+=1208.0;
    } else {
     s0+=296.0;
     s1+=129.0;
    }
   } else {
    if(i1<0.21589422225952148){
     s0+=594.0;
     s1+=59.0;
    } else {
     s0+=185.0;
     s1+=127.0;
    }
   }
  } else {
   if(i15<0.9979122877120972){
    s0+=62.0;
   } else {
    if(i32<-0.00010490957356523722){
     s0+=32.0;
     s1+=2920.0;
    } else {
     s0+=83.0;
     s1+=352.0;
    }
   }
  }
 }
} else {
 if(i7<1.0401725769042969){
  if(i55<-0.0021004676818847656){
   if(i8<2.726912498474121e-05){
    s0+=5.0;
   } else {
    s1+=36.0;
   }
  } else {
   if(i56<-1.687307667452842e-05){
    s1+=48.0;
   } else {
    if(i10<0.0007008910179138184){
     s0+=382.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i35<0.016902334988117218){
   if(i45<1.217149257659912){
    if(i12<9.85860824584961e-05){
     s0+=56.0;
     s1+=111.0;
    } else {
     s0+=15.0;
     s1+=1466.0;
    }
   } else {
    if(i6<-0.0001456635945942253){
     s0+=6.0;
     s1+=418.0;
    } else {
     s0+=241.0;
     s1+=34.0;
    }
   }
  } else {
   if(i2<0.004033207893371582){
    if(i59<-0.006639569997787476){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i76<0.9405382871627808){
     s0+=1.0;
     s1+=299.0;
    } else {
     s1+=7427.0;
    }
   }
  }
 }
}
if(i20<1.0106210708618164){
 if(i10<0.00043654441833496094){
  if(i7<1.0450963973999023){
   if(i2<0.08320280909538269){
    if(i74<0.018615633249282837){
     s0+=49254.0;
     s1+=194.0;
    } else {
     s0+=11851.0;
     s1+=531.0;
    }
   } else {
    if(i3<0.9956783056259155){
     s0+=368.0;
    } else {
     s0+=99.0;
     s1+=226.0;
    }
   }
  } else {
   if(i4<0.00020229816436767578){
    if(i1<0.0659869909286499){
     s0+=4956.0;
     s1+=535.0;
    } else {
     s0+=960.0;
     s1+=1034.0;
    }
   } else {
    if(i66<1.0001518726348877){
     s0+=70.0;
     s1+=475.0;
    } else {
     s0+=210.0;
     s1+=121.0;
    }
   }
  }
 } else {
  if(i1<0.08087888360023499){
   if(i14<1.0011757612228394){
    if(i67<0.014881173148751259){
     s0+=1196.0;
     s1+=119.0;
    } else {
     s0+=31.0;
     s1+=158.0;
    }
   } else {
    if(i27<0.0002009785530390218){
     s0+=87.0;
     s1+=12.0;
    } else {
     s0+=46.0;
     s1+=754.0;
    }
   }
  } else {
   if(i65<0.0007560261874459684){
    if(i34<1.5608327388763428){
     s0+=39.0;
     s1+=244.0;
    } else {
     s0+=54.0;
     s1+=21.0;
    }
   } else {
    if(i59<0.007059037685394287){
     s0+=2.0;
     s1+=1705.0;
    } else {
     s0+=8.0;
     s1+=136.0;
    }
   }
  }
 }
} else {
 if(i12<0.00010246038436889648){
  if(i35<0.024697301909327507){
   if(i30<0.0008797579212114215){
    if(i75<4.168277882854454e-05){
     s0+=68.0;
     s1+=48.0;
    } else {
     s0+=59.0;
     s1+=275.0;
    }
   } else {
    if(i71<1.0091917514801025){
     s0+=1513.0;
     s1+=330.0;
    } else {
     s0+=6.0;
     s1+=55.0;
    }
   }
  } else {
   if(i11<0.9936913251876831){
    if(i1<0.17375808954238892){
     s0+=146.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=149.0;
    }
   } else {
    if(i2<0.08844342827796936){
     s0+=32.0;
     s1+=10.0;
    } else {
     s0+=72.0;
     s1+=1332.0;
    }
   }
  }
 } else {
  if(i21<0.0014293789863586426){
   if(i45<1.1991534233093262){
    if(i1<0.021848291158676147){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=633.0;
    }
   } else {
    if(i56<-1.4107720744505059e-05){
     s1+=419.0;
    } else {
     s0+=187.0;
     s1+=74.0;
    }
   }
  } else {
   s1+=7308.0;
  }
 }
}
if(i4<0.0005484223365783691){
 if(i46<0.06652304530143738){
  if(i0<0.07865282893180847){
   if(i7<1.0436501502990723){
    if(i62<0.0015746578574180603){
     s0+=57137.0;
     s1+=318.0;
    } else {
     s0+=3722.0;
     s1+=331.0;
    }
   } else {
    if(i33<0.0011285454966127872){
     s0+=2360.0;
     s1+=869.0;
    } else {
     s0+=5253.0;
     s1+=370.0;
    }
   }
  } else {
   if(i66<0.997489869594574){
    s0+=70.0;
   } else {
    if(i33<0.00028894905699416995){
     s0+=34.0;
    } else {
     s0+=156.0;
     s1+=1575.0;
    }
   }
  }
 } else {
  if(i10<-0.00041115283966064453){
   if(i53<0.00101805804297328){
    if(i73<-3.1897884582576808e-06){
     s0+=24.0;
     s1+=1.0;
    } else {
     s0+=392.0;
    }
   } else {
    if(i23<0.9629020094871521){
     s0+=14.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i18<0.03445460647344589){
    if(i6<-1.6104029782582074e-05){
     s0+=460.0;
     s1+=602.0;
    } else {
     s0+=748.0;
     s1+=87.0;
    }
   } else {
    if(i69<0.00014149661001283675){
     s0+=64.0;
     s1+=59.0;
    } else {
     s0+=106.0;
     s1+=1168.0;
    }
   }
  }
 }
} else {
 if(i61<0.9991978406906128){
  s0+=179.0;
 } else {
  if(i3<1.0041333436965942){
   if(i63<-8.635600352135953e-06){
    if(i71<1.0006903409957886){
     s0+=6.0;
     s1+=127.0;
    } else {
     s0+=153.0;
     s1+=58.0;
    }
   } else {
    if(i30<0.009028900414705276){
     s0+=196.0;
     s1+=929.0;
    } else {
     s0+=11.0;
     s1+=870.0;
    }
   }
  } else {
   if(i21<-0.0030776262283325195){
    s0+=4.0;
   } else {
    if(i22<0.9963879585266113){
     s0+=11.0;
     s1+=102.0;
    } else {
     s0+=30.0;
     s1+=9650.0;
    }
   }
  }
 }
}
if(i8<3.725290298461914e-05){
 if(i0<0.08208942413330078){
  if(i59<-0.0024043619632720947){
   if(i50<-3.650784492492676e-05){
    if(i2<0.04138907790184021){
     s0+=1172.0;
     s1+=33.0;
    } else {
     s0+=59.0;
     s1+=29.0;
    }
   } else {
    if(i0<0.021826118230819702){
     s0+=778.0;
     s1+=126.0;
    } else {
     s0+=332.0;
     s1+=361.0;
    }
   }
  } else {
   if(i34<1.0856719017028809){
    s0+=37225.0;
   } else {
    if(i3<0.9970020651817322){
     s0+=16947.0;
     s1+=103.0;
    } else {
     s0+=12400.0;
     s1+=1348.0;
    }
   }
  }
 } else {
  if(i72<0.03584927320480347){
   if(i10<-0.0005213022232055664){
    s0+=131.0;
   } else {
    if(i16<0.0016418937593698502){
     s0+=201.0;
     s1+=160.0;
    } else {
     s0+=181.0;
     s1+=2562.0;
    }
   }
  } else {
   if(i6<-1.2283208889130037e-05){
    if(i16<0.007857626304030418){
     s0+=384.0;
     s1+=387.0;
    } else {
     s0+=16.0;
     s1+=299.0;
    }
   } else {
    if(i61<1.0000680685043335){
     s0+=588.0;
     s1+=40.0;
    } else {
     s0+=43.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i24<1.0413084030151367){
  if(i31<1.0009474754333496){
   s0+=337.0;
  } else {
   if(i72<0.0019149184226989746){
    s1+=1.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i2<0.06269580125808716){
   if(i41<1.2160736322402954){
    if(i15<0.9969364404678345){
     s0+=4.0;
    } else {
     s0+=6.0;
     s1+=243.0;
    }
   } else {
    if(i54<-0.011341840028762817){
     s0+=30.0;
     s1+=172.0;
    } else {
     s0+=185.0;
     s1+=24.0;
    }
   }
  } else {
   if(i33<0.009092065505683422){
    if(i11<1.0090234279632568){
     s0+=208.0;
     s1+=1437.0;
    } else {
     s0+=4.0;
     s1+=2521.0;
    }
   } else {
    if(i11<1.0041730403900146){
     s0+=6.0;
     s1+=808.0;
    } else {
     s1+=6333.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i15<1.0019545555114746){
  if(i0<0.08370932936668396){
   if(i43<1.0717806816101074){
    if(i33<0.0002899430110119283){
     s0+=33639.0;
    } else {
     s0+=3051.0;
     s1+=15.0;
    }
   } else {
    if(i64<-0.0010148286819458008){
     s0+=4258.0;
     s1+=815.0;
    } else {
     s0+=23770.0;
     s1+=536.0;
    }
   }
  } else {
   if(i3<0.9955969452857971){
    if(i53<0.0007204985013231635){
     s0+=124.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   } else {
    if(i6<8.1109383245348e-06){
     s0+=38.0;
     s1+=662.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i4<0.00033742189407348633){
   if(i1<0.0966358482837677){
    if(i35<0.03825150430202484){
     s0+=270.0;
     s1+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i63<0.0002760451170615852){
    if(i24<1.0418460369110107){
     s0+=9.0;
    } else {
     s0+=4.0;
     s1+=731.0;
    }
   } else {
    if(i16<0.016777731478214264){
     s0+=20.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i14<1.0023059844970703){
  if(i0<0.10370054841041565){
   if(i6<-1.591270847711712e-05){
    if(i64<0.003658801317214966){
     s0+=947.0;
     s1+=853.0;
    } else {
     s0+=559.0;
     s1+=39.0;
    }
   } else {
    if(i34<1.1013743877410889){
     s0+=965.0;
     s1+=172.0;
    } else {
     s0+=2087.0;
     s1+=49.0;
    }
   }
  } else {
   if(i51<0.07862600684165955){
    if(i41<1.0672621726989746){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=1872.0;
    }
   } else {
    if(i1<0.20762476325035095){
     s0+=552.0;
     s1+=227.0;
    } else {
     s0+=203.0;
     s1+=1130.0;
    }
   }
  }
 } else {
  if(i8<3.081560134887695e-05){
   if(i16<0.0008523136493749917){
    if(i63<-3.4191903978353366e-05){
     s1+=11.0;
    } else {
     s0+=101.0;
     s1+=2.0;
    }
   } else {
    if(i38<0.0019611227326095104){
     s0+=13.0;
     s1+=361.0;
    } else {
     s0+=160.0;
     s1+=284.0;
    }
   }
  } else {
   if(i8<6.097555160522461e-05){
    if(i56<-1.558688200020697e-05){
     s0+=4.0;
     s1+=532.0;
    } else {
     s0+=99.0;
     s1+=322.0;
    }
   } else {
    if(i21<3.1828880310058594e-05){
     s0+=37.0;
     s1+=341.0;
    } else {
     s0+=6.0;
     s1+=8249.0;
    }
   }
  }
 }
}
if(i6<-8.167904161382467e-05){
 if(i7<1.042243480682373){
  if(i60<-9.913394023897126e-06){
   s1+=24.0;
  } else {
   if(i46<0.05287355184555054){
    if(i9<0.9489222764968872){
     s1+=5.0;
    } else {
     s0+=466.0;
     s1+=13.0;
    }
   } else {
    if(i42<0.0049680983647704124){
     s0+=38.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i1<0.017115920782089233){
   if(i23<0.9893778562545776){
    if(i59<-0.012049436569213867){
     s1+=16.0;
    } else {
     s0+=114.0;
     s1+=7.0;
    }
   } else {
    s1+=27.0;
   }
  } else {
   if(i60<2.6889607397606596e-05){
    if(i15<0.9955358505249023){
     s0+=7.0;
    } else {
     s0+=86.0;
     s1+=10172.0;
    }
   } else {
    if(i69<0.0015198343899101019){
     s0+=104.0;
     s1+=56.0;
    } else {
     s1+=353.0;
    }
   }
  }
 }
} else {
 if(i0<0.07844537496566772){
  if(i3<1.0024954080581665){
   if(i54<-0.00612872838973999){
    if(i42<0.0008648711955174804){
     s0+=1029.0;
     s1+=454.0;
    } else {
     s0+=2446.0;
     s1+=272.0;
    }
   } else {
    if(i38<0.00032850218121893704){
     s0+=38432.0;
     s1+=38.0;
    } else {
     s0+=26311.0;
     s1+=1130.0;
    }
   }
  } else {
   if(i38<0.0017747189849615097){
    if(i41<1.2123806476593018){
     s0+=8.0;
     s1+=421.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i44<0.9900424480438232){
     s0+=5.0;
     s1+=35.0;
    } else {
     s0+=205.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i10<-0.0003972351551055908){
   if(i66<1.0010790824890137){
    if(i69<4.063710730406456e-05){
     s1+=1.0;
    } else {
     s0+=482.0;
     s1+=4.0;
    }
   } else {
    if(i42<0.008116651326417923){
     s0+=16.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   }
  } else {
   if(i54<0.013208001852035522){
    if(i51<0.05500870943069458){
     s0+=60.0;
     s1+=2122.0;
    } else {
     s0+=304.0;
     s1+=716.0;
    }
   } else {
    if(i2<0.12464547157287598){
     s0+=709.0;
     s1+=123.0;
    } else {
     s0+=337.0;
     s1+=1048.0;
    }
   }
  }
 }
}
if(i0<0.0834648609161377){
 if(i3<1.002474308013916){
  if(i48<-0.0015513598918914795){
   if(i47<0.006478466093540192){
    if(i4<-0.00032904744148254395){
     s0+=2208.0;
     s1+=182.0;
    } else {
     s0+=1662.0;
     s1+=642.0;
    }
   } else {
    if(i0<0.0016897022724151611){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i53<-8.571830403525382e-05){
    if(i33<0.00116822705604136){
     s0+=63.0;
     s1+=106.0;
    } else {
     s0+=135.0;
     s1+=9.0;
    }
   } else {
    if(i9<1.0401519536972046){
     s0+=60211.0;
     s1+=593.0;
    } else {
     s0+=5039.0;
     s1+=552.0;
    }
   }
  }
 } else {
  if(i41<1.2451565265655518){
   if(i47<0.0005103923031128943){
    if(i76<1.0163005590438843){
     s0+=10.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i36<0.259383887052536){
     s0+=13.0;
     s1+=737.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i16<0.008500462397933006){
    if(i33<0.005812094081193209){
     s0+=202.0;
    } else {
     s0+=18.0;
     s1+=18.0;
    }
   } else {
    if(i35<0.019932007417082787){
     s0+=39.0;
     s1+=56.0;
    } else {
     s1+=154.0;
    }
   }
  }
 }
} else {
 if(i21<0.0003959536552429199){
  if(i16<0.0053073950111866){
   if(i51<0.058495670557022095){
    if(i50<-0.0002613365650177002){
     s0+=88.0;
    } else {
     s0+=58.0;
     s1+=964.0;
    }
   } else {
    if(i18<0.027932675555348396){
     s0+=830.0;
     s1+=128.0;
    } else {
     s0+=312.0;
     s1+=289.0;
    }
   }
  } else {
   if(i32<-0.0001180007093353197){
    if(i16<0.0058171311393380165){
     s0+=38.0;
     s1+=133.0;
    } else {
     s0+=35.0;
     s1+=2093.0;
    }
   } else {
    if(i58<0.22160816192626953){
     s0+=111.0;
     s1+=122.0;
    } else {
     s0+=14.0;
     s1+=262.0;
    }
   }
  }
 } else {
  if(i15<0.9986289739608765){
   s0+=11.0;
  } else {
   if(i16<0.0017015631310641766){
    if(i21<0.0015187859535217285){
     s0+=89.0;
     s1+=14.0;
    } else {
     s1+=144.0;
    }
   } else {
    if(i4<0.0007532835006713867){
     s0+=24.0;
     s1+=1187.0;
    } else {
     s1+=8586.0;
    }
   }
  }
 }
}
if(i3<1.0024182796478271){
 if(i28<1.0406770706176758){
  if(i1<0.07753211259841919){
   if(i18<0.01715037226676941){
    if(i62<0.0016535856993868947){
     s0+=55105.0;
     s1+=301.0;
    } else {
     s0+=2821.0;
     s1+=369.0;
    }
   } else {
    if(i11<0.9900445938110352){
     s0+=6545.0;
     s1+=152.0;
    } else {
     s0+=2095.0;
     s1+=925.0;
    }
   }
  } else {
   if(i3<0.9965636730194092){
    if(i53<0.0006518489681184292){
     s0+=167.0;
     s1+=3.0;
    } else {
     s0+=26.0;
     s1+=41.0;
    }
   } else {
    if(i33<0.0004507095436565578){
     s0+=33.0;
     s1+=10.0;
    } else {
     s0+=46.0;
     s1+=1028.0;
    }
   }
  }
 } else {
  if(i0<0.10244321823120117){
   if(i38<0.0020425990223884583){
    if(i16<0.0022731218487024307){
     s0+=941.0;
     s1+=132.0;
    } else {
     s0+=268.0;
     s1+=353.0;
    }
   } else {
    if(i53<0.0011111476924270391){
     s0+=1884.0;
     s1+=54.0;
    } else {
     s0+=97.0;
     s1+=49.0;
    }
   }
  } else {
   if(i51<0.07745695114135742){
    if(i10<-0.0008150339126586914){
     s0+=12.0;
    } else {
     s0+=31.0;
     s1+=1376.0;
    }
   } else {
    if(i70<0.12982766330242157){
     s0+=693.0;
     s1+=507.0;
    } else {
     s0+=36.0;
     s1+=509.0;
    }
   }
  }
 }
} else {
 if(i2<0.06488978862762451){
  if(i44<0.9968529343605042){
   if(i23<0.9898337721824646){
    if(i19<0.9547982215881348){
     s0+=14.0;
     s1+=79.0;
    } else {
     s0+=29.0;
     s1+=24.0;
    }
   } else {
    if(i49<0.010780543088912964){
     s0+=2.0;
     s1+=244.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.0008074258803389966){
    if(i42<0.0003322378033772111){
     s0+=19.0;
    } else {
     s1+=108.0;
    }
   } else {
    if(i47<0.0018530348315835){
     s0+=194.0;
    } else {
     s0+=10.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i16<0.0022804737091064453){
   if(i6<-5.047259037382901e-05){
    if(i4<0.0005578994750976562){
     s0+=3.0;
     s1+=7.0;
    } else {
     s1+=165.0;
    }
   } else {
    s0+=66.0;
   }
  } else {
   if(i21<3.165006637573242e-05){
    if(i16<0.007223157212138176){
     s0+=73.0;
     s1+=102.0;
    } else {
     s0+=13.0;
     s1+=845.0;
    }
   } else {
    if(i49<0.09104722738265991){
     s0+=1.0;
     s1+=7776.0;
    } else {
     s0+=12.0;
     s1+=1824.0;
    }
   }
  }
 }
}
if(i6<-8.167394844349474e-05){
 if(i3<0.997156023979187){
  if(i20<1.0060909986495972){
   if(i1<0.0927031934261322){
    if(i2<0.05407106876373291){
     s0+=396.0;
     s1+=2.0;
    } else {
     s0+=60.0;
     s1+=7.0;
    }
   } else {
    if(i15<0.9957806468009949){
     s0+=15.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   s1+=14.0;
  }
 } else {
  if(i5<0.018318891525268555){
   if(i63<0.00012755225179716945){
    s1+=101.0;
   } else {
    if(i16<0.018198305740952492){
     s0+=157.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=46.0;
    }
   }
  } else {
   if(i6<-0.00011733791325241327){
    if(i11<0.9907569885253906){
     s0+=22.0;
     s1+=242.0;
    } else {
     s0+=17.0;
     s1+=8455.0;
    }
   } else {
    if(i31<1.001926302909851){
     s0+=68.0;
     s1+=1817.0;
    } else {
     s0+=101.0;
     s1+=208.0;
    }
   }
  }
 }
} else {
 if(i2<0.08355417847633362){
  if(i12<0.00016486644744873047){
   if(i45<1.0557184219360352){
    s0+=42480.0;
   } else {
    if(i38<0.0016350378282368183){
     s0+=9485.0;
     s1+=1738.0;
    } else {
     s0+=16354.0;
     s1+=389.0;
    }
   }
  } else {
   if(i56<-1.491357761551626e-05){
    if(i15<0.9967237710952759){
     s0+=1.0;
    } else {
     s1+=217.0;
    }
   } else {
    if(i75<5.6536471674917266e-05){
     s0+=1.0;
     s1+=23.0;
    } else {
     s0+=114.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<-1.354130290565081e-05){
   if(i34<1.2371783256530762){
    if(i43<1.0570924282073975){
     s0+=9.0;
    } else {
     s0+=14.0;
     s1+=2092.0;
    }
   } else {
    if(i24<1.0819685459136963){
     s0+=179.0;
     s1+=18.0;
    } else {
     s0+=450.0;
     s1+=1243.0;
    }
   }
  } else {
   if(i71<0.997738242149353){
    if(i34<1.639693260192871){
     s0+=569.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i57<-0.01899651437997818){
     s0+=475.0;
     s1+=124.0;
    } else {
     s0+=240.0;
     s1+=261.0;
    }
   }
  }
 }
}
if(i25<1.0066330432891846){
 if(i24<1.057713270187378){
  if(i7<1.042891263961792){
   if(i65<0.000780005007982254){
    if(i36<0.026679329574108124){
     s0+=50385.0;
     s1+=71.0;
    } else {
     s0+=2963.0;
     s1+=89.0;
    }
   } else {
    if(i24<1.041551113128662){
     s0+=2332.0;
     s1+=82.0;
    } else {
     s0+=464.0;
     s1+=184.0;
    }
   }
  } else {
   if(i0<0.07410815358161926){
    if(i22<1.0006556510925293){
     s0+=2255.0;
     s1+=102.0;
    } else {
     s0+=217.0;
     s1+=70.0;
    }
   } else {
    if(i60<1.7864469555206597e-05){
     s0+=66.0;
     s1+=106.0;
    } else {
     s0+=99.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i17<1.6510486602783203e-05){
   if(i7<1.0398383140563965){
    if(i1<0.08034509420394897){
     s0+=4014.0;
     s1+=212.0;
    } else {
     s0+=12.0;
     s1+=94.0;
    }
   } else {
    if(i18<0.023065637797117233){
     s0+=4016.0;
     s1+=682.0;
    } else {
     s0+=1093.0;
     s1+=1740.0;
    }
   }
  } else {
   if(i8<4.07099723815918e-05){
    if(i69<0.0018961112946271896){
     s0+=859.0;
     s1+=380.0;
    } else {
     s0+=3.0;
     s1+=156.0;
    }
   } else {
    if(i35<0.023360634222626686){
     s0+=179.0;
     s1+=499.0;
    } else {
     s0+=4.0;
     s1+=1514.0;
    }
   }
  }
 }
} else {
 if(i47<0.0010394123382866383){
  if(i56<-1.574178895680234e-05){
   if(i14<0.9980934858322144){
    s0+=3.0;
   } else {
    s1+=628.0;
   }
  } else {
   if(i34<1.1919987201690674){
    if(i12<6.967782974243164e-05){
     s0+=437.0;
     s1+=100.0;
    } else {
     s0+=114.0;
     s1+=646.0;
    }
   } else {
    if(i31<0.9999356269836426){
     s0+=188.0;
     s1+=65.0;
    } else {
     s0+=963.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i16<0.00228207022882998){
   if(i8<2.8014183044433594e-05){
    s0+=137.0;
   } else {
    if(i23<1.0114269256591797){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=46.0;
    }
   }
  } else {
   if(i10<-0.0002881288528442383){
    s0+=163.0;
   } else {
    if(i66<1.0013487339019775){
     s0+=46.0;
     s1+=9057.0;
    } else {
     s0+=68.0;
     s1+=632.0;
    }
   }
  }
 }
}
if(i6<-7.074762106640264e-05){
 if(i12<-0.0005221366882324219){
  if(i2<0.11814692616462708){
   if(i48<-0.008406519889831543){
    if(i68<-0.0007274444214999676){
     s0+=3.0;
     s1+=19.0;
    } else {
     s0+=108.0;
     s1+=7.0;
    }
   } else {
    if(i57<0.007982021197676659){
     s0+=481.0;
     s1+=5.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   s1+=25.0;
  }
 } else {
  if(i23<0.9963086247444153){
   if(i0<0.09378477931022644){
    if(i20<0.9772915840148926){
     s0+=139.0;
     s1+=221.0;
    } else {
     s0+=296.0;
     s1+=50.0;
    }
   } else {
    if(i34<1.1458301544189453){
     s0+=8.0;
    } else {
     s0+=50.0;
     s1+=1464.0;
    }
   }
  } else {
   if(i24<1.034472107887268){
    s0+=12.0;
   } else {
    if(i34<1.594835877418518){
     s1+=8054.0;
    } else {
     s0+=34.0;
     s1+=1806.0;
    }
   }
  }
 }
} else {
 if(i20<1.008097529411316){
  if(i2<0.08219248056411743){
   if(i30<0.0003098250017501414){
    if(i55<-0.0009921789169311523){
     s0+=60.0;
     s1+=16.0;
    } else {
     s0+=46676.0;
     s1+=60.0;
    }
   } else {
    if(i4<0.0002066493034362793){
     s0+=18826.0;
     s1+=1303.0;
    } else {
     s0+=250.0;
     s1+=458.0;
    }
   }
  } else {
   if(i17<-1.3738870620727539e-05){
    if(i33<0.009581530466675758){
     s0+=621.0;
     s1+=8.0;
    } else {
     s0+=26.0;
     s1+=13.0;
    }
   } else {
    if(i33<0.00042282984941266477){
     s0+=117.0;
     s1+=11.0;
    } else {
     s0+=399.0;
     s1+=1471.0;
    }
   }
  }
 } else {
  if(i24<1.0851125717163086){
   if(i6<-2.2825293854111806e-05){
    if(i21<-0.0009088516235351562){
     s0+=140.0;
     s1+=28.0;
    } else {
     s0+=96.0;
     s1+=1214.0;
    }
   } else {
    if(i15<1.0014762878417969){
     s0+=686.0;
     s1+=61.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i13<1.0161709785461426){
    if(i6<-4.108460416318849e-05){
     s0+=162.0;
     s1+=228.0;
    } else {
     s0+=1572.0;
     s1+=264.0;
    }
   } else {
    if(i2<0.10168847441673279){
     s0+=146.0;
     s1+=6.0;
    } else {
     s0+=108.0;
     s1+=413.0;
    }
   }
  }
 }
}
if(i13<1.0083014965057373){
 if(i18<0.0227583609521389){
  if(i3<1.0024800300598145){
   if(i2<0.08346298336982727){
    if(i55<-0.0007781386375427246){
     s0+=5285.0;
     s1+=569.0;
    } else {
     s0+=57180.0;
     s1+=406.0;
    }
   } else {
    if(i54<0.01340341567993164){
     s0+=544.0;
     s1+=371.0;
    } else {
     s0+=503.0;
     s1+=45.0;
    }
   }
  } else {
   if(i16<0.0027700604405254126){
    if(i19<1.011999487876892){
     s0+=36.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i52<0.003891289234161377){
     s0+=33.0;
     s1+=394.0;
    } else {
     s0+=36.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i12<-0.00024250149726867676){
   if(i9<1.065650463104248){
    if(i6<-0.00016109862190205604){
     s0+=4.0;
     s1+=37.0;
    } else {
     s0+=4720.0;
     s1+=131.0;
    }
   } else {
    if(i37<0.004988047759979963){
     s0+=341.0;
     s1+=26.0;
    } else {
     s0+=30.0;
     s1+=510.0;
    }
   }
  } else {
   if(i47<0.0013576229102909565){
    if(i43<1.0724589824676514){
     s0+=269.0;
     s1+=1.0;
    } else {
     s0+=648.0;
     s1+=1111.0;
    }
   } else {
    if(i37<0.00044910586439073086){
     s0+=103.0;
    } else {
     s0+=132.0;
     s1+=2375.0;
    }
   }
  }
 }
} else {
 if(i0<0.08275490999221802){
  if(i45<1.1160385608673096){
   if(i6<-2.3511929612141103e-05){
    if(i37<0.0022459733299911022){
     s1+=581.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.0023199489805847406){
     s0+=75.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i22<1.0059820413589478){
    if(i47<0.0021752063184976578){
     s0+=847.0;
     s1+=50.0;
    } else {
     s0+=8.0;
     s1+=34.0;
    }
   } else {
    s1+=47.0;
   }
  }
 } else {
  if(i12<5.632638931274414e-05){
   if(i0<0.13192984461784363){
    if(i40<0.042832016944885254){
     s0+=20.0;
     s1+=225.0;
    } else {
     s0+=211.0;
     s1+=30.0;
    }
   } else {
    if(i16<0.0034739673137664795){
     s0+=111.0;
     s1+=154.0;
    } else {
     s0+=25.0;
     s1+=892.0;
    }
   }
  } else {
   if(i2<0.13562846183776855){
    if(i6<-4.327504939283244e-05){
     s1+=1043.0;
    } else {
     s0+=56.0;
     s1+=119.0;
    }
   } else {
    if(i4<0.0007750391960144043){
     s0+=1.0;
     s1+=557.0;
    } else {
     s1+=7298.0;
    }
   }
  }
 }
}
if(i7<1.0565208196640015){
 if(i29<1.008486032485962){
  if(i10<0.0005866885185241699){
   if(i1<0.07831886410713196){
    if(i27<0.0003066366771236062){
     s0+=53226.0;
     s1+=202.0;
    } else {
     s0+=10588.0;
     s1+=913.0;
    }
   } else {
    if(i41<1.0670123100280762){
     s0+=155.0;
     s1+=5.0;
    } else {
     s0+=186.0;
     s1+=447.0;
    }
   }
  } else {
   if(i8<5.0008296966552734e-05){
    if(i2<0.07742270827293396){
     s0+=321.0;
     s1+=31.0;
    } else {
     s0+=24.0;
     s1+=62.0;
    }
   } else {
    if(i66<1.0029714107513428){
     s0+=1.0;
     s1+=281.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i5<0.04248172044754028){
   if(i41<1.1039612293243408){
    if(i40<0.0001951158046722412){
     s0+=2.0;
     s1+=40.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   } else {
    if(i8<7.87973403930664e-05){
     s0+=148.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i0<0.06341302394866943){
    if(i40<0.01832568645477295){
     s0+=10.0;
     s1+=50.0;
    } else {
     s0+=73.0;
     s1+=3.0;
    }
   } else {
    if(i14<0.9947361946105957){
     s0+=18.0;
    } else {
     s0+=20.0;
     s1+=410.0;
    }
   }
  }
 }
} else {
 if(i3<1.0021288394927979){
  if(i33<0.006365715526044369){
   if(i1<0.0858064591884613){
    if(i24<1.0920991897583008){
     s0+=1575.0;
     s1+=625.0;
    } else {
     s0+=2927.0;
     s1+=166.0;
    }
   } else {
    if(i6<-1.381049514748156e-05){
     s0+=350.0;
     s1+=1259.0;
    } else {
     s0+=686.0;
     s1+=176.0;
    }
   }
  } else {
   if(i46<0.07621368765830994){
    if(i69<0.0017363019287586212){
     s0+=478.0;
     s1+=281.0;
    } else {
     s0+=3.0;
     s1+=138.0;
    }
   } else {
    if(i0<0.11006435751914978){
     s0+=45.0;
     s1+=23.0;
    } else {
     s0+=26.0;
     s1+=935.0;
    }
   }
  }
 } else {
  if(i2<0.07486417889595032){
   if(i59<-0.0014909207820892334){
    if(i29<1.0176169872283936){
     s0+=25.0;
     s1+=400.0;
    } else {
     s0+=24.0;
     s1+=27.0;
    }
   } else {
    if(i30<0.0007490010466426611){
     s0+=3.0;
     s1+=78.0;
    } else {
     s0+=178.0;
     s1+=67.0;
    }
   }
  } else {
   if(i11<1.0085959434509277){
    if(i30<0.009170196950435638){
     s0+=146.0;
     s1+=809.0;
    } else {
     s0+=6.0;
     s1+=1205.0;
    }
   } else {
    if(i6<-4.1939183574868366e-05){
     s1+=8323.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   }
  }
 }
}
if(i8<3.7729740142822266e-05){
 if(i39<0.0003266539133619517){
  if(i19<1.0081983804702759){
   if(i41<1.067622423171997){
    if(i5<0.07899761199951172){
     s0+=37149.0;
     s1+=18.0;
    } else {
     s0+=29.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.08340385556221008){
     s0+=19743.0;
     s1+=493.0;
    } else {
     s0+=105.0;
     s1+=127.0;
    }
   }
  } else {
   if(i43<1.1063789129257202){
    if(i2<0.06413042545318604){
     s0+=116.0;
     s1+=45.0;
    } else {
     s0+=19.0;
     s1+=251.0;
    }
   } else {
    if(i26<1.0152837038040161){
     s0+=396.0;
     s1+=28.0;
    } else {
     s0+=61.0;
     s1+=61.0;
    }
   }
  }
 } else {
  if(i32<-0.00013018060417380184){
   if(i0<0.07225939631462097){
    if(i34<1.100754976272583){
     s0+=218.0;
     s1+=236.0;
    } else {
     s0+=2289.0;
     s1+=179.0;
    }
   } else {
    if(i6<-2.2827636712463573e-05){
     s0+=258.0;
     s1+=2479.0;
    } else {
     s0+=717.0;
     s1+=359.0;
    }
   }
  } else {
   if(i5<0.08102956414222717){
    if(i3<0.9979299306869507){
     s0+=6209.0;
     s1+=178.0;
    } else {
     s0+=2610.0;
     s1+=781.0;
    }
   } else {
    if(i31<0.9992954730987549){
     s0+=143.0;
     s1+=2.0;
    } else {
     s0+=322.0;
     s1+=321.0;
    }
   }
  }
 }
} else {
 if(i43<1.0795294046401978){
  s0+=294.0;
 } else {
  if(i1<0.05852234363555908){
   if(i43<1.2510931491851807){
    if(i50<7.840991020202637e-05){
     s0+=3.0;
    } else {
     s1+=380.0;
    }
   } else {
    if(i65<0.0006428188062272966){
     s0+=149.0;
     s1+=1.0;
    } else {
     s0+=76.0;
     s1+=225.0;
    }
   }
  } else {
   if(i25<1.0209076404571533){
    if(i4<0.0009212493896484375){
     s0+=133.0;
     s1+=930.0;
    } else {
     s0+=56.0;
     s1+=2958.0;
    }
   } else {
    if(i16<0.004307528957724571){
     s0+=8.0;
     s1+=380.0;
    } else {
     s1+=6714.0;
    }
   }
  }
 }
}
if(i1<0.07751694321632385){
 if(i17<1.9252300262451172e-05){
  if(i39<0.00029210245702415705){
   if(i0<0.07851806282997131){
    if(i19<1.0076560974121094){
     s0+=55175.0;
     s1+=395.0;
    } else {
     s0+=599.0;
     s1+=157.0;
    }
   } else {
    if(i51<0.03943526744842529){
     s1+=51.0;
    } else {
     s0+=57.0;
     s1+=9.0;
    }
   }
  } else {
   if(i38<0.0016938874032348394){
    if(i37<0.0004169926978647709){
     s0+=2696.0;
     s1+=58.0;
    } else {
     s0+=1447.0;
     s1+=1235.0;
    }
   } else {
    if(i32<-0.00040259151137433946){
     s0+=776.0;
     s1+=97.0;
    } else {
     s0+=7266.0;
     s1+=159.0;
    }
   }
  }
 } else {
  if(i54<0.003786414861679077){
   if(i7<1.0437077283859253){
    if(i14<1.0010632276535034){
     s0+=245.0;
     s1+=20.0;
    } else {
     s0+=68.0;
     s1+=76.0;
    }
   } else {
    if(i22<1.0015769004821777){
     s0+=119.0;
     s1+=76.0;
    } else {
     s0+=109.0;
     s1+=910.0;
    }
   }
  } else {
   if(i11<1.0042142868041992){
    if(i6<-1.3728840713156387e-06){
     s0+=689.0;
     s1+=19.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<0.0002529621124267578){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=63.0;
    }
   }
  }
 }
} else {
 if(i50<-0.0001361072063446045){
  if(i3<0.9984927177429199){
   if(i37<0.0017664964543655515){
    if(i22<0.9983181953430176){
     s0+=479.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i10<-0.00044798851013183594){
     s0+=19.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i1<0.0816388726234436){
    s0+=2.0;
   } else {
    s1+=102.0;
   }
  }
 } else {
  if(i33<0.00645595695823431){
   if(i51<0.058077067136764526){
    if(i15<0.998468816280365){
     s0+=9.0;
    } else {
     s0+=91.0;
     s1+=3043.0;
    }
   } else {
    if(i16<0.003219333942979574){
     s0+=845.0;
     s1+=274.0;
    } else {
     s0+=228.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i66<1.0021452903747559){
    if(i17<-1.3649463653564453e-05){
     s0+=8.0;
     s1+=6.0;
    } else {
     s0+=44.0;
     s1+=8849.0;
    }
   } else {
    if(i5<0.12961101531982422){
     s0+=92.0;
     s1+=81.0;
    } else {
     s1+=294.0;
    }
   }
  }
 }
}
if(i12<0.00011557340621948242){
 if(i46<0.06782910227775574){
  if(i15<1.0018501281738281){
   if(i19<1.0067529678344727){
    if(i0<0.0817616879940033){
     s0+=65710.0;
     s1+=1520.0;
    } else {
     s0+=154.0;
     s1+=896.0;
    }
   } else {
    if(i0<0.07903033494949341){
     s0+=1928.0;
     s1+=302.0;
    } else {
     s0+=82.0;
     s1+=515.0;
    }
   }
  } else {
   if(i1<0.0808255672454834){
    if(i3<1.0029250383377075){
     s0+=648.0;
     s1+=168.0;
    } else {
     s0+=61.0;
     s1+=313.0;
    }
   } else {
    if(i51<0.05693727731704712){
     s1+=595.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i38<0.010469114407896996){
   if(i35<0.025758404284715652){
    if(i16<0.00553995743393898){
     s0+=1362.0;
     s1+=501.0;
    } else {
     s0+=129.0;
     s1+=281.0;
    }
   } else {
    if(i11<0.983208179473877){
     s0+=77.0;
     s1+=21.0;
    } else {
     s0+=161.0;
     s1+=827.0;
    }
   }
  } else {
   if(i21<-0.005256384611129761){
    if(i5<0.12512263655662537){
     s0+=27.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i10<-0.00040838122367858887){
     s0+=4.0;
    } else {
     s0+=10.0;
     s1+=1159.0;
    }
   }
  }
 }
} else {
 if(i11<1.009682297706604){
  if(i30<0.0002971171052195132){
   if(i25<1.0088088512420654){
    if(i15<1.0021597146987915){
     s0+=395.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i74<0.017418842762708664){
     s1+=56.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i53<9.680694347480312e-06){
    if(i38<0.0019160471856594086){
     s0+=36.0;
     s1+=244.0;
    } else {
     s0+=200.0;
     s1+=51.0;
    }
   } else {
    if(i61<0.9974015951156616){
     s0+=12.0;
    } else {
     s0+=55.0;
     s1+=918.0;
    }
   }
  }
 } else {
  if(i39<0.00019727926701307297){
   if(i41<1.25206458568573){
    if(i12<0.0001609325408935547){
     s0+=7.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i47<0.0007117419736459851){
     s0+=36.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i66<1.0016226768493652){
    if(i4<0.00018528103828430176){
     s0+=4.0;
     s1+=16.0;
    } else {
     s0+=12.0;
     s1+=8359.0;
    }
   } else {
    if(i56<-1.6432068150606938e-05){
     s1+=250.0;
    } else {
     s0+=41.0;
    }
   }
  }
 }
}
if(i14<1.003873348236084){
 if(i16<0.005023413337767124){
  if(i0<0.07829827070236206){
   if(i18<0.022253451868891716){
    if(i64<-0.0013803541660308838){
     s0+=2679.0;
     s1+=509.0;
    } else {
     s0+=57235.0;
     s1+=366.0;
    }
   } else {
    if(i23<0.9868817329406738){
     s0+=2398.0;
     s1+=112.0;
    } else {
     s0+=1054.0;
     s1+=527.0;
    }
   }
  } else {
   if(i28<1.0846035480499268){
    if(i1<0.09329304099082947){
     s0+=580.0;
     s1+=360.0;
    } else {
     s0+=231.0;
     s1+=1046.0;
    }
   } else {
    if(i43<1.253311276435852){
     s0+=372.0;
     s1+=150.0;
    } else {
     s0+=468.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i7<1.0640654563903809){
   if(i11<1.0002717971801758){
    if(i43<1.2335381507873535){
     s0+=218.0;
     s1+=224.0;
    } else {
     s0+=4377.0;
     s1+=159.0;
    }
   } else {
    if(i71<0.9989625215530396){
     s0+=17.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=256.0;
    }
   }
  } else {
   if(i5<0.04453235864639282){
    if(i16<0.016426298767328262){
     s0+=358.0;
     s1+=147.0;
    } else {
     s0+=1.0;
     s1+=64.0;
    }
   } else {
    if(i15<0.9981197118759155){
     s0+=62.0;
    } else {
     s0+=182.0;
     s1+=3194.0;
    }
   }
  }
 }
} else {
 if(i16<0.0016502923099324107){
  if(i56<-1.5752373656141572e-05){
   s1+=80.0;
  } else {
   if(i45<1.0848394632339478){
    if(i31<1.00005304813385){
     s1+=36.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i51<0.10782632231712341){
     s0+=491.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i17<-7.271766662597656e-06){
   if(i27<0.051779307425022125){
    s0+=102.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i6<-4.232256469549611e-05){
    if(i0<0.005473315715789795){
     s0+=14.0;
     s1+=21.0;
    } else {
     s0+=50.0;
     s1+=9773.0;
    }
   } else {
    if(i42<0.0011785500682890415){
     s1+=77.0;
    } else {
     s0+=111.0;
     s1+=68.0;
    }
   }
  }
 }
}
if(i1<0.08162686228752136){
 if(i23<1.0060608386993408){
  if(i4<0.0006022751331329346){
   if(i64<-0.0013785362243652344){
    if(i11<0.9874285459518433){
     s0+=3463.0;
     s1+=125.0;
    } else {
     s0+=1970.0;
     s1+=764.0;
    }
   } else {
    if(i18<0.021664077416062355){
     s0+=57901.0;
     s1+=372.0;
    } else {
     s0+=3928.0;
     s1+=529.0;
    }
   }
  } else {
   if(i49<-0.001090019941329956){
    if(i64<-0.00033602118492126465){
     s0+=25.0;
     s1+=316.0;
    } else {
     s0+=51.0;
     s1+=37.0;
    }
   } else {
    if(i5<0.034257471561431885){
     s0+=65.0;
     s1+=1.0;
    } else {
     s0+=88.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i0<0.06514155864715576){
   if(i21<0.0014166831970214844){
    if(i56<-1.4939563698135316e-05){
     s0+=111.0;
     s1+=163.0;
    } else {
     s0+=1673.0;
     s1+=67.0;
    }
   } else {
    if(i31<1.000476598739624){
     s0+=25.0;
     s1+=13.0;
    } else {
     s1+=175.0;
    }
   }
  } else {
   if(i68<-0.003822050057351589){
    if(i24<1.0760445594787598){
     s1+=6.0;
    } else {
     s0+=97.0;
     s1+=5.0;
    }
   } else {
    if(i56<-9.327754924015608e-06){
     s0+=40.0;
     s1+=730.0;
    } else {
     s0+=78.0;
     s1+=60.0;
    }
   }
  }
 }
} else {
 if(i31<0.9989262819290161){
  if(i24<1.398578405380249){
   if(i6<-4.225862357998267e-05){
    if(i63<4.874265141552314e-05){
     s0+=16.0;
    } else {
     s1+=6.0;
    }
   } else {
    s0+=381.0;
   }
  } else {
   s1+=11.0;
  }
 } else {
  if(i8<3.36766242980957e-05){
   if(i1<0.10640496015548706){
    if(i59<0.003569185733795166){
     s0+=237.0;
     s1+=733.0;
    } else {
     s0+=394.0;
     s1+=53.0;
    }
   } else {
    if(i49<0.07950755953788757){
     s0+=63.0;
     s1+=1633.0;
    } else {
     s0+=376.0;
     s1+=669.0;
    }
   }
  } else {
   if(i12<-8.696317672729492e-05){
    if(i47<0.003292527049779892){
     s0+=93.0;
     s1+=199.0;
    } else {
     s0+=10.0;
     s1+=513.0;
    }
   } else {
    if(i56<-1.4638400898547843e-05){
     s0+=28.0;
     s1+=9495.0;
    } else {
     s0+=33.0;
     s1+=361.0;
    }
   }
  }
 }
}
if(i1<0.07886061072349548){
 if(i22<1.0027351379394531){
  if(i30<0.0003140369663015008){
   if(i7<1.0487183332443237){
    if(i11<1.0054314136505127){
     s0+=46604.0;
     s1+=36.0;
    } else {
     s0+=83.0;
     s1+=19.0;
    }
   } else {
    if(i35<0.002873440505936742){
     s0+=246.0;
     s1+=8.0;
    } else {
     s0+=222.0;
     s1+=72.0;
    }
   }
  } else {
   if(i10<-0.00012356042861938477){
    if(i14<0.99422687292099){
     s0+=9522.0;
     s1+=76.0;
    } else {
     s0+=3075.0;
     s1+=359.0;
    }
   } else {
    if(i30<0.0015040948055684566){
     s0+=4228.0;
     s1+=1386.0;
    } else {
     s0+=3955.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i63<0.00012999458704143763){
   if(i17<1.9490718841552734e-05){
    if(i6<-4.302287561586127e-05){
     s0+=21.0;
     s1+=99.0;
    } else {
     s0+=230.0;
     s1+=43.0;
    }
   } else {
    if(i39<0.0001522879465483129){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=53.0;
     s1+=871.0;
    }
   }
  } else {
   if(i4<0.0006222724914550781){
    if(i71<1.0172321796417236){
     s0+=829.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i7<1.0999420881271362){
     s0+=56.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i50<-0.0002537667751312256){
  if(i22<0.9993113279342651){
   if(i50<-0.00025719404220581055){
    s0+=380.0;
   } else {
    if(i22<0.9950570464134216){
     s1+=1.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   s1+=32.0;
  }
 } else {
  if(i43<1.3317832946777344){
   if(i57<-0.01943986490368843){
    if(i5<0.17009180784225464){
     s0+=602.0;
     s1+=204.0;
    } else {
     s0+=162.0;
     s1+=499.0;
    }
   } else {
    if(i30<0.0002849340671673417){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=274.0;
     s1+=3702.0;
    }
   }
  } else {
   if(i1<0.10273474454879761){
    if(i24<1.0882463455200195){
     s0+=144.0;
     s1+=23.0;
    } else {
     s0+=36.0;
     s1+=177.0;
    }
   } else {
    if(i12<-4.4405460357666016e-06){
     s0+=74.0;
     s1+=1645.0;
    } else {
     s0+=5.0;
     s1+=7703.0;
    }
   }
  }
 }
}
if(i4<0.0005462765693664551){
 if(i24<1.0495078563690186){
  if(i38<0.000354638381395489){
   if(i62<0.0018187164096161723){
    s0+=37856.0;
   } else {
    if(i71<1.0006213188171387){
     s0+=359.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i54<-0.004339069128036499){
    if(i42<0.0010007125092670321){
     s0+=380.0;
     s1+=138.0;
    } else {
     s0+=333.0;
     s1+=2.0;
    }
   } else {
    if(i17<1.0311603546142578e-05){
     s0+=17095.0;
     s1+=194.0;
    } else {
     s0+=458.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i7<1.0401363372802734){
   if(i37<0.001446354202926159){
    if(i2<0.06980463862419128){
     s0+=1876.0;
     s1+=205.0;
    } else {
     s0+=64.0;
     s1+=159.0;
    }
   } else {
    if(i10<0.000615537166595459){
     s0+=3696.0;
     s1+=19.0;
    } else {
     s0+=113.0;
     s1+=15.0;
    }
   }
  } else {
   if(i70<0.12250320613384247){
    if(i0<0.07556551694869995){
     s0+=6848.0;
     s1+=1163.0;
    } else {
     s0+=1529.0;
     s1+=2634.0;
    }
   } else {
    if(i10<-0.0003139972686767578){
     s0+=65.0;
     s1+=4.0;
    } else {
     s0+=96.0;
     s1+=785.0;
    }
   }
  }
 }
} else {
 if(i45<1.0590304136276245){
  s0+=166.0;
 } else {
  if(i4<0.0009405314922332764){
   if(i1<0.05852234363555908){
    if(i45<1.1341700553894043){
     s1+=118.0;
    } else {
     s0+=177.0;
     s1+=30.0;
    }
   } else {
    if(i5<0.1400693655014038){
     s0+=132.0;
     s1+=645.0;
    } else {
     s0+=7.0;
     s1+=775.0;
    }
   }
  } else {
   if(i11<1.0063384771347046){
    if(i35<0.018865540623664856){
     s0+=96.0;
     s1+=146.0;
    } else {
     s0+=6.0;
     s1+=1347.0;
    }
   } else {
    if(i12<-1.9609928131103516e-05){
     s0+=1.0;
     s1+=27.0;
    } else {
     s1+=8417.0;
    }
   }
  }
 }
}
if(i25<1.0066330432891846){
 if(i53<0.0003381076385267079){
  if(i3<1.0025070905685425){
   if(i2<0.08607542514801025){
    if(i39<0.00031783594749867916){
     s0+=54625.0;
     s1+=347.0;
    } else {
     s0+=3996.0;
     s1+=472.0;
    }
   } else {
    if(i8<-3.9130449295043945e-05){
     s0+=328.0;
     s1+=11.0;
    } else {
     s0+=391.0;
     s1+=481.0;
    }
   }
  } else {
   if(i37<0.001545920385979116){
    if(i39<0.00016942701768130064){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=171.0;
    }
   } else {
    if(i12<0.00013184547424316406){
     s0+=17.0;
     s1+=73.0;
    } else {
     s0+=27.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i8<-1.6987323760986328e-05){
   if(i34<1.255998969078064){
    if(i1<0.06773942708969116){
     s0+=1771.0;
     s1+=310.0;
    } else {
     s0+=166.0;
     s1+=248.0;
    }
   } else {
    if(i7<1.082028865814209){
     s0+=5567.0;
     s1+=55.0;
    } else {
     s0+=705.0;
     s1+=245.0;
    }
   }
  } else {
   if(i61<0.9994510412216187){
    if(i70<0.14914646744728088){
     s0+=177.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i5<0.097339928150177){
     s0+=1224.0;
     s1+=1503.0;
    } else {
     s0+=86.0;
     s1+=2050.0;
    }
   }
  }
 }
} else {
 if(i0<0.0704529881477356){
  if(i42<0.0011054519563913345){
   if(i12<8.863210678100586e-05){
    if(i15<1.000569462776184){
     s0+=217.0;
     s1+=30.0;
    } else {
     s1+=34.0;
    }
   } else {
    if(i24<1.044520378112793){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=287.0;
    }
   }
  } else {
   if(i56<-3.062727046199143e-05){
    s1+=41.0;
   } else {
    if(i53<0.00036376211210153997){
     s0+=1239.0;
     s1+=23.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i16<0.00174692552536726){
   if(i63<-2.8690265025943518e-05){
    if(i23<1.0061113834381104){
     s0+=1.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i33<0.000476521672680974){
     s0+=6.0;
     s1+=35.0;
    } else {
     s0+=378.0;
     s1+=8.0;
    }
   }
  } else {
   if(i3<0.9985637664794922){
    if(i61<0.9996439218521118){
     s0+=81.0;
     s1+=3.0;
    } else {
     s0+=23.0;
     s1+=94.0;
    }
   } else {
    if(i2<0.0820380449295044){
     s0+=71.0;
     s1+=259.0;
    } else {
     s0+=134.0;
     s1+=10053.0;
    }
   }
  }
 }
}
if(i7<1.057713270187378){
 if(i11<1.0045348405838013){
  if(i2<0.08244869112968445){
   if(i33<0.00031141642830334604){
    if(i10<8.481740951538086e-05){
     s0+=32137.0;
    } else {
     s0+=4791.0;
     s1+=8.0;
    }
   } else {
    if(i43<1.0991880893707275){
     s0+=5194.0;
     s1+=914.0;
    } else {
     s0+=21771.0;
     s1+=286.0;
    }
   }
  } else {
   if(i61<0.9994330406188965){
    if(i10<-0.0004121065139770508){
     s0+=251.0;
    } else {
     s0+=17.0;
     s1+=3.0;
    }
   } else {
    if(i3<0.9954978227615356){
     s0+=111.0;
     s1+=16.0;
    } else {
     s0+=201.0;
     s1+=691.0;
    }
   }
  }
 } else {
  if(i33<0.0011708507081493735){
   if(i33<0.00028729147743433714){
    s0+=7.0;
   } else {
    if(i7<1.0340216159820557){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=422.0;
    }
   }
  } else {
   if(i17<2.288818359375e-05){
    if(i13<1.0148510932922363){
     s0+=464.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    s1+=152.0;
   }
  }
 }
} else {
 if(i0<0.08537361025810242){
  if(i54<0.008031070232391357){
   if(i4<0.000485837459564209){
    if(i45<1.1036889553070068){
     s0+=636.0;
     s1+=504.0;
    } else {
     s0+=2485.0;
     s1+=277.0;
    }
   } else {
    if(i57<-0.010204536840319633){
     s0+=46.0;
     s1+=29.0;
    } else {
     s0+=105.0;
     s1+=765.0;
    }
   }
  } else {
   if(i24<1.0577436685562134){
    s1+=3.0;
   } else {
    if(i45<1.0778207778930664){
     s0+=34.0;
     s1+=22.0;
    } else {
     s0+=1535.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i16<0.004640540108084679){
   if(i72<0.031843602657318115){
    if(i64<0.004288196563720703){
     s0+=116.0;
     s1+=1209.0;
    } else {
     s0+=187.0;
     s1+=143.0;
    }
   } else {
    if(i3<1.0033962726593018){
     s0+=742.0;
     s1+=241.0;
    } else {
     s0+=2.0;
     s1+=123.0;
    }
   }
  } else {
   if(i31<0.9988064169883728){
    if(i10<-0.00044927000999450684){
     s0+=76.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i1<0.1153235137462616){
     s0+=122.0;
     s1+=905.0;
    } else {
     s0+=26.0;
     s1+=10435.0;
    }
   }
  }
 }
}
if(i0<0.08203768730163574){
 if(i49<-0.02901419997215271){
  if(i4<0.0003007650375366211){
   if(i50<-3.7789344787597656e-05){
    if(i71<1.0004496574401855){
     s0+=1089.0;
     s1+=50.0;
    } else {
     s0+=66.0;
     s1+=20.0;
    }
   } else {
    if(i45<1.1034480333328247){
     s0+=337.0;
     s1+=309.0;
    } else {
     s0+=766.0;
     s1+=145.0;
    }
   }
  } else {
   if(i64<0.002816915512084961){
    if(i30<0.00031389007926918566){
     s0+=16.0;
    } else {
     s0+=37.0;
     s1+=528.0;
    }
   } else {
    s0+=36.0;
   }
  }
 } else {
  if(i4<0.0007247328758239746){
   if(i24<1.0475225448608398){
    if(i48<-0.0015489459037780762){
     s0+=605.0;
     s1+=63.0;
    } else {
     s0+=54091.0;
     s1+=170.0;
    }
   } else {
    if(i27<0.0017687324434518814){
     s0+=8320.0;
     s1+=1191.0;
    } else {
     s0+=3736.0;
     s1+=73.0;
    }
   }
  } else {
   if(i45<1.1353518962860107){
    if(i37<0.00036535857361741364){
     s0+=1.0;
    } else {
     s1+=389.0;
    }
   } else {
    if(i65<0.0013272101059556007){
     s0+=154.0;
     s1+=12.0;
    } else {
     s0+=31.0;
     s1+=39.0;
    }
   }
  }
 }
} else {
 if(i3<1.001499056816101){
  if(i51<0.058552324771881104){
   if(i66<0.9956916570663452){
    s0+=78.0;
   } else {
    if(i17<-1.8477439880371094e-05){
     s0+=11.0;
    } else {
     s0+=56.0;
     s1+=1713.0;
    }
   }
  } else {
   if(i15<0.9985139966011047){
    if(i60<4.3127940443810076e-05){
     s0+=336.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i18<0.03651725500822067){
     s0+=861.0;
     s1+=429.0;
    } else {
     s0+=102.0;
     s1+=809.0;
    }
   }
  }
 } else {
  if(i12<6.282329559326172e-05){
   if(i24<1.1232359409332275){
    if(i9<1.0874089002609253){
     s0+=66.0;
     s1+=425.0;
    } else {
     s0+=48.0;
     s1+=4.0;
    }
   } else {
    if(i16<0.001659228466451168){
     s0+=11.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i43<1.2570146322250366){
    if(i7<1.239650011062622){
     s0+=30.0;
     s1+=1794.0;
    } else {
     s0+=6.0;
    }
   } else {
    s1+=7949.0;
   }
  }
 }
}
if(i28<1.0406770706176758){
 if(i11<1.00618577003479){
  if(i8<3.892183303833008e-05){
   if(i64<-0.0014193356037139893){
    if(i8<-1.7702579498291016e-05){
     s0+=3820.0;
     s1+=428.0;
    } else {
     s0+=1204.0;
     s1+=831.0;
    }
   } else {
    if(i74<0.023700416088104248){
     s0+=52423.0;
     s1+=323.0;
    } else {
     s0+=8797.0;
     s1+=972.0;
    }
   }
  } else {
   if(i45<1.0577372312545776){
    s0+=279.0;
   } else {
    if(i63<0.0002625251654535532){
     s0+=28.0;
     s1+=747.0;
    } else {
     s0+=27.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i3<1.004150152206421){
   if(i33<0.0013735308311879635){
    if(i33<0.001321583753451705){
     s1+=257.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   } else {
    if(i61<0.9998857975006104){
     s0+=12.0;
     s1+=72.0;
    } else {
     s0+=426.0;
     s1+=23.0;
    }
   }
  } else {
   s1+=1118.0;
  }
 }
} else {
 if(i4<0.0004442930221557617){
  if(i14<1.0013091564178467){
   if(i2<0.1126708984375){
    if(i45<1.1040328741073608){
     s0+=954.0;
     s1+=330.0;
    } else {
     s0+=1961.0;
     s1+=123.0;
    }
   } else {
    if(i69<0.0004359482554718852){
     s0+=550.0;
     s1+=483.0;
    } else {
     s0+=124.0;
     s1+=773.0;
    }
   }
  } else {
   if(i41<1.1506553888320923){
    if(i38<0.00028681603725999594){
     s0+=36.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=333.0;
    }
   } else {
    if(i74<0.1253156065940857){
     s0+=220.0;
     s1+=87.0;
    } else {
     s0+=15.0;
     s1+=200.0;
    }
   }
  }
 } else {
  if(i3<1.0040180683135986){
   if(i35<0.023330170661211014){
    if(i45<1.150278091430664){
     s0+=14.0;
     s1+=297.0;
    } else {
     s0+=287.0;
     s1+=84.0;
    }
   } else {
    if(i18<0.00908528920263052){
     s0+=10.0;
     s1+=14.0;
    } else {
     s0+=12.0;
     s1+=1085.0;
    }
   }
  } else {
   if(i25<0.9920075535774231){
    if(i18<0.042761363089084625){
     s0+=26.0;
     s1+=39.0;
    } else {
     s1+=326.0;
    }
   } else {
    if(i25<1.0149810314178467){
     s0+=16.0;
     s1+=995.0;
    } else {
     s0+=1.0;
     s1+=6961.0;
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
