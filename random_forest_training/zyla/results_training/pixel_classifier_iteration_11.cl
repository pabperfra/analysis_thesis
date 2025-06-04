/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=30 top_hat_box=15 difference_of_gaussian=15 top_hat_box=20 laplace_box_of_gaussian_blur=15 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 top_hat_box=10 maximum_box=3 maximum_box=2 difference_of_gaussian=20 laplace_box_of_gaussian_blur=20 mean_box=10 gaussian_blur=15 median_box=5 difference_of_gaussian=10 sobel_of_gaussian_blur=10 gaussian_blur=5 laplace_box_of_gaussian_blur=10 mean_box=15 median_box=3 sobel_of_median_box=5 maximum_box=5 maximum_box=1 gaussian_blur=3 mean_box=5 variance_box=3 mean_box=3 gaussian_blur=2 maximum_box=30 maximum_box=15 variance_box=20 variance_box=30 maximum_box=20 variance_box=15 maximum_box=10 top_hat_box=2 sobel_of_gaussian_blur=5 top_hat_box=5 variance_box=10 variance_box=5 small_hessian_eigenvalue_of_gaussian_blur=15 variance_box=2 top_hat_box=3 gaussian_blur=20 difference_of_gaussian=30 difference_of_gaussian=2 large_hessian_eigenvalue_of_gaussian_blur=1 laplace_box_of_gaussian_blur=2 difference_of_gaussian=1 large_hessian_eigenvalue_of_gaussian_blur=2 difference_of_gaussian=3 gaussian_blur=30 sobel_of_gaussian_blur=15 laplace_box_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=5 large_hessian_eigenvalue_of_gaussian_blur=10 sobel_of_median_box=3 large_hessian_eigenvalue_of_gaussian_blur=15 laplace_box_of_gaussian_blur=3 small_hessian_eigenvalue_of_gaussian_blur=2 top_hat_box=1 large_hessian_eigenvalue_of_gaussian_blur=3 sobel_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=1 mean_box=30 small_hessian_eigenvalue_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=5 mean_box=20 sobel_of_gaussian_blur=1 sobel_of_gaussian_blur=2 gaussian_blur=1 sobel_of_gaussian_blur=30
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 73
max_depth = 5
num_trees = 250
feature_importances = 0.08144522599413888,0.07749539084731094,0.08722044817876459,0.1395997478907977,0.05165442767329028,0.06943429737130448,0.04437418078953334,0.061383124039124805,0.035038372350948595,0.02550125499450667,0.04044672920178339,0.016695021498660974,0.007001923423571193,0.01612274304793116,0.021499885127148278,0.029907054390535336,0.01408313813488769,0.008162653742425295,0.010398654187561626,0.0217091914411654,0.005977527475316381,0.007858133982269306,0.008276249863385245,0.003543637064777445,0.004994314218926457,0.0034890708015015244,0.005113261419484693,0.00805329549046629,0.016623277598485208,0.0036817973882866412,0.002267924787685957,0.0030562138769842017,0.003090779789871174,0.003127333850978433,0.002646926191944135,0.0029053924898442313,0.002901419129595346,0.0020439033193309993,0.0034658748154533505,0.002488727373232655,0.0029363258596576684,0.002262822054365678,0.0047248485128823705,0.0019036500579706548,0.002327604078237675,0.002377476693144818,0.0018012010706575144,0.0014498707068746224,0.001527436237061894,0.0011746457559151644,0.0010378634493361405,0.00101035201362493,0.0011351130677321121,0.001184901072637825,0.0015102024678312021,0.0007637593414978495,0.0010592190011135354,0.0018500096268359468,0.0007763117567881372,0.0010838485331833199,0.0007754251420515624,0.0008874069937511033,0.0005549884784511157,0.0008560558903366867,0.0008980539694254795,0.00101994896769824,0.00048495900467796063,0.0007131657588062918,0.0009197049785081884,0.002001705656344927,0.0003754441749031136,0.0013839582680433224,0.00045319610644253957
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
if(i3<0.08367037773132324){
 if(i10<0.0005861818790435791){
  if(i22<1.0451585054397583){
   if(i26<0.0002842879039235413){
    if(i21<0.037656910717487335){
     s0+=47288.0;
     s1+=45.0;
    } else {
     s0+=2.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.000309675931930542){
     s0+=1812.0;
     s1+=121.0;
    } else {
     s0+=4823.0;
     s1+=34.0;
    }
   }
  } else {
   if(i30<1.103413462638855){
    if(i29<1.0850647687911987){
     s0+=2518.0;
    } else {
     s0+=1556.0;
     s1+=1484.0;
    }
   } else {
    if(i15<0.0020446181297302246){
     s0+=10622.0;
     s1+=425.0;
    } else {
     s1+=13.0;
    }
   }
  }
 } else {
  if(i15<-0.0008078813552856445){
   if(i23<1.014927625656128){
    if(i4<1.710653305053711e-05){
     s0+=106.0;
     s1+=19.0;
    } else {
     s0+=19.0;
     s1+=153.0;
    }
   } else {
    if(i10<0.0013290047645568848){
     s0+=542.0;
     s1+=31.0;
    } else {
     s0+=13.0;
     s1+=20.0;
    }
   }
  } else {
   if(i30<1.0646642446517944){
    s0+=70.0;
   } else {
    if(i54<0.036027342081069946){
     s0+=52.0;
     s1+=759.0;
    } else {
     s0+=20.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0004031956195831299){
  if(i56<0.00017937980010174215){
   if(i66<-2.5011081561387982e-06){
    if(i38<0.0844152569770813){
     s0+=18.0;
    } else {
     s0+=2.0;
     s1+=3.0;
    }
   } else {
    s0+=336.0;
   }
  } else {
   if(i0<0.10435634851455688){
    s0+=8.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i18<0.00010216236114501953){
   if(i53<0.0018818732351064682){
    if(i49<0.00480198860168457){
     s0+=281.0;
     s1+=1563.0;
    } else {
     s0+=652.0;
     s1+=360.0;
    }
   } else {
    if(i1<0.10340124368667603){
     s0+=166.0;
     s1+=509.0;
    } else {
     s0+=35.0;
     s1+=2284.0;
    }
   }
  } else {
   if(i6<-4.23185556428507e-05){
    if(i3<0.09826821088790894){
     s0+=1.0;
     s1+=356.0;
    } else {
     s1+=8957.0;
    }
   } else {
    if(i16<0.0025482363998889923){
     s0+=44.0;
     s1+=13.0;
    } else {
     s1+=107.0;
    }
   }
  }
 }
}
if(i14<1.0081526041030884){
 if(i26<0.0003348664613440633){
  if(i1<0.08221018314361572){
   if(i3<0.0847940742969513){
    if(i19<1.0037583112716675){
     s0+=54540.0;
     s1+=314.0;
    } else {
     s0+=19.0;
     s1+=34.0;
    }
   } else {
    if(i21<0.011589128524065018){
     s0+=16.0;
    } else {
     s0+=1.0;
     s1+=29.0;
    }
   }
  } else {
   if(i19<1.0002247095108032){
    if(i28<1.0072658061981201){
     s0+=79.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i29<1.0717058181762695){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i5<1.0007843971252441){
   if(i1<0.07753735780715942){
    if(i63<0.0009718631627038121){
     s0+=8794.0;
     s1+=1249.0;
    } else {
     s0+=4677.0;
     s1+=98.0;
    }
   } else {
    if(i13<0.9979321956634521){
     s0+=378.0;
     s1+=1.0;
    } else {
     s0+=748.0;
     s1+=1534.0;
    }
   }
  } else {
   if(i16<0.004057324957102537){
    if(i17<0.9960974454879761){
     s0+=14.0;
     s1+=128.0;
    } else {
     s0+=247.0;
     s1+=152.0;
    }
   } else {
    if(i17<0.9992810487747192){
     s0+=257.0;
     s1+=1101.0;
    } else {
     s0+=15.0;
     s1+=1363.0;
    }
   }
  }
 }
} else {
 if(i10<0.0005570650100708008){
  if(i31<0.006012756377458572){
   if(i3<0.0662541389465332){
    if(i39<0.001121420762501657){
     s0+=32.0;
     s1+=105.0;
    } else {
     s0+=679.0;
     s1+=34.0;
    }
   } else {
    if(i52<0.9999157190322876){
     s0+=150.0;
     s1+=1229.0;
    } else {
     s0+=377.0;
     s1+=426.0;
    }
   }
  } else {
   if(i34<0.00716325081884861){
    if(i4<3.826618194580078e-05){
     s0+=33.0;
     s1+=22.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i22<1.0720465183258057){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=1219.0;
    }
   }
  }
 } else {
  if(i2<0.0006147027015686035){
   if(i41<-2.4260405552922748e-05){
    if(i53<0.002159608993679285){
     s0+=3.0;
    } else {
     s1+=116.0;
    }
   } else {
    if(i1<0.12671881914138794){
     s0+=63.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i12<0.998573899269104){
    if(i19<0.9982576966285706){
     s0+=22.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=207.0;
    }
   } else {
    if(i5<1.005056619644165){
     s0+=15.0;
     s1+=471.0;
    } else {
     s0+=1.0;
     s1+=7073.0;
    }
   }
  }
 }
}
if(i15<0.0007648468017578125){
 if(i3<0.08341947197914124){
  if(i51<-0.0013687610626220703){
   if(i7<0.039562880992889404){
    if(i25<0.9740685224533081){
     s0+=2689.0;
     s1+=75.0;
    } else {
     s0+=2258.0;
     s1+=626.0;
    }
   } else {
    if(i46<0.0003095269203186035){
     s0+=310.0;
     s1+=581.0;
    } else {
     s0+=371.0;
     s1+=22.0;
    }
   }
  } else {
   if(i5<1.0025185346603394){
    if(i3<0.06722939014434814){
     s0+=60885.0;
     s1+=680.0;
    } else {
     s0+=2355.0;
     s1+=404.0;
    }
   } else {
    if(i32<0.007145424373447895){
     s0+=18.0;
     s1+=131.0;
    } else {
     s0+=47.0;
    }
   }
  }
 } else {
  if(i52<0.9995731711387634){
   if(i13<0.998052716255188){
    s0+=386.0;
   } else {
    if(i31<0.0006358009413816035){
     s0+=27.0;
    } else {
     s1+=129.0;
    }
   }
  } else {
   if(i34<0.006360701285302639){
    if(i71<1.0278388261795044){
     s0+=363.0;
     s1+=1722.0;
    } else {
     s0+=710.0;
     s1+=529.0;
    }
   } else {
    if(i22<1.0819685459136963){
     s0+=43.0;
     s1+=12.0;
    } else {
     s0+=87.0;
     s1+=2195.0;
    }
   }
  }
 }
} else {
 if(i0<0.06415283679962158){
  if(i18<0.00021499395370483398){
   if(i31<0.0010536261834204197){
    if(i10<-0.0001793503761291504){
     s0+=85.0;
    } else {
     s0+=1.0;
     s1+=89.0;
    }
   } else {
    if(i11<2.765655517578125e-05){
     s0+=494.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i42<0.00022778677521273494){
    if(i14<1.0092477798461914){
     s0+=8.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=147.0;
   }
  }
 } else {
  if(i16<0.0025380877777934074){
   if(i25<1.008853793144226){
    if(i14<1.0123214721679688){
     s0+=5.0;
     s1+=7.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=315.0;
    } else {
     s0+=36.0;
     s1+=59.0;
    }
   }
  } else {
   if(i30<1.0656896829605103){
    s0+=4.0;
   } else {
    if(i10<-0.00030916929244995117){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=9278.0;
    }
   }
  }
 }
}
if(i38<0.060222476720809937){
 if(i27<1.0077688694000244){
  if(i2<0.0006017386913299561){
   if(i22<1.0495078563690186){
    if(i59<-0.0022396743297576904){
     s0+=1801.0;
     s1+=211.0;
    } else {
     s0+=54321.0;
     s1+=163.0;
    }
   } else {
    if(i3<0.07438400387763977){
     s0+=10114.0;
     s1+=1122.0;
    } else {
     s0+=77.0;
     s1+=864.0;
    }
   }
  } else {
   if(i30<1.0614044666290283){
    s0+=67.0;
   } else {
    if(i65<1.0027998685836792){
     s0+=81.0;
     s1+=1438.0;
    } else {
     s0+=40.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i1<0.06908372044563293){
   if(i3<0.07000598311424255){
    if(i32<0.0007383644697256386){
     s0+=511.0;
     s1+=314.0;
    } else {
     s0+=1408.0;
     s1+=84.0;
    }
   } else {
    if(i8<1.131009578704834){
     s0+=12.0;
     s1+=241.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   }
  } else {
   if(i43<0.04837167263031006){
    if(i43<0.04177412390708923){
     s0+=7.0;
     s1+=2691.0;
    } else {
     s0+=21.0;
     s1+=265.0;
    }
   } else {
    if(i15<-0.0001258254051208496){
     s0+=46.0;
     s1+=4.0;
    } else {
     s0+=13.0;
     s1+=146.0;
    }
   }
  }
 }
} else {
 if(i3<0.10788935422897339){
  if(i36<0.04000940918922424){
   if(i3<0.08061408996582031){
    if(i6<-4.359740705695003e-05){
     s0+=19.0;
     s1+=36.0;
    } else {
     s0+=163.0;
     s1+=14.0;
    }
   } else {
    if(i9<1.094970703125){
     s0+=11.0;
     s1+=263.0;
    } else {
     s0+=33.0;
     s1+=35.0;
    }
   }
  } else {
   if(i1<0.08088263869285583){
    if(i20<0.977860689163208){
     s0+=18.0;
     s1+=10.0;
    } else {
     s0+=885.0;
     s1+=14.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=144.0;
     s1+=118.0;
    } else {
     s0+=617.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i41<2.023555225605378e-06){
   if(i32<0.000580565189011395){
    if(i16<0.003316030604764819){
     s0+=185.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=66.0;
    }
   } else {
    if(i3<0.17263594269752502){
     s0+=258.0;
     s1+=1237.0;
    } else {
     s0+=83.0;
     s1+=7606.0;
    }
   }
  } else {
   if(i34<0.0053178295493125916){
    if(i39<0.002009331714361906){
     s0+=10.0;
     s1+=9.0;
    } else {
     s0+=227.0;
     s1+=1.0;
    }
   } else {
    s1+=12.0;
   }
  }
 }
}
if(i6<-8.167879423126578e-05){
 if(i23<1.020686388015747){
  if(i44<1.0004528760910034){
   if(i24<0.9989097118377686){
    if(i10<0.0002193450927734375){
     s0+=391.0;
     s1+=9.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=36.0;
   }
  } else {
   if(i13<1.002241849899292){
    if(i25<0.9381272792816162){
     s0+=98.0;
     s1+=6.0;
    } else {
     s0+=22.0;
     s1+=34.0;
    }
   } else {
    if(i42<0.0020472491160035133){
     s0+=3.0;
     s1+=339.0;
    } else {
     s0+=65.0;
     s1+=273.0;
    }
   }
  }
 } else {
  if(i18<-0.00039765238761901855){
   if(i1<0.1032051146030426){
    if(i53<0.0055888332426548){
     s0+=110.0;
     s1+=1.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i40<0.00454390374943614){
     s0+=5.0;
    } else {
     s1+=87.0;
    }
   }
  } else {
   if(i31<0.0005476524820551276){
    s0+=35.0;
   } else {
    if(i17<0.9967514276504517){
     s0+=68.0;
     s1+=587.0;
    } else {
     s0+=36.0;
     s1+=9498.0;
    }
   }
  }
 }
} else {
 if(i2<0.0005506277084350586){
  if(i7<0.07075154781341553){
   if(i15<0.0011508762836456299){
    if(i40<0.0003075780696235597){
     s0+=46529.0;
     s1+=131.0;
    } else {
     s0+=21216.0;
     s1+=2289.0;
    }
   } else {
    if(i29<1.2790409326553345){
     s1+=170.0;
    } else {
     s0+=60.0;
    }
   }
  } else {
   if(i36<0.04245692491531372){
    if(i6<-2.0022915123263374e-05){
     s0+=37.0;
     s1+=944.0;
    } else {
     s0+=96.0;
     s1+=207.0;
    }
   } else {
    if(i4<-4.863739013671875e-05){
     s0+=511.0;
     s1+=64.0;
    } else {
     s0+=1299.0;
     s1+=1042.0;
    }
   }
  }
 } else {
  if(i26<0.00020243410835973918){
   if(i1<0.06323903799057007){
    if(i64<0.004551630467176437){
     s0+=223.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i29<1.2392117977142334){
    if(i63<0.0012036898406222463){
     s1+=1083.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i31<0.004613041877746582){
     s0+=181.0;
     s1+=15.0;
    } else {
     s0+=58.0;
     s1+=342.0;
    }
   }
  }
 }
}
if(i4<3.701448440551758e-05){
 if(i21<0.02196298912167549){
  if(i28<1.0072929859161377){
   if(i1<0.07645782828330994){
    if(i51<-0.0016289353370666504){
     s0+=2696.0;
     s1+=519.0;
    } else {
     s0+=57678.0;
     s1+=361.0;
    }
   } else {
    if(i5<0.9968903064727783){
     s0+=300.0;
     s1+=15.0;
    } else {
     s0+=329.0;
     s1+=306.0;
    }
   }
  } else {
   if(i18<8.189678192138672e-05){
    if(i29<1.1039612293243408){
     s0+=471.0;
     s1+=258.0;
    } else {
     s0+=1536.0;
     s1+=130.0;
    }
   } else {
    if(i22<1.145219087600708){
     s0+=70.0;
     s1+=517.0;
    } else {
     s0+=134.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<0.0694299042224884){
   if(i12<0.994556725025177){
    if(i49<-0.0031505227088928223){
     s0+=321.0;
     s1+=77.0;
    } else {
     s0+=4750.0;
     s1+=51.0;
    }
   } else {
    if(i35<1.1083450317382812){
     s0+=362.0;
     s1+=570.0;
    } else {
     s0+=772.0;
     s1+=132.0;
    }
   }
  } else {
   if(i45<-0.0001398026943206787){
    if(i2<-0.0005404055118560791){
     s0+=269.0;
    } else {
     s0+=6.0;
     s1+=35.0;
    }
   } else {
    if(i64<-0.018619827926158905){
     s0+=340.0;
     s1+=879.0;
    } else {
     s0+=154.0;
     s1+=1647.0;
    }
   }
  }
 }
} else {
 if(i34<0.00039398338412865996){
  s0+=319.0;
 } else {
  if(i6<-4.463057848624885e-05){
   if(i5<1.0039563179016113){
    if(i11<2.8431415557861328e-05){
     s0+=21.0;
     s1+=1174.0;
    } else {
     s0+=197.0;
     s1+=439.0;
    }
   } else {
    if(i12<1.0063927173614502){
     s0+=52.0;
     s1+=1621.0;
    } else {
     s1+=8273.0;
    }
   }
  } else {
   if(i37<0.008440881967544556){
    if(i65<0.9992160201072693){
     s1+=8.0;
    } else {
     s0+=146.0;
     s1+=5.0;
    }
   } else {
    if(i18<0.00018912553787231445){
     s0+=20.0;
     s1+=274.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i1<0.07908213138580322){
 if(i4<4.178285598754883e-05){
  if(i21<0.014448393136262894){
   if(i24<1.007971167564392){
    if(i59<-0.0024039745330810547){
     s0+=2055.0;
     s1+=340.0;
    } else {
     s0+=54027.0;
     s1+=160.0;
    }
   } else {
    if(i39<0.0009995780419558287){
     s0+=33.0;
     s1+=142.0;
    } else {
     s0+=650.0;
     s1+=26.0;
    }
   }
  } else {
   if(i29<1.2371783256530762){
    if(i6<-1.595407593413256e-05){
     s0+=243.0;
     s1+=736.0;
    } else {
     s0+=3268.0;
     s1+=550.0;
    }
   } else {
    if(i53<0.006543789990246296){
     s0+=8688.0;
     s1+=192.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i19<0.9985787868499756){
   if(i68<1.0030652284622192){
    if(i63<0.00017604924505576491){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=215.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i33<1.2314128875732422){
    if(i13<1.0003501176834106){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=796.0;
    }
   } else {
    if(i47<0.011667309328913689){
     s0+=204.0;
     s1+=59.0;
    } else {
     s0+=25.0;
     s1+=278.0;
    }
   }
  }
 }
} else {
 if(i32<0.0005117261316627264){
  if(i69<0.0991150438785553){
   if(i6<-1.4977599676058162e-05){
    if(i56<5.697144842997659e-06){
     s0+=14.0;
    } else {
     s0+=2.0;
     s1+=92.0;
    }
   } else {
    if(i41<-3.384878709766781e-06){
     s0+=12.0;
     s1+=5.0;
    } else {
     s0+=162.0;
    }
   }
  } else {
   if(i26<0.0007976240012794733){
    if(i6<-7.980199370649643e-06){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=213.0;
   }
  }
 } else {
  if(i13<0.99855637550354){
   if(i2<-0.0004886984825134277){
    if(i58<4.3446834752103314e-05){
     s0+=310.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=8.0;
    }
   } else {
    if(i44<0.9988181591033936){
     s1+=19.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   }
  } else {
   if(i2<0.0004686713218688965){
    if(i6<-2.2932616047910415e-05){
     s0+=312.0;
     s1+=2282.0;
    } else {
     s0+=556.0;
     s1+=657.0;
    }
   } else {
    if(i1<0.1407366693019867){
     s0+=131.0;
     s1+=1586.0;
    } else {
     s0+=25.0;
     s1+=9117.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i14<1.0081751346588135){
  if(i32<0.0003489566734060645){
   if(i14<1.0064079761505127){
    if(i27<1.0075950622558594){
     s0+=36331.0;
     s1+=5.0;
    } else {
     s0+=64.0;
     s1+=5.0;
    }
   } else {
    if(i41<-7.866425221436657e-06){
     s1+=6.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i10<-0.00015154480934143066){
     s0+=3733.0;
     s1+=280.0;
    } else {
     s0+=1410.0;
     s1+=1540.0;
    }
   } else {
    if(i22<1.057997465133667){
     s0+=18775.0;
     s1+=69.0;
    } else {
     s0+=8976.0;
     s1+=1759.0;
    }
   }
  }
 } else {
  if(i53<0.0017681721365079284){
   if(i34<0.0011890842579305172){
    if(i6<-2.3343291104538366e-05){
     s1+=450.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i1<0.10844498872756958){
     s0+=896.0;
     s1+=64.0;
    } else {
     s0+=189.0;
     s1+=658.0;
    }
   }
  } else {
   if(i16<0.0033798632211983204){
    s0+=34.0;
   } else {
    if(i65<1.0023683309555054){
     s1+=620.0;
    } else {
     s0+=4.0;
     s1+=91.0;
    }
   }
  }
 }
} else {
 if(i31<0.00036327389534562826){
  s0+=185.0;
 } else {
  if(i18<0.00021505355834960938){
   if(i53<0.0018785684369504452){
    if(i51<0.00275576114654541){
     s0+=111.0;
     s1+=553.0;
    } else {
     s0+=161.0;
     s1+=154.0;
    }
   } else {
    if(i23<1.0861194133758545){
     s0+=127.0;
     s1+=1371.0;
    } else {
     s1+=1230.0;
    }
   }
  } else {
   s1+=8304.0;
  }
 }
}
if(i8<1.0576403141021729){
 if(i10<0.0006622672080993652){
  if(i0<0.07844924926757812){
   if(i28<1.0087153911590576){
    if(i46<-0.0017362236976623535){
     s0+=1888.0;
     s1+=411.0;
    } else {
     s0+=61506.0;
     s1+=653.0;
    }
   } else {
    if(i6<-4.118159267818555e-05){
     s0+=12.0;
     s1+=124.0;
    } else {
     s0+=164.0;
     s1+=34.0;
    }
   }
  } else {
   if(i12<0.9943928718566895){
    if(i2<0.0005431175231933594){
     s0+=577.0;
     s1+=37.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i13<0.9989620447158813){
     s0+=98.0;
     s1+=29.0;
    } else {
     s0+=194.0;
     s1+=702.0;
    }
   }
  }
 } else {
  if(i58<1.4649633158114739e-05){
   if(i30<1.0614044666290283){
    s0+=34.0;
   } else {
    if(i69<0.2573683261871338){
     s1+=429.0;
    } else {
     s0+=7.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.10179710388183594){
    if(i37<0.03472358360886574){
     s0+=242.0;
     s1+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=35.0;
   }
  }
 }
} else {
 if(i4<3.331899642944336e-05){
  if(i3<0.09055319428443909){
   if(i6<-1.4069114513404202e-05){
    if(i51<0.0025680065155029297){
     s0+=1085.0;
     s1+=661.0;
    } else {
     s0+=780.0;
     s1+=61.0;
    }
   } else {
    if(i21<0.029288243502378464){
     s0+=2602.0;
     s1+=148.0;
    } else {
     s0+=329.0;
     s1+=107.0;
    }
   }
  } else {
   if(i39<0.010459553450345993){
    if(i43<0.06769260764122009){
     s0+=54.0;
     s1+=1192.0;
    } else {
     s0+=989.0;
     s1+=605.0;
    }
   } else {
    if(i16<0.001737150945700705){
     s0+=5.0;
    } else {
     s0+=9.0;
     s1+=712.0;
    }
   }
  }
 } else {
  if(i16<0.00251065194606781){
   if(i6<-5.349593993742019e-05){
    if(i2<0.0008391737937927246){
     s0+=3.0;
     s1+=14.0;
    } else {
     s1+=196.0;
    }
   } else {
    if(i59<-0.003900766372680664){
     s0+=6.0;
     s1+=9.0;
    } else {
     s0+=123.0;
     s1+=4.0;
    }
   }
  } else {
   if(i56<7.996172644197941e-05){
    if(i15<-0.0013696551322937012){
     s0+=1.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=8318.0;
    }
   } else {
    if(i16<0.007315652444958687){
     s0+=169.0;
     s1+=148.0;
    } else {
     s0+=80.0;
     s1+=2633.0;
    }
   }
  }
 }
}
if(i1<0.07800722122192383){
 if(i10<0.0006090998649597168){
  if(i57<0.025953594595193863){
   if(i46<-0.0019263029098510742){
    if(i68<1.000648856163025){
     s0+=579.0;
     s1+=129.0;
    } else {
     s0+=57.0;
     s1+=102.0;
    }
   } else {
    if(i71<1.0101524591445923){
     s0+=55249.0;
     s1+=431.0;
    } else {
     s0+=1189.0;
     s1+=167.0;
    }
   }
  } else {
   if(i31<0.0008785369573161006){
    if(i41<-8.5958163253963e-06){
     s0+=29.0;
     s1+=386.0;
    } else {
     s0+=2646.0;
     s1+=629.0;
    }
   } else {
    if(i47<0.010326146148145199){
     s0+=7459.0;
     s1+=133.0;
    } else {
     s0+=1225.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i48<0.007098734378814697){
   if(i5<1.0015499591827393){
    if(i48<-0.03890916705131531){
     s0+=15.0;
     s1+=30.0;
    } else {
     s0+=283.0;
     s1+=38.0;
    }
   } else {
    if(i18<4.351139068603516e-06){
     s0+=94.0;
     s1+=256.0;
    } else {
     s0+=5.0;
     s1+=691.0;
    }
   }
  } else {
   if(i62<-0.0005007680738344789){
    if(i4<6.663799285888672e-05){
     s0+=4.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i52<1.000373125076294){
     s0+=113.0;
     s1+=16.0;
    } else {
     s0+=255.0;
    }
   }
  }
 }
} else {
 if(i4<6.020069122314453e-06){
  if(i6<-1.0896989806497004e-05){
   if(i43<0.05968594551086426){
    if(i10<-0.0003581047058105469){
     s0+=10.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=853.0;
    }
   } else {
    if(i3<0.11304759979248047){
     s0+=228.0;
     s1+=55.0;
    } else {
     s0+=93.0;
     s1+=586.0;
    }
   }
  } else {
   if(i13<0.9985276460647583){
    s0+=415.0;
   } else {
    if(i55<0.00034000538289546967){
     s0+=384.0;
     s1+=50.0;
    } else {
     s0+=118.0;
     s1+=170.0;
    }
   }
  }
 } else {
  if(i4<5.0961971282958984e-05){
   if(i43<0.055434077978134155){
    if(i43<0.048277467489242554){
     s0+=1.0;
     s1+=1133.0;
    } else {
     s0+=6.0;
     s1+=185.0;
    }
   } else {
    if(i1<0.12521108984947205){
     s0+=328.0;
     s1+=165.0;
    } else {
     s0+=125.0;
     s1+=960.0;
    }
   }
  } else {
   if(i65<0.9959508776664734){
    s0+=12.0;
   } else {
    if(i1<0.1381077766418457){
     s0+=62.0;
     s1+=1326.0;
    } else {
     s0+=3.0;
     s1+=8513.0;
    }
   }
  }
 }
}
if(i17<1.0048408508300781){
 if(i3<0.08522835373878479){
  if(i5<1.0024793148040771){
   if(i62<0.0007802886539138854){
    if(i40<0.0003134743310511112){
     s0+=47050.0;
     s1+=53.0;
    } else {
     s0+=14062.0;
     s1+=809.0;
    }
   } else {
    if(i39<0.00223731342703104){
     s0+=1577.0;
     s1+=908.0;
    } else {
     s0+=5812.0;
     s1+=337.0;
    }
   }
  } else {
   if(i54<0.030792325735092163){
    if(i3<0.0026331841945648193){
     s0+=20.0;
     s1+=19.0;
    } else {
     s0+=29.0;
     s1+=311.0;
    }
   } else {
    if(i12<1.001883864402771){
     s0+=38.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i68<0.9973258972167969){
   if(i44<0.9993350505828857){
    if(i32<0.010980024933815002){
     s0+=346.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i9<1.0686519145965576){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=54.0;
    }
   }
  } else {
   if(i16<0.0041193594224750996){
    if(i38<0.06952646374702454){
     s0+=33.0;
     s1+=607.0;
    } else {
     s0+=719.0;
     s1+=365.0;
    }
   } else {
    if(i45<-0.0002485215663909912){
     s0+=16.0;
     s1+=7.0;
    } else {
     s0+=183.0;
     s1+=3064.0;
    }
   }
  }
 }
} else {
 if(i1<0.06153899431228638){
  if(i29<1.1386182308197021){
   if(i16<0.0007791555253788829){
    if(i68<1.0000660419464111){
     s1+=2.0;
    } else {
     s0+=29.0;
    }
   } else {
    if(i50<-0.00041988029261119664){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=446.0;
    }
   }
  } else {
   if(i68<1.0039933919906616){
    if(i16<0.005346283316612244){
     s0+=821.0;
     s1+=9.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i6<-5.365816468838602e-05){
     s1+=77.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i18<0.0001093447208404541){
   if(i37<0.022958900779485703){
    if(i63<0.0003335949149914086){
     s0+=224.0;
     s1+=61.0;
    } else {
     s0+=39.0;
     s1+=241.0;
    }
   } else {
    if(i53<0.0007326408522203565){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=549.0;
    }
   }
  } else {
   if(i4<-1.582503318786621e-05){
    s0+=5.0;
   } else {
    if(i15<0.001422286033630371){
     s0+=63.0;
     s1+=1055.0;
    } else {
     s1+=8126.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i42<0.0003091897815465927){
  if(i20<1.0095566511154175){
   if(i59<-0.0035962164402008057){
    if(i30<1.1814076900482178){
     s0+=52.0;
     s1+=107.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i27<1.0070858001708984){
     s0+=55741.0;
     s1+=455.0;
    } else {
     s0+=704.0;
     s1+=139.0;
    }
   }
  } else {
   if(i40<0.0010467374231666327){
    if(i20<1.011652946472168){
     s0+=95.0;
     s1+=80.0;
    } else {
     s0+=19.0;
     s1+=190.0;
    }
   } else {
    if(i6<-5.58130195713602e-05){
     s1+=11.0;
    } else {
     s0+=189.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i38<0.06065481901168823){
   if(i17<0.9874336123466492){
    if(i1<0.08497253060340881){
     s0+=6067.0;
     s1+=148.0;
    } else {
     s0+=35.0;
     s1+=84.0;
    }
   } else {
    if(i37<0.01216469518840313){
     s0+=3947.0;
     s1+=831.0;
    } else {
     s0+=1495.0;
     s1+=1374.0;
    }
   }
  } else {
   if(i36<0.041409313678741455){
    if(i38<0.06606188416481018){
     s0+=86.0;
     s1+=132.0;
    } else {
     s0+=77.0;
     s1+=689.0;
    }
   } else {
    if(i0<0.1234743595123291){
     s0+=1236.0;
     s1+=237.0;
    } else {
     s0+=584.0;
     s1+=1109.0;
    }
   }
  }
 }
} else {
 if(i26<0.00020094995852559805){
  if(i3<0.06215521693229675){
   if(i52<1.0001680850982666){
    s0+=176.0;
   } else {
    if(i58<1.1950337466259953e-06){
     s0+=29.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   s1+=11.0;
  }
 } else {
  if(i3<0.06460529565811157){
   if(i59<0.0029287338256835938){
    if(i15<-0.0024031996726989746){
     s0+=47.0;
     s1+=16.0;
    } else {
     s0+=91.0;
     s1+=476.0;
    }
   } else {
    if(i39<0.0016770476941019297){
     s1+=1.0;
    } else {
     s0+=82.0;
    }
   }
  } else {
   if(i56<8.984327723737806e-05){
    if(i3<0.08277314901351929){
     s0+=33.0;
     s1+=345.0;
    } else {
     s0+=30.0;
     s1+=8521.0;
    }
   } else {
    if(i22<1.123103141784668){
     s0+=106.0;
     s1+=279.0;
    } else {
     s0+=19.0;
     s1+=2014.0;
    }
   }
  }
 }
}
if(i10<0.0004342794418334961){
 if(i1<0.07751670479774475){
  if(i47<0.007341458462178707){
   if(i14<1.007720708847046){
    if(i55<0.0002715818991418928){
     s0+=55238.0;
     s1+=455.0;
    } else {
     s0+=8458.0;
     s1+=666.0;
    }
   } else {
    if(i35<1.0762503147125244){
     s1+=133.0;
    } else {
     s0+=549.0;
     s1+=49.0;
    }
   }
  } else {
   if(i30<1.1897556781768799){
    if(i21<0.025131408125162125){
     s0+=1670.0;
     s1+=346.0;
    } else {
     s0+=81.0;
     s1+=260.0;
    }
   } else {
    if(i1<0.03690364956855774){
     s0+=1321.0;
     s1+=32.0;
    } else {
     s0+=323.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i6<-1.2283376236155163e-05){
   if(i6<-4.2223888158332556e-05){
    if(i29<1.0762357711791992){
     s0+=9.0;
    } else {
     s0+=39.0;
     s1+=2546.0;
    }
   } else {
    if(i35<1.1878292560577393){
     s0+=101.0;
     s1+=889.0;
    } else {
     s0+=339.0;
     s1+=311.0;
    }
   }
  } else {
   if(i34<0.005443229340016842){
    if(i36<0.03564244508743286){
     s0+=59.0;
     s1+=89.0;
    } else {
     s0+=967.0;
     s1+=75.0;
    }
   } else {
    if(i47<0.005621638149023056){
     s0+=62.0;
     s1+=47.0;
    } else {
     s0+=3.0;
     s1+=69.0;
    }
   }
  }
 }
} else {
 if(i14<1.0090789794921875){
  if(i6<-8.872493344824761e-05){
   if(i17<0.9822834134101868){
    if(i31<0.013880319893360138){
     s0+=100.0;
     s1+=10.0;
    } else {
     s0+=21.0;
     s1+=120.0;
    }
   } else {
    if(i18<-0.0003795623779296875){
     s0+=45.0;
     s1+=28.0;
    } else {
     s0+=59.0;
     s1+=1531.0;
    }
   }
  } else {
   if(i18<9.745359420776367e-05){
    if(i19<1.0018353462219238){
     s0+=996.0;
     s1+=213.0;
    } else {
     s0+=449.0;
     s1+=586.0;
    }
   } else {
    if(i8<1.0374231338500977){
     s0+=22.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=294.0;
    }
   }
  }
 } else {
  if(i18<-3.814697265625e-06){
   if(i33<1.225150465965271){
    if(i48<-0.013005226850509644){
     s1+=17.0;
    } else {
     s0+=64.0;
     s1+=10.0;
    }
   } else {
    if(i19<0.9984404444694519){
     s0+=40.0;
     s1+=18.0;
    } else {
     s0+=29.0;
     s1+=416.0;
    }
   }
  } else {
   if(i5<1.0041478872299194){
    if(i7<0.056144267320632935){
     s0+=76.0;
     s1+=60.0;
    } else {
     s0+=5.0;
     s1+=327.0;
    }
   } else {
    if(i53<0.0014118412509560585){
     s0+=1.0;
     s1+=954.0;
    } else {
     s1+=6507.0;
    }
   }
  }
 }
}
if(i19<1.0026135444641113){
 if(i25<1.008830189704895){
  if(i7<0.0716283917427063){
   if(i26<0.0003149998083245009){
    if(i50<0.002148390281945467){
     s0+=53530.0;
     s1+=263.0;
    } else {
     s0+=53.0;
     s1+=25.0;
    }
   } else {
    if(i30<1.1812903881072998){
     s0+=5051.0;
     s1+=1669.0;
    } else {
     s0+=8198.0;
     s1+=215.0;
    }
   }
  } else {
   if(i43<0.04873090982437134){
    if(i13<0.9985889196395874){
     s0+=21.0;
     s1+=7.0;
    } else {
     s0+=25.0;
     s1+=806.0;
    }
   } else {
    if(i39<0.01039273664355278){
     s0+=1516.0;
     s1+=767.0;
    } else {
     s0+=41.0;
     s1+=321.0;
    }
   }
  }
 } else {
  if(i3<0.07358801364898682){
   if(i35<1.083398699760437){
    if(i16<0.001112236874178052){
     s0+=13.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=103.0;
    }
   } else {
    if(i6<-5.549435445573181e-05){
     s0+=50.0;
     s1+=35.0;
    } else {
     s0+=965.0;
     s1+=11.0;
    }
   }
  } else {
   if(i4<9.745359420776367e-06){
    if(i6<-2.3938606318552047e-05){
     s0+=16.0;
     s1+=276.0;
    } else {
     s0+=144.0;
     s1+=65.0;
    }
   } else {
    if(i31<0.006614795885980129){
     s0+=76.0;
     s1+=707.0;
    } else {
     s0+=1.0;
     s1+=976.0;
    }
   }
  }
 }
} else {
 if(i12<0.9966641068458557){
  if(i2<6.92605972290039e-05){
   if(i7<0.10008087754249573){
    if(i9<1.0918278694152832){
     s0+=764.0;
     s1+=12.0;
    } else {
     s1+=17.0;
    }
   } else {
    s1+=82.0;
   }
  } else {
   if(i65<1.0001492500305176){
    if(i3<0.08185029029846191){
     s0+=34.0;
     s1+=48.0;
    } else {
     s0+=21.0;
     s1+=352.0;
    }
   } else {
    if(i30<1.257381796836853){
     s0+=33.0;
     s1+=5.0;
    } else {
     s0+=26.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i5<1.0041356086730957){
   if(i3<0.06621015071868896){
    if(i4<3.3855438232421875e-05){
     s0+=305.0;
     s1+=53.0;
    } else {
     s0+=128.0;
     s1+=146.0;
    }
   } else {
    if(i37<0.023886390030384064){
     s0+=156.0;
     s1+=389.0;
    } else {
     s1+=850.0;
    }
   }
  } else {
   if(i37<0.020046064630150795){
    if(i12<1.00618314743042){
     s0+=35.0;
     s1+=126.0;
    } else {
     s1+=1768.0;
    }
   } else {
    s1+=6888.0;
   }
  }
 }
}
if(i2<0.0005478262901306152){
 if(i0<0.08352836966514587){
  if(i69<0.044100984930992126){
   if(i27<1.008404016494751){
    if(i22<1.0486631393432617){
     s0+=50240.0;
     s1+=126.0;
    } else {
     s0+=5125.0;
     s1+=356.0;
    }
   } else {
    if(i35<1.083398699760437){
     s0+=50.0;
     s1+=155.0;
    } else {
     s0+=323.0;
     s1+=34.0;
    }
   }
  } else {
   if(i35<1.1036889553070068){
    if(i19<1.0008444786071777){
     s0+=4142.0;
     s1+=823.0;
    } else {
     s0+=59.0;
     s1+=237.0;
    }
   } else {
    if(i47<0.015869393944740295){
     s0+=7646.0;
     s1+=138.0;
    } else {
     s0+=930.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i67<-8.897577208699659e-05){
   if(i16<0.001810494577512145){
    if(i65<0.9998573064804077){
     s0+=85.0;
     s1+=154.0;
    } else {
     s0+=379.0;
     s1+=70.0;
    }
   } else {
    if(i68<0.9971603155136108){
     s0+=238.0;
     s1+=86.0;
    } else {
     s0+=378.0;
     s1+=2704.0;
    }
   }
  } else {
   if(i65<0.9986376762390137){
    if(i13<0.9991557002067566){
     s0+=250.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.05416098237037659){
     s0+=117.0;
     s1+=342.0;
    } else {
     s0+=441.0;
     s1+=102.0;
    }
   }
  }
 }
} else {
 if(i31<0.0003596474416553974){
  s0+=173.0;
 } else {
  if(i24<1.020843505859375){
   if(i37<0.019971905276179314){
    if(i39<0.0022535808384418488){
     s0+=19.0;
     s1+=1243.0;
    } else {
     s0+=357.0;
     s1+=357.0;
    }
   } else {
    if(i47<0.005681911949068308){
     s0+=20.0;
     s1+=1320.0;
    } else {
     s1+=1541.0;
    }
   }
  } else {
   if(i37<0.0110457893460989){
    if(i19<0.997273325920105){
     s0+=9.0;
     s1+=20.0;
    } else {
     s1+=325.0;
    }
   } else {
    s1+=6935.0;
   }
  }
 }
}
if(i2<0.0005473494529724121){
 if(i42<0.0003064678458031267){
  if(i51<-0.00196760892868042){
   if(i29<1.1386182308197021){
    if(i30<1.0703742504119873){
     s0+=76.0;
    } else {
     s0+=3.0;
     s1+=101.0;
    }
   } else {
    if(i66<-4.35804622611613e-06){
     s0+=1.0;
     s1+=5.0;
    } else {
     s0+=94.0;
    }
   }
  } else {
   if(i25<1.0072345733642578){
    if(i35<1.0598037242889404){
     s0+=41870.0;
     s1+=8.0;
    } else {
     s0+=13997.0;
     s1+=535.0;
    }
   } else {
    if(i23<1.0404646396636963){
     s0+=855.0;
     s1+=135.0;
    } else {
     s0+=19.0;
     s1+=97.0;
    }
   }
  }
 } else {
  if(i7<0.0801730751991272){
   if(i0<0.08565309643745422){
    if(i5<0.9979720115661621){
     s0+=7838.0;
     s1+=299.0;
    } else {
     s0+=4163.0;
     s1+=1112.0;
    }
   } else {
    if(i5<0.9964219331741333){
     s0+=203.0;
     s1+=16.0;
    } else {
     s0+=161.0;
     s1+=635.0;
    }
   }
  } else {
   if(i43<0.058552324771881104){
    if(i0<0.08675700426101685){
     s0+=16.0;
     s1+=40.0;
    } else {
     s0+=2.0;
     s1+=931.0;
    }
   } else {
    if(i41<-4.672820068662986e-06){
     s0+=492.0;
     s1+=1071.0;
    } else {
     s0+=749.0;
     s1+=298.0;
    }
   }
  }
 }
} else {
 if(i4<6.216764450073242e-05){
  if(i1<0.06132286787033081){
   if(i56<-1.194698597828392e-06){
    if(i6<-4.716945841209963e-05){
     s1+=18.0;
    } else {
     s0+=289.0;
     s1+=2.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=105.0;
    } else {
     s0+=83.0;
     s1+=45.0;
    }
   }
  } else {
   if(i65<0.9995227456092834){
    if(i5<1.0014588832855225){
     s0+=13.0;
     s1+=36.0;
    } else {
     s1+=747.0;
    }
   } else {
    if(i37<0.012030016630887985){
     s0+=83.0;
     s1+=135.0;
    } else {
     s0+=23.0;
     s1+=482.0;
    }
   }
  }
 } else {
  if(i3<0.04734283685684204){
   if(i29<1.5682398080825806){
    if(i57<0.012756861746311188){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=191.0;
    }
   } else {
    if(i37<0.028878891840577126){
     s0+=46.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i4<0.00010305643081665039){
    if(i3<0.16221371293067932){
     s0+=51.0;
     s1+=816.0;
    } else {
     s1+=1348.0;
    }
   } else {
    if(i5<1.0058069229125977){
     s0+=6.0;
     s1+=92.0;
    } else {
     s0+=2.0;
     s1+=7784.0;
    }
   }
  }
 }
}
if(i28<1.0088496208190918){
 if(i12<1.00408136844635){
  if(i4<3.7729740142822266e-05){
   if(i42<0.0003115197760052979){
    if(i1<0.08263438940048218){
     s0+=56037.0;
     s1+=565.0;
    } else {
     s0+=104.0;
     s1+=93.0;
    }
   } else {
    if(i0<0.08178949356079102){
     s0+=10621.0;
     s1+=1228.0;
    } else {
     s0+=947.0;
     s1+=1527.0;
    }
   }
  } else {
   if(i37<0.009278448298573494){
    if(i68<1.0004804134368896){
     s0+=304.0;
    } else {
     s0+=80.0;
     s1+=57.0;
    }
   } else {
    if(i5<0.9995580911636353){
     s0+=16.0;
    } else {
     s0+=83.0;
     s1+=824.0;
    }
   }
  }
 } else {
  if(i13<1.001272439956665){
   if(i40<0.007754149846732616){
    if(i33<1.1458663940429688){
     s0+=10.0;
     s1+=35.0;
    } else {
     s0+=458.0;
     s1+=6.0;
    }
   } else {
    if(i7<0.03504335880279541){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=130.0;
    }
   }
  } else {
   if(i42<0.00015228067059069872){
    if(i29<1.175731897354126){
     s1+=2.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i41<-1.0546270459599327e-05){
     s0+=14.0;
     s1+=1563.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i24<1.018054485321045){
  if(i16<0.0029399655759334564){
   if(i29<1.1039612293243408){
    if(i6<-2.3533328203484416e-05){
     s0+=4.0;
     s1+=450.0;
    } else {
     s0+=363.0;
     s1+=18.0;
    }
   } else {
    if(i38<0.1671118140220642){
     s0+=1116.0;
     s1+=15.0;
    } else {
     s0+=57.0;
     s1+=33.0;
    }
   }
  } else {
   if(i4<-2.232193946838379e-05){
    if(i41<-4.6515301619365346e-06){
     s0+=20.0;
     s1+=69.0;
    } else {
     s0+=174.0;
     s1+=17.0;
    }
   } else {
    if(i3<0.07051956653594971){
     s0+=91.0;
     s1+=129.0;
    } else {
     s0+=109.0;
     s1+=2172.0;
    }
   }
  }
 } else {
  if(i41<-1.248304033651948e-05){
   if(i45<0.00023621320724487305){
    if(i16<0.001609966391697526){
     s0+=43.0;
     s1+=23.0;
    } else {
     s0+=32.0;
     s1+=3303.0;
    }
   } else {
    s1+=4521.0;
   }
  } else {
   if(i53<0.0008583433227613568){
    if(i40<0.0010826748330146074){
     s1+=31.0;
    } else {
     s0+=289.0;
     s1+=19.0;
    }
   } else {
    if(i1<0.0891578197479248){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=13.0;
     s1+=355.0;
    }
   }
  }
 }
}
if(i0<0.08509460091590881){
 if(i47<0.008471273817121983){
  if(i17<1.0061521530151367){
   if(i35<1.0556960105895996){
    s0+=42590.0;
   } else {
    if(i29<1.100754976272583){
     s0+=3524.0;
     s1+=1098.0;
    } else {
     s0+=19776.0;
     s1+=318.0;
    }
   }
  } else {
   if(i4<6.35981559753418e-05){
    if(i29<1.1386182308197021){
     s1+=158.0;
    } else {
     s0+=509.0;
     s1+=7.0;
    }
   } else {
    if(i16<0.0006734569324180484){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i5<1.0018389225006104){
   if(i3<0.022235363721847534){
    if(i26<0.0023619933053851128){
     s0+=684.0;
     s1+=145.0;
    } else {
     s0+=1130.0;
     s1+=28.0;
    }
   } else {
    if(i20<0.9809188842773438){
     s0+=109.0;
     s1+=275.0;
    } else {
     s0+=849.0;
     s1+=284.0;
    }
   }
  } else {
   if(i11<1.3887882232666016e-05){
    if(i44<1.000370979309082){
     s0+=1.0;
     s1+=27.0;
    } else {
     s0+=27.0;
     s1+=1.0;
    }
   } else {
    if(i59<0.0029477477073669434){
     s0+=22.0;
     s1+=554.0;
    } else {
     s0+=26.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3797138308291323e-05){
  if(i13<0.9985071420669556){
   if(i26<0.014806926250457764){
    if(i14<0.9876922369003296){
     s0+=4.0;
     s1+=9.0;
    } else {
     s0+=85.0;
     s1+=4.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i19<1.0044969320297241){
    if(i49<0.0026860833168029785){
     s0+=93.0;
     s1+=3120.0;
    } else {
     s0+=522.0;
     s1+=2045.0;
    }
   } else {
    if(i67<-9.630032582208514e-05){
     s0+=21.0;
     s1+=7609.0;
    } else {
     s0+=46.0;
     s1+=735.0;
    }
   }
  }
 } else {
  if(i13<0.9984545707702637){
   s0+=601.0;
  } else {
   if(i23<1.0423246622085571){
    if(i18<-0.00034683942794799805){
     s0+=12.0;
    } else {
     s0+=20.0;
     s1+=205.0;
    }
   } else {
    if(i0<0.2230166792869568){
     s0+=544.0;
     s1+=73.0;
    } else {
     s0+=49.0;
     s1+=94.0;
    }
   }
  }
 }
}
if(i14<1.0081671476364136){
 if(i2<0.0005721151828765869){
  if(i0<0.0841723084449768){
   if(i57<0.026235653087496758){
    if(i59<-0.002776622772216797){
     s0+=618.0;
     s1+=302.0;
    } else {
     s0+=56535.0;
     s1+=340.0;
    }
   } else {
    if(i33<1.1037919521331787){
     s0+=2356.0;
     s1+=824.0;
    } else {
     s0+=8510.0;
     s1+=379.0;
    }
   }
  } else {
   if(i52<0.9995758533477783){
    if(i45<-0.00023674964904785156){
     s0+=514.0;
     s1+=14.0;
    } else {
     s0+=31.0;
     s1+=76.0;
    }
   } else {
    if(i49<0.0034288763999938965){
     s0+=256.0;
     s1+=1140.0;
    } else {
     s0+=678.0;
     s1+=641.0;
    }
   }
  }
 } else {
  if(i30<1.0614044666290283){
   s0+=92.0;
  } else {
   if(i65<0.9976415038108826){
    if(i37<0.034378133714199066){
     s0+=46.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i18<-6.693601608276367e-05){
     s0+=130.0;
     s1+=718.0;
    } else {
     s0+=41.0;
     s1+=1636.0;
    }
   }
  }
 }
} else {
 if(i15<0.0014300346374511719){
  if(i16<0.0032239758875221014){
   if(i40<0.0005942679126746953){
    if(i32<0.0011291570262983441){
     s0+=7.0;
     s1+=247.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i3<0.2006039023399353){
     s0+=1058.0;
     s1+=157.0;
    } else {
     s0+=19.0;
     s1+=144.0;
    }
   }
  } else {
   if(i68<0.9991483688354492){
    if(i3<0.09866419434547424){
     s0+=92.0;
     s1+=21.0;
    } else {
     s0+=33.0;
     s1+=164.0;
    }
   } else {
    if(i35<1.2295559644699097){
     s0+=52.0;
     s1+=1425.0;
    } else {
     s0+=1.0;
     s1+=928.0;
    }
   }
  }
 } else {
  if(i40<0.0003364950534887612){
   if(i31<0.0028509104158729315){
    s1+=26.0;
   } else {
    s0+=2.0;
   }
  } else {
   if(i37<0.013158794492483139){
    if(i65<1.001483678817749){
     s0+=1.0;
     s1+=1142.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    s1+=6767.0;
   }
  }
 }
}
if(i0<0.08502998948097229){
 if(i12<1.0041197538375854){
  if(i5<1.0024672746658325){
   if(i21<0.01676514744758606){
    if(i14<1.0090930461883545){
     s0+=58505.0;
     s1+=644.0;
    } else {
     s0+=306.0;
     s1+=98.0;
    }
   } else {
    if(i31<0.002722111064940691){
     s0+=2884.0;
     s1+=1121.0;
    } else {
     s0+=6704.0;
     s1+=220.0;
    }
   }
  } else {
   if(i66<-5.033034540247172e-06){
    if(i63<0.0003981033805757761){
     s0+=38.0;
     s1+=13.0;
    } else {
     s0+=53.0;
     s1+=229.0;
    }
   } else {
    if(i54<-0.0919085443019867){
     s1+=4.0;
    } else {
     s0+=76.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i16<0.001662260852754116){
   if(i30<1.0985562801361084){
    if(i32<0.00032776599982753396){
     s0+=7.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i5<1.0047156810760498){
     s0+=415.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i41<-1.2443511877791025e-05){
    if(i64<-0.013622632250189781){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=18.0;
     s1+=702.0;
    }
   } else {
    if(i43<0.00023257732391357422){
     s0+=9.0;
     s1+=31.0;
    } else {
     s0+=155.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i32<0.0005473134806379676){
  if(i16<0.003924658056348562){
   if(i45<0.00010508298873901367){
    if(i42<0.0006696162163279951){
     s0+=189.0;
     s1+=16.0;
    } else {
     s0+=327.0;
    }
   } else {
    if(i18<1.3232231140136719e-05){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=25.0;
    }
   }
  } else {
   if(i33<1.0741386413574219){
    s0+=46.0;
   } else {
    s1+=131.0;
   }
  }
 } else {
  if(i18<3.5643577575683594e-05){
   if(i16<0.005988672841340303){
    if(i29<1.255998969078064){
     s0+=155.0;
     s1+=949.0;
    } else {
     s0+=927.0;
     s1+=361.0;
    }
   } else {
    if(i1<0.11489641666412354){
     s0+=127.0;
     s1+=348.0;
    } else {
     s0+=8.0;
     s1+=1848.0;
    }
   }
  } else {
   if(i6<-2.2282918507698923e-05){
    if(i2<-0.00045108795166015625){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=61.0;
     s1+=10322.0;
    }
   } else {
    if(i53<0.0010286306496709585){
     s0+=80.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   }
  }
 }
}
if(i4<3.629922866821289e-05){
 if(i1<0.07756328582763672){
  if(i29<1.0856719017028809){
   s0+=38090.0;
  } else {
   if(i33<1.103413462638855){
    if(i16<0.003467901609838009){
     s0+=3982.0;
     s1+=957.0;
    } else {
     s0+=30.0;
     s1+=605.0;
    }
   } else {
    if(i49<-0.002906113862991333){
     s0+=1141.0;
     s1+=212.0;
    } else {
     s0+=25150.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i36<0.0474030077457428){
   if(i65<0.9956965446472168){
    s0+=57.0;
   } else {
    if(i0<0.0898657739162445){
     s0+=108.0;
     s1+=268.0;
    } else {
     s0+=47.0;
     s1+=1884.0;
    }
   }
  } else {
   if(i37<0.04016807675361633){
    if(i18<6.952881813049316e-05){
     s0+=1490.0;
     s1+=564.0;
    } else {
     s0+=68.0;
     s1+=203.0;
    }
   } else {
    if(i6<-2.7092726668342948e-05){
     s0+=3.0;
     s1+=469.0;
    } else {
     s0+=31.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i3<0.06425809860229492){
  if(i45<0.00016355514526367188){
   if(i54<-0.02981644868850708){
    if(i26<0.00048358843196183443){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=35.0;
    }
   } else {
    if(i65<1.0004725456237793){
     s0+=398.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i44<1.0004596710205078){
    s0+=59.0;
   } else {
    if(i29<1.5682398080825806){
     s0+=38.0;
     s1+=435.0;
    } else {
     s0+=72.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i33<1.0762357711791992){
   s0+=42.0;
  } else {
   if(i4<5.716085433959961e-05){
    if(i39<0.007007962092757225){
     s0+=135.0;
     s1+=572.0;
    } else {
     s0+=11.0;
     s1+=554.0;
    }
   } else {
    if(i56<0.00010240307892672718){
     s0+=2.0;
     s1+=8441.0;
    } else {
     s0+=61.0;
     s1+=1706.0;
    }
   }
  }
 }
}
if(i1<0.07740697264671326){
 if(i5<1.0024782419204712){
  if(i8<1.0410068035125732){
   if(i46<-0.0014857649803161621){
    if(i17<0.9844975471496582){
     s0+=992.0;
     s1+=14.0;
    } else {
     s0+=1100.0;
     s1+=204.0;
    }
   } else {
    if(i40<0.00027870232588611543){
     s0+=43734.0;
     s1+=32.0;
    } else {
     s0+=13711.0;
     s1+=394.0;
    }
   }
  } else {
   if(i39<0.002014040481299162){
    if(i31<0.00029563141288235784){
     s0+=1907.0;
    } else {
     s0+=2543.0;
     s1+=1197.0;
    }
   } else {
    if(i63<0.0017937791999429464){
     s0+=4933.0;
     s1+=251.0;
    } else {
     s0+=2.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i39<0.001764629385434091){
   if(i39<0.0002871685428544879){
    s0+=5.0;
   } else {
    if(i39<0.0010118726640939713){
     s0+=4.0;
     s1+=748.0;
    } else {
     s0+=8.0;
     s1+=37.0;
    }
   }
  } else {
   if(i53<0.001715787104330957){
    if(i37<0.017634890973567963){
     s0+=209.0;
     s1+=5.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i50<0.0005500477273017168){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=37.0;
     s1+=286.0;
    }
   }
  }
 }
} else {
 if(i4<6.020069122314453e-06){
  if(i11<-1.4841556549072266e-05){
   if(i13<0.9988701343536377){
    if(i41<-8.934485776990186e-06){
     s0+=16.0;
     s1+=10.0;
    } else {
     s0+=458.0;
    }
   } else {
    if(i71<1.0262706279754639){
     s0+=2.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i6<-9.4353763415711e-06){
    if(i36<0.047824710607528687){
     s0+=43.0;
     s1+=937.0;
    } else {
     s0+=306.0;
     s1+=558.0;
    }
   } else {
    if(i43<0.0423126220703125){
     s0+=2.0;
     s1+=88.0;
    } else {
     s0+=482.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i15<0.0005002021789550781){
   if(i21<0.019481472671031952){
    if(i62<0.0014178990386426449){
     s0+=323.0;
     s1+=162.0;
    } else {
     s0+=2.0;
     s1+=106.0;
    }
   } else {
    if(i30<1.2231299877166748){
     s0+=114.0;
     s1+=593.0;
    } else {
     s0+=44.0;
     s1+=1756.0;
    }
   }
  } else {
   if(i6<-4.2749379645101726e-05){
    if(i53<0.0008138766279444098){
     s0+=1.0;
     s1+=767.0;
    } else {
     s1+=8667.0;
    }
   } else {
    if(i48<0.014751970767974854){
     s0+=13.0;
     s1+=140.0;
    } else {
     s0+=42.0;
     s1+=44.0;
    }
   }
  }
 }
}
if(i3<0.08316218852996826){
 if(i15<0.0011405348777770996){
  if(i59<-0.00210726261138916){
   if(i54<0.029503583908081055){
    if(i7<0.03861686587333679){
     s0+=3472.0;
     s1+=733.0;
    } else {
     s0+=261.0;
     s1+=554.0;
    }
   } else {
    if(i0<0.07235455513000488){
     s0+=2289.0;
     s1+=6.0;
    } else {
     s0+=135.0;
     s1+=29.0;
    }
   }
  } else {
   if(i9<1.0406912565231323){
    if(i5<1.0025181770324707){
     s0+=58037.0;
     s1+=410.0;
    } else {
     s0+=37.0;
     s1+=85.0;
    }
   } else {
    if(i5<1.0010998249053955){
     s0+=4490.0;
     s1+=483.0;
    } else {
     s0+=514.0;
     s1+=308.0;
    }
   }
  }
 } else {
  if(i35<1.1484346389770508){
   s1+=441.0;
  } else {
   if(i6<-7.908105908427387e-05){
    s1+=54.0;
   } else {
    if(i64<0.01135706901550293){
     s0+=127.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i45<-0.000257641077041626){
  if(i2<4.9233436584472656e-05){
   s0+=402.0;
  } else {
   if(i3<0.1858062446117401){
    s0+=6.0;
   } else {
    s1+=25.0;
   }
  }
 } else {
  if(i5<1.00185227394104){
   if(i48<0.015286475419998169){
    if(i21<0.01606161519885063){
     s0+=175.0;
     s1+=433.0;
    } else {
     s0+=102.0;
     s1+=1867.0;
    }
   } else {
    if(i21<0.03316348046064377){
     s0+=712.0;
     s1+=177.0;
    } else {
     s0+=103.0;
     s1+=830.0;
    }
   }
  } else {
   if(i37<0.01686345785856247){
    if(i60<-0.007499398197978735){
     s0+=93.0;
     s1+=50.0;
    } else {
     s0+=47.0;
     s1+=1593.0;
    }
   } else {
    if(i67<-0.0005392041057348251){
     s1+=7176.0;
    } else {
     s0+=9.0;
     s1+=1985.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i0<0.08313643932342529){
  if(i5<1.0024712085723877){
   if(i55<0.0002806371485348791){
    if(i16<0.0043402863666415215){
     s0+=53515.0;
     s1+=294.0;
    } else {
     s0+=2049.0;
     s1+=149.0;
    }
   } else {
    if(i64<-0.008047728799283504){
     s0+=4575.0;
     s1+=78.0;
    } else {
     s0+=4414.0;
     s1+=797.0;
    }
   }
  } else {
   if(i42<0.00017038217629306018){
    if(i29<1.2392117977142334){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=84.0;
    }
   } else {
    if(i72<0.00015367899322882295){
     s0+=19.0;
     s1+=311.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i11<-1.3113021850585938e-05){
   if(i2<-0.0004825592041015625){
    if(i43<0.08760502934455872){
     s0+=350.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i55<0.0002633691765367985){
     s0+=5.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i22<1.0494358539581299){
    if(i43<0.043199121952056885){
     s0+=6.0;
     s1+=17.0;
    } else {
     s0+=107.0;
     s1+=11.0;
    }
   } else {
    if(i58<3.857763658743352e-05){
     s0+=48.0;
     s1+=961.0;
    } else {
     s0+=13.0;
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i6<-4.235495725879446e-05){
  if(i1<0.09731084108352661){
   if(i48<0.01237499713897705){
    if(i18<0.00020879507064819336){
     s0+=354.0;
     s1+=749.0;
    } else {
     s0+=1.0;
     s1+=659.0;
    }
   } else {
    if(i32<0.0010849327081814408){
     s0+=1.0;
     s1+=25.0;
    } else {
     s0+=376.0;
     s1+=20.0;
    }
   }
  } else {
   if(i37<0.021171659231185913){
    if(i60<-0.007749195210635662){
     s0+=82.0;
     s1+=70.0;
    } else {
     s0+=32.0;
     s1+=1667.0;
    }
   } else {
    if(i15<-0.004834413528442383){
     s0+=2.0;
    } else {
     s0+=5.0;
     s1+=9537.0;
    }
   }
  }
 } else {
  if(i29<1.255998969078064){
   if(i29<1.0850647687911987){
    s0+=625.0;
   } else {
    if(i0<0.07583439350128174){
     s0+=1459.0;
     s1+=358.0;
    } else {
     s0+=544.0;
     s1+=1118.0;
    }
   }
  } else {
   if(i10<0.0007611513137817383){
    if(i31<0.006341354921460152){
     s0+=2266.0;
     s1+=64.0;
    } else {
     s0+=197.0;
     s1+=157.0;
    }
   } else {
    if(i24<1.0014407634735107){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i4<3.7729740142822266e-05){
 if(i24<1.006819486618042){
  if(i0<0.08523821830749512){
   if(i51<-0.0013821125030517578){
    if(i29<1.1860926151275635){
     s0+=1546.0;
     s1+=786.0;
    } else {
     s0+=3849.0;
     s1+=237.0;
    }
   } else {
    if(i3<0.06919768452644348){
     s0+=60223.0;
     s1+=593.0;
    } else {
     s0+=1482.0;
     s1+=271.0;
    }
   }
  } else {
   if(i6<-8.3722552517429e-06){
    if(i52<1.0005561113357544){
     s0+=427.0;
     s1+=1803.0;
    } else {
     s0+=55.0;
     s1+=1.0;
    }
   } else {
    if(i6<3.897299393429421e-06){
     s0+=232.0;
     s1+=139.0;
    } else {
     s0+=616.0;
     s1+=40.0;
    }
   }
  }
 } else {
  if(i53<0.0016860458999872208){
   if(i14<1.0109124183654785){
    if(i0<0.06566458940505981){
     s0+=919.0;
     s1+=42.0;
    } else {
     s0+=430.0;
     s1+=180.0;
    }
   } else {
    if(i65<1.0001914501190186){
     s0+=174.0;
     s1+=680.0;
    } else {
     s0+=289.0;
     s1+=36.0;
    }
   }
  } else {
   if(i6<-1.7227874195668846e-05){
    if(i44<1.000680923461914){
     s1+=582.0;
    } else {
     s0+=29.0;
     s1+=155.0;
    }
   } else {
    if(i68<1.0017509460449219){
     s1+=2.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i39<0.00042525172466412187){
  if(i28<1.0088090896606445){
   s0+=311.0;
  } else {
   s1+=2.0;
  }
 } else {
  if(i3<0.05846726894378662){
   if(i63<0.0004629202885553241){
    if(i2<0.0012209415435791016){
     s0+=144.0;
     s1+=16.0;
    } else {
     s0+=9.0;
     s1+=47.0;
    }
   } else {
    if(i56<0.000158230890519917){
     s0+=9.0;
     s1+=305.0;
    } else {
     s0+=54.0;
     s1+=51.0;
    }
   }
  } else {
   if(i15<3.5643577575683594e-05){
    if(i68<1.0009443759918213){
     s0+=35.0;
     s1+=22.0;
    } else {
     s0+=135.0;
     s1+=1276.0;
    }
   } else {
    if(i16<0.0022362954914569855){
     s0+=55.0;
     s1+=167.0;
    } else {
     s0+=12.0;
     s1+=9775.0;
    }
   }
  }
 }
}
if(i10<0.0004348158836364746){
 if(i14<1.0086090564727783){
  if(i7<0.07123780250549316){
   if(i26<0.0003140167973469943){
    if(i28<1.0078580379486084){
     s0+=53379.0;
     s1+=207.0;
    } else {
     s0+=181.0;
     s1+=54.0;
    }
   } else {
    if(i1<0.07751640677452087){
     s0+=13322.0;
     s1+=1337.0;
    } else {
     s0+=89.0;
     s1+=354.0;
    }
   }
  } else {
   if(i36<0.04395449161529541){
    if(i56<9.402147043147124e-06){
     s0+=22.0;
     s1+=6.0;
    } else {
     s0+=69.0;
     s1+=754.0;
    }
   } else {
    if(i39<0.010561509057879448){
     s0+=1222.0;
     s1+=432.0;
    } else {
     s0+=40.0;
     s1+=198.0;
    }
   }
  }
 } else {
  if(i3<0.091851145029068){
   if(i40<0.0011396047193557024){
    if(i67<-0.00037364274612627923){
     s0+=67.0;
     s1+=46.0;
    } else {
     s0+=25.0;
     s1+=219.0;
    }
   } else {
    if(i53<0.0020522261038422585){
     s0+=636.0;
     s1+=31.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   }
  } else {
   if(i13<0.9988776445388794){
    if(i38<0.40313491225242615){
     s0+=41.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i16<0.003200111910700798){
     s0+=225.0;
     s1+=487.0;
    } else {
     s0+=8.0;
     s1+=1719.0;
    }
   }
  }
 }
} else {
 if(i17<1.0044116973876953){
  if(i22<1.1255970001220703){
   if(i16<0.004336589947342873){
    if(i71<0.9730556011199951){
     s1+=4.0;
    } else {
     s0+=639.0;
     s1+=19.0;
    }
   } else {
    if(i32<0.006773626431822777){
     s0+=214.0;
     s1+=614.0;
    } else {
     s0+=566.0;
     s1+=11.0;
    }
   }
  } else {
   if(i0<0.0312943160533905){
    if(i54<-0.12471908330917358){
     s1+=40.0;
    } else {
     s0+=167.0;
     s1+=24.0;
    }
   } else {
    if(i10<0.0005384683609008789){
     s0+=53.0;
     s1+=184.0;
    } else {
     s0+=52.0;
     s1+=1453.0;
    }
   }
  }
 } else {
  if(i40<0.00020686058269347996){
   s0+=26.0;
  } else {
   if(i1<0.05870938301086426){
    if(i34<0.001332319574430585){
     s1+=311.0;
    } else {
     s0+=93.0;
     s1+=70.0;
    }
   } else {
    if(i65<1.0023530721664429){
     s0+=11.0;
     s1+=8203.0;
    } else {
     s0+=26.0;
     s1+=287.0;
    }
   }
  }
 }
}
if(i3<0.0832146406173706){
 if(i50<0.0018146834336221218){
  if(i14<1.0066014528274536){
   if(i22<1.0475225448608398){
    if(i55<0.00026262286701239645){
     s0+=49301.0;
     s1+=53.0;
    } else {
     s0+=4653.0;
     s1+=146.0;
    }
   } else {
    if(i34<0.001048060948960483){
     s0+=3111.0;
     s1+=726.0;
    } else {
     s0+=5780.0;
     s1+=119.0;
    }
   }
  } else {
   if(i72<2.423575278953649e-05){
    if(i35<1.111814260482788){
     s1+=98.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i35<1.101383090019226){
     s0+=219.0;
     s1+=333.0;
    } else {
     s0+=859.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i44<1.001058578491211){
   if(i45<-3.415346145629883e-05){
    if(i48<-0.012562096118927002){
     s0+=1186.0;
     s1+=98.0;
    } else {
     s0+=1545.0;
     s1+=36.0;
    }
   } else {
    if(i52<0.9998036623001099){
     s0+=306.0;
     s1+=500.0;
    } else {
     s0+=2205.0;
     s1+=397.0;
    }
   }
  } else {
   if(i35<1.215203046798706){
    if(i4<-1.9311904907226562e-05){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=341.0;
    }
   } else {
    if(i8<1.1123791933059692){
     s0+=283.0;
     s1+=59.0;
    } else {
     s0+=22.0;
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i11<-1.5407800674438477e-05){
  if(i13<0.9988144636154175){
   if(i41<-1.0201771146967076e-05){
    if(i17<0.9861912131309509){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i11<-1.582503318786621e-05){
     s0+=375.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i6<-1.710977085167542e-05){
   if(i15<4.6133995056152344e-05){
    if(i0<0.12467041611671448){
     s0+=272.0;
     s1+=767.0;
    } else {
     s0+=100.0;
     s1+=2048.0;
    }
   } else {
    if(i41<-1.4864517652313225e-06){
     s0+=90.0;
     s1+=10710.0;
    } else {
     s0+=28.0;
     s1+=23.0;
    }
   }
  } else {
   if(i46<0.0038164854049682617){
    if(i61<0.03954136371612549){
     s0+=36.0;
     s1+=330.0;
    } else {
     s0+=134.0;
     s1+=55.0;
    }
   } else {
    if(i0<0.23749083280563354){
     s0+=476.0;
     s1+=52.0;
    } else {
     s0+=58.0;
     s1+=81.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i1<0.07831710577011108){
  if(i3<0.06606307625770569){
   if(i22<1.0451585054397583){
    if(i30<1.0717806816101074){
     s0+=36822.0;
     s1+=10.0;
    } else {
     s0+=15798.0;
     s1+=179.0;
    }
   } else {
    if(i30<1.103413462638855){
     s0+=3646.0;
     s1+=953.0;
    } else {
     s0+=10079.0;
     s1+=319.0;
    }
   }
  } else {
   if(i21<0.01463550329208374){
    if(i43<0.03731468319892883){
     s0+=96.0;
     s1+=114.0;
    } else {
     s0+=1615.0;
     s1+=48.0;
    }
   } else {
    if(i25<0.9852852821350098){
     s0+=400.0;
     s1+=52.0;
    } else {
     s0+=388.0;
     s1+=471.0;
    }
   }
  }
 } else {
  if(i21<0.02468295767903328){
   if(i48<0.013533055782318115){
    if(i44<0.9992855191230774){
     s0+=210.0;
     s1+=17.0;
    } else {
     s0+=246.0;
     s1+=899.0;
    }
   } else {
    if(i63<0.0007088227430358529){
     s0+=593.0;
     s1+=83.0;
    } else {
     s0+=99.0;
     s1+=77.0;
    }
   }
  } else {
   if(i4<-5.415081977844238e-05){
    if(i32<0.0018783512059599161){
     s0+=235.0;
    } else {
     s0+=23.0;
     s1+=93.0;
    }
   } else {
    if(i41<4.094945325050503e-06){
     s0+=267.0;
     s1+=2199.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
} else {
 if(i72<0.0004389965906739235){
  if(i0<0.06269580125808716){
   if(i49<-0.0013522505760192871){
    if(i55<-8.614041871624067e-05){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=417.0;
    }
   } else {
    if(i31<0.0020939665846526623){
     s1+=63.0;
    } else {
     s0+=174.0;
     s1+=29.0;
    }
   }
  } else {
   if(i3<0.12669983506202698){
    if(i71<1.038854956626892){
     s0+=100.0;
     s1+=1628.0;
    } else {
     s0+=60.0;
     s1+=13.0;
    }
   } else {
    if(i65<1.0016765594482422){
     s0+=10.0;
     s1+=9036.0;
    } else {
     s0+=18.0;
     s1+=418.0;
    }
   }
  }
 } else {
  s0+=181.0;
 }
}
if(i13<1.0016264915466309){
 if(i20<1.0107691287994385){
  if(i42<0.0003112704725936055){
   if(i1<0.08905786275863647){
    if(i21<0.024714775383472443){
     s0+=55826.0;
     s1+=427.0;
    } else {
     s0+=1039.0;
     s1+=174.0;
    }
   } else {
    if(i13<0.9991040229797363){
     s0+=30.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=105.0;
    }
   }
  } else {
   if(i18<-0.00021129846572875977){
    if(i3<0.08544737100601196){
     s0+=6095.0;
     s1+=177.0;
    } else {
     s0+=255.0;
     s1+=348.0;
    }
   } else {
    if(i1<0.07489702105522156){
     s0+=4257.0;
     s1+=1044.0;
    } else {
     s0+=403.0;
     s1+=1273.0;
    }
   }
  }
 } else {
  if(i3<0.09588149189949036){
   if(i31<0.001317921793088317){
    if(i41<-2.4300418317579897e-06){
     s0+=104.0;
     s1+=328.0;
    } else {
     s0+=209.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.003536251373589039){
     s0+=875.0;
     s1+=5.0;
    } else {
     s0+=163.0;
     s1+=60.0;
    }
   }
  } else {
   if(i6<-2.172237327613402e-05){
    if(i44<1.000235915184021){
     s0+=24.0;
     s1+=2214.0;
    } else {
     s0+=89.0;
     s1+=461.0;
    }
   } else {
    if(i31<0.0035202419385313988){
     s0+=283.0;
     s1+=36.0;
    } else {
     s0+=86.0;
     s1+=105.0;
    }
   }
  }
 }
} else {
 if(i2<0.000573575496673584){
  if(i52<1.0003752708435059){
   if(i16<0.006096584722399712){
    if(i39<0.0013985834084451199){
     s0+=5.0;
     s1+=43.0;
    } else {
     s0+=157.0;
     s1+=10.0;
    }
   } else {
    if(i37<0.025481538847088814){
     s0+=70.0;
     s1+=59.0;
    } else {
     s0+=13.0;
     s1+=299.0;
    }
   }
  } else {
   if(i66<-8.004622031876352e-06){
    if(i0<0.13489213585853577){
     s0+=633.0;
     s1+=17.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i17<0.9991962909698486){
     s0+=3.0;
     s1+=63.0;
    } else {
     s0+=65.0;
    }
   }
  }
 } else {
  if(i3<0.05765557289123535){
   if(i71<0.9995899796485901){
    if(i64<-0.008940745145082474){
     s0+=45.0;
     s1+=12.0;
    } else {
     s0+=29.0;
     s1+=311.0;
    }
   } else {
    if(i35<1.125725507736206){
     s1+=27.0;
    } else {
     s0+=85.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<1.0029656887054443){
    if(i39<0.008517974987626076){
     s0+=66.0;
     s1+=108.0;
    } else {
     s0+=5.0;
     s1+=180.0;
    }
   } else {
    if(i8<1.1223218441009521){
     s0+=64.0;
     s1+=3292.0;
    } else {
     s1+=6069.0;
    }
   }
  }
 }
}
if(i4<3.820657730102539e-05){
 if(i0<0.08370226621627808){
  if(i40<0.0003133216523565352){
   if(i27<1.009904384613037){
    if(i27<1.0081322193145752){
     s0+=47110.0;
     s1+=61.0;
    } else {
     s0+=51.0;
     s1+=25.0;
    }
   } else {
    s1+=40.0;
   }
  } else {
   if(i3<0.06313145160675049){
    if(i54<-0.02768230438232422){
     s0+=1940.0;
     s1+=517.0;
    } else {
     s0+=17416.0;
     s1+=755.0;
    }
   } else {
    if(i61<0.014898449182510376){
     s0+=315.0;
     s1+=488.0;
    } else {
     s0+=1671.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i35<1.0670123100280762){
   if(i35<1.0589735507965088){
    if(i55<0.0004442052450031042){
     s0+=254.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    if(i13<0.999568521976471){
     s0+=77.0;
    } else {
     s1+=31.0;
    }
   }
  } else {
   if(i44<0.9991047382354736){
    if(i31<0.01992102712392807){
     s0+=374.0;
     s1+=4.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i64<-0.018613019958138466){
     s0+=880.0;
     s1+=1075.0;
    } else {
     s0+=331.0;
     s1+=2334.0;
    }
   }
  }
 }
} else {
 if(i29<1.082350254058838){
  s0+=272.0;
 } else {
  if(i16<0.0023745461367070675){
   if(i15<0.001874089241027832){
    if(i58<-2.026340780503233e-06){
     s0+=165.0;
    } else {
     s0+=2.0;
     s1+=36.0;
    }
   } else {
    s1+=169.0;
   }
  } else {
   if(i15<9.47713851928711e-06){
    if(i21<0.020537031814455986){
     s0+=146.0;
     s1+=172.0;
    } else {
     s0+=101.0;
     s1+=1142.0;
    }
   } else {
    if(i57<0.0031147091649472713){
     s0+=4.0;
     s1+=60.0;
    } else {
     s0+=9.0;
     s1+=9946.0;
    }
   }
  }
 }
}
if(i3<0.08179634809494019){
 if(i15<0.001141965389251709){
  if(i48<-0.005849778652191162){
   if(i44<1.001044750213623){
    if(i29<1.1860926151275635){
     s0+=1300.0;
     s1+=544.0;
    } else {
     s0+=2285.0;
     s1+=186.0;
    }
   } else {
    if(i7<0.01733231544494629){
     s0+=181.0;
     s1+=69.0;
    } else {
     s0+=36.0;
     s1+=227.0;
    }
   }
  } else {
   if(i0<0.06724515557289124){
    if(i5<1.0025070905685425){
     s0+=61750.0;
     s1+=767.0;
    } else {
     s0+=83.0;
     s1+=133.0;
    }
   } else {
    if(i16<0.004137358628213406){
     s0+=3008.0;
     s1+=265.0;
    } else {
     s0+=587.0;
     s1+=316.0;
    }
   }
  }
 } else {
  if(i33<1.2388319969177246){
   s1+=426.0;
  } else {
   if(i6<-8.439621888101101e-05){
    s1+=69.0;
   } else {
    if(i46<-0.012275934219360352){
     s1+=1.0;
    } else {
     s0+=119.0;
    }
   }
  }
 }
} else {
 if(i17<1.00637948513031){
  if(i6<-1.433347279089503e-05){
   if(i62<0.0012575893197208643){
    if(i33<1.2011767625808716){
     s0+=44.0;
     s1+=992.0;
    } else {
     s0+=525.0;
     s1+=1169.0;
    }
   } else {
    if(i1<0.08088865876197815){
     s0+=9.0;
     s1+=12.0;
    } else {
     s0+=22.0;
     s1+=2038.0;
    }
   }
  } else {
   if(i36<0.04502269625663757){
    if(i13<0.9982699155807495){
     s0+=85.0;
    } else {
     s0+=50.0;
     s1+=241.0;
    }
   } else {
    if(i32<0.0018564584897831082){
     s0+=770.0;
     s1+=70.0;
    } else {
     s0+=142.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i10<1.519918441772461e-06){
   if(i29<1.2604451179504395){
    s1+=176.0;
   } else {
    if(i29<1.3000928163528442){
     s0+=46.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i4<3.013014793395996e-05){
    if(i15<0.000489652156829834){
     s0+=35.0;
     s1+=74.0;
    } else {
     s0+=5.0;
     s1+=256.0;
    }
   } else {
    if(i53<0.00011709280806826428){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=7.0;
     s1+=9000.0;
    }
   }
  }
 }
}
if(i15<0.0007564425468444824){
 if(i0<0.08547407388687134){
  if(i2<0.0006022751331329346){
   if(i26<0.0002821470843628049){
    if(i27<1.0101711750030518){
     s0+=51994.0;
     s1+=198.0;
    } else {
     s0+=37.0;
     s1+=52.0;
    }
   } else {
    if(i32<0.0014314900618046522){
     s0+=6447.0;
     s1+=1436.0;
    } else {
     s0+=9867.0;
     s1+=382.0;
    }
   }
  } else {
   if(i16<0.004411947447806597){
    if(i43<0.003225982189178467){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=91.0;
     s1+=2.0;
    }
   } else {
    if(i49<0.0013912320137023926){
     s0+=47.0;
     s1+=420.0;
    } else {
     s0+=59.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i45<-0.0001392066478729248){
   if(i34<0.024905364960432053){
    if(i36<0.05635726451873779){
     s0+=307.0;
     s1+=12.0;
    } else {
     s0+=343.0;
    }
   } else {
    if(i26<0.013347837142646313){
     s0+=1.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i21<0.023232456296682358){
    if(i46<0.0046547651290893555){
     s0+=236.0;
     s1+=800.0;
    } else {
     s0+=545.0;
     s1+=139.0;
    }
   } else {
    if(i1<0.11247509717941284){
     s0+=210.0;
     s1+=707.0;
    } else {
     s0+=129.0;
     s1+=3000.0;
    }
   }
  }
 }
} else {
 if(i42<0.00019853771664202213){
  if(i5<1.0042204856872559){
   if(i32<0.0006604715017601848){
    if(i53<0.0023465983103960752){
     s1+=33.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i37<0.014338315464556217){
     s0+=406.0;
     s1+=4.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   s1+=73.0;
  }
 } else {
  if(i41<-1.3285226486914326e-05){
   if(i1<0.06463903188705444){
    if(i51<0.0028273463249206543){
     s1+=504.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.0026359558105469){
     s0+=1.0;
     s1+=1128.0;
    } else {
     s1+=7710.0;
    }
   }
  } else {
   if(i37<0.008114246651530266){
    if(i56<-2.8942278731847182e-05){
     s1+=65.0;
    } else {
     s0+=255.0;
     s1+=21.0;
    }
   } else {
    if(i1<0.05112364888191223){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=34.0;
     s1+=488.0;
    }
   }
  }
 }
}
if(i27<1.0085716247558594){
 if(i4<3.9637088775634766e-05){
  if(i0<0.08579924702644348){
   if(i46<-0.001772850751876831){
    if(i0<0.036636918783187866){
     s0+=2812.0;
     s1+=366.0;
    } else {
     s0+=384.0;
     s1+=386.0;
    }
   } else {
    if(i57<0.02776392176747322){
     s0+=56478.0;
     s1+=361.0;
    } else {
     s0+=7358.0;
     s1+=676.0;
    }
   }
  } else {
   if(i2<-0.0008493959903717041){
    if(i31<0.008266158401966095){
     s0+=471.0;
     s1+=23.0;
    } else {
     s0+=43.0;
     s1+=71.0;
    }
   } else {
    if(i48<0.016476482152938843){
     s0+=298.0;
     s1+=1476.0;
    } else {
     s0+=389.0;
     s1+=311.0;
    }
   }
  }
 } else {
  if(i34<0.000395697308704257){
   s0+=255.0;
  } else {
   if(i22<1.0591415166854858){
    if(i18<0.00012749433517456055){
     s0+=2.0;
     s1+=27.0;
    } else {
     s0+=32.0;
     s1+=6.0;
    }
   } else {
    if(i15<-0.0030371248722076416){
     s0+=40.0;
     s1+=39.0;
    } else {
     s0+=154.0;
     s1+=2483.0;
    }
   }
  }
 }
} else {
 if(i1<0.07429763674736023){
  if(i6<-4.280432767700404e-05){
   if(i33<1.2449910640716553){
    if(i54<0.033689916133880615){
     s0+=11.0;
     s1+=458.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i10<0.001085519790649414){
     s0+=217.0;
     s1+=16.0;
    } else {
     s1+=21.0;
    }
   }
  } else {
   if(i30<1.1040980815887451){
    if(i16<0.0014648191863670945){
     s0+=295.0;
     s1+=20.0;
    } else {
     s0+=10.0;
     s1+=167.0;
    }
   } else {
    if(i13<1.0027353763580322){
     s0+=1290.0;
     s1+=5.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i14<1.0146727561950684){
   if(i19<1.0028958320617676){
    if(i22<1.1043391227722168){
     s0+=111.0;
     s1+=642.0;
    } else {
     s0+=434.0;
     s1+=296.0;
    }
   } else {
    if(i63<0.0001791282556951046){
     s0+=13.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=922.0;
    }
   }
  } else {
   if(i4<3.343820571899414e-05){
    if(i6<-3.8117133954074234e-05){
     s0+=4.0;
     s1+=543.0;
    } else {
     s0+=124.0;
     s1+=115.0;
    }
   } else {
    if(i16<0.00218489789403975){
     s0+=18.0;
     s1+=137.0;
    } else {
     s0+=1.0;
     s1+=7414.0;
    }
   }
  }
 }
}
if(i7<0.07132148742675781){
 if(i10<0.0006070137023925781){
  if(i3<0.07836151123046875){
   if(i48<-0.004928171634674072){
    if(i29<1.194468379020691){
     s0+=1719.0;
     s1+=669.0;
    } else {
     s0+=2627.0;
     s1+=161.0;
    }
   } else {
    if(i3<0.0630328357219696){
     s0+=60193.0;
     s1+=677.0;
    } else {
     s0+=3309.0;
     s1+=488.0;
    }
   }
  } else {
   if(i30<1.0670123100280762){
    if(i12<1.0012507438659668){
     s0+=95.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i58<2.3646744011784904e-05){
     s0+=54.0;
     s1+=917.0;
    } else {
     s0+=52.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i5<1.001884937286377){
   if(i54<-0.05272495746612549){
    if(i3<0.021916329860687256){
     s0+=7.0;
     s1+=10.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i0<0.09011626243591309){
     s0+=539.0;
     s1+=28.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i60<-0.003276185132563114){
    if(i54<0.0087432861328125){
     s0+=9.0;
     s1+=91.0;
    } else {
     s0+=38.0;
     s1+=20.0;
    }
   } else {
    if(i68<0.998940110206604){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=68.0;
     s1+=1568.0;
    }
   }
  }
 }
} else {
 if(i0<0.12466582655906677){
  if(i6<-2.3378106561722234e-05){
   if(i46<0.004664719104766846){
    if(i49<0.005389034748077393){
     s0+=96.0;
     s1+=1252.0;
    } else {
     s0+=53.0;
     s1+=13.0;
    }
   } else {
    if(i2<0.0016918778419494629){
     s0+=361.0;
     s1+=15.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i38<0.06281158328056335){
    if(i0<0.08598864078521729){
     s0+=87.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=83.0;
    }
   } else {
    if(i21<0.02933841571211815){
     s0+=740.0;
     s1+=44.0;
    } else {
     s0+=148.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i2<0.0001443028450012207){
   if(i41<2.5180447664752137e-06){
    if(i56<3.1516141461906955e-05){
     s0+=196.0;
     s1+=172.0;
    } else {
     s0+=80.0;
     s1+=967.0;
    }
   } else {
    if(i43<0.05647766590118408){
     s1+=6.0;
    } else {
     s0+=183.0;
     s1+=3.0;
    }
   }
  } else {
   if(i61<0.041938722133636475){
    if(i1<0.12855765223503113){
     s0+=11.0;
     s1+=279.0;
    } else {
     s0+=6.0;
     s1+=7661.0;
    }
   } else {
    if(i63<0.000211377686355263){
     s0+=58.0;
     s1+=68.0;
    } else {
     s0+=60.0;
     s1+=2057.0;
    }
   }
  }
 }
}
if(i19<1.0027947425842285){
 if(i14<1.0106494426727295){
  if(i8<1.0451608896255493){
   if(i7<0.0758880078792572){
    if(i22<1.0451585054397583){
     s0+=53673.0;
     s1+=205.0;
    } else {
     s0+=7505.0;
     s1+=664.0;
    }
   } else {
    if(i22<1.0447471141815186){
     s0+=92.0;
     s1+=1.0;
    } else {
     s0+=53.0;
     s1+=127.0;
    }
   }
  } else {
   if(i13<0.99867182970047){
    if(i16<0.007180273998528719){
     s0+=2041.0;
     s1+=34.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i3<0.06762874126434326){
     s0+=4334.0;
     s1+=777.0;
    } else {
     s0+=1263.0;
     s1+=2046.0;
    }
   }
  }
 } else {
  if(i53<0.0010252987267449498){
   if(i65<1.0003249645233154){
    if(i55<-6.855469837319106e-05){
     s0+=5.0;
     s1+=494.0;
    } else {
     s0+=229.0;
     s1+=198.0;
    }
   } else {
    if(i62<0.002357651013880968){
     s0+=277.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   }
  } else {
   if(i13<0.9982749819755554){
    s0+=46.0;
   } else {
    if(i0<0.09268271923065186){
     s0+=76.0;
     s1+=132.0;
    } else {
     s0+=50.0;
     s1+=1785.0;
    }
   }
  }
 }
} else {
 if(i8<1.041278600692749){
  if(i70<0.10341931879520416){
   if(i55<7.717737753409892e-05){
    if(i1<0.0657908022403717){
     s0+=99.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=7.0;
    }
   } else {
    if(i51<0.0007454156875610352){
     s0+=23.0;
     s1+=154.0;
    } else {
     s0+=78.0;
     s1+=1.0;
    }
   }
  } else {
   if(i1<0.07933473587036133){
    s0+=586.0;
   } else {
    if(i60<-0.006121631246060133){
     s0+=1.0;
    } else {
     s1+=19.0;
    }
   }
  }
 } else {
  if(i3<0.07071194052696228){
   if(i49<5.200505256652832e-05){
    if(i41<-1.45129524753429e-05){
     s0+=100.0;
     s1+=552.0;
    } else {
     s0+=62.0;
     s1+=37.0;
    }
   } else {
    if(i58<8.304979928652756e-06){
     s0+=67.0;
     s1+=25.0;
    } else {
     s0+=187.0;
     s1+=5.0;
    }
   }
  } else {
   if(i63<0.00017885142005980015){
    if(i58<1.7313618627667893e-06){
     s0+=8.0;
     s1+=251.0;
    } else {
     s0+=45.0;
     s1+=4.0;
    }
   } else {
    if(i67<-0.0001156856887973845){
     s0+=26.0;
     s1+=8803.0;
    } else {
     s0+=115.0;
     s1+=858.0;
    }
   }
  }
 }
}
if(i17<1.0060044527053833){
 if(i2<0.0005601346492767334){
  if(i21<0.021963097155094147){
   if(i26<0.0002878688392229378){
    if(i20<1.0108308792114258){
     s0+=51865.0;
     s1+=211.0;
    } else {
     s0+=13.0;
     s1+=42.0;
    }
   } else {
    if(i6<-2.8591482987394556e-05){
     s0+=1757.0;
     s1+=545.0;
    } else {
     s0+=9502.0;
     s1+=822.0;
    }
   }
  } else {
   if(i1<0.06939592957496643){
    if(i15<-0.001363515853881836){
     s0+=5185.0;
     s1+=128.0;
    } else {
     s0+=846.0;
     s1+=717.0;
    }
   } else {
    if(i6<-8.025229362829123e-06){
     s0+=344.0;
     s1+=2072.0;
    } else {
     s0+=443.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i19<1.001720905303955){
   if(i13<1.0004061460494995){
    s0+=141.0;
   } else {
    if(i8<1.1243191957473755){
     s0+=97.0;
     s1+=90.0;
    } else {
     s0+=1.0;
     s1+=99.0;
    }
   }
  } else {
   if(i37<0.020455311983823776){
    if(i70<0.07101671397686005){
     s0+=49.0;
     s1+=230.0;
    } else {
     s0+=119.0;
     s1+=89.0;
    }
   } else {
    if(i39<0.0020807278342545033){
     s0+=3.0;
     s1+=42.0;
    } else {
     s0+=6.0;
     s1+=1604.0;
    }
   }
  }
 }
} else {
 if(i2<0.000496983528137207){
  if(i55<-9.265020344173536e-05){
   if(i0<0.06565457582473755){
    if(i12<1.0063037872314453){
     s0+=90.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i32<0.0006500201998278499){
     s0+=65.0;
     s1+=41.0;
    } else {
     s0+=17.0;
     s1+=459.0;
    }
   }
  } else {
   if(i20<1.0460727214813232){
    if(i41<-1.4191284208209254e-05){
     s0+=4.0;
     s1+=77.0;
    } else {
     s0+=418.0;
     s1+=45.0;
    }
   } else {
    if(i33<1.2527469396591187){
     s0+=1.0;
    } else {
     s1+=80.0;
    }
   }
  }
 } else {
  if(i11<2.2232532501220703e-05){
   if(i42<0.00020594487432390451){
    if(i34<0.0015633422881364822){
     s1+=19.0;
    } else {
     s0+=93.0;
     s1+=7.0;
    }
   } else {
    if(i37<0.011332891881465912){
     s0+=71.0;
     s1+=320.0;
    } else {
     s1+=1331.0;
    }
   }
  } else {
   if(i18<6.139278411865234e-06){
    if(i68<1.001238465309143){
     s0+=29.0;
     s1+=1.0;
    } else {
     s1+=86.0;
    }
   } else {
    if(i16<0.001046517165377736){
     s0+=2.0;
     s1+=25.0;
    } else {
     s1+=7736.0;
    }
   }
  }
 }
}
if(i7<0.07196682691574097){
 if(i0<0.07855063676834106){
  if(i11<1.8775463104248047e-05){
   if(i54<-0.028397202491760254){
    if(i44<0.9993847608566284){
     s0+=883.0;
     s1+=25.0;
    } else {
     s0+=1454.0;
     s1+=509.0;
    }
   } else {
    if(i50<0.0014984626322984695){
     s0+=60180.0;
     s1+=739.0;
    } else {
     s0+=4847.0;
     s1+=485.0;
    }
   }
  } else {
   if(i19<1.0028209686279297){
    if(i59<0.002836078405380249){
     s0+=494.0;
     s1+=163.0;
    } else {
     s0+=456.0;
     s1+=8.0;
    }
   } else {
    if(i39<0.0009158063912764192){
     s0+=2.0;
     s1+=395.0;
    } else {
     s0+=308.0;
     s1+=312.0;
    }
   }
  }
 } else {
  if(i2<-0.0005959272384643555){
   if(i45<-0.00011727213859558105){
    s0+=386.0;
   } else {
    if(i14<0.9928421974182129){
     s0+=27.0;
     s1+=36.0;
    } else {
     s0+=78.0;
     s1+=3.0;
    }
   }
  } else {
   if(i39<0.0003160966734867543){
    if(i8<1.057462215423584){
     s0+=74.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i52<0.9979292154312134){
     s0+=8.0;
    } else {
     s0+=151.0;
     s1+=2019.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0003746151924133301){
  if(i30<1.4989960193634033){
   if(i44<0.9997203946113586){
    if(i10<-0.0003796815872192383){
     s0+=430.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i3<0.11683332920074463){
     s0+=16.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i14<0.9872236847877502){
    if(i42<0.0008930751937441528){
     s0+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    s0+=24.0;
   }
  }
 } else {
  if(i12<1.0021944046020508){
   if(i63<0.00022953501320444047){
    if(i52<0.9998805522918701){
     s0+=204.0;
     s1+=319.0;
    } else {
     s0+=400.0;
     s1+=126.0;
    }
   } else {
    if(i22<1.1376985311508179){
     s0+=606.0;
     s1+=972.0;
    } else {
     s0+=184.0;
     s1+=2154.0;
    }
   }
  } else {
   if(i16<0.003166212234646082){
    if(i0<0.09846889972686768){
     s0+=46.0;
     s1+=29.0;
    } else {
     s0+=51.0;
     s1+=368.0;
    }
   } else {
    if(i1<0.1381077766418457){
     s0+=28.0;
     s1+=806.0;
    } else {
     s0+=2.0;
     s1+=7419.0;
    }
   }
  }
 }
}
if(i5<1.0024782419204712){
 if(i3<0.08393946290016174){
  if(i22<1.0486011505126953){
   if(i40<0.00029424187960103154){
    if(i55<0.0003197892801836133){
     s0+=44539.0;
     s1+=2.0;
    } else {
     s0+=76.0;
     s1+=25.0;
    }
   } else {
    if(i22<1.0417436361312866){
     s0+=9294.0;
     s1+=107.0;
    } else {
     s0+=1815.0;
     s1+=230.0;
    }
   }
  } else {
   if(i21<0.014130224473774433){
    if(i0<0.07235455513000488){
     s0+=7820.0;
     s1+=343.0;
    } else {
     s0+=473.0;
     s1+=124.0;
    }
   } else {
    if(i22<1.0920991897583008){
     s0+=1610.0;
     s1+=1032.0;
    } else {
     s0+=3412.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i61<0.03612363338470459){
   if(i6<-1.3516403669200372e-05){
    if(i3<0.10012269020080566){
     s0+=141.0;
     s1+=466.0;
    } else {
     s0+=70.0;
     s1+=2167.0;
    }
   } else {
    if(i60<-0.003966428339481354){
     s0+=235.0;
     s1+=48.0;
    } else {
     s0+=90.0;
     s1+=186.0;
    }
   }
  } else {
   if(i39<0.010480414144694805){
    if(i29<1.255998969078064){
     s0+=310.0;
     s1+=400.0;
    } else {
     s0+=661.0;
     s1+=145.0;
    }
   } else {
    if(i22<1.092254638671875){
     s0+=15.0;
    } else {
     s0+=5.0;
     s1+=291.0;
    }
   }
  }
 }
} else {
 if(i37<0.016755560413002968){
  if(i18<0.000232696533203125){
   if(i35<1.187422752380371){
    if(i42<0.00013516718172468245){
     s0+=21.0;
     s1+=9.0;
    } else {
     s0+=27.0;
     s1+=629.0;
    }
   } else {
    if(i8<1.1552667617797852){
     s0+=288.0;
     s1+=27.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   s1+=1475.0;
  }
 } else {
  if(i1<0.004610776901245117){
   if(i18<-0.0003241300582885742){
    s0+=7.0;
   } else {
    s1+=22.0;
   }
  } else {
   if(i15<-0.0006499886512756348){
    if(i53<0.0021861642599105835){
     s0+=16.0;
     s1+=38.0;
    } else {
     s1+=410.0;
    }
   } else {
    s1+=8779.0;
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i5<1.0024782419204712){
  if(i0<0.08370313048362732){
   if(i59<-0.0017172396183013916){
    if(i3<0.057681769132614136){
     s0+=5669.0;
     s1+=578.0;
    } else {
     s0+=246.0;
     s1+=238.0;
    }
   } else {
    if(i22<1.048384666442871){
     s0+=52880.0;
     s1+=89.0;
    } else {
     s0+=5761.0;
     s1+=395.0;
    }
   }
  } else {
   if(i11<-1.329183578491211e-05){
    if(i66<-3.8066393699409673e-06){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=311.0;
     s1+=1.0;
    }
   } else {
    if(i26<0.00024691197904758155){
     s0+=43.0;
     s1+=19.0;
    } else {
     s0+=107.0;
     s1+=639.0;
    }
   }
  }
 } else {
  if(i40<0.00026997318491339684){
   if(i66<-5.474365934787784e-06){
    s1+=20.0;
   } else {
    s0+=40.0;
   }
  } else {
   if(i10<0.0005315542221069336){
    if(i42<0.00015621833154000342){
     s0+=32.0;
    } else {
     s0+=15.0;
     s1+=61.0;
    }
   } else {
    if(i16<0.0009313936461694539){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=639.0;
    }
   }
  }
 }
} else {
 if(i6<-4.210519546177238e-05){
  if(i13<0.9987587928771973){
   if(i58<1.4400737200048752e-05){
    s0+=103.0;
   } else {
    if(i17<0.9669110178947449){
     s0+=1.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i15<-0.0006219744682312012){
    if(i40<0.008672049269080162){
     s0+=545.0;
     s1+=396.0;
    } else {
     s0+=71.0;
     s1+=967.0;
    }
   } else {
    if(i34<0.0002845010021701455){
     s0+=8.0;
    } else {
     s0+=131.0;
     s1+=11337.0;
    }
   }
  }
 } else {
  if(i7<0.063958078622818){
   if(i1<0.07109171152114868){
    if(i29<1.1013743877410889){
     s0+=870.0;
     s1+=319.0;
    } else {
     s0+=2502.0;
     s1+=76.0;
    }
   } else {
    if(i34<0.0005577979609370232){
     s0+=14.0;
     s1+=1.0;
    } else {
     s0+=11.0;
     s1+=182.0;
    }
   }
  } else {
   if(i64<-0.017969518899917603){
    if(i34<0.005357048474252224){
     s0+=1046.0;
     s1+=164.0;
    } else {
     s0+=109.0;
     s1+=229.0;
    }
   } else {
    if(i43<0.04664158821105957){
     s0+=52.0;
     s1+=386.0;
    } else {
     s0+=528.0;
     s1+=360.0;
    }
   }
  }
 }
}
if(i4<3.641843795776367e-05){
 if(i0<0.0866774320602417){
  if(i40<0.0003128035750705749){
   if(i41<-1.376063755742507e-05){
    if(i4<3.2186508178710938e-06){
     s0+=210.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i14<1.0095247030258179){
     s0+=46809.0;
     s1+=58.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i18<-0.00018894672393798828){
    if(i48<-0.012721210718154907){
     s0+=1417.0;
     s1+=169.0;
    } else {
     s0+=11390.0;
     s1+=99.0;
    }
   } else {
    if(i16<0.004169769585132599){
     s0+=8555.0;
     s1+=1265.0;
    } else {
     s0+=414.0;
     s1+=523.0;
    }
   }
  }
 } else {
  if(i10<-0.0004050135612487793){
   if(i31<0.009207659400999546){
    s0+=577.0;
   } else {
    if(i24<0.9723572731018066){
     s0+=16.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   }
  } else {
   if(i61<0.04050281643867493){
    if(i59<0.006279945373535156){
     s0+=146.0;
     s1+=2029.0;
    } else {
     s0+=279.0;
     s1+=542.0;
    }
   } else {
    if(i21<0.04730641096830368){
     s0+=632.0;
     s1+=246.0;
    } else {
     s0+=24.0;
     s1+=363.0;
    }
   }
  }
 }
} else {
 if(i31<0.0004908976843580604){
  s0+=353.0;
 } else {
  if(i6<-4.660761624109e-05){
   if(i15<6.896257400512695e-05){
    if(i3<0.12094715237617493){
     s0+=212.0;
     s1+=378.0;
    } else {
     s0+=26.0;
     s1+=923.0;
    }
   } else {
    if(i40<0.00020020415831822902){
     s0+=2.0;
    } else {
     s0+=7.0;
     s1+=10003.0;
    }
   }
  } else {
   if(i16<0.004145922139286995){
    if(i14<1.0008914470672607){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=185.0;
     s1+=3.0;
    }
   } else {
    if(i32<0.010906447656452656){
     s0+=1.0;
     s1+=292.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i0<0.08509618043899536){
  if(i31<0.00030967697966843843){
   if(i17<1.0029658079147339){
    if(i12<1.0010432004928589){
     s0+=33836.0;
    } else {
     s0+=1932.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.0002251267433166504){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=491.0;
    }
   }
  } else {
   if(i33<1.103413462638855){
    if(i8<1.0398828983306885){
     s0+=5371.0;
     s1+=428.0;
    } else {
     s0+=1105.0;
     s1+=1234.0;
    }
   } else {
    if(i47<0.01127166673541069){
     s0+=24489.0;
     s1+=271.0;
    } else {
     s0+=1336.0;
     s1+=315.0;
    }
   }
  }
 } else {
  if(i44<0.9991744160652161){
   if(i14<0.9434128999710083){
    if(i12<0.9893356561660767){
     s0+=2.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i16<0.006130821071565151){
     s0+=680.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  } else {
   if(i3<0.10779300332069397){
    if(i60<-0.004383728839457035){
     s0+=481.0;
     s1+=47.0;
    } else {
     s0+=212.0;
     s1+=817.0;
    }
   } else {
    if(i23<1.0846035480499268){
     s0+=47.0;
     s1+=1393.0;
    } else {
     s0+=441.0;
     s1+=1083.0;
    }
   }
  }
 }
} else {
 if(i30<1.0624027252197266){
  s0+=312.0;
 } else {
  if(i2<0.0009589195251464844){
   if(i16<0.0023669356014579535){
    if(i72<8.843977411743253e-05){
     s0+=1.0;
     s1+=32.0;
    } else {
     s0+=143.0;
    }
   } else {
    if(i10<0.0007506012916564941){
     s0+=20.0;
     s1+=1178.0;
    } else {
     s0+=144.0;
     s1+=348.0;
    }
   }
  } else {
   if(i25<0.9969648122787476){
    if(i70<0.2050914764404297){
     s0+=59.0;
     s1+=461.0;
    } else {
     s0+=6.0;
     s1+=691.0;
    }
   } else {
    if(i12<1.0046148300170898){
     s0+=21.0;
     s1+=786.0;
    } else {
     s1+=7991.0;
    }
   }
  }
 }
}
if(i28<1.0088286399841309){
 if(i3<0.081397145986557){
  if(i48<-0.006169945001602173){
   if(i41<-1.9445977159193717e-05){
    if(i18<-0.00043848156929016113){
     s0+=464.0;
     s1+=58.0;
    } else {
     s0+=100.0;
     s1+=477.0;
    }
   } else {
    if(i33<1.197464108467102){
     s0+=1255.0;
     s1+=612.0;
    } else {
     s0+=1817.0;
     s1+=102.0;
    }
   }
  } else {
   if(i3<0.06909489631652832){
    if(i26<0.00030582514591515064){
     s0+=52449.0;
     s1+=173.0;
    } else {
     s0+=10090.0;
     s1+=686.0;
    }
   } else {
    if(i4<3.904104232788086e-05){
     s0+=1442.0;
     s1+=261.0;
    } else {
     s0+=42.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i68<0.9977158308029175){
   if(i52<0.999599814414978){
    if(i66<-2.393882823525928e-06){
     s0+=14.0;
     s1+=13.0;
    } else {
     s0+=293.0;
    }
   } else {
    if(i21<0.022817617282271385){
     s0+=43.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=111.0;
    }
   }
  } else {
   if(i61<0.03612557053565979){
    if(i61<0.02264249324798584){
     s0+=22.0;
     s1+=2484.0;
    } else {
     s0+=102.0;
     s1+=456.0;
    }
   } else {
    if(i37<0.028222670778632164){
     s0+=496.0;
     s1+=233.0;
    } else {
     s0+=31.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i19<1.002943992614746){
  if(i3<0.08273869752883911){
   if(i33<1.1040980815887451){
    if(i10<0.00012695789337158203){
     s0+=290.0;
     s1+=92.0;
    } else {
     s0+=7.0;
     s1+=152.0;
    }
   } else {
    if(i39<0.000996026094071567){
     s1+=5.0;
    } else {
     s0+=1307.0;
     s1+=44.0;
    }
   }
  } else {
   if(i2<0.00013259053230285645){
    if(i64<-0.017477549612522125){
     s0+=365.0;
     s1+=249.0;
    } else {
     s0+=100.0;
     s1+=416.0;
    }
   } else {
    if(i52<0.9998842477798462){
     s0+=11.0;
     s1+=1592.0;
    } else {
     s0+=226.0;
     s1+=595.0;
    }
   }
  }
 } else {
  if(i6<-4.317449202062562e-05){
   if(i18<-3.886222839355469e-05){
    if(i40<0.006288271397352219){
     s0+=32.0;
     s1+=54.0;
    } else {
     s1+=192.0;
    }
   } else {
    s1+=7634.0;
   }
  } else {
   if(i16<0.002777783665806055){
    s0+=136.0;
   } else {
    if(i4<-7.3909759521484375e-06){
     s0+=2.0;
    } else {
     s1+=86.0;
    }
   }
  }
 }
}
if(i23<1.0406280755996704){
 if(i5<1.002474308013916){
  if(i22<1.0494916439056396){
   if(i42<0.000304006680380553){
    if(i59<-0.0025599002838134766){
     s0+=223.0;
     s1+=54.0;
    } else {
     s0+=51452.0;
     s1+=131.0;
    }
   } else {
    if(i40<0.0012270412407815456){
     s0+=2096.0;
     s1+=201.0;
    } else {
     s0+=2466.0;
     s1+=4.0;
    }
   }
  } else {
   if(i31<0.0022746510803699493){
    if(i3<0.06628009676933289){
     s0+=5005.0;
     s1+=834.0;
    } else {
     s0+=202.0;
     s1+=1070.0;
    }
   } else {
    if(i4<3.5762786865234375e-05){
     s0+=5422.0;
     s1+=372.0;
    } else {
     s0+=27.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i5<1.0041444301605225){
   if(i1<0.05344110727310181){
    if(i35<1.1341700553894043){
     s0+=5.0;
     s1+=92.0;
    } else {
     s0+=114.0;
     s1+=41.0;
    }
   } else {
    if(i51<0.0021944046020507812){
     s0+=7.0;
     s1+=354.0;
    } else {
     s0+=12.0;
     s1+=10.0;
    }
   }
  } else {
   if(i15<-0.0029851794242858887){
    s0+=7.0;
   } else {
    if(i69<0.381229043006897){
     s1+=1334.0;
    } else {
     s0+=6.0;
     s1+=88.0;
    }
   }
  }
 }
} else {
 if(i7<0.09111720323562622){
  if(i3<0.0961209237575531){
   if(i33<1.1037919521331787){
    if(i41<-5.04602257933584e-06){
     s0+=42.0;
     s1+=479.0;
    } else {
     s0+=725.0;
     s1+=89.0;
    }
   } else {
    if(i18<0.00021505355834960938){
     s0+=2407.0;
     s1+=252.0;
    } else {
     s1+=67.0;
    }
   }
  } else {
   if(i54<0.0626554787158966){
    if(i36<0.06279563903808594){
     s0+=17.0;
     s1+=1323.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i43<0.06431612372398376){
     s1+=25.0;
    } else {
     s0+=39.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i2<0.00014445185661315918){
   if(i41<-4.6882432798156515e-06){
    if(i67<-4.355861165095121e-05){
     s0+=56.0;
     s1+=599.0;
    } else {
     s0+=58.0;
     s1+=53.0;
    }
   } else {
    if(i14<1.011573314666748){
     s0+=588.0;
     s1+=149.0;
    } else {
     s0+=42.0;
     s1+=168.0;
    }
   }
  } else {
   if(i16<0.00463106669485569){
    if(i6<-5.589531792793423e-05){
     s0+=17.0;
     s1+=378.0;
    } else {
     s0+=199.0;
     s1+=122.0;
    }
   } else {
    if(i22<1.0636978149414062){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=50.0;
     s1+=8459.0;
    }
   }
  }
 }
}
if(i5<1.0023996829986572){
 if(i57<0.030338091775774956){
  if(i8<1.0469666719436646){
   if(i21<0.02203715592622757){
    if(i62<0.0008052635239437222){
     s0+=53401.0;
     s1+=160.0;
    } else {
     s0+=1085.0;
     s1+=205.0;
    }
   } else {
    if(i5<0.9971920847892761){
     s0+=939.0;
     s1+=3.0;
    } else {
     s0+=101.0;
     s1+=128.0;
    }
   }
  } else {
   if(i0<0.0849977433681488){
    if(i4<9.894371032714844e-06){
     s0+=3448.0;
     s1+=200.0;
    } else {
     s0+=373.0;
     s1+=235.0;
    }
   } else {
    if(i60<-0.005189168732613325){
     s0+=365.0;
     s1+=104.0;
    } else {
     s0+=114.0;
     s1+=652.0;
    }
   }
  }
 } else {
  if(i7<0.06773611903190613){
   if(i39<0.0019988492131233215){
    if(i6<-5.4520974117622245e-06){
     s0+=545.0;
     s1+=799.0;
    } else {
     s0+=1856.0;
     s1+=226.0;
    }
   } else {
    if(i8<1.0449308156967163){
     s0+=5080.0;
     s1+=25.0;
    } else {
     s0+=2206.0;
     s1+=395.0;
    }
   }
  } else {
   if(i36<0.040265023708343506){
    if(i45<-0.00026047229766845703){
     s0+=19.0;
    } else {
     s0+=64.0;
     s1+=1312.0;
    }
   } else {
    if(i67<-0.00010770768858492374){
     s0+=627.0;
     s1+=1161.0;
    } else {
     s0+=565.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i8<1.0343272686004639){
  if(i41<-1.686515679466538e-05){
   s1+=40.0;
  } else {
   if(i65<1.0018081665039062){
    s0+=98.0;
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i42<0.00016199224046431482){
   if(i53<0.0008237749570980668){
    if(i11<9.5367431640625e-06){
     s1+=3.0;
    } else {
     s0+=48.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=19.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i6<-4.353338590590283e-05){
    if(i1<0.04723888635635376){
     s0+=66.0;
     s1+=326.0;
    } else {
     s0+=98.0;
     s1+=10651.0;
    }
   } else {
    if(i39<0.002264836337417364){
     s0+=9.0;
     s1+=196.0;
    } else {
     s0+=94.0;
     s1+=45.0;
    }
   }
  }
 }
}
if(i2<0.0005468428134918213){
 if(i57<0.03042393922805786){
  if(i15<0.0010906457901000977){
   if(i25<1.007227897644043){
    if(i0<0.08476662635803223){
     s0+=58514.0;
     s1+=748.0;
    } else {
     s0+=671.0;
     s1+=303.0;
    }
   } else {
    if(i1<0.059136390686035156){
     s0+=582.0;
     s1+=58.0;
    } else {
     s0+=105.0;
     s1+=437.0;
    }
   }
  } else {
   if(i27<1.0098379850387573){
    if(i35<1.1631771326065063){
     s1+=7.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i51<-0.0009961724281311035){
     s0+=2.0;
    } else {
     s1+=224.0;
    }
   }
  }
 } else {
  if(i67<-4.550957237370312e-05){
   if(i7<0.060435324907302856){
    if(i39<0.0017092730849981308){
     s0+=541.0;
     s1+=514.0;
    } else {
     s0+=2311.0;
     s1+=241.0;
    }
   } else {
    if(i63<0.00023645200417377055){
     s0+=454.0;
     s1+=368.0;
    } else {
     s0+=436.0;
     s1+=2001.0;
    }
   }
  } else {
   if(i33<1.2011767625808716){
    if(i19<1.0004425048828125){
     s0+=1988.0;
     s1+=286.0;
    } else {
     s0+=21.0;
     s1+=196.0;
    }
   } else {
    if(i17<0.9909394383430481){
     s0+=4617.0;
     s1+=112.0;
    } else {
     s0+=292.0;
     s1+=79.0;
    }
   }
  }
 }
} else {
 if(i16<0.0019228286109864712){
  if(i4<6.598234176635742e-05){
   if(i21<0.03119264543056488){
    if(i56<1.03089469121187e-05){
     s0+=274.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   s1+=90.0;
  }
 } else {
  if(i29<1.0710620880126953){
   s0+=40.0;
  } else {
   if(i15<4.661083221435547e-05){
    if(i22<1.1228240728378296){
     s0+=191.0;
     s1+=340.0;
    } else {
     s0+=56.0;
     s1+=1081.0;
    }
   } else {
    if(i16<0.0023749331012368202){
     s0+=32.0;
     s1+=89.0;
    } else {
     s0+=9.0;
     s1+=9881.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i1<0.07771864533424377){
  if(i59<-0.0022155344486236572){
   if(i31<0.0008660084567964077){
    if(i32<0.00045107616460882127){
     s0+=1295.0;
     s1+=97.0;
    } else {
     s0+=71.0;
     s1+=536.0;
    }
   } else {
    if(i3<0.05865979194641113){
     s0+=4198.0;
     s1+=182.0;
    } else {
     s0+=190.0;
     s1+=125.0;
    }
   }
  } else {
   if(i24<1.0056065320968628){
    if(i21<0.021804604679346085){
     s0+=57678.0;
     s1+=329.0;
    } else {
     s0+=3655.0;
     s1+=488.0;
    }
   } else {
    if(i22<1.0731133222579956){
     s0+=205.0;
     s1+=319.0;
    } else {
     s0+=1528.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i10<-0.0003960132598876953){
   if(i16<0.006379151251167059){
    if(i34<0.009224174544215202){
     s0+=487.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   } else {
    if(i33<1.639693260192871){
     s1+=4.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i60<-0.004571732133626938){
    if(i0<0.12481075525283813){
     s0+=634.0;
     s1+=89.0;
    } else {
     s0+=322.0;
     s1+=1176.0;
    }
   } else {
    if(i39<0.00040179595816880465){
     s0+=93.0;
     s1+=19.0;
    } else {
     s0+=162.0;
     s1+=2098.0;
    }
   }
  }
 }
} else {
 if(i16<0.0019228286109864712){
  if(i15<0.0019188523292541504){
   if(i58<-1.6737994883442298e-06){
    s0+=279.0;
   } else {
    s1+=13.0;
   }
  } else {
   s1+=108.0;
  }
 } else {
  if(i32<0.0003808655310422182){
   s0+=38.0;
  } else {
   if(i15<3.5822391510009766e-05){
    if(i22<1.123780369758606){
     s0+=195.0;
     s1+=331.0;
    } else {
     s0+=42.0;
     s1+=1059.0;
    }
   } else {
    if(i4<4.845857620239258e-05){
     s0+=35.0;
     s1+=409.0;
    } else {
     s0+=6.0;
     s1+=9668.0;
    }
   }
  }
 }
}
if(i8<1.0562306642532349){
 if(i2<0.0005886554718017578){
  if(i8<1.041234016418457){
   if(i22<1.0428826808929443){
    if(i26<0.0002842879039235413){
     s0+=45501.0;
     s1+=44.0;
    } else {
     s0+=5826.0;
     s1+=114.0;
    }
   } else {
    if(i34<0.0009827378671616316){
     s0+=2644.0;
     s1+=523.0;
    } else {
     s0+=6004.0;
     s1+=130.0;
    }
   }
  } else {
   if(i40<0.0003097429871559143){
    if(i25<1.0073860883712769){
     s0+=1864.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=41.0;
    }
   } else {
    if(i1<0.06728628277778625){
     s0+=2483.0;
     s1+=473.0;
    } else {
     s0+=277.0;
     s1+=616.0;
    }
   }
  }
 } else {
  if(i6<-4.029407136840746e-05){
   if(i15<-0.0017271041870117188){
    if(i71<0.9326401948928833){
     s0+=1.0;
     s1+=24.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i11<1.722574234008789e-05){
     s0+=1.0;
     s1+=39.0;
    } else {
     s1+=369.0;
    }
   }
  } else {
   if(i16<0.003946023061871529){
    if(i35<1.235039234161377){
     s0+=158.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=45.0;
   }
  }
 }
} else {
 if(i4<2.7954578399658203e-05){
  if(i1<0.08518782258033752){
   if(i29<1.1013743877410889){
    if(i34<0.0007212416967377067){
     s0+=695.0;
     s1+=167.0;
    } else {
     s0+=188.0;
     s1+=347.0;
    }
   } else {
    if(i22<1.0584816932678223){
     s0+=23.0;
     s1+=23.0;
    } else {
     s0+=3974.0;
     s1+=317.0;
    }
   }
  } else {
   if(i16<0.0017946171574294567){
    if(i23<1.0497627258300781){
     s0+=12.0;
     s1+=60.0;
    } else {
     s0+=445.0;
     s1+=66.0;
    }
   } else {
    if(i49<0.00618135929107666){
     s0+=171.0;
     s1+=1536.0;
    } else {
     s0+=379.0;
     s1+=571.0;
    }
   }
  }
 } else {
  if(i37<0.023260176181793213){
   if(i24<1.003791093826294){
    if(i50<0.003725479356944561){
     s0+=249.0;
     s1+=103.0;
    } else {
     s0+=19.0;
     s1+=194.0;
    }
   } else {
    if(i41<-1.37176639327663e-05){
     s0+=95.0;
     s1+=2330.0;
    } else {
     s0+=146.0;
     s1+=161.0;
    }
   }
  } else {
   if(i53<0.0001491955335950479){
    if(i52<0.9999027252197266){
     s1+=5.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.010689892806112766){
     s0+=29.0;
     s1+=2970.0;
    } else {
     s1+=5765.0;
    }
   }
  }
 }
}
if(i7<0.0699622631072998){
 if(i2<0.0006018579006195068){
  if(i0<0.07855063676834106){
   if(i47<0.008073294535279274){
    if(i28<1.006798505783081){
     s0+=63254.0;
     s1+=843.0;
    } else {
     s0+=1632.0;
     s1+=229.0;
    }
   } else {
    if(i21<0.014129512012004852){
     s0+=1586.0;
     s1+=143.0;
    } else {
     s0+=1341.0;
     s1+=515.0;
    }
   }
  } else {
   if(i3<0.07852372527122498){
    if(i37<0.022661477327346802){
     s0+=377.0;
     s1+=4.0;
    } else {
     s0+=29.0;
     s1+=38.0;
    }
   } else {
    if(i29<1.0840110778808594){
     s0+=111.0;
    } else {
     s0+=77.0;
     s1+=784.0;
    }
   }
  }
 } else {
  if(i40<0.000233056751312688){
   if(i41<-1.6576435882598162e-05){
    s1+=3.0;
   } else {
    s0+=84.0;
   }
  } else {
   if(i16<0.001842552563175559){
    if(i4<6.598234176635742e-05){
     s0+=79.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i29<1.5682398080825806){
     s0+=47.0;
     s1+=1715.0;
    } else {
     s0+=90.0;
     s1+=114.0;
    }
   }
  }
 }
} else {
 if(i17<1.0065340995788574){
  if(i44<0.9989747405052185){
   if(i13<0.9980583190917969){
    s0+=514.0;
   } else {
    if(i67<-0.0002800698857754469){
     s1+=23.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i16<0.003581521101295948){
    if(i6<-9.422319635632448e-06){
     s0+=499.0;
     s1+=625.0;
    } else {
     s0+=757.0;
     s1+=138.0;
    }
   } else {
    if(i16<0.009591713547706604){
     s0+=376.0;
     s1+=1607.0;
    } else {
     s0+=26.0;
     s1+=1853.0;
    }
   }
  }
 } else {
  if(i2<0.00015485286712646484){
   if(i72<4.947890556650236e-05){
    if(i26<0.0012657332699745893){
     s1+=6.0;
    } else {
     s0+=56.0;
     s1+=5.0;
    }
   } else {
    if(i6<-1.4406718037207611e-05){
     s0+=2.0;
     s1+=119.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i3<0.09106087684631348){
    if(i20<1.0256197452545166){
     s0+=2.0;
     s1+=56.0;
    } else {
     s0+=21.0;
     s1+=5.0;
    }
   } else {
    if(i3<0.11150386929512024){
     s0+=16.0;
     s1+=278.0;
    } else {
     s0+=4.0;
     s1+=8135.0;
    }
   }
  }
 }
}
if(i10<0.00043508410453796387){
 if(i6<-5.754834273830056e-05){
  if(i9<1.0404529571533203){
   if(i1<0.08828938007354736){
    if(i24<1.003086805343628){
     s0+=1084.0;
     s1+=19.0;
    } else {
     s0+=37.0;
     s1+=17.0;
    }
   } else {
    if(i44<0.9969179630279541){
     s0+=13.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i11<-1.7315149307250977e-05){
    s0+=11.0;
   } else {
    if(i11<0.00032827258110046387){
     s0+=33.0;
     s1+=2057.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i21<0.018206678330898285){
   if(i20<1.0095396041870117){
    if(i57<0.025953594595193863){
     s0+=54290.0;
     s1+=386.0;
    } else {
     s0+=4430.0;
     s1+=532.0;
    }
   } else {
    if(i40<0.001197767211124301){
     s0+=205.0;
     s1+=397.0;
    } else {
     s0+=1066.0;
     s1+=49.0;
    }
   }
  } else {
   if(i3<0.0672680139541626){
    if(i12<0.9942140579223633){
     s0+=5036.0;
     s1+=44.0;
    } else {
     s0+=1815.0;
     s1+=649.0;
    }
   } else {
    if(i2<-0.0008070170879364014){
     s0+=507.0;
     s1+=62.0;
    } else {
     s0+=553.0;
     s1+=1706.0;
    }
   }
  }
 }
} else {
 if(i37<0.02638157084584236){
  if(i13<1.0027761459350586){
   if(i18<6.747245788574219e-05){
    if(i32<0.006722758524119854){
     s0+=847.0;
     s1+=504.0;
    } else {
     s0+=466.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.0004233341314829886){
     s0+=31.0;
     s1+=1.0;
    } else {
     s0+=81.0;
     s1+=863.0;
    }
   }
  } else {
   if(i32<0.008628949522972107){
    if(i8<1.059126615524292){
     s0+=82.0;
     s1+=218.0;
    } else {
     s0+=19.0;
     s1+=1575.0;
    }
   } else {
    if(i4<0.00014144182205200195){
     s0+=200.0;
     s1+=35.0;
    } else {
     s1+=166.0;
    }
   }
  }
 } else {
  if(i15<-0.003566443920135498){
   if(i62<0.0016792425885796547){
    if(i16<0.015773143619298935){
     s0+=140.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i9<0.9818251132965088){
     s0+=9.0;
     s1+=15.0;
    } else {
     s1+=72.0;
    }
   }
  } else {
   if(i5<0.9974405765533447){
    s0+=5.0;
   } else {
    if(i1<0.07535699009895325){
     s0+=12.0;
     s1+=177.0;
    } else {
     s0+=6.0;
     s1+=7690.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i7<0.07105055451393127){
  if(i0<0.08218184113502502){
   if(i26<0.00029992643976584077){
    if(i28<1.0093436241149902){
     s0+=53102.0;
     s1+=214.0;
    } else {
     s0+=79.0;
     s1+=70.0;
    }
   } else {
    if(i29<1.100754976272583){
     s0+=3548.0;
     s1+=1160.0;
    } else {
     s0+=11507.0;
     s1+=455.0;
    }
   }
  } else {
   if(i10<-0.00040477514266967773){
    if(i38<0.07034116983413696){
     s0+=341.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i36<0.044625043869018555){
     s0+=42.0;
     s1+=722.0;
    } else {
     s0+=66.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i36<0.04245692491531372){
   if(i41<6.315517566690687e-07){
    if(i16<0.0010157889919355512){
     s0+=24.0;
     s1+=9.0;
    } else {
     s0+=72.0;
     s1+=1389.0;
    }
   } else {
    if(i33<1.255998969078064){
     s0+=15.0;
     s1+=30.0;
    } else {
     s0+=36.0;
    }
   }
  } else {
   if(i21<0.02971457690000534){
    if(i15<0.00042766332626342773){
     s0+=1339.0;
     s1+=308.0;
    } else {
     s0+=67.0;
     s1+=168.0;
    }
   } else {
    if(i13<0.99855637550354){
     s0+=182.0;
     s1+=7.0;
    } else {
     s0+=201.0;
     s1+=884.0;
    }
   }
  }
 }
} else {
 if(i35<1.055294156074524){
  s0+=176.0;
 } else {
  if(i6<-4.3041054595960304e-05){
   if(i25<1.0005581378936768){
    if(i0<0.13126513361930847){
     s0+=181.0;
     s1+=534.0;
    } else {
     s0+=19.0;
     s1+=1286.0;
    }
   } else {
    if(i65<1.0030689239501953){
     s0+=7.0;
     s1+=9422.0;
    } else {
     s0+=27.0;
     s1+=162.0;
    }
   }
  } else {
   if(i44<1.000964641571045){
    if(i16<0.0027396518271416426){
     s0+=137.0;
     s1+=7.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   } else {
    if(i19<1.001981258392334){
     s0+=3.0;
    } else {
     s1+=145.0;
    }
   }
  }
 }
}
if(i1<0.07800713181495667){
 if(i4<4.178285598754883e-05){
  if(i8<1.0410068035125732){
   if(i55<0.0002564790775068104){
    if(i21<0.021742425858974457){
     s0+=49905.0;
     s1+=75.0;
    } else {
     s0+=638.0;
     s1+=65.0;
    }
   } else {
    if(i34<0.000977640855126083){
     s0+=1295.0;
     s1+=409.0;
    } else {
     s0+=7373.0;
     s1+=46.0;
    }
   }
  } else {
   if(i3<0.06547293066978455){
    if(i39<0.001998896012082696){
     s0+=4243.0;
     s1+=763.0;
    } else {
     s0+=4379.0;
     s1+=195.0;
    }
   } else {
    if(i35<1.1037919521331787){
     s0+=328.0;
     s1+=439.0;
    } else {
     s0+=641.0;
     s1+=103.0;
    }
   }
  }
 } else {
  if(i68<0.9989204406738281){
   if(i17<1.0106635093688965){
    s0+=217.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i39<0.0018248790875077248){
    if(i52<0.9989422559738159){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=747.0;
    }
   } else {
    if(i37<0.010337531566619873){
     s0+=143.0;
     s1+=35.0;
    } else {
     s0+=62.0;
     s1+=329.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00037485361099243164){
  if(i63<7.743417518213391e-05){
   if(i31<0.0021617342717945576){
    s0+=1.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i56<0.00019624768174253404){
    if(i13<0.9988789558410645){
     s0+=467.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=3.0;
    }
   } else {
    if(i17<0.9788546562194824){
     s0+=19.0;
    } else {
     s1+=7.0;
    }
   }
  }
 } else {
  if(i17<1.0071840286254883){
   if(i6<-1.4545470548910089e-05){
    if(i36<0.044514358043670654){
     s0+=37.0;
     s1+=2693.0;
    } else {
     s0+=610.0;
     s1+=1632.0;
    }
   } else {
    if(i36<0.04159802198410034){
     s0+=20.0;
     s1+=201.0;
    } else {
     s0+=704.0;
     s1+=191.0;
    }
   }
  } else {
   if(i63<0.00013836051221005619){
    if(i14<1.002190113067627){
     s0+=46.0;
    } else {
     s0+=8.0;
     s1+=150.0;
    }
   } else {
    if(i6<-1.511441860202467e-05){
     s0+=22.0;
     s1+=8966.0;
    } else {
     s0+=10.0;
    }
   }
  }
 }
}
if(i5<1.0023512840270996){
 if(i0<0.08219277858734131){
  if(i47<0.008475051261484623){
   if(i1<0.061444997787475586){
    if(i3<0.06726586818695068){
     s0+=62158.0;
     s1+=723.0;
    } else {
     s0+=96.0;
     s1+=59.0;
    }
   } else {
    if(i22<1.0448510646820068){
     s0+=2184.0;
     s1+=26.0;
    } else {
     s0+=1295.0;
     s1+=429.0;
    }
   }
  } else {
   if(i11<-7.033348083496094e-06){
    if(i12<0.9921661615371704){
     s0+=729.0;
     s1+=11.0;
    } else {
     s0+=480.0;
     s1+=69.0;
    }
   } else {
    if(i3<0.02956211566925049){
     s0+=1130.0;
     s1+=231.0;
    } else {
     s0+=486.0;
     s1+=416.0;
    }
   }
  }
 } else {
  if(i29<1.0840110778808594){
   s0+=366.0;
  } else {
   if(i10<-0.00040286779403686523){
    if(i6<-3.9341462979791686e-05){
     s0+=18.0;
     s1+=8.0;
    } else {
     s0+=420.0;
     s1+=4.0;
    }
   } else {
    if(i49<0.0034302473068237305){
     s0+=322.0;
     s1+=2303.0;
    } else {
     s0+=927.0;
     s1+=1400.0;
    }
   }
  }
 }
} else {
 if(i16<0.0018962828908115625){
  if(i6<-6.267541903071105e-05){
   s1+=102.0;
  } else {
   if(i29<1.1386182308197021){
    if(i19<1.002028465270996){
     s1+=10.0;
    } else {
     s0+=46.0;
    }
   } else {
    s0+=223.0;
   }
  }
 } else {
  if(i18<1.1861324310302734e-05){
   if(i22<1.12269127368927){
    if(i37<0.016893533989787102){
     s0+=116.0;
     s1+=99.0;
    } else {
     s0+=6.0;
     s1+=210.0;
    }
   } else {
    if(i52<1.0007736682891846){
     s0+=23.0;
     s1+=829.0;
    } else {
     s0+=8.0;
     s1+=3.0;
    }
   }
  } else {
   if(i3<0.06460526585578918){
    if(i41<-1.274665100936545e-05){
     s0+=1.0;
     s1+=326.0;
    } else {
     s0+=25.0;
     s1+=2.0;
    }
   } else {
    if(i41<-1.1564838132471777e-05){
     s0+=5.0;
     s1+=9811.0;
    } else {
     s0+=15.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08391007781028748){
  if(i51<-0.0013619065284729004){
   if(i17<0.9895645380020142){
    if(i5<1.0009572505950928){
     s0+=3290.0;
     s1+=97.0;
    } else {
     s0+=18.0;
     s1+=62.0;
    }
   } else {
    if(i31<0.0003468110226094723){
     s0+=719.0;
    } else {
     s0+=797.0;
     s1+=790.0;
    }
   }
  } else {
   if(i10<0.0006604790687561035){
    if(i22<1.048384666442871){
     s0+=53655.0;
     s1+=123.0;
    } else {
     s0+=6073.0;
     s1+=520.0;
    }
   } else {
    if(i31<0.0022069807164371014){
     s0+=32.0;
     s1+=94.0;
    } else {
     s0+=85.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i5<0.9956993460655212){
   if(i7<0.09415295720100403){
    if(i22<1.1228384971618652){
     s0+=334.0;
    } else {
     s0+=31.0;
     s1+=6.0;
    }
   } else {
    if(i64<-0.02065906673669815){
     s0+=3.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i34<0.0004493004234973341){
    if(i3<0.08909755945205688){
     s0+=42.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i58<2.2037125745555386e-05){
     s0+=30.0;
     s1+=956.0;
    } else {
     s0+=54.0;
     s1+=57.0;
    }
   }
  }
 }
} else {
 if(i31<0.005709150806069374){
  if(i24<1.0063109397888184){
   if(i68<1.0006369352340698){
    if(i32<0.0005224430351518095){
     s0+=1555.0;
     s1+=34.0;
    } else {
     s0+=1575.0;
     s1+=614.0;
    }
   } else {
    if(i60<-0.005729523953050375){
     s0+=348.0;
     s1+=128.0;
    } else {
     s0+=373.0;
     s1+=742.0;
    }
   }
  } else {
   if(i5<1.002079725265503){
    if(i33<1.1750470399856567){
     s0+=199.0;
     s1+=675.0;
    } else {
     s0+=1182.0;
     s1+=390.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s0+=5.0;
     s1+=1779.0;
    } else {
     s0+=121.0;
     s1+=263.0;
    }
   }
  }
 } else {
  if(i15<-0.0036450326442718506){
   if(i33<1.5404508113861084){
    if(i8<1.11177659034729){
     s0+=232.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i3<0.09180736541748047){
     s0+=41.0;
     s1+=21.0;
    } else {
     s0+=1.0;
     s1+=109.0;
    }
   }
  } else {
   if(i37<0.02107934281229973){
    if(i1<0.13187822699546814){
     s0+=227.0;
     s1+=98.0;
    } else {
     s0+=7.0;
     s1+=741.0;
    }
   } else {
    if(i26<0.0003509859961923212){
     s0+=10.0;
    } else {
     s0+=81.0;
     s1+=8800.0;
    }
   }
  }
 }
}
if(i3<0.08203768730163574){
 if(i15<0.0011508762836456299){
  if(i48<-0.0059767961502075195){
   if(i12<0.9928200840950012){
    if(i4<3.0875205993652344e-05){
     s0+=1443.0;
     s1+=63.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i68<1.0005381107330322){
     s0+=1722.0;
     s1+=372.0;
    } else {
     s0+=592.0;
     s1+=610.0;
    }
   }
  } else {
   if(i5<1.0024687051773071){
    if(i27<1.0067427158355713){
     s0+=63059.0;
     s1+=908.0;
    } else {
     s0+=2392.0;
     s1+=375.0;
    }
   } else {
    if(i22<1.0838924646377563){
     s0+=55.0;
     s1+=222.0;
    } else {
     s0+=88.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i15<0.0015930533409118652){
   if(i16<0.0018700207583606243){
    s0+=98.0;
   } else {
    if(i8<1.1319797039031982){
     s0+=1.0;
     s1+=132.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=368.0;
  }
 }
} else {
 if(i16<0.004670009948313236){
  if(i6<-1.3797138308291323e-05){
   if(i49<0.005449533462524414){
    if(i36<0.04848366975784302){
     s0+=51.0;
     s1+=1570.0;
    } else {
     s0+=171.0;
     s1+=351.0;
    }
   } else {
    if(i5<1.003770351409912){
     s0+=254.0;
     s1+=116.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i43<0.05810585618019104){
    if(i35<1.0670123100280762){
     s0+=61.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=187.0;
    }
   } else {
    if(i48<-0.0018727779388427734){
     s0+=56.0;
     s1+=28.0;
    } else {
     s0+=758.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i10<-0.0005024969577789307){
   s0+=99.0;
  } else {
   if(i1<0.11346906423568726){
    if(i48<0.015379160642623901){
     s0+=34.0;
     s1+=1139.0;
    } else {
     s0+=149.0;
     s1+=61.0;
    }
   } else {
    if(i3<0.12743261456489563){
     s0+=21.0;
     s1+=292.0;
    } else {
     s0+=11.0;
     s1+=10145.0;
    }
   }
  }
 }
}
if(i1<0.07911103963851929){
 if(i10<0.0005261898040771484){
  if(i8<1.0452277660369873){
   if(i59<-0.0020241141319274902){
    if(i40<0.0016630664467811584){
     s0+=1791.0;
     s1+=423.0;
    } else {
     s0+=2616.0;
     s1+=38.0;
    }
   } else {
    if(i69<0.044792290776968){
     s0+=52927.0;
     s1+=163.0;
    } else {
     s0+=4546.0;
     s1+=160.0;
    }
   }
  } else {
   if(i33<1.1037919521331787){
    if(i35<1.0596027374267578){
     s0+=813.0;
    } else {
     s0+=871.0;
     s1+=971.0;
    }
   } else {
    if(i55<0.0007209588657133281){
     s0+=4203.0;
     s1+=141.0;
    } else {
     s0+=660.0;
     s1+=198.0;
    }
   }
  }
 } else {
  if(i15<0.0006615519523620605){
   if(i15<-0.001966416835784912){
    if(i39<0.014435172080993652){
     s0+=547.0;
     s1+=44.0;
    } else {
     s0+=25.0;
     s1+=44.0;
    }
   } else {
    if(i50<0.0013971218140795827){
     s0+=321.0;
     s1+=75.0;
    } else {
     s0+=91.0;
     s1+=335.0;
    }
   }
  } else {
   if(i10<0.0005865693092346191){
    if(i31<0.002273865509778261){
     s0+=1.0;
     s1+=47.0;
    } else {
     s0+=21.0;
    }
   } else {
    s1+=576.0;
   }
  }
 }
} else {
 if(i32<0.0005139429122209549){
  if(i12<1.0009496212005615){
   if(i13<1.0004147291183472){
    if(i16<0.0032154200598597527){
     s0+=338.0;
     s1+=5.0;
    } else {
     s0+=53.0;
     s1+=34.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i51<0.002691924571990967){
    if(i45<5.739927291870117e-05){
     s0+=2.0;
    } else {
     s1+=33.0;
    }
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i10<-0.0003746151924133301){
   if(i32<0.0017664964543655515){
    s0+=275.0;
   } else {
    if(i8<1.0687800645828247){
     s0+=65.0;
     s1+=9.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i1<0.11450463533401489){
    if(i23<1.0611052513122559){
     s0+=215.0;
     s1+=1561.0;
    } else {
     s0+=499.0;
     s1+=371.0;
    }
   } else {
    if(i63<0.00023355605662800372){
     s0+=199.0;
     s1+=852.0;
    } else {
     s0+=153.0;
     s1+=10916.0;
    }
   }
  }
 }
}
if(i5<1.0024447441101074){
 if(i22<1.0495078563690186){
  if(i42<0.0002694115974009037){
   if(i48<-0.005654662847518921){
    if(i32<0.00033573637483641505){
     s0+=151.0;
    } else {
     s0+=42.0;
     s1+=30.0;
    }
   } else {
    if(i59<-0.004445940256118774){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=49503.0;
     s1+=149.0;
    }
   }
  } else {
   if(i5<1.0005744695663452){
    if(i2<-0.0007929801940917969){
     s0+=3648.0;
     s1+=14.0;
    } else {
     s0+=3020.0;
     s1+=204.0;
    }
   } else {
    if(i33<1.066338062286377){
     s0+=87.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i2<0.0001690983772277832){
   if(i70<0.029567517340183258){
    if(i3<0.088969886302948){
     s0+=5441.0;
     s1+=285.0;
    } else {
     s0+=93.0;
     s1+=238.0;
    }
   } else {
    if(i35<1.1040674448013306){
     s0+=897.0;
     s1+=1224.0;
    } else {
     s0+=6408.0;
     s1+=1517.0;
    }
   }
  } else {
   if(i1<0.09905463457107544){
    if(i54<-0.03538030385971069){
     s0+=65.0;
     s1+=207.0;
    } else {
     s0+=1051.0;
     s1+=547.0;
    }
   } else {
    if(i49<0.005079478025436401){
     s0+=25.0;
     s1+=996.0;
    } else {
     s0+=173.0;
     s1+=460.0;
    }
   }
  }
 }
} else {
 if(i3<0.057687729597091675){
  if(i47<0.005405447445809841){
   if(i35<1.1270583868026733){
    if(i31<0.0003200135543011129){
     s0+=9.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i9<1.0052375793457031){
     s1+=1.0;
    } else {
     s0+=167.0;
     s1+=2.0;
    }
   }
  } else {
   if(i49<-0.0032837390899658203){
    if(i55<-0.00018030301725957543){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=227.0;
    }
   } else {
    if(i30<1.2280436754226685){
     s1+=111.0;
    } else {
     s0+=65.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i3<0.1285688281059265){
   if(i46<0.003666996955871582){
    if(i16<0.0016338566783815622){
     s0+=17.0;
     s1+=33.0;
    } else {
     s0+=21.0;
     s1+=1680.0;
    }
   } else {
    if(i33<1.2314128875732422){
     s1+=35.0;
    } else {
     s0+=112.0;
     s1+=12.0;
    }
   }
  } else {
   if(i21<0.0012295146007090807){
    if(i6<-0.00012625227100215852){
     s1+=13.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.17276901006698608){
     s0+=18.0;
     s1+=1092.0;
    } else {
     s1+=8021.0;
    }
   }
  }
 }
}
if(i7<0.07131022214889526){
 if(i5<1.0024685859680176){
  if(i8<1.0449585914611816){
   if(i26<0.0002695050206966698){
    if(i62<0.0011659114388749003){
     s0+=50336.0;
     s1+=104.0;
    } else {
     s0+=61.0;
     s1+=30.0;
    }
   } else {
    if(i39<0.0016952457372099161){
     s0+=4094.0;
     s1+=653.0;
    } else {
     s0+=7268.0;
     s1+=57.0;
    }
   }
  } else {
   if(i21<0.021851561963558197){
    if(i15<0.0011252760887145996){
     s0+=5833.0;
     s1+=685.0;
    } else {
     s0+=13.0;
     s1+=136.0;
    }
   } else {
    if(i35<1.196009874343872){
     s0+=290.0;
     s1+=871.0;
    } else {
     s0+=901.0;
     s1+=196.0;
    }
   }
  }
 } else {
  if(i29<1.2392117977142334){
   if(i32<0.00032861001091077924){
    s0+=7.0;
   } else {
    if(i16<0.0004021941276732832){
     s0+=5.0;
    } else {
     s1+=1207.0;
    }
   }
  } else {
   if(i47<0.005921572912484407){
    if(i37<0.014385398477315903){
     s0+=190.0;
     s1+=6.0;
    } else {
     s0+=6.0;
     s1+=32.0;
    }
   } else {
    if(i16<0.004079868085682392){
     s0+=32.0;
     s1+=7.0;
    } else {
     s0+=32.0;
     s1+=631.0;
    }
   }
  }
 }
} else {
 if(i0<0.12121999263763428){
  if(i36<0.04215243458747864){
   if(i11<-1.5139579772949219e-05){
    s0+=23.0;
   } else {
    if(i59<0.006912738084793091){
     s0+=39.0;
     s1+=933.0;
    } else {
     s0+=59.0;
     s1+=39.0;
    }
   }
  } else {
   if(i12<1.001098871231079){
    if(i40<0.0014950428158044815){
     s0+=392.0;
     s1+=169.0;
    } else {
     s0+=772.0;
     s1+=33.0;
    }
   } else {
    if(i48<0.015075862407684326){
     s0+=37.0;
     s1+=179.0;
    } else {
     s0+=80.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i10<-0.0004056096076965332){
   if(i11<-2.0772218704223633e-05){
    s0+=218.0;
   } else {
    if(i38<0.10057583451271057){
     s1+=5.0;
    } else {
     s0+=11.0;
    }
   }
  } else {
   if(i6<-2.2307662220555358e-05){
    if(i18<-1.806020736694336e-05){
     s0+=120.0;
     s1+=1644.0;
    } else {
     s0+=35.0;
     s1+=9140.0;
    }
   } else {
    if(i54<0.12840574979782104){
     s0+=85.0;
     s1+=322.0;
    } else {
     s0+=177.0;
     s1+=51.0;
    }
   }
  }
 }
}
if(i1<0.07742848992347717){
 if(i4<4.175305366516113e-05){
  if(i57<0.02623825892806053){
   if(i48<-0.010821789503097534){
    if(i30<1.1800893545150757){
     s0+=163.0;
     s1+=143.0;
    } else {
     s0+=157.0;
     s1+=12.0;
    }
   } else {
    if(i24<1.0079002380371094){
     s0+=56656.0;
     s1+=410.0;
    } else {
     s0+=264.0;
     s1+=203.0;
    }
   }
  } else {
   if(i31<0.0008593568345531821){
    if(i34<0.0005022959085181355){
     s0+=1872.0;
     s1+=87.0;
    } else {
     s0+=673.0;
     s1+=871.0;
    }
   } else {
    if(i30<1.185624122619629){
     s0+=1083.0;
     s1+=213.0;
    } else {
     s0+=7746.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i52<0.9990686178207397){
   s0+=212.0;
  } else {
   if(i12<1.0048996210098267){
    if(i56<-7.4073213909287006e-06){
     s0+=72.0;
     s1+=1.0;
    } else {
     s0+=156.0;
     s1+=312.0;
    }
   } else {
    if(i41<-1.4078847016207874e-05){
     s0+=7.0;
     s1+=761.0;
    } else {
     s0+=33.0;
     s1+=24.0;
    }
   }
  }
 }
} else {
 if(i16<0.004803019110113382){
  if(i12<1.001331090927124){
   if(i61<0.03651905059814453){
    if(i23<1.065003752708435){
     s0+=149.0;
     s1+=779.0;
    } else {
     s0+=334.0;
     s1+=168.0;
    }
   } else {
    if(i6<-9.719109584693797e-06){
     s0+=356.0;
     s1+=157.0;
    } else {
     s0+=571.0;
     s1+=36.0;
    }
   }
  } else {
   if(i51<0.003518223762512207){
    if(i61<0.04136312007904053){
     s0+=25.0;
     s1+=1128.0;
    } else {
     s0+=42.0;
     s1+=103.0;
    }
   } else {
    if(i62<-0.0004155861970502883){
     s0+=2.0;
     s1+=78.0;
    } else {
     s0+=94.0;
     s1+=36.0;
    }
   }
  }
 } else {
  if(i67<-0.0001178065431304276){
   if(i15<0.00015038251876831055){
    if(i19<0.995947003364563){
     s0+=85.0;
     s1+=113.0;
    } else {
     s0+=52.0;
     s1+=1912.0;
    }
   } else {
    if(i15<0.00025725364685058594){
     s0+=3.0;
     s1+=125.0;
    } else {
     s1+=8619.0;
    }
   }
  } else {
   if(i54<0.04973876476287842){
    if(i5<0.9933801889419556){
     s0+=17.0;
    } else {
     s0+=4.0;
     s1+=528.0;
    }
   } else {
    if(i3<0.11886149644851685){
     s0+=146.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=245.0;
    }
   }
  }
 }
}
if(i2<0.0005493760108947754){
 if(i21<0.022396303713321686){
  if(i28<1.0081018209457397){
   if(i40<0.0003125217044726014){
    if(i27<1.0075448751449585){
     s0+=47178.0;
     s1+=49.0;
    } else {
     s0+=74.0;
     s1+=10.0;
    }
   } else {
    if(i1<0.0755453109741211){
     s0+=14107.0;
     s1+=805.0;
    } else {
     s0+=603.0;
     s1+=398.0;
    }
   }
  } else {
   if(i33<1.1040980815887451){
    if(i5<1.000659704208374){
     s0+=341.0;
     s1+=161.0;
    } else {
     s0+=13.0;
     s1+=407.0;
    }
   } else {
    if(i14<1.0148649215698242){
     s0+=1478.0;
     s1+=43.0;
    } else {
     s0+=110.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i22<1.0447213649749756){
   if(i18<-0.00022485852241516113){
    s0+=3017.0;
   } else {
    if(i58<1.5163634998316411e-05){
     s0+=285.0;
     s1+=17.0;
    } else {
     s0+=114.0;
     s1+=42.0;
    }
   }
  } else {
   if(i1<0.06301158666610718){
    if(i34<0.0011175491381436586){
     s0+=89.0;
     s1+=402.0;
    } else {
     s0+=2516.0;
     s1+=213.0;
    }
   } else {
    if(i66<1.6597305148025043e-06){
     s0+=589.0;
     s1+=2679.0;
    } else {
     s0+=206.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i35<1.055294156074524){
  s0+=162.0;
 } else {
  if(i4<6.216764450073242e-05){
   if(i16<0.002234978135675192){
    if(i58<-1.8208922938356409e-06){
     s0+=153.0;
     s1+=1.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i13<1.0020301342010498){
     s0+=15.0;
     s1+=1073.0;
    } else {
     s0+=115.0;
     s1+=437.0;
    }
   }
  } else {
   if(i2<0.001293778419494629){
    if(i19<0.9975157976150513){
     s0+=22.0;
     s1+=22.0;
    } else {
     s0+=66.0;
     s1+=1302.0;
    }
   } else {
    if(i32<0.010722910985350609){
     s0+=6.0;
     s1+=7196.0;
    } else {
     s0+=33.0;
     s1+=1544.0;
    }
   }
  }
 }
}
if(i2<0.0005473494529724121){
 if(i16<0.004359345883131027){
  if(i42<0.0003506275825202465){
   if(i3<0.08860483765602112){
    if(i46<-0.002148270606994629){
     s0+=294.0;
     s1+=80.0;
    } else {
     s0+=55478.0;
     s1+=457.0;
    }
   } else {
    if(i12<0.9934730529785156){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=174.0;
    }
   }
  } else {
   if(i21<0.034086890518665314){
    if(i1<0.07743781805038452){
     s0+=6132.0;
     s1+=640.0;
    } else {
     s0+=1003.0;
     s1+=725.0;
    }
   } else {
    if(i33<1.253311276435852){
     s0+=129.0;
     s1+=666.0;
    } else {
     s0+=625.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i3<0.07615900039672852){
   if(i25<1.0047980546951294){
    if(i5<0.9992858171463013){
     s0+=5979.0;
     s1+=213.0;
    } else {
     s0+=279.0;
     s1+=222.0;
    }
   } else {
    if(i41<-2.846269353540265e-06){
     s0+=4.0;
     s1+=118.0;
    } else {
     s0+=89.0;
    }
   }
  } else {
   if(i52<1.0003693103790283){
    if(i2<-0.0007793307304382324){
     s0+=164.0;
     s1+=124.0;
    } else {
     s0+=92.0;
     s1+=1964.0;
    }
   } else {
    if(i20<1.0166574716567993){
     s0+=128.0;
     s1+=37.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
} else {
 if(i30<1.0624027252197266){
  s0+=195.0;
 } else {
  if(i7<0.05818217992782593){
   if(i29<1.2392117977142334){
    s1+=895.0;
   } else {
    if(i46<-0.0018979907035827637){
     s0+=36.0;
     s1+=392.0;
    } else {
     s0+=214.0;
     s1+=42.0;
    }
   }
  } else {
   if(i67<-0.0005532365175895393){
    if(i19<0.9966002702713013){
     s0+=7.0;
     s1+=124.0;
    } else {
     s1+=7231.0;
    }
   } else {
    if(i19<0.9977816343307495){
     s0+=28.0;
     s1+=12.0;
    } else {
     s0+=165.0;
     s1+=2944.0;
    }
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i22<1.0495078563690186){
  if(i51<-0.0013626515865325928){
   if(i39<0.0003915386332664639){
    if(i31<0.0003681200323626399){
     s0+=790.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=7.0;
    }
   } else {
    if(i70<0.062151066958904266){
     s0+=211.0;
     s1+=212.0;
    } else {
     s0+=759.0;
     s1+=31.0;
    }
   }
  } else {
   if(i24<1.0073578357696533){
    if(i22<1.0485899448394775){
     s0+=54125.0;
     s1+=148.0;
    } else {
     s0+=480.0;
     s1+=53.0;
    }
   } else {
    if(i72<0.00014437438221648335){
     s1+=20.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i1<0.06939592957496643){
   if(i39<0.0016373794060200453){
    if(i55<0.0002751906868070364){
     s0+=3712.0;
     s1+=643.0;
    } else {
     s0+=167.0;
     s1+=517.0;
    }
   } else {
    if(i49<-0.0028837919235229492){
     s0+=1031.0;
     s1+=199.0;
    } else {
     s0+=7143.0;
     s1+=137.0;
    }
   }
  } else {
   if(i16<0.0016067450633272529){
    if(i43<0.044997841119766235){
     s0+=20.0;
     s1+=123.0;
    } else {
     s0+=724.0;
     s1+=131.0;
    }
   } else {
    if(i10<-0.00037485361099243164){
     s0+=337.0;
     s1+=13.0;
    } else {
     s0+=828.0;
     s1+=3419.0;
    }
   }
  }
 }
} else {
 if(i29<1.082350254058838){
  s0+=307.0;
 } else {
  if(i1<0.05852234363555908){
   if(i35<1.1345939636230469){
    if(i5<1.000476598739624){
     s0+=13.0;
    } else {
     s1+=409.0;
    }
   } else {
    if(i19<1.0059183835983276){
     s0+=191.0;
     s1+=52.0;
    } else {
     s0+=39.0;
     s1+=159.0;
    }
   }
  } else {
   if(i4<5.692243576049805e-05){
    if(i37<0.012030016630887985){
     s0+=90.0;
     s1+=181.0;
    } else {
     s0+=32.0;
     s1+=848.0;
    }
   } else {
    if(i0<0.12644582986831665){
     s0+=58.0;
     s1+=1176.0;
    } else {
     s0+=12.0;
     s1+=8693.0;
    }
   }
  }
 }
}
if(i0<0.08523821830749512){
 if(i5<1.002474308013916){
  if(i49<-0.00246506929397583){
   if(i11<-7.033348083496094e-06){
    if(i8<1.3906927108764648){
     s0+=1050.0;
     s1+=48.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i65<0.9998315572738647){
     s0+=205.0;
     s1+=283.0;
    } else {
     s0+=975.0;
     s1+=243.0;
    }
   }
  } else {
   if(i26<0.0002805505646392703){
    if(i15<0.0005972981452941895){
     s0+=51263.0;
     s1+=209.0;
    } else {
     s0+=867.0;
     s1+=54.0;
    }
   } else {
    if(i31<0.0009329227032139897){
     s0+=4221.0;
     s1+=1013.0;
    } else {
     s0+=10501.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i5<1.0041494369506836){
   if(i56<-1.2232029803271871e-05){
    if(i16<0.0033557915594428778){
     s0+=124.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i39<0.0020968206226825714){
     s0+=1.0;
     s1+=252.0;
    } else {
     s0+=97.0;
     s1+=88.0;
    }
   }
  } else {
   if(i61<0.033305823802948){
    if(i49<0.0026580989360809326){
     s0+=12.0;
     s1+=681.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i41<-3.949738311348483e-05){
     s1+=4.0;
    } else {
     s0+=7.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i16<0.004687285050749779){
  if(i54<0.06959801912307739){
   if(i12<0.9904919862747192){
    if(i2<-0.0006174445152282715){
     s0+=314.0;
     s1+=8.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i59<0.006279945373535156){
     s0+=212.0;
     s1+=1887.0;
    } else {
     s0+=198.0;
     s1+=171.0;
    }
   }
  } else {
   if(i1<0.25353968143463135){
    if(i56<-4.249158519087359e-05){
     s1+=13.0;
    } else {
     s0+=693.0;
     s1+=61.0;
    }
   } else {
    if(i31<0.003785157110542059){
     s0+=146.0;
    } else {
     s0+=7.0;
     s1+=132.0;
    }
   }
  }
 } else {
  if(i15<-0.0009302496910095215){
   if(i16<0.008571449667215347){
    if(i11<-1.3440847396850586e-05){
     s0+=88.0;
     s1+=3.0;
    } else {
     s0+=134.0;
     s1+=277.0;
    }
   } else {
    if(i18<-0.0006074011325836182){
     s0+=12.0;
     s1+=60.0;
    } else {
     s0+=17.0;
     s1+=948.0;
    }
   }
  } else {
   if(i13<0.9981372952461243){
    s0+=21.0;
   } else {
    if(i0<0.1273268461227417){
     s0+=26.0;
     s1+=1129.0;
    } else {
     s0+=9.0;
     s1+=9175.0;
    }
   }
  }
 }
}
if(i28<1.0088279247283936){
 if(i3<0.081397145986557){
  if(i11<2.0802021026611328e-05){
   if(i8<1.0401363372802734){
    if(i21<0.013248266652226448){
     s0+=48376.0;
     s1+=202.0;
    } else {
     s0+=9958.0;
     s1+=302.0;
    }
   } else {
    if(i3<0.06584718823432922){
     s0+=7824.0;
     s1+=838.0;
    } else {
     s0+=633.0;
     s1+=341.0;
    }
   }
  } else {
   if(i47<0.0074917227029800415){
    if(i24<1.001544713973999){
     s0+=809.0;
     s1+=82.0;
    } else {
     s0+=98.0;
     s1+=157.0;
    }
   } else {
    if(i2<0.00018846988677978516){
     s0+=75.0;
     s1+=27.0;
    } else {
     s0+=44.0;
     s1+=495.0;
    }
   }
  }
 } else {
  if(i4<-3.9458274841308594e-05){
   if(i52<0.9996256828308105){
    s0+=282.0;
   } else {
    if(i67<4.8732254072092474e-05){
     s0+=82.0;
     s1+=149.0;
    } else {
     s0+=72.0;
     s1+=4.0;
    }
   }
  } else {
   if(i54<0.058271706104278564){
    if(i33<1.0724589824676514){
     s0+=39.0;
     s1+=2.0;
    } else {
     s0+=80.0;
     s1+=2732.0;
    }
   } else {
    if(i0<0.13423779606819153){
     s0+=344.0;
     s1+=50.0;
    } else {
     s0+=57.0;
     s1+=633.0;
    }
   }
  }
 }
} else {
 if(i34<0.006444079801440239){
  if(i25<1.0068162679672241){
   if(i16<0.003602120094001293){
    if(i40<0.0010153716430068016){
     s0+=168.0;
     s1+=104.0;
    } else {
     s0+=880.0;
     s1+=49.0;
    }
   } else {
    if(i10<-0.00026419758796691895){
     s0+=125.0;
     s1+=3.0;
    } else {
     s0+=96.0;
     s1+=558.0;
    }
   }
  } else {
   if(i6<-3.572399145923555e-05){
    if(i0<0.06353455781936646){
     s0+=130.0;
     s1+=130.0;
    } else {
     s0+=50.0;
     s1+=2580.0;
    }
   } else {
    if(i33<1.1108002662658691){
     s0+=72.0;
     s1+=160.0;
    } else {
     s0+=811.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i3<0.11728966236114502){
   if(i49<-0.002845466136932373){
    if(i6<-6.467907223850489e-05){
     s1+=29.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i21<0.03917478770017624){
     s0+=36.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i3<0.16414329409599304){
    if(i12<1.006252646446228){
     s0+=22.0;
     s1+=19.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i16<0.0017963232239708304){
     s0+=5.0;
     s1+=25.0;
    } else {
     s1+=7244.0;
    }
   }
  }
 }
}
if(i18<0.00011593103408813477){
 if(i21<0.022730395197868347){
  if(i11<1.9490718841552734e-05){
   if(i8<1.045206069946289){
    if(i3<0.08879652619361877){
     s0+=56624.0;
     s1+=534.0;
    } else {
     s0+=51.0;
     s1+=71.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=1772.0;
     s1+=660.0;
    } else {
     s0+=4395.0;
     s1+=399.0;
    }
   }
  } else {
   if(i4<4.035234451293945e-05){
    if(i16<0.015013397671282291){
     s0+=594.0;
     s1+=107.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i45<0.00023621320724487305){
     s0+=106.0;
     s1+=53.0;
    } else {
     s0+=65.0;
     s1+=292.0;
    }
   }
  }
 } else {
  if(i0<0.07763394713401794){
   if(i5<0.997406005859375){
    if(i30<1.1063789129257202){
     s0+=226.0;
     s1+=43.0;
    } else {
     s0+=4620.0;
     s1+=47.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=330.0;
     s1+=563.0;
    } else {
     s0+=677.0;
     s1+=297.0;
    }
   }
  } else {
   if(i13<0.9985849857330322){
    if(i5<0.9968692064285278){
     s0+=280.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i3<0.11021235585212708){
     s0+=285.0;
     s1+=766.0;
    } else {
     s0+=184.0;
     s1+=3211.0;
    }
   }
  }
 }
} else {
 if(i5<1.0001797676086426){
  if(i10<-0.00015869736671447754){
   s0+=328.0;
  } else {
   s1+=4.0;
  }
 } else {
  if(i0<0.0602172315120697){
   if(i41<-1.4594285858038347e-05){
    s1+=204.0;
   } else {
    if(i54<-0.03347587585449219){
     s0+=3.0;
     s1+=16.0;
    } else {
     s0+=407.0;
    }
   }
  } else {
   if(i31<0.0038607800379395485){
    if(i34<0.003546015592291951){
     s0+=15.0;
     s1+=1922.0;
    } else {
     s0+=80.0;
     s1+=245.0;
    }
   } else {
    if(i42<0.00011374129826435819){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=7728.0;
    }
   }
  }
 }
}
if(i3<0.0806320309638977){
 if(i2<0.0006018579006195068){
  if(i54<-0.027904421091079712){
   if(i34<0.000336850353050977){
    if(i13<1.0005580186843872){
     s0+=685.0;
    } else {
     s0+=8.0;
     s1+=3.0;
    }
   } else {
    if(i11<-1.341104507446289e-05){
     s0+=682.0;
     s1+=19.0;
    } else {
     s0+=1085.0;
     s1+=617.0;
    }
   }
  } else {
   if(i26<0.0002811383455991745){
    if(i5<1.0025451183319092){
     s0+=51920.0;
     s1+=211.0;
    } else {
     s0+=29.0;
     s1+=29.0;
    }
   } else {
    if(i8<1.0376065969467163){
     s0+=8174.0;
     s1+=268.0;
    } else {
     s0+=6420.0;
     s1+=917.0;
    }
   }
  }
 } else {
  if(i2<0.0009858012199401855){
   if(i55<9.323248377768323e-06){
    if(i56<-2.8233062039362267e-06){
     s0+=153.0;
     s1+=9.0;
    } else {
     s0+=17.0;
     s1+=45.0;
    }
   } else {
    if(i32<0.006674924865365028){
     s0+=37.0;
     s1+=207.0;
    } else {
     s0+=57.0;
     s1+=28.0;
    }
   }
  } else {
   if(i33<1.613681674003601){
    if(i52<1.000784158706665){
     s0+=16.0;
     s1+=626.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i52<1.000288963317871){
     s0+=24.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i15<0.0005041360855102539){
  if(i13<0.9980583190917969){
   if(i15<-0.003141850233078003){
    if(i62<0.001359907677397132){
     s0+=14.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    s0+=452.0;
   }
  } else {
   if(i37<0.023497754707932472){
    if(i43<0.057210057973861694){
     s0+=70.0;
     s1+=982.0;
    } else {
     s0+=992.0;
     s1+=573.0;
    }
   } else {
    if(i6<-1.2537288057501428e-05){
     s0+=59.0;
     s1+=2667.0;
    } else {
     s0+=111.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i66<6.716699658682046e-07){
   if(i37<0.01171143352985382){
    if(i64<-0.030794460326433182){
     s0+=36.0;
     s1+=15.0;
    } else {
     s0+=40.0;
     s1+=1077.0;
    }
   } else {
    if(i32<0.0005846964777447283){
     s0+=13.0;
     s1+=14.0;
    } else {
     s0+=7.0;
     s1+=8694.0;
    }
   }
  } else {
   if(i71<1.0294535160064697){
    s1+=1.0;
   } else {
    s0+=12.0;
   }
  }
 }
}
if(i42<0.00032823189394548535){
 if(i2<0.0006328225135803223){
  if(i1<0.08264473080635071){
   if(i35<1.0598037242889404){
    if(i46<-0.002459794282913208){
     s0+=60.0;
     s1+=6.0;
    } else {
     s0+=42153.0;
     s1+=2.0;
    }
   } else {
    if(i33<1.103413462638855){
     s0+=2475.0;
     s1+=702.0;
    } else {
     s0+=12873.0;
     s1+=89.0;
    }
   }
  } else {
   if(i10<-0.0001996457576751709){
    if(i50<-0.0010607485892251134){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=94.0;
     s1+=1.0;
    }
   } else {
    if(i29<1.0821808576583862){
     s0+=9.0;
    } else {
     s0+=11.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i41<-1.4617302440456115e-05){
   if(i23<1.0168652534484863){
    if(i68<1.011017918586731){
     s1+=94.0;
    } else {
     s0+=1.0;
    }
   } else {
    s1+=556.0;
   }
  } else {
   if(i55<5.233301635598764e-05){
    if(i6<-4.457918839761987e-05){
     s1+=11.0;
    } else {
     s0+=138.0;
     s1+=7.0;
    }
   } else {
    s1+=17.0;
   }
  }
 }
} else {
 if(i0<0.08683967590332031){
  if(i5<1.0012831687927246){
   if(i17<0.988197922706604){
    if(i49<-0.002307027578353882){
     s0+=683.0;
     s1+=137.0;
    } else {
     s0+=5615.0;
     s1+=38.0;
    }
   } else {
    if(i45<-3.4183263778686523e-05){
     s0+=2003.0;
     s1+=117.0;
    } else {
     s0+=2884.0;
     s1+=1011.0;
    }
   }
  } else {
   if(i16<0.002839022781699896){
    if(i35<1.0922304391860962){
     s0+=6.0;
     s1+=68.0;
    } else {
     s0+=211.0;
     s1+=34.0;
    }
   } else {
    if(i46<0.002915322780609131){
     s0+=104.0;
     s1+=880.0;
    } else {
     s0+=72.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i6<-1.3532627235690597e-05){
   if(i6<-4.5561682782135904e-05){
    if(i65<1.0007615089416504){
     s0+=66.0;
     s1+=10118.0;
    } else {
     s0+=159.0;
     s1+=1525.0;
    }
   } else {
    if(i9<1.0908386707305908){
     s0+=152.0;
     s1+=861.0;
    } else {
     s0+=268.0;
     s1+=379.0;
    }
   }
  } else {
   if(i43<0.062330424785614014){
    if(i13<0.9981119632720947){
     s0+=103.0;
    } else {
     s0+=28.0;
     s1+=197.0;
    }
   } else {
    if(i55<0.0011891232570633292){
     s0+=789.0;
     s1+=109.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i2<0.000546872615814209){
 if(i0<0.08580896258354187){
  if(i46<-0.001616358757019043){
   if(i5<0.996727705001831){
    if(i0<0.05210888385772705){
     s0+=1585.0;
     s1+=32.0;
    } else {
     s0+=76.0;
     s1+=33.0;
    }
   } else {
    if(i56<3.114354331046343e-05){
     s0+=1397.0;
     s1+=142.0;
    } else {
     s0+=676.0;
     s1+=568.0;
    }
   }
  } else {
   if(i42<0.00029555667424574494){
    if(i20<1.0115966796875){
     s0+=55263.0;
     s1+=412.0;
    } else {
     s0+=77.0;
     s1+=88.0;
    }
   } else {
    if(i30<1.103413462638855){
     s0+=2644.0;
     s1+=696.0;
    } else {
     s0+=6953.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i44<0.9990403652191162){
   if(i32<0.010979468934237957){
    if(i66<-2.984688990181894e-06){
     s0+=30.0;
     s1+=9.0;
    } else {
     s0+=585.0;
    }
   } else {
    s1+=9.0;
   }
  } else {
   if(i46<0.00444483757019043){
    if(i32<0.0004494989407248795){
     s0+=64.0;
     s1+=10.0;
    } else {
     s0+=211.0;
     s1+=2330.0;
    }
   } else {
    if(i57<0.07065478712320328){
     s0+=577.0;
     s1+=307.0;
    } else {
     s0+=285.0;
     s1+=720.0;
    }
   }
  }
 }
} else {
 if(i31<0.0003575787995941937){
  s0+=156.0;
 } else {
  if(i6<-4.3521460611373186e-05){
   if(i37<0.021998438984155655){
    if(i29<1.5682398080825806){
     s0+=75.0;
     s1+=2519.0;
    } else {
     s0+=176.0;
     s1+=96.0;
    }
   } else {
    if(i3<0.0806279182434082){
     s0+=5.0;
     s1+=213.0;
    } else {
     s0+=1.0;
     s1+=8581.0;
    }
   }
  } else {
   if(i0<0.060438960790634155){
    if(i66<-5.148723630554741e-06){
     s0+=1.0;
     s1+=38.0;
    } else {
     s0+=121.0;
    }
   } else {
    if(i8<1.0834310054779053){
     s0+=7.0;
     s1+=222.0;
    } else {
     s0+=57.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i6<-7.396280852844939e-05){
 if(i5<0.9987552165985107){
  if(i8<1.0686445236206055){
   if(i9<0.9529602527618408){
    s1+=8.0;
   } else {
    if(i49<-0.004615455865859985){
     s0+=25.0;
     s1+=5.0;
    } else {
     s0+=645.0;
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.0043228864669799805){
    if(i62<0.00505906343460083){
     s1+=3.0;
    } else {
     s0+=25.0;
    }
   } else {
    if(i45<0.00043332576751708984){
     s1+=148.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i15<-0.0025231242179870605){
   if(i63<0.00165446731261909){
    if(i5<1.0050063133239746){
     s0+=166.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i5<0.9989020824432373){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=129.0;
    }
   }
  } else {
   if(i7<0.006862014532089233){
    if(i18<-0.00012218952178955078){
     s0+=56.0;
     s1+=14.0;
    } else {
     s0+=3.0;
     s1+=57.0;
    }
   } else {
    if(i14<1.0154027938842773){
     s0+=146.0;
     s1+=2999.0;
    } else {
     s1+=8134.0;
    }
   }
  }
 }
} else {
 if(i8<1.0452215671539307){
  if(i55<0.00025178759824484587){
   if(i22<1.0483907461166382){
    if(i71<1.0207924842834473){
     s0+=48813.0;
     s1+=51.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i16<0.0043425895273685455){
     s0+=3639.0;
     s1+=172.0;
    } else {
     s0+=70.0;
     s1+=108.0;
    }
   }
  } else {
   if(i30<1.1792536973953247){
    if(i32<0.0003819827106781304){
     s0+=1147.0;
     s1+=1.0;
    } else {
     s0+=1409.0;
     s1+=810.0;
    }
   } else {
    if(i3<0.09448733925819397){
     s0+=6278.0;
     s1+=33.0;
    } else {
     s1+=29.0;
    }
   }
  }
 } else {
  if(i13<0.9988496899604797){
   if(i65<0.9998564720153809){
    if(i53<0.001632973551750183){
     s0+=1540.0;
    } else {
     s0+=495.0;
     s1+=27.0;
    }
   } else {
    if(i25<0.9878502488136292){
     s0+=55.0;
     s1+=74.0;
    } else {
     s0+=290.0;
     s1+=1.0;
    }
   }
  } else {
   if(i65<0.9998034238815308){
    if(i0<0.0691332221031189){
     s0+=818.0;
     s1+=404.0;
    } else {
     s0+=355.0;
     s1+=1887.0;
    }
   } else {
    if(i16<0.003313670167699456){
     s0+=4150.0;
     s1+=567.0;
    } else {
     s0+=827.0;
     s1+=1620.0;
    }
   }
  }
 }
}
if(i16<0.0048222048208117485){
 if(i3<0.07909071445465088){
  if(i5<1.0041816234588623){
   if(i46<-0.0019232332706451416){
    if(i19<1.000601053237915){
     s0+=2203.0;
     s1+=387.0;
    } else {
     s0+=97.0;
     s1+=189.0;
    }
   } else {
    if(i29<1.0850647687911987){
     s0+=37322.0;
    } else {
     s0+=24133.0;
     s1+=999.0;
    }
   }
  } else {
   s1+=190.0;
  }
 } else {
  if(i6<-1.3797138308291323e-05){
   if(i33<1.1819204092025757){
    if(i63<0.0006376564269885421){
     s0+=26.0;
     s1+=1349.0;
    } else {
     s0+=55.0;
     s1+=95.0;
    }
   } else {
    if(i43<0.048618972301483154){
     s0+=15.0;
     s1+=440.0;
    } else {
     s0+=468.0;
     s1+=387.0;
    }
   }
  } else {
   if(i59<-0.004213452339172363){
    if(i44<0.9992887377738953){
     s0+=74.0;
    } else {
     s0+=34.0;
     s1+=129.0;
    }
   } else {
    if(i52<1.0000555515289307){
     s0+=886.0;
     s1+=120.0;
    } else {
     s0+=68.0;
     s1+=62.0;
    }
   }
  }
 }
} else {
 if(i0<0.07731208205223083){
  if(i13<1.0009799003601074){
   if(i30<1.139695405960083){
    if(i26<0.00027047243202105165){
     s0+=341.0;
     s1+=15.0;
    } else {
     s0+=65.0;
     s1+=147.0;
    }
   } else {
    if(i5<0.9977926015853882){
     s0+=3792.0;
     s1+=27.0;
    } else {
     s0+=196.0;
     s1+=64.0;
    }
   }
  } else {
   if(i58<1.170568611996714e-05){
    if(i33<1.5942578315734863){
     s0+=14.0;
     s1+=560.0;
    } else {
     s0+=43.0;
     s1+=20.0;
    }
   } else {
    if(i50<0.013843043707311153){
     s0+=744.0;
     s1+=98.0;
    } else {
     s0+=29.0;
     s1+=106.0;
    }
   }
  }
 } else {
  if(i11<-1.6897916793823242e-05){
   if(i10<-0.0005276501178741455){
    s0+=117.0;
   } else {
    if(i45<-0.00010961294174194336){
     s0+=3.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i12<0.9927045106887817){
    if(i9<1.0656919479370117){
     s0+=148.0;
     s1+=53.0;
    } else {
     s0+=14.0;
     s1+=419.0;
    }
   } else {
    if(i37<0.017093421891331673){
     s0+=139.0;
     s1+=1279.0;
    } else {
     s0+=27.0;
     s1+=10062.0;
    }
   }
  }
 }
}
if(i3<0.08202600479125977){
 if(i2<0.0006018579006195068){
  if(i69<0.04518917202949524){
   if(i20<1.011369228363037){
    if(i20<0.9723231792449951){
     s0+=55.0;
     s1+=49.0;
    } else {
     s0+=56021.0;
     s1+=531.0;
    }
   } else {
    if(i51<0.0016041994094848633){
     s0+=8.0;
     s1+=74.0;
    } else {
     s0+=103.0;
     s1+=24.0;
    }
   }
  } else {
   if(i3<0.05893096327781677){
    if(i39<0.0020242927130311728){
     s0+=3721.0;
     s1+=614.0;
    } else {
     s0+=7193.0;
     s1+=167.0;
    }
   } else {
    if(i39<0.0020226254127919674){
     s0+=643.0;
     s1+=537.0;
    } else {
     s0+=1214.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i51<0.00213015079498291){
   if(i16<0.0018386936280876398){
    if(i4<0.00010925531387329102){
     s0+=124.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i12<1.0008896589279175){
     s0+=106.0;
     s1+=113.0;
    } else {
     s0+=29.0;
     s1+=808.0;
    }
   }
  } else {
   if(i5<1.0046286582946777){
    if(i4<4.4405460357666016e-05){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=102.0;
    }
   } else {
    s1+=5.0;
   }
  }
 }
} else {
 if(i44<0.9988040328025818){
  if(i16<0.01206178031861782){
   if(i0<0.09789425134658813){
    if(i41<-1.0199353710049763e-05){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=68.0;
    }
   } else {
    s0+=318.0;
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i2<0.0005182027816772461){
   if(i48<0.01647081971168518){
    if(i31<0.0003126594237983227){
     s0+=62.0;
    } else {
     s0+=292.0;
     s1+=2446.0;
    }
   } else {
    if(i0<0.13484960794448853){
     s0+=534.0;
     s1+=48.0;
    } else {
     s0+=250.0;
     s1+=930.0;
    }
   }
  } else {
   if(i3<0.12855765223503113){
    if(i48<0.02089330554008484){
     s0+=36.0;
     s1+=1345.0;
    } else {
     s0+=72.0;
     s1+=10.0;
    }
   } else {
    if(i4<5.2034854888916016e-05){
     s0+=16.0;
     s1+=643.0;
    } else {
     s0+=6.0;
     s1+=8804.0;
    }
   }
  }
 }
}
if(i1<0.07800713181495667){
 if(i13<1.0018415451049805){
  if(i59<-0.00202062726020813){
   if(i17<0.9897007942199707){
    if(i20<0.974320650100708){
     s0+=1903.0;
     s1+=160.0;
    } else {
     s0+=2053.0;
     s1+=37.0;
    }
   } else {
    if(i7<0.04024609923362732){
     s0+=1741.0;
     s1+=500.0;
    } else {
     s0+=251.0;
     s1+=269.0;
    }
   }
  } else {
   if(i24<1.0058009624481201){
    if(i50<0.0012210962595418096){
     s0+=57878.0;
     s1+=569.0;
    } else {
     s0+=2932.0;
     s1+=193.0;
    }
   } else {
    if(i70<0.020897142589092255){
     s0+=296.0;
     s1+=288.0;
    } else {
     s0+=1415.0;
     s1+=215.0;
    }
   }
  }
 } else {
  if(i33<1.2314128875732422){
   if(i58<8.29667169455206e-06){
    if(i52<1.0004847049713135){
     s1+=675.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i71<0.9868679046630859){
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.037064798176288605){
    if(i48<-0.0047602057456970215){
     s0+=138.0;
     s1+=201.0;
    } else {
     s0+=535.0;
     s1+=57.0;
    }
   } else {
    if(i4<-3.427267074584961e-05){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=133.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5389317923109047e-05){
  if(i44<0.9988943934440613){
   if(i55<0.00030769099248573184){
    if(i55<0.00028064497746527195){
     s0+=53.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i9<1.0398577451705933){
     s0+=5.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   }
  } else {
   if(i0<0.11741665005683899){
    if(i61<0.03069627285003662){
     s0+=188.0;
     s1+=1443.0;
    } else {
     s0+=258.0;
     s1+=187.0;
    }
   } else {
    if(i32<0.0005808561109006405){
     s0+=30.0;
     s1+=64.0;
    } else {
     s0+=169.0;
     s1+=11805.0;
    }
   }
  }
 } else {
  if(i38<0.06641006469726562){
   if(i12<0.9896031022071838){
    if(i55<0.0009925860213115811){
     s0+=77.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i26<0.0002477401285432279){
     s0+=12.0;
    } else {
     s0+=25.0;
     s1+=200.0;
    }
   }
  } else {
   if(i32<0.001876952825114131){
    if(i30<1.1433550119400024){
     s0+=287.0;
     s1+=63.0;
    } else {
     s0+=545.0;
    }
   } else {
    if(i31<0.004018853884190321){
     s0+=58.0;
     s1+=138.0;
    } else {
     s0+=128.0;
     s1+=27.0;
    }
   }
  }
 }
}
if(i3<0.08241268992424011){
 if(i2<0.0006018579006195068){
  if(i47<0.008471273817121983){
   if(i1<0.05909791588783264){
    if(i26<0.00026428326964378357){
     s0+=48611.0;
     s1+=162.0;
    } else {
     s0+=12960.0;
     s1+=626.0;
    }
   } else {
    if(i21<0.015259182080626488){
     s0+=3560.0;
     s1+=207.0;
    } else {
     s0+=1135.0;
     s1+=461.0;
    }
   }
  } else {
   if(i5<0.9965866804122925){
    if(i37<0.05547633022069931){
     s0+=1135.0;
     s1+=51.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i19<1.0004922151565552){
     s0+=1344.0;
     s1+=386.0;
    } else {
     s0+=227.0;
     s1+=247.0;
    }
   }
  }
 } else {
  if(i16<0.0018752675969153643){
   if(i17<1.0129420757293701){
    if(i56<7.156887477322016e-06){
     s0+=145.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i17<0.9985259771347046){
    if(i48<-0.00787392258644104){
     s0+=29.0;
     s1+=190.0;
    } else {
     s0+=109.0;
     s1+=19.0;
    }
   } else {
    if(i59<0.004688739776611328){
     s0+=17.0;
     s1+=718.0;
    } else {
     s0+=34.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i17<1.0063252449035645){
  if(i11<-1.7374753952026367e-05){
   if(i41<-9.034853064804338e-06){
    if(i65<1.0026273727416992){
     s1+=11.0;
    } else {
     s0+=1.0;
    }
   } else {
    s0+=375.0;
   }
  } else {
   if(i6<-1.2641308785532601e-05){
    if(i71<1.0141105651855469){
     s0+=82.0;
     s1+=2401.0;
    } else {
     s0+=472.0;
     s1+=1892.0;
    }
   } else {
    if(i20<0.9935057163238525){
     s0+=47.0;
     s1+=176.0;
    } else {
     s0+=548.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i63<0.00013846246292814612){
   if(i18<0.00011402368545532227){
    s0+=44.0;
   } else {
    if(i26<0.002521221525967121){
     s1+=176.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   }
  } else {
   if(i53<0.0009374243672937155){
    if(i18<9.712576866149902e-05){
     s0+=26.0;
     s1+=17.0;
    } else {
     s0+=11.0;
     s1+=760.0;
    }
   } else {
    if(i25<1.0096099376678467){
     s0+=2.0;
     s1+=784.0;
    } else {
     s1+=7837.0;
    }
   }
  }
 }
}
if(i40<0.0004561576060950756){
 if(i25<1.0078911781311035){
  if(i3<0.08735218644142151){
   if(i19<1.003558874130249){
    if(i27<1.0096527338027954){
     s0+=50739.0;
     s1+=243.0;
    } else {
     s0+=10.0;
     s1+=45.0;
    }
   } else {
    if(i2<0.0003924369812011719){
     s0+=12.0;
    } else {
     s1+=51.0;
    }
   }
  } else {
   if(i2<0.00015616416931152344){
    if(i24<1.00376296043396){
     s0+=50.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=45.0;
   }
  }
 } else {
  if(i29<1.2392117977142334){
   if(i5<0.9999129772186279){
    s0+=32.0;
   } else {
    if(i28<1.0048542022705078){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=546.0;
    }
   }
  } else {
   s0+=103.0;
  }
 }
} else {
 if(i15<0.0006222724914550781){
  if(i6<-5.827056156704202e-05){
   if(i3<0.05687806010246277){
    if(i58<3.0935509130358696e-05){
     s0+=282.0;
     s1+=211.0;
    } else {
     s0+=975.0;
     s1+=36.0;
    }
   } else {
    if(i21<0.022115956991910934){
     s0+=207.0;
     s1+=231.0;
    } else {
     s0+=127.0;
     s1+=2294.0;
    }
   }
  } else {
   if(i10<-0.00015157461166381836){
    if(i20<1.0122953653335571){
     s0+=10052.0;
     s1+=472.0;
    } else {
     s0+=215.0;
     s1+=161.0;
    }
   } else {
    if(i4<-3.0100345611572266e-05){
     s0+=2420.0;
     s1+=161.0;
    } else {
     s0+=5197.0;
     s1+=2843.0;
    }
   }
  }
 } else {
  if(i42<0.00025482813362032175){
   if(i5<1.0041351318359375){
    if(i1<0.06694436073303223){
     s0+=245.0;
    } else {
     s0+=3.0;
     s1+=25.0;
    }
   } else {
    s1+=122.0;
   }
  } else {
   if(i16<0.0024835874792188406){
    if(i4<6.181001663208008e-05){
     s0+=244.0;
     s1+=96.0;
    } else {
     s1+=168.0;
    }
   } else {
    if(i41<-2.532077814976219e-06){
     s0+=42.0;
     s1+=9482.0;
    } else {
     s0+=29.0;
     s1+=7.0;
    }
   }
  }
 }
}
if(i6<-7.899619959061965e-05){
 if(i17<0.9794660210609436){
  if(i3<0.036463648080825806){
   if(i53<0.006707507185637951){
    if(i8<1.2327934503555298){
     s0+=464.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i72<0.00016758382844273){
    s0+=21.0;
   } else {
    s1+=114.0;
   }
  }
 } else {
  if(i33<1.0762357711791992){
   s0+=149.0;
  } else {
   if(i37<0.021395262330770493){
    if(i15<-0.00080108642578125){
     s0+=145.0;
     s1+=36.0;
    } else {
     s0+=51.0;
     s1+=1936.0;
    }
   } else {
    if(i15<-0.003994613885879517){
     s0+=3.0;
    } else {
     s0+=14.0;
     s1+=8933.0;
    }
   }
  }
 }
} else {
 if(i2<0.000549018383026123){
  if(i21<0.018048398196697235){
   if(i17<1.0054634809494019){
    if(i62<0.0007801614119671285){
     s0+=56781.0;
     s1+=486.0;
    } else {
     s0+=3470.0;
     s1+=663.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s0+=18.0;
     s1+=386.0;
    } else {
     s0+=515.0;
     s1+=82.0;
    }
   }
  } else {
   if(i9<1.0332090854644775){
    if(i3<0.07746604084968567){
     s0+=5924.0;
     s1+=326.0;
    } else {
     s0+=51.0;
     s1+=141.0;
    }
   } else {
    if(i33<1.1800893545150757){
     s0+=649.0;
     s1+=1478.0;
    } else {
     s0+=2356.0;
     s1+=1159.0;
    }
   }
  }
 } else {
  if(i42<0.00017562645371071994){
   if(i56<1.0367466529714875e-06){
    if(i0<0.07929834723472595){
     s0+=187.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=26.0;
   }
  } else {
   if(i41<-1.3892476999899372e-05){
    if(i64<-0.018299221992492676){
     s0+=57.0;
     s1+=214.0;
    } else {
     s0+=58.0;
     s1+=1003.0;
    }
   } else {
    if(i10<0.0005373656749725342){
     s0+=142.0;
     s1+=133.0;
    } else {
     s0+=7.0;
     s1+=53.0;
    }
   }
  }
 }
}
if(i11<1.7702579498291016e-05){
 if(i1<0.07907184958457947){
  if(i59<-0.002026677131652832){
   if(i45<-3.555417060852051e-05){
    if(i15<0.0014365017414093018){
     s0+=3151.0;
     s1+=135.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i33<1.1091381311416626){
     s0+=303.0;
     s1+=610.0;
    } else {
     s0+=2385.0;
     s1+=159.0;
    }
   }
  } else {
   if(i18<0.00011283159255981445){
    if(i21<0.02165067382156849){
     s0+=57764.0;
     s1+=495.0;
    } else {
     s0+=3696.0;
     s1+=558.0;
    }
   } else {
    if(i29<1.1059328317642212){
     s0+=35.0;
     s1+=132.0;
    } else {
     s0+=381.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<-0.0004131197929382324){
   if(i6<-5.009150845580734e-05){
    if(i50<0.00037234381306916475){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i30<1.4989960193634033){
     s0+=416.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  } else {
   if(i65<0.9998860359191895){
    if(i6<-2.624396529427031e-06){
     s0+=178.0;
     s1+=3025.0;
    } else {
     s0+=112.0;
     s1+=35.0;
    }
   } else {
    if(i56<3.743896377272904e-05){
     s0+=483.0;
     s1+=325.0;
    } else {
     s0+=216.0;
     s1+=834.0;
    }
   }
  }
 }
} else {
 if(i37<0.02606992796063423){
  if(i14<1.0041751861572266){
   if(i5<1.001172423362732){
    if(i1<0.10235080122947693){
     s0+=1086.0;
     s1+=58.0;
    } else {
     s0+=27.0;
     s1+=39.0;
    }
   } else {
    if(i45<0.0003821253776550293){
     s0+=108.0;
     s1+=406.0;
    } else {
     s0+=168.0;
     s1+=88.0;
    }
   }
  } else {
   if(i41<-1.6025020158849657e-05){
    if(i6<-5.256442091194913e-05){
     s0+=91.0;
     s1+=2348.0;
    } else {
     s0+=112.0;
     s1+=95.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s0+=28.0;
     s1+=86.0;
    } else {
     s0+=136.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i7<0.07137879729270935){
   if(i54<0.006448119878768921){
    if(i10<0.0008563399314880371){
     s0+=38.0;
     s1+=87.0;
    } else {
     s1+=397.0;
    }
   } else {
    if(i32<0.007011772133409977){
     s1+=19.0;
    } else {
     s0+=108.0;
     s1+=2.0;
    }
   }
  } else {
   if(i58<4.247460310580209e-05){
    if(i6<-2.544989729358349e-05){
     s0+=4.0;
     s1+=7154.0;
    } else {
     s0+=5.0;
     s1+=46.0;
    }
   } else {
    if(i35<1.3537006378173828){
     s0+=17.0;
    } else {
     s1+=37.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i1<0.08135956525802612){
  if(i3<0.06923821568489075){
   if(i26<0.0003105576033703983){
    if(i62<0.0008567798649892211){
     s0+=52330.0;
     s1+=147.0;
    } else {
     s0+=327.0;
     s1+=103.0;
    }
   } else {
    if(i33<1.1037919521331787){
     s0+=3367.0;
     s1+=974.0;
    } else {
     s0+=11208.0;
     s1+=406.0;
    }
   }
  } else {
   if(i12<0.9941577315330505){
    if(i14<0.9827889800071716){
     s0+=25.0;
     s1+=18.0;
    } else {
     s0+=809.0;
     s1+=15.0;
    }
   } else {
    if(i61<0.023189008235931396){
     s0+=222.0;
     s1+=493.0;
    } else {
     s0+=810.0;
     s1+=125.0;
    }
   }
  }
 } else {
  if(i49<0.0028638243675231934){
   if(i29<1.0762357711791992){
    s0+=70.0;
   } else {
    if(i13<0.9986646771430969){
     s0+=74.0;
     s1+=6.0;
    } else {
     s0+=178.0;
     s1+=2078.0;
    }
   }
  } else {
   if(i0<0.11751794815063477){
    if(i49<0.004138082265853882){
     s0+=144.0;
     s1+=101.0;
    } else {
     s0+=451.0;
     s1+=39.0;
    }
   } else {
    if(i32<0.001552358502522111){
     s0+=456.0;
     s1+=285.0;
    } else {
     s0+=170.0;
     s1+=1140.0;
    }
   }
  }
 }
} else {
 if(i1<0.05434945225715637){
  if(i71<0.9993128776550293){
   if(i15<-0.0022184252738952637){
    if(i53<0.005296147428452969){
     s0+=29.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i65<0.9976620674133301){
     s0+=13.0;
    } else {
     s0+=6.0;
     s1+=374.0;
    }
   }
  } else {
   if(i22<1.0873879194259644){
    if(i47<0.0038765976205468178){
     s0+=67.0;
     s1+=13.0;
    } else {
     s0+=9.0;
     s1+=93.0;
    }
   } else {
    if(i17<1.0144529342651367){
     s0+=109.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   }
  }
 } else {
  if(i53<0.0016088163247331977){
   if(i41<-1.3284706255944911e-05){
    if(i15<0.0002606511116027832){
     s0+=35.0;
     s1+=102.0;
    } else {
     s0+=3.0;
     s1+=1842.0;
    }
   } else {
    if(i65<0.9995158910751343){
     s0+=2.0;
     s1+=121.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i63<0.0004906479734927416){
    if(i56<0.0001438338658772409){
     s0+=11.0;
     s1+=639.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i65<1.005791425704956){
     s0+=13.0;
     s1+=8094.0;
    } else {
     s0+=15.0;
     s1+=10.0;
    }
   }
  }
 }
}
if(i3<0.08310765027999878){
 if(i22<1.0486011505126953){
  if(i69<0.04252957925200462){
   if(i59<-0.0027385056018829346){
    if(i31<0.0003161047352477908){
     s0+=64.0;
    } else {
     s0+=35.0;
     s1+=47.0;
    }
   } else {
    if(i40<0.00024015209055505693){
     s0+=40890.0;
     s1+=5.0;
    } else {
     s0+=9395.0;
     s1+=83.0;
    }
   }
  } else {
   if(i29<1.2371783256530762){
    if(i29<1.0850647687911987){
     s0+=2383.0;
    } else {
     s0+=759.0;
     s1+=249.0;
    }
   } else {
    s0+=2816.0;
   }
  }
 } else {
  if(i29<1.1013743877410889){
   if(i32<0.0005219263257458806){
    if(i33<1.0981647968292236){
     s0+=2494.0;
     s1+=296.0;
    } else {
     s1+=107.0;
    }
   } else {
    if(i36<0.04907330870628357){
     s0+=60.0;
     s1+=1300.0;
    } else {
     s0+=18.0;
     s1+=6.0;
    }
   }
  } else {
   if(i2<0.000617682933807373){
    if(i53<0.006496616639196873){
     s0+=10572.0;
     s1+=516.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    if(i16<0.004285500384867191){
     s0+=122.0;
     s1+=15.0;
    } else {
     s0+=104.0;
     s1+=467.0;
    }
   }
  }
 }
} else {
 if(i16<0.004643522202968597){
  if(i64<-0.01921343430876732){
   if(i7<0.18711256980895996){
    if(i4<5.1140785217285156e-05){
     s0+=719.0;
     s1+=54.0;
    } else {
     s0+=10.0;
     s1+=27.0;
    }
   } else {
    if(i35<1.255998969078064){
     s0+=66.0;
     s1+=214.0;
    } else {
     s0+=178.0;
     s1+=36.0;
    }
   }
  } else {
   if(i4<-5.799531936645508e-05){
    if(i1<0.07424578070640564){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=119.0;
     s1+=2.0;
    }
   } else {
    if(i48<0.023953765630722046){
     s0+=171.0;
     s1+=1943.0;
    } else {
     s0+=124.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i41<2.0124211914662737e-06){
   if(i11<-1.6421079635620117e-05){
    if(i13<0.9980086088180542){
     s0+=34.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i65<1.0046768188476562){
     s0+=138.0;
     s1+=11266.0;
    } else {
     s0+=46.0;
     s1+=122.0;
    }
   }
  } else {
   if(i39<0.004216307308524847){
    s1+=1.0;
   } else {
    s0+=72.0;
   }
  }
 }
}
if(i5<1.0024561882019043){
 if(i3<0.08385711908340454){
  if(i42<0.0003115461440756917){
   if(i6<-3.9186154026538134e-05){
    if(i10<-4.5180320739746094e-05){
     s0+=527.0;
     s1+=24.0;
    } else {
     s0+=111.0;
     s1+=99.0;
    }
   } else {
    if(i21<0.026294823735952377){
     s0+=55795.0;
     s1+=344.0;
    } else {
     s0+=760.0;
     s1+=108.0;
    }
   }
  } else {
   if(i30<1.1812903881072998){
    if(i6<-1.441483800590504e-05){
     s0+=412.0;
     s1+=670.0;
    } else {
     s0+=3862.0;
     s1+=586.0;
    }
   } else {
    if(i53<0.006535805761814117){
     s0+=7768.0;
     s1+=237.0;
    } else {
     s0+=5.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i5<0.9959359169006348){
   if(i33<1.4274868965148926){
    if(i55<0.0009570295223966241){
     s0+=357.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i14<0.9909579753875732){
     s1+=93.0;
    } else {
     s0+=24.0;
     s1+=10.0;
    }
   }
  } else {
   if(i72<0.00010886118980124593){
    if(i38<0.06740450859069824){
     s0+=33.0;
     s1+=1122.0;
    } else {
     s0+=898.0;
     s1+=903.0;
    }
   } else {
    if(i41<-3.6323804124549497e-06){
     s0+=121.0;
     s1+=1542.0;
    } else {
     s0+=56.0;
     s1+=40.0;
    }
   }
  }
 }
} else {
 if(i4<6.216764450073242e-05){
  if(i0<0.06644755601882935){
   if(i39<0.000898207537829876){
    if(i40<0.00019035539298783988){
     s0+=8.0;
    } else {
     s1+=115.0;
    }
   } else {
    if(i52<1.0003013610839844){
     s0+=146.0;
     s1+=10.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   }
  } else {
   if(i32<0.001866824459284544){
    s1+=485.0;
   } else {
    if(i6<-7.253303192555904e-05){
     s0+=2.0;
     s1+=564.0;
    } else {
     s0+=82.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i56<0.00010130677401321009){
   if(i0<0.04764533042907715){
    if(i48<-0.003924429416656494){
     s1+=78.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i42<0.00011461226677056402){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=8363.0;
    }
   }
  } else {
   if(i16<0.0072538480162620544){
    if(i34<0.004698894452303648){
     s0+=2.0;
     s1+=12.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i63<0.0005639567389152944){
     s0+=23.0;
     s1+=98.0;
    } else {
     s0+=26.0;
     s1+=1533.0;
    }
   }
  }
 }
}
if(i3<0.08270779252052307){
 if(i22<1.0486011505126953){
  if(i69<0.042337507009506226){
   if(i40<0.00025050900876522064){
    if(i46<-0.000871121883392334){
     s0+=2522.0;
     s1+=4.0;
    } else {
     s0+=38776.0;
     s1+=1.0;
    }
   } else {
    if(i50<0.005027761682868004){
     s0+=8616.0;
     s1+=111.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i48<-0.0028220415115356445){
    if(i1<0.03430160880088806){
     s0+=906.0;
     s1+=71.0;
    } else {
     s0+=178.0;
     s1+=107.0;
    }
   } else {
    if(i17<0.9899067878723145){
     s0+=2976.0;
     s1+=1.0;
    } else {
     s0+=1943.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i2<0.0005335211753845215){
   if(i33<1.1037919521331787){
    if(i39<0.00034491714905016124){
     s0+=1584.0;
     s1+=57.0;
    } else {
     s0+=1077.0;
     s1+=1159.0;
    }
   } else {
    if(i10<0.00042766332626342773){
     s0+=9662.0;
     s1+=354.0;
    } else {
     s0+=854.0;
     s1+=181.0;
    }
   }
  } else {
   if(i39<0.0020968206226825714){
    if(i52<1.0004267692565918){
     s0+=1.0;
     s1+=627.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i50<0.002901072148233652){
     s0+=248.0;
     s1+=22.0;
    } else {
     s0+=38.0;
     s1+=309.0;
    }
   }
  }
 }
} else {
 if(i1<0.12485340237617493){
  if(i60<-0.005392672959715128){
   if(i6<-0.00011759335757233202){
    if(i46<0.0047605037689208984){
     s1+=50.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i43<0.05163660645484924){
     s0+=9.0;
     s1+=51.0;
    } else {
     s0+=683.0;
     s1+=56.0;
    }
   }
  } else {
   if(i33<1.081458568572998){
    if(i29<1.0840110778808594){
     s0+=126.0;
    } else {
     s0+=7.0;
     s1+=23.0;
    }
   } else {
    if(i54<0.07352176308631897){
     s0+=174.0;
     s1+=2557.0;
    } else {
     s0+=94.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i44<0.9986991882324219){
   if(i33<1.4944241046905518){
    s0+=251.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i32<0.0006424930761568248){
    if(i30<1.1108002662658691){
     s0+=5.0;
     s1+=32.0;
    } else {
     s0+=137.0;
    }
   } else {
    if(i13<0.9989153146743774){
     s0+=32.0;
     s1+=38.0;
    } else {
     s0+=186.0;
     s1+=11209.0;
    }
   }
  }
 }
}
if(i2<0.0005491375923156738){
 if(i71<1.0108978748321533){
  if(i26<0.0003196406760253012){
   if(i3<0.08022052049636841){
    if(i19<1.0031042098999023){
     s0+=53503.0;
     s1+=266.0;
    } else {
     s0+=56.0;
     s1+=25.0;
    }
   } else {
    if(i27<1.0027602910995483){
     s0+=126.0;
     s1+=12.0;
    } else {
     s0+=8.0;
     s1+=40.0;
    }
   }
  } else {
   if(i1<0.07473349571228027){
    if(i33<1.1037919521331787){
     s0+=2973.0;
     s1+=1147.0;
    } else {
     s0+=10242.0;
     s1+=412.0;
    }
   } else {
    if(i10<-0.0003927648067474365){
     s0+=209.0;
     s1+=2.0;
    } else {
     s0+=186.0;
     s1+=1455.0;
    }
   }
  }
 } else {
  if(i0<0.09173434972763062){
   if(i40<0.0011129541089758277){
    if(i53<0.0012135505676269531){
     s0+=619.0;
     s1+=108.0;
    } else {
     s0+=68.0;
     s1+=142.0;
    }
   } else {
    if(i53<0.0017621866427361965){
     s0+=1159.0;
     s1+=1.0;
    } else {
     s0+=416.0;
     s1+=18.0;
    }
   }
  } else {
   if(i6<-1.4610532161896117e-05){
    if(i16<0.0017404016107320786){
     s0+=124.0;
     s1+=71.0;
    } else {
     s0+=234.0;
     s1+=1754.0;
    }
   } else {
    if(i3<0.22382843494415283){
     s0+=451.0;
     s1+=32.0;
    } else {
     s0+=122.0;
     s1+=68.0;
    }
   }
  }
 }
} else {
 if(i30<1.0624027252197266){
  s0+=188.0;
 } else {
  if(i0<0.07433205842971802){
   if(i51<0.0017826259136199951){
    if(i49<6.583333015441895e-05){
     s0+=67.0;
     s1+=699.0;
    } else {
     s0+=99.0;
     s1+=51.0;
    }
   } else {
    if(i39<0.0014959415420889854){
     s1+=5.0;
    } else {
     s0+=117.0;
     s1+=2.0;
    }
   }
  } else {
   if(i12<1.0077018737792969){
    if(i0<0.13700714707374573){
     s0+=140.0;
     s1+=603.0;
    } else {
     s0+=21.0;
     s1+=2413.0;
    }
   } else {
    if(i2<0.000864565372467041){
     s0+=13.0;
     s1+=194.0;
    } else {
     s1+=7591.0;
    }
   }
  }
 }
}
if(i7<0.07137531042098999){
 if(i24<1.0068423748016357){
  if(i5<1.0024782419204712){
   if(i1<0.07833090424537659){
    if(i55<0.0002529277990106493){
     s0+=56026.0;
     s1+=553.0;
    } else {
     s0+=11483.0;
     s1+=1119.0;
    }
   } else {
    if(i30<1.0696015357971191){
     s0+=66.0;
    } else {
     s0+=39.0;
     s1+=393.0;
    }
   }
  } else {
   if(i64<-0.014506206847727299){
    if(i37<0.019170496612787247){
     s0+=28.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i26<0.00018062055460177362){
     s0+=10.0;
    } else {
     s0+=43.0;
     s1+=527.0;
    }
   }
  }
 } else {
  if(i11<2.282857894897461e-05){
   if(i30<1.140648365020752){
    if(i3<0.06385806202888489){
     s0+=203.0;
     s1+=140.0;
    } else {
     s0+=27.0;
     s1+=523.0;
    }
   } else {
    if(i14<1.0176187753677368){
     s0+=1100.0;
     s1+=54.0;
    } else {
     s0+=67.0;
     s1+=72.0;
    }
   }
  } else {
   if(i59<0.007655143737792969){
    if(i18<6.735324859619141e-06){
     s0+=18.0;
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=1075.0;
    }
   } else {
    if(i37<0.02353275939822197){
     s0+=30.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004127025604248047){
  if(i36<0.04262298345565796){
   if(i10<-0.00044658780097961426){
    s0+=32.0;
   } else {
    if(i0<0.0874318778514862){
     s0+=81.0;
     s1+=131.0;
    } else {
     s0+=30.0;
     s1+=1118.0;
    }
   }
  } else {
   if(i1<0.12403276562690735){
    if(i29<1.1013743877410889){
     s0+=313.0;
     s1+=236.0;
    } else {
     s0+=906.0;
     s1+=90.0;
    }
   } else {
    if(i6<-1.4968767573009245e-05){
     s0+=114.0;
     s1+=811.0;
    } else {
     s0+=365.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i31<0.005048030987381935){
   if(i12<0.9993794560432434){
    if(i72<7.377249130513519e-05){
     s0+=49.0;
     s1+=6.0;
    } else {
     s0+=27.0;
     s1+=88.0;
    }
   } else {
    if(i35<1.2508301734924316){
     s0+=37.0;
     s1+=1231.0;
    } else {
     s0+=33.0;
     s1+=32.0;
    }
   }
  } else {
   if(i16<0.0018723189132288098){
    if(i63<0.00022626770078204572){
     s0+=16.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i17<1.0071301460266113){
     s0+=59.0;
     s1+=1768.0;
    } else {
     s1+=6901.0;
    }
   }
  }
 }
}
if(i18<0.00011593103408813477){
 if(i2<0.0005661249160766602){
  if(i8<1.0452277660369873){
   if(i59<-0.0021077096462249756){
    if(i30<1.178917407989502){
     s0+=1565.0;
     s1+=535.0;
    } else {
     s0+=2698.0;
     s1+=34.0;
    }
   } else {
    if(i40<0.0002872062032110989){
     s0+=44572.0;
     s1+=19.0;
    } else {
     s0+=12803.0;
     s1+=444.0;
    }
   }
  } else {
   if(i21<0.02233695238828659){
    if(i3<0.07659414410591125){
     s0+=5573.0;
     s1+=458.0;
    } else {
     s0+=996.0;
     s1+=670.0;
    }
   } else {
    if(i5<0.9966009855270386){
     s0+=743.0;
     s1+=160.0;
    } else {
     s0+=984.0;
     s1+=2608.0;
    }
   }
  }
 } else {
  if(i31<0.00039259891491383314){
   s0+=130.0;
  } else {
   if(i37<0.021116044372320175){
    if(i9<1.0568666458129883){
     s0+=38.0;
     s1+=306.0;
    } else {
     s0+=199.0;
     s1+=125.0;
    }
   } else {
    if(i21<0.002660696394741535){
     s0+=1.0;
    } else {
     s0+=11.0;
     s1+=1797.0;
    }
   }
  }
 }
} else {
 if(i29<1.0762357711791992){
  s0+=194.0;
 } else {
  if(i16<0.002249313984066248){
   if(i30<1.1663256883621216){
    if(i14<1.0061752796173096){
     s0+=34.0;
    } else {
     s1+=257.0;
    }
   } else {
    if(i10<0.0006234645843505859){
     s0+=413.0;
     s1+=9.0;
    } else {
     s1+=42.0;
    }
   }
  } else {
   if(i2<3.3855438232421875e-05){
    if(i32<0.005950454622507095){
     s0+=118.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i16<0.002541514113545418){
     s0+=22.0;
     s1+=130.0;
    } else {
     s1+=9560.0;
    }
   }
  }
 }
}
if(i0<0.08504641056060791){
 if(i22<1.0494996309280396){
  if(i51<-0.0014188587665557861){
   if(i0<0.05234575271606445){
    if(i29<1.0840110778808594){
     s0+=895.0;
    } else {
     s0+=620.0;
     s1+=144.0;
    }
   } else {
    if(i60<-0.0009200811618939042){
     s0+=62.0;
     s1+=7.0;
    } else {
     s0+=34.0;
     s1+=66.0;
    }
   }
  } else {
   if(i14<1.0082513093948364){
    if(i5<1.0025479793548584){
     s0+=54480.0;
     s1+=163.0;
    } else {
     s0+=15.0;
     s1+=24.0;
    }
   } else {
    if(i0<0.045733094215393066){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i5<1.002467393875122){
   if(i34<0.0011264070635661483){
    if(i31<0.00029563141288235784){
     s0+=1806.0;
    } else {
     s0+=1356.0;
     s1+=1187.0;
    }
   } else {
    if(i47<0.00905423890799284){
     s0+=7847.0;
     s1+=219.0;
    } else {
     s0+=1682.0;
     s1+=337.0;
    }
   }
  } else {
   if(i39<0.002481362782418728){
    if(i26<0.0001289975771214813){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=640.0;
    }
   } else {
    if(i50<0.004497075453400612){
     s0+=257.0;
     s1+=32.0;
    } else {
     s0+=23.0;
     s1+=272.0;
    }
   }
  }
 }
} else {
 if(i41<3.517160848787171e-06){
  if(i3<0.11721238493919373){
   if(i12<1.0010924339294434){
    if(i36<0.04375377297401428){
     s0+=125.0;
     s1+=685.0;
    } else {
     s0+=758.0;
     s1+=147.0;
    }
   } else {
    if(i6<-1.937223714776337e-05){
     s0+=74.0;
     s1+=1209.0;
    } else {
     s0+=45.0;
     s1+=7.0;
    }
   }
  } else {
   if(i31<0.001170986331999302){
    if(i4<6.884336471557617e-06){
     s0+=276.0;
     s1+=77.0;
    } else {
     s0+=16.0;
     s1+=256.0;
    }
   } else {
    if(i16<0.002983642974868417){
     s0+=160.0;
     s1+=405.0;
    } else {
     s0+=80.0;
     s1+=11297.0;
    }
   }
  }
 } else {
  if(i34<0.005439194850623608){
   if(i65<0.9998641014099121){
    s0+=413.0;
   } else {
    if(i43<0.05561375617980957){
     s1+=9.0;
    } else {
     s0+=19.0;
    }
   }
  } else {
   s1+=1.0;
  }
 }
}
if(i19<1.0028107166290283){
 if(i14<1.0081498622894287){
  if(i22<1.0494996309280396){
   if(i59<-0.0022396743297576904){
    if(i11<-1.6927719116210938e-05){
     s0+=554.0;
     s1+=2.0;
    } else {
     s0+=1200.0;
     s1+=253.0;
    }
   } else {
    if(i20<1.0095852613449097){
     s0+=54578.0;
     s1+=171.0;
    } else {
     s0+=61.0;
     s1+=15.0;
    }
   }
  } else {
   if(i1<0.07669040560722351){
    if(i1<0.05662822723388672){
     s0+=9600.0;
     s1+=756.0;
    } else {
     s0+=1407.0;
     s1+=548.0;
    }
   } else {
    if(i6<-9.637534276407678e-06){
     s0+=399.0;
     s1+=1564.0;
    } else {
     s0+=632.0;
     s1+=145.0;
    }
   }
  }
 } else {
  if(i0<0.0790034830570221){
   if(i70<0.013376113027334213){
    if(i28<1.0163257122039795){
     s0+=9.0;
     s1+=117.0;
    } else {
     s0+=16.0;
     s1+=3.0;
    }
   } else {
    if(i34<0.0011281659826636314){
     s0+=31.0;
     s1+=69.0;
    } else {
     s0+=739.0;
     s1+=58.0;
    }
   }
  } else {
   if(i7<0.1938583254814148){
    if(i60<-0.007382769137620926){
     s0+=267.0;
     s1+=48.0;
    } else {
     s0+=92.0;
     s1+=1240.0;
    }
   } else {
    if(i10<-0.0005342960357666016){
     s0+=13.0;
    } else {
     s0+=23.0;
     s1+=1497.0;
    }
   }
  }
 }
} else {
 if(i2<0.000469207763671875){
  if(i3<0.12327155470848083){
   if(i3<0.06547194719314575){
    if(i2<0.00039464235305786133){
     s0+=836.0;
     s1+=36.0;
    } else {
     s0+=56.0;
     s1+=20.0;
    }
   } else {
    if(i60<-0.0043876515701413155){
     s0+=126.0;
     s1+=11.0;
    } else {
     s0+=22.0;
     s1+=65.0;
    }
   }
  } else {
   if(i60<-0.012425101362168789){
    if(i33<1.274404764175415){
     s0+=16.0;
    } else {
     s1+=57.0;
    }
   } else {
    if(i49<0.007620632648468018){
     s1+=228.0;
    } else {
     s0+=7.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i19<1.0058673620224){
   if(i5<1.0041754245758057){
    if(i0<0.07590478658676147){
     s0+=136.0;
     s1+=172.0;
    } else {
     s0+=54.0;
     s1+=672.0;
    }
   } else {
    if(i14<1.0038208961486816){
     s0+=11.0;
     s1+=138.0;
    } else {
     s1+=1454.0;
    }
   }
  } else {
   if(i17<0.9952300190925598){
    if(i33<1.613681674003601){
     s0+=20.0;
     s1+=538.0;
    } else {
     s0+=34.0;
     s1+=92.0;
    }
   } else {
    if(i19<1.0059247016906738){
     s0+=1.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=7261.0;
    }
   }
  }
 }
}
if(i2<0.0005478262901306152){
 if(i14<1.0081751346588135){
  if(i7<0.06987282633781433){
   if(i1<0.07701024413108826){
    if(i51<-0.0013532936573028564){
     s0+=5461.0;
     s1+=861.0;
    } else {
     s0+=61929.0;
     s1+=836.0;
    }
   } else {
    if(i5<0.9966949224472046){
     s0+=111.0;
     s1+=4.0;
    } else {
     s0+=38.0;
     s1+=380.0;
    }
   }
  } else {
   if(i43<0.047706007957458496){
    if(i13<0.9986276626586914){
     s0+=31.0;
     s1+=6.0;
    } else {
     s0+=35.0;
     s1+=668.0;
    }
   } else {
    if(i0<0.10109972953796387){
     s0+=962.0;
     s1+=146.0;
    } else {
     s0+=684.0;
     s1+=770.0;
    }
   }
  }
 } else {
  if(i35<1.1091103553771973){
   if(i5<0.9980103969573975){
    s0+=24.0;
   } else {
    if(i16<0.0010551158338785172){
     s0+=35.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=672.0;
    }
   }
  } else {
   if(i3<0.10393887758255005){
    if(i58<1.7106889572460204e-05){
     s0+=858.0;
     s1+=59.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   } else {
    if(i64<-0.025667639449238777){
     s0+=190.0;
     s1+=359.0;
    } else {
     s0+=24.0;
     s1+=607.0;
    }
   }
  }
 }
} else {
 if(i35<1.055294156074524){
  s0+=166.0;
 } else {
  if(i1<0.058522045612335205){
   if(i41<-1.4685972928418778e-05){
    if(i17<0.9985295534133911){
     s0+=87.0;
     s1+=132.0;
    } else {
     s0+=21.0;
     s1+=434.0;
    }
   } else {
    if(i72<0.00010154877963941544){
     s0+=9.0;
     s1+=13.0;
    } else {
     s0+=112.0;
     s1+=1.0;
    }
   }
  } else {
   if(i12<1.0082926750183105){
    if(i16<0.0024846652522683144){
     s0+=49.0;
     s1+=49.0;
    } else {
     s0+=133.0;
     s1+=3485.0;
    }
   } else {
    if(i4<5.942583084106445e-05){
     s0+=19.0;
     s1+=220.0;
    } else {
     s1+=7502.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i7<0.07106971740722656){
  if(i40<0.0003132703131996095){
   if(i55<0.0003197892801836133){
    if(i25<1.0074023008346558){
     s0+=46948.0;
     s1+=35.0;
    } else {
     s0+=52.0;
     s1+=63.0;
    }
   } else {
    if(i15<-0.0010063648223876953){
     s0+=95.0;
    } else {
     s0+=13.0;
     s1+=38.0;
    }
   }
  } else {
   if(i0<0.07879266142845154){
    if(i5<0.9970145225524902){
     s0+=12251.0;
     s1+=166.0;
    } else {
     s0+=8986.0;
     s1+=1505.0;
    }
   } else {
    if(i4<-4.07099723815918e-05){
     s0+=320.0;
     s1+=28.0;
    } else {
     s0+=135.0;
     s1+=741.0;
    }
   }
  }
 } else {
  if(i43<0.04908975958824158){
   if(i26<0.0002560248249210417){
    if(i4<-2.232193946838379e-05){
     s0+=24.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i2<-0.0011052489280700684){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=28.0;
     s1+=1002.0;
    }
   }
  } else {
   if(i3<0.11063861846923828){
    if(i21<0.022918760776519775){
     s0+=923.0;
     s1+=88.0;
    } else {
     s0+=289.0;
     s1+=136.0;
    }
   } else {
    if(i53<0.0015604133950546384){
     s0+=593.0;
     s1+=664.0;
    } else {
     s0+=59.0;
     s1+=839.0;
    }
   }
  }
 }
} else {
 if(i22<1.0413084030151367){
  if(i68<1.0029985904693604){
   s0+=188.0;
  } else {
   s1+=6.0;
  }
 } else {
  if(i5<1.0041282176971436){
   if(i52<0.9999154210090637){
    if(i28<0.9268593788146973){
     s0+=5.0;
     s1+=12.0;
    } else {
     s0+=8.0;
     s1+=997.0;
    }
   } else {
    if(i6<-4.656628880184144e-05){
     s0+=189.0;
     s1+=765.0;
    } else {
     s0+=172.0;
     s1+=131.0;
    }
   }
  } else {
   if(i15<0.0002599954605102539){
    if(i29<1.613681674003601){
     s0+=11.0;
     s1+=593.0;
    } else {
     s0+=53.0;
     s1+=105.0;
    }
   } else {
    if(i7<0.0013246536254882812){
     s0+=2.0;
     s1+=42.0;
    } else {
     s1+=8899.0;
    }
   }
  }
 }
}
if(i5<1.0024747848510742){
 if(i21<0.02198830246925354){
  if(i25<1.0085053443908691){
   if(i62<0.0007817470468580723){
    if(i8<1.0436501502990723){
     s0+=53313.0;
     s1+=175.0;
    } else {
     s0+=4997.0;
     s1+=493.0;
    }
   } else {
    if(i13<0.9983721375465393){
     s0+=1399.0;
     s1+=10.0;
    } else {
     s0+=2789.0;
     s1+=847.0;
    }
   }
  } else {
   if(i39<0.0014049974270164967){
    if(i37<0.007182419300079346){
     s0+=153.0;
     s1+=85.0;
    } else {
     s0+=13.0;
     s1+=371.0;
    }
   } else {
    if(i63<0.000709558604285121){
     s0+=934.0;
     s1+=115.0;
    } else {
     s0+=2.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i4<-3.8743019104003906e-05){
   if(i8<1.0684517621994019){
    if(i15<-0.0015004873275756836){
     s0+=4123.0;
     s1+=32.0;
    } else {
     s0+=205.0;
     s1+=50.0;
    }
   } else {
    if(i45<-0.00014287233352661133){
     s0+=491.0;
    } else {
     s0+=119.0;
     s1+=238.0;
    }
   }
  } else {
   if(i7<0.04160749912261963){
    if(i34<0.003569240914657712){
     s0+=553.0;
     s1+=396.0;
    } else {
     s0+=646.0;
     s1+=81.0;
    }
   } else {
    if(i46<0.003706425428390503){
     s0+=271.0;
     s1+=1919.0;
    } else {
     s0+=520.0;
     s1+=1029.0;
    }
   }
  }
 }
} else {
 if(i1<0.05225047469139099){
  if(i54<-0.014559775590896606){
   if(i66<-4.1976400098064914e-06){
    if(i60<-0.0004037406179122627){
     s0+=21.0;
     s1+=106.0;
    } else {
     s0+=8.0;
     s1+=301.0;
    }
   } else {
    if(i71<0.9858806133270264){
     s1+=1.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i33<1.2328234910964966){
    if(i41<-1.210491063829977e-05){
     s1+=44.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i50<0.002815497573465109){
     s0+=125.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i17<1.0094878673553467){
   if(i2<0.0009045004844665527){
    if(i41<-1.2582122508320026e-05){
     s0+=61.0;
     s1+=538.0;
    } else {
     s0+=61.0;
     s1+=15.0;
    }
   } else {
    if(i16<0.008151853457093239){
     s0+=59.0;
     s1+=415.0;
    } else {
     s0+=3.0;
     s1+=1453.0;
    }
   }
  } else {
   s1+=8561.0;
  }
 }
}
if(i6<-7.878689211793244e-05){
 if(i5<1.0000450611114502){
  if(i8<1.0694218873977661){
   if(i63<0.001984225818887353){
    if(i47<0.023067839443683624){
     s0+=639.0;
     s1+=4.0;
    } else {
     s0+=12.0;
     s1+=2.0;
    }
   } else {
    if(i20<0.902113139629364){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i45<0.00043487548828125){
    if(i0<0.0043228864669799805){
     s0+=34.0;
     s1+=1.0;
    } else {
     s1+=281.0;
    }
   } else {
    s0+=16.0;
   }
  }
 } else {
  if(i15<-0.002505660057067871){
   if(i33<1.5403209924697876){
    if(i44<1.0019476413726807){
     s1+=4.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i40<0.006493454799056053){
     s0+=10.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=111.0;
    }
   }
  } else {
   if(i24<0.9970569610595703){
    if(i37<0.01694665290415287){
     s0+=73.0;
     s1+=43.0;
    } else {
     s0+=16.0;
     s1+=1155.0;
    }
   } else {
    if(i37<0.01672232337296009){
     s0+=53.0;
     s1+=1307.0;
    } else {
     s0+=4.0;
     s1+=8296.0;
    }
   }
  }
 }
} else {
 if(i22<1.0494916439056396){
  if(i48<-0.006884098052978516){
   if(i29<1.0821808576583862){
    s0+=572.0;
   } else {
    if(i31<0.0014168107882142067){
     s0+=22.0;
     s1+=124.0;
    } else {
     s0+=101.0;
    }
   }
  } else {
   if(i40<0.0002505148877389729){
    if(i5<1.0025372505187988){
     s0+=42782.0;
     s1+=10.0;
    } else {
     s0+=29.0;
     s1+=16.0;
    }
   } else {
    if(i22<1.042891263961792){
     s0+=10836.0;
     s1+=123.0;
    } else {
     s0+=1836.0;
     s1+=189.0;
    }
   }
  }
 } else {
  if(i4<1.1861324310302734e-05){
   if(i33<1.1037919521331787){
    if(i16<0.0022920677438378334){
     s0+=2365.0;
     s1+=682.0;
    } else {
     s0+=203.0;
     s1+=887.0;
    }
   } else {
    if(i31<0.0011709415121003985){
     s0+=2614.0;
     s1+=45.0;
    } else {
     s0+=7224.0;
     s1+=1404.0;
    }
   }
  } else {
   if(i31<0.0011497519444674253){
    if(i39<0.00025157781783491373){
     s0+=77.0;
    } else {
     s0+=60.0;
     s1+=1224.0;
    }
   } else {
    if(i0<0.1007375717163086){
     s0+=1012.0;
     s1+=325.0;
    } else {
     s0+=217.0;
     s1+=1113.0;
    }
   }
  }
 }
}
if(i10<0.00044035911560058594){
 if(i14<1.0081498622894287){
  if(i8<1.0450963973999023){
   if(i1<0.08220365643501282){
    if(i42<0.00027672521537169814){
     s0+=52693.0;
     s1+=260.0;
    } else {
     s0+=8749.0;
     s1+=556.0;
    }
   } else {
    if(i22<1.0494745969772339){
     s0+=96.0;
     s1+=15.0;
    } else {
     s0+=27.0;
     s1+=163.0;
    }
   }
  } else {
   if(i56<3.018804272869602e-05){
    if(i2<0.00020250678062438965){
     s0+=3351.0;
     s1+=275.0;
    } else {
     s0+=258.0;
     s1+=201.0;
    }
   } else {
    if(i70<0.286579966545105){
     s0+=3180.0;
     s1+=1666.0;
    } else {
     s0+=54.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i44<1.0001627206802368){
   if(i16<0.0035826070234179497){
    if(i32<0.0006022612797096372){
     s0+=120.0;
    } else {
     s0+=182.0;
     s1+=634.0;
    }
   } else {
    if(i6<-1.151877768279519e-05){
     s0+=25.0;
     s1+=1442.0;
    } else {
     s0+=61.0;
    }
   }
  } else {
   if(i63<0.0004645136068575084){
    if(i6<-4.423706195666455e-05){
     s0+=29.0;
     s1+=90.0;
    } else {
     s0+=664.0;
     s1+=59.0;
    }
   } else {
    if(i16<0.004517202265560627){
     s0+=16.0;
     s1+=22.0;
    } else {
     s1+=233.0;
    }
   }
  }
 }
} else {
 if(i6<-6.812407809775323e-05){
  if(i14<1.0030806064605713){
   if(i7<0.08332791924476624){
    if(i18<-0.00013363361358642578){
     s0+=361.0;
     s1+=160.0;
    } else {
     s0+=15.0;
     s1+=216.0;
    }
   } else {
    if(i7<0.1304934024810791){
     s0+=51.0;
     s1+=311.0;
    } else {
     s1+=877.0;
    }
   }
  } else {
   if(i18<5.900859832763672e-06){
    if(i0<0.12678757309913635){
     s0+=54.0;
     s1+=84.0;
    } else {
     s0+=5.0;
     s1+=387.0;
    }
   } else {
    if(i64<-0.040693704038858414){
     s0+=2.0;
     s1+=1169.0;
    } else {
     s1+=6796.0;
    }
   }
  }
 } else {
  if(i3<0.07074937224388123){
   if(i23<0.9995642900466919){
    if(i57<0.1515015959739685){
     s0+=2.0;
     s1+=58.0;
    } else {
     s0+=11.0;
     s1+=7.0;
    }
   } else {
    if(i46<-0.0008376836776733398){
     s0+=129.0;
     s1+=128.0;
    } else {
     s0+=826.0;
     s1+=82.0;
    }
   }
  } else {
   if(i31<0.0019591546151787043){
    if(i37<0.003043767297640443){
     s0+=4.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=327.0;
    }
   } else {
    if(i2<0.0007630586624145508){
     s0+=281.0;
     s1+=215.0;
    } else {
     s0+=2.0;
     s1+=207.0;
    }
   }
  }
 }
}
if(i7<0.07183805108070374){
 if(i13<1.0018699169158936){
  if(i9<1.0398929119110107){
   if(i40<0.0003559023607522249){
    if(i59<-0.002409815788269043){
     s0+=292.0;
     s1+=24.0;
    } else {
     s0+=46861.0;
     s1+=84.0;
    }
   } else {
    if(i33<1.100754976272583){
     s0+=3086.0;
     s1+=855.0;
    } else {
     s0+=12386.0;
     s1+=224.0;
    }
   }
  } else {
   if(i12<1.001572608947754){
    if(i33<1.1037919521331787){
     s0+=1693.0;
     s1+=662.0;
    } else {
     s0+=3660.0;
     s1+=395.0;
    }
   } else {
    if(i30<1.1663256883621216){
     s0+=85.0;
     s1+=435.0;
    } else {
     s0+=378.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i2<0.00048619508743286133){
   if(i44<1.0015921592712402){
    if(i47<0.006045982241630554){
     s0+=60.0;
     s1+=20.0;
    } else {
     s0+=14.0;
     s1+=52.0;
    }
   } else {
    if(i9<1.0976980924606323){
     s0+=440.0;
     s1+=11.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i29<1.5682398080825806){
    if(i4<6.771087646484375e-05){
     s0+=46.0;
     s1+=270.0;
    } else {
     s0+=4.0;
     s1+=1189.0;
    }
   } else {
    if(i31<0.016641421243548393){
     s0+=101.0;
     s1+=48.0;
    } else {
     s1+=86.0;
    }
   }
  }
 }
} else {
 if(i6<-1.826354127842933e-05){
  if(i5<1.0021605491638184){
   if(i61<0.01930558681488037){
    if(i59<0.005858421325683594){
     s0+=13.0;
     s1+=966.0;
    } else {
     s0+=62.0;
     s1+=375.0;
    }
   } else {
    if(i15<-0.0006574392318725586){
     s0+=369.0;
     s1+=409.0;
    } else {
     s0+=182.0;
     s1+=742.0;
    }
   }
  } else {
   if(i47<0.003730321303009987){
    if(i5<1.0044950246810913){
     s0+=99.0;
     s1+=915.0;
    } else {
     s0+=13.0;
     s1+=3440.0;
    }
   } else {
    if(i16<0.0024821385741233826){
     s0+=5.0;
     s1+=65.0;
    } else {
     s0+=5.0;
     s1+=5251.0;
    }
   }
  }
 } else {
  if(i32<0.0018564584897831082){
   if(i60<-0.0032870254945009947){
    if(i39<0.0017967905150726438){
     s0+=174.0;
     s1+=20.0;
    } else {
     s0+=592.0;
    }
   } else {
    if(i31<0.0004931280855089426){
     s0+=165.0;
     s1+=2.0;
    } else {
     s0+=120.0;
     s1+=146.0;
    }
   }
  } else {
   if(i62<0.001731821452267468){
    if(i4<3.826618194580078e-05){
     s0+=268.0;
     s1+=88.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i64<-0.0799025222659111){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=138.0;
    }
   }
  }
 }
}
if(i3<0.08316218852996826){
 if(i13<1.001643180847168){
  if(i42<0.0002955824602395296){
   if(i22<1.0475037097930908){
    if(i50<0.00166973820887506){
     s0+=50272.0;
     s1+=82.0;
    } else {
     s0+=256.0;
     s1+=39.0;
    }
   } else {
    if(i20<0.9825758934020996){
     s0+=13.0;
     s1+=71.0;
    } else {
     s0+=5702.0;
     s1+=355.0;
    }
   }
  } else {
   if(i35<1.1036889553070068){
    if(i33<1.081458568572998){
     s0+=2629.0;
     s1+=109.0;
    } else {
     s0+=1402.0;
     s1+=1015.0;
    }
   } else {
    if(i50<0.004625665955245495){
     s0+=6586.0;
     s1+=96.0;
    } else {
     s0+=1731.0;
     s1+=229.0;
    }
   }
  }
 } else {
  if(i32<0.0018566959770396352){
   if(i52<1.0004587173461914){
    if(i31<0.002056353259831667){
     s1+=549.0;
    } else {
     s0+=18.0;
     s1+=1.0;
    }
   } else {
    s0+=50.0;
   }
  } else {
   if(i51<-0.0010471343994140625){
    if(i5<1.000807285308838){
     s0+=217.0;
     s1+=48.0;
    } else {
     s0+=86.0;
     s1+=326.0;
    }
   } else {
    if(i50<0.004179657436907291){
     s0+=645.0;
     s1+=41.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i15<0.0003827810287475586){
  if(i43<0.058124810457229614){
   if(i13<0.9977572560310364){
    s0+=84.0;
   } else {
    if(i3<0.09171810746192932){
     s0+=52.0;
     s1+=268.0;
    } else {
     s0+=5.0;
     s1+=1923.0;
    }
   }
  } else {
   if(i16<0.005988217890262604){
    if(i6<-1.2701755622401834e-05){
     s0+=411.0;
     s1+=393.0;
    } else {
     s0+=819.0;
     s1+=104.0;
    }
   } else {
    if(i7<0.09880083799362183){
     s0+=79.0;
     s1+=55.0;
    } else {
     s0+=33.0;
     s1+=1175.0;
    }
   }
  }
 } else {
  if(i5<1.0006211996078491){
   if(i16<0.002103103557601571){
    s0+=53.0;
   } else {
    if(i59<-0.0002295374870300293){
     s0+=4.0;
    } else {
     s0+=1.0;
     s1+=150.0;
    }
   }
  } else {
   if(i5<1.0038089752197266){
    if(i67<-0.00013105721154715866){
     s0+=52.0;
     s1+=1262.0;
    } else {
     s0+=27.0;
     s1+=28.0;
    }
   } else {
    s1+=8691.0;
   }
  }
 }
}
if(i1<0.07828637957572937){
 if(i58<-7.497097612940706e-06){
  if(i39<0.00047319300938397646){
   s0+=4.0;
  } else {
   if(i10<0.0005826354026794434){
    s0+=1.0;
   } else {
    if(i29<1.5942578315734863){
     s1+=402.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i22<1.0486011505126953){
   if(i39<0.00035190751077607274){
    if(i9<1.0437653064727783){
     s0+=38073.0;
     s1+=2.0;
    } else {
     s0+=241.0;
     s1+=1.0;
    }
   } else {
    if(i33<1.0997401475906372){
     s0+=3862.0;
     s1+=308.0;
    } else {
     s0+=14053.0;
     s1+=68.0;
    }
   }
  } else {
   if(i11<1.8537044525146484e-05){
    if(i31<0.0008641827153041959){
     s0+=3783.0;
     s1+=1202.0;
    } else {
     s0+=8379.0;
     s1+=433.0;
    }
   } else {
    if(i12<1.000288724899292){
     s0+=863.0;
     s1+=226.0;
    } else {
     s0+=88.0;
     s1+=625.0;
    }
   }
  }
 }
} else {
 if(i15<0.000260770320892334){
  if(i36<0.04300898313522339){
   if(i45<-0.00024577975273132324){
    s0+=85.0;
   } else {
    if(i35<1.0515947341918945){
     s0+=2.0;
    } else {
     s0+=49.0;
     s1+=2217.0;
    }
   }
  } else {
   if(i72<9.25282365642488e-05){
    if(i3<0.11920273303985596){
     s0+=599.0;
     s1+=81.0;
    } else {
     s0+=419.0;
     s1+=313.0;
    }
   } else {
    if(i16<0.007300989702343941){
     s0+=491.0;
     s1+=276.0;
    } else {
     s0+=43.0;
     s1+=788.0;
    }
   }
  }
 } else {
  if(i4<1.0311603546142578e-05){
   if(i6<-2.2424439521273598e-05){
    if(i21<0.010607262142002583){
     s0+=22.0;
     s1+=21.0;
    } else {
     s0+=4.0;
     s1+=209.0;
    }
   } else {
    if(i21<0.05852332338690758){
     s0+=76.0;
     s1+=3.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i29<1.070241093635559){
    s0+=13.0;
   } else {
    if(i2<0.0008675456047058105){
     s0+=83.0;
     s1+=1345.0;
    } else {
     s1+=8480.0;
    }
   }
  }
 }
}
if(i28<1.00885009765625){
 if(i19<1.0029276609420776){
  if(i26<0.00031716469675302505){
   if(i3<0.0832170844078064){
    if(i62<0.000897154794074595){
     s0+=53356.0;
     s1+=159.0;
    } else {
     s0+=271.0;
     s1+=76.0;
    }
   } else {
    if(i28<1.005674958229065){
     s0+=82.0;
     s1+=14.0;
    } else {
     s0+=5.0;
     s1+=36.0;
    }
   }
  } else {
   if(i22<1.0451428890228271){
    if(i59<-0.0017116069793701172){
     s0+=1517.0;
     s1+=133.0;
    } else {
     s0+=4091.0;
     s1+=27.0;
    }
   } else {
    if(i7<0.06524628400802612){
     s0+=7036.0;
     s1+=1465.0;
    } else {
     s0+=965.0;
     s1+=1534.0;
    }
   }
  }
 } else {
  if(i11<9.47713851928711e-06){
   if(i7<0.06754931807518005){
    if(i29<1.2160128355026245){
     s0+=15.0;
     s1+=14.0;
    } else {
     s0+=512.0;
     s1+=6.0;
    }
   } else {
    if(i65<0.9994639754295349){
     s1+=72.0;
    } else {
     s0+=13.0;
     s1+=12.0;
    }
   }
  } else {
   if(i37<0.025884509086608887){
    if(i33<1.2314128875732422){
     s0+=68.0;
     s1+=533.0;
    } else {
     s0+=470.0;
     s1+=422.0;
    }
   } else {
    if(i2<-0.00012749433517456055){
     s0+=63.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=1578.0;
    }
   }
  }
 }
} else {
 if(i2<0.00048047304153442383){
  if(i0<0.08921629190444946){
   if(i22<1.0610392093658447){
    if(i6<-2.78436691587558e-05){
     s1+=130.0;
    } else {
     s0+=34.0;
     s1+=3.0;
    }
   } else {
    if(i47<0.012454202398657799){
     s0+=1418.0;
     s1+=112.0;
    } else {
     s0+=134.0;
     s1+=70.0;
    }
   }
  } else {
   if(i6<-2.170277548430022e-05){
    if(i13<1.0007693767547607){
     s0+=37.0;
     s1+=1131.0;
    } else {
     s0+=135.0;
     s1+=276.0;
    }
   } else {
    if(i71<1.0289170742034912){
     s0+=43.0;
     s1+=50.0;
    } else {
     s0+=403.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i16<0.0025301207788288593){
   if(i2<0.0009464025497436523){
    if(i35<1.1116299629211426){
     s0+=4.0;
     s1+=38.0;
    } else {
     s0+=164.0;
     s1+=2.0;
    }
   } else {
    s1+=208.0;
   }
  } else {
   if(i24<1.0081164836883545){
    if(i3<0.14300253987312317){
     s0+=50.0;
     s1+=64.0;
    } else {
     s0+=4.0;
     s1+=304.0;
    }
   } else {
    if(i3<0.04674696922302246){
     s0+=12.0;
     s1+=14.0;
    } else {
     s0+=35.0;
     s1+=8773.0;
    }
   }
  }
 }
}
if(i3<0.0827004611492157){
 if(i17<1.0043548345565796){
  if(i4<4.1544437408447266e-05){
   if(i22<1.0467959642410278){
    if(i26<0.000316699908580631){
     s0+=48934.0;
     s1+=82.0;
    } else {
     s0+=5848.0;
     s1+=174.0;
    }
   } else {
    if(i21<0.01607402041554451){
     s0+=9277.0;
     s1+=467.0;
    } else {
     s0+=3991.0;
     s1+=1142.0;
    }
   }
  } else {
   if(i68<1.0011383295059204){
    if(i12<1.0042668581008911){
     s0+=221.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i47<0.0024917819537222385){
     s0+=54.0;
     s1+=16.0;
    } else {
     s0+=59.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i13<1.0018912553787231){
   if(i41<-1.4366671166499145e-05){
    if(i15<0.00026667118072509766){
     s0+=43.0;
     s1+=14.0;
    } else {
     s0+=2.0;
     s1+=209.0;
    }
   } else {
    if(i35<1.083996295928955){
     s0+=37.0;
     s1+=100.0;
    } else {
     s0+=1094.0;
     s1+=19.0;
    }
   }
  } else {
   if(i19<1.002009630203247){
    if(i25<1.0132770538330078){
     s1+=5.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i53<0.0005215670680627227){
     s0+=14.0;
     s1+=3.0;
    } else {
     s1+=413.0;
    }
   }
  }
 }
} else {
 if(i13<0.9985275268554688){
  if(i6<-3.8750713429180905e-05){
   if(i18<2.753734588623047e-05){
    if(i9<1.0311493873596191){
     s0+=1.0;
    } else {
     s1+=22.0;
    }
   } else {
    s0+=31.0;
   }
  } else {
   if(i65<1.0010998249053955){
    s0+=405.0;
   } else {
    if(i28<0.985762357711792){
     s1+=5.0;
    } else {
     s0+=11.0;
    }
   }
  }
 } else {
  if(i3<0.1233639121055603){
   if(i43<0.060418784618377686){
    if(i28<1.0324627161026){
     s0+=79.0;
     s1+=2128.0;
    } else {
     s0+=21.0;
     s1+=30.0;
    }
   } else {
    if(i54<0.06083819270133972){
     s0+=289.0;
     s1+=232.0;
    } else {
     s0+=511.0;
     s1+=32.0;
    }
   }
  } else {
   if(i41<-1.1213021025469061e-05){
    if(i18<-4.4405460357666016e-06){
     s0+=81.0;
     s1+=1630.0;
    } else {
     s0+=5.0;
     s1+=8920.0;
    }
   } else {
    if(i36<0.08618742227554321){
     s0+=16.0;
     s1+=817.0;
    } else {
     s0+=239.0;
     s1+=167.0;
    }
   }
  }
 }
}
if(i19<1.002824306488037){
 if(i6<-5.8399738918524235e-05){
  if(i28<1.0072250366210938){
   if(i1<0.08402323722839355){
    if(i2<0.0003032088279724121){
     s0+=994.0;
     s1+=77.0;
    } else {
     s0+=67.0;
     s1+=99.0;
    }
   } else {
    if(i10<-0.00042054057121276855){
     s0+=11.0;
    } else {
     s0+=38.0;
     s1+=454.0;
    }
   }
  } else {
   if(i1<0.07677465677261353){
    if(i29<1.2760648727416992){
     s1+=60.0;
    } else {
     s0+=77.0;
     s1+=28.0;
    }
   } else {
    if(i1<0.13650986552238464){
     s0+=52.0;
     s1+=304.0;
    } else {
     s0+=4.0;
     s1+=1616.0;
    }
   }
  }
 } else {
  if(i3<0.07845327258110046){
   if(i51<-0.0013793110847473145){
    if(i1<0.03965926170349121){
     s0+=3744.0;
     s1+=412.0;
    } else {
     s0+=763.0;
     s1+=412.0;
    }
   } else {
    if(i47<0.008306121453642845){
     s0+=60945.0;
     s1+=677.0;
    } else {
     s0+=1219.0;
     s1+=226.0;
    }
   }
  } else {
   if(i45<-0.00013816356658935547){
    if(i41<-1.0015804946306162e-05){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=550.0;
     s1+=2.0;
    }
   } else {
    if(i46<0.004765361547470093){
     s0+=424.0;
     s1+=1836.0;
    } else {
     s0+=764.0;
     s1+=365.0;
    }
   }
  }
 }
} else {
 if(i8<1.041278600692749){
  if(i31<0.0022720464039593935){
   if(i37<0.005027595907449722){
    if(i0<0.08836030960083008){
     s0+=91.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=120.0;
   }
  } else {
   if(i0<0.09502550959587097){
    if(i10<0.0009391307830810547){
     s0+=647.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   } else {
    s1+=57.0;
   }
  }
 } else {
  if(i0<0.07138943672180176){
   if(i49<-9.179115295410156e-06){
    if(i66<-5.3025951274321415e-06){
     s0+=83.0;
     s1+=498.0;
    } else {
     s0+=70.0;
     s1+=59.0;
    }
   } else {
    if(i72<2.3770724510541186e-05){
     s0+=10.0;
     s1+=8.0;
    } else {
     s0+=221.0;
     s1+=15.0;
    }
   }
  } else {
   if(i58<1.1137607543787453e-05){
    if(i5<1.0016964673995972){
     s0+=71.0;
     s1+=258.0;
    } else {
     s0+=46.0;
     s1+=8755.0;
    }
   } else {
    if(i8<1.081464171409607){
     s0+=98.0;
     s1+=48.0;
    } else {
     s0+=12.0;
     s1+=830.0;
    }
   }
  }
 }
}
if(i26<0.00037622504169121385){
 if(i19<1.0031635761260986){
  if(i7<0.07564249634742737){
   if(i20<1.0108616352081299){
    if(i59<-0.003989994525909424){
     s0+=35.0;
     s1+=62.0;
    } else {
     s0+=55136.0;
     s1+=435.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s0+=26.0;
     s1+=157.0;
    } else {
     s0+=35.0;
    }
   }
  } else {
   if(i21<0.01193576492369175){
    if(i17<1.0029196739196777){
     s0+=97.0;
     s1+=3.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i6<-7.739139618934132e-06){
     s0+=5.0;
     s1+=105.0;
    } else {
     s0+=13.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i29<1.2385294437408447){
   if(i40<0.00020855499315075576){
    s0+=29.0;
   } else {
    s1+=412.0;
   }
  } else {
   if(i1<0.09091159701347351){
    s0+=88.0;
   } else {
    s1+=31.0;
   }
  }
 }
} else {
 if(i6<-8.167904161382467e-05){
  if(i0<0.017054468393325806){
   if(i15<-0.0008302032947540283){
    if(i40<0.06181161478161812){
     s0+=412.0;
     s1+=10.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=32.0;
   }
  } else {
   if(i29<1.082350254058838){
    s0+=17.0;
   } else {
    if(i3<0.06956753134727478){
     s0+=136.0;
     s1+=273.0;
    } else {
     s0+=82.0;
     s1+=10352.0;
    }
   }
  }
 } else {
  if(i7<0.06278771162033081){
   if(i33<1.1999231576919556){
    if(i16<0.004093721974641085){
     s0+=4015.0;
     s1+=1073.0;
    } else {
     s0+=161.0;
     s1+=740.0;
    }
   } else {
    if(i4<6.371736526489258e-05){
     s0+=8364.0;
     s1+=195.0;
    } else {
     s0+=13.0;
     s1+=87.0;
    }
   }
  } else {
   if(i0<0.10110792517662048){
    if(i64<-0.01170714944601059){
     s0+=932.0;
     s1+=99.0;
    } else {
     s0+=503.0;
     s1+=532.0;
    }
   } else {
    if(i60<-0.00818702857941389){
     s0+=639.0;
     s1+=572.0;
    } else {
     s0+=352.0;
     s1+=1958.0;
    }
   }
  }
 }
}
if(i8<1.0562306642532349){
 if(i26<0.0002731260610744357){
  if(i10<0.0007555186748504639){
   if(i28<1.0077247619628906){
    if(i68<1.002260684967041){
     s0+=50836.0;
     s1+=131.0;
    } else {
     s0+=891.0;
     s1+=80.0;
    }
   } else {
    if(i35<1.083398699760437){
     s0+=30.0;
     s1+=155.0;
    } else {
     s0+=153.0;
     s1+=10.0;
    }
   }
  } else {
   if(i65<0.9979636669158936){
    s0+=2.0;
   } else {
    s1+=32.0;
   }
  }
 } else {
  if(i18<-0.00020164251327514648){
   if(i16<0.02459309622645378){
    if(i4<2.962350845336914e-05){
     s0+=8066.0;
     s1+=153.0;
    } else {
     s0+=17.0;
     s1+=42.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i2<0.00016623735427856445){
    if(i30<1.0670123100280762){
     s0+=2433.0;
     s1+=8.0;
    } else {
     s0+=1903.0;
     s1+=1073.0;
    }
   } else {
    if(i5<0.999362587928772){
     s0+=87.0;
    } else {
     s0+=114.0;
     s1+=731.0;
    }
   }
  }
 }
} else {
 if(i32<0.004933849908411503){
  if(i5<1.002016305923462){
   if(i29<1.255998969078064){
    if(i34<0.0005556478863582015){
     s0+=789.0;
     s1+=87.0;
    } else {
     s0+=1714.0;
     s1+=1789.0;
    }
   } else {
    if(i16<0.0062418607994914055){
     s0+=2746.0;
     s1+=62.0;
    } else {
     s0+=19.0;
     s1+=226.0;
    }
   }
  } else {
   if(i6<-4.3521460611373186e-05){
    if(i5<1.002587080001831){
     s0+=37.0;
     s1+=156.0;
    } else {
     s0+=2.0;
     s1+=2149.0;
    }
   } else {
    if(i53<0.0011181130539625883){
     s0+=159.0;
    } else {
     s0+=1.0;
     s1+=210.0;
    }
   }
  }
 } else {
  if(i18<-9.173154830932617e-05){
   if(i67<-0.0003868641215376556){
    if(i26<0.0009231970179826021){
     s0+=64.0;
     s1+=13.0;
    } else {
     s0+=50.0;
     s1+=912.0;
    }
   } else {
    if(i1<0.12128064036369324){
     s0+=791.0;
     s1+=231.0;
    } else {
     s0+=22.0;
     s1+=390.0;
    }
   }
  } else {
   if(i5<1.004448413848877){
    if(i29<1.6016557216644287){
     s0+=28.0;
     s1+=1048.0;
    } else {
     s0+=52.0;
     s1+=58.0;
    }
   } else {
    if(i53<0.0016176815843209624){
     s0+=24.0;
     s1+=859.0;
    } else {
     s1+=6596.0;
    }
   }
  }
 }
}
if(i11<1.5914440155029297e-05){
 if(i7<0.07109606266021729){
  if(i0<0.0785517692565918){
   if(i47<0.006917918100953102){
    if(i42<0.0002973985392600298){
     s0+=54442.0;
     s1+=430.0;
    } else {
     s0+=8446.0;
     s1+=548.0;
    }
   } else {
    if(i13<0.998255729675293){
     s0+=1254.0;
     s1+=5.0;
    } else {
     s0+=2506.0;
     s1+=712.0;
    }
   }
  } else {
   if(i33<1.07965087890625){
    if(i8<1.0494438409805298){
     s0+=276.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=7.0;
    }
   } else {
    if(i44<0.9993386268615723){
     s0+=142.0;
     s1+=4.0;
    } else {
     s0+=156.0;
     s1+=917.0;
    }
   }
  }
 } else {
  if(i36<0.042174577713012695){
   if(i1<0.08244869112968445){
    if(i39<0.0019099328201264143){
     s0+=14.0;
     s1+=143.0;
    } else {
     s0+=76.0;
     s1+=23.0;
    }
   } else {
    if(i72<0.00047286314656957984){
     s0+=18.0;
     s1+=1537.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i3<0.11256253719329834){
    if(i26<0.00161217269487679){
     s0+=467.0;
     s1+=174.0;
    } else {
     s0+=504.0;
     s1+=17.0;
    }
   } else {
    if(i31<0.0055200885981321335){
     s0+=547.0;
     s1+=626.0;
    } else {
     s0+=29.0;
     s1+=781.0;
    }
   }
  }
 }
} else {
 if(i15<0.00047767162322998047){
  if(i9<1.0979225635528564){
   if(i5<1.0015944242477417){
    if(i38<0.08685347437858582){
     s0+=1739.0;
     s1+=209.0;
    } else {
     s0+=46.0;
     s1+=77.0;
    }
   } else {
    if(i65<0.9976792931556702){
     s0+=46.0;
    } else {
     s0+=211.0;
     s1+=920.0;
    }
   }
  } else {
   if(i63<0.0004547640564851463){
    if(i51<-0.0028406381607055664){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=109.0;
     s1+=10.0;
    }
   } else {
    if(i16<0.005244196392595768){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=1250.0;
    }
   }
  }
 } else {
  if(i6<-4.3679225200321525e-05){
   if(i41<-1.031915053317789e-05){
    s1+=8534.0;
   } else {
    s0+=3.0;
   }
  } else {
   if(i63<0.0004341387830208987){
    if(i11<3.0040740966796875e-05){
     s0+=95.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i40<0.00028988171834498644){
     s0+=47.0;
    } else {
     s1+=80.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i3<0.0852343738079071){
  if(i3<0.06989970803260803){
   if(i22<1.0451585054397583){
    if(i59<-0.002239435911178589){
     s0+=1624.0;
     s1+=104.0;
    } else {
     s0+=51714.0;
     s1+=65.0;
    }
   } else {
    if(i35<1.1031841039657593){
     s0+=5267.0;
     s1+=1040.0;
    } else {
     s0+=8993.0;
     s1+=337.0;
    }
   }
  } else {
   if(i7<0.0555034875869751){
    if(i19<0.9971548318862915){
     s0+=41.0;
     s1+=4.0;
    } else {
     s0+=25.0;
     s1+=214.0;
    }
   } else {
    if(i13<0.9986303448677063){
     s0+=584.0;
     s1+=10.0;
    } else {
     s0+=1107.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i10<-0.00041115283966064453){
   if(i34<0.007754760794341564){
    s0+=364.0;
   } else {
    if(i22<1.0700592994689941){
     s0+=3.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i31<0.0068463594652712345){
    if(i23<1.0533534288406372){
     s0+=90.0;
     s1+=1391.0;
    } else {
     s0+=904.0;
     s1+=1167.0;
    }
   } else {
    if(i52<1.0004706382751465){
     s0+=14.0;
     s1+=1111.0;
    } else {
     s0+=33.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i40<0.0001883803342934698){
  s0+=35.0;
 } else {
  if(i15<0.001430511474609375){
   if(i63<0.00046310463221743703){
    if(i3<0.12603744864463806){
     s0+=243.0;
     s1+=247.0;
    } else {
     s0+=20.0;
     s1+=383.0;
    }
   } else {
    if(i1<0.0423944890499115){
     s0+=34.0;
     s1+=141.0;
    } else {
     s0+=32.0;
     s1+=2076.0;
    }
   }
  } else {
   if(i42<0.00010668670438462868){
    s0+=6.0;
   } else {
    if(i41<-9.602561476640403e-06){
     s1+=8378.0;
    } else {
     s0+=7.0;
     s1+=26.0;
    }
   }
  }
 }
}
if(i2<0.0005699992179870605){
 if(i0<0.08528822660446167){
  if(i49<-0.0026549994945526123){
   if(i33<1.0727559328079224){
    if(i7<0.030787169933319092){
     s0+=491.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.0015626648673787713){
     s0+=241.0;
     s1+=291.0;
    } else {
     s0+=1161.0;
     s1+=220.0;
    }
   }
  } else {
   if(i21<0.01427015196532011){
    if(i50<0.001595754991285503){
     s0+=53306.0;
     s1+=290.0;
    } else {
     s0+=2061.0;
     s1+=221.0;
    }
   } else {
    if(i39<0.0019994275644421577){
     s0+=3584.0;
     s1+=981.0;
    } else {
     s0+=7879.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i13<0.998518705368042){
   if(i15<-0.0029727518558502197){
    if(i41<-8.846296623232774e-06){
     s0+=24.0;
     s1+=14.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i39<0.025901811197400093){
     s0+=650.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i71<1.0239026546478271){
    if(i64<-0.02541252039372921){
     s0+=156.0;
     s1+=223.0;
    } else {
     s0+=213.0;
     s1+=1926.0;
    }
   } else {
    if(i0<0.12511005997657776){
     s0+=466.0;
     s1+=103.0;
    } else {
     s0+=312.0;
     s1+=1131.0;
    }
   }
  }
 }
} else {
 if(i2<0.0009791254997253418){
  if(i1<0.07936036586761475){
   if(i16<0.004105293191969395){
    if(i56<3.594068402890116e-06){
     s0+=259.0;
    } else {
     s0+=25.0;
     s1+=55.0;
    }
   } else {
    if(i64<-0.009984515607357025){
     s0+=45.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=281.0;
    }
   }
  } else {
   if(i67<-0.0002002752444241196){
    if(i0<0.16821855306625366){
     s0+=17.0;
     s1+=394.0;
    } else {
     s1+=704.0;
    }
   } else {
    if(i23<1.055722713470459){
     s0+=2.0;
     s1+=130.0;
    } else {
     s0+=55.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i29<1.613681674003601){
   if(i3<0.008992880582809448){
    if(i54<-0.06026044487953186){
     s0+=2.0;
     s1+=24.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i6<-8.689201786182821e-05){
     s1+=7472.0;
    } else {
     s0+=2.0;
     s1+=909.0;
    }
   }
  } else {
   if(i3<0.12785714864730835){
    if(i13<1.0038456916809082){
     s0+=66.0;
     s1+=4.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i37<0.011576391756534576){
     s0+=7.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=1496.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i12<1.004420280456543){
  if(i0<0.08254918456077576){
   if(i22<1.0451585054397583){
    if(i48<-0.0063190460205078125){
     s0+=716.0;
     s1+=66.0;
    } else {
     s0+=52882.0;
     s1+=158.0;
    }
   } else {
    if(i31<0.0008768744301050901){
     s0+=3482.0;
     s1+=872.0;
    } else {
     s0+=6402.0;
     s1+=204.0;
    }
   }
  } else {
   if(i2<-0.000742793083190918){
    if(i20<0.9784070253372192){
     s0+=27.0;
     s1+=12.0;
    } else {
     s0+=380.0;
     s1+=10.0;
    }
   } else {
    if(i30<1.0664865970611572){
     s0+=69.0;
     s1+=2.0;
    } else {
     s0+=112.0;
     s1+=604.0;
    }
   }
  }
 } else {
  if(i66<-4.981833626516163e-06){
   if(i10<6.645917892456055e-05){
    s0+=9.0;
   } else {
    if(i5<1.0010018348693848){
     s0+=6.0;
     s1+=4.0;
    } else {
     s1+=362.0;
    }
   }
  } else {
   if(i29<1.1386182308197021){
    if(i22<1.0512195825576782){
     s0+=1.0;
    } else {
     s1+=63.0;
    }
   } else {
    if(i18<-4.7206878662109375e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=344.0;
    }
   }
  }
 }
} else {
 if(i15<0.0007808804512023926){
  if(i4<3.36766242980957e-05){
   if(i21<0.0227129478007555){
    if(i35<1.1039339303970337){
     s0+=1061.0;
     s1+=449.0;
    } else {
     s0+=3613.0;
     s1+=316.0;
    }
   } else {
    if(i4<-4.9620866775512695e-05){
     s0+=564.0;
     s1+=139.0;
    } else {
     s0+=907.0;
     s1+=2156.0;
    }
   }
  } else {
   if(i26<0.009314914233982563){
    if(i33<1.613681674003601){
     s0+=187.0;
     s1+=1024.0;
    } else {
     s0+=59.0;
     s1+=57.0;
    }
   } else {
    if(i33<1.223900556564331){
     s0+=11.0;
     s1+=23.0;
    } else {
     s0+=16.0;
     s1+=1063.0;
    }
   }
  }
 } else {
  if(i19<1.0028162002563477){
   if(i37<0.008645016700029373){
    if(i6<-5.618033901555464e-05){
     s1+=154.0;
    } else {
     s0+=146.0;
     s1+=48.0;
    }
   } else {
    if(i32<0.0005854573100805283){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=1453.0;
    }
   }
  } else {
   if(i26<0.00024360409588553011){
    if(i30<1.2392117977142334){
     s1+=11.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i41<-1.4176274817145895e-05){
     s1+=7852.0;
    } else {
     s0+=37.0;
     s1+=93.0;
    }
   }
  }
 }
}
if(i5<1.002474308013916){
 if(i1<0.07771864533424377){
  if(i8<1.0452277660369873){
   if(i50<0.0015900211874395609){
    if(i40<0.00028926131199114025){
     s0+=45249.0;
     s1+=30.0;
    } else {
     s0+=12986.0;
     s1+=380.0;
    }
   } else {
    if(i55<0.0009777529630810022){
     s0+=2107.0;
     s1+=396.0;
    } else {
     s0+=1657.0;
     s1+=16.0;
    }
   }
  } else {
   if(i35<1.1034480333328247){
    if(i31<0.00030977942515164614){
     s0+=1036.0;
     s1+=2.0;
    } else {
     s0+=1271.0;
     s1+=953.0;
    }
   } else {
    if(i53<0.00576980784535408){
     s0+=4667.0;
     s1+=294.0;
    } else {
     s0+=2.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i36<0.042641520500183105){
   if(i11<-1.800060272216797e-05){
    s0+=79.0;
   } else {
    if(i59<0.009412169456481934){
     s0+=43.0;
     s1+=2003.0;
    } else {
     s0+=40.0;
     s1+=178.0;
    }
   }
  } else {
   if(i37<0.040198102593421936){
    if(i21<0.02476624771952629){
     s0+=1068.0;
     s1+=367.0;
    } else {
     s0+=505.0;
     s1+=609.0;
    }
   } else {
    if(i16<0.005515127442777157){
     s0+=39.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=597.0;
    }
   }
  }
 }
} else {
 if(i21<0.023654986172914505){
  if(i6<-4.4085743866162375e-05){
   if(i0<0.06595635414123535){
    if(i33<1.2371783256530762){
     s1+=203.0;
    } else {
     s0+=81.0;
     s1+=70.0;
    }
   } else {
    if(i25<0.9967197179794312){
     s0+=45.0;
     s1+=85.0;
    } else {
     s0+=13.0;
     s1+=2106.0;
    }
   }
  } else {
   if(i30<1.217149257659912){
    if(i35<1.052521824836731){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=176.0;
    }
   } else {
    if(i44<1.0009973049163818){
     s0+=139.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i1<0.04414522647857666){
   if(i46<-0.0014739632606506348){
    if(i54<-0.025263935327529907){
     s0+=6.0;
     s1+=110.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   } else {
    if(i22<1.0807536840438843){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i6<-6.372842472046614e-05){
    if(i56<0.00012209010310471058){
     s1+=6948.0;
    } else {
     s0+=13.0;
     s1+=1340.0;
    }
   } else {
    if(i35<1.1677640676498413){
     s0+=1.0;
     s1+=121.0;
    } else {
     s0+=22.0;
     s1+=78.0;
    }
   }
  }
 }
}
if(i2<0.0005481839179992676){
 if(i69<0.04725302383303642){
  if(i1<0.08373457193374634){
   if(i8<1.0451585054397583){
    if(i26<0.00025350722717121243){
     s0+=48352.0;
     s1+=109.0;
    } else {
     s0+=5601.0;
     s1+=230.0;
    }
   } else {
    if(i33<1.1037919521331787){
     s0+=1068.0;
     s1+=402.0;
    } else {
     s0+=1787.0;
     s1+=65.0;
    }
   }
  } else {
   if(i6<-1.1955367881455459e-05){
    if(i29<1.2392117977142334){
     s0+=6.0;
     s1+=499.0;
    } else {
     s0+=58.0;
     s1+=35.0;
    }
   } else {
    if(i21<0.04721132665872574){
     s0+=115.0;
     s1+=7.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i1<0.0828976035118103){
   if(i34<0.00110605638474226){
    if(i34<0.0005047140875831246){
     s0+=2342.0;
     s1+=117.0;
    } else {
     s0+=752.0;
     s1+=961.0;
    }
   } else {
    if(i53<0.006460332777351141){
     s0+=9101.0;
     s1+=439.0;
    } else {
     s0+=9.0;
     s1+=35.0;
    }
   }
  } else {
   if(i61<0.031565308570861816){
    if(i66<1.3915869203628972e-06){
     s0+=291.0;
     s1+=1872.0;
    } else {
     s0+=65.0;
    }
   } else {
    if(i21<0.03633318096399307){
     s0+=663.0;
     s1+=250.0;
    } else {
     s0+=186.0;
     s1+=522.0;
    }
   }
  }
 }
} else {
 if(i72<0.00044625435839407146){
  if(i2<0.0009856820106506348){
   if(i59<0.013650357723236084){
    if(i3<0.06280359625816345){
     s0+=191.0;
     s1+=198.0;
    } else {
     s0+=128.0;
     s1+=1202.0;
    }
   } else {
    if(i28<1.0449821949005127){
     s0+=3.0;
     s1+=32.0;
    } else {
     s1+=294.0;
    }
   }
  } else {
   if(i1<0.035590797662734985){
    if(i50<0.0016511259600520134){
     s0+=15.0;
    } else {
     s0+=19.0;
     s1+=139.0;
    }
   } else {
    if(i12<1.0063955783843994){
     s0+=65.0;
     s1+=1714.0;
    } else {
     s1+=8129.0;
    }
   }
  }
 } else {
  s0+=178.0;
 }
}
if(i69<0.04935649037361145){
 if(i1<0.07793956995010376){
  if(i5<1.0024954080581665){
   if(i20<1.0095566511154175){
    if(i57<0.026235653087496758){
     s0+=54276.0;
     s1+=311.0;
    } else {
     s0+=2803.0;
     s1+=348.0;
    }
   } else {
    if(i5<1.0015114545822144){
     s0+=241.0;
     s1+=70.0;
    } else {
     s0+=24.0;
     s1+=74.0;
    }
   }
  } else {
   if(i39<0.0023745845537632704){
    if(i8<1.0343273878097534){
     s0+=19.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=330.0;
    }
   } else {
    if(i49<-0.0031766295433044434){
     s1+=11.0;
    } else {
     s0+=76.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i17<1.0001654624938965){
   if(i6<-1.5246553630277049e-05){
    if(i36<0.047822535037994385){
     s0+=11.0;
     s1+=147.0;
    } else {
     s0+=77.0;
     s1+=49.0;
    }
   } else {
    if(i13<1.0009996891021729){
     s0+=221.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=15.0;
    }
   }
  } else {
   if(i16<0.001200160477310419){
    if(i58<-1.169019924418535e-06){
     s1+=18.0;
    } else {
     s0+=23.0;
     s1+=7.0;
    }
   } else {
    if(i34<0.00034100032644346356){
     s0+=3.0;
    } else {
     s0+=21.0;
     s1+=1347.0;
    }
   }
  }
 }
} else {
 if(i4<1.6510486602783203e-05){
  if(i0<0.08678489923477173){
   if(i40<0.002252190141007304){
    if(i35<1.055511236190796){
     s0+=1605.0;
     s1+=1.0;
    } else {
     s0+=2573.0;
     s1+=1006.0;
    }
   } else {
    if(i57<0.0005342268850654364){
     s1+=5.0;
    } else {
     s0+=6904.0;
     s1+=184.0;
    }
   }
  } else {
   if(i10<-0.0004050135612487793){
    if(i52<0.9998185634613037){
     s0+=406.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i54<0.06849589943885803){
     s0+=208.0;
     s1+=1450.0;
    } else {
     s0+=498.0;
     s1+=534.0;
    }
   }
  }
 } else {
  if(i1<0.10010150074958801){
   if(i2<0.0009527206420898438){
    if(i31<0.0013483399525284767){
     s0+=34.0;
     s1+=287.0;
    } else {
     s0+=615.0;
     s1+=257.0;
    }
   } else {
    if(i64<-0.0171830877661705){
     s0+=22.0;
     s1+=4.0;
    } else {
     s0+=40.0;
     s1+=911.0;
    }
   }
  } else {
   if(i6<-4.2377563659101725e-05){
    if(i5<0.9950134754180908){
     s0+=12.0;
    } else {
     s0+=73.0;
     s1+=9746.0;
    }
   } else {
    if(i9<1.089789628982544){
     s0+=4.0;
     s1+=144.0;
    } else {
     s0+=99.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i4<3.641843795776367e-05){
 if(i42<0.00032521545654162765){
  if(i26<0.00028234103228896856){
   if(i28<1.0081331729888916){
    if(i68<1.0022574663162231){
     s0+=51192.0;
     s1+=150.0;
    } else {
     s0+=895.0;
     s1+=44.0;
    }
   } else {
    if(i30<1.0852019786834717){
     s0+=26.0;
     s1+=109.0;
    } else {
     s0+=132.0;
     s1+=20.0;
    }
   }
  } else {
   if(i30<1.103413462638855){
    if(i6<-1.5447352780029178e-05){
     s0+=89.0;
     s1+=348.0;
    } else {
     s0+=1731.0;
     s1+=220.0;
    }
   } else {
    if(i55<-0.00019379568402655423){
     s1+=17.0;
    } else {
     s0+=3542.0;
     s1+=89.0;
    }
   }
  }
 } else {
  if(i9<1.0398828983306885){
   if(i3<0.07083311676979065){
    if(i15<-0.0020769238471984863){
     s0+=4577.0;
     s1+=44.0;
    } else {
     s0+=2737.0;
     s1+=466.0;
    }
   } else {
    if(i12<0.9915764927864075){
     s0+=154.0;
     s1+=21.0;
    } else {
     s0+=51.0;
     s1+=341.0;
    }
   }
  } else {
   if(i1<0.09386557340621948){
    if(i3<0.06634080410003662){
     s0+=3282.0;
     s1+=482.0;
    } else {
     s0+=1173.0;
     s1+=588.0;
    }
   } else {
    if(i11<-1.609325408935547e-05){
     s0+=258.0;
     s1+=6.0;
    } else {
     s0+=648.0;
     s1+=2430.0;
    }
   }
  }
 }
} else {
 if(i34<0.0003840237041004002){
  s0+=340.0;
 } else {
  if(i26<0.00016685228911228478){
   if(i16<0.001840716227889061){
    s0+=37.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i1<0.08288347721099854){
    if(i35<1.1989632844924927){
     s0+=24.0;
     s1+=978.0;
    } else {
     s0+=236.0;
     s1+=251.0;
    }
   } else {
    if(i2<-0.00013974308967590332){
     s0+=9.0;
    } else {
     s0+=105.0;
     s1+=10403.0;
    }
   }
  }
 }
}
if(i3<0.08358272910118103){
 if(i22<1.0485899448394775){
  if(i50<0.0014723644126206636){
   if(i24<1.007657766342163){
    if(i51<-0.0014064908027648926){
     s0+=403.0;
     s1+=75.0;
    } else {
     s0+=53518.0;
     s1+=121.0;
    }
   } else {
    if(i54<0.009420275688171387){
     s1+=5.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i2<5.987286567687988e-05){
    if(i52<0.9998416900634766){
     s0+=573.0;
     s1+=137.0;
    } else {
     s0+=1431.0;
     s1+=18.0;
    }
   } else {
    if(i39<0.0002671090478543192){
     s0+=10.0;
    } else {
     s0+=10.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i47<0.006466258317232132){
   if(i33<1.1037919521331787){
    if(i31<0.00031862230389378965){
     s0+=1288.0;
     s1+=7.0;
    } else {
     s0+=902.0;
     s1+=994.0;
    }
   } else {
    if(i18<0.00023448467254638672){
     s0+=8276.0;
     s1+=233.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i13<1.0017173290252686){
    if(i33<1.1037919521331787){
     s0+=476.0;
     s1+=522.0;
    } else {
     s0+=2391.0;
     s1+=320.0;
    }
   } else {
    if(i4<2.676248550415039e-05){
     s0+=115.0;
     s1+=36.0;
    } else {
     s0+=85.0;
     s1+=655.0;
    }
   }
  }
 }
} else {
 if(i18<6.276369094848633e-05){
  if(i6<-1.381049514748156e-05){
   if(i55<0.000857840059325099){
    if(i54<0.04280713200569153){
     s0+=76.0;
     s1+=1234.0;
    } else {
     s0+=367.0;
     s1+=815.0;
    }
   } else {
    if(i21<0.023653900250792503){
     s0+=32.0;
     s1+=168.0;
    } else {
     s0+=20.0;
     s1+=1344.0;
    }
   }
  } else {
   if(i4<-5.677342414855957e-05){
    if(i15<-0.005224019289016724){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=359.0;
     s1+=1.0;
    }
   } else {
    if(i7<0.07206788659095764){
     s0+=7.0;
     s1+=107.0;
    } else {
     s0+=573.0;
     s1+=284.0;
    }
   }
  }
 } else {
  if(i41<-1.9700028133229353e-06){
   if(i33<1.0670123100280762){
    s0+=13.0;
   } else {
    if(i37<0.009249821305274963){
     s0+=54.0;
     s1+=763.0;
    } else {
     s0+=23.0;
     s1+=9282.0;
    }
   }
  } else {
   if(i29<1.2604451179504395){
    s1+=29.0;
   } else {
    s0+=38.0;
   }
  }
 }
}
if(i16<0.004884303547441959){
 if(i0<0.08401927351951599){
  if(i15<0.0016144514083862305){
   if(i57<0.03127628564834595){
    if(i27<1.007981300354004){
     s0+=56819.0;
     s1+=567.0;
    } else {
     s0+=988.0;
     s1+=299.0;
    }
   } else {
    if(i34<0.001076200744137168){
     s0+=1569.0;
     s1+=662.0;
    } else {
     s0+=4508.0;
     s1+=234.0;
    }
   }
  } else {
   s1+=175.0;
  }
 } else {
  if(i10<-0.00040280818939208984){
   if(i31<0.008839060552418232){
    if(i4<-3.224611282348633e-05){
     s0+=526.0;
    } else {
     s0+=16.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.006710861809551716){
     s1+=9.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i40<0.003308357670903206){
    if(i16<0.0010232478380203247){
     s0+=164.0;
     s1+=48.0;
    } else {
     s0+=198.0;
     s1+=1787.0;
    }
   } else {
    if(i71<1.0137481689453125){
     s0+=74.0;
     s1+=371.0;
    } else {
     s0+=707.0;
     s1+=265.0;
    }
   }
  }
 }
} else {
 if(i5<0.9988207817077637){
  if(i1<0.08702269196510315){
   if(i34<0.001068447483703494){
    if(i35<1.0590121746063232){
     s0+=126.0;
    } else {
     s1+=89.0;
    }
   } else {
    if(i54<-0.06734779477119446){
     s0+=116.0;
     s1+=53.0;
    } else {
     s0+=4657.0;
     s1+=46.0;
    }
   }
  } else {
   if(i6<-9.675741239334457e-06){
    if(i52<1.0003445148468018){
     s0+=10.0;
     s1+=372.0;
    } else {
     s0+=14.0;
     s1+=1.0;
    }
   } else {
    if(i68<0.998597264289856){
     s0+=63.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i18<-0.00013393163681030273){
   if(i3<0.1037154495716095){
    if(i47<0.01056872121989727){
     s0+=455.0;
     s1+=110.0;
    } else {
     s0+=61.0;
     s1+=229.0;
    }
   } else {
    if(i40<0.0021944171749055386){
     s0+=7.0;
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=769.0;
    }
   }
  } else {
   if(i24<0.9597185850143433){
    if(i72<2.563158341217786e-05){
     s0+=13.0;
    } else {
     s1+=83.0;
    }
   } else {
    if(i56<0.00011942848504986614){
     s0+=7.0;
     s1+=9647.0;
    } else {
     s0+=50.0;
     s1+=1240.0;
    }
   }
  }
 }
}
if(i7<0.072673499584198){
 if(i4<4.0471553802490234e-05){
  if(i8<1.0446507930755615){
   if(i69<0.040734466165304184){
    if(i62<0.000844648398924619){
     s0+=51439.0;
     s1+=168.0;
    } else {
     s0+=570.0;
     s1+=139.0;
    }
   } else {
    if(i1<0.07082149386405945){
     s0+=9287.0;
     s1+=487.0;
    } else {
     s0+=135.0;
     s1+=114.0;
    }
   }
  } else {
   if(i34<0.0011786164250224829){
    if(i34<0.00033649560646153986){
     s0+=1290.0;
     s1+=24.0;
    } else {
     s0+=1037.0;
     s1+=1240.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=1177.0;
     s1+=461.0;
    } else {
     s0+=3761.0;
     s1+=297.0;
    }
   }
  }
 } else {
  if(i19<0.9986940622329712){
   if(i12<1.0034559965133667){
    if(i68<1.0037422180175781){
     s0+=231.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i26<0.000179713882971555){
    if(i57<0.005362719763070345){
     s1+=2.0;
    } else {
     s0+=56.0;
    }
   } else {
    if(i45<0.00015428662300109863){
     s0+=94.0;
     s1+=172.0;
    } else {
     s0+=83.0;
     s1+=1727.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018317699432373){
  if(i3<0.10975044965744019){
   if(i38<0.060974955558776855){
    if(i22<1.0456106662750244){
     s0+=32.0;
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=289.0;
    }
   } else {
    if(i36<0.04255110025405884){
     s0+=91.0;
     s1+=110.0;
    } else {
     s0+=934.0;
     s1+=133.0;
    }
   }
  } else {
   if(i36<0.07495933771133423){
    if(i13<0.9976221323013306){
     s0+=17.0;
    } else {
     s0+=42.0;
     s1+=1502.0;
    }
   } else {
    if(i16<0.006009386852383614){
     s0+=633.0;
     s1+=160.0;
    } else {
     s0+=7.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i6<-7.002994971117005e-05){
   if(i0<0.12137383222579956){
    if(i65<0.997559666633606){
     s0+=10.0;
     s1+=2.0;
    } else {
     s0+=30.0;
     s1+=433.0;
    }
   } else {
    if(i30<1.3005231618881226){
     s0+=13.0;
     s1+=1614.0;
    } else {
     s1+=7132.0;
    }
   }
  } else {
   if(i65<1.0015355348587036){
    if(i22<1.0991166830062866){
     s1+=373.0;
    } else {
     s0+=50.0;
     s1+=138.0;
    }
   } else {
    if(i52<0.9999459385871887){
     s1+=3.0;
    } else {
     s0+=33.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i59<-0.0023188889026641846){
  if(i1<0.05708691477775574){
   if(i4<3.62396240234375e-05){
    if(i16<0.0025648765731602907){
     s0+=1617.0;
     s1+=390.0;
    } else {
     s0+=3017.0;
     s1+=141.0;
    }
   } else {
    if(i69<0.3523673713207245){
     s0+=4.0;
     s1+=174.0;
    } else {
     s0+=16.0;
     s1+=1.0;
    }
   }
  } else {
   if(i45<-0.00014194846153259277){
    if(i11<-1.189112663269043e-05){
     s0+=74.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i5<0.9956389665603638){
     s0+=45.0;
     s1+=8.0;
    } else {
     s0+=82.0;
     s1+=753.0;
    }
   }
  }
 } else {
  if(i22<1.0485899448394775){
   if(i69<0.045187391340732574){
    if(i29<1.0856719017028809){
     s0+=34278.0;
    } else {
     s0+=16087.0;
     s1+=81.0;
    }
   } else {
    if(i34<0.0016845881473273039){
     s0+=1715.0;
     s1+=99.0;
    } else {
     s0+=2093.0;
    }
   }
  } else {
   if(i1<0.07263469696044922){
    if(i4<3.045797348022461e-05){
     s0+=5996.0;
     s1+=385.0;
    } else {
     s0+=94.0;
     s1+=167.0;
    }
   } else {
    if(i18<-0.00019234418869018555){
     s0+=85.0;
     s1+=22.0;
    } else {
     s0+=40.0;
     s1+=555.0;
    }
   }
  }
 }
} else {
 if(i3<0.09208527207374573){
  if(i19<1.0034153461456299){
   if(i30<1.1037919521331787){
    if(i17<1.003230333328247){
     s0+=1084.0;
     s1+=364.0;
    } else {
     s0+=32.0;
     s1+=316.0;
    }
   } else {
    if(i63<0.001725230598822236){
     s0+=3377.0;
     s1+=256.0;
    } else {
     s1+=40.0;
    }
   }
  } else {
   if(i2<0.0006076693534851074){
    if(i50<0.007614592555910349){
     s0+=114.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=34.0;
    }
   } else {
    if(i5<1.0042266845703125){
     s0+=96.0;
     s1+=153.0;
    } else {
     s0+=17.0;
     s1+=515.0;
    }
   }
  }
 } else {
  if(i16<0.004701472818851471){
   if(i15<0.0007871389389038086){
    if(i54<0.08196049928665161){
     s0+=338.0;
     s1+=740.0;
    } else {
     s0+=659.0;
     s1+=111.0;
    }
   } else {
    if(i5<1.0035672187805176){
     s0+=29.0;
     s1+=226.0;
    } else {
     s1+=666.0;
    }
   }
  } else {
   if(i11<-2.014636993408203e-05){
    s0+=66.0;
   } else {
    if(i36<0.05945640802383423){
     s0+=5.0;
     s1+=7121.0;
    } else {
     s0+=79.0;
     s1+=3789.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i2<0.0005701780319213867){
  if(i40<0.0003167673130519688){
   if(i24<1.0079731941223145){
    if(i20<1.0111935138702393){
     s0+=46903.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i19<0.999812662601471){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   }
  } else {
   if(i0<0.07653331756591797){
    if(i4<-3.904104232788086e-05){
     s0+=10446.0;
     s1+=151.0;
    } else {
     s0+=6921.0;
     s1+=979.0;
    }
   } else {
    if(i4<-4.819035530090332e-05){
     s0+=454.0;
     s1+=39.0;
    } else {
     s0+=175.0;
     s1+=699.0;
    }
   }
  }
 } else {
  if(i16<0.0020174747332930565){
   if(i0<0.06282433867454529){
    if(i44<1.000854253768921){
     s0+=117.0;
    } else {
     s0+=18.0;
     s1+=2.0;
    }
   } else {
    if(i15<0.0008799433708190918){
     s0+=12.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i32<0.0003800496633630246){
    s0+=26.0;
   } else {
    if(i32<0.011781835928559303){
     s0+=8.0;
     s1+=754.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i3<0.09581884741783142){
  if(i19<1.0028542280197144){
   if(i35<1.1040328741073608){
    if(i31<0.0003094197018072009){
     s0+=603.0;
     s1+=3.0;
    } else {
     s0+=688.0;
     s1+=748.0;
    }
   } else {
    if(i53<0.005280462093651295){
     s0+=3254.0;
     s1+=288.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i48<0.008211195468902588){
    if(i59<0.0037866830825805664){
     s0+=98.0;
     s1+=824.0;
    } else {
     s0+=45.0;
     s1+=19.0;
    }
   } else {
    if(i5<1.0049073696136475){
     s0+=166.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i13<0.99855637550354){
   if(i66<-2.7357725684851175e-06){
    if(i35<1.1973263025283813){
     s0+=5.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i6<-0.0001089813158614561){
     s1+=3.0;
    } else {
     s0+=276.0;
    }
   }
  } else {
   if(i2<0.00044399499893188477){
    if(i53<0.000762702664360404){
     s0+=416.0;
     s1+=392.0;
    } else {
     s0+=219.0;
     s1+=1854.0;
    }
   } else {
    if(i37<0.022884562611579895){
     s0+=105.0;
     s1+=1890.0;
    } else {
     s0+=6.0;
     s1+=8466.0;
    }
   }
  }
 }
}
if(i1<0.08162745833396912){
 if(i4<4.0471553802490234e-05){
  if(i42<0.0002978974371217191){
   if(i3<0.08438137173652649){
    if(i59<-0.004476577043533325){
     s0+=58.0;
     s1+=88.0;
    } else {
     s0+=56114.0;
     s1+=505.0;
    }
   } else {
    if(i53<0.0013542799279093742){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=49.0;
    }
   }
  } else {
   if(i12<0.9942349195480347){
    if(i3<0.08753162622451782){
     s0+=7138.0;
     s1+=154.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   } else {
    if(i1<0.05533602833747864){
     s0+=4366.0;
     s1+=793.0;
    } else {
     s0+=1180.0;
     s1+=721.0;
    }
   }
  }
 } else {
  if(i8<1.0336670875549316){
   if(i18<4.139542579650879e-05){
    s1+=19.0;
   } else {
    if(i70<0.04998889937996864){
     s0+=253.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i29<1.2392117977142334){
    if(i66<-2.8198428481118754e-05){
     s0+=8.0;
    } else {
     s0+=3.0;
     s1+=833.0;
    }
   } else {
    if(i62<0.000796630687545985){
     s0+=175.0;
     s1+=22.0;
    } else {
     s0+=101.0;
     s1+=376.0;
    }
   }
  }
 }
} else {
 if(i4<1.1026859283447266e-05){
  if(i43<0.059725821018218994){
   if(i11<-1.7702579498291016e-05){
    s0+=72.0;
   } else {
    if(i6<-5.99208897256176e-06){
     s0+=9.0;
     s1+=989.0;
    } else {
     s0+=36.0;
     s1+=99.0;
    }
   }
  } else {
   if(i39<0.010496871545910835){
    if(i68<0.9973286390304565){
     s0+=280.0;
     s1+=8.0;
    } else {
     s0+=747.0;
     s1+=525.0;
    }
   } else {
    if(i7<0.08926790952682495){
     s0+=10.0;
    } else {
     s0+=3.0;
     s1+=292.0;
    }
   }
  }
 } else {
  if(i19<1.003746747970581){
   if(i15<0.00031554698944091797){
    if(i33<1.257979154586792){
     s0+=200.0;
     s1+=206.0;
    } else {
     s0+=105.0;
     s1+=621.0;
    }
   } else {
    if(i67<-0.00010279511479893699){
     s0+=29.0;
     s1+=2213.0;
    } else {
     s0+=24.0;
     s1+=27.0;
    }
   }
  } else {
   if(i21<0.028035856783390045){
    if(i60<-0.007430645637214184){
     s0+=42.0;
     s1+=240.0;
    } else {
     s0+=17.0;
     s1+=1577.0;
    }
   } else {
    if(i16<0.0009490640368312597){
     s0+=5.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=6868.0;
    }
   }
  }
 }
}
if(i4<3.653764724731445e-05){
 if(i38<0.06522268056869507){
  if(i14<1.0094983577728271){
   if(i70<0.023765087127685547){
    if(i47<0.008767101913690567){
     s0+=52812.0;
     s1+=515.0;
    } else {
     s0+=491.0;
     s1+=96.0;
    }
   } else {
    if(i0<0.07736942172050476){
     s0+=14123.0;
     s1+=1199.0;
    } else {
     s0+=422.0;
     s1+=985.0;
    }
   }
  } else {
   if(i3<0.07890909910202026){
    if(i8<1.0727198123931885){
     s0+=74.0;
     s1+=147.0;
    } else {
     s0+=434.0;
     s1+=43.0;
    }
   } else {
    if(i9<1.217569351196289){
     s0+=3.0;
     s1+=524.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i34<0.005946281366050243){
   if(i16<0.004346353467553854){
    if(i36<0.044843822717666626){
     s0+=122.0;
     s1+=192.0;
    } else {
     s0+=1208.0;
     s1+=283.0;
    }
   } else {
    if(i45<-0.00022077560424804688){
     s0+=149.0;
    } else {
     s0+=112.0;
     s1+=520.0;
    }
   }
  } else {
   if(i3<0.1068699061870575){
    if(i59<-0.0008747279644012451){
     s0+=15.0;
     s1+=28.0;
    } else {
     s0+=169.0;
     s1+=9.0;
    }
   } else {
    if(i53<0.00029982480918988585){
     s0+=11.0;
    } else {
     s0+=13.0;
     s1+=960.0;
    }
   }
  }
 }
} else {
 if(i34<0.0003840237041004002){
  s0+=349.0;
 } else {
  if(i1<0.06632471084594727){
   if(i33<1.2314128875732422){
    s1+=539.0;
   } else {
    if(i46<-0.0017924308776855469){
     s0+=31.0;
     s1+=269.0;
    } else {
     s0+=239.0;
     s1+=42.0;
    }
   }
  } else {
   if(i37<0.01647472009062767){
    if(i64<-0.024356190115213394){
     s0+=86.0;
     s1+=57.0;
    } else {
     s0+=75.0;
     s1+=1452.0;
    }
   } else {
    if(i0<0.12255978584289551){
     s0+=25.0;
     s1+=647.0;
    } else {
     s0+=10.0;
     s1+=8765.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i3<0.08208942413330078){
  if(i40<0.0003007931518368423){
   if(i71<1.0135669708251953){
    if(i9<1.0486375093460083){
     s0+=46288.0;
     s1+=54.0;
    } else {
     s0+=231.0;
     s1+=47.0;
    }
   } else {
    if(i66<-3.3142966913146665e-06){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=24.0;
    }
   }
  } else {
   if(i47<0.0074842022731900215){
    if(i17<0.9899998903274536){
     s0+=10086.0;
     s1+=67.0;
    } else {
     s0+=9228.0;
     s1+=1109.0;
    }
   } else {
    if(i39<0.002169108483940363){
     s0+=968.0;
     s1+=563.0;
    } else {
     s0+=2043.0;
     s1+=272.0;
    }
   }
  }
 } else {
  if(i45<-0.00014024972915649414){
   if(i32<0.0017424665857106447){
    if(i19<0.9979586601257324){
     s0+=451.0;
    } else {
     s0+=18.0;
     s1+=3.0;
    }
   } else {
    if(i22<1.0474226474761963){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=45.0;
    }
   }
  } else {
   if(i48<0.016230463981628418){
    if(i32<0.0004476824833545834){
     s0+=81.0;
     s1+=12.0;
    } else {
     s0+=209.0;
     s1+=2426.0;
    }
   } else {
    if(i31<0.006542186252772808){
     s0+=749.0;
     s1+=489.0;
    } else {
     s0+=47.0;
     s1+=506.0;
    }
   }
  }
 }
} else {
 if(i39<0.00030976897687651217){
  s0+=181.0;
 } else {
  if(i0<0.06999999284744263){
   if(i6<-4.451398490346037e-05){
    if(i29<1.5682398080825806){
     s0+=29.0;
     s1+=510.0;
    } else {
     s0+=97.0;
     s1+=41.0;
    }
   } else {
    if(i11<2.4974346160888672e-05){
     s0+=116.0;
     s1+=13.0;
    } else {
     s0+=2.0;
     s1+=38.0;
    }
   }
  } else {
   if(i15<-0.000546872615814209){
    if(i40<0.0062688300386071205){
     s0+=62.0;
     s1+=137.0;
    } else {
     s0+=16.0;
     s1+=590.0;
    }
   } else {
    if(i6<-4.330423689680174e-05){
     s0+=25.0;
     s1+=10141.0;
    } else {
     s0+=48.0;
     s1+=163.0;
    }
   }
  }
 }
}
if(i6<-7.253374496940523e-05){
 if(i2<-0.00010097026824951172){
  if(i8<1.0937309265136719){
   if(i12<1.0023391246795654){
    if(i26<0.00406262930482626){
     s0+=211.0;
     s1+=26.0;
    } else {
     s0+=465.0;
    }
   } else {
    if(i33<1.344107747077942){
     s1+=8.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i0<0.01693958044052124){
    s0+=23.0;
   } else {
    s1+=171.0;
   }
  }
 } else {
  if(i18<-0.000356525182723999){
   if(i44<1.0019030570983887){
    if(i45<0.00011211633682250977){
     s0+=13.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=91.0;
    }
   } else {
    if(i16<0.015240583568811417){
     s0+=145.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=39.0;
    }
   }
  } else {
   if(i2<0.00025004148483276367){
    if(i28<0.9205523729324341){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=14.0;
     s1+=237.0;
    }
   } else {
    if(i3<0.060521721839904785){
     s0+=73.0;
     s1+=269.0;
    } else {
     s0+=76.0;
     s1+=10638.0;
    }
   }
  }
 }
} else {
 if(i0<0.0824175775051117){
  if(i2<0.0006018579006195068){
   if(i57<0.02574055641889572){
    if(i14<1.0081498622894287){
     s0+=56780.0;
     s1+=552.0;
    } else {
     s0+=118.0;
     s1+=173.0;
    }
   } else {
    if(i12<0.9940385818481445){
     s0+=6300.0;
     s1+=94.0;
    } else {
     s0+=4442.0;
     s1+=1123.0;
    }
   }
  } else {
   if(i32<0.00038163128192536533){
    s0+=88.0;
   } else {
    if(i34<0.0017940260004252195){
     s1+=296.0;
    } else {
     s0+=162.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i44<0.9992820024490356){
   if(i10<-0.00041177868843078613){
    s0+=656.0;
   } else {
    if(i33<1.159860372543335){
     s0+=58.0;
    } else {
     s0+=4.0;
     s1+=25.0;
    }
   }
  } else {
   if(i64<-0.01936260238289833){
    if(i21<0.042660076171159744){
     s0+=816.0;
     s1+=297.0;
    } else {
     s0+=71.0;
     s1+=499.0;
    }
   } else {
    if(i0<0.08951902389526367){
     s0+=237.0;
     s1+=310.0;
    } else {
     s0+=227.0;
     s1+=2297.0;
    }
   }
  }
 }
}
if(i14<1.0081671476364136){
 if(i2<0.0006014406681060791){
  if(i7<0.07541009783744812){
   if(i8<1.0428826808929443){
    if(i70<0.018614929169416428){
     s0+=48639.0;
     s1+=191.0;
    } else {
     s0+=11930.0;
     s1+=549.0;
    }
   } else {
    if(i30<1.103413462638855){
     s0+=2420.0;
     s1+=976.0;
    } else {
     s0+=5267.0;
     s1+=573.0;
    }
   }
  } else {
   if(i34<0.006111663766205311){
    if(i13<0.9985148906707764){
     s0+=355.0;
     s1+=6.0;
    } else {
     s0+=732.0;
     s1+=755.0;
    }
   } else {
    if(i7<0.10028016567230225){
     s0+=85.0;
     s1+=52.0;
    } else {
     s0+=10.0;
     s1+=649.0;
    }
   }
  }
 } else {
  if(i34<0.0003809866320807487){
   s0+=78.0;
  } else {
   if(i21<0.03220486640930176){
    if(i35<1.1353518962860107){
     s1+=366.0;
    } else {
     s0+=159.0;
     s1+=266.0;
    }
   } else {
    if(i16<0.005009849555790424){
     s0+=10.0;
     s1+=67.0;
    } else {
     s0+=18.0;
     s1+=1635.0;
    }
   }
  }
 }
} else {
 if(i2<0.0004976391792297363){
  if(i65<1.0003249645233154){
   if(i6<-3.2151659979717806e-05){
    if(i67<-5.338304617907852e-05){
     s0+=27.0;
     s1+=923.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i66<3.5272671539132716e-07){
     s0+=278.0;
     s1+=310.0;
    } else {
     s0+=213.0;
     s1+=5.0;
    }
   }
  } else {
   if(i72<0.00010283447045367211){
    if(i55<0.00034468923695385456){
     s0+=645.0;
     s1+=13.0;
    } else {
     s0+=14.0;
     s1+=46.0;
    }
   } else {
    if(i3<0.07719814777374268){
     s0+=14.0;
     s1+=26.0;
    } else {
     s0+=2.0;
     s1+=270.0;
    }
   }
  }
 } else {
  if(i42<0.00016248287283815444){
   if(i13<1.001947283744812){
    if(i35<1.1046062707901){
     s1+=15.0;
    } else {
     s0+=46.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i5<1.004080057144165){
    if(i63<0.0004906074609607458){
     s0+=174.0;
     s1+=491.0;
    } else {
     s0+=13.0;
     s1+=628.0;
    }
   } else {
    if(i15<3.904104232788086e-05){
     s0+=10.0;
     s1+=138.0;
    } else {
     s1+=8140.0;
    }
   }
  }
 }
}
if(i0<0.08504307270050049){
 if(i49<-0.002404510974884033){
  if(i2<0.00021636486053466797){
   if(i1<0.03503742814064026){
    if(i68<1.0003039836883545){
     s0+=1741.0;
     s1+=129.0;
    } else {
     s0+=421.0;
     s1+=124.0;
    }
   } else {
    if(i43<0.013035893440246582){
     s0+=6.0;
     s1+=144.0;
    } else {
     s0+=145.0;
     s1+=58.0;
    }
   }
  } else {
   if(i51<0.0025298893451690674){
    if(i5<0.9995242953300476){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=604.0;
    }
   } else {
    if(i53<0.001986526884138584){
     s0+=60.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i22<1.0486011505126953){
   if(i26<0.00028054346330463886){
    if(i27<1.0112287998199463){
     s0+=48174.0;
     s1+=87.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.989506185054779){
     s0+=4234.0;
     s1+=9.0;
    } else {
     s0+=2657.0;
     s1+=213.0;
    }
   }
  } else {
   if(i39<0.0016361107118427753){
    if(i2<0.0004303455352783203){
     s0+=4220.0;
     s1+=1055.0;
    } else {
     s0+=1.0;
     s1+=459.0;
    }
   } else {
    if(i58<-7.716774234722834e-06){
     s0+=2.0;
     s1+=14.0;
    } else {
     s0+=7657.0;
     s1+=257.0;
    }
   }
  }
 }
} else {
 if(i45<-0.0001379251480102539){
  if(i39<0.03003401681780815){
   if(i45<-0.0001792609691619873){
    if(i14<0.9985268115997314){
     s0+=429.0;
    } else {
     s0+=140.0;
     s1+=2.0;
    }
   } else {
    if(i10<-0.000170975923538208){
     s0+=76.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   s1+=85.0;
  }
 } else {
  if(i32<0.0005183271714486182){
   if(i41<-5.325629899743944e-06){
    s1+=113.0;
   } else {
    if(i63<0.0005418852670118213){
     s0+=211.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   }
  } else {
   if(i16<0.0032461783848702908){
    if(i48<0.01678144931793213){
     s0+=166.0;
     s1+=1135.0;
    } else {
     s0+=501.0;
     s1+=149.0;
    }
   } else {
    if(i3<0.10645782947540283){
     s0+=243.0;
     s1+=932.0;
    } else {
     s0+=108.0;
     s1+=11381.0;
    }
   }
  }
 }
}
if(i11<1.7702579498291016e-05){
 if(i3<0.08385711908340454){
  if(i57<0.026238035410642624){
   if(i24<1.007859468460083){
    if(i51<-0.001659303903579712){
     s0+=658.0;
     s1+=246.0;
    } else {
     s0+=55900.0;
     s1+=256.0;
    }
   } else {
    if(i1<0.05546453595161438){
     s0+=226.0;
     s1+=61.0;
    } else {
     s0+=72.0;
     s1+=129.0;
    }
   }
  } else {
   if(i31<0.0008813699241727591){
    if(i29<1.084442138671875){
     s0+=1545.0;
    } else {
     s0+=1125.0;
     s1+=961.0;
    }
   } else {
    if(i33<1.2360035181045532){
     s0+=1495.0;
     s1+=241.0;
    } else {
     s0+=6745.0;
     s1+=116.0;
    }
   }
  }
 } else {
  if(i41<4.078960500919493e-06){
   if(i6<-1.3797138308291323e-05){
    if(i6<-4.3320978875271976e-05){
     s0+=29.0;
     s1+=2741.0;
    } else {
     s0+=373.0;
     s1+=1213.0;
    }
   } else {
    if(i55<0.0003874843241646886){
     s0+=577.0;
     s1+=111.0;
    } else {
     s0+=131.0;
     s1+=211.0;
    }
   }
  } else {
   if(i8<1.0325736999511719){
    if(i15<-0.0013541579246520996){
     s1+=9.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=256.0;
   }
  }
 }
} else {
 if(i5<1.0018671751022339){
  if(i37<0.041197270154953){
   if(i5<0.9997221231460571){
    if(i8<1.0819685459136963){
     s0+=964.0;
     s1+=7.0;
    } else {
     s0+=30.0;
     s1+=30.0;
    }
   } else {
    if(i52<1.0000336170196533){
     s0+=342.0;
     s1+=81.0;
    } else {
     s0+=273.0;
     s1+=212.0;
    }
   }
  } else {
   if(i17<0.949730396270752){
    s0+=5.0;
   } else {
    if(i56<6.943415792193264e-05){
     s0+=1.0;
     s1+=5.0;
    } else {
     s1+=343.0;
    }
   }
  }
 } else {
  if(i26<0.00018854533846024424){
   if(i0<0.06329226493835449){
    s0+=50.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i67<-0.0004604636342264712){
    if(i10<0.0003720521926879883){
     s0+=1.0;
    } else {
     s0+=15.0;
     s1+=7041.0;
    }
   } else {
    if(i5<1.0029356479644775){
     s0+=116.0;
     s1+=251.0;
    } else {
     s0+=109.0;
     s1+=2941.0;
    }
   }
  }
 }
}
if(i8<1.05519437789917){
 if(i5<1.0024950504302979){
  if(i8<1.0452215671539307){
   if(i22<1.0451585054397583){
    if(i59<-0.0020406246185302734){
     s0+=1894.0;
     s1+=148.0;
    } else {
     s0+=52422.0;
     s1+=85.0;
    }
   } else {
    if(i43<0.05507230758666992){
     s0+=7756.0;
     s1+=740.0;
    } else {
     s0+=143.0;
     s1+=85.0;
    }
   }
  } else {
   if(i14<1.0067400932312012){
    if(i1<0.07395553588867188){
     s0+=2033.0;
     s1+=255.0;
    } else {
     s0+=126.0;
     s1+=234.0;
    }
   } else {
    if(i32<0.0008266731747426093){
     s0+=29.0;
     s1+=262.0;
    } else {
     s0+=64.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i42<0.00016885982768144459){
   if(i35<1.125725507736206){
    if(i0<0.04427170753479004){
     s0+=1.0;
    } else {
     s1+=23.0;
    }
   } else {
    s0+=75.0;
   }
  } else {
   if(i41<-9.970641258405522e-06){
    if(i13<1.001232624053955){
     s0+=6.0;
     s1+=11.0;
    } else {
     s0+=5.0;
     s1+=423.0;
    }
   } else {
    s0+=11.0;
   }
  }
 }
} else {
 if(i12<1.0022883415222168){
  if(i2<0.0004814267158508301){
   if(i63<0.0017214711988344789){
    if(i68<0.9973369836807251){
     s0+=1046.0;
     s1+=22.0;
    } else {
     s0+=4726.0;
     s1+=2517.0;
    }
   } else {
    if(i3<0.022837400436401367){
     s0+=7.0;
     s1+=7.0;
    } else {
     s1+=346.0;
    }
   }
  } else {
   if(i67<-0.0004404993960633874){
    if(i65<1.002123475074768){
     s0+=10.0;
     s1+=1109.0;
    } else {
     s0+=15.0;
     s1+=74.0;
    }
   } else {
    if(i7<0.1302001178264618){
     s0+=188.0;
     s1+=278.0;
    } else {
     s0+=8.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i2<0.0004627108573913574){
   if(i52<0.999904990196228){
    if(i44<0.9990437030792236){
     s0+=54.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=397.0;
    }
   } else {
    if(i57<0.10211285948753357){
     s0+=262.0;
     s1+=61.0;
    } else {
     s0+=5.0;
     s1+=95.0;
    }
   }
  } else {
   if(i3<0.06460529565811157){
    if(i16<0.0027242822106927633){
     s0+=79.0;
     s1+=13.0;
    } else {
     s0+=25.0;
     s1+=307.0;
    }
   } else {
    if(i29<1.2648893594741821){
     s0+=52.0;
     s1+=1714.0;
    } else {
     s0+=17.0;
     s1+=7747.0;
    }
   }
  }
 }
}
if(i13<1.0016424655914307){
 if(i6<-4.724461177829653e-05){
  if(i17<0.9815443754196167){
   if(i43<0.08325496315956116){
    if(i37<0.060275573283433914){
     s0+=1176.0;
     s1+=62.0;
    } else {
     s0+=3.0;
     s1+=9.0;
    }
   } else {
    if(i23<1.0313737392425537){
     s0+=1.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i3<0.07364225387573242){
    if(i53<0.0016272345092147589){
     s0+=456.0;
     s1+=78.0;
    } else {
     s0+=99.0;
     s1+=160.0;
    }
   } else {
    if(i13<0.9981378316879272){
     s0+=18.0;
    } else {
     s0+=40.0;
     s1+=2885.0;
    }
   }
  }
 } else {
  if(i57<0.03190351650118828){
   if(i1<0.08534619212150574){
    if(i62<0.0008564582094550133){
     s0+=57727.0;
     s1+=446.0;
    } else {
     s0+=1539.0;
     s1+=383.0;
    }
   } else {
    if(i43<0.06209808588027954){
     s0+=41.0;
     s1+=298.0;
    } else {
     s0+=337.0;
     s1+=116.0;
    }
   }
  } else {
   if(i13<0.998839259147644){
    if(i34<0.0020011472515761852){
     s0+=717.0;
     s1+=92.0;
    } else {
     s0+=2833.0;
     s1+=21.0;
    }
   } else {
    if(i5<0.9968559741973877){
     s0+=1402.0;
     s1+=106.0;
    } else {
     s0+=3585.0;
     s1+=1967.0;
    }
   }
  }
 }
} else {
 if(i2<0.0005714893341064453){
  if(i3<0.10787707567214966){
   if(i9<1.1234147548675537){
    if(i35<1.1083450317382812){
     s0+=95.0;
     s1+=73.0;
    } else {
     s0+=848.0;
     s1+=76.0;
    }
   } else {
    s1+=27.0;
   }
  } else {
   if(i2<0.0005671977996826172){
    if(i64<-0.021380633115768433){
     s0+=15.0;
     s1+=129.0;
    } else {
     s1+=183.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i25<1.000551700592041){
   if(i9<1.1223218441009521){
    if(i32<0.010641939006745815){
     s0+=90.0;
     s1+=792.0;
    } else {
     s0+=75.0;
     s1+=7.0;
    }
   } else {
    s1+=808.0;
   }
  } else {
   if(i63<0.0003826643223874271){
    if(i10<0.0005835890769958496){
     s0+=52.0;
     s1+=20.0;
    } else {
     s0+=31.0;
     s1+=858.0;
    }
   } else {
    if(i65<1.003415822982788){
     s1+=7301.0;
    } else {
     s0+=2.0;
     s1+=141.0;
    }
   }
  }
 }
}
if(i14<1.0081671476364136){
 if(i50<0.0022587913554161787){
  if(i10<0.0004941821098327637){
   if(i22<1.0487468242645264){
    if(i3<0.08762961626052856){
     s0+=55157.0;
     s1+=233.0;
    } else {
     s0+=68.0;
     s1+=25.0;
    }
   } else {
    if(i0<0.0770484209060669){
     s0+=8484.0;
     s1+=709.0;
    } else {
     s0+=874.0;
     s1+=1317.0;
    }
   }
  } else {
   if(i5<1.002316951751709){
    if(i42<0.007981250062584877){
     s0+=922.0;
     s1+=181.0;
    } else {
     s0+=5.0;
     s1+=67.0;
    }
   } else {
    if(i53<0.0005708223907276988){
     s0+=16.0;
    } else {
     s0+=93.0;
     s1+=771.0;
    }
   }
  }
 } else {
  if(i10<0.00030991435050964355){
   if(i0<0.05399525165557861){
    if(i29<1.1860926151275635){
     s0+=1034.0;
     s1+=386.0;
    } else {
     s0+=2112.0;
     s1+=52.0;
    }
   } else {
    if(i45<-0.00014194846153259277){
     s0+=388.0;
     s1+=8.0;
    } else {
     s0+=235.0;
     s1+=539.0;
    }
   }
  } else {
   if(i1<0.026858001947402954){
    if(i2<0.00047016143798828125){
     s0+=267.0;
     s1+=24.0;
    } else {
     s0+=34.0;
     s1+=81.0;
    }
   } else {
    if(i1<0.061338454484939575){
     s0+=84.0;
     s1+=214.0;
    } else {
     s0+=15.0;
     s1+=1468.0;
    }
   }
  }
 }
} else {
 if(i6<-4.303545210859738e-05){
  if(i0<0.06125631928443909){
   if(i33<1.250713586807251){
    s1+=193.0;
   } else {
    if(i16<0.005425829906016588){
     s0+=48.0;
     s1+=8.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i25<1.0014431476593018){
    if(i7<0.12795019149780273){
     s0+=38.0;
     s1+=84.0;
    } else {
     s0+=9.0;
     s1+=598.0;
    }
   } else {
    if(i5<0.9981367588043213){
     s0+=2.0;
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=9363.0;
    }
   }
  }
 } else {
  if(i35<1.107304573059082){
   if(i63<0.00011874257324961945){
    if(i26<0.0006803810829296708){
     s0+=11.0;
     s1+=47.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i0<0.04718029499053955){
     s0+=5.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=298.0;
    }
   }
  } else {
   if(i14<1.0253968238830566){
    if(i24<1.0064311027526855){
     s0+=245.0;
     s1+=169.0;
    } else {
     s0+=937.0;
     s1+=86.0;
    }
   } else {
    if(i31<0.004096608143299818){
     s0+=5.0;
     s1+=115.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i0<0.08579924702644348){
 if(i5<1.0024782419204712){
  if(i8<1.0410068035125732){
   if(i22<1.0417430400848389){
    if(i59<-0.0021260976791381836){
     s0+=1572.0;
     s1+=69.0;
    } else {
     s0+=48591.0;
     s1+=36.0;
    }
   } else {
    if(i30<1.0991880893707275){
     s0+=2975.0;
     s1+=460.0;
    } else {
     s0+=6177.0;
     s1+=92.0;
    }
   }
  } else {
   if(i30<1.103413462638855){
    if(i31<0.0002944410080090165){
     s0+=1771.0;
    } else {
     s0+=1213.0;
     s1+=1050.0;
    }
   } else {
    if(i51<-0.00426974892616272){
     s0+=978.0;
     s1+=263.0;
    } else {
     s0+=5604.0;
     s1+=182.0;
    }
   }
  }
 } else {
  if(i32<0.001546003040857613){
   if(i16<0.0007654826622456312){
    s0+=4.0;
   } else {
    s1+=577.0;
   }
  } else {
   if(i2<0.000999152660369873){
    if(i16<0.00536346435546875){
     s0+=191.0;
     s1+=3.0;
    } else {
     s0+=35.0;
     s1+=77.0;
    }
   } else {
    if(i54<0.01065891981124878){
     s0+=21.0;
     s1+=361.0;
    } else {
     s0+=27.0;
     s1+=12.0;
    }
   }
  }
 }
} else {
 if(i45<-0.00015547871589660645){
  if(i58<-2.665996362338774e-06){
   if(i16<0.005126369185745716){
    s0+=1.0;
   } else {
    s1+=41.0;
   }
  } else {
   if(i37<0.08166924118995667){
    if(i5<0.9984551668167114){
     s0+=671.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=42.0;
   }
  }
 } else {
  if(i18<5.650520324707031e-05){
   if(i16<0.00242580845952034){
    if(i61<0.03424632549285889){
     s0+=190.0;
     s1+=273.0;
    } else {
     s0+=443.0;
     s1+=91.0;
    }
   } else {
    if(i43<0.05583050847053528){
     s0+=26.0;
     s1+=1824.0;
    } else {
     s0+=479.0;
     s1+=1651.0;
    }
   }
  } else {
   if(i11<1.6748905181884766e-05){
    if(i3<0.08845916390419006){
     s0+=20.0;
     s1+=18.0;
    } else {
     s0+=100.0;
     s1+=1877.0;
    }
   } else {
    s1+=8151.0;
   }
  }
 }
}
if(i4<3.832578659057617e-05){
 if(i14<1.0081498622894287){
  if(i0<0.08413374423980713){
   if(i21<0.01642666384577751){
    if(i46<-0.0017362236976623535){
     s0+=1754.0;
     s1+=251.0;
    } else {
     s0+=56539.0;
     s1+=360.0;
    }
   } else {
    if(i10<-0.00011658668518066406){
     s0+=6500.0;
     s1+=232.0;
    } else {
     s0+=3137.0;
     s1+=947.0;
    }
   }
  } else {
   if(i52<0.9995578527450562){
    if(i66<-3.225498403480742e-06){
     s0+=3.0;
     s1+=37.0;
    } else {
     s0+=526.0;
     s1+=38.0;
    }
   } else {
    if(i49<0.0025756359100341797){
     s0+=164.0;
     s1+=980.0;
    } else {
     s0+=772.0;
     s1+=811.0;
    }
   }
  }
 } else {
  if(i40<0.0011127840261906385){
   if(i3<0.060903966426849365){
    if(i20<1.011399269104004){
     s0+=103.0;
     s1+=20.0;
    } else {
     s0+=12.0;
     s1+=34.0;
    }
   } else {
    if(i63<2.936179589596577e-05){
     s0+=5.0;
    } else {
     s0+=13.0;
     s1+=713.0;
    }
   }
  } else {
   if(i21<0.039717286825180054){
    if(i16<0.00366410706192255){
     s0+=895.0;
     s1+=156.0;
    } else {
     s0+=88.0;
     s1+=254.0;
    }
   } else {
    if(i41<3.265411578468047e-06){
     s0+=35.0;
     s1+=686.0;
    } else {
     s0+=28.0;
    }
   }
  }
 }
} else {
 if(i5<0.9997372031211853){
  s0+=261.0;
 } else {
  if(i7<0.039823323488235474){
   if(i16<0.0019949618726968765){
    if(i50<0.0022735390812158585){
     s0+=62.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i12<1.0009334087371826){
     s0+=62.0;
     s1+=71.0;
    } else {
     s0+=22.0;
     s1+=511.0;
    }
   }
  } else {
   if(i37<0.017956532537937164){
    if(i17<1.0092496871948242){
     s0+=224.0;
     s1+=453.0;
    } else {
     s0+=9.0;
     s1+=1518.0;
    }
   } else {
    if(i15<-0.0008941888809204102){
     s0+=21.0;
     s1+=548.0;
    } else {
     s1+=8388.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08356136083602905){
  if(i22<1.0467959642410278){
   if(i59<-0.0022396743297576904){
    if(i0<0.05958682298660278){
     s0+=1645.0;
     s1+=124.0;
    } else {
     s0+=44.0;
     s1+=51.0;
    }
   } else {
    if(i8<1.0401476621627808){
     s0+=50549.0;
     s1+=75.0;
    } else {
     s0+=2360.0;
     s1+=55.0;
    }
   }
  } else {
   if(i2<0.00048035383224487305){
    if(i31<0.0008606758201494813){
     s0+=3092.0;
     s1+=735.0;
    } else {
     s0+=6943.0;
     s1+=273.0;
    }
   } else {
    if(i53<0.0009715277701616287){
     s0+=90.0;
     s1+=28.0;
    } else {
     s0+=22.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i13<0.9985044002532959){
   if(i11<-2.059340476989746e-05){
    s0+=281.0;
   } else {
    if(i61<0.04087096452713013){
     s0+=16.0;
     s1+=17.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   }
  } else {
   if(i43<0.056379884481430054){
    if(i3<0.06258881092071533){
     s0+=11.0;
    } else {
     s0+=13.0;
     s1+=884.0;
    }
   } else {
    if(i38<0.08083271980285645){
     s0+=98.0;
     s1+=59.0;
    } else {
     s0+=6.0;
     s1+=62.0;
    }
   }
  }
 }
} else {
 if(i3<0.09612306952476501){
  if(i2<0.0005161166191101074){
   if(i15<0.0005009770393371582){
    if(i32<0.0004500608192756772){
     s0+=1255.0;
     s1+=16.0;
    } else {
     s0+=3044.0;
     s1+=765.0;
    }
   } else {
    if(i6<-3.370496415300295e-05){
     s0+=135.0;
     s1+=206.0;
    } else {
     s0+=183.0;
     s1+=11.0;
    }
   }
  } else {
   if(i46<0.002974212169647217){
    if(i41<-1.4078847016207874e-05){
     s0+=98.0;
     s1+=879.0;
    } else {
     s0+=49.0;
     s1+=31.0;
    }
   } else {
    if(i30<1.1380741596221924){
     s1+=12.0;
    } else {
     s0+=88.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i2<0.00012171268463134766){
   if(i43<0.07273837924003601){
    if(i5<0.9899322986602783){
     s0+=18.0;
    } else {
     s0+=15.0;
     s1+=689.0;
    }
   } else {
    if(i45<-0.00013399124145507812){
     s0+=253.0;
     s1+=14.0;
    } else {
     s0+=415.0;
     s1+=563.0;
    }
   }
  } else {
   if(i34<0.00796210765838623){
    if(i36<0.06445884704589844){
     s0+=45.0;
     s1+=2776.0;
    } else {
     s0+=234.0;
     s1+=609.0;
    }
   } else {
    if(i22<1.0654747486114502){
     s0+=4.0;
    } else {
     s0+=21.0;
     s1+=7884.0;
    }
   }
  }
 }
}
if(i3<0.08195176720619202){
 if(i14<1.0081498622894287){
  if(i4<4.0471553802490234e-05){
   if(i22<1.0451585054397583){
    if(i26<0.0002821738598868251){
     s0+=47251.0;
     s1+=42.0;
    } else {
     s0+=6654.0;
     s1+=157.0;
    }
   } else {
    if(i2<-0.0006040036678314209){
     s0+=5319.0;
     s1+=157.0;
    } else {
     s0+=9043.0;
     s1+=1488.0;
    }
   }
  } else {
   if(i13<1.0011584758758545){
    s0+=242.0;
   } else {
    if(i16<0.004134833812713623){
     s0+=31.0;
     s1+=5.0;
    } else {
     s0+=121.0;
     s1+=471.0;
    }
   }
  }
 } else {
  if(i13<1.0018718242645264){
   if(i32<0.0007337157148867846){
    if(i6<-2.2502408683067188e-05){
     s1+=291.0;
    } else {
     s0+=124.0;
     s1+=9.0;
    }
   } else {
    if(i33<1.1628741025924683){
     s1+=15.0;
    } else {
     s0+=767.0;
     s1+=49.0;
    }
   }
  } else {
   if(i15<7.355213165283203e-05){
    if(i48<-0.01399075984954834){
     s1+=14.0;
    } else {
     s0+=32.0;
     s1+=6.0;
    }
   } else {
    if(i8<1.0309863090515137){
     s0+=1.0;
    } else {
     s1+=376.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00040227174758911133){
  if(i15<-0.0030353963375091553){
   if(i35<1.3204896450042725){
    if(i8<1.046051263809204){
     s0+=3.0;
    } else {
     s1+=8.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i10<-0.0004112422466278076){
    s0+=406.0;
   } else {
    if(i18<-0.0002028048038482666){
     s0+=5.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i4<3.510713577270508e-05){
   if(i46<0.004031866788864136){
    if(i16<0.0009925987105816603){
     s0+=104.0;
     s1+=36.0;
    } else {
     s0+=153.0;
     s1+=2230.0;
    }
   } else {
    if(i31<0.00594487925991416){
     s0+=790.0;
     s1+=531.0;
    } else {
     s0+=96.0;
     s1+=520.0;
    }
   }
  } else {
   if(i2<0.0008535385131835938){
    if(i3<0.14066404104232788){
     s0+=84.0;
     s1+=275.0;
    } else {
     s0+=18.0;
     s1+=711.0;
    }
   } else {
    if(i15<-2.1278858184814453e-05){
     s0+=27.0;
     s1+=730.0;
    } else {
     s0+=3.0;
     s1+=8841.0;
    }
   }
  }
 }
}
if(i12<1.0038020610809326){
 if(i22<1.0572319030761719){
  if(i23<1.0380079746246338){
   if(i51<-0.0013450086116790771){
    if(i22<1.040691614151001){
     s0+=1393.0;
     s1+=62.0;
    } else {
     s0+=425.0;
     s1+=217.0;
    }
   } else {
    if(i20<1.0106210708618164){
     s0+=55100.0;
     s1+=321.0;
    } else {
     s0+=23.0;
     s1+=48.0;
    }
   }
  } else {
   if(i22<1.0506916046142578){
    if(i14<1.005969762802124){
     s0+=1129.0;
     s1+=35.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i27<1.0104182958602905){
     s0+=243.0;
     s1+=78.0;
    } else {
     s1+=42.0;
    }
   }
  }
 } else {
  if(i3<0.07909071445465088){
   if(i54<-0.02243289351463318){
    if(i2<0.0002963542938232422){
     s0+=1941.0;
     s1+=441.0;
    } else {
     s0+=113.0;
     s1+=238.0;
    }
   } else {
    if(i12<0.9948267936706543){
     s0+=4029.0;
     s1+=60.0;
    } else {
     s0+=4482.0;
     s1+=759.0;
    }
   }
  } else {
   if(i44<0.998971164226532){
    if(i30<1.4944241046905518){
     s0+=348.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i65<0.999871551990509){
     s0+=280.0;
     s1+=2939.0;
    } else {
     s0+=891.0;
     s1+=1849.0;
    }
   }
  }
 }
} else {
 if(i6<-4.332041135057807e-05){
  if(i44<0.9990692138671875){
   if(i4<7.957220077514648e-06){
    s0+=68.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i7<0.04083302617073059){
    if(i2<0.0005489587783813477){
     s0+=47.0;
     s1+=39.0;
    } else {
     s0+=5.0;
     s1+=451.0;
    }
   } else {
    if(i53<6.18499907432124e-05){
     s0+=3.0;
    } else {
     s0+=36.0;
     s1+=9335.0;
    }
   }
  }
 } else {
  if(i26<0.00030754675390198827){
   s0+=414.0;
  } else {
   if(i44<1.0008797645568848){
    if(i38<0.15304628014564514){
     s0+=198.0;
     s1+=41.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i5<1.000455617904663){
     s0+=3.0;
    } else {
     s1+=69.0;
    }
   }
  }
 }
}
if(i5<1.0024771690368652){
 if(i1<0.08370932936668396){
  if(i1<0.06321096420288086){
   if(i54<-0.028394728899002075){
    if(i6<-1.4594777894672006e-05){
     s0+=650.0;
     s1+=350.0;
    } else {
     s0+=1762.0;
     s1+=177.0;
    }
   } else {
    if(i21<0.014296457171440125){
     s0+=53237.0;
     s1+=381.0;
    } else {
     s0+=10468.0;
     s1+=621.0;
    }
   }
  } else {
   if(i5<0.9984615445137024){
    if(i55<0.00028764933813363314){
     s0+=1459.0;
     s1+=37.0;
    } else {
     s0+=593.0;
     s1+=126.0;
    }
   } else {
    if(i31<0.00029101711697876453){
     s0+=419.0;
    } else {
     s0+=672.0;
     s1+=614.0;
    }
   }
  }
 } else {
  if(i6<-1.3797138308291323e-05){
   if(i13<0.9981136322021484){
    s0+=52.0;
   } else {
    if(i16<0.004803019110113382){
     s0+=351.0;
     s1+=1195.0;
    } else {
     s0+=112.0;
     s1+=2104.0;
    }
   }
  } else {
   if(i44<0.9992941617965698){
    s0+=307.0;
   } else {
    if(i49<0.004186153411865234){
     s0+=125.0;
     s1+=202.0;
    } else {
     s0+=417.0;
     s1+=113.0;
    }
   }
  }
 }
} else {
 if(i12<1.0068386793136597){
  if(i21<0.028428837656974792){
   if(i32<0.007723171263933182){
    if(i53<0.001042806776240468){
     s0+=129.0;
     s1+=100.0;
    } else {
     s0+=19.0;
     s1+=604.0;
    }
   } else {
    if(i22<1.1633398532867432){
     s0+=99.0;
    } else {
     s0+=5.0;
     s1+=33.0;
    }
   }
  } else {
   if(i65<0.997450590133667){
    if(i9<1.1396398544311523){
     s0+=5.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i33<1.2662445306777954){
     s0+=15.0;
     s1+=153.0;
    } else {
     s0+=22.0;
     s1+=1855.0;
    }
   }
  }
 } else {
  if(i42<0.0001522609090898186){
   if(i63<0.0003438133280724287){
    s0+=27.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i16<0.0016127050621435046){
    if(i2<0.0009772777557373047){
     s0+=34.0;
    } else {
     s1+=71.0;
    }
   } else {
    if(i18<0.00019949674606323242){
     s0+=11.0;
     s1+=787.0;
    } else {
     s1+=7728.0;
    }
   }
  }
 }
}
if(i5<1.002474308013916){
 if(i3<0.08360511064529419){
  if(i8<1.0412344932556152){
   if(i51<-0.0012904703617095947){
    if(i29<1.2392117977142334){
     s0+=1620.0;
     s1+=375.0;
    } else {
     s0+=2479.0;
     s1+=29.0;
    }
   } else {
    if(i22<1.0428826808929443){
     s0+=49763.0;
     s1+=42.0;
    } else {
     s0+=5901.0;
     s1+=162.0;
    }
   }
  } else {
   if(i21<0.017035122960805893){
    if(i14<0.9825764298439026){
     s0+=32.0;
     s1+=70.0;
    } else {
     s0+=6936.0;
     s1+=480.0;
    }
   } else {
    if(i40<0.0018410880584269762){
     s0+=583.0;
     s1+=790.0;
    } else {
     s0+=1672.0;
     s1+=322.0;
    }
   }
  }
 } else {
  if(i44<0.9989436864852905){
   if(i39<0.03362993896007538){
    if(i12<0.9944031238555908){
     s0+=364.0;
    } else {
     s0+=59.0;
     s1+=3.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i38<0.06451323628425598){
    if(i4<-5.811452865600586e-05){
     s0+=14.0;
     s1+=16.0;
    } else {
     s0+=18.0;
     s1+=1541.0;
    }
   } else {
    if(i31<0.006297338753938675){
     s0+=950.0;
     s1+=1321.0;
    } else {
     s0+=95.0;
     s1+=928.0;
    }
   }
  }
 }
} else {
 if(i0<0.06269580125808716){
  if(i53<0.0009160415502265096){
   if(i72<4.750191874336451e-05){
    s1+=9.0;
   } else {
    if(i48<-0.011404871940612793){
     s1+=4.0;
    } else {
     s0+=118.0;
    }
   }
  } else {
   if(i35<1.1961640119552612){
    if(i29<1.5942578315734863){
     s0+=3.0;
     s1+=320.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i50<0.00757411727681756){
     s0+=85.0;
     s1+=5.0;
    } else {
     s0+=11.0;
     s1+=102.0;
    }
   }
  }
 } else {
  if(i1<0.12855765223503113){
   if(i39<0.002462728414684534){
    if(i29<1.4901387691497803){
     s1+=1312.0;
    } else {
     s0+=5.0;
     s1+=10.0;
    }
   } else {
    if(i59<0.0010814368724822998){
     s0+=29.0;
     s1+=472.0;
    } else {
     s0+=113.0;
     s1+=88.0;
    }
   }
  } else {
   if(i6<-4.1722854803083465e-05){
    if(i3<0.13810288906097412){
     s0+=5.0;
     s1+=191.0;
    } else {
     s0+=4.0;
     s1+=8747.0;
    }
   } else {
    if(i11<1.9788742065429688e-05){
     s0+=2.0;
    } else {
     s1+=39.0;
    }
   }
  }
 }
}
if(i28<1.007897973060608){
 if(i1<0.08023786544799805){
  if(i10<0.0005333423614501953){
   if(i8<1.0398929119110107){
    if(i35<1.0557184219360352){
     s0+=40566.0;
     s1+=2.0;
    } else {
     s0+=17951.0;
     s1+=484.0;
    }
   } else {
    if(i42<0.0003225010586902499){
     s0+=4591.0;
     s1+=243.0;
    } else {
     s0+=3805.0;
     s1+=933.0;
    }
   }
  } else {
   if(i18<-0.00028827786445617676){
    if(i37<0.036857426166534424){
     s0+=505.0;
     s1+=17.0;
    } else {
     s0+=10.0;
     s1+=75.0;
    }
   } else {
    if(i50<0.0013805842027068138){
     s0+=222.0;
     s1+=89.0;
    } else {
     s0+=71.0;
     s1+=602.0;
    }
   }
  }
 } else {
  if(i31<0.00531394686549902){
   if(i38<0.06688421964645386){
    if(i33<1.0670123100280762){
     s0+=73.0;
     s1+=2.0;
    } else {
     s0+=41.0;
     s1+=753.0;
    }
   } else {
    if(i41<-2.4484811547154095e-06){
     s0+=219.0;
     s1+=326.0;
    } else {
     s0+=405.0;
     s1+=76.0;
    }
   }
  } else {
   if(i3<0.1001429557800293){
    if(i46<0.0005903542041778564){
     s0+=3.0;
     s1+=138.0;
    } else {
     s0+=85.0;
     s1+=12.0;
    }
   } else {
    if(i41<8.702168088348117e-07){
     s0+=27.0;
     s1+=1972.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i6<-4.222385541652329e-05){
  if(i1<0.05019640922546387){
   if(i34<0.002730016130954027){
    if(i33<1.124355673789978){
     s1+=72.0;
    } else {
     s0+=6.0;
     s1+=13.0;
    }
   } else {
    if(i5<1.0106369256973267){
     s0+=107.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i17<1.006461262702942){
    if(i22<1.123558521270752){
     s0+=168.0;
     s1+=447.0;
    } else {
     s0+=30.0;
     s1+=854.0;
    }
   } else {
    if(i1<0.068837970495224){
     s0+=21.0;
     s1+=229.0;
    } else {
     s0+=4.0;
     s1+=8784.0;
    }
   }
  }
 } else {
  if(i35<1.0778207778930664){
   if(i32<0.000276598846539855){
    s0+=26.0;
   } else {
    if(i15<-0.0005384981632232666){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=252.0;
    }
   }
  } else {
   if(i29<1.255998969078064){
    if(i16<0.0027215047739446163){
     s0+=1036.0;
     s1+=154.0;
    } else {
     s0+=28.0;
     s1+=394.0;
    }
   } else {
    if(i63<0.0015878225676715374){
     s0+=1254.0;
     s1+=38.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i8<1.052875280380249){
 if(i22<1.0486011505126953){
  if(i48<-0.005439490079879761){
   if(i52<0.999845027923584){
    if(i19<0.9969272613525391){
     s0+=280.0;
     s1+=8.0;
    } else {
     s0+=43.0;
     s1+=82.0;
    }
   } else {
    if(i19<1.000950574874878){
     s0+=644.0;
     s1+=2.0;
    } else {
     s0+=26.0;
     s1+=23.0;
    }
   }
  } else {
   if(i21<0.013216802850365639){
    if(i55<0.00028069678228348494){
     s0+=45654.0;
     s1+=19.0;
    } else {
     s0+=1202.0;
     s1+=79.0;
    }
   } else {
    if(i1<0.08081644773483276){
     s0+=8076.0;
     s1+=140.0;
    } else {
     s0+=49.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i12<0.9946067929267883){
   if(i3<0.08246618509292603){
    if(i2<0.0006449222564697266){
     s0+=3803.0;
     s1+=58.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   } else {
    if(i22<1.0682440996170044){
     s0+=52.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=30.0;
    }
   }
  } else {
   if(i21<0.01602279394865036){
    if(i6<-3.945194112020545e-05){
     s0+=268.0;
     s1+=237.0;
    } else {
     s0+=3297.0;
     s1+=323.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=179.0;
     s1+=979.0;
    } else {
     s0+=564.0;
     s1+=129.0;
    }
   }
  }
 }
} else {
 if(i6<-4.849101969739422e-05){
  if(i65<1.0044692754745483){
   if(i1<0.0557422935962677){
    if(i49<-0.0018940269947052002){
     s0+=123.0;
     s1+=410.0;
    } else {
     s0+=330.0;
     s1+=89.0;
    }
   } else {
    if(i7<0.12276414036750793){
     s0+=234.0;
     s1+=3448.0;
    } else {
     s0+=32.0;
     s1+=8718.0;
    }
   }
  } else {
   if(i1<0.11684554815292358){
    if(i50<0.005253735464066267){
     s0+=187.0;
     s1+=1.0;
    } else {
     s0+=8.0;
     s1+=20.0;
    }
   } else {
    s1+=102.0;
   }
  }
 } else {
  if(i3<0.07840636372566223){
   if(i60<-0.0016615524655207992){
    if(i40<0.0008376064361073077){
     s0+=190.0;
     s1+=66.0;
    } else {
     s0+=1914.0;
     s1+=39.0;
    }
   } else {
    if(i34<0.0011124892625957727){
     s0+=722.0;
     s1+=450.0;
    } else {
     s0+=1830.0;
     s1+=130.0;
    }
   }
  } else {
   if(i43<0.05788540840148926){
    if(i48<0.022212237119674683){
     s0+=50.0;
     s1+=897.0;
    } else {
     s0+=36.0;
     s1+=28.0;
    }
   } else {
    if(i1<0.11819583177566528){
     s0+=685.0;
     s1+=119.0;
    } else {
     s0+=543.0;
     s1+=552.0;
    }
   }
  }
 }
}
if(i10<0.00043314695358276367){
 if(i0<0.08355346322059631){
  if(i42<0.00029909430304542184){
   if(i6<-4.0415237890556455e-05){
    if(i28<1.0075966119766235){
     s0+=489.0;
     s1+=44.0;
    } else {
     s0+=40.0;
     s1+=102.0;
    }
   } else {
    if(i40<0.0002909988979808986){
     s0+=44745.0;
     s1+=35.0;
    } else {
     s0+=10697.0;
     s1+=404.0;
    }
   }
  } else {
   if(i5<0.9979299902915955){
    if(i33<1.2381287813186646){
     s0+=2298.0;
     s1+=235.0;
    } else {
     s0+=5475.0;
     s1+=62.0;
    }
   } else {
    if(i21<0.02941669523715973){
     s0+=3640.0;
     s1+=722.0;
    } else {
     s0+=177.0;
     s1+=386.0;
    }
   }
  }
 } else {
  if(i13<0.9986332058906555){
   if(i13<0.9979311227798462){
    if(i52<0.9997949600219727){
     s0+=643.0;
    } else {
     s0+=11.0;
     s1+=5.0;
    }
   } else {
    if(i67<-0.0003676433116197586){
     s0+=3.0;
     s1+=22.0;
    } else {
     s0+=87.0;
     s1+=11.0;
    }
   }
  } else {
   if(i16<0.0016418937593698502){
    if(i46<0.004222750663757324){
     s0+=188.0;
     s1+=203.0;
    } else {
     s0+=387.0;
     s1+=49.0;
    }
   } else {
    if(i60<-0.0055181654170155525){
     s0+=330.0;
     s1+=1303.0;
    } else {
     s0+=87.0;
     s1+=2381.0;
    }
   }
  }
 }
} else {
 if(i15<0.00046175718307495117){
  if(i12<1.0011999607086182){
   if(i37<0.035466596484184265){
    if(i16<0.005174795165657997){
     s0+=826.0;
     s1+=70.0;
    } else {
     s0+=785.0;
     s1+=461.0;
    }
   } else {
    if(i15<-0.004502594470977783){
     s0+=29.0;
     s1+=35.0;
    } else {
     s0+=1.0;
     s1+=695.0;
    }
   }
  } else {
   if(i13<1.0009417533874512){
    s0+=26.0;
   } else {
    if(i53<0.0017630382208153605){
     s0+=66.0;
     s1+=204.0;
    } else {
     s0+=28.0;
     s1+=1014.0;
    }
   }
  }
 } else {
  if(i22<1.0476430654525757){
   if(i26<0.00024108189973048866){
    s0+=54.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i0<0.062826007604599){
    if(i45<0.00016069412231445312){
     s0+=43.0;
     s1+=13.0;
    } else {
     s0+=9.0;
     s1+=184.0;
    }
   } else {
    if(i53<0.0007680098060518503){
     s0+=6.0;
     s1+=325.0;
    } else {
     s1+=8109.0;
    }
   }
  }
 }
}
if(i3<0.0852343738079071){
 if(i13<1.001882791519165){
  if(i21<0.015048621222376823){
   if(i5<1.0024960041046143){
    if(i50<0.0015911435475572944){
     s0+=54663.0;
     s1+=334.0;
    } else {
     s0+=2955.0;
     s1+=346.0;
    }
   } else {
    if(i35<1.125915288925171){
     s0+=3.0;
     s1+=89.0;
    } else {
     s0+=61.0;
    }
   }
  } else {
   if(i12<0.9946739673614502){
    if(i48<-0.005192458629608154){
     s0+=1032.0;
     s1+=112.0;
    } else {
     s0+=7026.0;
     s1+=47.0;
    }
   } else {
    if(i35<1.10614013671875){
     s0+=1417.0;
     s1+=1117.0;
    } else {
     s0+=1782.0;
     s1+=192.0;
    }
   }
  }
 } else {
  if(i17<1.0008002519607544){
   if(i50<0.0033996030688285828){
    if(i52<0.9999755620956421){
     s0+=24.0;
     s1+=43.0;
    } else {
     s0+=541.0;
     s1+=19.0;
    }
   } else {
    if(i8<1.0756845474243164){
     s0+=76.0;
     s1+=70.0;
    } else {
     s0+=22.0;
     s1+=184.0;
    }
   }
  } else {
   if(i53<0.00047057136544026434){
    if(i18<0.00027877092361450195){
     s0+=21.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i65<1.0021698474884033){
     s1+=669.0;
    } else {
     s0+=29.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i5<0.996038556098938){
  if(i32<0.004580123350024223){
   if(i65<0.9998915195465088){
    s0+=365.0;
   } else {
    if(i52<0.9997985363006592){
     s1+=4.0;
    } else {
     s0+=18.0;
    }
   }
  } else {
   if(i16<0.005339117720723152){
    if(i28<0.9862596988677979){
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=1.0;
    }
   } else {
    if(i68<1.0084046125411987){
     s0+=3.0;
     s1+=106.0;
    } else {
     s0+=3.0;
    }
   }
  }
 } else {
  if(i37<0.023133032023906708){
   if(i64<-0.022912494838237762){
    if(i14<1.0238535404205322){
     s0+=563.0;
     s1+=213.0;
    } else {
     s0+=1.0;
     s1+=105.0;
    }
   } else {
    if(i32<0.00045622797915712){
     s0+=49.0;
     s1+=14.0;
    } else {
     s0+=288.0;
     s1+=3500.0;
    }
   }
  } else {
   if(i34<0.007289141416549683){
    if(i16<0.003582611447200179){
     s0+=138.0;
     s1+=121.0;
    } else {
     s0+=6.0;
     s1+=1871.0;
    }
   } else {
    if(i3<0.09948548674583435){
     s0+=9.0;
     s1+=59.0;
    } else {
     s0+=3.0;
     s1+=7899.0;
    }
   }
  }
 }
}
if(i27<1.0082954168319702){
 if(i4<3.9637088775634766e-05){
  if(i0<0.08671185374259949){
   if(i62<0.0006788353202864528){
    if(i70<0.026706969365477562){
     s0+=52966.0;
     s1+=156.0;
    } else {
     s0+=5437.0;
     s1+=467.0;
    }
   } else {
    if(i12<0.994226336479187){
     s0+=5122.0;
     s1+=125.0;
    } else {
     s0+=3115.0;
     s1+=1056.0;
    }
   }
  } else {
   if(i31<0.00048171746311709285){
    if(i28<0.992648720741272){
     s0+=215.0;
    } else {
     s0+=72.0;
     s1+=7.0;
    }
   } else {
    if(i54<0.06368637084960938){
     s0+=265.0;
     s1+=1287.0;
    } else {
     s0+=587.0;
     s1+=479.0;
    }
   }
  }
 } else {
  if(i35<1.0577372312545776){
   s0+=253.0;
  } else {
   if(i2<0.0009763836860656738){
    if(i26<0.00017462961841374636){
     s0+=29.0;
     s1+=4.0;
    } else {
     s0+=139.0;
     s1+=656.0;
    }
   } else {
    if(i32<0.01074416283518076){
     s0+=13.0;
     s1+=1616.0;
    } else {
     s0+=46.0;
     s1+=333.0;
    }
   }
  }
 }
} else {
 if(i0<0.08337682485580444){
  if(i39<0.0011736133601516485){
   if(i5<1.000626802444458){
    if(i55<-5.444001726573333e-05){
     s0+=36.0;
     s1+=74.0;
    } else {
     s0+=257.0;
     s1+=39.0;
    }
   } else {
    if(i29<1.246882677078247){
     s0+=12.0;
     s1+=488.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   if(i16<0.006689140573143959){
    if(i63<0.0006771192420274019){
     s0+=1502.0;
     s1+=13.0;
    } else {
     s0+=234.0;
     s1+=67.0;
    }
   } else {
    if(i50<-0.0014639263972640038){
     s0+=1.0;
    } else {
     s1+=60.0;
    }
   }
  }
 } else {
  if(i6<-2.2251289919950068e-05){
   if(i25<1.010192632675171){
    if(i1<0.16651439666748047){
     s0+=146.0;
     s1+=610.0;
    } else {
     s0+=8.0;
     s1+=1027.0;
    }
   } else {
    if(i1<0.1087614893913269){
     s0+=17.0;
     s1+=747.0;
    } else {
     s0+=3.0;
     s1+=7817.0;
    }
   }
  } else {
   if(i29<1.255998969078064){
    if(i56<3.119842949672602e-05){
     s0+=175.0;
     s1+=71.0;
    } else {
     s0+=1.0;
     s1+=84.0;
    }
   } else {
    if(i41<-1.1057614756282419e-05){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=268.0;
    }
   }
  }
 }
}
if(i4<3.701448440551758e-05){
 if(i0<0.08502998948097229){
  if(i22<1.0451585054397583){
   if(i51<-0.001361250877380371){
    if(i45<-5.626678466796875e-05){
     s0+=1002.0;
     s1+=3.0;
    } else {
     s0+=597.0;
     s1+=137.0;
    }
   } else {
    if(i35<1.0598037242889404){
     s0+=40100.0;
     s1+=2.0;
    } else {
     s0+=11793.0;
     s1+=98.0;
    }
   }
  } else {
   if(i35<1.1036889553070068){
    if(i29<1.0850647687911987){
     s0+=2538.0;
    } else {
     s0+=2917.0;
     s1+=1556.0;
    }
   } else {
    if(i50<0.007847879081964493){
     s0+=8434.0;
     s1+=185.0;
    } else {
     s0+=1196.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i45<-0.00013911724090576172){
   if(i19<1.0001497268676758){
    if(i4<1.6689300537109375e-06){
     s0+=640.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=6.0;
    }
   } else {
    if(i63<0.0006229309947229922){
     s0+=4.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i36<0.04555344581604004){
    if(i17<0.9728659987449646){
     s0+=16.0;
     s1+=10.0;
    } else {
     s0+=68.0;
     s1+=1979.0;
    }
   } else {
    if(i57<0.213885098695755){
     s0+=959.0;
     s1+=926.0;
    } else {
     s0+=47.0;
     s1+=331.0;
    }
   }
  }
 }
} else {
 if(i52<0.9992160797119141){
  s0+=335.0;
 } else {
  if(i26<0.0001797717995941639){
   if(i66<-5.683616109308787e-06){
    s1+=4.0;
   } else {
    s0+=53.0;
   }
  } else {
   if(i0<0.08456242084503174){
    if(i34<0.002542749047279358){
     s0+=1.0;
     s1+=566.0;
    } else {
     s0+=250.0;
     s1+=393.0;
    }
   } else {
    if(i1<0.1316651701927185){
     s0+=111.0;
     s1+=1426.0;
    } else {
     s0+=19.0;
     s1+=9297.0;
    }
   }
  }
 }
}
if(i7<0.06989145278930664){
 if(i13<1.0018954277038574){
  if(i42<0.000294954254059121){
   if(i40<0.0002607495407573879){
    if(i10<0.00038236379623413086){
     s0+=43557.0;
     s1+=41.0;
    } else {
     s0+=412.0;
     s1+=23.0;
    }
   } else {
    if(i51<-0.0015636682510375977){
     s0+=264.0;
     s1+=155.0;
    } else {
     s0+=12185.0;
     s1+=467.0;
    }
   }
  } else {
   if(i8<1.0398828983306885){
    if(i30<1.1792536973953247){
     s0+=2340.0;
     s1+=307.0;
    } else {
     s0+=4505.0;
     s1+=5.0;
    }
   } else {
    if(i29<1.1939998865127563){
     s0+=1973.0;
     s1+=1412.0;
    } else {
     s0+=3232.0;
     s1+=299.0;
    }
   }
  }
 } else {
  if(i2<0.00047719478607177734){
   if(i48<-0.0078391432762146){
    if(i32<0.007554494310170412){
     s0+=5.0;
     s1+=26.0;
    } else {
     s0+=70.0;
     s1+=21.0;
    }
   } else {
    if(i44<1.00138258934021){
     s0+=17.0;
     s1+=11.0;
    } else {
     s0+=368.0;
     s1+=6.0;
    }
   }
  } else {
   if(i64<-0.014506206847727299){
    if(i38<0.0600755512714386){
     s0+=41.0;
     s1+=5.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i5<1.004243016242981){
     s0+=88.0;
     s1+=283.0;
    } else {
     s0+=9.0;
     s1+=1283.0;
    }
   }
  }
 }
} else {
 if(i6<-2.416355346213095e-05){
  if(i67<-0.0002025360008701682){
   if(i12<0.999997615814209){
    if(i21<0.01755095086991787){
     s0+=141.0;
     s1+=128.0;
    } else {
     s0+=60.0;
     s1+=1744.0;
    }
   } else {
    if(i3<0.09557011723518372){
     s0+=50.0;
     s1+=141.0;
    } else {
     s0+=26.0;
     s1+=8616.0;
    }
   }
  } else {
   if(i4<5.698204040527344e-05){
    if(i65<1.0034633874893188){
     s0+=282.0;
     s1+=424.0;
    } else {
     s0+=110.0;
     s1+=16.0;
    }
   } else {
    if(i29<1.5942578315734863){
     s0+=3.0;
     s1+=797.0;
    } else {
     s0+=25.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i52<0.9995728731155396){
   if(i44<0.9992318749427795){
    s0+=414.0;
   } else {
    if(i54<0.01126718521118164){
     s1+=1.0;
    } else {
     s0+=38.0;
    }
   }
  } else {
   if(i46<-0.00019937753677368164){
    if(i3<0.10548961162567139){
     s0+=56.0;
     s1+=47.0;
    } else {
     s0+=8.0;
     s1+=140.0;
    }
   } else {
    if(i43<0.045560091733932495){
     s0+=22.0;
     s1+=128.0;
    } else {
     s0+=1005.0;
     s1+=331.0;
    }
   }
  }
 }
}
if(i3<0.0806320309638977){
 if(i10<0.0005857348442077637){
  if(i39<0.0003519622841849923){
   if(i17<1.0044283866882324){
    if(i14<1.0064079761505127){
     s0+=39706.0;
     s1+=42.0;
    } else {
     s0+=12.0;
     s1+=8.0;
    }
   } else {
    if(i28<1.009228229522705){
     s0+=7.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i5<0.9973512291908264){
    if(i46<-0.0012406408786773682){
     s0+=2000.0;
     s1+=145.0;
    } else {
     s0+=17224.0;
     s1+=129.0;
    }
   } else {
    if(i20<0.9915590882301331){
     s0+=1184.0;
     s1+=776.0;
    } else {
     s0+=8456.0;
     s1+=945.0;
    }
   }
  }
 } else {
  if(i15<-0.00080108642578125){
   if(i71<0.9894994497299194){
    if(i47<0.01314854808151722){
     s0+=230.0;
     s1+=68.0;
    } else {
     s0+=20.0;
     s1+=143.0;
    }
   } else {
    if(i7<0.07908639311790466){
     s0+=403.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i68<1.0003471374511719){
    if(i55<0.00045178551226854324){
     s0+=102.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i32<0.00037540457560680807){
     s0+=6.0;
    } else {
     s0+=24.0;
     s1+=640.0;
    }
   }
  }
 }
} else {
 if(i24<1.0084614753723145){
  if(i44<0.9993027448654175){
   if(i32<0.0017424665857106447){
    if(i28<0.9752665758132935){
     s0+=107.0;
     s1+=4.0;
    } else {
     s0+=277.0;
    }
   } else {
    if(i2<-0.0005326271057128906){
     s0+=21.0;
     s1+=3.0;
    } else {
     s0+=6.0;
     s1+=46.0;
    }
   }
  } else {
   if(i21<0.0244300477206707){
    if(i60<-0.004485392011702061){
     s0+=520.0;
     s1+=131.0;
    } else {
     s0+=212.0;
     s1+=682.0;
    }
   } else {
    if(i61<0.03674185276031494){
     s0+=64.0;
     s1+=2651.0;
    } else {
     s0+=166.0;
     s1+=500.0;
    }
   }
  }
 } else {
  if(i15<0.0006978809833526611){
   if(i41<-2.36025744015933e-06){
    if(i30<1.2590415477752686){
     s0+=226.0;
     s1+=541.0;
    } else {
     s0+=7.0;
     s1+=638.0;
    }
   } else {
    if(i29<1.255998969078064){
     s0+=42.0;
     s1+=85.0;
    } else {
     s0+=166.0;
     s1+=5.0;
    }
   }
  } else {
   if(i16<0.0017183915479108691){
    if(i15<0.0014859437942504883){
     s0+=24.0;
     s1+=1.0;
    } else {
     s1+=159.0;
    }
   } else {
    if(i10<-0.00035250186920166016){
     s0+=1.0;
    } else {
     s0+=9.0;
     s1+=8652.0;
    }
   }
  }
 }
}
if(i0<0.08502998948097229){
 if(i51<-0.0013805031776428223){
  if(i1<0.0396861732006073){
   if(i15<0.001422107219696045){
    if(i70<0.08741259574890137){
     s0+=1919.0;
     s1+=472.0;
    } else {
     s0+=2970.0;
     s1+=102.0;
    }
   } else {
    if(i11<1.627206802368164e-05){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=90.0;
    }
   }
  } else {
   if(i43<0.0184057354927063){
    if(i49<0.002165287733078003){
     s0+=16.0;
     s1+=467.0;
    } else {
     s0+=25.0;
     s1+=3.0;
    }
   } else {
    if(i12<0.9949411153793335){
     s0+=449.0;
     s1+=24.0;
    } else {
     s0+=366.0;
     s1+=371.0;
    }
   }
  }
 } else {
  if(i5<1.0024821758270264){
   if(i34<0.00029455850017257035){
    if(i40<0.0002929468173533678){
     s0+=33300.0;
    } else {
     s0+=2090.0;
     s1+=1.0;
    }
   } else {
    if(i19<0.9998902082443237){
     s0+=24389.0;
     s1+=586.0;
    } else {
     s0+=3240.0;
     s1+=573.0;
    }
   }
  } else {
   if(i46<0.0027981698513031006){
    if(i30<1.2160736322402954){
     s0+=2.0;
     s1+=463.0;
    } else {
     s0+=120.0;
     s1+=40.0;
    }
   } else {
    if(i3<0.08295589685440063){
     s0+=59.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i15<0.00034546852111816406){
  if(i45<-0.00013780593872070312){
   if(i55<0.0018815171206369996){
    if(i72<1.9670500478241593e-05){
     s1+=1.0;
    } else {
     s0+=666.0;
     s1+=15.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i6<-1.4224935512174852e-05){
    if(i0<0.12757942080497742){
     s0+=369.0;
     s1+=956.0;
    } else {
     s0+=122.0;
     s1+=2449.0;
    }
   } else {
    if(i43<0.058552324771881104){
     s0+=37.0;
     s1+=251.0;
    } else {
     s0+=593.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i11<-1.6003847122192383e-05){
   s0+=12.0;
  } else {
   if(i16<0.0016472353599965572){
    if(i15<0.0016280412673950195){
     s0+=87.0;
     s1+=5.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i40<0.00022950275160837919){
     s0+=4.0;
    } else {
     s0+=33.0;
     s1+=10197.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i0<0.08502998948097229){
  if(i47<0.0075655728578567505){
   if(i3<0.07117092609405518){
    if(i21<0.014270048588514328){
     s0+=53469.0;
     s1+=347.0;
    } else {
     s0+=10591.0;
     s1+=581.0;
    }
   } else {
    if(i36<0.03244844079017639){
     s0+=71.0;
     s1+=297.0;
    } else {
     s0+=1204.0;
     s1+=121.0;
    }
   }
  } else {
   if(i10<-0.0001672208309173584){
    if(i13<0.9983083009719849){
     s0+=963.0;
     s1+=5.0;
    } else {
     s0+=622.0;
     s1+=94.0;
    }
   } else {
    if(i32<0.0005133849335834384){
     s0+=759.0;
     s1+=57.0;
    } else {
     s0+=1052.0;
     s1+=704.0;
    }
   }
  }
 } else {
  if(i45<-0.0001392960548400879){
   if(i5<0.9978842735290527){
    if(i16<0.012246448546648026){
     s0+=642.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i32<0.001674651401117444){
     s0+=3.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i16<0.0017061628168448806){
    if(i43<0.05814352631568909){
     s0+=43.0;
     s1+=140.0;
    } else {
     s0+=524.0;
     s1+=108.0;
    }
   } else {
    if(i0<0.11685013771057129){
     s0+=433.0;
     s1+=905.0;
    } else {
     s0+=192.0;
     s1+=2500.0;
    }
   }
  }
 }
} else {
 if(i19<1.0056058168411255){
  if(i1<0.052293211221694946){
   if(i39<0.0010000698966905475){
    if(i72<0.00018518741126172245){
     s0+=6.0;
     s1+=166.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i63<0.0005802465602755547){
     s0+=178.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=48.0;
    }
   }
  } else {
   if(i2<0.0009261965751647949){
    if(i30<1.2271616458892822){
     s0+=14.0;
     s1+=606.0;
    } else {
     s0+=90.0;
     s1+=366.0;
    }
   } else {
    if(i63<0.00020845775725319982){
     s0+=15.0;
     s1+=17.0;
    } else {
     s0+=20.0;
     s1+=2284.0;
    }
   }
  }
 } else {
  if(i0<0.052869200706481934){
   if(i64<-0.009646588936448097){
    if(i48<-0.0329512357711792){
     s1+=3.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i70<0.09885774552822113){
     s0+=2.0;
     s1+=99.0;
    } else {
     s0+=11.0;
     s1+=43.0;
    }
   }
  } else {
   if(i22<1.0629007816314697){
    if(i45<0.0003808140754699707){
     s1+=24.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i15<-0.0005553960800170898){
     s0+=16.0;
     s1+=346.0;
    } else {
     s0+=4.0;
     s1+=7377.0;
    }
   }
  }
 }
}
if(i15<0.0007429420948028564){
 if(i0<0.08523821830749512){
  if(i8<1.0451608896255493){
   if(i5<1.0024687051773071){
    if(i59<-0.002003312110900879){
     s0+=4415.0;
     s1+=485.0;
    } else {
     s0+=57278.0;
     s1+=328.0;
    }
   } else {
    if(i53<0.001008434221148491){
     s0+=9.0;
    } else {
     s0+=2.0;
     s1+=84.0;
    }
   }
  } else {
   if(i5<1.0017975568771362){
    if(i3<0.06347301602363586){
     s0+=5644.0;
     s1+=645.0;
    } else {
     s0+=991.0;
     s1+=479.0;
    }
   } else {
    if(i59<0.003625333309173584){
     s0+=161.0;
     s1+=429.0;
    } else {
     s0+=104.0;
     s1+=16.0;
    }
   }
  }
 } else {
  if(i11<-1.5109777450561523e-05){
   if(i65<1.0001415014266968){
    if(i28<0.997511088848114){
     s0+=420.0;
    } else {
     s0+=173.0;
     s1+=1.0;
    }
   } else {
    if(i64<-0.009836271405220032){
     s0+=13.0;
     s1+=18.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.013204604387283325){
    if(i61<0.04267957806587219){
     s0+=116.0;
     s1+=2553.0;
    } else {
     s0+=155.0;
     s1+=200.0;
    }
   } else {
    if(i56<3.4961449273396283e-05){
     s0+=417.0;
     s1+=163.0;
    } else {
     s0+=552.0;
     s1+=1662.0;
    }
   }
  }
 }
} else {
 if(i0<0.06479015946388245){
  if(i41<-1.4233786714612506e-05){
   s1+=236.0;
  } else {
   if(i18<0.00023895502090454102){
    if(i54<-0.03347587585449219){
     s0+=12.0;
     s1+=10.0;
    } else {
     s0+=665.0;
    }
   } else {
    s1+=2.0;
   }
  }
 } else {
  if(i40<0.0001866353559307754){
   s0+=8.0;
  } else {
   if(i6<-4.297731356928125e-05){
    if(i5<0.9997655749320984){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=9533.0;
    }
   } else {
    if(i53<0.0010968009009957314){
     s0+=82.0;
     s1+=58.0;
    } else {
     s0+=1.0;
     s1+=91.0;
    }
   }
  }
 }
}
if(i3<0.08225274085998535){
 if(i4<4.190206527709961e-05){
  if(i26<0.00028115330496802926){
   if(i59<-0.004638731479644775){
    if(i53<0.0002096674870699644){
     s1+=15.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i22<1.0451585054397583){
     s0+=47540.0;
     s1+=51.0;
    } else {
     s0+=5161.0;
     s1+=210.0;
    }
   }
  } else {
   if(i33<1.1037919521331787){
    if(i68<1.0006933212280273){
     s0+=3940.0;
     s1+=886.0;
    } else {
     s0+=75.0;
     s1+=434.0;
    }
   } else {
    if(i51<-0.0009889602661132812){
     s0+=4359.0;
     s1+=383.0;
    } else {
     s0+=7811.0;
     s1+=140.0;
    }
   }
  }
 } else {
  if(i45<0.0001482069492340088){
   if(i15<0.0014287233352661133){
    if(i21<0.030733153223991394){
     s0+=305.0;
     s1+=7.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    s1+=14.0;
   }
  } else {
   if(i46<0.0020819902420043945){
    if(i68<0.9990018606185913){
     s0+=34.0;
    } else {
     s0+=121.0;
     s1+=894.0;
    }
   } else {
    if(i34<0.0017372220754623413){
     s1+=1.0;
    } else {
     s0+=50.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i16<0.004640925209969282){
  if(i60<-0.005171429831534624){
   if(i17<1.0125621557235718){
    if(i35<1.2541005611419678){
     s0+=703.0;
     s1+=250.0;
    } else {
     s0+=261.0;
     s1+=1.0;
    }
   } else {
    s1+=66.0;
   }
  } else {
   if(i33<1.081458568572998){
    if(i17<1.0026028156280518){
     s0+=174.0;
     s1+=12.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i11<-1.5079975128173828e-05){
     s0+=70.0;
     s1+=9.0;
    } else {
     s0+=192.0;
     s1+=1996.0;
    }
   }
  }
 } else {
  if(i66<1.2280979717615992e-06){
   if(i44<0.9984115362167358){
    s0+=25.0;
   } else {
    if(i1<0.11721101403236389){
     s0+=182.0;
     s1+=1351.0;
    } else {
     s0+=19.0;
     s1+=10391.0;
    }
   }
  } else {
   s0+=73.0;
  }
 }
}
if(i0<0.08511286973953247){
 if(i47<0.008425895124673843){
  if(i0<0.06856468319892883){
   if(i40<0.00028967790422029793){
    if(i20<1.0099198818206787){
     s0+=44951.0;
     s1+=54.0;
    } else {
     s0+=13.0;
     s1+=30.0;
    }
   } else {
    if(i35<1.1031841039657593){
     s0+=6383.0;
     s1+=877.0;
    } else {
     s0+=12294.0;
     s1+=117.0;
    }
   }
  } else {
   if(i19<1.0006539821624756){
    if(i61<0.016266822814941406){
     s0+=174.0;
     s1+=240.0;
    } else {
     s0+=2295.0;
     s1+=113.0;
    }
   } else {
    if(i38<0.04371911287307739){
     s0+=5.0;
     s1+=330.0;
    } else {
     s0+=419.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i19<1.0006723403930664){
   if(i5<0.9964128732681274){
    if(i53<0.006405787542462349){
     s0+=992.0;
     s1+=27.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i3<0.05821681022644043){
     s0+=1298.0;
     s1+=312.0;
    } else {
     s0+=97.0;
     s1+=159.0;
    }
   }
  } else {
   if(i2<0.00047284364700317383){
    if(i24<0.9597684144973755){
     s0+=120.0;
     s1+=22.0;
    } else {
     s0+=146.0;
     s1+=190.0;
    }
   } else {
    if(i51<0.0027782320976257324){
     s0+=19.0;
     s1+=553.0;
    } else {
     s0+=17.0;
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i5<0.9960564374923706){
  if(i45<-0.00010061264038085938){
   if(i58<4.467228063731454e-05){
    if(i55<0.0008836349006742239){
     s0+=566.0;
    } else {
     s0+=33.0;
     s1+=3.0;
    }
   } else {
    if(i37<0.014015484601259232){
     s1+=4.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i31<0.007462932728230953){
    s0+=43.0;
   } else {
    if(i1<0.08752557635307312){
     s0+=16.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i12<1.0022375583648682){
   if(i36<0.04519572854042053){
    if(i53<0.00015190488193184137){
     s0+=13.0;
     s1+=22.0;
    } else {
     s0+=47.0;
     s1+=2316.0;
    }
   } else {
    if(i39<0.009025998413562775){
     s0+=988.0;
     s1+=776.0;
    } else {
     s0+=47.0;
     s1+=805.0;
    }
   }
  } else {
   if(i18<0.00021332502365112305){
    if(i53<0.0014583447482436895){
     s0+=116.0;
     s1+=417.0;
    } else {
     s0+=8.0;
     s1+=1648.0;
    }
   } else {
    s1+=7904.0;
   }
  }
 }
}
if(i1<0.0782996118068695){
 if(i5<1.0024800300598145){
  if(i40<0.00028934289002791047){
   if(i55<0.0003360316331963986){
    if(i27<1.0097535848617554){
     s0+=46259.0;
     s1+=30.0;
    } else {
     s0+=1.0;
     s1+=30.0;
    }
   } else {
    if(i12<0.993632972240448){
     s0+=47.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i12<0.9943428039550781){
    if(i49<-0.0027234554290771484){
     s0+=688.0;
     s1+=115.0;
    } else {
     s0+=12645.0;
     s1+=95.0;
    }
   } else {
    if(i63<0.0006005062605254352){
     s0+=7949.0;
     s1+=1081.0;
    } else {
     s0+=1387.0;
     s1+=792.0;
    }
   }
  }
 } else {
  if(i41<-1.4116389138507657e-05){
   if(i49<0.0019148290157318115){
    if(i35<1.1709270477294922){
     s0+=1.0;
     s1+=817.0;
    } else {
     s0+=56.0;
     s1+=275.0;
    }
   } else {
    if(i57<0.05172764137387276){
     s0+=1.0;
     s1+=18.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i35<1.125915288925171){
    if(i37<0.005252148024737835){
     s0+=2.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i10<0.00017020106315612793){
     s1+=2.0;
    } else {
     s0+=178.0;
    }
   }
  }
 }
} else {
 if(i2<0.00010436773300170898){
  if(i6<-9.185591807181481e-06){
   if(i36<0.04687574505805969){
    if(i44<0.9989286661148071){
     s0+=12.0;
     s1+=8.0;
    } else {
     s0+=35.0;
     s1+=922.0;
    }
   } else {
    if(i21<0.028485342860221863){
     s0+=299.0;
     s1+=132.0;
    } else {
     s0+=83.0;
     s1+=413.0;
    }
   }
  } else {
   if(i21<0.028281191363930702){
    if(i27<0.9788161516189575){
     s0+=149.0;
     s1+=45.0;
    } else {
     s0+=533.0;
     s1+=9.0;
    }
   } else {
    if(i33<1.255998969078064){
     s0+=53.0;
     s1+=143.0;
    } else {
     s0+=193.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i37<0.025930769741535187){
   if(i54<0.06005281209945679){
    if(i48<0.025441110134124756){
     s0+=82.0;
     s1+=2890.0;
    } else {
     s0+=58.0;
     s1+=55.0;
    }
   } else {
    if(i7<0.11822423338890076){
     s0+=221.0;
     s1+=37.0;
    } else {
     s0+=89.0;
     s1+=307.0;
    }
   }
  } else {
   if(i12<1.000524640083313){
    if(i16<0.002988093066960573){
     s0+=38.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=1378.0;
    }
   } else {
    s1+=7470.0;
   }
  }
 }
}
if(i5<1.0024337768554688){
 if(i14<1.0081498622894287){
  if(i1<0.07737115025520325){
   if(i26<0.0002917518140748143){
    if(i39<0.00029370299307629466){
     s0+=35996.0;
     s1+=2.0;
    } else {
     s0+=16822.0;
     s1+=220.0;
    }
   } else {
    if(i39<0.0020619132556021214){
     s0+=5347.0;
     s1+=1413.0;
    } else {
     s0+=9730.0;
     s1+=296.0;
    }
   }
  } else {
   if(i45<-0.00015300512313842773){
    if(i22<1.398578405380249){
     s0+=444.0;
     s1+=16.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i36<0.04850560426712036){
     s0+=94.0;
     s1+=1378.0;
    } else {
     s0+=838.0;
     s1+=697.0;
    }
   }
  }
 } else {
  if(i0<0.07996669411659241){
   if(i6<-3.846740219159983e-05){
    if(i22<1.1177111864089966){
     s1+=176.0;
    } else {
     s0+=39.0;
     s1+=13.0;
    }
   } else {
    if(i30<1.0950405597686768){
     s0+=34.0;
     s1+=34.0;
    } else {
     s0+=651.0;
     s1+=4.0;
    }
   }
  } else {
   if(i16<0.0035873078741133213){
    if(i13<1.0001113414764404){
     s0+=58.0;
     s1+=441.0;
    } else {
     s0+=332.0;
     s1+=93.0;
    }
   } else {
    if(i19<0.9952800273895264){
     s0+=43.0;
     s1+=69.0;
    } else {
     s0+=21.0;
     s1+=1090.0;
    }
   }
  }
 }
} else {
 if(i6<-4.3997002649120986e-05){
  if(i63<0.00016420314204879105){
   if(i10<0.00048083066940307617){
    s0+=31.0;
   } else {
    if(i0<0.05810031294822693){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=197.0;
    }
   }
  } else {
   if(i14<1.002960443496704){
    if(i65<0.997606635093689){
     s0+=31.0;
     s1+=13.0;
    } else {
     s0+=87.0;
     s1+=1416.0;
    }
   } else {
    if(i15<6.896257400512695e-05){
     s0+=28.0;
     s1+=376.0;
    } else {
     s0+=2.0;
     s1+=9203.0;
    }
   }
  }
 } else {
  if(i30<1.2296775579452515){
   if(i2<0.0004807114601135254){
    s0+=21.0;
   } else {
    if(i45<0.00010147690773010254){
     s0+=7.0;
    } else {
     s0+=3.0;
     s1+=238.0;
    }
   }
  } else {
   if(i55<0.00043515386641956866){
    s0+=149.0;
   } else {
    s1+=7.0;
   }
  }
 }
}
if(i3<0.08195176720619202){
 if(i4<4.0471553802490234e-05){
  if(i57<0.026191605255007744){
   if(i59<-0.0025855302810668945){
    if(i5<0.9965460300445557){
     s0+=318.0;
     s1+=7.0;
    } else {
     s0+=454.0;
     s1+=285.0;
    }
   } else {
    if(i5<1.0025357007980347){
     s0+=56500.0;
     s1+=363.0;
    } else {
     s0+=12.0;
     s1+=43.0;
    }
   }
  } else {
   if(i39<0.0019988492131233215){
    if(i22<1.0447213649749756){
     s0+=2141.0;
     s1+=77.0;
    } else {
     s0+=1201.0;
     s1+=1045.0;
    }
   } else {
    if(i48<-0.01542818546295166){
     s0+=1563.0;
     s1+=172.0;
    } else {
     s0+=6698.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i16<0.0023817443288862705){
   if(i5<1.0042335987091064){
    if(i45<0.00019374489784240723){
     s0+=291.0;
    } else {
     s0+=31.0;
     s1+=20.0;
    }
   } else {
    s1+=23.0;
   }
  } else {
   if(i72<0.0001392729755025357){
    if(i46<0.0028102099895477295){
     s0+=53.0;
     s1+=798.0;
    } else {
     s0+=23.0;
    }
   } else {
    if(i39<0.010497497394680977){
     s0+=104.0;
     s1+=35.0;
    } else {
     s0+=4.0;
     s1+=58.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3829756426275708e-05){
  if(i6<-4.803873525816016e-05){
   if(i35<1.0569010972976685){
    s0+=12.0;
   } else {
    if(i0<0.13239508867263794){
     s0+=182.0;
     s1+=1728.0;
    } else {
     s0+=29.0;
     s1+=10263.0;
    }
   }
  } else {
   if(i34<0.001837840536609292){
    if(i16<0.0008536314126104116){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=24.0;
     s1+=910.0;
    }
   } else {
    if(i1<0.117360919713974){
     s0+=299.0;
     s1+=126.0;
    } else {
     s0+=150.0;
     s1+=634.0;
    }
   }
  }
 } else {
  if(i5<0.996038556098938){
   if(i23<1.019634485244751){
    if(i45<-0.00045481324195861816){
     s0+=50.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i6<-1.2747491382469889e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=405.0;
     s1+=1.0;
    }
   }
  } else {
   if(i48<0.014372199773788452){
    if(i56<3.2270683732349426e-05){
     s0+=120.0;
     s1+=39.0;
    } else {
     s0+=49.0;
     s1+=265.0;
    }
   } else {
    if(i1<0.2588517367839813){
     s0+=418.0;
     s1+=31.0;
    } else {
     s0+=27.0;
     s1+=63.0;
    }
   }
  }
 }
}
if(i13<1.0016309022903442){
 if(i71<1.0131394863128662){
  if(i0<0.08230563998222351){
   if(i9<1.0398929119110107){
    if(i50<0.0020284252241253853){
     s0+=58858.0;
     s1+=568.0;
    } else {
     s0+=3131.0;
     s1+=488.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=1340.0;
     s1+=620.0;
    } else {
     s0+=3062.0;
     s1+=259.0;
    }
   }
  } else {
   if(i45<-0.00014251470565795898){
    if(i5<0.9968955516815186){
     s0+=523.0;
    } else {
     s0+=8.0;
     s1+=24.0;
    }
   } else {
    if(i61<0.03955671191215515){
     s0+=105.0;
     s1+=1589.0;
    } else {
     s0+=193.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i65<0.9996167421340942){
   if(i13<0.9982434511184692){
    if(i6<-4.868189716944471e-05){
     s0+=18.0;
     s1+=2.0;
    } else {
     s0+=353.0;
    }
   } else {
    if(i16<0.0033520199358463287){
     s0+=262.0;
     s1+=276.0;
    } else {
     s0+=32.0;
     s1+=1610.0;
    }
   }
  } else {
   if(i39<0.008801508694887161){
    if(i29<1.255998969078064){
     s0+=956.0;
     s1+=740.0;
    } else {
     s0+=881.0;
     s1+=78.0;
    }
   } else {
    if(i3<0.1666661500930786){
     s0+=37.0;
     s1+=1.0;
    } else {
     s1+=336.0;
    }
   }
  }
 }
} else {
 if(i65<1.0020711421966553){
  if(i3<0.06843835115432739){
   if(i52<1.0004347562789917){
    if(i33<1.613681674003601){
     s0+=125.0;
     s1+=549.0;
    } else {
     s0+=62.0;
    }
   } else {
    if(i5<1.0037946701049805){
     s0+=191.0;
     s1+=3.0;
    } else {
     s0+=9.0;
     s1+=46.0;
    }
   }
  } else {
   if(i2<0.0006920695304870605){
    if(i1<0.1415722370147705){
     s0+=111.0;
     s1+=141.0;
    } else {
     s0+=5.0;
     s1+=212.0;
    }
   } else {
    if(i24<1.0044121742248535){
     s0+=57.0;
     s1+=1233.0;
    } else {
     s0+=14.0;
     s1+=7604.0;
    }
   }
  }
 } else {
  if(i2<0.0005148649215698242){
   if(i0<0.1224021315574646){
    if(i30<1.1480928659439087){
     s1+=19.0;
    } else {
     s0+=621.0;
     s1+=63.0;
    }
   } else {
    if(i41<-1.893456283141859e-05){
     s0+=1.0;
     s1+=127.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i52<1.0000921487808228){
    if(i42<0.005001839715987444){
     s0+=50.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i28<1.0093026161193848){
     s0+=56.0;
     s1+=118.0;
    } else {
     s1+=313.0;
    }
   }
  }
 }
}
if(i1<0.0782729983329773){
 if(i25<1.007195234298706){
  if(i50<0.001981324516236782){
   if(i35<1.0598037242889404){
    if(i70<0.04350315034389496){
     s0+=42722.0;
     s1+=4.0;
    } else {
     s0+=591.0;
     s1+=16.0;
    }
   } else {
    if(i39<0.0013656127266585827){
     s0+=6833.0;
     s1+=1028.0;
    } else {
     s0+=13225.0;
     s1+=95.0;
    }
   }
  } else {
   if(i68<1.0003215074539185){
    if(i1<0.04324910044670105){
     s0+=2745.0;
     s1+=222.0;
    } else {
     s0+=398.0;
     s1+=196.0;
    }
   } else {
    if(i57<0.11628104746341705){
     s0+=346.0;
     s1+=579.0;
    } else {
     s0+=969.0;
     s1+=152.0;
    }
   }
  }
 } else {
  if(i33<1.1016805171966553){
   if(i63<0.00015190517297014594){
    if(i6<-2.530928213673178e-05){
     s1+=58.0;
    } else {
     s0+=137.0;
     s1+=2.0;
    }
   } else {
    if(i33<1.0598008632659912){
     s0+=2.0;
    } else {
     s1+=686.0;
    }
   }
  } else {
   if(i11<2.777576446533203e-05){
    if(i16<0.0062397550791502){
     s0+=1492.0;
     s1+=46.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i13<1.0028966665267944){
     s0+=21.0;
     s1+=14.0;
    } else {
     s1+=156.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3548056813306175e-05){
  if(i1<0.11721101403236389){
   if(i48<0.014436215162277222){
    if(i10<-0.00041237473487854004){
     s0+=18.0;
     s1+=3.0;
    } else {
     s0+=113.0;
     s1+=1855.0;
    }
   } else {
    if(i5<1.0052785873413086){
     s0+=407.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=24.0;
    }
   }
  } else {
   if(i53<0.00030023546423763037){
    if(i42<0.004261869937181473){
     s1+=134.0;
    } else {
     s0+=51.0;
     s1+=16.0;
    }
   } else {
    if(i41<-0.0002319420746061951){
     s0+=8.0;
    } else {
     s0+=140.0;
     s1+=11162.0;
    }
   }
  }
 } else {
  if(i36<0.03997248411178589){
   if(i63<0.0011868156725540757){
    if(i58<1.811765287129674e-05){
     s0+=22.0;
     s1+=185.0;
    } else {
     s0+=31.0;
    }
   } else {
    s0+=32.0;
   }
  } else {
   if(i13<1.0016953945159912){
    if(i10<-0.0004054605960845947){
     s0+=315.0;
    } else {
     s0+=704.0;
     s1+=180.0;
    }
   } else {
    s1+=45.0;
   }
  }
 }
}
if(i2<0.0005491375923156738){
 if(i17<1.003753900527954){
  if(i57<0.03148399293422699){
   if(i8<1.0451585054397583){
    if(i55<0.00027154324925504625){
     s0+=51921.0;
     s1+=138.0;
    } else {
     s0+=2940.0;
     s1+=317.0;
    }
   } else {
    if(i1<0.07380223274230957){
     s0+=3880.0;
     s1+=286.0;
    } else {
     s0+=518.0;
     s1+=355.0;
    }
   }
  } else {
   if(i2<-0.00029212236404418945){
    if(i24<0.990474283695221){
     s0+=6851.0;
     s1+=475.0;
    } else {
     s0+=927.0;
     s1+=438.0;
    }
   } else {
    if(i29<1.0835556983947754){
     s0+=284.0;
    } else {
     s0+=1823.0;
     s1+=2151.0;
    }
   }
  }
 } else {
  if(i3<0.07957211136817932){
   if(i27<1.006261944770813){
    if(i71<0.9937410354614258){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=483.0;
     s1+=1.0;
    }
   } else {
    if(i39<0.0012166528031229973){
     s0+=102.0;
     s1+=169.0;
    } else {
     s0+=569.0;
     s1+=17.0;
    }
   }
  } else {
   if(i29<1.2604451179504395){
    if(i22<1.1463401317596436){
     s0+=10.0;
     s1+=656.0;
    } else {
     s0+=34.0;
     s1+=97.0;
    }
   } else {
    if(i31<0.0032168549951165915){
     s0+=134.0;
     s1+=2.0;
    } else {
     s0+=44.0;
     s1+=270.0;
    }
   }
  }
 }
} else {
 if(i30<1.0591429471969604){
  s0+=154.0;
 } else {
  if(i2<0.0009583234786987305){
   if(i53<0.0010365978814661503){
    if(i6<-4.3629977881209925e-05){
     s0+=3.0;
     s1+=236.0;
    } else {
     s0+=191.0;
     s1+=27.0;
    }
   } else {
    if(i32<0.006104529835283756){
     s0+=40.0;
     s1+=1117.0;
    } else {
     s0+=93.0;
     s1+=308.0;
    }
   }
  } else {
   if(i37<0.019121291115880013){
    if(i18<1.4662742614746094e-05){
     s0+=78.0;
     s1+=100.0;
    } else {
     s0+=3.0;
     s1+=1811.0;
    }
   } else {
    if(i15<-0.0006473660469055176){
     s0+=2.0;
     s1+=402.0;
    } else {
     s1+=7768.0;
    }
   }
  }
 }
}
if(i7<0.07194709777832031){
 if(i1<0.07540181279182434){
  if(i8<1.0452277660369873){
   if(i5<1.0025427341461182){
    if(i39<0.00036621425533667207){
     s0+=39129.0;
     s1+=32.0;
    } else {
     s0+=22464.0;
     s1+=703.0;
    }
   } else {
    if(i41<-1.4924709830665961e-05){
     s0+=1.0;
     s1+=122.0;
    } else {
     s0+=58.0;
     s1+=7.0;
    }
   }
  } else {
   if(i6<-4.2438845412107185e-05){
    if(i33<1.2360035181045532){
     s0+=64.0;
     s1+=710.0;
    } else {
     s0+=779.0;
     s1+=414.0;
    }
   } else {
    if(i35<1.1036889553070068){
     s0+=2159.0;
     s1+=825.0;
    } else {
     s0+=3994.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i5<0.9981051683425903){
   if(i58<1.2390393749228679e-05){
    if(i34<0.001214796444401145){
     s0+=16.0;
    } else {
     s1+=53.0;
    }
   } else {
    if(i57<0.14959865808486938){
     s0+=156.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i61<0.03633067011833191){
    if(i54<0.05260148644447327){
     s0+=20.0;
     s1+=1584.0;
    } else {
     s0+=15.0;
     s1+=8.0;
    }
   } else {
    if(i37<0.012339882552623749){
     s0+=23.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   }
  }
 }
} else {
 if(i19<1.0006377696990967){
  if(i10<-0.00040227174758911133){
   if(i53<0.0019248658791184425){
    if(i13<0.9988174438476562){
     s0+=421.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i55<0.0006644687964580953){
     s0+=26.0;
    } else {
     s0+=3.0;
     s1+=13.0;
    }
   }
  } else {
   if(i63<0.0002161810698453337){
    if(i32<0.0005824657273478806){
     s0+=397.0;
     s1+=15.0;
    } else {
     s0+=159.0;
     s1+=304.0;
    }
   } else {
    if(i1<0.1269533634185791){
     s0+=478.0;
     s1+=505.0;
    } else {
     s0+=56.0;
     s1+=1626.0;
    }
   }
  }
 } else {
  if(i3<0.09946516156196594){
   if(i38<0.058538615703582764){
    if(i60<-0.008139759302139282){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=188.0;
    }
   } else {
    if(i50<0.003013398963958025){
     s0+=216.0;
     s1+=57.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   }
  } else {
   if(i31<0.006688931491225958){
    if(i49<0.007021009922027588){
     s0+=50.0;
     s1+=1795.0;
    } else {
     s0+=156.0;
     s1+=232.0;
    }
   } else {
    if(i0<0.13138023018836975){
     s0+=20.0;
     s1+=234.0;
    } else {
     s0+=4.0;
     s1+=7761.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i28<1.008213758468628){
  if(i42<0.0003034382243640721){
   if(i6<-4.657311365008354e-05){
    if(i5<1.0003094673156738){
     s0+=291.0;
     s1+=8.0;
    } else {
     s0+=17.0;
     s1+=131.0;
    }
   } else {
    if(i51<-0.0023508965969085693){
     s0+=79.0;
     s1+=80.0;
    } else {
     s0+=54916.0;
     s1+=338.0;
    }
   }
  } else {
   if(i67<-2.4344488338101655e-05){
    if(i2<-0.0007311701774597168){
     s0+=1175.0;
     s1+=41.0;
    } else {
     s0+=1149.0;
     s1+=659.0;
    }
   } else {
    if(i4<3.057718276977539e-05){
     s0+=6102.0;
     s1+=336.0;
    } else {
     s1+=100.0;
    }
   }
  }
 } else {
  if(i39<0.002167126862332225){
   if(i32<0.00029061813256703317){
    s0+=22.0;
   } else {
    if(i29<1.2392117977142334){
     s0+=26.0;
     s1+=351.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i21<0.03264982998371124){
    if(i16<0.004513576626777649){
     s0+=150.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i41<-1.293243531108601e-05){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i18<0.00011247396469116211){
  if(i7<0.0812530517578125){
   if(i56<2.4935941837611608e-05){
    if(i10<0.0004519820213317871){
     s0+=2385.0;
     s1+=208.0;
    } else {
     s0+=1.0;
     s1+=80.0;
    }
   } else {
    if(i2<-0.00024074316024780273){
     s0+=2264.0;
     s1+=329.0;
    } else {
     s0+=1033.0;
     s1+=1214.0;
    }
   }
  } else {
   if(i36<0.05413508415222168){
    if(i16<0.001880789059214294){
     s0+=60.0;
     s1+=51.0;
    } else {
     s0+=42.0;
     s1+=2066.0;
    }
   } else {
    if(i39<0.010480414144694805){
     s0+=1128.0;
     s1+=709.0;
    } else {
     s0+=9.0;
     s1+=654.0;
    }
   }
  }
 } else {
  if(i5<1.0000183582305908){
   if(i57<0.4734344780445099){
    s0+=62.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i1<0.059846580028533936){
    if(i67<-0.00032304628985002637){
     s0+=103.0;
     s1+=21.0;
    } else {
     s0+=23.0;
     s1+=314.0;
    }
   } else {
    if(i3<0.0784037709236145){
     s0+=29.0;
     s1+=117.0;
    } else {
     s0+=28.0;
     s1+=9323.0;
    }
   }
  }
 }
}
if(i8<1.0562231540679932){
 if(i14<1.0080902576446533){
  if(i3<0.08155468106269836){
   if(i22<1.0451585054397583){
    if(i59<-0.0023179054260253906){
     s0+=1498.0;
     s1+=133.0;
    } else {
     s0+=52461.0;
     s1+=110.0;
    }
   } else {
    if(i3<0.06261390447616577){
     s0+=9417.0;
     s1+=618.0;
    } else {
     s0+=769.0;
     s1+=348.0;
    }
   }
  } else {
   if(i12<0.9943745732307434){
    if(i55<0.0008473091875202954){
     s0+=217.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=27.0;
    }
   } else {
    if(i35<1.0581047534942627){
     s0+=59.0;
     s1+=2.0;
    } else {
     s0+=44.0;
     s1+=657.0;
    }
   }
  }
 } else {
  if(i7<0.04261481761932373){
   if(i3<0.048180222511291504){
    if(i16<0.004318146035075188){
     s0+=101.0;
     s1+=8.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i35<1.1421754360198975){
     s0+=4.0;
     s1+=54.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i35<1.1991534233093262){
    if(i22<1.1091103553771973){
     s0+=9.0;
     s1+=412.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i34<0.009250672534108162){
     s0+=16.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i3<0.08502998948097229){
  if(i34<0.0011280316393822432){
   if(i63<0.00019056847668252885){
    if(i34<0.0007906037499196827){
     s0+=907.0;
     s1+=102.0;
    } else {
     s0+=17.0;
     s1+=181.0;
    }
   } else {
    if(i65<0.9980388283729553){
     s0+=117.0;
    } else {
     s0+=24.0;
     s1+=657.0;
    }
   }
  } else {
   if(i37<0.036346685141325){
    if(i16<0.006786734331399202){
     s0+=3719.0;
     s1+=264.0;
    } else {
     s0+=340.0;
     s1+=266.0;
    }
   } else {
    if(i17<0.9836935997009277){
     s0+=69.0;
     s1+=82.0;
    } else {
     s0+=6.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i12<1.0007872581481934){
   if(i6<-1.379550485580694e-05){
    if(i6<-5.232773401075974e-05){
     s0+=115.0;
     s1+=1834.0;
    } else {
     s0+=277.0;
     s1+=908.0;
    }
   } else {
    if(i71<1.012824296951294){
     s0+=142.0;
     s1+=146.0;
    } else {
     s0+=571.0;
     s1+=87.0;
    }
   }
  } else {
   if(i16<0.0017183915479108691){
    if(i12<1.0099111795425415){
     s0+=76.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=99.0;
    }
   } else {
    if(i41<-1.0743879101937637e-05){
     s0+=40.0;
     s1+=9571.0;
    } else {
     s0+=40.0;
     s1+=411.0;
    }
   }
  }
 }
}
if(i6<-7.277324766619131e-05){
 if(i25<0.9608935117721558){
  if(i2<0.0004807710647583008){
   if(i9<1.0891826152801514){
    if(i41<-4.6668028517160565e-05){
     s1+=2.0;
    } else {
     s0+=633.0;
     s1+=17.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i22<1.1211035251617432){
    s0+=22.0;
   } else {
    if(i0<0.013571232557296753){
     s0+=7.0;
     s1+=4.0;
    } else {
     s1+=144.0;
    }
   }
  }
 } else {
  if(i32<0.00046843470772728324){
   s0+=142.0;
  } else {
   if(i58<2.58962554653408e-05){
    if(i28<0.8977275490760803){
     s0+=11.0;
     s1+=4.0;
    } else {
     s0+=139.0;
     s1+=10800.0;
    }
   } else {
    if(i0<0.10012659430503845){
     s0+=115.0;
     s1+=72.0;
    } else {
     s0+=13.0;
     s1+=382.0;
    }
   }
  }
 }
} else {
 if(i3<0.07911401987075806){
  if(i46<-0.0017407536506652832){
   if(i2<0.000507354736328125){
    if(i52<0.9998438358306885){
     s0+=1274.0;
     s1+=478.0;
    } else {
     s0+=1883.0;
     s1+=162.0;
    }
   } else {
    if(i25<1.0197014808654785){
     s0+=5.0;
     s1+=204.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i19<1.001209020614624){
    if(i29<1.0856719017028809){
     s0+=36222.0;
    } else {
     s0+=25729.0;
     s1+=901.0;
    }
   } else {
    if(i2<0.00046759843826293945){
     s0+=2752.0;
     s1+=260.0;
    } else {
     s0+=201.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i68<0.9973610639572144){
   if(i19<0.9971874952316284){
    if(i66<-2.4194796424126253e-06){
     s0+=21.0;
     s1+=14.0;
    } else {
     s0+=414.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.05467653274536133){
     s0+=2.0;
     s1+=75.0;
    } else {
     s0+=12.0;
     s1+=2.0;
    }
   }
  } else {
   if(i16<0.0017323328647762537){
    if(i56<3.661211667349562e-05){
     s0+=529.0;
     s1+=47.0;
    } else {
     s0+=128.0;
     s1+=174.0;
    }
   } else {
    if(i36<0.04684284329414368){
     s0+=67.0;
     s1+=2183.0;
    } else {
     s0+=625.0;
     s1+=1083.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i5<1.0024750232696533){
  if(i22<1.0451585054397583){
   if(i51<-0.0012702345848083496){
    if(i29<1.0840110778808594){
     s0+=1150.0;
    } else {
     s0+=670.0;
     s1+=134.0;
    }
   } else {
    if(i35<1.0706628561019897){
     s0+=42253.0;
     s1+=5.0;
    } else {
     s0+=10115.0;
     s1+=84.0;
    }
   }
  } else {
   if(i1<0.07267218828201294){
    if(i33<1.1037919521331787){
     s0+=2637.0;
     s1+=914.0;
    } else {
     s0+=8008.0;
     s1+=260.0;
    }
   } else {
    if(i2<-0.001021057367324829){
     s0+=73.0;
     s1+=7.0;
    } else {
     s0+=111.0;
     s1+=743.0;
    }
   }
  }
 } else {
  if(i26<0.00018759648082777858){
   if(i45<0.00018352270126342773){
    if(i58<4.023030669486616e-06){
     s0+=64.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i35<1.1046062707901){
     s1+=9.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i16<0.002208882011473179){
    if(i7<0.0504898726940155){
     s0+=31.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    if(i56<0.00031719444086775184){
     s0+=4.0;
     s1+=700.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i3<0.09230038523674011){
  if(i13<1.0018954277038574){
   if(i12<1.0014796257019043){
    if(i68<1.0006070137023926){
     s0+=3101.0;
     s1+=326.0;
    } else {
     s0+=809.0;
     s1+=326.0;
    }
   } else {
    if(i10<0.0004996061325073242){
     s0+=427.0;
     s1+=257.0;
    } else {
     s0+=3.0;
     s1+=80.0;
    }
   }
  } else {
   if(i51<0.00250166654586792){
    if(i27<0.993018627166748){
     s0+=173.0;
     s1+=207.0;
    } else {
     s0+=34.0;
     s1+=477.0;
    }
   } else {
    if(i6<-9.987323574023321e-05){
     s0+=2.0;
     s1+=15.0;
    } else {
     s0+=206.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i6<-1.3547796697821468e-05){
   if(i12<1.001330852508545){
    if(i61<0.040524303913116455){
     s0+=116.0;
     s1+=2129.0;
    } else {
     s0+=260.0;
     s1+=655.0;
    }
   } else {
    if(i0<0.13284018635749817){
     s0+=60.0;
     s1+=1086.0;
    } else {
     s0+=23.0;
     s1+=8589.0;
    }
   }
  } else {
   if(i52<1.000046730041504){
    if(i32<0.0017789396224543452){
     s0+=567.0;
     s1+=32.0;
    } else {
     s0+=84.0;
     s1+=67.0;
    }
   } else {
    if(i21<0.019935593008995056){
     s0+=22.0;
     s1+=13.0;
    } else {
     s1+=107.0;
    }
   }
  }
 }
}
if(i4<3.701448440551758e-05){
 if(i7<0.07105270028114319){
  if(i0<0.0788610577583313){
   if(i35<1.0556960105895996){
    if(i70<0.05192713439464569){
     s0+=41675.0;
    } else {
     s0+=848.0;
     s1+=1.0;
    }
   } else {
    if(i12<0.9938126802444458){
     s0+=13044.0;
     s1+=108.0;
    } else {
     s0+=12323.0;
     s1+=1665.0;
    }
   }
  } else {
   if(i12<0.993147611618042){
    if(i10<-0.0004672110080718994){
     s0+=343.0;
     s1+=2.0;
    } else {
     s0+=78.0;
     s1+=40.0;
    }
   } else {
    if(i43<0.04938697814941406){
     s0+=37.0;
     s1+=764.0;
    } else {
     s0+=134.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i13<0.9985267519950867){
   if(i56<0.0001931200677063316){
    if(i4<-3.4749507904052734e-05){
     s0+=448.0;
    } else {
     s0+=79.0;
     s1+=13.0;
    }
   } else {
    if(i8<1.045822024345398){
     s0+=17.0;
    } else {
     s0+=3.0;
     s1+=10.0;
    }
   }
  } else {
   if(i60<-0.004490855615586042){
    if(i32<0.0012146943481639028){
     s0+=450.0;
     s1+=43.0;
    } else {
     s0+=604.0;
     s1+=1252.0;
    }
   } else {
    if(i32<0.00033779905061237514){
     s0+=128.0;
     s1+=1.0;
    } else {
     s0+=232.0;
     s1+=1515.0;
    }
   }
  }
 }
} else {
 if(i42<0.00020596888498403132){
  if(i44<1.0009000301361084){
   if(i3<0.07789400219917297){
    if(i12<1.0048466920852661){
     s0+=290.0;
    } else {
     s0+=17.0;
     s1+=8.0;
    }
   } else {
    s1+=25.0;
   }
  } else {
   if(i26<0.00015445094322785735){
    s0+=7.0;
   } else {
    s1+=111.0;
   }
  }
 } else {
  if(i30<1.0646642446517944){
   s0+=112.0;
  } else {
   if(i21<0.03065885230898857){
    if(i6<-4.411071859067306e-05){
     s0+=190.0;
     s1+=3143.0;
    } else {
     s0+=105.0;
     s1+=191.0;
    }
   } else {
    if(i15<-0.0005457401275634766){
     s0+=63.0;
     s1+=734.0;
    } else {
     s0+=13.0;
     s1+=7359.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i7<0.07071217894554138){
  if(i1<0.07646152377128601){
   if(i42<0.0002956066164188087){
    if(i29<1.0850647687911987){
     s0+=35422.0;
    } else {
     s0+=20396.0;
     s1+=568.0;
    }
   } else {
    if(i31<0.000865828013047576){
     s0+=3430.0;
     s1+=885.0;
    } else {
     s0+=8919.0;
     s1+=470.0;
    }
   }
  } else {
   if(i44<0.9993478059768677){
    s0+=89.0;
   } else {
    if(i12<0.9930119514465332){
     s0+=22.0;
     s1+=22.0;
    } else {
     s0+=15.0;
     s1+=607.0;
    }
   }
  }
 } else {
  if(i45<-0.0001341402530670166){
   if(i2<-0.0004850625991821289){
    if(i22<1.0889155864715576){
     s0+=158.0;
     s1+=5.0;
    } else {
     s0+=327.0;
    }
   } else {
    if(i21<0.02540593408048153){
     s0+=91.0;
     s1+=20.0;
    } else {
     s0+=3.0;
     s1+=48.0;
    }
   }
  } else {
   if(i16<0.0028332837391644716){
    if(i55<0.0003866504121106118){
     s0+=968.0;
     s1+=265.0;
    } else {
     s0+=112.0;
     s1+=269.0;
    }
   } else {
    if(i7<0.09756931662559509){
     s0+=378.0;
     s1+=612.0;
    } else {
     s0+=111.0;
     s1+=1739.0;
    }
   }
  }
 }
} else {
 if(i6<-4.32968299719505e-05){
  if(i18<6.258487701416016e-06){
   if(i26<0.011947810649871826){
    if(i0<0.15408039093017578){
     s0+=239.0;
     s1+=372.0;
    } else {
     s0+=7.0;
     s1+=331.0;
    }
   } else {
    if(i39<0.007586784660816193){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=503.0;
    }
   }
  } else {
   if(i7<0.015015840530395508){
    if(i15<2.0563602447509766e-05){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=88.0;
    }
   } else {
    if(i16<0.0007847750675864518){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=10121.0;
    }
   }
  }
 } else {
  if(i3<0.05990156531333923){
   if(i37<0.008924000896513462){
    if(i27<0.9527668952941895){
     s1+=2.0;
    } else {
     s0+=266.0;
    }
   } else {
    if(i23<1.0568475723266602){
     s1+=27.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i45<0.00013849139213562012){
    if(i68<1.0018246173858643){
     s0+=70.0;
     s1+=2.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i41<-1.0310484867659397e-05){
     s0+=3.0;
     s1+=203.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i14<1.0078403949737549){
  if(i10<0.0005835294723510742){
   if(i7<0.08108469843864441){
    if(i46<-0.001772165298461914){
     s0+=2616.0;
     s1+=550.0;
    } else {
     s0+=61859.0;
     s1+=990.0;
    }
   } else {
    if(i12<0.9887759685516357){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=32.0;
     s1+=190.0;
    }
   }
  } else {
   if(i12<0.9991426467895508){
    if(i5<1.0016108751296997){
     s0+=357.0;
     s1+=32.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   } else {
    if(i33<1.0690243244171143){
     s0+=17.0;
    } else {
     s0+=27.0;
     s1+=451.0;
    }
   }
  }
 } else {
  if(i33<1.1628741025924683){
   if(i1<0.0005053281784057617){
    s0+=5.0;
   } else {
    if(i14<1.0082677602767944){
     s0+=6.0;
     s1+=15.0;
    } else {
     s0+=3.0;
     s1+=286.0;
    }
   }
  } else {
   if(i55<7.108405407052487e-05){
    if(i16<0.0032613403163850307){
     s0+=201.0;
    } else {
     s0+=4.0;
     s1+=36.0;
    }
   } else {
    if(i19<0.9991735219955444){
     s0+=24.0;
     s1+=13.0;
    } else {
     s1+=127.0;
    }
   }
  }
 }
} else {
 if(i15<0.0006514787673950195){
  if(i2<0.0004850029945373535){
   if(i35<1.3685884475708008){
    if(i1<0.09796956181526184){
     s0+=4339.0;
     s1+=880.0;
    } else {
     s0+=806.0;
     s1+=1503.0;
    }
   } else {
    if(i26<0.001757756806910038){
     s0+=13.0;
    } else {
     s0+=16.0;
     s1+=380.0;
    }
   }
  } else {
   if(i21<0.026669703423976898){
    if(i65<0.9981124401092529){
     s0+=47.0;
     s1+=1.0;
    } else {
     s0+=136.0;
     s1+=302.0;
    }
   } else {
    if(i3<0.04015496373176575){
     s0+=22.0;
     s1+=27.0;
    } else {
     s0+=53.0;
     s1+=1507.0;
    }
   }
  }
 } else {
  if(i0<0.0646740198135376){
   if(i28<1.0143418312072754){
    if(i13<0.999962568283081){
     s0+=50.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=196.0;
    }
   } else {
    if(i41<-1.4695903701067436e-05){
     s1+=7.0;
    } else {
     s0+=112.0;
     s1+=1.0;
    }
   }
  } else {
   if(i6<-4.305835682316683e-05){
    if(i4<-1.2785196304321289e-05){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=9647.0;
    }
   } else {
    if(i34<0.001830477500334382){
     s1+=114.0;
    } else {
     s0+=90.0;
     s1+=65.0;
    }
   }
  }
 }
}
if(i0<0.08580529689788818){
 if(i2<0.00060233473777771){
  if(i42<0.00029937142971903086){
   if(i62<0.0007892977446317673){
    if(i9<1.0469610691070557){
     s0+=54704.0;
     s1+=327.0;
    } else {
     s0+=504.0;
     s1+=105.0;
    }
   } else {
    if(i17<0.9903004765510559){
     s0+=405.0;
     s1+=2.0;
    } else {
     s0+=518.0;
     s1+=210.0;
    }
   }
  } else {
   if(i5<0.9978128671646118){
    if(i29<1.2335381507873535){
     s0+=2118.0;
     s1+=203.0;
    } else {
     s0+=5900.0;
     s1+=87.0;
    }
   } else {
    if(i21<0.016910172998905182){
     s0+=3192.0;
     s1+=406.0;
    } else {
     s0+=1387.0;
     s1+=909.0;
    }
   }
  }
 } else {
  if(i16<0.001842552563175559){
   if(i6<-6.683920219074935e-05){
    s1+=5.0;
   } else {
    s0+=142.0;
   }
  } else {
   if(i12<1.0012164115905762){
    if(i49<0.0012073218822479248){
     s0+=74.0;
     s1+=148.0;
    } else {
     s0+=71.0;
     s1+=3.0;
    }
   } else {
    if(i72<0.00013391062384471297){
     s0+=18.0;
     s1+=751.0;
    } else {
     s0+=35.0;
     s1+=77.0;
    }
   }
  }
 }
} else {
 if(i13<0.9988330602645874){
  if(i30<1.4951298236846924){
   if(i52<0.9996338486671448){
    if(i25<0.9942944645881653){
     s0+=512.0;
     s1+=3.0;
    } else {
     s0+=108.0;
     s1+=8.0;
    }
   } else {
    if(i36<0.05909961462020874){
     s0+=10.0;
     s1+=23.0;
    } else {
     s0+=72.0;
    }
   }
  } else {
   if(i53<0.002381926402449608){
    if(i58<4.55651679658331e-05){
     s0+=39.0;
    } else {
     s0+=7.0;
     s1+=3.0;
    }
   } else {
    if(i56<0.00022357076522894204){
     s1+=22.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i65<0.999871551990509){
   if(i2<0.0006011724472045898){
    if(i64<-0.01937074586749077){
     s0+=212.0;
     s1+=481.0;
    } else {
     s0+=32.0;
     s1+=1394.0;
    }
   } else {
    if(i1<0.12478673458099365){
     s0+=35.0;
     s1+=635.0;
    } else {
     s0+=8.0;
     s1+=7887.0;
    }
   }
  } else {
   if(i21<0.03653229400515556){
    if(i41<-1.0954823665088043e-05){
     s0+=291.0;
     s1+=1317.0;
    } else {
     s0+=504.0;
     s1+=275.0;
    }
   } else {
    if(i33<1.3230104446411133){
     s0+=68.0;
     s1+=499.0;
    } else {
     s0+=14.0;
     s1+=1476.0;
    }
   }
  }
 }
}
if(i2<0.0005483627319335938){
 if(i7<0.07231146097183228){
  if(i27<1.0074388980865479){
   if(i59<-0.0016872286796569824){
    if(i72<0.00014178940909914672){
     s0+=4136.0;
     s1+=1069.0;
    } else {
     s0+=2747.0;
     s1+=129.0;
    }
   } else {
    if(i8<1.042891263961792){
     s0+=55327.0;
     s1+=238.0;
    } else {
     s0+=4435.0;
     s1+=516.0;
    }
   }
  } else {
   if(i1<0.07770892977714539){
    if(i21<0.015159872360527515){
     s0+=1535.0;
     s1+=119.0;
    } else {
     s0+=608.0;
     s1+=237.0;
    }
   } else {
    if(i48<0.02474305033683777){
     s0+=4.0;
     s1+=362.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i16<0.004998667631298304){
   if(i64<-0.01980031281709671){
    if(i0<0.24576717615127563){
     s0+=792.0;
     s1+=80.0;
    } else {
     s0+=152.0;
     s1+=164.0;
    }
   } else {
    if(i0<0.10130056738853455){
     s0+=583.0;
     s1+=251.0;
    } else {
     s0+=114.0;
     s1+=679.0;
    }
   }
  } else {
   if(i7<0.09881910681724548){
    if(i46<0.004517734050750732){
     s0+=31.0;
     s1+=276.0;
    } else {
     s0+=144.0;
     s1+=15.0;
    }
   } else {
    if(i66<1.8929582665805356e-06){
     s0+=31.0;
     s1+=1325.0;
    } else {
     s0+=45.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019916106248274446){
  if(i6<-5.3609277529176325e-05){
   s1+=11.0;
  } else {
   s0+=195.0;
  }
 } else {
  if(i29<1.0710620880126953){
   s0+=17.0;
  } else {
   if(i37<0.022274702787399292){
    if(i5<1.004080057144165){
     s0+=296.0;
     s1+=653.0;
    } else {
     s0+=55.0;
     s1+=2292.0;
    }
   } else {
    if(i2<0.0008552670478820801){
     s0+=8.0;
     s1+=706.0;
    } else {
     s1+=7870.0;
    }
   }
  }
 }
}
if(i10<0.00043338537216186523){
 if(i38<0.06174895167350769){
  if(i22<1.0486011505126953){
   if(i48<-0.004568934440612793){
    if(i33<1.0703742504119873){
     s0+=1075.0;
    } else {
     s0+=347.0;
     s1+=131.0;
    }
   } else {
    if(i70<0.022021714597940445){
     s0+=47318.0;
     s1+=74.0;
    } else {
     s0+=6761.0;
     s1+=148.0;
    }
   }
  } else {
   if(i21<0.021800892427563667){
    if(i5<1.0007743835449219){
     s0+=8844.0;
     s1+=721.0;
    } else {
     s0+=787.0;
     s1+=632.0;
    }
   } else {
    if(i3<0.0633096694946289){
     s0+=2165.0;
     s1+=419.0;
    } else {
     s0+=127.0;
     s1+=1306.0;
    }
   }
  }
 } else {
  if(i21<0.029304875060915947){
   if(i6<-2.1965348423691466e-05){
    if(i30<1.1820628643035889){
     s0+=46.0;
     s1+=475.0;
    } else {
     s0+=255.0;
     s1+=224.0;
    }
   } else {
    if(i62<0.0027656243182718754){
     s0+=1249.0;
     s1+=89.0;
    } else {
     s0+=23.0;
     s1+=39.0;
    }
   }
  } else {
   if(i45<-0.0002696812152862549){
    if(i2<-8.377432823181152e-05){
     s0+=174.0;
    } else {
     s1+=21.0;
    }
   } else {
    if(i3<0.1102314293384552){
     s0+=157.0;
     s1+=143.0;
    } else {
     s0+=115.0;
     s1+=1464.0;
    }
   }
  }
 }
} else {
 if(i15<0.00044018030166625977){
  if(i62<0.001362670911476016){
   if(i23<1.0978665351867676){
    if(i0<0.11698120832443237){
     s0+=1263.0;
     s1+=259.0;
    } else {
     s0+=39.0;
     s1+=287.0;
    }
   } else {
    if(i33<1.223900556564331){
     s0+=32.0;
    } else {
     s0+=34.0;
     s1+=474.0;
    }
   }
  } else {
   if(i26<0.011888332664966583){
    if(i2<0.00012677907943725586){
     s0+=194.0;
     s1+=69.0;
    } else {
     s0+=119.0;
     s1+=660.0;
    }
   } else {
    if(i58<4.432428249856457e-05){
     s0+=10.0;
     s1+=618.0;
    } else {
     s0+=11.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i32<0.000356450182152912){
   s0+=55.0;
  } else {
   if(i11<2.0802021026611328e-05){
    if(i16<0.0018603334901854396){
     s0+=77.0;
     s1+=2.0;
    } else {
     s1+=669.0;
    }
   } else {
    if(i42<0.0001522879465483129){
     s0+=13.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=8018.0;
    }
   }
  }
 }
}
if(i5<1.0024006366729736){
 if(i28<1.0081018209457397){
  if(i42<0.0003314737696200609){
   if(i29<1.0856719017028809){
    s0+=36447.0;
   } else {
    if(i71<0.9870083332061768){
     s0+=185.0;
     s1+=199.0;
    } else {
     s0+=20530.0;
     s1+=489.0;
    }
   }
  } else {
   if(i0<0.09229183197021484){
    if(i17<0.9874355792999268){
     s0+=6172.0;
     s1+=199.0;
    } else {
     s0+=4299.0;
     s1+=1230.0;
    }
   } else {
    if(i2<-0.0006662309169769287){
     s0+=348.0;
     s1+=152.0;
    } else {
     s0+=335.0;
     s1+=1461.0;
    }
   }
  }
 } else {
  if(i3<0.08269476890563965){
   if(i22<1.0731133222579956){
    if(i30<1.1063789129257202){
     s0+=92.0;
     s1+=197.0;
    } else {
     s0+=192.0;
     s1+=7.0;
    }
   } else {
    if(i55<-0.00013243770808912814){
     s0+=84.0;
     s1+=32.0;
    } else {
     s0+=1392.0;
     s1+=40.0;
    }
   }
  } else {
   if(i48<0.01647341251373291){
    if(i69<0.34068846702575684){
     s0+=50.0;
     s1+=960.0;
    } else {
     s0+=28.0;
     s1+=14.0;
    }
   } else {
    if(i72<9.903231693897396e-05){
     s0+=531.0;
     s1+=297.0;
    } else {
     s0+=65.0;
     s1+=498.0;
    }
   }
  }
 }
} else {
 if(i4<6.824731826782227e-05){
  if(i52<0.9999508857727051){
   if(i8<1.044118046760559){
    if(i39<0.0014912839978933334){
     s1+=7.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i26<0.0002821336383931339){
     s0+=2.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=866.0;
    }
   }
  } else {
   if(i3<0.06429591774940491){
    if(i34<0.0014350140700116754){
     s0+=21.0;
     s1+=118.0;
    } else {
     s0+=227.0;
     s1+=24.0;
    }
   } else {
    if(i53<0.0010442642960697412){
     s0+=41.0;
     s1+=13.0;
    } else {
     s0+=44.0;
     s1+=553.0;
    }
   }
  }
 } else {
  if(i18<5.602836608886719e-06){
   if(i42<0.006973840296268463){
    if(i29<1.5682398080825806){
     s0+=5.0;
     s1+=350.0;
    } else {
     s0+=66.0;
     s1+=42.0;
    }
   } else {
    if(i3<0.0033735334873199463){
     s0+=1.0;
     s1+=4.0;
    } else {
     s0+=1.0;
     s1+=370.0;
    }
   }
  } else {
   if(i25<0.9959429502487183){
    if(i62<-1.0075746104121208e-06){
     s0+=3.0;
     s1+=36.0;
    } else {
     s0+=1.0;
     s1+=436.0;
    }
   } else {
    s1+=8482.0;
   }
  }
 }
}
if(i1<0.07718163728713989){
 if(i12<1.0052235126495361){
  if(i42<0.0003038500144612044){
   if(i20<1.0105278491973877){
    if(i6<-4.094440373592079e-05){
     s0+=467.0;
     s1+=100.0;
    } else {
     s0+=55964.0;
     s1+=445.0;
    }
   } else {
    if(i34<0.0011612138478085399){
     s0+=47.0;
     s1+=126.0;
    } else {
     s0+=188.0;
     s1+=17.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i19<1.0005419254302979){
     s0+=2838.0;
     s1+=743.0;
    } else {
     s0+=57.0;
     s1+=325.0;
    }
   } else {
    if(i37<0.07466641068458557){
     s0+=9323.0;
     s1+=644.0;
    } else {
     s1+=43.0;
    }
   }
  }
 } else {
  if(i41<-1.4470709174929652e-05){
   if(i4<-2.765655517578125e-05){
    s0+=6.0;
   } else {
    if(i64<-0.017540935426950455){
     s0+=2.0;
    } else {
     s0+=3.0;
     s1+=761.0;
    }
   }
  } else {
   if(i33<1.1458663940429688){
    s1+=32.0;
   } else {
    if(i49<-0.010060280561447144){
     s1+=3.0;
    } else {
     s0+=332.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i13<0.9985270500183105){
  if(i37<0.08829273283481598){
   if(i66<-2.4606142687844113e-06){
    if(i17<0.9943954944610596){
     s0+=33.0;
     s1+=7.0;
    } else {
     s1+=9.0;
    }
   } else {
    s0+=470.0;
   }
  } else {
   s1+=1.0;
  }
 } else {
  if(i16<0.0016412362456321716){
   if(i15<0.0015465617179870605){
    if(i24<0.9951302409172058){
     s0+=80.0;
     s1+=124.0;
    } else {
     s0+=541.0;
     s1+=63.0;
    }
   } else {
    s1+=100.0;
   }
  } else {
   if(i5<1.0015358924865723){
    if(i61<0.021228402853012085){
     s0+=86.0;
     s1+=1716.0;
    } else {
     s0+=485.0;
     s1+=1021.0;
    }
   } else {
    if(i65<1.0016305446624756){
     s0+=71.0;
     s1+=10358.0;
    } else {
     s0+=77.0;
     s1+=543.0;
    }
   }
  }
 }
}
if(i3<0.07982069253921509){
 if(i17<1.0061566829681396){
  if(i2<0.000708460807800293){
   if(i51<-0.0012745261192321777){
    if(i2<-0.000288546085357666){
     s0+=4297.0;
     s1+=317.0;
    } else {
     s0+=1513.0;
     s1+=669.0;
    }
   } else {
    if(i42<0.000295794423436746){
     s0+=55362.0;
     s1+=330.0;
    } else {
     s0+=7334.0;
     s1+=639.0;
    }
   }
  } else {
   if(i48<0.002650916576385498){
    if(i37<0.007141749374568462){
     s0+=23.0;
     s1+=9.0;
    } else {
     s0+=30.0;
     s1+=349.0;
    }
   } else {
    if(i34<0.003174328710883856){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=48.0;
    }
   }
  }
 } else {
  if(i33<1.1663256883621216){
   s1+=485.0;
  } else {
   if(i4<6.598234176635742e-05){
    if(i56<2.443998891976662e-05){
     s0+=578.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=16.0;
    }
   } else {
    if(i46<0.0022496581077575684){
     s1+=114.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i3<0.1082281768321991){
  if(i54<0.04450047016143799){
   if(i46<0.004407823085784912){
    if(i11<-1.4662742614746094e-05){
     s0+=100.0;
     s1+=6.0;
    } else {
     s0+=166.0;
     s1+=1687.0;
    }
   } else {
    if(i51<0.004380643367767334){
     s0+=26.0;
     s1+=15.0;
    } else {
     s0+=124.0;
     s1+=3.0;
    }
   }
  } else {
   if(i54<0.062056154012680054){
    if(i29<1.175590991973877){
     s0+=40.0;
     s1+=40.0;
    } else {
     s0+=170.0;
     s1+=26.0;
    }
   } else {
    if(i4<0.00012677907943725586){
     s0+=462.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i45<-0.00026702880859375){
   if(i22<1.398578405380249){
    s0+=294.0;
   } else {
    s1+=38.0;
   }
  } else {
   if(i18<3.9637088775634766e-05){
    if(i21<0.020247526466846466){
     s0+=281.0;
     s1+=304.0;
    } else {
     s0+=216.0;
     s1+=2630.0;
    }
   } else {
    if(i41<-5.392039383878e-07){
     s0+=41.0;
     s1+=9399.0;
    } else {
     s0+=27.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i19<1.0029261112213135){
 if(i7<0.0719957947731018){
  if(i3<0.07885745167732239){
   if(i49<-0.002404510974884033){
    if(i0<0.032901883125305176){
     s0+=1983.0;
     s1+=245.0;
    } else {
     s0+=319.0;
     s1+=307.0;
    }
   } else {
    if(i59<-0.00232502818107605){
     s0+=4000.0;
     s1+=537.0;
    } else {
     s0+=61508.0;
     s1+=819.0;
    }
   }
  } else {
   if(i35<1.0670123100280762){
    if(i25<1.0075026750564575){
     s0+=155.0;
     s1+=3.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i36<0.043528228998184204){
     s0+=24.0;
     s1+=837.0;
    } else {
     s0+=68.0;
     s1+=27.0;
    }
   }
  }
 } else {
  if(i21<0.02606755495071411){
   if(i45<-0.0001310110092163086){
    if(i24<1.0142004489898682){
     s0+=308.0;
     s1+=10.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<0.04050281643867493){
     s0+=489.0;
     s1+=985.0;
    } else {
     s0+=539.0;
     s1+=178.0;
    }
   }
  } else {
   if(i13<0.9985739588737488){
    if(i41<-9.42139740800485e-06){
     s0+=6.0;
     s1+=7.0;
    } else {
     s0+=176.0;
    }
   } else {
    if(i36<0.05163857340812683){
     s0+=37.0;
     s1+=1542.0;
    } else {
     s0+=254.0;
     s1+=1087.0;
    }
   }
  }
 }
} else {
 if(i3<0.06513646245002747){
  if(i64<-0.00828641839325428){
   if(i5<1.0068659782409668){
    if(i9<1.099502444267273){
     s0+=582.0;
     s1+=6.0;
    } else {
     s1+=8.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i47<0.010157927870750427){
    if(i30<1.1158488988876343){
     s0+=38.0;
     s1+=128.0;
    } else {
     s0+=358.0;
     s1+=32.0;
    }
   } else {
    if(i4<2.288818359375e-05){
     s0+=62.0;
     s1+=19.0;
    } else {
     s0+=33.0;
     s1+=331.0;
    }
   }
  }
 } else {
  if(i18<-0.00010353326797485352){
   if(i1<0.10206833481788635){
    if(i54<0.01536417007446289){
     s0+=3.0;
     s1+=89.0;
    } else {
     s0+=118.0;
     s1+=7.0;
    }
   } else {
    if(i21<0.015381798148155212){
     s0+=19.0;
     s1+=24.0;
    } else {
     s0+=15.0;
     s1+=694.0;
    }
   }
  } else {
   if(i6<-4.183389319223352e-05){
    if(i15<-0.0002562403678894043){
     s0+=17.0;
     s1+=276.0;
    } else {
     s0+=5.0;
     s1+=8750.0;
    }
   } else {
    if(i68<1.0022172927856445){
     s0+=51.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=109.0;
    }
   }
  }
 }
}
if(i11<1.8417835235595703e-05){
 if(i18<0.00015109777450561523){
  if(i27<1.0074520111083984){
   if(i21<0.02165444940328598){
    if(i62<0.0007193426135927439){
     s0+=56160.0;
     s1+=330.0;
    } else {
     s0+=4388.0;
     s1+=844.0;
    }
   } else {
    if(i58<2.7389978640712798e-05){
     s0+=2169.0;
     s1+=1844.0;
    } else {
     s0+=3851.0;
     s1+=202.0;
    }
   }
  } else {
   if(i53<0.0018261279910802841){
    if(i30<1.1602427959442139){
     s0+=767.0;
     s1+=637.0;
    } else {
     s0+=1693.0;
     s1+=374.0;
    }
   } else {
    if(i24<1.0038888454437256){
     s0+=114.0;
     s1+=54.0;
    } else {
     s0+=20.0;
     s1+=602.0;
    }
   }
  }
 } else {
  if(i45<7.143616676330566e-05){
   if(i3<0.06270858645439148){
    if(i49<-0.0035359561443328857){
     s1+=3.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i13<0.9986430406570435){
     s0+=4.0;
    } else {
     s0+=10.0;
     s1+=1403.0;
    }
   }
  } else {
   if(i16<0.002559198532253504){
    if(i32<0.0011321387719362974){
     s1+=7.0;
    } else {
     s0+=170.0;
    }
   } else {
    s1+=121.0;
   }
  }
 }
} else {
 if(i12<1.0003910064697266){
  if(i3<0.100290447473526){
   if(i9<1.1205039024353027){
    if(i5<1.0015238523483276){
     s0+=1204.0;
     s1+=75.0;
    } else {
     s0+=147.0;
     s1+=121.0;
    }
   } else {
    if(i33<1.2417033910751343){
     s0+=2.0;
    } else {
     s1+=67.0;
    }
   }
  } else {
   if(i1<0.1285477876663208){
    if(i71<1.0108420848846436){
     s1+=89.0;
    } else {
     s0+=71.0;
     s1+=48.0;
    }
   } else {
    if(i16<0.0036415683571249247){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=840.0;
    }
   }
  }
 } else {
  if(i40<0.00023668771609663963){
   s0+=82.0;
  } else {
   if(i5<1.0041333436965942){
    if(i16<0.0017342916689813137){
     s0+=48.0;
     s1+=5.0;
    } else {
     s0+=77.0;
     s1+=843.0;
    }
   } else {
    if(i1<0.014997810125350952){
     s0+=10.0;
     s1+=42.0;
    } else {
     s0+=22.0;
     s1+=8603.0;
    }
   }
  }
 }
}
if(i19<1.0026898384094238){
 if(i8<1.0452277660369873){
  if(i48<-0.006162106990814209){
   if(i42<0.001976402010768652){
    if(i52<0.9998362064361572){
     s0+=219.0;
     s1+=233.0;
    } else {
     s0+=657.0;
     s1+=56.0;
    }
   } else {
    if(i43<0.05663323402404785){
     s0+=788.0;
     s1+=17.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   }
  } else {
   if(i55<0.0002800737274810672){
    if(i14<1.009965181350708){
     s0+=53138.0;
     s1+=255.0;
    } else {
     s0+=4.0;
     s1+=21.0;
    }
   } else {
    if(i12<0.9948485493659973){
     s0+=5726.0;
     s1+=39.0;
    } else {
     s0+=805.0;
     s1+=411.0;
    }
   }
  }
 } else {
  if(i1<0.08569097518920898){
   if(i4<1.150369644165039e-05){
    if(i30<1.1037919521331787){
     s0+=1756.0;
     s1+=725.0;
    } else {
     s0+=4493.0;
     s1+=255.0;
    }
   } else {
    if(i35<1.1083450317382812){
     s0+=150.0;
     s1+=452.0;
    } else {
     s0+=649.0;
     s1+=126.0;
    }
   }
  } else {
   if(i44<0.9989176988601685){
    if(i8<1.453892469406128){
     s0+=298.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i32<0.0005117261316627264){
     s0+=171.0;
     s1+=34.0;
    } else {
     s0+=651.0;
     s1+=3925.0;
    }
   }
  }
 }
} else {
 if(i13<1.0019140243530273){
  if(i3<0.06456184387207031){
   if(i32<0.0016642692498862743){
    if(i32<0.0003678589127957821){
     s0+=91.0;
    } else {
     s0+=39.0;
     s1+=88.0;
    }
   } else {
    if(i72<0.00028599449433386326){
     s0+=803.0;
     s1+=24.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.11323383450508118){
    if(i60<-0.003956031985580921){
     s0+=103.0;
     s1+=15.0;
    } else {
     s0+=24.0;
     s1+=194.0;
    }
   } else {
    if(i61<0.04065680503845215){
     s0+=8.0;
     s1+=1103.0;
    } else {
     s0+=52.0;
     s1+=296.0;
    }
   }
  }
 } else {
  if(i12<1.0011603832244873){
   if(i7<0.10046884417533875){
    if(i50<0.005744878202676773){
     s0+=257.0;
     s1+=63.0;
    } else {
     s0+=22.0;
     s1+=129.0;
    }
   } else {
    if(i61<0.06550413370132446){
     s1+=507.0;
    } else {
     s0+=7.0;
     s1+=46.0;
    }
   }
  } else {
   if(i30<1.0592039823532104){
    s0+=2.0;
   } else {
    if(i37<0.017336405813694){
     s0+=59.0;
     s1+=1559.0;
    } else {
     s0+=1.0;
     s1+=6684.0;
    }
   }
  }
 }
}
if(i10<0.00044038891792297363){
 if(i1<0.07771384716033936){
  if(i21<0.01706589199602604){
   if(i40<0.000272479112027213){
    if(i23<1.0486375093460083){
     s0+=44651.0;
     s1+=49.0;
    } else {
     s0+=73.0;
     s1+=10.0;
    }
   } else {
    if(i59<-0.0017601847648620605){
     s0+=2702.0;
     s1+=413.0;
    } else {
     s0+=11407.0;
     s1+=291.0;
    }
   }
  } else {
   if(i4<-2.1159648895263672e-05){
    if(i33<1.2204437255859375){
     s0+=1410.0;
     s1+=257.0;
    } else {
     s0+=6012.0;
     s1+=65.0;
    }
   } else {
    if(i33<1.1063789129257202){
     s0+=476.0;
     s1+=649.0;
    } else {
     s0+=1162.0;
     s1+=197.0;
    }
   }
  }
 } else {
  if(i22<1.0494745969772339){
   if(i44<1.0005381107330322){
    if(i20<0.9808676242828369){
     s0+=9.0;
     s1+=4.0;
    } else {
     s0+=247.0;
     s1+=8.0;
    }
   } else {
    if(i18<-0.00020807981491088867){
     s0+=7.0;
    } else {
     s0+=5.0;
     s1+=16.0;
    }
   }
  } else {
   if(i36<0.05079585313796997){
    if(i6<7.518687198171392e-06){
     s0+=126.0;
     s1+=2619.0;
    } else {
     s0+=53.0;
     s1+=15.0;
    }
   } else {
    if(i31<0.0038796095177531242){
     s0+=924.0;
     s1+=418.0;
    } else {
     s0+=195.0;
     s1+=840.0;
    }
   }
  }
 }
} else {
 if(i3<0.07072055339813232){
  if(i47<0.00835815817117691){
   if(i17<1.0043420791625977){
    if(i8<1.0184623003005981){
     s0+=5.0;
     s1+=8.0;
    } else {
     s0+=1099.0;
     s1+=89.0;
    }
   } else {
    if(i16<0.0018071430968120694){
     s0+=103.0;
    } else {
     s0+=8.0;
     s1+=148.0;
    }
   }
  } else {
   if(i2<0.0003414750099182129){
    if(i63<0.0019541699439287186){
     s0+=131.0;
     s1+=44.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i54<-0.03628095984458923){
     s0+=11.0;
     s1+=347.0;
    } else {
     s0+=34.0;
     s1+=122.0;
    }
   }
  }
 } else {
  if(i1<0.11217224597930908){
   if(i46<0.003673344850540161){
    if(i49<0.004350572824478149){
     s0+=26.0;
     s1+=1309.0;
    } else {
     s0+=32.0;
     s1+=10.0;
    }
   } else {
    if(i29<1.2392117977142334){
     s1+=37.0;
    } else {
     s0+=326.0;
     s1+=7.0;
    }
   }
  } else {
   if(i1<0.15316206216812134){
    if(i51<0.003919690847396851){
     s0+=30.0;
     s1+=777.0;
    } else {
     s0+=41.0;
     s1+=59.0;
    }
   } else {
    if(i5<1.0013797283172607){
     s0+=11.0;
     s1+=200.0;
    } else {
     s0+=8.0;
     s1+=7889.0;
    }
   }
  }
 }
}
if(i15<0.0008301138877868652){
 if(i1<0.07879114151000977){
  if(i10<0.0005230307579040527){
   if(i21<0.01609278842806816){
    if(i48<-0.00597614049911499){
     s0+=1810.0;
     s1+=240.0;
    } else {
     s0+=56120.0;
     s1+=458.0;
    }
   } else {
    if(i12<0.9947396516799927){
     s0+=7337.0;
     s1+=137.0;
    } else {
     s0+=2592.0;
     s1+=1104.0;
    }
   }
  } else {
   if(i2<0.0006022751331329346){
    if(i12<0.9960732460021973){
     s0+=550.0;
     s1+=31.0;
    } else {
     s0+=240.0;
     s1+=107.0;
    }
   } else {
    if(i54<-0.001090019941329956){
     s0+=63.0;
     s1+=359.0;
    } else {
     s0+=101.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i11<-1.4722347259521484e-05){
   if(i6<-6.246878183446825e-05){
    s1+=4.0;
   } else {
    if(i44<0.9997137784957886){
     s0+=452.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=8.0;
    }
   }
  } else {
   if(i0<0.1199796199798584){
    if(i64<-0.018606798723340034){
     s0+=528.0;
     s1+=48.0;
    } else {
     s0+=332.0;
     s1+=1237.0;
    }
   } else {
    if(i53<0.0006935809506103396){
     s0+=215.0;
     s1+=252.0;
    } else {
     s0+=196.0;
     s1+=3230.0;
    }
   }
  }
 }
} else {
 if(i8<1.0385410785675049){
  if(i13<1.0020654201507568){
   if(i0<0.06393945217132568){
    if(i53<0.0017883406253531575){
     s0+=225.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i52<1.0001106262207031){
     s0+=4.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   s1+=13.0;
  }
 } else {
  if(i10<-0.0002905428409576416){
   s0+=67.0;
  } else {
   if(i63<0.00046262115938588977){
    if(i18<0.00021469593048095703){
     s0+=231.0;
     s1+=407.0;
    } else {
     s0+=5.0;
     s1+=1945.0;
    }
   } else {
    s1+=7529.0;
   }
  }
 }
}
if(i1<0.07751640677452087){
 if(i13<1.001860499382019){
  if(i0<0.06640750169754028){
   if(i21<0.016620313748717308){
    if(i5<1.002465009689331){
     s0+=56092.0;
     s1+=541.0;
    } else {
     s0+=73.0;
     s1+=51.0;
    }
   } else {
    if(i34<0.0010998870711773634){
     s0+=1611.0;
     s1+=607.0;
    } else {
     s0+=7099.0;
     s1+=201.0;
    }
   }
  } else {
   if(i49<0.00046324729919433594){
    if(i10<-0.00018104910850524902){
     s0+=242.0;
     s1+=20.0;
    } else {
     s0+=226.0;
     s1+=416.0;
    }
   } else {
    if(i45<-3.159046173095703e-05){
     s0+=1664.0;
     s1+=23.0;
    } else {
     s0+=1626.0;
     s1+=303.0;
    }
   }
  }
 } else {
  if(i5<1.002704381942749){
   if(i26<0.015207512304186821){
    if(i45<0.00036597251892089844){
     s0+=100.0;
     s1+=96.0;
    } else {
     s0+=483.0;
     s1+=25.0;
    }
   } else {
    s1+=24.0;
   }
  } else {
   if(i49<0.002646118402481079){
    if(i32<0.006782390642911196){
     s0+=27.0;
     s1+=816.0;
    } else {
     s0+=53.0;
     s1+=96.0;
    }
   } else {
    if(i41<-2.163197859772481e-05){
     s0+=25.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i41<3.1444933483726345e-06){
  if(i5<1.0018045902252197){
   if(i13<0.9985202550888062){
    if(i62<0.0033079658169299364){
     s0+=312.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    if(i61<0.03554791212081909){
     s0+=435.0;
     s1+=2532.0;
    } else {
     s0+=725.0;
     s1+=691.0;
    }
   }
  } else {
   if(i3<0.12586697936058044){
    if(i39<0.002371616428717971){
     s0+=15.0;
     s1+=731.0;
    } else {
     s0+=110.0;
     s1+=427.0;
    }
   } else {
    if(i3<0.17261168360710144){
     s0+=23.0;
     s1+=1257.0;
    } else {
     s1+=8127.0;
    }
   }
  }
 } else {
  if(i23<1.0325736999511719){
   if(i68<0.9962596297264099){
    s0+=10.0;
   } else {
    s1+=19.0;
   }
  } else {
   if(i31<0.003905834397301078){
    if(i38<0.052376508712768555){
     s1+=2.0;
    } else {
     s0+=271.0;
    }
   } else {
    if(i19<0.9949302673339844){
     s0+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<0.08237019181251526){
 if(i6<-4.9353748181601986e-05){
  if(i17<0.9979709386825562){
   if(i53<0.0064474232494831085){
    if(i17<0.9808086156845093){
     s0+=1327.0;
     s1+=21.0;
    } else {
     s0+=605.0;
     s1+=233.0;
    }
   } else {
    if(i8<1.0293865203857422){
     s0+=1.0;
    } else {
     s1+=64.0;
    }
   }
  } else {
   if(i4<-3.159046173095703e-06){
    if(i67<-0.0004200529074296355){
     s1+=42.0;
    } else {
     s0+=178.0;
     s1+=16.0;
    }
   } else {
    if(i18<-9.834766387939453e-06){
     s0+=51.0;
     s1+=88.0;
    } else {
     s0+=32.0;
     s1+=749.0;
    }
   }
  }
 } else {
  if(i57<0.026191672310233116){
   if(i50<0.002083058701828122){
    if(i24<1.0058584213256836){
     s0+=55539.0;
     s1+=287.0;
    } else {
     s0+=581.0;
     s1+=161.0;
    }
   } else {
    if(i31<0.0007689102785661817){
     s0+=429.0;
     s1+=202.0;
    } else {
     s0+=658.0;
     s1+=43.0;
    }
   }
  } else {
   if(i34<0.0010582080576568842){
    if(i33<1.081458568572998){
     s0+=1704.0;
     s1+=90.0;
    } else {
     s0+=701.0;
     s1+=869.0;
    }
   } else {
    if(i10<0.0008729696273803711){
     s0+=7606.0;
     s1+=232.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i44<0.998927116394043){
  if(i34<0.02636060118675232){
   if(i32<0.0017424665857106447){
    s0+=404.0;
   } else {
    if(i66<-3.149186341033783e-06){
     s1+=2.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   s1+=8.0;
  }
 } else {
  if(i11<1.901388168334961e-05){
   if(i32<0.0005139429122209549){
    if(i63<0.0002562565787229687){
     s0+=209.0;
     s1+=8.0;
    } else {
     s0+=11.0;
     s1+=105.0;
    }
   } else {
    if(i61<0.036666810512542725){
     s0+=287.0;
     s1+=3362.0;
    } else {
     s0+=490.0;
     s1+=903.0;
    }
   }
  } else {
   if(i5<1.002371072769165){
    if(i22<1.125802755355835){
     s0+=153.0;
     s1+=121.0;
    } else {
     s0+=11.0;
     s1+=414.0;
    }
   } else {
    if(i24<1.0043301582336426){
     s0+=44.0;
     s1+=1261.0;
    } else {
     s0+=16.0;
     s1+=7910.0;
    }
   }
  }
 }
}
if(i7<0.0723993182182312){
 if(i10<0.0006673932075500488){
  if(i47<0.008769992738962173){
   if(i2<0.0005988180637359619){
    if(i9<1.0410094261169434){
     s0+=62079.0;
     s1+=1012.0;
    } else {
     s0+=3848.0;
     s1+=883.0;
    }
   } else {
    if(i3<0.059514135122299194){
     s0+=147.0;
     s1+=51.0;
    } else {
     s0+=26.0;
     s1+=166.0;
    }
   }
  } else {
   if(i15<0.000956416130065918){
    if(i4<1.1324882507324219e-05){
     s0+=2332.0;
     s1+=584.0;
    } else {
     s0+=112.0;
     s1+=196.0;
    }
   } else {
    if(i0<0.06116989254951477){
     s0+=18.0;
     s1+=35.0;
    } else {
     s1+=181.0;
    }
   }
  }
 } else {
  if(i60<-0.003216401906684041){
   if(i37<0.03570561110973358){
    if(i39<0.0022017057053744793){
     s0+=9.0;
     s1+=26.0;
    } else {
     s0+=243.0;
     s1+=21.0;
    }
   } else {
    s1+=59.0;
   }
  } else {
   if(i25<0.9681432247161865){
    if(i53<0.005860953591763973){
     s0+=125.0;
     s1+=10.0;
    } else {
     s1+=43.0;
    }
   } else {
    if(i12<1.0016043186187744){
     s0+=130.0;
     s1+=147.0;
    } else {
     s0+=15.0;
     s1+=1317.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015796422958374){
  if(i37<0.04035473242402077){
   if(i6<-1.2278027497814037e-05){
    if(i46<0.004780113697052002){
     s0+=215.0;
     s1+=1117.0;
    } else {
     s0+=432.0;
     s1+=335.0;
    }
   } else {
    if(i23<1.019634485244751){
     s0+=7.0;
     s1+=49.0;
    } else {
     s0+=1057.0;
     s1+=195.0;
    }
   }
  } else {
   if(i3<0.08551019430160522){
    if(i54<-0.03247934579849243){
     s1+=2.0;
    } else {
     s0+=13.0;
    }
   } else {
    if(i6<-3.520832251524553e-05){
     s1+=749.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i39<0.008517974987626076){
   if(i3<0.10137626528739929){
    if(i28<1.0266629457473755){
     s0+=72.0;
     s1+=213.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i60<-0.00823999010026455){
     s0+=62.0;
     s1+=373.0;
    } else {
     s0+=29.0;
     s1+=2545.0;
    }
   }
  } else {
   if(i25<0.9835268259048462){
    if(i68<1.0039740800857544){
     s0+=4.0;
     s1+=59.0;
    } else {
     s1+=403.0;
    }
   } else {
    s1+=6422.0;
   }
  }
 }
}
if(i19<1.0026135444641113){
 if(i24<1.0078535079956055){
  if(i23<1.0401519536972046){
   if(i3<0.08222377300262451){
    if(i51<-0.0012819766998291016){
     s0+=4998.0;
     s1+=896.0;
    } else {
     s0+=59901.0;
     s1+=623.0;
    }
   } else {
    if(i5<0.9940439462661743){
     s0+=111.0;
    } else {
     s0+=57.0;
     s1+=667.0;
    }
   }
  } else {
   if(i7<0.12134408950805664){
    if(i16<0.004315461963415146){
     s0+=2238.0;
     s1+=362.0;
    } else {
     s0+=535.0;
     s1+=394.0;
    }
   } else {
    if(i13<0.9988141059875488){
     s0+=138.0;
     s1+=6.0;
    } else {
     s0+=107.0;
     s1+=602.0;
    }
   }
  }
 } else {
  if(i0<0.07966220378875732){
   if(i70<0.016223449259996414){
    if(i26<0.0007023129146546125){
     s0+=7.0;
     s1+=117.0;
    } else {
     s0+=28.0;
     s1+=1.0;
    }
   } else {
    if(i72<0.00011343906226102263){
     s0+=954.0;
     s1+=19.0;
    } else {
     s0+=80.0;
     s1+=84.0;
    }
   }
  } else {
   if(i10<-0.000410616397857666){
    s0+=64.0;
   } else {
    if(i63<0.00023448503634426743){
     s0+=240.0;
     s1+=344.0;
    } else {
     s0+=141.0;
     s1+=2199.0;
    }
   }
  }
 }
} else {
 if(i56<0.0002811631711665541){
  if(i17<0.9798852205276489){
   if(i1<0.08074447512626648){
    if(i60<0.00460681039839983){
     s0+=344.0;
     s1+=4.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=78.0;
   }
  } else {
   if(i22<1.0591415166854858){
    if(i52<1.000253438949585){
     s0+=74.0;
     s1+=70.0;
    } else {
     s0+=151.0;
    }
   } else {
    if(i3<0.06900238990783691){
     s0+=301.0;
     s1+=562.0;
    } else {
     s0+=223.0;
     s1+=9941.0;
    }
   }
  }
 } else {
  if(i53<0.006283165421336889){
   if(i9<1.0916399955749512){
    s0+=410.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i5<0.997018575668335){
    if(i9<1.0866613388061523){
     s0+=11.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i24<0.880953311920166){
     s0+=1.0;
    } else {
     s1+=160.0;
    }
   }
  }
 }
}
if(i7<0.07196849584579468){
 if(i20<1.0080368518829346){
  if(i46<-0.0015549063682556152){
   if(i10<0.0005185604095458984){
    if(i7<0.030405789613723755){
     s0+=3226.0;
     s1+=415.0;
    } else {
     s0+=476.0;
     s1+=355.0;
    }
   } else {
    if(i2<0.00029963254928588867){
     s0+=119.0;
     s1+=42.0;
    } else {
     s0+=60.0;
     s1+=667.0;
    }
   }
  } else {
   if(i0<0.08178001642227173){
    if(i5<1.0024986267089844){
     s0+=62610.0;
     s1+=898.0;
    } else {
     s0+=85.0;
     s1+=156.0;
    }
   } else {
    if(i12<0.99381422996521){
     s0+=301.0;
     s1+=27.0;
    } else {
     s0+=46.0;
     s1+=424.0;
    }
   }
  }
 } else {
  if(i5<1.0021824836730957){
   if(i40<0.0013557658530771732){
    if(i6<-2.7863385184900835e-05){
     s0+=78.0;
     s1+=470.0;
    } else {
     s0+=545.0;
     s1+=82.0;
    }
   } else {
    if(i62<-0.0006234991597011685){
     s0+=15.0;
     s1+=21.0;
    } else {
     s0+=1252.0;
     s1+=56.0;
    }
   }
  } else {
   if(i15<0.0014296770095825195){
    if(i53<0.001831929897889495){
     s0+=161.0;
     s1+=98.0;
    } else {
     s0+=10.0;
     s1+=207.0;
    }
   } else {
    if(i18<0.00021266937255859375){
     s0+=3.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=806.0;
    }
   }
  }
 }
} else {
 if(i5<1.0017274618148804){
  if(i36<0.04415217041969299){
   if(i3<0.09080615639686584){
    if(i51<0.003352344036102295){
     s0+=35.0;
     s1+=155.0;
    } else {
     s0+=55.0;
     s1+=3.0;
    }
   } else {
    if(i44<0.9987627267837524){
     s0+=14.0;
    } else {
     s0+=17.0;
     s1+=1222.0;
    }
   }
  } else {
   if(i16<0.005305483937263489){
    if(i13<0.9980583190917969){
     s0+=393.0;
     s1+=2.0;
    } else {
     s0+=1108.0;
     s1+=534.0;
    }
   } else {
    if(i8<1.0819685459136963){
     s0+=145.0;
     s1+=118.0;
    } else {
     s0+=39.0;
     s1+=603.0;
    }
   }
  }
 } else {
  if(i6<-7.278223347384483e-05){
   if(i63<0.00019447473459877074){
    if(i12<1.006209135055542){
     s0+=20.0;
     s1+=61.0;
    } else {
     s1+=178.0;
    }
   } else {
    if(i1<0.08427906036376953){
     s0+=12.0;
     s1+=50.0;
    } else {
     s0+=18.0;
     s1+=8993.0;
    }
   }
  } else {
   if(i58<1.311555752181448e-05){
    if(i8<1.0905734300613403){
     s0+=11.0;
     s1+=442.0;
    } else {
     s0+=78.0;
     s1+=180.0;
    }
   } else {
    if(i42<0.004469756036996841){
     s0+=36.0;
    } else {
     s1+=12.0;
    }
   }
  }
 }
}
if(i3<0.08223742246627808){
 if(i18<0.00016176700592041016){
  if(i26<0.0003095229039900005){
   if(i62<0.0009383566211909056){
    if(i28<1.008082389831543){
     s0+=53300.0;
     s1+=169.0;
    } else {
     s0+=180.0;
     s1+=149.0;
    }
   } else {
    if(i32<0.0005773683078587055){
     s0+=31.0;
     s1+=70.0;
    } else {
     s0+=142.0;
     s1+=6.0;
    }
   }
  } else {
   if(i35<1.1036889553070068){
    if(i29<1.0840110778808594){
     s0+=2513.0;
    } else {
     s0+=1836.0;
     s1+=1367.0;
    }
   } else {
    if(i62<0.003374102059751749){
     s0+=9114.0;
     s1+=286.0;
    } else {
     s0+=1950.0;
     s1+=458.0;
    }
   }
  }
 } else {
  if(i16<0.002520764246582985){
   if(i13<1.0019607543945312){
    if(i11<5.751848220825195e-06){
     s0+=1.0;
     s1+=33.0;
    } else {
     s0+=268.0;
     s1+=11.0;
    }
   } else {
    s1+=38.0;
   }
  } else {
   if(i44<0.9993185997009277){
    s0+=29.0;
   } else {
    s1+=460.0;
   }
  }
 }
} else {
 if(i13<0.9985270500183105){
  if(i34<0.009531702846288681){
   if(i11<-1.0341405868530273e-05){
    s0+=402.0;
   } else {
    if(i28<1.007744312286377){
     s0+=57.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i62<0.001359907677397132){
    if(i39<0.006609620526432991){
     s1+=1.0;
    } else {
     s0+=9.0;
    }
   } else {
    s1+=14.0;
   }
  }
 } else {
  if(i18<6.16908073425293e-05){
   if(i43<0.058075129985809326){
    if(i0<0.09135580062866211){
     s0+=45.0;
     s1+=267.0;
    } else {
     s0+=1.0;
     s1+=1937.0;
    }
   } else {
    if(i6<-1.4224166079657152e-05){
     s0+=508.0;
     s1+=1646.0;
    } else {
     s0+=584.0;
     s1+=170.0;
    }
   }
  } else {
   if(i6<-2.230671998404432e-05){
    if(i2<0.0008683204650878906){
     s0+=53.0;
     s1+=1391.0;
    } else {
     s1+=8693.0;
    }
   } else {
    if(i31<0.003951511345803738){
     s0+=56.0;
    } else {
     s1+=3.0;
    }
   }
  }
 }
}
if(i15<0.000807344913482666){
 if(i0<0.08528822660446167){
  if(i11<1.9490718841552734e-05){
   if(i22<1.0475225448608398){
    if(i55<0.0002718868781812489){
     s0+=49350.0;
     s1+=65.0;
    } else {
     s0+=5502.0;
     s1+=236.0;
    }
   } else {
    if(i35<1.1036889553070068){
     s0+=4269.0;
     s1+=1235.0;
    } else {
     s0+=8405.0;
     s1+=318.0;
    }
   }
  } else {
   if(i4<3.713369369506836e-05){
    if(i50<0.008290087804198265){
     s0+=817.0;
     s1+=66.0;
    } else {
     s0+=67.0;
     s1+=51.0;
    }
   } else {
    if(i37<0.0075429584830999374){
     s0+=259.0;
     s1+=30.0;
    } else {
     s0+=117.0;
     s1+=408.0;
    }
   }
  }
 } else {
  if(i11<-1.4901161193847656e-05){
   if(i66<-3.561346829883405e-06){
    if(i0<0.10908812284469604){
     s0+=8.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i32<0.011188913136720657){
     s0+=592.0;
     s1+=7.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.02342701144516468){
    if(i9<1.0847222805023193){
     s0+=432.0;
     s1+=1322.0;
    } else {
     s0+=625.0;
     s1+=303.0;
    }
   } else {
    if(i3<0.10745030641555786){
     s0+=94.0;
     s1+=237.0;
    } else {
     s0+=83.0;
     s1+=2916.0;
    }
   }
  }
 }
} else {
 if(i3<0.05846726894378662){
  if(i10<0.0005848407745361328){
   if(i54<-0.03205758333206177){
    if(i3<0.0131014883518219){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i30<1.126044750213623){
     s0+=64.0;
     s1+=32.0;
    } else {
     s0+=411.0;
    }
   }
  } else {
   s1+=140.0;
  }
 } else {
  if(i6<-4.281087967683561e-05){
   if(i11<-1.329183578491211e-05){
    s0+=16.0;
   } else {
    if(i3<0.06380912661552429){
     s0+=1.0;
     s1+=65.0;
    } else {
     s0+=1.0;
     s1+=9450.0;
    }
   }
  } else {
   if(i35<1.1280360221862793){
    s1+=76.0;
   } else {
    if(i13<1.0007712841033936){
     s0+=3.0;
     s1+=32.0;
    } else {
     s0+=95.0;
     s1+=1.0;
    }
   }
  }
 }
}
if(i3<0.08350890874862671){
 if(i10<0.0006086528301239014){
  if(i22<1.0485899448394775){
   if(i69<0.04496188461780548){
    if(i51<-0.0016438663005828857){
     s0+=135.0;
     s1+=47.0;
    } else {
     s0+=50726.0;
     s1+=79.0;
    }
   } else {
    if(i12<0.9934417009353638){
     s0+=3219.0;
     s1+=1.0;
    } else {
     s0+=1956.0;
     s1+=225.0;
    }
   }
  } else {
   if(i35<1.1034480333328247){
    if(i29<1.084442138671875){
     s0+=1644.0;
    } else {
     s0+=2268.0;
     s1+=1447.0;
    }
   } else {
    if(i1<0.07229411602020264){
     s0+=8515.0;
     s1+=297.0;
    } else {
     s0+=302.0;
     s1+=99.0;
    }
   }
  }
 } else {
  if(i12<1.0017409324645996){
   if(i23<0.9927446246147156){
    if(i1<0.013205200433731079){
     s0+=43.0;
     s1+=19.0;
    } else {
     s0+=5.0;
     s1+=81.0;
    }
   } else {
    if(i53<0.005478309467434883){
     s0+=593.0;
     s1+=91.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i48<0.012547016143798828){
    if(i15<-0.00310322642326355){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=22.0;
     s1+=740.0;
    }
   } else {
    if(i8<1.124587059020996){
     s0+=13.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i10<-0.0004056096076965332){
  if(i34<0.007754760794341564){
   s0+=435.0;
  } else {
   if(i14<0.9886659383773804){
    if(i30<1.4761377573013306){
     s0+=2.0;
    } else {
     s1+=15.0;
    }
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i5<1.0018045902252197){
   if(i36<0.05052298307418823){
    if(i28<1.0295594930648804){
     s0+=60.0;
     s1+=1971.0;
    } else {
     s0+=38.0;
     s1+=145.0;
    }
   } else {
    if(i31<0.006589790806174278){
     s0+=879.0;
     s1+=636.0;
    } else {
     s0+=53.0;
     s1+=405.0;
    }
   }
  } else {
   if(i2<0.0008388757705688477){
    if(i16<0.0034674066118896008){
     s0+=61.0;
     s1+=141.0;
    } else {
     s0+=41.0;
     s1+=974.0;
    }
   } else {
    if(i5<1.0044623613357544){
     s0+=30.0;
     s1+=894.0;
    } else {
     s0+=10.0;
     s1+=8851.0;
    }
   }
  }
 }
}
if(i0<0.08442407846450806){
 if(i5<1.0024776458740234){
  if(i42<0.0002978804404847324){
   if(i55<0.00024193566059693694){
    if(i22<1.0483907461166382){
     s0+=47447.0;
     s1+=43.0;
    } else {
     s0+=5118.0;
     s1+=232.0;
    }
   } else {
    if(i4<2.384185791015625e-07){
     s0+=3713.0;
     s1+=185.0;
    } else {
     s0+=53.0;
     s1+=92.0;
    }
   }
  } else {
   if(i40<0.0022093080915510654){
    if(i37<0.010974157601594925){
     s0+=3886.0;
     s1+=552.0;
    } else {
     s0+=1160.0;
     s1+=704.0;
    }
   } else {
    if(i46<-0.0020743608474731445){
     s0+=2072.0;
     s1+=296.0;
    } else {
     s0+=5439.0;
     s1+=33.0;
    }
   }
  }
 } else {
  if(i26<0.0001742029853630811){
   if(i55<1.732505188556388e-05){
    s0+=70.0;
   } else {
    if(i27<1.006385326385498){
     s0+=3.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i41<-1.4116389138507657e-05){
    if(i32<0.007164008915424347){
     s0+=16.0;
     s1+=754.0;
    } else {
     s0+=93.0;
     s1+=132.0;
    }
   } else {
    if(i39<0.001927168108522892){
     s1+=25.0;
    } else {
     s0+=121.0;
    }
   }
  }
 }
} else {
 if(i10<-0.00038686394691467285){
  if(i22<1.4490156173706055){
   if(i44<0.9992955923080444){
    if(i32<0.0017222859896719456){
     s0+=589.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   } else {
    if(i61<0.04129260778427124){
     s0+=5.0;
     s1+=10.0;
    } else {
     s0+=26.0;
    }
   }
  } else {
   s1+=1.0;
  }
 } else {
  if(i0<0.12735825777053833){
   if(i29<1.2371783256530762){
    if(i46<0.0046672523021698){
     s0+=148.0;
     s1+=1920.0;
    } else {
     s0+=162.0;
     s1+=29.0;
    }
   } else {
    if(i71<0.9971045851707458){
     s0+=23.0;
     s1+=456.0;
    } else {
     s0+=630.0;
     s1+=129.0;
    }
   }
  } else {
   if(i16<0.001611450919881463){
    if(i68<0.9991914629936218){
     s0+=3.0;
     s1+=68.0;
    } else {
     s0+=201.0;
     s1+=34.0;
    }
   } else {
    if(i36<0.08625954389572144){
     s0+=8.0;
     s1+=8553.0;
    } else {
     s0+=150.0;
     s1+=2805.0;
    }
   }
  }
 }
}
if(i15<0.0007747411727905273){
 if(i4<3.725290298461914e-05){
  if(i26<0.00031641291570849717){
   if(i24<1.0073918104171753){
    if(i3<0.08213692903518677){
     s0+=53299.0;
     s1+=262.0;
    } else {
     s0+=97.0;
     s1+=53.0;
    }
   } else {
    if(i1<0.05680319666862488){
     s0+=145.0;
     s1+=21.0;
    } else {
     s0+=7.0;
     s1+=110.0;
    }
   }
  } else {
   if(i0<0.08563503623008728){
    if(i32<0.0014294765423983335){
     s0+=5393.0;
     s1+=1325.0;
    } else {
     s0+=9341.0;
     s1+=348.0;
    }
   } else {
    if(i16<0.004804178141057491){
     s0+=1321.0;
     s1+=1115.0;
    } else {
     s0+=209.0;
     s1+=1604.0;
    }
   }
  }
 } else {
  if(i37<0.009278448298573494){
   if(i39<0.002935094526037574){
    if(i62<0.0010290243662893772){
     s0+=344.0;
     s1+=1.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i65<1.0007715225219727){
     s0+=9.0;
     s1+=48.0;
    } else {
     s0+=60.0;
     s1+=9.0;
    }
   }
  } else {
   if(i37<0.023333603516221046){
    if(i9<1.0799560546875){
     s0+=47.0;
     s1+=386.0;
    } else {
     s0+=103.0;
     s1+=57.0;
    }
   } else {
    if(i37<0.025930769741535187){
     s0+=6.0;
     s1+=74.0;
    } else {
     s0+=3.0;
     s1+=1776.0;
    }
   }
  }
 }
} else {
 if(i9<1.0340921878814697){
  if(i10<0.0005857348442077637){
   if(i66<-5.092639185022563e-06){
    s1+=32.0;
   } else {
    if(i55<-0.00015059084398671985){
     s1+=5.0;
    } else {
     s0+=401.0;
     s1+=3.0;
    }
   }
  } else {
   s1+=123.0;
  }
 } else {
  if(i2<3.471970558166504e-05){
   if(i0<0.179498553276062){
    s0+=68.0;
   } else {
    s1+=10.0;
   }
  } else {
   if(i6<-4.330423689680174e-05){
    if(i12<1.0051568746566772){
     s0+=30.0;
     s1+=1238.0;
    } else {
     s1+=8472.0;
    }
   } else {
    if(i34<0.0014094857033342123){
     s1+=91.0;
    } else {
     s0+=164.0;
     s1+=34.0;
    }
   }
  }
 }
}
if(i7<0.07170876860618591){
 if(i3<0.07900592684745789){
  if(i5<1.0024776458740234){
   if(i49<-0.0027314722537994385){
    if(i6<-1.6811396562843584e-05){
     s0+=415.0;
     s1+=342.0;
    } else {
     s0+=1407.0;
     s1+=160.0;
    }
   } else {
    if(i42<0.00029343002825044096){
     s0+=55783.0;
     s1+=473.0;
    } else {
     s0+=11164.0;
     s1+=947.0;
    }
   }
  } else {
   if(i35<1.1341700553894043){
    if(i72<0.0002115153183694929){
     s1+=530.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i48<-0.0098152756690979){
     s0+=26.0;
     s1+=173.0;
    } else {
     s0+=221.0;
     s1+=29.0;
    }
   }
  }
 } else {
  if(i5<0.9965581893920898){
   if(i57<0.0567634180188179){
    if(i49<0.004557996988296509){
     s0+=104.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i62<0.0023798332549631596){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i48<0.013249635696411133){
    if(i29<1.082772970199585){
     s0+=13.0;
    } else {
     s0+=40.0;
     s1+=1859.0;
    }
   } else {
    if(i33<1.2371783256530762){
     s0+=14.0;
     s1+=75.0;
    } else {
     s0+=19.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i4<3.36766242980957e-05){
  if(i16<0.004567707888782024){
   if(i38<0.06110304594039917){
    if(i68<0.9977109432220459){
     s0+=24.0;
     s1+=7.0;
    } else {
     s0+=42.0;
     s1+=289.0;
    }
   } else {
    if(i14<1.0099186897277832){
     s0+=1180.0;
     s1+=368.0;
    } else {
     s0+=263.0;
     s1+=389.0;
    }
   }
  } else {
   if(i7<0.11057493090629578){
    if(i64<-0.019812043756246567){
     s0+=157.0;
     s1+=21.0;
    } else {
     s0+=72.0;
     s1+=443.0;
    }
   } else {
    if(i44<0.9986870288848877){
     s0+=41.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=1086.0;
    }
   }
  }
 } else {
  if(i3<0.09925493597984314){
   if(i60<-0.004127672873437405){
    if(i50<0.003016965463757515){
     s0+=83.0;
     s1+=3.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i54<0.05103069543838501){
     s0+=2.0;
     s1+=163.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i5<0.9954220056533813){
    s0+=5.0;
   } else {
    if(i6<-5.448270167107694e-05){
     s0+=50.0;
     s1+=9411.0;
    } else {
     s0+=45.0;
     s1+=241.0;
    }
   }
  }
 }
}
if(i2<0.0005506277084350586){
 if(i14<1.0080969333648682){
  if(i3<0.08223113417625427){
   if(i37<0.005871076136827469){
    if(i59<-0.0026662349700927734){
     s0+=964.0;
     s1+=278.0;
    } else {
     s0+=41422.0;
     s1+=76.0;
    }
   } else {
    if(i22<1.0451276302337646){
     s0+=16961.0;
     s1+=141.0;
    } else {
     s0+=8739.0;
     s1+=1313.0;
    }
   }
  } else {
   if(i38<0.06367731094360352){
    if(i11<-1.7523765563964844e-05){
     s0+=72.0;
    } else {
     s0+=35.0;
     s1+=846.0;
    }
   } else {
    if(i21<0.028831452131271362){
     s0+=840.0;
     s1+=290.0;
    } else {
     s0+=270.0;
     s1+=808.0;
    }
   }
  }
 } else {
  if(i1<0.08194464445114136){
   if(i30<1.1063789129257202){
    if(i6<-2.274879443575628e-05){
     s1+=235.0;
    } else {
     s0+=69.0;
     s1+=11.0;
    }
   } else {
    if(i16<0.006468880921602249){
     s0+=835.0;
     s1+=36.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i66<1.0856929293368012e-06){
    if(i43<0.06118965148925781){
     s0+=4.0;
     s1+=785.0;
    } else {
     s0+=263.0;
     s1+=676.0;
    }
   } else {
    s0+=68.0;
   }
  }
 }
} else {
 if(i22<1.0415534973144531){
  if(i56<1.796980905055534e-05){
   s0+=179.0;
  } else {
   s1+=5.0;
  }
 } else {
  if(i3<0.06511637568473816){
   if(i35<1.1341700553894043){
    if(i57<0.17646349966526031){
     s1+=278.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i23<1.0099859237670898){
     s0+=10.0;
     s1+=148.0;
    } else {
     s0+=222.0;
     s1+=90.0;
    }
   }
  } else {
   if(i6<-4.6975823352113366e-05){
    if(i0<0.13692575693130493){
     s0+=93.0;
     s1+=1716.0;
    } else {
     s0+=15.0;
     s1+=9099.0;
    }
   } else {
    if(i30<1.2527469396591187){
     s0+=22.0;
     s1+=246.0;
    } else {
     s0+=64.0;
     s1+=12.0;
    }
   }
  }
 }
}
if(i20<1.0099639892578125){
 if(i5<1.0024793148040771){
  if(i21<0.022099249064922333){
   if(i26<0.00031495883013121784){
    if(i62<0.0009008744382299483){
     s0+=53143.0;
     s1+=147.0;
    } else {
     s0+=262.0;
     s1+=79.0;
    }
   } else {
    if(i39<0.0019037685124203563){
     s0+=3967.0;
     s1+=908.0;
    } else {
     s0+=5085.0;
     s1+=234.0;
    }
   }
  } else {
   if(i13<0.9991544485092163){
    if(i29<1.255998969078064){
     s0+=487.0;
     s1+=178.0;
    } else {
     s0+=3231.0;
     s1+=56.0;
    }
   } else {
    if(i56<0.0001562688557896763){
     s0+=724.0;
     s1+=1544.0;
    } else {
     s0+=1700.0;
     s1+=481.0;
    }
   }
  }
 } else {
  if(i8<1.0343151092529297){
   if(i66<-5.190537194721401e-06){
    s1+=40.0;
   } else {
    s0+=44.0;
   }
  } else {
   if(i18<-0.00035959482192993164){
    if(i8<1.0889548063278198){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i42<0.00016961463552433997){
     s0+=24.0;
     s1+=21.0;
    } else {
     s0+=76.0;
     s1+=2399.0;
    }
   }
  }
 }
} else {
 if(i6<-4.227302997605875e-05){
  if(i45<-0.00023874640464782715){
   if(i41<-1.2265044460946228e-05){
    s1+=51.0;
   } else {
    s0+=33.0;
   }
  } else {
   if(i56<7.586526771774516e-05){
    if(i1<0.05543875694274902){
     s0+=29.0;
     s1+=132.0;
    } else {
     s0+=20.0;
     s1+=7987.0;
    }
   } else {
    if(i63<0.0006299850647337735){
     s0+=147.0;
     s1+=249.0;
    } else {
     s0+=79.0;
     s1+=1676.0;
    }
   }
  }
 } else {
  if(i33<1.1040980815887451){
   if(i40<0.0012087265495210886){
    if(i3<0.07136422395706177){
     s0+=129.0;
     s1+=59.0;
    } else {
     s0+=35.0;
     s1+=331.0;
    }
   } else {
    if(i65<1.0004925727844238){
     s0+=140.0;
     s1+=5.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i2<0.0009568333625793457){
    if(i29<1.255998969078064){
     s0+=630.0;
     s1+=327.0;
    } else {
     s0+=1152.0;
     s1+=77.0;
    }
   } else {
    s1+=70.0;
   }
  }
 }
}
if(i2<0.000564277172088623){
 if(i38<0.062146395444869995){
  if(i24<1.0073939561843872){
   if(i3<0.08139219880104065){
    if(i46<-0.0016542375087738037){
     s0+=3311.0;
     s1+=664.0;
    } else {
     s0+=63917.0;
     s1+=1051.0;
    }
   } else {
    if(i2<-0.000856935977935791){
     s0+=101.0;
     s1+=6.0;
    } else {
     s0+=20.0;
     s1+=858.0;
    }
   }
  } else {
   if(i0<0.07765066623687744){
    if(i35<1.075559377670288){
     s1+=131.0;
    } else {
     s0+=1185.0;
     s1+=76.0;
    }
   } else {
    if(i9<1.117547631263733){
     s0+=22.0;
     s1+=490.0;
    } else {
     s0+=27.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i16<0.005522930528968573){
   if(i36<0.03982725739479065){
    if(i17<0.9830688238143921){
     s0+=22.0;
     s1+=10.0;
    } else {
     s0+=102.0;
     s1+=337.0;
    }
   } else {
    if(i0<0.10198235511779785){
     s0+=1062.0;
     s1+=95.0;
    } else {
     s0+=821.0;
     s1+=551.0;
    }
   }
  } else {
   if(i37<0.02891070395708084){
    if(i32<0.009002170525491238){
     s0+=90.0;
     s1+=355.0;
    } else {
     s0+=49.0;
    }
   } else {
    if(i17<0.9688889980316162){
     s0+=19.0;
     s1+=8.0;
    } else {
     s0+=10.0;
     s1+=878.0;
    }
   }
  }
 }
} else {
 if(i1<0.05852234363555908){
  if(i49<-0.0006437897682189941){
   if(i62<0.00018914205429609865){
    if(i29<1.2392117977142334){
     s0+=27.0;
     s1+=59.0;
    } else {
     s0+=37.0;
     s1+=1.0;
    }
   } else {
    if(i29<1.5876636505126953){
     s0+=24.0;
     s1+=465.0;
    } else {
     s0+=24.0;
     s1+=27.0;
    }
   }
  } else {
   if(i62<0.0008726953528821468){
    if(i56<-1.1020620149793103e-06){
     s0+=154.0;
     s1+=4.0;
    } else {
     s0+=16.0;
     s1+=15.0;
    }
   } else {
    if(i26<0.002159144263714552){
     s0+=1.0;
     s1+=31.0;
    } else {
     s0+=51.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i0<0.13697117567062378){
   if(i49<0.003806769847869873){
    if(i46<0.0069506168365478516){
     s0+=41.0;
     s1+=1694.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i25<1.0032784938812256){
     s0+=112.0;
     s1+=24.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   }
  } else {
   if(i19<0.9959030151367188){
    if(i25<0.9985432624816895){
     s0+=6.0;
    } else {
     s1+=76.0;
    }
   } else {
    if(i72<3.902250318787992e-05){
     s0+=5.0;
     s1+=328.0;
    } else {
     s0+=9.0;
     s1+=8679.0;
    }
   }
  }
 }
}
if(i15<0.0007590651512145996){
 if(i7<0.07547333836555481){
  if(i3<0.07995203137397766){
   if(i8<1.0412344932556152){
    if(i51<-0.0012906789779663086){
     s0+=3995.0;
     s1+=413.0;
    } else {
     s0+=55358.0;
     s1+=237.0;
    }
   } else {
    if(i12<1.0016229152679443){
     s0+=8439.0;
     s1+=1199.0;
    } else {
     s0+=556.0;
     s1+=397.0;
    }
   }
  } else {
   if(i36<0.041064679622650146){
    if(i52<0.9995661973953247){
     s0+=71.0;
    } else {
     s0+=24.0;
     s1+=911.0;
    }
   } else {
    if(i51<-0.001367717981338501){
     s0+=11.0;
     s1+=20.0;
    } else {
     s0+=179.0;
     s1+=42.0;
    }
   }
  }
 } else {
  if(i16<0.004694579169154167){
   if(i46<0.0043520331382751465){
    if(i36<0.05270358920097351){
     s0+=95.0;
     s1+=543.0;
    } else {
     s0+=390.0;
     s1+=152.0;
    }
   } else {
    if(i16<0.002830677665770054){
     s0+=656.0;
     s1+=65.0;
    } else {
     s0+=289.0;
     s1+=164.0;
    }
   }
  } else {
   if(i13<0.9979839324951172){
    s0+=70.0;
   } else {
    if(i0<0.12121999263763428){
     s0+=168.0;
     s1+=494.0;
    } else {
     s0+=27.0;
     s1+=2603.0;
    }
   }
  }
 }
} else {
 if(i3<0.06396803259849548){
  if(i53<0.0015652652364224195){
   if(i32<0.0008029411546885967){
    if(i22<1.041040301322937){
     s0+=25.0;
    } else {
     s0+=3.0;
     s1+=72.0;
    }
   } else {
    if(i5<1.0046184062957764){
     s0+=556.0;
    } else {
     s1+=10.0;
    }
   }
  } else {
   if(i52<0.9997090697288513){
    s0+=4.0;
   } else {
    s1+=179.0;
   }
  }
 } else {
  if(i11<-1.329183578491211e-05){
   s0+=8.0;
  } else {
   if(i16<0.00222661136649549){
    if(i18<0.0002161860466003418){
     s0+=57.0;
     s1+=43.0;
    } else {
     s1+=223.0;
    }
   } else {
    if(i0<0.10058790445327759){
     s0+=11.0;
     s1+=699.0;
    } else {
     s0+=1.0;
     s1+=8793.0;
    }
   }
  }
 }
}
if(i3<0.08408460021018982){
 if(i4<4.1812658309936523e-05){
  if(i3<0.06948328018188477){
   if(i46<-0.0015491843223571777){
    if(i26<0.0024545970372855663){
     s0+=1840.0;
     s1+=548.0;
    } else {
     s0+=2006.0;
     s1+=170.0;
    }
   } else {
    if(i8<1.0451585054397583){
     s0+=58814.0;
     s1+=376.0;
    } else {
     s0+=4722.0;
     s1+=469.0;
    }
   }
  } else {
   if(i36<0.03368490934371948){
    if(i71<1.024871826171875){
     s0+=92.0;
     s1+=440.0;
    } else {
     s0+=68.0;
     s1+=5.0;
    }
   } else {
    if(i12<0.9949499368667603){
     s0+=800.0;
     s1+=2.0;
    } else {
     s0+=849.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i19<0.9987786412239075){
   if(i40<0.013365959748625755){
    if(i8<1.0876028537750244){
     s0+=204.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i41<-1.4686575013911352e-05){
    if(i48<0.008690178394317627){
     s0+=73.0;
     s1+=965.0;
    } else {
     s0+=36.0;
     s1+=4.0;
    }
   } else {
    if(i45<0.00020700693130493164){
     s0+=121.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i4<3.4749507904052734e-05){
  if(i2<-0.0007635354995727539){
   if(i33<1.4274868965148926){
    if(i44<0.9993201494216919){
     s0+=347.0;
    } else {
     s0+=57.0;
     s1+=26.0;
    }
   } else {
    if(i22<1.076696753501892){
     s0+=28.0;
    } else {
     s0+=3.0;
     s1+=103.0;
    }
   }
  } else {
   if(i16<0.0016448013484477997){
    if(i6<-1.1603440725593828e-05){
     s0+=165.0;
     s1+=155.0;
    } else {
     s0+=321.0;
     s1+=17.0;
    }
   } else {
    if(i61<0.02839568257331848){
     s0+=97.0;
     s1+=1993.0;
    } else {
     s0+=409.0;
     s1+=856.0;
    }
   }
  }
 } else {
  if(i15<-0.000556647777557373){
   if(i19<1.0022151470184326){
    if(i30<1.3035686016082764){
     s0+=70.0;
     s1+=37.0;
    } else {
     s1+=54.0;
    }
   } else {
    if(i57<0.024510247632861137){
     s0+=9.0;
     s1+=18.0;
    } else {
     s0+=24.0;
     s1+=608.0;
    }
   }
  } else {
   if(i16<0.0021808247547596693){
    if(i5<1.0045115947723389){
     s0+=30.0;
     s1+=1.0;
    } else {
     s1+=141.0;
    }
   } else {
    if(i37<0.016147293150424957){
     s0+=25.0;
     s1+=1279.0;
    } else {
     s1+=8590.0;
    }
   }
  }
 }
}
if(i8<1.055552363395691){
 if(i22<1.0486011505126953){
  if(i55<0.00022911871201358736){
   if(i69<0.04631171375513077){
    if(i24<1.0086711645126343){
     s0+=47679.0;
     s1+=24.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i11<4.231929779052734e-06){
     s0+=1324.0;
     s1+=15.0;
    } else {
     s0+=83.0;
     s1+=30.0;
    }
   }
  } else {
   if(i12<0.9939219355583191){
    if(i17<0.9911586046218872){
     s0+=5706.0;
     s1+=5.0;
    } else {
     s0+=293.0;
     s1+=8.0;
    }
   } else {
    if(i68<1.0017240047454834){
     s0+=1161.0;
     s1+=272.0;
    } else {
     s0+=60.0;
     s1+=70.0;
    }
   }
  }
 } else {
  if(i3<0.06990215182304382){
   if(i34<0.0010036182356998324){
    if(i55<0.00011210408410988748){
     s0+=1939.0;
     s1+=200.0;
    } else {
     s0+=203.0;
     s1+=445.0;
    }
   } else {
    if(i50<0.005488140042871237){
     s0+=5232.0;
     s1+=83.0;
    } else {
     s0+=584.0;
     s1+=74.0;
    }
   }
  } else {
   if(i60<-0.004077940247952938){
    if(i36<0.037015676498413086){
     s0+=12.0;
     s1+=29.0;
    } else {
     s0+=142.0;
     s1+=10.0;
    }
   } else {
    if(i2<-0.0008719563484191895){
     s0+=77.0;
     s1+=8.0;
    } else {
     s0+=124.0;
     s1+=1042.0;
    }
   }
  }
 }
} else {
 if(i1<0.08297213912010193){
  if(i19<1.0025999546051025){
   if(i39<0.0019974419847130775){
    if(i3<0.06597566604614258){
     s0+=1372.0;
     s1+=411.0;
    } else {
     s0+=155.0;
     s1+=301.0;
    }
   } else {
    if(i16<0.006520069669932127){
     s0+=3117.0;
     s1+=92.0;
    } else {
     s0+=202.0;
     s1+=115.0;
    }
   }
  } else {
   if(i4<4.214048385620117e-05){
    if(i32<0.0017972385976463556){
     s1+=59.0;
    } else {
     s0+=292.0;
     s1+=47.0;
    }
   } else {
    if(i65<0.9976886510848999){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=86.0;
     s1+=901.0;
    }
   }
  }
 } else {
  if(i16<0.00468787644058466){
   if(i54<0.07264867424964905){
    if(i36<0.05448448657989502){
     s0+=91.0;
     s1+=1280.0;
    } else {
     s0+=222.0;
     s1+=262.0;
    }
   } else {
    if(i60<-0.008031281642615795){
     s0+=545.0;
     s1+=55.0;
    } else {
     s0+=220.0;
     s1+=131.0;
    }
   }
  } else {
   if(i58<1.549522130517289e-05){
    if(i2<-0.0006282925605773926){
     s0+=26.0;
    } else {
     s0+=55.0;
     s1+=9805.0;
    }
   } else {
    if(i70<0.11335238069295883){
     s0+=67.0;
     s1+=189.0;
    } else {
     s0+=41.0;
     s1+=1147.0;
    }
   }
  }
 }
}
if(i10<0.0004361271858215332){
 if(i9<1.0450963973999023){
  if(i8<1.042891263961792){
   if(i3<0.08222886919975281){
    if(i70<0.018615633249282837){
     s0+=48384.0;
     s1+=174.0;
    } else {
     s0+=11655.0;
     s1+=466.0;
    }
   } else {
    if(i33<1.0724589824676514){
     s0+=68.0;
    } else {
     s0+=78.0;
     s1+=180.0;
    }
   }
  } else {
   if(i1<0.06923031806945801){
    if(i39<0.0021671103313565254){
     s0+=2070.0;
     s1+=490.0;
    } else {
     s0+=1802.0;
     s1+=56.0;
    }
   } else {
    if(i61<0.027084678411483765){
     s0+=26.0;
     s1+=392.0;
    } else {
     s0+=118.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i7<0.06444653868675232){
   if(i13<0.9988552331924438){
    if(i6<-6.53797178529203e-05){
     s0+=2.0;
     s1+=8.0;
    } else {
     s0+=1108.0;
     s1+=13.0;
    }
   } else {
    if(i3<0.07319208979606628){
     s0+=2261.0;
     s1+=491.0;
    } else {
     s0+=35.0;
     s1+=446.0;
    }
   }
  } else {
   if(i1<0.12476512789726257){
    if(i26<0.0010077746119350195){
     s0+=218.0;
     s1+=517.0;
    } else {
     s0+=903.0;
     s1+=228.0;
    }
   } else {
    if(i10<-0.00040784478187561035){
     s0+=183.0;
     s1+=1.0;
    } else {
     s0+=277.0;
     s1+=2434.0;
    }
   }
  }
 }
} else {
 if(i4<4.202127456665039e-05){
  if(i43<0.088623046875){
   if(i8<1.1205039024353027){
    if(i15<-0.0019386708736419678){
     s0+=773.0;
     s1+=40.0;
    } else {
     s0+=674.0;
     s1+=339.0;
    }
   } else {
    if(i27<0.8776034116744995){
     s0+=2.0;
    } else {
     s0+=10.0;
     s1+=205.0;
    }
   }
  } else {
   if(i30<1.2566349506378174){
    if(i36<0.07257118821144104){
     s1+=17.0;
    } else {
     s0+=49.0;
     s1+=26.0;
    }
   } else {
    if(i26<0.0026786555536091328){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=167.0;
    }
   }
  }
 } else {
  if(i41<-1.3879505786462687e-05){
   if(i15<4.64320182800293e-05){
    if(i7<0.12811711430549622){
     s0+=198.0;
     s1+=574.0;
    } else {
     s0+=6.0;
     s1+=722.0;
    }
   } else {
    if(i2<0.0009376406669616699){
     s0+=12.0;
     s1+=324.0;
    } else {
     s0+=1.0;
     s1+=8764.0;
    }
   }
  } else {
   if(i63<0.0004278718843124807){
    if(i47<-0.002321079606190324){
     s1+=3.0;
    } else {
     s0+=60.0;
    }
   } else {
    if(i31<0.00041296047857031226){
     s0+=35.0;
    } else {
     s1+=66.0;
    }
   }
  }
 }
}
if(i10<0.00043660402297973633){
 if(i43<0.059159308671951294){
  if(i20<1.0107624530792236){
   if(i8<1.0451585054397583){
    if(i59<-0.002234131097793579){
     s0+=3896.0;
     s1+=498.0;
    } else {
     s0+=57040.0;
     s1+=412.0;
    }
   } else {
    if(i1<0.07569372653961182){
     s0+=5594.0;
     s1+=881.0;
    } else {
     s0+=83.0;
     s1+=976.0;
    }
   }
  } else {
   if(i1<0.07660216093063354){
    if(i29<1.1039612293243408){
     s0+=175.0;
     s1+=165.0;
    } else {
     s0+=820.0;
     s1+=26.0;
    }
   } else {
    if(i3<0.0879879891872406){
     s0+=46.0;
     s1+=68.0;
    } else {
     s0+=9.0;
     s1+=1103.0;
    }
   }
  }
 } else {
  if(i15<0.0007008910179138184){
   if(i37<0.040339693427085876){
    if(i11<-1.4722347259521484e-05){
     s0+=495.0;
     s1+=14.0;
    } else {
     s0+=1092.0;
     s1+=665.0;
    }
   } else {
    if(i0<0.10631823539733887){
     s0+=38.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=372.0;
    }
   }
  } else {
   if(i32<0.0005871067987754941){
    if(i56<-4.6937825572967995e-06){
     s0+=18.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i37<0.013128804974257946){
     s0+=33.0;
     s1+=81.0;
    } else {
     s1+=568.0;
    }
   }
  }
 }
} else {
 if(i0<0.08520627021789551){
  if(i12<1.0015718936920166){
   if(i50<0.004816739819943905){
    if(i18<-0.00029075145721435547){
     s0+=674.0;
     s1+=2.0;
    } else {
     s0+=613.0;
     s1+=108.0;
    }
   } else {
    if(i1<0.017247796058654785){
     s0+=92.0;
     s1+=22.0;
    } else {
     s0+=12.0;
     s1+=146.0;
    }
   }
  } else {
   if(i22<1.0413084030151367){
    if(i60<-0.0009373708162456751){
     s1+=1.0;
    } else {
     s0+=52.0;
    }
   } else {
    if(i19<1.0054212808609009){
     s0+=94.0;
     s1+=447.0;
    } else {
     s0+=12.0;
     s1+=447.0;
    }
   }
  }
 } else {
  if(i16<0.006492264568805695){
   if(i65<1.0015003681182861){
    if(i14<1.0080246925354004){
     s0+=68.0;
     s1+=318.0;
    } else {
     s0+=30.0;
     s1+=1090.0;
    }
   } else {
    if(i39<0.002216451335698366){
     s0+=22.0;
     s1+=45.0;
    } else {
     s0+=75.0;
    }
   }
  } else {
   if(i3<0.08479899168014526){
    if(i35<1.1563866138458252){
     s1+=8.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i15<-0.002021312713623047){
     s0+=41.0;
     s1+=343.0;
    } else {
     s0+=14.0;
     s1+=8279.0;
    }
   }
  }
 }
}
if(i3<0.08162996172904968){
 if(i10<0.0005857348442077637){
  if(i46<-0.001657634973526001){
   if(i4<-2.238154411315918e-05){
    if(i26<0.0023258961737155914){
     s0+=688.0;
     s1+=123.0;
    } else {
     s0+=1427.0;
     s1+=46.0;
    }
   } else {
    if(i30<1.1047927141189575){
     s0+=407.0;
     s1+=427.0;
    } else {
     s0+=1106.0;
     s1+=173.0;
    }
   }
  } else {
   if(i14<1.006436824798584){
    if(i21<0.01712321862578392){
     s0+=56741.0;
     s1+=398.0;
    } else {
     s0+=7165.0;
     s1+=629.0;
    }
   } else {
    if(i35<1.083398699760437){
     s0+=102.0;
     s1+=259.0;
    } else {
     s0+=1056.0;
     s1+=62.0;
    }
   }
  }
 } else {
  if(i49<0.00011074542999267578){
   if(i46<-0.0011117756366729736){
    if(i17<0.9816310405731201){
     s0+=67.0;
     s1+=62.0;
    } else {
     s0+=15.0;
     s1+=570.0;
    }
   } else {
    if(i15<0.00043448805809020996){
     s0+=211.0;
     s1+=52.0;
    } else {
     s0+=7.0;
     s1+=128.0;
    }
   }
  } else {
   if(i34<0.0021308669820427895){
    if(i68<1.0002444982528687){
     s0+=33.0;
    } else {
     s0+=7.0;
     s1+=66.0;
    }
   } else {
    if(i9<1.0179688930511475){
     s0+=18.0;
     s1+=19.0;
    } else {
     s0+=443.0;
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i66<2.6932939363177866e-06){
  if(i5<1.0018045902252197){
   if(i32<0.0005116930697113276){
    if(i63<0.0002835846971720457){
     s0+=218.0;
     s1+=3.0;
    } else {
     s0+=143.0;
     s1+=67.0;
    }
   } else {
    if(i38<0.06301319599151611){
     s0+=38.0;
     s1+=1310.0;
    } else {
     s0+=921.0;
     s1+=1894.0;
    }
   }
  } else {
   if(i0<0.131856769323349){
    if(i64<-0.0178510844707489){
     s0+=104.0;
     s1+=39.0;
    } else {
     s0+=33.0;
     s1+=1402.0;
    }
   } else {
    if(i0<0.16881603002548218){
     s0+=28.0;
     s1+=1012.0;
    } else {
     s0+=1.0;
     s1+=8314.0;
    }
   }
  }
 } else {
  s0+=201.0;
 }
}
if(i3<0.081397145986557){
 if(i5<1.002474308013916){
  if(i47<0.007601558696478605){
   if(i26<0.00028163305250927806){
    if(i14<1.0094983577728271){
     s0+=51927.0;
     s1+=205.0;
    } else {
     s0+=29.0;
     s1+=32.0;
    }
   } else {
    if(i33<1.1034480333328247){
     s0+=3419.0;
     s1+=883.0;
    } else {
     s0+=10239.0;
     s1+=161.0;
    }
   }
  } else {
   if(i33<1.0714969635009766){
    if(i14<1.0055662393569946){
     s0+=798.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i26<0.0024478361010551453){
     s0+=1144.0;
     s1+=597.0;
    } else {
     s0+=1384.0;
     s1+=246.0;
    }
   }
  }
 } else {
  if(i41<-1.3724934433412272e-05){
   if(i54<0.028177380561828613){
    if(i29<1.594835877418518){
     s0+=23.0;
     s1+=838.0;
    } else {
     s0+=45.0;
     s1+=32.0;
    }
   } else {
    if(i25<1.0020332336425781){
     s0+=52.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i10<0.0006234049797058105){
    if(i35<1.1126924753189087){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=155.0;
    }
   } else {
    s1+=22.0;
   }
  }
 }
} else {
 if(i6<-1.2574806532938965e-05){
  if(i19<1.0033516883850098){
   if(i43<0.058919548988342285){
    if(i13<0.9976797699928284){
     s0+=9.0;
    } else {
     s0+=30.0;
     s1+=2642.0;
    }
   } else {
    if(i21<0.04485110938549042){
     s0+=513.0;
     s1+=775.0;
    } else {
     s0+=43.0;
     s1+=1221.0;
    }
   }
  } else {
   if(i41<-1.737063576001674e-05){
    if(i56<0.00011016320786438882){
     s0+=1.0;
     s1+=7217.0;
    } else {
     s0+=54.0;
     s1+=1652.0;
    }
   } else {
    if(i0<0.13145902752876282){
     s0+=37.0;
     s1+=88.0;
    } else {
     s0+=16.0;
     s1+=323.0;
    }
   }
  }
 } else {
  if(i23<1.0355045795440674){
   if(i4<-5.537271499633789e-05){
    if(i56<9.057503484655172e-05){
     s0+=87.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   } else {
    if(i33<1.07965087890625){
     s0+=13.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=158.0;
    }
   }
  } else {
   if(i5<1.001655101776123){
    if(i21<0.029101276770234108){
     s0+=655.0;
     s1+=37.0;
    } else {
     s0+=276.0;
     s1+=110.0;
    }
   } else {
    s1+=33.0;
   }
  }
 }
}
if(i7<0.07258129119873047){
 if(i13<1.0019140243530273){
  if(i3<0.07852518558502197){
   if(i47<0.0075655728578567505){
    if(i35<1.0556960105895996){
     s0+=42265.0;
     s1+=1.0;
    } else {
     s0+=22910.0;
     s1+=1131.0;
    }
   } else {
    if(i3<0.04109710454940796){
     s0+=2805.0;
     s1+=393.0;
    } else {
     s0+=498.0;
     s1+=367.0;
    }
   }
  } else {
   if(i36<0.04047441482543945){
    if(i33<1.0670123100280762){
     s0+=59.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=971.0;
    }
   } else {
    if(i54<0.00612950325012207){
     s0+=5.0;
     s1+=13.0;
    } else {
     s0+=137.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i56<0.0001342187460977584){
   if(i16<0.005048902239650488){
    if(i5<1.0041284561157227){
     s0+=121.0;
     s1+=34.0;
    } else {
     s1+=368.0;
    }
   } else {
    if(i58<5.565941137319896e-06){
     s0+=2.0;
     s1+=1054.0;
    } else {
     s0+=19.0;
     s1+=112.0;
    }
   }
  } else {
   if(i50<0.006522320210933685){
    if(i40<0.02011149935424328){
     s0+=459.0;
     s1+=9.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i2<0.00016838312149047852){
     s0+=34.0;
     s1+=10.0;
    } else {
     s0+=19.0;
     s1+=139.0;
    }
   }
  }
 }
} else {
 if(i7<0.12485828995704651){
  if(i5<1.0019524097442627){
   if(i30<1.1476502418518066){
    if(i37<0.006553748622536659){
     s0+=244.0;
     s1+=32.0;
    } else {
     s0+=194.0;
     s1+=700.0;
    }
   } else {
    if(i23<1.0271518230438232){
     s0+=10.0;
     s1+=132.0;
    } else {
     s0+=869.0;
     s1+=259.0;
    }
   }
  } else {
   if(i64<-0.01929185912013054){
    if(i53<0.0023824989330023527){
     s0+=69.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=91.0;
    }
   } else {
    if(i16<0.0002665753709152341){
     s0+=3.0;
    } else {
     s0+=29.0;
     s1+=1744.0;
    }
   }
  }
 } else {
  if(i66<9.526850135443965e-07){
   if(i32<0.0006431046640500426){
    if(i68<1.0009409189224243){
     s0+=159.0;
     s1+=3.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i33<1.2527469396591187){
     s0+=73.0;
     s1+=426.0;
    } else {
     s0+=69.0;
     s1+=8951.0;
    }
   }
  } else {
   if(i62<0.006082892417907715){
    s0+=182.0;
   } else {
    s1+=3.0;
   }
  }
 }
}
if(i25<1.007225751876831){
 if(i3<0.08316195011138916){
  if(i2<0.0007026791572570801){
   if(i47<0.007583403494209051){
    if(i40<0.000291968637611717){
     s0+=46157.0;
     s1+=31.0;
    } else {
     s0+=18712.0;
     s1+=1148.0;
    }
   } else {
    if(i10<7.516145706176758e-05){
     s0+=2493.0;
     s1+=339.0;
    } else {
     s0+=556.0;
     s1+=341.0;
    }
   }
  } else {
   if(i47<0.0030908724293112755){
    if(i70<0.0604560524225235){
     s0+=28.0;
     s1+=32.0;
    } else {
     s0+=32.0;
    }
   } else {
    if(i65<0.997670590877533){
     s0+=16.0;
     s1+=3.0;
    } else {
     s0+=48.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i45<-0.00013944506645202637){
   if(i32<0.0017424665857106447){
    s0+=399.0;
   } else {
    if(i6<-2.9065315175103024e-05){
     s1+=48.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i55<0.00045740860514342785){
    if(i64<-0.015840884298086166){
     s0+=559.0;
     s1+=409.0;
    } else {
     s0+=168.0;
     s1+=876.0;
    }
   } else {
    if(i36<0.04686668515205383){
     s0+=5.0;
     s1+=2040.0;
    } else {
     s0+=221.0;
     s1+=1108.0;
    }
   }
  }
 }
} else {
 if(i3<0.06548601388931274){
  if(i6<-4.708962660515681e-05){
   if(i35<1.2162724733352661){
    if(i12<0.9951307773590088){
     s0+=7.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=256.0;
    }
   } else {
    if(i8<1.189972996711731){
     s0+=75.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i30<1.0862454175949097){
    if(i52<0.9998180866241455){
     s0+=49.0;
     s1+=2.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i30<1.1016805171966553){
     s0+=90.0;
     s1+=16.0;
    } else {
     s0+=1196.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i12<1.0023741722106934){
   if(i6<-2.279584077768959e-05){
    if(i13<0.9982181787490845){
     s0+=9.0;
    } else {
     s0+=59.0;
     s1+=1386.0;
    }
   } else {
    if(i16<0.001824689912609756){
     s0+=215.0;
    } else {
     s0+=75.0;
     s1+=72.0;
    }
   }
  } else {
   if(i37<0.01354849711060524){
    if(i18<9.655952453613281e-05){
     s0+=17.0;
     s1+=12.0;
    } else {
     s0+=28.0;
     s1+=1376.0;
    }
   } else {
    if(i5<1.0006656646728516){
     s0+=11.0;
     s1+=31.0;
    } else {
     s0+=4.0;
     s1+=7060.0;
    }
   }
  }
 }
}
if(i7<0.07070904970169067){
 if(i3<0.07543563842773438){
  if(i8<1.0436501502990723){
   if(i21<0.011488473042845726){
    if(i24<1.0084083080291748){
     s0+=47257.0;
     s1+=203.0;
    } else {
     s0+=1.0;
     s1+=13.0;
    }
   } else {
    if(i2<0.0005675554275512695){
     s0+=13509.0;
     s1+=502.0;
    } else {
     s0+=50.0;
     s1+=62.0;
    }
   }
  } else {
   if(i18<0.00016826391220092773){
    if(i46<-0.0005917549133300781){
     s0+=2671.0;
     s1+=920.0;
    } else {
     s0+=4926.0;
     s1+=549.0;
    }
   } else {
    if(i10<0.0005132555961608887){
     s0+=70.0;
     s1+=34.0;
    } else {
     s1+=347.0;
    }
   }
  }
 } else {
  if(i22<1.0494438409805298){
   if(i12<0.9940147399902344){
    s0+=149.0;
   } else {
    if(i37<0.012400885112583637){
     s0+=77.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=39.0;
    }
   }
  } else {
   if(i6<8.322655958181713e-06){
    if(i0<0.08456677198410034){
     s0+=85.0;
     s1+=331.0;
    } else {
     s0+=16.0;
     s1+=1589.0;
    }
   } else {
    s0+=37.0;
   }
  }
 }
} else {
 if(i2<0.00048476457595825195){
  if(i0<0.10969963669776917){
   if(i29<1.2371783256530762){
    if(i32<0.0004557690699584782){
     s0+=293.0;
     s1+=18.0;
    } else {
     s0+=187.0;
     s1+=404.0;
    }
   } else {
    if(i43<0.035915911197662354){
     s0+=1.0;
     s1+=70.0;
    } else {
     s0+=761.0;
     s1+=94.0;
    }
   }
  } else {
   if(i16<0.004702878650277853){
    if(i5<0.9959239959716797){
     s0+=191.0;
     s1+=6.0;
    } else {
     s0+=493.0;
     s1+=760.0;
    }
   } else {
    if(i29<1.0762357711791992){
     s0+=6.0;
    } else {
     s0+=59.0;
     s1+=1376.0;
    }
   }
  }
 } else {
  if(i18<-9.167194366455078e-05){
   if(i36<0.044130027294158936){
    if(i57<0.003677290864288807){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=362.0;
    }
   } else {
    if(i3<0.13235917687416077){
     s0+=97.0;
     s1+=21.0;
    } else {
     s0+=18.0;
     s1+=287.0;
    }
   }
  } else {
   if(i6<-4.317488128435798e-05){
    if(i65<1.0023152828216553){
     s0+=14.0;
     s1+=8875.0;
    } else {
     s0+=16.0;
     s1+=269.0;
    }
   } else {
    if(i30<1.2369153499603271){
     s0+=1.0;
     s1+=82.0;
    } else {
     s0+=35.0;
     s1+=2.0;
    }
   }
  }
 }
}
if(i7<0.07194694876670837){
 if(i0<0.0785517692565918){
  if(i12<1.00431489944458){
   if(i51<-0.0013009607791900635){
    if(i1<0.04374098777770996){
     s0+=5175.0;
     s1+=583.0;
    } else {
     s0+=594.0;
     s1+=409.0;
    }
   } else {
    if(i47<0.008862441405653954){
     s0+=61154.0;
     s1+=698.0;
    } else {
     s0+=960.0;
     s1+=251.0;
    }
   }
  } else {
   if(i2<0.0005468130111694336){
    if(i47<0.008727213367819786){
     s0+=437.0;
     s1+=25.0;
    } else {
     s0+=19.0;
     s1+=23.0;
    }
   } else {
    if(i53<0.0009367039892822504){
     s0+=43.0;
     s1+=48.0;
    } else {
     s0+=13.0;
     s1+=531.0;
    }
   }
  }
 } else {
  if(i52<0.9995691180229187){
   if(i43<0.06482017040252686){
    if(i12<0.992060661315918){
     s0+=280.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   } else {
    if(i62<-1.1760876077460125e-05){
     s1+=1.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i18<-0.0002937614917755127){
    if(i1<0.08782428503036499){
     s0+=149.0;
     s1+=14.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i36<0.0413108766078949){
     s0+=54.0;
     s1+=1944.0;
    } else {
     s0+=113.0;
     s1+=52.0;
    }
   }
  }
 }
} else {
 if(i16<0.004721371456980705){
  if(i4<5.6624412536621094e-05){
   if(i54<0.059152185916900635){
    if(i40<0.00028928270330652595){
     s0+=141.0;
     s1+=11.0;
    } else {
     s0+=539.0;
     s1+=981.0;
    }
   } else {
    if(i3<0.14024174213409424){
     s0+=558.0;
     s1+=25.0;
    } else {
     s0+=403.0;
     s1+=194.0;
    }
   }
  } else {
   if(i33<1.0677311420440674){
    s0+=12.0;
   } else {
    if(i18<2.0384788513183594e-05){
     s0+=12.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=512.0;
    }
   }
  }
 } else {
  if(i13<0.9979836940765381){
   s0+=105.0;
  } else {
   if(i8<1.065577745437622){
    if(i15<-0.0020079612731933594){
     s0+=104.0;
     s1+=56.0;
    } else {
     s0+=28.0;
     s1+=454.0;
    }
   } else {
    if(i7<0.09443509578704834){
     s0+=77.0;
     s1+=669.0;
    } else {
     s0+=44.0;
     s1+=9653.0;
    }
   }
  }
 }
}
if(i7<0.0716162919998169){
 if(i5<1.0024800300598145){
  if(i14<1.0081498622894287){
   if(i57<0.03033977374434471){
    if(i20<0.9723568558692932){
     s0+=113.0;
     s1+=94.0;
    } else {
     s0+=58542.0;
     s1+=692.0;
    }
   } else {
    if(i0<0.07660749554634094){
     s0+=9022.0;
     s1+=941.0;
    } else {
     s0+=191.0;
     s1+=464.0;
    }
   }
  } else {
   if(i39<0.0019727088510990143){
    if(i30<1.1413683891296387){
     s0+=31.0;
     s1+=445.0;
    } else {
     s0+=49.0;
     s1+=17.0;
    }
   } else {
    if(i37<0.02292066067457199){
     s0+=627.0;
     s1+=29.0;
    } else {
     s0+=61.0;
     s1+=54.0;
    }
   }
  }
 } else {
  if(i42<0.00018080873996950686){
   if(i66<-5.208878974372055e-06){
    if(i32<0.0003347609890624881){
     s0+=1.0;
    } else {
     s1+=49.0;
    }
   } else {
    s0+=113.0;
   }
  } else {
   if(i65<1.002289056777954){
    if(i48<0.011877447366714478){
     s0+=79.0;
     s1+=1746.0;
    } else {
     s0+=34.0;
     s1+=26.0;
    }
   } else {
    if(i6<-8.67263152031228e-05){
     s0+=20.0;
     s1+=71.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i2<0.00016057491302490234){
  if(i6<-1.1507087947393302e-05){
   if(i21<0.025207430124282837){
    if(i48<0.015238672494888306){
     s0+=126.0;
     s1+=293.0;
    } else {
     s0+=218.0;
     s1+=62.0;
    }
   } else {
    if(i22<1.04497492313385){
     s0+=24.0;
     s1+=3.0;
    } else {
     s0+=140.0;
     s1+=1117.0;
    }
   }
  } else {
   if(i43<0.042562395334243774){
    if(i13<0.9985313415527344){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=77.0;
    }
   } else {
    if(i1<0.287069171667099){
     s0+=911.0;
     s1+=70.0;
    } else {
     s0+=69.0;
     s1+=47.0;
    }
   }
  }
 } else {
  if(i37<0.025198867544531822){
   if(i64<-0.023092856630682945){
    if(i41<-4.9807465984486043e-05){
     s0+=1.0;
     s1+=112.0;
    } else {
     s0+=241.0;
     s1+=98.0;
    }
   } else {
    if(i6<-1.7994429072132334e-05){
     s0+=142.0;
     s1+=2207.0;
    } else {
     s0+=44.0;
     s1+=7.0;
    }
   }
  } else {
   if(i31<0.006297257728874683){
    if(i53<0.0006323596462607384){
     s0+=35.0;
     s1+=10.0;
    } else {
     s0+=8.0;
     s1+=745.0;
    }
   } else {
    if(i16<0.001336006447672844){
     s0+=5.0;
     s1+=14.0;
    } else {
     s1+=7884.0;
    }
   }
  }
 }
}
if(i8<1.052894115447998){
 if(i7<0.0753016471862793){
  if(i51<-0.0013690590858459473){
   if(i29<1.2392117977142334){
    if(i33<1.0703742504119873){
     s0+=1036.0;
    } else {
     s0+=598.0;
     s1+=709.0;
    }
   } else {
    if(i40<0.003020642325282097){
     s0+=459.0;
     s1+=61.0;
    } else {
     s0+=2078.0;
     s1+=18.0;
    }
   }
  } else {
   if(i1<0.07733222842216492){
    if(i24<1.0081419944763184){
     s0+=59243.0;
     s1+=560.0;
    } else {
     s0+=134.0;
     s1+=122.0;
    }
   } else {
    if(i17<0.9935010075569153){
     s0+=113.0;
     s1+=17.0;
    } else {
     s0+=19.0;
     s1+=181.0;
    }
   }
  }
 } else {
  if(i3<0.09383070468902588){
   if(i61<0.030376195907592773){
    if(i4<-6.279349327087402e-05){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=83.0;
    }
   } else {
    if(i2<3.147125244140625e-05){
     s0+=193.0;
     s1+=13.0;
    } else {
     s0+=11.0;
     s1+=17.0;
    }
   }
  } else {
   if(i22<1.0494358539581299){
    if(i19<1.0003608465194702){
     s0+=16.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i31<0.016909267753362656){
     s0+=11.0;
     s1+=348.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i0<0.08728879690170288){
  if(i2<0.000585019588470459){
   if(i20<0.9932020902633667){
    if(i39<0.0017371764406561852){
     s0+=147.0;
     s1+=238.0;
    } else {
     s0+=1067.0;
     s1+=213.0;
    }
   } else {
    if(i22<1.0833278894424438){
     s0+=1694.0;
     s1+=367.0;
    } else {
     s0+=2537.0;
     s1+=108.0;
    }
   }
  } else {
   if(i35<1.2116024494171143){
    if(i60<-0.004651901312172413){
     s0+=9.0;
     s1+=5.0;
    } else {
     s0+=16.0;
     s1+=651.0;
    }
   } else {
    if(i48<-0.004946649074554443){
     s0+=36.0;
     s1+=188.0;
    } else {
     s0+=141.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i4<9.417533874511719e-06){
   if(i36<0.049996912479400635){
    if(i3<0.08691737055778503){
     s0+=49.0;
     s1+=18.0;
    } else {
     s0+=56.0;
     s1+=872.0;
    }
   } else {
    if(i3<0.284676730632782){
     s0+=852.0;
     s1+=254.0;
    } else {
     s0+=86.0;
     s1+=306.0;
    }
   }
  } else {
   if(i36<0.04521116614341736){
    if(i33<1.0681509971618652){
     s0+=2.0;
    } else {
     s0+=18.0;
     s1+=6815.0;
    }
   } else {
    if(i18<1.2576580047607422e-05){
     s0+=333.0;
     s1+=711.0;
    } else {
     s0+=64.0;
     s1+=4324.0;
    }
   }
  }
 }
}
if(i7<0.07198938727378845){
 if(i6<-6.216626206878573e-05){
  if(i17<0.9971779584884644){
   if(i12<1.0011870861053467){
    if(i48<-0.02437424659729004){
     s0+=258.0;
     s1+=109.0;
    } else {
     s0+=986.0;
     s1+=48.0;
    }
   } else {
    if(i11<5.4836273193359375e-06){
     s0+=21.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=99.0;
    }
   }
  } else {
   if(i17<1.0015339851379395){
    if(i39<0.00035968367592431605){
     s0+=33.0;
    } else {
     s0+=20.0;
     s1+=106.0;
    }
   } else {
    if(i65<1.0030908584594727){
     s0+=3.0;
     s1+=1452.0;
    } else {
     s0+=21.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i8<1.0452277660369873){
   if(i55<0.0002502339775674045){
    if(i57<0.050822287797927856){
     s0+=52302.0;
     s1+=209.0;
    } else {
     s0+=78.0;
     s1+=51.0;
    }
   } else {
    if(i17<0.9902135133743286){
     s0+=7071.0;
     s1+=113.0;
    } else {
     s0+=1544.0;
     s1+=573.0;
    }
   }
  } else {
   if(i33<1.1037919521331787){
    if(i34<0.0002946359745692462){
     s0+=1029.0;
    } else {
     s0+=682.0;
     s1+=1390.0;
    }
   } else {
    if(i0<0.0880017876625061){
     s0+=4967.0;
     s1+=261.0;
    } else {
     s0+=35.0;
     s1+=304.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018045902252197){
  if(i6<-1.3797138308291323e-05){
   if(i3<0.10586181282997131){
    if(i38<0.062317878007888794){
     s0+=42.0;
     s1+=277.0;
    } else {
     s0+=404.0;
     s1+=171.0;
    }
   } else {
    if(i32<0.0005806618137285113){
     s0+=50.0;
     s1+=53.0;
    } else {
     s0+=157.0;
     s1+=1883.0;
    }
   }
  } else {
   if(i46<-0.0018679797649383545){
    if(i4<-5.745887756347656e-05){
     s0+=27.0;
     s1+=1.0;
    } else {
     s0+=14.0;
     s1+=79.0;
    }
   } else {
    if(i3<0.22251930832862854){
     s0+=911.0;
     s1+=107.0;
    } else {
     s0+=146.0;
     s1+=76.0;
    }
   }
  }
 } else {
  if(i25<1.0041699409484863){
   if(i16<0.0059041851200163364){
    if(i20<1.0041019916534424){
     s0+=4.0;
     s1+=105.0;
    } else {
     s0+=110.0;
     s1+=40.0;
    }
   } else {
    if(i37<0.010423447005450726){
     s0+=20.0;
     s1+=14.0;
    } else {
     s0+=20.0;
     s1+=1585.0;
    }
   }
  } else {
   if(i1<0.0812944769859314){
    if(i51<0.004524946212768555){
     s1+=40.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i37<0.01299118623137474){
     s0+=14.0;
     s1+=735.0;
    } else {
     s1+=7352.0;
    }
   }
  }
 }
}
if(i15<0.0008113384246826172){
 if(i3<0.08304375410079956){
  if(i5<1.0024616718292236){
   if(i47<0.007525504566729069){
    if(i8<1.04337739944458){
     s0+=59639.0;
     s1+=528.0;
    } else {
     s0+=5735.0;
     s1+=703.0;
    }
   } else {
    if(i6<-3.591907079680823e-05){
     s0+=388.0;
     s1+=343.0;
    } else {
     s0+=3065.0;
     s1+=486.0;
    }
   }
  } else {
   if(i54<0.011832773685455322){
    if(i16<0.003502452280372381){
     s0+=33.0;
     s1+=7.0;
    } else {
     s0+=36.0;
     s1+=371.0;
    }
   } else {
    if(i50<0.006313905119895935){
     s0+=59.0;
     s1+=5.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i36<0.04772615432739258){
   if(i45<-0.00026726722717285156){
    s0+=78.0;
   } else {
    if(i51<0.008330583572387695){
     s0+=47.0;
     s1+=2816.0;
    } else {
     s0+=28.0;
     s1+=153.0;
    }
   }
  } else {
   if(i16<0.0061943503096699715){
    if(i30<1.2533326148986816){
     s0+=820.0;
     s1+=490.0;
    } else {
     s0+=535.0;
     s1+=47.0;
    }
   } else {
    if(i65<1.001792311668396){
     s0+=36.0;
     s1+=991.0;
    } else {
     s0+=68.0;
     s1+=203.0;
    }
   }
  }
 }
} else {
 if(i3<0.05848655104637146){
  if(i5<1.004209041595459){
   if(i63<0.0006263311952352524){
    if(i31<0.0010467290412634611){
     s0+=67.0;
     s1+=46.0;
    } else {
     s0+=409.0;
    }
   } else {
    s1+=33.0;
   }
  } else {
   s1+=146.0;
  }
 } else {
  if(i0<0.08297982811927795){
   if(i30<1.250713586807251){
    if(i11<-1.3887882232666016e-05){
     s0+=5.0;
    } else {
     s0+=8.0;
     s1+=377.0;
    }
   } else {
    if(i33<1.3712366819381714){
     s0+=58.0;
     s1+=1.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i18<0.00021332502365112305){
    if(i64<-0.03833296149969101){
     s0+=28.0;
     s1+=179.0;
    } else {
     s0+=12.0;
     s1+=863.0;
    }
   } else {
    s1+=8286.0;
   }
  }
 }
}
if(i0<0.08334505558013916){
 if(i47<0.008425895124673843){
  if(i4<3.886222839355469e-05){
   if(i70<0.018549174070358276){
    if(i24<1.007964849472046){
     s0+=50672.0;
     s1+=267.0;
    } else {
     s0+=49.0;
     s1+=95.0;
    }
   } else {
    if(i30<1.103413462638855){
     s0+=3785.0;
     s1+=869.0;
    } else {
     s0+=11222.0;
     s1+=160.0;
    }
   }
  } else {
   if(i12<0.9998459219932556){
    if(i50<0.004160153679549694){
     s0+=280.0;
     s1+=7.0;
    } else {
     s0+=9.0;
     s1+=10.0;
    }
   } else {
    if(i41<-1.462851923861308e-05){
     s0+=34.0;
     s1+=367.0;
    } else {
     s0+=133.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i10<0.0005260109901428223){
   if(i42<0.002416570670902729){
    if(i52<0.9998556971549988){
     s0+=403.0;
     s1+=467.0;
    } else {
     s0+=857.0;
     s1+=122.0;
    }
   } else {
    if(i7<0.07489186525344849){
     s0+=1322.0;
     s1+=85.0;
    } else {
     s0+=9.0;
     s1+=18.0;
    }
   }
  } else {
   if(i32<0.007801330182701349){
    if(i4<1.901388168334961e-05){
     s0+=15.0;
     s1+=8.0;
    } else {
     s0+=5.0;
     s1+=407.0;
    }
   } else {
    if(i40<0.00482522789388895){
     s0+=68.0;
     s1+=9.0;
    } else {
     s0+=50.0;
     s1+=176.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5394753063446842e-05){
  if(i11<-1.341104507446289e-05){
   if(i31<0.008454719558358192){
    if(i52<0.9993816614151001){
     s1+=4.0;
    } else {
     s0+=70.0;
    }
   } else {
    if(i17<0.9785652160644531){
     s0+=14.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i36<0.045217365026474){
    if(i10<-0.0005619525909423828){
     s0+=7.0;
    } else {
     s0+=52.0;
     s1+=8191.0;
    }
   } else {
    if(i21<0.028022076934576035){
     s0+=485.0;
     s1+=968.0;
    } else {
     s0+=132.0;
     s1+=4520.0;
    }
   }
  }
 } else {
  if(i11<-1.576542854309082e-05){
   if(i30<1.5754120349884033){
    if(i44<0.9997305870056152){
     s0+=570.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   } else {
    if(i37<0.0363575704395771){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i36<0.04326605796813965){
    if(i1<0.054298460483551025){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=31.0;
     s1+=285.0;
    }
   } else {
    if(i39<0.007348974235355854){
     s0+=653.0;
     s1+=126.0;
    } else {
     s0+=39.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i16<0.004822456743568182){
 if(i15<0.0012142062187194824){
  if(i0<0.08523821830749512){
   if(i42<0.0003002140438184142){
    if(i14<1.0081498622894287){
     s0+=54838.0;
     s1+=449.0;
    } else {
     s0+=272.0;
     s1+=126.0;
    }
   } else {
    if(i35<1.1036889553070068){
     s0+=3689.0;
     s1+=920.0;
    } else {
     s0+=5311.0;
     s1+=208.0;
    }
   }
  } else {
   if(i43<0.06041392683982849){
    if(i13<0.9979864358901978){
     s0+=284.0;
    } else {
     s0+=90.0;
     s1+=957.0;
    }
   } else {
    if(i1<0.21589422225952148){
     s0+=1010.0;
     s1+=218.0;
    } else {
     s0+=166.0;
     s1+=202.0;
    }
   }
  }
 } else {
  if(i29<1.2392117977142334){
   s1+=931.0;
  } else {
   if(i5<1.0042204856872559){
    s0+=117.0;
   } else {
    s1+=257.0;
   }
  }
 }
} else {
 if(i3<0.07317373156547546){
  if(i17<1.0000544786453247){
   if(i8<1.0640453100204468){
    if(i58<1.749387229210697e-05){
     s0+=332.0;
     s1+=141.0;
    } else {
     s0+=4347.0;
     s1+=57.0;
    }
   } else {
    if(i53<0.0050378660671412945){
     s0+=418.0;
     s1+=195.0;
    } else {
     s0+=8.0;
     s1+=112.0;
    }
   }
  } else {
   if(i13<0.9987674355506897){
    s0+=60.0;
   } else {
    s1+=455.0;
   }
  }
 } else {
  if(i10<-0.0005213022232055664){
   s0+=97.0;
  } else {
   if(i67<-9.549682727083564e-05){
    if(i3<0.08828330039978027){
     s0+=37.0;
     s1+=352.0;
    } else {
     s0+=39.0;
     s1+=10471.0;
    }
   } else {
    if(i58<1.165127287094947e-05){
     s0+=30.0;
     s1+=654.0;
    } else {
     s0+=191.0;
     s1+=211.0;
    }
   }
  }
 }
}
if(i6<-7.880300836404786e-05){
 if(i3<0.06308376789093018){
  if(i47<0.013956742361187935){
   if(i17<0.9982749223709106){
    if(i54<-0.05501040816307068){
     s1+=3.0;
    } else {
     s0+=651.0;
     s1+=19.0;
    }
   } else {
    if(i42<0.0011322030331939459){
     s1+=36.0;
    } else {
     s0+=7.0;
     s1+=6.0;
    }
   }
  } else {
   if(i1<0.009885728359222412){
    if(i12<1.0019670724868774){
     s0+=52.0;
     s1+=3.0;
    } else {
     s0+=4.0;
     s1+=26.0;
    }
   } else {
    if(i65<0.997606635093689){
     s0+=1.0;
    } else {
     s0+=4.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i41<-0.00012524749035947025){
   s0+=32.0;
  } else {
   if(i65<1.0031101703643799){
    if(i35<1.0554211139678955){
     s0+=3.0;
    } else {
     s0+=57.0;
     s1+=10369.0;
    }
   } else {
    if(i16<0.011544786393642426){
     s0+=56.0;
     s1+=66.0;
    } else {
     s0+=2.0;
     s1+=242.0;
    }
   }
  }
 }
} else {
 if(i14<1.0080137252807617){
  if(i35<1.067622423171997){
   if(i24<1.0061798095703125){
    if(i44<1.0003626346588135){
     s0+=44272.0;
     s1+=57.0;
    } else {
     s0+=2311.0;
     s1+=100.0;
    }
   } else {
    if(i39<0.00023734921705909073){
     s0+=13.0;
    } else {
     s1+=29.0;
    }
   }
  } else {
   if(i1<0.07543414831161499){
    if(i22<1.0447232723236084){
     s0+=10689.0;
     s1+=152.0;
    } else {
     s0+=10580.0;
     s1+=1593.0;
    }
   } else {
    if(i71<1.0168979167938232){
     s0+=392.0;
     s1+=1312.0;
    } else {
     s0+=738.0;
     s1+=502.0;
    }
   }
  }
 } else {
  if(i35<1.139992117881775){
   if(i40<0.0053680576384067535){
    if(i63<3.747127630049363e-05){
     s0+=25.0;
    } else {
     s0+=133.0;
     s1+=1543.0;
    }
   } else {
    s0+=77.0;
   }
  } else {
   if(i70<0.09369686990976334){
    if(i1<0.11038589477539062){
     s0+=847.0;
     s1+=49.0;
    } else {
     s0+=32.0;
     s1+=201.0;
    }
   } else {
    if(i53<0.0010647187009453773){
     s0+=217.0;
     s1+=84.0;
    } else {
     s0+=74.0;
     s1+=388.0;
    }
   }
  }
 }
}
if(i0<0.08262783288955688){
 if(i4<3.844499588012695e-05){
  if(i59<-0.0021014511585235596){
   if(i30<1.1823735237121582){
    if(i29<1.0840110778808594){
     s0+=1265.0;
    } else {
     s0+=792.0;
     s1+=727.0;
    }
   } else {
    if(i49<-0.0027938485145568848){
     s0+=602.0;
     s1+=136.0;
    } else {
     s0+=3268.0;
     s1+=38.0;
    }
   }
  } else {
   if(i55<-8.996555698104203e-05){
    if(i34<0.0012712928000837564){
     s0+=47.0;
     s1+=116.0;
    } else {
     s0+=164.0;
     s1+=17.0;
    }
   } else {
    if(i8<1.042891263961792){
     s0+=56085.0;
     s1+=242.0;
    } else {
     s0+=6326.0;
     s1+=705.0;
    }
   }
  }
 } else {
  if(i31<0.000494450971018523){
   s0+=284.0;
  } else {
   if(i41<-1.4114700206846464e-05){
    if(i32<0.007196011487394571){
     s0+=19.0;
     s1+=784.0;
    } else {
     s0+=121.0;
     s1+=153.0;
    }
   } else {
    if(i16<0.0033556013368070126){
     s0+=119.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i65<0.9970253705978394){
  s0+=338.0;
 } else {
  if(i12<1.0010379552841187){
   if(i21<0.026281487196683884){
    if(i36<0.04159802198410034){
     s0+=81.0;
     s1+=572.0;
    } else {
     s0+=1032.0;
     s1+=305.0;
    }
   } else {
    if(i10<-0.0004054605960845947){
     s0+=188.0;
     s1+=8.0;
    } else {
     s0+=264.0;
     s1+=2790.0;
    }
   }
  } else {
   if(i16<0.0017184583703055978){
    if(i46<0.004483163356781006){
     s0+=31.0;
     s1+=166.0;
    } else {
     s0+=76.0;
     s1+=9.0;
    }
   } else {
    if(i4<2.086162567138672e-06){
     s0+=22.0;
     s1+=89.0;
    } else {
     s0+=76.0;
     s1+=10168.0;
    }
   }
  }
 }
}
if(i28<1.0080811977386475){
 if(i26<0.00034261142718605697){
  if(i13<1.0019980669021606){
   if(i9<1.0608270168304443){
    if(i22<1.0451585054397583){
     s0+=48783.0;
     s1+=106.0;
    } else {
     s0+=5574.0;
     s1+=250.0;
    }
   } else {
    if(i10<0.0001386404037475586){
     s0+=5.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i63<0.0008131628856062889){
    if(i8<1.0259060859680176){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=56.0;
    }
   } else {
    s0+=24.0;
   }
  }
 } else {
  if(i8<1.0433766841888428){
   if(i40<0.0016884682700037956){
    if(i3<0.06717941164970398){
     s0+=2583.0;
     s1+=352.0;
    } else {
     s0+=157.0;
     s1+=251.0;
    }
   } else {
    if(i5<1.0010753870010376){
     s0+=6106.0;
     s1+=74.0;
    } else {
     s0+=10.0;
     s1+=52.0;
    }
   }
  } else {
   if(i0<0.09244644641876221){
    if(i58<-1.5780906323925592e-06){
     s0+=18.0;
     s1+=315.0;
    } else {
     s0+=4388.0;
     s1+=1426.0;
    }
   } else {
    if(i49<0.004833608865737915){
     s0+=123.0;
     s1+=2266.0;
    } else {
     s0+=466.0;
     s1+=718.0;
    }
   }
  }
 }
} else {
 if(i18<0.00011020898818969727){
  if(i4<3.68952751159668e-05){
   if(i16<0.003405451774597168){
    if(i8<1.0612647533416748){
     s0+=268.0;
     s1+=199.0;
    } else {
     s0+=1712.0;
     s1+=161.0;
    }
   } else {
    if(i11<-1.1771917343139648e-05){
     s0+=203.0;
     s1+=5.0;
    } else {
     s0+=149.0;
     s1+=1179.0;
    }
   }
  } else {
   if(i67<-0.0005981781287118793){
    if(i27<1.0047504901885986){
     s0+=4.0;
     s1+=29.0;
    } else {
     s1+=472.0;
    }
   } else {
    if(i37<0.020563583821058273){
     s0+=98.0;
     s1+=76.0;
    } else {
     s0+=5.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i15<0.0014451146125793457){
   if(i11<2.008676528930664e-05){
    if(i1<0.06469440460205078){
     s0+=184.0;
     s1+=61.0;
    } else {
     s0+=47.0;
     s1+=561.0;
    }
   } else {
    if(i56<-2.2608273866353557e-05){
     s0+=5.0;
     s1+=1.0;
    } else {
     s1+=549.0;
    }
   }
  } else {
   if(i40<0.0003358795656822622){
    if(i12<1.0063594579696655){
     s0+=3.0;
    } else {
     s1+=40.0;
    }
   } else {
    if(i0<0.031975895166397095){
     s0+=3.0;
    } else {
     s1+=7843.0;
    }
   }
  }
 }
}
if(i3<0.08140268921852112){
 if(i13<1.0019078254699707){
  if(i9<1.0401519536972046){
   if(i48<-0.005657941102981567){
    if(i34<0.0009694251930341125){
     s0+=875.0;
     s1+=388.0;
    } else {
     s0+=2017.0;
     s1+=99.0;
    }
   } else {
    if(i70<0.0248413048684597){
     s0+=50995.0;
     s1+=179.0;
    } else {
     s0+=8870.0;
     s1+=377.0;
    }
   }
  } else {
   if(i19<1.000556468963623){
    if(i21<0.026713194325566292){
     s0+=4565.0;
     s1+=326.0;
    } else {
     s0+=511.0;
     s1+=266.0;
    }
   } else {
    if(i39<0.0016393277328461409){
     s0+=194.0;
     s1+=343.0;
    } else {
     s0+=618.0;
     s1+=85.0;
    }
   }
  }
 } else {
  if(i46<0.0021665990352630615){
   if(i2<0.0001900792121887207){
    if(i16<0.018789317458868027){
     s0+=200.0;
     s1+=13.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i64<-0.014540962874889374){
     s0+=37.0;
     s1+=11.0;
    } else {
     s0+=110.0;
     s1+=821.0;
    }
   }
  } else {
   if(i35<1.109114646911621){
    s1+=4.0;
   } else {
    if(i9<1.1235028505325317){
     s0+=365.0;
     s1+=3.0;
    } else {
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i4<1.0192394256591797e-05){
  if(i32<0.0004476824833545834){
   if(i41<-4.347131834947504e-06){
    if(i11<-1.1235475540161133e-05){
     s0+=1.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i1<0.0808190405368805){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=242.0;
    }
   }
  } else {
   if(i41<3.7972154132148717e-06){
    if(i43<0.05811798572540283){
     s0+=55.0;
     s1+=1144.0;
    } else {
     s0+=694.0;
     s1+=851.0;
    }
   } else {
    if(i9<1.0325926542282104){
     s1+=13.0;
    } else {
     s0+=230.0;
    }
   }
  }
 } else {
  if(i6<-4.65653465653304e-05){
   if(i11<0.00016105175018310547){
    if(i24<1.0068751573562622){
     s0+=107.0;
     s1+=2016.0;
    } else {
     s0+=23.0;
     s1+=9596.0;
    }
   } else {
    s0+=13.0;
   }
  } else {
   if(i20<1.0162752866744995){
    if(i46<0.0066702961921691895){
     s0+=29.0;
     s1+=419.0;
    } else {
     s0+=17.0;
     s1+=18.0;
    }
   } else {
    if(i34<0.0018612237181514502){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=248.0;
     s1+=99.0;
    }
   }
  }
 }
}
if(i3<0.08203768730163574){
 if(i5<1.0025444030761719){
  if(i54<-0.03144216537475586){
   if(i45<-6.175041198730469e-05){
    if(i7<0.03959348797798157){
     s0+=843.0;
     s1+=17.0;
    } else {
     s0+=30.0;
     s1+=16.0;
    }
   } else {
    if(i1<0.02725929021835327){
     s0+=929.0;
     s1+=203.0;
    } else {
     s0+=218.0;
     s1+=321.0;
    }
   }
  } else {
   if(i62<0.000718324794434011){
    if(i3<0.06663846969604492){
     s0+=58203.0;
     s1+=385.0;
    } else {
     s0+=2168.0;
     s1+=370.0;
    }
   } else {
    if(i30<1.185624122619629){
     s0+=2204.0;
     s1+=687.0;
    } else {
     s0+=4607.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i66<-4.652290954254568e-06){
   if(i54<0.03161099553108215){
    if(i59<0.006796419620513916){
     s0+=53.0;
     s1+=899.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i14<0.9752190113067627){
     s1+=1.0;
    } else {
     s0+=31.0;
    }
   }
  } else {
   if(i32<0.0014539954718202353){
    s1+=22.0;
   } else {
    s0+=121.0;
   }
  }
 }
} else {
 if(i2<0.00010311603546142578){
  if(i32<0.0004515123728197068){
   if(i49<0.0029715895652770996){
    if(i41<-2.948409701275523e-06){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=84.0;
    }
   } else {
    s0+=213.0;
   }
  } else {
   if(i4<-6.16908073425293e-05){
    if(i34<0.007040509954094887){
     s0+=224.0;
    } else {
     s0+=32.0;
     s1+=84.0;
    }
   } else {
    if(i53<0.0003008150961250067){
     s0+=216.0;
     s1+=157.0;
    } else {
     s0+=417.0;
     s1+=1484.0;
    }
   }
  }
 } else {
  if(i3<0.11780253052711487){
   if(i46<0.004359066486358643){
    if(i29<1.075230598449707){
     s0+=13.0;
    } else {
     s0+=68.0;
     s1+=1457.0;
    }
   } else {
    if(i29<1.1386182308197021){
     s1+=14.0;
    } else {
     s0+=249.0;
     s1+=18.0;
    }
   }
  } else {
   if(i25<1.006523847579956){
    if(i55<0.00034521002089604735){
     s0+=116.0;
     s1+=298.0;
    } else {
     s0+=28.0;
     s1+=2283.0;
    }
   } else {
    if(i4<2.1159648895263672e-05){
     s0+=10.0;
     s1+=223.0;
    } else {
     s0+=3.0;
     s1+=8159.0;
    }
   }
  }
 }
}
if(i1<0.0808488130569458){
 if(i26<0.0002822758979164064){
  if(i17<1.0043548345565796){
   if(i35<1.0598037242889404){
    s0+=41196.0;
   } else {
    if(i19<1.0029499530792236){
     s0+=11143.0;
     s1+=167.0;
    } else {
     s0+=18.0;
     s1+=36.0;
    }
   }
  } else {
   if(i3<0.06058984994888306){
    if(i31<0.0007722139125689864){
     s0+=19.0;
     s1+=36.0;
    } else {
     s0+=433.0;
     s1+=7.0;
    }
   } else {
    if(i6<-4.039000123157166e-05){
     s0+=3.0;
     s1+=116.0;
    } else {
     s0+=27.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i11<1.8537044525146484e-05){
   if(i30<1.103413462638855){
    if(i37<0.011905612424015999){
     s0+=3798.0;
     s1+=704.0;
    } else {
     s0+=485.0;
     s1+=744.0;
    }
   } else {
    if(i46<-0.0051600635051727295){
     s0+=1255.0;
     s1+=195.0;
    } else {
     s0+=9973.0;
     s1+=192.0;
    }
   }
  } else {
   if(i46<0.001410067081451416){
    if(i29<1.4901387691497803){
     s0+=158.0;
     s1+=919.0;
    } else {
     s0+=305.0;
     s1+=199.0;
    }
   } else {
    if(i35<1.1065986156463623){
     s0+=11.0;
     s1+=80.0;
    } else {
     s0+=634.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i15<0.00027638673782348633){
  if(i44<0.9988040328025818){
   if(i34<0.027581192553043365){
    if(i10<-0.0004272162914276123){
     s0+=345.0;
    } else {
     s0+=41.0;
     s1+=4.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i6<-1.257023359357845e-05){
    if(i54<0.046624839305877686){
     s0+=64.0;
     s1+=1953.0;
    } else {
     s0+=381.0;
     s1+=1375.0;
    }
   } else {
    if(i71<1.0037205219268799){
     s0+=57.0;
     s1+=170.0;
    } else {
     s0+=566.0;
     s1+=128.0;
    }
   }
  }
 } else {
  if(i5<0.9986268281936646){
   s0+=20.0;
  } else {
   if(i17<1.0123374462127686){
    if(i4<9.387731552124023e-06){
     s0+=74.0;
     s1+=186.0;
    } else {
     s0+=50.0;
     s1+=2232.0;
    }
   } else {
    s1+=7737.0;
   }
  }
 }
}
if(i6<-7.076530164340511e-05){
 if(i2<9.864568710327148e-05){
  if(i8<1.0941665172576904){
   if(i25<1.0015969276428223){
    if(i8<1.0447509288787842){
     s0+=732.0;
     s1+=7.0;
    } else {
     s0+=130.0;
     s1+=44.0;
    }
   } else {
    s1+=20.0;
   }
  } else {
   if(i0<0.013558715581893921){
    s0+=30.0;
   } else {
    s1+=311.0;
   }
  }
 } else {
  if(i3<0.06272560358047485){
   if(i29<1.5682398080825806){
    if(i15<-0.0013532042503356934){
     s0+=30.0;
     s1+=5.0;
    } else {
     s0+=18.0;
     s1+=272.0;
    }
   } else {
    if(i71<0.8995339870452881){
     s0+=5.0;
     s1+=55.0;
    } else {
     s0+=112.0;
    }
   }
  } else {
   if(i5<1.0044927597045898){
    if(i58<3.301285323686898e-05){
     s0+=72.0;
     s1+=1993.0;
    } else {
     s0+=23.0;
     s1+=71.0;
    }
   } else {
    if(i63<0.00020678623695857823){
     s0+=8.0;
     s1+=263.0;
    } else {
     s0+=2.0;
     s1+=8540.0;
    }
   }
  }
 }
} else {
 if(i26<0.0003069145022891462){
  if(i1<0.07565826177597046){
   if(i5<1.0024893283843994){
    if(i6<-4.041999636683613e-05){
     s0+=340.0;
     s1+=87.0;
    } else {
     s0+=53023.0;
     s1+=252.0;
    }
   } else {
    if(i32<0.0014891207683831453){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=99.0;
     s1+=6.0;
    }
   }
  } else {
   if(i45<-2.5570392608642578e-05){
    if(i6<-4.92681356263347e-05){
     s1+=3.0;
    } else {
     s0+=126.0;
     s1+=2.0;
    }
   } else {
    if(i6<-2.4592391127953306e-05){
     s0+=7.0;
     s1+=116.0;
    } else {
     s0+=62.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i14<1.0081498622894287){
   if(i5<0.9967604875564575){
    if(i0<0.08581376075744629){
     s0+=7657.0;
     s1+=110.0;
    } else {
     s0+=530.0;
     s1+=129.0;
    }
   } else {
    if(i56<2.829428922268562e-05){
     s0+=3829.0;
     s1+=601.0;
    } else {
     s0+=3035.0;
     s1+=2474.0;
    }
   }
  } else {
   if(i35<1.1172748804092407){
    if(i3<0.014700263738632202){
     s0+=33.0;
    } else {
     s0+=68.0;
     s1+=1004.0;
    }
   } else {
    if(i21<0.034602515399456024){
     s0+=972.0;
     s1+=297.0;
    } else {
     s0+=101.0;
     s1+=441.0;
    }
   }
  }
 }
}
if(i6<-7.514657045248896e-05){
 if(i2<0.0001004636287689209){
  if(i7<0.07709568738937378){
   if(i9<1.095224380493164){
    if(i17<0.9980937242507935){
     s0+=761.0;
     s1+=35.0;
    } else {
     s1+=6.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i37<0.03221854567527771){
    if(i60<-0.005254455842077732){
     s0+=24.0;
     s1+=6.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=252.0;
   }
  }
 } else {
  if(i15<-0.002505660057067871){
   if(i39<0.013353581540286541){
    if(i67<-0.00044613206409849226){
     s1+=31.0;
    } else {
     s0+=108.0;
     s1+=19.0;
    }
   } else {
    if(i20<0.8153712153434753){
     s0+=2.0;
    } else {
     s1+=76.0;
    }
   }
  } else {
   if(i12<1.006155014038086){
    if(i3<0.11007395386695862){
     s0+=122.0;
     s1+=321.0;
    } else {
     s0+=21.0;
     s1+=2112.0;
    }
   } else {
    if(i62<0.012694788165390491){
     s1+=8396.0;
    } else {
     s0+=2.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i7<0.0707012414932251){
  if(i18<0.00016158819198608398){
   if(i1<0.07646152377128601){
    if(i46<-0.0018260180950164795){
     s0+=3002.0;
     s1+=711.0;
    } else {
     s0+=64667.0;
     s1+=1382.0;
    }
   } else {
    if(i2<-0.0008107125759124756){
     s0+=89.0;
     s1+=2.0;
    } else {
     s0+=27.0;
     s1+=609.0;
    }
   }
  } else {
   if(i35<1.145219087600708){
    if(i33<1.2392117977142334){
     s0+=4.0;
     s1+=438.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i19<1.006226658821106){
     s0+=129.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i44<0.9992820024490356){
   if(i19<1.0004775524139404){
    if(i36<0.040006816387176514){
     s0+=22.0;
     s1+=9.0;
    } else {
     s0+=495.0;
     s1+=8.0;
    }
   } else {
    if(i65<0.9992778301239014){
     s1+=9.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i61<0.03584927320480347){
    if(i0<0.10565942525863647){
     s0+=461.0;
     s1+=462.0;
    } else {
     s0+=132.0;
     s1+=1617.0;
    }
   } else {
    if(i6<-9.185591807181481e-06){
     s0+=471.0;
     s1+=631.0;
    } else {
     s0+=465.0;
     s1+=61.0;
    }
   }
  }
 }
}
if(i18<0.00011473894119262695){
 if(i14<1.0081526041030884){
  if(i0<0.08341556787490845){
   if(i50<0.001811589696444571){
    if(i8<1.0410068035125732){
     s0+=56077.0;
     s1+=327.0;
    } else {
     s0+=6313.0;
     s1+=683.0;
    }
   } else {
    if(i19<1.000455379486084){
     s0+=4157.0;
     s1+=592.0;
    } else {
     s0+=909.0;
     s1+=574.0;
    }
   }
  } else {
   if(i6<-9.399720511282794e-06){
    if(i49<0.0028644204139709473){
     s0+=126.0;
     s1+=1599.0;
    } else {
     s0+=491.0;
     s1+=1199.0;
    }
   } else {
    if(i68<0.9988645315170288){
     s0+=557.0;
     s1+=6.0;
    } else {
     s0+=445.0;
     s1+=183.0;
    }
   }
  }
 } else {
  if(i37<0.02490152418613434){
   if(i22<1.0838961601257324){
    if(i6<-2.3048665752867237e-05){
     s0+=12.0;
     s1+=336.0;
    } else {
     s0+=34.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.11518687009811401){
     s0+=777.0;
     s1+=84.0;
    } else {
     s0+=110.0;
     s1+=312.0;
    }
   }
  } else {
   if(i3<0.07328009605407715){
    if(i63<0.0006453400128521025){
     s0+=33.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   } else {
    if(i45<-0.00012752413749694824){
     s0+=56.0;
     s1+=7.0;
    } else {
     s0+=68.0;
     s1+=1338.0;
    }
   }
  }
 }
} else {
 if(i22<1.0540467500686646){
  if(i24<1.008690357208252){
   if(i13<1.0022451877593994){
    s0+=426.0;
   } else {
    s1+=3.0;
   }
  } else {
   s1+=53.0;
  }
 } else {
  if(i9<1.0344531536102295){
   if(i66<-4.955013992002932e-06){
    s1+=129.0;
   } else {
    if(i37<0.013860570266842842){
     s0+=194.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=11.0;
    }
   }
  } else {
   if(i3<0.06510257720947266){
    if(i39<0.0016580354422330856){
     s1+=195.0;
    } else {
     s0+=156.0;
     s1+=39.0;
    }
   } else {
    if(i5<0.9991598129272461){
     s0+=4.0;
    } else {
     s0+=53.0;
     s1+=9563.0;
    }
   }
  }
 }
}
if(i6<-7.877762982388958e-05){
 if(i8<1.042243480682373){
  if(i12<1.0040264129638672){
   if(i0<0.08473670482635498){
    if(i2<0.0006062984466552734){
     s0+=573.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i67<-0.000988496234640479){
     s0+=9.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   s1+=52.0;
  }
 } else {
  if(i65<1.0030980110168457){
   if(i13<0.9981703758239746){
    s0+=21.0;
   } else {
    if(i3<0.007175415754318237){
     s0+=51.0;
     s1+=30.0;
    } else {
     s0+=117.0;
     s1+=10639.0;
    }
   }
  } else {
   if(i9<1.0910565853118896){
    if(i48<0.0036911368370056152){
     s0+=26.0;
     s1+=56.0;
    } else {
     s0+=91.0;
     s1+=4.0;
    }
   } else {
    if(i53<0.0028716428205370903){
     s0+=12.0;
    } else {
     s1+=264.0;
    }
   }
  }
 }
} else {
 if(i17<1.0044167041778564){
  if(i8<1.0446083545684814){
   if(i1<0.08023625612258911){
    if(i5<1.0025479793548584){
     s0+=60752.0;
     s1+=807.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i4<-5.5670738220214844e-05){
     s0+=117.0;
     s1+=1.0;
    } else {
     s0+=73.0;
     s1+=218.0;
    }
   }
  } else {
   if(i4<1.1265277862548828e-05){
    if(i21<0.021962344646453857){
     s0+=5747.0;
     s1+=590.0;
    } else {
     s0+=1396.0;
     s1+=1541.0;
    }
   } else {
    if(i32<0.0002820808731485158){
     s0+=152.0;
    } else {
     s0+=637.0;
     s1+=1189.0;
    }
   }
  }
 } else {
  if(i29<1.1386182308197021){
   if(i18<8.529424667358398e-05){
    if(i63<7.598553202114999e-05){
     s0+=48.0;
    } else {
     s0+=4.0;
     s1+=167.0;
    }
   } else {
    if(i35<1.0558756589889526){
     s0+=3.0;
    } else {
     s1+=978.0;
    }
   }
  } else {
   if(i42<0.000325704924762249){
    if(i16<0.004694386385381222){
     s0+=703.0;
     s1+=7.0;
    } else {
     s0+=3.0;
     s1+=54.0;
    }
   } else {
    if(i1<0.09772461652755737){
     s0+=462.0;
     s1+=49.0;
    } else {
     s0+=113.0;
     s1+=439.0;
    }
   }
  }
 }
}
if(i21<0.023178737610578537){
 if(i10<0.0005409717559814453){
  if(i1<0.07869040966033936){
   if(i8<1.0460114479064941){
    if(i71<0.974132239818573){
     s0+=1351.0;
     s1+=141.0;
    } else {
     s0+=55812.0;
     s1+=447.0;
    }
   } else {
    if(i35<1.1034480333328247){
     s0+=2133.0;
     s1+=622.0;
    } else {
     s0+=3431.0;
     s1+=90.0;
    }
   }
  } else {
   if(i36<0.04637262225151062){
    if(i44<0.9989572763442993){
     s0+=53.0;
     s1+=1.0;
    } else {
     s0+=81.0;
     s1+=959.0;
    }
   } else {
    if(i6<-4.2757950723171234e-05){
     s0+=53.0;
     s1+=217.0;
    } else {
     s0+=825.0;
     s1+=149.0;
    }
   }
  }
 } else {
  if(i25<1.0059847831726074){
   if(i5<1.002443790435791){
    if(i62<0.0010149237932637334){
     s0+=420.0;
     s1+=45.0;
    } else {
     s0+=60.0;
     s1+=63.0;
    }
   } else {
    if(i58<1.292474007641431e-05){
     s0+=34.0;
     s1+=266.0;
    } else {
     s0+=36.0;
     s1+=32.0;
    }
   }
  } else {
   if(i16<0.0019232211634516716){
    if(i58<-1.143458121077856e-05){
     s1+=47.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i2<0.000583946704864502){
     s0+=23.0;
     s1+=8.0;
    } else {
     s0+=23.0;
     s1+=1781.0;
    }
   }
  }
 }
} else {
 if(i13<0.9993329644203186){
  if(i30<1.2533326148986816){
   if(i35<1.0683749914169312){
    if(i55<0.0004251693608239293){
     s0+=242.0;
     s1+=2.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   } else {
    if(i5<0.9962867498397827){
     s0+=281.0;
     s1+=8.0;
    } else {
     s0+=98.0;
     s1+=432.0;
    }
   }
  } else {
   if(i0<0.08756524324417114){
    if(i8<1.2534117698669434){
     s0+=3015.0;
     s1+=7.0;
    } else {
     s0+=134.0;
     s1+=9.0;
    }
   } else {
    if(i41<9.478153515374288e-07){
     s0+=19.0;
     s1+=87.0;
    } else {
     s0+=206.0;
    }
   }
  }
 } else {
  if(i0<0.07540014386177063){
   if(i18<-0.0003085136413574219){
    if(i47<0.01656945049762726){
     s0+=1426.0;
     s1+=6.0;
    } else {
     s0+=49.0;
     s1+=61.0;
    }
   } else {
    if(i13<1.0019069910049438){
     s0+=526.0;
     s1+=532.0;
    } else {
     s0+=51.0;
     s1+=342.0;
    }
   }
  } else {
   if(i16<0.0013995366171002388){
    if(i71<1.028679609298706){
     s0+=28.0;
     s1+=70.0;
    } else {
     s0+=105.0;
     s1+=9.0;
    }
   } else {
    if(i67<-8.763028017710894e-05){
     s0+=134.0;
     s1+=9997.0;
    } else {
     s0+=184.0;
     s1+=931.0;
    }
   }
  }
 }
}
if(i5<1.002474308013916){
 if(i7<0.07196682691574097){
  if(i40<0.00031235054484568536){
   if(i25<1.008808970451355){
    if(i59<-0.0026986300945281982){
     s0+=117.0;
     s1+=13.0;
    } else {
     s0+=47248.0;
     s1+=63.0;
    }
   } else {
    if(i34<0.0011573112569749355){
     s1+=32.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i29<1.1939998865127563){
    if(i55<-7.45665020076558e-05){
     s0+=42.0;
     s1+=340.0;
    } else {
     s0+=6546.0;
     s1+=1763.0;
    }
   } else {
    if(i4<1.990795135498047e-05){
     s0+=14538.0;
     s1+=294.0;
    } else {
     s0+=347.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i45<-0.00013786554336547852){
   if(i10<-0.0003669261932373047){
    if(i8<1.398578405380249){
     s0+=403.0;
     s1+=2.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i58<1.0834135537152179e-05){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=58.0;
    }
   }
  } else {
   if(i0<0.1116265058517456){
    if(i54<0.031113088130950928){
     s0+=237.0;
     s1+=432.0;
    } else {
     s0+=727.0;
     s1+=132.0;
    }
   } else {
    if(i6<-1.4964103684178554e-05){
     s0+=215.0;
     s1+=2265.0;
    } else {
     s0+=293.0;
     s1+=182.0;
    }
   }
  }
 }
} else {
 if(i16<0.001900194794870913){
  if(i41<-1.490806789661292e-05){
   s1+=124.0;
  } else {
   s0+=178.0;
  }
 } else {
  if(i18<6.258487701416016e-06){
   if(i40<0.00829921942204237){
    if(i35<1.22328782081604){
     s0+=51.0;
     s1+=324.0;
    } else {
     s0+=110.0;
     s1+=79.0;
    }
   } else {
    if(i7<0.0033732950687408447){
     s0+=6.0;
     s1+=21.0;
    } else {
     s0+=3.0;
     s1+=638.0;
    }
   }
  } else {
   if(i18<0.00017249584197998047){
    if(i53<0.0013545566471293569){
     s0+=36.0;
     s1+=167.0;
    } else {
     s1+=1188.0;
    }
   } else {
    if(i67<-0.00023861214867793024){
     s1+=7535.0;
    } else {
     s0+=2.0;
     s1+=1246.0;
    }
   }
  }
 }
}
if(i10<0.00044995546340942383){
 if(i17<1.0047008991241455){
  if(i26<0.00032432907028123736){
   if(i28<1.0085477828979492){
    if(i55<0.00028056680457666516){
     s0+=52361.0;
     s1+=112.0;
    } else {
     s0+=1288.0;
     s1+=136.0;
    }
   } else {
    if(i19<0.9998224973678589){
     s0+=80.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=64.0;
    }
   }
  } else {
   if(i3<0.08242163062095642){
    if(i56<9.892873640637845e-05){
     s0+=6946.0;
     s1+=1368.0;
    } else {
     s0+=6518.0;
     s1+=94.0;
    }
   } else {
    if(i13<0.99855637550354){
     s0+=411.0;
     s1+=19.0;
    } else {
     s0+=692.0;
     s1+=2156.0;
    }
   }
  }
 } else {
  if(i18<0.00016480684280395508){
   if(i1<0.07476812601089478){
    if(i0<0.060913413763046265){
     s0+=625.0;
     s1+=61.0;
    } else {
     s0+=169.0;
     s1+=110.0;
    }
   } else {
    if(i63<0.00026466051349416375){
     s0+=142.0;
     s1+=99.0;
    } else {
     s0+=34.0;
     s1+=499.0;
    }
   }
  } else {
   if(i16<0.0019174329936504364){
    if(i52<0.9998852014541626){
     s1+=87.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i50<0.0029266132041811943){
     s0+=1.0;
     s1+=826.0;
    } else {
     s0+=18.0;
     s1+=256.0;
    }
   }
  }
 }
} else {
 if(i23<1.0645322799682617){
  if(i3<0.06436562538146973){
   if(i4<4.559755325317383e-05){
    if(i8<1.1202845573425293){
     s0+=1014.0;
     s1+=116.0;
    } else {
     s0+=6.0;
     s1+=30.0;
    }
   } else {
    if(i49<-0.0006791353225708008){
     s0+=60.0;
     s1+=410.0;
    } else {
     s0+=106.0;
     s1+=34.0;
    }
   }
  } else {
   if(i50<0.0010770935332402587){
    if(i2<0.00046449899673461914){
     s0+=250.0;
     s1+=80.0;
    } else {
     s0+=42.0;
     s1+=732.0;
    }
   } else {
    if(i60<-0.011665715835988522){
     s0+=10.0;
    } else {
     s0+=30.0;
     s1+=2402.0;
    }
   }
  }
 } else {
  if(i2<0.0006350278854370117){
   if(i32<0.005014549475163221){
    if(i21<0.04533739387989044){
     s0+=103.0;
     s1+=9.0;
    } else {
     s0+=13.0;
     s1+=38.0;
    }
   } else {
    if(i9<1.0888694524765015){
     s0+=54.0;
     s1+=40.0;
    } else {
     s1+=287.0;
    }
   }
  } else {
   if(i8<1.1223887205123901){
    if(i56<9.440286521567032e-05){
     s0+=6.0;
     s1+=1132.0;
    } else {
     s0+=58.0;
     s1+=60.0;
    }
   } else {
    if(i16<0.0009579884354025126){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=5850.0;
    }
   }
  }
 }
}
if(i3<0.08270382881164551){
 if(i10<0.0005333125591278076){
  if(i26<0.0003136942395940423){
   if(i40<0.00025284290313720703){
    if(i27<1.0085018873214722){
     s0+=44090.0;
     s1+=18.0;
    } else {
     s0+=12.0;
     s1+=33.0;
    }
   } else {
    if(i10<0.00011664628982543945){
     s0+=8876.0;
     s1+=128.0;
    } else {
     s0+=1094.0;
     s1+=165.0;
    }
   }
  } else {
   if(i31<0.0009340601973235607){
    if(i22<1.0423946380615234){
     s0+=1721.0;
     s1+=60.0;
    } else {
     s0+=2481.0;
     s1+=1191.0;
    }
   } else {
    if(i8<1.0410044193267822){
     s0+=6489.0;
     s1+=46.0;
    } else {
     s0+=3864.0;
     s1+=414.0;
    }
   }
  }
 } else {
  if(i4<4.649162292480469e-05){
   if(i45<0.00036597251892089844){
    if(i5<1.0015991926193237){
     s0+=282.0;
     s1+=62.0;
    } else {
     s0+=19.0;
     s1+=73.0;
    }
   } else {
    if(i54<-0.049596309661865234){
     s0+=11.0;
     s1+=19.0;
    } else {
     s0+=513.0;
     s1+=22.0;
    }
   }
  } else {
   if(i54<0.03388822078704834){
    if(i48<0.008650332689285278){
     s0+=97.0;
     s1+=865.0;
    } else {
     s0+=22.0;
     s1+=3.0;
    }
   } else {
    s0+=54.0;
   }
  }
 }
} else {
 if(i44<0.9988100528717041){
  if(i8<1.398578405380249){
   if(i41<-1.0249375918647274e-05){
    if(i60<-0.003509348025545478){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=422.0;
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i37<0.023620575666427612){
   if(i64<-0.018611399456858635){
    if(i3<0.17180532217025757){
     s0+=643.0;
     s1+=99.0;
    } else {
     s0+=140.0;
     s1+=368.0;
    }
   } else {
    if(i38<0.06343171000480652){
     s0+=19.0;
     s1+=2122.0;
    } else {
     s0+=302.0;
     s1+=1364.0;
    }
   }
  } else {
   if(i3<0.10595917701721191){
    if(i12<0.9907063841819763){
     s0+=59.0;
     s1+=18.0;
    } else {
     s0+=26.0;
     s1+=246.0;
    }
   } else {
    if(i16<0.00358667504042387){
     s0+=107.0;
     s1+=215.0;
    } else {
     s0+=4.0;
     s1+=9354.0;
    }
   }
  }
 }
}
if(i11<1.7702579498291016e-05){
 if(i9<1.0452215671539307){
  if(i1<0.08220899105072021){
   if(i46<-0.0018427073955535889){
    if(i0<0.03777095675468445){
     s0+=2155.0;
     s1+=232.0;
    } else {
     s0+=315.0;
     s1+=233.0;
    }
   } else {
    if(i1<0.0660645067691803){
     s0+=60237.0;
     s1+=622.0;
    } else {
     s0+=1399.0;
     s1+=232.0;
    }
   }
  } else {
   if(i11<-1.4424324035644531e-05){
    if(i57<0.05303636193275452){
     s0+=75.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i22<1.0452890396118164){
     s0+=36.0;
     s1+=5.0;
    } else {
     s0+=29.0;
     s1+=507.0;
    }
   }
  }
 } else {
  if(i31<0.00599991250783205){
   if(i16<0.004305926617234945){
    if(i55<-7.233431097120047e-05){
     s0+=274.0;
     s1+=495.0;
    } else {
     s0+=4168.0;
     s1+=939.0;
    }
   } else {
    if(i35<1.2767412662506104){
     s0+=133.0;
     s1+=1224.0;
    } else {
     s0+=265.0;
     s1+=1.0;
    }
   }
  } else {
   if(i4<-7.766485214233398e-05){
    if(i7<0.11214092373847961){
     s0+=120.0;
     s1+=14.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i16<0.0019805992487818003){
     s0+=23.0;
     s1+=4.0;
    } else {
     s0+=48.0;
     s1+=1623.0;
    }
   }
  }
 }
} else {
 if(i5<1.002211093902588){
  if(i0<0.11804389953613281){
   if(i47<0.017054855823516846){
    if(i12<1.0015499591827393){
     s0+=1508.0;
     s1+=111.0;
    } else {
     s0+=81.0;
     s1+=54.0;
    }
   } else {
    if(i27<0.8514326810836792){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=10.0;
     s1+=135.0;
    }
   }
  } else {
   if(i21<0.021350715309381485){
    if(i1<0.1685437560081482){
     s0+=24.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=18.0;
    }
   } else {
    if(i53<0.0023226281628012657){
     s0+=20.0;
     s1+=51.0;
    } else {
     s0+=1.0;
     s1+=383.0;
    }
   }
  }
 } else {
  if(i41<-1.3884634427085984e-05){
   if(i3<0.039462268352508545){
    if(i64<-0.006304404232650995){
     s0+=39.0;
     s1+=10.0;
    } else {
     s0+=29.0;
     s1+=144.0;
    }
   } else {
    if(i37<0.018105944618582726){
     s0+=129.0;
     s1+=1934.0;
    } else {
     s0+=8.0;
     s1+=7998.0;
    }
   }
  } else {
   if(i26<0.00024647434474900365){
    if(i55<8.740224438952282e-05){
     s0+=35.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i72<0.00013688355102203786){
     s0+=1.0;
     s1+=33.0;
    } else {
     s0+=6.0;
     s1+=6.0;
    }
   }
  }
 }
}
if(i19<1.002894639968872){
 if(i8<1.0469921827316284){
  if(i26<0.0002805060357786715){
   if(i23<1.0437653064727783){
    if(i5<1.0029605627059937){
     s0+=51463.0;
     s1+=165.0;
    } else {
     s0+=3.0;
     s1+=6.0;
    }
   } else {
    if(i9<1.0439692735671997){
     s1+=8.0;
    } else {
     s0+=64.0;
     s1+=4.0;
    }
   }
  } else {
   if(i0<0.0765332579612732){
    if(i18<-0.0002478659152984619){
     s0+=6057.0;
     s1+=43.0;
    } else {
     s0+=3942.0;
     s1+=629.0;
    }
   } else {
    if(i32<0.00043223751708865166){
     s0+=161.0;
     s1+=9.0;
    } else {
     s0+=256.0;
     s1+=341.0;
    }
   }
  }
 } else {
  if(i1<0.08372092247009277){
   if(i29<1.1013743877410889){
    if(i19<1.0003724098205566){
     s0+=1339.0;
     s1+=557.0;
    } else {
     s0+=95.0;
     s1+=462.0;
    }
   } else {
    if(i63<0.0017851117299869657){
     s0+=5090.0;
     s1+=368.0;
    } else {
     s0+=3.0;
     s1+=51.0;
    }
   }
  } else {
   if(i13<0.9984594583511353){
    if(i18<-0.00046446919441223145){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=316.0;
    }
   } else {
    if(i6<-1.3805152775603347e-05){
     s0+=386.0;
     s1+=3787.0;
    } else {
     s0+=499.0;
     s1+=210.0;
    }
   }
  }
 }
} else {
 if(i0<0.06835132837295532){
  if(i25<0.9637302756309509){
   if(i8<1.1151728630065918){
    s0+=590.0;
   } else {
    if(i53<0.004159357398748398){
     s0+=21.0;
     s1+=3.0;
    } else {
     s1+=27.0;
    }
   }
  } else {
   if(i49<-0.0012662112712860107){
    if(i47<0.013522002846002579){
     s0+=81.0;
     s1+=151.0;
    } else {
     s0+=19.0;
     s1+=272.0;
    }
   } else {
    if(i29<1.2385294437408447){
     s0+=43.0;
     s1+=97.0;
    } else {
     s0+=252.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i8<1.0409021377563477){
   if(i48<0.010933756828308105){
    if(i13<1.0006778240203857){
     s0+=4.0;
    } else {
     s0+=2.0;
     s1+=105.0;
    }
   } else {
    if(i58<1.4512723282678053e-05){
     s1+=2.0;
    } else {
     s0+=54.0;
    }
   }
  } else {
   if(i12<1.0021541118621826){
    if(i4<3.975629806518555e-05){
     s0+=120.0;
     s1+=384.0;
    } else {
     s0+=29.0;
     s1+=987.0;
    }
   } else {
    if(i2<0.0008243918418884277){
     s0+=43.0;
     s1+=362.0;
    } else {
     s0+=16.0;
     s1+=8242.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i0<0.08547407388687134){
  if(i42<0.0002988161868415773){
   if(i62<0.0008575861575081944){
    if(i21<0.02423938736319542){
     s0+=54245.0;
     s1+=296.0;
    } else {
     s0+=1005.0;
     s1+=147.0;
    }
   } else {
    if(i33<1.1037919521331787){
     s0+=296.0;
     s1+=169.0;
    } else {
     s0+=392.0;
     s1+=4.0;
    }
   }
  } else {
   if(i29<1.100754976272583){
    if(i41<-4.722699031844968e-06){
     s0+=133.0;
     s1+=462.0;
    } else {
     s0+=2903.0;
     s1+=584.0;
    }
   } else {
    if(i2<0.000213623046875){
     s0+=9107.0;
     s1+=377.0;
    } else {
     s0+=394.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i4<-4.9054622650146484e-05){
   if(i45<-0.00013878941535949707){
    s0+=574.0;
   } else {
    if(i38<0.10945636034011841){
     s0+=102.0;
     s1+=66.0;
    } else {
     s0+=1.0;
     s1+=117.0;
    }
   }
  } else {
   if(i21<0.02882910706102848){
    if(i48<0.015130758285522461){
     s0+=260.0;
     s1+=1165.0;
    } else {
     s0+=665.0;
     s1+=140.0;
    }
   } else {
    if(i63<0.0001979433000087738){
     s0+=80.0;
     s1+=216.0;
    } else {
     s0+=102.0;
     s1+=1801.0;
    }
   }
  }
 }
} else {
 if(i34<0.00039478979306295514){
  s0+=289.0;
 } else {
  if(i25<1.0043160915374756){
   if(i7<0.12793925404548645){
    if(i49<0.0026951730251312256){
     s0+=114.0;
     s1+=799.0;
    } else {
     s0+=174.0;
     s1+=87.0;
    }
   } else {
    if(i19<0.9962233304977417){
     s0+=6.0;
    } else {
     s0+=16.0;
     s1+=1406.0;
    }
   }
  } else {
   if(i16<0.0022362954914569855){
    if(i6<-6.717449286952615e-05){
     s1+=148.0;
    } else {
     s0+=115.0;
    }
   } else {
    if(i37<0.008895308710634708){
     s0+=19.0;
     s1+=885.0;
    } else {
     s0+=1.0;
     s1+=8237.0;
    }
   }
  }
 }
}
if(i10<0.0004285573959350586){
 if(i23<1.0399130582809448){
  if(i0<0.08355042338371277){
   if(i39<0.0003756471851374954){
    if(i7<0.07741403579711914){
     s0+=40035.0;
     s1+=58.0;
    } else {
     s0+=11.0;
     s1+=4.0;
    }
   } else {
    if(i29<1.100754976272583){
     s0+=3578.0;
     s1+=1151.0;
    } else {
     s0+=21447.0;
     s1+=327.0;
    }
   }
  } else {
   if(i30<1.0681657791137695){
    if(i44<1.0004651546478271){
     s0+=243.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i13<0.998499870300293){
     s0+=117.0;
     s1+=10.0;
    } else {
     s0+=74.0;
     s1+=1013.0;
    }
   }
  }
 } else {
  if(i17<1.0078418254852295){
   if(i0<0.09859627485275269){
    if(i41<-7.167794592533028e-06){
     s0+=636.0;
     s1+=303.0;
    } else {
     s0+=2189.0;
     s1+=134.0;
    }
   } else {
    if(i41<1.9693134163389914e-06){
     s0+=522.0;
     s1+=1556.0;
    } else {
     s0+=289.0;
     s1+=11.0;
    }
   }
  } else {
   if(i53<0.0007798477308824658){
    if(i35<1.1663256883621216){
     s0+=1.0;
     s1+=191.0;
    } else {
     s0+=136.0;
     s1+=18.0;
    }
   } else {
    if(i6<-4.2401818063808605e-05){
     s1+=906.0;
    } else {
     s0+=18.0;
     s1+=64.0;
    }
   }
  }
 }
} else {
 if(i5<1.0019304752349854){
  if(i53<0.005479355342686176){
   if(i38<0.10538691282272339){
    if(i7<0.10564899444580078){
     s0+=1514.0;
     s1+=223.0;
    } else {
     s0+=11.0;
     s1+=87.0;
    }
   } else {
    if(i72<0.00010314740939065814){
     s0+=41.0;
     s1+=27.0;
    } else {
     s0+=1.0;
     s1+=136.0;
    }
   }
  } else {
   if(i35<1.5876014232635498){
    if(i7<0.023069322109222412){
     s0+=14.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=237.0;
    }
   } else {
    if(i67<-0.0008475601789541543){
     s1+=3.0;
    } else {
     s0+=16.0;
    }
   }
  }
 } else {
  if(i42<0.00015246504335664213){
   if(i6<-4.469598934520036e-05){
    s1+=18.0;
   } else {
    if(i17<1.0047698020935059){
     s1+=1.0;
    } else {
     s0+=49.0;
    }
   }
  } else {
   if(i12<1.0048562288284302){
    if(i37<0.010055351071059704){
     s0+=160.0;
     s1+=119.0;
    } else {
     s0+=105.0;
     s1+=1876.0;
    }
   } else {
    if(i41<-1.3810231394018047e-05){
     s0+=16.0;
     s1+=8500.0;
    } else {
     s0+=10.0;
     s1+=21.0;
    }
   }
  }
 }
}
if(i4<3.7610530853271484e-05){
 if(i27<1.0074374675750732){
  if(i21<0.022142332047224045){
   if(i59<-0.0025883615016937256){
    if(i30<1.1800893545150757){
     s0+=1342.0;
     s1+=541.0;
    } else {
     s0+=1681.0;
     s1+=97.0;
    }
   } else {
    if(i1<0.07502523064613342){
     s0+=57678.0;
     s1+=366.0;
    } else {
     s0+=754.0;
     s1+=216.0;
    }
   }
  } else {
   if(i10<-0.00015145540237426758){
    if(i56<9.00533123058267e-05){
     s0+=820.0;
     s1+=302.0;
    } else {
     s0+=3093.0;
     s1+=49.0;
    }
   } else {
    if(i1<0.06667658686637878){
     s0+=2202.0;
     s1+=524.0;
    } else {
     s0+=280.0;
     s1+=1287.0;
    }
   }
  }
 } else {
  if(i1<0.075360506772995){
   if(i1<0.0586816668510437){
    if(i31<0.0010604362469166517){
     s0+=500.0;
     s1+=138.0;
    } else {
     s0+=1169.0;
     s1+=33.0;
    }
   } else {
    if(i40<0.0011069567408412695){
     s0+=114.0;
     s1+=199.0;
    } else {
     s0+=349.0;
     s1+=17.0;
    }
   }
  } else {
   if(i38<0.06147003173828125){
    if(i0<0.08267465233802795){
     s0+=18.0;
     s1+=58.0;
    } else {
     s0+=1.0;
     s1+=528.0;
    }
   } else {
    if(i1<0.10617586970329285){
     s0+=325.0;
     s1+=156.0;
    } else {
     s0+=340.0;
     s1+=927.0;
    }
   }
  }
 }
} else {
 if(i52<0.9992160797119141){
  s0+=306.0;
 } else {
  if(i0<0.06146359443664551){
   if(i54<-0.002909362316131592){
    if(i51<0.0016049742698669434){
     s0+=61.0;
     s1+=404.0;
    } else {
     s0+=50.0;
    }
   } else {
    if(i39<0.0016824458725750446){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=117.0;
     s1+=7.0;
    }
   }
  } else {
   if(i6<-6.790774932596833e-05){
    if(i6<-0.00013162929099053144){
     s0+=10.0;
     s1+=7623.0;
    } else {
     s0+=80.0;
     s1+=2582.0;
    }
   } else {
    if(i34<0.0023815336171537638){
     s1+=457.0;
    } else {
     s0+=138.0;
     s1+=298.0;
    }
   }
  }
 }
}
if(i10<0.000444263219833374){
 if(i24<1.0073931217193604){
  if(i69<0.04721248149871826){
   if(i0<0.08971008658409119){
    if(i21<0.025658752769231796){
     s0+=55337.0;
     s1+=342.0;
    } else {
     s0+=825.0;
     s1+=231.0;
    }
   } else {
    if(i17<0.9917221069335938){
     s0+=188.0;
     s1+=1.0;
    } else {
     s0+=64.0;
     s1+=189.0;
    }
   }
  } else {
   if(i67<-5.015345959691331e-05){
    if(i1<0.07067281007766724){
     s0+=2995.0;
     s1+=497.0;
    } else {
     s0+=495.0;
     s1+=1532.0;
    }
   } else {
    if(i39<0.003877109382301569){
     s0+=3680.0;
     s1+=574.0;
    } else {
     s0+=4116.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i7<0.06291896104812622){
   if(i65<0.9998595714569092){
    if(i29<1.2392117977142334){
     s0+=30.0;
     s1+=338.0;
    } else {
     s0+=206.0;
     s1+=1.0;
    }
   } else {
    if(i16<0.0032291607931256294){
     s0+=837.0;
     s1+=20.0;
    } else {
     s1+=85.0;
    }
   }
  } else {
   if(i4<1.0669231414794922e-05){
    if(i16<0.0024312036111950874){
     s0+=272.0;
     s1+=30.0;
    } else {
     s0+=151.0;
     s1+=475.0;
    }
   } else {
    if(i11<1.2576580047607422e-05){
     s0+=50.0;
     s1+=1174.0;
    } else {
     s0+=140.0;
     s1+=348.0;
    }
   }
  }
 }
} else {
 if(i0<0.08454766869544983){
  if(i2<0.0006018579006195068){
   if(i50<0.003949620760977268){
    if(i39<0.0018782502738758922){
     s0+=386.0;
     s1+=108.0;
    } else {
     s0+=709.0;
     s1+=12.0;
    }
   } else {
    if(i15<-0.0024843811988830566){
     s0+=94.0;
     s1+=38.0;
    } else {
     s0+=12.0;
     s1+=53.0;
    }
   }
  } else {
   if(i48<0.0062171220779418945){
    if(i16<0.0017867935821413994){
     s0+=119.0;
     s1+=1.0;
    } else {
     s0+=93.0;
     s1+=895.0;
    }
   } else {
    if(i11<5.608797073364258e-05){
     s0+=66.0;
     s1+=7.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i6<-6.81698729749769e-05){
   if(i4<1.5616416931152344e-05){
    if(i52<1.0004013776779175){
     s1+=104.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.12899383902549744){
     s0+=61.0;
     s1+=943.0;
    } else {
     s0+=13.0;
     s1+=8308.0;
    }
   }
  } else {
   if(i32<0.002480848226696253){
    s1+=399.0;
   } else {
    if(i36<0.04425692558288574){
     s0+=2.0;
     s1+=192.0;
    } else {
     s0+=182.0;
     s1+=92.0;
    }
   }
  }
 }
}
if(i13<1.0014090538024902){
 if(i3<0.08223113417625427){
  if(i42<0.0002955581876449287){
   if(i48<-0.007860302925109863){
    if(i39<0.0010800211457535625){
     s0+=64.0;
     s1+=68.0;
    } else {
     s0+=149.0;
    }
   } else {
    if(i6<-3.998902684543282e-05){
     s0+=541.0;
     s1+=113.0;
    } else {
     s0+=55203.0;
     s1+=320.0;
    }
   }
  } else {
   if(i32<0.0014196733245626092){
    if(i39<0.00042981147998943925){
     s0+=2275.0;
     s1+=61.0;
    } else {
     s0+=2824.0;
     s1+=1131.0;
    }
   } else {
    if(i54<-0.12845587730407715){
     s0+=152.0;
     s1+=61.0;
    } else {
     s0+=6741.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i10<-0.0004054605960845947){
   if(i52<0.9997792840003967){
    s0+=384.0;
   } else {
    if(i62<0.0006745419232174754){
     s0+=23.0;
    } else {
     s0+=10.0;
     s1+=11.0;
    }
   }
  } else {
   if(i6<-1.4177050616126508e-05){
    if(i45<4.595518112182617e-05){
     s0+=104.0;
     s1+=2831.0;
    } else {
     s0+=275.0;
     s1+=1142.0;
    }
   } else {
    if(i43<0.05493578314781189){
     s0+=17.0;
     s1+=240.0;
    } else {
     s0+=621.0;
     s1+=133.0;
    }
   }
  }
 }
} else {
 if(i12<1.0032708644866943){
  if(i21<0.027066759765148163){
   if(i2<0.00044095516204833984){
    if(i63<0.0017037363722920418){
     s0+=919.0;
     s1+=85.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   } else {
    if(i16<0.004377519246190786){
     s0+=105.0;
     s1+=2.0;
    } else {
     s0+=137.0;
     s1+=301.0;
    }
   }
  } else {
   if(i40<0.008997850120067596){
    if(i18<-0.0002849698066711426){
     s0+=319.0;
     s1+=86.0;
    } else {
     s0+=47.0;
     s1+=459.0;
    }
   } else {
    if(i7<0.023161262273788452){
     s0+=62.0;
     s1+=36.0;
    } else {
     s0+=13.0;
     s1+=933.0;
    }
   }
  }
 } else {
  if(i34<0.000328424503095448){
   s0+=19.0;
  } else {
   if(i26<0.00018719921354204416){
    if(i45<0.00019127130508422852){
     s0+=37.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i10<0.0005061328411102295){
     s0+=37.0;
     s1+=122.0;
    } else {
     s0+=38.0;
     s1+=8827.0;
    }
   }
  }
 }
}
if(i10<0.00043660402297973633){
 if(i8<1.0452215671539307){
  if(i7<0.07131022214889526){
   if(i62<0.0007541358936578035){
    if(i39<0.00033236423041671515){
     s0+=37201.0;
     s1+=14.0;
    } else {
     s0+=18645.0;
     s1+=291.0;
    }
   } else {
    if(i56<9.765606955625117e-05){
     s0+=2315.0;
     s1+=522.0;
    } else {
     s0+=3092.0;
     s1+=5.0;
    }
   }
  } else {
   if(i21<0.01146036945283413){
    if(i62<0.0019178015645593405){
     s0+=227.0;
     s1+=12.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i34<0.002410461427643895){
     s0+=49.0;
     s1+=136.0;
    } else {
     s0+=102.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i4<1.0907649993896484e-05){
   if(i56<2.5563382223481312e-05){
    if(i3<0.09524726867675781){
     s0+=2971.0;
     s1+=129.0;
    } else {
     s0+=283.0;
     s1+=256.0;
    }
   } else {
    if(i44<0.9989795088768005){
     s0+=1057.0;
     s1+=26.0;
    } else {
     s0+=2601.0;
     s1+=2034.0;
    }
   }
  } else {
   if(i53<0.0012065680930390954){
    if(i52<0.9999068975448608){
     s0+=132.0;
     s1+=952.0;
    } else {
     s0+=692.0;
     s1+=298.0;
    }
   } else {
    if(i5<0.9996509552001953){
     s0+=45.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=1302.0;
    }
   }
  }
 }
} else {
 if(i15<0.00046193599700927734){
  if(i3<0.10275378823280334){
   if(i47<0.011147091165184975){
    if(i15<-0.0016124248504638672){
     s0+=817.0;
     s1+=16.0;
    } else {
     s0+=630.0;
     s1+=283.0;
    }
   } else {
    if(i59<0.004759848117828369){
     s0+=64.0;
     s1+=346.0;
    } else {
     s0+=34.0;
     s1+=6.0;
    }
   }
  } else {
   if(i3<0.13177666068077087){
    if(i49<0.005392998456954956){
     s0+=21.0;
     s1+=224.0;
    } else {
     s0+=66.0;
     s1+=5.0;
    }
   } else {
    if(i37<0.022561151534318924){
     s0+=32.0;
     s1+=180.0;
    } else {
     s0+=4.0;
     s1+=1255.0;
    }
   }
  }
 } else {
  if(i7<0.050069570541381836){
   if(i40<0.00026997318491339684){
    if(i16<0.002022427273914218){
     s0+=45.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i2<0.0009390115737915039){
     s0+=35.0;
     s1+=78.0;
    } else {
     s1+=563.0;
    }
   }
  } else {
   if(i31<0.0003681605448946357){
    s0+=4.0;
   } else {
    if(i63<0.0004153226618655026){
     s0+=12.0;
     s1+=1069.0;
    } else {
     s1+=7013.0;
    }
   }
  }
 }
}
if(i2<0.0005484223365783691){
 if(i23<1.0406770706176758){
  if(i1<0.07772281765937805){
   if(i21<0.014130311086773872){
    if(i48<-0.00612872838973999){
     s0+=1529.0;
     s1+=208.0;
    } else {
     s0+=53462.0;
     s1+=322.0;
    }
   } else {
    if(i12<0.9943803548812866){
     s0+=8179.0;
     s1+=109.0;
    } else {
     s0+=3208.0;
     s1+=1151.0;
    }
   }
  } else {
   if(i10<-0.0003609657287597656){
    if(i8<1.109454870223999){
     s0+=158.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i61<0.04084941744804382){
     s0+=34.0;
     s1+=942.0;
    } else {
     s0+=53.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i67<-0.00017455204215366393){
   if(i53<0.0016779263969510794){
    if(i52<0.9995865225791931){
     s0+=348.0;
     s1+=12.0;
    } else {
     s0+=1275.0;
     s1+=1027.0;
    }
   } else {
    if(i4<-9.5367431640625e-05){
     s0+=43.0;
     s1+=21.0;
    } else {
     s0+=114.0;
     s1+=1269.0;
    }
   }
  } else {
   if(i0<0.09715339541435242){
    if(i40<0.0014113064389675856){
     s0+=752.0;
     s1+=132.0;
    } else {
     s0+=941.0;
     s1+=20.0;
    }
   } else {
    if(i49<0.004389375448226929){
     s0+=49.0;
     s1+=176.0;
    } else {
     s0+=434.0;
     s1+=104.0;
    }
   }
  }
 }
} else {
 if(i6<-4.330423689680174e-05){
  if(i24<1.0041093826293945){
   if(i65<0.9975230693817139){
    if(i32<0.011209516786038876){
     s0+=39.0;
    } else {
     s1+=18.0;
    }
   } else {
    if(i37<0.01792125031352043){
     s0+=121.0;
     s1+=275.0;
    } else {
     s0+=18.0;
     s1+=1603.0;
    }
   }
  } else {
   if(i19<0.9976060390472412){
    if(i67<-0.0006499304436147213){
     s1+=213.0;
    } else {
     s0+=37.0;
     s1+=13.0;
    }
   } else {
    if(i14<1.0061018466949463){
     s0+=25.0;
     s1+=598.0;
    } else {
     s0+=8.0;
     s1+=8528.0;
    }
   }
  }
 } else {
  if(i41<-1.3888891771784984e-05){
   if(i56<-2.2850292225484736e-05){
    s0+=8.0;
   } else {
    if(i29<1.3812854290008545){
     s1+=186.0;
    } else {
     s0+=4.0;
     s1+=20.0;
    }
   }
  } else {
   if(i25<0.9914597272872925){
    s1+=9.0;
   } else {
    if(i62<-0.00045437831431627274){
     s1+=5.0;
    } else {
     s0+=338.0;
     s1+=30.0;
    }
   }
  }
 }
}
if(i0<0.08548527956008911){
 if(i24<1.0062532424926758){
  if(i46<-0.0017799139022827148){
   if(i2<0.0002646446228027344){
    if(i3<0.036564409732818604){
     s0+=2768.0;
     s1+=314.0;
    } else {
     s0+=256.0;
     s1+=328.0;
    }
   } else {
    if(i0<0.013651758432388306){
     s0+=45.0;
     s1+=49.0;
    } else {
     s0+=19.0;
     s1+=430.0;
    }
   }
  } else {
   if(i50<0.0014662654139101505){
    if(i0<0.0673331618309021){
     s0+=58132.0;
     s1+=491.0;
    } else {
     s0+=2979.0;
     s1+=358.0;
    }
   } else {
    if(i4<2.288818359375e-05){
     s0+=3077.0;
     s1+=308.0;
    } else {
     s0+=45.0;
     s1+=91.0;
    }
   }
  }
 } else {
  if(i41<-1.4940562323317863e-05){
   if(i39<0.0010350591037422419){
    s1+=537.0;
   } else {
    if(i65<1.0007497072219849){
     s0+=8.0;
     s1+=94.0;
    } else {
     s0+=115.0;
     s1+=24.0;
    }
   }
  } else {
   if(i31<0.0011092626955360174){
    if(i14<1.0094391107559204){
     s0+=311.0;
     s1+=95.0;
    } else {
     s0+=13.0;
     s1+=118.0;
    }
   } else {
    if(i72<0.0001949169090948999){
     s0+=1326.0;
     s1+=22.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i44<0.9990403652191162){
  if(i51<0.022540569305419922){
   if(i16<0.012246448546648026){
    if(i32<0.0016456798184663057){
     s0+=589.0;
    } else {
     s0+=36.0;
     s1+=8.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   s1+=14.0;
  }
 } else {
  if(i3<0.11749055981636047){
   if(i54<0.045861124992370605){
    if(i60<-0.005384477786719799){
     s0+=159.0;
     s1+=90.0;
    } else {
     s0+=114.0;
     s1+=1848.0;
    }
   } else {
    if(i31<0.0015446224715560675){
     s0+=138.0;
     s1+=95.0;
    } else {
     s0+=448.0;
     s1+=27.0;
    }
   }
  } else {
   if(i32<0.0005819007637910545){
    if(i41<-5.0123858272854704e-06){
     s1+=38.0;
    } else {
     s0+=133.0;
     s1+=1.0;
    }
   } else {
    if(i25<1.014076828956604){
     s0+=279.0;
     s1+=4262.0;
    } else {
     s0+=10.0;
     s1+=7597.0;
    }
   }
  }
 }
}
if(i1<0.07905656099319458){
 if(i5<1.0024913549423218){
  if(i21<0.016540659591555595){
   if(i50<0.0015784705756232142){
    if(i7<0.06326812505722046){
     s0+=54822.0;
     s1+=283.0;
    } else {
     s0+=1213.0;
     s1+=112.0;
    }
   } else {
    if(i34<0.0011409807484596968){
     s0+=1050.0;
     s1+=304.0;
    } else {
     s0+=2097.0;
     s1+=78.0;
    }
   }
  } else {
   if(i56<9.018888522405177e-05){
    if(i39<0.00038737471913918853){
     s0+=1069.0;
     s1+=47.0;
    } else {
     s0+=2233.0;
     s1+=1164.0;
    }
   } else {
    if(i18<-0.00025030970573425293){
     s0+=6431.0;
     s1+=117.0;
    } else {
     s0+=161.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i16<0.002053731121122837){
   if(i45<0.00018936395645141602){
    if(i32<0.001453185104764998){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=142.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i49<0.0026798248291015625){
    if(i32<0.007196011487394571){
     s0+=20.0;
     s1+=945.0;
    } else {
     s0+=49.0;
     s1+=114.0;
    }
   } else {
    if(i39<0.0012765380088239908){
     s1+=3.0;
    } else {
     s0+=28.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i4<9.59634780883789e-06){
  if(i64<-0.022690758109092712){
   if(i7<0.21004849672317505){
    if(i64<-0.0434967577457428){
     s0+=245.0;
     s1+=3.0;
    } else {
     s0+=368.0;
     s1+=78.0;
    }
   } else {
    if(i53<0.0012048200005665421){
     s0+=160.0;
     s1+=70.0;
    } else {
     s0+=15.0;
     s1+=259.0;
    }
   }
  } else {
   if(i32<0.000449385610409081){
    if(i41<-2.982733349199407e-06){
     s0+=14.0;
     s1+=5.0;
    } else {
     s0+=157.0;
    }
   } else {
    if(i11<-1.3887882232666016e-05){
     s0+=110.0;
     s1+=13.0;
    } else {
     s0+=247.0;
     s1+=1365.0;
    }
   }
  }
 } else {
  if(i67<-0.0005532124196179211){
   if(i65<0.9959518313407898){
    s0+=7.0;
   } else {
    if(i16<0.0030038708355277777){
     s0+=57.0;
     s1+=72.0;
    } else {
     s0+=7.0;
     s1+=7920.0;
    }
   }
  } else {
   if(i54<0.051354408264160156){
    if(i59<0.00849902629852295){
     s0+=33.0;
     s1+=2946.0;
    } else {
     s0+=45.0;
     s1+=98.0;
    }
   } else {
    if(i3<0.13049709796905518){
     s0+=232.0;
     s1+=46.0;
    } else {
     s0+=95.0;
     s1+=948.0;
    }
   }
  }
 }
}
if(i3<0.08314955234527588){
 if(i40<0.00029879523208364844){
  if(i44<1.0005381107330322){
   if(i20<1.0111730098724365){
    if(i62<0.0008516736561432481){
     s0+=44818.0;
     s1+=27.0;
    } else {
     s0+=55.0;
     s1+=14.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i9<1.0458132028579712){
    if(i27<1.0083353519439697){
     s0+=1687.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=35.0;
    }
   } else {
    if(i30<1.0570924282073975){
     s0+=17.0;
    } else {
     s0+=4.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i5<1.0022846460342407){
   if(i30<1.103413462638855){
    if(i32<0.000424260477302596){
     s0+=3592.0;
     s1+=124.0;
    } else {
     s0+=2051.0;
     s1+=1401.0;
    }
   } else {
    if(i23<0.9809449315071106){
     s0+=734.0;
     s1+=161.0;
    } else {
     s0+=16015.0;
     s1+=414.0;
    }
   }
  } else {
   if(i39<0.0022276882082223892){
    if(i63<6.857459084130824e-05){
     s0+=3.0;
    } else {
     s0+=5.0;
     s1+=673.0;
    }
   } else {
    if(i50<0.0030338189098984003){
     s0+=237.0;
     s1+=33.0;
    } else {
     s0+=28.0;
     s1+=274.0;
    }
   }
  }
 }
} else {
 if(i16<0.0018080024747177958){
  if(i15<0.0014685392379760742){
   if(i7<0.07419362664222717){
    if(i6<4.06091203331016e-07){
     s0+=12.0;
     s1+=95.0;
    } else {
     s0+=54.0;
    }
   } else {
    if(i11<-9.715557098388672e-06){
     s0+=42.0;
     s1+=65.0;
    } else {
     s0+=611.0;
     s1+=68.0;
    }
   }
  } else {
   s1+=159.0;
  }
 } else {
  if(i45<-0.000257641077041626){
   if(i19<0.9983006119728088){
    if(i34<0.03158050775527954){
     s0+=310.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=45.0;
   }
  } else {
   if(i3<0.1181688904762268){
    if(i32<0.002114440081641078){
     s0+=86.0;
     s1+=1492.0;
    } else {
     s0+=378.0;
     s1+=480.0;
    }
   } else {
    if(i61<0.05438870191574097){
     s0+=31.0;
     s1+=9923.0;
    } else {
     s0+=142.0;
     s1+=1792.0;
    }
   }
  }
 }
}
if(i5<1.0024590492248535){
 if(i71<1.0130960941314697){
  if(i21<0.022074520587921143){
   if(i1<0.0822727382183075){
    if(i8<1.0410068035125732){
     s0+=54600.0;
     s1+=438.0;
    } else {
     s0+=7064.0;
     s1+=659.0;
    }
   } else {
    if(i22<1.0529189109802246){
     s0+=111.0;
     s1+=11.0;
    } else {
     s0+=107.0;
     s1+=391.0;
    }
   }
  } else {
   if(i5<0.9969279766082764){
    if(i0<0.0927131175994873){
     s0+=4910.0;
     s1+=68.0;
    } else {
     s0+=118.0;
     s1+=103.0;
    }
   } else {
    if(i25<0.9660909175872803){
     s0+=357.0;
     s1+=151.0;
    } else {
     s0+=920.0;
     s1+=1923.0;
    }
   }
  }
 } else {
  if(i21<0.0363345667719841){
   if(i3<0.08778655529022217){
    if(i29<1.1013743877410889){
     s0+=374.0;
     s1+=89.0;
    } else {
     s0+=1230.0;
     s1+=16.0;
    }
   } else {
    if(i26<0.0015426152385771275){
     s0+=106.0;
     s1+=649.0;
    } else {
     s0+=672.0;
     s1+=173.0;
    }
   }
  } else {
   if(i13<0.998742938041687){
    if(i53<0.0024535423144698143){
     s0+=105.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i1<0.0826147198677063){
     s0+=36.0;
     s1+=14.0;
    } else {
     s0+=79.0;
     s1+=1096.0;
    }
   }
  }
 }
} else {
 if(i53<0.0010077543556690216){
  if(i2<0.000938117504119873){
   if(i45<3.37064266204834e-05){
    s1+=156.0;
   } else {
    if(i56<1.0169625056732912e-05){
     s0+=208.0;
    } else {
     s1+=67.0;
    }
   }
  } else {
   s1+=761.0;
  }
 } else {
  if(i27<0.9930005073547363){
   if(i16<0.004609891213476658){
    if(i65<0.9998751282691956){
     s1+=3.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i19<1.0022876262664795){
     s0+=28.0;
     s1+=50.0;
    } else {
     s0+=57.0;
     s1+=1018.0;
    }
   }
  } else {
   if(i16<0.006451214663684368){
    if(i33<1.2314128875732422){
     s1+=997.0;
    } else {
     s0+=75.0;
     s1+=300.0;
    }
   } else {
    if(i15<-0.0010494589805603027){
     s0+=10.0;
     s1+=102.0;
    } else {
     s1+=7835.0;
    }
   }
  }
 }
}
if(i2<0.0005478262901306152){
 if(i9<1.042873740196228){
  if(i8<1.0451608896255493){
   if(i55<0.0002537962282076478){
    if(i0<0.0842985212802887){
     s0+=52130.0;
     s1+=164.0;
    } else {
     s0+=205.0;
     s1+=60.0;
    }
   } else {
    if(i12<0.9942198395729065){
     s0+=7300.0;
     s1+=68.0;
    } else {
     s0+=1842.0;
     s1+=662.0;
    }
   }
  } else {
   if(i0<0.07390350103378296){
    if(i29<1.1013743877410889){
     s0+=696.0;
     s1+=296.0;
    } else {
     s0+=1920.0;
     s1+=117.0;
    }
   } else {
    if(i3<0.07394987344741821){
     s0+=46.0;
     s1+=11.0;
    } else {
     s0+=34.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i13<0.9987614750862122){
   if(i6<-5.936363595537841e-05){
    if(i37<0.013766538351774216){
     s0+=16.0;
     s1+=3.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i53<0.004096615128219128){
     s0+=1696.0;
     s1+=14.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i39<0.00853455439209938){
    if(i35<1.1476502418518066){
     s0+=2097.0;
     s1+=1918.0;
    } else {
     s0+=2345.0;
     s1+=682.0;
    }
   } else {
    if(i9<1.0662567615509033){
     s0+=138.0;
     s1+=62.0;
    } else {
     s0+=88.0;
     s1+=1037.0;
    }
   }
  }
 }
} else {
 if(i3<0.06268706917762756){
  if(i59<-0.0015761852264404297){
   if(i69<0.21973565220832825){
    if(i46<0.0013324618339538574){
     s0+=3.0;
     s1+=272.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i46<-0.012030065059661865){
     s0+=1.0;
     s1+=83.0;
    } else {
     s0+=75.0;
     s1+=27.0;
    }
   }
  } else {
   if(i16<0.003562736324965954){
    if(i18<0.0002416372299194336){
     s0+=303.0;
     s1+=16.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i65<0.9993273019790649){
     s0+=33.0;
     s1+=4.0;
    } else {
     s0+=10.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i1<0.13566938042640686){
   if(i23<1.0831290483474731){
    if(i30<1.2280436754226685){
     s0+=8.0;
     s1+=1447.0;
    } else {
     s0+=66.0;
     s1+=451.0;
    }
   } else {
    if(i54<0.03732213377952576){
     s0+=17.0;
     s1+=108.0;
    } else {
     s0+=89.0;
     s1+=5.0;
    }
   }
  } else {
   if(i33<1.2570146322250366){
    if(i18<-0.0001093149185180664){
     s0+=9.0;
     s1+=10.0;
    } else {
     s0+=4.0;
     s1+=611.0;
    }
   } else {
    if(i58<3.155386366415769e-05){
     s0+=3.0;
     s1+=8401.0;
    } else {
     s0+=1.0;
     s1+=58.0;
    }
   }
  }
 }
}
if(i11<1.9729137420654297e-05){
 if(i0<0.08355346322059631){
  if(i48<-0.006012856960296631){
   if(i3<0.0368979275226593){
    if(i26<0.0024391389451920986){
     s0+=1211.0;
     s1+=291.0;
    } else {
     s0+=1854.0;
     s1+=60.0;
    }
   } else {
    if(i27<0.9850702285766602){
     s0+=166.0;
     s1+=298.0;
    } else {
     s0+=326.0;
     s1+=96.0;
    }
   }
  } else {
   if(i21<0.016124151647090912){
    if(i17<1.0058765411376953){
     s0+=56124.0;
     s1+=350.0;
    } else {
     s0+=261.0;
     s1+=124.0;
    }
   } else {
    if(i3<0.06643730401992798){
     s0+=7402.0;
     s1+=423.0;
    } else {
     s0+=529.0;
     s1+=360.0;
    }
   }
  }
 } else {
  if(i44<0.9989370107650757){
   if(i31<0.02070678398013115){
    if(i0<0.09860259294509888){
     s0+=107.0;
     s1+=3.0;
    } else {
     s0+=538.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i6<-1.3805152775603347e-05){
    if(i16<0.002549909520894289){
     s0+=276.0;
     s1+=544.0;
    } else {
     s0+=197.0;
     s1+=3721.0;
    }
   } else {
    if(i43<0.05489611625671387){
     s0+=36.0;
     s1+=209.0;
    } else {
     s0+=637.0;
     s1+=135.0;
    }
   }
  }
 }
} else {
 if(i19<1.0018253326416016){
  if(i5<1.0022423267364502){
   if(i8<1.1197855472564697){
    if(i51<-0.00047588348388671875){
     s0+=164.0;
     s1+=69.0;
    } else {
     s0+=748.0;
     s1+=64.0;
    }
   } else {
    if(i3<0.012600868940353394){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=141.0;
    }
   }
  } else {
   if(i15<7.355213165283203e-05){
    if(i66<-8.093338692560792e-06){
     s0+=21.0;
     s1+=125.0;
    } else {
     s0+=52.0;
     s1+=12.0;
    }
   } else {
    if(i28<1.0159376859664917){
     s0+=1.0;
     s1+=54.0;
    } else {
     s1+=433.0;
    }
   }
  }
 } else {
  if(i2<0.00041538476943969727){
   if(i66<-1.4763365470571443e-05){
    if(i33<1.580256700515747){
     s1+=39.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i16<0.015466565266251564){
     s0+=268.0;
     s1+=85.0;
    } else {
     s0+=12.0;
     s1+=46.0;
    }
   }
  } else {
   if(i0<0.07004639506340027){
    if(i30<1.2510931491851807){
     s0+=13.0;
     s1+=305.0;
    } else {
     s0+=139.0;
     s1+=218.0;
    }
   } else {
    if(i24<1.0025320053100586){
     s0+=69.0;
     s1+=1295.0;
    } else {
     s1+=7579.0;
    }
   }
  }
 }
}
if(i3<0.08297458291053772){
 if(i19<1.0029066801071167){
  if(i22<1.0486011505126953){
   if(i62<0.0006792336935177445){
    if(i9<1.0410044193267822){
     s0+=51287.0;
     s1+=51.0;
    } else {
     s0+=1144.0;
     s1+=22.0;
    }
   } else {
    if(i60<-0.0013992669992148876){
     s0+=2014.0;
     s1+=16.0;
    } else {
     s0+=1235.0;
     s1+=224.0;
    }
   }
  } else {
   if(i21<0.014688581228256226){
    if(i5<1.000999927520752){
     s0+=7603.0;
     s1+=310.0;
    } else {
     s0+=594.0;
     s1+=206.0;
    }
   } else {
    if(i39<0.0020229762885719538){
     s0+=774.0;
     s1+=1004.0;
    } else {
     s0+=3740.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i56<0.0001327820064034313){
   if(i6<-4.590588650899008e-05){
    if(i59<0.0036422908306121826){
     s0+=19.0;
     s1+=632.0;
    } else {
     s0+=31.0;
     s1+=12.0;
    }
   } else {
    if(i68<1.0024369955062866){
     s0+=223.0;
     s1+=12.0;
    } else {
     s0+=20.0;
     s1+=101.0;
    }
   }
  } else {
   if(i50<0.008059541694819927){
    if(i48<-0.006201446056365967){
     s0+=152.0;
     s1+=19.0;
    } else {
     s0+=548.0;
    }
   } else {
    if(i3<0.017868399620056152){
     s0+=145.0;
     s1+=28.0;
    } else {
     s0+=3.0;
     s1+=94.0;
    }
   }
  }
 }
} else {
 if(i0<0.12466582655906677){
  if(i26<0.0013579463120549917){
   if(i32<0.002179723232984543){
    if(i33<1.0806758403778076){
     s0+=58.0;
     s1+=16.0;
    } else {
     s0+=59.0;
     s1+=1612.0;
    }
   } else {
    if(i22<1.0802464485168457){
     s0+=129.0;
     s1+=12.0;
    } else {
     s0+=6.0;
     s1+=67.0;
    }
   }
  } else {
   if(i38<0.06689298152923584){
    if(i48<0.016139209270477295){
     s0+=23.0;
     s1+=563.0;
    } else {
     s0+=33.0;
     s1+=10.0;
    }
   } else {
    if(i48<-0.0012853443622589111){
     s0+=52.0;
     s1+=124.0;
    } else {
     s0+=612.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i13<0.997769832611084){
   s0+=258.0;
  } else {
   if(i10<0.0004996657371520996){
    if(i49<0.00843876600265503){
     s0+=79.0;
     s1+=2314.0;
    } else {
     s0+=270.0;
     s1+=715.0;
    }
   } else {
    if(i18<-4.351139068603516e-06){
     s0+=36.0;
     s1+=1062.0;
    } else {
     s0+=2.0;
     s1+=7570.0;
    }
   }
  }
 }
}
if(i24<1.0079689025878906){
 if(i57<0.03721933811903){
  if(i59<-0.0031540095806121826){
   if(i72<0.00013148589641787112){
    if(i35<1.1792536973953247){
     s0+=232.0;
     s1+=488.0;
    } else {
     s0+=260.0;
     s1+=95.0;
    }
   } else {
    if(i39<0.006115599535405636){
     s0+=296.0;
     s1+=9.0;
    } else {
     s0+=3.0;
     s1+=28.0;
    }
   }
  } else {
   if(i8<1.0452277660369873){
    if(i10<0.00045800209045410156){
     s0+=55756.0;
     s1+=285.0;
    } else {
     s0+=353.0;
     s1+=65.0;
    }
   } else {
    if(i15<0.0002155303955078125){
     s0+=3993.0;
     s1+=477.0;
    } else {
     s0+=405.0;
     s1+=271.0;
    }
   }
  }
 } else {
  if(i3<0.0663367509841919){
   if(i54<-0.002652287483215332){
    if(i2<0.0001862049102783203){
     s0+=1820.0;
     s1+=431.0;
    } else {
     s0+=56.0;
     s1+=273.0;
    }
   } else {
    if(i35<1.1027311086654663){
     s0+=811.0;
     s1+=144.0;
    } else {
     s0+=4447.0;
     s1+=23.0;
    }
   }
  } else {
   if(i3<0.1001429557800293){
    if(i49<0.0029188692569732666){
     s0+=121.0;
     s1+=702.0;
    } else {
     s0+=508.0;
     s1+=64.0;
    }
   } else {
    if(i41<3.935303993785055e-06){
     s0+=275.0;
     s1+=3005.0;
    } else {
     s0+=152.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i16<0.0031570899300277233){
  if(i15<0.0014873743057250977){
   if(i35<1.083398699760437){
    if(i29<1.089235782623291){
     s0+=28.0;
    } else {
     s0+=7.0;
     s1+=284.0;
    }
   } else {
    if(i2<-0.0004392862319946289){
     s0+=7.0;
     s1+=42.0;
    } else {
     s0+=1489.0;
     s1+=88.0;
    }
   }
  } else {
   if(i27<1.0089809894561768){
    if(i19<1.0019022226333618){
     s0+=9.0;
    } else {
     s1+=11.0;
    }
   } else {
    s1+=442.0;
   }
  }
 } else {
  if(i11<-9.953975677490234e-06){
   if(i67<-0.001655185129493475){
    s1+=8.0;
   } else {
    if(i29<1.2188851833343506){
     s1+=1.0;
    } else {
     s0+=142.0;
    }
   }
  } else {
   if(i11<-7.361173629760742e-06){
    if(i65<0.999597430229187){
     s1+=16.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   } else {
    if(i53<0.001856550807133317){
     s0+=51.0;
     s1+=2373.0;
    } else {
     s0+=1.0;
     s1+=7389.0;
    }
   }
  }
 }
}
if(i10<0.00043314695358276367){
 if(i24<1.0074682235717773){
  if(i57<0.03264690935611725){
   if(i1<0.08341836929321289){
    if(i51<-0.0016179680824279785){
     s0+=897.0;
     s1+=330.0;
    } else {
     s0+=58378.0;
     s1+=377.0;
    }
   } else {
    if(i21<0.016659706830978394){
     s0+=260.0;
     s1+=35.0;
    } else {
     s0+=96.0;
     s1+=192.0;
    }
   }
  } else {
   if(i5<0.9976500272750854){
    if(i9<1.0348392724990845){
     s0+=4881.0;
     s1+=134.0;
    } else {
     s0+=1359.0;
     s1+=318.0;
    }
   } else {
    if(i39<0.00044535595225170255){
     s0+=732.0;
     s1+=32.0;
    } else {
     s0+=1211.0;
     s1+=1973.0;
    }
   }
  }
 } else {
  if(i6<-4.222309507895261e-05){
   if(i3<0.0626794695854187){
    if(i30<1.2228267192840576){
     s0+=2.0;
     s1+=65.0;
    } else {
     s0+=87.0;
    }
   } else {
    if(i13<0.9982850551605225){
     s0+=19.0;
    } else {
     s0+=7.0;
     s1+=1815.0;
    }
   }
  } else {
   if(i29<1.1108002662658691){
    if(i1<0.06133893132209778){
     s0+=133.0;
     s1+=48.0;
    } else {
     s0+=36.0;
     s1+=255.0;
    }
   } else {
    if(i45<2.586841583251953e-05){
     s0+=394.0;
     s1+=157.0;
    } else {
     s0+=963.0;
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i3<0.07071346044540405){
  if(i4<3.746151924133301e-05){
   if(i63<0.0019828712102025747){
    if(i2<-4.029273986816406e-05){
     s0+=577.0;
     s1+=15.0;
    } else {
     s0+=569.0;
     s1+=88.0;
    }
   } else {
    if(i21<0.0030598174780607224){
     s0+=1.0;
    } else {
     s1+=36.0;
    }
   }
  } else {
   if(i29<1.5682398080825806){
    if(i22<1.0413084030151367){
     s0+=67.0;
     s1+=2.0;
    } else {
     s0+=81.0;
     s1+=584.0;
    }
   } else {
    if(i16<0.017105024307966232){
     s0+=117.0;
     s1+=9.0;
    } else {
     s1+=50.0;
    }
   }
  }
 } else {
  if(i65<1.0016663074493408){
   if(i6<-4.696772157330997e-05){
    if(i14<1.0154021978378296){
     s0+=122.0;
     s1+=2511.0;
    } else {
     s1+=6743.0;
    }
   } else {
    if(i2<0.0006006956100463867){
     s0+=121.0;
     s1+=95.0;
    } else {
     s0+=5.0;
     s1+=219.0;
    }
   }
  } else {
   if(i6<-7.997998909559101e-05){
    if(i45<0.00022724270820617676){
     s0+=22.0;
     s1+=6.0;
    } else {
     s0+=30.0;
     s1+=654.0;
    }
   } else {
    if(i57<0.12748786807060242){
     s0+=176.0;
     s1+=61.0;
    } else {
     s0+=1.0;
     s1+=84.0;
    }
   }
  }
 }
}
if(i8<1.0527000427246094){
 if(i0<0.08244869112968445){
  if(i2<0.0007429718971252441){
   if(i22<1.0451585054397583){
    if(i48<-0.005761325359344482){
     s0+=818.0;
     s1+=64.0;
    } else {
     s0+=53171.0;
     s1+=157.0;
    }
   } else {
    if(i29<1.1013743877410889){
     s0+=2394.0;
     s1+=781.0;
    } else {
     s0+=7121.0;
     s1+=166.0;
    }
   }
  } else {
   if(i6<-4.261913272785023e-05){
    if(i68<1.0142477750778198){
     s1+=122.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i29<1.175731897354126){
     s0+=3.0;
     s1+=6.0;
    } else {
     s0+=52.0;
    }
   }
  }
 } else {
  if(i34<0.0004564787959679961){
   if(i35<1.0596027374267578){
    s0+=192.0;
   } else {
    if(i4<1.8477439880371094e-06){
     s0+=9.0;
     s1+=2.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i3<0.08240824937820435){
    if(i35<1.1013743877410889){
     s0+=15.0;
     s1+=12.0;
    } else {
     s0+=108.0;
    }
   } else {
    if(i12<0.9936365485191345){
     s0+=162.0;
     s1+=49.0;
    } else {
     s0+=32.0;
     s1+=703.0;
    }
   }
  }
 }
} else {
 if(i1<0.08375519514083862){
  if(i2<0.0005258917808532715){
   if(i34<0.0011287308298051357){
    if(i32<0.0005124668823555112){
     s0+=1115.0;
     s1+=124.0;
    } else {
     s0+=152.0;
     s1+=518.0;
    }
   } else {
    if(i21<0.02314547449350357){
     s0+=3221.0;
     s1+=118.0;
    } else {
     s0+=1017.0;
     s1+=255.0;
    }
   }
  } else {
   if(i33<1.2524442672729492){
    if(i71<1.0454787015914917){
     s0+=4.0;
     s1+=779.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i53<0.001649721059948206){
     s0+=124.0;
     s1+=23.0;
    } else {
     s0+=94.0;
     s1+=266.0;
    }
   }
  }
 } else {
  if(i2<0.0001462697982788086){
   if(i16<0.0017946171574294567){
    if(i19<0.9983111619949341){
     s0+=63.0;
     s1+=70.0;
    } else {
     s0+=383.0;
     s1+=49.0;
    }
   } else {
    if(i13<0.9980425834655762){
     s0+=249.0;
    } else {
     s0+=226.0;
     s1+=1276.0;
    }
   }
  } else {
   if(i15<0.00023323297500610352){
    if(i31<0.00507179694250226){
     s0+=244.0;
     s1+=410.0;
    } else {
     s0+=100.0;
     s1+=1387.0;
    }
   } else {
    if(i32<0.0018843271536752582){
     s0+=42.0;
     s1+=1042.0;
    } else {
     s0+=17.0;
     s1+=8731.0;
    }
   }
  }
 }
}
if(i0<0.08502736687660217){
 if(i4<4.112720489501953e-05){
  if(i8<1.042891263961792){
   if(i22<1.0428826808929443){
    if(i46<-0.0017419755458831787){
     s0+=587.0;
     s1+=47.0;
    } else {
     s0+=51192.0;
     s1+=104.0;
    }
   } else {
    if(i31<0.000861715292558074){
     s0+=2736.0;
     s1+=459.0;
    } else {
     s0+=5897.0;
     s1+=83.0;
    }
   }
  } else {
   if(i32<0.0014339322224259377){
    if(i29<1.0850647687911987){
     s0+=1477.0;
    } else {
     s0+=2626.0;
     s1+=1112.0;
    }
   } else {
    if(i7<0.07539719343185425){
     s0+=4239.0;
     s1+=254.0;
    } else {
     s0+=55.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i65<0.9975854754447937){
   if(i13<1.0038692951202393){
    s0+=264.0;
   } else {
    s1+=3.0;
   }
  } else {
   if(i59<0.0029335618019104004){
    if(i64<-0.013928234577178955){
     s0+=46.0;
     s1+=8.0;
    } else {
     s0+=105.0;
     s1+=872.0;
    }
   } else {
    if(i45<0.0002486109733581543){
     s0+=92.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i2<1.722574234008789e-05){
  if(i68<0.9974949359893799){
   if(i32<0.004754847846925259){
    if(i41<-2.5220156203431543e-06){
     s0+=39.0;
     s1+=23.0;
    } else {
     s0+=534.0;
    }
   } else {
    if(i7<0.09959295392036438){
     s0+=11.0;
     s1+=1.0;
    } else {
     s1+=52.0;
    }
   }
  } else {
   if(i16<0.0016348559875041246){
    if(i19<0.998379111289978){
     s0+=82.0;
     s1+=63.0;
    } else {
     s0+=278.0;
     s1+=32.0;
    }
   } else {
    if(i21<0.02842249907553196){
     s0+=289.0;
     s1+=403.0;
    } else {
     s0+=99.0;
     s1+=891.0;
    }
   }
  }
 } else {
  if(i18<6.99162483215332e-05){
   if(i16<0.004122932441532612){
    if(i36<0.04564005136489868){
     s0+=29.0;
     s1+=324.0;
    } else {
     s0+=342.0;
     s1+=79.0;
    }
   } else {
    if(i37<0.012914571911096573){
     s0+=87.0;
     s1+=77.0;
    } else {
     s0+=42.0;
     s1+=2143.0;
    }
   }
  } else {
   if(i16<0.0021832024212926626){
    if(i51<0.00386965274810791){
     s0+=24.0;
     s1+=227.0;
    } else {
     s0+=46.0;
     s1+=6.0;
    }
   } else {
    if(i52<0.9957545399665833){
     s0+=1.0;
    } else {
     s0+=16.0;
     s1+=9684.0;
    }
   }
  }
 }
}
if(i1<0.0782996118068695){
 if(i58<-7.463875590474345e-06){
  if(i39<0.00047400512266904116){
   s0+=8.0;
  } else {
   if(i31<0.013782026246190071){
    if(i26<0.0001557566865812987){
     s0+=2.0;
    } else {
     s1+=399.0;
    }
   } else {
    if(i15<0.0006333589553833008){
     s0+=6.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i4<4.017353057861328e-05){
   if(i21<0.01488492637872696){
    if(i35<1.0557184219360352){
     s0+=40659.0;
    } else {
     s0+=16401.0;
     s1+=711.0;
    }
   } else {
    if(i29<1.100754976272583){
     s0+=2258.0;
     s1+=1035.0;
    } else {
     s0+=9338.0;
     s1+=421.0;
    }
   }
  } else {
   if(i33<1.0677311420440674){
    s0+=234.0;
   } else {
    if(i30<1.2160736322402954){
     s0+=9.0;
     s1+=507.0;
    } else {
     s0+=257.0;
     s1+=232.0;
    }
   }
  }
 }
} else {
 if(i3<0.11256253719329834){
  if(i48<0.013744086027145386){
   if(i61<0.03495287895202637){
    if(i38<0.06733402609825134){
     s0+=16.0;
     s1+=1289.0;
    } else {
     s0+=74.0;
     s1+=196.0;
    }
   } else {
    if(i53<0.0013186149299144745){
     s0+=229.0;
     s1+=39.0;
    } else {
     s0+=83.0;
     s1+=121.0;
    }
   }
  } else {
   if(i26<0.0010787261417135596){
    if(i57<0.038864508271217346){
     s0+=89.0;
     s1+=21.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   } else {
    if(i23<1.0204899311065674){
     s1+=1.0;
    } else {
     s0+=567.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i16<0.004695648327469826){
   if(i36<0.07926532626152039){
    if(i33<1.0670123100280762){
     s0+=48.0;
    } else {
     s0+=61.0;
     s1+=1332.0;
    }
   } else {
    if(i34<0.005353203043341637){
     s0+=493.0;
     s1+=43.0;
    } else {
     s0+=62.0;
     s1+=129.0;
    }
   }
  } else {
   if(i30<1.0610969066619873){
    s0+=18.0;
   } else {
    if(i66<1.5220981595120975e-06){
     s0+=31.0;
     s1+=10739.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
}
if(i0<0.0824936032295227){
 if(i54<-0.029056847095489502){
  if(i4<2.676248550415039e-05){
   if(i19<1.000474452972412){
    if(i1<0.03848394751548767){
     s0+=1992.0;
     s1+=197.0;
    } else {
     s0+=145.0;
     s1+=155.0;
    }
   } else {
    if(i28<0.9257700443267822){
     s0+=107.0;
     s1+=7.0;
    } else {
     s0+=132.0;
     s1+=175.0;
    }
   }
  } else {
   if(i28<1.016250729560852){
    if(i35<1.0585354566574097){
     s0+=5.0;
    } else {
     s0+=23.0;
     s1+=499.0;
    }
   } else {
    if(i3<0.06357896327972412){
     s0+=26.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i17<1.0060404539108276){
   if(i40<0.00028574481257237494){
    if(i5<1.0013792514801025){
     s0+=44305.0;
     s1+=26.0;
    } else {
     s0+=1281.0;
     s1+=27.0;
    }
   } else {
    if(i34<0.0010480068158358335){
     s0+=5374.0;
     s1+=1191.0;
    } else {
     s0+=15104.0;
     s1+=320.0;
    }
   }
  } else {
   if(i39<0.001000773860141635){
    if(i33<1.2392117977142334){
     s0+=2.0;
     s1+=353.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i5<1.004171371459961){
     s0+=560.0;
     s1+=5.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i11<-1.4722347259521484e-05){
  if(i45<-0.00012871623039245605){
   if(i55<0.0026237480342388153){
    if(i11<-1.576542854309082e-05){
     s0+=621.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i69<0.08523231744766235){
    s0+=46.0;
   } else {
    if(i17<0.9754793643951416){
     s0+=3.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i12<1.0006725788116455){
   if(i6<-1.2701755622401834e-05){
    if(i61<0.028182625770568848){
     s0+=181.0;
     s1+=2242.0;
    } else {
     s0+=422.0;
     s1+=951.0;
    }
   } else {
    if(i46<0.002843499183654785){
     s0+=131.0;
     s1+=241.0;
    } else {
     s0+=480.0;
     s1+=94.0;
    }
   }
  } else {
   if(i12<1.006035327911377){
    if(i34<0.00026450568111613393){
     s0+=10.0;
    } else {
     s0+=171.0;
     s1+=2172.0;
    }
   } else {
    if(i2<0.000867694616317749){
     s0+=40.0;
     s1+=535.0;
    } else {
     s0+=3.0;
     s1+=7833.0;
    }
   }
  }
 }
}
if(i20<1.0106360912322998){
 if(i6<-6.216151814442128e-05){
  if(i8<1.0409984588623047){
   if(i5<1.001586675643921){
    if(i63<0.0022107106633484364){
     s0+=974.0;
     s1+=7.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i58<2.419760130578652e-05){
     s0+=1.0;
     s1+=102.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.016959041357040405){
    if(i12<1.0028870105743408){
     s0+=170.0;
     s1+=15.0;
    } else {
     s0+=12.0;
     s1+=39.0;
    }
   } else {
    if(i15<-0.000802457332611084){
     s0+=322.0;
     s1+=705.0;
    } else {
     s0+=34.0;
     s1+=2094.0;
    }
   }
  }
 } else {
  if(i3<0.07891923189163208){
   if(i48<-0.005656927824020386){
    if(i3<0.043850988149642944){
     s0+=3020.0;
     s1+=470.0;
    } else {
     s0+=268.0;
     s1+=328.0;
    }
   } else {
    if(i28<1.0067417621612549){
     s0+=62277.0;
     s1+=841.0;
    } else {
     s0+=1067.0;
     s1+=189.0;
    }
   }
  } else {
   if(i45<-0.00013932585716247559){
    if(i4<-3.55839729309082e-05){
     s0+=386.0;
    } else {
     s0+=47.0;
     s1+=9.0;
    }
   } else {
    if(i6<-7.434300641762093e-06){
     s0+=264.0;
     s1+=1374.0;
    } else {
     s0+=336.0;
     s1+=170.0;
    }
   }
  }
 }
} else {
 if(i3<0.0961209237575531){
  if(i2<0.0009381473064422607){
   if(i35<1.083398699760437){
    if(i41<-2.4510425191692775e-06){
     s0+=7.0;
     s1+=295.0;
    } else {
     s0+=77.0;
     s1+=4.0;
    }
   } else {
    if(i66<-1.3521482287615072e-05){
     s0+=1.0;
     s1+=22.0;
    } else {
     s0+=1424.0;
     s1+=139.0;
    }
   }
  } else {
   if(i48<0.019614040851593018){
    if(i32<0.00900875125080347){
     s1+=275.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i18<6.431341171264648e-05){
   if(i6<-1.4964103684178554e-05){
    if(i60<-0.010068230330944061){
     s0+=162.0;
     s1+=565.0;
    } else {
     s0+=63.0;
     s1+=950.0;
    }
   } else {
    if(i16<0.0055901180021464825){
     s0+=259.0;
     s1+=82.0;
    } else {
     s1+=41.0;
    }
   }
  } else {
   if(i4<4.4405460357666016e-06){
    if(i58<2.1455548449011985e-06){
     s0+=16.0;
     s1+=17.0;
    } else {
     s1+=41.0;
    }
   } else {
    if(i10<0.000425875186920166){
     s0+=20.0;
     s1+=1377.0;
    } else {
     s1+=6864.0;
    }
   }
  }
 }
}
if(i3<0.08204472064971924){
 if(i12<1.0051043033599854){
  if(i2<0.0005658268928527832){
   if(i70<0.018907319754362106){
    if(i46<-0.002917945384979248){
     s0+=117.0;
     s1+=66.0;
    } else {
     s0+=51519.0;
     s1+=334.0;
    }
   } else {
    if(i33<1.103413462638855){
     s0+=3949.0;
     s1+=1110.0;
    } else {
     s0+=13293.0;
     s1+=455.0;
    }
   }
  } else {
   if(i37<0.008889742195606232){
    if(i62<0.0008738668402656913){
     s0+=213.0;
     s1+=17.0;
    } else {
     s0+=30.0;
     s1+=35.0;
    }
   } else {
    if(i48<0.00387495756149292){
     s0+=44.0;
     s1+=288.0;
    } else {
     s0+=36.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i6<-5.7990844652522355e-05){
   if(i66<-4.091685241291998e-06){
    if(i15<-0.0008548200130462646){
     s0+=6.0;
     s1+=25.0;
    } else {
     s0+=3.0;
     s1+=556.0;
    }
   } else {
    if(i28<1.0119682550430298){
     s0+=16.0;
     s1+=4.0;
    } else {
     s1+=19.0;
    }
   }
  } else {
   if(i33<1.1117658615112305){
    s1+=69.0;
   } else {
    if(i64<0.004797109868377447){
     s0+=333.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3539904102799483e-05){
  if(i4<5.561113357543945e-05){
   if(i10<-0.00044786930084228516){
    if(i65<1.0010998249053955){
     s0+=50.0;
    } else {
     s0+=1.0;
     s1+=7.0;
    }
   } else {
    if(i29<1.2371783256530762){
     s0+=16.0;
     s1+=1902.0;
    } else {
     s0+=557.0;
     s1+=2113.0;
    }
   }
  } else {
   if(i65<0.9959508776664734){
    s0+=13.0;
   } else {
    if(i21<0.02173350751399994){
     s0+=34.0;
     s1+=1632.0;
    } else {
     s0+=13.0;
     s1+=7981.0;
    }
   }
  }
 } else {
  if(i36<0.049117088317871094){
   if(i30<1.067516803741455){
    s0+=71.0;
   } else {
    if(i16<0.0015773925697430968){
     s0+=42.0;
     s1+=18.0;
    } else {
     s0+=30.0;
     s1+=230.0;
    }
   }
  } else {
   if(i13<1.0016975402832031){
    if(i34<0.005288185551762581){
     s0+=772.0;
     s1+=56.0;
    } else {
     s0+=82.0;
     s1+=57.0;
    }
   } else {
    s1+=25.0;
   }
  }
 }
}
if(i5<1.0023715496063232){
 if(i3<0.08358383178710938){
  if(i26<0.00030578210134990513){
   if(i27<1.0086326599121094){
    if(i55<0.0002802804228849709){
     s0+=52126.0;
     s1+=87.0;
    } else {
     s0+=1135.0;
     s1+=148.0;
    }
   } else {
    if(i30<1.0823450088500977){
     s0+=17.0;
     s1+=59.0;
    } else {
     s0+=175.0;
     s1+=14.0;
    }
   }
  } else {
   if(i35<1.1036889553070068){
    if(i31<0.0003966508957091719){
     s0+=2315.0;
     s1+=40.0;
    } else {
     s0+=2366.0;
     s1+=1222.0;
    }
   } else {
    if(i48<-0.00966256856918335){
     s0+=2081.0;
     s1+=295.0;
    } else {
     s0+=8998.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i44<0.9988081455230713){
   if(i16<0.013163605704903603){
    if(i13<0.9980322122573853){
     s0+=407.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=12.0;
   }
  } else {
   if(i21<0.02879595384001732){
    if(i26<0.0010952698066830635){
     s0+=172.0;
     s1+=882.0;
    } else {
     s0+=699.0;
     s1+=469.0;
    }
   } else {
    if(i6<-8.3722552517429e-06){
     s0+=134.0;
     s1+=2142.0;
    } else {
     s0+=103.0;
     s1+=111.0;
    }
   }
  }
 }
} else {
 if(i26<0.00019374521798454225){
  if(i63<0.0005250343238003552){
   if(i30<1.1386182308197021){
    if(i15<0.0006801486015319824){
     s0+=30.0;
    } else {
     s1+=8.0;
    }
   } else {
    s0+=119.0;
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i16<0.002366593573242426){
   if(i10<0.0005146265029907227){
    if(i2<0.0009655952453613281){
     s0+=139.0;
     s1+=15.0;
    } else {
     s1+=36.0;
    }
   } else {
    if(i5<1.003487229347229){
     s0+=3.0;
     s1+=9.0;
    } else {
     s1+=160.0;
    }
   }
  } else {
   if(i18<6.079673767089844e-06){
    if(i8<1.124168038368225){
     s0+=177.0;
     s1+=447.0;
    } else {
     s1+=673.0;
    }
   } else {
    if(i5<1.002701759338379){
     s0+=7.0;
     s1+=193.0;
    } else {
     s0+=7.0;
     s1+=9869.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i27<1.0081523656845093){
  if(i7<0.08111581206321716){
   if(i3<0.08422437310218811){
    if(i22<1.0451585054397583){
     s0+=54259.0;
     s1+=230.0;
    } else {
     s0+=13015.0;
     s1+=1564.0;
    }
   } else {
    if(i2<-0.0007506310939788818){
     s0+=131.0;
     s1+=18.0;
    } else {
     s0+=83.0;
     s1+=463.0;
    }
   }
  } else {
   if(i6<-9.862080332823098e-06){
    if(i64<-0.023454565554857254){
     s0+=215.0;
     s1+=504.0;
    } else {
     s0+=80.0;
     s1+=909.0;
    }
   } else {
    if(i45<-0.00013780593872070312){
     s0+=225.0;
    } else {
     s0+=223.0;
     s1+=109.0;
    }
   }
  }
 } else {
  if(i3<0.08245521783828735){
   if(i1<0.0607258677482605){
    if(i40<0.00044283142779022455){
     s0+=65.0;
     s1+=76.0;
    } else {
     s0+=1465.0;
     s1+=116.0;
    }
   } else {
    if(i38<0.04296961426734924){
     s0+=8.0;
     s1+=127.0;
    } else {
     s0+=409.0;
     s1+=65.0;
    }
   }
  } else {
   if(i53<0.001138449995778501){
    if(i23<1.0847015380859375){
     s0+=93.0;
     s1+=562.0;
    } else {
     s0+=373.0;
     s1+=82.0;
    }
   } else {
    if(i45<-0.00024333596229553223){
     s0+=31.0;
     s1+=4.0;
    } else {
     s0+=58.0;
     s1+=1043.0;
    }
   }
  }
 }
} else {
 if(i4<6.216764450073242e-05){
  if(i0<0.07515686750411987){
   if(i39<0.0016415605787187815){
    if(i41<-1.3735519132751506e-05){
     s1+=171.0;
    } else {
     s0+=19.0;
     s1+=14.0;
    }
   } else {
    if(i63<0.0009693210595287383){
     s0+=163.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=27.0;
    }
   }
  } else {
   if(i37<0.009997805580496788){
    if(i31<0.00265548937022686){
     s1+=134.0;
    } else {
     s0+=52.0;
     s1+=3.0;
    }
   } else {
    if(i16<0.002408205531537533){
     s0+=9.0;
    } else {
     s0+=6.0;
     s1+=832.0;
    }
   }
  }
 } else {
  if(i16<0.00029878912027925253){
   if(i69<0.05703456699848175){
    s0+=3.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i15<3.6835670471191406e-05){
    if(i29<1.613681674003601){
     s0+=27.0;
     s1+=742.0;
    } else {
     s0+=63.0;
     s1+=134.0;
    }
   } else {
    if(i7<0.0013246536254882812){
     s0+=3.0;
     s1+=46.0;
    } else {
     s0+=4.0;
     s1+=9185.0;
    }
   }
  }
 }
}
if(i14<1.0081671476364136){
 if(i2<0.0006021559238433838){
  if(i0<0.08219248056411743){
   if(i40<0.0003098250017501414){
    if(i28<1.009287714958191){
     s0+=46918.0;
     s1+=63.0;
    } else {
     s0+=6.0;
     s1+=12.0;
    }
   } else {
    if(i18<-0.0002320408821105957){
     s0+=11355.0;
     s1+=162.0;
    } else {
     s0+=9431.0;
     s1+=1559.0;
    }
   }
  } else {
   if(i5<0.9956993460655212){
    if(i30<1.423269510269165){
     s0+=647.0;
     s1+=7.0;
    } else {
     s0+=97.0;
     s1+=100.0;
    }
   } else {
    if(i61<0.025544196367263794){
     s0+=182.0;
     s1+=1290.0;
    } else {
     s0+=794.0;
     s1+=669.0;
    }
   }
  }
 } else {
  if(i40<0.00025345891481265426){
   s0+=73.0;
  } else {
   if(i2<0.0010117888450622559){
    if(i37<0.021384021267294884){
     s0+=114.0;
     s1+=208.0;
    } else {
     s0+=7.0;
     s1+=382.0;
    }
   } else {
    if(i32<0.010722000151872635){
     s0+=13.0;
     s1+=1420.0;
    } else {
     s0+=52.0;
     s1+=239.0;
    }
   }
  }
 }
} else {
 if(i13<1.0017695426940918){
  if(i6<-4.111640009796247e-05){
   if(i16<0.0017644533654674888){
    if(i22<1.1172666549682617){
     s0+=9.0;
     s1+=116.0;
    } else {
     s0+=39.0;
     s1+=14.0;
    }
   } else {
    if(i10<-0.00033283233642578125){
     s0+=7.0;
    } else {
     s0+=32.0;
     s1+=2579.0;
    }
   }
  } else {
   if(i35<1.107304573059082){
    if(i63<0.00011846140841953456){
     s0+=64.0;
     s1+=41.0;
    } else {
     s0+=8.0;
     s1+=250.0;
    }
   } else {
    if(i3<0.17904335260391235){
     s0+=1024.0;
     s1+=71.0;
    } else {
     s0+=58.0;
     s1+=260.0;
    }
   }
  }
 } else {
  if(i6<-4.700030694948509e-05){
   if(i29<1.613681674003601){
    if(i3<0.028025120496749878){
     s0+=3.0;
     s1+=22.0;
    } else {
     s0+=3.0;
     s1+=6371.0;
    }
   } else {
    if(i1<0.11212629079818726){
     s0+=33.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=1299.0;
    }
   }
  } else {
   if(i11<2.8014183044433594e-05){
    if(i70<0.10283425450325012){
     s0+=30.0;
     s1+=6.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i18<-0.00010865926742553711){
     s0+=5.0;
     s1+=8.0;
    } else {
     s1+=74.0;
    }
   }
  }
 }
}
if(i0<0.08346298336982727){
 if(i4<4.0471553802490234e-05){
  if(i22<1.0485899448394775){
   if(i51<-0.0012905597686767578){
    if(i32<0.0003423997841309756){
     s0+=934.0;
    } else {
     s0+=823.0;
     s1+=220.0;
    }
   } else {
    if(i62<0.00041651068022474647){
     s0+=48928.0;
     s1+=43.0;
    } else {
     s0+=5067.0;
     s1+=53.0;
    }
   }
  } else {
   if(i21<0.016560375690460205){
    if(i4<1.3768672943115234e-05){
     s0+=8252.0;
     s1+=358.0;
    } else {
     s0+=588.0;
     s1+=221.0;
    }
   } else {
    if(i34<0.0011273997370153666){
     s0+=311.0;
     s1+=757.0;
    } else {
     s0+=3799.0;
     s1+=387.0;
    }
   }
  }
 } else {
  if(i22<1.0413609743118286){
   s0+=239.0;
  } else {
   if(i51<0.0014709234237670898){
    if(i54<0.03388822078704834){
     s0+=101.0;
     s1+=884.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i40<0.0007229010807350278){
     s0+=2.0;
     s1+=18.0;
    } else {
     s0+=104.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i16<0.004822414368391037){
  if(i17<1.0079333782196045){
   if(i6<-9.4353763415711e-06){
    if(i71<1.0285389423370361){
     s0+=235.0;
     s1+=1087.0;
    } else {
     s0+=413.0;
     s1+=133.0;
    }
   } else {
    if(i52<1.0000700950622559){
     s0+=956.0;
     s1+=104.0;
    } else {
     s0+=42.0;
     s1+=71.0;
    }
   }
  } else {
   if(i8<1.2499003410339355){
    if(i0<0.08557218313217163){
     s0+=3.0;
     s1+=26.0;
    } else {
     s0+=3.0;
     s1+=1027.0;
    }
   } else {
    if(i8<1.2708971500396729){
     s0+=49.0;
     s1+=2.0;
    } else {
     s1+=18.0;
    }
   }
  }
 } else {
  if(i44<0.9988174438476562){
   if(i70<0.40862828493118286){
    s0+=83.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i0<0.09465035796165466){
    if(i18<-0.0002868175506591797){
     s0+=93.0;
     s1+=18.0;
    } else {
     s0+=36.0;
     s1+=382.0;
    }
   } else {
    if(i65<1.0057188272476196){
     s0+=88.0;
     s1+=11150.0;
    } else {
     s0+=25.0;
     s1+=60.0;
    }
   }
  }
 }
}
if(i3<0.08522835373878479){
 if(i5<1.0024776458740234){
  if(i47<0.007479788735508919){
   if(i51<-0.0013585686683654785){
    if(i29<1.100754976272583){
     s0+=791.0;
     s1+=448.0;
    } else {
     s0+=3227.0;
     s1+=102.0;
    }
   } else {
    if(i22<1.0485899448394775){
     s0+=53673.0;
     s1+=120.0;
    } else {
     s0+=8164.0;
     s1+=685.0;
    }
   }
  } else {
   if(i21<0.014674709178507328){
    if(i1<0.07409405708312988){
     s0+=2114.0;
     s1+=151.0;
    } else {
     s0+=16.0;
     s1+=28.0;
    }
   } else {
    if(i1<0.024784892797470093){
     s0+=1101.0;
     s1+=200.0;
    } else {
     s0+=427.0;
     s1+=483.0;
    }
   }
  }
 } else {
  if(i41<-1.4388753697858192e-05){
   if(i15<7.265806198120117e-05){
    if(i28<1.0096654891967773){
     s0+=68.0;
     s1+=220.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   } else {
    if(i16<0.0006734569324180484){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=751.0;
    }
   }
  } else {
   if(i29<1.2160128355026245){
    if(i34<0.00041775155114009976){
     s0+=3.0;
    } else {
     s1+=34.0;
    }
   } else {
    s0+=164.0;
   }
  }
 }
} else {
 if(i16<0.004998234566301107){
  if(i43<0.06342539191246033){
   if(i5<0.9955179691314697){
    s0+=93.0;
   } else {
    if(i3<0.09517800807952881){
     s0+=68.0;
     s1+=339.0;
    } else {
     s0+=5.0;
     s1+=1530.0;
    }
   }
  } else {
   if(i26<0.0017376233590766788){
    if(i41<-1.918179805215914e-06){
     s0+=91.0;
     s1+=313.0;
    } else {
     s0+=82.0;
     s1+=17.0;
    }
   } else {
    if(i21<0.026430349797010422){
     s0+=612.0;
     s1+=62.0;
    } else {
     s0+=327.0;
     s1+=209.0;
    }
   }
  }
 } else {
  if(i6<8.384877219214104e-07){
   if(i3<0.11216211318969727){
    if(i54<0.047736167907714844){
     s0+=8.0;
     s1+=868.0;
    } else {
     s0+=110.0;
     s1+=22.0;
    }
   } else {
    if(i6<-1.2699987564701587e-05){
     s0+=29.0;
     s1+=10368.0;
    } else {
     s0+=13.0;
     s1+=21.0;
    }
   }
  } else {
   if(i13<0.9994211196899414){
    s0+=52.0;
   } else {
    s1+=7.0;
   }
  }
 }
}
if(i14<1.0081498622894287){
 if(i1<0.07866069674491882){
  if(i13<1.0018415451049805){
   if(i57<0.026191487908363342){
    if(i48<-0.008593946695327759){
     s0+=474.0;
     s1+=180.0;
    } else {
     s0+=56625.0;
     s1+=420.0;
    }
   } else {
    if(i30<1.1823735237121582){
     s0+=3440.0;
     s1+=1032.0;
    } else {
     s0+=7106.0;
     s1+=130.0;
    }
   }
  } else {
   if(i56<0.00014528000610880554){
    if(i58<1.817863631004002e-05){
     s0+=83.0;
     s1+=396.0;
    } else {
     s0+=108.0;
     s1+=21.0;
    }
   } else {
    if(i54<-0.06343850493431091){
     s0+=15.0;
     s1+=102.0;
    } else {
     s0+=519.0;
     s1+=23.0;
    }
   }
  }
 } else {
  if(i11<-1.3887882232666016e-05){
   if(i67<-0.00167909637093544){
    s1+=3.0;
   } else {
    if(i58<4.288993659429252e-05){
     s0+=372.0;
     s1+=2.0;
    } else {
     s0+=23.0;
     s1+=5.0;
    }
   }
  } else {
   if(i34<0.006284734234213829){
    if(i59<0.00596126914024353){
     s0+=527.0;
     s1+=1536.0;
    } else {
     s0+=310.0;
     s1+=87.0;
    }
   } else {
    if(i57<0.05494273453950882){
     s0+=43.0;
     s1+=128.0;
    } else {
     s0+=44.0;
     s1+=1962.0;
    }
   }
  }
 }
} else {
 if(i16<0.0032239758875221014){
  if(i34<0.0011877178912982345){
   if(i12<1.0006167888641357){
    if(i41<-2.769521415757481e-06){
     s1+=53.0;
    } else {
     s0+=66.0;
     s1+=8.0;
    }
   } else {
    s1+=589.0;
   }
  } else {
   if(i0<0.12552595138549805){
    if(i2<0.0009399950504302979){
     s0+=1018.0;
     s1+=48.0;
    } else {
     s1+=24.0;
    }
   } else {
    if(i60<-0.010936068370938301){
     s0+=103.0;
     s1+=16.0;
    } else {
     s0+=27.0;
     s1+=361.0;
    }
   }
  }
 } else {
  if(i0<0.09109890460968018){
   if(i39<0.003599226474761963){
    if(i15<-0.0005612671375274658){
     s0+=4.0;
     s1+=4.0;
    } else {
     s1+=545.0;
    }
   } else {
    if(i11<2.187490463256836e-05){
     s0+=88.0;
     s1+=3.0;
    } else {
     s0+=17.0;
     s1+=53.0;
    }
   }
  } else {
   if(i10<-0.00026419758796691895){
    s0+=54.0;
   } else {
    if(i19<0.997543454170227){
     s0+=23.0;
     s1+=378.0;
    } else {
     s0+=14.0;
     s1+=9040.0;
    }
   }
  }
 }
}
if(i1<0.07751694321632385){
 if(i2<0.0006093978881835938){
  if(i3<0.0663367509841919){
   if(i50<0.0015014342498034239){
    if(i9<1.0410068035125732){
     s0+=56731.0;
     s1+=313.0;
    } else {
     s0+=3266.0;
     s1+=296.0;
    }
   } else {
    if(i12<0.9938126802444458){
     s0+=3059.0;
     s1+=86.0;
    } else {
     s0+=3451.0;
     s1+=837.0;
    }
   }
  } else {
   if(i25<1.004784345626831){
    if(i54<-0.003537476062774658){
     s0+=60.0;
     s1+=149.0;
    } else {
     s0+=2229.0;
     s1+=293.0;
    }
   } else {
    if(i67<-0.00042579718865454197){
     s0+=123.0;
     s1+=25.0;
    } else {
     s0+=50.0;
     s1+=207.0;
    }
   }
  }
 } else {
  if(i6<-4.32599445048254e-05){
   if(i18<4.1425228118896484e-06){
    if(i37<0.02111862227320671){
     s0+=100.0;
     s1+=103.0;
    } else {
     s0+=4.0;
     s1+=135.0;
    }
   } else {
    if(i16<0.0009168550022877753){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=791.0;
    }
   }
  } else {
   if(i72<0.00010696265962906182){
    if(i45<0.00016823410987854004){
     s0+=7.0;
    } else {
     s0+=2.0;
     s1+=64.0;
    }
   } else {
    if(i26<0.0004025284433737397){
     s0+=127.0;
     s1+=1.0;
    } else {
     s0+=40.0;
     s1+=29.0;
    }
   }
  }
 }
} else {
 if(i2<9.053945541381836e-05){
  if(i11<-1.3887882232666016e-05){
   if(i44<0.9997346997261047){
    if(i65<1.001167893409729){
     s0+=441.0;
     s1+=4.0;
    } else {
     s0+=19.0;
     s1+=6.0;
    }
   } else {
    if(i29<1.3665610551834106){
     s1+=9.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i16<0.0016580965602770448){
    if(i56<3.7202047678874806e-05){
     s0+=406.0;
     s1+=8.0;
    } else {
     s0+=53.0;
     s1+=119.0;
    }
   } else {
    if(i54<0.054368793964385986){
     s0+=89.0;
     s1+=1136.0;
    } else {
     s0+=286.0;
     s1+=459.0;
    }
   }
  }
 } else {
  if(i37<0.024053752422332764){
   if(i54<0.06487488746643066){
    if(i15<0.0006333589553833008){
     s0+=152.0;
     s1+=600.0;
    } else {
     s0+=15.0;
     s1+=2191.0;
    }
   } else {
    if(i13<1.0041471719741821){
     s0+=279.0;
     s1+=159.0;
    } else {
     s0+=1.0;
     s1+=118.0;
    }
   }
  } else {
   if(i13<1.001594066619873){
    if(i16<0.003074857871979475){
     s0+=67.0;
     s1+=30.0;
    } else {
     s0+=3.0;
     s1+=1676.0;
    }
   } else {
    if(i4<4.273653030395508e-05){
     s0+=1.0;
     s1+=188.0;
    } else {
     s1+=7148.0;
    }
   }
  }
 }
}
if(i22<1.0576403141021729){
 if(i3<0.08440104126930237){
  if(i3<0.06858852505683899){
   if(i62<0.000780005007982254){
    if(i5<1.0025372505187988){
     s0+=54250.0;
     s1+=212.0;
    } else {
     s0+=15.0;
     s1+=31.0;
    }
   } else {
    if(i34<0.000947487773373723){
     s0+=992.0;
     s1+=271.0;
    } else {
     s0+=1864.0;
     s1+=6.0;
    }
   }
  } else {
   if(i12<1.003570556640625){
    if(i28<1.0086654424667358){
     s0+=1288.0;
     s1+=129.0;
    } else {
     s0+=4.0;
     s1+=27.0;
    }
   } else {
    if(i18<9.644031524658203e-05){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=33.0;
    }
   }
  }
 } else {
  if(i13<0.9991066455841064){
   if(i68<0.9962342977523804){
    s0+=103.0;
   } else {
    if(i36<0.054416805505752563){
     s0+=3.0;
     s1+=13.0;
    } else {
     s0+=40.0;
     s1+=1.0;
    }
   }
  } else {
   if(i56<7.065745012369007e-05){
    if(i37<0.005655054003000259){
     s0+=28.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=174.0;
    }
   } else {
    if(i71<0.9966697692871094){
     s1+=2.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
} else {
 if(i3<0.08202600479125977){
  if(i33<1.1037919521331787){
   if(i6<-1.6322184819728136e-05){
    if(i41<-4.238992914906703e-06){
     s0+=10.0;
     s1+=828.0;
    } else {
     s0+=90.0;
     s1+=116.0;
    }
   } else {
    if(i59<-0.0022039413452148438){
     s0+=162.0;
     s1+=298.0;
    } else {
     s0+=1341.0;
     s1+=151.0;
    }
   }
  } else {
   if(i12<1.0082225799560547){
    if(i10<0.0006194710731506348){
     s0+=8903.0;
     s1+=406.0;
    } else {
     s0+=533.0;
     s1+=358.0;
    }
   } else {
    if(i6<-6.23130690655671e-05){
     s1+=156.0;
    } else {
     s0+=38.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i19<1.000713586807251){
   if(i13<0.9980631470680237){
    if(i15<-0.003141850233078003){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=323.0;
    }
   } else {
    if(i21<0.028788749128580093){
     s0+=637.0;
     s1+=988.0;
    } else {
     s0+=126.0;
     s1+=1866.0;
    }
   }
  } else {
   if(i1<0.13139590620994568){
    if(i46<0.004672825336456299){
     s0+=73.0;
     s1+=1701.0;
    } else {
     s0+=212.0;
     s1+=73.0;
    }
   } else {
    if(i61<0.07306498289108276){
     s0+=17.0;
     s1+=8242.0;
    } else {
     s0+=79.0;
     s1+=988.0;
    }
   }
  }
 }
}
if(i15<0.0007650852203369141){
 if(i42<0.00032491827732883394){
  if(i6<-3.9986101910471916e-05){
   if(i10<-7.125735282897949e-05){
    if(i27<1.0065991878509521){
     s0+=391.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=21.0;
    }
   } else {
    if(i31<0.0028075925074517727){
     s0+=3.0;
     s1+=219.0;
    } else {
     s0+=83.0;
     s1+=39.0;
    }
   }
  } else {
   if(i28<1.0078277587890625){
    if(i50<0.0017732649575918913){
     s0+=55525.0;
     s1+=379.0;
    } else {
     s0+=668.0;
     s1+=180.0;
    }
   } else {
    if(i3<0.07554316520690918){
     s0+=557.0;
     s1+=48.0;
    } else {
     s0+=22.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i7<0.07072809338569641){
   if(i4<8.52346420288086e-06){
    if(i17<0.9874435663223267){
     s0+=5936.0;
     s1+=139.0;
    } else {
     s0+=4537.0;
     s1+=1094.0;
    }
   } else {
    if(i21<0.00884207896888256){
     s0+=246.0;
     s1+=36.0;
    } else {
     s0+=555.0;
     s1+=783.0;
    }
   }
  } else {
   if(i36<0.04246121644973755){
    if(i45<-0.00024577975273132324){
     s0+=23.0;
    } else {
     s0+=75.0;
     s1+=2141.0;
    }
   } else {
    if(i21<0.03055531531572342){
     s0+=1311.0;
     s1+=467.0;
    } else {
     s0+=395.0;
     s1+=1567.0;
    }
   }
  }
 }
} else {
 if(i2<0.0005483627319335938){
  if(i52<0.9998893737792969){
   if(i4<-2.980232238769531e-07){
    if(i69<0.44193777441978455){
     s0+=83.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i11<-1.5050172805786133e-05){
     s0+=1.0;
    } else {
     s1+=479.0;
    }
   }
  } else {
   if(i38<0.06810563802719116){
    if(i35<1.099029779434204){
     s0+=100.0;
     s1+=33.0;
    } else {
     s0+=354.0;
     s1+=5.0;
    }
   } else {
    if(i16<0.0026282649487257004){
     s0+=8.0;
    } else {
     s1+=57.0;
    }
   }
  }
 } else {
  if(i6<-4.334273762651719e-05){
   if(i37<0.005716691724956036){
    if(i2<0.0009020566940307617){
     s0+=1.0;
     s1+=58.0;
    } else {
     s1+=436.0;
    }
   } else {
    s1+=8861.0;
   }
  } else {
   if(i29<1.2392117977142334){
    s1+=38.0;
   } else {
    s0+=170.0;
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i0<0.08370932936668396){
  if(i51<-0.0012906789779663086){
   if(i1<0.04358944296836853){
    if(i34<0.0011057029478251934){
     s0+=1188.0;
     s1+=396.0;
    } else {
     s0+=3363.0;
     s1+=119.0;
    }
   } else {
    if(i12<0.9940687417984009){
     s0+=306.0;
     s1+=28.0;
    } else {
     s0+=218.0;
     s1+=369.0;
    }
   }
  } else {
   if(i10<0.0006665885448455811){
    if(i28<1.0073168277740479){
     s0+=58981.0;
     s1+=474.0;
    } else {
     s0+=570.0;
     s1+=126.0;
    }
   } else {
    if(i4<4.979968070983887e-05){
     s0+=106.0;
     s1+=23.0;
    } else {
     s0+=1.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i13<0.9985049366950989){
   if(i27<1.0081255435943604){
    if(i30<1.146665096282959){
     s0+=292.0;
    } else {
     s0+=82.0;
     s1+=8.0;
    }
   } else {
    s1+=1.0;
   }
  } else {
   if(i58<1.8275415641255677e-05){
    if(i43<0.05523008108139038){
     s0+=8.0;
     s1+=832.0;
    } else {
     s0+=36.0;
     s1+=101.0;
    }
   } else {
    if(i7<0.08452185988426208){
     s0+=75.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=93.0;
    }
   }
  }
 }
} else {
 if(i14<1.012406349182129){
  if(i30<1.3825137615203857){
   if(i68<1.0004937648773193){
    if(i13<0.9986628293991089){
     s0+=1323.0;
     s1+=4.0;
    } else {
     s0+=2523.0;
     s1+=1033.0;
    }
   } else {
    if(i59<0.0037006139755249023){
     s0+=503.0;
     s1+=1708.0;
    } else {
     s0+=859.0;
     s1+=480.0;
    }
   }
  } else {
   if(i8<1.0819685459136963){
    if(i17<0.9938766956329346){
     s0+=156.0;
     s1+=22.0;
    } else {
     s0+=1.0;
     s1+=44.0;
    }
   } else {
    if(i32<0.00463526789098978){
     s0+=11.0;
    } else {
     s0+=11.0;
     s1+=1651.0;
    }
   }
  }
 } else {
  if(i0<0.08666780591011047){
   if(i41<-1.4088325769989751e-05){
    if(i65<1.0023267269134521){
     s0+=7.0;
     s1+=227.0;
    } else {
     s0+=22.0;
     s1+=1.0;
    }
   } else {
    if(i9<1.0819296836853027){
     s0+=66.0;
     s1+=53.0;
    } else {
     s0+=193.0;
     s1+=4.0;
    }
   }
  } else {
   if(i63<0.00023444204998668283){
    if(i71<1.0726828575134277){
     s0+=50.0;
     s1+=492.0;
    } else {
     s0+=69.0;
     s1+=52.0;
    }
   } else {
    if(i53<0.0010380058083683252){
     s0+=89.0;
     s1+=631.0;
    } else {
     s0+=24.0;
     s1+=8022.0;
    }
   }
  }
 }
}
if(i27<1.0084869861602783){
 if(i5<1.0024569034576416){
  if(i9<1.0452215671539307){
   if(i22<1.0451585054397583){
    if(i62<0.0006791572086513042){
     s0+=50939.0;
     s1+=68.0;
    } else {
     s0+=3274.0;
     s1+=181.0;
    }
   } else {
    if(i32<0.0014561788411810994){
     s0+=4417.0;
     s1+=1287.0;
    } else {
     s0+=5891.0;
     s1+=295.0;
    }
   }
  } else {
   if(i3<0.09300693869590759){
    if(i48<0.010018080472946167){
     s0+=1996.0;
     s1+=607.0;
    } else {
     s0+=975.0;
     s1+=24.0;
    }
   } else {
    if(i36<0.0592498779296875){
     s0+=44.0;
     s1+=1029.0;
    } else {
     s0+=537.0;
     s1+=419.0;
    }
   }
  }
 } else {
  if(i2<0.0005713105201721191){
   if(i66<-4.7696394176455215e-06){
    if(i12<1.0009310245513916){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=21.0;
    }
   } else {
    if(i28<0.968237042427063){
     s1+=2.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i5<1.0045181512832642){
    if(i0<0.04464066028594971){
     s0+=60.0;
     s1+=69.0;
    } else {
     s0+=70.0;
     s1+=688.0;
    }
   } else {
    if(i3<0.0124758780002594){
     s0+=4.0;
     s1+=15.0;
    } else {
     s0+=11.0;
     s1+=1565.0;
    }
   }
  }
 }
} else {
 if(i0<0.08337682485580444){
  if(i19<1.0026278495788574){
   if(i30<1.1040980815887451){
    if(i63<0.00015524965419899672){
     s0+=331.0;
     s1+=98.0;
    } else {
     s0+=14.0;
     s1+=216.0;
    }
   } else {
    if(i16<0.005663721822202206){
     s0+=1478.0;
     s1+=44.0;
    } else {
     s0+=7.0;
     s1+=17.0;
    }
   }
  } else {
   if(i6<-4.30513646278996e-05){
    if(i40<0.001120865810662508){
     s0+=1.0;
     s1+=257.0;
    } else {
     s0+=28.0;
     s1+=42.0;
    }
   } else {
    if(i33<1.137132167816162){
     s1+=8.0;
    } else {
     s0+=99.0;
    }
   }
  }
 } else {
  if(i41<-9.435942956770305e-06){
   if(i15<5.692243576049805e-06){
    if(i30<1.2582359313964844){
     s0+=163.0;
     s1+=180.0;
    } else {
     s0+=12.0;
     s1+=503.0;
    }
   } else {
    if(i16<0.0020408062264323235){
     s0+=45.0;
     s1+=127.0;
    } else {
     s0+=5.0;
     s1+=8807.0;
    }
   }
  } else {
   if(i46<0.004951775074005127){
    if(i41<-6.326711172732757e-07){
     s0+=63.0;
     s1+=631.0;
    } else {
     s0+=43.0;
     s1+=18.0;
    }
   } else {
    if(i63<0.000282921246252954){
     s0+=233.0;
     s1+=42.0;
    } else {
     s0+=84.0;
     s1+=120.0;
    }
   }
  }
 }
}
if(i7<0.07267343997955322){
 if(i2<0.0006021559238433838){
  if(i26<0.0002845666604116559){
   if(i17<1.0046436786651611){
    if(i28<1.0086095333099365){
     s0+=52213.0;
     s1+=178.0;
    } else {
     s0+=52.0;
     s1+=24.0;
    }
   } else {
    if(i33<1.1351666450500488){
     s0+=13.0;
     s1+=86.0;
    } else {
     s0+=356.0;
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.07799866795539856){
    if(i12<0.9942048788070679){
     s0+=9257.0;
     s1+=155.0;
    } else {
     s0+=7134.0;
     s1+=1621.0;
    }
   } else {
    if(i10<-0.00039073824882507324){
     s0+=69.0;
    } else {
     s0+=36.0;
     s1+=651.0;
    }
   }
  }
 } else {
  if(i16<0.0021283149253576994){
   if(i8<1.0645793676376343){
    if(i1<0.06475639343261719){
     s0+=118.0;
     s1+=1.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i41<-1.4801516044826712e-05){
     s1+=38.0;
    } else {
     s0+=40.0;
    }
   }
  } else {
   if(i19<0.9978876113891602){
    if(i67<-0.0005093954387120903){
     s1+=5.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i54<0.03388822078704834){
     s0+=83.0;
     s1+=1804.0;
    } else {
     s0+=41.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i3<0.11252734065055847){
  if(i54<0.045036494731903076){
   if(i6<-2.339185812161304e-05){
    if(i27<1.0331599712371826){
     s0+=73.0;
     s1+=803.0;
    } else {
     s0+=34.0;
     s1+=8.0;
    }
   } else {
    if(i59<-0.0011697709560394287){
     s0+=34.0;
     s1+=58.0;
    } else {
     s0+=359.0;
     s1+=88.0;
    }
   }
  } else {
   if(i12<1.0087687969207764){
    if(i46<0.0043562352657318115){
     s0+=223.0;
     s1+=60.0;
    } else {
     s0+=498.0;
     s1+=9.0;
    }
   } else {
    s1+=9.0;
   }
  }
 } else {
  if(i34<0.006081569939851761){
   if(i49<0.00691908597946167){
    if(i4<-5.838274955749512e-05){
     s0+=49.0;
    } else {
     s0+=83.0;
     s1+=2088.0;
    }
   } else {
    if(i72<8.81635642144829e-05){
     s0+=365.0;
     s1+=73.0;
    } else {
     s0+=129.0;
     s1+=181.0;
    }
   }
  } else {
   if(i35<1.2527469396591187){
    if(i43<0.09011441469192505){
     s0+=4.0;
     s1+=1016.0;
    } else {
     s0+=50.0;
     s1+=280.0;
    }
   } else {
    if(i1<0.12478673458099365){
     s0+=6.0;
     s1+=78.0;
    } else {
     s1+=7569.0;
    }
   }
  }
 }
}
if(i28<1.0088505744934082){
 if(i11<1.9490718841552734e-05){
  if(i1<0.08157229423522949){
   if(i51<-0.0012702345848083496){
    if(i31<0.0008704282809048891){
     s0+=1597.0;
     s1+=724.0;
    } else {
     s0+=4159.0;
     s1+=265.0;
    }
   } else {
    if(i26<0.0003019307623617351){
     s0+=52421.0;
     s1+=149.0;
    } else {
     s0+=8638.0;
     s1+=730.0;
    }
   }
  } else {
   if(i36<0.0479087233543396){
    if(i32<0.0004521366208791733){
     s0+=65.0;
     s1+=2.0;
    } else {
     s0+=29.0;
     s1+=1141.0;
    }
   } else {
    if(i16<0.006478484719991684){
     s0+=605.0;
     s1+=258.0;
    } else {
     s0+=8.0;
     s1+=180.0;
    }
   }
  }
 } else {
  if(i22<1.064502239227295){
   if(i48<-0.0037345588207244873){
    if(i33<1.224388599395752){
     s1+=46.0;
    } else {
     s0+=14.0;
    }
   } else {
    if(i5<1.0026953220367432){
     s0+=673.0;
     s1+=11.0;
    } else {
     s0+=14.0;
     s1+=48.0;
    }
   }
  } else {
   if(i48<0.006927609443664551){
    if(i7<0.011465340852737427){
     s0+=175.0;
     s1+=114.0;
    } else {
     s0+=122.0;
     s1+=1999.0;
    }
   } else {
    if(i1<0.1047319769859314){
     s0+=265.0;
     s1+=30.0;
    } else {
     s0+=25.0;
     s1+=334.0;
    }
   }
  }
 }
} else {
 if(i31<0.005927404388785362){
  if(i15<0.0006790459156036377){
   if(i10<0.0008639693260192871){
    if(i35<1.0778207778930664){
     s0+=8.0;
     s1+=302.0;
    } else {
     s0+=1979.0;
     s1+=729.0;
    }
   } else {
    if(i3<0.07929593324661255){
     s0+=9.0;
     s1+=9.0;
    } else {
     s0+=2.0;
     s1+=161.0;
    }
   }
  } else {
   if(i6<-4.351775351096876e-05){
    if(i2<-2.1010637283325195e-05){
     s0+=30.0;
    } else {
     s0+=26.0;
     s1+=2086.0;
    }
   } else {
    if(i10<0.00015079975128173828){
     s0+=20.0;
     s1+=98.0;
    } else {
     s0+=232.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i0<0.09420371055603027){
   if(i10<0.0011506080627441406){
    s0+=71.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i5<1.0056312084197998){
    if(i67<-0.00034678520751185715){
     s0+=25.0;
     s1+=1433.0;
    } else {
     s0+=32.0;
     s1+=53.0;
    }
   } else {
    s1+=6045.0;
   }
  }
 }
}
if(i15<0.0007813572883605957){
 if(i7<0.07195839285850525){
  if(i8<1.0436501502990723){
   if(i3<0.08201998472213745){
    if(i5<1.0024960041046143){
     s0+=60971.0;
     s1+=671.0;
    } else {
     s0+=4.0;
     s1+=62.0;
    }
   } else {
    if(i68<0.9979368448257446){
     s0+=53.0;
    } else {
     s0+=9.0;
     s1+=105.0;
    }
   }
  } else {
   if(i3<0.07780316472053528){
    if(i71<0.9959710836410522){
     s0+=2439.0;
     s1+=896.0;
    } else {
     s0+=4969.0;
     s1+=476.0;
    }
   } else {
    if(i45<-0.00014704465866088867){
     s0+=42.0;
    } else {
     s0+=61.0;
     s1+=709.0;
    }
   }
  }
 } else {
  if(i32<0.004933040589094162){
   if(i68<0.997626543045044){
    if(i36<0.04592671990394592){
     s0+=40.0;
     s1+=30.0;
    } else {
     s0+=357.0;
     s1+=17.0;
    }
   } else {
    if(i36<0.04312053322792053){
     s0+=63.0;
     s1+=854.0;
    } else {
     s0+=1078.0;
     s1+=758.0;
    }
   }
  } else {
   if(i16<0.009718789719045162){
    if(i32<0.00782950408756733){
     s0+=200.0;
     s1+=721.0;
    } else {
     s0+=150.0;
     s1+=12.0;
    }
   } else {
    if(i8<1.088477373123169){
     s0+=20.0;
     s1+=149.0;
    } else {
     s1+=1613.0;
    }
   }
  }
 }
} else {
 if(i41<-9.965880963136442e-06){
  if(i6<-4.400665784487501e-05){
   if(i69<0.04614385962486267){
    if(i16<0.0017526529263705015){
     s0+=6.0;
     s1+=34.0;
    } else {
     s1+=1006.0;
    }
   } else {
    if(i12<1.0026230812072754){
     s0+=1.0;
     s1+=545.0;
    } else {
     s1+=8056.0;
    }
   }
  } else {
   if(i34<0.0014276693109422922){
    s1+=43.0;
   } else {
    if(i10<0.0007994174957275391){
     s0+=170.0;
    } else {
     s1+=6.0;
    }
   }
  }
 } else {
  if(i28<1.0088598728179932){
   if(i8<1.1907825469970703){
    if(i55<-0.00015240279026329517){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=356.0;
    }
   } else {
    s1+=19.0;
   }
  } else {
   if(i44<1.0001952648162842){
    if(i30<1.35038423538208){
     s0+=14.0;
     s1+=391.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i1<0.18652218580245972){
     s0+=54.0;
    } else {
     s1+=9.0;
    }
   }
  }
 }
}
if(i5<1.0024832487106323){
 if(i8<1.0452277660369873){
  if(i22<1.0451585054397583){
   if(i62<0.0007163133705034852){
    if(i55<0.00022815342526882887){
     s0+=47029.0;
     s1+=20.0;
    } else {
     s0+=4224.0;
     s1+=51.0;
    }
   } else {
    if(i17<0.989672839641571){
     s0+=2103.0;
     s1+=19.0;
    } else {
     s0+=905.0;
     s1+=135.0;
    }
   }
  } else {
   if(i1<0.0698719322681427){
    if(i47<0.007559823803603649){
     s0+=7277.0;
     s1+=357.0;
    } else {
     s0+=370.0;
     s1+=128.0;
    }
   } else {
    if(i4<-5.53131103515625e-05){
     s0+=90.0;
     s1+=4.0;
    } else {
     s0+=84.0;
     s1+=315.0;
    }
   }
  }
 } else {
  if(i2<0.00014656782150268555){
   if(i3<0.07537108659744263){
    if(i56<2.6908212021226063e-05){
     s0+=2677.0;
     s1+=74.0;
    } else {
     s0+=3275.0;
     s1+=657.0;
    }
   } else {
    if(i43<0.050399452447891235){
     s0+=68.0;
     s1+=979.0;
    } else {
     s0+=1177.0;
     s1+=907.0;
    }
   }
  } else {
   if(i6<-3.8853024307172745e-05){
    if(i0<0.09046819806098938){
     s0+=257.0;
     s1+=315.0;
    } else {
     s0+=88.0;
     s1+=1403.0;
    }
   } else {
    if(i53<0.0018174615688621998){
     s0+=897.0;
     s1+=339.0;
    } else {
     s0+=24.0;
     s1+=156.0;
    }
   }
  }
 }
} else {
 if(i6<-4.32968299719505e-05){
  if(i0<0.05317601561546326){
   if(i19<1.0015064477920532){
    if(i52<0.999916672706604){
     s1+=9.0;
    } else {
     s0+=44.0;
     s1+=4.0;
    }
   } else {
    if(i29<1.5682398080825806){
     s0+=9.0;
     s1+=223.0;
    } else {
     s0+=36.0;
     s1+=40.0;
    }
   }
  } else {
   if(i17<1.0009334087371826){
    if(i8<1.1240943670272827){
     s0+=79.0;
     s1+=319.0;
    } else {
     s1+=658.0;
    }
   } else {
    if(i41<-1.0572857718216255e-05){
     s0+=29.0;
     s1+=9967.0;
    } else {
     s0+=9.0;
     s1+=52.0;
    }
   }
  }
 } else {
  if(i0<0.06568703055381775){
   if(i16<0.003552985144779086){
    s0+=115.0;
   } else {
    s1+=20.0;
   }
  } else {
   if(i45<0.00013181567192077637){
    if(i49<-0.0010820627212524414){
     s1+=5.0;
    } else {
     s0+=41.0;
     s1+=1.0;
    }
   } else {
    if(i3<0.06888946890830994){
     s0+=4.0;
     s1+=9.0;
    } else {
     s1+=175.0;
    }
   }
  }
 }
}
if(i2<0.0005473494529724121){
 if(i22<1.0494916439056396){
  if(i27<1.0087990760803223){
   if(i0<0.06987085938453674){
    if(i51<-0.0013756155967712402){
     s0+=1632.0;
     s1+=201.0;
    } else {
     s0+=52946.0;
     s1+=111.0;
    }
   } else {
    if(i51<-0.0010066032409667969){
     s0+=89.0;
     s1+=44.0;
    } else {
     s0+=1798.0;
     s1+=80.0;
    }
   }
  } else {
   if(i41<-7.931374057079665e-06){
    if(i56<8.350187999894843e-05){
     s1+=33.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i38<0.06858137249946594){
     s0+=42.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i3<0.07581853866577148){
   if(i35<1.1036889553070068){
    if(i55<0.00017440671217627823){
     s0+=3040.0;
     s1+=450.0;
    } else {
     s0+=477.0;
     s1+=642.0;
    }
   } else {
    if(i55<0.0006258301436901093){
     s0+=5763.0;
     s1+=94.0;
    } else {
     s0+=3240.0;
     s1+=256.0;
    }
   }
  } else {
   if(i46<0.00408896803855896){
    if(i44<0.998971164226532){
     s0+=166.0;
     s1+=4.0;
    } else {
     s0+=312.0;
     s1+=2391.0;
    }
   } else {
    if(i72<0.0001135508791776374){
     s0+=986.0;
     s1+=460.0;
    } else {
     s0+=188.0;
     s1+=557.0;
    }
   }
  }
 }
} else {
 if(i6<-4.328748764237389e-05){
  if(i24<1.0041093826293945){
   if(i37<0.022980567067861557){
    if(i8<1.0572201013565063){
     s0+=7.0;
     s1+=182.0;
    } else {
     s0+=164.0;
     s1+=183.0;
    }
   } else {
    if(i11<3.0934810638427734e-05){
     s0+=6.0;
     s1+=476.0;
    } else {
     s1+=1077.0;
    }
   }
  } else {
   if(i63<0.00014600528811570257){
    if(i18<1.5616416931152344e-05){
     s0+=26.0;
    } else {
     s1+=126.0;
    }
   } else {
    if(i18<-4.470348358154297e-06){
     s0+=46.0;
     s1+=263.0;
    } else {
     s0+=3.0;
     s1+=9114.0;
    }
   }
  }
 } else {
  if(i13<1.002009630203247){
   if(i56<3.465593181317672e-07){
    if(i17<1.0100009441375732){
     s0+=310.0;
     s1+=15.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i40<0.0003163703950121999){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=62.0;
    }
   }
  } else {
   if(i2<0.0005632638931274414){
    s0+=3.0;
   } else {
    if(i3<0.0438096821308136){
     s0+=3.0;
     s1+=4.0;
    } else {
     s1+=166.0;
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
