/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = difference_of_gaussian=15 laplace_box_of_gaussian_blur=15 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 difference_of_gaussian=20 laplace_box_of_gaussian_blur=20 mean_box=15 sobel_of_gaussian_blur=10 gaussian_blur=3 gaussian_blur=2 gaussian_blur=5 median_box=5 gaussian_blur=15 mean_box=3 median_box=3 top_hat_box=15 mean_box=5 top_hat_box=30 sobel_of_gaussian_blur=30 sobel_of_gaussian_blur=15 laplace_box_of_gaussian_blur=10 sobel_of_gaussian_blur=5 top_hat_box=20 mean_box=2 variance_box=30 maximum_box=3 maximum_box=30 mean_box=10 difference_of_gaussian=30 variance_box=20 small_hessian_eigenvalue_of_gaussian_blur=5 maximum_box=20 variance_box=10 difference_of_gaussian=10 maximum_box=15 maximum_box=2 top_hat_box=10 variance_box=15 sobel_of_gaussian_blur=20 gaussian_blur=20 maximum_box=5 maximum_box=10 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=3 gaussian_blur=1 mean_box=20 variance_box=3 large_hessian_eigenvalue_of_gaussian_blur=10 laplace_box_of_gaussian_blur=30 mean_box=1 small_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_median_box=5 small_hessian_eigenvalue_of_gaussian_blur=30 sobel_of_gaussian_blur=2 variance_box=5 variance_box=2 small_hessian_eigenvalue_of_gaussian_blur=20 gaussian_blur=30 mean_box=30 large_hessian_eigenvalue_of_gaussian_blur=3 large_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=5 variance_box=1 small_hessian_eigenvalue_of_gaussian_blur=3 maximum_box=1 large_hessian_eigenvalue_of_gaussian_blur=20 sobel_of_median_box=3 laplace_box_of_gaussian_blur=5 difference_of_gaussian=5 sobel_of_gaussian_blur=1 top_hat_box=5 large_hessian_eigenvalue_of_gaussian_blur=30 laplace_box_of_gaussian_blur=1 difference_of_gaussian=3 large_hessian_eigenvalue_of_gaussian_blur=1 top_hat_box=2 difference_of_gaussian=1 laplace_box_of_gaussian_blur=2
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 78
max_depth = 5
num_trees = 250
feature_importances = 0.07122617928411902,0.09404145531533764,0.06421262725705626,0.09267776824167018,0.06366844429202519,0.05813560883854711,0.020255761232449158,0.04441892109813566,0.021184576873037847,0.027428091542622025,0.028799444682856685,0.04046408700618512,0.047529661816765024,0.018859141098166884,0.008932847907748538,0.011845281483879614,0.014604801937341021,0.004464828860143775,0.01959531487015482,0.014866718765206217,0.012893779127064532,0.013077927483950681,0.017092112881425165,0.004074847800091697,0.011004882367859584,0.01024150493243448,0.00923476120279921,0.015732493203270994,0.005723310610269747,0.005719879755099666,0.001889143963133537,0.0072164512572531194,0.004255549445368468,0.016364431880161394,0.0052807049415796335,0.005545506825591499,0.004407315740947184,0.0054843062999290005,0.005562918632407696,0.0019671769093568816,0.008851139841881168,0.00545726276218212,0.0026646931358942304,0.0038158429161096324,0.008808769787934234,0.003083141114124077,0.002730929662145621,0.005194312693495979,0.00224686526855846,0.00012786024036177317,0.0021068500693912696,0.0015628310449253115,0.0015531184678982824,0.0018213113636530648,0.003420492601217232,0.0012508179580299967,0.0016001955191278672,0.002462298796335024,0.0012341153959317104,0.0006025833362388206,0.0006152370783958489,0.0012241272872573514,0.0010417702138755753,0.0011793869376079521,0.001482845013488673,0.0005040949345101672,0.0006464178814741365,0.0009462430812669615,0.0004347294149476836,0.00033180440122280915,0.0001361764389756318,0.00028646731728342717,0.00010698977466927331,5.713393512929168e-05,0.00022398043738800912,9.43967806711395e-05,0.00010790002403122924,4.29940892712128e-06
apoc_version = 0.12.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_in16_TYPE in16, IMAGE_in17_TYPE in17, IMAGE_in18_TYPE in18, IMAGE_in19_TYPE in19, IMAGE_in20_TYPE in20, IMAGE_in21_TYPE in21, IMAGE_in22_TYPE in22, IMAGE_in23_TYPE in23, IMAGE_in24_TYPE in24, IMAGE_in25_TYPE in25, IMAGE_in26_TYPE in26, IMAGE_in27_TYPE in27, IMAGE_in28_TYPE in28, IMAGE_in29_TYPE in29, IMAGE_in30_TYPE in30, IMAGE_in31_TYPE in31, IMAGE_in32_TYPE in32, IMAGE_in33_TYPE in33, IMAGE_in34_TYPE in34, IMAGE_in35_TYPE in35, IMAGE_in36_TYPE in36, IMAGE_in37_TYPE in37, IMAGE_in38_TYPE in38, IMAGE_in39_TYPE in39, IMAGE_in40_TYPE in40, IMAGE_in41_TYPE in41, IMAGE_in42_TYPE in42, IMAGE_in43_TYPE in43, IMAGE_in44_TYPE in44, IMAGE_in45_TYPE in45, IMAGE_in46_TYPE in46, IMAGE_in47_TYPE in47, IMAGE_in48_TYPE in48, IMAGE_in49_TYPE in49, IMAGE_in50_TYPE in50, IMAGE_in51_TYPE in51, IMAGE_in52_TYPE in52, IMAGE_in53_TYPE in53, IMAGE_in54_TYPE in54, IMAGE_in55_TYPE in55, IMAGE_in56_TYPE in56, IMAGE_in57_TYPE in57, IMAGE_in58_TYPE in58, IMAGE_in59_TYPE in59, IMAGE_in60_TYPE in60, IMAGE_in61_TYPE in61, IMAGE_in62_TYPE in62, IMAGE_in63_TYPE in63, IMAGE_in64_TYPE in64, IMAGE_in65_TYPE in65, IMAGE_in66_TYPE in66, IMAGE_in67_TYPE in67, IMAGE_in68_TYPE in68, IMAGE_in69_TYPE in69, IMAGE_in70_TYPE in70, IMAGE_in71_TYPE in71, IMAGE_in72_TYPE in72, IMAGE_in73_TYPE in73, IMAGE_in74_TYPE in74, IMAGE_in75_TYPE in75, IMAGE_in76_TYPE in76, IMAGE_in77_TYPE in77, IMAGE_out_TYPE out) {
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
 float s0=0;
 float s1=0;
if(i4<0.000583946704864502){
 if(i9<1.01730215549469){
  if(i36<0.2261349856853485){
   if(i28<8.219480514526367e-05){
    if(i43<0.2968824505805969){
     s0+=77700.0;
     s1+=891.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i53<0.03318638354539871){
     s0+=22755.0;
     s1+=1487.0;
    } else {
     s0+=8490.0;
     s1+=1841.0;
    }
   }
  } else {
   if(i19<0.002247827360406518){
    if(i2<1.0008301734924316){
     s0+=17.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=227.0;
   }
  }
 } else {
  if(i4<0.00020998716354370117){
   if(i37<0.0083241518586874){
    if(i56<-2.536356078053359e-06){
     s0+=148.0;
     s1+=85.0;
    } else {
     s0+=422.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0021350421011447906){
     s0+=5.0;
    } else {
     s1+=144.0;
    }
   }
  } else {
   if(i12<1.0031825304031372){
    if(i7<0.0037946722004562616){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=578.0;
    }
   } else {
    if(i21<0.03391534090042114){
     s0+=51.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i3<-7.376629946520552e-05){
  if(i68<-0.01267540454864502){
   if(i17<0.05661240220069885){
    if(i29<0.01894988864660263){
     s0+=203.0;
     s1+=17.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i46<0.012185700237751007){
     s0+=35.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   }
  } else {
   if(i26<1.1743842363357544){
    if(i26<1.1180615425109863){
     s1+=1276.0;
    } else {
     s0+=472.0;
    }
   } else {
    if(i22<0.05219337344169617){
     s0+=230.0;
     s1+=195.0;
    } else {
     s0+=48.0;
     s1+=14740.0;
    }
   }
  }
 } else {
  if(i7<0.003752710297703743){
   if(i42<-1.3033326467848383e-05){
    if(i26<1.0986645221710205){
     s1+=356.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i20<0.00018727779388427734){
     s0+=3997.0;
     s1+=26.0;
    } else {
     s0+=450.0;
     s1+=68.0;
    }
   }
  } else {
   if(i16<0.9943972229957581){
    if(i15<0.129227876663208){
     s0+=640.0;
     s1+=220.0;
    } else {
     s0+=99.0;
     s1+=267.0;
    }
   } else {
    if(i37<0.0011068672174587846){
     s0+=15.0;
     s1+=1117.0;
    } else {
     s0+=395.0;
     s1+=886.0;
    }
   }
  }
 }
}
if(i3<-8.92779789865017e-05){
 if(i13<0.9184430241584778){
  if(i10<0.9744740128517151){
   if(i43<0.1666266918182373){
    if(i76<-0.014444023370742798){
     s0+=5.0;
     s1+=20.0;
    } else {
     s0+=690.0;
     s1+=31.0;
    }
   } else {
    if(i35<1.0291416645050049){
     s0+=45.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=65.0;
    }
   }
  } else {
   if(i66<0.04945308342576027){
    if(i44<0.7994059920310974){
     s1+=4.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i17<0.006137371063232422){
     s0+=13.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i18<0.0007059713825583458){
   if(i25<1.038825511932373){
    if(i65<-4.113354407309089e-06){
     s0+=4.0;
     s1+=43.0;
    } else {
     s0+=76.0;
     s1+=2.0;
    }
   } else {
    if(i50<-0.00018037510744761676){
     s0+=61.0;
     s1+=3.0;
    } else {
     s0+=116.0;
     s1+=15783.0;
    }
   }
  } else {
   s0+=228.0;
  }
 }
} else {
 if(i19<0.001728369970805943){
  if(i29<0.0005804428365081549){
   if(i19<0.0011617278214544058){
    if(i20<0.00017830729484558105){
     s0+=25158.0;
     s1+=179.0;
    } else {
     s1+=102.0;
    }
   } else {
    if(i58<0.9992753267288208){
     s0+=1794.0;
     s1+=23.0;
    } else {
     s0+=819.0;
     s1+=724.0;
    }
   }
  } else {
   if(i32<0.0018293880857527256){
    if(i45<1.0097377300262451){
     s0+=54730.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=23.0;
    }
   } else {
    if(i31<1.2020736932754517){
     s0+=3382.0;
     s1+=228.0;
    } else {
     s0+=6571.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<-0.0004324018955230713){
   if(i37<0.000913514697458595){
    if(i12<0.9991322159767151){
     s0+=237.0;
     s1+=17.0;
    } else {
     s0+=65.0;
     s1+=203.0;
    }
   } else {
    if(i25<1.191481590270996){
     s0+=17515.0;
     s1+=381.0;
    } else {
     s0+=19.0;
     s1+=72.0;
    }
   }
  } else {
   if(i18<0.00035129254683852196){
    if(i56<-2.996568355229101e-06){
     s0+=968.0;
     s1+=5978.0;
    } else {
     s0+=647.0;
     s1+=8.0;
    }
   } else {
    if(i55<0.002349205780774355){
     s0+=3265.0;
     s1+=31.0;
    } else {
     s0+=158.0;
     s1+=185.0;
    }
   }
  }
 }
}
if(i36<0.16937848925590515){
 if(i27<1.0087884664535522){
  if(i38<0.0007347186328843236){
   if(i22<0.20710283517837524){
    if(i2<1.0081557035446167){
     s0+=80940.0;
     s1+=634.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i46<0.0016648517921566963){
     s0+=1.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i5<1.3709068298339844e-06){
    if(i0<-0.0006885826587677002){
     s0+=20127.0;
     s1+=202.0;
    } else {
     s0+=2970.0;
     s1+=702.0;
    }
   } else {
    if(i7<0.003937643952667713){
     s0+=5339.0;
     s1+=387.0;
    } else {
     s0+=4178.0;
     s1+=5879.0;
    }
   }
  }
 } else {
  if(i10<1.0144740343093872){
   if(i29<0.001129429554566741){
    s1+=968.0;
   } else {
    if(i21<0.011166591197252274){
     s0+=1396.0;
     s1+=33.0;
    } else {
     s0+=22.0;
     s1+=640.0;
    }
   }
  } else {
   if(i7<0.0022604740224778652){
    if(i65<-6.03295893597533e-06){
     s0+=4.0;
     s1+=149.0;
    } else {
     s0+=51.0;
    }
   } else {
    if(i20<0.0001900196075439453){
     s0+=2.0;
     s1+=66.0;
    } else {
     s0+=1.0;
     s1+=5607.0;
    }
   }
  }
 }
} else {
 if(i12<1.0018324851989746){
  if(i32<0.0115423072129488){
   if(i19<0.0026672384701669216){
    if(i39<1.0008281469345093){
     s0+=737.0;
     s1+=3.0;
    } else {
     s0+=260.0;
     s1+=27.0;
    }
   } else {
    if(i38<0.0013738968409597874){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=78.0;
     s1+=51.0;
    }
   }
  } else {
   if(i20<-0.0012452006340026855){
    s0+=3.0;
   } else {
    if(i7<0.009267685934901237){
     s0+=5.0;
    } else {
     s1+=399.0;
    }
   }
  }
 } else {
  if(i41<1.170027494430542){
   if(i75<0.10203537344932556){
    if(i57<1.0020904541015625){
     s1+=206.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i24<0.0023355199955403805){
     s0+=149.0;
    } else {
     s0+=54.0;
     s1+=86.0;
    }
   }
  } else {
   if(i41<1.203521966934204){
    if(i54<0.01721782796084881){
     s0+=6.0;
     s1+=973.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   } else {
    if(i2<0.9963690042495728){
     s0+=1.0;
     s1+=7.0;
    } else {
     s1+=7351.0;
    }
   }
  }
 }
}
if(i4<0.0005906224250793457){
 if(i7<0.003717403393238783){
  if(i67<-0.0003898739814758301){
   if(i20<-0.00020551681518554688){
    if(i69<0.013421693816781044){
     s0+=293.0;
     s1+=3.0;
    } else {
     s0+=7662.0;
     s1+=3.0;
    }
   } else {
    if(i46<0.0003342117997817695){
     s0+=889.0;
     s1+=507.0;
    } else {
     s0+=7305.0;
     s1+=119.0;
    }
   }
  } else {
   if(i58<1.0003290176391602){
    if(i50<-1.711110417090822e-05){
     s0+=131.0;
     s1+=14.0;
    } else {
     s0+=38057.0;
     s1+=29.0;
    }
   } else {
    if(i25<1.0102167129516602){
     s1+=9.0;
    } else {
     s0+=33195.0;
     s1+=397.0;
    }
   }
  }
 } else {
  if(i0<-0.0003896951675415039){
   if(i25<1.128258228302002){
    if(i12<0.9991083145141602){
     s0+=15139.0;
     s1+=33.0;
    } else {
     s0+=5308.0;
     s1+=582.0;
    }
   } else {
    if(i50<-9.070695341506507e-06){
     s0+=123.0;
     s1+=373.0;
    } else {
     s0+=310.0;
     s1+=1.0;
    }
   }
  } else {
   if(i39<1.0000200271606445){
    if(i37<0.011095740832388401){
     s0+=1050.0;
     s1+=32.0;
    } else {
     s1+=131.0;
    }
   } else {
    if(i32<0.0001511933805886656){
     s0+=63.0;
    } else {
     s0+=366.0;
     s1+=2993.0;
    }
   }
  }
 }
} else {
 if(i20<0.0002962946891784668){
  if(i15<0.1676737666130066){
   if(i43<0.011133238673210144){
    if(i28<0.0003999471664428711){
     s0+=157.0;
     s1+=580.0;
    } else {
     s0+=3182.0;
     s1+=167.0;
    }
   } else {
    if(i46<0.0007133763283491135){
     s0+=201.0;
     s1+=1037.0;
    } else {
     s0+=2593.0;
     s1+=2144.0;
    }
   }
  } else {
   if(i34<1.1713988780975342){
    if(i43<0.025922417640686035){
     s0+=163.0;
    } else {
     s0+=1.0;
     s1+=36.0;
    }
   } else {
    if(i25<1.0552010536193848){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=34.0;
     s1+=3929.0;
    }
   }
  }
 } else {
  if(i52<-6.4529062910878565e-06){
   s0+=123.0;
  } else {
   s1+=11382.0;
  }
 }
}
if(i12<1.002633810043335){
 if(i13<1.018480658531189){
  if(i21<0.08877816051244736){
   if(i38<0.0007065864047035575){
    if(i34<1.0776758193969727){
     s0+=21145.0;
     s1+=324.0;
    } else {
     s0+=57535.0;
     s1+=120.0;
    }
   } else {
    if(i34<1.0903575420379639){
     s0+=3897.0;
     s1+=2532.0;
    } else {
     s0+=27571.0;
     s1+=1297.0;
    }
   }
  } else {
   if(i57<0.9982842206954956){
    s0+=4.0;
   } else {
    s1+=259.0;
   }
  }
 } else {
  if(i56<-2.9659445317520294e-06){
   if(i28<0.00039893388748168945){
    if(i50<-7.438432476192247e-06){
     s0+=48.0;
     s1+=959.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i13<1.0359866619110107){
     s0+=118.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i21<0.037091150879859924){
    s0+=303.0;
   } else {
    if(i5<-1.2308359146118164e-05){
     s0+=13.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i0<0.001189887523651123){
  if(i21<0.020320875570178032){
   if(i48<8.285045623779297e-06){
    if(i39<1.0023810863494873){
     s0+=110.0;
     s1+=418.0;
    } else {
     s0+=426.0;
     s1+=70.0;
    }
   } else {
    if(i23<1.0391499996185303){
     s0+=3533.0;
     s1+=159.0;
    } else {
     s0+=21.0;
     s1+=36.0;
    }
   }
  } else {
   if(i2<1.0009229183197021){
    if(i66<0.2648879885673523){
     s0+=456.0;
     s1+=167.0;
    } else {
     s0+=28.0;
     s1+=140.0;
    }
   } else {
    if(i22<0.04499170184135437){
     s0+=88.0;
     s1+=51.0;
    } else {
     s0+=196.0;
     s1+=2456.0;
    }
   }
  }
 } else {
  if(i11<1.0192209482192993){
   if(i26<1.1843671798706055){
    if(i26<1.1180615425109863){
     s1+=1336.0;
    } else {
     s0+=993.0;
    }
   } else {
    if(i74<0.10024203360080719){
     s0+=59.0;
     s1+=2482.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i71<3.90946206607623e-06){
    if(i34<1.1432924270629883){
     s0+=30.0;
     s1+=599.0;
    } else {
     s0+=5.0;
     s1+=10836.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i8<1.014319896697998){
 if(i12<1.0026230812072754){
  if(i7<0.0036046640016138554){
   if(i35<1.0178465843200684){
    if(i35<1.0178430080413818){
     s0+=10245.0;
     s1+=515.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i58<1.0003488063812256){
     s0+=40729.0;
     s1+=84.0;
    } else {
     s0+=35743.0;
     s1+=441.0;
    }
   }
  } else {
   if(i6<0.9984404444694519){
    if(i22<0.20539358258247375){
     s0+=19264.0;
     s1+=341.0;
    } else {
     s0+=64.0;
     s1+=141.0;
    }
   } else {
    if(i31<1.1161681413650513){
     s0+=596.0;
     s1+=2266.0;
    } else {
     s0+=3386.0;
     s1+=893.0;
    }
   }
  }
 } else {
  if(i7<0.0041174860671162605){
   if(i28<0.0005071759223937988){
    if(i33<0.0008268952369689941){
     s0+=281.0;
     s1+=39.0;
    } else {
     s0+=3.0;
     s1+=405.0;
    }
   } else {
    if(i6<1.01253342628479){
     s0+=3517.0;
     s1+=3.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i20<-0.0003216266632080078){
    if(i10<0.9731517434120178){
     s0+=606.0;
     s1+=176.0;
    } else {
     s0+=632.0;
     s1+=864.0;
    }
   } else {
    if(i51<0.031020328402519226){
     s0+=324.0;
     s1+=1182.0;
    } else {
     s0+=39.0;
     s1+=2558.0;
    }
   }
  }
 }
} else {
 if(i7<0.004390643909573555){
  if(i6<1.011430263519287){
   if(i64<1.0455936193466187){
    if(i34<1.0945069789886475){
     s1+=120.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i25<1.0651131868362427){
     s0+=5.0;
     s1+=27.0;
    } else {
     s0+=1036.0;
     s1+=54.0;
    }
   }
  } else {
   if(i58<1.0042319297790527){
    if(i3<-7.199446554295719e-05){
     s1+=438.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i26<1.6811659336090088){
   if(i8<1.0178399085998535){
    if(i28<0.0012705326080322266){
     s0+=47.0;
     s1+=879.0;
    } else {
     s0+=33.0;
     s1+=5.0;
    }
   } else {
    if(i20<-0.0011092126369476318){
     s0+=4.0;
    } else {
     s0+=16.0;
     s1+=12651.0;
    }
   }
  } else {
   s0+=30.0;
  }
 }
}
if(i7<0.007513097953051329){
 if(i3<-7.833325071260333e-05){
  if(i39<1.001147747039795){
   if(i65<-9.01134399100556e-07){
    if(i55<0.0009265615371987224){
     s1+=32.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i18<6.782202399335802e-05){
     s1+=10.0;
    } else {
     s0+=414.0;
     s1+=1.0;
    }
   }
  } else {
   if(i56<-5.624235200230032e-05){
    s0+=52.0;
   } else {
    if(i16<1.0058540105819702){
     s0+=56.0;
     s1+=104.0;
    } else {
     s0+=56.0;
     s1+=1992.0;
    }
   }
  }
 } else {
  if(i16<1.0075387954711914){
   if(i12<1.00234055519104){
    if(i12<0.9995008707046509){
     s0+=50166.0;
     s1+=275.0;
    } else {
     s0+=51782.0;
     s1+=2571.0;
    }
   } else {
    if(i20<0.00017839670181274414){
     s0+=3059.0;
     s1+=470.0;
    } else {
     s0+=20.0;
     s1+=150.0;
    }
   }
  } else {
   if(i34<1.091857671737671){
    if(i34<1.0499491691589355){
     s0+=168.0;
    } else {
     s0+=27.0;
     s1+=1475.0;
    }
   } else {
    if(i19<0.002397109754383564){
     s0+=4719.0;
     s1+=83.0;
    } else {
     s0+=692.0;
     s1+=206.0;
    }
   }
  }
 }
} else {
 if(i2<0.998602032661438){
  if(i46<0.013991745188832283){
   if(i75<0.09092599153518677){
    if(i29<0.022776275873184204){
     s0+=4210.0;
     s1+=213.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i3<-5.892473564017564e-05){
     s0+=9.0;
     s1+=45.0;
    } else {
     s0+=67.0;
     s1+=19.0;
    }
   }
  } else {
   if(i17<0.09955710172653198){
    if(i63<-0.0014342248905450106){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=331.0;
     s1+=16.0;
    }
   } else {
    if(i21<0.03112662583589554){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=236.0;
    }
   }
  }
 } else {
  if(i18<0.0018577781738713384){
   if(i14<0.9935094118118286){
    if(i21<0.015219375491142273){
     s0+=187.0;
     s1+=54.0;
    } else {
     s0+=284.0;
     s1+=2396.0;
    }
   } else {
    if(i10<0.9790933132171631){
     s0+=21.0;
     s1+=8.0;
    } else {
     s0+=14.0;
     s1+=14048.0;
    }
   }
  } else {
   s0+=51.0;
  }
 }
}
if(i4<0.0005698204040527344){
 if(i19<0.0017304420471191406){
  if(i26<1.1162974834442139){
   if(i61<0.00011313700815662742){
    if(i21<0.008681809529662132){
     s0+=19228.0;
     s1+=59.0;
    } else {
     s0+=1247.0;
     s1+=86.0;
    }
   } else {
    if(i31<1.0577976703643799){
     s0+=3847.0;
     s1+=6.0;
    } else {
     s0+=2339.0;
     s1+=620.0;
    }
   }
  } else {
   if(i50<-1.8624254153110087e-05){
    if(i41<1.1322336196899414){
     s0+=15.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   } else {
    if(i46<0.001922424416989088){
     s0+=59990.0;
     s1+=88.0;
    } else {
     s0+=2975.0;
     s1+=114.0;
    }
   }
  }
 } else {
  if(i33<-0.001443237066268921){
   if(i21<0.06780664622783661){
    if(i22<0.18542155623435974){
     s0+=14780.0;
     s1+=408.0;
    } else {
     s0+=172.0;
     s1+=206.0;
    }
   } else {
    if(i20<-0.0011614859104156494){
     s0+=112.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=285.0;
    }
   }
  } else {
   if(i6<0.9975458383560181){
    if(i41<1.177034616470337){
     s0+=2479.0;
     s1+=36.0;
    } else {
     s0+=1.0;
     s1+=74.0;
    }
   } else {
    if(i58<0.9998277425765991){
     s0+=1521.0;
     s1+=266.0;
    } else {
     s0+=1196.0;
     s1+=2839.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007055420428514481){
  if(i22<0.12624406814575195){
   if(i0<0.0009194016456604004){
    if(i29<0.0009670391445979476){
     s0+=84.0;
     s1+=448.0;
    } else {
     s0+=2268.0;
     s1+=724.0;
    }
   } else {
    if(i57<1.0022780895233154){
     s0+=178.0;
     s1+=3006.0;
    } else {
     s0+=88.0;
     s1+=33.0;
    }
   }
  } else {
   if(i21<0.0074459258466959){
    if(i10<1.0121805667877197){
     s0+=333.0;
     s1+=23.0;
    } else {
     s0+=2.0;
     s1+=499.0;
    }
   } else {
    if(i15<0.16385772824287415){
     s0+=164.0;
     s1+=1651.0;
    } else {
     s0+=72.0;
     s1+=12877.0;
    }
   }
  }
 } else {
  s0+=3364.0;
 }
}
if(i9<1.017836570739746){
 if(i5<3.463029861450195e-05){
  if(i3<-0.00012712263560388237){
   if(i16<0.9325505495071411){
    if(i21<0.07409854978322983){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   } else {
    if(i66<0.03980144485831261){
     s0+=16.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=525.0;
    }
   }
  } else {
   if(i7<0.003630739636719227){
    if(i61<0.00015599917969666421){
     s0+=72416.0;
     s1+=311.0;
    } else {
     s0+=16675.0;
     s1+=774.0;
    }
   } else {
    if(i12<1.0001559257507324){
     s0+=18548.0;
     s1+=439.0;
    } else {
     s0+=4760.0;
     s1+=3636.0;
    }
   }
  }
 } else {
  if(i43<0.023997057229280472){
   if(i48<1.0311603546142578e-05){
    if(i32<0.000982858007773757){
     s0+=2.0;
     s1+=888.0;
    } else {
     s0+=143.0;
     s1+=174.0;
    }
   } else {
    if(i0<0.0024556517601013184){
     s0+=2027.0;
     s1+=90.0;
    } else {
     s1+=128.0;
    }
   }
  } else {
   if(i10<0.9740721583366394){
    if(i25<1.0477664470672607){
     s0+=194.0;
     s1+=28.0;
    } else {
     s0+=81.0;
     s1+=137.0;
    }
   } else {
    if(i0<0.0006795525550842285){
     s0+=253.0;
     s1+=442.0;
    } else {
     s0+=134.0;
     s1+=2694.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i28<0.0005128085613250732){
   if(i56<-3.647172206910909e-06){
    if(i38<0.0014761588536202908){
     s0+=4.0;
     s1+=1546.0;
    } else {
     s0+=36.0;
    }
   } else {
    s0+=181.0;
   }
  } else {
   s0+=553.0;
  }
 } else {
  if(i3<-6.107300578150898e-05){
   if(i17<0.11483877897262573){
    if(i73<0.00641554594039917){
     s0+=6.0;
     s1+=113.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i4<1.2218952178955078e-05){
     s0+=18.0;
     s1+=100.0;
    } else {
     s0+=9.0;
     s1+=11720.0;
    }
   }
  } else {
   if(i2<1.001659870147705){
    if(i19<0.0025730389170348644){
     s0+=285.0;
    } else {
     s0+=125.0;
     s1+=54.0;
    }
   } else {
    if(i7<0.006514267064630985){
     s0+=88.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=322.0;
    }
   }
  }
 }
}
if(i12<1.0026333332061768){
 if(i13<1.0184011459350586){
  if(i38<0.0007182738045230508){
   if(i37<0.00028857620782218874){
    if(i47<3.9284233935177326e-05){
     s0+=16469.0;
     s1+=7.0;
    } else {
     s0+=1016.0;
     s1+=340.0;
    }
   } else {
    if(i57<1.0007004737854004){
     s0+=47470.0;
     s1+=10.0;
    } else {
     s0+=14449.0;
     s1+=121.0;
    }
   }
  } else {
   if(i24<0.0009364337893202901){
    if(i25<1.0360195636749268){
     s0+=2903.0;
     s1+=1310.0;
    } else {
     s0+=286.0;
     s1+=1567.0;
    }
   } else {
    if(i22<0.20766863226890564){
     s0+=27299.0;
     s1+=765.0;
    } else {
     s0+=88.0;
     s1+=368.0;
    }
   }
  }
 } else {
  if(i1<1.7881393432617188e-05){
   if(i3<-6.194016896188259e-05){
    if(i47<2.052418676612433e-05){
     s0+=12.0;
    } else {
     s0+=10.0;
     s1+=175.0;
    }
   } else {
    if(i31<1.0887749195098877){
     s1+=8.0;
    } else {
     s0+=464.0;
     s1+=35.0;
    }
   }
  } else {
   if(i52<-3.019861196662532e-06){
    if(i21<0.014366751536726952){
     s0+=49.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i38<0.0006840996211394668){
     s0+=33.0;
    } else {
     s0+=1.0;
     s1+=766.0;
    }
   }
  }
 }
} else {
 if(i24<0.002473571104928851){
  if(i18<0.00022608318249695003){
   if(i57<1.0009758472442627){
    if(i26<1.1305265426635742){
     s1+=2405.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i73<-0.0011858046054840088){
     s0+=27.0;
     s1+=20.0;
    } else {
     s0+=249.0;
     s1+=7.0;
    }
   }
  } else {
   if(i16<0.995583713054657){
    if(i21<0.011450462974607944){
     s0+=5.0;
     s1+=2.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i26<1.1843671798706055){
     s0+=3728.0;
     s1+=15.0;
    } else {
     s1+=65.0;
    }
   }
  }
 } else {
  if(i25<1.0743656158447266){
   if(i65<-5.8866344261332415e-06){
    if(i26<1.629280686378479){
     s0+=19.0;
     s1+=208.0;
    } else {
     s0+=83.0;
     s1+=1.0;
    }
   } else {
    if(i36<0.08464762568473816){
     s0+=1138.0;
     s1+=108.0;
    } else {
     s0+=86.0;
     s1+=123.0;
    }
   }
  } else {
   if(i37<0.007533423602581024){
    if(i7<0.004313930403441191){
     s0+=438.0;
     s1+=321.0;
    } else {
     s0+=232.0;
     s1+=4275.0;
    }
   } else {
    if(i22<0.04079708456993103){
     s0+=86.0;
     s1+=111.0;
    } else {
     s0+=52.0;
     s1+=11000.0;
    }
   }
  }
 }
}
if(i10<1.0124870538711548){
 if(i7<0.008001732639968395){
  if(i8<1.0081576108932495){
   if(i47<-2.2110845748102292e-05){
    if(i27<1.0083037614822388){
     s0+=34.0;
    } else {
     s0+=17.0;
     s1+=181.0;
    }
   } else {
    if(i24<0.0008725754451006651){
     s0+=32047.0;
     s1+=2844.0;
    } else {
     s0+=74515.0;
     s1+=730.0;
    }
   }
  } else {
   if(i24<0.000977956922724843){
    if(i41<1.1197539567947388){
     s0+=123.0;
     s1+=1233.0;
    } else {
     s0+=174.0;
    }
   } else {
    if(i51<0.0372360423207283){
     s0+=4394.0;
     s1+=138.0;
    } else {
     s0+=241.0;
     s1+=220.0;
    }
   }
  }
 } else {
  if(i35<1.0529450178146362){
   if(i0<6.61611557006836e-05){
    if(i24<0.0010704536689445376){
     s1+=15.0;
    } else {
     s0+=3789.0;
     s1+=190.0;
    }
   } else {
    if(i10<0.9763866066932678){
     s0+=150.0;
     s1+=95.0;
    } else {
     s0+=79.0;
     s1+=393.0;
    }
   }
  } else {
   if(i0<-0.0012030303478240967){
    if(i31<1.4946664571762085){
     s0+=273.0;
     s1+=51.0;
    } else {
     s0+=21.0;
     s1+=117.0;
    }
   } else {
    if(i38<0.004227947443723679){
     s0+=226.0;
     s1+=4760.0;
    } else {
     s0+=41.0;
    }
   }
  }
 }
} else {
 if(i48<2.8580427169799805e-05){
  if(i18<0.0007054299348965287){
   if(i4<0.00027871131896972656){
    if(i42<8.565024472773075e-06){
     s0+=44.0;
    } else {
     s1+=82.0;
    }
   } else {
    if(i5<1.6093254089355469e-06){
     s0+=2.0;
    } else {
     s0+=39.0;
     s1+=13212.0;
    }
   }
  } else {
   s0+=250.0;
  }
 } else {
  if(i49<1.0447120666503906){
   s0+=128.0;
  } else {
   s1+=12.0;
  }
 }
}
if(i4<0.0005705952644348145){
 if(i19<0.001668105716817081){
  if(i50<-1.8781880498863757e-05){
   if(i37<0.0020064455457031727){
    s0+=15.0;
   } else {
    s1+=33.0;
   }
  } else {
   if(i38<0.0005504899891093373){
    if(i29<0.0019041115883737803){
     s0+=65621.0;
     s1+=79.0;
    } else {
     s0+=3792.0;
     s1+=101.0;
    }
   } else {
    if(i45<0.9990050792694092){
     s0+=10614.0;
     s1+=56.0;
    } else {
     s0+=7986.0;
     s1+=657.0;
    }
   }
  }
 } else {
  if(i5<-1.1324882507324219e-06){
   if(i24<0.01589241996407509){
    if(i15<0.23113250732421875){
     s0+=15739.0;
     s1+=478.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   } else {
    if(i35<1.0426945686340332){
     s0+=42.0;
    } else {
     s1+=162.0;
    }
   }
  } else {
   if(i47<0.00010501928045414388){
    if(i21<0.00981605052947998){
     s0+=1795.0;
     s1+=412.0;
    } else {
     s0+=435.0;
     s1+=2546.0;
    }
   } else {
    if(i35<1.1221188306808472){
     s0+=3388.0;
     s1+=273.0;
    } else {
     s0+=60.0;
     s1+=392.0;
    }
   }
  }
 }
} else {
 if(i10<1.0134507417678833){
  if(i6<1.0107771158218384){
   if(i63<-0.0009587371023371816){
    if(i21<0.04144750535488129){
     s0+=785.0;
     s1+=1258.0;
    } else {
     s0+=117.0;
     s1+=1818.0;
    }
   } else {
    if(i57<0.9996892213821411){
     s0+=1566.0;
     s1+=5.0;
    } else {
     s0+=4053.0;
     s1+=1846.0;
    }
   }
  } else {
   if(i52<-6.623687113460619e-06){
    s0+=31.0;
   } else {
    if(i15<0.0008989572525024414){
     s0+=26.0;
     s1+=19.0;
    } else {
     s0+=62.0;
     s1+=1766.0;
    }
   }
  }
 } else {
  if(i18<0.0008060724940150976){
   if(i22<0.05799546837806702){
    if(i44<1.0177019834518433){
     s0+=1.0;
     s1+=99.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i57<1.0025163888931274){
     s0+=1.0;
     s1+=11636.0;
    } else {
     s0+=15.0;
     s1+=847.0;
    }
   }
  } else {
   s0+=156.0;
  }
 }
}
if(i44<1.0266053676605225){
 if(i60<0.003480722662061453){
  if(i5<1.5079975128173828e-05){
   if(i38<0.0006896998384036124){
    if(i0<-0.0001685023307800293){
     s0+=29451.0;
     s1+=312.0;
    } else {
     s0+=44575.0;
     s1+=43.0;
    }
   } else {
    if(i30<-0.00033356959465891123){
     s0+=10561.0;
     s1+=258.0;
    } else {
     s0+=16896.0;
     s1+=2203.0;
    }
   }
  } else {
   if(i20<0.00016838312149047852){
    if(i17<0.19099172949790955){
     s0+=7262.0;
     s1+=1665.0;
    } else {
     s0+=76.0;
     s1+=468.0;
    }
   } else {
    if(i36<0.07073050737380981){
     s0+=266.0;
     s1+=1754.0;
    } else {
     s0+=790.0;
     s1+=669.0;
    }
   }
  }
 } else {
  if(i12<1.002370834350586){
   if(i21<0.048233337700366974){
    if(i38<0.0006302576512098312){
     s0+=2050.0;
     s1+=14.0;
    } else {
     s0+=1984.0;
     s1+=291.0;
    }
   } else {
    if(i16<0.9346606731414795){
     s0+=58.0;
     s1+=55.0;
    } else {
     s0+=8.0;
     s1+=293.0;
    }
   }
  } else {
   if(i17<0.04136720299720764){
    if(i72<-0.10339623689651489){
     s0+=85.0;
     s1+=189.0;
    } else {
     s0+=440.0;
     s1+=80.0;
    }
   } else {
    if(i8<0.925491213798523){
     s0+=68.0;
     s1+=53.0;
    } else {
     s0+=160.0;
     s1+=3429.0;
    }
   }
  }
 }
} else {
 if(i19<0.0013781406451016665){
  if(i29<0.004031305201351643){
   if(i32<0.0005201388848945498){
    if(i37<0.00029897550120949745){
     s0+=5.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i22<0.16035503149032593){
     s0+=529.0;
     s1+=4.0;
    } else {
     s0+=425.0;
     s1+=27.0;
    }
   }
  } else {
   if(i50<-2.8245671273907647e-05){
    s1+=186.0;
   } else {
    s0+=27.0;
   }
  }
 } else {
  if(i8<1.017838954925537){
   if(i66<0.09294801205396652){
    if(i29<0.0012217015027999878){
     s0+=3.0;
     s1+=226.0;
    } else {
     s0+=553.0;
     s1+=219.0;
    }
   } else {
    if(i21<0.0279428418725729){
     s0+=39.0;
     s1+=50.0;
    } else {
     s0+=16.0;
     s1+=1104.0;
    }
   }
  } else {
   if(i22<0.10230627655982971){
    if(i56<-1.230703855981119e-05){
     s0+=48.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   } else {
    if(i2<1.0012104511260986){
     s0+=62.0;
     s1+=85.0;
    } else {
     s0+=27.0;
     s1+=10618.0;
    }
   }
  }
 }
}
if(i16<1.0147435665130615){
 if(i45<1.0060311555862427){
  if(i3<-7.861846825107932e-05){
   if(i15<0.1302657425403595){
    if(i35<1.1181082725524902){
     s0+=1085.0;
     s1+=338.0;
    } else {
     s0+=18.0;
     s1+=176.0;
    }
   } else {
    if(i48<1.8477439880371094e-05){
     s0+=43.0;
     s1+=1196.0;
    } else {
     s0+=38.0;
     s1+=6.0;
    }
   }
  } else {
   if(i4<0.00029212236404418945){
    if(i41<1.0867384672164917){
     s0+=34030.0;
     s1+=2092.0;
    } else {
     s0+=68016.0;
     s1+=622.0;
    }
   } else {
    if(i19<0.0018086126074194908){
     s0+=6083.0;
     s1+=87.0;
    } else {
     s0+=3338.0;
     s1+=2449.0;
    }
   }
  }
 } else {
  if(i30<-0.0002544065937399864){
   if(i54<0.0016496513271704316){
    if(i47<1.678666376392357e-05){
     s0+=39.0;
     s1+=12.0;
    } else {
     s0+=132.0;
    }
   } else {
    if(i55<0.002658278215676546){
     s0+=251.0;
     s1+=495.0;
    } else {
     s0+=76.0;
     s1+=1795.0;
    }
   }
  } else {
   if(i1<0.00010675191879272461){
    if(i7<0.02022189274430275){
     s0+=2306.0;
     s1+=343.0;
    } else {
     s0+=76.0;
     s1+=166.0;
    }
   } else {
    if(i38<0.0011642207391560078){
     s0+=12.0;
     s1+=779.0;
    } else {
     s0+=100.0;
     s1+=368.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007059713825583458){
  if(i5<9.834766387939453e-06){
   if(i15<0.25917932391166687){
    if(i18<0.00018545807688497007){
     s0+=211.0;
     s1+=2.0;
    } else {
     s0+=120.0;
     s1+=45.0;
    }
   } else {
    if(i58<0.9978082180023193){
     s1+=84.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i0<-1.1265277862548828e-05){
    if(i54<0.006044838577508926){
     s0+=90.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=17.0;
    }
   } else {
    if(i56<-6.331902841338888e-05){
     s0+=14.0;
    } else {
     s0+=122.0;
     s1+=13197.0;
    }
   }
  }
 } else {
  s0+=381.0;
 }
}
if(i0<0.0009575486183166504){
 if(i14<1.0181578397750854){
  if(i36<0.19325220584869385){
   if(i4<0.00032651424407958984){
    if(i38<0.0006797279929742217){
     s0+=74406.0;
     s1+=323.0;
    } else {
     s0+=29584.0;
     s1+=2392.0;
    }
   } else {
    if(i47<2.6327215891797096e-05){
     s0+=6506.0;
     s1+=624.0;
    } else {
     s0+=2716.0;
     s1+=2154.0;
    }
   }
  } else {
   if(i75<0.11847320199012756){
    if(i3<-6.6540051193442196e-06){
     s1+=374.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i56<-4.535342668532394e-06){
     s0+=65.0;
     s1+=92.0;
    } else {
     s0+=195.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i50<-9.262500498152804e-06){
   if(i0<-0.00031065940856933594){
    if(i51<0.06013303995132446){
     s0+=205.0;
     s1+=14.0;
    } else {
     s0+=6.0;
     s1+=145.0;
    }
   } else {
    if(i36<0.1404014229774475){
     s0+=289.0;
     s1+=635.0;
    } else {
     s0+=31.0;
     s1+=1138.0;
    }
   }
  } else {
   if(i20<-0.0004432499408721924){
    if(i54<0.0028622718527913094){
     s0+=3.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i56<-3.5060697882727254e-06){
     s0+=67.0;
     s1+=14.0;
    } else {
     s0+=457.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i26<1.116804838180542){
   if(i41<1.0451856851577759){
    s0+=76.0;
   } else {
    s1+=2394.0;
   }
  } else {
   s0+=1904.0;
  }
 } else {
  if(i22<0.03565865755081177){
   if(i51<0.03308488428592682){
    if(i24<0.010006983764469624){
     s0+=7.0;
     s1+=12.0;
    } else {
     s0+=36.0;
    }
   } else {
    if(i64<1.0453506708145142){
     s0+=3.0;
     s1+=73.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i41<1.127323031425476){
    if(i23<0.9539687633514404){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i22<0.09620705246925354){
     s0+=42.0;
     s1+=448.0;
    } else {
     s0+=18.0;
     s1+=13366.0;
    }
   }
  }
 }
}
if(i3<-0.00010309704521205276){
 if(i67<-0.007707417011260986){
  if(i6<1.009793996810913){
   if(i31<1.5545397996902466){
    if(i17<0.10651829838752747){
     s0+=424.0;
     s1+=16.0;
    } else {
     s0+=6.0;
     s1+=10.0;
    }
   } else {
    if(i42<7.746817573206499e-05){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=35.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.097321517765522){
    if(i10<0.9753824472427368){
     s0+=40.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i66<0.042808108031749725){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i71<5.794467142550275e-06){
   if(i56<-5.673414852935821e-05){
    s0+=72.0;
   } else {
    if(i38<0.004031617194414139){
     s0+=109.0;
     s1+=14983.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   s0+=112.0;
  }
 }
} else {
 if(i12<1.002421498298645){
  if(i16<1.009417176246643){
   if(i4<0.00017493963241577148){
    if(i26<1.116391897201538){
     s0+=26205.0;
     s1+=1562.0;
    } else {
     s0+=69265.0;
     s1+=509.0;
    }
   } else {
    if(i63<-0.0007011217530816793){
     s0+=1445.0;
     s1+=653.0;
    } else {
     s0+=11296.0;
     s1+=966.0;
    }
   }
  } else {
   if(i40<1.086911916732788){
    if(i7<0.003992028534412384){
     s0+=79.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=558.0;
    }
   } else {
    if(i56<-4.476925823837519e-06){
     s0+=334.0;
     s1+=103.0;
    } else {
     s0+=780.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i8<1.016200304031372){
   if(i3<-4.5711025450145826e-05){
    if(i18<0.0003496355493552983){
     s0+=429.0;
     s1+=1635.0;
    } else {
     s0+=1231.0;
     s1+=255.0;
    }
   } else {
    if(i53<0.05921284854412079){
     s0+=3906.0;
     s1+=589.0;
    } else {
     s0+=552.0;
     s1+=490.0;
    }
   }
  } else {
   if(i3<-6.160710472613573e-05){
    if(i42<1.5504770999541506e-05){
     s0+=28.0;
     s1+=1120.0;
    } else {
     s0+=23.0;
     s1+=52.0;
    }
   } else {
    if(i56<-1.132570923800813e-05){
     s0+=352.0;
     s1+=21.0;
    } else {
     s0+=14.0;
     s1+=419.0;
    }
   }
  }
 }
}
if(i4<0.0005639791488647461){
 if(i19<0.0017233396647498012){
  if(i38<0.0006154353031888604){
   if(i55<0.0019862130284309387){
    if(i37<0.00023146645980887115){
     s0+=14806.0;
     s1+=119.0;
    } else {
     s0+=56156.0;
     s1+=55.0;
    }
   } else {
    if(i58<1.001521348953247){
     s0+=2459.0;
     s1+=3.0;
    } else {
     s0+=421.0;
     s1+=47.0;
    }
   }
  } else {
   if(i29<0.00038918410427868366){
    if(i31<1.0512452125549316){
     s0+=715.0;
    } else {
     s0+=255.0;
     s1+=511.0;
    }
   } else {
    if(i68<-0.0007862448692321777){
     s0+=1847.0;
     s1+=156.0;
    } else {
     s0+=12768.0;
     s1+=75.0;
    }
   }
  }
 } else {
  if(i1<-2.485513687133789e-05){
   if(i15<0.2038779854774475){
    if(i32<0.0010335457045584917){
     s0+=803.0;
     s1+=257.0;
    } else {
     s0+=17030.0;
     s1+=466.0;
    }
   } else {
    if(i66<0.09176407754421234){
     s0+=40.0;
     s1+=18.0;
    } else {
     s0+=6.0;
     s1+=225.0;
    }
   }
  } else {
   if(i31<1.0533521175384521){
    s0+=1123.0;
   } else {
    if(i29<0.0009894182439893484){
     s1+=1932.0;
    } else {
     s0+=1285.0;
     s1+=1117.0;
    }
   }
  }
 }
} else {
 if(i3<-7.5632291554939e-05){
  if(i18<0.0007056489121168852){
   if(i10<0.9737211465835571){
    if(i15<0.06602910161018372){
     s0+=296.0;
     s1+=33.0;
    } else {
     s0+=28.0;
     s1+=60.0;
    }
   } else {
    if(i22<0.024484187364578247){
     s0+=129.0;
     s1+=113.0;
    } else {
     s0+=130.0;
     s1+=16055.0;
    }
   }
  } else {
   s0+=392.0;
  }
 } else {
  if(i43<0.010242270305752754){
   if(i20<0.00014644861221313477){
    if(i21<0.006807450205087662){
     s0+=2319.0;
     s1+=44.0;
    } else {
     s0+=150.0;
     s1+=101.0;
    }
   } else {
    if(i17<0.09126603603363037){
     s0+=227.0;
     s1+=332.0;
    } else {
     s0+=479.0;
     s1+=99.0;
    }
   }
  } else {
   if(i37<0.0010187026346102357){
    if(i32<0.00019022950436919928){
     s0+=5.0;
    } else {
     s1+=1031.0;
    }
   } else {
    if(i24<0.0022584665566682816){
     s0+=1435.0;
     s1+=128.0;
    } else {
     s0+=1234.0;
     s1+=1345.0;
    }
   }
  }
 }
}
if(i11<1.0136241912841797){
 if(i46<0.0120109086856246){
  if(i5<1.8298625946044922e-05){
   if(i19<0.0014862442621961236){
    if(i35<1.0179111957550049){
     s0+=10216.0;
     s1+=290.0;
    } else {
     s0+=73785.0;
     s1+=289.0;
    }
   } else {
    if(i2<0.9982993602752686){
     s0+=19431.0;
     s1+=494.0;
    } else {
     s0+=3932.0;
     s1+=2517.0;
    }
   }
  } else {
   if(i7<0.003863290883600712){
    if(i42<-1.0317115084035322e-05){
     s0+=162.0;
     s1+=247.0;
    } else {
     s0+=5044.0;
     s1+=110.0;
    }
   } else {
    if(i18<0.0003668433637358248){
     s0+=969.0;
     s1+=3275.0;
    } else {
     s0+=1059.0;
     s1+=502.0;
    }
   }
  }
 } else {
  if(i39<1.0009069442749023){
   if(i7<0.020341116935014725){
    if(i21<0.057807356119155884){
     s0+=773.0;
     s1+=14.0;
    } else {
     s0+=29.0;
     s1+=60.0;
    }
   } else {
    s1+=126.0;
   }
  } else {
   if(i17<0.0416392982006073){
    if(i38<0.0027670233976095915){
     s0+=89.0;
     s1+=35.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i25<1.0989019870758057){
     s0+=22.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=1552.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007059713825583458){
  if(i11<1.0242342948913574){
   if(i56<-3.200074615961057e-06){
    if(i33<0.000765383243560791){
     s0+=305.0;
     s1+=692.0;
    } else {
     s0+=33.0;
     s1+=2145.0;
    }
   } else {
    if(i7<0.006159687414765358){
     s0+=182.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i50<-1.0131920134881511e-05){
    if(i1<-3.975629806518555e-05){
     s0+=27.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=11650.0;
    }
   } else {
    s0+=97.0;
   }
  }
 } else {
  s0+=610.0;
 }
}
if(i20<0.00019150972366333008){
 if(i12<1.0024404525756836){
  if(i22<0.2321862280368805){
   if(i19<0.0016408524243161082){
    if(i3<-7.205856672953814e-05){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=87008.0;
     s1+=792.0;
    }
   } else {
    if(i6<0.9982328414916992){
     s0+=15269.0;
     s1+=373.0;
    } else {
     s0+=6712.0;
     s1+=3265.0;
    }
   }
  } else {
   if(i7<0.00509447930380702){
    if(i72<0.05631500482559204){
     s0+=3.0;
     s1+=2.0;
    } else {
     s0+=89.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.002168655628338456){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=421.0;
    }
   }
  }
 } else {
  if(i32<0.0019262750865891576){
   if(i26<1.1180615425109863){
    if(i29<0.0002897026715800166){
     s0+=914.0;
    } else {
     s1+=472.0;
    }
   } else {
    if(i8<0.9862327575683594){
     s1+=2.0;
    } else {
     s0+=2990.0;
    }
   }
  } else {
   if(i43<0.10316698253154755){
    if(i35<1.0852792263031006){
     s0+=1415.0;
     s1+=832.0;
    } else {
     s0+=406.0;
     s1+=1345.0;
    }
   } else {
    if(i21<0.03591429814696312){
     s0+=262.0;
     s1+=76.0;
    } else {
     s0+=136.0;
     s1+=3153.0;
    }
   }
  }
 }
} else {
 if(i4<0.000352323055267334){
  if(i36<0.16213876008987427){
   if(i11<1.0290024280548096){
    s0+=408.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i40<1.1469075679779053){
    s0+=5.0;
   } else {
    s1+=77.0;
   }
  }
 } else {
  if(i18<0.0007050007116049528){
   if(i52<-6.456466508097947e-06){
    s0+=47.0;
   } else {
    if(i13<1.0149211883544922){
     s0+=5.0;
     s1+=1909.0;
    } else {
     s1+=11563.0;
    }
   }
  } else {
   s0+=884.0;
  }
 }
}
if(i5<2.1636486053466797e-05){
 if(i14<1.0182610750198364){
  if(i3<-0.00011869361333083361){
   if(i15<0.0073220133781433105){
    if(i74<0.05381539836525917){
     s0+=107.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   } else {
    if(i47<0.0005307000828906894){
     s0+=7.0;
     s1+=275.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i28<7.361173629760742e-05){
    if(i22<0.24223238229751587){
     s0+=76375.0;
     s1+=752.0;
    } else {
     s0+=51.0;
     s1+=41.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=5470.0;
     s1+=2315.0;
    } else {
     s0+=26747.0;
     s1+=826.0;
    }
   }
  }
 } else {
  if(i50<-1.0485007805982605e-05){
   if(i43<0.029009126126766205){
    if(i42<3.477653444861062e-05){
     s0+=48.0;
     s1+=89.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i48<8.52346420288086e-06){
     s0+=19.0;
     s1+=782.0;
    } else {
     s0+=51.0;
     s1+=37.0;
    }
   }
  } else {
   if(i29<0.004238263703882694){
    if(i56<-3.552029284037417e-06){
     s0+=32.0;
     s1+=16.0;
    } else {
     s0+=413.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.0001557420036988333){
     s0+=22.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i7<0.004266594536602497){
  if(i18<0.00023073804914020002){
   if(i33<0.0007547736167907715){
    if(i19<0.001876438269391656){
     s0+=64.0;
     s1+=58.0;
    } else {
     s0+=245.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.0011358261108398438){
     s0+=29.0;
     s1+=64.0;
    } else {
     s0+=14.0;
     s1+=1066.0;
    }
   }
  } else {
   if(i16<1.0240800380706787){
    if(i49<0.966582179069519){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=4791.0;
     s1+=5.0;
    }
   } else {
    s1+=34.0;
   }
  }
 } else {
  if(i23<1.0148711204528809){
   if(i2<1.0006866455078125){
    if(i69<0.60347580909729){
     s0+=885.0;
     s1+=211.0;
    } else {
     s0+=3.0;
     s1+=81.0;
    }
   } else {
    if(i12<1.001088261604309){
     s0+=63.0;
     s1+=3.0;
    } else {
     s0+=575.0;
     s1+=4567.0;
    }
   }
  } else {
   if(i18<0.000803944596555084){
    if(i17<0.10385298728942871){
     s0+=81.0;
     s1+=509.0;
    } else {
     s0+=65.0;
     s1+=12742.0;
    }
   } else {
    s0+=109.0;
   }
  }
 }
}
if(i0<0.0009554028511047363){
 if(i25<1.1402404308319092){
  if(i7<0.0037864549085497856){
   if(i37<0.0006927973590791225){
    if(i61<0.00013197778025642037){
     s0+=24183.0;
     s1+=209.0;
    } else {
     s0+=3779.0;
     s1+=731.0;
    }
   } else {
    if(i13<1.01670503616333){
     s0+=61336.0;
     s1+=180.0;
    } else {
     s0+=632.0;
     s1+=60.0;
    }
   }
  } else {
   if(i4<-5.984306335449219e-05){
    if(i37<0.0003143061767332256){
     s0+=42.0;
     s1+=45.0;
    } else {
     s0+=18404.0;
     s1+=217.0;
    }
   } else {
    if(i20<-0.00020068883895874023){
     s0+=3896.0;
     s1+=900.0;
    } else {
     s0+=799.0;
     s1+=3604.0;
    }
   }
  }
 } else {
  if(i19<0.0015303641557693481){
   s0+=917.0;
  } else {
   if(i7<0.006691840477287769){
    if(i3<-5.198159487918019e-05){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=118.0;
     s1+=6.0;
    }
   } else {
    if(i17<1.722574234008789e-05){
     s0+=85.0;
     s1+=15.0;
    } else {
     s0+=48.0;
     s1+=1958.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i62<0.00042551642400212586){
   if(i38<0.001135355094447732){
    if(i18<0.0002865017158910632){
     s1+=2161.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i36<0.16423609852790833){
     s0+=163.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i54<0.000899242702871561){
    s1+=185.0;
   } else {
    if(i32<0.002688787877559662){
     s0+=1873.0;
     s1+=41.0;
    } else {
     s0+=5.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i16<0.9566088318824768){
   if(i28<0.000640571117401123){
    if(i21<0.0593138188123703){
     s0+=38.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i59<0.014752908609807491){
     s0+=5.0;
     s1+=121.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i41<1.127323031425476){
    if(i28<0.000819087028503418){
     s0+=4.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i30<-0.00012904165487270802){
     s0+=11.0;
     s1+=12800.0;
    } else {
     s0+=32.0;
     s1+=1101.0;
    }
   }
  }
 }
}
if(i1<6.347894668579102e-05){
 if(i23<1.0221877098083496){
  if(i21<0.0671830028295517){
   if(i19<0.001728216651827097){
    if(i61<0.00016828521620482206){
     s0+=75516.0;
     s1+=315.0;
    } else {
     s0+=15078.0;
     s1+=664.0;
    }
   } else {
    if(i0<-0.0004717111587524414){
     s0+=17977.0;
     s1+=666.0;
    } else {
     s0+=4458.0;
     s1+=3639.0;
    }
   }
  } else {
   if(i7<0.014502374455332756){
    if(i31<1.5051121711730957){
     s1+=3.0;
    } else {
     s0+=226.0;
    }
   } else {
    if(i16<0.9442013502120972){
     s0+=73.0;
     s1+=104.0;
    } else {
     s0+=12.0;
     s1+=662.0;
    }
   }
  }
 } else {
  if(i19<0.001367978285998106){
   if(i32<0.0019890740513801575){
    s0+=340.0;
   } else {
    if(i28<0.00010269880294799805){
     s0+=270.0;
    } else {
     s0+=14.0;
     s1+=19.0;
    }
   }
  } else {
   if(i7<0.004940939135849476){
    if(i24<0.004015854559838772){
     s0+=53.0;
     s1+=86.0;
    } else {
     s0+=344.0;
     s1+=5.0;
    }
   } else {
    if(i50<-9.058750038093422e-06){
     s0+=94.0;
     s1+=1638.0;
    } else {
     s0+=17.0;
    }
   }
  }
 }
} else {
 if(i15<0.1729215383529663){
  if(i20<0.0003007054328918457){
   if(i26<1.116804838180542){
    if(i46<0.00011956218804698437){
     s0+=69.0;
     s1+=14.0;
    } else {
     s0+=13.0;
     s1+=1281.0;
    }
   } else {
    if(i24<0.002346273045986891){
     s0+=1824.0;
    } else {
     s0+=125.0;
     s1+=1119.0;
    }
   }
  } else {
   if(i5<0.00020992755889892578){
    if(i28<0.0014363229274749756){
     s0+=4.0;
     s1+=2314.0;
    } else {
     s0+=40.0;
     s1+=23.0;
    }
   } else {
    s0+=47.0;
   }
  }
 } else {
  if(i26<1.1843671798706055){
   s0+=67.0;
  } else {
   s1+=11647.0;
  }
 }
}
if(i2<1.003865361213684){
 if(i3<-8.112836076179519e-05){
  if(i33<-0.004013121128082275){
   if(i26<1.5726749897003174){
    if(i41<1.2482662200927734){
     s0+=20.0;
     s1+=32.0;
    } else {
     s0+=725.0;
     s1+=31.0;
    }
   } else {
    if(i25<1.0340678691864014){
     s0+=110.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=147.0;
    }
   }
  } else {
   if(i21<0.024588704109191895){
    if(i17<0.19696667790412903){
     s0+=304.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    if(i22<0.0202406644821167){
     s0+=85.0;
     s1+=31.0;
    } else {
     s0+=14.0;
     s1+=1380.0;
    }
   }
  }
 } else {
  if(i38<0.0007107695564627647){
   if(i50<-1.9982900994364172e-05){
    s1+=55.0;
   } else {
    if(i61<0.00016065740783233196){
     s0+=64907.0;
     s1+=159.0;
    } else {
     s0+=14128.0;
     s1+=307.0;
    }
   }
  } else {
   if(i31<1.1160998344421387){
    if(i31<1.0512452125549316){
     s0+=2584.0;
    } else {
     s0+=1830.0;
     s1+=3191.0;
    }
   } else {
    if(i2<1.002130150794983){
     s0+=26979.0;
     s1+=902.0;
    } else {
     s0+=493.0;
     s1+=498.0;
    }
   }
  }
 }
} else {
 if(i3<-7.352275861194357e-05){
  if(i24<0.0022717658430337906){
   if(i28<0.0004538297653198242){
    if(i65<2.1732410004915437e-06){
     s0+=2.0;
     s1+=1195.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=383.0;
   }
  } else {
   if(i59<0.009899122640490532){
    if(i41<1.127323031425476){
     s0+=14.0;
     s1+=14.0;
    } else {
     s0+=37.0;
     s1+=13800.0;
    }
   } else {
    if(i33<-0.0022472143173217773){
     s0+=22.0;
     s1+=24.0;
    } else {
     s1+=149.0;
    }
   }
  }
 } else {
  if(i18<0.0002631360257510096){
   if(i37<0.0008942419663071632){
    if(i53<0.002135617658495903){
     s0+=6.0;
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=1283.0;
    }
   } else {
    if(i25<1.09979248046875){
     s0+=170.0;
     s1+=198.0;
    } else {
     s0+=19.0;
     s1+=451.0;
    }
   }
  } else {
   if(i43<0.0322653204202652){
    if(i17<0.26944607496261597){
     s0+=3757.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i55<0.0008486517472192645){
     s0+=17.0;
    } else {
     s0+=26.0;
     s1+=252.0;
    }
   }
  }
 }
}
if(i2<1.0037345886230469){
 if(i4<0.0003268122673034668){
  if(i63<-0.00781996175646782){
   s1+=103.0;
  } else {
   if(i36<0.2066221535205841){
    if(i24<0.0008659957675263286){
     s0+=29738.0;
     s1+=2269.0;
    } else {
     s0+=75320.0;
     s1+=743.0;
    }
   } else {
    if(i50<-8.016733772819862e-06){
     s0+=13.0;
     s1+=232.0;
    } else {
     s0+=135.0;
    }
   }
  }
 } else {
  if(i43<0.01401466503739357){
   if(i7<0.0042575448751449585){
    if(i49<0.9563764929771423){
     s1+=4.0;
    } else {
     s0+=4363.0;
     s1+=22.0;
    }
   } else {
    if(i54<0.0006975106080062687){
     s0+=45.0;
     s1+=258.0;
    } else {
     s0+=149.0;
     s1+=20.0;
    }
   }
  } else {
   if(i35<1.1157877445220947){
    if(i42<1.734216493787244e-05){
     s0+=462.0;
     s1+=1173.0;
    } else {
     s0+=2038.0;
     s1+=496.0;
    }
   } else {
    if(i39<1.003570556640625){
     s0+=40.0;
     s1+=1098.0;
    } else {
     s0+=96.0;
     s1+=130.0;
    }
   }
  }
 }
} else {
 if(i29<0.002284941030666232){
  if(i28<0.0005189776420593262){
   if(i34<1.116804838180542){
    if(i31<1.116804838180542){
     s0+=11.0;
     s1+=2667.0;
    } else {
     s0+=103.0;
    }
   } else {
    if(i43<0.03641442954540253){
     s0+=346.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i43<0.040740612894296646){
    s0+=3673.0;
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i54<0.000409543514251709){
   if(i26<1.4667320251464844){
    s1+=7.0;
   } else {
    s0+=65.0;
   }
  } else {
   if(i2<1.0064609050750732){
    if(i15<0.10211038589477539){
     s0+=186.0;
     s1+=209.0;
    } else {
     s0+=36.0;
     s1+=1714.0;
    }
   } else {
    if(i33<-0.0004944205284118652){
     s0+=12.0;
     s1+=606.0;
    } else {
     s0+=1.0;
     s1+=12259.0;
    }
   }
  }
 }
}
if(i40<1.1402404308319092){
 if(i61<-0.00014973123325034976){
  if(i39<1.0002944469451904){
   if(i41<1.0867587327957153){
    s1+=1.0;
   } else {
    s0+=161.0;
   }
  } else {
   if(i2<0.9940532445907593){
    s0+=30.0;
   } else {
    if(i48<2.0802021026611328e-05){
     s0+=57.0;
     s1+=870.0;
    } else {
     s0+=32.0;
    }
   }
  }
 } else {
  if(i6<1.0061392784118652){
   if(i8<1.011711597442627){
    if(i19<0.0016772984527051449){
     s0+=88140.0;
     s1+=867.0;
    } else {
     s0+=21012.0;
     s1+=3581.0;
    }
   } else {
    if(i25<1.0773630142211914){
     s0+=65.0;
     s1+=651.0;
    } else {
     s0+=594.0;
     s1+=340.0;
    }
   }
  } else {
   if(i42<-1.3959424904896878e-05){
    if(i0<0.0014850497245788574){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=42.0;
     s1+=1650.0;
    }
   } else {
    if(i19<0.0017960687400773168){
     s0+=955.0;
     s1+=19.0;
    } else {
     s0+=866.0;
     s1+=1218.0;
    }
   }
  }
 }
} else {
 if(i15<0.12737298011779785){
  if(i45<1.0068931579589844){
   if(i65<-2.1992746042087674e-06){
    if(i32<0.001986755058169365){
     s0+=145.0;
    } else {
     s0+=14.0;
     s1+=252.0;
    }
   } else {
    if(i30<-0.00043746171286329627){
     s0+=298.0;
     s1+=238.0;
    } else {
     s0+=2921.0;
     s1+=111.0;
    }
   }
  } else {
   if(i33<-0.003624528646469116){
    if(i4<0.0014672279357910156){
     s0+=405.0;
     s1+=76.0;
    } else {
     s0+=17.0;
     s1+=88.0;
    }
   } else {
    if(i1<0.00012046098709106445){
     s0+=114.0;
     s1+=251.0;
    } else {
     s1+=386.0;
    }
   }
  }
 } else {
  if(i50<-1.4726811059517786e-05){
   if(i43<0.005997363943606615){
    if(i24<0.002224215306341648){
     s0+=38.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i26<1.1843671798706055){
     s0+=43.0;
    } else {
     s0+=125.0;
     s1+=13387.0;
    }
   }
  } else {
   if(i51<0.05008387193083763){
    if(i7<0.00733641954138875){
     s0+=485.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i38<0.0010543353855609894){
     s0+=81.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=113.0;
    }
   }
  }
 }
}
if(i33<0.001287221908569336){
 if(i22<0.20018506050109863){
  if(i2<1.0031163692474365){
   if(i3<-8.715151489013806e-05){
    if(i16<0.9477017521858215){
     s0+=767.0;
     s1+=87.0;
    } else {
     s0+=222.0;
     s1+=512.0;
    }
   } else {
    if(i0<-0.0006454586982727051){
     s0+=40399.0;
     s1+=358.0;
    } else {
     s0+=68215.0;
     s1+=3958.0;
    }
   }
  } else {
   if(i7<0.004078691825270653){
    if(i7<0.0027851839549839497){
     s0+=4218.0;
     s1+=38.0;
    } else {
     s0+=438.0;
     s1+=124.0;
    }
   } else {
    if(i7<0.00697569502517581){
     s0+=235.0;
     s1+=714.0;
    } else {
     s0+=113.0;
     s1+=1767.0;
    }
   }
  }
 } else {
  if(i56<-3.928325440938352e-06){
   if(i54<0.0019147749990224838){
    if(i45<1.0086092948913574){
     s0+=79.0;
     s1+=4.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i41<1.1240286827087402){
     s0+=9.0;
    } else {
     s0+=96.0;
     s1+=3279.0;
    }
   }
  } else {
   if(i43<0.060408398509025574){
    if(i73<0.010718345642089844){
     s0+=282.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0010145329870283604){
     s0+=62.0;
    } else {
     s0+=3.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i7<0.004949828609824181){
  if(i47<-2.7670459530781955e-05){
   if(i24<0.001091279904358089){
    s1+=645.0;
   } else {
    if(i20<0.000424802303314209){
     s0+=41.0;
    } else {
     s0+=19.0;
     s1+=323.0;
    }
   }
  } else {
   if(i18<0.0002585509791970253){
    if(i57<1.000539779663086){
     s0+=102.0;
    } else {
     s1+=353.0;
    }
   } else {
    if(i43<0.03774051368236542){
     s0+=953.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i57<0.9982767105102539){
   s0+=162.0;
  } else {
   if(i25<1.0229437351226807){
    if(i22<0.07883816957473755){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i28<-0.0006381571292877197){
     s0+=6.0;
     s1+=21.0;
    } else {
     s0+=3.0;
     s1+=12209.0;
    }
   }
  }
 }
}
if(i2<1.003852128982544){
 if(i14<1.0186388492584229){
  if(i38<0.000734373927116394){
   if(i38<0.0005228581139817834){
    if(i29<0.0019176882924512029){
     s0+=63866.0;
     s1+=60.0;
    } else {
     s0+=3419.0;
     s1+=55.0;
    }
   } else {
    if(i41<1.0660673379898071){
     s0+=3556.0;
     s1+=321.0;
    } else {
     s0+=9331.0;
     s1+=125.0;
    }
   }
  } else {
   if(i20<-0.00020885467529296875){
    if(i60<0.004505322780460119){
     s0+=18495.0;
     s1+=477.0;
    } else {
     s0+=2039.0;
     s1+=1095.0;
    }
   } else {
    if(i21<0.01021210104227066){
     s0+=9036.0;
     s1+=658.0;
    } else {
     s0+=1869.0;
     s1+=2610.0;
    }
   }
  }
 } else {
  if(i56<-2.770299033727497e-06){
   if(i57<1.0015394687652588){
    if(i7<0.006629995070397854){
     s0+=196.0;
     s1+=140.0;
    } else {
     s0+=33.0;
     s1+=981.0;
    }
   } else {
    if(i47<0.00013843357737641782){
     s0+=184.0;
     s1+=2.0;
    } else {
     s0+=61.0;
     s1+=70.0;
    }
   }
  } else {
   if(i19<0.0026227012276649475){
    s0+=401.0;
   } else {
    if(i59<-0.0005696682492271066){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i54<0.001926520955748856){
  if(i33<0.001236259937286377){
   if(i24<0.0009450702928006649){
    if(i24<0.00024030767963267863){
     s0+=622.0;
    } else {
     s1+=515.0;
    }
   } else {
    if(i29<0.002347563160583377){
     s0+=2433.0;
    } else {
     s0+=120.0;
     s1+=117.0;
    }
   }
  } else {
   if(i48<2.2351741790771484e-05){
    if(i38<0.0023601946886628866){
     s0+=389.0;
     s1+=3714.0;
    } else {
     s0+=141.0;
     s1+=23.0;
    }
   } else {
    if(i33<0.0037037134170532227){
     s0+=416.0;
    } else {
     s1+=52.0;
    }
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i24<0.0020281921606510878){
    s0+=71.0;
   } else {
    if(i12<1.0056452751159668){
     s0+=1.0;
     s1+=75.0;
    } else {
     s0+=5.0;
    }
   }
  } else {
   if(i17<0.10582420229911804){
    if(i73<0.0037364959716796875){
     s0+=87.0;
     s1+=589.0;
    } else {
     s0+=32.0;
     s1+=7.0;
    }
   } else {
    if(i7<0.003099074587225914){
     s0+=17.0;
     s1+=120.0;
    } else {
     s0+=19.0;
     s1+=12212.0;
    }
   }
  }
 }
}
if(i10<1.0101144313812256){
 if(i0<0.0009596943855285645){
  if(i7<0.007543252315372229){
   if(i7<0.003660991322249174){
    if(i19<0.0009778166422620416){
     s0+=67761.0;
     s1+=203.0;
    } else {
     s0+=21941.0;
     s1+=931.0;
    }
   } else {
    if(i28<4.3451786041259766e-05){
     s0+=13166.0;
     s1+=78.0;
    } else {
     s0+=5714.0;
     s1+=2903.0;
    }
   }
  } else {
   if(i22<0.07028180360794067){
    if(i12<1.002833604812622){
     s0+=3686.0;
     s1+=129.0;
    } else {
     s0+=578.0;
     s1+=218.0;
    }
   } else {
    if(i5<-1.7881393432617188e-07){
     s0+=488.0;
     s1+=287.0;
    } else {
     s0+=400.0;
     s1+=2727.0;
    }
   }
  }
 } else {
  if(i53<0.04318449646234512){
   if(i46<0.0009333482594229281){
    if(i32<0.00017516629304736853){
     s0+=77.0;
    } else {
     s0+=10.0;
     s1+=340.0;
    }
   } else {
    if(i13<0.996658980846405){
     s0+=5.0;
     s1+=41.0;
    } else {
     s0+=557.0;
     s1+=44.0;
    }
   }
  } else {
   if(i18<0.0011626067571341991){
    if(i16<0.9566062688827515){
     s0+=44.0;
     s1+=109.0;
    } else {
     s0+=68.0;
     s1+=2014.0;
    }
   } else {
    s0+=27.0;
   }
  }
 }
} else {
 if(i7<0.00398608110845089){
  if(i55<0.0005360043724067509){
   if(i65<-3.209633632650366e-06){
    if(i67<0.0013440251350402832){
     s0+=2.0;
     s1+=516.0;
    } else {
     s0+=12.0;
     s1+=7.0;
    }
   } else {
    if(i75<0.0581817626953125){
     s0+=88.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i24<0.0027401666156947613){
    if(i16<1.0075416564941406){
     s0+=2.0;
     s1+=9.0;
    } else {
     s0+=1287.0;
     s1+=11.0;
    }
   } else {
    if(i10<1.0116286277770996){
     s0+=46.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=268.0;
    }
   }
  }
 } else {
  if(i10<1.012169361114502){
   if(i57<0.999686598777771){
    s0+=103.0;
   } else {
    if(i5<-2.473592758178711e-06){
     s0+=12.0;
    } else {
     s0+=54.0;
     s1+=923.0;
    }
   }
  } else {
   if(i43<0.005201729014515877){
    if(i57<0.9988144636154175){
     s0+=21.0;
    } else {
     s1+=202.0;
    }
   } else {
    if(i28<0.0015126466751098633){
     s0+=1.0;
     s1+=12555.0;
    } else {
     s0+=3.0;
     s1+=176.0;
    }
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i3<-8.035558130359277e-05){
  if(i35<1.0453444719314575){
   if(i70<0.07946565747261047){
    if(i22<0.07699030637741089){
     s0+=1069.0;
     s1+=83.0;
    } else {
     s0+=20.0;
     s1+=50.0;
    }
   } else {
    if(i20<-0.0007130801677703857){
     s0+=18.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=38.0;
    }
   }
  } else {
   if(i30<-0.00032792077399790287){
    if(i21<0.013857132755219936){
     s0+=34.0;
     s1+=27.0;
    } else {
     s0+=25.0;
     s1+=1963.0;
    }
   } else {
    if(i21<0.022153686732053757){
     s0+=155.0;
     s1+=15.0;
    } else {
     s0+=15.0;
     s1+=169.0;
    }
   }
  }
 } else {
  if(i4<0.00029033422470092773){
   if(i29<0.0010683323489502072){
    if(i41<1.0433523654937744){
     s0+=19530.0;
     s1+=268.0;
    } else {
     s0+=10400.0;
     s1+=1820.0;
    }
   } else {
    if(i40<1.122455358505249){
     s0+=67015.0;
     s1+=201.0;
    } else {
     s0+=5952.0;
     s1+=415.0;
    }
   }
  } else {
   if(i18<0.00034465649514459074){
    if(i34<1.0926339626312256){
     s0+=24.0;
     s1+=1393.0;
    } else {
     s0+=5020.0;
     s1+=1302.0;
    }
   } else {
    if(i7<0.007724836468696594){
     s0+=4671.0;
     s1+=13.0;
    } else {
     s0+=508.0;
     s1+=197.0;
    }
   }
  }
 }
} else {
 if(i32<0.002015113364905119){
  if(i54<0.0010254615917801857){
   if(i32<0.00018522943719290197){
    s0+=85.0;
   } else {
    if(i28<-5.900859832763672e-05){
     s0+=16.0;
    } else {
     s0+=13.0;
     s1+=2267.0;
    }
   }
  } else {
   if(i26<1.105151891708374){
    s1+=66.0;
   } else {
    if(i68<-0.0016247034072875977){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=1937.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i38<0.004071731586009264){
   if(i40<1.0860360860824585){
    if(i20<-0.00036466121673583984){
     s0+=26.0;
     s1+=1.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i17<0.054177433252334595){
     s0+=57.0;
     s1+=153.0;
    } else {
     s0+=41.0;
     s1+=13647.0;
    }
   }
  } else {
   s0+=37.0;
  }
 }
}
if(i4<0.0005885958671569824){
 if(i19<0.0017281806794926524){
  if(i61<0.00017948579625226557){
   if(i19<0.001227516564540565){
    if(i3<-5.839441291755065e-05){
     s0+=196.0;
     s1+=16.0;
    } else {
     s0+=67818.0;
     s1+=148.0;
    }
   } else {
    if(i12<0.9994529485702515){
     s0+=5373.0;
    } else {
     s0+=2142.0;
     s1+=211.0;
    }
   }
  } else {
   if(i38<0.0006361054256558418){
    if(i20<-0.00013777613639831543){
     s0+=8670.0;
    } else {
     s0+=2928.0;
     s1+=162.0;
    }
   } else {
    if(i33<-0.0010849535465240479){
     s0+=2001.0;
     s1+=50.0;
    } else {
     s0+=422.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i3<-0.00010457235475769266){
   if(i25<1.0743229389190674){
    if(i23<0.9242016077041626){
     s0+=224.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=15.0;
    }
   } else {
    if(i50<-0.00011163058661622927){
     s0+=7.0;
    } else {
     s0+=42.0;
     s1+=683.0;
    }
   }
  } else {
   if(i41<1.0903346538543701){
    if(i6<0.9969355463981628){
     s0+=2356.0;
     s1+=6.0;
    } else {
     s0+=1461.0;
     s1+=2446.0;
    }
   } else {
    if(i23<1.0242831707000732){
     s0+=16204.0;
     s1+=913.0;
    } else {
     s0+=195.0;
     s1+=307.0;
    }
   }
  }
 }
} else {
 if(i37<0.0030000684782862663){
  if(i26<1.116804838180542){
   if(i24<0.0002503562136553228){
    s0+=1272.0;
   } else {
    s1+=2922.0;
   }
  } else {
   if(i31<1.197878360748291){
    if(i67<-0.0011539161205291748){
     s0+=114.0;
     s1+=28.0;
    } else {
     s0+=3534.0;
     s1+=9.0;
    }
   } else {
    if(i7<0.00441753352060914){
     s0+=170.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=391.0;
    }
   }
  }
 } else {
  if(i15<0.07568880915641785){
   if(i5<5.608797073364258e-05){
    if(i60<0.007036043331027031){
     s0+=591.0;
     s1+=26.0;
    } else {
     s0+=316.0;
     s1+=218.0;
    }
   } else {
    if(i49<0.9914535284042358){
     s0+=60.0;
     s1+=268.0;
    } else {
     s0+=89.0;
     s1+=19.0;
    }
   }
  } else {
   if(i7<0.006651435513049364){
    if(i11<1.0225224494934082){
     s0+=154.0;
     s1+=278.0;
    } else {
     s0+=21.0;
     s1+=579.0;
    }
   } else {
    if(i2<0.9996843338012695){
     s0+=97.0;
     s1+=107.0;
    } else {
     s0+=89.0;
     s1+=14029.0;
    }
   }
  }
 }
}
if(i4<0.0005906224250793457){
 if(i17<0.22338742017745972){
  if(i19<0.0017270424868911505){
   if(i38<0.000574491685256362){
    if(i58<1.0015122890472412){
     s0+=63834.0;
     s1+=115.0;
    } else {
     s0+=7043.0;
     s1+=94.0;
    }
   } else {
    if(i41<1.0682950019836426){
     s0+=5484.0;
     s1+=613.0;
    } else {
     s0+=12573.0;
     s1+=131.0;
    }
   }
  } else {
   if(i5<-1.1324882507324219e-06){
    if(i29<0.0003206268302164972){
     s0+=5.0;
     s1+=104.0;
    } else {
     s0+=14826.0;
     s1+=303.0;
    }
   } else {
    if(i38<0.0011332212015986443){
     s0+=695.0;
     s1+=2652.0;
    } else {
     s0+=5100.0;
     s1+=709.0;
    }
   }
  }
 } else {
  if(i21<0.03475969284772873){
   if(i75<0.14499172568321228){
    if(i12<1.0006259679794312){
     s0+=12.0;
    } else {
     s0+=2.0;
     s1+=44.0;
    }
   } else {
    if(i13<0.9211031794548035){
     s1+=1.0;
    } else {
     s0+=172.0;
     s1+=2.0;
    }
   }
  } else {
   if(i41<1.1306984424591064){
    s0+=3.0;
   } else {
    if(i7<0.005912591703236103){
     s0+=8.0;
    } else {
     s1+=570.0;
    }
   }
  }
 }
} else {
 if(i22<0.15998652577400208){
  if(i30<-0.0002286269882461056){
   if(i10<1.0140657424926758){
    if(i37<0.0012220727512612939){
     s0+=8.0;
     s1+=650.0;
    } else {
     s0+=960.0;
     s1+=1134.0;
    }
   } else {
    if(i48<2.9653310775756836e-05){
     s0+=28.0;
     s1+=1531.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i28<0.0004916191101074219){
    if(i10<1.005860447883606){
     s0+=781.0;
     s1+=249.0;
    } else {
     s0+=43.0;
     s1+=1381.0;
    }
   } else {
    if(i2<1.0102311372756958){
     s0+=4306.0;
     s1+=390.0;
    } else {
     s1+=342.0;
    }
   }
  }
 } else {
  if(i37<0.0019251671619713306){
   if(i31<1.116804838180542){
    if(i26<1.125709891319275){
     s1+=44.0;
    } else {
     s0+=6.0;
    }
   } else {
    s0+=314.0;
   }
  } else {
   if(i1<2.2649765014648438e-06){
    if(i3<-4.893715959042311e-05){
     s0+=3.0;
     s1+=139.0;
    } else {
     s0+=58.0;
     s1+=18.0;
    }
   } else {
    if(i18<0.0019324554596096277){
     s0+=43.0;
     s1+=13318.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
}
if(i4<0.000571906566619873){
 if(i14<1.0219464302062988){
  if(i7<0.0034244265407323837){
   if(i19<0.001028986880555749){
    if(i41<1.1354830265045166){
     s0+=62652.0;
     s1+=123.0;
    } else {
     s0+=4651.0;
     s1+=92.0;
    }
   } else {
    if(i24<0.0005629537045024335){
     s0+=2638.0;
     s1+=659.0;
    } else {
     s0+=14932.0;
     s1+=93.0;
    }
   }
  } else {
   if(i0<-0.0003903508186340332){
    if(i4<-0.0002600252628326416){
     s0+=18437.0;
     s1+=132.0;
    } else {
     s0+=4297.0;
     s1+=745.0;
    }
   } else {
    if(i45<0.9997179508209229){
     s0+=1220.0;
     s1+=125.0;
    } else {
     s0+=754.0;
     s1+=2450.0;
    }
   }
  }
 } else {
  if(i7<0.005052757915109396){
   if(i6<1.0033369064331055){
    if(i47<0.00016044589574448764){
     s0+=420.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i50<-4.451627319213003e-06){
    if(i37<0.0015396589878946543){
     s0+=6.0;
     s1+=107.0;
    } else {
     s1+=578.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
} else {
 if(i22<0.15999147295951843){
  if(i1<8.195638656616211e-05){
   if(i43<0.025584280490875244){
    if(i24<0.000948658271227032){
     s0+=1355.0;
     s1+=771.0;
    } else {
     s0+=2452.0;
     s1+=70.0;
    }
   } else {
    if(i2<1.0002219676971436){
     s0+=684.0;
     s1+=139.0;
    } else {
     s0+=569.0;
     s1+=1186.0;
    }
   }
  } else {
   if(i28<0.001151353120803833){
    if(i7<0.002837798558175564){
     s0+=226.0;
     s1+=375.0;
    } else {
     s0+=174.0;
     s1+=3054.0;
    }
   } else {
    if(i21<0.020291034132242203){
     s0+=682.0;
    } else {
     s1+=94.0;
    }
   }
  }
 } else {
  if(i3<-5.821307058795355e-05){
   if(i29<0.0024202698841691017){
    if(i36<0.12178739905357361){
     s1+=31.0;
    } else {
     s0+=71.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.18915608525276184){
     s0+=7.0;
     s1+=1025.0;
    } else {
     s1+=11925.0;
    }
   }
  } else {
   if(i7<0.006288854870945215){
    if(i44<1.0003604888916016){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=299.0;
     s1+=4.0;
    }
   } else {
    if(i2<0.9996662735939026){
     s0+=21.0;
     s1+=15.0;
    } else {
     s0+=19.0;
     s1+=449.0;
    }
   }
  }
 }
}
if(i1<6.586313247680664e-05){
 if(i5<1.8298625946044922e-05){
  if(i22<0.21726033091545105){
   if(i23<1.0212044715881348){
    if(i28<7.933378219604492e-05){
     s0+=77431.0;
     s1+=832.0;
    } else {
     s0+=29929.0;
     s1+=2754.0;
    }
   } else {
    if(i28<7.152557373046875e-07){
     s0+=423.0;
     s1+=11.0;
    } else {
     s0+=349.0;
     s1+=319.0;
    }
   }
  } else {
   if(i75<0.14233234524726868){
    if(i56<-2.9432853807520587e-06){
     s0+=4.0;
     s1+=277.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i24<0.0077167050912976265){
     s0+=150.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i43<0.024925783276557922){
   if(i28<0.00037106871604919434){
    if(i21<0.006710750050842762){
     s0+=759.0;
     s1+=112.0;
    } else {
     s0+=47.0;
     s1+=502.0;
    }
   } else {
    if(i7<0.004451935179531574){
     s0+=3581.0;
     s1+=12.0;
    } else {
     s0+=230.0;
     s1+=98.0;
    }
   }
  } else {
   if(i25<1.1076748371124268){
    if(i29<0.0012559841852635145){
     s0+=6.0;
     s1+=359.0;
    } else {
     s0+=1387.0;
     s1+=508.0;
    }
   } else {
    if(i7<0.006694859359413385){
     s0+=148.0;
     s1+=167.0;
    } else {
     s0+=122.0;
     s1+=1861.0;
    }
   }
  }
 }
} else {
 if(i53<0.03588664531707764){
  if(i38<0.0010863279458135366){
   if(i58<1.0030112266540527){
    if(i4<0.0005983114242553711){
     s0+=78.0;
    } else {
     s0+=94.0;
     s1+=2496.0;
    }
   } else {
    if(i41<1.1729364395141602){
     s0+=298.0;
     s1+=17.0;
    } else {
     s0+=5.0;
     s1+=76.0;
    }
   }
  } else {
   if(i24<0.0024140647146850824){
    if(i52<-2.158101779059507e-06){
     s0+=1361.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i13<0.9012646675109863){
     s0+=1.0;
    } else {
     s1+=786.0;
    }
   }
  }
 } else {
  if(i26<1.1843671798706055){
   if(i26<1.1180615425109863){
    s1+=471.0;
   } else {
    s0+=136.0;
   }
  } else {
   if(i40<1.075517177581787){
    if(i37<0.011722447350621223){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i20<-0.00023883581161499023){
     s0+=57.0;
     s1+=465.0;
    } else {
     s0+=20.0;
     s1+=11938.0;
    }
   }
  }
 }
}
if(i1<6.407499313354492e-05){
 if(i22<0.21511578559875488){
  if(i19<0.0017282022163271904){
   if(i68<-0.0007867217063903809){
    if(i29<0.00026270089438185096){
     s0+=958.0;
     s1+=220.0;
    } else {
     s0+=12125.0;
     s1+=283.0;
    }
   } else {
    if(i34<1.0776758193969727){
     s0+=20440.0;
     s1+=316.0;
    } else {
     s0+=57589.0;
     s1+=216.0;
    }
   }
  } else {
   if(i27<0.9952720403671265){
    if(i25<1.1230299472808838){
     s0+=16157.0;
     s1+=486.0;
    } else {
     s0+=463.0;
     s1+=414.0;
    }
   } else {
    if(i58<0.9998273849487305){
     s0+=2976.0;
     s1+=128.0;
    } else {
     s0+=3243.0;
     s1+=4496.0;
    }
   }
  }
 } else {
  if(i18<0.00013934305752627552){
   if(i7<0.006501123309135437){
    if(i1<-7.230043411254883e-05){
     s1+=1.0;
    } else {
     s0+=78.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i34<1.1759499311447144){
    if(i33<0.000966191291809082){
     s0+=65.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   } else {
    if(i54<0.0019579806830734015){
     s0+=17.0;
     s1+=3.0;
    } else {
     s0+=54.0;
     s1+=1346.0;
    }
   }
  }
 }
} else {
 if(i48<2.5928020477294922e-05){
  if(i18<0.0007058108458295465){
   if(i16<0.9553759098052979){
    if(i2<1.0061852931976318){
     s0+=52.0;
     s1+=48.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i20<0.00020813941955566406){
     s0+=231.0;
     s1+=3274.0;
    } else {
     s0+=21.0;
     s1+=13005.0;
    }
   }
  } else {
   s0+=1238.0;
  }
 } else {
  if(i21<0.015297324396669865){
   if(i4<0.0034140944480895996){
    s0+=650.0;
   } else {
    s1+=7.0;
   }
  } else {
   s1+=153.0;
  }
 }
}
if(i0<0.0009605884552001953){
 if(i21<0.061644792556762695){
  if(i4<0.00029402971267700195){
   if(i24<0.0008680314058437943){
    if(i19<0.001727757160551846){
     s0+=28734.0;
     s1+=699.0;
    } else {
     s0+=793.0;
     s1+=1378.0;
    }
   } else {
    if(i3<-6.014150858391076e-05){
     s0+=2035.0;
     s1+=321.0;
    } else {
     s0+=71674.0;
     s1+=377.0;
    }
   }
  } else {
   if(i13<1.0183205604553223){
    if(i66<0.047762855887413025){
     s0+=8402.0;
     s1+=1259.0;
    } else {
     s0+=1981.0;
     s1+=1479.0;
    }
   } else {
    if(i28<0.0006507039070129395){
     s0+=46.0;
     s1+=945.0;
    } else {
     s0+=264.0;
     s1+=108.0;
    }
   }
  }
 } else {
  if(i40<1.1163756847381592){
   if(i9<0.7627853155136108){
    s1+=1.0;
   } else {
    s0+=366.0;
   }
  } else {
   if(i25<1.0700533390045166){
    if(i3<3.464122710283846e-05){
     s0+=52.0;
     s1+=10.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i62<0.0005486949812620878){
     s0+=17.0;
     s1+=25.0;
    } else {
     s0+=24.0;
     s1+=1340.0;
    }
   }
  }
 }
} else {
 if(i29<0.0024066336918622255){
  if(i18<0.00024617204326204956){
   if(i3<-0.00024408023455180228){
    s0+=19.0;
   } else {
    s1+=2383.0;
   }
  } else {
   s0+=2062.0;
  }
 } else {
  if(i17<0.01153591275215149){
   if(i24<0.010007296688854694){
    if(i58<1.0031989812850952){
     s1+=23.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i45<1.0267046689987183){
     s0+=41.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i33<-0.004086315631866455){
    if(i71<-1.962717306014383e-06){
     s0+=2.0;
     s1+=34.0;
    } else {
     s0+=17.0;
     s1+=13.0;
    }
   } else {
    if(i15<0.09759768843650818){
     s0+=44.0;
     s1+=548.0;
    } else {
     s0+=8.0;
     s1+=13304.0;
    }
   }
  }
 }
}
if(i44<1.0277645587921143){
 if(i3<-8.083653665380552e-05){
  if(i22<0.05188220739364624){
   if(i35<1.064848780632019){
    if(i33<0.002032339572906494){
     s0+=1027.0;
     s1+=116.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i72<-0.04626670479774475){
     s0+=23.0;
     s1+=167.0;
    } else {
     s0+=44.0;
     s1+=4.0;
    }
   }
  } else {
   if(i29<0.002299671061336994){
    if(i52<-3.044498498638859e-06){
     s0+=318.0;
     s1+=2.0;
    } else {
     s0+=54.0;
     s1+=727.0;
    }
   } else {
    if(i68<-0.016571044921875){
     s0+=40.0;
     s1+=21.0;
    } else {
     s0+=85.0;
     s1+=4440.0;
    }
   }
  }
 } else {
  if(i1<6.479024887084961e-05){
   if(i11<1.0077850818634033){
    if(i41<1.0902695655822754){
     s0+=38879.0;
     s1+=2616.0;
    } else {
     s0+=69121.0;
     s1+=1196.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s0+=180.0;
     s1+=676.0;
    } else {
     s0+=3936.0;
     s1+=215.0;
    }
   }
  } else {
   if(i7<0.002773779444396496){
    if(i28<0.0005236268043518066){
     s0+=44.0;
     s1+=212.0;
    } else {
     s0+=1151.0;
    }
   } else {
    if(i28<0.000523686408996582){
     s0+=14.0;
     s1+=1016.0;
    } else {
     s0+=269.0;
     s1+=374.0;
    }
   }
  }
 }
} else {
 if(i5<1.150369644165039e-05){
  if(i3<-5.080451228423044e-05){
   if(i17<0.1614474654197693){
    if(i1<-1.9311904907226562e-05){
     s0+=40.0;
    } else {
     s0+=15.0;
     s1+=15.0;
    }
   } else {
    if(i50<-1.0578099136182573e-05){
     s0+=8.0;
     s1+=289.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i7<0.008381771855056286){
    if(i19<0.0024287127889692783){
     s0+=729.0;
     s1+=12.0;
    } else {
     s0+=78.0;
     s1+=27.0;
    }
   } else {
    if(i61<0.0010683208238333464){
     s1+=15.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i22<0.11990171670913696){
   if(i11<1.0135029554367065){
    if(i40<1.0635141134262085){
     s1+=26.0;
    } else {
     s0+=187.0;
     s1+=20.0;
    }
   } else {
    if(i56<-1.2371587217785418e-05){
     s0+=58.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=142.0;
    }
   }
  } else {
   if(i34<1.1757044792175293){
    if(i18<0.000315304147079587){
     s0+=34.0;
     s1+=638.0;
    } else {
     s0+=193.0;
    }
   } else {
    if(i3<-2.861575921997428e-05){
     s0+=39.0;
     s1+=11076.0;
    } else {
     s0+=79.0;
     s1+=107.0;
    }
   }
  }
 }
}
if(i3<-9.114392742048949e-05){
 if(i25<1.038961410522461){
  if(i8<0.9654882550239563){
   if(i71<-1.727390099404147e-06){
    if(i0<0.0004035830497741699){
     s0+=13.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i11<0.9089981317520142){
     s0+=58.0;
     s1+=4.0;
    } else {
     s0+=443.0;
    }
   }
  } else {
   if(i61<7.649353210581467e-05){
    s0+=2.0;
   } else {
    s1+=52.0;
   }
  }
 } else {
  if(i57<0.9981790781021118){
   s0+=228.0;
  } else {
   if(i23<0.8935535550117493){
    if(i15<0.01737082004547119){
     s0+=182.0;
     s1+=45.0;
    } else {
     s0+=80.0;
     s1+=202.0;
    }
   } else {
    if(i23<1.0251660346984863){
     s0+=179.0;
     s1+=4391.0;
    } else {
     s0+=8.0;
     s1+=11181.0;
    }
   }
  }
 }
} else {
 if(i6<1.0045123100280762){
  if(i24<0.0009051371598616242){
   if(i17<0.0630502700805664){
    if(i4<0.0001430511474609375){
     s0+=26812.0;
     s1+=1239.0;
    } else {
     s0+=3386.0;
     s1+=920.0;
    }
   } else {
    if(i24<0.00048380353837274015){
     s0+=1277.0;
     s1+=490.0;
    } else {
     s0+=52.0;
     s1+=1367.0;
    }
   }
  } else {
   if(i8<1.0147008895874023){
    if(i14<1.0288498401641846){
     s0+=79333.0;
     s1+=1214.0;
    } else {
     s0+=37.0;
     s1+=117.0;
    }
   } else {
    if(i58<1.0013611316680908){
     s0+=256.0;
     s1+=9.0;
    } else {
     s0+=186.0;
     s1+=388.0;
    }
   }
  }
 } else {
  if(i26<1.116804838180542){
   if(i24<0.00024795252829790115){
    s0+=360.0;
   } else {
    s1+=1429.0;
   }
  } else {
   if(i7<0.005844189785420895){
    if(i59<0.0014481144025921822){
     s0+=3125.0;
     s1+=32.0;
    } else {
     s0+=33.0;
     s1+=45.0;
    }
   } else {
    if(i15<0.08915036916732788){
     s0+=301.0;
     s1+=188.0;
    } else {
     s0+=66.0;
     s1+=1128.0;
    }
   }
  }
 }
}
if(i23<1.0213007926940918){
 if(i0<0.0010586380958557129){
  if(i5<1.901388168334961e-05){
   if(i7<0.0034244265407323837){
    if(i24<0.0005703093484044075){
     s0+=26199.0;
     s1+=723.0;
    } else {
     s0+=57076.0;
     s1+=144.0;
    }
   } else {
    if(i5<-3.635883331298828e-06){
     s0+=20241.0;
     s1+=364.0;
    } else {
     s0+=3954.0;
     s1+=2721.0;
    }
   }
  } else {
   if(i35<1.116865873336792){
    if(i7<0.00417274609208107){
     s0+=4040.0;
     s1+=47.0;
    } else {
     s0+=1626.0;
     s1+=1606.0;
    }
   } else {
    if(i43<0.028727170079946518){
     s0+=203.0;
     s1+=1.0;
    } else {
     s0+=62.0;
     s1+=751.0;
    }
   }
  }
 } else {
  if(i7<0.0035568824969232082){
   if(i6<1.011162519454956){
    if(i26<1.0986645221710205){
     s0+=3.0;
     s1+=222.0;
    } else {
     s0+=1019.0;
    }
   } else {
    if(i0<0.0018295645713806152){
     s0+=12.0;
    } else {
     s0+=9.0;
     s1+=256.0;
    }
   }
  } else {
   if(i39<1.0008840560913086){
    if(i7<0.013345158658921719){
     s0+=193.0;
    } else {
     s1+=92.0;
    }
   } else {
    if(i2<1.0036683082580566){
     s0+=19.0;
     s1+=17.0;
    } else {
     s0+=115.0;
     s1+=4018.0;
    }
   }
  }
 }
} else {
 if(i7<0.005013410001993179){
  if(i33<0.0017006397247314453){
   if(i26<1.0780352354049683){
    s1+=76.0;
   } else {
    if(i37<0.0019601755775511265){
     s0+=732.0;
     s1+=4.0;
    } else {
     s0+=658.0;
     s1+=119.0;
    }
   }
  } else {
   if(i38<0.0013355896808207035){
    if(i0<0.0017719864845275879){
     s0+=6.0;
     s1+=26.0;
    } else {
     s1+=383.0;
    }
   } else {
    if(i0<0.0051056742668151855){
     s0+=26.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i2<0.9986186027526855){
   if(i62<0.0007480958011001348){
    if(i60<-0.00596215482801199){
     s1+=2.0;
    } else {
     s0+=42.0;
     s1+=1.0;
    }
   } else {
    if(i37<0.0025940858758985996){
     s0+=20.0;
    } else {
     s0+=11.0;
     s1+=117.0;
    }
   }
  } else {
   if(i18<0.001178009551949799){
    if(i3<-5.133032027515583e-05){
     s0+=19.0;
     s1+=12362.0;
    } else {
     s0+=31.0;
     s1+=457.0;
    }
   } else {
    s0+=27.0;
   }
  }
 }
}
if(i1<6.312131881713867e-05){
 if(i23<1.0217843055725098){
  if(i15<0.20646509528160095){
   if(i21<0.007399183697998524){
    if(i61<0.0001879967749118805){
     s0+=68579.0;
     s1+=382.0;
    } else {
     s0+=3925.0;
     s1+=388.0;
    }
   } else {
    if(i24<0.0009752730838954449){
     s0+=7400.0;
     s1+=2690.0;
    } else {
     s0+=32919.0;
     s1+=2036.0;
    }
   }
  } else {
   if(i7<0.0064681051298975945){
    if(i57<1.0008848905563354){
     s0+=96.0;
    } else {
     s0+=57.0;
     s1+=9.0;
    }
   } else {
    if(i54<0.0018018714617937803){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=522.0;
    }
   }
  }
 } else {
  if(i7<0.0049379607662558556){
   if(i58<1.0016348361968994){
    if(i35<1.0539169311523438){
     s1+=4.0;
    } else {
     s0+=573.0;
    }
   } else {
    if(i3<-6.755781214451417e-05){
     s0+=15.0;
     s1+=82.0;
    } else {
     s0+=447.0;
     s1+=31.0;
    }
   }
  } else {
   if(i17<0.08906427025794983){
    if(i33<-0.00013124942779541016){
     s0+=42.0;
    } else {
     s0+=4.0;
     s1+=13.0;
    }
   } else {
    if(i4<-0.0008937418460845947){
     s0+=23.0;
     s1+=2.0;
    } else {
     s0+=51.0;
     s1+=1676.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007044489029794931){
  if(i56<-5.673414852935821e-05){
   s0+=89.0;
  } else {
   if(i2<1.0052918195724487){
    if(i7<0.0035342301707714796){
     s0+=74.0;
    } else {
     s0+=72.0;
     s1+=674.0;
    }
   } else {
    if(i15<0.16069668531417847){
     s0+=177.0;
     s1+=4187.0;
    } else {
     s0+=3.0;
     s1+=11826.0;
    }
   }
  }
 } else {
  if(i60<-0.007349803112447262){
   s1+=1.0;
  } else {
   s0+=1782.0;
  }
 }
}
if(i11<1.0135858058929443){
 if(i45<1.0069324970245361){
  if(i8<1.0083081722259521){
   if(i25<1.1548320055007935){
    if(i12<1.0026265382766724){
     s0+=106802.0;
     s1+=3444.0;
    } else {
     s0+=2450.0;
     s1+=927.0;
    }
   } else {
    if(i21<0.03785478696227074){
     s0+=391.0;
     s1+=37.0;
    } else {
     s0+=29.0;
     s1+=852.0;
    }
   }
  } else {
   if(i64<1.0452959537506104){
    if(i26<1.1180615425109863){
     s0+=82.0;
     s1+=758.0;
    } else {
     s0+=589.0;
     s1+=52.0;
    }
   } else {
    if(i61<0.00015351001638919115){
     s0+=3043.0;
     s1+=435.0;
    } else {
     s0+=38.0;
     s1+=392.0;
    }
   }
  }
 } else {
  if(i22<0.09484651684761047){
   if(i10<0.9784753322601318){
    if(i12<1.0069167613983154){
     s0+=903.0;
     s1+=113.0;
    } else {
     s0+=6.0;
     s1+=69.0;
    }
   } else {
    if(i67<9.691715240478516e-05){
     s0+=202.0;
     s1+=483.0;
    } else {
     s0+=231.0;
     s1+=27.0;
    }
   }
  } else {
   if(i52<-5.671840426657582e-06){
    if(i41<1.3063979148864746){
     s0+=118.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i4<0.0003883242607116699){
     s0+=60.0;
     s1+=47.0;
    } else {
     s0+=181.0;
     s1+=2183.0;
    }
   }
  }
 }
} else {
 if(i10<1.0147114992141724){
  if(i15<0.20828557014465332){
   if(i41<1.0905578136444092){
    if(i57<0.9995231032371521){
     s0+=1.0;
    } else {
     s1+=870.0;
    }
   } else {
    if(i34<1.1757044792175293){
     s0+=840.0;
     s1+=90.0;
    } else {
     s0+=355.0;
     s1+=510.0;
    }
   }
  } else {
   if(i54<0.0020053915213793516){
    if(i18<0.0003145072259940207){
     s1+=2.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i40<1.6038397550582886){
     s0+=14.0;
     s1+=1406.0;
    } else {
     s0+=16.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i52<-6.357997335726395e-06){
   s0+=44.0;
  } else {
   if(i58<1.003727912902832){
    s1+=10381.0;
   } else {
    if(i19<0.0017177904956042767){
     s0+=10.0;
    } else {
     s1+=1362.0;
    }
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i7<0.007754332385957241){
  if(i3<-7.146377902245149e-05){
   if(i57<0.999845027923584){
    if(i57<0.9998028874397278){
     s0+=339.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i31<1.2980248928070068){
     s0+=69.0;
     s1+=341.0;
    } else {
     s0+=77.0;
     s1+=8.0;
    }
   }
  } else {
   if(i34<1.0903575420379639){
    if(i31<1.0577976703643799){
     s0+=19541.0;
     s1+=4.0;
    } else {
     s0+=9256.0;
     s1+=2825.0;
    }
   } else {
    if(i2<1.001765251159668){
     s0+=70180.0;
     s1+=641.0;
    } else {
     s0+=10118.0;
     s1+=496.0;
    }
   }
  }
 } else {
  if(i35<1.0529450178146362){
   if(i42<1.7024320186465047e-05){
    if(i28<0.0005307793617248535){
     s1+=198.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i56<-1.9462735508568585e-05){
     s0+=63.0;
     s1+=49.0;
    } else {
     s0+=4188.0;
     s1+=244.0;
    }
   }
  } else {
   if(i30<-1.5558915038127452e-05){
    if(i45<0.9952623844146729){
     s0+=103.0;
     s1+=9.0;
    } else {
     s0+=161.0;
     s1+=2861.0;
    }
   } else {
    if(i0<-0.0004642009735107422){
     s0+=313.0;
     s1+=30.0;
    } else {
     s0+=17.0;
     s1+=103.0;
    }
   }
  }
 }
} else {
 if(i52<-8.785143108980265e-06){
  s0+=586.0;
 } else {
  if(i41<1.1703872680664062){
   if(i54<0.0010128486901521683){
    if(i28<0.0005934834480285645){
     s0+=4.0;
     s1+=2329.0;
    } else {
     s0+=66.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.005136705935001373){
     s0+=1276.0;
     s1+=59.0;
    } else {
     s0+=31.0;
     s1+=621.0;
    }
   }
  } else {
   if(i22<0.002888798713684082){
    if(i1<0.00014197826385498047){
     s0+=31.0;
     s1+=5.0;
    } else {
     s1+=28.0;
    }
   } else {
    if(i15<0.09465053677558899){
     s0+=50.0;
     s1+=504.0;
    } else {
     s0+=17.0;
     s1+=13006.0;
    }
   }
  }
 }
}
if(i8<1.015446662902832){
 if(i45<1.006932020187378){
  if(i3<-8.082218118943274e-05){
   if(i63<-0.0008168038912117481){
    if(i31<1.168038249015808){
     s0+=60.0;
     s1+=16.0;
    } else {
     s0+=60.0;
     s1+=1244.0;
    }
   } else {
    if(i22<0.08327937126159668){
     s0+=814.0;
     s1+=129.0;
    } else {
     s0+=254.0;
     s1+=362.0;
    }
   }
  } else {
   if(i4<0.000279843807220459){
    if(i38<0.00066241534659639){
     s0+=72590.0;
     s1+=325.0;
    } else {
     s0+=29046.0;
     s1+=2371.0;
    }
   } else {
    if(i7<0.004090173169970512){
     s0+=9575.0;
     s1+=425.0;
    } else {
     s0+=1350.0;
     s1+=2369.0;
    }
   }
  }
 } else {
  if(i2<1.0014996528625488){
   if(i15<0.09913155436515808){
    if(i76<-0.007581114768981934){
     s0+=42.0;
     s1+=53.0;
    } else {
     s0+=1003.0;
     s1+=50.0;
    }
   } else {
    if(i3<-5.693382627214305e-05){
     s0+=7.0;
     s1+=167.0;
    } else {
     s0+=94.0;
     s1+=75.0;
    }
   }
  } else {
   if(i21<0.029542509466409683){
    if(i28<0.0008339285850524902){
     s0+=191.0;
     s1+=669.0;
    } else {
     s0+=469.0;
     s1+=106.0;
    }
   } else {
    if(i18<5.004698323318735e-05){
     s0+=11.0;
     s1+=9.0;
    } else {
     s0+=65.0;
     s1+=2000.0;
    }
   }
  }
 }
} else {
 if(i7<0.004075069911777973){
  if(i26<1.1180615425109863){
   s1+=261.0;
  } else {
   if(i27<1.0152413845062256){
    if(i40<1.1366347074508667){
     s0+=545.0;
    } else {
     s0+=217.0;
     s1+=37.0;
    }
   } else {
    s1+=211.0;
   }
  }
 } else {
  if(i57<0.9983292818069458){
   s0+=39.0;
  } else {
   if(i41<1.6811659336090088){
    if(i28<-0.00023284554481506348){
     s0+=23.0;
     s1+=248.0;
    } else {
     s0+=9.0;
     s1+=13245.0;
    }
   } else {
    s0+=24.0;
   }
  }
 }
}
if(i7<0.007576701231300831){
 if(i16<1.0103247165679932){
  if(i26<1.1162974834442139){
   if(i43<0.009361911565065384){
    if(i10<1.0075581073760986){
     s0+=21730.0;
     s1+=434.0;
    } else {
     s0+=1.0;
     s1+=150.0;
    }
   } else {
    if(i31<1.0588569641113281){
     s0+=4615.0;
     s1+=18.0;
    } else {
     s0+=4036.0;
     s1+=2655.0;
    }
   }
  } else {
   if(i1<0.00014859437942504883){
    if(i66<0.055214665830135345){
     s0+=68697.0;
     s1+=333.0;
    } else {
     s0+=9148.0;
     s1+=513.0;
    }
   } else {
    if(i32<0.0019328126218169928){
     s0+=57.0;
    } else {
     s1+=140.0;
    }
   }
  }
 } else {
  if(i33<0.0020006895065307617){
   if(i32<0.0010323895839974284){
    if(i26<1.1294310092926025){
     s0+=2.0;
     s1+=984.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i14<1.0182806253433228){
     s0+=2198.0;
     s1+=85.0;
    } else {
     s0+=778.0;
     s1+=295.0;
    }
   }
  } else {
   if(i47<2.714783840929158e-05){
    if(i48<2.968311309814453e-05){
     s1+=1679.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
} else {
 if(i64<1.033010721206665){
  if(i22<0.0646144449710846){
   if(i42<1.9899849576177076e-05){
    if(i16<0.9589899182319641){
     s0+=26.0;
     s1+=50.0;
    } else {
     s1+=100.0;
    }
   } else {
    if(i0<-0.0001710057258605957){
     s0+=3703.0;
     s1+=86.0;
    } else {
     s0+=223.0;
     s1+=131.0;
    }
   }
  } else {
   if(i12<1.0019073486328125){
    if(i27<0.9951461553573608){
     s0+=339.0;
     s1+=72.0;
    } else {
     s0+=6.0;
     s1+=101.0;
    }
   } else {
    if(i60<0.0012448146007955074){
     s0+=63.0;
     s1+=28.0;
    } else {
     s0+=83.0;
     s1+=1151.0;
    }
   }
  }
 } else {
  if(i16<0.9635238647460938){
   if(i3<-8.112752402666956e-05){
    if(i63<-6.960518658161163e-05){
     s0+=10.0;
     s1+=216.0;
    } else {
     s0+=10.0;
     s1+=19.0;
    }
   } else {
    if(i15<0.1722736656665802){
     s0+=322.0;
     s1+=39.0;
    } else {
     s0+=7.0;
     s1+=51.0;
    }
   }
  } else {
   if(i5<-3.2901763916015625e-05){
    if(i36<0.25487571954727173){
     s0+=196.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i30<-0.00017920456593856215){
     s0+=63.0;
     s1+=14002.0;
    } else {
     s0+=123.0;
     s1+=1072.0;
    }
   }
  }
 }
}
if(i0<0.0009575486183166504){
 if(i3<-7.644463767064735e-05){
  if(i16<0.9475317001342773){
   if(i15<0.10187655687332153){
    if(i38<0.003127397270873189){
     s0+=969.0;
     s1+=34.0;
    } else {
     s0+=36.0;
     s1+=36.0;
    }
   } else {
    if(i47<0.00044280363363213837){
     s0+=7.0;
     s1+=86.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i17<0.06075441837310791){
    if(i2<1.0026631355285645){
     s0+=296.0;
     s1+=81.0;
    } else {
     s0+=19.0;
     s1+=78.0;
    }
   } else {
    if(i21<0.01193283312022686){
     s0+=217.0;
     s1+=27.0;
    } else {
     s0+=39.0;
     s1+=2170.0;
    }
   }
  }
 } else {
  if(i5<1.5079975128173828e-05){
   if(i28<7.075071334838867e-05){
    if(i7<0.014054244384169579){
     s0+=75494.0;
     s1+=779.0;
    } else {
     s0+=4.0;
     s1+=27.0;
    }
   } else {
    if(i7<0.0032731734681874514){
     s0+=23061.0;
     s1+=383.0;
    } else {
     s0+=6792.0;
     s1+=2098.0;
    }
   }
  } else {
   if(i18<0.00034962600329890847){
    if(i41<1.0904107093811035){
     s0+=76.0;
     s1+=1092.0;
    } else {
     s0+=2858.0;
     s1+=981.0;
    }
   } else {
    if(i38<0.0031827371567487717){
     s0+=4405.0;
     s1+=92.0;
    } else {
     s0+=20.0;
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i24<0.0023296670988202095){
  if(i28<0.0005122125148773193){
   if(i57<1.000981330871582){
    if(i29<0.0014568621991202235){
     s0+=20.0;
     s1+=2268.0;
    } else {
     s0+=48.0;
     s1+=5.0;
    }
   } else {
    s0+=62.0;
   }
  } else {
   s0+=1893.0;
  }
 } else {
  if(i25<1.023998737335205){
   if(i46<0.006153506226837635){
    if(i61<0.005263293161988258){
     s1+=11.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=25.0;
   }
  } else {
   if(i36<0.001291036605834961){
    if(i12<1.0062981843948364){
     s0+=26.0;
     s1+=18.0;
    } else {
     s0+=2.0;
     s1+=77.0;
    }
   } else {
    if(i25<1.0742030143737793){
     s0+=37.0;
     s1+=209.0;
    } else {
     s0+=31.0;
     s1+=13808.0;
    }
   }
  }
 }
}
if(i9<1.0177361965179443){
 if(i2<1.0038673877716064){
  if(i19<0.0017321379855275154){
   if(i29<0.0005799351492896676){
    if(i7<0.001627194113098085){
     s0+=19788.0;
     s1+=107.0;
    } else {
     s0+=7432.0;
     s1+=626.0;
    }
   } else {
    if(i50<-1.9682294805534184e-05){
     s0+=12.0;
     s1+=15.0;
    } else {
     s0+=62131.0;
     s1+=177.0;
    }
   }
  } else {
   if(i31<1.1164028644561768){
    if(i38<0.0011913920752704144){
     s0+=1120.0;
     s1+=2402.0;
    } else {
     s0+=1889.0;
    }
   } else {
    if(i7<0.013988573104143143){
     s0+=18150.0;
     s1+=1082.0;
    } else {
     s0+=1080.0;
     s1+=1166.0;
    }
   }
  }
 } else {
  if(i31<1.1766420602798462){
   if(i46<0.0007979223737493157){
    if(i54<0.00016827821673359722){
     s0+=559.0;
     s1+=67.0;
    } else {
     s0+=41.0;
     s1+=1413.0;
    }
   } else {
    if(i29<0.0010376430582255125){
     s1+=58.0;
    } else {
     s0+=2831.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<3.4868717193603516e-05){
    if(i69<0.04490920156240463){
     s0+=108.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   } else {
    if(i40<1.107318639755249){
     s0+=50.0;
     s1+=175.0;
    } else {
     s0+=99.0;
     s1+=2909.0;
    }
   }
  }
 }
} else {
 if(i4<0.0002695322036743164){
  if(i50<-7.972812454681844e-06){
   if(i51<0.05324677377939224){
    if(i7<0.0039151934906840324){
     s0+=143.0;
     s1+=14.0;
    } else {
     s0+=5.0;
     s1+=56.0;
    }
   } else {
    if(i48<7.092952728271484e-06){
     s1+=175.0;
    } else {
     s0+=6.0;
     s1+=4.0;
    }
   }
  } else {
   if(i19<0.0025120158679783344){
    s0+=453.0;
   } else {
    if(i70<0.13325601816177368){
     s0+=1.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i11<1.0216825008392334){
   if(i19<0.0015978969167917967){
    if(i28<0.0005353093147277832){
     s0+=3.0;
     s1+=122.0;
    } else {
     s0+=300.0;
     s1+=15.0;
    }
   } else {
    if(i3<-6.059328734409064e-05){
     s0+=131.0;
     s1+=1461.0;
    } else {
     s0+=298.0;
     s1+=493.0;
    }
   }
  } else {
   if(i27<0.9896426200866699){
    if(i57<1.0019760131835938){
     s1+=63.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i52<-6.080845196265727e-06){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=23.0;
     s1+=11503.0;
    }
   }
  }
 }
}
if(i9<1.017686128616333){
 if(i1<6.622076034545898e-05){
  if(i3<-9.16690260055475e-05){
   if(i17<0.04118296504020691){
    if(i13<0.9524297714233398){
     s0+=676.0;
     s1+=78.0;
    } else {
     s0+=15.0;
     s1+=38.0;
    }
   } else {
    if(i33<-0.005729883909225464){
     s0+=42.0;
     s1+=20.0;
    } else {
     s0+=74.0;
     s1+=1215.0;
    }
   }
  } else {
   if(i28<9.971857070922852e-05){
    if(i16<0.9945918321609497){
     s0+=17561.0;
     s1+=666.0;
    } else {
     s0+=63514.0;
     s1+=398.0;
    }
   } else {
    if(i38<0.0006226036930456758){
     s0+=13848.0;
     s1+=136.0;
    } else {
     s0+=17814.0;
     s1+=3600.0;
    }
   }
  }
 } else {
  if(i7<0.0035767750814557076){
   if(i26<1.1038953065872192){
    if(i20<0.0001647472381591797){
     s0+=42.0;
    } else {
     s1+=361.0;
    }
   } else {
    if(i0<0.002490401268005371){
     s0+=1150.0;
    } else {
     s1+=58.0;
    }
   }
  } else {
   if(i71<3.0412716114369687e-06){
    if(i39<1.0009050369262695){
     s0+=107.0;
     s1+=59.0;
    } else {
     s0+=215.0;
     s1+=3532.0;
    }
   } else {
    if(i59<0.006010917946696281){
     s0+=88.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i56<-3.1963131732481997e-06){
  if(i10<1.01408052444458){
   if(i15<0.18612387776374817){
    if(i25<1.0781182050704956){
     s0+=41.0;
     s1+=601.0;
    } else {
     s0+=753.0;
     s1+=500.0;
    }
   } else {
    if(i63<-0.0011689596576616168){
     s0+=35.0;
     s1+=1654.0;
    } else {
     s0+=14.0;
     s1+=9.0;
    }
   }
  } else {
   if(i65<2.4914306777645834e-05){
    if(i21<0.004354811739176512){
     s0+=42.0;
     s1+=237.0;
    } else {
     s0+=20.0;
     s1+=11155.0;
    }
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i44<1.0214643478393555){
   if(i38<0.0008754523005336523){
    s0+=55.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i45<1.001603364944458){
    s0+=378.0;
   } else {
    if(i65<4.950151833327254e-06){
     s0+=40.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i8<1.014697790145874){
 if(i2<1.0037356615066528){
  if(i19<0.00181780313141644){
   if(i13<0.9950838088989258){
    if(i32<0.00031806391780264676){
     s0+=1230.0;
     s1+=410.0;
    } else {
     s0+=16482.0;
     s1+=186.0;
    }
   } else {
    if(i25<1.134787917137146){
     s0+=72223.0;
     s1+=475.0;
    } else {
     s0+=709.0;
     s1+=58.0;
    }
   }
  } else {
   if(i2<0.9979314804077148){
    if(i3<-0.00013073600712232292){
     s0+=82.0;
     s1+=111.0;
    } else {
     s0+=16031.0;
     s1+=569.0;
    }
   } else {
    if(i18<0.0008620762382633984){
     s0+=3032.0;
     s1+=4053.0;
    } else {
     s0+=1549.0;
    }
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i41<1.0905089378356934){
    if(i18<0.00025897365412674844){
     s0+=5.0;
     s1+=1128.0;
    } else {
     s0+=723.0;
    }
   } else {
    if(i7<0.005443216767162085){
     s0+=3007.0;
     s1+=15.0;
    } else {
     s0+=87.0;
     s1+=223.0;
    }
   }
  } else {
   if(i40<1.0789777040481567){
    if(i11<0.9952995777130127){
     s1+=31.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i7<0.0019697758834809065){
     s0+=21.0;
    } else {
     s0+=115.0;
     s1+=2965.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007184292189776897){
  if(i4<0.00029200315475463867){
   if(i29<0.007540494203567505){
    if(i38<0.0006971727125346661){
     s0+=281.0;
    } else {
     s0+=67.0;
     s1+=55.0;
    }
   } else {
    s1+=142.0;
   }
  } else {
   if(i1<2.562999725341797e-06){
    if(i51<0.05727928876876831){
     s0+=96.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   } else {
    if(i5<0.00025010108947753906){
     s0+=120.0;
     s1+=13908.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  s0+=493.0;
 }
}
if(i13<1.0176975727081299){
 if(i12<1.0026252269744873){
  if(i62<0.007934131659567356){
   if(i26<1.1162974834442139){
    if(i21<0.007342912256717682){
     s0+=22668.0;
     s1+=569.0;
    } else {
     s0+=6794.0;
     s1+=2745.0;
    }
   } else {
    if(i15<0.2314072847366333){
     s0+=79962.0;
     s1+=775.0;
    } else {
     s0+=23.0;
     s1+=118.0;
    }
   }
  } else {
   if(i19<0.0059508709236979485){
    if(i57<1.000685691833496){
     s0+=301.0;
     s1+=12.0;
    } else {
     s0+=12.0;
     s1+=90.0;
    }
   } else {
    if(i68<-0.01727604866027832){
     s0+=13.0;
     s1+=2.0;
    } else {
     s1+=295.0;
    }
   }
  }
 } else {
  if(i61<8.555217209504917e-05){
   if(i41<1.0932633876800537){
    if(i26<1.067186713218689){
     s0+=747.0;
    } else {
     s0+=43.0;
     s1+=691.0;
    }
   } else {
    if(i26<1.1180615425109863){
     s1+=85.0;
    } else {
     s0+=2328.0;
     s1+=107.0;
    }
   }
  } else {
   if(i4<0.0011493563652038574){
    if(i48<8.761882781982422e-06){
     s0+=385.0;
     s1+=930.0;
    } else {
     s0+=1220.0;
     s1+=551.0;
    }
   } else {
    if(i33<-0.0018382668495178223){
     s0+=355.0;
     s1+=711.0;
    } else {
     s0+=106.0;
     s1+=2781.0;
    }
   }
  }
 }
} else {
 if(i7<0.005057200789451599){
  if(i33<0.0017401576042175293){
   if(i28<0.0005129575729370117){
    if(i2<1.0030385255813599){
     s0+=492.0;
     s1+=35.0;
    } else {
     s0+=5.0;
     s1+=173.0;
    }
   } else {
    s0+=749.0;
   }
  } else {
   if(i39<1.0016653537750244){
    s0+=25.0;
   } else {
    if(i8<1.016091227531433){
     s0+=5.0;
     s1+=13.0;
    } else {
     s1+=557.0;
    }
   }
  }
 } else {
  if(i50<-5.361082003219053e-06){
   if(i20<-0.0006125569343566895){
    if(i41<1.3412861824035645){
     s0+=43.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i57<0.9982005953788757){
     s0+=30.0;
    } else {
     s0+=20.0;
     s1+=13266.0;
    }
   }
  } else {
   s0+=20.0;
  }
 }
}
if(i2<1.003741979598999){
 if(i36<0.20457690954208374){
  if(i4<0.0002925992012023926){
   if(i31<1.0905578136444092){
    if(i39<0.9997655153274536){
     s0+=13008.0;
     s1+=103.0;
    } else {
     s0+=11088.0;
     s1+=1674.0;
    }
   } else {
    if(i35<1.114506483078003){
     s0+=77428.0;
     s1+=694.0;
    } else {
     s0+=1933.0;
     s1+=229.0;
    }
   }
  } else {
   if(i46<0.008338416926562786){
    if(i3<-4.7763765905983746e-05){
     s0+=1256.0;
     s1+=1067.0;
    } else {
     s0+=6963.0;
     s1+=1059.0;
    }
   } else {
    if(i10<0.9737190008163452){
     s0+=228.0;
     s1+=84.0;
    } else {
     s0+=71.0;
     s1+=573.0;
    }
   }
  }
 } else {
  if(i24<0.0025624986737966537){
   if(i39<1.000819444656372){
    s0+=113.0;
   } else {
    if(i26<1.1739790439605713){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  } else {
   if(i40<1.1231228113174438){
    if(i7<0.00597962224856019){
     s0+=17.0;
    } else {
     s0+=1.0;
     s1+=18.0;
    }
   } else {
    if(i18<8.140697900671512e-05){
     s0+=10.0;
    } else {
     s0+=20.0;
     s1+=898.0;
    }
   }
  }
 }
} else {
 if(i21<0.007690816186368465){
  if(i46<0.000772573403082788){
   if(i26<1.067186713218689){
    s0+=666.0;
   } else {
    if(i29<0.0014225750928744674){
     s0+=16.0;
     s1+=1414.0;
    } else {
     s0+=101.0;
     s1+=30.0;
    }
   }
  } else {
   if(i31<1.1766420602798462){
    if(i41<1.0905089378356934){
     s0+=8.0;
     s1+=76.0;
    } else {
     s0+=3044.0;
     s1+=16.0;
    }
   } else {
    if(i20<-0.0001391768455505371){
     s0+=15.0;
    } else {
     s0+=3.0;
     s1+=518.0;
    }
   }
  }
 } else {
  if(i52<-6.625762125622714e-06){
   s0+=184.0;
  } else {
   if(i30<-0.00035324966302141547){
    if(i19<0.0024944827891886234){
     s0+=56.0;
     s1+=963.0;
    } else {
     s0+=19.0;
     s1+=11892.0;
    }
   } else {
    if(i32<0.0019092755392193794){
     s0+=255.0;
     s1+=612.0;
    } else {
     s0+=128.0;
     s1+=2288.0;
    }
   }
  }
 }
}
if(i0<0.0009602904319763184){
 if(i14<1.021174430847168){
  if(i25<1.1546916961669922){
   if(i19<0.001728216651827097){
    if(i19<0.001149436691775918){
     s0+=77058.0;
     s1+=266.0;
    } else {
     s0+=13779.0;
     s1+=691.0;
    }
   } else {
    if(i0<-0.0004304051399230957){
     s0+=18074.0;
     s1+=754.0;
    } else {
     s0+=4341.0;
     s1+=3563.0;
    }
   }
  } else {
   if(i3<-5.762970249634236e-05){
    if(i15<0.004491180181503296){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=14.0;
     s1+=739.0;
    }
   } else {
    if(i50<-1.676541069173254e-05){
     s0+=51.0;
     s1+=62.0;
    } else {
     s0+=457.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i7<0.005995451472699642){
   if(i28<0.00043088197708129883){
    if(i28<0.0001722574234008789){
     s0+=349.0;
     s1+=10.0;
    } else {
     s0+=11.0;
     s1+=101.0;
    }
   } else {
    if(i33<0.001035451889038086){
     s0+=320.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   }
  } else {
   if(i67<-0.0016427338123321533){
    if(i19<0.004845063202083111){
     s0+=16.0;
     s1+=3.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i56<-6.247989858820802e-08){
     s0+=9.0;
     s1+=1544.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i43<0.01938801258802414){
  if(i28<0.0007860064506530762){
   if(i29<0.0012578413588926196){
    if(i52<-3.1598733585269656e-06){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=1791.0;
    }
   } else {
    if(i39<1.001739263534546){
     s0+=247.0;
     s1+=10.0;
    } else {
     s0+=76.0;
     s1+=789.0;
    }
   }
  } else {
   if(i31<1.1843671798706055){
    s0+=1561.0;
   } else {
    s1+=427.0;
   }
  }
 } else {
  if(i11<1.0177710056304932){
   if(i61<0.00018814514623954892){
    if(i26<1.1180615425109863){
     s1+=234.0;
    } else {
     s0+=149.0;
     s1+=135.0;
    }
   } else {
    if(i25<1.023998737335205){
     s0+=17.0;
     s1+=15.0;
    } else {
     s0+=73.0;
     s1+=2413.0;
    }
   }
  } else {
   if(i8<1.0234171152114868){
    if(i0<0.0013222694396972656){
     s0+=14.0;
     s1+=176.0;
    } else {
     s0+=2.0;
     s1+=852.0;
    }
   } else {
    if(i53<0.027985386550426483){
     s0+=1.0;
     s1+=396.0;
    } else {
     s1+=9111.0;
    }
   }
  }
 }
}
if(i6<1.0046486854553223){
 if(i17<0.2201087772846222){
  if(i8<1.0121310949325562){
   if(i4<0.00030285120010375977){
    if(i38<0.0006624322850257158){
     s0+=72889.0;
     s1+=312.0;
    } else {
     s0+=30110.0;
     s1+=2466.0;
    }
   } else {
    if(i21<0.009114732965826988){
     s0+=6293.0;
     s1+=208.0;
    } else {
     s0+=1940.0;
     s1+=1880.0;
    }
   }
  } else {
   if(i4<0.00027829408645629883){
    if(i47<3.325655416119844e-05){
     s0+=368.0;
     s1+=2.0;
    } else {
     s0+=68.0;
     s1+=68.0;
    }
   } else {
    if(i48<1.0788440704345703e-05){
     s0+=161.0;
     s1+=1249.0;
    } else {
     s0+=178.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i37<0.0026170392520725727){
   if(i16<1.011512279510498){
    s0+=115.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i26<1.6811659336090088){
    if(i56<-3.311068667244399e-06){
     s0+=42.0;
     s1+=1678.0;
    } else {
     s0+=33.0;
     s1+=2.0;
    }
   } else {
    s0+=28.0;
   }
  }
 }
} else {
 if(i2<1.0102424621582031){
  if(i11<1.0200985670089722){
   if(i21<0.021911486983299255){
    if(i26<1.116804838180542){
     s0+=354.0;
     s1+=1301.0;
    } else {
     s0+=3443.0;
     s1+=228.0;
    }
   } else {
    if(i15<0.04072105884552002){
     s0+=223.0;
     s1+=125.0;
    } else {
     s0+=167.0;
     s1+=2005.0;
    }
   }
  } else {
   if(i11<1.0237846374511719){
    if(i7<0.0047218105755746365){
     s0+=37.0;
     s1+=18.0;
    } else {
     s0+=10.0;
     s1+=338.0;
    }
   } else {
    if(i20<-0.0005013048648834229){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=1548.0;
    }
   }
  }
 } else {
  if(i56<-8.551007340429351e-05){
   s0+=4.0;
  } else {
   if(i18<0.0008935744408518076){
    s1+=10885.0;
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i5<1.4722347259521484e-05){
  if(i15<0.23153239488601685){
   if(i19<0.0014640185981988907){
    if(i29<0.0003304298734292388){
     s0+=19385.0;
     s1+=369.0;
    } else {
     s0+=62963.0;
     s1+=193.0;
    }
   } else {
    if(i24<0.0009065134217962623){
     s0+=2050.0;
     s1+=2063.0;
    } else {
     s0+=21630.0;
     s1+=775.0;
    }
   }
  } else {
   if(i29<0.003627413883805275){
    if(i19<0.0024646995589137077){
     s0+=54.0;
     s1+=3.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i76<0.04096871614456177){
     s0+=14.0;
     s1+=324.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i21<0.009568827226758003){
   if(i20<0.00014632940292358398){
    if(i8<1.0149292945861816){
     s0+=5775.0;
     s1+=174.0;
    } else {
     s0+=72.0;
     s1+=37.0;
    }
   } else {
    if(i37<0.0007422416238114238){
     s0+=42.0;
     s1+=118.0;
    } else {
     s0+=218.0;
     s1+=3.0;
    }
   }
  } else {
   if(i33<-0.0020142197608947754){
    if(i3<-8.09021876193583e-05){
     s0+=375.0;
     s1+=708.0;
    } else {
     s0+=1286.0;
     s1+=275.0;
    }
   } else {
    if(i51<0.04050879925489426){
     s0+=559.0;
     s1+=1351.0;
    } else {
     s0+=55.0;
     s1+=1649.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i25<1.0773653984069824){
   if(i56<-1.3799690350424498e-05){
    if(i16<1.0215530395507812){
     s0+=74.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i38<0.0011447416618466377){
     s0+=28.0;
     s1+=2029.0;
    } else {
     s0+=81.0;
    }
   }
  } else {
   if(i54<0.0009596908930689096){
    s1+=337.0;
   } else {
    if(i26<1.2318363189697266){
     s0+=1782.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i15<0.02196362614631653){
   if(i51<0.03322466090321541){
    if(i12<1.0066707134246826){
     s0+=47.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i74<0.02189936302602291){
     s0+=6.0;
     s1+=3.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i15<0.09436097741127014){
    if(i76<0.0012265443801879883){
     s0+=4.0;
     s1+=488.0;
    } else {
     s0+=36.0;
     s1+=5.0;
    }
   } else {
    if(i11<0.8802477121353149){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=12.0;
     s1+=13238.0;
    }
   }
  }
 }
}
if(i11<1.0135858058929443){
 if(i3<-8.42931040097028e-05){
  if(i16<0.9479509592056274){
   if(i36<0.11672332882881165){
    if(i7<0.021612107753753662){
     s0+=728.0;
     s1+=23.0;
    } else {
     s0+=102.0;
     s1+=49.0;
    }
   } else {
    if(i33<-0.006848931312561035){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=71.0;
    }
   }
  } else {
   if(i41<1.1324639320373535){
    if(i46<0.000741330673918128){
     s0+=3.0;
     s1+=117.0;
    } else {
     s0+=257.0;
     s1+=40.0;
    }
   } else {
    if(i51<0.04430021718144417){
     s0+=210.0;
     s1+=646.0;
    } else {
     s0+=51.0;
     s1+=2703.0;
    }
   }
  }
 } else {
  if(i28<0.0001023411750793457){
   if(i38<0.0006473084213212132){
    if(i40<1.023176908493042){
     s0+=3192.0;
     s1+=98.0;
    } else {
     s0+=60260.0;
     s1+=97.0;
    }
   } else {
    if(i1<-5.1081180572509766e-05){
     s0+=13242.0;
     s1+=92.0;
    } else {
     s0+=5159.0;
     s1+=852.0;
    }
   }
  } else {
   if(i18<0.0003445454058237374){
    if(i1<5.239248275756836e-05){
     s0+=18929.0;
     s1+=3230.0;
    } else {
     s0+=144.0;
     s1+=1232.0;
    }
   } else {
    if(i7<0.019150253385305405){
     s0+=13109.0;
     s1+=275.0;
    } else {
     s0+=57.0;
     s1+=157.0;
    }
   }
  }
 }
} else {
 if(i0<0.0018055438995361328){
  if(i43<0.017442893236875534){
   if(i31<1.1176170110702515){
    if(i56<-1.0904617738560773e-05){
     s0+=12.0;
    } else {
     s0+=1.0;
     s1+=506.0;
    }
   } else {
    if(i10<1.0164133310317993){
     s0+=712.0;
     s1+=32.0;
    } else {
     s1+=133.0;
    }
   }
  } else {
   if(i26<1.6811659336090088){
    if(i50<-9.296254575019702e-06){
     s0+=317.0;
     s1+=2910.0;
    } else {
     s0+=126.0;
     s1+=2.0;
    }
   } else {
    s0+=88.0;
   }
  }
 } else {
  if(i32<0.0017811921425163746){
   if(i56<-1.6166774003067985e-05){
    if(i4<0.0031134188175201416){
     s0+=72.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=872.0;
   }
  } else {
   if(i24<0.002468278631567955){
    s0+=2.0;
   } else {
    s1+=9943.0;
   }
  }
 }
}
if(i8<1.0152629613876343){
 if(i0<0.0009705424308776855){
  if(i7<0.013988800346851349){
   if(i24<0.0008910034666769207){
    if(i17<0.06100726127624512){
     s0+=30593.0;
     s1+=1888.0;
    } else {
     s0+=1540.0;
     s1+=1524.0;
    }
   } else {
    if(i5<1.710653305053711e-05){
     s0+=76519.0;
     s1+=774.0;
    } else {
     s0+=4447.0;
     s1+=967.0;
    }
   }
  } else {
   if(i10<0.9682992696762085){
    if(i31<1.5810168981552124){
     s0+=818.0;
     s1+=26.0;
    } else {
     s0+=126.0;
     s1+=151.0;
    }
   } else {
    if(i64<0.8935948610305786){
     s0+=30.0;
     s1+=16.0;
    } else {
     s0+=52.0;
     s1+=1352.0;
    }
   }
  }
 } else {
  if(i34<1.1706266403198242){
   if(i18<0.00024617204326204956){
    if(i30<-0.0006376091623678803){
     s0+=10.0;
    } else {
     s0+=1.0;
     s1+=1025.0;
    }
   } else {
    s0+=1497.0;
   }
  } else {
   if(i26<1.629280686378479){
    if(i47<0.0002932351781055331){
     s0+=9.0;
     s1+=2279.0;
    } else {
     s0+=39.0;
     s1+=108.0;
    }
   } else {
    if(i25<1.1447492837905884){
     s0+=60.0;
     s1+=11.0;
    } else {
     s1+=121.0;
    }
   }
  }
 }
} else {
 if(i1<1.7464160919189453e-05){
  if(i29<0.006086047738790512){
   if(i37<0.004180997144430876){
    if(i21<0.025856688618659973){
     s0+=177.0;
     s1+=5.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i28<0.0008344650268554688){
     s0+=277.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i18<0.00012982527550775558){
    s0+=6.0;
   } else {
    s1+=170.0;
   }
  }
 } else {
  if(i11<1.0194075107574463){
   if(i54<0.0009092465043067932){
    if(i31<1.245124340057373){
     s1+=726.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i37<0.0019374077674001455){
     s0+=377.0;
     s1+=25.0;
    } else {
     s0+=75.0;
     s1+=838.0;
    }
   }
  } else {
   if(i7<0.0032927803695201874){
    if(i42<-1.158885243057739e-05){
     s0+=3.0;
     s1+=207.0;
    } else {
     s0+=69.0;
     s1+=13.0;
    }
   } else {
    if(i52<-1.0852643754333258e-05){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=11821.0;
    }
   }
  }
 }
}
if(i14<1.0181405544281006){
 if(i2<1.0038710832595825){
  if(i66<0.46276891231536865){
   if(i19<0.0017227320931851864){
    if(i67<-0.0003910660743713379){
     s0+=15096.0;
     s1+=554.0;
    } else {
     s0+=74040.0;
     s1+=380.0;
    }
   } else {
    if(i20<-0.00021794438362121582){
     s0+=15999.0;
     s1+=1224.0;
    } else {
     s0+=5774.0;
     s1+=2822.0;
    }
   }
  } else {
   if(i67<-0.0067147910594940186){
    if(i17<0.0821472704410553){
     s0+=133.0;
    } else {
     s0+=2.0;
     s1+=17.0;
    }
   } else {
    if(i12<1.0061497688293457){
     s0+=2.0;
     s1+=427.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i26<1.1979892253875732){
   if(i24<0.0009788342285901308){
    if(i1<7.075071334838867e-05){
     s0+=617.0;
     s1+=362.0;
    } else {
     s0+=4.0;
     s1+=1300.0;
    }
   } else {
    s0+=2889.0;
   }
  } else {
   if(i55<0.0002421945973765105){
    if(i29<0.007617962546646595){
     s0+=137.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i29<0.001961946953088045){
     s0+=25.0;
    } else {
     s0+=75.0;
     s1+=3097.0;
    }
   }
  }
 }
} else {
 if(i7<0.005057200789451599){
  if(i65<-6.191937245603185e-06){
   if(i18<0.00040752155473455787){
    if(i48<5.4776668548583984e-05){
     s1+=524.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i11<1.0273492336273193){
     s0+=40.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i54<0.0009476459817960858){
    if(i34<1.1100021600723267){
     s1+=122.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i40<1.1352583169937134){
     s0+=922.0;
     s1+=20.0;
    } else {
     s0+=346.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i50<-9.07849425857421e-06){
   if(i47<0.0004064930253662169){
    if(i29<0.00816493108868599){
     s0+=114.0;
     s1+=4435.0;
    } else {
     s0+=11.0;
     s1+=9104.0;
    }
   } else {
    if(i69<0.554118275642395){
     s0+=9.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   s0+=35.0;
  }
 }
}
if(i33<0.0013845562934875488){
 if(i15<0.19054174423217773){
  if(i25<1.1402318477630615){
   if(i28<0.0001023411750793457){
    if(i33<-0.000360339879989624){
     s0+=32112.0;
     s1+=861.0;
    } else {
     s0+=48693.0;
     s1+=192.0;
    }
   } else {
    if(i11<1.0088672637939453){
     s0+=30484.0;
     s1+=3914.0;
    } else {
     s0+=2432.0;
     s1+=1506.0;
    }
   }
  } else {
   if(i7<0.005828072316944599){
    if(i29<0.0028870846144855022){
     s0+=775.0;
    } else {
     s0+=279.0;
     s1+=18.0;
    }
   } else {
    if(i33<-0.004135698080062866){
     s0+=99.0;
     s1+=72.0;
    } else {
     s0+=65.0;
     s1+=1060.0;
    }
   }
  }
 } else {
  if(i39<1.0009852647781372){
   if(i24<0.010021502152085304){
    if(i7<0.007816186174750328){
     s0+=398.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=20.0;
    }
   } else {
    s1+=244.0;
   }
  } else {
   if(i21<0.0075702727772295475){
    if(i9<1.031588077545166){
     s0+=116.0;
     s1+=2.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i0<-0.0002835392951965332){
     s0+=91.0;
     s1+=230.0;
    } else {
     s0+=19.0;
     s1+=3060.0;
    }
   }
  }
 }
} else {
 if(i57<0.9984174966812134){
  if(i26<1.3955512046813965){
   s0+=378.0;
  } else {
   s1+=7.0;
  }
 } else {
  if(i50<-1.768935726431664e-05){
   if(i24<0.002134850714355707){
    if(i31<1.1180615425109863){
     s0+=8.0;
     s1+=1926.0;
    } else {
     s0+=426.0;
    }
   } else {
    s1+=11203.0;
   }
  } else {
   if(i19<0.0027966792695224285){
    if(i28<0.0003536343574523926){
     s0+=142.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=5.0;
   }
  }
 }
}
if(i47<-4.070418071933091e-05){
 if(i56<-5.9527290432015434e-05){
  s0+=31.0;
 } else {
  if(i27<1.01426100730896){
   if(i50<-7.445001392625272e-05){
    s0+=10.0;
   } else {
    if(i56<-1.5579564205836505e-05){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=156.0;
    }
   }
  } else {
   s1+=6386.0;
  }
 }
} else {
 if(i6<1.004528284072876){
  if(i5<1.329183578491211e-05){
   if(i51<0.20732127130031586){
    if(i7<0.0032548243179917336){
     s0+=80085.0;
     s1+=754.0;
    } else {
     s0+=24755.0;
     s1+=2499.0;
    }
   } else {
    if(i10<0.9598408341407776){
     s0+=61.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=189.0;
    }
   }
  } else {
   if(i19<0.0020541646517813206){
    if(i42<6.412501079466892e-06){
     s0+=3548.0;
    } else {
     s0+=288.0;
     s1+=177.0;
    }
   } else {
    if(i1<-6.139278411865234e-06){
     s0+=1805.0;
     s1+=403.0;
    } else {
     s0+=1589.0;
     s1+=3537.0;
    }
   }
  }
 } else {
  if(i18<0.000704434234648943){
   if(i4<0.0010828375816345215){
    if(i28<0.0006909966468811035){
     s0+=869.0;
     s1+=2159.0;
    } else {
     s0+=809.0;
     s1+=19.0;
    }
   } else {
    if(i27<1.008039116859436){
     s0+=434.0;
     s1+=2062.0;
    } else {
     s0+=57.0;
     s1+=5806.0;
    }
   }
  } else {
   s0+=2351.0;
  }
 }
}
if(i0<0.0009605884552001953){
 if(i8<1.01169753074646){
  if(i46<0.012186316773295403){
   if(i12<1.0021324157714844){
    if(i9<1.0086880922317505){
     s0+=101611.0;
     s1+=2970.0;
    } else {
     s0+=4868.0;
     s1+=667.0;
    }
   } else {
    if(i21<0.02281290851533413){
     s0+=5318.0;
     s1+=668.0;
    } else {
     s0+=678.0;
     s1+=1024.0;
    }
   }
  } else {
   if(i15<0.05397862195968628){
    if(i74<0.04004732519388199){
     s0+=618.0;
    } else {
     s0+=172.0;
     s1+=69.0;
    }
   } else {
    if(i50<-5.5142518249340355e-06){
     s0+=75.0;
     s1+=971.0;
    } else {
     s0+=79.0;
    }
   }
  }
 } else {
  if(i48<1.0788440704345703e-05){
   if(i40<1.086911916732788){
    if(i29<0.0014443059917539358){
     s1+=555.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i19<0.0014279932947829366){
     s0+=447.0;
     s1+=22.0;
    } else {
     s0+=147.0;
     s1+=991.0;
    }
   }
  } else {
   if(i7<0.006432072259485722){
    if(i74<-0.00942588597536087){
     s0+=22.0;
     s1+=7.0;
    } else {
     s0+=516.0;
     s1+=5.0;
    }
   } else {
    if(i34<1.1479971408843994){
     s0+=1.0;
    } else {
     s1+=167.0;
    }
   }
  }
 }
} else {
 if(i31<1.176405668258667){
  if(i37<0.0012506716884672642){
   if(i32<0.0001674217637628317){
    s0+=60.0;
   } else {
    if(i52<-4.077401627000654e-06){
     s0+=33.0;
    } else {
     s0+=2.0;
     s1+=2085.0;
    }
   }
  } else {
   if(i41<1.0887261629104614){
    s1+=241.0;
   } else {
    s0+=1842.0;
   }
  }
 } else {
  if(i33<-0.002286672592163086){
   if(i36<0.08285832405090332){
    if(i28<0.000835716724395752){
     s0+=76.0;
     s1+=22.0;
    } else {
     s1+=80.0;
    }
   } else {
    if(i7<0.010846966877579689){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=167.0;
    }
   }
  } else {
   if(i33<-7.784366607666016e-05){
    if(i17<0.10604369640350342){
     s0+=28.0;
     s1+=101.0;
    } else {
     s0+=12.0;
     s1+=915.0;
    }
   } else {
    s1+=12513.0;
   }
  }
 }
}
if(i2<1.003865361213684){
 if(i43<0.1686854362487793){
  if(i21<0.007660942617803812){
   if(i10<0.9968017339706421){
    if(i54<0.0004659856203943491){
     s0+=1667.0;
     s1+=318.0;
    } else {
     s0+=4750.0;
     s1+=36.0;
    }
   } else {
    if(i9<1.0110822916030884){
     s0+=64166.0;
     s1+=179.0;
    } else {
     s0+=1641.0;
     s1+=113.0;
    }
   }
  } else {
   if(i20<-0.0001074671745300293){
    if(i7<0.008245004341006279){
     s0+=31283.0;
     s1+=938.0;
    } else {
     s0+=3296.0;
     s1+=1142.0;
    }
   } else {
    if(i19<0.0017410321161150932){
     s0+=4155.0;
     s1+=417.0;
    } else {
     s0+=1156.0;
     s1+=2388.0;
    }
   }
  }
 } else {
  if(i27<0.9827814102172852){
   if(i25<1.1095771789550781){
    if(i37<0.013428286649286747){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=366.0;
    }
   } else {
    s1+=100.0;
   }
  } else {
   if(i45<1.0107741355895996){
    if(i22<0.011340856552124023){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=768.0;
    }
   } else {
    if(i32<0.011083180084824562){
     s0+=17.0;
    } else {
     s0+=16.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i24<0.00225556967779994){
  if(i31<1.116804838180542){
   if(i29<0.000241834728512913){
    s0+=592.0;
   } else {
    if(i28<0.0007126927375793457){
     s0+=8.0;
     s1+=2744.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   s0+=3349.0;
  }
 } else {
  if(i40<1.0789777040481567){
   if(i27<1.0170021057128906){
    s0+=119.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i17<0.08326521515846252){
    if(i54<0.0012806463055312634){
     s0+=52.0;
     s1+=7.0;
    } else {
     s0+=91.0;
     s1+=443.0;
    }
   } else {
    if(i50<-8.291789526992943e-06){
     s0+=57.0;
     s1+=14282.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i4<0.0005874037742614746){
 if(i7<0.0036593973636627197){
  if(i38<0.0005482190754264593){
   if(i41<1.1354830265045166){
    if(i35<1.0100433826446533){
     s0+=1696.0;
     s1+=39.0;
    } else {
     s0+=58579.0;
     s1+=40.0;
    }
   } else {
    if(i25<1.0958988666534424){
     s0+=3446.0;
     s1+=9.0;
    } else {
     s0+=1191.0;
     s1+=67.0;
    }
   }
  } else {
   if(i24<0.0005711988778784871){
    if(i53<0.009164240211248398){
     s0+=1980.0;
     s1+=84.0;
    } else {
     s0+=1450.0;
     s1+=664.0;
    }
   } else {
    if(i40<1.1231228113174438){
     s0+=17449.0;
     s1+=11.0;
    } else {
     s0+=1201.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i0<-0.0004013180732727051){
   if(i44<1.032280445098877){
    if(i15<0.1983911097049713){
     s0+=21160.0;
     s1+=642.0;
    } else {
     s0+=63.0;
     s1+=144.0;
    }
   } else {
    if(i21<0.05266860872507095){
     s0+=115.0;
     s1+=55.0;
    } else {
     s0+=1.0;
     s1+=88.0;
    }
   }
  } else {
   if(i58<1.0001661777496338){
    if(i43<0.028812553733587265){
     s0+=1095.0;
     s1+=49.0;
    } else {
     s0+=82.0;
     s1+=409.0;
    }
   } else {
    if(i38<0.000706701772287488){
     s0+=161.0;
     s1+=11.0;
    } else {
     s0+=313.0;
     s1+=2654.0;
    }
   }
  }
 }
} else {
 if(i27<1.0122385025024414){
  if(i3<-4.564251867122948e-05){
   if(i63<-0.000956646865233779){
    if(i52<-6.460611075453926e-06){
     s0+=93.0;
    } else {
     s0+=340.0;
     s1+=4847.0;
    }
   } else {
    if(i18<0.0006717306678183377){
     s0+=824.0;
     s1+=1638.0;
    } else {
     s0+=882.0;
    }
   }
  } else {
   if(i48<1.2218952178955078e-05){
    if(i57<1.0006097555160522){
     s0+=1350.0;
     s1+=161.0;
    } else {
     s0+=571.0;
     s1+=825.0;
    }
   } else {
    if(i43<0.05376432463526726){
     s0+=2240.0;
     s1+=30.0;
    } else {
     s0+=146.0;
     s1+=163.0;
    }
   }
  }
 } else {
  if(i18<0.0008258473826572299){
   if(i14<1.011406660079956){
    if(i50<-0.00018897256813943386){
     s0+=6.0;
    } else {
     s0+=16.0;
     s1+=1419.0;
    }
   } else {
    s1+=10034.0;
   }
  } else {
   s0+=220.0;
  }
 }
}
if(i27<1.0079200267791748){
 if(i25<1.1402404308319092){
  if(i9<1.0162476301193237){
   if(i43<0.012121818959712982){
    if(i11<1.0076208114624023){
     s0+=67651.0;
     s1+=644.0;
    } else {
     s0+=2801.0;
     s1+=253.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=7081.0;
     s1+=2387.0;
    } else {
     s0+=34704.0;
     s1+=2110.0;
    }
   }
  } else {
   if(i54<0.0010412358678877354){
    if(i41<1.1251602172851562){
     s1+=505.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i59<-0.0006451611407101154){
     s0+=110.0;
     s1+=385.0;
    } else {
     s0+=814.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i7<0.00647768983617425){
   if(i41<1.1426570415496826){
    if(i39<1.0008822679519653){
     s0+=17.0;
    } else {
     s1+=25.0;
    }
   } else {
    if(i58<1.0092976093292236){
     s0+=1081.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   if(i22<0.007824033498764038){
    if(i72<-0.22997111082077026){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=85.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.004023848567157984){
     s0+=50.0;
     s1+=3267.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
} else {
 if(i29<0.0026770764961838722){
  if(i42<-1.2571571460284758e-05){
   if(i34<1.1180615425109863){
    if(i56<-1.4911503967596218e-05){
     s0+=31.0;
    } else {
     s1+=1259.0;
    }
   } else {
    s0+=117.0;
   }
  } else {
   if(i19<0.0018898791167885065){
    if(i18<0.00017460812523495406){
     s0+=29.0;
     s1+=14.0;
    } else {
     s0+=1210.0;
    }
   } else {
    if(i32<0.001202013110741973){
     s0+=9.0;
     s1+=766.0;
    } else {
     s0+=685.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i5<1.4513731002807617e-05){
   if(i63<-0.0020266915671527386){
    s1+=42.0;
   } else {
    s0+=140.0;
   }
  } else {
   if(i37<0.0024410057812929153){
    s0+=22.0;
   } else {
    if(i21<0.004666896536946297){
     s0+=12.0;
     s1+=200.0;
    } else {
     s0+=7.0;
     s1+=11687.0;
    }
   }
  }
 }
}
if(i1<6.312131881713867e-05){
 if(i36<0.19177696108818054){
  if(i2<1.002603530883789){
   if(i12<1.0024138689041138){
    if(i26<1.1162974834442139){
     s0+=28421.0;
     s1+=2931.0;
    } else {
     s0+=77801.0;
     s1+=785.0;
    }
   } else {
    if(i43<0.1426895558834076){
     s0+=1999.0;
     s1+=538.0;
    } else {
     s0+=53.0;
     s1+=258.0;
    }
   }
  } else {
   if(i7<0.004011949524283409){
    if(i21<0.01277587004005909){
     s0+=5640.0;
     s1+=37.0;
    } else {
     s0+=46.0;
     s1+=41.0;
    }
   } else {
    if(i55<0.0005277172895148396){
     s0+=2.0;
     s1+=859.0;
    } else {
     s0+=338.0;
     s1+=1119.0;
    }
   }
  }
 } else {
  if(i50<-1.0725605534389615e-05){
   if(i37<0.001786647830158472){
    s0+=16.0;
   } else {
    if(i66<0.07542021572589874){
     s0+=39.0;
     s1+=201.0;
    } else {
     s0+=9.0;
     s1+=1071.0;
    }
   }
  } else {
   if(i47<0.00019701113342307508){
    if(i75<0.1307564377784729){
     s0+=14.0;
     s1+=7.0;
    } else {
     s0+=255.0;
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  }
 }
} else {
 if(i41<1.1703872680664062){
  if(i26<1.116804838180542){
   if(i29<0.00024500195286236703){
    s0+=89.0;
   } else {
    s1+=2277.0;
   }
  } else {
   if(i18<0.00031970092095434666){
    if(i25<1.0918149948120117){
     s0+=117.0;
     s1+=62.0;
    } else {
     s0+=29.0;
     s1+=535.0;
    }
   } else {
    if(i51<0.06347909569740295){
     s0+=1824.0;
     s1+=15.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i8<0.9392907619476318){
   if(i11<0.9703759551048279){
    if(i38<0.004081865306943655){
     s0+=3.0;
     s1+=102.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i18<0.0005969118792563677){
     s0+=37.0;
     s1+=6.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i15<0.09465464949607849){
    if(i26<1.629280686378479){
     s0+=1.0;
     s1+=403.0;
    } else {
     s0+=47.0;
     s1+=26.0;
    }
   } else {
    if(i17<0.12870612740516663){
     s0+=8.0;
     s1+=443.0;
    } else {
     s0+=5.0;
     s1+=12321.0;
    }
   }
  }
 }
}
if(i6<1.0046117305755615){
 if(i10<1.0075562000274658){
  if(i25<1.1403480768203735){
   if(i24<0.0008888171869330108){
    if(i22<0.059726983308792114){
     s0+=30516.0;
     s1+=1853.0;
    } else {
     s0+=1233.0;
     s1+=1462.0;
    }
   } else {
    if(i40<1.127637267112732){
     s0+=73358.0;
     s1+=529.0;
    } else {
     s0+=5107.0;
     s1+=845.0;
    }
   }
  } else {
   if(i56<-2.8360122996673454e-06){
    if(i3<-4.223859286867082e-05){
     s0+=59.0;
     s1+=962.0;
    } else {
     s0+=162.0;
     s1+=146.0;
    }
   } else {
    if(i7<0.0077139269560575485){
     s0+=651.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i50<-1.3974731700727716e-05){
   if(i18<0.0009359219111502171){
    if(i21<0.007159789092838764){
     s0+=153.0;
     s1+=166.0;
    } else {
     s0+=76.0;
     s1+=1985.0;
    }
   } else {
    s0+=194.0;
   }
  } else {
   if(i7<0.004695422947406769){
    s0+=424.0;
   } else {
    if(i28<-8.541345596313477e-05){
     s0+=9.0;
    } else {
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007046395912766457){
  if(i27<1.0088953971862793){
   if(i7<0.004381826613098383){
    if(i41<1.0840215682983398){
     s0+=3.0;
     s1+=68.0;
    } else {
     s0+=1021.0;
     s1+=23.0;
    }
   } else {
    if(i25<1.0476789474487305){
     s0+=371.0;
     s1+=72.0;
    } else {
     s0+=389.0;
     s1+=3566.0;
    }
   }
  } else {
   if(i14<1.012216329574585){
    if(i1<8.946657180786133e-05){
     s0+=108.0;
     s1+=195.0;
    } else {
     s0+=14.0;
     s1+=1820.0;
    }
   } else {
    if(i0<0.0010346174240112305){
     s0+=12.0;
     s1+=90.0;
    } else {
     s0+=7.0;
     s1+=10854.0;
    }
   }
  }
 } else {
  if(i2<1.0121879577636719){
   s0+=2323.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i12<1.0026252269744873){
 if(i11<1.014126181602478){
  if(i21<0.08427655696868896){
   if(i37<0.0010563277173787355){
    if(i21<0.007342912256717682){
     s0+=25268.0;
     s1+=610.0;
    } else {
     s0+=6917.0;
     s1+=2506.0;
    }
   } else {
    if(i22<0.23059505224227905){
     s0+=78023.0;
     s1+=1071.0;
    } else {
     s0+=97.0;
     s1+=170.0;
    }
   }
  } else {
   if(i0<-0.002978891134262085){
    s0+=58.0;
   } else {
    if(i53<0.07235788553953171){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i19<0.0022721318528056145){
   if(i32<0.0032114097848534584){
    if(i38<0.00041301510646007955){
     s0+=58.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s0+=202.0;
   }
  } else {
   if(i52<-2.9403095140878577e-06){
    if(i31<1.1021006107330322){
     s1+=4.0;
    } else {
     s0+=77.0;
     s1+=4.0;
    }
   } else {
    if(i65<1.003328725346364e-05){
     s1+=805.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i1<8.112192153930664e-05){
  if(i43<0.033104296773672104){
   if(i10<1.0132590532302856){
    if(i54<0.000545270333532244){
     s0+=945.0;
     s1+=362.0;
    } else {
     s0+=2771.0;
     s1+=169.0;
    }
   } else {
    if(i17<0.06509652733802795){
     s0+=3.0;
    } else {
     s1+=190.0;
    }
   }
  } else {
   if(i1<-7.152557373046875e-06){
    if(i17<0.10321485996246338){
     s0+=631.0;
     s1+=88.0;
    } else {
     s0+=167.0;
     s1+=233.0;
    }
   } else {
    if(i33<-0.0013493895530700684){
     s0+=445.0;
     s1+=921.0;
    } else {
     s0+=27.0;
     s1+=1542.0;
    }
   }
  }
 } else {
  if(i41<1.1453365087509155){
   if(i18<0.00033863732824102044){
    if(i67<0.005266070365905762){
     s0+=19.0;
     s1+=2051.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i11<1.0254862308502197){
     s0+=940.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i17<0.04143244028091431){
    if(i76<-0.003000974655151367){
     s0+=12.0;
     s1+=98.0;
    } else {
     s0+=21.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.0007849900284782052){
     s0+=36.0;
     s1+=12872.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i6<1.004465103149414){
 if(i3<-7.645013829460368e-05){
  if(i63<-0.0007744815666228533){
   if(i25<1.0409035682678223){
    if(i72<-0.02872931957244873){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=41.0;
    }
   } else {
    if(i39<0.9959458112716675){
     s0+=24.0;
    } else {
     s0+=96.0;
     s1+=2341.0;
    }
   }
  } else {
   if(i10<1.0125242471694946){
    if(i21<0.06141319125890732){
     s0+=1133.0;
     s1+=132.0;
    } else {
     s0+=12.0;
     s1+=68.0;
    }
   } else {
    s1+=190.0;
   }
  }
 } else {
  if(i2<1.0031101703643799){
   if(i14<1.0181578397750854){
    if(i38<0.0007064662640914321){
     s0+=77087.0;
     s1+=447.0;
    } else {
     s0+=30597.0;
     s1+=3348.0;
    }
   } else {
    if(i50<-8.401985724049155e-06){
     s0+=268.0;
     s1+=436.0;
    } else {
     s0+=489.0;
     s1+=9.0;
    }
   }
  } else {
   if(i53<0.036948204040527344){
    if(i68<0.0013588666915893555){
     s0+=2017.0;
     s1+=230.0;
    } else {
     s0+=155.0;
     s1+=384.0;
    }
   } else {
    if(i38<0.0005026882281526923){
     s0+=17.0;
    } else {
     s0+=38.0;
     s1+=307.0;
    }
   }
  }
 }
} else {
 if(i7<0.0028368490748107433){
  if(i47<-2.276826126035303e-05){
   if(i26<1.1180615425109863){
    s1+=322.0;
   } else {
    if(i18<0.00018415009253658354){
     s0+=12.0;
     s1+=116.0;
    } else {
     s0+=176.0;
     s1+=17.0;
    }
   }
  } else {
   if(i1<0.00010949373245239258){
    s0+=2544.0;
   } else {
    if(i46<0.0005691840779036283){
     s1+=23.0;
    } else {
     s0+=238.0;
    }
   }
  }
 } else {
  if(i1<2.7000904083251953e-05){
   if(i20<-0.0004552602767944336){
    if(i15<0.055799782276153564){
     s0+=408.0;
     s1+=42.0;
    } else {
     s0+=102.0;
     s1+=98.0;
    }
   } else {
    if(i69<0.23464882373809814){
     s0+=128.0;
     s1+=69.0;
    } else {
     s0+=18.0;
     s1+=208.0;
    }
   }
  } else {
   if(i30<-0.00024857185781002045){
    if(i52<-7.252754585351795e-06){
     s0+=38.0;
    } else {
     s0+=117.0;
     s1+=12648.0;
    }
   } else {
    if(i0<0.0014119148254394531){
     s0+=527.0;
     s1+=695.0;
    } else {
     s0+=152.0;
     s1+=2291.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i16<1.0101144313812256){
  if(i53<0.34739965200424194){
   if(i4<0.0002893805503845215){
    if(i26<1.116391897201538){
     s0+=27299.0;
     s1+=2050.0;
    } else {
     s0+=75102.0;
     s1+=731.0;
    }
   } else {
    if(i43<0.01726245880126953){
     s0+=5461.0;
     s1+=413.0;
    } else {
     s0+=1432.0;
     s1+=1122.0;
    }
   }
  } else {
   if(i13<0.9107087850570679){
    if(i25<1.1361327171325684){
     s0+=154.0;
     s1+=5.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i37<0.00699098315089941){
     s0+=23.0;
    } else {
     s0+=14.0;
     s1+=291.0;
    }
   }
  }
 } else {
  if(i38<0.0006846670294180512){
   if(i3<-8.152687951223925e-05){
    s1+=2.0;
   } else {
    if(i59<0.000991064589470625){
     s0+=585.0;
     s1+=9.0;
    } else {
     s0+=41.0;
     s1+=7.0;
    }
   }
  } else {
   if(i27<1.0005130767822266){
    if(i21<0.026321204379200935){
     s0+=212.0;
     s1+=8.0;
    } else {
     s0+=39.0;
     s1+=201.0;
    }
   } else {
    if(i0<-0.00012296438217163086){
     s0+=67.0;
     s1+=1.0;
    } else {
     s0+=88.0;
     s1+=792.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007048479747027159){
  if(i9<1.017695426940918){
   if(i1<6.324052810668945e-05){
    if(i63<-0.000780303031206131){
     s0+=520.0;
     s1+=902.0;
    } else {
     s0+=1780.0;
     s1+=584.0;
    }
   } else {
    if(i50<-0.00017159734852612019){
     s0+=25.0;
    } else {
     s0+=218.0;
     s1+=4041.0;
    }
   }
  } else {
   if(i0<0.0001392960548400879){
    if(i41<1.182697057723999){
     s0+=91.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=70.0;
    }
   } else {
    if(i10<1.012110948562622){
     s0+=176.0;
     s1+=1529.0;
    } else {
     s0+=24.0;
     s1+=11648.0;
    }
   }
  }
 } else {
  s0+=3055.0;
 }
}
if(i4<0.0005696415901184082){
 if(i19<0.0017227325588464737){
  if(i61<0.0001653643703320995){
   if(i26<1.0776758193969727){
    if(i41<1.0577976703643799){
     s0+=11705.0;
     s1+=154.0;
    } else {
     s0+=91.0;
     s1+=68.0;
    }
   } else {
    if(i16<1.0106579065322876){
     s0+=61419.0;
     s1+=68.0;
    } else {
     s0+=568.0;
     s1+=27.0;
    }
   }
  } else {
   if(i28<7.089972496032715e-05){
    if(i39<0.9996160268783569){
     s0+=10345.0;
     s1+=33.0;
    } else {
     s0+=3241.0;
     s1+=270.0;
    }
   } else {
    if(i34<1.0891741514205933){
     s0+=265.0;
     s1+=215.0;
    } else {
     s0+=1706.0;
     s1+=133.0;
    }
   }
  }
 } else {
  if(i24<0.0009191688150167465){
   if(i37<0.00022414310660678893){
    s0+=943.0;
   } else {
    if(i34<1.0498223304748535){
     s0+=662.0;
     s1+=20.0;
    } else {
     s0+=181.0;
     s1+=2398.0;
    }
   }
  } else {
   if(i25<1.121600866317749){
    if(i0<-2.9206275939941406e-06){
     s0+=17605.0;
     s1+=350.0;
    } else {
     s0+=397.0;
     s1+=254.0;
    }
   } else {
    if(i43<0.056962743401527405){
     s0+=487.0;
     s1+=167.0;
    } else {
     s0+=78.0;
     s1+=1010.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007044117664918303){
  if(i10<1.010241985321045){
   if(i15<0.15467804670333862){
    if(i0<0.0009704232215881348){
     s0+=2789.0;
     s1+=1420.0;
    } else {
     s0+=149.0;
     s1+=1060.0;
    }
   } else {
    if(i0<-0.0002835392951965332){
     s0+=61.0;
     s1+=88.0;
    } else {
     s0+=122.0;
     s1+=2544.0;
    }
   }
  } else {
   if(i7<0.0020964602008461952){
    if(i31<1.3510007858276367){
     s0+=38.0;
     s1+=209.0;
    } else {
     s0+=84.0;
     s1+=7.0;
    }
   } else {
    if(i7<0.00355499517172575){
     s0+=66.0;
     s1+=406.0;
    } else {
     s0+=12.0;
     s1+=13396.0;
    }
   }
  }
 } else {
  if(i41<1.348146677017212){
   s0+=3548.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i3<-0.00010072439181385562){
 if(i25<1.0463327169418335){
  if(i0<0.0020686984062194824){
   if(i15<0.0827014148235321){
    if(i35<0.9401729106903076){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=367.0;
    }
   } else {
    if(i51<0.02193879894912243){
     s0+=3.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   s1+=54.0;
  }
 } else {
  if(i67<-0.007757514715194702){
   if(i46<0.012166663073003292){
    if(i49<0.8855895400047302){
     s0+=108.0;
     s1+=11.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<0.041572295129299164){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=97.0;
    }
   }
  } else {
   if(i56<-5.673414852935821e-05){
    s0+=73.0;
   } else {
    if(i15<0.007687509059906006){
     s0+=48.0;
     s1+=47.0;
    } else {
     s0+=194.0;
     s1+=14798.0;
    }
   }
  }
 }
} else {
 if(i1<6.335973739624023e-05){
  if(i44<1.029141902923584){
   if(i51<0.029072336852550507){
    if(i19<0.0016739512793719769){
     s0+=82534.0;
     s1+=795.0;
    } else {
     s0+=14525.0;
     s1+=2367.0;
    }
   } else {
    if(i5<5.781650543212891e-06){
     s0+=14064.0;
     s1+=481.0;
    } else {
     s0+=1987.0;
     s1+=1435.0;
    }
   }
  } else {
   if(i7<0.005907032173126936){
    if(i19<0.001217016950249672){
     s0+=503.0;
     s1+=8.0;
    } else {
     s0+=440.0;
     s1+=106.0;
    }
   } else {
    if(i4<-0.0007933080196380615){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=54.0;
     s1+=806.0;
    }
   }
  }
 } else {
  if(i25<1.0773630142211914){
   if(i29<0.0002476790396030992){
    s0+=68.0;
   } else {
    if(i26<1.116804838180542){
     s1+=1632.0;
    } else {
     s0+=138.0;
     s1+=100.0;
    }
   }
  } else {
   if(i18<0.0005422784015536308){
    if(i57<1.0025928020477295){
     s0+=93.0;
     s1+=1202.0;
    } else {
     s0+=26.0;
     s1+=14.0;
    }
   } else {
    if(i51<0.06227775663137436){
     s0+=1534.0;
    } else {
     s1+=24.0;
    }
   }
  }
 }
}
if(i2<1.0036323070526123){
 if(i15<0.20635947585105896){
  if(i4<0.0003133416175842285){
   if(i19<0.001376564847305417){
    if(i27<0.9987197518348694){
     s0+=30978.0;
     s1+=329.0;
    } else {
     s0+=47732.0;
     s1+=96.0;
    }
   } else {
    if(i29<0.0010728351771831512){
     s0+=2195.0;
     s1+=1801.0;
    } else {
     s0+=22761.0;
     s1+=572.0;
    }
   }
  } else {
   if(i59<0.0014295624569058418){
    if(i11<1.0088379383087158){
     s0+=5849.0;
     s1+=771.0;
    } else {
     s0+=548.0;
     s1+=623.0;
    }
   } else {
    if(i10<0.9764680862426758){
     s0+=805.0;
     s1+=223.0;
    } else {
     s0+=434.0;
     s1+=850.0;
    }
   }
  }
 } else {
  if(i50<-9.218598279403523e-06){
   if(i66<0.017056431621313095){
    if(i37<0.008380226790904999){
     s0+=19.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i31<1.1766420602798462){
     s0+=6.0;
    } else {
     s0+=36.0;
     s1+=1151.0;
    }
   }
  } else {
   if(i14<1.0406231880187988){
    if(i7<0.009370843879878521){
     s0+=207.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i45<1.003563642501831){
     s0+=11.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i0<0.0013654828071594238){
  if(i32<0.0018884073942899704){
   if(i48<7.927417755126953e-06){
    if(i40<1.0784947872161865){
     s0+=43.0;
     s1+=729.0;
    } else {
     s0+=512.0;
     s1+=100.0;
    }
   } else {
    if(i7<0.0044864388182759285){
     s0+=2954.0;
     s1+=21.0;
    } else {
     s0+=91.0;
     s1+=82.0;
    }
   }
  } else {
   if(i25<1.0742592811584473){
    if(i19<0.0028405480552464724){
     s0+=48.0;
     s1+=5.0;
    } else {
     s0+=24.0;
     s1+=72.0;
    }
   } else {
    if(i28<0.0007432699203491211){
     s0+=46.0;
     s1+=1868.0;
    } else {
     s0+=104.0;
     s1+=425.0;
    }
   }
  }
 } else {
  if(i1<0.00014382600784301758){
   if(i28<0.0012462735176086426){
    if(i19<0.002142094075679779){
     s0+=176.0;
     s1+=414.0;
    } else {
     s0+=97.0;
     s1+=2818.0;
    }
   } else {
    if(i7<0.013185732066631317){
     s0+=640.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i5<0.00028771162033081055){
    if(i39<1.0011845827102661){
     s0+=51.0;
     s1+=251.0;
    } else {
     s0+=7.0;
     s1+=11256.0;
    }
   } else {
    s0+=7.0;
   }
  }
 }
}
if(i13<1.0166476964950562){
 if(i3<-8.732054266147316e-05){
  if(i17<0.041246384382247925){
   if(i10<0.9798834323883057){
    if(i72<-0.19772592186927795){
     s0+=12.0;
     s1+=29.0;
    } else {
     s0+=814.0;
     s1+=22.0;
    }
   } else {
    if(i74<0.022118955850601196){
     s0+=51.0;
     s1+=10.0;
    } else {
     s0+=26.0;
     s1+=130.0;
    }
   }
  } else {
   if(i48<2.4139881134033203e-05){
    if(i13<0.8993965983390808){
     s0+=75.0;
     s1+=67.0;
    } else {
     s0+=151.0;
     s1+=3670.0;
    }
   } else {
    if(i39<1.0055372714996338){
     s0+=165.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i1<7.69495964050293e-05){
   if(i21<0.006775497458875179){
    if(i11<1.00752854347229){
     s0+=67454.0;
     s1+=435.0;
    } else {
     s0+=3398.0;
     s1+=234.0;
    }
   } else {
    if(i2<0.9980150461196899){
     s0+=35439.0;
     s1+=405.0;
    } else {
     s0+=6665.0;
     s1+=3950.0;
    }
   }
  } else {
   if(i28<0.0007304847240447998){
    if(i34<1.1209661960601807){
     s1+=789.0;
    } else {
     s0+=96.0;
     s1+=199.0;
    }
   } else {
    if(i7<0.005867209285497665){
     s0+=635.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=191.0;
    }
   }
  }
 }
} else {
 if(i8<1.0205037593841553){
  if(i15<0.20297771692276){
   if(i24<0.0010448637185618281){
    if(i46<0.0020283167250454426){
     s0+=18.0;
     s1+=870.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i43<0.0375075563788414){
     s0+=1071.0;
     s1+=110.0;
    } else {
     s0+=198.0;
     s1+=344.0;
    }
   }
  } else {
   if(i38<0.000442586955614388){
    s0+=13.0;
   } else {
    if(i66<0.007823774591088295){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=698.0;
    }
   }
  }
 } else {
  if(i26<1.6811659336090088){
   if(i3<-3.195030149072409e-05){
    if(i2<1.000946044921875){
     s0+=24.0;
     s1+=76.0;
    } else {
     s0+=33.0;
     s1+=11858.0;
    }
   } else {
    if(i2<1.0016485452651978){
     s0+=150.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   s0+=90.0;
  }
 }
}
if(i10<1.010812520980835){
 if(i12<1.0024404525756836){
  if(i21<0.08886991441249847){
   if(i26<1.1162974834442139){
    if(i11<1.0076438188552856){
     s0+=29156.0;
     s1+=2746.0;
    } else {
     s0+=283.0;
     s1+=773.0;
    }
   } else {
    if(i49<1.0406574010849){
     s0+=79780.0;
     s1+=840.0;
    } else {
     s0+=345.0;
     s1+=191.0;
    }
   }
  } else {
   if(i65<2.0814439267269336e-05){
    s1+=285.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i30<-0.00022315536625683308){
   if(i21<0.024330534040927887){
    if(i13<0.9971508979797363){
     s0+=53.0;
     s1+=193.0;
    } else {
     s0+=747.0;
     s1+=334.0;
    }
   } else {
    if(i67<-0.007684677839279175){
     s0+=146.0;
     s1+=35.0;
    } else {
     s0+=233.0;
     s1+=2973.0;
    }
   }
  } else {
   if(i15<0.17546918988227844){
    if(i47<-2.013812991208397e-05){
     s0+=26.0;
     s1+=265.0;
    } else {
     s0+=4396.0;
     s1+=1144.0;
    }
   } else {
    if(i7<0.0055779749527573586){
     s0+=91.0;
     s1+=2.0;
    } else {
     s0+=20.0;
     s1+=446.0;
    }
   }
  }
 }
} else {
 if(i41<1.1599657535552979){
  if(i48<1.1980533599853516e-05){
   if(i54<0.0009729488519951701){
    if(i24<0.0028546182438731194){
     s1+=1839.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i39<1.000783085823059){
     s0+=86.0;
    } else {
     s0+=97.0;
     s1+=402.0;
    }
   }
  } else {
   if(i18<0.00029665278270840645){
    if(i11<1.0134849548339844){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=95.0;
    }
   } else {
    if(i24<0.008372249081730843){
     s0+=941.0;
     s1+=8.0;
    } else {
     s1+=12.0;
    }
   }
  }
 } else {
  if(i24<0.0025592464953660965){
   if(i37<0.0038409833796322346){
    if(i7<0.003184241009876132){
     s0+=21.0;
    } else {
     s1+=19.0;
    }
   } else {
    s0+=103.0;
   }
  } else {
   if(i7<0.002792474813759327){
    if(i65<-4.4529597289511e-06){
     s1+=125.0;
    } else {
     s0+=8.0;
    }
   } else {
    s1+=11572.0;
   }
  }
 }
}
if(i12<1.002633810043335){
 if(i8<1.0115225315093994){
  if(i7<0.003651426872238517){
   if(i26<1.1162974834442139){
    if(i31<1.1157604455947876){
     s0+=26462.0;
     s1+=688.0;
    } else {
     s0+=200.0;
     s1+=125.0;
    }
   } else {
    if(i37<0.0018580707255750895){
     s0+=48406.0;
     s1+=4.0;
    } else {
     s0+=12084.0;
     s1+=184.0;
    }
   }
  } else {
   if(i45<0.9996222257614136){
    if(i17<0.2386699914932251){
     s0+=16037.0;
     s1+=212.0;
    } else {
     s0+=16.0;
     s1+=36.0;
    }
   } else {
    if(i47<0.00010994799231411889){
     s0+=1014.0;
     s1+=2505.0;
    } else {
     s0+=5548.0;
     s1+=724.0;
    }
   }
  }
 } else {
  if(i7<0.005076962057501078){
   if(i26<1.105151891708374){
    s1+=32.0;
   } else {
    if(i47<2.4393659259658307e-05){
     s0+=547.0;
     s1+=1.0;
    } else {
     s0+=87.0;
     s1+=34.0;
    }
   }
  } else {
   if(i71<6.6129387050750665e-06){
    if(i52<-3.0447979497694178e-06){
     s0+=52.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=1157.0;
    }
   } else {
    s0+=36.0;
   }
  }
 }
} else {
 if(i3<-7.389857637463138e-05){
  if(i8<0.9365639686584473){
   if(i38<0.0031481990590691566){
    if(i10<0.9732884168624878){
     s0+=299.0;
     s1+=17.0;
    } else {
     s0+=27.0;
     s1+=23.0;
    }
   } else {
    if(i30<-0.0017273210687562823){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=55.0;
    }
   }
  } else {
   if(i9<1.0192747116088867){
    if(i52<-7.256131539179478e-06){
     s0+=189.0;
    } else {
     s0+=219.0;
     s1+=4069.0;
    }
   } else {
    if(i65<2.269680226163473e-05){
     s0+=26.0;
     s1+=11669.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i37<0.001109252218157053){
   if(i26<1.067186713218689){
    s0+=704.0;
   } else {
    if(i39<1.0029926300048828){
     s0+=16.0;
     s1+=1201.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i54<0.002034586388617754){
    if(i7<0.005938423331826925){
     s0+=3381.0;
     s1+=28.0;
    } else {
     s0+=48.0;
     s1+=179.0;
    }
   } else {
    if(i47<8.970311318989843e-05){
     s0+=102.0;
     s1+=769.0;
    } else {
     s0+=1041.0;
     s1+=552.0;
    }
   }
  }
 }
}
if(i0<0.0009556412696838379){
 if(i14<1.0181578397750854){
  if(i3<-8.867359429132193e-05){
   if(i21<0.04785512387752533){
    if(i68<-0.010178476572036743){
     s0+=619.0;
     s1+=13.0;
    } else {
     s0+=146.0;
     s1+=305.0;
    }
   } else {
    if(i64<0.9174814224243164){
     s0+=120.0;
     s1+=38.0;
    } else {
     s0+=14.0;
     s1+=891.0;
    }
   }
  } else {
   if(i59<0.0009303892147727311){
    if(i54<0.0008490423206239939){
     s0+=37931.0;
     s1+=2579.0;
    } else {
     s0+=62983.0;
     s1+=691.0;
    }
   } else {
    if(i1<-4.369020462036133e-05){
     s0+=8670.0;
     s1+=347.0;
    } else {
     s0+=2959.0;
     s1+=1200.0;
    }
   }
  }
 } else {
  if(i5<7.450580596923828e-06){
   if(i36<0.18760302662849426){
    if(i10<1.01465904712677){
     s0+=488.0;
     s1+=58.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i33<-0.00020116567611694336){
     s0+=2.0;
     s1+=77.0;
    } else {
     s0+=42.0;
     s1+=59.0;
    }
   }
  } else {
   if(i22<0.1045113205909729){
    if(i37<0.0011270614340901375){
     s1+=76.0;
    } else {
     s0+=242.0;
     s1+=36.0;
    }
   } else {
    if(i56<-3.656731223600218e-06){
     s0+=223.0;
     s1+=1625.0;
    } else {
     s0+=31.0;
    }
   }
  }
 }
} else {
 if(i32<0.0020378779154270887){
  if(i31<1.116804838180542){
   if(i31<1.0545791387557983){
    s0+=92.0;
   } else {
    if(i56<-1.4675208149128594e-05){
     s0+=44.0;
    } else {
     s0+=9.0;
     s1+=2372.0;
    }
   }
  } else {
   if(i27<1.0171608924865723){
    if(i18<0.0002380982623435557){
     s0+=12.0;
     s1+=25.0;
    } else {
     s0+=1876.0;
    }
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i34<1.133331298828125){
   if(i65<2.229179699497763e-06){
    s1+=11.0;
   } else {
    s0+=42.0;
   }
  } else {
   if(i22<0.0347670316696167){
    if(i51<0.033589303493499756){
     s0+=39.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=92.0;
    }
   } else {
    if(i35<0.9343194961547852){
     s0+=6.0;
     s1+=1.0;
    } else {
     s0+=55.0;
     s1+=13669.0;
    }
   }
  }
 }
}
if(i9<1.0177628993988037){
 if(i42<-1.2574633728945628e-05){
  if(i52<-6.390693670255132e-06){
   s0+=100.0;
  } else {
   if(i0<0.0017903447151184082){
    if(i54<0.0011516502127051353){
     s1+=118.0;
    } else {
     s0+=31.0;
     s1+=11.0;
    }
   } else {
    s1+=1679.0;
   }
  }
 } else {
  if(i3<-8.426446584053338e-05){
   if(i10<0.9738101959228516){
    if(i21<0.056444037705659866){
     s0+=875.0;
     s1+=44.0;
    } else {
     s0+=91.0;
     s1+=186.0;
    }
   } else {
    if(i46<0.0020118628162890673){
     s0+=248.0;
     s1+=302.0;
    } else {
     s0+=194.0;
     s1+=2415.0;
    }
   }
  } else {
   if(i0<0.0009604692459106445){
    if(i51<0.020662568509578705){
     s0+=85891.0;
     s1+=2377.0;
    } else {
     s0+=26287.0;
     s1+=2461.0;
    }
   } else {
    if(i40<1.0782275199890137){
     s0+=79.0;
     s1+=409.0;
    } else {
     s0+=1202.0;
     s1+=347.0;
    }
   }
  }
 }
} else {
 if(i5<7.927417755126953e-06){
  if(i29<0.005907644517719746){
   if(i50<-6.642761491093552e-06){
    if(i18<0.0002462498960085213){
     s0+=22.0;
     s1+=88.0;
    } else {
     s0+=126.0;
    }
   } else {
    s0+=409.0;
   }
  } else {
   if(i17<0.14609619975090027){
    s0+=8.0;
   } else {
    s1+=148.0;
   }
  }
 } else {
  if(i40<1.144977331161499){
   if(i57<0.9997119903564453){
    s0+=146.0;
   } else {
    if(i11<1.0164178609848022){
     s0+=436.0;
     s1+=630.0;
    } else {
     s0+=159.0;
     s1+=2295.0;
    }
   }
  } else {
   if(i2<1.0016775131225586){
    if(i57<1.0024340152740479){
     s0+=2.0;
     s1+=101.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i24<0.0025628621224313974){
     s0+=18.0;
    } else {
     s0+=6.0;
     s1+=10850.0;
    }
   }
  }
 }
}
if(i6<1.004654884338379){
 if(i8<1.0119892358779907){
  if(i21<0.06413033604621887){
   if(i19<0.0017235071863979101){
    if(i54<0.0004904179950244725){
     s0+=30484.0;
     s1+=766.0;
    } else {
     s0+=59136.0;
     s1+=194.0;
    }
   } else {
    if(i5<-1.1324882507324219e-06){
     s0+=14571.0;
     s1+=368.0;
    } else {
     s0+=6955.0;
     s1+=3473.0;
    }
   }
  } else {
   if(i0<-0.0027405917644500732){
    s0+=280.0;
   } else {
    if(i11<0.9046593308448792){
     s0+=15.0;
     s1+=6.0;
    } else {
     s0+=8.0;
     s1+=673.0;
    }
   }
  }
 } else {
  if(i4<0.00027680397033691406){
   if(i50<-2.8174932594993152e-05){
    if(i36<0.13703903555870056){
     s0+=6.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i47<3.303532866993919e-05){
     s0+=419.0;
     s1+=2.0;
    } else {
     s0+=83.0;
     s1+=77.0;
    }
   }
  } else {
   if(i42<2.7073925593867898e-05){
    if(i71<1.2618061191460583e-06){
     s0+=112.0;
     s1+=1912.0;
    } else {
     s0+=52.0;
     s1+=86.0;
    }
   } else {
    if(i40<1.1689658164978027){
     s0+=207.0;
     s1+=48.0;
    } else {
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i7<0.002733349334448576){
  if(i47<-2.4349901650566608e-05){
   if(i28<0.0008462667465209961){
    if(i51<0.001682761125266552){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=335.0;
    }
   } else {
    if(i13<1.0256142616271973){
     s0+=139.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i73<-0.0035793185234069824){
    s1+=6.0;
   } else {
    if(i18<0.00016688813047949225){
     s0+=32.0;
     s1+=23.0;
    } else {
     s0+=2751.0;
    }
   }
  }
 } else {
  if(i2<1.001732349395752){
   if(i35<1.052894115447998){
    if(i26<1.4505159854888916){
     s0+=417.0;
     s1+=16.0;
    } else {
     s0+=35.0;
     s1+=46.0;
    }
   } else {
    if(i7<0.010594384744763374){
     s0+=62.0;
     s1+=11.0;
    } else {
     s0+=17.0;
     s1+=223.0;
    }
   }
  } else {
   if(i28<0.0015210211277008057){
    if(i15<0.1460467278957367){
     s0+=609.0;
     s1+=3584.0;
    } else {
     s0+=53.0;
     s1+=11840.0;
    }
   } else {
    if(i32<0.008106669411063194){
     s0+=241.0;
    } else {
     s1+=167.0;
    }
   }
  }
 }
}
if(i3<-0.000114718139229808){
 if(i57<0.9982839822769165){
  s0+=105.0;
 } else {
  if(i17<0.019329071044921875){
   if(i8<0.9676804542541504){
    if(i44<0.7842626571655273){
     s0+=19.0;
     s1+=23.0;
    } else {
     s0+=264.0;
     s1+=12.0;
    }
   } else {
    s1+=37.0;
   }
  } else {
   if(i47<0.000357567158062011){
    if(i5<0.00022667646408081055){
     s0+=38.0;
     s1+=14120.0;
    } else {
     s0+=76.0;
    }
   } else {
    if(i53<0.19999253749847412){
     s0+=51.0;
     s1+=19.0;
    } else {
     s0+=2.0;
     s1+=85.0;
    }
   }
  }
 }
} else {
 if(i1<6.335973739624023e-05){
  if(i15<0.1999807357788086){
   if(i19<0.001723462250083685){
    if(i19<0.0013012749841436744){
     s0+=81503.0;
     s1+=413.0;
    } else {
     s0+=9354.0;
     s1+=595.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2619.0;
     s1+=3109.0;
    } else {
     s0+=19984.0;
     s1+=1730.0;
    }
   }
  } else {
   if(i50<-8.755558155826293e-06){
    if(i3<-3.4158918424509466e-05){
     s0+=20.0;
     s1+=578.0;
    } else {
     s0+=75.0;
     s1+=131.0;
    }
   } else {
    if(i6<1.0043727159500122){
     s0+=288.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i26<1.116804838180542){
   if(i27<1.0077424049377441){
    if(i29<0.0002636370190884918){
     s0+=70.0;
    } else {
     s1+=269.0;
    }
   } else {
    if(i26<1.057311773300171){
     s0+=1.0;
    } else {
     s1+=1843.0;
    }
   }
  } else {
   if(i41<1.1703872680664062){
    if(i21<0.014609220437705517){
     s0+=1766.0;
     s1+=21.0;
    } else {
     s0+=17.0;
     s1+=248.0;
    }
   } else {
    if(i18<0.00043853861279785633){
     s0+=2.0;
     s1+=1203.0;
    } else {
     s0+=77.0;
     s1+=89.0;
    }
   }
  }
 }
}
if(i12<1.0026252269744873){
 if(i15<0.23153239488601685){
  if(i10<1.0069952011108398){
   if(i38<0.0007078808266669512){
    if(i40<1.1354830265045166){
     s0+=76460.0;
     s1+=348.0;
    } else {
     s0+=1863.0;
     s1+=87.0;
    }
   } else {
    if(i4<-0.0001316666603088379){
     s0+=22349.0;
     s1+=392.0;
    } else {
     s0+=8842.0;
     s1+=3297.0;
    }
   }
  } else {
   if(i34<1.1005628108978271){
    if(i32<0.00017717349692247808){
     s0+=54.0;
    } else {
     s1+=620.0;
    }
   } else {
    if(i21<0.015864025801420212){
     s0+=837.0;
     s1+=29.0;
    } else {
     s0+=59.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i43<0.10421936213970184){
   if(i7<0.006032458506524563){
    if(i45<1.0018980503082275){
     s0+=65.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   } else {
    if(i6<0.9920799136161804){
     s0+=6.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i3<-3.1261570256901905e-06){
    s1+=579.0;
   } else {
    s0+=7.0;
   }
  }
 }
} else {
 if(i3<-7.376324356300756e-05){
  if(i14<0.889582097530365){
   if(i67<-0.008320122957229614){
    if(i54<0.017892543226480484){
     s0+=195.0;
     s1+=11.0;
    } else {
     s0+=15.0;
     s1+=33.0;
    }
   } else {
    if(i43<0.1430979073047638){
     s0+=18.0;
     s1+=10.0;
    } else {
     s1+=141.0;
    }
   }
  } else {
   if(i22<0.0373748242855072){
    if(i76<-0.005610674619674683){
     s0+=41.0;
     s1+=119.0;
    } else {
     s0+=197.0;
     s1+=8.0;
    }
   } else {
    if(i18<0.0007056489121168852){
     s0+=144.0;
     s1+=15556.0;
    } else {
     s0+=141.0;
    }
   }
  }
 } else {
  if(i42<-8.754246664466336e-06){
   if(i18<0.0007078605704009533){
    if(i58<1.003267526626587){
     s1+=973.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    s0+=255.0;
   }
  } else {
   if(i7<0.0042497324757277966){
    if(i26<1.0986645221710205){
     s0+=738.0;
     s1+=86.0;
    } else {
     s0+=3427.0;
     s1+=42.0;
    }
   } else {
    if(i33<-0.001280069351196289){
     s0+=780.0;
     s1+=399.0;
    } else {
     s0+=111.0;
     s1+=1228.0;
    }
   }
  }
 }
}
if(i3<-9.780903201317415e-05){
 if(i9<0.9092308878898621){
  if(i60<0.020936056971549988){
   if(i17<0.08122411370277405){
    if(i25<1.068709373474121){
     s0+=342.0;
     s1+=3.0;
    } else {
     s0+=39.0;
     s1+=12.0;
    }
   } else {
    if(i69<0.5194644927978516){
     s0+=17.0;
     s1+=7.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i16<0.9427913427352905){
    if(i24<0.01000271551311016){
     s0+=87.0;
     s1+=3.0;
    } else {
     s0+=29.0;
     s1+=26.0;
    }
   } else {
    if(i24<0.0069725001230835915){
     s0+=18.0;
    } else {
     s0+=22.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i34<1.1525202989578247){
   if(i24<0.0010729721980169415){
    s1+=628.0;
   } else {
    if(i72<-0.09959030151367188){
     s1+=1.0;
    } else {
     s0+=263.0;
     s1+=2.0;
    }
   }
  } else {
   if(i8<0.9426186084747314){
    if(i36<0.03625115752220154){
     s0+=55.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i22<0.044867098331451416){
     s0+=55.0;
     s1+=126.0;
    } else {
     s0+=22.0;
     s1+=14471.0;
    }
   }
  }
 }
} else {
 if(i42<-1.1550891940714791e-05){
  if(i5<7.009506225585938e-05){
   if(i25<1.10361909866333){
    if(i31<1.1264252662658691){
     s1+=816.0;
    } else {
     s0+=3.0;
     s1+=94.0;
    }
   } else {
    if(i18<0.000676579074934125){
     s1+=166.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   if(i18<0.0007078605704009533){
    s1+=108.0;
   } else {
    s0+=88.0;
   }
  }
 } else {
  if(i23<1.021172046661377){
   if(i11<1.0076215267181396){
    if(i45<1.008617639541626){
     s0+=107919.0;
     s1+=4003.0;
    } else {
     s0+=449.0;
     s1+=432.0;
    }
   } else {
    if(i31<1.0905578136444092){
     s0+=176.0;
     s1+=941.0;
    } else {
     s0+=5173.0;
     s1+=508.0;
    }
   }
  } else {
   if(i7<0.005309203639626503){
    if(i7<0.004055344499647617){
     s0+=1168.0;
     s1+=63.0;
    } else {
     s0+=259.0;
     s1+=93.0;
    }
   } else {
    if(i26<1.5508465766906738){
     s0+=48.0;
     s1+=1784.0;
    } else {
     s0+=58.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i40<1.1402404308319092){
 if(i10<1.0075582265853882){
  if(i3<-0.00010367227514507249){
   if(i56<-3.40605947712902e-05){
    s0+=56.0;
   } else {
    if(i15<0.027010679244995117){
     s0+=71.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=482.0;
    }
   }
  } else {
   if(i10<1.0058152675628662){
    if(i41<1.0902695655822754){
     s0+=39046.0;
     s1+=2831.0;
    } else {
     s0+=68609.0;
     s1+=1166.0;
    }
   } else {
    if(i29<0.0010415753349661827){
     s0+=408.0;
     s1+=454.0;
    } else {
     s0+=1243.0;
     s1+=83.0;
    }
   }
  }
 } else {
  if(i29<0.0012218196643516421){
   if(i4<0.00020581483840942383){
    s0+=69.0;
   } else {
    if(i20<0.0009464621543884277){
     s0+=5.0;
     s1+=2542.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i32<0.0020587346516549587){
    if(i55<0.0006802019197493792){
     s0+=193.0;
     s1+=198.0;
    } else {
     s0+=2138.0;
     s1+=15.0;
    }
   } else {
    if(i2<1.0031769275665283){
     s0+=123.0;
     s1+=3.0;
    } else {
     s0+=59.0;
     s1+=1450.0;
    }
   }
  }
 }
} else {
 if(i0<0.00016385316848754883){
  if(i43<0.12164142727851868){
   if(i7<0.005624685436487198){
    if(i0<0.00013998150825500488){
     s0+=1761.0;
    } else {
     s0+=39.0;
     s1+=3.0;
    }
   } else {
    if(i16<0.9761960506439209){
     s0+=1547.0;
     s1+=105.0;
    } else {
     s0+=29.0;
     s1+=209.0;
    }
   }
  } else {
   if(i35<1.0630106925964355){
    if(i12<1.0009539127349854){
     s0+=324.0;
     s1+=15.0;
    } else {
     s0+=29.0;
     s1+=35.0;
    }
   } else {
    if(i28<0.0008307099342346191){
     s0+=10.0;
     s1+=674.0;
    } else {
     s0+=26.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i3<-4.2988740460714325e-05){
   if(i35<1.0290398597717285){
    if(i12<1.0058045387268066){
     s0+=129.0;
     s1+=24.0;
    } else {
     s0+=8.0;
     s1+=97.0;
    }
   } else {
    if(i31<1.6811659336090088){
     s0+=85.0;
     s1+=13415.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   if(i53<0.03855549171566963){
    if(i31<1.1766420602798462){
     s0+=592.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   } else {
    if(i24<0.00256565073505044){
     s0+=25.0;
    } else {
     s0+=12.0;
     s1+=301.0;
    }
   }
  }
 }
}
if(i0<0.0009617209434509277){
 if(i36<0.191195547580719){
  if(i4<0.0003267526626586914){
   if(i19<0.0013907274696975946){
    if(i16<0.9949754476547241){
     s0+=12486.0;
     s1+=281.0;
    } else {
     s0+=66734.0;
     s1+=169.0;
    }
   } else {
    if(i12<0.9995321035385132){
     s0+=16791.0;
     s1+=195.0;
    } else {
     s0+=8099.0;
     s1+=2337.0;
    }
   }
  } else {
   if(i35<1.116865873336792){
    if(i38<0.0007423961069434881){
     s0+=3775.0;
     s1+=56.0;
    } else {
     s0+=5541.0;
     s1+=2632.0;
    }
   } else {
    if(i40<1.1703872680664062){
     s0+=427.0;
     s1+=241.0;
    } else {
     s0+=4.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i53<0.032573457807302475){
   if(i72<0.026919245719909668){
    if(i40<1.123556137084961){
     s0+=2.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i19<0.0036624115891754627){
     s0+=180.0;
     s1+=12.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i18<0.00014007155550643802){
    if(i6<1.0013478994369507){
     s0+=71.0;
     s1+=6.0;
    } else {
     s0+=18.0;
     s1+=39.0;
    }
   } else {
    if(i29<0.0018908828496932983){
     s0+=31.0;
    } else {
     s0+=69.0;
     s1+=1385.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007048240513540804){
  if(i8<1.0162882804870605){
   if(i5<1.5020370483398438e-05){
    s0+=48.0;
   } else {
    if(i52<-6.286137704591965e-06){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=210.0;
     s1+=3995.0;
    }
   }
  } else {
   if(i18<0.00041156899533234537){
    s1+=10730.0;
   } else {
    if(i48<7.414817810058594e-05){
     s0+=7.0;
     s1+=1762.0;
    } else {
     s0+=9.0;
    }
   }
  }
 } else {
  s0+=1794.0;
 }
}
if(i2<1.003868579864502){
 if(i36<0.19989347457885742){
  if(i60<0.00406709685921669){
   if(i38<0.0007207046146504581){
    if(i26<1.0817922353744507){
     s0+=15995.0;
     s1+=306.0;
    } else {
     s0+=62201.0;
     s1+=185.0;
    }
   } else {
    if(i4<-0.00012931227684020996){
     s0+=20962.0;
     s1+=288.0;
    } else {
     s0+=9034.0;
     s1+=3630.0;
    }
   }
  } else {
   if(i30<-0.0003231610171496868){
    if(i39<1.0008280277252197){
     s0+=259.0;
     s1+=72.0;
    } else {
     s0+=184.0;
     s1+=678.0;
    }
   } else {
    if(i1<1.0907649993896484e-05){
     s0+=3236.0;
     s1+=366.0;
    } else {
     s0+=177.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i37<0.002272974932566285){
   if(i37<0.0019491849234327674){
    s0+=72.0;
   } else {
    if(i66<0.04649282991886139){
     s0+=10.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i7<0.007026552222669125){
    if(i37<0.004092220216989517){
     s0+=7.0;
     s1+=39.0;
    } else {
     s0+=131.0;
     s1+=20.0;
    }
   } else {
    s1+=967.0;
   }
  }
 }
} else {
 if(i7<0.004144440405070782){
  if(i18<0.00020621053408831358){
   if(i5<2.0802021026611328e-05){
    if(i24<0.0007513999007642269){
     s1+=4.0;
    } else {
     s0+=44.0;
    }
   } else {
    if(i1<0.0005127191543579102){
     s0+=12.0;
     s1+=992.0;
    } else {
     s0+=20.0;
     s1+=17.0;
    }
   }
  } else {
   if(i37<0.008976408280432224){
    if(i59<0.0014490692410618067){
     s0+=3820.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=33.0;
   }
  }
 } else {
  if(i28<0.001326918601989746){
   if(i33<-0.0018271207809448242){
    if(i19<0.004233046434819698){
     s0+=58.0;
    } else {
     s0+=40.0;
     s1+=461.0;
    }
   } else {
    if(i30<-0.0003365676966495812){
     s0+=14.0;
     s1+=12457.0;
    } else {
     s0+=136.0;
     s1+=2934.0;
    }
   }
  } else {
   if(i24<0.005320436786860228){
    s0+=146.0;
   } else {
    s1+=635.0;
   }
  }
 }
}
if(i2<1.0038504600524902){
 if(i46<0.011742531321942806){
  if(i9<1.0162639617919922){
   if(i51<0.020070992410182953){
    if(i26<1.1162974834442139){
     s0+=25904.0;
     s1+=1800.0;
    } else {
     s0+=57231.0;
     s1+=290.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=3556.0;
     s1+=1244.0;
    } else {
     s0+=23590.0;
     s1+=1259.0;
    }
   }
  } else {
   if(i28<-2.5510787963867188e-05){
    if(i19<0.0026517128571867943){
     s0+=402.0;
    } else {
     s0+=5.0;
     s1+=17.0;
    }
   } else {
    if(i58<1.0036125183105469){
     s0+=241.0;
     s1+=759.0;
    } else {
     s0+=344.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i35<1.084606409072876){
   if(i38<0.0030541422311216593){
    if(i17<0.1487521529197693){
     s0+=719.0;
     s1+=14.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i59<0.014510676264762878){
     s1+=33.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i19<0.0021504464093595743){
    s0+=207.0;
   } else {
    if(i7<0.009177599102258682){
     s0+=30.0;
     s1+=20.0;
    } else {
     s0+=26.0;
     s1+=1111.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019506709650158882){
  if(i54<0.0010179548989981413){
   if(i31<1.0548467636108398){
    s0+=641.0;
   } else {
    if(i1<3.820657730102539e-05){
     s0+=108.0;
     s1+=3.0;
    } else {
     s0+=39.0;
     s1+=2553.0;
    }
   }
  } else {
   if(i60<0.003484288463369012){
    if(i31<1.0941085815429688){
     s1+=28.0;
    } else {
     s0+=3351.0;
     s1+=2.0;
    }
   } else {
    if(i37<0.000804769282694906){
     s1+=38.0;
    } else {
     s0+=18.0;
    }
   }
  }
 } else {
  if(i40<1.0782527923583984){
   if(i26<1.5410876274108887){
    s1+=24.0;
   } else {
    s0+=32.0;
   }
  } else {
   if(i14<0.8975281715393066){
    if(i47<0.00029442968661896884){
     s0+=3.0;
     s1+=149.0;
    } else {
     s0+=27.0;
     s1+=43.0;
    }
   } else {
    if(i57<0.9974424839019775){
     s0+=11.0;
    } else {
     s0+=126.0;
     s1+=14772.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i15<0.20090630650520325){
  if(i16<1.0090672969818115){
   if(i12<0.9996243715286255){
    if(i53<0.5570666790008545){
     s0+=55577.0;
     s1+=421.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i61<0.0001843918435042724){
     s0+=44507.0;
     s1+=1619.0;
    } else {
     s0+=8080.0;
     s1+=1874.0;
    }
   }
  } else {
   if(i41<1.0869145393371582){
    if(i38<0.00121474324259907){
     s1+=401.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i4<0.000311434268951416){
     s0+=1119.0;
     s1+=82.0;
    } else {
     s0+=339.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i66<0.04503730684518814){
   if(i12<1.0018248558044434){
    if(i22<0.556204617023468){
     s0+=151.0;
     s1+=5.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i7<0.003951570950448513){
     s0+=14.0;
    } else {
     s1+=48.0;
    }
   }
  } else {
   if(i56<-2.313535333087202e-06){
    if(i25<1.1085319519042969){
     s0+=19.0;
     s1+=21.0;
    } else {
     s0+=11.0;
     s1+=677.0;
    }
   } else {
    s0+=76.0;
   }
  }
 }
} else {
 if(i43<0.018284542486071587){
  if(i10<1.0144834518432617){
   if(i26<1.116804838180542){
    if(i41<1.0482103824615479){
     s0+=1308.0;
    } else {
     s0+=2.0;
     s1+=1338.0;
    }
   } else {
    if(i37<0.0023182749282568693){
     s0+=3075.0;
     s1+=1.0;
    } else {
     s0+=320.0;
     s1+=136.0;
    }
   }
  } else {
   if(i19<0.0012345905415713787){
    if(i58<1.0031094551086426){
     s1+=150.0;
    } else {
     s0+=61.0;
    }
   } else {
    if(i50<-0.00014708578237332404){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=1500.0;
    }
   }
  }
 } else {
  if(i1<4.112720489501953e-06){
   if(i57<1.0027344226837158){
    if(i25<1.1715928316116333){
     s0+=1029.0;
     s1+=150.0;
    } else {
     s1+=132.0;
    }
   } else {
    if(i67<-0.007214218378067017){
     s0+=9.0;
    } else {
     s1+=84.0;
    }
   }
  } else {
   if(i23<1.0193489789962769){
    if(i24<0.0027741233352571726){
     s0+=428.0;
     s1+=592.0;
    } else {
     s0+=374.0;
     s1+=3660.0;
    }
   } else {
    if(i65<1.5186008567980025e-05){
     s0+=136.0;
     s1+=11124.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i23<1.0215246677398682){
  if(i4<0.0003033280372619629){
   if(i31<1.0905578136444092){
    if(i19<0.0016345460899174213){
     s0+=23055.0;
     s1+=601.0;
    } else {
     s0+=1111.0;
     s1+=1326.0;
    }
   } else {
    if(i17<0.2409193515777588){
     s0+=78712.0;
     s1+=906.0;
    } else {
     s0+=20.0;
     s1+=108.0;
    }
   }
  } else {
   if(i40<1.1290768384933472){
    if(i7<0.0041457777842879295){
     s0+=5765.0;
     s1+=104.0;
    } else {
     s0+=1465.0;
     s1+=1322.0;
    }
   } else {
    if(i35<1.068318247795105){
     s0+=691.0;
     s1+=205.0;
    } else {
     s0+=188.0;
     s1+=949.0;
    }
   }
  }
 } else {
  if(i38<0.0006518115988001227){
   if(i56<-3.5751802442973712e-06){
    if(i54<0.0017942354315891862){
     s0+=21.0;
    } else {
     s1+=33.0;
    }
   } else {
    s0+=562.0;
   }
  } else {
   if(i1<-8.285045623779297e-06){
    if(i17<0.23843780159950256){
     s0+=381.0;
     s1+=86.0;
    } else {
     s0+=5.0;
     s1+=193.0;
    }
   } else {
    if(i21<0.02057776227593422){
     s0+=77.0;
     s1+=93.0;
    } else {
     s0+=57.0;
     s1+=771.0;
    }
   }
  }
 }
} else {
 if(i37<0.002089636866003275){
  if(i28<0.0005204677581787109){
   if(i34<1.1219847202301025){
    if(i19<0.000638719939161092){
     s0+=58.0;
     s1+=56.0;
    } else {
     s0+=11.0;
     s1+=2710.0;
    }
   } else {
    if(i24<0.002163882367312908){
     s0+=244.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i37<0.0019613064359873533){
    if(i32<0.0020142868161201477){
     s0+=3748.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<0.0001498973142588511){
     s0+=28.0;
    } else {
     s1+=14.0;
    }
   }
  }
 } else {
  if(i22<0.09630748629570007){
   if(i2<1.0065271854400635){
    if(i23<1.0043797492980957){
     s0+=54.0;
     s1+=149.0;
    } else {
     s0+=123.0;
     s1+=14.0;
    }
   } else {
    if(i17<0.10091617703437805){
     s0+=7.0;
     s1+=440.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i41<1.1279253959655762){
    if(i60<0.0015275602927431464){
     s0+=9.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i33<0.0002772808074951172){
     s0+=43.0;
     s1+=1933.0;
    } else {
     s1+=12393.0;
    }
   }
  }
 }
}
if(i10<1.0108401775360107){
 if(i4<0.00043195486068725586){
  if(i64<1.1408815383911133){
   if(i36<0.20620757341384888){
    if(i24<0.0008788029663264751){
     s0+=30150.0;
     s1+=2767.0;
    } else {
     s0+=76427.0;
     s1+=848.0;
    }
   } else {
    if(i46<0.0026614549569785595){
     s0+=51.0;
     s1+=9.0;
    } else {
     s0+=14.0;
     s1+=146.0;
    }
   }
  } else {
   if(i7<0.006482351571321487){
    s0+=203.0;
   } else {
    s1+=218.0;
   }
  }
 } else {
  if(i43<0.02878900058567524){
   if(i29<0.0009928069775924087){
    if(i3<-4.293573147151619e-05){
     s0+=82.0;
     s1+=612.0;
    } else {
     s0+=2070.0;
     s1+=528.0;
    }
   } else {
    if(i2<1.009958028793335){
     s0+=4251.0;
     s1+=139.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i43<0.14851972460746765){
    if(i20<-0.00021022558212280273){
     s0+=1565.0;
     s1+=855.0;
    } else {
     s0+=176.0;
     s1+=1895.0;
    }
   } else {
    if(i7<0.009177599102258682){
     s0+=26.0;
     s1+=6.0;
    } else {
     s0+=52.0;
     s1+=2098.0;
    }
   }
  }
 }
} else {
 if(i10<1.0144003629684448){
  if(i57<0.9998111724853516){
   if(i24<0.009471151046454906){
    s0+=413.0;
   } else {
    s1+=9.0;
   }
  } else {
   if(i31<1.1180615425109863){
    if(i39<1.0034213066101074){
     s1+=878.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i21<0.011823039501905441){
     s0+=777.0;
     s1+=66.0;
    } else {
     s0+=17.0;
     s1+=756.0;
    }
   }
  }
 } else {
  if(i34<1.150090217590332){
   if(i54<0.0009661255753599107){
    s1+=1085.0;
   } else {
    if(i0<0.001202404499053955){
     s0+=3.0;
     s1+=23.0;
    } else {
     s0+=77.0;
    }
   }
  } else {
   s1+=11456.0;
  }
 }
}
if(i47<-3.2899522921070457e-05){
 if(i52<-6.489233328466071e-06){
  s0+=52.0;
 } else {
  if(i0<0.0015528202056884766){
   if(i39<1.00114107131958){
    s0+=1.0;
   } else {
    s1+=89.0;
   }
  } else {
   s1+=7062.0;
  }
 }
} else {
 if(i11<1.0145659446716309){
  if(i3<-8.962053834693506e-05){
   if(i0<-0.00018393993377685547){
    if(i17<0.04527765512466431){
     s0+=568.0;
     s1+=39.0;
    } else {
     s0+=86.0;
     s1+=393.0;
    }
   } else {
    if(i17<0.04509007930755615){
     s0+=218.0;
     s1+=129.0;
    } else {
     s0+=235.0;
     s1+=2605.0;
    }
   }
  } else {
   if(i5<1.6391277313232422e-05){
    if(i12<0.9995322227478027){
     s0+=53455.0;
     s1+=345.0;
    } else {
     s0+=52916.0;
     s1+=3168.0;
    }
   } else {
    if(i21<0.007906589657068253){
     s0+=5992.0;
     s1+=672.0;
    } else {
     s0+=2001.0;
     s1+=2177.0;
    }
   }
  }
 } else {
  if(i7<0.005057003349065781){
   if(i65<-5.907311333430698e-06){
    if(i3<-3.726322029251605e-05){
     s0+=13.0;
     s1+=184.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i7<0.0036870643962174654){
     s0+=674.0;
     s1+=37.0;
    } else {
     s0+=171.0;
     s1+=133.0;
    }
   }
  } else {
   if(i52<-5.838128345203586e-06){
    if(i1<0.00013878941535949707){
     s0+=13.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i57<0.9982767105102539){
     s0+=13.0;
    } else {
     s0+=47.0;
     s1+=7336.0;
    }
   }
  }
 }
}
if(i1<6.431341171264648e-05){
 if(i64<1.113499641418457){
  if(i10<1.0060362815856934){
   if(i25<1.1279923915863037){
    if(i26<1.1162974834442139){
     s0+=30198.0;
     s1+=2931.0;
    } else {
     s0+=78870.0;
     s1+=1289.0;
    }
   } else {
    if(i21<0.035295359790325165){
     s0+=1358.0;
     s1+=185.0;
    } else {
     s0+=110.0;
     s1+=687.0;
    }
   }
  } else {
   if(i46<0.0007283760933205485){
    if(i24<0.0010227818274870515){
     s0+=273.0;
     s1+=754.0;
    } else {
     s0+=314.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.004595739766955376){
     s0+=2029.0;
     s1+=72.0;
    } else {
     s0+=86.0;
     s1+=432.0;
    }
   }
  }
 } else {
  if(i7<0.006336732767522335){
   if(i12<1.000748872756958){
    if(i47<0.00016465876251459122){
     s0+=607.0;
    } else {
     s0+=31.0;
     s1+=4.0;
    }
   } else {
    if(i3<-5.231561226537451e-05){
     s0+=11.0;
     s1+=75.0;
    } else {
     s0+=436.0;
     s1+=39.0;
    }
   }
  } else {
   if(i41<1.1357909440994263){
    s0+=10.0;
   } else {
    if(i33<-0.0038995742797851562){
     s0+=18.0;
     s1+=69.0;
    } else {
     s0+=3.0;
     s1+=1374.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007045901147648692){
  if(i0<0.0010535717010498047){
   if(i28<0.00010418891906738281){
    if(i66<0.13441374897956848){
     s0+=81.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i56<-4.686017200583592e-05){
     s0+=25.0;
    } else {
     s0+=76.0;
     s1+=509.0;
    }
   }
  } else {
   if(i17<0.01768431067466736){
    if(i10<0.9921234250068665){
     s0+=37.0;
     s1+=28.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i2<1.010351538658142){
     s0+=161.0;
     s1+=4798.0;
    } else {
     s1+=11084.0;
    }
   }
  }
 } else {
  if(i14<1.1186745166778564){
   s0+=1735.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i14<1.0166451930999756){
 if(i15<0.19657382369041443){
  if(i1<6.872415542602539e-05){
   if(i38<0.000734373927116394){
    if(i38<0.0005241065518930554){
     s0+=67962.0;
     s1+=115.0;
    } else {
     s0+=12858.0;
     s1+=405.0;
    }
   } else {
    if(i1<-3.0934810638427734e-05){
     s0+=24908.0;
     s1+=773.0;
    } else {
     s0+=7140.0;
     s1+=4142.0;
    }
   }
  } else {
   if(i24<0.002415209775790572){
    if(i18<0.00022851675748825073){
     s0+=36.0;
     s1+=1125.0;
    } else {
     s0+=1177.0;
    }
   } else {
    if(i57<1.000320315361023){
     s0+=61.0;
     s1+=134.0;
    } else {
     s0+=18.0;
     s1+=1558.0;
    }
   }
  }
 } else {
  if(i59<0.0006585827795788646){
   if(i3<-5.6693774240557104e-05){
    if(i26<1.1743842363357544){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=151.0;
    }
   } else {
    if(i64<1.0360840559005737){
     s1+=4.0;
    } else {
     s0+=339.0;
     s1+=9.0;
    }
   }
  } else {
   if(i7<0.003569948486983776){
    if(i20<-1.7821788787841797e-05){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i56<9.565587788529228e-07){
     s0+=5.0;
     s1+=1468.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i3<-6.78177602821961e-05){
  if(i41<1.1413248777389526){
   if(i57<0.9997805953025818){
    s0+=161.0;
   } else {
    if(i54<0.001016997150145471){
     s1+=867.0;
    } else {
     s0+=90.0;
     s1+=177.0;
    }
   }
  } else {
   if(i19<0.001139224972575903){
    if(i3<-0.00010243265569442883){
     s1+=186.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i25<1.0743744373321533){
     s0+=3.0;
     s1+=14.0;
    } else {
     s0+=28.0;
     s1+=11891.0;
    }
   }
  }
 } else {
  if(i41<1.090468406677246){
   if(i16<0.9882158041000366){
    s0+=2.0;
   } else {
    if(i28<9.882450103759766e-05){
     s0+=3.0;
    } else {
     s1+=666.0;
    }
   }
  } else {
   if(i34<1.1758689880371094){
    if(i40<1.0815151929855347){
     s0+=26.0;
     s1+=22.0;
    } else {
     s0+=1073.0;
     s1+=36.0;
    }
   } else {
    if(i26<1.2596347332000732){
     s0+=36.0;
     s1+=448.0;
    } else {
     s0+=505.0;
     s1+=162.0;
    }
   }
  }
 }
}
if(i3<-8.7317792349495e-05){
 if(i33<-0.004019051790237427){
  if(i68<-0.012292653322219849){
   if(i25<1.0721580982208252){
    if(i17<0.17350637912750244){
     s0+=565.0;
     s1+=8.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i43<0.11914810538291931){
     s0+=51.0;
     s1+=13.0;
    } else {
     s0+=22.0;
     s1+=48.0;
    }
   }
  } else {
   if(i70<0.04312655329704285){
    if(i74<0.009458749555051327){
     s0+=45.0;
    } else {
     s0+=9.0;
     s1+=55.0;
    }
   } else {
    if(i15<0.10345622897148132){
     s0+=6.0;
     s1+=19.0;
    } else {
     s1+=86.0;
    }
   }
  }
 } else {
  if(i52<-6.515702352771768e-06){
   s0+=317.0;
  } else {
   if(i10<0.9757151007652283){
    if(i15<0.04071816802024841){
     s0+=120.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=63.0;
    }
   } else {
    if(i18<0.0012574056163430214){
     s0+=153.0;
     s1+=15827.0;
    } else {
     s0+=20.0;
    }
   }
  }
 }
} else {
 if(i10<1.007577896118164){
  if(i7<0.003651426872238517){
   if(i32<0.0005656155990436673){
    if(i38<0.000617019017226994){
     s0+=21511.0;
     s1+=144.0;
    } else {
     s0+=3865.0;
     s1+=713.0;
    }
   } else {
    if(i31<1.1759499311447144){
     s0+=50146.0;
     s1+=52.0;
    } else {
     s0+=13268.0;
     s1+=164.0;
    }
   }
  } else {
   if(i8<1.0056724548339844){
    if(i28<2.7477741241455078e-05){
     s0+=14402.0;
     s1+=105.0;
    } else {
     s0+=8048.0;
     s1+=2943.0;
    }
   } else {
    if(i45<1.0002496242523193){
     s0+=852.0;
     s1+=53.0;
    } else {
     s0+=280.0;
     s1+=1202.0;
    }
   }
  }
 } else {
  if(i55<0.0006876991828903556){
   if(i34<1.1197539567947388){
    if(i40<1.1003440618515015){
     s0+=2.0;
     s1+=1746.0;
    } else {
     s0+=7.0;
     s1+=15.0;
    }
   } else {
    if(i65<-6.150029548734892e-06){
     s1+=10.0;
    } else {
     s0+=245.0;
     s1+=19.0;
    }
   }
  } else {
   if(i24<0.0025591226294636726){
    if(i34<1.0958809852600098){
     s1+=84.0;
    } else {
     s0+=2580.0;
     s1+=46.0;
    }
   } else {
    if(i41<1.1672112941741943){
     s0+=139.0;
     s1+=168.0;
    } else {
     s0+=12.0;
     s1+=594.0;
    }
   }
  }
 }
}
if(i12<1.0026321411132812){
 if(i23<1.0217881202697754){
  if(i7<0.003661691676825285){
   if(i7<0.0019699865952134132){
    if(i8<0.9948644042015076){
     s0+=8983.0;
     s1+=170.0;
    } else {
     s0+=58261.0;
     s1+=120.0;
    }
   } else {
    if(i6<0.99797123670578){
     s0+=12888.0;
     s1+=41.0;
    } else {
     s0+=7005.0;
     s1+=723.0;
    }
   }
  } else {
   if(i5<-3.635883331298828e-06){
    if(i21<0.08811405301094055){
     s0+=18652.0;
     s1+=219.0;
    } else {
     s1+=69.0;
    }
   } else {
    if(i33<-0.0016800165176391602){
     s0+=3166.0;
     s1+=476.0;
    } else {
     s0+=978.0;
     s1+=2677.0;
    }
   }
  }
 } else {
  if(i56<-3.1971758289728314e-06){
   if(i7<0.004538174718618393){
    if(i18<0.0002494771615602076){
     s0+=54.0;
     s1+=35.0;
    } else {
     s0+=152.0;
     s1+=1.0;
    }
   } else {
    if(i17<0.08297339081764221){
     s0+=26.0;
     s1+=8.0;
    } else {
     s0+=44.0;
     s1+=1064.0;
    }
   }
  } else {
   if(i42<2.131572000507731e-05){
    s0+=597.0;
   } else {
    if(i57<1.0010108947753906){
     s0+=13.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i41<1.170027494430542){
  if(i11<1.0135152339935303){
   if(i48<8.881092071533203e-06){
    if(i1<1.4722347259521484e-05){
     s0+=330.0;
     s1+=36.0;
    } else {
     s0+=186.0;
     s1+=1048.0;
    }
   } else {
    if(i68<-0.0012421607971191406){
     s0+=223.0;
     s1+=214.0;
    } else {
     s0+=3381.0;
     s1+=176.0;
    }
   }
  } else {
   if(i28<0.0005896091461181641){
    if(i47<0.00010333141835872084){
     s0+=3.0;
     s1+=1793.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i7<0.006838236469775438){
     s0+=752.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=241.0;
    }
   }
  }
 } else {
  if(i2<1.000810146331787){
   if(i21<0.05988352745771408){
    if(i63<-0.00017093494534492493){
     s0+=259.0;
     s1+=164.0;
    } else {
     s0+=376.0;
     s1+=14.0;
    }
   } else {
    if(i43<0.1396775245666504){
     s0+=38.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=99.0;
    }
   }
  } else {
   if(i15<0.041191279888153076){
    if(i72<-0.11919799447059631){
     s0+=21.0;
     s1+=93.0;
    } else {
     s0+=147.0;
     s1+=57.0;
    }
   } else {
    if(i29<0.0025405557826161385){
     s0+=51.0;
    } else {
     s0+=183.0;
     s1+=14509.0;
    }
   }
  }
 }
}
if(i4<0.0005905032157897949){
 if(i23<1.0242856740951538){
  if(i36<0.22509562969207764){
   if(i19<0.0015702839009463787){
    if(i8<0.9950627088546753){
     s0+=13914.0;
     s1+=363.0;
    } else {
     s0+=72078.0;
     s1+=316.0;
    }
   } else {
    if(i2<0.9982811808586121){
     s0+=19023.0;
     s1+=538.0;
    } else {
     s0+=4102.0;
     s1+=3045.0;
    }
   }
  } else {
   if(i51<0.022729933261871338){
    if(i4<0.0003660619258880615){
     s0+=15.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i19<0.0015119955642148852){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i19<0.0015471160877496004){
   if(i58<1.0015528202056885){
    s0+=407.0;
   } else {
    if(i53<0.022052191197872162){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i28<0.00046962499618530273){
    if(i3<-2.1319900042726658e-05){
     s0+=39.0;
     s1+=756.0;
    } else {
     s0+=38.0;
     s1+=18.0;
    }
   } else {
    if(i19<0.004375147633254528){
     s0+=128.0;
    } else {
     s0+=9.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i3<-7.390629616566002e-05){
  if(i17<0.04509007930755615){
   if(i10<0.9764089584350586){
    if(i11<0.9529043436050415){
     s0+=107.0;
     s1+=23.0;
    } else {
     s0+=180.0;
     s1+=4.0;
    }
   } else {
    if(i74<0.027362432330846786){
     s0+=103.0;
     s1+=32.0;
    } else {
     s0+=18.0;
     s1+=154.0;
    }
   }
  } else {
   if(i48<2.6881694793701172e-05){
    if(i57<0.9986443519592285){
     s0+=200.0;
     s1+=11.0;
    } else {
     s0+=190.0;
     s1+=15960.0;
    }
   } else {
    if(i52<-8.207242899516132e-06){
     s0+=154.0;
    } else {
     s1+=69.0;
    }
   }
  }
 } else {
  if(i58<1.0033296346664429){
   if(i37<0.00022561088553629816){
    s0+=1258.0;
   } else {
    if(i24<0.0009700385853648186){
     s1+=1673.0;
    } else {
     s0+=1567.0;
     s1+=884.0;
    }
   }
  } else {
   if(i32<0.005513822194188833){
    if(i25<1.176405668258667){
     s0+=2438.0;
     s1+=91.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i33<-0.002256035804748535){
     s0+=363.0;
     s1+=180.0;
    } else {
     s0+=6.0;
     s1+=128.0;
    }
   }
  }
 }
}
if(i12<1.0026330947875977){
 if(i15<0.22628799080848694){
  if(i10<1.0070655345916748){
   if(i24<0.0008845176198519766){
    if(i4<0.00013893842697143555){
     s0+=28216.0;
     s1+=1488.0;
    } else {
     s0+=3231.0;
     s1+=1680.0;
    }
   } else {
    if(i14<0.8962768316268921){
     s0+=590.0;
     s1+=186.0;
    } else {
     s0+=77206.0;
     s1+=815.0;
    }
   }
  } else {
   if(i41<1.0917414426803589){
    if(i32<0.0001750611700117588){
     s0+=43.0;
    } else {
     s1+=619.0;
    }
   } else {
    if(i30<-0.00042564692557789385){
     s0+=233.0;
     s1+=138.0;
    } else {
     s0+=660.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i64<1.5882365703582764){
   if(i66<0.0849427580833435){
    if(i6<1.0011742115020752){
     s0+=40.0;
     s1+=13.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i38<0.0005609804065898061){
     s0+=8.0;
    } else {
     s0+=4.0;
     s1+=626.0;
    }
   }
  } else {
   if(i50<-3.1060073524713516e-05){
    s1+=7.0;
   } else {
    s0+=36.0;
   }
  }
 }
} else {
 if(i0<0.001272439956665039){
  if(i69<0.10614462941884995){
   if(i19<0.0020161718130111694){
    if(i3<-7.154203194659203e-05){
     s0+=36.0;
     s1+=88.0;
    } else {
     s0+=2740.0;
     s1+=8.0;
    }
   } else {
    if(i32<0.0009618186159059405){
     s0+=48.0;
     s1+=444.0;
    } else {
     s0+=972.0;
     s1+=685.0;
    }
   }
  } else {
   if(i21<0.028039194643497467){
    if(i25<1.0855051279067993){
     s0+=712.0;
     s1+=105.0;
    } else {
     s0+=393.0;
     s1+=382.0;
    }
   } else {
    if(i9<0.8955579996109009){
     s0+=131.0;
     s1+=50.0;
    } else {
     s0+=186.0;
     s1+=2159.0;
    }
   }
  }
 } else {
  if(i3<-7.381655450444669e-05){
   if(i18<0.0007173728663474321){
    if(i5<0.0002593398094177246){
     s0+=49.0;
     s1+=13599.0;
    } else {
     s0+=13.0;
    }
   } else {
    s0+=153.0;
   }
  } else {
   if(i58<1.0032951831817627){
    if(i18<0.0008050465257838368){
     s0+=10.0;
     s1+=1182.0;
    } else {
     s0+=395.0;
    }
   } else {
    if(i24<0.0021501637529581785){
     s0+=323.0;
    } else {
     s0+=10.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i0<0.0009575486183166504){
 if(i22<0.20479726791381836){
  if(i13<1.0165292024612427){
   if(i7<0.0038926508277654648){
    if(i26<1.1162974834442139){
     s0+=27603.0;
     s1+=1005.0;
    } else {
     s0+=62955.0;
     s1+=195.0;
    }
   } else {
    if(i1<-2.5212764739990234e-05){
     s0+=20417.0;
     s1+=756.0;
    } else {
     s0+=1886.0;
     s1+=3506.0;
    }
   }
  } else {
   if(i26<1.1178560256958008){
    if(i5<5.781650543212891e-06){
     s0+=13.0;
    } else {
     s1+=432.0;
    }
   } else {
    if(i10<1.0134327411651611){
     s0+=1055.0;
     s1+=319.0;
    } else {
     s0+=17.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i21<0.03074808046221733){
   if(i3<-6.067214417271316e-05){
    if(i58<1.0078155994415283){
     s0+=1.0;
     s1+=69.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i41<1.1759499311447144){
     s0+=251.0;
     s1+=5.0;
    } else {
     s0+=91.0;
     s1+=47.0;
    }
   }
  } else {
   if(i7<0.00650712801143527){
    if(i0<0.00019341707229614258){
     s0+=54.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=1402.0;
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i26<1.116804838180542){
   if(i48<1.1622905731201172e-05){
    if(i12<1.002280831336975){
     s0+=1.0;
     s1+=35.0;
    } else {
     s1+=2277.0;
    }
   } else {
    if(i12<1.0039587020874023){
     s0+=57.0;
     s1+=8.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   s0+=1941.0;
  }
 } else {
  if(i22<0.0338921844959259){
   if(i42<6.9936604631948285e-06){
    s1+=83.0;
   } else {
    if(i11<0.96651691198349){
     s1+=9.0;
    } else {
     s0+=48.0;
     s1+=5.0;
    }
   }
  } else {
   if(i56<-4.172325134277344e-06){
    if(i61<0.005040495190769434){
     s0+=57.0;
     s1+=14062.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=8.0;
   }
  }
 }
}
if(i19<0.0019696378149092197){
 if(i45<1.007225751876831){
  if(i65<-1.66230856848415e-05){
   s1+=88.0;
  } else {
   if(i33<0.0018963813781738281){
    if(i2<1.0079412460327148){
     s0+=95828.0;
     s1+=1626.0;
    } else {
     s0+=159.0;
     s1+=126.0;
    }
   } else {
    if(i52<-5.276861429592827e-06){
     s0+=2.0;
    } else {
     s1+=292.0;
    }
   }
  }
 } else {
  if(i0<0.0019230246543884277){
   if(i38<0.000523905036970973){
    if(i56<-1.1266954970778897e-05){
     s0+=10.0;
    } else {
     s1+=5.0;
    }
   } else {
    s0+=338.0;
   }
  } else {
   if(i10<1.010973334312439){
    if(i27<1.0090354681015015){
     s0+=4.0;
    } else {
     s1+=77.0;
    }
   } else {
    s1+=812.0;
   }
  }
 }
} else {
 if(i0<-0.00025659799575805664){
  if(i17<0.23402062058448792){
   if(i1<-4.690885543823242e-05){
    if(i50<-3.836028918158263e-05){
     s0+=218.0;
     s1+=106.0;
    } else {
     s0+=14579.0;
     s1+=328.0;
    }
   } else {
    if(i21<0.012832680717110634){
     s0+=1114.0;
     s1+=69.0;
    } else {
     s0+=669.0;
     s1+=586.0;
    }
   }
  } else {
   if(i21<0.03448980301618576){
    if(i42<3.042958996957168e-05){
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=6.0;
    }
   } else {
    if(i26<1.3641953468322754){
     s0+=5.0;
     s1+=17.0;
    } else {
     s1+=242.0;
    }
   }
  }
 } else {
  if(i57<0.9995708465576172){
   if(i34<1.3069695234298706){
    if(i14<0.9874159693717957){
     s1+=6.0;
    } else {
     s0+=2073.0;
    }
   } else {
    s1+=467.0;
   }
  } else {
   if(i3<-7.647648453712463e-05){
    if(i8<0.9406822323799133){
     s0+=191.0;
     s1+=100.0;
    } else {
     s0+=180.0;
     s1+=14709.0;
    }
   } else {
    if(i58<1.003647804260254){
     s0+=715.0;
     s1+=4279.0;
    } else {
     s0+=532.0;
     s1+=270.0;
    }
   }
  }
 }
}
if(i13<1.0165578126907349){
 if(i17<0.21642684936523438){
  if(i27<1.0084692239761353){
   if(i3<-8.67972121341154e-05){
    if(i22<0.040872395038604736){
     s0+=905.0;
     s1+=124.0;
    } else {
     s0+=231.0;
     s1+=1265.0;
    }
   } else {
    if(i12<1.002185583114624){
     s0+=106470.0;
     s1+=3520.0;
    } else {
     s0+=5598.0;
     s1+=1473.0;
    }
   }
  } else {
   if(i7<0.003936316817998886){
    if(i37<0.0009083026088774204){
     s0+=4.0;
     s1+=380.0;
    } else {
     s0+=1169.0;
     s1+=59.0;
    }
   } else {
    if(i21<0.0034335614182054996){
     s0+=53.0;
     s1+=73.0;
    } else {
     s0+=61.0;
     s1+=1692.0;
    }
   }
  }
 } else {
  if(i54<0.002128950087353587){
   if(i7<0.007573467213660479){
    if(i63<0.0006992440903559327){
     s0+=158.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i75<0.31785157322883606){
    if(i50<-9.170661542157177e-06){
     s0+=26.0;
     s1+=1630.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   } else {
    if(i25<1.589578628540039){
     s1+=6.0;
    } else {
     s0+=29.0;
    }
   }
  }
 }
} else {
 if(i50<-1.4462629223999102e-05){
  if(i32<0.00267484481446445){
   if(i31<1.1177868843078613){
    if(i28<0.0007703006267547607){
     s1+=1654.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i8<1.0203853845596313){
     s0+=713.0;
     s1+=119.0;
    } else {
     s0+=29.0;
     s1+=421.0;
    }
   }
  } else {
   if(i41<1.1672112941741943){
    if(i20<-3.5822391510009766e-05){
     s0+=274.0;
     s1+=37.0;
    } else {
     s0+=20.0;
     s1+=358.0;
    }
   } else {
    if(i9<1.024763822555542){
     s0+=79.0;
     s1+=661.0;
    } else {
     s0+=20.0;
     s1+=10722.0;
    }
   }
  }
 } else {
  if(i7<0.0066262115724384785){
   if(i50<-6.910635875101434e-06){
    if(i59<-0.000848837720695883){
     s0+=1.0;
     s1+=19.0;
    } else {
     s0+=168.0;
     s1+=14.0;
    }
   } else {
    s0+=462.0;
   }
  } else {
   if(i57<0.9999655485153198){
    s0+=14.0;
   } else {
    s1+=78.0;
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i22<0.2165270447731018){
  if(i4<0.0003084540367126465){
   if(i57<1.0026110410690308){
    if(i34<1.0903575420379639){
     s0+=26315.0;
     s1+=1985.0;
    } else {
     s0+=77713.0;
     s1+=809.0;
    }
   } else {
    if(i1<-0.00011676549911499023){
     s0+=32.0;
    } else {
     s0+=2.0;
     s1+=48.0;
    }
   }
  } else {
   if(i43<0.016600070521235466){
    if(i7<0.004094069357961416){
     s0+=4742.0;
     s1+=57.0;
    } else {
     s0+=181.0;
     s1+=497.0;
    }
   } else {
    if(i10<0.993399977684021){
     s0+=1028.0;
     s1+=278.0;
    } else {
     s0+=374.0;
     s1+=1281.0;
    }
   }
  }
 } else {
  if(i21<0.03709063678979874){
   if(i75<0.12516003847122192){
    if(i40<1.1040780544281006){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i6<1.0039868354797363){
     s0+=162.0;
     s1+=13.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  } else {
   if(i7<0.0061631156131625175){
    s0+=1.0;
   } else {
    s1+=671.0;
   }
  }
 }
} else {
 if(i22<0.16406342387199402){
  if(i7<0.004014371428638697){
   if(i10<1.0144773721694946){
    if(i18<0.00020528712775558233){
     s0+=181.0;
     s1+=556.0;
    } else {
     s0+=3917.0;
    }
   } else {
    if(i48<1.8715858459472656e-05){
     s0+=1.0;
     s1+=275.0;
    } else {
     s0+=56.0;
    }
   }
  } else {
   if(i0<0.00043314695358276367){
    if(i35<1.1109884977340698){
     s0+=930.0;
     s1+=261.0;
    } else {
     s0+=21.0;
     s1+=164.0;
    }
   } else {
    if(i29<0.0012521467870101333){
     s0+=8.0;
     s1+=1964.0;
    } else {
     s0+=598.0;
     s1+=2348.0;
    }
   }
  }
 } else {
  if(i37<0.001961772795766592){
   if(i24<0.0009859001729637384){
    s1+=20.0;
   } else {
    s0+=262.0;
   }
  } else {
   if(i20<-0.0003826022148132324){
    if(i3<-1.633746433071792e-05){
     s0+=32.0;
     s1+=297.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   } else {
    if(i32<0.0035960478708148003){
     s0+=26.0;
     s1+=880.0;
    } else {
     s0+=8.0;
     s1+=11773.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i14<1.0181578397750854){
  if(i43<0.011364747770130634){
   if(i5<1.1980533599853516e-05){
    if(i64<1.0041792392730713){
     s0+=1139.0;
     s1+=118.0;
    } else {
     s0+=60878.0;
     s1+=306.0;
    }
   } else {
    if(i21<0.008760800585150719){
     s0+=3956.0;
     s1+=122.0;
    } else {
     s0+=99.0;
     s1+=147.0;
    }
   }
  } else {
   if(i31<1.0905578136444092){
    if(i5<-1.7285346984863281e-06){
     s0+=5925.0;
     s1+=507.0;
    } else {
     s0+=410.0;
     s1+=1594.0;
    }
   } else {
    if(i3<-0.00012773873459082097){
     s0+=81.0;
     s1+=265.0;
    } else {
     s0+=37340.0;
     s1+=1490.0;
    }
   }
  }
 } else {
  if(i19<0.0016030152328312397){
   if(i58<1.0016086101531982){
    s0+=468.0;
   } else {
    if(i35<1.0809378623962402){
     s0+=42.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=36.0;
    }
   }
  } else {
   if(i0<-0.0006223917007446289){
    if(i19<0.0044934991747140884){
     s0+=148.0;
     s1+=21.0;
    } else {
     s0+=5.0;
     s1+=62.0;
    }
   } else {
    if(i5<-1.8715858459472656e-05){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=43.0;
     s1+=1038.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012364983558654785){
  if(i7<0.0043841879814863205){
   if(i59<-0.001067922916263342){
    if(i18<0.00022587091370951384){
     s1+=24.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i28<0.0003584623336791992){
     s0+=42.0;
     s1+=52.0;
    } else {
     s0+=3565.0;
     s1+=33.0;
    }
   }
  } else {
   if(i25<1.1144206523895264){
    if(i47<7.73491628933698e-05){
     s0+=109.0;
     s1+=888.0;
    } else {
     s0+=1054.0;
     s1+=494.0;
    }
   } else {
    if(i18<9.518169099465013e-05){
     s0+=49.0;
     s1+=33.0;
    } else {
     s0+=101.0;
     s1+=1909.0;
    }
   }
  }
 } else {
  if(i28<0.0016036629676818848){
   if(i37<0.002293100580573082){
    if(i31<1.1174830198287964){
     s0+=69.0;
     s1+=1965.0;
    } else {
     s0+=539.0;
     s1+=17.0;
    }
   } else {
    if(i8<0.9386835098266602){
     s0+=44.0;
     s1+=96.0;
    } else {
     s0+=34.0;
     s1+=12870.0;
    }
   }
  } else {
   if(i32<0.010285945609211922){
    s0+=494.0;
   } else {
    s1+=92.0;
   }
  }
 }
}
if(i22<0.18904203176498413){
 if(i10<1.0093340873718262){
  if(i7<0.004000568296760321){
   if(i37<0.0006864741444587708){
    if(i38<0.0006156595190986991){
     s0+=24322.0;
     s1+=165.0;
    } else {
     s0+=4131.0;
     s1+=1000.0;
    }
   } else {
    if(i41<1.1320847272872925){
     s0+=49702.0;
     s1+=3.0;
    } else {
     s0+=13705.0;
     s1+=202.0;
    }
   }
  } else {
   if(i45<0.9996217489242554){
    if(i12<1.0026814937591553){
     s0+=14411.0;
     s1+=186.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    if(i1<-2.5093555450439453e-05){
     s0+=5904.0;
     s1+=574.0;
    } else {
     s0+=1304.0;
     s1+=4476.0;
    }
   }
  }
 } else {
  if(i28<0.0007700920104980469){
   if(i12<1.0015637874603271){
    if(i42<8.559716661693528e-06){
     s0+=223.0;
     s1+=12.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i5<1.1146068572998047e-05){
     s0+=70.0;
     s1+=13.0;
    } else {
     s0+=141.0;
     s1+=3849.0;
    }
   }
  } else {
   if(i54<0.001923491363413632){
    if(i16<1.0235177278518677){
     s0+=1567.0;
     s1+=22.0;
    } else {
     s1+=59.0;
    }
   } else {
    if(i2<1.0079290866851807){
     s0+=55.0;
     s1+=3.0;
    } else {
     s1+=469.0;
    }
   }
  }
 }
} else {
 if(i50<-1.4630193618359044e-05){
  if(i7<0.0036473344080150127){
   if(i20<0.0004202723503112793){
    if(i59<0.001019446412101388){
     s0+=128.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    s1+=116.0;
   }
  } else {
   if(i3<-4.502583033172414e-05){
    if(i21<0.006902340799570084){
     s0+=14.0;
     s1+=214.0;
    } else {
     s0+=16.0;
     s1+=12563.0;
    }
   } else {
    if(i38<0.001571205211803317){
     s0+=4.0;
     s1+=179.0;
    } else {
     s0+=55.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i50<-8.792218977760058e-06){
   if(i54<0.0028315638191998005){
    if(i35<1.068976879119873){
     s1+=1.0;
    } else {
     s0+=114.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.0003640106588136405){
     s0+=7.0;
     s1+=95.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i10<0.9553359746932983){
    s1+=1.0;
   } else {
    if(i21<0.04370403289794922){
     s0+=638.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i1<6.514787673950195e-05){
 if(i12<1.0023053884506226){
  if(i9<1.016286849975586){
   if(i7<0.0034020193852484226){
    if(i19<0.00103261589538306){
     s0+=66192.0;
     s1+=180.0;
    } else {
     s0+=17754.0;
     s1+=628.0;
    }
   } else {
    if(i27<0.9955015182495117){
     s0+=18012.0;
     s1+=649.0;
    } else {
     s0+=6160.0;
     s1+=2474.0;
    }
   }
  } else {
   if(i28<9.149312973022461e-05){
    if(i56<-3.046190840905183e-06){
     s0+=32.0;
     s1+=157.0;
    } else {
     s0+=545.0;
     s1+=3.0;
    }
   } else {
    if(i57<1.00125253200531){
     s0+=63.0;
     s1+=588.0;
    } else {
     s0+=132.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i19<0.002121505793184042){
   if(i42<8.752312169235665e-06){
    if(i29<0.002227624412626028){
     s0+=2864.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i42<1.5165060176514089e-05){
     s0+=107.0;
     s1+=201.0;
    } else {
     s0+=285.0;
     s1+=15.0;
    }
   }
  } else {
   if(i15<0.14530551433563232){
    if(i32<0.0011803654488176107){
     s0+=87.0;
     s1+=365.0;
    } else {
     s0+=2097.0;
     s1+=1028.0;
    }
   } else {
    if(i0<-0.00027620792388916016){
     s0+=119.0;
     s1+=169.0;
    } else {
     s0+=78.0;
     s1+=1446.0;
    }
   }
  }
 }
} else {
 if(i29<0.002368235494941473){
  if(i24<0.0009706164710223675){
   if(i31<1.0510683059692383){
    s0+=46.0;
   } else {
    s1+=2335.0;
   }
  } else {
   s0+=1826.0;
  }
 } else {
  if(i23<0.8862806558609009){
   if(i19<0.0055609652772545815){
    if(i5<6.598234176635742e-05){
     s0+=25.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   } else {
    if(i70<0.049909621477127075){
     s1+=98.0;
    } else {
     s0+=7.0;
     s1+=9.0;
    }
   }
  } else {
   if(i17<0.0032147467136383057){
    if(i33<-0.001375436782836914){
     s0+=14.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=22.0;
     s1+=13248.0;
    } else {
     s0+=34.0;
     s1+=674.0;
    }
   }
  }
 }
}
if(i9<1.0170512199401855){
 if(i12<1.002577304840088){
  if(i38<0.0007174089550971985){
   if(i27<0.9985804557800293){
    if(i28<-0.0001195669174194336){
     s0+=17636.0;
     s1+=19.0;
    } else {
     s0+=10476.0;
     s1+=314.0;
    }
   } else {
    if(i46<0.001986355986446142){
     s0+=49915.0;
     s1+=32.0;
    } else {
     s0+=875.0;
     s1+=64.0;
    }
   }
  } else {
   if(i24<0.0009308744920417666){
    if(i53<0.01204650104045868){
     s0+=2538.0;
     s1+=420.0;
    } else {
     s0+=716.0;
     s1+=2428.0;
    }
   } else {
    if(i22<0.20827624201774597){
     s0+=27485.0;
     s1+=781.0;
    } else {
     s0+=75.0;
     s1+=312.0;
    }
   }
  }
 } else {
  if(i29<0.0026064079720526934){
   if(i29<0.0012211434077471495){
    if(i31<1.0609431266784668){
     s0+=733.0;
    } else {
     s0+=4.0;
     s1+=1322.0;
    }
   } else {
    if(i61<0.0002556639665272087){
     s0+=2882.0;
     s1+=49.0;
    } else {
     s0+=136.0;
     s1+=146.0;
    }
   }
  } else {
   if(i25<1.0743656158447266){
    if(i6<1.0131676197052002){
     s0+=1177.0;
     s1+=208.0;
    } else {
     s0+=6.0;
     s1+=224.0;
    }
   } else {
    if(i7<0.0022719029802829027){
     s0+=68.0;
     s1+=11.0;
    } else {
     s0+=349.0;
     s1+=3833.0;
    }
   }
  }
 }
} else {
 if(i12<1.0011084079742432){
  if(i50<-8.390849870920647e-06){
   if(i9<1.031409740447998){
    if(i1<2.619624137878418e-05){
     s0+=35.0;
     s1+=67.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   } else {
    if(i31<1.1505659818649292){
     s0+=1.0;
    } else {
     s1+=190.0;
    }
   }
  } else {
   if(i65<3.4482686714909505e-06){
    s0+=350.0;
   } else {
    if(i12<1.0006482601165771){
     s0+=78.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i7<0.003422941081225872){
   if(i0<0.0019373893737792969){
    if(i41<1.0840215682983398){
     s1+=19.0;
    } else {
     s0+=730.0;
     s1+=24.0;
    }
   } else {
    if(i18<0.0011737765744328499){
     s1+=270.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i20<-0.00023186206817626953){
    if(i19<0.004848060198128223){
     s0+=108.0;
     s1+=23.0;
    } else {
     s0+=3.0;
     s1+=206.0;
    }
   } else {
    if(i28<0.0017116665840148926){
     s0+=70.0;
     s1+=13343.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
}
if(i4<0.0005705952644348145){
 if(i7<0.003994446713477373){
  if(i38<0.0005737071041949093){
   if(i38<0.0004834188730455935){
    if(i29<0.0019039923790842295){
     s0+=59808.0;
     s1+=34.0;
    } else {
     s0+=2002.0;
     s1+=61.0;
    }
   } else {
    if(i56<-7.276945325429551e-06){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=5236.0;
     s1+=85.0;
    }
   }
  } else {
   if(i24<0.0005955233937129378){
    if(i34<1.0547914505004883){
     s0+=2154.0;
     s1+=93.0;
    } else {
     s0+=1098.0;
     s1+=883.0;
    }
   } else {
    if(i1<-7.68899917602539e-06){
     s0+=15273.0;
     s1+=22.0;
    } else {
     s0+=4009.0;
     s1+=81.0;
    }
   }
  }
 } else {
  if(i39<1.0000733137130737){
   if(i7<0.01841399073600769){
    if(i6<0.9968010187149048){
     s0+=12145.0;
     s1+=18.0;
    } else {
     s0+=1418.0;
     s1+=174.0;
    }
   } else {
    if(i35<0.992119312286377){
     s0+=21.0;
    } else {
     s1+=320.0;
    }
   }
  } else {
   if(i24<0.00275210989639163){
    if(i0<-0.000635981559753418){
     s0+=185.0;
     s1+=42.0;
    } else {
     s0+=203.0;
     s1+=2431.0;
    }
   } else {
    if(i70<0.12513411045074463){
     s0+=6025.0;
     s1+=547.0;
    } else {
     s0+=226.0;
     s1+=383.0;
    }
   }
  }
 }
} else {
 if(i3<-7.574736810056493e-05){
  if(i22<0.060711950063705444){
   if(i74<0.027362432330846786){
    if(i38<0.0010577067732810974){
     s0+=4.0;
     s1+=55.0;
    } else {
     s0+=364.0;
     s1+=33.0;
    }
   } else {
    if(i44<0.8919420838356018){
     s0+=85.0;
     s1+=84.0;
    } else {
     s0+=4.0;
     s1+=137.0;
    }
   }
  } else {
   if(i34<1.1445280313491821){
    if(i26<1.1180615425109863){
     s1+=1215.0;
    } else {
     s0+=370.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.0003616135218180716){
     s0+=45.0;
     s1+=14687.0;
    } else {
     s0+=27.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i21<0.015002468600869179){
   if(i34<1.116804838180542){
    if(i26<1.0623862743377686){
     s0+=1372.0;
    } else {
     s0+=336.0;
     s1+=1361.0;
    }
   } else {
    if(i32<0.003912367392331362){
     s0+=3106.0;
     s1+=57.0;
    } else {
     s0+=111.0;
     s1+=73.0;
    }
   }
  } else {
   if(i2<1.0012948513031006){
    if(i19<0.009125489741563797){
     s0+=461.0;
     s1+=80.0;
    } else {
     s0+=17.0;
     s1+=37.0;
    }
   } else {
    if(i7<0.005422012880444527){
     s0+=145.0;
     s1+=50.0;
    } else {
     s0+=110.0;
     s1+=1410.0;
    }
   }
  }
 }
}
if(i25<1.1279573440551758){
 if(i19<0.0017414051108062267){
  if(i47<-2.3944641725393012e-05){
   if(i6<1.0089714527130127){
    if(i32<0.0007354547269642353){
     s1+=8.0;
    } else {
     s0+=67.0;
    }
   } else {
    if(i71<-3.656478384073125e-06){
     s0+=12.0;
    } else {
     s0+=25.0;
     s1+=614.0;
    }
   }
  } else {
   if(i42<-1.1996215107501484e-05){
    if(i23<1.0066890716552734){
     s0+=8.0;
     s1+=43.0;
    } else {
     s0+=55.0;
     s1+=6.0;
    }
   } else {
    if(i26<1.0905578136444092){
     s0+=22230.0;
     s1+=638.0;
    } else {
     s0+=68447.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i33<-0.0013485252857208252){
   if(i4<0.0011407732963562012){
    if(i4<-0.00015312433242797852){
     s0+=10539.0;
     s1+=106.0;
    } else {
     s0+=5387.0;
     s1+=539.0;
    }
   } else {
    if(i59<0.0022631739266216755){
     s0+=230.0;
     s1+=50.0;
    } else {
     s0+=160.0;
     s1+=365.0;
    }
   }
  } else {
   if(i18<0.00035131137701682746){
    if(i4<-0.00012993812561035156){
     s0+=1805.0;
     s1+=53.0;
    } else {
     s0+=579.0;
     s1+=7811.0;
    }
   } else {
    if(i40<1.1375782489776611){
     s0+=4119.0;
     s1+=53.0;
    } else {
     s0+=42.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i4<0.00035518407821655273){
  if(i21<0.0382373072206974){
   if(i50<-8.969040209194645e-06){
    if(i17<0.1618427336215973){
     s0+=332.0;
     s1+=90.0;
    } else {
     s0+=34.0;
     s1+=96.0;
    }
   } else {
    if(i37<0.006564919836819172){
     s0+=1496.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   }
  } else {
   if(i7<0.006234767846763134){
    s0+=32.0;
   } else {
    if(i15<0.005193978548049927){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=459.0;
    }
   }
  }
 } else {
  if(i31<1.176405668258667){
   s0+=477.0;
  } else {
   if(i35<1.04313325881958){
    if(i8<0.9381192326545715){
     s0+=53.0;
     s1+=25.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i2<1.0016790628433228){
     s0+=135.0;
     s1+=551.0;
    } else {
     s0+=74.0;
     s1+=12454.0;
    }
   }
  }
 }
}
if(i20<0.0002085566520690918){
 if(i5<1.7464160919189453e-05){
  if(i19<0.0015456161927431822){
   if(i19<0.001050280872732401){
    if(i73<0.00390547513961792){
     s0+=71936.0;
     s1+=201.0;
    } else {
     s0+=518.0;
     s1+=21.0;
    }
   } else {
    if(i32<0.0002763856900855899){
     s0+=1288.0;
     s1+=317.0;
    } else {
     s0+=11087.0;
     s1+=92.0;
    }
   }
  } else {
   if(i0<-0.00048023462295532227){
    if(i7<0.019129255786538124){
     s0+=19555.0;
     s1+=698.0;
    } else {
     s0+=81.0;
     s1+=156.0;
    }
   } else {
    if(i7<0.004917904734611511){
     s0+=2730.0;
     s1+=1123.0;
    } else {
     s0+=290.0;
     s1+=1576.0;
    }
   }
  }
 } else {
  if(i19<0.0020850617438554764){
   if(i14<1.0262017250061035){
    if(i42<-8.900664397515357e-06){
     s0+=97.0;
     s1+=115.0;
    } else {
     s0+=4564.0;
     s1+=135.0;
    }
   } else {
    if(i52<-3.4536433304310776e-06){
     s0+=15.0;
    } else {
     s0+=3.0;
     s1+=69.0;
    }
   }
  } else {
   if(i22<0.05756998062133789){
    if(i1<6.252527236938477e-05){
     s0+=1890.0;
     s1+=351.0;
    } else {
     s0+=118.0;
     s1+=204.0;
    }
   } else {
    if(i7<0.004424341954290867){
     s0+=506.0;
     s1+=31.0;
    } else {
     s0+=779.0;
     s1+=6025.0;
    }
   }
  }
 }
} else {
 if(i39<1.0008947849273682){
  if(i37<0.012134583666920662){
   if(i46<0.0002251282858196646){
    if(i9<1.011439561843872){
     s0+=21.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=491.0;
   }
  } else {
   s1+=322.0;
  }
 } else {
  if(i7<0.003210701048374176){
   if(i52<-4.472991349757649e-06){
    if(i37<0.0028402539901435375){
     s0+=280.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i2<1.008314609527588){
     s0+=165.0;
     s1+=21.0;
    } else {
     s1+=511.0;
    }
   }
  } else {
   if(i7<0.004715584218502045){
    if(i28<0.0013255476951599121){
     s0+=36.0;
     s1+=567.0;
    } else {
     s0+=56.0;
     s1+=8.0;
    }
   } else {
    if(i33<0.0007751584053039551){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=11804.0;
    }
   }
  }
 }
}
if(i11<1.0135858058929443){
 if(i12<1.0026252269744873){
  if(i62<0.0071748364716768265){
   if(i38<0.0007055175956338644){
    if(i34<1.0776758193969727){
     s0+=21123.0;
     s1+=289.0;
    } else {
     s0+=56843.0;
     s1+=137.0;
    }
   } else {
    if(i24<0.0009308744920417666){
     s0+=3388.0;
     s1+=3061.0;
    } else {
     s0+=27766.0;
     s1+=824.0;
    }
   }
  } else {
   if(i38<0.0019856910221278667){
    if(i12<1.0016789436340332){
     s0+=361.0;
     s1+=28.0;
    } else {
     s0+=11.0;
     s1+=75.0;
    }
   } else {
    if(i16<0.9189661741256714){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i41<1.170027494430542){
   if(i31<1.1174830198287964){
    if(i20<0.00014573335647583008){
     s0+=791.0;
     s1+=180.0;
    } else {
     s0+=28.0;
     s1+=830.0;
    }
   } else {
    if(i55<0.003036573063582182){
     s0+=3262.0;
     s1+=333.0;
    } else {
     s0+=73.0;
     s1+=249.0;
    }
   }
  } else {
   if(i20<-0.0004324018955230713){
    if(i36<0.08350244164466858){
     s0+=741.0;
     s1+=294.0;
    } else {
     s0+=84.0;
     s1+=333.0;
    }
   } else {
    if(i29<0.002600870095193386){
     s0+=55.0;
    } else {
     s0+=192.0;
     s1+=2985.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007050560088828206){
  if(i20<0.00016248226165771484){
   if(i5<8.761882781982422e-06){
    if(i6<0.9988338947296143){
     s0+=185.0;
     s1+=16.0;
    } else {
     s0+=42.0;
     s1+=97.0;
    }
   } else {
    if(i21<0.02955978363752365){
     s0+=268.0;
     s1+=460.0;
    } else {
     s0+=52.0;
     s1+=1837.0;
    }
   }
  } else {
   if(i5<1.2218952178955078e-05){
    if(i24<0.002626957604661584){
     s0+=75.0;
    } else {
     s1+=103.0;
    }
   } else {
    if(i10<1.0085411071777344){
     s0+=3.0;
     s1+=29.0;
    } else {
     s0+=8.0;
     s1+=12424.0;
    }
   }
  }
 } else {
  s0+=587.0;
 }
}
if(i3<-0.00011746818199753761){
 if(i23<0.881976842880249){
  if(i60<0.024975745007395744){
   if(i25<1.1335084438323975){
    if(i17<0.09023669362068176){
     s0+=230.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   } else {
    if(i17<0.007145941257476807){
     s0+=11.0;
     s1+=2.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i21<0.06408624351024628){
    if(i43<0.059534572064876556){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i61<0.004757547285407782){
     s0+=2.0;
     s1+=95.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<0.0007059713825583458){
   if(i22<0.009542852640151978){
    if(i72<-0.08350113034248352){
     s0+=4.0;
     s1+=26.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i4<-0.0008392333984375){
     s0+=13.0;
     s1+=3.0;
    } else {
     s0+=86.0;
     s1+=13676.0;
    }
   }
  } else {
   s0+=98.0;
  }
 }
} else {
 if(i8<1.0139553546905518){
  if(i0<0.0011889934539794922){
   if(i19<0.001728216651827097){
    if(i8<0.9959509372711182){
     s0+=17501.0;
     s1+=591.0;
    } else {
     s0+=74345.0;
     s1+=418.0;
    }
   } else {
    if(i24<0.0009248446440324187){
     s0+=2383.0;
     s1+=2942.0;
    } else {
     s0+=19910.0;
     s1+=1952.0;
    }
   }
  } else {
   if(i57<0.9998145699501038){
    s0+=300.0;
   } else {
    if(i37<0.0011545303277671337){
     s1+=736.0;
    } else {
     s0+=375.0;
     s1+=645.0;
    }
   }
  }
 } else {
  if(i34<1.117074966430664){
   if(i18<0.00036723550874739885){
    s1+=1514.0;
   } else {
    s0+=76.0;
   }
  } else {
   if(i37<0.0020799804478883743){
    s0+=758.0;
   } else {
    if(i2<1.0026326179504395){
     s0+=379.0;
     s1+=130.0;
    } else {
     s0+=95.0;
     s1+=1394.0;
    }
   }
  }
 }
}
if(i10<1.0126163959503174){
 if(i22<0.20120075345039368){
  if(i45<1.0029187202453613){
   if(i35<1.1210689544677734){
    if(i11<1.009399652481079){
     s0+=102568.0;
     s1+=3345.0;
    } else {
     s0+=1613.0;
     s1+=730.0;
    }
   } else {
    if(i51<0.03398340940475464){
     s0+=1097.0;
     s1+=64.0;
    } else {
     s0+=270.0;
     s1+=229.0;
    }
   }
  } else {
   if(i21<0.0559634268283844){
    if(i26<1.116804838180542){
     s0+=737.0;
     s1+=1226.0;
    } else {
     s0+=9186.0;
     s1+=1674.0;
    }
   } else {
    if(i47<0.0003434235113672912){
     s0+=38.0;
     s1+=803.0;
    } else {
     s0+=212.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i32<0.0027201781049370766){
   if(i21<0.01803426444530487){
    if(i76<0.0011494755744934082){
     s1+=1.0;
    } else {
     s0+=277.0;
     s1+=6.0;
    }
   } else {
    if(i41<1.1290714740753174){
     s0+=8.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i19<0.002138072159141302){
    if(i31<1.2015575170516968){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=79.0;
     s1+=2.0;
    }
   } else {
    if(i0<-0.000577390193939209){
     s0+=69.0;
     s1+=227.0;
    } else {
     s0+=16.0;
     s1+=2588.0;
    }
   }
  }
 }
} else {
 if(i40<1.1263957023620605){
  if(i48<1.9252300262451172e-05){
   if(i55<0.0009422365110367537){
    if(i5<1.0639429092407227e-05){
     s0+=20.0;
    } else {
     s0+=14.0;
     s1+=1700.0;
    }
   } else {
    if(i7<0.003726034890860319){
     s0+=84.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=196.0;
    }
   }
  } else {
   if(i61<0.00010763092723209411){
    if(i55<0.00048215483548119664){
     s1+=2.0;
    } else {
     s0+=253.0;
    }
   } else {
    s1+=10.0;
   }
  }
 } else {
  if(i56<-3.4575364225020166e-06){
   if(i37<0.0026905150152742863){
    if(i1<4.8279762268066406e-05){
     s0+=9.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i15<0.06992405652999878){
     s0+=6.0;
     s1+=138.0;
    } else {
     s1+=11155.0;
    }
   }
  } else {
   s0+=22.0;
  }
 }
}
if(i33<0.001414954662322998){
 if(i64<1.1169339418411255){
  if(i0<0.0009620785713195801){
   if(i11<1.0133508443832397){
    if(i5<2.4378299713134766e-05){
     s0+=108975.0;
     s1+=4346.0;
    } else {
     s0+=3804.0;
     s1+=1321.0;
    }
   } else {
    if(i47<1.483597770857159e-05){
     s0+=324.0;
     s1+=113.0;
    } else {
     s0+=266.0;
     s1+=626.0;
    }
   }
  } else {
   if(i53<0.04361855238676071){
    if(i18<0.00024965021293610334){
     s0+=16.0;
     s1+=512.0;
    } else {
     s0+=1118.0;
     s1+=54.0;
    }
   } else {
    if(i36<0.02107807993888855){
     s0+=55.0;
     s1+=100.0;
    } else {
     s0+=68.0;
     s1+=1487.0;
    }
   }
  }
 } else {
  if(i0<0.0001894831657409668){
   if(i51<0.04498874396085739){
    if(i3<-7.533677853643894e-05){
     s0+=4.0;
     s1+=21.0;
    } else {
     s0+=607.0;
     s1+=36.0;
    }
   } else {
    if(i47<7.526912668254226e-05){
     s0+=120.0;
     s1+=34.0;
    } else {
     s0+=71.0;
     s1+=449.0;
    }
   }
  } else {
   if(i46<0.002175569534301758){
    if(i8<1.0198862552642822){
     s0+=206.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   } else {
    if(i19<0.000990564120002091){
     s0+=20.0;
    } else {
     s0+=14.0;
     s1+=1957.0;
    }
   }
  }
 }
} else {
 if(i29<0.0026138685643672943){
  if(i34<1.116863489151001){
   if(i54<0.0011567027540877461){
    if(i18<0.00038703292375430465){
     s1+=1851.0;
    } else {
     s0+=22.0;
    }
   } else {
    if(i34<1.0940955877304077){
     s1+=21.0;
    } else {
     s0+=167.0;
    }
   }
  } else {
   if(i37<0.0022231400944292545){
    s0+=667.0;
   } else {
    if(i7<0.0037571201100945473){
     s0+=13.0;
    } else {
     s1+=15.0;
    }
   }
  }
 } else {
  if(i50<-1.6164787666639313e-05){
   s1+=11224.0;
  } else {
   s0+=67.0;
  }
 }
}
if(i1<6.574392318725586e-05){
 if(i7<0.007089757826179266){
  if(i19<0.0015701447846367955){
   if(i54<0.001965872012078762){
    if(i19<0.0011606926564127207){
     s0+=74418.0;
     s1+=237.0;
    } else {
     s0+=9442.0;
     s1+=377.0;
    }
   } else {
    if(i4<0.00042366981506347656){
     s0+=3649.0;
     s1+=128.0;
    } else {
     s0+=30.0;
     s1+=62.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i38<0.001217013574205339){
     s0+=1060.0;
     s1+=2588.0;
    } else {
     s0+=1980.0;
    }
   } else {
    if(i1<6.735324859619141e-06){
     s0+=16509.0;
     s1+=254.0;
    } else {
     s0+=1054.0;
     s1+=499.0;
    }
   }
  }
 } else {
  if(i15<0.05763396620750427){
   if(i42<1.9998913558083586e-05){
    if(i48<-6.884336471557617e-06){
     s0+=3.0;
    } else {
     s0+=4.0;
     s1+=245.0;
    }
   } else {
    if(i74<0.04016164690256119){
     s0+=4698.0;
     s1+=96.0;
    } else {
     s0+=116.0;
     s1+=135.0;
    }
   }
  } else {
   if(i4<-4.929304122924805e-05){
    if(i7<0.014807485044002533){
     s0+=983.0;
     s1+=84.0;
    } else {
     s0+=1.0;
     s1+=190.0;
    }
   } else {
    if(i33<-0.0045261383056640625){
     s0+=301.0;
     s1+=186.0;
    } else {
     s0+=187.0;
     s1+=3080.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007056489121168852){
  if(i52<-6.286137704591965e-06){
   if(i45<1.0153939723968506){
    s0+=84.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i0<0.0013386011123657227){
    if(i65<-7.653085049241781e-06){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=162.0;
     s1+=1593.0;
    }
   } else {
    if(i8<0.9351710677146912){
     s0+=20.0;
     s1+=64.0;
    } else {
     s0+=31.0;
     s1+=14664.0;
    }
   }
  }
 } else {
  s0+=1613.0;
 }
}
if(i4<0.0005698800086975098){
 if(i7<0.0037409914657473564){
  if(i37<0.0006928443908691406){
   if(i16<0.9967246651649475){
    if(i38<0.0006529816891998053){
     s0+=4615.0;
     s1+=151.0;
    } else {
     s0+=591.0;
     s1+=538.0;
    }
   } else {
    if(i51<0.01847086474299431){
     s0+=21367.0;
     s1+=162.0;
    } else {
     s0+=147.0;
     s1+=62.0;
    }
   }
  } else {
   if(i32<0.0018044363241642714){
    if(i31<1.0907573699951172){
     s0+=756.0;
     s1+=1.0;
    } else {
     s0+=47984.0;
    }
   } else {
    if(i27<1.000216007232666){
     s0+=11372.0;
     s1+=88.0;
    } else {
     s0+=871.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i4<-5.97834587097168e-05){
   if(i54<0.03628614544868469){
    if(i15<0.24225261807441711){
     s0+=18700.0;
     s1+=257.0;
    } else {
     s0+=23.0;
     s1+=55.0;
    }
   } else {
    if(i67<-0.01309657096862793){
     s0+=27.0;
    } else {
     s1+=135.0;
    }
   }
  } else {
   if(i2<0.9979350566864014){
    if(i21<0.051551803946495056){
     s0+=2223.0;
     s1+=171.0;
    } else {
     s0+=43.0;
     s1+=134.0;
    }
   } else {
    if(i26<1.056135654449463){
     s0+=401.0;
    } else {
     s0+=702.0;
     s1+=3189.0;
    }
   }
  }
 }
} else {
 if(i3<-6.78907017572783e-05){
  if(i33<-0.004073381423950195){
   if(i25<1.0526535511016846){
    if(i2<1.003218412399292){
     s0+=226.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i23<0.8750507831573486){
     s0+=59.0;
     s1+=14.0;
    } else {
     s0+=30.0;
     s1+=82.0;
    }
   }
  } else {
   if(i2<1.0083634853363037){
    if(i52<-5.414576207840582e-06){
     s0+=356.0;
     s1+=2.0;
    } else {
     s0+=493.0;
     s1+=3964.0;
    }
   } else {
    if(i56<-6.904528709128499e-05){
     s0+=17.0;
    } else {
     s0+=40.0;
     s1+=12287.0;
    }
   }
  }
 } else {
  if(i18<0.0002994188107550144){
   if(i31<1.116804838180542){
    s1+=1612.0;
   } else {
    if(i47<8.984831220004708e-05){
     s0+=238.0;
     s1+=580.0;
    } else {
     s0+=455.0;
     s1+=184.0;
    }
   }
  } else {
   if(i21<0.024629104882478714){
    if(i29<0.00638181995600462){
     s0+=4611.0;
     s1+=10.0;
    } else {
     s0+=96.0;
     s1+=38.0;
    }
   } else {
    if(i22<0.11448502540588379){
     s0+=236.0;
     s1+=82.0;
    } else {
     s0+=12.0;
     s1+=221.0;
    }
   }
  }
 }
}
if(i11<1.0136241912841797){
 if(i2<1.0035377740859985){
  if(i7<0.014876292087137699){
   if(i24<0.0008847030694596469){
    if(i22<0.058839380741119385){
     s0+=30105.0;
     s1+=1781.0;
    } else {
     s0+=1332.0;
     s1+=1367.0;
    }
   } else {
    if(i22<0.21845218539237976){
     s0+=78498.0;
     s1+=1231.0;
    } else {
     s0+=147.0;
     s1+=204.0;
    }
   }
  } else {
   if(i44<0.9093277454376221){
    if(i16<0.9429137706756592){
     s0+=694.0;
     s1+=113.0;
    } else {
     s0+=63.0;
     s1+=242.0;
    }
   } else {
    if(i63<5.6827033404260874e-05){
     s0+=36.0;
     s1+=741.0;
    } else {
     s0+=67.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i7<0.003985816612839699){
   if(i33<0.0011919736862182617){
    if(i68<-0.0008310079574584961){
     s0+=115.0;
     s1+=34.0;
    } else {
     s0+=3036.0;
     s1+=6.0;
    }
   } else {
    if(i24<0.001085407566279173){
     s1+=254.0;
    } else {
     s0+=594.0;
     s1+=32.0;
    }
   }
  } else {
   if(i6<1.0089060068130493){
    if(i29<0.0011334961745887995){
     s1+=699.0;
    } else {
     s0+=353.0;
     s1+=1074.0;
    }
   } else {
    if(i16<0.9566068649291992){
     s0+=31.0;
     s1+=113.0;
    } else {
     s0+=23.0;
     s1+=1898.0;
    }
   }
  }
 }
} else {
 if(i19<0.0013815650017932057){
  if(i42<-1.574786801938899e-05){
   if(i18<0.0009573855204507709){
    s1+=512.0;
   } else {
    s0+=18.0;
   }
  } else {
   if(i59<0.001050896244123578){
    if(i33<0.0006362795829772949){
     s0+=121.0;
     s1+=12.0;
    } else {
     s0+=481.0;
    }
   } else {
    if(i6<0.9972081184387207){
     s0+=18.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i3<-3.2796662708278745e-05){
   if(i8<1.0187253952026367){
    if(i34<1.1757044792175293){
     s0+=309.0;
     s1+=804.0;
    } else {
     s0+=36.0;
     s1+=1163.0;
    }
   } else {
    if(i5<0.0002943873405456543){
     s0+=41.0;
     s1+=12148.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i39<1.0035171508789062){
    if(i18<0.00032740054302848876){
     s0+=18.0;
     s1+=111.0;
    } else {
     s0+=25.0;
    }
   } else {
    s0+=138.0;
   }
  }
 }
}
if(i1<6.312131881713867e-05){
 if(i3<-7.645870209671557e-05){
  if(i63<-0.0007739918073639274){
   if(i68<-0.013062089681625366){
    if(i46<0.007315890863537788){
     s0+=66.0;
     s1+=2.0;
    } else {
     s0+=6.0;
     s1+=49.0;
    }
   } else {
    if(i21<0.01729659177362919){
     s0+=67.0;
     s1+=79.0;
    } else {
     s0+=78.0;
     s1+=1988.0;
    }
   }
  } else {
   if(i25<1.0830392837524414){
    if(i2<1.0031561851501465){
     s0+=1166.0;
     s1+=59.0;
    } else {
     s0+=12.0;
     s1+=27.0;
    }
   } else {
    if(i21<0.04780019074678421){
     s0+=185.0;
     s1+=93.0;
    } else {
     s0+=26.0;
     s1+=179.0;
    }
   }
  }
 } else {
  if(i4<0.00029343366622924805){
   if(i19<0.0014031396713107824){
    if(i37<0.0002936194068752229){
     s0+=17540.0;
     s1+=325.0;
    } else {
     s0+=61945.0;
     s1+=149.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2140.0;
     s1+=1739.0;
    } else {
     s0+=21323.0;
     s1+=431.0;
    }
   }
  } else {
   if(i21<0.009082813747227192){
    if(i10<1.005921483039856){
     s0+=6050.0;
     s1+=76.0;
    } else {
     s0+=1777.0;
     s1+=251.0;
    }
   } else {
    if(i19<0.003959735855460167){
     s0+=1095.0;
     s1+=2119.0;
    } else {
     s0+=998.0;
     s1+=279.0;
    }
   }
  }
 }
} else {
 if(i54<0.0018576339352875948){
  if(i48<1.2576580047607422e-05){
   if(i71<1.8495139784135972e-06){
    if(i54<0.001059852889738977){
     s0+=34.0;
     s1+=2429.0;
    } else {
     s0+=286.0;
     s1+=621.0;
    }
   } else {
    s0+=93.0;
   }
  } else {
   if(i26<1.1843671798706055){
    if(i29<0.0011097644455730915){
     s0+=49.0;
     s1+=16.0;
    } else {
     s0+=1509.0;
    }
   } else {
    if(i1<7.838010787963867e-05){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=772.0;
    }
   }
  }
 } else {
  if(i52<-7.573920811410062e-06){
   s0+=45.0;
  } else {
   if(i8<0.9392907619476318){
    if(i18<0.00013892914284951985){
     s0+=31.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=125.0;
    }
   } else {
    if(i29<0.001972522120922804){
     s0+=38.0;
    } else {
     s0+=93.0;
     s1+=12371.0;
    }
   }
  }
 }
}
if(i6<1.004465103149414){
 if(i9<1.015249490737915){
  if(i38<0.0007271842332556844){
   if(i50<-1.6289430277538486e-05){
    if(i40<1.112748622894287){
     s0+=191.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=62.0;
    }
   } else {
    if(i35<1.0178465843200684){
     s0+=9664.0;
     s1+=237.0;
    } else {
     s0+=69895.0;
     s1+=216.0;
    }
   }
  } else {
   if(i5<4.112720489501953e-06){
    if(i37<0.00033887854078784585){
     s0+=222.0;
     s1+=586.0;
    } else {
     s0+=24102.0;
     s1+=830.0;
    }
   } else {
    if(i34<1.0500211715698242){
     s0+=2251.0;
     s1+=1.0;
    } else {
     s0+=4489.0;
     s1+=3337.0;
    }
   }
  }
 } else {
  if(i19<0.0016015409491956234){
   if(i56<-4.0106115193339065e-06){
    if(i40<1.1267756223678589){
     s0+=55.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   } else {
    if(i65<4.9280497478321195e-06){
     s0+=599.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i18<0.001005415921099484){
    if(i0<-0.00041478872299194336){
     s0+=307.0;
     s1+=114.0;
    } else {
     s0+=87.0;
     s1+=2358.0;
    }
   } else {
    s0+=101.0;
   }
  }
 }
} else {
 if(i30<-0.00027981476159766316){
  if(i25<1.0380234718322754){
   if(i31<1.3785405158996582){
    s1+=2.0;
   } else {
    if(i17<0.07078585028648376){
     s0+=39.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i52<-6.286137704591965e-06){
    s0+=78.0;
   } else {
    if(i7<0.0043731676414608955){
     s0+=151.0;
     s1+=184.0;
    } else {
     s0+=90.0;
     s1+=12578.0;
    }
   }
  }
 } else {
  if(i6<1.010777473449707){
   if(i18<0.0002299625484738499){
    if(i2<1.0043036937713623){
     s0+=346.0;
     s1+=191.0;
    } else {
     s0+=45.0;
     s1+=1140.0;
    }
   } else {
    if(i43<0.033450402319431305){
     s0+=3324.0;
     s1+=24.0;
    } else {
     s0+=305.0;
     s1+=233.0;
    }
   }
  } else {
   if(i28<0.0016530156135559082){
    if(i2<1.0061981678009033){
     s0+=68.0;
     s1+=87.0;
    } else {
     s0+=59.0;
     s1+=2097.0;
    }
   } else {
    s0+=22.0;
   }
  }
 }
}
if(i3<-9.671068983152509e-05){
 if(i22<0.04147660732269287){
  if(i10<0.9786338806152344){
   if(i57<1.002519965171814){
    if(i25<1.266815423965454){
     s0+=643.0;
     s1+=25.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i56<-2.2293686924967915e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i35<1.064848780632019){
    if(i12<1.0053248405456543){
     s0+=48.0;
     s1+=12.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i31<1.1610324382781982){
     s0+=7.0;
    } else {
     s0+=4.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i37<0.0024464386515319347){
   if(i55<0.0007043667137622833){
    if(i5<7.992982864379883e-05){
     s0+=6.0;
     s1+=607.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i26<1.1180615425109863){
     s1+=50.0;
    } else {
     s0+=220.0;
    }
   }
  } else {
   if(i68<-0.017986059188842773){
    if(i46<0.011701375246047974){
     s0+=31.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i11<0.9189382195472717){
     s0+=28.0;
     s1+=79.0;
    } else {
     s0+=28.0;
     s1+=14796.0;
    }
   }
  }
 }
} else {
 if(i16<1.0097999572753906){
  if(i0<0.0011503100395202637){
   if(i15<0.20648562908172607){
    if(i4<0.000292360782623291){
     s0+=102206.0;
     s1+=2576.0;
    } else {
     s0+=9402.0;
     s1+=2045.0;
    }
   } else {
    if(i21<0.03057181090116501){
     s0+=198.0;
     s1+=54.0;
    } else {
     s0+=47.0;
     s1+=356.0;
    }
   }
  } else {
   if(i28<0.001636505126953125){
    if(i26<1.629280686378479){
     s0+=123.0;
     s1+=774.0;
    } else {
     s0+=42.0;
    }
   } else {
    s0+=55.0;
   }
  }
 } else {
  if(i37<0.0011275367578491569){
   if(i56<-4.364536835055333e-06){
    s1+=1609.0;
   } else {
    s0+=82.0;
   }
  } else {
   if(i49<1.0359807014465332){
    if(i7<0.006389646325260401){
     s0+=2913.0;
     s1+=71.0;
    } else {
     s0+=29.0;
     s1+=521.0;
    }
   } else {
    if(i7<0.005042487755417824){
     s0+=226.0;
     s1+=24.0;
    } else {
     s1+=766.0;
    }
   }
  }
 }
}
if(i5<2.771615982055664e-05){
 if(i9<1.0171293020248413){
  if(i7<0.003559643169865012){
   if(i61<0.0001667531323619187){
    if(i0<-0.0001716017723083496){
     s0+=22505.0;
     s1+=270.0;
    } else {
     s0+=49147.0;
     s1+=34.0;
    }
   } else {
    if(i6<0.9977270364761353){
     s0+=9486.0;
     s1+=62.0;
    } else {
     s0+=5853.0;
     s1+=632.0;
    }
   }
  } else {
   if(i31<1.1161681413650513){
    if(i34<1.054672360420227){
     s0+=2851.0;
     s1+=32.0;
    } else {
     s0+=1259.0;
     s1+=2426.0;
    }
   } else {
    if(i2<0.9996044039726257){
     s0+=18657.0;
     s1+=625.0;
    } else {
     s0+=780.0;
     s1+=903.0;
    }
   }
  }
 } else {
  if(i38<0.0006524677155539393){
   if(i24<0.0027477750554680824){
    if(i2<1.0002357959747314){
     s0+=302.0;
    } else {
     s0+=136.0;
     s1+=9.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i21<0.027646105736494064){
    if(i26<1.2596347332000732){
     s0+=73.0;
     s1+=370.0;
    } else {
     s0+=176.0;
     s1+=36.0;
    }
   } else {
    if(i33<-0.0018100440502166748){
     s0+=50.0;
     s1+=73.0;
    } else {
     s0+=3.0;
     s1+=871.0;
    }
   }
  }
 }
} else {
 if(i21<0.007702631410211325){
  if(i1<8.445978164672852e-05){
   if(i48<9.119510650634766e-06){
    if(i13<1.0112311840057373){
     s0+=328.0;
     s1+=67.0;
    } else {
     s0+=32.0;
     s1+=127.0;
    }
   } else {
    if(i13<1.0361411571502686){
     s0+=2283.0;
     s1+=35.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=1237.0;
   } else {
    if(i29<0.002556554740294814){
     s0+=925.0;
    } else {
     s0+=3.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i11<1.015289306640625){
   if(i0<5.537271499633789e-05){
    if(i55<0.007812246680259705){
     s0+=595.0;
     s1+=122.0;
    } else {
     s0+=34.0;
     s1+=119.0;
    }
   } else {
    if(i53<0.05723673105239868){
     s0+=496.0;
     s1+=749.0;
    } else {
     s0+=327.0;
     s1+=3049.0;
    }
   }
  } else {
   if(i1<-5.781650543212891e-06){
    if(i34<1.236745834350586){
     s0+=39.0;
     s1+=4.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i20<-0.0002435445785522461){
     s0+=40.0;
     s1+=100.0;
    } else {
     s0+=56.0;
     s1+=11962.0;
    }
   }
  }
 }
}
if(i2<1.0038518905639648){
 if(i19<0.0017343938816338778){
  if(i8<0.995084285736084){
   if(i41<1.0742852687835693){
    if(i3<-6.3773422880331054e-06){
     s0+=184.0;
     s1+=440.0;
    } else {
     s0+=3981.0;
     s1+=39.0;
    }
   } else {
    if(i4<0.0004412531852722168){
     s0+=10598.0;
     s1+=47.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i54<0.0021293829195201397){
    if(i32<0.00029504686244763434){
     s0+=19475.0;
     s1+=308.0;
    } else {
     s0+=54661.0;
     s1+=71.0;
    }
   } else {
    if(i41<1.1489096879959106){
     s0+=434.0;
     s1+=129.0;
    } else {
     s0+=531.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<-3.260374069213867e-05){
   if(i64<1.1230299472808838){
    if(i38<0.00308998953551054){
     s0+=17421.0;
     s1+=598.0;
    } else {
     s0+=229.0;
     s1+=180.0;
    }
   } else {
    if(i41<1.1863822937011719){
     s0+=73.0;
     s1+=3.0;
    } else {
     s1+=159.0;
    }
   }
  } else {
   if(i39<1.0000191926956177){
    if(i31<1.3225460052490234){
     s0+=2134.0;
     s1+=74.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i7<0.003679279237985611){
     s0+=962.0;
     s1+=78.0;
    } else {
     s0+=1388.0;
     s1+=4397.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007037961622700095){
  if(i38<0.00043649051804095507){
   if(i65<-5.659034286509268e-06){
    if(i0<0.0018900632858276367){
     s0+=48.0;
     s1+=1.0;
    } else {
     s1+=704.0;
    }
   } else {
    if(i1<9.173154830932617e-05){
     s0+=1069.0;
    } else {
     s0+=7.0;
     s1+=12.0;
    }
   }
  } else {
   if(i0<0.0008987784385681152){
    if(i51<0.026366010308265686){
     s0+=407.0;
     s1+=314.0;
    } else {
     s0+=37.0;
     s1+=810.0;
    }
   } else {
    if(i19<0.0018656537868082523){
     s0+=96.0;
     s1+=737.0;
    } else {
     s0+=115.0;
     s1+=15139.0;
    }
   }
  }
 } else {
  if(i36<0.416053831577301){
   s0+=2616.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i11<1.0135858058929443){
 if(i3<-8.455804345430806e-05){
  if(i8<0.9388452172279358){
   if(i30<-0.000609799986705184){
    if(i13<0.8682245016098022){
     s0+=22.0;
     s1+=3.0;
    } else {
     s0+=25.0;
     s1+=82.0;
    }
   } else {
    if(i7<0.02213778905570507){
     s0+=695.0;
     s1+=52.0;
    } else {
     s0+=56.0;
     s1+=77.0;
    }
   }
  } else {
   if(i57<0.9982810020446777){
    s0+=229.0;
   } else {
    if(i48<5.549192428588867e-05){
     s0+=213.0;
     s1+=3408.0;
    } else {
     s0+=64.0;
    }
   }
  }
 } else {
  if(i1<9.185075759887695e-05){
   if(i19<0.0017192027298733592){
    if(i7<0.0016254762886092067){
     s0+=60535.0;
     s1+=193.0;
    } else {
     s0+=30852.0;
     s1+=788.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2632.0;
     s1+=2926.0;
    } else {
     s0+=19706.0;
     s1+=1435.0;
    }
   }
  } else {
   if(i48<2.5451183319091797e-05){
    if(i61<4.580498716677539e-05){
     s0+=122.0;
     s1+=62.0;
    } else {
     s0+=58.0;
     s1+=632.0;
    }
   } else {
    if(i12<1.0094337463378906){
     s0+=220.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i41<1.1704325675964355){
  if(i18<0.0003149809781461954){
   if(i26<1.3276445865631104){
    if(i7<0.0014015409396961331){
     s0+=78.0;
     s1+=56.0;
    } else {
     s0+=38.0;
     s1+=2320.0;
    }
   } else {
    if(i3<-7.35381618142128e-05){
     s0+=4.0;
     s1+=109.0;
    } else {
     s0+=164.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.041782110929489136){
    if(i68<0.006838440895080566){
     s0+=724.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i75<0.1004621684551239){
     s0+=1.0;
     s1+=70.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i5<1.1712312698364258e-05){
   if(i3<-7.392912812065333e-05){
    if(i13<1.0214141607284546){
     s0+=8.0;
     s1+=10.0;
    } else {
     s1+=170.0;
    }
   } else {
    if(i7<0.005300791934132576){
     s0+=149.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i20<-0.0004216134548187256){
    if(i56<-1.7659420336713083e-05){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i17<0.08166009187698364){
     s0+=20.0;
     s1+=92.0;
    } else {
     s0+=16.0;
     s1+=11652.0;
    }
   }
  }
 }
}
if(i9<1.0177369117736816){
 if(i19<0.0018177535384893417){
  if(i1<0.00010877847671508789){
   if(i35<1.0179111957550049){
    if(i38<0.0006278289947658777){
     s0+=9153.0;
     s1+=97.0;
    } else {
     s0+=1603.0;
     s1+=383.0;
    }
   } else {
    if(i61<0.00018073638784699142){
     s0+=71690.0;
     s1+=304.0;
    } else {
     s0+=10556.0;
     s1+=311.0;
    }
   }
  } else {
   if(i68<0.0002948641777038574){
    if(i52<-6.2240305851446465e-06){
     s0+=22.0;
    } else {
     s0+=1.0;
     s1+=414.0;
    }
   } else {
    if(i29<0.001121685141697526){
     s1+=52.0;
    } else {
     s0+=94.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i25<1.1300668716430664){
   if(i18<0.00025374413235113025){
    if(i0<-0.00025597214698791504){
     s0+=4977.0;
     s1+=528.0;
    } else {
     s0+=648.0;
     s1+=4002.0;
    }
   } else {
    if(i45<1.0104260444641113){
     s0+=15659.0;
     s1+=973.0;
    } else {
     s0+=270.0;
     s1+=435.0;
    }
   }
  } else {
   if(i3<-4.216716843075119e-05){
    if(i37<0.0018832783680409193){
     s0+=31.0;
    } else {
     s0+=132.0;
     s1+=2588.0;
    }
   } else {
    if(i65<3.918309175787726e-06){
     s0+=80.0;
     s1+=186.0;
    } else {
     s0+=200.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i7<0.005058640614151955){
  if(i0<0.0019019842147827148){
   if(i56<-1.0215354450338054e-05){
    if(i27<1.0156561136245728){
     s0+=676.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i0<0.00034749507904052734){
     s0+=481.0;
     s1+=32.0;
    } else {
     s0+=73.0;
     s1+=222.0;
    }
   }
  } else {
   if(i28<0.001522362232208252){
    s1+=559.0;
   } else {
    if(i29<0.014362921006977558){
     s0+=20.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i52<-7.951259249239229e-06){
   s0+=14.0;
  } else {
   if(i47<0.00040311957127414644){
    if(i1<-6.112456321716309e-05){
     s0+=15.0;
     s1+=26.0;
    } else {
     s0+=44.0;
     s1+=13268.0;
    }
   } else {
    s0+=12.0;
   }
  }
 }
}
if(i3<-8.012790203792974e-05){
 if(i33<-0.0036847591400146484){
  if(i19<0.006127934902906418){
   if(i15<0.11497202515602112){
    if(i74<0.054429762065410614){
     s0+=593.0;
    } else {
     s0+=16.0;
     s1+=17.0;
    }
   } else {
    s1+=15.0;
   }
  } else {
   if(i70<0.095743328332901){
    if(i64<1.006178855895996){
     s0+=372.0;
     s1+=102.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   } else {
    if(i10<0.9515926241874695){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=126.0;
    }
   }
  }
 } else {
  if(i57<0.998320460319519){
   if(i21<0.0998242199420929){
    s0+=315.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i35<1.022539734840393){
    if(i0<0.0021117329597473145){
     s0+=154.0;
     s1+=45.0;
    } else {
     s1+=66.0;
    }
   } else {
    if(i26<1.1743842363357544){
     s0+=158.0;
     s1+=1112.0;
    } else {
     s0+=143.0;
     s1+=15245.0;
    }
   }
  }
 }
} else {
 if(i1<6.35981559753418e-05){
  if(i28<0.00010031461715698242){
   if(i15<0.23061108589172363){
    if(i41<1.0838289260864258){
     s0+=28802.0;
     s1+=921.0;
    } else {
     s0+=52583.0;
     s1+=136.0;
    }
   } else {
    if(i50<-8.955548764788546e-06){
     s1+=45.0;
    } else {
     s0+=72.0;
    }
   }
  } else {
   if(i37<0.0010451034177094698){
    if(i19<0.0013736066175624728){
     s0+=3482.0;
     s1+=20.0;
    } else {
     s0+=2033.0;
     s1+=2548.0;
    }
   } else {
    if(i14<1.020948886871338){
     s0+=25647.0;
     s1+=1395.0;
    } else {
     s0+=382.0;
     s1+=610.0;
    }
   }
  }
 } else {
  if(i21<0.014307783916592598){
   if(i29<0.0012069451622664928){
    if(i29<0.00024184146604966372){
     s0+=70.0;
    } else {
     s0+=2.0;
     s1+=1078.0;
    }
   } else {
    if(i29<0.0027417014352977276){
     s0+=1504.0;
    } else {
     s0+=2.0;
     s1+=110.0;
    }
   }
  } else {
   if(i7<0.0060705807991325855){
    s0+=24.0;
   } else {
    if(i22<0.09328830242156982){
     s0+=31.0;
     s1+=141.0;
    } else {
     s0+=6.0;
     s1+=640.0;
    }
   }
  }
 }
}
if(i2<1.0038650035858154){
 if(i19<0.0017366200918331742){
  if(i37<0.0003140197368338704){
   if(i59<0.00033188643283210695){
    if(i20<-5.251169204711914e-05){
     s0+=2008.0;
     s1+=248.0;
    } else {
     s0+=14934.0;
     s1+=66.0;
    }
   } else {
    if(i31<1.0547292232513428){
     s0+=921.0;
    } else {
     s0+=494.0;
     s1+=360.0;
    }
   }
  } else {
   if(i19<0.0012612686259672046){
    if(i50<-1.6875865185284056e-05){
     s0+=85.0;
     s1+=27.0;
    } else {
     s0+=61338.0;
     s1+=123.0;
    }
   } else {
    if(i16<1.0095939636230469){
     s0+=9647.0;
     s1+=181.0;
    } else {
     s0+=149.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i25<1.1403480768203735){
   if(i27<0.9954289197921753){
    if(i15<0.2003646194934845){
     s0+=16501.0;
     s1+=640.0;
    } else {
     s0+=53.0;
     s1+=146.0;
    }
   } else {
    if(i57<0.9995691776275635){
     s0+=3086.0;
     s1+=18.0;
    } else {
     s0+=2550.0;
     s1+=3311.0;
    }
   }
  } else {
   if(i35<1.0679681301116943){
    if(i21<0.06121581047773361){
     s0+=110.0;
     s1+=8.0;
    } else {
     s0+=15.0;
     s1+=36.0;
    }
   } else {
    if(i46<0.006228753365576267){
     s0+=90.0;
     s1+=163.0;
    } else {
     s0+=43.0;
     s1+=1374.0;
    }
   }
  }
 }
} else {
 if(i3<-7.335442205658183e-05){
  if(i34<1.1430405378341675){
   if(i48<1.1652708053588867e-05){
    if(i26<1.1180615425109863){
     s1+=1240.0;
    } else {
     s0+=113.0;
    }
   } else {
    if(i29<0.0009848122717812657){
     s1+=1.0;
    } else {
     s0+=274.0;
    }
   }
  } else {
   if(i8<0.9365849494934082){
    if(i25<1.0729016065597534){
     s0+=16.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=32.0;
    }
   } else {
    if(i41<1.127323031425476){
     s0+=8.0;
     s1+=12.0;
    } else {
     s0+=40.0;
     s1+=14267.0;
    }
   }
  }
 } else {
  if(i28<0.0006282925605773926){
   if(i56<-5.701230293198023e-06){
    if(i18<0.0005535541567951441){
     s0+=101.0;
     s1+=1928.0;
    } else {
     s0+=89.0;
    }
   } else {
    if(i54<0.0007251988281495869){
     s1+=5.0;
    } else {
     s0+=243.0;
    }
   }
  } else {
   if(i21<0.02740984410047531){
    if(i6<1.0118920803070068){
     s0+=3373.0;
     s1+=24.0;
    } else {
     s0+=2.0;
     s1+=34.0;
    }
   } else {
    if(i40<1.088139533996582){
     s0+=8.0;
    } else {
     s0+=9.0;
     s1+=260.0;
    }
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i19<0.0018378433305770159){
  if(i19<0.001399998553097248){
   if(i40<1.0233154296875){
    if(i61<0.00014566147001460195){
     s0+=2474.0;
     s1+=4.0;
    } else {
     s0+=1206.0;
     s1+=118.0;
    }
   } else {
    if(i59<0.0009073795517906547){
     s0+=74739.0;
     s1+=225.0;
    } else {
     s0+=5572.0;
     s1+=107.0;
    }
   }
  } else {
   if(i14<1.0270246267318726){
    if(i2<0.9983112812042236){
     s0+=5920.0;
     s1+=65.0;
    } else {
     s0+=2713.0;
     s1+=623.0;
    }
   } else {
    s1+=48.0;
   }
  }
 } else {
  if(i6<0.9979159832000732){
   if(i3<-8.960551349446177e-05){
    if(i68<-0.010996371507644653){
     s0+=138.0;
     s1+=13.0;
    } else {
     s0+=15.0;
     s1+=243.0;
    }
   } else {
    if(i61<-0.00021108366490807384){
     s0+=3.0;
     s1+=24.0;
    } else {
     s0+=13063.0;
     s1+=310.0;
    }
   }
  } else {
   if(i7<0.00399657292291522){
    if(i28<0.0002613067626953125){
     s0+=1051.0;
     s1+=157.0;
    } else {
     s0+=2841.0;
     s1+=2.0;
    }
   } else {
    if(i33<-0.002265363931655884){
     s0+=3345.0;
     s1+=968.0;
    } else {
     s0+=1124.0;
     s1+=4929.0;
    }
   }
  }
 }
} else {
 if(i11<1.0185929536819458){
  if(i48<1.901388168334961e-05){
   if(i18<0.0007050354033708572){
    if(i19<0.0005696368752978742){
     s0+=66.0;
     s1+=33.0;
    } else {
     s0+=201.0;
     s1+=4154.0;
    }
   } else {
    s0+=800.0;
   }
  } else {
   if(i67<-0.000686347484588623){
    if(i51<0.01661524549126625){
     s0+=9.0;
     s1+=1.0;
    } else {
     s1+=225.0;
    }
   } else {
    if(i45<1.011025309562683){
     s0+=1038.0;
    } else {
     s1+=28.0;
    }
   }
  }
 } else {
  if(i71<6.1022528825560585e-06){
   if(i18<0.0008211674867197871){
    if(i3<-8.821726078167558e-05){
     s0+=1.0;
     s1+=11560.0;
    } else {
     s0+=11.0;
     s1+=624.0;
    }
   } else {
    s0+=56.0;
   }
  } else {
   s0+=13.0;
  }
 }
}
if(i0<0.0009575486183166504){
 if(i7<0.007507449947297573){
  if(i21<0.006637009792029858){
   if(i19<0.0009801782434806228){
    if(i61<0.00018063599418383092){
     s0+=55292.0;
     s1+=64.0;
    } else {
     s0+=1932.0;
     s1+=79.0;
    }
   } else {
    if(i34<1.0912797451019287){
     s0+=4347.0;
     s1+=430.0;
    } else {
     s0+=8626.0;
     s1+=45.0;
    }
   }
  } else {
   if(i0<-0.00046956539154052734){
    if(i57<1.0026838779449463){
     s0+=33475.0;
     s1+=406.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i19<0.001393010257743299){
     s0+=3712.0;
     s1+=163.0;
    } else {
     s0+=1688.0;
     s1+=3039.0;
    }
   }
  }
 } else {
  if(i35<1.0529714822769165){
   if(i0<-0.00012356042861938477){
    if(i21<0.0599193200469017){
     s0+=4348.0;
     s1+=128.0;
    } else {
     s0+=132.0;
     s1+=68.0;
    }
   } else {
    if(i33<-0.0018519163131713867){
     s0+=251.0;
     s1+=125.0;
    } else {
     s0+=4.0;
     s1+=238.0;
    }
   }
  } else {
   if(i64<1.0990242958068848){
    if(i1<-4.89354133605957e-05){
     s0+=528.0;
     s1+=175.0;
    } else {
     s0+=162.0;
     s1+=1445.0;
    }
   } else {
    if(i63<1.7621612641960382e-05){
     s0+=13.0;
     s1+=1539.0;
    } else {
     s0+=16.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007052693981677294){
  if(i50<-0.0001821671612560749){
   s0+=25.0;
  } else {
   if(i0<0.0011720657348632812){
    if(i63<-0.000631456496194005){
     s0+=34.0;
     s1+=709.0;
    } else {
     s0+=147.0;
     s1+=265.0;
    }
   } else {
    if(i16<0.9548604488372803){
     s0+=32.0;
     s1+=94.0;
    } else {
     s0+=79.0;
     s1+=15221.0;
    }
   }
  }
 } else {
  s0+=1745.0;
 }
}
if(i1<6.35981559753418e-05){
 if(i22<0.20757997035980225){
  if(i13<1.0166716575622559){
   if(i5<1.5079975128173828e-05){
    if(i68<-0.0006468892097473145){
     s0+=24080.0;
     s1+=1531.0;
    } else {
     s0+=81652.0;
     s1+=1518.0;
    }
   } else {
    if(i21<0.009154793806374073){
     s0+=5592.0;
     s1+=236.0;
    } else {
     s0+=1992.0;
     s1+=1956.0;
    }
   }
  } else {
   if(i7<0.005096016451716423){
    if(i34<1.0905578136444092){
     s0+=6.0;
     s1+=24.0;
    } else {
     s0+=963.0;
     s1+=106.0;
    }
   } else {
    if(i10<1.0003660917282104){
     s0+=65.0;
     s1+=30.0;
    } else {
     s0+=37.0;
     s1+=749.0;
    }
   }
  }
 } else {
  if(i53<0.037943560630083084){
   if(i4<0.00027292966842651367){
    if(i59<0.0009495600825175643){
     s0+=133.0;
     s1+=5.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i37<0.002673309063538909){
     s0+=26.0;
    } else {
     s0+=4.0;
     s1+=69.0;
    }
   }
  } else {
   if(i3<-1.8710778022068553e-05){
    if(i50<-8.166929546860047e-06){
     s0+=15.0;
     s1+=1352.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i7<0.007914727553725243){
     s0+=110.0;
     s1+=6.0;
    } else {
     s1+=49.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i25<1.0773653984069824){
   if(i48<1.3053417205810547e-05){
    if(i48<-3.916025161743164e-05){
     s0+=12.0;
    } else {
     s0+=56.0;
     s1+=1958.0;
    }
   } else {
    if(i42<-1.3956292605143972e-05){
     s0+=14.0;
     s1+=17.0;
    } else {
     s0+=168.0;
     s1+=1.0;
    }
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=331.0;
   } else {
    s0+=1871.0;
   }
  }
 } else {
  if(i27<1.004737377166748){
   if(i15<0.09830796718597412){
    if(i38<0.0014903417322784662){
     s0+=84.0;
     s1+=38.0;
    } else {
     s0+=11.0;
     s1+=82.0;
    }
   } else {
    if(i13<0.9043731093406677){
     s0+=7.0;
     s1+=8.0;
    } else {
     s0+=15.0;
     s1+=1455.0;
    }
   }
  } else {
   if(i44<0.8255437016487122){
    if(i54<0.02067972719669342){
     s0+=4.0;
     s1+=2.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i26<1.629280686378479){
     s0+=6.0;
     s1+=11793.0;
    } else {
     s0+=9.0;
     s1+=572.0;
    }
   }
  }
 }
}
if(i8<1.0154454708099365){
 if(i4<0.0005145668983459473){
  if(i24<0.0008800200885161757){
   if(i19<0.0016117937630042434){
    if(i33<-0.0003681778907775879){
     s0+=9271.0;
     s1+=518.0;
    } else {
     s0+=19006.0;
     s1+=66.0;
    }
   } else {
    if(i21<0.008784609846770763){
     s0+=1348.0;
     s1+=278.0;
    } else {
     s0+=569.0;
     s1+=2000.0;
    }
   }
  } else {
   if(i14<1.0228967666625977){
    if(i54<0.001851686043664813){
     s0+=64631.0;
     s1+=114.0;
    } else {
     s0+=13468.0;
     s1+=1038.0;
    }
   } else {
    if(i40<1.1220200061798096){
     s0+=60.0;
    } else {
     s0+=14.0;
     s1+=171.0;
    }
   }
  }
 } else {
  if(i21<0.015342719852924347){
   if(i35<1.0632693767547607){
    if(i18<0.00024297609343193471){
     s0+=389.0;
     s1+=1503.0;
    } else {
     s0+=2509.0;
     s1+=29.0;
    }
   } else {
    if(i2<1.0103585720062256){
     s0+=3113.0;
     s1+=127.0;
    } else {
     s1+=103.0;
    }
   }
  } else {
   if(i1<2.6226043701171875e-06){
    if(i62<0.0037622149102389812){
     s0+=632.0;
     s1+=194.0;
    } else {
     s0+=65.0;
     s1+=194.0;
    }
   } else {
    if(i7<0.006533948238939047){
     s0+=158.0;
     s1+=197.0;
    } else {
     s0+=261.0;
     s1+=3792.0;
    }
   }
  }
 }
} else {
 if(i1<1.6182661056518555e-05){
  if(i21<0.02762436680495739){
   if(i21<0.02398524433374405){
    s0+=329.0;
   } else {
    if(i7<0.005545067600905895){
     s0+=34.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i41<1.1749842166900635){
    if(i57<1.0019233226776123){
     s1+=7.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i26<1.6811659336090088){
     s0+=10.0;
     s1+=220.0;
    } else {
     s0+=14.0;
    }
   }
  }
 } else {
  if(i8<1.0187242031097412){
   if(i18<0.0006537088192999363){
    if(i7<0.004104141145944595){
     s0+=51.0;
     s1+=173.0;
    } else {
     s0+=1.0;
     s1+=827.0;
    }
   } else {
    if(i37<0.012762616388499737){
     s0+=310.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i50<-1.0379867489973549e-05){
    if(i40<1.1342540979385376){
     s0+=99.0;
     s1+=1793.0;
    } else {
     s1+=11120.0;
    }
   } else {
    s0+=24.0;
   }
  }
 }
}
if(i11<1.0135858058929443){
 if(i2<1.0035289525985718){
  if(i7<0.014882569201290607){
   if(i19<0.0017322666244581342){
    if(i3<-6.433377711800858e-05){
     s0+=135.0;
     s1+=50.0;
    } else {
     s0+=88905.0;
     s1+=935.0;
    }
   } else {
    if(i47<0.00010795709386002272){
     s0+=6904.0;
     s1+=2788.0;
    } else {
     s0+=14290.0;
     s1+=712.0;
    }
   }
  } else {
   if(i17<0.0768006443977356){
    if(i35<1.0572068691253662){
     s0+=826.0;
     s1+=71.0;
    } else {
     s0+=20.0;
     s1+=83.0;
    }
   } else {
    if(i9<0.9240202307701111){
     s0+=43.0;
     s1+=168.0;
    } else {
     s0+=7.0;
     s1+=780.0;
    }
   }
  }
 } else {
  if(i21<0.01484580896794796){
   if(i40<1.0773630142211914){
    if(i24<0.00024159211898222566){
     s0+=803.0;
    } else {
     s0+=130.0;
     s1+=1042.0;
    }
   } else {
    if(i6<1.0118008852005005){
     s0+=3108.0;
     s1+=132.0;
    } else {
     s0+=4.0;
     s1+=164.0;
    }
   }
  } else {
   if(i38<0.004063883796334267){
    if(i35<1.0739555358886719){
     s0+=95.0;
     s1+=630.0;
    } else {
     s0+=11.0;
     s1+=2157.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
} else {
 if(i1<2.1010637283325195e-05){
  if(i6<0.9988706707954407){
   if(i47<0.00010571165330475196){
    if(i7<0.0053662448190152645){
     s0+=253.0;
     s1+=6.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i21<0.02506660483777523){
     s0+=5.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   }
  } else {
   if(i17<0.2360634207725525){
    if(i21<0.0293884240090847){
     s0+=115.0;
     s1+=9.0;
    } else {
     s0+=43.0;
     s1+=140.0;
    }
   } else {
    if(i50<-8.769696250965353e-06){
     s0+=2.0;
     s1+=125.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i32<0.0017304322682321072){
   if(i26<1.116804838180542){
    s1+=1668.0;
   } else {
    if(i8<1.0410252809524536){
     s0+=652.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i7<0.003099074587225914){
    if(i50<-4.448521212907508e-05){
     s1+=155.0;
    } else {
     s0+=76.0;
     s1+=27.0;
    }
   } else {
    if(i52<-7.490586085623363e-06){
     s0+=10.0;
    } else {
     s0+=53.0;
     s1+=12441.0;
    }
   }
  }
 }
}
if(i1<6.431341171264648e-05){
 if(i25<1.1402404308319092){
  if(i43<0.014046793803572655){
   if(i38<0.000717166461981833){
    if(i20<-5.3942203521728516e-05){
     s0+=10089.0;
     s1+=260.0;
    } else {
     s0+=52654.0;
     s1+=31.0;
    }
   } else {
    if(i4<1.4662742614746094e-05){
     s0+=9454.0;
     s1+=156.0;
    } else {
     s0+=4243.0;
     s1+=946.0;
    }
   }
  } else {
   if(i4<6.413459777832031e-05){
    if(i34<1.0905578136444092){
     s0+=5695.0;
     s1+=659.0;
    } else {
     s0+=24783.0;
     s1+=423.0;
    }
   } else {
    if(i7<0.0034324992448091507){
     s0+=2839.0;
     s1+=135.0;
    } else {
     s0+=3268.0;
     s1+=3355.0;
    }
   }
  }
 } else {
  if(i7<0.00647768983617425){
   if(i41<1.1426570415496826){
    if(i37<0.0022135116159915924){
     s0+=19.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i24<0.007282444275915623){
     s0+=1035.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i64<1.0052173137664795){
    if(i0<-0.0004999041557312012){
     s0+=81.0;
     s1+=32.0;
    } else {
     s0+=35.0;
     s1+=116.0;
    }
   } else {
    if(i21<0.015072865411639214){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=24.0;
     s1+=1817.0;
    }
   }
  }
 }
} else {
 if(i41<1.1703872680664062){
  if(i26<1.116804838180542){
   if(i21<0.0025110850110650063){
    if(i31<1.0548467636108398){
     s0+=63.0;
    } else {
     s1+=179.0;
    }
   } else {
    s1+=2187.0;
   }
  } else {
   if(i24<0.0023731649853289127){
    s0+=1967.0;
   } else {
    if(i10<0.9921234250068665){
     s0+=7.0;
     s1+=15.0;
    } else {
     s0+=9.0;
     s1+=652.0;
    }
   }
  }
 } else {
  if(i9<0.9150328040122986){
   if(i19<0.00556386960670352){
    if(i3<-0.0001418215106241405){
     s0+=26.0;
    } else {
     s0+=2.0;
     s1+=14.0;
    }
   } else {
    if(i62<0.00047749915393069386){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=120.0;
    }
   }
  } else {
   if(i25<1.07395601272583){
    if(i20<-0.0002600550651550293){
     s0+=44.0;
     s1+=34.0;
    } else {
     s1+=154.0;
    }
   } else {
    if(i20<-0.0007035732269287109){
     s0+=4.0;
     s1+=6.0;
    } else {
     s0+=16.0;
     s1+=13153.0;
    }
   }
  }
 }
}
if(i20<0.00019127130508422852){
 if(i5<2.4378299713134766e-05){
  if(i36<0.1927749514579773){
   if(i23<1.0217927694320679){
    if(i58<1.0003726482391357){
     s0+=58458.0;
     s1+=670.0;
    } else {
     s0+=50382.0;
     s1+=3519.0;
    }
   } else {
    if(i50<-9.487211173109245e-06){
     s0+=249.0;
     s1+=497.0;
    } else {
     s0+=502.0;
     s1+=9.0;
    }
   }
  } else {
   if(i54<0.003477419726550579){
    if(i0<-0.0005498528480529785){
     s0+=105.0;
    } else {
     s0+=67.0;
     s1+=29.0;
    }
   } else {
    if(i47<7.879047916503623e-05){
     s0+=100.0;
     s1+=74.0;
    } else {
     s0+=26.0;
     s1+=549.0;
    }
   }
  }
 } else {
  if(i7<0.004437560215592384){
   if(i0<0.0010887384414672852){
    if(i51<0.05033815652132034){
     s0+=3154.0;
     s1+=45.0;
    } else {
     s0+=11.0;
     s1+=14.0;
    }
   } else {
    if(i54<0.0008020608220249414){
     s1+=109.0;
    } else {
     s0+=708.0;
    }
   }
  } else {
   if(i15<0.05616632103919983){
    if(i56<-1.0224549441772979e-05){
     s0+=839.0;
     s1+=266.0;
    } else {
     s0+=5.0;
     s1+=279.0;
    }
   } else {
    if(i7<0.008029584772884846){
     s0+=303.0;
     s1+=459.0;
    } else {
     s0+=189.0;
     s1+=4276.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007051074644550681){
  if(i11<1.0086780786514282){
   if(i28<0.0001690387725830078){
    if(i66<0.08547696471214294){
     s0+=243.0;
     s1+=2.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i7<0.004886144772171974){
     s0+=49.0;
     s1+=59.0;
    } else {
     s0+=6.0;
     s1+=700.0;
    }
   }
  } else {
   if(i4<0.0003212094306945801){
    if(i40<1.1843664646148682){
     s0+=113.0;
     s1+=6.0;
    } else {
     s1+=68.0;
    }
   } else {
    if(i7<0.003692756872624159){
     s0+=17.0;
     s1+=755.0;
    } else {
     s0+=4.0;
     s1+=12019.0;
    }
   }
  }
 } else {
  s0+=894.0;
 }
}
if(i7<0.007682969328016043){
 if(i33<0.0014351904392242432){
  if(i26<1.1162974834442139){
   if(i19<0.0016025546938180923){
    if(i27<1.0080039501190186){
     s0+=27040.0;
     s1+=620.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i18<0.0002731026615947485){
     s0+=930.0;
     s1+=3016.0;
    } else {
     s0+=2059.0;
     s1+=1.0;
    }
   }
  } else {
   if(i13<1.0201523303985596){
    if(i41<1.1301478147506714){
     s0+=58582.0;
     s1+=23.0;
    } else {
     s0+=21205.0;
     s1+=870.0;
    }
   } else {
    if(i56<-1.187742964248173e-05){
     s0+=369.0;
     s1+=2.0;
    } else {
     s0+=409.0;
     s1+=255.0;
    }
   }
  }
 } else {
  if(i20<0.0002976059913635254){
   if(i41<1.0930736064910889){
    if(i4<-0.00026530027389526367){
     s0+=7.0;
    } else {
     s1+=594.0;
    }
   } else {
    if(i24<0.002419666852802038){
     s0+=692.0;
     s1+=40.0;
    } else {
     s0+=38.0;
     s1+=102.0;
    }
   }
  } else {
   if(i71<1.5452490060852142e-06){
    if(i56<-6.816008681198582e-05){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=2027.0;
    }
   } else {
    s0+=34.0;
   }
  }
 }
} else {
 if(i36<0.04799884557723999){
  if(i42<1.9524355593603104e-05){
   if(i68<-0.01096487045288086){
    if(i11<0.9502674341201782){
     s1+=42.0;
    } else {
     s0+=24.0;
     s1+=9.0;
    }
   } else {
    if(i47<0.00016198400408029556){
     s0+=1.0;
     s1+=763.0;
    } else {
     s0+=7.0;
     s1+=52.0;
    }
   }
  } else {
   if(i3<-9.445699834031984e-05){
    if(i35<1.0655921697616577){
     s0+=656.0;
     s1+=68.0;
    } else {
     s0+=15.0;
     s1+=219.0;
    }
   } else {
    if(i25<1.1150903701782227){
     s0+=3233.0;
     s1+=30.0;
    } else {
     s0+=83.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i27<0.9886521100997925){
   if(i64<1.0995988845825195){
    if(i3<-9.60507313720882e-05){
     s0+=18.0;
     s1+=104.0;
    } else {
     s0+=700.0;
     s1+=140.0;
    }
   } else {
    if(i32<0.005253879353404045){
     s0+=6.0;
    } else {
     s0+=3.0;
     s1+=278.0;
    }
   }
  } else {
   if(i71<4.701805664808489e-06){
    if(i22<0.10019442439079285){
     s0+=108.0;
     s1+=487.0;
    } else {
     s0+=114.0;
     s1+=14624.0;
    }
   } else {
    if(i7<0.022149020805954933){
     s0+=45.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
}
if(i1<6.431341171264648e-05){
 if(i21<0.06187957525253296){
  if(i36<0.19177678227424622){
   if(i38<0.0007118490757420659){
    if(i11<1.0157134532928467){
     s0+=80838.0;
     s1+=487.0;
    } else {
     s0+=196.0;
     s1+=27.0;
    }
   } else {
    if(i5<-1.9669532775878906e-06){
     s0+=22465.0;
     s1+=604.0;
    } else {
     s0+=10348.0;
     s1+=4768.0;
    }
   }
  } else {
   if(i50<-1.2142274499638006e-05){
    if(i57<1.0018078088760376){
     s0+=24.0;
     s1+=533.0;
    } else {
     s0+=49.0;
     s1+=75.0;
    }
   } else {
    if(i59<-0.0025147744454443455){
     s0+=8.0;
     s1+=8.0;
    } else {
     s0+=308.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i3<-5.4207193898037076e-05){
   if(i64<0.8988816738128662){
    if(i25<1.1211292743682861){
     s0+=49.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=20.0;
    }
   } else {
    if(i45<0.98826664686203){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=1237.0;
    }
   }
  } else {
   if(i5<5.364418029785156e-07){
    s0+=338.0;
   } else {
    if(i61<0.004984205588698387){
     s0+=3.0;
     s1+=23.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
} else {
 if(i8<1.0188767910003662){
  if(i31<1.176405668258667){
   if(i18<0.0002448976447340101){
    if(i20<0.0008968710899353027){
     s1+=1545.0;
    } else {
     s0+=37.0;
    }
   } else {
    s0+=1913.0;
   }
  } else {
   if(i26<1.629280686378479){
    if(i25<1.0258264541625977){
     s0+=27.0;
     s1+=24.0;
    } else {
     s0+=31.0;
     s1+=2795.0;
    }
   } else {
    if(i40<1.1873421669006348){
     s0+=50.0;
     s1+=3.0;
    } else {
     s1+=132.0;
    }
   }
  }
 } else {
  if(i56<-7.246296445373446e-05){
   s0+=4.0;
  } else {
   if(i26<1.170881986618042){
    if(i58<1.003008246421814){
     s0+=2.0;
     s1+=824.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i22<0.08219745755195618){
     s0+=1.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=10913.0;
    }
   }
  }
 }
}
if(i12<1.002624750137329){
 if(i7<0.0037304905708879232){
  if(i26<1.0905578136444092){
   if(i31<1.0577976703643799){
    if(i67<-0.0008690357208251953){
     s0+=1375.0;
     s1+=6.0;
    } else {
     s0+=13342.0;
    }
   } else {
    if(i3<-1.656823224038817e-05){
     s0+=202.0;
     s1+=420.0;
    } else {
     s0+=5998.0;
     s1+=385.0;
    }
   }
  } else {
   if(i61<0.00019144240650348365){
    if(i29<0.001906408229842782){
     s0+=48692.0;
     s1+=11.0;
    } else {
     s0+=7978.0;
     s1+=95.0;
    }
   } else {
    if(i34<1.0652967691421509){
     s0+=35.0;
     s1+=61.0;
    } else {
     s0+=10532.0;
     s1+=144.0;
    }
   }
  }
 } else {
  if(i6<0.9982165098190308){
   if(i22<0.2281707525253296){
    if(i5<-8.046627044677734e-06){
     s0+=16416.0;
     s1+=52.0;
    } else {
     s0+=1993.0;
     s1+=266.0;
    }
   } else {
    if(i37<0.006185575854033232){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=186.0;
    }
   }
  } else {
   if(i67<-0.0021867454051971436){
    if(i22<0.1636153757572174){
     s0+=2172.0;
     s1+=233.0;
    } else {
     s0+=30.0;
     s1+=192.0;
    }
   } else {
    if(i1<-4.547834396362305e-05){
     s0+=462.0;
     s1+=62.0;
    } else {
     s0+=1240.0;
     s1+=3490.0;
    }
   }
  }
 }
} else {
 if(i10<1.013310432434082){
  if(i51<0.039835020899772644){
   if(i18<0.00033685844391584396){
    if(i42<-2.8393233151291497e-06){
     s0+=82.0;
     s1+=1133.0;
    } else {
     s0+=1249.0;
     s1+=868.0;
    }
   } else {
    if(i59<0.0013294806703925133){
     s0+=3470.0;
     s1+=28.0;
    } else {
     s0+=223.0;
     s1+=216.0;
    }
   }
  } else {
   if(i68<-0.012175053358078003){
    if(i6<1.0101062059402466){
     s0+=262.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=162.0;
    }
   } else {
    if(i0<-0.00039964914321899414){
     s0+=310.0;
     s1+=152.0;
    } else {
     s0+=156.0;
     s1+=3586.0;
    }
   }
  }
 } else {
  if(i18<0.0008069879258982837){
   if(i71<-5.087166755401995e-06){
    if(i29<0.01247232872992754){
     s0+=7.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i11<1.018686056137085){
     s0+=19.0;
     s1+=1366.0;
    } else {
     s1+=11269.0;
    }
   }
  } else {
   s0+=178.0;
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i9<1.016850233078003){
  if(i7<0.0034323218278586864){
   if(i37<0.0007007415406405926){
    if(i19<0.00111615308560431){
     s0+=23956.0;
     s1+=161.0;
    } else {
     s0+=2411.0;
     s1+=624.0;
    }
   } else {
    if(i32<0.0018042721785604954){
     s0+=47948.0;
    } else {
     s0+=10668.0;
     s1+=163.0;
    }
   }
  } else {
   if(i6<0.9982162714004517){
    if(i7<0.01515070628374815){
     s0+=19970.0;
     s1+=313.0;
    } else {
     s0+=108.0;
     s1+=112.0;
    }
   } else {
    if(i29<0.001190647017210722){
     s0+=571.0;
     s1+=2249.0;
    } else {
     s0+=4038.0;
     s1+=1090.0;
    }
   }
  }
 } else {
  if(i15<0.19263121485710144){
   if(i40<1.086911916732788){
    if(i26<1.1222262382507324){
     s1+=298.0;
    } else {
     s0+=21.0;
    }
   } else {
    if(i7<0.005114935338497162){
     s0+=587.0;
     s1+=40.0;
    } else {
     s0+=52.0;
     s1+=192.0;
    }
   }
  } else {
   if(i7<0.005039419047534466){
    if(i56<-3.430412334637367e-06){
     s0+=22.0;
     s1+=26.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i20<-0.001233220100402832){
     s0+=2.0;
    } else {
     s1+=526.0;
    }
   }
  }
 }
} else {
 if(i0<0.0013450980186462402){
  if(i37<0.0030030219350010157){
   if(i7<0.004266594536602497){
    if(i8<1.0215073823928833){
     s0+=3388.0;
     s1+=88.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   } else {
    if(i28<0.00045543909072875977){
     s0+=61.0;
     s1+=899.0;
    } else {
     s0+=224.0;
     s1+=138.0;
    }
   }
  } else {
   if(i0<1.817941665649414e-05){
    if(i46<0.01035618782043457){
     s0+=812.0;
     s1+=170.0;
    } else {
     s0+=46.0;
     s1+=164.0;
    }
   } else {
    if(i51<0.028928186744451523){
     s0+=336.0;
     s1+=390.0;
    } else {
     s0+=159.0;
     s1+=2240.0;
    }
   }
  }
 } else {
  if(i37<0.0022784490138292313){
   if(i54<0.0010479375487193465){
    if(i34<1.1264252662658691){
     s0+=3.0;
     s1+=1650.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i18<0.00023185554891824722){
     s1+=47.0;
    } else {
     s0+=930.0;
    }
   }
  } else {
   if(i68<-0.013991862535476685){
    if(i38<0.0013420714531093836){
     s0+=19.0;
    } else {
     s0+=3.0;
     s1+=71.0;
    }
   } else {
    if(i15<0.07498612999916077){
     s0+=27.0;
     s1+=254.0;
    } else {
     s0+=6.0;
     s1+=12482.0;
    }
   }
  }
 }
}
if(i4<0.0005705952644348145){
 if(i15<0.20717915892601013){
  if(i9<1.0170714855194092){
   if(i39<0.9998549222946167){
    if(i51<0.3048373758792877){
     s0+=49763.0;
     s1+=256.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i21<0.00680445646867156){
     s0+=41081.0;
     s1+=427.0;
    } else {
     s0+=18130.0;
     s1+=3362.0;
    }
   }
  } else {
   if(i21<0.0262293741106987){
    if(i2<1.003030776977539){
     s0+=533.0;
     s1+=67.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i27<0.9966278672218323){
     s0+=76.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=288.0;
    }
   }
  }
 } else {
  if(i7<0.005170347169041634){
   if(i6<1.0028302669525146){
    if(i19<0.002663383260369301){
     s0+=176.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   } else {
    if(i74<-0.006451799534261227){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i56<-2.29291208597715e-06){
    if(i15<0.21343907713890076){
     s0+=3.0;
     s1+=44.0;
    } else {
     s0+=1.0;
     s1+=617.0;
    }
   } else {
    s0+=13.0;
   }
  }
 }
} else {
 if(i7<0.0041463011875748634){
  if(i32<0.0006092733237892389){
   if(i54<0.00018345259013585746){
    if(i40<1.0557754039764404){
     s0+=1435.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=737.0;
   }
  } else {
   if(i0<0.0025162696838378906){
    if(i37<0.002620821353048086){
     s0+=3282.0;
    } else {
     s0+=352.0;
     s1+=56.0;
    }
   } else {
    s1+=245.0;
   }
  }
 } else {
  if(i14<1.015102505683899){
   if(i0<5.4955482482910156e-05){
    if(i7<0.01428020279854536){
     s0+=593.0;
     s1+=87.0;
    } else {
     s0+=234.0;
     s1+=239.0;
    }
   } else {
    if(i57<0.9984235167503357){
     s0+=166.0;
    } else {
     s0+=505.0;
     s1+=4309.0;
    }
   }
  } else {
   if(i20<-0.00025522708892822266){
    if(i15<0.15844035148620605){
     s0+=132.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=246.0;
    }
   } else {
    if(i7<0.005903116427361965){
     s0+=77.0;
     s1+=560.0;
    } else {
     s0+=23.0;
     s1+=12611.0;
    }
   }
  }
 }
}
if(i3<-9.780804975889623e-05){
 if(i64<0.9791768789291382){
  if(i16<0.9452574253082275){
   if(i72<-0.1518954336643219){
    if(i38<0.0030329073779284954){
     s0+=19.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i57<1.0025391578674316){
     s0+=455.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=9.0;
    }
   }
  } else {
   if(i21<0.04079752415418625){
    if(i42<2.451530599500984e-05){
     s1+=31.0;
    } else {
     s0+=53.0;
     s1+=23.0;
    }
   } else {
    if(i24<0.007134580053389072){
     s0+=19.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i34<1.1525202989578247){
   if(i54<0.0008477004012092948){
    if(i45<0.9977978467941284){
     s0+=10.0;
    } else {
     s1+=644.0;
    }
   } else {
    if(i10<1.0157544612884521){
     s0+=262.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=16.0;
    }
   }
  } else {
   if(i15<0.015348821878433228){
    if(i12<1.0041074752807617){
     s0+=123.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i3<-0.00010019286128226668){
     s0+=22.0;
     s1+=14589.0;
    } else {
     s0+=16.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i2<1.0031750202178955){
  if(i14<1.0181578397750854){
   if(i34<1.0903575420379639){
    if(i38<0.0007175277569331229){
     s0+=24616.0;
     s1+=332.0;
    } else {
     s0+=3394.0;
     s1+=2256.0;
    }
   } else {
    if(i15<0.23153239488601685){
     s0+=80862.0;
     s1+=1426.0;
    } else {
     s0+=61.0;
     s1+=106.0;
    }
   }
  } else {
   if(i21<0.027716200798749924){
    if(i1<3.159046173095703e-05){
     s0+=705.0;
     s1+=96.0;
    } else {
     s0+=17.0;
     s1+=56.0;
    }
   } else {
    if(i39<1.0030794143676758){
     s0+=59.0;
     s1+=394.0;
    } else {
     s0+=91.0;
     s1+=22.0;
    }
   }
  }
 } else {
  if(i7<0.004009624943137169){
   if(i42<-1.2568450983962975e-05){
    if(i29<0.0013375701382756233){
     s1+=437.0;
    } else {
     s0+=102.0;
    }
   } else {
    if(i26<1.0974079370498657){
     s0+=972.0;
     s1+=153.0;
    } else {
     s0+=4021.0;
     s1+=41.0;
    }
   }
  } else {
   if(i48<2.1636486053466797e-05){
    if(i28<0.0007467865943908691){
     s0+=165.0;
     s1+=3151.0;
    } else {
     s0+=161.0;
     s1+=362.0;
    }
   } else {
    if(i7<0.0121100302785635){
     s0+=91.0;
    } else {
     s1+=40.0;
    }
   }
  }
 }
}
if(i2<1.0038769245147705){
 if(i7<0.007621506229043007){
  if(i26<1.1162974834442139){
   if(i13<1.0098216533660889){
    if(i38<0.0007172335172072053){
     s0+=26214.0;
     s1+=326.0;
    } else {
     s0+=3396.0;
     s1+=2211.0;
    }
   } else {
    if(i50<-1.0455691153765656e-05){
     s0+=4.0;
     s1+=461.0;
    } else {
     s0+=187.0;
     s1+=1.0;
    }
   }
  } else {
   if(i53<0.0400264710187912){
    if(i57<1.0025469064712524){
     s0+=62953.0;
     s1+=133.0;
    } else {
     s0+=9.0;
     s1+=10.0;
    }
   } else {
    if(i27<1.00226891040802){
     s0+=13773.0;
     s1+=395.0;
    } else {
     s0+=344.0;
     s1+=252.0;
    }
   }
  }
 } else {
  if(i0<-0.0005274415016174316){
   if(i17<0.17095431685447693){
    if(i74<0.04311683773994446){
     s0+=4459.0;
     s1+=210.0;
    } else {
     s0+=78.0;
     s1+=107.0;
    }
   } else {
    if(i19<0.004743436351418495){
     s0+=29.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=293.0;
    }
   }
  } else {
   if(i17<0.05351188778877258){
    if(i34<1.3372807502746582){
     s0+=147.0;
     s1+=90.0;
    } else {
     s0+=331.0;
     s1+=53.0;
    }
   } else {
    if(i38<0.004048590548336506){
     s0+=138.0;
     s1+=2212.0;
    } else {
     s0+=63.0;
    }
   }
  }
 }
} else {
 if(i21<0.007906127721071243){
  if(i28<0.000590205192565918){
   if(i2<1.0052242279052734){
    if(i37<0.0009204901289194822){
     s0+=8.0;
     s1+=142.0;
    } else {
     s0+=293.0;
     s1+=13.0;
    }
   } else {
    if(i4<0.00047385692596435547){
     s0+=7.0;
    } else {
     s0+=6.0;
     s1+=1672.0;
    }
   }
  } else {
   if(i20<0.00032067298889160156){
    if(i43<0.04134705662727356){
     s0+=3355.0;
     s1+=16.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i57<1.000579595565796){
     s0+=23.0;
    } else {
     s0+=20.0;
     s1+=293.0;
    }
   }
  }
 } else {
  if(i18<0.0007052235305309296){
   if(i50<-1.2011008038825821e-05){
    if(i19<0.002305202651768923){
     s0+=192.0;
     s1+=1357.0;
    } else {
     s0+=145.0;
     s1+=14150.0;
    }
   } else {
    if(i14<1.0163562297821045){
     s0+=44.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   s0+=202.0;
  }
 }
}
if(i27<1.0081455707550049){
 if(i22<0.2087191343307495){
  if(i7<0.007089827209711075){
   if(i29<0.0010346968192607164){
    if(i16<1.0068023204803467){
     s0+=31782.0;
     s1+=2304.0;
    } else {
     s0+=472.0;
     s1+=731.0;
    }
   } else {
    if(i12<1.0024137496948242){
     s0+=72678.0;
     s1+=415.0;
    } else {
     s0+=3262.0;
     s1+=423.0;
    }
   }
  } else {
   if(i17<0.0712507963180542){
    if(i0<-0.00016546249389648438){
     s0+=4487.0;
     s1+=161.0;
    } else {
     s0+=314.0;
     s1+=368.0;
    }
   } else {
    if(i5<2.980232238769531e-07){
     s0+=884.0;
     s1+=90.0;
    } else {
     s0+=539.0;
     s1+=2876.0;
    }
   }
  }
 } else {
  if(i50<-9.856922588369343e-06){
   if(i40<1.1132376194000244){
    if(i19<0.0039949798956513405){
     s0+=23.0;
    } else {
     s0+=3.0;
     s1+=41.0;
    }
   } else {
    if(i21<0.00856654904782772){
     s0+=30.0;
     s1+=11.0;
    } else {
     s0+=31.0;
     s1+=2752.0;
    }
   }
  } else {
   if(i66<0.21957150101661682){
    if(i50<-8.040256034291815e-06){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=199.0;
    }
   } else {
    if(i41<1.2196855545043945){
     s1+=5.0;
    } else {
     s0+=16.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025612330064177513){
  if(i62<0.0004063491942360997){
   if(i50<-1.3865625078324229e-05){
    if(i54<0.0011746163945645094){
     s0+=7.0;
     s1+=1869.0;
    } else {
     s0+=61.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i37<0.0012021275470033288){
    if(i31<1.1209434270858765){
     s1+=153.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i54<0.0008432564209215343){
     s1+=30.0;
    } else {
     s0+=1649.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i0<0.0005508661270141602){
   if(i50<-3.264039696659893e-05){
    if(i35<0.994792103767395){
     s0+=4.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i21<0.01652277261018753){
     s0+=135.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i54<0.0011223303154110909){
    if(i56<-1.3417884474620223e-05){
     s1+=439.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    s1+=11464.0;
   }
  }
 }
}
if(i1<6.395578384399414e-05){
 if(i4<0.0003268122673034668){
  if(i70<0.2064603567123413){
   if(i21<0.006591652520000935){
    if(i64<1.0053236484527588){
     s0+=2260.0;
     s1+=162.0;
    } else {
     s0+=61776.0;
     s1+=286.0;
    }
   } else {
    if(i29<0.0011358638294041157){
     s0+=8028.0;
     s1+=1845.0;
    } else {
     s0+=32606.0;
     s1+=918.0;
    }
   }
  } else {
   if(i29<0.005647941492497921){
    if(i19<0.0023783049546182156){
     s0+=83.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=178.0;
   }
  }
 } else {
  if(i3<-5.4902695410419255e-05){
   if(i16<0.9616509675979614){
    if(i21<0.06143563985824585){
     s0+=536.0;
     s1+=65.0;
    } else {
     s0+=70.0;
     s1+=157.0;
    }
   } else {
    if(i63<-0.0004944029496982694){
     s0+=238.0;
     s1+=2283.0;
    } else {
     s0+=314.0;
     s1+=253.0;
    }
   }
  } else {
   if(i53<0.04127100110054016){
    if(i30<-0.0001682825095485896){
     s0+=1110.0;
     s1+=512.0;
    } else {
     s0+=6009.0;
     s1+=338.0;
    }
   } else {
    if(i58<1.0038390159606934){
     s0+=458.0;
     s1+=822.0;
    } else {
     s0+=732.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i22<0.16841062903404236){
  if(i26<1.116804838180542){
   if(i34<1.0529288053512573){
    s0+=77.0;
   } else {
    s1+=2312.0;
   }
  } else {
   if(i54<0.001973101869225502){
    if(i18<0.00027761617093347013){
     s0+=72.0;
     s1+=456.0;
    } else {
     s0+=1729.0;
     s1+=23.0;
    }
   } else {
    if(i39<0.9991752505302429){
     s0+=28.0;
     s1+=2.0;
    } else {
     s0+=126.0;
     s1+=1634.0;
    }
   }
  }
 } else {
  if(i52<-6.249974831007421e-06){
   s0+=45.0;
  } else {
   if(i41<1.1453365087509155){
    if(i52<-4.472152795642614e-06){
     s0+=57.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=139.0;
    }
   } else {
    if(i3<-2.7243338990956545e-05){
     s0+=12.0;
     s1+=11941.0;
    } else {
     s0+=14.0;
     s1+=30.0;
    }
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i53<0.3370558023452759){
  if(i23<1.0218064785003662){
   if(i4<0.0002925992012023926){
    if(i7<0.0028505653608590364){
     s0+=74250.0;
     s1+=572.0;
    } else {
     s0+=28154.0;
     s1+=2151.0;
    }
   } else {
    if(i38<0.0007928499253466725){
     s0+=4918.0;
     s1+=71.0;
    } else {
     s0+=5493.0;
     s1+=2658.0;
    }
   }
  } else {
   if(i19<0.0014126116875559092){
    if(i34<1.1488099098205566){
     s0+=328.0;
     s1+=17.0;
    } else {
     s0+=326.0;
    }
   } else {
    if(i58<1.0038378238677979){
     s0+=169.0;
     s1+=1242.0;
    } else {
     s0+=357.0;
     s1+=233.0;
    }
   }
  }
 } else {
  if(i25<1.108855962753296){
   if(i18<0.0006113636773079634){
    if(i4<0.0014063715934753418){
     s0+=223.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i3<-3.049477527383715e-05){
    if(i3<-4.994966002414003e-05){
     s1+=920.0;
    } else {
     s0+=4.0;
     s1+=6.0;
    }
   } else {
    if(i33<-0.0011216402053833008){
     s0+=39.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i7<0.004017307423055172){
  if(i33<0.001964390277862549){
   if(i54<0.0010123576503247023){
    if(i18<0.00022313103545457125){
     s0+=1.0;
     s1+=473.0;
    } else {
     s0+=78.0;
    }
   } else {
    if(i31<1.0894038677215576){
     s1+=57.0;
    } else {
     s0+=1734.0;
    }
   }
  } else {
   if(i18<0.0015249294228851795){
    s1+=498.0;
   } else {
    s0+=7.0;
   }
  }
 } else {
  if(i39<1.0008702278137207){
   if(i28<0.0002270042896270752){
    if(i38<0.0012897495180368423){
     s0+=13.0;
    } else {
     s1+=312.0;
    }
   } else {
    s0+=201.0;
   }
  } else {
   if(i52<-6.811779712734278e-06){
    s0+=26.0;
   } else {
    if(i22<0.02800866961479187){
     s0+=52.0;
     s1+=98.0;
    } else {
     s0+=113.0;
     s1+=15057.0;
    }
   }
  }
 }
}
if(i6<1.0044825077056885){
 if(i8<1.0119638442993164){
  if(i54<0.012221390381455421){
   if(i43<0.011556703597307205){
    if(i8<0.9918996095657349){
     s0+=758.0;
     s1+=136.0;
    } else {
     s0+=67208.0;
     s1+=561.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=7281.0;
     s1+=2415.0;
    } else {
     s0+=34558.0;
     s1+=1424.0;
    }
   }
  } else {
   if(i2<0.9989812970161438){
    if(i3<-7.257675315486267e-05){
     s0+=479.0;
     s1+=315.0;
    } else {
     s0+=1101.0;
     s1+=36.0;
    }
   } else {
    if(i50<-9.47717944654869e-06){
     s0+=5.0;
     s1+=431.0;
    } else {
     s0+=19.0;
    }
   }
  }
 } else {
  if(i34<1.6811659336090088){
   if(i7<0.004390643909573555){
    if(i2<1.002807378768921){
     s0+=449.0;
     s1+=9.0;
    } else {
     s0+=97.0;
     s1+=64.0;
    }
   } else {
    if(i52<-5.628957296721637e-06){
     s0+=33.0;
    } else {
     s0+=97.0;
     s1+=2268.0;
    }
   }
  } else {
   s0+=131.0;
  }
 }
} else {
 if(i32<0.0019539743661880493){
  if(i54<0.0010128486901521683){
   if(i41<1.0499491691589355){
    s0+=367.0;
   } else {
    if(i7<0.0016004189383238554){
     s0+=65.0;
     s1+=75.0;
    } else {
     s0+=30.0;
     s1+=1978.0;
    }
   }
  } else {
   if(i37<0.000988264917396009){
    s1+=86.0;
   } else {
    if(i26<1.1038953065872192){
     s1+=12.0;
    } else {
     s0+=3140.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i40<1.092419147491455){
   if(i33<-0.0010116100311279297){
    if(i7<0.0124284029006958){
     s0+=194.0;
    } else {
     s0+=80.0;
     s1+=33.0;
    }
   } else {
    if(i7<0.0032675061374902725){
     s0+=2.0;
    } else {
     s1+=86.0;
    }
   }
  } else {
   if(i8<0.9381884336471558){
    if(i29<0.015668779611587524){
     s0+=248.0;
     s1+=70.0;
    } else {
     s0+=27.0;
     s1+=138.0;
    }
   } else {
    if(i30<-0.0002746356185525656){
     s0+=94.0;
     s1+=11979.0;
    } else {
     s0+=249.0;
     s1+=2030.0;
    }
   }
  }
 }
}
if(i13<1.0165369510650635){
 if(i6<1.006160020828247){
  if(i12<1.002354383468628){
   if(i25<1.1918110847473145){
    if(i28<7.075071334838867e-05){
     s0+=75148.0;
     s1+=770.0;
    } else {
     s0+=33023.0;
     s1+=2942.0;
    }
   } else {
    if(i53<0.2710811495780945){
     s0+=266.0;
     s1+=45.0;
    } else {
     s0+=43.0;
     s1+=272.0;
    }
   }
  } else {
   if(i21<0.021254852414131165){
    if(i7<0.0040378812700510025){
     s0+=2900.0;
     s1+=53.0;
    } else {
     s0+=877.0;
     s1+=677.0;
    }
   } else {
    if(i15<0.06370323896408081){
     s0+=382.0;
     s1+=153.0;
    } else {
     s0+=162.0;
     s1+=1211.0;
    }
   }
  }
 } else {
  if(i32<0.0019405309576541185){
   if(i26<1.1180615425109863){
    if(i31<1.0545791387557983){
     s0+=30.0;
    } else {
     s1+=924.0;
    }
   } else {
    s0+=1485.0;
   }
  } else {
   if(i67<-0.007075011730194092){
    if(i7<0.02253798022866249){
     s0+=164.0;
     s1+=32.0;
    } else {
     s0+=70.0;
     s1+=190.0;
    }
   } else {
    if(i4<0.00031870603561401367){
     s0+=58.0;
     s1+=2.0;
    } else {
     s0+=158.0;
     s1+=2759.0;
    }
   }
  }
 }
} else {
 if(i1<1.615285873413086e-05){
  if(i29<0.006160769611597061){
   if(i19<0.0025817332789301872){
    if(i2<1.0015225410461426){
     s0+=528.0;
     s1+=15.0;
    } else {
     s0+=32.0;
     s1+=14.0;
    }
   } else {
    if(i61<-0.0001511879963800311){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=190.0;
     s1+=94.0;
    }
   }
  } else {
   if(i70<0.10105571150779724){
    if(i33<-0.0020008087158203125){
     s0+=46.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i38<0.001812316244468093){
     s0+=15.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i21<0.005542275495827198){
   if(i7<0.0035320124588906765){
    if(i40<1.078357458114624){
     s1+=89.0;
    } else {
     s0+=558.0;
     s1+=31.0;
    }
   } else {
    if(i39<1.001349687576294){
     s0+=34.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=499.0;
    }
   }
  } else {
   if(i3<-6.274029146879911e-05){
    if(i52<-6.519388534798054e-06){
     s0+=49.0;
    } else {
     s0+=62.0;
     s1+=12659.0;
    }
   } else {
    if(i4<0.0013736486434936523){
     s0+=88.0;
     s1+=641.0;
    } else {
     s0+=76.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i5<2.294778823852539e-05){
 if(i44<1.0298798084259033){
  if(i22<0.21933749318122864){
   if(i39<0.9998829364776611){
    if(i19<0.005688025150448084){
     s0+=50687.0;
     s1+=255.0;
    } else {
     s0+=105.0;
     s1+=41.0;
    }
   } else {
    if(i21<0.0067792050540447235){
     s0+=40097.0;
     s1+=384.0;
    } else {
     s0+=18248.0;
     s1+=3579.0;
    }
   }
  } else {
   if(i66<0.09325817227363586){
    if(i21<0.035235509276390076){
     s0+=50.0;
     s1+=7.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i7<0.004938904661685228){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=190.0;
    }
   }
  }
 } else {
  if(i56<-2.549403461671318e-06){
   if(i1<-3.814697265625e-05){
    if(i38<0.002189409453421831){
     s0+=191.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=99.0;
    }
   } else {
    if(i73<0.0027157962322235107){
     s0+=52.0;
     s1+=89.0;
    } else {
     s0+=41.0;
     s1+=666.0;
    }
   }
  } else {
   if(i19<0.0025969911366701126){
    s0+=537.0;
   } else {
    s1+=3.0;
   }
  }
 }
} else {
 if(i29<0.0026352473068982363){
  if(i46<0.0008381108636967838){
   if(i18<0.00025906163500621915){
    if(i31<1.1229116916656494){
     s1+=2597.0;
    } else {
     s0+=74.0;
    }
   } else {
    s0+=1348.0;
   }
  } else {
   if(i26<1.116804838180542){
    if(i15<0.11976125836372375){
     s1+=145.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    if(i53<0.05725734680891037){
     s0+=3303.0;
     s1+=20.0;
    } else {
     s0+=110.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i42<2.4579316232120618e-05){
   if(i17<0.0757007896900177){
    if(i76<-0.0029689669609069824){
     s0+=30.0;
     s1+=273.0;
    } else {
     s0+=247.0;
     s1+=32.0;
    }
   } else {
    if(i2<1.0068867206573486){
     s0+=106.0;
     s1+=1497.0;
    } else {
     s1+=12155.0;
    }
   }
  } else {
   if(i15<0.10032433271408081){
    if(i35<1.1126587390899658){
     s0+=1117.0;
     s1+=201.0;
    } else {
     s0+=18.0;
     s1+=112.0;
    }
   } else {
    if(i19<0.0047503868117928505){
     s0+=132.0;
     s1+=9.0;
    } else {
     s0+=74.0;
     s1+=1781.0;
    }
   }
  }
 }
}
if(i2<1.0037095546722412){
 if(i4<0.00032824277877807617){
  if(i36<0.2066880762577057){
   if(i43<0.011212552897632122){
    if(i16<0.9924075603485107){
     s0+=692.0;
     s1+=147.0;
    } else {
     s0+=60852.0;
     s1+=296.0;
    }
   } else {
    if(i37<0.00034879177110269666){
     s0+=1948.0;
     s1+=938.0;
    } else {
     s0+=40813.0;
     s1+=1657.0;
    }
   }
  } else {
   if(i54<0.004289951175451279){
    if(i7<0.0057913558557629585){
     s0+=61.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i21<0.033865123987197876){
     s0+=72.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=312.0;
    }
   }
  }
 } else {
  if(i43<0.014055067673325539){
   if(i24<0.000878256163559854){
    if(i24<0.00024812735500745475){
     s0+=1812.0;
    } else {
     s1+=304.0;
    }
   } else {
    if(i11<0.9822371006011963){
     s0+=35.0;
     s1+=9.0;
    } else {
     s0+=2684.0;
     s1+=4.0;
    }
   }
  } else {
   if(i2<0.9999357461929321){
    if(i43<0.14383895695209503){
     s0+=1476.0;
     s1+=202.0;
    } else {
     s0+=46.0;
     s1+=197.0;
    }
   } else {
    if(i53<0.16950327157974243){
     s0+=991.0;
     s1+=1476.0;
    } else {
     s0+=137.0;
     s1+=1035.0;
    }
   }
  }
 }
} else {
 if(i11<1.0169036388397217){
  if(i24<0.002242270391434431){
   if(i48<1.1980533599853516e-05){
    if(i0<0.0010448098182678223){
     s0+=825.0;
     s1+=396.0;
    } else {
     s0+=210.0;
     s1+=1318.0;
    }
   } else {
    if(i47<-2.8068079700460657e-05){
     s0+=76.0;
     s1+=25.0;
    } else {
     s0+=2945.0;
     s1+=11.0;
    }
   }
  } else {
   if(i40<1.0789777040481567){
    if(i3<-9.260103979613632e-05){
     s1+=17.0;
    } else {
     s0+=125.0;
    }
   } else {
    if(i3<-7.333487883443013e-05){
     s0+=48.0;
     s1+=2647.0;
    } else {
     s0+=162.0;
     s1+=508.0;
    }
   }
  }
 } else {
  if(i57<0.9983991384506226){
   s0+=23.0;
  } else {
   if(i19<0.0012586782686412334){
    if(i0<0.0020089149475097656){
     s0+=99.0;
    } else {
     s1+=361.0;
    }
   } else {
    if(i7<0.002177424030378461){
     s0+=45.0;
     s1+=26.0;
    } else {
     s0+=45.0;
     s1+=12722.0;
    }
   }
  }
 }
}
if(i16<1.0147950649261475){
 if(i12<1.0026252269744873){
  if(i3<-0.00010808712977450341){
   if(i30<-0.00041375705040991306){
    if(i53<0.13907238841056824){
     s0+=66.0;
     s1+=37.0;
    } else {
     s0+=8.0;
     s1+=382.0;
    }
   } else {
    if(i22<0.14380040764808655){
     s0+=293.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=29.0;
    }
   }
  } else {
   if(i43<0.011619087308645248){
    if(i2<1.003396987915039){
     s0+=66525.0;
     s1+=583.0;
    } else {
     s0+=835.0;
     s1+=174.0;
    }
   } else {
    if(i31<1.0905578136444092){
     s0+=6341.0;
     s1+=2201.0;
    } else {
     s0+=35966.0;
     s1+=1459.0;
    }
   }
  }
 } else {
  if(i61<0.00014529682812280953){
   if(i51<0.04739534854888916){
    if(i37<0.0008690448594279587){
     s0+=737.0;
     s1+=814.0;
    } else {
     s0+=2914.0;
     s1+=82.0;
    }
   } else {
    if(i16<0.9984998106956482){
     s0+=14.0;
    } else {
     s0+=18.0;
     s1+=242.0;
    }
   }
  } else {
   if(i2<1.001123309135437){
    if(i53<0.27985283732414246){
     s0+=1001.0;
     s1+=279.0;
    } else {
     s0+=5.0;
     s1+=140.0;
    }
   } else {
    if(i29<0.002686100546270609){
     s0+=439.0;
     s1+=475.0;
    } else {
     s0+=374.0;
     s1+=4048.0;
    }
   }
  }
 }
} else {
 if(i11<1.0200928449630737){
  if(i3<-7.301160076167434e-05){
   if(i19<0.0010629426687955856){
    if(i65<-5.995113042445155e-06){
     s0+=3.0;
     s1+=45.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i48<2.014636993408203e-05){
     s0+=46.0;
     s1+=1100.0;
    } else {
     s0+=39.0;
     s1+=26.0;
    }
   }
  } else {
   if(i31<1.1180615425109863){
    if(i12<1.006192684173584){
     s1+=353.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i59<0.00098408292979002){
     s0+=597.0;
     s1+=58.0;
    } else {
     s0+=19.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i18<0.0008217089343816042){
   if(i6<0.9986131191253662){
    if(i38<0.0017639456782490015){
     s0+=130.0;
     s1+=41.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i2<1.0025732517242432){
     s0+=45.0;
     s1+=84.0;
    } else {
     s0+=23.0;
     s1+=11504.0;
    }
   }
  } else {
   s0+=60.0;
  }
 }
}
if(i33<0.001287221908569336){
 if(i4<0.0005273222923278809){
  if(i51<0.040311865508556366){
   if(i7<0.0031145820394158363){
    if(i35<1.0179111957550049){
     s0+=9010.0;
     s1+=394.0;
    } else {
     s0+=69550.0;
     s1+=302.0;
    }
   } else {
    if(i34<1.0905578136444092){
     s0+=3524.0;
     s1+=1675.0;
    } else {
     s0+=16976.0;
     s1+=569.0;
    }
   }
  } else {
   if(i0<-0.0005850493907928467){
    if(i36<0.2015911042690277){
     s0+=9224.0;
     s1+=265.0;
    } else {
     s0+=39.0;
     s1+=158.0;
    }
   } else {
    if(i34<1.0927655696868896){
     s1+=431.0;
    } else {
     s0+=565.0;
     s1+=668.0;
    }
   }
  }
 } else {
  if(i53<0.044644229114055634){
   if(i7<0.004386347718536854){
    if(i42<-8.915048965718597e-06){
     s0+=139.0;
     s1+=59.0;
    } else {
     s0+=4568.0;
     s1+=100.0;
    }
   } else {
    if(i11<1.0027213096618652){
     s0+=173.0;
     s1+=89.0;
    } else {
     s0+=110.0;
     s1+=966.0;
    }
   }
  } else {
   if(i1<3.039836883544922e-06){
    if(i17<0.09465306997299194){
     s0+=752.0;
     s1+=114.0;
    } else {
     s0+=183.0;
     s1+=282.0;
    }
   } else {
    if(i17<0.1018470823764801){
     s0+=405.0;
     s1+=621.0;
    } else {
     s0+=193.0;
     s1+=3902.0;
    }
   }
  }
 }
} else {
 if(i3<-8.844140393193811e-05){
  if(i21<0.0033690650016069412){
   if(i52<-5.101371243654285e-06){
    if(i69<0.12805964052677155){
     s0+=111.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.055795133113861084){
     s0+=1.0;
    } else {
     s1+=150.0;
    }
   }
  } else {
   if(i65<1.6933263395912945e-05){
    if(i38<0.0038968443404883146){
     s0+=30.0;
     s1+=11885.0;
    } else {
     s0+=43.0;
     s1+=5.0;
    }
   } else {
    if(i45<0.9928104281425476){
     s1+=2.0;
    } else {
     s0+=41.0;
    }
   }
  }
 } else {
  if(i32<0.0010661629494279623){
   if(i0<0.0001525580883026123){
    s0+=35.0;
   } else {
    s1+=1045.0;
   }
  } else {
   if(i7<0.006310064345598221){
    if(i0<0.002553403377532959){
     s0+=1029.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i1<5.6803226470947266e-05){
     s0+=14.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=433.0;
    }
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i1<6.383657455444336e-05){
  if(i62<0.004697234369814396){
   if(i4<0.000280916690826416){
    if(i26<1.116391897201538){
     s0+=27125.0;
     s1+=2003.0;
    } else {
     s0+=74770.0;
     s1+=620.0;
    }
   } else {
    if(i63<-0.0007753581739962101){
     s0+=1473.0;
     s1+=1313.0;
    } else {
     s0+=9323.0;
     s1+=1456.0;
    }
   }
  } else {
   if(i12<1.0014500617980957){
    if(i70<0.09618911147117615){
     s0+=786.0;
     s1+=111.0;
    } else {
     s0+=110.0;
     s1+=152.0;
    }
   } else {
    if(i8<0.9334802031517029){
     s0+=87.0;
     s1+=17.0;
    } else {
     s0+=76.0;
     s1+=851.0;
    }
   }
  }
 } else {
  if(i48<1.901388168334961e-05){
   if(i61<6.566069350810722e-05){
    if(i52<-2.925607304860023e-06){
     s0+=497.0;
     s1+=6.0;
    } else {
     s0+=30.0;
     s1+=328.0;
    }
   } else {
    if(i51<0.04014551267027855){
     s0+=278.0;
     s1+=1013.0;
    } else {
     s0+=27.0;
     s1+=1661.0;
    }
   }
  } else {
   if(i67<-0.0006181299686431885){
    if(i37<0.004139865282922983){
     s0+=6.0;
    } else {
     s1+=169.0;
    }
   } else {
    if(i32<0.003044768236577511){
     s0+=742.0;
    } else {
     s1+=18.0;
    }
   }
  }
 }
} else {
 if(i50<-1.2014488675049506e-05){
  if(i18<0.0007059713825583458){
   if(i19<0.004202588927000761){
    if(i58<1.0050175189971924){
     s0+=168.0;
     s1+=5983.0;
    } else {
     s0+=180.0;
     s1+=24.0;
    }
   } else {
    if(i3<-1.6207493899855763e-05){
     s1+=8605.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   s0+=552.0;
  }
 } else {
  if(i21<0.03466419875621796){
   s0+=250.0;
  } else {
   if(i12<0.999311089515686){
    s0+=28.0;
   } else {
    s1+=21.0;
   }
  }
 }
}
if(i1<6.347894668579102e-05){
 if(i4<0.00032806396484375){
  if(i30<-0.0016921727219596505){
   s1+=80.0;
  } else {
   if(i17<0.22860586643218994){
    if(i29<0.0010551821906119585){
     s0+=29860.0;
     s1+=2167.0;
    } else {
     s0+=74908.0;
     s1+=882.0;
    }
   } else {
    if(i33<-0.00021326541900634766){
     s0+=70.0;
     s1+=201.0;
    } else {
     s0+=63.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i63<-0.0007977492641657591){
   if(i51<0.04852373152971268){
    if(i33<-0.0007887482643127441){
     s0+=886.0;
     s1+=232.0;
    } else {
     s0+=372.0;
     s1+=869.0;
    }
   } else {
    if(i66<0.2506355047225952){
     s0+=194.0;
     s1+=858.0;
    } else {
     s0+=19.0;
     s1+=893.0;
    }
   }
  } else {
   if(i61<0.00021796890359837562){
    if(i47<1.9492426872602664e-05){
     s0+=6077.0;
     s1+=469.0;
    } else {
     s0+=450.0;
     s1+=337.0;
    }
   } else {
    if(i22<0.0545879602432251){
     s0+=947.0;
     s1+=169.0;
    } else {
     s0+=533.0;
     s1+=575.0;
    }
   }
  }
 }
} else {
 if(i31<1.176405668258667){
  if(i54<0.001054483000189066){
   if(i18<0.00024216252495534718){
    if(i12<0.9998712539672852){
     s0+=10.0;
    } else {
     s0+=2.0;
     s1+=2275.0;
    }
   } else {
    s0+=90.0;
   }
  } else {
   if(i18<8.679245365783572e-05){
    s1+=48.0;
   } else {
    s0+=1977.0;
   }
  }
 } else {
  if(i15<0.009231925010681152){
   if(i47<0.00026675156550481915){
    if(i42<2.074557232845109e-05){
     s1+=38.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   } else {
    if(i9<0.8484858274459839){
     s1+=7.0;
    } else {
     s0+=40.0;
     s1+=2.0;
    }
   }
  } else {
   if(i18<0.0004219014663249254){
    if(i68<-0.015834420919418335){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=11934.0;
    }
   } else {
    if(i25<1.0843429565429688){
     s0+=34.0;
     s1+=25.0;
    } else {
     s0+=28.0;
     s1+=2183.0;
    }
   }
  }
 }
}
if(i12<1.0026333332061768){
 if(i9<1.0155513286590576){
  if(i55<0.01230979710817337){
   if(i43<0.011432254686951637){
    if(i7<0.004016895312815905){
     s0+=59231.0;
     s1+=330.0;
    } else {
     s0+=7138.0;
     s1+=360.0;
    }
   } else {
    if(i27<0.9942939281463623){
     s0+=26292.0;
     s1+=318.0;
    } else {
     s0+=16326.0;
     s1+=2994.0;
    }
   }
  } else {
   if(i17<0.06227061152458191){
    if(i7<0.019749678671360016){
     s0+=405.0;
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=19.0;
    }
   } else {
    if(i50<-5.17061744176317e-06){
     s0+=1.0;
     s1+=425.0;
    } else {
     s0+=43.0;
    }
   }
  }
 } else {
  if(i5<8.52346420288086e-06){
   if(i21<0.03460674732923508){
    if(i61<0.00021114270202815533){
     s0+=637.0;
     s1+=47.0;
    } else {
     s0+=28.0;
     s1+=11.0;
    }
   } else {
    if(i7<0.007103736512362957){
     s0+=38.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=192.0;
    }
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=634.0;
   } else {
    if(i37<0.0024884450249373913){
     s0+=150.0;
    } else {
     s0+=35.0;
     s1+=367.0;
    }
   }
  }
 }
} else {
 if(i41<1.1714401245117188){
  if(i16<1.0167382955551147){
   if(i19<0.001401939312927425){
    if(i6<1.0108742713928223){
     s0+=2415.0;
     s1+=62.0;
    } else {
     s0+=12.0;
     s1+=149.0;
    }
   } else {
    if(i15<0.07985514402389526){
     s0+=939.0;
     s1+=1249.0;
    } else {
     s0+=1210.0;
     s1+=651.0;
    }
   }
  } else {
   if(i7<0.002266695722937584){
    if(i65<-6.348425358737586e-06){
     s0+=2.0;
     s1+=84.0;
    } else {
     s0+=212.0;
     s1+=9.0;
    }
   } else {
    if(i65<-5.229421731201e-07){
     s0+=10.0;
     s1+=1297.0;
    } else {
     s0+=16.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i15<0.07190540432929993){
   if(i2<1.0053385496139526){
    if(i62<0.0011679984163492918){
     s0+=320.0;
     s1+=19.0;
    } else {
     s0+=472.0;
     s1+=169.0;
    }
   } else {
    if(i75<0.027392804622650146){
     s0+=17.0;
     s1+=268.0;
    } else {
     s0+=16.0;
     s1+=6.0;
    }
   }
  } else {
   if(i29<0.0026010540314018726){
    if(i25<1.1096465587615967){
     s0+=56.0;
     s1+=5.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i11<1.0129973888397217){
     s0+=265.0;
     s1+=3090.0;
    } else {
     s0+=30.0;
     s1+=11660.0;
    }
   }
  }
 }
}
if(i3<-0.0001063833333319053){
 if(i15<0.018716037273406982){
  if(i42<8.06565640232293e-06){
   s1+=38.0;
  } else {
   if(i74<0.06534868478775024){
    if(i47<0.00021229697449598461){
     s0+=11.0;
     s1+=12.0;
    } else {
     s0+=432.0;
     s1+=8.0;
    }
   } else {
    if(i1<-5.6356191635131836e-05){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i52<-6.326945367618464e-06){
   if(i24<0.008359716273844242){
    s0+=174.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i47<0.00038348196540027857){
    if(i47<0.0003096575674135238){
     s0+=19.0;
     s1+=14332.0;
    } else {
     s0+=43.0;
     s1+=324.0;
    }
   } else {
    if(i16<0.937856912612915){
     s0+=47.0;
     s1+=13.0;
    } else {
     s1+=30.0;
    }
   }
  }
 }
} else {
 if(i4<0.00043386220932006836){
  if(i38<0.0006893015815876424){
   if(i33<-0.00038483738899230957){
    if(i2<0.9973739385604858){
     s0+=14979.0;
    } else {
     s0+=6599.0;
     s1+=273.0;
    }
   } else {
    if(i32<0.0018084101611748338){
     s0+=54599.0;
     s1+=3.0;
    } else {
     s0+=1127.0;
     s1+=95.0;
    }
   }
  } else {
   if(i1<-3.3915042877197266e-05){
    if(i25<1.191481590270996){
     s0+=24800.0;
     s1+=541.0;
    } else {
     s0+=34.0;
     s1+=104.0;
    }
   } else {
    if(i21<0.00911121815443039){
     s0+=4593.0;
     s1+=450.0;
    } else {
     s0+=486.0;
     s1+=2074.0;
    }
   }
  }
 } else {
  if(i28<0.0005102753639221191){
   if(i23<1.0096080303192139){
    if(i0<0.0009331107139587402){
     s0+=2434.0;
     s1+=849.0;
    } else {
     s0+=26.0;
     s1+=684.0;
    }
   } else {
    if(i50<-1.2712259376712609e-05){
     s0+=228.0;
     s1+=2771.0;
    } else {
     s0+=235.0;
     s1+=33.0;
    }
   }
  } else {
   if(i30<-0.00029504092526622117){
    if(i22<0.10008230805397034){
     s0+=390.0;
     s1+=97.0;
    } else {
     s0+=186.0;
     s1+=786.0;
    }
   } else {
    if(i21<0.030041435733437538){
     s0+=4990.0;
     s1+=219.0;
    } else {
     s0+=183.0;
     s1+=469.0;
    }
   }
  }
 }
}
if(i12<1.0026319026947021){
 if(i11<1.0135915279388428){
  if(i28<8.219480514526367e-05){
   if(i69<0.9297612905502319){
    if(i15<0.23436102271080017){
     s0+=78165.0;
     s1+=893.0;
    } else {
     s0+=37.0;
     s1+=82.0;
    }
   } else {
    if(i54<0.052886128425598145){
     s0+=70.0;
     s1+=41.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i41<1.0902695655822754){
    if(i68<-0.0006233155727386475){
     s0+=581.0;
     s1+=779.0;
    } else {
     s0+=7354.0;
     s1+=1622.0;
    }
   } else {
    if(i55<0.01231503114104271){
     s0+=23905.0;
     s1+=891.0;
    } else {
     s0+=71.0;
     s1+=300.0;
    }
   }
  }
 } else {
  if(i3<-3.19396895065438e-05){
   if(i52<-3.012656634382438e-06){
    if(i21<0.021211249753832817){
     s0+=81.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i43<0.041937410831451416){
     s0+=112.0;
     s1+=374.0;
    } else {
     s0+=1.0;
     s1+=576.0;
    }
   }
  } else {
   if(i5<1.0371208190917969e-05){
    s0+=170.0;
   } else {
    if(i68<0.0015918612480163574){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=2.0;
    }
   }
  }
 }
} else {
 if(i21<0.01348112616688013){
  if(i4<0.0011130571365356445){
   if(i57<1.0009599924087524){
    if(i37<0.0002076921082334593){
     s0+=386.0;
    } else {
     s0+=232.0;
     s1+=696.0;
    }
   } else {
    if(i9<1.0252621173858643){
     s0+=2737.0;
     s1+=74.0;
    } else {
     s0+=10.0;
     s1+=98.0;
    }
   }
  } else {
   if(i1<0.0001189112663269043){
    if(i28<0.0006665289402008057){
     s0+=44.0;
     s1+=341.0;
    } else {
     s0+=1043.0;
     s1+=19.0;
    }
   } else {
    if(i39<1.0013091564178467){
     s0+=108.0;
     s1+=1.0;
    } else {
     s0+=199.0;
     s1+=2124.0;
    }
   }
  }
 } else {
  if(i2<1.0023088455200195){
   if(i69<0.39428865909576416){
    if(i15<0.08144751191139221){
     s0+=638.0;
     s1+=106.0;
    } else {
     s0+=289.0;
     s1+=301.0;
    }
   } else {
    if(i35<1.061596155166626){
     s0+=48.0;
     s1+=8.0;
    } else {
     s0+=32.0;
     s1+=373.0;
    }
   }
  } else {
   if(i3<-7.332961831707507e-05){
    if(i15<0.04074743390083313){
     s0+=67.0;
     s1+=126.0;
    } else {
     s0+=47.0;
     s1+=13149.0;
    }
   } else {
    if(i58<1.0042707920074463){
     s0+=76.0;
     s1+=1079.0;
    } else {
     s0+=139.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i12<1.0026335716247559){
 if(i9<1.0159292221069336){
  if(i35<1.152909755706787){
   if(i38<0.000716265756636858){
    if(i54<0.0021340225357562304){
     s0+=76190.0;
     s1+=359.0;
    } else {
     s0+=2301.0;
     s1+=86.0;
    }
   } else {
    if(i4<-0.0001621842384338379){
     s0+=21218.0;
     s1+=288.0;
    } else {
     s0+=9540.0;
     s1+=3325.0;
    }
   }
  } else {
   if(i24<0.002563408575952053){
    if(i58<1.0020482540130615){
     s0+=174.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.005560001358389854){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=353.0;
    }
   }
  }
 } else {
  if(i19<0.0016479676123708487){
   if(i38<0.000364625477232039){
    s0+=383.0;
   } else {
    if(i56<-3.853171165246749e-06){
     s0+=32.0;
     s1+=30.0;
    } else {
     s0+=232.0;
     s1+=1.0;
    }
   }
  } else {
   if(i18<0.0011149602942168713){
    if(i28<0.00042623281478881836){
     s0+=70.0;
     s1+=1188.0;
    } else {
     s0+=79.0;
     s1+=11.0;
    }
   } else {
    s0+=115.0;
   }
  }
 }
} else {
 if(i30<-0.00023144020815379918){
  if(i34<1.1757044792175293){
   if(i33<0.0014286637306213379){
    if(i39<1.0022835731506348){
     s0+=21.0;
     s1+=187.0;
    } else {
     s0+=500.0;
     s1+=82.0;
    }
   } else {
    if(i7<0.0008588221971876919){
     s0+=21.0;
    } else {
     s0+=33.0;
     s1+=883.0;
    }
   }
  } else {
   if(i32<0.001945793628692627){
    if(i15<0.09650525450706482){
     s0+=93.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i3<-3.202064544893801e-05){
     s0+=290.0;
     s1+=13963.0;
    } else {
     s0+=297.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i47<-2.479365502949804e-05){
   if(i48<2.7626752853393555e-05){
    if(i7<0.001741686137393117){
     s0+=48.0;
     s1+=110.0;
    } else {
     s0+=20.0;
     s1+=1559.0;
    }
   } else {
    if(i45<1.008807897567749){
     s0+=33.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i19<0.001871635438874364){
    if(i18<0.00017582665896043181){
     s0+=107.0;
     s1+=116.0;
    } else {
     s0+=2710.0;
     s1+=7.0;
    }
   } else {
    if(i65<-7.477980034309439e-06){
     s0+=71.0;
     s1+=478.0;
    } else {
     s0+=1798.0;
     s1+=1291.0;
    }
   }
  }
 }
}
if(i3<-0.00010638721869327128){
 if(i35<1.024446964263916){
  if(i8<0.9490950107574463){
   if(i39<1.0046420097351074){
    if(i22<0.08045101165771484){
     s0+=428.0;
     s1+=26.0;
    } else {
     s0+=9.0;
     s1+=10.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i58<1.004854679107666){
    s1+=77.0;
   } else {
    if(i26<1.4288707971572876){
     s1+=7.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i50<-0.0001819253811845556){
   s0+=71.0;
  } else {
   if(i71<5.492272975970991e-06){
    if(i52<-7.328173978748964e-06){
     s0+=41.0;
    } else {
     s0+=62.0;
     s1+=14590.0;
    }
   } else {
    s0+=121.0;
   }
  }
 }
} else {
 if(i0<0.0009605884552001953){
  if(i19<0.0017282022163271904){
   if(i8<0.9959511756896973){
    if(i38<0.0006593160796910524){
     s0+=14552.0;
     s1+=153.0;
    } else {
     s0+=2647.0;
     s1+=379.0;
    }
   } else {
    if(i25<1.1172127723693848){
     s0+=71710.0;
     s1+=335.0;
    } else {
     s0+=2667.0;
     s1+=119.0;
    }
   }
  } else {
   if(i26<1.1164028644561768){
    if(i58<0.9998392462730408){
     s0+=1756.0;
     s1+=96.0;
    } else {
     s0+=740.0;
     s1+=2906.0;
    }
   } else {
    if(i6<1.002431869506836){
     s0+=18251.0;
     s1+=1110.0;
    } else {
     s0+=1834.0;
     s1+=1053.0;
    }
   }
  }
 } else {
  if(i46<0.0008032689802348614){
   if(i32<0.00016914399748202413){
    s0+=57.0;
   } else {
    if(i18<0.0003452276869211346){
     s1+=1839.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i31<1.176405668258667){
    if(i18<0.0002429900923743844){
     s1+=93.0;
    } else {
     s0+=1709.0;
    }
   } else {
    if(i7<0.004833245649933815){
     s0+=31.0;
     s1+=2.0;
    } else {
     s0+=48.0;
     s1+=1292.0;
    }
   }
  }
 }
}
if(i4<0.0005705356597900391){
 if(i3<-8.190640073735267e-05){
  if(i15<0.062245458364486694){
   if(i16<0.9611485004425049){
    if(i76<-0.013536214828491211){
     s0+=11.0;
     s1+=19.0;
    } else {
     s0+=683.0;
     s1+=11.0;
    }
   } else {
    if(i7<0.015254134312272072){
     s0+=23.0;
     s1+=9.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i43<0.013679114170372486){
    if(i41<1.1631073951721191){
     s0+=64.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i50<-0.00010731180373113602){
     s0+=11.0;
    } else {
     s0+=46.0;
     s1+=837.0;
    }
   }
  }
 } else {
  if(i28<8.291006088256836e-05){
   if(i24<0.0006622941000387073){
    if(i38<0.0007214781362563372){
     s0+=25456.0;
     s1+=305.0;
    } else {
     s0+=945.0;
     s1+=499.0;
    }
   } else {
    if(i35<1.1215629577636719){
     s0+=50910.0;
     s1+=74.0;
    } else {
     s0+=855.0;
     s1+=92.0;
    }
   }
  } else {
   if(i19<0.0014521116390824318){
    if(i37<0.0019205338321626186){
     s0+=16422.0;
     s1+=74.0;
    } else {
     s0+=1563.0;
     s1+=169.0;
    }
   } else {
    if(i4<-1.990795135498047e-05){
     s0+=7806.0;
     s1+=236.0;
    } else {
     s0+=4961.0;
     s1+=2807.0;
    }
   }
  }
 }
} else {
 if(i7<0.003962837625294924){
  if(i10<1.0163497924804688){
   if(i47<-2.3394452000502497e-05){
    if(i70<0.06495106220245361){
     s0+=68.0;
     s1+=422.0;
    } else {
     s0+=138.0;
     s1+=7.0;
    }
   } else {
    if(i47<-1.3400789612205699e-05){
     s0+=757.0;
     s1+=134.0;
    } else {
     s0+=4000.0;
     s1+=47.0;
    }
   }
  } else {
   s1+=388.0;
  }
 } else {
  if(i15<0.1507112979888916){
   if(i20<-0.00019854307174682617){
    if(i74<0.00873628817498684){
     s0+=923.0;
     s1+=122.0;
    } else {
     s0+=401.0;
     s1+=646.0;
    }
   } else {
    if(i45<1.001128911972046){
     s0+=132.0;
     s1+=115.0;
    } else {
     s0+=274.0;
     s1+=3867.0;
    }
   }
  } else {
   if(i24<0.0023152572102844715){
    s0+=57.0;
   } else {
    if(i29<0.0025195761118084192){
     s0+=16.0;
     s1+=14.0;
    } else {
     s0+=48.0;
     s1+=13375.0;
    }
   }
  }
 }
}
if(i1<6.431341171264648e-05){
 if(i36<0.19277459383010864){
  if(i19<0.0017227325588464737){
   if(i32<0.0005575814284384251){
    if(i19<0.0013657172676175833){
     s0+=24309.0;
     s1+=332.0;
    } else {
     s0+=1270.0;
     s1+=423.0;
    }
   } else {
    if(i50<-1.858126233855728e-05){
     s0+=304.0;
     s1+=64.0;
    } else {
     s0+=65453.0;
     s1+=177.0;
    }
   }
  } else {
   if(i31<1.1164028644561768){
    if(i53<0.01027572713792324){
     s0+=1821.0;
     s1+=297.0;
    } else {
     s0+=1272.0;
     s1+=2749.0;
    }
   } else {
    if(i15<0.1352287232875824){
     s0+=17966.0;
     s1+=1261.0;
    } else {
     s0+=1624.0;
     s1+=1252.0;
    }
   }
  }
 } else {
  if(i38<0.0007874162984080613){
   if(i2<1.0030834674835205){
    if(i70<0.15268486738204956){
     s1+=2.0;
    } else {
     s0+=219.0;
     s1+=7.0;
    }
   } else {
    if(i13<1.0212936401367188){
     s0+=17.0;
     s1+=4.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i19<0.0024316960480064154){
    if(i8<1.006793737411499){
     s0+=60.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=29.0;
    }
   } else {
    if(i18<8.780320058576763e-05){
     s0+=8.0;
    } else {
     s0+=36.0;
     s1+=1285.0;
    }
   }
  }
 }
} else {
 if(i24<0.002359352307394147){
  if(i46<0.0007979542715474963){
   if(i37<0.00020862437668256462){
    s0+=72.0;
   } else {
    if(i24<0.0010843509808182716){
     s1+=2183.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i54<0.0008824471733532846){
    if(i29<0.0012887369375675917){
     s1+=79.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i26<1.0974079370498657){
     s1+=56.0;
    } else {
     s0+=1905.0;
    }
   }
  }
 } else {
  if(i33<-0.002181828022003174){
   if(i56<-1.7405331163899973e-05){
    if(i7<0.010434018447995186){
     s0+=8.0;
    } else {
     s0+=7.0;
     s1+=285.0;
    }
   } else {
    if(i39<1.0018348693847656){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=79.0;
     s1+=36.0;
    }
   }
  } else {
   if(i25<1.1342540979385376){
    if(i35<1.1340240240097046){
     s0+=21.0;
     s1+=3234.0;
    } else {
     s0+=16.0;
    }
   } else {
    s1+=10542.0;
   }
  }
 }
}
if(i11<1.0139775276184082){
 if(i4<0.000543057918548584){
  if(i15<0.20637288689613342){
   if(i28<7.575750350952148e-05){
    if(i7<0.019867297261953354){
     s0+=77075.0;
     s1+=791.0;
    } else {
     s0+=8.0;
     s1+=26.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=5345.0;
     s1+=2196.0;
    } else {
     s0+=26305.0;
     s1+=907.0;
    }
   }
  } else {
   if(i50<-8.251878170995042e-06){
    if(i43<0.015870854258537292){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=16.0;
     s1+=408.0;
    }
   } else {
    if(i15<0.20807671546936035){
     s0+=8.0;
     s1+=3.0;
    } else {
     s0+=197.0;
    }
   }
  }
 } else {
  if(i7<0.004079458769410849){
   if(i20<0.00018519163131713867){
    if(i18<0.0002421979879727587){
     s0+=338.0;
     s1+=75.0;
    } else {
     s0+=3838.0;
     s1+=3.0;
    }
   } else {
    if(i64<1.0427961349487305){
     s0+=68.0;
     s1+=273.0;
    } else {
     s0+=438.0;
     s1+=90.0;
    }
   }
  } else {
   if(i22<0.04508790373802185){
    if(i27<1.0026295185089111){
     s0+=756.0;
     s1+=159.0;
    } else {
     s0+=53.0;
     s1+=206.0;
    }
   } else {
    if(i57<0.998698353767395){
     s0+=149.0;
    } else {
     s0+=813.0;
     s1+=4774.0;
    }
   }
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i41<1.0905578136444092){
   if(i50<-1.8718470528256148e-05){
    s1+=1380.0;
   } else {
    if(i7<0.0028231521137058735){
     s0+=1.0;
    } else {
     s1+=146.0;
    }
   }
  } else {
   if(i32<0.0009695826447568834){
    s1+=193.0;
   } else {
    if(i7<0.0069601694121956825){
     s0+=794.0;
     s1+=22.0;
    } else {
     s0+=8.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i15<0.08579596877098083){
   if(i1<6.16908073425293e-05){
    if(i43<0.041404787451028824){
     s0+=93.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=16.0;
    }
   } else {
    if(i33<-0.00023430585861206055){
     s0+=10.0;
     s1+=2.0;
    } else {
     s1+=91.0;
    }
   }
  } else {
   if(i38<0.00015614874428138137){
    if(i2<1.008827805519104){
     s0+=55.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i4<0.0001601576805114746){
     s0+=76.0;
     s1+=135.0;
    } else {
     s0+=93.0;
     s1+=12246.0;
    }
   }
  }
 }
}
if(i5<2.1636486053466797e-05){
 if(i17<0.2292199730873108){
  if(i21<0.006644213106483221){
   if(i33<-0.0004355907440185547){
    if(i29<0.0006348490715026855){
     s0+=2208.0;
     s1+=362.0;
    } else {
     s0+=4901.0;
     s1+=22.0;
    }
   } else {
    if(i8<1.0092871189117432){
     s0+=60081.0;
     s1+=104.0;
    } else {
     s0+=786.0;
     s1+=90.0;
    }
   }
  } else {
   if(i20<-0.00010919570922851562){
    if(i6<0.9982550144195557){
     s0+=29187.0;
     s1+=336.0;
    } else {
     s0+=5003.0;
     s1+=1061.0;
    }
   } else {
    if(i12<1.0002199411392212){
     s0+=5347.0;
     s1+=271.0;
    } else {
     s0+=1970.0;
     s1+=2364.0;
    }
   }
  }
 } else {
  if(i32<0.011459136381745338){
   if(i56<-3.930667389795417e-06){
    if(i54<0.003942600451409817){
     s0+=16.0;
     s1+=8.0;
    } else {
     s0+=3.0;
     s1+=108.0;
    }
   } else {
    if(i57<1.0009517669677734){
     s0+=112.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   }
  } else {
   if(i46<0.004826393444091082){
    s0+=2.0;
   } else {
    s1+=434.0;
   }
  }
 }
} else {
 if(i37<0.0030024144798517227){
  if(i47<-2.683638740563765e-05){
   if(i24<0.0010752036469057202){
    s1+=1341.0;
   } else {
    if(i31<1.1766860485076904){
     s0+=108.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i19<0.0020932997576892376){
    if(i67<-0.0004000663757324219){
     s0+=156.0;
     s1+=78.0;
    } else {
     s0+=3664.0;
     s1+=173.0;
    }
   } else {
    if(i28<0.00042176246643066406){
     s0+=107.0;
     s1+=1408.0;
    } else {
     s0+=1227.0;
     s1+=312.0;
    }
   }
  }
 } else {
  if(i15<0.08144751191139221){
   if(i12<1.0057989358901978){
    if(i35<1.0529766082763672){
     s0+=891.0;
     s1+=87.0;
    } else {
     s0+=208.0;
     s1+=227.0;
    }
   } else {
    if(i3<-8.57218838064e-05){
     s0+=18.0;
     s1+=293.0;
    } else {
     s0+=69.0;
     s1+=86.0;
    }
   }
  } else {
   if(i25<1.0742030143737793){
    if(i31<1.2295931577682495){
     s0+=57.0;
     s1+=10.0;
    } else {
     s0+=55.0;
     s1+=269.0;
    }
   } else {
    if(i38<0.004030384123325348){
     s0+=220.0;
     s1+=14961.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i22<0.23359841108322144){
  if(i14<1.0181578397750854){
   if(i7<0.003559643169865012){
    if(i26<1.1162974834442139){
     s0+=25976.0;
     s1+=771.0;
    } else {
     s0+=60004.0;
     s1+=163.0;
    }
   } else {
    if(i4<-0.00010889768600463867){
     s0+=19164.0;
     s1+=235.0;
    } else {
     s0+=3948.0;
     s1+=2948.0;
    }
   }
  } else {
   if(i3<-3.196890975232236e-05){
    if(i45<0.9995201826095581){
     s0+=103.0;
     s1+=4.0;
    } else {
     s0+=100.0;
     s1+=460.0;
    }
   } else {
    if(i47<0.0001544855913380161){
     s0+=486.0;
     s1+=22.0;
    } else {
     s0+=5.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i21<0.037181124091148376){
   if(i46<0.006691649090498686){
    if(i30<-0.00019779872673097998){
     s0+=9.0;
     s1+=39.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i19<0.0029097511433064938){
     s0+=69.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.038527704775333405){
    if(i34<1.4076735973358154){
     s1+=2.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=549.0;
   }
  }
 }
} else {
 if(i18<0.0007055420428514481){
  if(i0<0.0009211301803588867){
   if(i7<0.004436700604856014){
    if(i28<0.0004163086414337158){
     s0+=204.0;
     s1+=67.0;
    } else {
     s0+=1443.0;
     s1+=1.0;
    }
   } else {
    if(i22<0.05892467498779297){
     s0+=798.0;
     s1+=256.0;
    } else {
     s0+=485.0;
     s1+=2343.0;
    }
   }
  } else {
   if(i7<0.0044253673404455185){
    if(i52<-4.578603693516925e-06){
     s0+=130.0;
     s1+=6.0;
    } else {
     s0+=76.0;
     s1+=1201.0;
    }
   } else {
    if(i2<1.0028060674667358){
     s0+=21.0;
     s1+=16.0;
    } else {
     s0+=82.0;
     s1+=15233.0;
    }
   }
  }
 } else {
  s0+=3408.0;
 }
}
if(i1<6.407499313354492e-05){
 if(i7<0.0076319556683301926){
  if(i32<0.0009898565476760268){
   if(i4<0.00013893842697143555){
    if(i38<0.0007071554427966475){
     s0+=25924.0;
     s1+=278.0;
    } else {
     s0+=2847.0;
     s1+=1086.0;
    }
   } else {
    if(i51<0.011587305925786495){
     s0+=4099.0;
     s1+=629.0;
    } else {
     s0+=345.0;
     s1+=876.0;
    }
   }
  } else {
   if(i7<0.00582902180030942){
    if(i32<0.0018417106475681067){
     s0+=52944.0;
     s1+=25.0;
    } else {
     s0+=18576.0;
     s1+=629.0;
    }
   } else {
    if(i6<0.9983046054840088){
     s0+=4438.0;
     s1+=57.0;
    } else {
     s0+=627.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i2<0.9979263544082642){
   if(i22<0.16803497076034546){
    if(i21<0.07191939651966095){
     s0+=4232.0;
     s1+=171.0;
    } else {
     s0+=33.0;
     s1+=57.0;
    }
   } else {
    if(i7<0.010062184184789658){
     s0+=24.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=243.0;
    }
   }
  } else {
   if(i44<0.9880340099334717){
    if(i22<0.04218101501464844){
     s0+=427.0;
     s1+=118.0;
    } else {
     s0+=163.0;
     s1+=973.0;
    }
   } else {
    if(i48<-0.0004986822605133057){
     s0+=16.0;
    } else {
     s0+=49.0;
     s1+=2034.0;
    }
   }
  }
 }
} else {
 if(i8<1.0179795026779175){
  if(i48<2.0205974578857422e-05){
   if(i61<0.00016343049355782568){
    if(i22<0.10480934381484985){
     s0+=415.0;
     s1+=927.0;
    } else {
     s0+=544.0;
     s1+=206.0;
    }
   } else {
    if(i22<0.0395713746547699){
     s0+=54.0;
     s1+=105.0;
    } else {
     s0+=83.0;
     s1+=2665.0;
    }
   }
  } else {
   if(i24<0.004693891387432814){
    s0+=876.0;
   } else {
    s1+=180.0;
   }
  }
 } else {
  if(i28<0.0017597973346710205){
   if(i34<1.1573951244354248){
    if(i52<-3.3997439459199086e-06){
     s0+=59.0;
    } else {
     s1+=964.0;
    }
   } else {
    if(i16<1.0144071578979492){
     s0+=2.0;
     s1+=392.0;
    } else {
     s1+=10775.0;
    }
   }
  } else {
   s0+=27.0;
  }
 }
}
if(i15<0.18752101063728333){
 if(i4<0.0005331635475158691){
  if(i26<1.1162974834442139){
   if(i34<1.05497145652771){
    if(i41<1.0545225143432617){
     s0+=19411.0;
     s1+=135.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i11<1.0060219764709473){
     s0+=9189.0;
     s1+=2244.0;
    } else {
     s0+=239.0;
     s1+=637.0;
    }
   }
  } else {
   if(i40<1.127637267112732){
    if(i59<0.0015623130602762103){
     s0+=70846.0;
     s1+=177.0;
    } else {
     s0+=2991.0;
     s1+=189.0;
    }
   } else {
    if(i24<0.002022570464760065){
     s0+=2758.0;
    } else {
     s0+=3380.0;
     s1+=671.0;
    }
   }
  }
 } else {
  if(i7<0.003473324701189995){
   if(i3<-8.78718274179846e-05){
    if(i56<-1.8663209630176425e-05){
     s0+=74.0;
     s1+=5.0;
    } else {
     s0+=6.0;
     s1+=202.0;
    }
   } else {
    if(i42<-1.4837795788480435e-05){
     s0+=47.0;
     s1+=289.0;
    } else {
     s0+=4760.0;
     s1+=102.0;
    }
   }
  } else {
   if(i27<0.9996600151062012){
    if(i35<1.1154758930206299){
     s0+=1355.0;
     s1+=434.0;
    } else {
     s0+=34.0;
     s1+=290.0;
    }
   } else {
    if(i52<-6.409925845218822e-06){
     s0+=294.0;
    } else {
     s0+=626.0;
     s1+=5841.0;
    }
   }
  }
 }
} else {
 if(i34<1.175400972366333){
  if(i7<0.007501405663788319){
   if(i31<1.1740410327911377){
    if(i29<0.0019227287266403437){
     s0+=387.0;
    } else {
     s0+=15.0;
     s1+=4.0;
    }
   } else {
    if(i1<-2.562999725341797e-06){
     s0+=44.0;
    } else {
     s0+=6.0;
     s1+=18.0;
    }
   }
  } else {
   if(i2<0.999086856842041){
    s0+=5.0;
   } else {
    s1+=31.0;
   }
  }
 } else {
  if(i7<0.0049734171479940414){
   if(i4<0.0007594823837280273){
    if(i2<1.0025415420532227){
     s0+=239.0;
     s1+=11.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i20<-0.00013774633407592773){
     s0+=15.0;
    } else {
     s1+=194.0;
    }
   }
  } else {
   if(i47<0.00046750862384215){
    if(i50<-6.6572215473570395e-06){
     s0+=25.0;
     s1+=12603.0;
    } else {
     s0+=17.0;
    }
   } else {
    s0+=2.0;
   }
  }
 }
}
if(i4<0.000588834285736084){
 if(i25<1.1403480768203735){
  if(i19<0.001569461077451706){
   if(i40<1.1354830265045166){
    if(i50<-1.8750608433037996e-05){
     s0+=3.0;
     s1+=12.0;
    } else {
     s0+=84449.0;
     s1+=609.0;
    }
   } else {
    if(i41<1.1355493068695068){
     s1+=56.0;
    } else {
     s0+=1488.0;
     s1+=63.0;
    }
   }
  } else {
   if(i1<-2.485513687133789e-05){
    if(i24<0.0009680413641035557){
     s0+=1043.0;
     s1+=382.0;
    } else {
     s0+=19163.0;
     s1+=394.0;
    }
   } else {
    if(i39<1.0000430345535278){
     s0+=2217.0;
     s1+=54.0;
    } else {
     s0+=943.0;
     s1+=2684.0;
    }
   }
  }
 } else {
  if(i42<1.690866338321939e-05){
   if(i7<0.005959078669548035){
    if(i25<1.1429399251937866){
     s0+=28.0;
     s1+=3.0;
    } else {
     s0+=779.0;
    }
   } else {
    s1+=224.0;
   }
  } else {
   if(i21<0.02877802774310112){
    if(i3<-0.00010860984184546396){
     s1+=1.0;
    } else {
     s0+=132.0;
     s1+=1.0;
    }
   } else {
    if(i64<0.9237526655197144){
     s0+=29.0;
     s1+=12.0;
    } else {
     s0+=11.0;
     s1+=622.0;
    }
   }
  }
 }
} else {
 if(i21<0.00771347526460886){
  if(i18<0.00027375633362680674){
   if(i20<-1.811981201171875e-05){
    if(i68<0.004382014274597168){
     s0+=179.0;
     s1+=4.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i57<1.001694917678833){
     s0+=44.0;
     s1+=1946.0;
    } else {
     s0+=21.0;
     s1+=33.0;
    }
   }
  } else {
   if(i16<1.0330533981323242){
    if(i72<-0.12095904350280762){
     s1+=2.0;
    } else {
     s0+=4359.0;
     s1+=9.0;
    }
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i0<0.00035834312438964844){
   if(i7<0.008209802210330963){
    if(i44<0.929953932762146){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=557.0;
     s1+=39.0;
    }
   } else {
    if(i67<-0.003359287977218628){
     s0+=462.0;
     s1+=321.0;
    } else {
     s0+=78.0;
     s1+=438.0;
    }
   }
  } else {
   if(i29<0.002671200782060623){
    if(i7<0.004588809795677662){
     s0+=353.0;
     s1+=90.0;
    } else {
     s0+=96.0;
     s1+=1372.0;
    }
   } else {
    if(i22<0.07658779621124268){
     s0+=201.0;
     s1+=442.0;
    } else {
     s0+=119.0;
     s1+=14242.0;
    }
   }
  }
 }
}
if(i3<-9.283507824875414e-05){
 if(i16<0.947498083114624){
  if(i22<0.11854574084281921){
   if(i16<0.9429657459259033){
    if(i57<1.0025391578674316){
     s0+=623.0;
     s1+=26.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i72<-0.0716320276260376){
     s0+=7.0;
     s1+=25.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   }
  } else {
   if(i28<0.000665128231048584){
    s1+=74.0;
   } else {
    if(i64<1.0119284391403198){
     s0+=4.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<0.0002281665802001953){
   if(i52<-6.611284334212542e-06){
    s0+=193.0;
   } else {
    if(i33<-0.0018365085124969482){
     s0+=149.0;
     s1+=1008.0;
    } else {
     s0+=45.0;
     s1+=14738.0;
    }
   }
  } else {
   s0+=66.0;
  }
 }
} else {
 if(i10<1.0075582265853882){
  if(i5<2.294778823852539e-05){
   if(i23<1.0212345123291016){
    if(i7<0.0033554125111550093){
     s0+=83430.0;
     s1+=858.0;
    } else {
     s0+=24510.0;
     s1+=2983.0;
    }
   } else {
    if(i45<1.00027334690094){
     s0+=455.0;
     s1+=10.0;
    } else {
     s0+=292.0;
     s1+=318.0;
    }
   }
  } else {
   if(i37<0.00022923105279915035){
    s0+=1233.0;
   } else {
    if(i21<0.020058173686265945){
     s0+=1549.0;
     s1+=383.0;
    } else {
     s0+=649.0;
     s1+=987.0;
    }
   }
  }
 } else {
  if(i21<0.01063813641667366){
   if(i31<1.1174830198287964){
    if(i25<1.0929360389709473){
     s0+=18.0;
     s1+=1452.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i24<0.0026629739440977573){
     s0+=2568.0;
    } else {
     s0+=239.0;
     s1+=111.0;
    }
   }
  } else {
   if(i56<-3.2787834243208636e-06){
    if(i31<1.4586446285247803){
     s0+=76.0;
     s1+=1541.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i3<-8.241078467108309e-05){
     s1+=1.0;
    } else {
     s0+=139.0;
    }
   }
  }
 }
}
if(i5<2.4378299713134766e-05){
 if(i13<1.0164077281951904){
  if(i60<0.0037553817965090275){
   if(i21<0.006584495306015015){
    if(i61<0.00021994765847921371){
     s0+=65124.0;
     s1+=266.0;
    } else {
     s0+=1857.0;
     s1+=239.0;
    }
   } else {
    if(i12<1.000084400177002){
     s0+=31862.0;
     s1+=555.0;
    } else {
     s0+=7034.0;
     s1+=2749.0;
    }
   }
  } else {
   if(i64<1.0674623250961304){
    if(i6<1.0021653175354004){
     s0+=3298.0;
     s1+=373.0;
    } else {
     s0+=385.0;
     s1+=225.0;
    }
   } else {
    if(i38<0.0005918226670473814){
     s0+=135.0;
    } else {
     s0+=24.0;
     s1+=248.0;
    }
   }
  }
 } else {
  if(i12<1.0001394748687744){
   if(i17<0.2725159823894501){
    if(i9<1.0000696182250977){
     s1+=5.0;
    } else {
     s0+=495.0;
     s1+=7.0;
    }
   } else {
    if(i3<-6.680650403723121e-05){
     s1+=132.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i19<0.0016795964911580086){
    if(i28<0.00011467933654785156){
     s0+=102.0;
    } else {
     s0+=76.0;
     s1+=37.0;
    }
   } else {
    if(i65<5.124076778884046e-06){
     s0+=19.0;
     s1+=764.0;
    } else {
     s0+=198.0;
     s1+=133.0;
    }
   }
  }
 }
} else {
 if(i41<1.171312928199768){
  if(i33<0.001986265182495117){
   if(i55<0.0006986877415329218){
    if(i29<0.0002559050335548818){
     s0+=1060.0;
    } else {
     s0+=372.0;
     s1+=1570.0;
    }
   } else {
    if(i29<0.0021109760273247957){
     s0+=3060.0;
     s1+=83.0;
    } else {
     s0+=384.0;
     s1+=642.0;
    }
   }
  } else {
   if(i19<0.004157014191150665){
    s1+=1393.0;
   } else {
    if(i65<-4.679344328906154e-06){
     s1+=49.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i33<-0.002489149570465088){
   if(i25<1.0915907621383667){
    if(i56<-1.89403144759126e-05){
     s0+=57.0;
     s1+=93.0;
    } else {
     s0+=654.0;
     s1+=76.0;
    }
   } else {
    if(i73<-0.015621691942214966){
     s0+=86.0;
     s1+=126.0;
    } else {
     s0+=89.0;
     s1+=519.0;
    }
   }
  } else {
   if(i3<-8.108839392662048e-05){
    if(i13<0.9490041136741638){
     s0+=29.0;
     s1+=238.0;
    } else {
     s0+=20.0;
     s1+=13008.0;
    }
   } else {
    if(i22<0.09857329726219177){
     s0+=71.0;
     s1+=60.0;
    } else {
     s0+=61.0;
     s1+=687.0;
    }
   }
  }
 }
}
if(i0<0.0009554624557495117){
 if(i4<0.0003281235694885254){
  if(i17<0.23566213250160217){
   if(i4<0.00015372037887573242){
    if(i12<0.9994590282440186){
     s0+=52135.0;
     s1+=266.0;
    } else {
     s0+=42521.0;
     s1+=1734.0;
    }
   } else {
    if(i7<0.003667679615318775){
     s0+=9217.0;
     s1+=110.0;
    } else {
     s0+=944.0;
     s1+=900.0;
    }
   }
  } else {
   if(i21<0.037181124091148376){
    if(i45<1.002396821975708){
     s0+=95.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i42<1.1837253623525612e-05){
     s0+=1.0;
    } else {
     s1+=290.0;
    }
   }
  }
 } else {
  if(i53<0.03642640262842178){
   if(i16<1.0140113830566406){
    if(i19<0.002017308259382844){
     s0+=5203.0;
     s1+=50.0;
    } else {
     s0+=1871.0;
     s1+=824.0;
    }
   } else {
    if(i44<1.022860050201416){
     s0+=88.0;
     s1+=83.0;
    } else {
     s0+=7.0;
     s1+=196.0;
    }
   }
  } else {
   if(i15<0.1328292191028595){
    if(i37<0.002245502080768347){
     s0+=237.0;
     s1+=605.0;
    } else {
     s0+=1982.0;
     s1+=785.0;
    }
   } else {
    if(i7<0.006236447487026453){
     s0+=154.0;
     s1+=127.0;
    } else {
     s0+=55.0;
     s1+=1816.0;
    }
   }
  }
 }
} else {
 if(i7<0.003433543024584651){
  if(i38<0.0008705976651981473){
   if(i48<1.2636184692382812e-05){
    if(i2<1.0069856643676758){
     s0+=75.0;
    } else {
     s0+=12.0;
     s1+=535.0;
    }
   } else {
    if(i27<1.015934944152832){
     s0+=228.0;
     s1+=12.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i18<0.0004350778763182461){
    s1+=39.0;
   } else {
    s0+=1258.0;
   }
  }
 } else {
  if(i39<1.0008677244186401){
   if(i37<0.010239887051284313){
    if(i32<0.0009639666532166302){
     s1+=3.0;
    } else {
     s0+=254.0;
    }
   } else {
    s1+=304.0;
   }
  } else {
   if(i1<8.45789909362793e-05){
    if(i30<-0.0001881373318610713){
     s0+=31.0;
     s1+=1056.0;
    } else {
     s0+=138.0;
     s1+=216.0;
    }
   } else {
    if(i57<0.9989904165267944){
     s0+=22.0;
    } else {
     s0+=74.0;
     s1+=14198.0;
    }
   }
  }
 }
}
if(i0<0.0009595751762390137){
 if(i3<-7.645013829460368e-05){
  if(i22<0.07365629076957703){
   if(i30<-0.00029790529515594244){
    if(i73<-0.016553103923797607){
     s0+=144.0;
     s1+=36.0;
    } else {
     s0+=65.0;
     s1+=135.0;
    }
   } else {
    if(i35<1.09660005569458){
     s0+=1106.0;
     s1+=64.0;
    } else {
     s0+=6.0;
     s1+=15.0;
    }
   }
  } else {
   if(i37<0.0024100840091705322){
    if(i26<1.1207046508789062){
     s1+=85.0;
    } else {
     s0+=147.0;
     s1+=3.0;
    }
   } else {
    if(i15<0.1193886399269104){
     s0+=87.0;
     s1+=321.0;
    } else {
     s0+=22.0;
     s1+=1856.0;
    }
   }
  }
 } else {
  if(i28<9.959936141967773e-05){
   if(i38<0.00062806427013129){
    if(i54<0.0002522580907680094){
     s0+=19596.0;
     s1+=152.0;
    } else {
     s0+=42677.0;
    }
   } else {
    if(i26<1.0907573699951172){
     s0+=1819.0;
     s1+=739.0;
    } else {
     s0+=17375.0;
     s1+=197.0;
    }
   }
  } else {
   if(i21<0.007391928695142269){
    if(i49<1.0472192764282227){
     s0+=19187.0;
     s1+=451.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   } else {
    if(i47<9.034336835611612e-05){
     s0+=3220.0;
     s1+=3132.0;
    } else {
     s0+=9299.0;
     s1+=710.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i62<0.0005022452678531408){
   if(i48<1.3053417205810547e-05){
    if(i18<0.00025127941626124084){
     s1+=2180.0;
    } else {
     s0+=37.0;
    }
   } else {
    if(i41<1.0878286361694336){
     s0+=43.0;
     s1+=13.0;
    } else {
     s0+=132.0;
    }
   }
  } else {
   if(i10<1.0163103342056274){
    if(i24<0.0009277622448280454){
     s1+=98.0;
    } else {
     s0+=1613.0;
     s1+=25.0;
    }
   } else {
    s1+=97.0;
   }
  }
 } else {
  if(i15<0.09402292966842651){
   if(i2<1.0072299242019653){
    if(i14<1.0055153369903564){
     s0+=43.0;
     s1+=99.0;
    } else {
     s0+=54.0;
     s1+=7.0;
    }
   } else {
    if(i62<0.006993270479142666){
     s0+=1.0;
     s1+=433.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i59<0.015344128012657166){
    if(i33<-8.308887481689453e-05){
     s0+=10.0;
     s1+=1203.0;
    } else {
     s1+=12097.0;
    }
   } else {
    if(i32<0.04086031764745712){
     s1+=1.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i1<6.383657455444336e-05){
 if(i25<1.1402318477630615){
  if(i5<2.3066997528076172e-05){
   if(i7<0.0036596832796931267){
    if(i35<1.0178465843200684){
     s0+=10102.0;
     s1+=531.0;
    } else {
     s0+=76543.0;
     s1+=532.0;
    }
   } else {
    if(i27<0.9960203170776367){
     s0+=17325.0;
     s1+=559.0;
    } else {
     s0+=5187.0;
     s1+=2815.0;
    }
   }
  } else {
   if(i7<0.00445415498688817){
    if(i16<1.022453784942627){
     s0+=2891.0;
     s1+=36.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   } else {
    if(i30<-0.0002626543282531202){
     s0+=211.0;
     s1+=823.0;
    } else {
     s0+=1006.0;
     s1+=542.0;
    }
   }
  }
 } else {
  if(i21<0.033703193068504333){
   if(i50<-1.750895899021998e-05){
    if(i42<3.361912240507081e-05){
     s0+=21.0;
     s1+=153.0;
    } else {
     s0+=133.0;
     s1+=17.0;
    }
   } else {
    if(i14<1.0532503128051758){
     s0+=976.0;
     s1+=10.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i25<1.6057538986206055){
    if(i13<0.892730176448822){
     s0+=38.0;
     s1+=42.0;
    } else {
     s0+=58.0;
     s1+=1792.0;
    }
   } else {
    if(i12<0.9976884126663208){
     s1+=9.0;
    } else {
     s0+=33.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i37<0.0012518188450485468){
   if(i41<1.0462350845336914){
    s0+=74.0;
   } else {
    if(i52<-4.208175596431829e-06){
     s0+=46.0;
    } else {
     s0+=8.0;
     s1+=2152.0;
    }
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=217.0;
   } else {
    if(i26<1.2318363189697266){
     s0+=1823.0;
    } else {
     s0+=5.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i20<-0.0003243088722229004){
   if(i21<0.0343916229903698){
    if(i12<1.0073741674423218){
     s0+=67.0;
     s1+=22.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i19<0.005546891130506992){
     s0+=14.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=308.0;
    }
   }
  } else {
   if(i2<1.0072282552719116){
    if(i17<0.10510936379432678){
     s0+=21.0;
     s1+=96.0;
    } else {
     s0+=10.0;
     s1+=1170.0;
    }
   } else {
    if(i15<0.045426249504089355){
     s0+=2.0;
     s1+=83.0;
    } else {
     s1+=12246.0;
    }
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i25<1.1402404308319092){
  if(i5<1.8298625946044922e-05){
   if(i29<0.0010622595436871052){
    if(i34<1.05497145652771){
     s0+=20730.0;
     s1+=127.0;
    } else {
     s0+=9575.0;
     s1+=2552.0;
    }
   } else {
    if(i26<1.0905578136444092){
     s1+=40.0;
    } else {
     s0+=76718.0;
     s1+=794.0;
    }
   }
  } else {
   if(i54<0.00016933644656091928){
    if(i16<1.0096454620361328){
     s0+=1973.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=53.0;
    }
   } else {
    if(i24<0.0009702016250230372){
     s0+=52.0;
     s1+=1427.0;
    } else {
     s0+=5192.0;
     s1+=2004.0;
    }
   }
  }
 } else {
  if(i50<-1.8247066691401415e-05){
   if(i43<0.07579463720321655){
    if(i65<3.1933109312376473e-07){
     s0+=21.0;
     s1+=126.0;
    } else {
     s0+=123.0;
     s1+=11.0;
    }
   } else {
    if(i64<0.8872619867324829){
     s0+=23.0;
     s1+=24.0;
    } else {
     s0+=48.0;
     s1+=2413.0;
    }
   }
  } else {
   if(i21<0.038527704775333405){
    if(i21<0.03828684985637665){
     s0+=974.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   } else {
    s1+=64.0;
   }
  }
 }
} else {
 if(i10<1.014490008354187){
  if(i57<0.9997111558914185){
   if(i37<0.010996254161000252){
    s0+=315.0;
   } else {
    s1+=87.0;
   }
  } else {
   if(i58<1.0035431385040283){
    if(i52<-5.553196388063952e-06){
     s0+=29.0;
     s1+=5.0;
    } else {
     s0+=325.0;
     s1+=2216.0;
    }
   } else {
    if(i54<0.0032958337105810642){
     s0+=359.0;
     s1+=27.0;
    } else {
     s0+=104.0;
     s1+=441.0;
    }
   }
  }
 } else {
  if(i41<1.1133074760437012){
   if(i12<1.0061583518981934){
    s1+=820.0;
   } else {
    s0+=63.0;
   }
  } else {
   if(i24<0.0004715066752396524){
    s0+=2.0;
   } else {
    s1+=10979.0;
   }
  }
 }
}
if(i4<0.0005705356597900391){
 if(i14<1.0181355476379395){
  if(i21<0.006775439716875553){
   if(i61<0.0002329990384168923){
    if(i25<1.010236382484436){
     s0+=2.0;
     s1+=22.0;
    } else {
     s0+=66015.0;
     s1+=209.0;
    }
   } else {
    if(i53<0.028146281838417053){
     s0+=627.0;
     s1+=250.0;
    } else {
     s0+=1659.0;
     s1+=40.0;
    }
   }
  } else {
   if(i24<0.0009688786813057959){
    if(i38<0.0007045845268294215){
     s0+=7325.0;
     s1+=92.0;
    } else {
     s0+=792.0;
     s1+=2368.0;
    }
   } else {
    if(i60<0.004027070477604866){
     s0+=30836.0;
     s1+=653.0;
    } else {
     s0+=2006.0;
     s1+=573.0;
    }
   }
  }
 } else {
  if(i39<1.0003036260604858){
   if(i37<0.01326773315668106){
    if(i41<1.0867587327957153){
     s1+=4.0;
    } else {
     s0+=347.0;
    }
   } else {
    s1+=156.0;
   }
  } else {
   if(i57<1.0014879703521729){
    if(i19<0.001193720381706953){
     s0+=143.0;
     s1+=27.0;
    } else {
     s0+=19.0;
     s1+=684.0;
    }
   } else {
    if(i41<1.2433271408081055){
     s0+=191.0;
     s1+=6.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i37<0.003007161198183894){
  if(i48<1.4483928680419922e-05){
   if(i18<0.00029559945687651634){
    if(i20<-9.822845458984375e-05){
     s0+=247.0;
     s1+=21.0;
    } else {
     s0+=145.0;
     s1+=3310.0;
    }
   } else {
    if(i29<0.002312252065166831){
     s0+=2288.0;
     s1+=1.0;
    } else {
     s0+=63.0;
     s1+=87.0;
    }
   }
  } else {
   if(i68<-0.0022579729557037354){
    if(i46<0.003564976155757904){
     s1+=8.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i29<0.002891410607844591){
     s0+=2512.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i17<0.08353769779205322){
   if(i2<1.006206750869751){
    if(i74<0.022103555500507355){
     s0+=894.0;
     s1+=59.0;
    } else {
     s0+=181.0;
     s1+=266.0;
    }
   } else {
    if(i76<0.00048357248306274414){
     s1+=272.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   }
  } else {
   if(i3<-6.542388291563839e-05){
    if(i35<0.9586949348449707){
     s0+=12.0;
     s1+=1.0;
    } else {
     s0+=54.0;
     s1+=14332.0;
    }
   } else {
    if(i27<0.9982128143310547){
     s0+=269.0;
     s1+=183.0;
    } else {
     s0+=42.0;
     s1+=491.0;
    }
   }
  }
 }
}
if(i10<1.0101714134216309){
 if(i0<0.0009605884552001953){
  if(i22<0.20778396725654602){
   if(i43<0.014394126832485199){
    if(i10<1.005873441696167){
     s0+=75010.0;
     s1+=922.0;
    } else {
     s0+=2004.0;
     s1+=380.0;
    }
   } else {
    if(i4<0.00015592575073242188){
     s0+=31846.0;
     s1+=1380.0;
    } else {
     s0+=4746.0;
     s1+=3323.0;
    }
   }
  } else {
   if(i43<0.04990818351507187){
    if(i19<0.0036761127412319183){
     s0+=228.0;
     s1+=12.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i3<-5.962898285361007e-06){
     s0+=21.0;
     s1+=1167.0;
    } else {
     s0+=63.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i53<0.04484464228153229){
   if(i7<0.002431169617921114){
    if(i6<1.0107481479644775){
     s0+=456.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i71<1.405131797582726e-06){
     s0+=111.0;
     s1+=490.0;
    } else {
     s0+=126.0;
    }
   }
  } else {
   if(i26<1.629280686378479){
    if(i56<-3.6251800338504836e-05){
     s0+=10.0;
    } else {
     s0+=54.0;
     s1+=2051.0;
    }
   } else {
    if(i29<0.00946417823433876){
     s0+=26.0;
    } else {
     s0+=15.0;
     s1+=84.0;
    }
   }
  }
 }
} else {
 if(i24<0.002555079758167267){
  if(i46<0.0008961473358795047){
   if(i31<1.1180615425109863){
    s1+=2122.0;
   } else {
    s0+=58.0;
   }
  } else {
   if(i53<0.04765783250331879){
    if(i32<0.0022474867291748524){
     s0+=1312.0;
     s1+=11.0;
    } else {
     s0+=43.0;
     s1+=33.0;
    }
   } else {
    if(i41<1.4058839082717896){
     s0+=25.0;
     s1+=100.0;
    } else {
     s0+=59.0;
    }
   }
  }
 } else {
  if(i37<0.002489358652383089){
   if(i42<8.457442163489759e-06){
    s1+=4.0;
   } else {
    s0+=36.0;
   }
  } else {
   if(i1<-3.17692756652832e-05){
    s0+=31.0;
   } else {
    if(i26<1.4667320251464844){
     s1+=10275.0;
    } else {
     s0+=41.0;
     s1+=2135.0;
    }
   }
  }
 }
}
if(i11<1.0136470794677734){
 if(i22<0.20067045092582703){
  if(i5<1.6748905181884766e-05){
   if(i61<0.0001833255373639986){
    if(i43<0.014419365674257278){
     s0+=69785.0;
     s1+=597.0;
    } else {
     s0+=11182.0;
     s1+=888.0;
    }
   } else {
    if(i33<-0.0013505220413208008){
     s0+=20065.0;
     s1+=470.0;
    } else {
     s0+=5429.0;
     s1+=1490.0;
    }
   }
  } else {
   if(i7<0.003985953517258167){
    if(i18<8.613343379693106e-05){
     s0+=40.0;
     s1+=124.0;
    } else {
     s0+=6030.0;
     s1+=254.0;
    }
   } else {
    if(i16<0.9877556562423706){
     s0+=1658.0;
     s1+=1351.0;
    } else {
     s0+=599.0;
     s1+=2777.0;
    }
   }
  }
 } else {
  if(i53<0.041644856333732605){
   if(i56<-1.3803797628497705e-05){
    if(i18<0.0008375063771381974){
     s1+=36.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i0<0.0011219978332519531){
     s0+=318.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   }
  } else {
   if(i50<-7.045894562907051e-06){
    if(i29<0.006905801128596067){
     s0+=45.0;
     s1+=327.0;
    } else {
     s0+=6.0;
     s1+=1504.0;
    }
   } else {
    s0+=98.0;
   }
  }
 }
} else {
 if(i33<0.0019156932830810547){
  if(i15<0.1935742199420929){
   if(i7<0.006386946886777878){
    if(i29<0.0005077854148112237){
     s1+=383.0;
    } else {
     s0+=1110.0;
     s1+=104.0;
    }
   } else {
    if(i33<-0.0021169185638427734){
     s0+=9.0;
    } else {
     s0+=6.0;
     s1+=1145.0;
    }
   }
  } else {
   if(i50<-7.509521765314275e-06){
    if(i37<0.0019120187498629093){
     s0+=17.0;
    } else {
     s0+=16.0;
     s1+=2203.0;
    }
   } else {
    s0+=17.0;
   }
  }
 } else {
  if(i65<1.7285958165302873e-05){
   if(i29<0.002169461688026786){
    if(i56<-1.806913314794656e-05){
     s0+=15.0;
    } else {
     s1+=964.0;
    }
   } else {
    s1+=9764.0;
   }
  } else {
   s0+=4.0;
  }
 }
}
if(i3<-8.856481872498989e-05){
 if(i17<0.04151874780654907){
  if(i10<0.9808595180511475){
   if(i49<0.7905945181846619){
    if(i40<1.256526231765747){
     s0+=3.0;
     s1+=32.0;
    } else {
     s0+=63.0;
     s1+=7.0;
    }
   } else {
    if(i39<1.0046716928482056){
     s0+=707.0;
     s1+=8.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i51<0.025630146265029907){
    if(i55<0.0009104624041356146){
     s1+=5.0;
    } else {
     s0+=58.0;
     s1+=21.0;
    }
   } else {
    if(i43<0.007210429757833481){
     s0+=5.0;
    } else {
     s0+=11.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i71<5.7961542552220635e-06){
   if(i8<0.9176961183547974){
    if(i53<0.29778656363487244){
     s0+=43.0;
     s1+=6.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i38<0.0039860461838543415){
     s0+=215.0;
     s1+=15884.0;
    } else {
     s0+=31.0;
     s1+=1.0;
    }
   }
  } else {
   s0+=150.0;
  }
 }
} else {
 if(i9<1.017686128616333){
  if(i5<1.5079975128173828e-05){
   if(i26<1.1162974834442139){
    if(i58<1.0003628730773926){
     s0+=18645.0;
     s1+=478.0;
    } else {
     s0+=9161.0;
     s1+=1956.0;
    }
   } else {
    if(i57<1.002579689025879){
     s0+=77780.0;
     s1+=659.0;
    } else {
     s0+=73.0;
     s1+=50.0;
    }
   }
  } else {
   if(i1<9.447336196899414e-05){
    if(i3<-4.4543459807755426e-05){
     s0+=1345.0;
     s1+=1046.0;
    } else {
     s0+=6711.0;
     s1+=1031.0;
    }
   } else {
    if(i52<-6.2193521443987265e-06){
     s0+=300.0;
    } else {
     s0+=125.0;
     s1+=945.0;
    }
   }
  }
 } else {
  if(i34<1.0905578136444092){
   s1+=818.0;
  } else {
   if(i7<0.00598505325615406){
    if(i42<6.6767638600140344e-06){
     s0+=718.0;
     s1+=1.0;
    } else {
     s0+=507.0;
     s1+=75.0;
    }
   } else {
    if(i57<0.9997750520706177){
     s0+=21.0;
    } else {
     s0+=14.0;
     s1+=1020.0;
    }
   }
  }
 }
}
if(i16<1.0148130655288696){
 if(i5<1.8537044525146484e-05){
  if(i36<0.20620757341384888){
   if(i28<7.277727127075195e-05){
    if(i29<0.0282638818025589){
     s0+=76693.0;
     s1+=813.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i29<0.0010622595436871052){
     s0+=4129.0;
     s1+=2102.0;
    } else {
     s0+=27175.0;
     s1+=938.0;
    }
   }
  } else {
   if(i29<0.0026556544471532106){
    if(i45<1.002312183380127){
     s0+=56.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   } else {
    if(i29<0.00823663268238306){
     s0+=51.0;
     s1+=112.0;
    } else {
     s0+=2.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i54<0.002045022789388895){
   if(i3<-4.755076952278614e-05){
    if(i18<0.0002521716523915529){
     s0+=51.0;
     s1+=1054.0;
    } else {
     s0+=967.0;
     s1+=38.0;
    }
   } else {
    if(i33<0.0011363029479980469){
     s0+=4597.0;
     s1+=543.0;
    } else {
     s0+=130.0;
     s1+=303.0;
    }
   }
  } else {
   if(i22<0.10227334499359131){
    if(i2<1.0027968883514404){
     s0+=1255.0;
     s1+=274.0;
    } else {
     s0+=181.0;
     s1+=480.0;
    }
   } else {
    if(i50<-3.790668415604159e-05){
     s0+=59.0;
     s1+=3007.0;
    } else {
     s0+=274.0;
     s1+=944.0;
    }
   }
  }
 }
} else {
 if(i6<0.998624324798584){
  if(i50<-2.1839023247594014e-05){
   if(i3<-3.6306017136666924e-05){
    if(i15<0.08741030097007751){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=151.0;
    }
   } else {
    s0+=3.0;
   }
  } else {
   if(i60<0.0003937376895919442){
    if(i47<3.4361491998424754e-05){
     s0+=101.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i47<0.00011303856445010751){
     s0+=161.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i10<1.0143113136291504){
   if(i29<0.0012544647324830294){
    if(i56<-2.36073947235127e-06){
     s0+=1.0;
     s1+=542.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i32<0.0021085436455905437){
     s0+=397.0;
     s1+=2.0;
    } else {
     s0+=188.0;
     s1+=757.0;
    }
   }
  } else {
   if(i8<1.0206167697906494){
    if(i61<-4.6535005822079256e-05){
     s0+=81.0;
     s1+=97.0;
    } else {
     s0+=7.0;
     s1+=735.0;
    }
   } else {
    if(i8<1.0210464000701904){
     s0+=2.0;
     s1+=73.0;
    } else {
     s1+=10978.0;
    }
   }
  }
 }
}
if(i4<0.0005698800086975098){
 if(i15<0.20402869582176208){
  if(i14<1.0182610750198364){
   if(i26<1.1162974834442139){
    if(i4<0.00015276670455932617){
     s0+=25505.0;
     s1+=1399.0;
    } else {
     s0+=3274.0;
     s1+=1459.0;
    }
   } else {
    if(i21<0.08869542181491852){
     s0+=80012.0;
     s1+=922.0;
    } else {
     s0+=2.0;
     s1+=77.0;
    }
   }
  } else {
   if(i45<1.000311255455017){
    if(i5<6.020069122314453e-06){
     s0+=345.0;
    } else {
     s0+=25.0;
     s1+=17.0;
    }
   } else {
    if(i48<9.953975677490234e-06){
     s0+=228.0;
     s1+=481.0;
    } else {
     s0+=74.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i30<-0.0003593075671233237){
   if(i24<0.002568054711446166){
    if(i2<1.0017061233520508){
     s0+=55.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i51<0.01959715038537979){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=582.0;
    }
   }
  } else {
   if(i75<0.12852990627288818){
    if(i42<5.849939043400809e-06){
     s0+=5.0;
    } else {
     s0+=7.0;
     s1+=77.0;
    }
   } else {
    if(i56<-3.964034476666711e-06){
     s0+=35.0;
     s1+=58.0;
    } else {
     s0+=134.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i21<0.007959650829434395){
  if(i8<1.0160551071166992){
   if(i47<-2.0160929125268012e-05){
    if(i31<1.1177868843078613){
     s0+=9.0;
     s1+=602.0;
    } else {
     s0+=216.0;
     s1+=45.0;
    }
   } else {
    if(i48<6.735324859619141e-06){
     s0+=481.0;
     s1+=312.0;
    } else {
     s0+=3864.0;
     s1+=131.0;
    }
   }
  } else {
   if(i0<0.0018783211708068848){
    if(i18<0.00028907525120303035){
     s0+=2.0;
     s1+=201.0;
    } else {
     s0+=290.0;
    }
   } else {
    if(i57<0.9995230436325073){
     s0+=16.0;
    } else {
     s1+=753.0;
    }
   }
  }
 } else {
  if(i20<-0.00021755695343017578){
   if(i21<0.041221827268600464){
    if(i15<0.14530661702156067){
     s0+=995.0;
     s1+=242.0;
    } else {
     s0+=53.0;
     s1+=201.0;
    }
   } else {
    if(i43<0.07135029882192612){
     s0+=82.0;
     s1+=19.0;
    } else {
     s0+=152.0;
     s1+=1202.0;
    }
   }
  } else {
   if(i0<0.0015287399291992188){
    if(i19<0.0021502820309251547){
     s0+=342.0;
     s1+=137.0;
    } else {
     s0+=208.0;
     s1+=3484.0;
    }
   } else {
    if(i71<6.399968697223812e-06){
     s0+=30.0;
     s1+=11966.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i4<0.0002925992012023926){
  if(i7<0.01971467211842537){
   if(i24<0.0008680314058437943){
    if(i58<1.0010900497436523){
     s0+=26731.0;
     s1+=1076.0;
    } else {
     s0+=2948.0;
     s1+=988.0;
    }
   } else {
    if(i70<0.2142048180103302){
     s0+=73832.0;
     s1+=708.0;
    } else {
     s0+=51.0;
     s1+=73.0;
    }
   }
  } else {
   if(i15<0.031599581241607666){
    if(i72<-0.13619929552078247){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i21<0.04619854688644409){
     s0+=1.0;
    } else {
     s1+=267.0;
    }
   }
  }
 } else {
  if(i21<0.01019309088587761){
   if(i32<0.0006221174262464046){
    if(i8<1.008023738861084){
     s0+=1224.0;
     s1+=92.0;
    } else {
     s0+=2.0;
     s1+=125.0;
    }
   } else {
    if(i45<1.0114622116088867){
     s0+=3919.0;
     s1+=20.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i1<-2.5093555450439453e-05){
    if(i15<0.17416629195213318){
     s0+=849.0;
     s1+=56.0;
    } else {
     s0+=21.0;
     s1+=67.0;
    }
   } else {
    if(i7<0.0037926353979855776){
     s0+=185.0;
     s1+=37.0;
    } else {
     s0+=50.0;
     s1+=1679.0;
    }
   }
  }
 }
} else {
 if(i21<0.00795380026102066){
  if(i20<0.00018990039825439453){
   if(i19<0.0019455028232187033){
    if(i7<0.002868502866476774){
     s0+=2965.0;
     s1+=4.0;
    } else {
     s0+=30.0;
     s1+=33.0;
    }
   } else {
    if(i38<0.0010567462304607034){
     s0+=93.0;
     s1+=242.0;
    } else {
     s0+=832.0;
     s1+=37.0;
    }
   }
  } else {
   if(i48<1.6927719116210938e-05){
    if(i18<0.000620801467448473){
     s1+=1784.0;
    } else {
     s0+=276.0;
    }
   } else {
    if(i2<1.0125027894973755){
     s0+=550.0;
    } else {
     s1+=40.0;
    }
   }
  }
 } else {
  if(i23<1.0202326774597168){
   if(i0<-0.0001774430274963379){
    if(i53<0.2736578583717346){
     s0+=720.0;
     s1+=110.0;
    } else {
     s0+=9.0;
     s1+=82.0;
    }
   } else {
    if(i0<0.001408994197845459){
     s0+=808.0;
     s1+=2122.0;
    } else {
     s0+=80.0;
     s1+=2695.0;
    }
   }
  } else {
   if(i7<0.004945139400660992){
    if(i20<6.16312026977539e-05){
     s0+=177.0;
     s1+=21.0;
    } else {
     s0+=15.0;
     s1+=226.0;
    }
   } else {
    if(i33<-0.003659278154373169){
     s0+=51.0;
     s1+=4.0;
    } else {
     s0+=45.0;
     s1+=11761.0;
    }
   }
  }
 }
}
if(i8<1.0148802995681763){
 if(i3<-8.847646677168086e-05){
  if(i47<0.00031104969093576074){
   if(i31<1.169445514678955){
    if(i62<0.00028907920932397246){
     s0+=3.0;
     s1+=95.0;
    } else {
     s0+=250.0;
     s1+=5.0;
    }
   } else {
    if(i13<0.9119272828102112){
     s0+=71.0;
     s1+=63.0;
    } else {
     s0+=129.0;
     s1+=3174.0;
    }
   }
  } else {
   if(i15<0.0407828688621521){
    if(i72<-0.19076007604599){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=682.0;
     s1+=14.0;
    }
   } else {
    if(i10<0.9576183557510376){
     s0+=47.0;
     s1+=34.0;
    } else {
     s0+=42.0;
     s1+=336.0;
    }
   }
  }
 } else {
  if(i7<0.0037315376102924347){
   if(i1<9.578466415405273e-05){
    if(i41<1.0764788389205933){
     s0+=27347.0;
     s1+=935.0;
    } else {
     s0+=63528.0;
     s1+=232.0;
    }
   } else {
    if(i40<1.078357458114624){
     s1+=340.0;
    } else {
     s0+=341.0;
    }
   }
  } else {
   if(i27<0.9962641596794128){
    if(i2<0.9973851442337036){
     s0+=16466.0;
     s1+=248.0;
    } else {
     s0+=1182.0;
     s1+=587.0;
    }
   } else {
    if(i53<0.03597889840602875){
     s0+=4647.0;
     s1+=2078.0;
    } else {
     s0+=741.0;
     s1+=2202.0;
    }
   }
  }
 }
} else {
 if(i19<0.00138442637398839){
  if(i47<-2.501311246305704e-05){
   if(i4<0.0014456510543823242){
    s0+=17.0;
   } else {
    if(i71<3.668939461931586e-05){
     s0+=2.0;
     s1+=447.0;
    } else {
     s0+=12.0;
    }
   }
  } else {
   if(i33<0.002980172634124756){
    if(i3<-7.01270328136161e-05){
     s0+=26.0;
     s1+=16.0;
    } else {
     s0+=529.0;
    }
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i28<0.0017088353633880615){
   if(i3<-3.0442664865404367e-05){
    if(i11<1.0181405544281006){
     s0+=291.0;
     s1+=1454.0;
    } else {
     s0+=35.0;
     s1+=11920.0;
    }
   } else {
    if(i2<1.0024197101593018){
     s0+=142.0;
     s1+=5.0;
    } else {
     s1+=55.0;
    }
   }
  } else {
   s0+=52.0;
  }
 }
}
if(i4<0.0005698800086975098){
 if(i7<0.003794916905462742){
  if(i26<1.1162974834442139){
   if(i61<0.00013210749602876604){
    if(i43<0.010303372517228127){
     s0+=19353.0;
     s1+=47.0;
    } else {
     s0+=2436.0;
     s1+=162.0;
    }
   } else {
    if(i1<-4.4345855712890625e-05){
     s0+=2876.0;
     s1+=29.0;
    } else {
     s0+=1437.0;
     s1+=676.0;
    }
   }
  } else {
   if(i60<0.004074501805007458){
    if(i32<0.0018044563475996256){
     s0+=49098.0;
    } else {
     s0+=11564.0;
     s1+=163.0;
    }
   } else {
    if(i4<0.0004425048828125){
     s0+=1215.0;
     s1+=36.0;
    } else {
     s0+=3.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i24<0.0009989615064114332){
   if(i12<0.9992828965187073){
    if(i58<0.999942421913147){
     s0+=2276.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   } else {
    if(i26<1.0548467636108398){
     s0+=249.0;
    } else {
     s0+=14.0;
     s1+=2158.0;
    }
   }
  } else {
   if(i35<1.121600866317749){
    if(i2<1.0011265277862549){
     s0+=18699.0;
     s1+=481.0;
    } else {
     s0+=150.0;
     s1+=357.0;
    }
   } else {
    if(i50<-8.436336429440416e-06){
     s0+=86.0;
     s1+=912.0;
    } else {
     s0+=291.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i1<8.183717727661133e-05){
  if(i15<0.16009482741355896){
   if(i21<0.008101139217615128){
    if(i28<0.0003224015235900879){
     s0+=60.0;
     s1+=177.0;
    } else {
     s0+=3595.0;
     s1+=139.0;
    }
   } else {
    if(i38<0.001178068807348609){
     s0+=387.0;
     s1+=998.0;
    } else {
     s0+=1213.0;
     s1+=860.0;
    }
   }
  } else {
   if(i37<0.002454473404213786){
    if(i26<1.185887336730957){
     s0+=195.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   } else {
    if(i29<0.002463096287101507){
     s0+=13.0;
    } else {
     s0+=64.0;
     s1+=1840.0;
    }
   }
  }
 } else {
  if(i15<0.15601906180381775){
   if(i54<0.0009812751086428761){
    if(i31<1.1264252662658691){
     s1+=1932.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i40<1.1269601583480835){
     s0+=1013.0;
     s1+=294.0;
    } else {
     s0+=104.0;
     s1+=1367.0;
    }
   }
  } else {
   if(i54<0.0017322219209745526){
    if(i29<0.002302175387740135){
     s0+=95.0;
    } else {
     s1+=967.0;
    }
   } else {
    if(i51<0.011186085641384125){
     s0+=1.0;
     s1+=369.0;
    } else {
     s1+=10326.0;
    }
   }
  }
 }
}
if(i2<1.00374174118042){
 if(i21<0.06422391533851624){
  if(i14<1.0181578397750854){
   if(i6<1.0046664476394653){
    if(i34<1.0903575420379639){
     s0+=28483.0;
     s1+=2793.0;
    } else {
     s0+=81674.0;
     s1+=1556.0;
    }
   } else {
    if(i17<0.15385323762893677){
     s0+=672.0;
     s1+=209.0;
    } else {
     s0+=10.0;
     s1+=121.0;
    }
   }
  } else {
   if(i50<-8.344023626705166e-06){
    if(i28<0.0004944205284118652){
     s0+=117.0;
     s1+=772.0;
    } else {
     s0+=313.0;
     s1+=130.0;
    }
   } else {
    if(i36<0.16291558742523193){
     s0+=378.0;
    } else {
     s0+=82.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i1<-0.00017377734184265137){
   s0+=272.0;
  } else {
   if(i35<0.9624660611152649){
    if(i72<-0.1366768777370453){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=47.0;
     s1+=2.0;
    }
   } else {
    if(i22<0.042396873235702515){
     s0+=15.0;
     s1+=55.0;
    } else {
     s0+=4.0;
     s1+=1025.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007013810100033879){
  if(i14<1.0177111625671387){
   if(i7<0.0024566766805946827){
    if(i42<-1.1572627954592463e-05){
     s0+=6.0;
     s1+=136.0;
    } else {
     s0+=1311.0;
    }
   } else {
    if(i20<0.0001609325408935547){
     s0+=277.0;
     s1+=1945.0;
    } else {
     s0+=64.0;
     s1+=2804.0;
    }
   }
  } else {
   if(i52<-1.5310979506466538e-05){
    s0+=10.0;
   } else {
    if(i1<6.240606307983398e-05){
     s0+=104.0;
     s1+=739.0;
    } else {
     s0+=45.0;
     s1+=12050.0;
    }
   }
  }
 } else {
  if(i73<0.0041321516036987305){
   s0+=2600.0;
  } else {
   s1+=12.0;
  }
 }
}
if(i40<1.1402404308319092){
 if(i47<-2.857038634829223e-05){
  if(i30<-0.001165206776931882){
   if(i10<1.0225930213928223){
    s0+=34.0;
   } else {
    s1+=17.0;
   }
  } else {
   if(i58<1.0040359497070312){
    if(i48<2.3245811462402344e-05){
     s0+=6.0;
     s1+=1725.0;
    } else {
     s0+=24.0;
     s1+=3.0;
    }
   } else {
    s0+=20.0;
   }
  }
 } else {
  if(i4<0.0004063248634338379){
   if(i4<0.00017493963241577148){
    if(i9<0.9947776794433594){
     s0+=22195.0;
     s1+=1082.0;
    } else {
     s0+=71338.0;
     s1+=969.0;
    }
   } else {
    if(i7<0.00404469296336174){
     s0+=9101.0;
     s1+=134.0;
    } else {
     s0+=867.0;
     s1+=1023.0;
    }
   }
  } else {
   if(i67<0.0009562373161315918){
    if(i18<0.0003475146659184247){
     s0+=2486.0;
     s1+=2349.0;
    } else {
     s0+=5082.0;
     s1+=254.0;
    }
   } else {
    if(i31<1.1174830198287964){
     s0+=41.0;
     s1+=996.0;
    } else {
     s0+=664.0;
     s1+=750.0;
    }
   }
  }
 }
} else {
 if(i12<1.0018025636672974){
  if(i7<0.019870448857545853){
   if(i17<0.14724567532539368){
    if(i64<0.8438760638237){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=2825.0;
     s1+=46.0;
    }
   } else {
    if(i21<0.03315442055463791){
     s0+=344.0;
     s1+=6.0;
    } else {
     s0+=20.0;
     s1+=204.0;
    }
   }
  } else {
   if(i22<0.0019797980785369873){
    if(i25<1.0669227838516235){
     s0+=21.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i54<0.010913752019405365){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i37<0.0017826486146077514){
   s0+=652.0;
  } else {
   if(i17<0.051639705896377563){
    if(i76<-0.008293062448501587){
     s0+=62.0;
     s1+=173.0;
    } else {
     s0+=414.0;
     s1+=68.0;
    }
   } else {
    if(i1<-2.9265880584716797e-05){
     s0+=196.0;
     s1+=107.0;
    } else {
     s0+=123.0;
     s1+=14051.0;
    }
   }
  }
 }
}
if(i13<1.016628623008728){
 if(i39<1.001725435256958){
  if(i19<0.0017285547219216824){
   if(i8<0.9955061078071594){
    if(i28<-2.2113323211669922e-05){
     s0+=12079.0;
     s1+=131.0;
    } else {
     s0+=3437.0;
     s1+=397.0;
    }
   } else {
    if(i46<0.002129508415237069){
     s0+=69828.0;
     s1+=341.0;
    } else {
     s0+=585.0;
     s1+=45.0;
    }
   }
  } else {
   if(i18<0.00022491902927868068){
    if(i20<-0.0002504289150238037){
     s0+=2847.0;
     s1+=145.0;
    } else {
     s0+=1245.0;
     s1+=2582.0;
    }
   } else {
    if(i7<0.018920615315437317){
     s0+=13516.0;
     s1+=648.0;
    } else {
     s0+=53.0;
     s1+=433.0;
    }
   }
  }
 } else {
  if(i1<9.316205978393555e-05){
   if(i7<0.004387294873595238){
    if(i47<-1.642065035412088e-05){
     s0+=208.0;
     s1+=93.0;
    } else {
     s0+=7526.0;
     s1+=87.0;
    }
   } else {
    if(i35<1.0861878395080566){
     s0+=2927.0;
     s1+=1110.0;
    } else {
     s0+=247.0;
     s1+=1462.0;
    }
   }
  } else {
   if(i52<-6.262183887884021e-06){
    s0+=284.0;
   } else {
    if(i17<0.030805855989456177){
     s0+=36.0;
     s1+=86.0;
    } else {
     s0+=76.0;
     s1+=2601.0;
    }
   }
  }
 }
} else {
 if(i9<1.0245494842529297){
  if(i24<0.0010452426504343748){
   if(i50<-6.965717147977557e-06){
    s1+=1038.0;
   } else {
    s0+=47.0;
   }
  } else {
   if(i37<0.002283903770148754){
    if(i31<1.1731728315353394){
     s0+=770.0;
    } else {
     s0+=34.0;
     s1+=18.0;
    }
   } else {
    if(i5<8.404254913330078e-06){
     s0+=193.0;
     s1+=35.0;
    } else {
     s0+=157.0;
     s1+=881.0;
    }
   }
  }
 } else {
  if(i7<0.005057200789451599){
   if(i3<-7.634754001628608e-05){
    if(i42<1.5155691471591126e-05){
     s0+=3.0;
     s1+=369.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i40<1.0750048160552979){
     s1+=21.0;
    } else {
     s0+=452.0;
     s1+=14.0;
    }
   }
  } else {
   if(i65<1.879581031971611e-05){
    if(i20<-0.00022137165069580078){
     s0+=7.0;
     s1+=221.0;
    } else {
     s1+=11530.0;
    }
   } else {
    s0+=9.0;
   }
  }
 }
}
if(i15<0.18659314513206482){
 if(i0<0.000976264476776123){
  if(i28<0.00011008977890014648){
   if(i37<0.0010208775056526065){
    if(i38<0.0007353741093538702){
     s0+=26143.0;
     s1+=319.0;
    } else {
     s0+=902.0;
     s1+=761.0;
    }
   } else {
    if(i19<0.006488419137895107){
     s0+=55784.0;
     s1+=176.0;
    } else {
     s0+=46.0;
     s1+=24.0;
    }
   }
  } else {
   if(i7<0.004144263453781605){
    if(i7<0.0026455242186784744){
     s0+=19651.0;
     s1+=224.0;
    } else {
     s0+=4534.0;
     s1+=491.0;
    }
   } else {
    if(i24<0.002754697110503912){
     s0+=702.0;
     s1+=2858.0;
    } else {
     s0+=6025.0;
     s1+=1328.0;
    }
   }
  }
 } else {
  if(i57<0.999787449836731){
   if(i41<1.2719663381576538){
    s0+=758.0;
   } else {
    s1+=44.0;
   }
  } else {
   if(i33<0.0016613006591796875){
    if(i31<1.1180615425109863){
     s0+=38.0;
     s1+=897.0;
    } else {
     s0+=1099.0;
     s1+=1026.0;
    }
   } else {
    if(i28<0.0007818639278411865){
     s0+=2.0;
     s1+=2615.0;
    } else {
     s0+=87.0;
     s1+=496.0;
    }
   }
  }
 }
} else {
 if(i32<0.0020786835812032223){
  if(i11<1.039496898651123){
   if(i63<-0.001609166618436575){
    if(i63<-0.0016568079590797424){
     s0+=33.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i54<0.0019882945343852043){
     s0+=435.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=2.0;
    }
   }
  } else {
   if(i65<-9.762146873981692e-06){
    s1+=28.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i40<1.1147031784057617){
   if(i50<-2.5461205950705335e-05){
    if(i41<1.4400125741958618){
     s1+=131.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i64<1.0352792739868164){
     s1+=5.0;
    } else {
     s0+=110.0;
     s1+=4.0;
    }
   }
  } else {
   if(i26<1.6811659336090088){
    if(i56<-2.4070945983112324e-06){
     s0+=83.0;
     s1+=12861.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   } else {
    s0+=52.0;
   }
  }
 }
}
if(i13<1.0169928073883057){
 if(i3<-8.418123616138473e-05){
  if(i67<-0.007773876190185547){
   if(i35<1.06144380569458){
    if(i27<1.0085341930389404){
     s0+=741.0;
     s1+=43.0;
    } else {
     s0+=1.0;
     s1+=11.0;
    }
   } else {
    if(i74<0.01178201287984848){
     s0+=10.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=69.0;
    }
   }
  } else {
   if(i22<0.04277065396308899){
    if(i74<0.022418510168790817){
     s0+=210.0;
     s1+=13.0;
    } else {
     s0+=65.0;
     s1+=139.0;
    }
   } else {
    if(i24<0.0022823007311671972){
     s0+=326.0;
     s1+=296.0;
    } else {
     s0+=69.0;
     s1+=3459.0;
    }
   }
  }
 } else {
  if(i19<0.0017414167523384094){
   if(i6<1.0093380212783813){
    if(i67<-0.0003872513771057129){
     s0+=15305.0;
     s1+=562.0;
    } else {
     s0+=76375.0;
     s1+=470.0;
    }
   } else {
    if(i31<1.100994348526001){
     s1+=189.0;
    } else {
     s0+=132.0;
    }
   }
  } else {
   if(i24<0.0009592454880475998){
    if(i41<1.0452228784561157){
     s0+=2171.0;
     s1+=122.0;
    } else {
     s0+=196.0;
     s1+=3066.0;
    }
   } else {
    if(i25<1.107321858406067){
     s0+=17950.0;
     s1+=779.0;
    } else {
     s0+=1329.0;
     s1+=932.0;
    }
   }
  }
 }
} else {
 if(i4<0.0002678036689758301){
  if(i7<0.007141685113310814){
   if(i31<1.0905578136444092){
    s1+=4.0;
   } else {
    if(i39<1.0008606910705566){
     s0+=422.0;
    } else {
     s0+=168.0;
     s1+=42.0;
    }
   }
  } else {
   if(i37<0.002395029179751873){
    s0+=8.0;
   } else {
    s1+=217.0;
   }
  }
 } else {
  if(i7<0.003151742974296212){
   if(i0<0.0019435286521911621){
    if(i31<1.0937738418579102){
     s1+=10.0;
    } else {
     s0+=698.0;
     s1+=28.0;
    }
   } else {
    if(i38<0.0018700321670621634){
     s1+=305.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   if(i11<1.0156126022338867){
    if(i22<0.09575247764587402){
     s0+=101.0;
     s1+=108.0;
    } else {
     s0+=84.0;
     s1+=945.0;
    }
   } else {
    if(i57<0.9984197616577148){
     s0+=16.0;
    } else {
     s0+=32.0;
     s1+=12612.0;
    }
   }
  }
 }
}
if(i16<1.014744520187378){
 if(i2<1.0037040710449219){
  if(i19<0.0017091386253014207){
   if(i34<1.0776758193969727){
    if(i31<1.0577976703643799){
     s0+=16914.0;
     s1+=5.0;
    } else {
     s0+=5637.0;
     s1+=703.0;
    }
   } else {
    if(i12<1.0026726722717285){
     s0+=66098.0;
     s1+=236.0;
    } else {
     s0+=128.0;
     s1+=24.0;
    }
   }
  } else {
   if(i35<1.1215944290161133){
    if(i1<-2.7120113372802734e-05){
     s0+=18480.0;
     s1+=721.0;
    } else {
     s0+=3873.0;
     s1+=3156.0;
    }
   } else {
    if(i43<0.05737299844622612){
     s0+=240.0;
     s1+=27.0;
    } else {
     s0+=111.0;
     s1+=1326.0;
    }
   }
  }
 } else {
  if(i21<0.014506254345178604){
   if(i25<1.0773591995239258){
    if(i26<1.067186713218689){
     s0+=672.0;
    } else {
     s0+=481.0;
     s1+=1237.0;
    }
   } else {
    if(i37<0.0021611659321933985){
     s0+=2699.0;
     s1+=5.0;
    } else {
     s0+=21.0;
     s1+=115.0;
    }
   }
  } else {
   if(i38<0.00040770426858216524){
    if(i57<1.001092553138733){
     s0+=30.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i20<-0.0002703666687011719){
     s0+=81.0;
     s1+=491.0;
    } else {
     s0+=23.0;
     s1+=2983.0;
    }
   }
  }
 }
} else {
 if(i5<1.239776611328125e-05){
  if(i19<0.0028035687282681465){
   if(i19<0.0027371179312467575){
    if(i4<0.0003254413604736328){
     s0+=317.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   } else {
    if(i11<1.0196666717529297){
     s0+=7.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i41<1.1532164812088013){
    s0+=29.0;
   } else {
    s1+=128.0;
   }
  }
 } else {
  if(i33<0.0019309520721435547){
   if(i21<0.00795530341565609){
    if(i31<1.100994348526001){
     s1+=221.0;
    } else {
     s0+=460.0;
     s1+=36.0;
    }
   } else {
    if(i33<-0.0009669661521911621){
     s0+=71.0;
     s1+=64.0;
    } else {
     s0+=43.0;
     s1+=2134.0;
    }
   }
  } else {
   if(i10<1.0119495391845703){
    if(i60<-0.0008208091603592038){
     s1+=1.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i57<0.9982681274414062){
     s0+=6.0;
    } else {
     s1+=10771.0;
    }
   }
  }
 }
}
if(i3<-0.0001063833333319053){
 if(i14<0.9000343084335327){
  if(i17<0.04665669798851013){
   if(i61<0.002976651070639491){
    if(i22<0.005500614643096924){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i57<1.0025391578674316){
     s0+=342.0;
     s1+=32.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i43<0.10302335768938065){
    if(i1<-9.334087371826172e-05){
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.004025783855468035){
     s0+=9.0;
     s1+=297.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i71<5.7961542552220635e-06){
   if(i17<0.007670611143112183){
    if(i20<-0.0001989603042602539){
     s0+=113.0;
     s1+=2.0;
    } else {
     s1+=30.0;
    }
   } else {
    if(i38<0.003961920738220215){
     s0+=102.0;
     s1+=14501.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   }
  } else {
   s0+=127.0;
  }
 }
} else {
 if(i11<1.0131568908691406){
  if(i19<0.0017285547219216824){
   if(i42<-1.3949982530903071e-05){
    if(i4<0.00199735164642334){
     s1+=141.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    if(i3<-7.300877769012004e-05){
     s0+=18.0;
     s1+=24.0;
    } else {
     s0+=91713.0;
     s1+=980.0;
    }
   }
  } else {
   if(i1<-2.4616718292236328e-05){
    if(i26<1.1164028644561768){
     s0+=573.0;
     s1+=318.0;
    } else {
     s0+=17452.0;
     s1+=489.0;
    }
   } else {
    if(i39<1.000040054321289){
     s0+=2034.0;
     s1+=43.0;
    } else {
     s0+=2586.0;
     s1+=4521.0;
    }
   }
  }
 } else {
  if(i4<0.0003046393394470215){
   if(i56<-3.1805361686565448e-06){
    if(i28<0.0003935098648071289){
     s0+=7.0;
     s1+=93.0;
    } else {
     s0+=73.0;
     s1+=3.0;
    }
   } else {
    if(i24<0.0025758962146937847){
     s0+=312.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i57<0.9997178316116333){
    s0+=242.0;
   } else {
    if(i41<1.096021056175232){
     s1+=1436.0;
    } else {
     s0+=731.0;
     s1+=1400.0;
    }
   }
  }
 }
}
if(i5<2.294778823852539e-05){
 if(i13<1.0165605545043945){
  if(i35<1.1403393745422363){
   if(i6<0.9975539445877075){
    if(i55<0.0029108484741300344){
     s0+=37292.0;
     s1+=103.0;
    } else {
     s0+=1854.0;
     s1+=125.0;
    }
   } else {
    if(i51<0.03406521677970886){
     s0+=66371.0;
     s1+=2814.0;
    } else {
     s0+=3566.0;
     s1+=1125.0;
    }
   }
  } else {
   if(i37<0.007258302997797728){
    if(i57<1.0008435249328613){
     s0+=334.0;
    } else {
     s0+=12.0;
     s1+=68.0;
    }
   } else {
    if(i3<-3.8440302887465805e-05){
     s1+=290.0;
    } else {
     s0+=4.0;
    }
   }
  }
 } else {
  if(i38<0.0007198690436780453){
   if(i42<1.1041394827771e-05){
    s0+=426.0;
   } else {
    if(i39<1.0002803802490234){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=20.0;
    }
   }
  } else {
   if(i0<-0.0006209611892700195){
    if(i41<1.2349636554718018){
     s0+=274.0;
     s1+=9.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i19<0.0014593113446608186){
     s0+=20.0;
    } else {
     s0+=61.0;
     s1+=855.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012364983558654785){
  if(i32<0.0018927399069070816){
   if(i68<0.001567065715789795){
    if(i43<0.03476763516664505){
     s0+=3437.0;
     s1+=356.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i37<0.0013426006771624088){
     s1+=427.0;
    } else {
     s0+=214.0;
     s1+=2.0;
    }
   }
  } else {
   if(i0<4.947185516357422e-05){
    if(i55<0.010413174517452717){
     s0+=1123.0;
     s1+=258.0;
    } else {
     s0+=26.0;
     s1+=156.0;
    }
   } else {
    if(i10<0.9755955934524536){
     s0+=159.0;
     s1+=115.0;
    } else {
     s0+=412.0;
     s1+=2455.0;
    }
   }
  }
 } else {
  if(i28<0.0016489624977111816){
   if(i41<1.1453365087509155){
    if(i37<0.001264382852241397){
     s0+=3.0;
     s1+=1756.0;
    } else {
     s0+=572.0;
     s1+=323.0;
    }
   } else {
    if(i25<1.0236399173736572){
     s0+=16.0;
     s1+=9.0;
    } else {
     s0+=43.0;
     s1+=12760.0;
    }
   }
  } else {
   if(i6<1.0208373069763184){
    s0+=460.0;
   } else {
    s1+=53.0;
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i17<0.22083309292793274){
  if(i9<1.0187551975250244){
   if(i3<-9.289458830608055e-05){
    if(i15<0.0471167266368866){
     s0+=740.0;
     s1+=137.0;
    } else {
     s0+=88.0;
     s1+=759.0;
    }
   } else {
    if(i21<0.006758475210517645){
     s0+=70727.0;
     s1+=630.0;
    } else {
     s0+=41955.0;
     s1+=3997.0;
    }
   }
  } else {
   if(i0<0.00022137165069580078){
    if(i21<0.02771899104118347){
     s0+=433.0;
     s1+=43.0;
    } else {
     s0+=104.0;
     s1+=125.0;
    }
   } else {
    if(i7<0.004139813594520092){
     s0+=137.0;
     s1+=36.0;
    } else {
     s0+=46.0;
     s1+=687.0;
    }
   }
  }
 } else {
  if(i32<0.00320024648681283){
   if(i50<-1.8067334167426452e-05){
    if(i20<-0.00021284818649291992){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   } else {
    if(i50<-1.1547112990228925e-05){
     s0+=19.0;
     s1+=2.0;
    } else {
     s0+=114.0;
    }
   }
  } else {
   if(i24<0.0025808231439441442){
    if(i54<0.006518954411149025){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i3<-3.572820787667297e-05){
     s0+=7.0;
     s1+=1246.0;
    } else {
     s0+=53.0;
     s1+=120.0;
    }
   }
  }
 }
} else {
 if(i7<0.003694957820698619){
  if(i31<1.116804838180542){
   if(i0<0.0010813474655151367){
    if(i60<0.002226254902780056){
     s0+=85.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i28<0.0007489323616027832){
     s1+=561.0;
    } else {
     s0+=22.0;
    }
   }
  } else {
   if(i40<1.1714658737182617){
    if(i2<1.0117614269256592){
     s0+=1583.0;
    } else {
     s1+=133.0;
    }
   } else {
    s1+=114.0;
   }
  }
 } else {
  if(i0<0.0008175969123840332){
   s0+=37.0;
  } else {
   if(i16<1.016890525817871){
    if(i52<-6.388305337168276e-06){
     s0+=147.0;
    } else {
     s0+=230.0;
     s1+=4038.0;
    }
   } else {
    if(i52<-1.2190886991447769e-05){
     s0+=1.0;
    } else {
     s0+=7.0;
     s1+=11605.0;
    }
   }
  }
 }
}
if(i4<0.0005883276462554932){
 if(i17<0.22756335139274597){
  if(i7<0.003660991322249174){
   if(i16<0.9957034587860107){
    if(i33<-0.0011957287788391113){
     s0+=12014.0;
     s1+=48.0;
    } else {
     s0+=6269.0;
     s1+=580.0;
    }
   } else {
    if(i54<0.0020399484783411026){
     s0+=67942.0;
     s1+=306.0;
    } else {
     s0+=1024.0;
     s1+=119.0;
    }
   }
  } else {
   if(i6<0.9981024861335754){
    if(i7<0.022322429344058037){
     s0+=18422.0;
     s1+=313.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   } else {
    if(i24<0.0009960478637367487){
     s0+=438.0;
     s1+=2272.0;
    } else {
     s0+=3578.0;
     s1+=1020.0;
    }
   }
  }
 } else {
  if(i53<0.10103721916675568){
   if(i56<-5.029777184972772e-06){
    if(i43<0.02163843810558319){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=43.0;
    }
   } else {
    if(i73<0.008494377136230469){
     s0+=95.0;
    } else {
     s0+=10.0;
     s1+=3.0;
    }
   }
  } else {
   if(i21<0.038636624813079834){
    if(i40<1.156174898147583){
     s0+=7.0;
     s1+=31.0;
    } else {
     s0+=49.0;
     s1+=1.0;
    }
   } else {
    s1+=492.0;
   }
  }
 }
} else {
 if(i2<1.008252501487732){
  if(i18<0.0007044356898404658){
   if(i8<1.0146496295928955){
    if(i19<0.0015971570974215865){
     s0+=1164.0;
     s1+=5.0;
    } else {
     s0+=1745.0;
     s1+=3721.0;
    }
   } else {
    if(i0<0.0001271367073059082){
     s0+=79.0;
     s1+=51.0;
    } else {
     s0+=114.0;
     s1+=2420.0;
    }
   }
  } else {
   s0+=2956.0;
  }
 } else {
  if(i34<1.150090217590332){
   if(i24<0.0011183233000338078){
    s1+=1144.0;
   } else {
    s0+=575.0;
   }
  } else {
   s1+=11768.0;
  }
 }
}
if(i3<-9.500142186880112e-05){
 if(i15<0.018122375011444092){
  if(i68<-0.006651192903518677){
   if(i57<1.002510905265808){
    if(i38<0.0031481990590691566){
     s0+=585.0;
     s1+=21.0;
    } else {
     s0+=16.0;
     s1+=12.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i57<0.9973915815353394){
    s0+=6.0;
   } else {
    if(i10<0.9956862330436707){
     s0+=3.0;
     s1+=9.0;
    } else {
     s1+=53.0;
    }
   }
  }
 } else {
  if(i71<5.794467142550275e-06){
   if(i57<0.9980336427688599){
    s0+=60.0;
   } else {
    if(i35<0.99674391746521){
     s0+=83.0;
     s1+=43.0;
    } else {
     s0+=171.0;
     s1+=15529.0;
    }
   }
  } else {
   s0+=128.0;
  }
 }
} else {
 if(i13<1.0141222476959229){
  if(i0<0.0010178685188293457){
   if(i12<1.0022624731063843){
    if(i7<0.003425080329179764){
     s0+=83446.0;
     s1+=846.0;
    } else {
     s0+=23776.0;
     s1+=2614.0;
    }
   } else {
    if(i69<0.103110671043396){
     s0+=3708.0;
     s1+=518.0;
    } else {
     s0+=1145.0;
     s1+=759.0;
    }
   }
  } else {
   if(i24<0.0010797297582030296){
    if(i26<1.057311773300171){
     s0+=24.0;
    } else {
     s1+=761.0;
    }
   } else {
    if(i29<0.0023529313039034605){
     s0+=771.0;
    } else {
     s0+=33.0;
     s1+=492.0;
    }
   }
  }
 } else {
  if(i5<1.138448715209961e-05){
   if(i19<0.0024990830570459366){
    if(i56<-3.796452347160084e-06){
     s0+=148.0;
     s1+=55.0;
    } else {
     s0+=861.0;
    }
   } else {
    if(i15<0.12687146663665771){
     s0+=129.0;
     s1+=21.0;
    } else {
     s0+=39.0;
     s1+=85.0;
    }
   }
  } else {
   if(i28<0.000689089298248291){
    if(i71<1.3727367331739515e-06){
     s0+=257.0;
     s1+=2306.0;
    } else {
     s0+=51.0;
     s1+=20.0;
    }
   } else {
    if(i22<0.22020158171653748){
     s0+=1131.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=119.0;
    }
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i38<0.0007170920725911856){
  if(i41<1.1354830265045166){
   if(i38<0.0006275541381910443){
    if(i35<1.023176908493042){
     s0+=16508.0;
     s1+=118.0;
    } else {
     s0+=52478.0;
     s1+=26.0;
    }
   } else {
    if(i40<1.0301611423492432){
     s0+=606.0;
     s1+=128.0;
    } else {
     s0+=3982.0;
     s1+=67.0;
    }
   }
  } else {
   if(i47<2.2088881451054476e-05){
    if(i41<1.1355493068695068){
     s0+=36.0;
     s1+=9.0;
    } else {
     s0+=3688.0;
    }
   } else {
    if(i0<-0.0002123415470123291){
     s0+=2412.0;
     s1+=19.0;
    } else {
     s0+=198.0;
     s1+=136.0;
    }
   }
  }
 } else {
  if(i4<-6.645917892456055e-05){
   if(i55<0.029117152094841003){
    if(i26<1.0907573699951172){
     s0+=769.0;
     s1+=329.0;
    } else {
     s0+=22127.0;
     s1+=301.0;
    }
   } else {
    if(i4<-0.0013183653354644775){
     s0+=5.0;
    } else {
     s1+=93.0;
    }
   }
  } else {
   if(i33<-0.0013833940029144287){
    if(i30<-0.00033009497565217316){
     s0+=514.0;
     s1+=387.0;
    } else {
     s0+=3226.0;
     s1+=239.0;
    }
   } else {
    if(i32<0.0001841518096625805){
     s0+=1120.0;
     s1+=8.0;
    } else {
     s0+=2362.0;
     s1+=3189.0;
    }
   }
  }
 }
} else {
 if(i7<0.004381583537906408){
  if(i18<0.00020695400598924607){
   if(i42<1.9558983694878407e-06){
    if(i39<1.0013251304626465){
     s0+=32.0;
    } else {
     s0+=8.0;
     s1+=1171.0;
    }
   } else {
    if(i48<6.258487701416016e-06){
     s0+=20.0;
     s1+=26.0;
    } else {
     s0+=253.0;
     s1+=15.0;
    }
   }
  } else {
   if(i4<0.0026562511920928955){
    if(i32<0.0020543052814900875){
     s0+=4557.0;
    } else {
     s0+=147.0;
     s1+=24.0;
    }
   } else {
    s1+=49.0;
   }
  }
 } else {
  if(i20<-0.00033169984817504883){
   if(i27<0.9971653819084167){
    if(i69<0.4920113682746887){
     s0+=891.0;
     s1+=341.0;
    } else {
     s0+=67.0;
     s1+=270.0;
    }
   } else {
    if(i17<0.035818129777908325){
     s0+=102.0;
     s1+=41.0;
    } else {
     s0+=69.0;
     s1+=412.0;
    }
   }
  } else {
   if(i38<0.0039021149277687073){
    if(i2<1.0044611692428589){
     s0+=247.0;
     s1+=1503.0;
    } else {
     s0+=104.0;
     s1+=15325.0;
    }
   } else {
    if(i58<1.001969814300537){
     s0+=101.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
}
if(i1<6.324052810668945e-05){
 if(i3<-7.643910066690296e-05){
  if(i25<1.0743744373321533){
   if(i22<0.1008758544921875){
    if(i44<1.015486717224121){
     s0+=1137.0;
     s1+=47.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i43<0.016866419464349747){
     s0+=36.0;
     s1+=15.0;
    } else {
     s0+=13.0;
     s1+=90.0;
    }
   }
  } else {
   if(i51<0.020732302218675613){
    if(i37<0.002174734603613615){
     s0+=71.0;
     s1+=9.0;
    } else {
     s0+=80.0;
     s1+=128.0;
    }
   } else {
    if(i49<0.8554306626319885){
     s0+=100.0;
     s1+=115.0;
    } else {
     s0+=102.0;
     s1+=2067.0;
    }
   }
  }
 } else {
  if(i11<1.0115153789520264){
   if(i43<0.011311594396829605){
    if(i19<0.0020046699792146683){
     s0+=64403.0;
     s1+=388.0;
    } else {
     s0+=3377.0;
     s1+=398.0;
    }
   } else {
    if(i12<0.9999886155128479){
     s0+=29792.0;
     s1+=572.0;
    } else {
     s0+=14379.0;
     s1+=3144.0;
    }
   }
  } else {
   if(i19<0.00215300009585917){
    if(i55<0.002080300822854042){
     s0+=740.0;
     s1+=5.0;
    } else {
     s0+=151.0;
     s1+=17.0;
    }
   } else {
    if(i7<0.00456913560628891){
     s0+=240.0;
     s1+=4.0;
    } else {
     s0+=107.0;
     s1+=786.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i26<1.116804838180542){
   if(i38<0.0011460799723863602){
    if(i10<1.005605936050415){
     s0+=3.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2352.0;
    }
   } else {
    s0+=85.0;
   }
  } else {
   s0+=1909.0;
  }
 } else {
  if(i20<-0.0003324151039123535){
   if(i7<0.01235150545835495){
    if(i28<0.0009182095527648926){
     s0+=43.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i21<0.027392100542783737){
     s0+=32.0;
     s1+=19.0;
    } else {
     s0+=23.0;
     s1+=308.0;
    }
   }
  } else {
   if(i33<-0.0010003447532653809){
    if(i26<1.629280686378479){
     s0+=4.0;
     s1+=470.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i3<-9.014788520289585e-05){
     s0+=1.0;
     s1+=12407.0;
    } else {
     s0+=9.0;
     s1+=645.0;
    }
   }
  }
 }
}
if(i11<1.0136241912841797){
 if(i46<0.00773436576128006){
  if(i5<1.5079975128173828e-05){
   if(i31<1.094810962677002){
    if(i7<0.003114893566817045){
     s0+=21400.0;
     s1+=487.0;
    } else {
     s0+=3636.0;
     s1+=1677.0;
    }
   } else {
    if(i36<0.19760403037071228){
     s0+=78916.0;
     s1+=866.0;
    } else {
     s0+=164.0;
     s1+=71.0;
    }
   }
  } else {
   if(i26<1.0623862743377686){
    s0+=2253.0;
   } else {
    if(i18<0.00033471203641965985){
     s0+=2801.0;
     s1+=3454.0;
    } else {
     s0+=3618.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i35<1.0869793891906738){
   if(i6<1.0096826553344727){
    if(i39<1.00408935546875){
     s0+=1971.0;
     s1+=104.0;
    } else {
     s0+=10.0;
     s1+=24.0;
    }
   } else {
    if(i48<8.225440979003906e-06){
     s0+=22.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=125.0;
    }
   }
  } else {
   if(i56<-2.668768502189778e-06){
    if(i1<-9.465217590332031e-05){
     s0+=36.0;
     s1+=53.0;
    } else {
     s0+=53.0;
     s1+=2259.0;
    }
   } else {
    s0+=244.0;
   }
  }
 }
} else {
 if(i15<0.18143951892852783){
  if(i33<0.0018791556358337402){
   if(i41<1.0905578136444092){
    if(i14<1.0084679126739502){
     s0+=1.0;
     s1+=22.0;
    } else {
     s1+=860.0;
    }
   } else {
    if(i21<0.014188612811267376){
     s0+=809.0;
     s1+=83.0;
    } else {
     s0+=273.0;
     s1+=487.0;
    }
   }
  } else {
   if(i38<0.003398813772946596){
    if(i52<-6.242642484721728e-06){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=2104.0;
    }
   } else {
    s0+=21.0;
   }
  }
 } else {
  if(i26<1.1843671798706055){
   s0+=17.0;
  } else {
   if(i3<-3.423222005949356e-05){
    if(i4<0.0003033876419067383){
     s0+=9.0;
     s1+=178.0;
    } else {
     s1+=11060.0;
    }
   } else {
    if(i26<1.3000664710998535){
     s1+=88.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i12<1.002625584602356){
 if(i7<0.003866281360387802){
  if(i61<0.00017479796952102333){
   if(i43<0.011270616203546524){
    if(i23<1.0238358974456787){
     s0+=56750.0;
     s1+=85.0;
    } else {
     s0+=67.0;
     s1+=7.0;
    }
   } else {
    if(i26<1.0780352354049683){
     s0+=764.0;
     s1+=194.0;
    } else {
     s0+=15990.0;
     s1+=96.0;
    }
   }
  } else {
   if(i10<0.9933538436889648){
    if(i20<-0.00020417571067810059){
     s0+=10520.0;
     s1+=16.0;
    } else {
     s0+=1029.0;
     s1+=77.0;
    }
   } else {
    if(i7<0.0016045330557972193){
     s0+=2515.0;
     s1+=94.0;
    } else {
     s0+=1456.0;
     s1+=539.0;
    }
   }
  }
 } else {
  if(i19<0.0018174401484429836){
   if(i5<-5.066394805908203e-06){
    if(i28<3.361701965332031e-05){
     s0+=9868.0;
    } else {
     s0+=1126.0;
     s1+=7.0;
    }
   } else {
    if(i25<1.0486695766448975){
     s1+=48.0;
    } else {
     s0+=58.0;
     s1+=38.0;
    }
   }
  } else {
   if(i2<0.9988009333610535){
    if(i37<0.0009908907813951373){
     s0+=149.0;
     s1+=244.0;
    } else {
     s0+=9428.0;
     s1+=622.0;
    }
   } else {
    if(i18<0.0009394473163411021){
     s0+=376.0;
     s1+=3371.0;
    } else {
     s0+=509.0;
    }
   }
  }
 }
} else {
 if(i29<0.0025823269970715046){
  if(i7<0.003449389012530446){
   if(i42<-1.5038749552331865e-05){
    if(i67<0.00142747163772583){
     s0+=33.0;
     s1+=386.0;
    } else {
     s0+=40.0;
    }
   } else {
    if(i58<1.0020277500152588){
     s0+=820.0;
     s1+=70.0;
    } else {
     s0+=2727.0;
    }
   }
  } else {
   if(i28<0.00046509504318237305){
    if(i26<1.1229777336120605){
     s1+=1785.0;
    } else {
     s0+=99.0;
     s1+=114.0;
    }
   } else {
    if(i54<0.0017340888734906912){
     s0+=387.0;
     s1+=2.0;
    } else {
     s0+=82.0;
     s1+=69.0;
    }
   }
  }
 } else {
  if(i17<0.08921951055526733){
   if(i47<-1.0387791917310096e-05){
    if(i41<1.1472277641296387){
     s0+=4.0;
    } else {
     s1+=171.0;
    }
   } else {
    if(i73<-0.0032244324684143066){
     s0+=679.0;
     s1+=538.0;
    } else {
     s0+=690.0;
     s1+=53.0;
    }
   }
  } else {
   if(i17<0.14876767992973328){
    if(i42<1.5127789993130136e-05){
     s0+=25.0;
     s1+=1166.0;
    } else {
     s0+=374.0;
     s1+=481.0;
    }
   } else {
    if(i0<-0.00048214197158813477){
     s0+=103.0;
     s1+=95.0;
    } else {
     s0+=52.0;
     s1+=13772.0;
    }
   }
  }
 }
}
if(i12<1.002625584602356){
 if(i22<0.23068618774414062){
  if(i7<0.0037436909042298794){
   if(i34<1.0905030965805054){
    if(i68<-0.0005668103694915771){
     s0+=3693.0;
     s1+=628.0;
    } else {
     s0+=21767.0;
     s1+=259.0;
    }
   } else {
    if(i46<0.0019132420420646667){
     s0+=59340.0;
     s1+=110.0;
    } else {
     s0+=3462.0;
     s1+=108.0;
    }
   }
  } else {
   if(i2<0.9989087581634521){
    if(i0<-0.0007596313953399658){
     s0+=18516.0;
     s1+=238.0;
    } else {
     s0+=2279.0;
     s1+=438.0;
    }
   } else {
    if(i57<0.9995452165603638){
     s0+=577.0;
     s1+=18.0;
    } else {
     s0+=845.0;
     s1+=3106.0;
    }
   }
  }
 } else {
  if(i37<0.006219975650310516){
   if(i25<1.1800614595413208){
    if(i53<0.08702217042446136){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=55.0;
    }
   } else {
    if(i24<0.0026826728135347366){
     s0+=67.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i4<-0.0012763440608978271){
    s0+=2.0;
   } else {
    if(i32<0.007357265334576368){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=559.0;
    }
   }
  }
 }
} else {
 if(i0<0.0012364983558654785){
  if(i3<-6.785507139284164e-05){
   if(i33<-0.0042050182819366455){
    if(i16<0.9429137706756592){
     s0+=229.0;
     s1+=3.0;
    } else {
     s0+=32.0;
     s1+=78.0;
    }
   } else {
    if(i22<0.049785614013671875){
     s0+=199.0;
     s1+=135.0;
    } else {
     s0+=167.0;
     s1+=2227.0;
    }
   }
  } else {
   if(i7<0.004273242317140102){
    if(i20<0.00018900632858276367){
     s0+=3549.0;
     s1+=50.0;
    } else {
     s0+=78.0;
     s1+=31.0;
    }
   } else {
    if(i42<2.5320037821074948e-05){
     s0+=289.0;
     s1+=1048.0;
    } else {
     s0+=606.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i21<0.003484210232272744){
   if(i26<1.1180615425109863){
    s1+=315.0;
   } else {
    if(i24<0.002512293867766857){
     s0+=491.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i52<-6.604736881854478e-06){
    s0+=206.0;
   } else {
    if(i14<1.0204899311065674){
     s0+=224.0;
     s1+=3679.0;
    } else {
     s0+=23.0;
     s1+=10837.0;
    }
   }
  }
 }
}
if(i10<1.0104072093963623){
 if(i0<0.0009605884552001953){
  if(i66<0.44395849108695984){
   if(i3<-7.088958955137059e-05){
    if(i21<0.02517760545015335){
     s0+=1397.0;
     s1+=194.0;
    } else {
     s0+=492.0;
     s1+=1325.0;
    }
   } else {
    if(i21<0.007289644330739975){
     s0+=72021.0;
     s1+=717.0;
    } else {
     s0+=39848.0;
     s1+=4305.0;
    }
   }
  } else {
   if(i10<0.9590327739715576){
    if(i15<0.07316187024116516){
     s0+=172.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   } else {
    if(i40<1.109394907951355){
     s0+=10.0;
    } else {
     s0+=12.0;
     s1+=734.0;
    }
   }
  }
 } else {
  if(i29<0.0024050595238804817){
   if(i29<0.0010666802991181612){
    if(i41<1.0464098453521729){
     s0+=69.0;
    } else {
     s1+=440.0;
    }
   } else {
    s0+=765.0;
   }
  } else {
   if(i36<0.027370333671569824){
    if(i21<0.03540593385696411){
     s0+=33.0;
     s1+=18.0;
    } else {
     s0+=11.0;
     s1+=101.0;
    }
   } else {
    if(i25<1.0778363943099976){
     s0+=35.0;
     s1+=215.0;
    } else {
     s0+=21.0;
     s1+=1961.0;
    }
   }
  }
 }
} else {
 if(i37<0.0024440293200314045){
  if(i26<1.1180615425109863){
   s1+=2068.0;
  } else {
   if(i7<0.006317727267742157){
    if(i72<0.07524436712265015){
     s0+=1274.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i4<0.0013151466846466064){
     s1+=7.0;
    } else {
     s0+=15.0;
    }
   }
  }
 } else {
  if(i50<-1.440621963411104e-05){
   if(i32<0.001981885638087988){
    if(i64<1.0744333267211914){
     s0+=21.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i3<-3.1888070225249976e-05){
     s0+=22.0;
     s1+=12381.0;
    } else {
     s0+=19.0;
     s1+=8.0;
    }
   }
  } else {
   if(i21<0.024615578353405){
    s0+=102.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i5<2.3424625396728516e-05){
 if(i7<0.0039464859291911125){
  if(i38<0.0005180307198315859){
   if(i54<0.0016263481229543686){
    if(i32<0.001829029992222786){
     s0+=58663.0;
     s1+=62.0;
    } else {
     s0+=887.0;
     s1+=15.0;
    }
   } else {
    if(i4<-7.12275505065918e-05){
     s0+=2646.0;
    } else {
     s0+=1695.0;
     s1+=63.0;
    }
   }
  } else {
   if(i31<1.1160998344421387){
    if(i12<0.9994544982910156){
     s0+=3801.0;
     s1+=150.0;
    } else {
     s0+=2273.0;
     s1+=822.0;
    }
   } else {
    if(i11<1.011942744255066){
     s0+=19322.0;
     s1+=154.0;
    } else {
     s0+=204.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i2<0.9989063739776611){
   if(i17<0.20614409446716309){
    if(i4<-0.00015312433242797852){
     s0+=16555.0;
     s1+=112.0;
    } else {
     s0+=3139.0;
     s1+=588.0;
    }
   } else {
    if(i37<0.0054886844009160995){
     s0+=68.0;
     s1+=8.0;
    } else {
     s0+=21.0;
     s1+=258.0;
    }
   }
  } else {
   if(i21<0.010381839238107204){
    if(i38<0.0010506834369152784){
     s0+=306.0;
     s1+=360.0;
    } else {
     s0+=460.0;
     s1+=16.0;
    }
   } else {
    if(i24<0.001040173228830099){
     s0+=2.0;
     s1+=1582.0;
    } else {
     s0+=335.0;
     s1+=1334.0;
    }
   }
  }
 }
} else {
 if(i22<0.1624506711959839){
  if(i18<0.0003102111513726413){
   if(i0<0.0005258917808532715){
    if(i44<0.9688776731491089){
     s0+=140.0;
     s1+=174.0;
    } else {
     s0+=614.0;
     s1+=82.0;
    }
   } else {
    if(i20<-0.0001608133316040039){
     s0+=150.0;
     s1+=265.0;
    } else {
     s0+=144.0;
     s1+=4148.0;
    }
   }
  } else {
   if(i40<1.1703872680664062){
    if(i21<0.02468384988605976){
     s0+=4339.0;
     s1+=71.0;
    } else {
     s0+=225.0;
     s1+=220.0;
    }
   } else {
    if(i25<1.098909616470337){
     s0+=167.0;
     s1+=56.0;
    } else {
     s0+=42.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i31<1.176405668258667){
   if(i34<1.094508409500122){
    s1+=27.0;
   } else {
    if(i33<0.00208359956741333){
     s0+=284.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i22<0.21234968304634094){
    if(i1<6.556510925292969e-06){
     s0+=54.0;
     s1+=35.0;
    } else {
     s0+=28.0;
     s1+=2023.0;
    }
   } else {
    if(i37<0.0027387170121073723){
     s0+=2.0;
     s1+=16.0;
    } else {
     s0+=8.0;
     s1+=11112.0;
    }
   }
  }
 }
}
if(i1<6.407499313354492e-05){
 if(i66<0.08453185856342316){
  if(i9<1.0188534259796143){
   if(i38<0.0007207038579508662){
    if(i40<1.1354830265045166){
     s0+=77065.0;
     s1+=365.0;
    } else {
     s0+=2035.0;
     s1+=111.0;
    }
   } else {
    if(i5<-3.2782554626464844e-06){
     s0+=18908.0;
     s1+=302.0;
    } else {
     s0+=7806.0;
     s1+=3114.0;
    }
   }
  } else {
   if(i5<7.927417755126953e-06){
    if(i39<1.0008227825164795){
     s0+=249.0;
     s1+=3.0;
    } else {
     s0+=106.0;
     s1+=63.0;
    }
   } else {
    if(i7<0.004365451633930206){
     s0+=218.0;
     s1+=26.0;
    } else {
     s0+=44.0;
     s1+=818.0;
    }
   }
  }
 } else {
  if(i4<0.0001990199089050293){
   if(i7<0.01971467211842537){
    if(i22<0.1850552260875702){
     s0+=6371.0;
     s1+=333.0;
    } else {
     s0+=100.0;
     s1+=140.0;
    }
   } else {
    if(i25<1.020878553390503){
     s0+=36.0;
    } else {
     s1+=152.0;
    }
   }
  } else {
   if(i40<1.1281113624572754){
    if(i22<0.09474477171897888){
     s0+=821.0;
     s1+=140.0;
    } else {
     s0+=153.0;
     s1+=343.0;
    }
   } else {
    if(i67<-0.005961239337921143){
     s0+=418.0;
     s1+=149.0;
    } else {
     s0+=260.0;
     s1+=1789.0;
    }
   }
  }
 }
} else {
 if(i24<0.002331655938178301){
  if(i24<0.0009702398092485964){
   if(i46<0.00011811288277385756){
    if(i31<1.0608227252960205){
     s0+=55.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i38<0.001312136184424162){
     s1+=2221.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   s0+=1899.0;
  }
 } else {
  if(i33<-0.002181828022003174){
   if(i2<1.0054875612258911){
    if(i7<0.019870471209287643){
     s0+=70.0;
     s1+=31.0;
    } else {
     s0+=9.0;
     s1+=74.0;
    }
   } else {
    if(i46<0.0025254334323108196){
     s0+=5.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=244.0;
    }
   }
  } else {
   if(i8<1.0234171152114868){
    if(i3<-9.660980140324682e-05){
     s0+=3.0;
     s1+=2618.0;
    } else {
     s0+=36.0;
     s1+=483.0;
    }
   } else {
    if(i7<0.0019534947350621223){
     s0+=1.0;
     s1+=47.0;
    } else {
     s1+=10582.0;
    }
   }
  }
 }
}
if(i11<1.0135858058929443){
 if(i5<2.092123031616211e-05){
  if(i15<0.23129135370254517){
   if(i53<0.03642238676548004){
    if(i37<0.0010206899605691433){
     s0+=26966.0;
     s1+=1971.0;
    } else {
     s0+=60483.0;
     s1+=129.0;
    }
   } else {
    if(i27<0.9942684173583984){
     s0+=16813.0;
     s1+=422.0;
    } else {
     s0+=4654.0;
     s1+=1504.0;
    }
   }
  } else {
   if(i25<1.6057538986206055){
    if(i51<0.04105914384126663){
     s0+=41.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=294.0;
    }
   } else {
    if(i27<0.9904406070709229){
     s1+=11.0;
    } else {
     s0+=40.0;
    }
   }
  }
 } else {
  if(i21<0.02012554556131363){
   if(i42<-1.0201805707765743e-05){
    if(i54<0.001101180212572217){
     s0+=3.0;
     s1+=466.0;
    } else {
     s0+=175.0;
     s1+=201.0;
    }
   } else {
    if(i48<1.341104507446289e-05){
     s0+=3040.0;
     s1+=1009.0;
    } else {
     s0+=2260.0;
     s1+=38.0;
    }
   }
  } else {
   if(i20<-0.0005277097225189209){
    if(i17<0.09512481093406677){
     s0+=491.0;
     s1+=145.0;
    } else {
     s0+=73.0;
     s1+=241.0;
    }
   } else {
    if(i13<0.9071588516235352){
     s0+=62.0;
     s1+=81.0;
    } else {
     s0+=163.0;
     s1+=3234.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007036376628093421){
  if(i56<-3.4500324090913637e-06){
   if(i42<3.480103623587638e-05){
    if(i2<1.0068755149841309){
     s0+=237.0;
     s1+=2119.0;
    } else {
     s0+=6.0;
     s1+=12040.0;
    }
   } else {
    if(i34<1.233668565750122){
     s0+=154.0;
     s1+=11.0;
    } else {
     s1+=343.0;
    }
   }
  } else {
   if(i7<0.0061266073025763035){
    s0+=279.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i54<0.01067318581044674){
   s0+=633.0;
  } else {
   s1+=1.0;
  }
 }
}
if(i9<1.0177361965179443){
 if(i40<1.1402404308319092){
  if(i43<0.011364723555743694){
   if(i8<1.0145914554595947){
    if(i0<0.0009831786155700684){
     s0+=67512.0;
     s1+=794.0;
    } else {
     s0+=695.0;
     s1+=422.0;
    }
   } else {
    if(i46<0.0007004445651546121){
     s0+=1.0;
     s1+=156.0;
    } else {
     s0+=89.0;
     s1+=34.0;
    }
   }
  } else {
   if(i5<7.927417755126953e-06){
    if(i31<1.0905578136444092){
     s0+=6245.0;
     s1+=1297.0;
    } else {
     s0+=31231.0;
     s1+=478.0;
    }
   } else {
    if(i37<0.0010437063174322248){
     s0+=209.0;
     s1+=1749.0;
    } else {
     s0+=4857.0;
     s1+=1546.0;
    }
   }
  }
 } else {
  if(i2<1.0006656646728516){
   if(i7<0.018920615315437317){
    if(i4<0.00026541948318481445){
     s0+=2776.0;
     s1+=134.0;
    } else {
     s0+=471.0;
     s1+=174.0;
    }
   } else {
    if(i68<-0.015280872583389282){
     s0+=164.0;
     s1+=45.0;
    } else {
     s0+=5.0;
     s1+=260.0;
    }
   }
  } else {
   if(i40<1.1710798740386963){
    if(i24<0.0025597934145480394){
     s0+=681.0;
     s1+=1.0;
    } else {
     s0+=114.0;
     s1+=762.0;
    }
   } else {
    if(i25<1.052932858467102){
     s0+=68.0;
     s1+=32.0;
    } else {
     s0+=103.0;
     s1+=2347.0;
    }
   }
  }
 }
} else {
 if(i3<-6.250238220673054e-05){
  if(i34<1.1413248777389526){
   if(i46<0.0009169185068458319){
    if(i4<0.0019292235374450684){
     s0+=1.0;
     s1+=905.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i69<0.08333267271518707){
     s0+=91.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=53.0;
    }
   }
  } else {
   if(i0<0.0007315874099731445){
    if(i9<1.0249884128570557){
     s0+=35.0;
     s1+=131.0;
    } else {
     s0+=17.0;
     s1+=612.0;
    }
   } else {
    if(i11<1.0246385335922241){
     s0+=15.0;
     s1+=1138.0;
    } else {
     s1+=10277.0;
    }
   }
  }
 } else {
  if(i34<1.0905578136444092){
   s1+=410.0;
  } else {
   if(i2<1.0011852979660034){
    if(i47<0.00016361678717657924){
     s0+=593.0;
     s1+=27.0;
    } else {
     s0+=47.0;
     s1+=19.0;
    }
   } else {
    if(i18<0.00033119029831141233){
     s0+=140.0;
     s1+=422.0;
    } else {
     s0+=430.0;
     s1+=9.0;
    }
   }
  }
 }
}
if(i3<-8.853543840814382e-05){
 if(i22<0.04129183292388916){
  if(i10<0.9754775762557983){
   if(i72<-0.16601967811584473){
    if(i13<0.8489170670509338){
     s0+=18.0;
    } else {
     s0+=4.0;
     s1+=27.0;
    }
   } else {
    if(i57<1.0025691986083984){
     s0+=719.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i57<1.0012028217315674){
    if(i74<0.02843610569834709){
     s0+=72.0;
     s1+=8.0;
    } else {
     s0+=30.0;
     s1+=53.0;
    }
   } else {
    if(i12<1.0055739879608154){
     s0+=12.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i29<0.0024061729200184345){
   if(i18<0.00021199247566983104){
    if(i1<0.0004202723503112793){
     s1+=867.0;
    } else {
     s0+=36.0;
    }
   } else {
    s0+=262.0;
   }
  } else {
   if(i13<0.8888276815414429){
    if(i43<0.13133302330970764){
     s0+=42.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   } else {
    if(i56<-5.7376769291295204e-06){
     s0+=61.0;
     s1+=15110.0;
    } else {
     s0+=7.0;
     s1+=54.0;
    }
   }
  }
 }
} else {
 if(i0<0.0009622573852539062){
  if(i12<1.0019607543945312){
   if(i38<0.0007080128416419029){
    if(i19<0.0008577884291298687){
     s0+=62071.0;
     s1+=133.0;
    } else {
     s0+=14340.0;
     s1+=337.0;
    }
   } else {
    if(i6<0.9982826709747314){
     s0+=20319.0;
     s1+=364.0;
    } else {
     s0+=8902.0;
     s1+=2896.0;
    }
   }
  } else {
   if(i51<0.03247472643852234){
    if(i31<1.116804838180542){
     s0+=1233.0;
     s1+=598.0;
    } else {
     s0+=5387.0;
     s1+=381.0;
    }
   } else {
    if(i15<0.09962698817253113){
     s0+=710.0;
     s1+=185.0;
    } else {
     s0+=344.0;
     s1+=868.0;
    }
   }
  }
 } else {
  if(i24<0.0010797297582030296){
   if(i31<1.0510683059692383){
    s0+=70.0;
   } else {
    s1+=1507.0;
   }
  } else {
   if(i46<0.0021397857926785946){
    if(i31<1.176405668258667){
     s0+=1695.0;
    } else {
     s0+=11.0;
     s1+=369.0;
    }
   } else {
    if(i54<0.0020770798437297344){
     s0+=26.0;
     s1+=1.0;
    } else {
     s0+=39.0;
     s1+=550.0;
    }
   }
  }
 }
}
if(i12<1.0026322603225708){
 if(i17<0.22834980487823486){
  if(i34<1.0903575420379639){
   if(i9<1.0091599225997925){
    if(i31<1.0577976703643799){
     s0+=18693.0;
     s1+=4.0;
    } else {
     s0+=9244.0;
     s1+=2264.0;
    }
   } else {
    if(i4<2.753734588623047e-05){
     s0+=74.0;
     s1+=3.0;
    } else {
     s0+=53.0;
     s1+=980.0;
    }
   }
  } else {
   if(i55<0.01395667064934969){
    if(i44<1.029104471206665){
     s0+=81174.0;
     s1+=1212.0;
    } else {
     s0+=706.0;
     s1+=202.0;
    }
   } else {
    if(i15<0.041842877864837646){
     s0+=309.0;
     s1+=12.0;
    } else {
     s0+=47.0;
     s1+=190.0;
    }
   }
  }
 } else {
  if(i50<-8.016733772819862e-06){
   if(i58<1.0059902667999268){
    if(i55<0.0018299453658983111){
     s0+=14.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=647.0;
    }
   } else {
    s0+=10.0;
   }
  } else {
   s0+=132.0;
  }
 }
} else {
 if(i2<1.008251667022705){
  if(i30<-0.00027563897310756147){
   if(i17<0.07494160532951355){
    if(i76<-0.005570948123931885){
     s0+=45.0;
     s1+=170.0;
    } else {
     s0+=474.0;
     s1+=104.0;
    }
   } else {
    if(i5<1.4007091522216797e-05){
     s0+=83.0;
     s1+=22.0;
    } else {
     s0+=336.0;
     s1+=3755.0;
    }
   }
  } else {
   if(i28<0.0004627108573913574){
    if(i47<0.0002894251374527812){
     s0+=236.0;
     s1+=1068.0;
    } else {
     s0+=99.0;
     s1+=1.0;
    }
   } else {
    if(i21<0.029481148347258568){
     s0+=4018.0;
     s1+=168.0;
    } else {
     s0+=250.0;
     s1+=428.0;
    }
   }
  }
 } else {
  if(i3<-7.133703911677003e-05){
   if(i40<1.1200847625732422){
    if(i46<0.0009583310456946492){
     s0+=6.0;
     s1+=1019.0;
    } else {
     s0+=43.0;
     s1+=266.0;
    }
   } else {
    s1+=11185.0;
   }
  } else {
   if(i67<-4.112720489501953e-06){
    if(i45<1.006500244140625){
     s0+=25.0;
     s1+=22.0;
    } else {
     s0+=30.0;
     s1+=320.0;
    }
   } else {
    if(i18<0.00039512652438133955){
     s1+=277.0;
    } else {
     s0+=418.0;
    }
   }
  }
 }
}
if(i27<1.0080575942993164){
 if(i14<1.020301103591919){
  if(i3<-9.114939894061536e-05){
   if(i25<1.046175241470337){
    if(i10<0.975085973739624){
     s0+=544.0;
     s1+=8.0;
    } else {
     s0+=12.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.0674402713775635){
     s0+=326.0;
     s1+=336.0;
    } else {
     s0+=85.0;
     s1+=1464.0;
    }
   }
  } else {
   if(i19<0.001728216651827097){
    if(i38<0.0006280579837039113){
     s0+=74745.0;
     s1+=264.0;
    } else {
     s0+=16085.0;
     s1+=716.0;
    }
   } else {
    if(i32<0.0010818548034876585){
     s0+=2761.0;
     s1+=2299.0;
    } else {
     s0+=18971.0;
     s1+=2104.0;
    }
   }
  }
 } else {
  if(i17<0.1792495846748352){
   if(i56<-1.154505298472941e-05){
    if(i10<1.0142841339111328){
     s0+=330.0;
     s1+=20.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i3<-3.2701733289286494e-05){
     s0+=115.0;
     s1+=746.0;
    } else {
     s0+=253.0;
     s1+=33.0;
    }
   }
  } else {
   if(i2<1.0016634464263916){
    if(i21<0.034531254321336746){
     s0+=84.0;
     s1+=38.0;
    } else {
     s0+=28.0;
     s1+=275.0;
    }
   } else {
    if(i33<-0.0035530924797058105){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=2074.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007036929600872099){
  if(i9<1.0176953077316284){
   if(i0<0.0010479092597961426){
    if(i66<0.08525602519512177){
     s0+=478.0;
     s1+=133.0;
    } else {
     s0+=1.0;
     s1+=126.0;
    }
   } else {
    if(i25<1.016479730606079){
     s0+=5.0;
    } else {
     s0+=60.0;
     s1+=2786.0;
    }
   }
  } else {
   if(i3<-3.5052187740802765e-05){
    if(i52<-6.456398295995314e-06){
     s0+=13.0;
    } else {
     s0+=4.0;
     s1+=11006.0;
    }
   } else {
    if(i38<0.0005400604568421841){
     s0+=8.0;
    } else {
     s1+=23.0;
    }
   }
  }
 } else {
  if(i8<1.077824592590332){
   s0+=1467.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i2<1.0038518905639648){
 if(i17<0.21786299347877502){
  if(i38<0.00072047597495839){
   if(i50<-1.894672095659189e-05){
    if(i54<0.0017981529235839844){
     s0+=27.0;
    } else {
     s1+=74.0;
    }
   } else {
    if(i32<0.00025465668295510113){
     s0+=17291.0;
     s1+=308.0;
    } else {
     s0+=62190.0;
     s1+=163.0;
    }
   }
  } else {
   if(i24<0.0009185309754684567){
    if(i26<1.056142807006836){
     s0+=2479.0;
    } else {
     s0+=637.0;
     s1+=3087.0;
    }
   } else {
    if(i62<0.004610382951796055){
     s0+=28533.0;
     s1+=1344.0;
    } else {
     s0+=718.0;
     s1+=638.0;
    }
   }
  }
 } else {
  if(i3<-3.904113327735104e-05){
   if(i38<0.0004769577062688768){
    s0+=4.0;
   } else {
    if(i51<0.01702464558184147){
     s0+=7.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=970.0;
    }
   }
  } else {
   if(i2<1.0022605657577515){
    if(i65<-1.0683495474950178e-06){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=247.0;
     s1+=32.0;
    }
   } else {
    if(i7<0.005827356595546007){
     s0+=10.0;
    } else {
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i32<0.0019342033192515373){
  if(i18<0.00023275752027984709){
   if(i26<1.1229777336120605){
    s1+=2595.0;
   } else {
    if(i9<1.0410871505737305){
     s0+=142.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i68<0.004157543182373047){
    if(i13<1.0189754962921143){
     s0+=3655.0;
    } else {
     s0+=284.0;
     s1+=6.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i22<0.0976891815662384){
   if(i74<0.006458933465182781){
    if(i24<0.005717494059354067){
     s0+=17.0;
     s1+=42.0;
    } else {
     s0+=100.0;
     s1+=6.0;
    }
   } else {
    if(i24<0.0020584072917699814){
     s0+=10.0;
    } else {
     s0+=41.0;
     s1+=617.0;
    }
   }
  } else {
   if(i68<-0.019298166036605835){
    if(i46<0.012843703851103783){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i39<0.9971568584442139){
     s0+=3.0;
    } else {
     s0+=43.0;
     s1+=14444.0;
    }
   }
  }
 }
}
if(i11<1.0135951042175293){
 if(i4<0.0005109906196594238){
  if(i25<1.1283433437347412){
   if(i22<0.23878037929534912){
    if(i39<0.9998574256896973){
     s0+=49107.0;
     s1+=226.0;
    } else {
     s0+=57427.0;
     s1+=3275.0;
    }
   } else {
    if(i36<0.22525009512901306){
     s0+=8.0;
    } else {
     s1+=50.0;
    }
   }
  } else {
   if(i19<0.0029441751539707184){
    if(i39<1.0008950233459473){
     s0+=1325.0;
     s1+=9.0;
    } else {
     s0+=349.0;
     s1+=105.0;
    }
   } else {
    if(i66<0.1561405509710312){
     s0+=126.0;
     s1+=67.0;
    } else {
     s0+=42.0;
     s1+=451.0;
    }
   }
  }
 } else {
  if(i61<0.00016299766139127314){
   if(i9<1.0211288928985596){
    if(i37<0.0009772363118827343){
     s0+=1716.0;
     s1+=1095.0;
    } else {
     s0+=3330.0;
     s1+=87.0;
    }
   } else {
    if(i26<1.124298334121704){
     s1+=90.0;
    } else {
     s0+=109.0;
     s1+=120.0;
    }
   }
  } else {
   if(i15<0.10422098636627197){
    if(i65<-5.831424459756818e-06){
     s0+=66.0;
     s1+=471.0;
    } else {
     s0+=1307.0;
     s1+=714.0;
    }
   } else {
    if(i7<0.00673914048820734){
     s0+=222.0;
     s1+=150.0;
    } else {
     s0+=129.0;
     s1+=2811.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007059713825583458){
  if(i31<1.6811659336090088){
   if(i3<-3.42728199029807e-05){
    if(i7<0.004809844773262739){
     s0+=174.0;
     s1+=930.0;
    } else {
     s0+=22.0;
     s1+=13563.0;
    }
   } else {
    if(i15<0.2111319601535797){
     s0+=367.0;
     s1+=69.0;
    } else {
     s0+=14.0;
     s1+=73.0;
    }
   }
  } else {
   s0+=97.0;
  }
 } else {
  s0+=567.0;
 }
}
if(i3<-9.340103133581579e-05){
 if(i8<0.9394705891609192){
  if(i25<1.0944023132324219){
   if(i63<0.001558396266773343){
    if(i68<-0.012781798839569092){
     s0+=603.0;
     s1+=11.0;
    } else {
     s0+=27.0;
     s1+=13.0;
    }
   } else {
    s1+=10.0;
   }
  } else {
   if(i64<0.9849085807800293){
    if(i21<0.05452411621809006){
     s0+=38.0;
     s1+=8.0;
    } else {
     s0+=51.0;
     s1+=75.0;
    }
   } else {
    if(i21<0.033470164984464645){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i48<2.8461217880249023e-05){
   if(i38<0.003915579058229923){
    if(i25<1.0280835628509521){
     s0+=41.0;
     s1+=4.0;
    } else {
     s0+=145.0;
     s1+=15139.0;
    }
   } else {
    if(i12<1.003738284111023){
     s0+=106.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i35<1.1405802965164185){
    if(i52<-8.181821613106877e-06){
     s0+=118.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=16.0;
   }
  }
 }
} else {
 if(i14<1.0156245231628418){
  if(i20<0.0001995563507080078){
   if(i45<1.0086530447006226){
    if(i5<1.6033649444580078e-05){
     s0+=105469.0;
     s1+=3187.0;
    } else {
     s0+=6891.0;
     s1+=1605.0;
    }
   } else {
    if(i0<-0.0001742839813232422){
     s0+=374.0;
     s1+=82.0;
    } else {
     s0+=135.0;
     s1+=450.0;
    }
   }
  } else {
   if(i62<0.00038977235089987516){
    if(i5<1.4722347259521484e-05){
     s0+=56.0;
    } else {
     s0+=15.0;
     s1+=610.0;
    }
   } else {
    if(i13<1.0005614757537842){
     s0+=4.0;
     s1+=73.0;
    } else {
     s0+=473.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i41<1.090468406677246){
   if(i4<8.237361907958984e-05){
    s0+=18.0;
   } else {
    if(i8<1.0031940937042236){
     s0+=2.0;
     s1+=2.0;
    } else {
     s1+=1222.0;
    }
   }
  } else {
   if(i21<0.02313327044248581){
    if(i18<0.00027919982676394284){
     s0+=784.0;
     s1+=283.0;
    } else {
     s0+=1121.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.005308019928634167){
     s0+=316.0;
     s1+=13.0;
    } else {
     s0+=76.0;
     s1+=1017.0;
    }
   }
  }
 }
}
if(i25<1.1279573440551758){
 if(i13<1.0166881084442139){
  if(i21<0.00660477951169014){
   if(i0<0.0011419057846069336){
    if(i35<1.0108387470245361){
     s0+=1041.0;
     s1+=137.0;
    } else {
     s0+=68665.0;
     s1+=527.0;
    }
   } else {
    if(i34<1.0958809852600098){
     s1+=616.0;
    } else {
     s0+=753.0;
     s1+=109.0;
    }
   }
  } else {
   if(i4<7.110834121704102e-05){
    if(i24<0.0006627158727496862){
     s0+=7387.0;
     s1+=904.0;
    } else {
     s0+=29101.0;
     s1+=226.0;
    }
   } else {
    if(i38<0.0012048828648403287){
     s0+=2021.0;
     s1+=3384.0;
    } else {
     s0+=3656.0;
     s1+=1307.0;
    }
   }
  }
 } else {
  if(i16<1.017743706703186){
   if(i32<0.001172563061118126){
    if(i28<5.7756900787353516e-05){
     s0+=16.0;
    } else {
     s0+=9.0;
     s1+=527.0;
    }
   } else {
    if(i40<1.1268494129180908){
     s0+=904.0;
     s1+=251.0;
    } else {
     s0+=90.0;
     s1+=244.0;
    }
   }
  } else {
   if(i39<1.0005253553390503){
    s0+=62.0;
   } else {
    if(i8<1.020586371421814){
     s0+=59.0;
     s1+=260.0;
    } else {
     s0+=33.0;
     s1+=2337.0;
    }
   }
  }
 }
} else {
 if(i40<1.1710798740386963){
  if(i31<1.1759499311447144){
   s0+=1381.0;
  } else {
   if(i6<0.9976275563240051){
    if(i38<0.0025333529338240623){
     s0+=344.0;
     s1+=17.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i39<1.000831127166748){
     s0+=48.0;
     s1+=11.0;
    } else {
     s0+=212.0;
     s1+=1908.0;
    }
   }
  }
 } else {
  if(i4<0.0002378523349761963){
   if(i43<0.11070027947425842){
    if(i68<0.006973445415496826){
     s0+=638.0;
     s1+=18.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i65<1.9371516373212216e-06){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=306.0;
    }
   }
  } else {
   if(i17<1.722574234008789e-05){
    if(i33<-0.0032113194465637207){
     s0+=26.0;
     s1+=11.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i36<0.03138342499732971){
     s0+=18.0;
     s1+=242.0;
    } else {
     s0+=5.0;
     s1+=10964.0;
    }
   }
  }
 }
}
if(i3<-8.7317792349495e-05){
 if(i67<-0.007095664739608765){
  if(i21<0.055532753467559814){
   if(i15<0.08494293689727783){
    if(i24<0.014290207996964455){
     s0+=646.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=7.0;
    }
   } else {
    if(i10<0.9571603536605835){
     s0+=4.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i69<0.3872458040714264){
    if(i62<0.0011559890117496252){
     s0+=54.0;
     s1+=2.0;
    } else {
     s0+=32.0;
     s1+=34.0;
    }
   } else {
    if(i9<0.8217416405677795){
     s0+=13.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i34<1.1528396606445312){
   if(i52<-3.3731089388311375e-06){
    if(i43<0.04536391794681549){
     s0+=297.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i45<0.9976435899734497){
     s0+=19.0;
    } else {
     s0+=8.0;
     s1+=884.0;
    }
   }
  } else {
   if(i16<0.9590750336647034){
    if(i46<0.012291919440031052){
     s0+=93.0;
     s1+=64.0;
    } else {
     s0+=11.0;
     s1+=143.0;
    }
   } else {
    if(i16<0.9913197755813599){
     s0+=94.0;
     s1+=1681.0;
    } else {
     s0+=20.0;
     s1+=13279.0;
    }
   }
  }
 }
} else {
 if(i4<0.0003281235694885254){
  if(i34<1.0905301570892334){
   if(i7<0.0027833054773509502){
    if(i16<0.9953864812850952){
     s0+=3419.0;
     s1+=339.0;
    } else {
     s0+=18474.0;
     s1+=105.0;
    }
   } else {
    if(i5<-9.47713851928711e-06){
     s0+=4334.0;
     s1+=35.0;
    } else {
     s0+=306.0;
     s1+=1633.0;
    }
   }
  } else {
   if(i25<1.122455358505249){
    if(i38<0.0007816767902113497){
     s0+=52160.0;
     s1+=94.0;
    } else {
     s0+=23101.0;
     s1+=477.0;
    }
   } else {
    if(i45<1.0022560358047485){
     s0+=2328.0;
     s1+=134.0;
    } else {
     s0+=181.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i11<1.0134090185165405){
   if(i7<0.004131694324314594){
    if(i31<1.0954763889312744){
     s0+=2518.0;
     s1+=333.0;
    } else {
     s0+=5697.0;
     s1+=66.0;
    }
   } else {
    if(i58<1.0032769441604614){
     s0+=554.0;
     s1+=2403.0;
    } else {
     s0+=1231.0;
     s1+=423.0;
    }
   }
  } else {
   if(i7<0.006389600690454245){
    if(i37<0.000992561224848032){
     s1+=470.0;
    } else {
     s0+=804.0;
     s1+=30.0;
    }
   } else {
    if(i7<0.007035289891064167){
     s0+=16.0;
     s1+=85.0;
    } else {
     s1+=1357.0;
    }
   }
  }
 }
}
if(i2<1.0037140846252441){
 if(i35<1.140138864517212){
  if(i15<0.20532405376434326){
   if(i7<0.00370546942576766){
    if(i38<0.0005329075502231717){
     s0+=63768.0;
     s1+=132.0;
    } else {
     s0+=24004.0;
     s1+=927.0;
    }
   } else {
    if(i2<0.9988390207290649){
     s0+=21190.0;
     s1+=671.0;
    } else {
     s0+=2175.0;
     s1+=3229.0;
    }
   }
  } else {
   if(i7<0.004824822302907705){
    if(i3<-7.318404095713049e-05){
     s1+=4.0;
    } else {
     s0+=145.0;
     s1+=5.0;
    }
   } else {
    if(i45<0.9974383115768433){
     s0+=13.0;
    } else {
     s0+=1.0;
     s1+=324.0;
    }
   }
  }
 } else {
  if(i24<0.0025681916158646345){
   if(i53<0.2642219662666321){
    s0+=418.0;
   } else {
    if(i31<1.2102038860321045){
     s1+=1.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   if(i34<1.2320208549499512){
    if(i42<2.6048412109958008e-05){
     s0+=5.0;
     s1+=141.0;
    } else {
     s0+=77.0;
     s1+=53.0;
    }
   } else {
    if(i21<0.023369332775473595){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=1078.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007037244504317641){
  if(i33<0.0012027621269226074){
   if(i69<0.11010339111089706){
    if(i32<0.0019358457066118717){
     s0+=1584.0;
     s1+=477.0;
    } else {
     s0+=72.0;
     s1+=765.0;
    }
   } else {
    if(i35<1.1044622659683228){
     s0+=147.0;
     s1+=720.0;
    } else {
     s0+=42.0;
     s1+=2211.0;
    }
   }
  } else {
   if(i4<0.0003396272659301758){
    if(i13<1.0266315937042236){
     s0+=69.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i1<0.0005916357040405273){
     s0+=11.0;
     s1+=12689.0;
    } else {
     s0+=28.0;
     s1+=904.0;
    }
   }
  }
 } else {
  if(i43<0.11421326547861099){
   s0+=2675.0;
  } else {
   s1+=3.0;
  }
 }
}
if(i7<0.007997903972864151){
 if(i14<1.0160307884216309){
  if(i1<8.147954940795898e-05){
   if(i12<1.002121925354004){
    if(i7<0.0031147997360676527){
     s0+=79947.0;
     s1+=699.0;
    } else {
     s0+=23416.0;
     s1+=2425.0;
    }
   } else {
    if(i21<0.008028005249798298){
     s0+=4321.0;
     s1+=283.0;
    } else {
     s0+=1287.0;
     s1+=759.0;
    }
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=852.0;
   } else {
    if(i34<1.1762815713882446){
     s0+=774.0;
    } else {
     s0+=3.0;
     s1+=382.0;
    }
   }
  }
 } else {
  if(i20<0.0002835392951965332){
   if(i37<0.0009401518618687987){
    if(i54<0.0016549262218177319){
     s1+=505.0;
    } else {
     s0+=17.0;
    }
   } else {
    if(i7<0.0053291600197553635){
     s0+=1899.0;
     s1+=123.0;
    } else {
     s0+=163.0;
     s1+=370.0;
    }
   }
  } else {
   if(i18<0.0006562773487530649){
    if(i11<1.0079193115234375){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=1447.0;
    }
   } else {
    if(i54<0.015033856965601444){
     s0+=43.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i20<-0.0005007386207580566){
  if(i36<0.11813473701477051){
   if(i28<0.0007233023643493652){
    if(i72<-0.13035696744918823){
     s0+=91.0;
     s1+=79.0;
    } else {
     s0+=3328.0;
     s1+=134.0;
    }
   } else {
    if(i74<0.013800662010908127){
     s0+=141.0;
     s1+=57.0;
    } else {
     s0+=25.0;
     s1+=135.0;
    }
   }
  } else {
   if(i62<0.0036086386535316706){
    if(i45<1.0057748556137085){
     s0+=68.0;
     s1+=53.0;
    } else {
     s0+=15.0;
     s1+=121.0;
    }
   } else {
    if(i40<1.1080402135849){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=212.0;
    }
   }
  }
 } else {
  if(i5<-3.36766242980957e-05){
   s0+=592.0;
  } else {
   if(i38<0.004210424143821001){
    if(i25<1.0529450178146362){
     s0+=113.0;
     s1+=129.0;
    } else {
     s0+=151.0;
     s1+=15627.0;
    }
   } else {
    s0+=42.0;
   }
  }
 }
}
if(i1<6.431341171264648e-05){
 if(i7<0.0076058367267251015){
  if(i10<1.0058526992797852){
   if(i26<1.1162974834442139){
    if(i24<0.000233968545217067){
     s0+=18013.0;
     s1+=304.0;
    } else {
     s0+=11829.0;
     s1+=2307.0;
    }
   } else {
    if(i3<-6.406464672181755e-05){
     s0+=696.0;
     s1+=153.0;
    } else {
     s0+=75963.0;
     s1+=620.0;
    }
   }
  } else {
   if(i26<1.116804838180542){
    if(i43<0.006398109719157219){
     s0+=267.0;
     s1+=94.0;
    } else {
     s0+=35.0;
     s1+=494.0;
    }
   } else {
    if(i7<0.00478785764425993){
     s0+=2735.0;
     s1+=102.0;
    } else {
     s0+=77.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i25<1.1077709197998047){
   if(i26<1.11959969997406){
    if(i0<-0.0008033812046051025){
     s0+=51.0;
    } else {
     s1+=541.0;
    }
   } else {
    if(i12<1.0026501417160034){
     s0+=4169.0;
     s1+=139.0;
    } else {
     s0+=770.0;
     s1+=423.0;
    }
   }
  } else {
   if(i13<0.9119362831115723){
    if(i26<1.5508465766906738){
     s0+=138.0;
     s1+=75.0;
    } else {
     s0+=11.0;
     s1+=77.0;
    }
   } else {
    if(i15<0.040429770946502686){
     s0+=57.0;
     s1+=59.0;
    } else {
     s0+=48.0;
     s1+=2258.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007051074644550681){
  if(i11<1.0153679847717285){
   if(i19<0.0005908365128561854){
    if(i34<1.0983202457427979){
     s1+=13.0;
    } else {
     s0+=73.0;
     s1+=1.0;
    }
   } else {
    if(i1<0.0004979968070983887){
     s0+=199.0;
     s1+=3523.0;
    } else {
     s0+=72.0;
     s1+=4.0;
    }
   }
  } else {
   if(i65<1.636188244447112e-05){
    if(i48<8.082389831542969e-05){
     s0+=22.0;
     s1+=12485.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=2.0;
   }
  }
 } else {
  s0+=1756.0;
 }
}
if(i35<1.1180980205535889){
 if(i7<0.006985338404774666){
  if(i16<1.0092694759368896){
   if(i47<-2.2272844944382086e-05){
    if(i0<0.0009652376174926758){
     s0+=15.0;
    } else {
     s0+=4.0;
     s1+=239.0;
    }
   } else {
    if(i26<1.1162974834442139){
     s0+=29898.0;
     s1+=2770.0;
    } else {
     s0+=74423.0;
     s1+=566.0;
    }
   }
  } else {
   if(i37<0.000944507890380919){
    if(i32<0.00016778550343587995){
     s0+=3.0;
    } else {
     s1+=1507.0;
    }
   } else {
    if(i61<0.00016288178449030966){
     s0+=3229.0;
     s1+=397.0;
    } else {
     s0+=38.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i25<1.0489780902862549){
   if(i0<7.796287536621094e-05){
    if(i70<0.07515540719032288){
     s0+=4203.0;
     s1+=68.0;
    } else {
     s0+=33.0;
     s1+=30.0;
    }
   } else {
    if(i42<1.5737339708721265e-05){
     s0+=17.0;
     s1+=169.0;
    } else {
     s0+=120.0;
     s1+=36.0;
    }
   }
  } else {
   if(i12<1.0005171298980713){
    if(i29<0.0012229785788804293){
     s1+=53.0;
    } else {
     s0+=1245.0;
     s1+=86.0;
    }
   } else {
    if(i13<0.9821087121963501){
     s0+=900.0;
     s1+=1172.0;
    } else {
     s0+=85.0;
     s1+=4454.0;
    }
   }
  }
 }
} else {
 if(i3<-4.488406193559058e-05){
  if(i26<1.1846036911010742){
   s0+=131.0;
  } else {
   if(i50<-1.069588506652508e-05){
    if(i3<-9.02422470971942e-05){
     s0+=5.0;
     s1+=11336.0;
    } else {
     s0+=91.0;
     s1+=822.0;
    }
   } else {
    s0+=39.0;
   }
  }
 } else {
  if(i24<0.002561491448432207){
   if(i32<0.0020897649228572845){
    s0+=1228.0;
   } else {
    if(i41<1.1364446878433228){
     s1+=11.0;
    } else {
     s0+=377.0;
     s1+=2.0;
    }
   }
  } else {
   if(i40<1.1686761379241943){
    if(i1<-2.759695053100586e-05){
     s0+=393.0;
     s1+=40.0;
    } else {
     s0+=31.0;
     s1+=101.0;
    }
   } else {
    if(i65<4.42706914327573e-06){
     s0+=1.0;
     s1+=204.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i0<0.0009575486183166504){
 if(i5<1.2695789337158203e-05){
  if(i24<0.01591862365603447){
   if(i19<0.0014531228225678205){
    if(i24<0.0002752745058387518){
     s0+=19273.0;
     s1+=391.0;
    } else {
     s0+=61920.0;
     s1+=203.0;
    }
   } else {
    if(i24<0.0009020448196679354){
     s0+=1931.0;
     s1+=1881.0;
    } else {
     s0+=21304.0;
     s1+=815.0;
    }
   }
  } else {
   if(i22<0.06933426856994629){
    s0+=34.0;
   } else {
    s1+=147.0;
   }
  }
 } else {
  if(i43<0.015812087804079056){
   if(i19<0.00205183494836092){
    if(i16<1.0220694541931152){
     s0+=5288.0;
     s1+=23.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i41<1.0452228784561157){
     s0+=985.0;
    } else {
     s0+=507.0;
     s1+=661.0;
    }
   }
  } else {
   if(i10<0.9940041303634644){
    if(i43<0.1487426459789276){
     s0+=2004.0;
     s1+=636.0;
    } else {
     s0+=70.0;
     s1+=693.0;
    }
   } else {
    if(i21<0.013487011194229126){
     s0+=632.0;
     s1+=175.0;
    } else {
     s0+=225.0;
     s1+=2518.0;
    }
   }
  }
 }
} else {
 if(i41<1.1703872680664062){
  if(i46<0.0009182699141092598){
   if(i20<0.0001639723777770996){
    if(i38<0.0011436661006882787){
     s0+=3.0;
     s1+=181.0;
    } else {
     s0+=86.0;
     s1+=2.0;
    }
   } else {
    if(i18<0.0006500895251519978){
     s1+=2128.0;
    } else {
     s0+=23.0;
    }
   }
  } else {
   if(i24<0.002348781330510974){
    if(i26<1.116804838180542){
     s1+=100.0;
    } else {
     s0+=1867.0;
    }
   } else {
    if(i33<-0.0022919178009033203){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=586.0;
    }
   }
  }
 } else {
  if(i15<0.002888798713684082){
   if(i57<1.000321865081787){
    if(i3<-0.0001946813426911831){
     s1+=2.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   } else {
    s1+=37.0;
   }
  } else {
   if(i25<1.07395601272583){
    if(i57<1.0008655786514282){
     s0+=36.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=197.0;
    }
   } else {
    if(i59<0.013903988525271416){
     s0+=21.0;
     s1+=13181.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   }
  }
 }
}
if(i7<0.007649786304682493){
 if(i27<1.0097510814666748){
  if(i38<0.0007112111197784543){
   if(i13<1.0200262069702148){
    if(i24<0.001964594703167677){
     s0+=75130.0;
     s1+=323.0;
    } else {
     s0+=5123.0;
     s1+=180.0;
    }
   } else {
    if(i3<-7.61460469220765e-05){
     s0+=9.0;
     s1+=52.0;
    } else {
     s0+=350.0;
     s1+=16.0;
    }
   }
  } else {
   if(i5<-3.2782554626464844e-06){
    if(i25<1.0142598152160645){
     s0+=302.0;
     s1+=49.0;
    } else {
     s0+=19879.0;
     s1+=404.0;
    }
   } else {
    if(i37<0.0010450301924720407){
     s0+=2708.0;
     s1+=2786.0;
    } else {
     s0+=6876.0;
     s1+=942.0;
    }
   }
  }
 } else {
  if(i41<1.0953161716461182){
   if(i54<0.0013972872402518988){
    s1+=1254.0;
   } else {
    s0+=5.0;
   }
  } else {
   if(i0<0.0021652579307556152){
    if(i16<1.019341230392456){
     s0+=1093.0;
     s1+=57.0;
    } else {
     s0+=13.0;
     s1+=248.0;
    }
   } else {
    if(i57<0.9978768229484558){
     s0+=41.0;
    } else {
     s1+=1104.0;
    }
   }
  }
 }
} else {
 if(i22<0.07124695181846619){
  if(i74<0.028870839625597){
   if(i65<2.79354935628362e-06){
    if(i47<0.00018352702318225056){
     s0+=2.0;
     s1+=121.0;
    } else {
     s0+=337.0;
     s1+=55.0;
    }
   } else {
    if(i4<0.0008681416511535645){
     s0+=3646.0;
     s1+=12.0;
    } else {
     s0+=88.0;
     s1+=10.0;
    }
   }
  } else {
   if(i73<-0.012800246477127075){
    if(i6<1.0035831928253174){
     s0+=200.0;
     s1+=53.0;
    } else {
     s0+=65.0;
     s1+=153.0;
    }
   } else {
    if(i1<2.384185791015625e-06){
     s0+=9.0;
     s1+=31.0;
    } else {
     s1+=128.0;
    }
   }
  }
 } else {
  if(i56<-1.8833502508641686e-06){
   if(i10<0.9663456678390503){
    if(i29<0.015722882002592087){
     s0+=386.0;
     s1+=24.0;
    } else {
     s0+=11.0;
     s1+=93.0;
    }
   } else {
    if(i38<0.00418656412512064){
     s0+=234.0;
     s1+=16025.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   s0+=193.0;
  }
 }
}
if(i0<0.0009551644325256348){
 if(i3<-7.644463767064735e-05){
  if(i33<-0.004169642925262451){
   if(i74<0.0466129332780838){
    if(i22<0.1073237955570221){
     s0+=972.0;
     s1+=38.0;
    } else {
     s0+=12.0;
     s1+=133.0;
    }
   } else {
    if(i13<0.8491255044937134){
     s0+=12.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=64.0;
    }
   }
  } else {
   if(i30<-0.0003157929750159383){
    if(i35<1.0756244659423828){
     s0+=167.0;
     s1+=206.0;
    } else {
     s0+=37.0;
     s1+=1838.0;
    }
   } else {
    if(i22<0.13507306575775146){
     s0+=364.0;
     s1+=117.0;
    } else {
     s0+=15.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i38<0.0007271702634170651){
   if(i25<1.023176908493042){
    if(i31<1.0577976703643799){
     s0+=6768.0;
    } else {
     s0+=4457.0;
     s1+=263.0;
    }
   } else {
    if(i50<-2.004273483180441e-05){
     s0+=107.0;
     s1+=36.0;
    } else {
     s0+=70079.0;
     s1+=267.0;
    }
   }
  } else {
   if(i2<0.9984181523323059){
    if(i1<-5.02467155456543e-05){
     s0+=21274.0;
     s1+=269.0;
    } else {
     s0+=1774.0;
     s1+=354.0;
    }
   } else {
    if(i21<0.009109364822506905){
     s0+=6682.0;
     s1+=641.0;
    } else {
     s0+=1697.0;
     s1+=3655.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007065525278449059){
  if(i40<1.1157443523406982){
   if(i55<0.0008257455192506313){
    if(i52<-4.542123861028813e-06){
     s0+=6.0;
    } else {
     s0+=13.0;
     s1+=2270.0;
    }
   } else {
    if(i59<0.0008285482181236148){
     s0+=198.0;
     s1+=90.0;
    } else {
     s0+=17.0;
     s1+=174.0;
    }
   }
  } else {
   if(i22<0.0009492039680480957){
    if(i57<1.000321865081787){
     s0+=37.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=26.0;
    }
   } else {
    if(i61<0.005026070401072502){
     s0+=51.0;
     s1+=13651.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  s0+=1892.0;
 }
}
if(i20<0.00020819902420043945){
 if(i19<0.001959271728992462){
  if(i26<1.0905578136444092){
   if(i1<8.231401443481445e-05){
    if(i34<1.05497145652771){
     s0+=18136.0;
     s1+=138.0;
    } else {
     s0+=4290.0;
     s1+=912.0;
    }
   } else {
    s1+=77.0;
   }
  } else {
   if(i32<0.0018095234408974648){
    if(i35<1.0157350301742554){
     s0+=2019.0;
     s1+=76.0;
    } else {
     s0+=60051.0;
     s1+=60.0;
    }
   } else {
    if(i1<1.6748905181884766e-05){
     s0+=11241.0;
     s1+=201.0;
    } else {
     s0+=99.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i4<0.0001583695411682129){
   if(i29<0.001116912579163909){
    if(i37<0.000996363116428256){
     s0+=159.0;
     s1+=429.0;
    } else {
     s0+=165.0;
     s1+=52.0;
    }
   } else {
    if(i72<0.13791301846504211){
     s0+=13794.0;
     s1+=470.0;
    } else {
     s0+=28.0;
     s1+=136.0;
    }
   }
  } else {
   if(i22<0.049057453870773315){
    if(i12<1.0064363479614258){
     s0+=3198.0;
     s1+=557.0;
    } else {
     s0+=12.0;
     s1+=89.0;
    }
   } else {
    if(i30<-0.00013806720380671322){
     s0+=875.0;
     s1+=6282.0;
    } else {
     s0+=1533.0;
     s1+=1373.0;
    }
   }
  }
 }
} else {
 if(i29<0.002613646909594536){
  if(i46<0.0008179399883374572){
   if(i31<1.1209434270858765){
    if(i24<0.0011514084180817008){
     s1+=1907.0;
    } else {
     s0+=16.0;
    }
   } else {
    s0+=34.0;
   }
  } else {
   if(i26<1.1180615425109863){
    s1+=123.0;
   } else {
    if(i43<0.023844493553042412){
     s0+=891.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i4<0.00035059452056884766){
   if(i19<0.0022141176741570234){
    s0+=84.0;
   } else {
    s1+=85.0;
   }
  } else {
   s1+=11055.0;
  }
 }
}
if(i9<1.017686128616333){
 if(i59<0.0014403440291061997){
  if(i5<1.4007091522216797e-05){
   if(i4<0.00016313791275024414){
    if(i17<0.254138708114624){
     s0+=89157.0;
     s1+=1556.0;
    } else {
     s0+=13.0;
     s1+=41.0;
    }
   } else {
    if(i7<0.004071655683219433){
     s0+=9159.0;
     s1+=146.0;
    } else {
     s0+=446.0;
     s1+=753.0;
    }
   }
  } else {
   if(i11<1.0136241912841797){
    if(i0<0.0014296770095825195){
     s0+=7944.0;
     s1+=1668.0;
    } else {
     s0+=469.0;
     s1+=683.0;
    }
   } else {
    if(i18<0.0004564027476590127){
     s0+=83.0;
     s1+=912.0;
    } else {
     s0+=330.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i7<0.013633918017148972){
   if(i39<1.0018727779388428){
    if(i27<0.9941073656082153){
     s0+=4251.0;
     s1+=77.0;
    } else {
     s0+=1164.0;
     s1+=384.0;
    }
   } else {
    if(i20<-0.00014334917068481445){
     s0+=1130.0;
     s1+=436.0;
    } else {
     s0+=35.0;
     s1+=775.0;
    }
   }
  } else {
   if(i25<1.052932858467102){
    if(i12<1.006037712097168){
     s0+=732.0;
     s1+=39.0;
    } else {
     s0+=13.0;
     s1+=42.0;
    }
   } else {
    if(i36<0.010128110647201538){
     s0+=217.0;
     s1+=211.0;
    } else {
     s0+=104.0;
     s1+=2595.0;
    }
   }
  }
 }
} else {
 if(i1<1.2189149856567383e-05){
  if(i29<0.006066208705306053){
   if(i45<1.0006139278411865){
    if(i54<0.0006690593436360359){
     s1+=7.0;
    } else {
     s0+=431.0;
     s1+=1.0;
    }
   } else {
    if(i41<1.182697057723999){
     s0+=206.0;
     s1+=28.0;
    } else {
     s0+=49.0;
     s1+=107.0;
    }
   }
  } else {
   if(i25<1.1078033447265625){
    s0+=21.0;
   } else {
    if(i7<0.0060442108660936356){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=216.0;
    }
   }
  }
 } else {
  if(i11<1.0200928449630737){
   if(i52<-5.429086286312668e-06){
    if(i72<0.12045639753341675){
     s0+=218.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i3<-4.434812581166625e-05){
     s0+=156.0;
     s1+=1642.0;
    } else {
     s0+=189.0;
     s1+=198.0;
    }
   }
  } else {
   if(i38<0.00013157280045561492){
    if(i39<1.001516342163086){
     s0+=19.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i18<0.0008271475089713931){
     s0+=46.0;
     s1+=11682.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
}
if(i3<-8.06590833235532e-05){
 if(i13<0.9207584857940674){
  if(i36<0.03375944495201111){
   if(i20<-0.00032961368560791016){
    if(i72<-0.13560634851455688){
     s0+=56.0;
     s1+=59.0;
    } else {
     s0+=769.0;
     s1+=24.0;
    }
   } else {
    if(i0<0.0003790855407714844){
     s0+=3.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i33<-0.004087269306182861){
    if(i16<0.9405944347381592){
     s0+=98.0;
     s1+=32.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    if(i77<-0.02187231183052063){
     s0+=6.0;
     s1+=135.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i22<0.05870687961578369){
   if(i76<-0.005468249320983887){
    if(i29<0.006434612441807985){
     s0+=29.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=141.0;
    }
   } else {
    if(i10<1.0126595497131348){
     s0+=236.0;
     s1+=35.0;
    } else {
     s0+=1.0;
     s1+=31.0;
    }
   }
  } else {
   if(i18<0.0007054299348965287){
    if(i50<-1.3390512322075665e-05){
     s0+=122.0;
     s1+=16196.0;
    } else {
     s0+=39.0;
    }
   } else {
    s0+=289.0;
   }
  }
 }
} else {
 if(i8<1.0090718269348145){
  if(i2<1.0079002380371094){
   if(i19<0.0016890314873307943){
    if(i68<-0.0008314251899719238){
     s0+=11983.0;
     s1+=444.0;
    } else {
     s0+=77030.0;
     s1+=394.0;
    }
   } else {
    if(i6<0.9982155561447144){
     s0+=14631.0;
     s1+=354.0;
    } else {
     s0+=7240.0;
     s1+=3424.0;
    }
   }
  } else {
   if(i1<0.00010085105895996094){
    s0+=36.0;
   } else {
    if(i43<0.012571070343255997){
     s0+=13.0;
     s1+=69.0;
    } else {
     s1+=234.0;
    }
   }
  }
 } else {
  if(i19<0.001951331738382578){
   if(i34<1.0905578136444092){
    if(i4<0.0009520649909973145){
     s0+=6.0;
    } else {
     s1+=297.0;
    }
   } else {
    if(i2<1.0110187530517578){
     s0+=2978.0;
     s1+=60.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i33<-0.000303804874420166){
    if(i40<1.17234468460083){
     s0+=353.0;
     s1+=89.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i7<0.0035921859089285135){
     s0+=439.0;
     s1+=30.0;
    } else {
     s0+=229.0;
     s1+=2021.0;
    }
   }
  }
 }
}
if(i1<6.335973739624023e-05){
 if(i19<0.0018620742484927177){
  if(i38<0.0006220148643478751){
   if(i54<0.001965872012078762){
    if(i27<0.9986661672592163){
     s0+=23641.0;
     s1+=168.0;
    } else {
     s0+=48575.0;
     s1+=20.0;
    }
   } else {
    if(i37<0.0019564537797123194){
     s0+=2135.0;
    } else {
     s0+=1176.0;
     s1+=112.0;
    }
   }
  } else {
   if(i34<1.0912797451019287){
    if(i12<0.999350905418396){
     s0+=1985.0;
     s1+=57.0;
    } else {
     s0+=1379.0;
     s1+=764.0;
    }
   } else {
    if(i9<1.0223336219787598){
     s0+=14781.0;
     s1+=128.0;
    } else {
     s0+=11.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i9<1.0115301609039307){
   if(i1<-3.045797348022461e-05){
    if(i7<0.014877804554998875){
     s0+=15651.0;
     s1+=484.0;
    } else {
     s0+=622.0;
     s1+=247.0;
    }
   } else {
    if(i31<1.0531532764434814){
     s0+=1636.0;
    } else {
     s0+=2028.0;
     s1+=3517.0;
    }
   }
  } else {
   if(i0<-0.00020834803581237793){
    if(i64<1.1231228113174438){
     s0+=498.0;
     s1+=80.0;
    } else {
     s0+=36.0;
     s1+=136.0;
    }
   } else {
    if(i21<0.019211189821362495){
     s0+=230.0;
     s1+=375.0;
    } else {
     s0+=87.0;
     s1+=1498.0;
    }
   }
  }
 }
} else {
 if(i32<0.0020140332635492086){
  if(i55<0.0007059895433485508){
   if(i28<0.0005154013633728027){
    if(i41<1.1212427616119385){
     s0+=3.0;
     s1+=2203.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i25<1.119342565536499){
     s0+=121.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i52<-2.448026407364523e-06){
    if(i18<0.00018560353782959282){
     s0+=18.0;
     s1+=30.0;
    } else {
     s0+=1805.0;
     s1+=2.0;
    }
   } else {
    if(i38<0.00027324637630954385){
     s0+=51.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=157.0;
    }
   }
  }
 } else {
  if(i26<1.170810580253601){
   if(i46<0.0008929471950978041){
    s1+=10.0;
   } else {
    s0+=54.0;
   }
  } else {
   if(i15<0.02995699644088745){
    if(i76<-0.004652500152587891){
     s0+=21.0;
     s1+=82.0;
    } else {
     s0+=42.0;
     s1+=3.0;
    }
   } else {
    if(i17<0.10565221309661865){
     s0+=65.0;
     s1+=550.0;
    } else {
     s0+=19.0;
     s1+=13492.0;
    }
   }
  }
 }
}
if(i44<1.0266141891479492){
 if(i45<1.0031776428222656){
  if(i6<1.005873680114746){
   if(i29<0.001054586609825492){
    if(i9<1.0088798999786377){
     s0+=31460.0;
     s1+=2548.0;
    } else {
     s0+=234.0;
     s1+=800.0;
    }
   } else {
    if(i50<-3.3115968108177185e-05){
     s0+=459.0;
     s1+=292.0;
    } else {
     s0+=73440.0;
     s1+=732.0;
    }
   }
  } else {
   if(i25<1.0293214321136475){
    s0+=50.0;
   } else {
    if(i7<0.0033850683830678463){
     s0+=29.0;
     s1+=2.0;
    } else {
     s0+=39.0;
     s1+=489.0;
    }
   }
  }
 } else {
  if(i0<0.0012562274932861328){
   if(i21<0.05924190580844879){
    if(i1<-7.152557373046875e-06){
     s0+=4536.0;
     s1+=228.0;
    } else {
     s0+=3630.0;
     s1+=1361.0;
    }
   } else {
    if(i59<0.0008031993638724089){
     s0+=93.0;
     s1+=9.0;
    } else {
     s0+=94.0;
     s1+=769.0;
    }
   }
  } else {
   if(i21<0.003409934462979436){
    if(i38<0.0009967286605387926){
     s0+=12.0;
     s1+=264.0;
    } else {
     s0+=441.0;
     s1+=7.0;
    }
   } else {
    if(i34<1.1531562805175781){
     s0+=319.0;
     s1+=1117.0;
    } else {
     s0+=50.0;
     s1+=2902.0;
    }
   }
  }
 }
} else {
 if(i3<-4.416496813064441e-05){
  if(i20<-0.0007134974002838135){
   if(i64<1.1434135437011719){
    s0+=48.0;
   } else {
    s1+=16.0;
   }
  } else {
   if(i41<1.141157627105713){
    if(i41<1.095003366470337){
     s0+=2.0;
     s1+=682.0;
    } else {
     s0+=256.0;
     s1+=214.0;
    }
   } else {
    if(i41<1.6811659336090088){
     s0+=92.0;
     s1+=11468.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i4<0.00042635202407836914){
   if(i7<0.008365871384739876){
    if(i50<-6.565817784576211e-06){
     s0+=234.0;
     s1+=54.0;
    } else {
     s0+=716.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i42<2.4534689146094024e-05){
    if(i43<0.021622415632009506){
     s0+=149.0;
     s1+=67.0;
    } else {
     s0+=19.0;
     s1+=277.0;
    }
   } else {
    if(i27<0.9984327554702759){
     s0+=123.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i10<1.0102015733718872){
 if(i0<0.000963747501373291){
  if(i46<0.011744829826056957){
   if(i14<1.0181578397750854){
    if(i4<0.000292360782623291){
     s0+=101905.0;
     s1+=2675.0;
    } else {
     s0+=10144.0;
     s1+=2520.0;
    }
   } else {
    if(i56<-2.987671905430034e-06){
     s0+=515.0;
     s1+=915.0;
    } else {
     s0+=276.0;
     s1+=4.0;
    }
   }
  } else {
   if(i22<0.06588420271873474){
    if(i0<1.7344951629638672e-05){
     s0+=849.0;
     s1+=57.0;
    } else {
     s0+=26.0;
     s1+=47.0;
    }
   } else {
    if(i56<-3.4603890526341274e-06){
     s0+=59.0;
     s1+=1226.0;
    } else {
     s0+=104.0;
    }
   }
  }
 } else {
  if(i24<0.002433371264487505){
   if(i29<0.0010066942777484655){
    if(i32<0.00017668028885964304){
     s0+=64.0;
    } else {
     s1+=399.0;
    }
   } else {
    s0+=637.0;
   }
  } else {
   if(i10<0.9753035306930542){
    if(i28<0.0006874203681945801){
     s0+=34.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=71.0;
    }
   } else {
    if(i19<0.003969094250351191){
     s0+=49.0;
     s1+=376.0;
    } else {
     s0+=16.0;
     s1+=1783.0;
    }
   }
  }
 }
} else {
 if(i24<0.0025570078287273645){
  if(i28<0.0005522072315216064){
   if(i50<-1.3680617485078983e-05){
    if(i19<0.003294117283076048){
     s0+=5.0;
     s1+=2220.0;
    } else {
     s0+=25.0;
     s1+=2.0;
    }
   } else {
    s0+=170.0;
   }
  } else {
   if(i26<1.185887336730957){
    s0+=1344.0;
   } else {
    s1+=4.0;
   }
  }
 } else {
  if(i37<0.002489358652383089){
   if(i21<0.013951307162642479){
    s0+=37.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i3<-3.51091985066887e-05){
    if(i15<0.06536334753036499){
     s0+=33.0;
     s1+=127.0;
    } else {
     s0+=7.0;
     s1+=12075.0;
    }
   } else {
    if(i58<1.004868507385254){
     s1+=19.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
}
if(i0<0.0009595751762390137){
 if(i14<1.0181143283843994){
  if(i4<0.00031381845474243164){
   if(i28<5.322694778442383e-05){
    if(i22<0.23259040713310242){
     s0+=72637.0;
     s1+=722.0;
    } else {
     s0+=46.0;
     s1+=82.0;
    }
   } else {
    if(i51<0.020571745932102203){
     s0+=22551.0;
     s1+=949.0;
    } else {
     s0+=8514.0;
     s1+=1255.0;
    }
   }
  } else {
   if(i3<-4.7762052417965606e-05){
    if(i15<0.04120561480522156){
     s0+=887.0;
     s1+=240.0;
    } else {
     s0+=589.0;
     s1+=1808.0;
    }
   } else {
    if(i59<0.001290512620471418){
     s0+=7772.0;
     s1+=852.0;
    } else {
     s0+=399.0;
     s1+=345.0;
    }
   }
  }
 } else {
  if(i21<0.027138352394104004){
   if(i7<0.004864571616053581){
    if(i36<0.16183334589004517){
     s0+=640.0;
     s1+=42.0;
    } else {
     s0+=87.0;
     s1+=59.0;
    }
   } else {
    if(i28<-3.403425216674805e-05){
     s0+=39.0;
    } else {
     s0+=41.0;
     s1+=311.0;
    }
   }
  } else {
   if(i39<1.0036375522613525){
    if(i56<-2.4024716367421206e-06){
     s0+=17.0;
     s1+=1275.0;
    } else {
     s0+=51.0;
    }
   } else {
    if(i40<1.1695423126220703){
     s0+=83.0;
     s1+=57.0;
    } else {
     s1+=112.0;
    }
   }
  }
 }
} else {
 if(i7<0.0031077724415808916){
  if(i37<0.0009702632669359446){
   if(i29<0.00022223932319320738){
    s0+=56.0;
   } else {
    s1+=410.0;
   }
  } else {
   if(i0<0.002669692039489746){
    s0+=1433.0;
   } else {
    s1+=143.0;
   }
  }
 } else {
  if(i18<0.0009363369317725301){
   if(i33<-0.00226747989654541){
    if(i7<0.012508369982242584){
     s0+=30.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=302.0;
    }
   } else {
    if(i48<5.9545040130615234e-05){
     s0+=117.0;
     s1+=15492.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   s0+=363.0;
  }
 }
}
if(i2<1.003865361213684){
 if(i22<0.21416154503822327){
  if(i3<-8.288903336506337e-05){
   if(i63<-0.000941143836826086){
    if(i55<0.0037009366787970066){
     s0+=136.0;
     s1+=160.0;
    } else {
     s0+=17.0;
     s1+=493.0;
    }
   } else {
    if(i72<-0.11866533756256104){
     s0+=62.0;
     s1+=86.0;
    } else {
     s0+=1049.0;
     s1+=138.0;
    }
   }
  } else {
   if(i34<1.0903575420379639){
    if(i38<0.000722032506018877){
     s0+=25029.0;
     s1+=331.0;
    } else {
     s0+=3529.0;
     s1+=2648.0;
    }
   } else {
    if(i5<1.806020736694336e-05){
     s0+=79965.0;
     s1+=878.0;
    } else {
     s0+=2547.0;
     s1+=734.0;
    }
   }
  }
 } else {
  if(i38<0.0010140403173863888){
   if(i50<-1.5369325410574675e-05){
    if(i40<1.1089686155319214){
     s0+=3.0;
    } else {
     s1+=21.0;
    }
   } else {
    s0+=147.0;
   }
  } else {
   if(i40<1.1223869323730469){
    if(i61<0.0006962176412343979){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   } else {
    if(i43<0.06817513704299927){
     s0+=19.0;
     s1+=32.0;
    } else {
     s0+=10.0;
     s1+=944.0;
    }
   }
  }
 }
} else {
 if(i31<1.1766420602798462){
  if(i31<1.116804838180542){
   if(i0<0.0009918808937072754){
    if(i43<0.006413391791284084){
     s0+=573.0;
     s1+=50.0;
    } else {
     s0+=71.0;
     s1+=323.0;
    }
   } else {
    if(i18<0.0003168955445289612){
     s0+=4.0;
     s1+=2347.0;
    } else {
     s0+=73.0;
    }
   }
  } else {
   if(i43<0.050133220851421356){
    s0+=3253.0;
   } else {
    s1+=6.0;
   }
  }
 } else {
  if(i41<1.1343355178833008){
   if(i46<0.0005850042216479778){
    s0+=115.0;
   } else {
    if(i54<0.008633874356746674){
     s0+=12.0;
     s1+=179.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i0<0.000854194164276123){
    if(i18<0.00011286821973044425){
     s0+=21.0;
     s1+=8.0;
    } else {
     s0+=63.0;
     s1+=697.0;
    }
   } else {
    if(i59<0.012374822050333023){
     s0+=76.0;
     s1+=13876.0;
    } else {
     s0+=13.0;
     s1+=67.0;
    }
   }
  }
 }
}
if(i3<-9.340386895928532e-05){
 if(i10<0.9737917184829712){
  if(i36<0.07313269376754761){
   if(i21<0.05608603358268738){
    if(i76<-0.013536214828491211){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=603.0;
     s1+=6.0;
    }
   } else {
    if(i11<0.939947247505188){
     s0+=68.0;
     s1+=36.0;
    } else {
     s1+=23.0;
    }
   }
  } else {
   if(i10<0.9539836645126343){
    if(i35<1.0226426124572754){
     s0+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i64<0.8957104682922363){
     s0+=3.0;
    } else {
     s0+=7.0;
     s1+=115.0;
    }
   }
  }
 } else {
  if(i65<1.6857356968102977e-05){
   if(i57<0.9980504512786865){
    s0+=131.0;
   } else {
    if(i4<-0.0007401108741760254){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=198.0;
     s1+=15514.0;
    }
   }
  } else {
   if(i67<-0.0002467930316925049){
    s1+=7.0;
   } else {
    s0+=54.0;
   }
  }
 }
} else {
 if(i6<1.0040620565414429){
  if(i10<1.0073622465133667){
   if(i12<0.9994980096817017){
    if(i7<0.014051772654056549){
     s0+=53327.0;
     s1+=272.0;
    } else {
     s0+=40.0;
     s1+=53.0;
    }
   } else {
    if(i19<0.0013252150965854526){
     s0+=45083.0;
     s1+=300.0;
    } else {
     s0+=11745.0;
     s1+=3786.0;
    }
   }
  } else {
   if(i5<1.424551010131836e-05){
    if(i19<0.001468281028792262){
     s0+=418.0;
    } else {
     s0+=79.0;
     s1+=57.0;
    }
   } else {
    if(i58<0.9995942711830139){
     s0+=109.0;
    } else {
     s0+=175.0;
     s1+=861.0;
    }
   }
  }
 } else {
  if(i24<0.0009846989996731281){
   if(i37<0.0002089468907797709){
    s0+=513.0;
   } else {
    s1+=1630.0;
   }
  } else {
   if(i24<0.002289713593199849){
    if(i73<-0.0057659149169921875){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=3202.0;
     s1+=1.0;
    }
   } else {
    if(i26<1.3415037393569946){
     s0+=128.0;
     s1+=965.0;
    } else {
     s0+=750.0;
     s1+=554.0;
    }
   }
  }
 }
}
if(i22<0.19272729754447937){
 if(i1<6.586313247680664e-05){
  if(i12<1.002120852470398){
   if(i14<1.0181350708007812){
    if(i40<1.0687254667282104){
     s0+=45548.0;
     s1+=2626.0;
    } else {
     s0+=60844.0;
     s1+=878.0;
    }
   } else {
    if(i56<-3.188258233421948e-06){
     s0+=98.0;
     s1+=407.0;
    } else {
     s0+=422.0;
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.014269131235778332){
    if(i58<1.0029213428497314){
     s0+=2321.0;
     s1+=512.0;
    } else {
     s0+=2883.0;
     s1+=55.0;
    }
   } else {
    if(i15<0.05595552921295166){
     s0+=728.0;
     s1+=226.0;
    } else {
     s0+=666.0;
     s1+=1531.0;
    }
   }
  }
 } else {
  if(i7<0.00369512801989913){
   if(i31<1.116804838180542){
    if(i38<0.0010132021270692348){
     s0+=22.0;
     s1+=554.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i2<1.0118820667266846){
     s0+=1456.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i38<0.0034091868437826633){
    if(i18<0.0006736217765137553){
     s0+=177.0;
     s1+=4419.0;
    } else {
     s0+=116.0;
    }
   } else {
    if(i39<1.0023884773254395){
     s0+=157.0;
    } else {
     s0+=3.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i29<0.002393727656453848){
  if(i53<0.04211193695664406){
   if(i73<-0.0011179447174072266){
    if(i73<-0.0011670291423797607){
     s0+=12.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i24<0.002175453118979931){
     s0+=380.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.001923990435898304){
    s0+=71.0;
   } else {
    if(i33<-0.0008828043937683105){
     s0+=8.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i0<-0.0002231597900390625){
   if(i75<0.09469425678253174){
    if(i18<0.00012221084034536034){
     s0+=6.0;
    } else {
     s0+=13.0;
     s1+=249.0;
    }
   } else {
    if(i19<0.004743436351418495){
     s0+=269.0;
     s1+=24.0;
    } else {
     s0+=16.0;
     s1+=149.0;
    }
   }
  } else {
   if(i24<0.0025618672370910645){
    if(i50<-1.512800736236386e-05){
     s0+=1.0;
     s1+=36.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i33<-0.003108680248260498){
     s0+=6.0;
     s1+=133.0;
    } else {
     s0+=4.0;
     s1+=12589.0;
    }
   }
  }
 }
}
if(i44<1.0267492532730103){
 if(i12<1.0025758743286133){
  if(i22<0.231725811958313){
   if(i19<0.0017126054735854268){
    if(i34<1.0776758193969727){
     s0+=22438.0;
     s1+=687.0;
    } else {
     s0+=65819.0;
     s1+=220.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2538.0;
     s1+=2645.0;
    } else {
     s0+=18310.0;
     s1+=767.0;
    }
   }
  } else {
   if(i29<0.007538274861872196){
    if(i66<0.15175753831863403){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   } else {
    s1+=193.0;
   }
  }
 } else {
  if(i1<8.231401443481445e-05){
   if(i21<0.020444035530090332){
    if(i18<0.000252502562943846){
     s0+=943.0;
     s1+=545.0;
    } else {
     s0+=3202.0;
     s1+=129.0;
    }
   } else {
    if(i20<-0.000637739896774292){
     s0+=372.0;
     s1+=137.0;
    } else {
     s0+=230.0;
     s1+=1511.0;
    }
   }
  } else {
   if(i34<1.1631555557250977){
    if(i46<0.0007987376884557307){
     s0+=9.0;
     s1+=1429.0;
    } else {
     s0+=864.0;
     s1+=86.0;
    }
   } else {
    if(i68<-0.012134402990341187){
     s0+=44.0;
     s1+=120.0;
    } else {
     s0+=19.0;
     s1+=3201.0;
    }
   }
  }
 }
} else {
 if(i14<1.0201786756515503){
  if(i50<-1.4711605217598844e-05){
   if(i50<-3.38860263582319e-05){
    if(i35<1.0844072103500366){
     s0+=33.0;
     s1+=27.0;
    } else {
     s0+=15.0;
     s1+=346.0;
    }
   } else {
    if(i56<-1.1387117410777137e-05){
     s0+=206.0;
     s1+=9.0;
    } else {
     s0+=141.0;
     s1+=312.0;
    }
   }
  } else {
   if(i61<0.0001387891243211925){
    if(i65<4.350985363998916e-06){
     s0+=496.0;
    } else {
     s0+=95.0;
     s1+=10.0;
    }
   } else {
    if(i58<1.001692533493042){
     s0+=83.0;
    } else {
     s0+=39.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i10<1.0142195224761963){
   if(i15<0.19889360666275024){
    if(i1<2.5033950805664062e-05){
     s0+=370.0;
     s1+=138.0;
    } else {
     s0+=122.0;
     s1+=468.0;
    }
   } else {
    if(i56<-3.1651150038669584e-06){
     s0+=34.0;
     s1+=1684.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i28<0.001919865608215332){
    if(i0<0.00021857023239135742){
     s0+=5.0;
     s1+=9.0;
    } else {
     s0+=9.0;
     s1+=9638.0;
    }
   } else {
    s0+=6.0;
   }
  }
 }
}
if(i9<1.0176970958709717){
 if(i19<0.0017925252905115485){
  if(i5<4.774332046508789e-05){
   if(i32<0.0005291919806040823){
    if(i19<0.0013666676823049784){
     s0+=23829.0;
     s1+=360.0;
    } else {
     s0+=1417.0;
     s1+=528.0;
    }
   } else {
    if(i41<1.1354830265045166){
     s0+=58470.0;
     s1+=34.0;
    } else {
     s0+=8851.0;
     s1+=181.0;
    }
   }
  } else {
   if(i47<-2.115266579494346e-05){
    if(i56<-1.7776512322598137e-05){
     s0+=20.0;
     s1+=2.0;
    } else {
     s0+=16.0;
     s1+=425.0;
    }
   } else {
    if(i67<-0.0006077885627746582){
     s1+=4.0;
    } else {
     s0+=243.0;
    }
   }
  }
 } else {
  if(i40<1.127637267112732){
   if(i0<-0.0004280209541320801){
    if(i42<2.6016856281785294e-05){
     s0+=1776.0;
     s1+=255.0;
    } else {
     s0+=13077.0;
     s1+=142.0;
    }
   } else {
    if(i57<0.9995691180229187){
     s0+=2413.0;
     s1+=18.0;
    } else {
     s0+=1789.0;
     s1+=4016.0;
    }
   }
  } else {
   if(i33<-0.0029688477516174316){
    if(i15<0.1573646366596222){
     s0+=2451.0;
     s1+=485.0;
    } else {
     s0+=46.0;
     s1+=363.0;
    }
   } else {
    if(i24<0.002273223828524351){
     s0+=346.0;
    } else {
     s0+=455.0;
     s1+=3466.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007221627747640014){
  if(i7<0.005060822702944279){
   if(i20<0.00020506978034973145){
    if(i54<0.0008922547567635775){
     s1+=37.0;
    } else {
     s0+=922.0;
     s1+=89.0;
    }
   } else {
    if(i47<-1.847560633905232e-05){
     s0+=22.0;
     s1+=628.0;
    } else {
     s0+=21.0;
     s1+=5.0;
    }
   }
  } else {
   if(i16<1.007990837097168){
    if(i7<0.005953633226454258){
     s0+=27.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=1051.0;
    }
   } else {
    s1+=12127.0;
   }
  }
 } else {
  s0+=423.0;
 }
}
if(i33<0.0013714432716369629){
 if(i9<1.0192064046859741){
  if(i35<1.140138864517212){
   if(i22<0.20766416192054749){
    if(i5<1.901388168334961e-05){
     s0+=107668.0;
     s1+=3624.0;
    } else {
     s0+=6544.0;
     s1+=2542.0;
    }
   } else {
    if(i54<0.0019688275642693043){
     s0+=150.0;
     s1+=5.0;
    } else {
     s0+=53.0;
     s1+=537.0;
    }
   }
  } else {
   if(i24<0.002563408575952053){
    if(i51<0.08861469477415085){
     s0+=352.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.004686422646045685){
     s0+=38.0;
     s1+=4.0;
    } else {
     s0+=36.0;
     s1+=1416.0;
    }
   }
  }
 } else {
  if(i12<1.0007294416427612){
   if(i19<0.0025290190242230892){
    if(i9<1.0202991962432861){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=282.0;
    }
   } else {
    if(i66<0.02710637077689171){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=106.0;
    }
   }
  } else {
   if(i7<0.004136803559958935){
    if(i48<7.569789886474609e-06){
     s0+=74.0;
     s1+=43.0;
    } else {
     s0+=464.0;
     s1+=9.0;
    }
   } else {
    if(i31<1.4731788635253906){
     s0+=20.0;
     s1+=2462.0;
    } else {
     s0+=21.0;
     s1+=211.0;
    }
   }
  }
 }
} else {
 if(i7<0.004952756687998772){
  if(i57<0.9999860525131226){
   if(i32<0.0007972079329192638){
    s1+=1.0;
   } else {
    s0+=548.0;
   }
  } else {
   if(i26<1.1222262382507324){
    s1+=838.0;
   } else {
    if(i6<1.0113310813903809){
     s0+=319.0;
     s1+=28.0;
    } else {
     s0+=5.0;
     s1+=370.0;
    }
   }
  }
 } else {
  if(i52<-6.057539394532796e-06){
   if(i50<-8.670138049637899e-05){
    s1+=5.0;
   } else {
    s0+=122.0;
   }
  } else {
   if(i71<0.00010556462075328454){
    if(i10<1.0108851194381714){
     s0+=37.0;
     s1+=296.0;
    } else {
     s1+=11521.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
}
if(i1<6.55055046081543e-05){
 if(i3<-8.83070460986346e-05){
  if(i8<0.9396428465843201){
   if(i21<0.062015388160943985){
    if(i76<-0.010822445154190063){
     s0+=33.0;
     s1+=14.0;
    } else {
     s0+=684.0;
     s1+=15.0;
    }
   } else {
    if(i46<0.00815819576382637){
     s0+=61.0;
     s1+=9.0;
    } else {
     s0+=15.0;
     s1+=137.0;
    }
   }
  } else {
   if(i30<-0.00026588825858198106){
    if(i30<-0.0003957886656280607){
     s0+=19.0;
     s1+=1767.0;
    } else {
     s0+=42.0;
     s1+=143.0;
    }
   } else {
    if(i63<-0.0005854774499312043){
     s0+=14.0;
     s1+=51.0;
    } else {
     s0+=110.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i23<1.0220223665237427){
   if(i28<7.575750350952148e-05){
    if(i32<0.0008837421191856265){
     s0+=25096.0;
     s1+=671.0;
    } else {
     s0+=51168.0;
     s1+=125.0;
    }
   } else {
    if(i24<0.0009234921308234334){
     s0+=5661.0;
     s1+=2677.0;
    } else {
     s0+=30447.0;
     s1+=1434.0;
    }
   }
  } else {
   if(i2<1.0010044574737549){
    if(i22<0.12079066038131714){
     s0+=343.0;
     s1+=5.0;
    } else {
     s0+=401.0;
     s1+=118.0;
    }
   } else {
    if(i39<1.0030205249786377){
     s0+=152.0;
     s1+=775.0;
    } else {
     s0+=218.0;
     s1+=70.0;
    }
   }
  }
 }
} else {
 if(i7<0.003449389012530446){
  if(i28<0.0005158185958862305){
   if(i34<1.122192621231079){
    if(i24<0.0009702359675429761){
     s1+=504.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i2<1.011085033416748){
     s0+=38.0;
    } else {
     s1+=45.0;
    }
   }
  } else {
   if(i2<1.0117614269256592){
    s0+=1400.0;
   } else {
    s1+=151.0;
   }
  }
 } else {
  if(i38<0.004038588143885136){
   if(i2<1.0042203664779663){
    if(i32<0.020487789064645767){
     s0+=159.0;
     s1+=66.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i52<-6.407733053492848e-06){
     s0+=104.0;
     s1+=1.0;
    } else {
     s0+=162.0;
     s1+=15506.0;
    }
   }
  } else {
   if(i9<0.7952179908752441){
    s1+=4.0;
   } else {
    s0+=103.0;
   }
  }
 }
}
if(i2<1.0038731098175049){
 if(i36<0.19640430808067322){
  if(i7<0.003994472324848175){
   if(i54<0.0005427719443105161){
    if(i29<0.00018137518782168627){
     s0+=11751.0;
     s1+=6.0;
    } else {
     s0+=17875.0;
     s1+=1038.0;
    }
   } else {
    if(i25<1.1172146797180176){
     s0+=58240.0;
     s1+=139.0;
    } else {
     s0+=2770.0;
     s1+=149.0;
    }
   }
  } else {
   if(i1<-2.205371856689453e-05){
    if(i74<0.02361891232430935){
     s0+=19378.0;
     s1+=670.0;
    } else {
     s0+=396.0;
     s1+=215.0;
    }
   } else {
    if(i32<0.00018507117056287825){
     s0+=280.0;
    } else {
     s0+=1405.0;
     s1+=3521.0;
    }
   }
  }
 } else {
  if(i45<1.0001912117004395){
   if(i3<-6.450165528804064e-05){
    if(i37<0.003687384072691202){
     s0+=1.0;
    } else {
     s1+=126.0;
    }
   } else {
    if(i12<0.9944655895233154){
     s1+=2.0;
    } else {
     s0+=166.0;
    }
   }
  } else {
   if(i32<0.0019335350953042507){
    if(i14<1.0135447978973389){
     s0+=40.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i18<0.00014189782086759806){
     s0+=38.0;
     s1+=53.0;
    } else {
     s0+=37.0;
     s1+=836.0;
    }
   }
  }
 }
} else {
 if(i7<0.003937314264476299){
  if(i6<1.010738730430603){
   if(i42<-1.1020291822205763e-05){
    if(i28<0.0005156993865966797){
     s0+=9.0;
     s1+=252.0;
    } else {
     s0+=208.0;
    }
   } else {
    if(i28<0.0004259943962097168){
     s0+=242.0;
     s1+=110.0;
    } else {
     s0+=3240.0;
    }
   }
  } else {
   if(i52<-4.562454250844894e-06){
    if(i21<0.03709160163998604){
     s0+=74.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i33<0.0011682510375976562){
     s0+=2.0;
    } else {
     s1+=571.0;
    }
   }
  }
 } else {
  if(i52<-6.85848817738588e-06){
   s0+=142.0;
  } else {
   if(i3<-7.312306843232363e-05){
    if(i1<-0.0006003975868225098){
     s0+=5.0;
    } else {
     s0+=45.0;
     s1+=14886.0;
    }
   } else {
    if(i28<0.0011341571807861328){
     s0+=170.0;
     s1+=1664.0;
    } else {
     s0+=66.0;
     s1+=37.0;
    }
   }
  }
 }
}
if(i2<1.003852128982544){
 if(i55<0.009801043197512627){
  if(i4<0.00029212236404418945){
   if(i36<0.22637563943862915){
    if(i13<0.9941127300262451){
     s0+=22637.0;
     s1+=1222.0;
    } else {
     s0+=79909.0;
     s1+=1502.0;
    }
   } else {
    if(i53<0.09983634948730469){
     s0+=33.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=80.0;
    }
   }
  } else {
   if(i43<0.014017729088664055){
    if(i3<-4.276485196896829e-05){
     s0+=248.0;
     s1+=175.0;
    } else {
     s0+=5323.0;
     s1+=200.0;
    }
   } else {
    if(i31<1.116673469543457){
     s0+=194.0;
     s1+=949.0;
    } else {
     s0+=2749.0;
     s1+=1430.0;
    }
   }
  }
 } else {
  if(i22<0.05485767126083374){
   if(i33<-0.005442678928375244){
    if(i63<-0.001432857709005475){
     s1+=3.0;
    } else {
     s0+=386.0;
     s1+=4.0;
    }
   } else {
    if(i48<9.715557098388672e-06){
     s0+=301.0;
     s1+=33.0;
    } else {
     s0+=7.0;
     s1+=13.0;
    }
   }
  } else {
   if(i3<-1.6330093785654753e-05){
    if(i68<-0.01582467555999756){
     s0+=11.0;
     s1+=30.0;
    } else {
     s0+=23.0;
     s1+=1064.0;
    }
   } else {
    if(i7<0.007769886404275894){
     s0+=129.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i31<1.1766420602798462){
  if(i35<1.0773591995239258){
   if(i31<1.116804838180542){
    if(i18<0.0002707197854761034){
     s0+=6.0;
     s1+=2566.0;
    } else {
     s0+=685.0;
    }
   } else {
    s0+=959.0;
   }
  } else {
   if(i18<0.00015313518815673888){
    if(i14<1.0057299137115479){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=175.0;
    }
   } else {
    if(i26<1.1180615425109863){
     s1+=27.0;
    } else {
     s0+=2355.0;
    }
   }
  }
 } else {
  if(i3<-6.371877680066973e-05){
   if(i64<0.9470891952514648){
    if(i51<0.03104536607861519){
     s0+=21.0;
     s1+=5.0;
    } else {
     s0+=9.0;
     s1+=64.0;
    }
   } else {
    if(i7<0.0069801174104213715){
     s0+=43.0;
     s1+=1166.0;
    } else {
     s0+=19.0;
     s1+=13214.0;
    }
   }
  } else {
   if(i46<0.0008306740201078355){
    if(i1<9.500980377197266e-05){
     s0+=164.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i18<0.0003642681404016912){
     s0+=35.0;
     s1+=553.0;
    } else {
     s0+=35.0;
     s1+=46.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i3<-8.035823702812195e-05){
  if(i36<0.05403721332550049){
   if(i10<0.9739595651626587){
    if(i74<0.051338184624910355){
     s0+=932.0;
     s1+=22.0;
    } else {
     s0+=21.0;
     s1+=41.0;
    }
   } else {
    if(i19<0.005552069284021854){
     s0+=138.0;
     s1+=99.0;
    } else {
     s0+=17.0;
     s1+=158.0;
    }
   }
  } else {
   if(i34<1.1413248777389526){
    if(i13<1.0173275470733643){
     s0+=88.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=61.0;
    }
   } else {
    if(i16<0.921282947063446){
     s0+=28.0;
     s1+=7.0;
    } else {
     s0+=63.0;
     s1+=2019.0;
    }
   }
  }
 } else {
  if(i19<0.0017322666244581342){
   if(i54<0.00046780731645412743){
    if(i68<-0.0006946325302124023){
     s0+=1384.0;
     s1+=459.0;
    } else {
     s0+=28754.0;
     s1+=311.0;
    }
   } else {
    if(i46<0.0019916759338229895){
     s0+=58610.0;
     s1+=98.0;
    } else {
     s0+=2896.0;
     s1+=125.0;
    }
   }
  } else {
   if(i8<1.0069944858551025){
    if(i2<0.9979937076568604){
     s0+=15992.0;
     s1+=411.0;
    } else {
     s0+=4240.0;
     s1+=2712.0;
    }
   } else {
    if(i42<2.3927615984575823e-05){
     s0+=634.0;
     s1+=1538.0;
    } else {
     s0+=557.0;
     s1+=36.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i55<0.0007069128332659602){
   if(i48<1.3649463653564453e-05){
    if(i18<0.0006079068989492953){
     s1+=2154.0;
    } else {
     s0+=35.0;
    }
   } else {
    if(i11<1.0150160789489746){
     s0+=77.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i47<-3.0352843168657273e-05){
    if(i26<1.1180615425109863){
     s1+=117.0;
    } else {
     s0+=57.0;
    }
   } else {
    if(i29<0.0010816565481945872){
     s1+=55.0;
    } else {
     s0+=1804.0;
    }
   }
  }
 } else {
  if(i0<0.001555025577545166){
   if(i36<0.08234426379203796){
    if(i77<0.010259062051773071){
     s0+=37.0;
     s1+=171.0;
    } else {
     s0+=31.0;
     s1+=6.0;
    }
   } else {
    if(i7<0.004411949776113033){
     s0+=16.0;
    } else {
     s0+=4.0;
     s1+=1510.0;
    }
   }
  } else {
   if(i15<0.009231925010681152){
    if(i72<-0.10318312048912048){
     s0+=4.0;
     s1+=46.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i9<0.990574836730957){
     s0+=6.0;
     s1+=850.0;
    } else {
     s0+=1.0;
     s1+=11397.0;
    }
   }
  }
 }
}
if(i16<1.0139834880828857){
 if(i51<0.0844971314072609){
  if(i0<0.0013870000839233398){
   if(i22<0.22020146250724792){
    if(i7<0.0038969332817941904){
     s0+=92138.0;
     s1+=1251.0;
    } else {
     s0+=20166.0;
     s1+=4311.0;
    }
   } else {
    if(i7<0.007055596448481083){
     s0+=144.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=235.0;
    }
   }
  } else {
   if(i28<0.0012441277503967285){
    if(i61<2.1612480850308202e-05){
     s0+=64.0;
     s1+=47.0;
    } else {
     s0+=61.0;
     s1+=1358.0;
    }
   } else {
    if(i39<1.0057337284088135){
     s0+=384.0;
    } else {
     s1+=77.0;
    }
   }
  }
 } else {
  if(i10<0.9763184189796448){
   if(i6<1.0096869468688965){
    if(i54<0.037345513701438904){
     s0+=2168.0;
     s1+=99.0;
    } else {
     s0+=21.0;
     s1+=37.0;
    }
   } else {
    if(i21<0.05637539178133011){
     s0+=15.0;
     s1+=8.0;
    } else {
     s1+=71.0;
    }
   }
  } else {
   if(i38<0.0005203904584050179){
    if(i57<1.0011184215545654){
     s0+=147.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.03955572843551636){
     s0+=17.0;
     s1+=40.0;
    } else {
     s0+=27.0;
     s1+=3120.0;
    }
   }
  }
 }
} else {
 if(i3<-7.141319656511769e-05){
  if(i16<1.0189940929412842){
   if(i18<0.0007078502676449716){
    if(i25<1.1342540979385376){
     s0+=24.0;
     s1+=631.0;
    } else {
     s1+=405.0;
    }
   } else {
    s0+=122.0;
   }
  } else {
   if(i12<1.0003740787506104){
    if(i21<0.030397756025195122){
     s0+=12.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i65<0.00016781300655566156){
     s0+=4.0;
     s1+=11458.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i2<1.0018224716186523){
   if(i41<1.092748999595642){
    s1+=3.0;
   } else {
    if(i21<0.03433674946427345){
     s0+=380.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   }
  } else {
   if(i18<0.00031631914316676557){
    if(i19<0.0005942799616605043){
     s0+=24.0;
     s1+=11.0;
    } else {
     s0+=41.0;
     s1+=979.0;
    }
   } else {
    if(i21<0.025661904364824295){
     s0+=590.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
}
if(i3<-9.841138671617955e-05){
 if(i16<0.9494333267211914){
  if(i17<0.10051944851875305){
   if(i74<0.051512718200683594){
    if(i50<-6.483459583250806e-05){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=573.0;
     s1+=11.0;
    }
   } else {
    if(i59<0.01611372083425522){
     s0+=8.0;
     s1+=27.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i67<-0.010602593421936035){
    if(i43<0.18934236466884613){
     s0+=6.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i58<1.004974603652954){
     s1+=76.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i38<0.003868573345243931){
   if(i31<1.162848949432373){
    if(i10<1.0136380195617676){
     s0+=104.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=657.0;
    }
   } else {
    if(i14<0.9810768365859985){
     s0+=97.0;
     s1+=1492.0;
    } else {
     s0+=6.0;
     s1+=13042.0;
    }
   }
  } else {
   if(i52<-4.998604254069505e-06){
    s0+=155.0;
   } else {
    s1+=15.0;
   }
  }
 }
} else {
 if(i4<0.0004201531410217285){
  if(i38<0.0007055121823213995){
   if(i35<1.0178465843200684){
    if(i26<1.0606331825256348){
     s0+=4313.0;
    } else {
     s0+=5045.0;
     s1+=197.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=66128.0;
     s1+=130.0;
    } else {
     s0+=2086.0;
     s1+=101.0;
    }
   }
  } else {
   if(i32<0.0010601794347167015){
    if(i29<0.0009404184529557824){
     s0+=1648.0;
     s1+=2002.0;
    } else {
     s0+=2228.0;
    }
   } else {
    if(i36<0.19844523072242737){
     s0+=25136.0;
     s1+=950.0;
    } else {
     s0+=60.0;
     s1+=191.0;
    }
   }
  }
 } else {
  if(i67<0.0008768439292907715){
   if(i7<0.003986856434494257){
    if(i18<0.000206123135285452){
     s0+=1031.0;
     s1+=510.0;
    } else {
     s0+=5367.0;
     s1+=30.0;
    }
   } else {
    if(i2<1.0002119541168213){
     s0+=982.0;
     s1+=194.0;
    } else {
     s0+=719.0;
     s1+=2510.0;
    }
   }
  } else {
   if(i28<0.0005901455879211426){
    if(i71<1.1365117416062276e-06){
     s0+=125.0;
     s1+=1892.0;
    } else {
     s0+=53.0;
     s1+=11.0;
    }
   } else {
    if(i17<0.23494526743888855){
     s0+=649.0;
     s1+=109.0;
    } else {
     s0+=2.0;
     s1+=146.0;
    }
   }
  }
 }
}
if(i1<6.371736526489258e-05){
 if(i40<1.1747305393218994){
  if(i3<-7.645144796697423e-05){
   if(i30<-0.00026898225769400597){
    if(i58<0.9988781213760376){
     s0+=44.0;
    } else {
     s0+=88.0;
     s1+=805.0;
    }
   } else {
    if(i22<0.14495354890823364){
     s0+=674.0;
     s1+=69.0;
    } else {
     s0+=9.0;
     s1+=73.0;
    }
   }
  } else {
   if(i13<1.0133757591247559){
    if(i43<0.01113033201545477){
     s0+=66483.0;
     s1+=659.0;
    } else {
     s0+=42728.0;
     s1+=3443.0;
    }
   } else {
    if(i0<0.00021696090698242188){
     s0+=1197.0;
     s1+=157.0;
    } else {
     s0+=797.0;
     s1+=620.0;
    }
   }
  }
 } else {
  if(i12<1.0016913414001465){
   if(i21<0.05592058598995209){
    if(i26<1.2203292846679688){
     s0+=17.0;
     s1+=9.0;
    } else {
     s0+=1857.0;
     s1+=51.0;
    }
   } else {
    if(i17<0.006344497203826904){
     s0+=23.0;
     s1+=6.0;
    } else {
     s0+=7.0;
     s1+=324.0;
    }
   }
  } else {
   if(i8<0.9409011006355286){
    if(i35<1.0665230751037598){
     s0+=324.0;
     s1+=62.0;
    } else {
     s0+=1.0;
     s1+=52.0;
    }
   } else {
    if(i25<1.0860059261322021){
     s0+=60.0;
     s1+=19.0;
    } else {
     s0+=14.0;
     s1+=1474.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i24<0.0009706164710223675){
   if(i40<1.0328443050384521){
    s0+=56.0;
   } else {
    if(i18<0.0006715394556522369){
     s1+=2381.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   s0+=1891.0;
  }
 } else {
  if(i10<0.9766728281974792){
   if(i52<-2.960224037451553e-06){
    if(i57<1.0025217533111572){
     s1+=52.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i42<-1.124737536883913e-06){
     s1+=13.0;
    } else {
     s0+=60.0;
     s1+=22.0;
    }
   }
  } else {
   if(i20<-0.00027495622634887695){
    if(i38<0.0013328692875802517){
     s0+=46.0;
     s1+=16.0;
    } else {
     s0+=5.0;
     s1+=323.0;
    }
   } else {
    if(i7<0.0043674372136592865){
     s0+=31.0;
     s1+=337.0;
    } else {
     s0+=10.0;
     s1+=13460.0;
    }
   }
  }
 }
}
if(i8<1.0151784420013428){
 if(i5<1.901388168334961e-05){
  if(i7<0.003604619763791561){
   if(i24<0.0005715435836464167){
    if(i8<0.9957917332649231){
     s0+=4743.0;
     s1+=593.0;
    } else {
     s0+=22140.0;
     s1+=222.0;
    }
   } else {
    if(i40<1.1354830265045166){
     s0+=56846.0;
     s1+=77.0;
    } else {
     s0+=1675.0;
     s1+=131.0;
    }
   }
  } else {
   if(i24<0.0009970646351575851){
    if(i12<0.9992590546607971){
     s0+=2553.0;
     s1+=17.0;
    } else {
     s0+=319.0;
     s1+=2061.0;
    }
   } else {
    if(i15<0.18620461225509644){
     s0+=19715.0;
     s1+=718.0;
    } else {
     s0+=126.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i51<0.04325626790523529){
   if(i43<0.010231781750917435){
    if(i21<0.006269392091780901){
     s0+=3477.0;
     s1+=307.0;
    } else {
     s0+=303.0;
     s1+=279.0;
    }
   } else {
    if(i58<1.0033782720565796){
     s0+=1243.0;
     s1+=1811.0;
    } else {
     s0+=1683.0;
     s1+=389.0;
    }
   }
  } else {
   if(i27<0.9906867146492004){
    if(i54<0.014813575893640518){
     s0+=387.0;
     s1+=98.0;
    } else {
     s0+=13.0;
     s1+=147.0;
    }
   } else {
    if(i49<0.8644116520881653){
     s0+=78.0;
     s1+=180.0;
    } else {
     s0+=123.0;
     s1+=2879.0;
    }
   }
  }
 }
} else {
 if(i5<1.0251998901367188e-05){
  if(i35<1.2402064800262451){
   if(i26<1.2596347332000732){
    if(i57<1.0007610321044922){
     s0+=98.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i7<0.005157867446541786){
     s0+=197.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i50<-1.5033177078294102e-05){
    s1+=102.0;
   } else {
    s0+=13.0;
   }
  }
 } else {
  if(i17<0.17361363768577576){
   if(i26<1.1180615425109863){
    s1+=1535.0;
   } else {
    if(i26<1.1843671798706055){
     s0+=364.0;
    } else {
     s0+=167.0;
     s1+=1176.0;
    }
   }
  } else {
   if(i9<1.0254204273223877){
    if(i29<0.0020460588857531548){
     s0+=58.0;
    } else {
     s0+=3.0;
     s1+=646.0;
    }
   } else {
    if(i20<-0.0002816319465637207){
     s0+=25.0;
     s1+=49.0;
    } else {
     s0+=9.0;
     s1+=10567.0;
    }
   }
  }
 }
}
if(i1<6.35981559753418e-05){
 if(i17<0.21233215928077698){
  if(i3<-7.957320485729724e-05){
   if(i16<0.9493930339813232){
    if(i22<0.10048741102218628){
     s0+=964.0;
     s1+=48.0;
    } else {
     s0+=10.0;
     s1+=63.0;
    }
   } else {
    if(i35<1.0711796283721924){
     s0+=267.0;
     s1+=211.0;
    } else {
     s0+=107.0;
     s1+=945.0;
    }
   }
  } else {
   if(i7<0.003741804976016283){
    if(i25<1.0231759548187256){
     s0+=12657.0;
     s1+=572.0;
    } else {
     s0+=77384.0;
     s1+=600.0;
    }
   } else {
    if(i0<-0.00032913684844970703){
     s0+=20504.0;
     s1+=615.0;
    } else {
     s0+=1773.0;
     s1+=3351.0;
    }
   }
  }
 } else {
  if(i41<1.170027494430542){
   if(i19<0.004818564280867577){
    if(i3<-6.067214417271316e-05){
     s1+=34.0;
    } else {
     s0+=250.0;
     s1+=4.0;
    }
   } else {
    s1+=58.0;
   }
  } else {
   if(i21<0.03485899791121483){
    if(i58<1.0013245344161987){
     s0+=106.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=98.0;
    }
   } else {
    if(i30<0.00028687098529189825){
     s0+=10.0;
     s1+=1271.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i15<0.16504380106925964){
  if(i7<0.0028368490748107433){
   if(i24<0.0009702359675429761){
    if(i4<0.001121819019317627){
     s0+=63.0;
    } else {
     s1+=282.0;
    }
   } else {
    if(i18<0.00018672013538889587){
     s0+=4.0;
     s1+=51.0;
    } else {
     s0+=1301.0;
     s1+=1.0;
    }
   }
  } else {
   if(i47<-1.4151377399684861e-05){
    if(i48<2.3066997528076172e-05){
     s0+=51.0;
     s1+=2476.0;
    } else {
     s0+=40.0;
     s1+=10.0;
    }
   } else {
    if(i7<0.005305885802954435){
     s0+=408.0;
     s1+=15.0;
    } else {
     s0+=223.0;
     s1+=1709.0;
    }
   }
  }
 } else {
  if(i52<-6.636608304688707e-06){
   s0+=28.0;
  } else {
   if(i19<0.0011816665064543486){
    if(i41<1.1573951244354248){
     s0+=44.0;
    } else {
     s0+=7.0;
     s1+=167.0;
    }
   } else {
    if(i51<0.012636527419090271){
     s0+=19.0;
     s1+=537.0;
    } else {
     s0+=7.0;
     s1+=11462.0;
    }
   }
  }
 }
}
if(i2<1.00374174118042){
 if(i22<0.20744523406028748){
  if(i21<0.007592255715280771){
   if(i33<-0.00043517351150512695){
    if(i29<0.0006305054994300008){
     s0+=2765.0;
     s1+=379.0;
    } else {
     s0+=5861.0;
     s1+=44.0;
    }
   } else {
    if(i9<1.0114822387695312){
     s0+=61578.0;
     s1+=138.0;
    } else {
     s0+=1360.0;
     s1+=85.0;
    }
   }
  } else {
   if(i27<0.9967900514602661){
    if(i73<-0.0031696856021881104){
     s0+=4956.0;
     s1+=596.0;
    } else {
     s0+=30396.0;
     s1+=622.0;
    }
   } else {
    if(i12<1.0000172853469849){
     s0+=2611.0;
     s1+=221.0;
    } else {
     s0+=2324.0;
     s1+=3261.0;
    }
   }
  }
 } else {
  if(i7<0.006490905769169331){
   if(i56<-3.964034476666711e-06){
    if(i57<1.0013686418533325){
     s0+=47.0;
     s1+=28.0;
    } else {
     s0+=59.0;
    }
   } else {
    if(i22<0.20807671546936035){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=206.0;
    }
   }
  } else {
   if(i45<0.9937245845794678){
    if(i0<-0.0008196532726287842){
     s0+=5.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i54<0.0016619160305708647){
     s0+=1.0;
    } else {
     s0+=3.0;
     s1+=1077.0;
    }
   }
  }
 }
} else {
 if(i19<0.0018717220518738031){
  if(i42<-1.348321711702738e-05){
   if(i66<0.004023137502372265){
    if(i48<2.562999725341797e-05){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i47<-2.0355251763248816e-05){
     s0+=42.0;
     s1+=1177.0;
    } else {
     s0+=24.0;
     s1+=24.0;
    }
   }
  } else {
   if(i30<-0.0006362709100358188){
    if(i9<1.0231302976608276){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=43.0;
    }
   } else {
    if(i3<-8.521016570739448e-05){
     s0+=4.0;
     s1+=12.0;
    } else {
     s0+=3113.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i18<0.0007056489121168852){
   if(i17<0.12196195125579834){
    if(i31<1.4586446285247803){
     s0+=114.0;
     s1+=2527.0;
    } else {
     s0+=117.0;
     s1+=199.0;
    }
   } else {
    if(i7<0.0042780376970767975){
     s0+=39.0;
     s1+=73.0;
    } else {
     s0+=25.0;
     s1+=13629.0;
    }
   }
  } else {
   s0+=973.0;
  }
 }
}
if(i27<1.00861394405365){
 if(i40<1.1402404308319092){
  if(i16<1.010016918182373){
   if(i7<0.0034600053913891315){
    if(i25<1.0231759548187256){
     s0+=12440.0;
     s1+=502.0;
    } else {
     s0+=73030.0;
     s1+=368.0;
    }
   } else {
    if(i10<1.003340482711792){
     s0+=22739.0;
     s1+=2982.0;
    } else {
     s0+=740.0;
     s1+=999.0;
    }
   }
  } else {
   if(i55<0.00064912746893242){
    if(i34<1.1180615425109863){
     s1+=857.0;
    } else {
     s0+=323.0;
     s1+=34.0;
    }
   } else {
    if(i43<0.024515215307474136){
     s0+=1045.0;
     s1+=77.0;
    } else {
     s0+=122.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i7<0.006492007523775101){
   if(i5<9.238719940185547e-06){
    if(i57<1.0010138750076294){
     s0+=1713.0;
    } else {
     s0+=251.0;
     s1+=3.0;
    }
   } else {
    if(i3<-5.3998221119400114e-05){
     s0+=20.0;
     s1+=71.0;
    } else {
     s0+=681.0;
     s1+=18.0;
    }
   }
  } else {
   if(i35<1.0633020401000977){
    if(i0<0.00020945072174072266){
     s0+=1643.0;
     s1+=130.0;
    } else {
     s0+=130.0;
     s1+=215.0;
    }
   } else {
    if(i17<0.04083573818206787){
     s0+=70.0;
     s1+=59.0;
    } else {
     s0+=96.0;
     s1+=4011.0;
    }
   }
  }
 }
} else {
 if(i7<0.003821117803454399){
  if(i26<1.1180615425109863){
   s1+=642.0;
  } else {
   if(i41<1.1737661361694336){
    if(i0<0.0031287074089050293){
     s0+=1403.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i12<1.0037328004837036){
     s0+=48.0;
    } else {
     s1+=216.0;
    }
   }
  }
 } else {
  if(i18<0.0007056489121168852){
   if(i11<1.0054280757904053){
    if(i50<-3.087357617914677e-05){
     s0+=1.0;
     s1+=897.0;
    } else {
     s0+=18.0;
     s1+=23.0;
    }
   } else {
    if(i16<1.0045193433761597){
     s0+=1.0;
     s1+=252.0;
    } else {
     s1+=11568.0;
    }
   }
  } else {
   s0+=146.0;
  }
 }
}
if(i0<0.0009486675262451172){
 if(i13<1.0189621448516846){
  if(i2<1.0027270317077637){
   if(i25<1.1529799699783325){
    if(i21<0.006728487089276314){
     s0+=66402.0;
     s1+=455.0;
    } else {
     s0+=41513.0;
     s1+=3698.0;
    }
   } else {
    if(i38<0.000816879328340292){
     s0+=349.0;
    } else {
     s0+=139.0;
     s1+=737.0;
    }
   }
  } else {
   if(i21<0.009653015062212944){
    if(i38<0.0007928278064355254){
     s0+=3725.0;
     s1+=10.0;
    } else {
     s0+=1228.0;
     s1+=269.0;
    }
   } else {
    if(i52<-5.217179932515137e-06){
     s0+=77.0;
     s1+=3.0;
    } else {
     s0+=180.0;
     s1+=1274.0;
    }
   }
  }
 } else {
  if(i7<0.005096016451716423){
   if(i31<1.2015575170516968){
    if(i56<-3.7602990232699085e-06){
     s0+=83.0;
     s1+=76.0;
    } else {
     s0+=99.0;
     s1+=1.0;
    }
   } else {
    if(i27<0.98345947265625){
     s0+=12.0;
     s1+=7.0;
    } else {
     s0+=515.0;
     s1+=8.0;
    }
   }
  } else {
   if(i20<-0.0006218254566192627){
    if(i13<1.0298523902893066){
     s0+=30.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i14<1.024200677871704){
     s0+=26.0;
     s1+=224.0;
    } else {
     s0+=6.0;
     s1+=1102.0;
    }
   }
  }
 }
} else {
 if(i26<1.1979892253875732){
  if(i35<1.0773653984069824){
   if(i18<0.0002467811282258481){
    if(i71<-2.555164883233374e-06){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=2258.0;
    }
   } else {
    s0+=588.0;
   }
  } else {
   if(i24<0.0010790596716105938){
    s1+=197.0;
   } else {
    s0+=1444.0;
   }
  }
 } else {
  if(i17<0.030165106058120728){
   if(i0<0.002047598361968994){
    if(i38<0.0019441023468971252){
     s0+=41.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    s1+=62.0;
   }
  } else {
   if(i41<1.127323031425476){
    s0+=11.0;
   } else {
    if(i40<1.075517177581787){
     s0+=17.0;
     s1+=21.0;
    } else {
     s0+=40.0;
     s1+=13896.0;
    }
   }
  }
 }
}
if(i12<1.002624750137329){
 if(i8<1.0114645957946777){
  if(i36<0.20560264587402344){
   if(i43<0.011311487294733524){
    if(i68<-0.0012183189392089844){
     s0+=1074.0;
     s1+=149.0;
    } else {
     s0+=64967.0;
     s1+=496.0;
    }
   } else {
    if(i29<0.0010740964207798243){
     s0+=8221.0;
     s1+=2477.0;
    } else {
     s0+=35404.0;
     s1+=1038.0;
    }
   }
  } else {
   if(i3<-1.8715827536652796e-05){
    if(i21<0.006986505351960659){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=341.0;
    }
   } else {
    if(i3<-1.1130194252473302e-05){
     s0+=10.0;
     s1+=5.0;
    } else {
     s0+=72.0;
    }
   }
  }
 } else {
  if(i7<0.005076962057501078){
   if(i41<1.0878604650497437){
    s1+=39.0;
   } else {
    if(i58<1.001578450202942){
     s0+=550.0;
    } else {
     s0+=114.0;
     s1+=33.0;
    }
   }
  } else {
   if(i5<3.8117170333862305e-05){
    if(i4<-0.0007902681827545166){
     s0+=13.0;
    } else {
     s0+=40.0;
     s1+=1117.0;
    }
   } else {
    if(i48<3.248453140258789e-06){
     s1+=2.0;
    } else {
     s0+=56.0;
    }
   }
  }
 }
} else {
 if(i41<1.170027494430542){
  if(i54<0.0009669396094977856){
   if(i20<0.00015354156494140625){
    if(i48<6.735324859619141e-06){
     s0+=40.0;
     s1+=165.0;
    } else {
     s0+=966.0;
     s1+=61.0;
    }
   } else {
    if(i24<0.0023673209361732006){
     s1+=2018.0;
    } else {
     s0+=25.0;
     s1+=15.0;
    }
   }
  } else {
   if(i21<0.014242727309465408){
    if(i10<1.0163497924804688){
     s0+=3482.0;
     s1+=144.0;
    } else {
     s1+=118.0;
    }
   } else {
    if(i7<0.004665195010602474){
     s0+=249.0;
     s1+=54.0;
    } else {
     s0+=117.0;
     s1+=971.0;
    }
   }
  }
 } else {
  if(i13<0.9348276853561401){
   if(i22<0.052792906761169434){
    if(i41<1.4247384071350098){
     s0+=431.0;
     s1+=75.0;
    } else {
     s0+=6.0;
     s1+=55.0;
    }
   } else {
    if(i4<0.0006142258644104004){
     s0+=44.0;
     s1+=11.0;
    } else {
     s0+=58.0;
     s1+=311.0;
    }
   }
  } else {
   if(i12<1.0038625001907349){
    if(i1<-1.3172626495361328e-05){
     s0+=215.0;
     s1+=98.0;
    } else {
     s0+=72.0;
     s1+=1212.0;
    }
   } else {
    if(i22<0.09465053677558899){
     s0+=185.0;
     s1+=450.0;
    } else {
     s0+=97.0;
     s1+=12873.0;
    }
   }
  }
 }
}
if(i2<1.003713846206665){
 if(i21<0.0616215318441391){
  if(i14<1.0181578397750854){
   if(i38<0.000706020335201174){
    if(i54<0.002131897024810314){
     s0+=76088.0;
     s1+=345.0;
    } else {
     s0+=2413.0;
     s1+=139.0;
    }
   } else {
    if(i31<1.1160998344421387){
     s0+=4386.0;
     s1+=2836.0;
    } else {
     s0+=27875.0;
     s1+=1271.0;
    }
   }
  } else {
   if(i5<7.450580596923828e-06){
    if(i19<0.002446964383125305){
     s0+=433.0;
     s1+=21.0;
    } else {
     s0+=53.0;
     s1+=97.0;
    }
   } else {
    if(i5<3.504753112792969e-05){
     s0+=226.0;
     s1+=682.0;
    } else {
     s0+=142.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i0<-0.002405911684036255){
   if(i15<0.23335886001586914){
    s0+=322.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i64<0.8864531517028809){
    if(i53<0.1837373971939087){
     s0+=63.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=18.0;
    }
   } else {
    if(i40<1.1137977838516235){
     s0+=5.0;
    } else {
     s0+=11.0;
     s1+=1013.0;
    }
   }
  }
 }
} else {
 if(i3<-7.309625652851537e-05){
  if(i57<0.9984161853790283){
   if(i17<0.5459203720092773){
    s0+=248.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i18<0.0007054299348965287){
    if(i9<0.8883647918701172){
     s0+=19.0;
     s1+=35.0;
    } else {
     s0+=95.0;
     s1+=15583.0;
    }
   } else {
    s0+=73.0;
   }
  }
 } else {
  if(i26<1.116804838180542){
   if(i37<0.0002146116748917848){
    s0+=691.0;
   } else {
    s1+=1487.0;
   }
  } else {
   if(i29<0.002205150667577982){
    if(i53<0.07124324887990952){
     s0+=3015.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<0.10214579105377197){
     s0+=224.0;
     s1+=133.0;
    } else {
     s0+=38.0;
     s1+=729.0;
    }
   }
  }
 }
}
if(i0<0.0009605884552001953){
 if(i14<1.0182666778564453){
  if(i66<0.44100236892700195){
   if(i59<0.00197509303689003){
    if(i26<1.1162974834442139){
     s0+=29495.0;
     s1+=3290.0;
    } else {
     s0+=78043.0;
     s1+=868.0;
    }
   } else {
    if(i1<-1.0311603546142578e-05){
     s0+=4784.0;
     s1+=568.0;
    } else {
     s0+=660.0;
     s1+=882.0;
    }
   }
  } else {
   if(i30<-0.0002468643360771239){
    if(i12<0.9939164519309998){
     s0+=9.0;
    } else {
     s1+=509.0;
    }
   } else {
    if(i2<0.99615478515625){
     s0+=187.0;
     s1+=15.0;
    } else {
     s0+=12.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i21<0.02744368463754654){
   if(i41<1.0912678241729736){
    if(i37<0.0014071892946958542){
     s1+=182.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i50<-1.790419264580123e-05){
     s0+=295.0;
     s1+=219.0;
    } else {
     s0+=565.0;
     s1+=42.0;
    }
   }
  } else {
   if(i56<-2.280043645441765e-06){
    if(i3<-3.28367023030296e-05){
     s0+=37.0;
     s1+=1361.0;
    } else {
     s0+=85.0;
     s1+=114.0;
    }
   } else {
    s0+=48.0;
   }
  }
 }
} else {
 if(i41<1.1703872680664062){
  if(i25<1.0773653984069824){
   if(i28<0.0005281567573547363){
    if(i18<0.00026703899493440986){
     s1+=2003.0;
    } else {
     s0+=18.0;
    }
   } else {
    if(i18<0.0001575868227519095){
     s1+=29.0;
    } else {
     s0+=199.0;
    }
   }
  } else {
   if(i21<0.0082481000572443){
    if(i24<0.0010855169966816902){
     s1+=120.0;
    } else {
     s0+=1621.0;
     s1+=60.0;
    }
   } else {
    if(i28<0.001000821590423584){
     s0+=75.0;
     s1+=803.0;
    } else {
     s0+=116.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i13<0.9159777760505676){
   if(i21<0.027510039508342743){
    if(i37<0.010341234505176544){
     s1+=3.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.0013592123286798596){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=131.0;
    }
   }
  } else {
   if(i20<-0.0006299614906311035){
    if(i38<0.001953878439962864){
     s0+=16.0;
    } else {
     s1+=16.0;
    }
   } else {
    if(i17<0.10502150654792786){
     s0+=39.0;
     s1+=455.0;
    } else {
     s0+=10.0;
     s1+=12777.0;
    }
   }
  }
 }
}
if(i9<1.0173007249832153){
 if(i3<-8.453930786345154e-05){
  if(i23<0.8939191102981567){
   if(i35<1.0705538988113403){
    if(i12<1.0062289237976074){
     s0+=730.0;
     s1+=78.0;
    } else {
     s0+=7.0;
     s1+=27.0;
    }
   } else {
    if(i7<0.015958275645971298){
     s0+=8.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=152.0;
    }
   }
  } else {
   if(i39<1.000772476196289){
    if(i25<1.147359848022461){
     s0+=322.0;
     s1+=14.0;
    } else {
     s1+=137.0;
    }
   } else {
    if(i12<1.003289818763733){
     s0+=210.0;
     s1+=539.0;
    } else {
     s0+=157.0;
     s1+=3185.0;
    }
   }
  }
 } else {
  if(i5<1.901388168334961e-05){
   if(i43<0.011556703597307205){
    if(i16<0.9922739267349243){
     s0+=761.0;
     s1+=143.0;
    } else {
     s0+=64992.0;
     s1+=451.0;
    }
   } else {
    if(i31<1.0905578136444092){
     s0+=6299.0;
     s1+=1886.0;
    } else {
     s0+=35354.0;
     s1+=1034.0;
    }
   }
  } else {
   if(i19<0.0020022739190608263){
    if(i65<-5.990973477310035e-06){
     s0+=96.0;
     s1+=306.0;
    } else {
     s0+=3700.0;
     s1+=118.0;
    }
   } else {
    if(i41<1.0452228784561157){
     s0+=587.0;
    } else {
     s0+=1976.0;
     s1+=2138.0;
    }
   }
  }
 }
} else {
 if(i50<-8.733449249120895e-06){
  if(i10<1.0142710208892822){
   if(i22<0.19843855500221252){
    if(i41<1.0905089378356934){
     s1+=691.0;
    } else {
     s0+=878.0;
     s1+=498.0;
    }
   } else {
    if(i53<0.032518982887268066){
     s0+=23.0;
     s1+=54.0;
    } else {
     s0+=19.0;
     s1+=1590.0;
    }
   }
  } else {
   if(i16<1.0226316452026367){
    if(i7<0.0017760087503120303){
     s0+=58.0;
     s1+=18.0;
    } else {
     s0+=12.0;
     s1+=849.0;
    }
   } else {
    if(i13<1.0206923484802246){
     s0+=1.0;
     s1+=167.0;
    } else {
     s1+=10088.0;
    }
   }
  }
 } else {
  if(i38<0.0010018995963037014){
   if(i57<1.0007319450378418){
    s0+=449.0;
   } else {
    if(i53<0.02686202898621559){
     s0+=26.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   }
  } else {
   if(i28<0.00023162364959716797){
    s1+=13.0;
   } else {
    s0+=9.0;
   }
  }
 }
}
if(i10<1.010016918182373){
 if(i7<0.014074311591684818){
  if(i9<1.0162707567214966){
   if(i3<-9.140255133388564e-05){
    if(i36<0.09388861060142517){
     s0+=317.0;
     s1+=166.0;
    } else {
     s0+=46.0;
     s1+=305.0;
    }
   } else {
    if(i28<9.149312973022461e-05){
     s0+=79077.0;
     s1+=975.0;
    } else {
     s0+=33397.0;
     s1+=3994.0;
    }
   }
  } else {
   if(i41<1.0905578136444092){
    if(i2<0.9992189407348633){
     s0+=3.0;
    } else {
     s1+=358.0;
    }
   } else {
    if(i51<0.03894730284810066){
     s0+=863.0;
     s1+=143.0;
    } else {
     s0+=207.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i22<0.0408363938331604){
   if(i6<1.0166479349136353){
    if(i16<0.9566044807434082){
     s0+=901.0;
     s1+=50.0;
    } else {
     s0+=9.0;
     s1+=60.0;
    }
   } else {
    if(i14<0.9347828030586243){
     s1+=46.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i67<-0.007705777883529663){
    if(i26<1.5508465766906738){
     s0+=112.0;
     s1+=46.0;
    } else {
     s0+=22.0;
     s1+=141.0;
    }
   } else {
    if(i25<1.052932858467102){
     s0+=18.0;
     s1+=26.0;
    } else {
     s0+=10.0;
     s1+=3019.0;
    }
   }
  }
 }
} else {
 if(i7<0.003537941025570035){
  if(i47<-2.3352828065981157e-05){
   if(i38<0.0008657259168103337){
    if(i30<-0.0006440610159188509){
     s0+=22.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=503.0;
    }
   } else {
    if(i24<0.002569371834397316){
     s0+=140.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i34<1.0900044441223145){
    s1+=55.0;
   } else {
    if(i47<4.317585990065709e-05){
     s0+=1161.0;
     s1+=5.0;
    } else {
     s0+=22.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i10<1.0122430324554443){
   if(i71<1.6012639889595448e-06){
    if(i7<0.004892902448773384){
     s0+=127.0;
     s1+=161.0;
    } else {
     s0+=38.0;
     s1+=848.0;
    }
   } else {
    if(i49<1.0736744403839111){
     s0+=81.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i24<0.002429365646094084){
    if(i28<0.0006504058837890625){
     s0+=1.0;
     s1+=1285.0;
    } else {
     s0+=40.0;
    }
   } else {
    s1+=11512.0;
   }
  }
 }
}
if(i22<0.19474709033966064){
 if(i5<1.901388168334961e-05){
  if(i14<1.0181578397750854){
   if(i26<1.1162974834442139){
    if(i7<0.003588280873373151){
     s0+=25478.0;
     s1+=800.0;
    } else {
     s0+=2937.0;
     s1+=2000.0;
    }
   } else {
    if(i7<0.01975981891155243){
     s0+=78885.0;
     s1+=680.0;
    } else {
     s0+=76.0;
     s1+=92.0;
    }
   }
  } else {
   if(i39<1.0002529621124268){
    if(i49<0.9566051959991455){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=299.0;
     s1+=2.0;
    }
   } else {
    if(i7<0.004948669113218784){
     s0+=325.0;
     s1+=39.0;
    } else {
     s1+=288.0;
    }
   }
  }
 } else {
  if(i19<0.0019515950698405504){
   if(i42<-1.2581389455590397e-05){
    if(i28<0.000849604606628418){
     s0+=39.0;
     s1+=958.0;
    } else {
     s0+=78.0;
     s1+=7.0;
    }
   } else {
    if(i32<0.0019536190666258335){
     s0+=3915.0;
     s1+=28.0;
    } else {
     s0+=31.0;
     s1+=96.0;
    }
   }
  } else {
   if(i32<0.00019852412515319884){
    s0+=673.0;
   } else {
    if(i24<0.001073464984074235){
     s1+=2461.0;
    } else {
     s0+=3043.0;
     s1+=3951.0;
    }
   }
  }
 }
} else {
 if(i5<1.1026859283447266e-05){
  if(i19<0.0024243476800620556){
   if(i14<1.0159646272659302){
    if(i51<0.03513961657881737){
     s0+=378.0;
     s1+=1.0;
    } else {
     s0+=59.0;
     s1+=6.0;
    }
   } else {
    if(i28<0.000102996826171875){
     s0+=41.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   }
  } else {
   if(i15<0.21662220358848572){
    if(i7<0.005952221341431141){
     s0+=31.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=36.0;
    }
   } else {
    if(i3<-3.708993972395547e-05){
     s1+=344.0;
    } else {
     s0+=8.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i34<1.1713988780975342){
   if(i24<0.0024385154247283936){
    s0+=97.0;
   } else {
    if(i25<1.097752571105957){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=26.0;
    }
   }
  } else {
   if(i33<-0.0026160776615142822){
    if(i7<0.006476332899183035){
     s0+=35.0;
    } else {
     s0+=6.0;
     s1+=289.0;
    }
   } else {
    if(i37<0.002568573225289583){
     s0+=7.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=12241.0;
    }
   }
  }
 }
}
if(i1<6.562471389770508e-05){
 if(i4<0.00032824277877807617){
  if(i34<1.0903575420379639){
   if(i34<1.05497145652771){
    if(i34<1.0446743965148926){
     s0+=14828.0;
     s1+=27.0;
    } else {
     s0+=5521.0;
     s1+=118.0;
    }
   } else {
    if(i5<-8.046627044677734e-06){
     s0+=3450.0;
     s1+=223.0;
    } else {
     s0+=2594.0;
     s1+=1782.0;
    }
   }
  } else {
   if(i3<-0.00010449177352711558){
    if(i17<0.04157063364982605){
     s0+=210.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=280.0;
    }
   } else {
    if(i36<0.22627761960029602){
     s0+=78356.0;
     s1+=773.0;
    } else {
     s0+=75.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i7<0.004166324622929096){
   if(i53<0.038004759699106216){
    if(i51<0.0511138029396534){
     s0+=6828.0;
     s1+=87.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i58<1.0026646852493286){
     s0+=195.0;
     s1+=99.0;
    } else {
     s0+=319.0;
    }
   }
  } else {
   if(i2<0.9996083974838257){
    if(i69<0.5094176530838013){
     s0+=1302.0;
     s1+=196.0;
    } else {
     s0+=59.0;
     s1+=119.0;
    }
   } else {
    if(i63<-0.0005429434822872281){
     s0+=310.0;
     s1+=3078.0;
    } else {
     s0+=563.0;
     s1+=1035.0;
    }
   }
  }
 }
} else {
 if(i29<0.002368235494941473){
  if(i62<0.0004052524745929986){
   if(i48<1.2129545211791992e-05){
    if(i36<0.1032370924949646){
     s0+=11.0;
     s1+=2104.0;
    } else {
     s0+=12.0;
     s1+=13.0;
    }
   } else {
    if(i28<0.0005304217338562012){
     s0+=6.0;
     s1+=28.0;
    } else {
     s0+=118.0;
    }
   }
  } else {
   if(i29<0.001216329401358962){
    s1+=192.0;
   } else {
    if(i54<0.0007379292510449886){
     s1+=18.0;
    } else {
     s0+=1840.0;
    }
   }
  }
 } else {
  if(i15<0.03063589334487915){
   if(i65<-6.044104338798206e-06){
    if(i39<1.0027414560317993){
     s0+=9.0;
    } else {
     s0+=10.0;
     s1+=73.0;
    }
   } else {
    if(i2<1.0052748918533325){
     s0+=34.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   }
  } else {
   if(i2<1.0070159435272217){
    if(i5<6.681680679321289e-05){
     s0+=16.0;
     s1+=1043.0;
    } else {
     s0+=49.0;
     s1+=138.0;
    }
   } else {
    if(i3<-9.523327753413469e-05){
     s1+=11864.0;
    } else {
     s0+=2.0;
     s1+=681.0;
    }
   }
  }
 }
}
if(i5<3.1054019927978516e-05){
 if(i36<0.196351557970047){
  if(i8<1.0115034580230713){
   if(i28<7.778406143188477e-05){
    if(i59<0.011034315451979637){
     s0+=77012.0;
     s1+=789.0;
    } else {
     s0+=117.0;
     s1+=39.0;
    }
   } else {
    if(i29<0.0010198585223406553){
     s0+=5487.0;
     s1+=2441.0;
    } else {
     s0+=28656.0;
     s1+=1486.0;
    }
   }
  } else {
   if(i41<1.0953161716461182){
    s1+=692.0;
   } else {
    if(i21<0.017326055094599724){
     s0+=688.0;
     s1+=88.0;
    } else {
     s0+=180.0;
     s1+=478.0;
    }
   }
  }
 } else {
  if(i7<0.005585376173257828){
   if(i3<-5.4812880989629775e-05){
    if(i2<1.0003252029418945){
     s0+=2.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i20<-0.0004871487617492676){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=232.0;
     s1+=2.0;
    }
   }
  } else {
   if(i34<1.142787218093872){
    s0+=8.0;
   } else {
    if(i50<-8.986213288153522e-06){
     s0+=4.0;
     s1+=1018.0;
    } else {
     s0+=4.0;
    }
   }
  }
 }
} else {
 if(i41<1.170027494430542){
  if(i29<0.0012602420756593347){
   if(i7<0.001793758012354374){
    if(i13<1.0117273330688477){
     s0+=468.0;
     s1+=25.0;
    } else {
     s0+=9.0;
     s1+=103.0;
    }
   } else {
    if(i28<0.0005473792552947998){
     s0+=2.0;
     s1+=2008.0;
    } else {
     s0+=62.0;
    }
   }
  } else {
   if(i18<0.0003230513830203563){
    if(i15<0.13395294547080994){
     s0+=371.0;
     s1+=330.0;
    } else {
     s0+=68.0;
     s1+=490.0;
    }
   } else {
    if(i7<0.009565262123942375){
     s0+=2470.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i15<0.0801735520362854){
   if(i0<0.0017584562301635742){
    if(i43<0.17089352011680603){
     s0+=523.0;
     s1+=206.0;
    } else {
     s0+=5.0;
     s1+=62.0;
    }
   } else {
    if(i15<0.02196362614631653){
     s0+=15.0;
     s1+=70.0;
    } else {
     s1+=232.0;
    }
   }
  } else {
   if(i61<0.004344867542386055){
    if(i20<-0.00037020444869995117){
     s0+=138.0;
     s1+=484.0;
    } else {
     s0+=57.0;
     s1+=13087.0;
    }
   } else {
    s0+=9.0;
   }
  }
 }
}
if(i27<1.0081478357315063){
 if(i4<0.0005390048027038574){
  if(i23<1.024514079093933){
   if(i21<0.006775497458875179){
    if(i61<0.000218252680497244){
     s0+=65123.0;
     s1+=222.0;
    } else {
     s0+=2617.0;
     s1+=287.0;
    }
   } else {
    if(i12<1.0000076293945312){
     s0+=32614.0;
     s1+=618.0;
    } else {
     s0+=8070.0;
     s1+=2993.0;
    }
   }
  } else {
   if(i7<0.005218770354986191){
    if(i0<0.0003479123115539551){
     s0+=546.0;
     s1+=30.0;
    } else {
     s0+=10.0;
     s1+=17.0;
    }
   } else {
    if(i17<0.09623757004737854){
     s0+=11.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=480.0;
    }
   }
  }
 } else {
  if(i3<-4.8424044507555664e-05){
   if(i15<0.12427130341529846){
    if(i37<0.0012675237376242876){
     s0+=6.0;
     s1+=469.0;
    } else {
     s0+=1229.0;
     s1+=836.0;
    }
   } else {
    if(i21<0.01390903815627098){
     s0+=76.0;
     s1+=61.0;
    } else {
     s0+=48.0;
     s1+=3148.0;
    }
   }
  } else {
   if(i21<0.00816093385219574){
    if(i33<0.0009902715682983398){
     s0+=3089.0;
     s1+=110.0;
    } else {
     s0+=94.0;
     s1+=63.0;
    }
   } else {
    if(i47<7.495317549910396e-05){
     s0+=141.0;
     s1+=684.0;
    } else {
     s0+=685.0;
     s1+=288.0;
    }
   }
  }
 }
} else {
 if(i18<0.0007025679806247354){
  if(i33<0.0015134215354919434){
   if(i46<0.0022917890455573797){
    if(i62<0.00040025857742875814){
     s0+=96.0;
     s1+=453.0;
    } else {
     s0+=401.0;
     s1+=203.0;
    }
   } else {
    if(i50<-1.6985810361802578e-05){
     s0+=2.0;
     s1+=1139.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   }
  } else {
   if(i34<1.7041046619415283){
    if(i10<1.0116345882415771){
     s0+=7.0;
     s1+=409.0;
    } else {
     s0+=4.0;
     s1+=11938.0;
    }
   } else {
    s0+=23.0;
   }
  }
 } else {
  if(i63<-0.00799139030277729){
   s1+=5.0;
  } else {
   s0+=1485.0;
  }
 }
}
if(i3<-9.404080628883094e-05){
 if(i22<0.04147660732269287){
  if(i25<1.114527940750122){
   if(i32<0.009106623008847237){
    if(i49<0.9162680506706238){
     s0+=16.0;
     s1+=33.0;
    } else {
     s0+=45.0;
     s1+=4.0;
    }
   } else {
    if(i72<-0.2691384553909302){
     s1+=2.0;
    } else {
     s0+=610.0;
     s1+=8.0;
    }
   }
  } else {
   if(i10<0.9797543883323669){
    if(i43<0.09433720260858536){
     s0+=45.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=28.0;
    }
   } else {
    if(i77<-0.017004162073135376){
     s0+=9.0;
     s1+=83.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i38<0.004000997636467218){
   if(i56<-5.304701335262507e-05){
    s0+=84.0;
   } else {
    if(i13<0.8924416303634644){
     s0+=37.0;
     s1+=32.0;
    } else {
     s0+=127.0;
     s1+=15526.0;
    }
   }
  } else {
   if(i76<-0.011442095041275024){
    s1+=2.0;
   } else {
    s0+=125.0;
   }
  }
 }
} else {
 if(i1<6.335973739624023e-05){
  if(i15<0.2069360911846161){
   if(i19<0.001728216651827097){
    if(i19<0.001227319473400712){
     s0+=80008.0;
     s1+=354.0;
    } else {
     s0+=11327.0;
     s1+=644.0;
    }
   } else {
    if(i26<1.1164028644561768){
     s0+=2534.0;
     s1+=2884.0;
    } else {
     s0+=19498.0;
     s1+=1475.0;
    }
   }
  } else {
   if(i38<0.0005448606098070741){
    if(i22<0.20831000804901123){
     s1+=2.0;
    } else {
     s0+=154.0;
     s1+=3.0;
    }
   } else {
    if(i54<0.0021052276715636253){
     s0+=53.0;
     s1+=5.0;
    } else {
     s0+=45.0;
     s1+=525.0;
    }
   }
  }
 } else {
  if(i57<0.999787449836731){
   if(i52<-2.5180047487083357e-06){
    s0+=562.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i24<0.0010904910741373897){
    if(i18<0.0005902131670154631){
     s1+=1659.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i18<0.00040970410918816924){
     s0+=109.0;
     s1+=971.0;
    } else {
     s0+=1106.0;
     s1+=80.0;
    }
   }
  }
 }
}
if(i5<1.901388168334961e-05){
 if(i24<0.015778757631778717){
  if(i13<1.0164005756378174){
   if(i7<0.003547786269336939){
    if(i34<1.0903575420379639){
     s0+=23982.0;
     s1+=768.0;
    } else {
     s0+=60645.0;
     s1+=172.0;
    }
   } else {
    if(i27<0.995558500289917){
     s0+=17295.0;
     s1+=584.0;
    } else {
     s0+=5675.0;
     s1+=2353.0;
    }
   }
  } else {
   if(i5<7.927417755126953e-06){
    if(i28<-2.8371810913085938e-05){
     s0+=391.0;
     s1+=6.0;
    } else {
     s0+=273.0;
     s1+=94.0;
    }
   } else {
    if(i38<0.0007309410721063614){
     s0+=54.0;
     s1+=2.0;
    } else {
     s0+=79.0;
     s1+=378.0;
    }
   }
  }
 } else {
  if(i39<0.9963274002075195){
   s0+=41.0;
  } else {
   s1+=249.0;
  }
 }
} else {
 if(i34<1.1757044792175293){
  if(i10<1.0133657455444336){
   if(i55<0.0006658258498646319){
    if(i31<1.056142807006836){
     s0+=1742.0;
    } else {
     s0+=208.0;
     s1+=1784.0;
    }
   } else {
    if(i26<1.099359154701233){
     s1+=107.0;
    } else {
     s0+=3853.0;
     s1+=188.0;
    }
   }
  } else {
   if(i40<1.0869626998901367){
    if(i5<7.653236389160156e-05){
     s1+=1154.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i52<-3.3839223760878667e-06){
     s0+=169.0;
    } else {
     s1+=165.0;
    }
   }
  }
 } else {
  if(i15<0.07158458232879639){
   if(i25<1.0851818323135376){
    if(i6<1.017126202583313){
     s0+=1180.0;
     s1+=64.0;
    } else {
     s1+=52.0;
    }
   } else {
    if(i27<1.0078877210617065){
     s0+=218.0;
     s1+=228.0;
    } else {
     s0+=1.0;
     s1+=153.0;
    }
   }
  } else {
   if(i33<-0.0013494491577148438){
    if(i29<0.00576296541839838){
     s0+=313.0;
     s1+=144.0;
    } else {
     s0+=199.0;
     s1+=1435.0;
    }
   } else {
    if(i2<1.0020761489868164){
     s0+=33.0;
     s1+=77.0;
    } else {
     s0+=43.0;
     s1+=14301.0;
    }
   }
  }
 }
}
if(i7<0.007551929913461208){
 if(i3<-7.899510092101991e-05){
  if(i52<-5.013664576836163e-06){
   if(i65<-2.1628631657222286e-05){
    s1+=4.0;
   } else {
    s0+=338.0;
   }
  } else {
   if(i39<1.0005855560302734){
    s0+=179.0;
   } else {
    if(i20<-4.6193599700927734e-05){
     s0+=59.0;
     s1+=14.0;
    } else {
     s0+=4.0;
     s1+=2052.0;
    }
   }
  }
 } else {
  if(i20<0.00018727779388427734){
   if(i19<0.0015696289483457804){
    if(i19<0.001028538215905428){
     s0+=73786.0;
     s1+=223.0;
    } else {
     s0+=14565.0;
     s1+=580.0;
    }
   } else {
    if(i34<1.0912797451019287){
     s0+=3108.0;
     s1+=2449.0;
    } else {
     s0+=18236.0;
     s1+=1029.0;
    }
   }
  } else {
   if(i34<1.0912797451019287){
    s1+=853.0;
   } else {
    if(i68<-0.0007974505424499512){
     s1+=43.0;
    } else {
     s0+=1032.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i1<-2.1696090698242188e-05){
  if(i25<1.1157057285308838){
   if(i36<0.1379985213279724){
    if(i15<0.06275931000709534){
     s0+=3763.0;
     s1+=38.0;
    } else {
     s0+=739.0;
     s1+=123.0;
    }
   } else {
    if(i28<0.00023853778839111328){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=20.0;
     s1+=65.0;
    }
   }
  } else {
   if(i43<0.052997887134552){
    s0+=82.0;
   } else {
    if(i17<0.0031520426273345947){
     s0+=21.0;
     s1+=7.0;
    } else {
     s0+=14.0;
     s1+=460.0;
    }
   }
  }
 } else {
  if(i64<1.0236544609069824){
   if(i27<0.9994986057281494){
    if(i17<0.03416019678115845){
     s0+=230.0;
     s1+=53.0;
    } else {
     s0+=84.0;
     s1+=273.0;
    }
   } else {
    if(i17<0.018266379833221436){
     s0+=64.0;
     s1+=70.0;
    } else {
     s0+=37.0;
     s1+=703.0;
    }
   }
  } else {
   if(i18<0.0018577781738713384){
    if(i10<0.9906851053237915){
     s0+=119.0;
     s1+=677.0;
    } else {
     s0+=11.0;
     s1+=14504.0;
    }
   } else {
    s0+=56.0;
   }
  }
 }
}
if(i3<-9.840834536589682e-05){
 if(i25<1.038961410522461){
  if(i0<0.0021125078201293945){
   if(i75<0.09548759460449219){
    if(i36<0.16633176803588867){
     s0+=482.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   s1+=26.0;
  }
 } else {
  if(i57<0.9982380867004395){
   s0+=153.0;
  } else {
   if(i23<0.8970118165016174){
    if(i21<0.061032697558403015){
     s0+=146.0;
     s1+=38.0;
    } else {
     s0+=49.0;
     s1+=206.0;
    }
   } else {
    if(i21<0.0098069217056036){
     s0+=110.0;
     s1+=1110.0;
    } else {
     s0+=43.0;
     s1+=13839.0;
    }
   }
  }
 }
} else {
 if(i33<0.0012007355690002441){
  if(i4<0.00031381845474243164){
   if(i19<0.0014802793739363551){
    if(i26<1.0817922353744507){
     s0+=15509.0;
     s1+=364.0;
    } else {
     s0+=65900.0;
     s1+=246.0;
    }
   } else {
    if(i24<0.0009055612608790398){
     s0+=1720.0;
     s1+=1813.0;
    } else {
     s0+=20602.0;
     s1+=604.0;
    }
   }
  } else {
   if(i63<-0.0007578610675409436){
    if(i19<0.00208500144071877){
     s0+=511.0;
     s1+=111.0;
    } else {
     s0+=1178.0;
     s1+=2138.0;
    }
   } else {
    if(i7<0.004015655256807804){
     s0+=7484.0;
     s1+=102.0;
    } else {
     s0+=1276.0;
     s1+=1543.0;
    }
   }
  }
 } else {
  if(i31<1.1161681413650513){
   if(i18<0.00025440347963012755){
    s1+=1604.0;
   } else {
    s0+=92.0;
   }
  } else {
   if(i34<1.1593338251113892){
    if(i9<1.0247299671173096){
     s0+=1120.0;
     s1+=10.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i56<-4.8340807552449405e-06){
     s0+=6.0;
     s1+=507.0;
    } else {
     s0+=202.0;
    }
   }
  }
 }
}
if(i0<0.0009596943855285645){
 if(i15<0.20082849264144897){
  if(i5<1.5079975128173828e-05){
   if(i14<1.0181350708007812){
    if(i7<0.00318812089972198){
     s0+=80013.0;
     s1+=663.0;
    } else {
     s0+=25549.0;
     s1+=2438.0;
    }
   } else {
    if(i19<0.0022850153036415577){
     s0+=532.0;
     s1+=34.0;
    } else {
     s0+=116.0;
     s1+=171.0;
    }
   }
  } else {
   if(i53<0.036350734531879425){
    if(i8<1.015379786491394){
     s0+=5750.0;
     s1+=755.0;
    } else {
     s0+=42.0;
     s1+=231.0;
    }
   } else {
    if(i35<1.0481281280517578){
     s0+=1183.0;
     s1+=411.0;
    } else {
     s0+=981.0;
     s1+=1619.0;
    }
   }
  }
 } else {
  if(i25<1.1230299472808838){
   if(i37<0.002294124336913228){
    if(i9<1.0207351446151733){
     s0+=104.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i7<0.0041506849229335785){
     s0+=46.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=168.0;
    }
   }
  } else {
   if(i19<0.0013852077536284924){
    if(i3<-4.575638013193384e-05){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=131.0;
    }
   } else {
    if(i21<0.005903101526200771){
     s0+=12.0;
     s1+=7.0;
    } else {
     s0+=40.0;
     s1+=1445.0;
    }
   }
  }
 }
} else {
 if(i34<1.1706266403198242){
  if(i48<1.1265277862548828e-05){
   if(i12<1.0020917654037476){
    if(i25<1.054246187210083){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=127.0;
    }
   } else {
    if(i46<0.0010175536153838038){
     s0+=20.0;
     s1+=2188.0;
    } else {
     s0+=165.0;
     s1+=132.0;
    }
   }
  } else {
   if(i24<0.001088745309971273){
    if(i32<0.00018020071729552){
     s0+=66.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i32<0.0029846434481441975){
     s0+=1573.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i8<0.934232771396637){
   if(i47<0.00029171304777264595){
    s1+=64.0;
   } else {
    if(i19<0.005749039351940155){
     s0+=31.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  } else {
   if(i20<-0.00012934207916259766){
    if(i50<-4.80415255879052e-05){
     s0+=8.0;
     s1+=582.0;
    } else {
     s0+=33.0;
     s1+=128.0;
    }
   } else {
    if(i38<0.000672126654535532){
     s0+=7.0;
     s1+=1072.0;
    } else {
     s0+=1.0;
     s1+=12093.0;
    }
   }
  }
 }
}
if(i3<-0.00010638721869327128){
 if(i22<0.019072353839874268){
  if(i10<0.9802893400192261){
   if(i19<0.009131389670073986){
    if(i44<0.743653416633606){
     s0+=14.0;
     s1+=9.0;
    } else {
     s0+=445.0;
     s1+=7.0;
    }
   } else {
    if(i54<0.012685462832450867){
     s0+=1.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i62<0.0007477512117475271){
    if(i29<0.007929326966404915){
     s0+=10.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i74<0.017138119786977768){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i41<1.1301336288452148){
   if(i56<-2.0099181710975245e-05){
    if(i13<0.9718323349952698){
     s1+=1.0;
    } else {
     s0+=216.0;
    }
   } else {
    if(i48<-2.4944543838500977e-05){
     s0+=2.0;
    } else {
     s1+=431.0;
    }
   }
  } else {
   if(i68<-0.017986059188842773){
    if(i14<0.8415254950523376){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=37.0;
     s1+=5.0;
    }
   } else {
    if(i52<-1.750628143781796e-05){
     s0+=17.0;
    } else {
     s0+=50.0;
     s1+=14366.0;
    }
   }
  }
 }
} else {
 if(i12<1.002427577972412){
  if(i14<1.0181350708007812){
   if(i4<0.0002664923667907715){
    if(i24<0.0008680314058437943){
     s0+=29386.0;
     s1+=1994.0;
    } else {
     s0+=71582.0;
     s1+=514.0;
    }
   } else {
    if(i21<0.008208813145756721){
     s0+=6249.0;
     s1+=145.0;
    } else {
     s0+=1197.0;
     s1+=1207.0;
    }
   }
  } else {
   if(i19<0.002156478352844715){
    if(i56<-3.7891923057031818e-06){
     s0+=53.0;
     s1+=29.0;
    } else {
     s0+=466.0;
     s1+=1.0;
    }
   } else {
    if(i45<1.0002598762512207){
     s0+=85.0;
     s1+=34.0;
    } else {
     s0+=50.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i11<1.016484022140503){
   if(i61<0.00010070234566228464){
    if(i48<9.119510650634766e-06){
     s0+=827.0;
     s1+=991.0;
    } else {
     s0+=3400.0;
     s1+=114.0;
    }
   } else {
    if(i26<1.1180615425109863){
     s0+=13.0;
     s1+=499.0;
    } else {
     s0+=1958.0;
     s1+=1519.0;
    }
   }
  } else {
   if(i39<1.003265380859375){
    if(i48<1.5079975128173828e-05){
     s0+=25.0;
     s1+=1430.0;
    } else {
     s0+=44.0;
     s1+=2.0;
    }
   } else {
    if(i32<0.0023835289757698774){
     s0+=166.0;
     s1+=6.0;
    } else {
     s0+=146.0;
     s1+=427.0;
    }
   }
  }
 }
}
if(i13<1.0164542198181152){
 if(i5<3.3795833587646484e-05){
  if(i38<0.0007337821880355477){
   if(i3<-5.911655171075836e-05){
    if(i69<0.08678719401359558){
     s0+=381.0;
     s1+=6.0;
    } else {
     s0+=17.0;
     s1+=48.0;
    }
   } else {
    if(i20<-5.3942203521728516e-05){
     s0+=23293.0;
     s1+=396.0;
    } else {
     s0+=57261.0;
     s1+=134.0;
    }
   }
  } else {
   if(i24<0.00092954037245363){
    if(i57<0.9995691776275635){
     s0+=2497.0;
     s1+=72.0;
    } else {
     s0+=753.0;
     s1+=3007.0;
    }
   } else {
    if(i15<0.19056028127670288){
     s0+=27777.0;
     s1+=1307.0;
    } else {
     s0+=166.0;
     s1+=686.0;
    }
   }
  }
 } else {
  if(i18<0.0006517487345263362){
   if(i0<0.0008983612060546875){
    if(i38<0.0016585169360041618){
     s0+=561.0;
     s1+=59.0;
    } else {
     s0+=315.0;
     s1+=724.0;
    }
   } else {
    if(i48<6.902217864990234e-05){
     s0+=175.0;
     s1+=3553.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i29<0.00842864066362381){
    s0+=1561.0;
   } else {
    if(i33<-0.0037878751754760742){
     s0+=18.0;
     s1+=15.0;
    } else {
     s1+=47.0;
    }
   }
  }
 }
} else {
 if(i7<0.004952743649482727){
  if(i42<-1.3493539881892502e-05){
   if(i27<1.009466290473938){
    s0+=13.0;
   } else {
    if(i52<-7.191389158833772e-06){
     s0+=14.0;
    } else {
     s1+=595.0;
    }
   }
  } else {
   if(i41<1.0780352354049683){
    if(i11<1.0081591606140137){
     s0+=1.0;
    } else {
     s1+=107.0;
    }
   } else {
    if(i20<0.0005066990852355957){
     s0+=1550.0;
     s1+=112.0;
    } else {
     s0+=2.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i38<0.0038968443404883146){
   if(i12<1.0006238222122192){
    if(i51<0.04016023129224777){
     s0+=75.0;
     s1+=8.0;
    } else {
     s0+=2.0;
     s1+=173.0;
    }
   } else {
    if(i17<0.07546201348304749){
     s0+=27.0;
     s1+=94.0;
    } else {
     s0+=31.0;
     s1+=13157.0;
    }
   }
  } else {
   if(i8<1.02897310256958){
    s0+=27.0;
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i5<2.2113323211669922e-05){
 if(i19<0.0016738008707761765){
  if(i32<0.000517594744451344){
   if(i19<0.001249218825250864){
    if(i33<-0.0003847479820251465){
     s0+=4718.0;
     s1+=221.0;
    } else {
     s0+=17856.0;
     s1+=3.0;
    }
   } else {
    if(i9<0.9959925413131714){
     s0+=85.0;
     s1+=275.0;
    } else {
     s0+=1278.0;
     s1+=152.0;
    }
   }
  } else {
   if(i37<0.0018991234246641397){
    if(i40<1.0542316436767578){
     s0+=5609.0;
     s1+=21.0;
    } else {
     s0+=48336.0;
     s1+=7.0;
    }
   } else {
    if(i6<0.9983655214309692){
     s0+=8805.0;
     s1+=19.0;
    } else {
     s0+=1478.0;
     s1+=190.0;
    }
   }
  }
 } else {
  if(i2<0.9981158971786499){
   if(i17<0.24151834845542908){
    if(i24<0.0009958255104720592){
     s0+=780.0;
     s1+=210.0;
    } else {
     s0+=16969.0;
     s1+=332.0;
    }
   } else {
    if(i29<0.0038200635462999344){
     s0+=9.0;
    } else {
     s0+=1.0;
     s1+=170.0;
    }
   }
  } else {
   if(i41<1.0440731048583984){
    if(i42<1.334037551714573e-05){
     s0+=1215.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i4<-6.809830665588379e-05){
     s0+=892.0;
     s1+=145.0;
    } else {
     s0+=1702.0;
     s1+=3458.0;
    }
   }
  }
 }
} else {
 if(i3<-7.051551074255258e-05){
  if(i10<0.9756231904029846){
   if(i36<0.05139133334159851){
    if(i76<-0.012749016284942627){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=346.0;
     s1+=20.0;
    }
   } else {
    if(i9<0.8636431097984314){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=104.0;
    }
   }
  } else {
   if(i24<0.0022925822995603085){
    if(i54<0.0010085281683132052){
     s0+=16.0;
     s1+=1283.0;
    } else {
     s0+=471.0;
     s1+=4.0;
    }
   } else {
    if(i33<-0.0016991496086120605){
     s0+=181.0;
     s1+=951.0;
    } else {
     s0+=55.0;
     s1+=14009.0;
    }
   }
  }
 } else {
  if(i18<0.00029966572765260935){
   if(i34<1.1179521083831787){
    if(i40<1.1015808582305908){
     s0+=27.0;
     s1+=1620.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i40<1.1074860095977783){
     s0+=473.0;
     s1+=18.0;
    } else {
     s0+=243.0;
     s1+=833.0;
    }
   }
  } else {
   if(i51<0.037502992898225784){
    if(i61<0.0012249057181179523){
     s0+=4429.0;
     s1+=37.0;
    } else {
     s0+=66.0;
     s1+=40.0;
    }
   } else {
    if(i58<1.003300666809082){
     s0+=52.0;
     s1+=188.0;
    } else {
     s0+=264.0;
     s1+=93.0;
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
