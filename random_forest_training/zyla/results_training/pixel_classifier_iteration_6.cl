/*
OpenCL RandomForestClassifier
classifier_class_name = PixelClassifier
feature_specification = top_hat_box=30 top_hat_box=20 top_hat_box=15 difference_of_gaussian=15 top_hat_box=10 gaussian_blur=10 small_hessian_eigenvalue_of_gaussian_blur=10 median_box=5 laplace_box_of_gaussian_blur=15 maximum_box=2 mean_box=10 difference_of_gaussian=20 gaussian_blur=5 maximum_box=3 difference_of_gaussian=10 laplace_box_of_gaussian_blur=20 median_box=3 sobel_of_gaussian_blur=10 gaussian_blur=15 gaussian_blur=2 maximum_box=5 mean_box=3 laplace_box_of_gaussian_blur=10 mean_box=15 maximum_box=1 sobel_of_median_box=5 mean_box=2 gaussian_blur=1 variance_box=2 gaussian_blur=3 maximum_box=10 maximum_box=15 top_hat_box=5 variance_box=30 variance_box=3 maximum_box=30 maximum_box=20 sobel_of_gaussian_blur=5 variance_box=15 difference_of_gaussian=30 top_hat_box=2 large_hessian_eigenvalue_of_gaussian_blur=10 gaussian_blur=20 variance_box=20 variance_box=10 small_hessian_eigenvalue_of_gaussian_blur=15 large_hessian_eigenvalue_of_gaussian_blur=2 variance_box=5 difference_of_gaussian=2 gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=1 laplace_box_of_gaussian_blur=1 top_hat_box=1 top_hat_box=3 sobel_of_median_box=3 laplace_box_of_gaussian_blur=2 sobel_of_gaussian_blur=15 large_hessian_eigenvalue_of_gaussian_blur=3 sobel_of_gaussian_blur=1 small_hessian_eigenvalue_of_gaussian_blur=5 difference_of_gaussian=1 laplace_box_of_gaussian_blur=3 mean_box=1 difference_of_gaussian=3 small_hessian_eigenvalue_of_gaussian_blur=20 small_hessian_eigenvalue_of_gaussian_blur=2 large_hessian_eigenvalue_of_gaussian_blur=15 sobel_of_gaussian_blur=3 sobel_of_gaussian_blur=20 mean_box=30 small_hessian_eigenvalue_of_gaussian_blur=1 large_hessian_eigenvalue_of_gaussian_blur=5 sobel_of_gaussian_blur=2 mean_box=5 laplace_box_of_gaussian_blur=5 sobel_of_gaussian_blur=30 large_hessian_eigenvalue_of_gaussian_blur=20 mean_box=20
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 78
max_depth = 5
num_trees = 250
feature_importances = 0.09045240131419068,0.14026406589420914,0.09844454971569508,0.06952006931344978,0.052533184638596214,0.07990048881980047,0.05200006712811436,0.01586032066335769,0.03960116485417943,0.03828350469773888,0.01538251705104131,0.02785266027550521,0.018095780936876082,0.04269903594240349,0.009230976429763735,0.011165002583089154,0.00984920764253687,0.01138834818278204,0.015344425723280437,0.01027864210309972,0.0063544236259506295,0.003185505621597327,0.01598225748574233,0.00898146359114715,0.0038925748065441307,0.010639214838285239,0.005009372305790556,0.002364237451363542,0.002611268194377685,0.005782746928992374,0.002106150130908448,0.002468124499989791,0.0020983326120062296,0.002762480510609922,0.004638057549027982,0.0030701964140057787,0.0024450571926333295,0.0030621765615980795,0.0031496669398332457,0.0018762205797256486,0.0025751747415057634,0.00104527674511216,0.0031732062458291106,0.0024467306704580114,0.0026178290504892134,0.00128873282580558,0.0010890903577529417,0.003177785065805032,0.001982773824872889,0.0011370310341283474,0.0009112246199058031,0.001950415231197648,0.000603734859839189,0.0017496072173785859,0.0028325368570075605,0.001410452572513367,0.001997948586985412,0.0009824241479058082,0.0012488265978776842,0.0031533214355296936,0.0012363757602274143,0.0015941983955732573,0.00016557437134112252,0.001035968914596881,0.000583772902317612,0.0008914662729540614,0.001167505057518554,0.000744939286399829,0.0008749824420333567,0.000971129665439469,0.0012789310426667474,0.0014362919724712194,0.0004837937328579759,0.0069672611896174465,0.0013725521468128075,0.000430353384577702,0.00013720326005026783,0.0006276357648051957
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
if(i4<0.07198938727378845){
 if(i23<1.0032674074172974){
  if(i2<0.07829615473747253){
   if(i34<0.0003066955250687897){
    if(i18<1.0007834434509277){
     s0+=51583.0;
     s1+=181.0;
    } else {
     s0+=1821.0;
     s1+=163.0;
    }
   } else {
    if(i44<0.0019846719224005938){
     s0+=4784.0;
     s1+=1463.0;
    } else {
     s0+=9732.0;
     s1+=281.0;
    }
   }
  } else {
   if(i42<0.9993287324905396){
    s0+=72.0;
   } else {
    if(i2<0.0839073657989502){
     s0+=30.0;
     s1+=102.0;
    } else {
     s0+=4.0;
     s1+=662.0;
    }
   }
  }
 } else {
  if(i15<2.0205974578857422e-05){
   if(i36<1.2335381507873535){
    if(i33<0.0020763275679200888){
     s0+=17.0;
     s1+=207.0;
    } else {
     s0+=26.0;
     s1+=1.0;
    }
   } else {
    if(i60<-0.010241031646728516){
     s0+=3.0;
     s1+=7.0;
    } else {
     s0+=676.0;
     s1+=10.0;
    }
   }
  } else {
   if(i8<3.4332275390625e-05){
    if(i6<-1.5225435163301881e-05){
     s0+=155.0;
     s1+=14.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i48<0.0027467012405395508){
     s0+=61.0;
     s1+=1518.0;
    } else {
     s0+=37.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004432797431945801){
  if(i1<0.10199543833732605){
   if(i65<-0.004732283763587475){
    if(i26<0.9511992931365967){
     s1+=11.0;
    } else {
     s0+=549.0;
     s1+=14.0;
    }
   } else {
    if(i11<-0.00038421154022216797){
     s0+=165.0;
     s1+=3.0;
    } else {
     s0+=316.0;
     s1+=423.0;
    }
   }
  } else {
   if(i70<-0.025960102677345276){
    if(i17<0.0057865893468260765){
     s0+=622.0;
     s1+=166.0;
    } else {
     s0+=18.0;
     s1+=460.0;
    }
   } else {
    if(i6<-1.3098471754346974e-05){
     s0+=38.0;
     s1+=1362.0;
    } else {
     s0+=75.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i1<0.12493610382080078){
   if(i68<0.0005248144152574241){
    if(i55<0.01367446780204773){
     s0+=15.0;
     s1+=209.0;
    } else {
     s0+=101.0;
     s1+=2.0;
    }
   } else {
    if(i51<0.06555673480033875){
     s0+=9.0;
     s1+=493.0;
    } else {
     s0+=22.0;
     s1+=3.0;
    }
   }
  } else {
   if(i22<-0.00010013580322265625){
    if(i49<0.9999915957450867){
     s0+=34.0;
     s1+=80.0;
    } else {
     s0+=2.0;
     s1+=477.0;
    }
   } else {
    if(i37<0.011698925867676735){
     s0+=16.0;
     s1+=470.0;
    } else {
     s0+=3.0;
     s1+=8313.0;
    }
   }
  }
 }
}
if(i3<0.0005478262901306152){
 if(i1<0.07911401987075806){
  if(i13<1.0401363372802734){
   if(i58<0.043677836656570435){
    if(i26<0.9705464839935303){
     s0+=21.0;
     s1+=11.0;
    } else {
     s0+=50870.0;
     s1+=168.0;
    }
   } else {
    if(i35<1.2371783256530762){
     s0+=2843.0;
     s1+=324.0;
    } else {
     s0+=4869.0;
     s1+=14.0;
    }
   }
  } else {
   if(i7<0.9915571212768555){
    if(i44<0.0015997574664652348){
     s0+=186.0;
     s1+=315.0;
    } else {
     s0+=806.0;
     s1+=172.0;
    }
   } else {
    if(i36<1.1034480333328247){
     s0+=2900.0;
     s1+=741.0;
    } else {
     s0+=6243.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i40<0.04308730363845825){
   if(i11<-0.0006208419799804688){
    s0+=92.0;
   } else {
    if(i13<1.1503311395645142){
     s0+=40.0;
     s1+=1684.0;
    } else {
     s0+=55.0;
     s1+=437.0;
    }
   }
  } else {
   if(i39<-0.0001373291015625){
    if(i71<0.001443294109776616){
     s0+=445.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=18.0;
    }
   } else {
    if(i67<0.1257118433713913){
     s0+=1204.0;
     s1+=987.0;
    } else {
     s0+=27.0;
     s1+=430.0;
    }
   }
  }
 }
} else {
 if(i13<1.0336670875549316){
  if(i41<6.684657364530722e-06){
   if(i63<-0.0024899840354919434){
    s1+=5.0;
   } else {
    s0+=192.0;
   }
  } else {
   s1+=54.0;
  }
 } else {
  if(i73<1.0055570602416992){
   if(i45<-1.2133922609791625e-05){
    if(i34<0.011149522848427296){
     s0+=215.0;
     s1+=1258.0;
    } else {
     s0+=10.0;
     s1+=1091.0;
    }
   } else {
    if(i37<0.012044640257954597){
     s0+=46.0;
     s1+=1.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i5<1.0041425228118896){
    if(i6<-4.376960714580491e-05){
     s0+=23.0;
     s1+=820.0;
    } else {
     s0+=88.0;
     s1+=77.0;
    }
   } else {
    s1+=8235.0;
   }
  }
 }
}
if(i54<0.029870960861444473){
 if(i19<1.008311152458191){
  if(i48<-0.0022662878036499023){
   if(i77<1.0004456043243408){
    if(i2<0.03849911689758301){
     s0+=492.0;
     s1+=77.0;
    } else {
     s0+=54.0;
     s1+=86.0;
    }
   } else {
    if(i46<0.003185934852808714){
     s0+=34.0;
     s1+=32.0;
    } else {
     s0+=21.0;
     s1+=284.0;
    }
   }
  } else {
   if(i5<1.0024913549423218){
    if(i61<-0.002579599618911743){
     s0+=490.0;
     s1+=159.0;
    } else {
     s0+=57726.0;
     s1+=471.0;
    }
   } else {
    if(i31<1.2296775579452515){
     s0+=5.0;
     s1+=180.0;
    } else {
     s0+=56.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i10<1.0009748935699463){
   if(i6<-2.1897119950153865e-05){
    if(i35<1.2392117977142334){
     s0+=1.0;
     s1+=297.0;
    } else {
     s0+=282.0;
     s1+=62.0;
    }
   } else {
    if(i76<-4.237920620653313e-06){
     s1+=6.0;
    } else {
     s0+=577.0;
     s1+=36.0;
    }
   }
  } else {
   if(i15<2.0802021026611328e-05){
    if(i36<1.1991922855377197){
     s0+=32.0;
     s1+=688.0;
    } else {
     s0+=175.0;
     s1+=144.0;
    }
   } else {
    if(i12<0.999902606010437){
     s0+=19.0;
    } else {
     s0+=6.0;
     s1+=1223.0;
    }
   }
  }
 }
} else {
 if(i0<0.08588343858718872){
  if(i38<0.0011025413405150175){
   if(i39<-3.0308961868286133e-05){
    if(i39<-3.546476364135742e-05){
     s0+=1204.0;
     s1+=7.0;
    } else {
     s0+=29.0;
     s1+=12.0;
    }
   } else {
    if(i38<0.0005096772802062333){
     s0+=366.0;
     s1+=75.0;
    } else {
     s0+=176.0;
     s1+=987.0;
    }
   }
  } else {
   if(i11<0.0007349848747253418){
    if(i14<-0.0021857619285583496){
     s0+=5228.0;
     s1+=66.0;
    } else {
     s0+=2801.0;
     s1+=342.0;
    }
   } else {
    if(i14<-0.0024265646934509277){
     s0+=210.0;
     s1+=48.0;
    } else {
     s0+=106.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i22<5.817413330078125e-05){
   if(i15<-1.576542854309082e-05){
    if(i41<0.00019469641847535968){
     s0+=295.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=11.0;
    }
   } else {
    if(i0<0.13195005059242249){
     s0+=506.0;
     s1+=999.0;
    } else {
     s0+=253.0;
     s1+=2349.0;
    }
   }
  } else {
   if(i17<0.0018764184787869453){
    if(i33<0.0006543646450154483){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=73.0;
    }
   } else {
    if(i5<0.9986391067504883){
     s0+=9.0;
    } else {
     s0+=5.0;
     s1+=7980.0;
    }
   }
  }
 }
}
if(i4<0.07129186391830444){
 if(i7<1.0081671476364136){
  if(i2<0.07531684637069702){
   if(i8<4.2319297790527344e-05){
    if(i72<0.018856612965464592){
     s0+=51404.0;
     s1+=293.0;
    } else {
     s0+=16320.0;
     s1+=1407.0;
    }
   } else {
    if(i17<0.004134432878345251){
     s0+=201.0;
     s1+=13.0;
    } else {
     s0+=106.0;
     s1+=423.0;
    }
   }
  } else {
   if(i23<0.9954077005386353){
    if(i19<1.0028924942016602){
     s0+=110.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i43<0.00040386890759691596){
     s0+=23.0;
    } else {
     s0+=68.0;
     s1+=590.0;
    }
   }
  }
 } else {
  if(i0<0.0704982578754425){
   if(i3<0.0009388923645019531){
    if(i73<1.0146515369415283){
     s0+=413.0;
     s1+=208.0;
    } else {
     s0+=317.0;
     s1+=13.0;
    }
   } else {
    if(i74<0.0014731287956237793){
     s1+=160.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i26<1.0334680080413818){
    if(i1<0.0688396692276001){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=36.0;
     s1+=1351.0;
    }
   } else {
    if(i17<0.003633572719991207){
     s0+=91.0;
     s1+=4.0;
    } else {
     s1+=46.0;
    }
   }
  }
 }
} else {
 if(i6<-2.1579477106570266e-05){
  if(i14<2.2232532501220703e-05){
   if(i54<0.05535134673118591){
    if(i62<1.0225648880004883){
     s0+=95.0;
     s1+=278.0;
    } else {
     s0+=244.0;
     s1+=176.0;
    }
   } else {
    if(i46<0.002963668666779995){
     s0+=220.0;
     s1+=1104.0;
    } else {
     s1+=940.0;
    }
   }
  } else {
   if(i43<0.0038489028811454773){
    if(i15<-9.47713851928711e-06){
     s0+=40.0;
    } else {
     s0+=98.0;
     s1+=1515.0;
    }
   } else {
    if(i43<0.003949458710849285){
     s0+=2.0;
     s1+=52.0;
    } else {
     s0+=2.0;
     s1+=7916.0;
    }
   }
  }
 } else {
  if(i25<0.026539454236626625){
   if(i63<-0.0013254284858703613){
    if(i76<5.824872914672596e-06){
     s0+=64.0;
     s1+=92.0;
    } else {
     s0+=30.0;
    }
   } else {
    if(i7<1.0104843378067017){
     s0+=778.0;
     s1+=39.0;
    } else {
     s0+=100.0;
     s1+=28.0;
    }
   }
  } else {
   if(i49<0.9995698928833008){
    s0+=198.0;
   } else {
    if(i41<2.8403646865626797e-05){
     s0+=121.0;
     s1+=61.0;
    } else {
     s0+=88.0;
     s1+=331.0;
    }
   }
  }
 }
}
if(i12<1.0060046911239624){
 if(i13<1.0452277660369873){
  if(i0<0.08341601490974426){
   if(i71<0.000254371901974082){
    if(i34<0.000337776611559093){
     s0+=50796.0;
     s1+=119.0;
    } else {
     s0+=1646.0;
     s1+=147.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s0+=2534.0;
     s1+=596.0;
    } else {
     s0+=6496.0;
     s1+=58.0;
    }
   }
  } else {
   if(i5<0.9956707954406738){
    if(i4<0.09828722476959229){
     s0+=350.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i43<0.0004414969589561224){
     s0+=36.0;
     s1+=7.0;
    } else {
     s0+=69.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i56<0.0018726959824562073){
   if(i38<0.006183096207678318){
    if(i0<0.07466813921928406){
     s0+=5076.0;
     s1+=639.0;
    } else {
     s0+=1378.0;
     s1+=1238.0;
    }
   } else {
    if(i0<0.13706356287002563){
     s0+=160.0;
     s1+=65.0;
    } else {
     s0+=22.0;
     s1+=550.0;
    }
   }
  } else {
   if(i0<0.08556181192398071){
    if(i10<0.9950781464576721){
     s0+=1133.0;
     s1+=119.0;
    } else {
     s0+=373.0;
     s1+=556.0;
    }
   } else {
    if(i37<0.010783633217215538){
     s0+=87.0;
     s1+=64.0;
    } else {
     s0+=117.0;
     s1+=2379.0;
    }
   }
  }
 }
} else {
 if(i6<-4.398595046950504e-05){
  if(i11<-0.0002493560314178467){
   s0+=15.0;
  } else {
   if(i34<0.00014786390238441527){
    if(i66<2.7280129870632663e-06){
     s0+=15.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i1<0.057950764894485474){
     s0+=55.0;
     s1+=212.0;
    } else {
     s0+=15.0;
     s1+=9846.0;
    }
   }
  }
 } else {
  if(i36<1.1380741596221924){
   if(i44<0.0005823000683449209){
    s0+=2.0;
   } else {
    s1+=158.0;
   }
  } else {
   if(i17<0.002896540332585573){
    if(i11<-0.0001385211944580078){
     s1+=6.0;
    } else {
     s0+=657.0;
    }
   } else {
    if(i69<1.0004395246505737){
     s0+=10.0;
     s1+=74.0;
    } else {
     s0+=23.0;
     s1+=3.0;
    }
   }
  }
 }
}
if(i8<3.701448440551758e-05){
 if(i0<0.08370846509933472){
  if(i50<0.008474690839648247){
   if(i20<1.0469921827316284){
    if(i28<0.00027896874235011637){
     s0+=48895.0;
     s1+=104.0;
    } else {
     s0+=5216.0;
     s1+=124.0;
    }
   } else {
    if(i30<1.1034480333328247){
     s0+=4089.0;
     s1+=1044.0;
    } else {
     s0+=7430.0;
     s1+=113.0;
    }
   }
  } else {
   if(i6<-3.68024775525555e-05){
    if(i74<-0.00585588812828064){
     s0+=173.0;
     s1+=24.0;
    } else {
     s0+=138.0;
     s1+=261.0;
    }
   } else {
    if(i31<1.1037919521331787){
     s0+=772.0;
     s1+=344.0;
    } else {
     s0+=1608.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i18<0.9986284971237183){
   if(i15<-2.0802021026611328e-05){
    s0+=581.0;
   } else {
    if(i33<0.0016808952204883099){
     s0+=99.0;
     s1+=4.0;
    } else {
     s0+=31.0;
     s1+=40.0;
    }
   }
  } else {
   if(i6<-1.3401724572759122e-05){
    if(i25<0.027250897139310837){
     s0+=440.0;
     s1+=1094.0;
    } else {
     s0+=100.0;
     s1+=1892.0;
    }
   } else {
    if(i9<1.042162299156189){
     s0+=44.0;
     s1+=139.0;
    } else {
     s0+=572.0;
     s1+=202.0;
    }
   }
  }
 }
} else {
 if(i28<0.00017793121514841914){
  if(i1<0.06362712383270264){
   if(i17<0.0050619784742593765){
    if(i13<1.0468157529830933){
     s0+=228.0;
     s1+=1.0;
    } else {
     s0+=21.0;
     s1+=4.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i56<0.000873846875037998){
    s0+=6.0;
   } else {
    s1+=55.0;
   }
  }
 } else {
  if(i75<0.00032167122117243707){
   if(i49<0.9988810420036316){
    s0+=57.0;
   } else {
    if(i3<0.0009589195251464844){
     s0+=268.0;
     s1+=1667.0;
    } else {
     s0+=93.0;
     s1+=10066.0;
    }
   }
  } else {
   s0+=96.0;
  }
 }
}
if(i7<1.0081498622894287){
 if(i3<0.0005737543106079102){
  if(i1<0.08399802446365356){
   if(i61<-0.002317667007446289){
    if(i36<1.197464108467102){
     s0+=1694.0;
     s1+=755.0;
    } else {
     s0+=3710.0;
     s1+=168.0;
    }
   } else {
    if(i51<-0.02913612127304077){
     s0+=945.0;
     s1+=153.0;
    } else {
     s0+=61988.0;
     s1+=750.0;
    }
   }
  } else {
   if(i18<0.9978811144828796){
    if(i43<0.008417043834924698){
     s0+=390.0;
    } else {
     s0+=4.0;
     s1+=4.0;
    }
   } else {
    if(i53<0.059444278478622437){
     s0+=32.0;
     s1+=1177.0;
    } else {
     s0+=687.0;
     s1+=712.0;
    }
   }
  }
 } else {
  if(i69<0.9975838661193848){
   if(i8<0.0001658797264099121){
    if(i31<1.562064290046692){
     s0+=126.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i34<0.00018941753660328686){
    s0+=24.0;
   } else {
    if(i1<0.0385570228099823){
     s0+=61.0;
     s1+=114.0;
    } else {
     s0+=83.0;
     s1+=2250.0;
    }
   }
  }
 }
} else {
 if(i56<0.0010256461100652814){
  if(i6<-4.332038224674761e-05){
   if(i2<0.04180753231048584){
    if(i68<0.00024107244098559022){
     s0+=29.0;
     s1+=2.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i0<0.0650351345539093){
     s0+=6.0;
     s1+=49.0;
    } else {
     s0+=3.0;
     s1+=1097.0;
    }
   }
  } else {
   if(i3<0.00028961896896362305){
    if(i11<0.00010243058204650879){
     s0+=211.0;
     s1+=306.0;
    } else {
     s0+=388.0;
     s1+=16.0;
    }
   } else {
    if(i23<1.0007455348968506){
     s0+=62.0;
     s1+=6.0;
    } else {
     s0+=330.0;
    }
   }
  }
 } else {
  if(i15<-1.4066696166992188e-05){
   s0+=116.0;
  } else {
   if(i1<0.06543073058128357){
    if(i14<6.434321403503418e-05){
     s0+=130.0;
     s1+=32.0;
    } else {
     s0+=21.0;
     s1+=240.0;
    }
   } else {
    if(i73<1.0054221153259277){
     s0+=117.0;
     s1+=1052.0;
    } else {
     s0+=23.0;
     s1+=8157.0;
    }
   }
  }
 }
}
if(i4<0.07131022214889526){
 if(i8<3.7610530853271484e-05){
  if(i46<0.0014656272251158953){
   if(i41<-1.9543171219993383e-05){
    if(i21<1.007599115371704){
     s0+=3.0;
    } else {
     s1+=73.0;
    }
   } else {
    if(i73<1.0072290897369385){
     s0+=60838.0;
     s1+=1083.0;
    } else {
     s0+=648.0;
     s1+=338.0;
    }
   }
  } else {
   if(i0<0.06627994775772095){
    if(i36<1.1037919521331787){
     s0+=1743.0;
     s1+=575.0;
    } else {
     s0+=4934.0;
     s1+=280.0;
    }
   } else {
    if(i23<0.9953731298446655){
     s0+=185.0;
     s1+=5.0;
    } else {
     s0+=171.0;
     s1+=395.0;
    }
   }
  }
 } else {
  if(i33<0.0005246620858088136){
   if(i69<1.0002057552337646){
    s0+=312.0;
   } else {
    s1+=12.0;
   }
  } else {
   if(i5<1.0041325092315674){
    if(i36<1.2314128875732422){
     s1+=309.0;
    } else {
     s0+=226.0;
     s1+=144.0;
    }
   } else {
    if(i72<0.1633101999759674){
     s0+=6.0;
     s1+=1337.0;
    } else {
     s0+=25.0;
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018938779830933){
  if(i59<-0.00010468424443388358){
   if(i6<-1.3797138308291323e-05){
    if(i39<-0.00020989775657653809){
     s0+=64.0;
     s1+=22.0;
    } else {
     s0+=318.0;
     s1+=2217.0;
    }
   } else {
    if(i21<1.0002295970916748){
     s0+=137.0;
     s1+=97.0;
    } else {
     s0+=500.0;
     s1+=55.0;
    }
   }
  } else {
   if(i48<-0.00026154518127441406){
    if(i39<-0.00012317299842834473){
     s0+=42.0;
     s1+=5.0;
    } else {
     s0+=13.0;
     s1+=153.0;
    }
   } else {
    if(i25<0.016335194930434227){
     s0+=425.0;
     s1+=28.0;
    } else {
     s0+=350.0;
     s1+=184.0;
    }
   }
  }
 } else {
  if(i1<0.1285736858844757){
   if(i51<0.055711448192596436){
    if(i63<0.0051871538162231445){
     s0+=12.0;
     s1+=779.0;
    } else {
     s0+=33.0;
     s1+=12.0;
    }
   } else {
    if(i5<1.0050725936889648){
     s0+=82.0;
     s1+=6.0;
    } else {
     s0+=3.0;
     s1+=12.0;
    }
   }
  } else {
   if(i0<0.1692928671836853){
    if(i23<0.9959093332290649){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=888.0;
    }
   } else {
    s1+=8066.0;
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i5<1.0024782419204712){
  if(i46<0.0017673894762992859){
   if(i16<1.009566068649292){
    if(i4<0.08106952905654907){
     s0+=60527.0;
     s1+=839.0;
    } else {
     s0+=60.0;
     s1+=127.0;
    }
   } else {
    if(i1<0.06967556476593018){
     s0+=177.0;
     s1+=45.0;
    } else {
     s0+=22.0;
     s1+=129.0;
    }
   }
  } else {
   if(i32<0.05289196968078613){
    if(i1<0.0585903525352478){
     s0+=4100.0;
     s1+=508.0;
    } else {
     s0+=97.0;
     s1+=212.0;
    }
   } else {
    if(i48<0.0011598169803619385){
     s0+=44.0;
     s1+=118.0;
    } else {
     s0+=35.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i17<0.002059021731838584){
   if(i41<9.864424100669567e-06){
    if(i55<-0.009048521518707275){
     s1+=1.0;
    } else {
     s0+=112.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i9<1.045017957687378){
    if(i49<1.0007681846618652){
     s0+=2.0;
     s1+=711.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i54<0.12474081665277481){
     s1+=4.0;
    } else {
     s0+=6.0;
    }
   }
  }
 }
} else {
 if(i1<0.09220051765441895){
  if(i77<1.0004980564117432){
   if(i10<1.0018645524978638){
    if(i44<0.0019716769456863403){
     s0+=1284.0;
     s1+=284.0;
    } else {
     s0+=1775.0;
     s1+=64.0;
    }
   } else {
    if(i35<1.1919987201690674){
     s0+=9.0;
     s1+=160.0;
    } else {
     s0+=176.0;
     s1+=56.0;
    }
   }
  } else {
   if(i3<0.0004885196685791016){
    if(i27<0.9962533712387085){
     s0+=131.0;
     s1+=206.0;
    } else {
     s0+=1019.0;
     s1+=212.0;
    }
   } else {
    if(i48<0.0020819902420043945){
     s0+=88.0;
     s1+=774.0;
    } else {
     s0+=106.0;
     s1+=26.0;
    }
   }
  }
 } else {
  if(i15<-1.9282102584838867e-05){
   if(i22<-0.000469893217086792){
    if(i9<1.0495110750198364){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   } else {
    s0+=264.0;
   }
  } else {
   if(i5<1.001805305480957){
    if(i40<0.059717535972595215){
     s0+=94.0;
     s1+=1699.0;
    } else {
     s0+=718.0;
     s1+=807.0;
    }
   } else {
    if(i3<0.0008460283279418945){
     s0+=72.0;
     s1+=988.0;
    } else {
     s0+=37.0;
     s1+=9300.0;
    }
   }
  }
 }
}
if(i12<1.0058752298355103){
 if(i2<0.07907184958457947){
  if(i5<1.0024776458740234){
   if(i34<0.00028166547417640686){
    if(i7<1.007720708847046){
     s0+=52204.0;
     s1+=201.0;
    } else {
     s0+=47.0;
     s1+=29.0;
    }
   } else {
    if(i44<0.001621705712750554){
     s0+=5186.0;
     s1+=1447.0;
    } else {
     s0+=11078.0;
     s1+=396.0;
    }
   }
  } else {
   if(i24<1.0396705865859985){
    if(i35<1.5682398080825806){
     s0+=10.0;
     s1+=283.0;
    } else {
     s0+=18.0;
     s1+=28.0;
    }
   } else {
    if(i60<0.0009226500988006592){
     s0+=31.0;
     s1+=47.0;
    } else {
     s0+=43.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i40<0.0474030077457428){
   if(i18<0.9981452226638794){
    if(i50<-0.004920964129269123){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i72<0.004155173897743225){
     s0+=7.0;
     s1+=8.0;
    } else {
     s0+=78.0;
     s1+=2801.0;
    }
   }
  } else {
   if(i17<0.006078050471842289){
    if(i6<-1.229697409144137e-05){
     s0+=442.0;
     s1+=403.0;
    } else {
     s0+=882.0;
     s1+=91.0;
    }
   } else {
    if(i32<0.10044276714324951){
     s0+=104.0;
     s1+=210.0;
    } else {
     s0+=13.0;
     s1+=925.0;
    }
   }
  }
 }
} else {
 if(i4<0.05421367287635803){
  if(i18<1.0019469261169434){
   if(i20<1.1176819801330566){
    if(i34<0.0001879951305454597){
     s0+=137.0;
     s1+=7.0;
    } else {
     s0+=54.0;
     s1+=281.0;
    }
   } else {
    if(i1<0.0678008496761322){
     s0+=326.0;
     s1+=3.0;
    } else {
     s1+=24.0;
    }
   }
  } else {
   if(i69<1.0030970573425293){
    if(i47<0.00020924292039126158){
     s0+=3.0;
    } else {
     s1+=692.0;
    }
   } else {
    if(i33<0.007660713046789169){
     s1+=6.0;
    } else {
     s0+=5.0;
    }
   }
  }
 } else {
  if(i68<0.00013831874821335077){
   if(i10<1.0018781423568726){
    if(i26<1.0203725099563599){
     s0+=2.0;
     s1+=5.0;
    } else {
     s0+=88.0;
     s1+=1.0;
    }
   } else {
    if(i47<0.00038639490958303213){
     s0+=4.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=172.0;
    }
   }
  } else {
   if(i18<0.9984803795814514){
    s0+=14.0;
   } else {
    if(i7<1.0237452983856201){
     s0+=146.0;
     s1+=2566.0;
    } else {
     s1+=6616.0;
    }
   }
  }
 }
}
if(i10<1.003859043121338){
 if(i7<1.0080137252807617){
  if(i13<1.0452277660369873){
   if(i20<1.0451585054397583){
    if(i47<0.00027785092242993414){
     s0+=42709.0;
     s1+=19.0;
    } else {
     s0+=11316.0;
     s1+=249.0;
    }
   } else {
    if(i8<3.349781036376953e-05){
     s0+=7826.0;
     s1+=782.0;
    } else {
     s0+=23.0;
     s1+=81.0;
    }
   }
  } else {
   if(i5<1.001540184020996){
    if(i71<0.0003818352415692061){
     s0+=5128.0;
     s1+=872.0;
    } else {
     s0+=1831.0;
     s1+=1621.0;
    }
   } else {
    if(i47<0.004956144839525223){
     s0+=269.0;
     s1+=383.0;
    } else {
     s0+=36.0;
     s1+=618.0;
    }
   }
  }
 } else {
  if(i31<1.259662389755249){
   if(i0<0.08951902389526367){
    if(i58<0.0591057687997818){
     s0+=187.0;
     s1+=164.0;
    } else {
     s0+=619.0;
     s1+=83.0;
    }
   } else {
    if(i55<0.025364726781845093){
     s0+=85.0;
     s1+=926.0;
    } else {
     s0+=252.0;
     s1+=213.0;
    }
   }
  } else {
   if(i18<0.9986657500267029){
    s0+=92.0;
   } else {
    if(i65<0.0010043629445135593){
     s0+=4.0;
     s1+=1087.0;
    } else {
     s0+=4.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i28<0.0001779396552592516){
  if(i15<2.9027462005615234e-05){
   if(i45<-1.4776579519093502e-05){
    s1+=36.0;
   } else {
    if(i4<0.04708948731422424){
     s0+=381.0;
    } else {
     s0+=21.0;
     s1+=6.0;
    }
   }
  } else {
   s1+=30.0;
  }
 } else {
  if(i5<1.000631332397461){
   if(i67<0.06701289117336273){
    if(i59<-0.0003952014958485961){
     s0+=13.0;
     s1+=20.0;
    } else {
     s0+=118.0;
     s1+=6.0;
    }
   } else {
    if(i1<0.02011162042617798){
     s0+=1.0;
    } else {
     s1+=43.0;
    }
   }
  } else {
   if(i1<0.06511574983596802){
    if(i42<1.000712513923645){
     s0+=90.0;
     s1+=52.0;
    } else {
     s0+=16.0;
     s1+=316.0;
    }
   } else {
    if(i45<-1.295680704060942e-05){
     s0+=38.0;
     s1+=9121.0;
    } else {
     s0+=66.0;
     s1+=372.0;
    }
   }
  }
 }
}
if(i4<0.07235640287399292){
 if(i20<1.0576403141021729){
  if(i28<0.00029259355505928397){
   if(i61<-0.0023888349533081055){
    if(i38<0.0003601312346290797){
     s0+=204.0;
    } else {
     s0+=94.0;
     s1+=85.0;
    }
   } else {
    if(i29<1.0066288709640503){
     s0+=52207.0;
     s1+=200.0;
    } else {
     s0+=26.0;
     s1+=85.0;
    }
   }
  } else {
   if(i20<1.0451428890228271){
    if(i5<1.0031535625457764){
     s0+=4642.0;
     s1+=132.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i5<1.0006458759307861){
     s0+=1041.0;
     s1+=215.0;
    } else {
     s0+=6.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i15<2.3066997528076172e-05){
   if(i35<1.1013743877410889){
    if(i23<1.0004243850708008){
     s0+=1423.0;
     s1+=765.0;
    } else {
     s0+=17.0;
     s1+=591.0;
    }
   } else {
    if(i8<2.008676528930664e-05){
     s0+=8322.0;
     s1+=518.0;
    } else {
     s0+=444.0;
     s1+=386.0;
    }
   }
  } else {
   if(i22<-6.687641143798828e-05){
    if(i46<0.005215461365878582){
     s0+=418.0;
     s1+=89.0;
    } else {
     s0+=79.0;
     s1+=195.0;
    }
   } else {
    if(i68<0.00020539446268230677){
     s0+=20.0;
     s1+=55.0;
    } else {
     s0+=8.0;
     s1+=1358.0;
    }
   }
  }
 }
} else {
 if(i6<-2.1745217964053154e-05){
  if(i6<-7.275529787875712e-05){
   if(i1<0.09996432065963745){
    if(i40<0.05156645178794861){
     s0+=9.0;
     s1+=197.0;
    } else {
     s0+=62.0;
     s1+=9.0;
    }
   } else {
    if(i15<0.0003896057605743408){
     s0+=51.0;
     s1+=9847.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i1<0.10275277495384216){
    if(i36<1.1423697471618652){
     s0+=3.0;
     s1+=228.0;
    } else {
     s0+=317.0;
     s1+=100.0;
    }
   } else {
    if(i53<0.07785207033157349){
     s0+=6.0;
     s1+=1031.0;
    } else {
     s0+=195.0;
     s1+=538.0;
    }
   }
  }
 } else {
  if(i38<0.00532741891220212){
   if(i34<0.005413596052676439){
    if(i67<0.03131314367055893){
     s0+=417.0;
     s1+=68.0;
    } else {
     s0+=238.0;
     s1+=239.0;
    }
   } else {
    if(i17<0.008572017773985863){
     s0+=624.0;
     s1+=24.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i34<0.0017217795830219984){
    if(i8<-6.93202018737793e-05){
     s0+=34.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i36<1.2527469396591187){
     s0+=35.0;
    } else {
     s0+=48.0;
     s1+=194.0;
    }
   }
  }
 }
}
if(i59<-0.0006872478988952935){
 if(i18<0.9990672469139099){
  if(i5<0.9969937801361084){
   if(i54<0.38638585805892944){
    if(i63<-0.003753483295440674){
     s1+=3.0;
    } else {
     s0+=1573.0;
     s1+=4.0;
    }
   } else {
    s1+=5.0;
   }
  } else {
   if(i76<3.466795533313416e-06){
    s0+=16.0;
   } else {
    s1+=21.0;
   }
  }
 } else {
  if(i6<-4.713036832981743e-05){
   if(i17<0.002477067755535245){
    if(i11<0.0003657042980194092){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   } else {
    s1+=7469.0;
   }
  } else {
   if(i45<-5.090246304462198e-06){
    if(i46<-0.002750842133536935){
     s1+=14.0;
    } else {
     s0+=371.0;
     s1+=8.0;
    }
   } else {
    if(i38<0.005568813532590866){
     s0+=87.0;
    } else {
     s1+=83.0;
    }
   }
  }
 }
} else {
 if(i16<1.0082337856292725){
  if(i5<1.0024573802947998){
   if(i28<0.0003282795660197735){
    if(i30<1.0598037242889404){
     s0+=41623.0;
     s1+=14.0;
    } else {
     s0+=13987.0;
     s1+=677.0;
    }
   } else {
    if(i2<0.07822349667549133){
     s0+=10003.0;
     s1+=1218.0;
    } else {
     s0+=728.0;
     s1+=1395.0;
    }
   }
  } else {
   if(i13<1.0343151092529297){
    if(i19<1.002314567565918){
     s1+=39.0;
    } else {
     s0+=55.0;
     s1+=4.0;
    }
   } else {
    if(i22<-0.00012552738189697266){
     s0+=75.0;
     s1+=188.0;
    } else {
     s0+=45.0;
     s1+=1323.0;
    }
   }
  }
 } else {
  if(i22<9.274482727050781e-05){
   if(i37<0.025723377242684364){
    if(i65<-0.004509756341576576){
     s0+=1092.0;
     s1+=176.0;
    } else {
     s0+=995.0;
     s1+=610.0;
    }
   } else {
    if(i17<0.003851969726383686){
     s0+=122.0;
     s1+=15.0;
    } else {
     s0+=91.0;
     s1+=769.0;
    }
   }
  } else {
   if(i22<0.0002142786979675293){
    if(i2<0.05983173847198486){
     s0+=171.0;
     s1+=103.0;
    } else {
     s0+=77.0;
     s1+=709.0;
    }
   } else {
    if(i56<0.0002186461933888495){
     s0+=8.0;
     s1+=29.0;
    } else {
     s0+=1.0;
     s1+=2200.0;
    }
   }
  }
 }
}
if(i16<1.0099655389785767){
 if(i23<1.002927541732788){
  if(i57<0.0007146644638851285){
   if(i47<0.0003558937751222402){
    if(i42<1.000401496887207){
     s0+=46122.0;
     s1+=20.0;
    } else {
     s0+=2307.0;
     s1+=107.0;
    }
   } else {
    if(i3<0.00015151500701904297){
     s0+=11596.0;
     s1+=797.0;
    } else {
     s0+=247.0;
     s1+=359.0;
    }
   }
  } else {
   if(i1<0.06166920065879822){
    if(i5<0.9965620040893555){
     s0+=4129.0;
     s1+=76.0;
    } else {
     s0+=2665.0;
     s1+=769.0;
    }
   } else {
    if(i6<3.2734815249568783e-06){
     s0+=390.0;
     s1+=1153.0;
    } else {
     s0+=424.0;
     s1+=68.0;
    }
   }
  }
 } else {
  if(i29<0.9574280977249146){
   if(i5<0.9998694658279419){
    if(i75<0.0002747524413280189){
     s0+=539.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=16.0;
    }
   } else {
    if(i49<1.0007668733596802){
     s0+=11.0;
     s1+=204.0;
    } else {
     s0+=10.0;
    }
   }
  } else {
   if(i13<1.0413912534713745){
    if(i66<1.4424869732465595e-05){
     s0+=88.0;
     s1+=140.0;
    } else {
     s0+=162.0;
    }
   } else {
    if(i10<1.0003888607025146){
     s0+=191.0;
     s1+=503.0;
    } else {
     s0+=60.0;
     s1+=1900.0;
    }
   }
  }
 }
} else {
 if(i8<3.3736228942871094e-05){
  if(i49<0.9998574256896973){
   if(i15<-9.953975677490234e-06){
    if(i44<0.0020929179154336452){
     s0+=1.0;
     s1+=11.0;
    } else {
     s0+=227.0;
     s1+=3.0;
    }
   } else {
    if(i6<-2.293336729053408e-05){
     s0+=19.0;
     s1+=1140.0;
    } else {
     s0+=437.0;
     s1+=34.0;
    }
   }
  } else {
   if(i0<0.12374001741409302){
    if(i55<0.014347612857818604){
     s0+=598.0;
     s1+=198.0;
    } else {
     s0+=532.0;
     s1+=13.0;
    }
   } else {
    if(i56<0.0010651802876964211){
     s0+=172.0;
     s1+=150.0;
    } else {
     s0+=11.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i1<0.06905430555343628){
   if(i35<1.2392117977142334){
    if(i22<9.012222290039062e-05){
     s0+=2.0;
     s1+=1.0;
    } else {
     s1+=85.0;
    }
   } else {
    if(i61<-0.010311692953109741){
     s1+=8.0;
    } else {
     s0+=123.0;
     s1+=9.0;
    }
   }
  } else {
   if(i2<0.12857815623283386){
    if(i55<0.020101547241210938){
     s0+=38.0;
     s1+=934.0;
    } else {
     s0+=74.0;
     s1+=22.0;
    }
   } else {
    if(i56<0.00014234898844733834){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=22.0;
     s1+=7933.0;
    }
   }
  }
 }
}
if(i0<0.08352804183959961){
 if(i8<4.297494888305664e-05){
  if(i1<0.0663345456123352){
   if(i20<1.0451585054397583){
    if(i57<0.0006792106432840228){
     s0+=49329.0;
     s1+=44.0;
    } else {
     s0+=3045.0;
     s1+=149.0;
    }
   } else {
    if(i44<0.0015406995080411434){
     s0+=5468.0;
     s1+=1013.0;
    } else {
     s0+=8152.0;
     s1+=259.0;
    }
   }
  } else {
   if(i32<0.043124109506607056){
    if(i8<-5.310773849487305e-05){
     s0+=64.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=406.0;
    }
   } else {
    if(i34<0.0002641588216647506){
     s0+=1154.0;
     s1+=7.0;
    } else {
     s0+=1279.0;
     s1+=238.0;
    }
   }
  }
 } else {
  if(i39<0.00014844536781311035){
   if(i57<0.004617579281330109){
    if(i51<-0.028378218412399292){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=293.0;
     s1+=9.0;
    }
   } else {
    s1+=21.0;
   }
  } else {
   if(i36<1.0657644271850586){
    s0+=26.0;
   } else {
    if(i54<0.18945413827896118){
     s0+=95.0;
     s1+=744.0;
    } else {
     s0+=56.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i11<-0.0004050135612487793){
  if(i42<0.9991846084594727){
   if(i27<1.0124242305755615){
    s0+=447.0;
   } else {
    if(i5<0.9970239400863647){
     s0+=161.0;
    } else {
     s0+=12.0;
     s1+=1.0;
    }
   }
  } else {
   if(i38<0.007618185132741928){
    s0+=45.0;
   } else {
    if(i22<-0.0005127787590026855){
     s0+=19.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i8<3.224611282348633e-05){
   if(i70<-0.01754082553088665){
    if(i25<0.050875935703516006){
     s0+=806.0;
     s1+=354.0;
    } else {
     s0+=23.0;
     s1+=712.0;
    }
   } else {
    if(i43<0.00031998351914808154){
     s0+=54.0;
    } else {
     s0+=282.0;
     s1+=2159.0;
    }
   }
  } else {
   if(i6<-4.744988837046549e-05){
    if(i22<6.318092346191406e-06){
     s0+=89.0;
     s1+=1100.0;
    } else {
     s0+=6.0;
     s1+=9657.0;
    }
   } else {
    if(i77<1.0015443563461304){
     s0+=39.0;
     s1+=14.0;
    } else {
     s0+=26.0;
     s1+=274.0;
    }
   }
  }
 }
}
if(i2<0.07832252979278564){
 if(i23<1.0029321908950806){
  if(i13<1.0451608896255493){
   if(i63<-0.001093149185180664){
    if(i39<-4.83393669128418e-05){
     s0+=2296.0;
     s1+=43.0;
    } else {
     s0+=2309.0;
     s1+=426.0;
    }
   } else {
    if(i34<0.00029397718026302755){
     s0+=50630.0;
     s1+=95.0;
    } else {
     s0+=6106.0;
     s1+=203.0;
    }
   }
  } else {
   if(i35<1.1013743877410889){
    if(i33<0.0005212582182139158){
     s0+=1608.0;
     s1+=278.0;
    } else {
     s0+=77.0;
     s1+=624.0;
    }
   } else {
    if(i8<3.838539123535156e-05){
     s0+=5035.0;
     s1+=331.0;
    } else {
     s0+=99.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i30<1.1345939636230469){
   if(i8<3.0100345611572266e-05){
    if(i77<1.0022698640823364){
     s0+=81.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=19.0;
    }
   } else {
    if(i20<1.0365266799926758){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=722.0;
    }
   }
  } else {
   if(i3<0.0009584426879882812){
    if(i11<0.0005809664726257324){
     s0+=780.0;
     s1+=39.0;
    } else {
     s0+=231.0;
     s1+=61.0;
    }
   } else {
    if(i5<1.0046916007995605){
     s0+=34.0;
     s1+=65.0;
    } else {
     s0+=3.0;
     s1+=219.0;
    }
   }
  }
 }
} else {
 if(i6<-1.5611974959028885e-05){
  if(i37<0.02340644784271717){
   if(i14<0.0008161067962646484){
    if(i70<-0.019096415489912033){
     s0+=430.0;
     s1+=227.0;
    } else {
     s0+=167.0;
     s1+=1092.0;
    }
   } else {
    if(i70<-0.041950441896915436){
     s0+=15.0;
     s1+=21.0;
    } else {
     s0+=17.0;
     s1+=2189.0;
    }
   }
  } else {
   if(i3<-0.0014150738716125488){
    if(i34<0.007681394461542368){
     s0+=19.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i2<0.08401608467102051){
     s0+=22.0;
     s1+=34.0;
    } else {
     s0+=32.0;
     s1+=9902.0;
    }
   }
  }
 } else {
  if(i42<0.9992890357971191){
   s0+=426.0;
  } else {
   if(i65<-0.003225181018933654){
    if(i56<0.001095086452551186){
     s0+=516.0;
     s1+=81.0;
    } else {
     s0+=67.0;
     s1+=85.0;
    }
   } else {
    if(i47<0.0004804261261597276){
     s0+=63.0;
     s1+=6.0;
    } else {
     s0+=47.0;
     s1+=254.0;
    }
   }
  }
 }
}
if(i4<0.0719684362411499){
 if(i66<-7.983931027411018e-06){
  if(i17<0.0005550644709728658){
   s0+=5.0;
  } else {
   if(i72<0.20079433917999268){
    s1+=842.0;
   } else {
    if(i65<0.004028679803013802){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i18<1.0018284320831299){
   if(i1<0.07853224873542786){
    if(i50<0.007703953422605991){
     s0+=64958.0;
     s1+=1203.0;
    } else {
     s0+=3201.0;
     s1+=694.0;
    }
   } else {
    if(i13<1.0445520877838135){
     s0+=180.0;
     s1+=109.0;
    } else {
     s0+=56.0;
     s1+=889.0;
    }
   }
  } else {
   if(i41<0.00012740647071041167){
    if(i30<1.1166470050811768){
     s0+=21.0;
     s1+=456.0;
    } else {
     s0+=137.0;
     s1+=221.0;
    }
   } else {
    if(i3<0.0004038214683532715){
     s0+=414.0;
     s1+=34.0;
    } else {
     s0+=98.0;
     s1+=163.0;
    }
   }
  }
 }
} else {
 if(i23<1.0010404586791992){
  if(i40<0.04244464635848999){
   if(i1<0.0859164297580719){
    if(i55<0.012696772813796997){
     s0+=36.0;
     s1+=97.0;
    } else {
     s0+=45.0;
    }
   } else {
    if(i18<0.9977903366088867){
     s0+=11.0;
    } else {
     s0+=19.0;
     s1+=1328.0;
    }
   }
  } else {
   if(i2<0.13002842664718628){
    if(i40<0.054121196269989014){
     s0+=256.0;
     s1+=160.0;
    } else {
     s0+=862.0;
     s1+=114.0;
    }
   } else {
    if(i22<5.27799129486084e-05){
     s0+=364.0;
     s1+=516.0;
    } else {
     s0+=25.0;
     s1+=526.0;
    }
   }
  }
 } else {
  if(i17<0.002801628317683935){
   if(i9<1.1204302310943604){
    if(i61<0.006505638360977173){
     s0+=31.0;
     s1+=256.0;
    } else {
     s0+=41.0;
     s1+=9.0;
    }
   } else {
    if(i45<-3.1258194212568924e-05){
     s1+=20.0;
    } else {
     s0+=124.0;
     s1+=2.0;
    }
   }
  } else {
   if(i3<0.00042998790740966797){
    if(i59<-0.00016278066323138773){
     s0+=2.0;
     s1+=475.0;
    } else {
     s0+=110.0;
     s1+=132.0;
    }
   } else {
    if(i2<0.12595805525779724){
     s0+=58.0;
     s1+=670.0;
    } else {
     s0+=4.0;
     s1+=8269.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i34<0.0002780102367978543){
  if(i5<1.0025041103363037){
   if(i19<1.0076158046722412){
    if(i63<-0.0027028024196624756){
     s1+=24.0;
    } else {
     s0+=51777.0;
     s1+=166.0;
    }
   } else {
    if(i2<0.07987207174301147){
     s0+=193.0;
     s1+=31.0;
    } else {
     s1+=17.0;
    }
   }
  } else {
   if(i44<0.0009939552983269095){
    if(i47<0.00018598941096570343){
     s0+=3.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i18<1.0025358200073242){
     s0+=86.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i39<-3.415346145629883e-05){
   if(i2<0.0802452564239502){
    if(i55<-0.010747939348220825){
     s0+=830.0;
     s1+=58.0;
    } else {
     s0+=5221.0;
     s1+=54.0;
    }
   } else {
    if(i18<0.9980072975158691){
     s0+=72.0;
    } else {
     s0+=5.0;
     s1+=96.0;
    }
   }
  } else {
   if(i2<0.0765465795993805){
    if(i36<1.1182726621627808){
     s0+=1258.0;
     s1+=978.0;
    } else {
     s0+=5695.0;
     s1+=277.0;
    }
   } else {
    if(i22<-0.00031387805938720703){
     s0+=96.0;
     s1+=68.0;
    } else {
     s0+=32.0;
     s1+=794.0;
    }
   }
  }
 }
} else {
 if(i8<3.36766242980957e-05){
  if(i56<0.001874139066785574){
   if(i22<0.00011175870895385742){
    if(i38<0.006204610224813223){
     s0+=4510.0;
     s1+=1114.0;
    } else {
     s0+=88.0;
     s1+=393.0;
    }
   } else {
    if(i0<0.06693214178085327){
     s0+=96.0;
     s1+=16.0;
    } else {
     s0+=16.0;
     s1+=376.0;
    }
   }
  } else {
   if(i1<0.09599518775939941){
    if(i59<-0.00018068306962959468){
     s0+=181.0;
     s1+=282.0;
    } else {
     s0+=616.0;
     s1+=96.0;
    }
   } else {
    if(i45<-4.319318577472586e-06){
     s0+=61.0;
     s1+=1072.0;
    } else {
     s0+=24.0;
    }
   }
  }
 } else {
  if(i22<-9.167194366455078e-05){
   if(i56<0.0026728175580501556){
    if(i2<0.15855935215950012){
     s0+=126.0;
     s1+=9.0;
    } else {
     s0+=6.0;
     s1+=52.0;
    }
   } else {
    if(i1<0.10275378823280334){
     s0+=79.0;
     s1+=147.0;
    } else {
     s0+=9.0;
     s1+=475.0;
    }
   }
  } else {
   if(i29<1.0209013223648071){
    if(i45<-1.5519271983066574e-05){
     s0+=56.0;
     s1+=2787.0;
    } else {
     s0+=107.0;
     s1+=258.0;
    }
   } else {
    if(i38<0.007966635748744011){
     s0+=5.0;
     s1+=1286.0;
    } else {
     s1+=5973.0;
    }
   }
  }
 }
}
if(i73<1.0077447891235352){
 if(i16<1.0107638835906982){
  if(i4<0.0790056586265564){
   if(i1<0.08323490619659424){
    if(i3<0.0006163120269775391){
     s0+=67027.0;
     s1+=1793.0;
    } else {
     s0+=166.0;
     s1+=424.0;
    }
   } else {
    if(i76<6.137770469649695e-06){
     s0+=89.0;
     s1+=669.0;
    } else {
     s0+=109.0;
     s1+=5.0;
    }
   }
  } else {
   if(i5<0.9963316321372986){
    if(i71<0.0008447908330708742){
     s0+=265.0;
     s1+=7.0;
    } else {
     s0+=28.0;
     s1+=70.0;
    }
   } else {
    if(i17<0.0016038637841120362){
     s0+=180.0;
     s1+=46.0;
    } else {
     s0+=210.0;
     s1+=2086.0;
    }
   }
  }
 } else {
  if(i67<0.09650445729494095){
   if(i57<-0.0005198961589485407){
    if(i30<1.255998969078064){
     s0+=33.0;
     s1+=238.0;
    } else {
     s0+=44.0;
     s1+=8.0;
    }
   } else {
    if(i8<5.900859832763672e-05){
     s0+=1073.0;
     s1+=433.0;
    } else {
     s0+=22.0;
     s1+=138.0;
    }
   }
  } else {
   if(i43<0.005410416983067989){
    if(i56<0.0011857126373797655){
     s0+=79.0;
     s1+=8.0;
    } else {
     s1+=75.0;
    }
   } else {
    if(i2<0.1525319516658783){
     s0+=39.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=974.0;
    }
   }
  }
 }
} else {
 if(i14<0.0011443495750427246){
  if(i2<0.07237401604652405){
   if(i1<0.06601113080978394){
    if(i75<1.8318227375857532e-05){
     s0+=11.0;
     s1+=38.0;
    } else {
     s0+=1273.0;
     s1+=127.0;
    }
   } else {
    if(i35<1.1108002662658691){
     s0+=4.0;
     s1+=121.0;
    } else {
     s0+=94.0;
     s1+=11.0;
    }
   }
  } else {
   if(i37<0.02487683668732643){
    if(i13<1.1507387161254883){
     s0+=69.0;
     s1+=493.0;
    } else {
     s0+=176.0;
     s1+=64.0;
    }
   } else {
    if(i45<5.6287758525286335e-06){
     s0+=23.0;
     s1+=881.0;
    } else {
     s0+=7.0;
    }
   }
  }
 } else {
  if(i14<0.001595616340637207){
   if(i34<0.00023091303592082113){
    if(i43<0.0016253638314083219){
     s1+=4.0;
    } else {
     s0+=55.0;
    }
   } else {
    if(i31<1.2451565265655518){
     s1+=349.0;
    } else {
     s0+=59.0;
     s1+=251.0;
    }
   }
  } else {
   s1+=7794.0;
  }
 }
}
if(i5<1.0024561882019043){
 if(i26<1.0095372200012207){
  if(i24<1.0448895692825317){
   if(i61<-0.0023179054260253906){
    if(i2<0.05655971169471741){
     s0+=5099.0;
     s1+=684.0;
    } else {
     s0+=249.0;
     s1+=702.0;
    }
   } else {
    if(i47<0.0003958973102271557){
     s0+=48860.0;
     s1+=120.0;
    } else {
     s0+=12229.0;
     s1+=1083.0;
    }
   }
  } else {
   if(i0<0.11332380771636963){
    if(i6<-2.6108435122296214e-05){
     s0+=244.0;
     s1+=174.0;
    } else {
     s0+=999.0;
     s1+=85.0;
    }
   } else {
    if(i18<0.9987680315971375){
     s0+=145.0;
     s1+=5.0;
    } else {
     s0+=108.0;
     s1+=736.0;
    }
   }
  }
 } else {
  if(i1<0.08209341764450073){
   if(i35<1.1013743877410889){
    if(i17<0.0019000545144081116){
     s0+=400.0;
     s1+=70.0;
    } else {
     s0+=25.0;
     s1+=155.0;
    }
   } else {
    if(i6<-7.524278771597892e-05){
     s0+=17.0;
     s1+=13.0;
    } else {
     s0+=1500.0;
     s1+=32.0;
    }
   }
  } else {
   if(i18<0.9981062412261963){
    s0+=121.0;
   } else {
    if(i40<0.050467491149902344){
     s0+=61.0;
     s1+=1163.0;
    } else {
     s0+=647.0;
     s1+=803.0;
    }
   }
  }
 }
} else {
 if(i2<0.05434945225715637){
  if(i11<0.0005865693092346191){
   if(i39<0.00019127130508422852){
    if(i45<-1.5117961993382778e-05){
     s1+=34.0;
    } else {
     s0+=163.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.0006166758830659091){
     s0+=2.0;
    } else {
     s1+=38.0;
    }
   }
  } else {
   if(i33<0.008493910543620586){
    if(i48<0.001297295093536377){
     s0+=9.0;
     s1+=387.0;
    } else {
     s0+=5.0;
     s1+=4.0;
    }
   } else {
    if(i68<0.0013786923373118043){
     s0+=57.0;
     s1+=10.0;
    } else {
     s1+=24.0;
    }
   }
  }
 } else {
  if(i6<-4.32599445048254e-05){
   if(i14<2.9325485229492188e-05){
    if(i37<0.019104566425085068){
     s0+=90.0;
     s1+=97.0;
    } else {
     s0+=5.0;
     s1+=768.0;
    }
   } else {
    if(i12<1.0031784772872925){
     s0+=3.0;
     s1+=469.0;
    } else {
     s0+=1.0;
     s1+=9312.0;
    }
   }
  } else {
   if(i18<1.0016839504241943){
    if(i68<0.0005568067426793277){
     s0+=79.0;
     s1+=2.0;
    } else {
     s1+=21.0;
    }
   } else {
    s1+=142.0;
   }
  }
 }
}
if(i0<0.08514660596847534){
 if(i51<-0.02883884310722351){
  if(i5<1.0012518167495728){
   if(i2<0.03268992900848389){
    if(i23<1.0004339218139648){
     s0+=1824.0;
     s1+=146.0;
    } else {
     s0+=198.0;
     s1+=71.0;
    }
   } else {
    if(i61<0.0045601725578308105){
     s0+=111.0;
     s1+=230.0;
    } else {
     s0+=119.0;
     s1+=17.0;
    }
   }
  } else {
   if(i57<4.485602039494552e-05){
    if(i54<0.055421482771635056){
     s0+=15.0;
     s1+=28.0;
    } else {
     s0+=52.0;
     s1+=4.0;
    }
   } else {
    if(i56<0.00027668464463204145){
     s0+=7.0;
     s1+=8.0;
    } else {
     s0+=26.0;
     s1+=520.0;
    }
   }
  }
 } else {
  if(i5<1.0024688243865967){
   if(i63<-0.0012702345848083496){
    if(i31<1.1823735237121582){
     s0+=1569.0;
     s1+=603.0;
    } else {
     s0+=3123.0;
     s1+=40.0;
    }
   } else {
    if(i20<1.0486011505126953){
     s0+=53239.0;
     s1+=115.0;
    } else {
     s0+=8415.0;
     s1+=792.0;
    }
   }
  } else {
   if(i36<1.2314128875732422){
    if(i64<-4.795148015546147e-06){
     s0+=2.0;
     s1+=417.0;
    } else {
     s0+=7.0;
     s1+=4.0;
    }
   } else {
    if(i39<0.00023916363716125488){
     s0+=209.0;
     s1+=4.0;
    } else {
     s0+=46.0;
     s1+=82.0;
    }
   }
  }
 }
} else {
 if(i18<0.998518705368042){
  if(i17<0.007199562154710293){
   if(i64<-3.534659981596633e-06){
    if(i57<0.00039785978151485324){
     s0+=22.0;
    } else {
     s0+=14.0;
     s1+=9.0;
    }
   } else {
    if(i12<0.9956526160240173){
     s0+=620.0;
    } else {
     s0+=77.0;
     s1+=2.0;
    }
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i31<1.319869041442871){
   if(i52<0.04285264015197754){
    if(i70<-0.019649730995297432){
     s0+=312.0;
     s1+=547.0;
    } else {
     s0+=277.0;
     s1+=4560.0;
    }
   } else {
    if(i6<-4.262005677446723e-05){
     s0+=98.0;
     s1+=400.0;
    } else {
     s0+=548.0;
     s1+=258.0;
    }
   }
  } else {
   if(i14<-0.004058569669723511){
    if(i31<1.4303699731826782){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=8.0;
     s1+=58.0;
    }
   } else {
    if(i33<0.0046294271014630795){
     s0+=15.0;
    } else {
     s0+=35.0;
     s1+=8312.0;
    }
   }
  }
 }
}
if(i1<0.08514708280563354){
 if(i5<1.0024782419204712){
  if(i51<-0.030526429414749146){
   if(i38<0.00032425246899947524){
    if(i42<1.0003578662872314){
     s0+=533.0;
    } else {
     s0+=3.0;
     s1+=3.0;
    }
   } else {
    if(i38<0.001101435860618949){
     s0+=130.0;
     s1+=312.0;
    } else {
     s0+=1393.0;
     s1+=310.0;
    }
   }
  } else {
   if(i47<0.00030543009052053094){
    if(i19<1.009287714958191){
     s0+=46815.0;
     s1+=77.0;
    } else {
     s0+=3.0;
     s1+=34.0;
    }
   } else {
    if(i38<0.0010573556646704674){
     s0+=4996.0;
     s1+=1187.0;
    } else {
     s0+=15394.0;
     s1+=320.0;
    }
   }
  }
 } else {
  if(i30<1.1353518962860107){
   if(i10<0.9957640171051025){
    s0+=2.0;
   } else {
    if(i13<1.0343273878097534){
     s0+=5.0;
     s1+=22.0;
    } else {
     s1+=703.0;
    }
   }
  } else {
   if(i46<0.002443512436002493){
    if(i5<1.0051140785217285){
     s0+=247.0;
     s1+=8.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i50<0.018917696550488472){
     s0+=42.0;
     s1+=100.0;
    } else {
     s0+=1.0;
     s1+=191.0;
    }
   }
  }
 }
} else {
 if(i15<-1.5407800674438477e-05){
  if(i38<0.005588966887444258){
   if(i58<0.09137210249900818){
    if(i11<-0.00041359663009643555){
     s0+=87.0;
    } else {
     s1+=2.0;
    }
   } else {
    s0+=292.0;
   }
  } else {
   if(i0<0.10435634851455688){
    s0+=15.0;
   } else {
    s1+=12.0;
   }
  }
 } else {
  if(i5<1.0018532276153564){
   if(i24<1.0534873008728027){
    if(i40<0.054625093936920166){
     s0+=46.0;
     s1+=1377.0;
    } else {
     s0+=79.0;
     s1+=124.0;
    }
   } else {
    if(i48<0.00444340705871582){
     s0+=129.0;
     s1+=774.0;
    } else {
     s0+=737.0;
     s1+=906.0;
    }
   }
  } else {
   if(i0<0.13283678889274597){
    if(i53<0.07321858406066895){
     s0+=25.0;
     s1+=1259.0;
    } else {
     s0+=63.0;
     s1+=59.0;
    }
   } else {
    if(i43<0.003536245785653591){
     s0+=12.0;
     s1+=577.0;
    } else {
     s0+=4.0;
     s1+=8829.0;
    }
   }
  }
 }
}
if(i2<0.07663694024085999){
 if(i3<0.0006022751331329346){
  if(i48<-0.001446366310119629){
   if(i1<0.04914477467536926){
    if(i3<-0.0003374814987182617){
     s0+=2325.0;
     s1+=157.0;
    } else {
     s0+=1686.0;
     s1+=386.0;
    }
   } else {
    if(i41<3.929741069441661e-05){
     s0+=162.0;
     s1+=32.0;
    } else {
     s0+=84.0;
     s1+=208.0;
    }
   }
  } else {
   if(i21<1.0074549913406372){
    if(i54<0.029044726863503456){
     s0+=55919.0;
     s1+=318.0;
    } else {
     s0+=6640.0;
     s1+=614.0;
    }
   } else {
    if(i31<1.1040980815887451){
     s0+=418.0;
     s1+=335.0;
    } else {
     s0+=1482.0;
     s1+=43.0;
    }
   }
  }
 } else {
  if(i42<1.000341534614563){
   if(i50<0.008288932964205742){
    s0+=96.0;
   } else {
    s1+=5.0;
   }
  } else {
   if(i30<1.1353518962860107){
    if(i5<1.0017361640930176){
     s0+=3.0;
    } else {
     s1+=746.0;
    }
   } else {
    if(i37<0.02005688101053238){
     s0+=232.0;
     s1+=116.0;
    } else {
     s0+=6.0;
     s1+=188.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015729665756226){
  if(i3<-0.0008147060871124268){
   if(i56<0.004461616277694702){
    if(i49<0.9996116757392883){
     s0+=365.0;
    } else {
     s0+=150.0;
     s1+=50.0;
    }
   } else {
    if(i20<1.078393578529358){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=80.0;
    }
   }
  } else {
   if(i70<-0.017545655369758606){
    if(i44<0.008590826764702797){
     s0+=801.0;
     s1+=406.0;
    } else {
     s0+=62.0;
     s1+=548.0;
    }
   } else {
    if(i33<0.00045606427011080086){
     s0+=110.0;
     s1+=13.0;
    } else {
     s0+=247.0;
     s1+=2026.0;
    }
   }
  }
 } else {
  if(i5<1.0038816928863525){
   if(i37<0.009299577213823795){
    if(i53<0.048535317182540894){
     s0+=1.0;
     s1+=76.0;
    } else {
     s0+=103.0;
     s1+=55.0;
    }
   } else {
    if(i69<1.001488208770752){
     s0+=45.0;
     s1+=1529.0;
    } else {
     s0+=43.0;
     s1+=169.0;
    }
   }
  } else {
   if(i23<0.9974174499511719){
    if(i31<1.2671408653259277){
     s0+=10.0;
     s1+=1.0;
    } else {
     s1+=134.0;
    }
   } else {
    if(i0<0.12734442949295044){
     s0+=15.0;
     s1+=755.0;
    } else {
     s0+=2.0;
     s1+=8251.0;
    }
   }
  }
 }
}
if(i2<0.07663598656654358){
 if(i47<0.00031829572981223464){
  if(i16<1.0095380544662476){
   if(i45<-1.395154686179012e-05){
    if(i14<1.245737075805664e-05){
     s0+=342.0;
     s1+=9.0;
    } else {
     s1+=48.0;
    }
   } else {
    if(i26<1.0125958919525146){
     s0+=47105.0;
     s1+=55.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i31<1.0558756589889526){
    s0+=17.0;
   } else {
    if(i44<0.0014788368716835976){
     s0+=4.0;
     s1+=73.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i23<1.0025376081466675){
   if(i10<0.9942014217376709){
    if(i48<-0.0017926990985870361){
     s0+=1352.0;
     s1+=78.0;
    } else {
     s0+=10789.0;
     s1+=45.0;
    }
   } else {
    if(i2<0.057624369859695435){
     s0+=7241.0;
     s1+=1097.0;
    } else {
     s0+=1173.0;
     s1+=656.0;
    }
   }
  } else {
   if(i22<-0.0001404881477355957){
    if(i5<1.0015339851379395){
     s0+=919.0;
     s1+=51.0;
    } else {
     s0+=74.0;
     s1+=96.0;
    }
   } else {
    if(i38<0.0012163363862782717){
     s1+=569.0;
    } else {
     s0+=180.0;
     s1+=297.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00038558244705200195){
  if(i33<0.0017664964543655515){
   s0+=430.0;
  } else {
   if(i62<1.0151106119155884){
    if(i16<0.982064962387085){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=65.0;
     s1+=1.0;
    }
   } else {
    if(i54<0.0296180360019207){
     s0+=5.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i17<0.0018953131511807442){
   if(i40<0.03896516561508179){
    if(i33<0.0005858325166627765){
     s0+=16.0;
     s1+=4.0;
    } else {
     s0+=15.0;
     s1+=238.0;
    }
   } else {
    if(i3<0.0009506344795227051){
     s0+=667.0;
     s1+=151.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i22<-8.851289749145508e-05){
    if(i53<0.048184216022491455){
     s0+=7.0;
     s1+=920.0;
    } else {
     s0+=546.0;
     s1+=990.0;
    }
   } else {
    if(i31<1.066007137298584){
     s0+=17.0;
    } else {
     s0+=172.0;
     s1+=11680.0;
    }
   }
  }
 }
}
if(i18<1.0014021396636963){
 if(i58<0.049022577702999115){
  if(i29<1.0074317455291748){
   if(i63<-0.0020546019077301025){
    if(i30<1.094580888748169){
     s0+=50.0;
     s1+=159.0;
    } else {
     s0+=80.0;
     s1+=12.0;
    }
   } else {
    if(i24<1.0469720363616943){
     s0+=56151.0;
     s1+=596.0;
    } else {
     s0+=308.0;
     s1+=85.0;
    }
   }
  } else {
   if(i6<-3.684323382913135e-05){
    if(i1<0.0624660849571228){
     s0+=60.0;
     s1+=49.0;
    } else {
     s0+=14.0;
     s1+=446.0;
    }
   } else {
    if(i72<0.019521649926900864){
     s0+=12.0;
     s1+=59.0;
    } else {
     s0+=346.0;
     s1+=37.0;
    }
   }
  }
 } else {
  if(i4<0.06895926594734192){
   if(i10<0.9939212799072266){
    if(i0<0.08541879057884216){
     s0+=5718.0;
     s1+=82.0;
    } else {
     s0+=135.0;
     s1+=39.0;
    }
   } else {
    if(i3<0.00018262863159179688){
     s0+=4619.0;
     s1+=1163.0;
    } else {
     s0+=314.0;
     s1+=389.0;
    }
   }
  } else {
   if(i38<0.006177412811666727){
    if(i34<0.0022385644260793924){
     s0+=305.0;
     s1+=946.0;
    } else {
     s0+=1000.0;
     s1+=351.0;
    }
   } else {
    if(i17<0.002090195659548044){
     s0+=43.0;
     s1+=17.0;
    } else {
     s0+=61.0;
     s1+=1805.0;
    }
   }
  }
 }
} else {
 if(i5<1.0024570226669312){
  if(i56<0.005401127506047487){
   if(i8<2.866983413696289e-05){
    if(i4<0.10580331087112427){
     s0+=1281.0;
     s1+=128.0;
    } else {
     s0+=22.0;
     s1+=127.0;
    }
   } else {
    if(i33<0.008478798903524876){
     s0+=125.0;
     s1+=238.0;
    } else {
     s0+=87.0;
     s1+=4.0;
    }
   }
  } else {
   if(i75<0.00022272657952271402){
    if(i4<0.03940001130104065){
     s0+=20.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=33.0;
    }
   } else {
    if(i2<0.0011035501956939697){
     s0+=3.0;
     s1+=2.0;
    } else {
     s1+=269.0;
    }
   }
  }
 } else {
  if(i13<1.0343151092529297){
   if(i39<0.00020122528076171875){
    s0+=46.0;
   } else {
    s1+=41.0;
   }
  } else {
   if(i8<6.943941116333008e-05){
    if(i36<1.2314128875732422){
     s0+=3.0;
     s1+=415.0;
    } else {
     s0+=153.0;
     s1+=412.0;
    }
   } else {
    if(i5<1.0045180320739746){
     s0+=48.0;
     s1+=384.0;
    } else {
     s0+=37.0;
     s1+=8917.0;
    }
   }
  }
 }
}
if(i27<1.013227939605713){
 if(i22<0.00015145540237426758){
  if(i2<0.07751622796058655){
   if(i3<0.0006018579006195068){
    if(i50<0.007609246298670769){
     s0+=64025.0;
     s1+=1186.0;
    } else {
     s0+=3148.0;
     s1+=752.0;
    }
   } else {
    if(i44<0.0004256158135831356){
     s0+=76.0;
    } else {
     s0+=125.0;
     s1+=419.0;
    }
   }
  } else {
   if(i3<-0.0008113682270050049){
    if(i72<0.3202463388442993){
     s0+=342.0;
     s1+=33.0;
    } else {
     s0+=8.0;
     s1+=31.0;
    }
   } else {
    if(i47<0.00030032347422093153){
     s0+=64.0;
     s1+=5.0;
    } else {
     s0+=188.0;
     s1+=2362.0;
    }
   }
  }
 } else {
  if(i64<-2.871713149943389e-05){
   s0+=155.0;
  } else {
   if(i13<1.0385410785675049){
    if(i5<1.004154920578003){
     s0+=91.0;
     s1+=3.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i34<0.0003505312488414347){
     s0+=78.0;
     s1+=117.0;
    } else {
     s0+=11.0;
     s1+=1771.0;
    }
   }
  }
 }
} else {
 if(i0<0.09943395853042603){
  if(i14<0.0014221668243408203){
   if(i38<0.0011151813669130206){
    if(i6<-2.443584889988415e-05){
     s0+=7.0;
     s1+=234.0;
    } else {
     s0+=383.0;
     s1+=27.0;
    }
   } else {
    if(i5<1.004500389099121){
     s0+=1598.0;
     s1+=68.0;
    } else {
     s0+=3.0;
     s1+=22.0;
    }
   }
  } else {
   s1+=170.0;
  }
 } else {
  if(i37<0.02764170616865158){
   if(i60<0.005433380603790283){
    if(i65<-0.008942779153585434){
     s0+=108.0;
     s1+=80.0;
    } else {
     s0+=65.0;
     s1+=2292.0;
    }
   } else {
    if(i22<0.00010520219802856445){
     s0+=573.0;
     s1+=157.0;
    } else {
     s0+=19.0;
     s1+=170.0;
    }
   }
  } else {
   if(i5<0.9941493272781372){
    if(i10<0.9857950210571289){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   } else {
    if(i18<0.9989136457443237){
     s0+=15.0;
     s1+=5.0;
    } else {
     s0+=47.0;
     s1+=7146.0;
    }
   }
  }
 }
}
if(i2<0.07868912816047668){
 if(i10<1.0062155723571777){
  if(i63<-0.0012756884098052979){
   if(i14<-0.001981109380722046){
    if(i67<0.2175183743238449){
     s0+=2857.0;
     s1+=104.0;
    } else {
     s0+=3.0;
     s1+=21.0;
    }
   } else {
    if(i41<3.05232206301298e-05){
     s0+=1571.0;
     s1+=114.0;
    } else {
     s0+=1512.0;
     s1+=936.0;
    }
   }
  } else {
   if(i20<1.048384666442871){
    if(i77<1.0017820596694946){
     s0+=51404.0;
     s1+=75.0;
    } else {
     s0+=2311.0;
     s1+=64.0;
    }
   } else {
    if(i29<1.004749059677124){
     s0+=7445.0;
     s1+=672.0;
    } else {
     s0+=2023.0;
     s1+=569.0;
    }
   }
  }
 } else {
  if(i56<0.0007490832358598709){
   if(i8<6.22868537902832e-05){
    if(i43<0.0010691698407754302){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=175.0;
     s1+=1.0;
    }
   } else {
    s1+=30.0;
   }
  } else {
   if(i45<-1.3187025615479797e-05){
    if(i19<0.8932077288627625){
     s0+=3.0;
    } else {
     s0+=2.0;
     s1+=696.0;
    }
   } else {
    if(i36<1.1554619073867798){
     s1+=4.0;
    } else {
     s0+=61.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i23<1.0003477334976196){
  if(i40<0.048689067363739014){
   if(i39<-0.00028452277183532715){
    s0+=80.0;
   } else {
    if(i1<0.08462494611740112){
     s0+=51.0;
     s1+=65.0;
    } else {
     s0+=34.0;
     s1+=1626.0;
    }
   }
  } else {
   if(i2<0.286728173494339){
    if(i2<0.128620445728302){
     s0+=730.0;
     s1+=153.0;
    } else {
     s0+=290.0;
     s1+=249.0;
    }
   } else {
    if(i38<0.005288185551762581){
     s0+=106.0;
     s1+=10.0;
    } else {
     s1+=496.0;
    }
   }
  }
 } else {
  if(i1<0.12809059023857117){
   if(i55<0.014790654182434082){
    if(i70<-0.02642151340842247){
     s0+=46.0;
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=1459.0;
    }
   } else {
    if(i33<0.0008593359962105751){
     s0+=1.0;
     s1+=29.0;
    } else {
     s0+=269.0;
     s1+=41.0;
    }
   }
  } else {
   if(i17<0.0028478894382715225){
    if(i48<0.009069263935089111){
     s0+=17.0;
     s1+=210.0;
    } else {
     s0+=71.0;
     s1+=1.0;
    }
   } else {
    if(i0<0.16775482892990112){
     s0+=14.0;
     s1+=1151.0;
    } else {
     s0+=2.0;
     s1+=8359.0;
    }
   }
  }
 }
}
if(i6<-7.899619959061965e-05){
 if(i0<0.06160452961921692){
  if(i14<-1.9431114196777344e-05){
   if(i50<0.014394168742001057){
    if(i4<0.05842405557632446){
     s0+=613.0;
     s1+=20.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i44<0.02067866176366806){
     s0+=20.0;
     s1+=108.0;
    } else {
     s0+=33.0;
     s1+=20.0;
    }
   }
  } else {
   if(i33<0.01094823144376278){
    if(i10<0.9977754354476929){
     s0+=1.0;
     s1+=9.0;
    } else {
     s1+=110.0;
    }
   } else {
    if(i5<1.0098555088043213){
     s0+=3.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i69<0.9970368146896362){
   s0+=44.0;
  } else {
   if(i69<1.004770040512085){
    if(i1<0.14058148860931396){
     s0+=96.0;
     s1+=1480.0;
    } else {
     s0+=4.0;
     s1+=9161.0;
    }
   } else {
    if(i14<-0.0024514198303222656){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=96.0;
    }
   }
  }
 }
} else {
 if(i19<1.0074553489685059){
  if(i1<0.08023625612258911){
   if(i3<0.0007367730140686035){
    if(i55<-0.0058502256870269775){
     s0+=3377.0;
     s1+=754.0;
    } else {
     s0+=63166.0;
     s1+=932.0;
    }
   } else {
    if(i46<0.001380078960210085){
     s0+=35.0;
     s1+=32.0;
    } else {
     s0+=3.0;
     s1+=237.0;
    }
   }
  } else {
   if(i25<0.018197190016508102){
    if(i55<-0.0013908445835113525){
     s0+=62.0;
     s1+=152.0;
    } else {
     s0+=512.0;
     s1+=145.0;
    }
   } else {
    if(i3<-0.0007987618446350098){
     s0+=202.0;
     s1+=44.0;
    } else {
     s0+=199.0;
     s1+=1346.0;
    }
   }
  }
 } else {
  if(i6<-2.7098005375592038e-05){
   if(i43<0.0017399422358721495){
    if(i35<1.24208402633667){
     s0+=25.0;
     s1+=1374.0;
    } else {
     s0+=28.0;
    }
   } else {
    if(i57<-0.0004513170279096812){
     s0+=40.0;
     s1+=328.0;
    } else {
     s0+=721.0;
     s1+=464.0;
    }
   }
  } else {
   if(i5<1.002272605895996){
    if(i37<0.013544660061597824){
     s0+=1112.0;
     s1+=19.0;
    } else {
     s0+=799.0;
     s1+=237.0;
    }
   } else {
    if(i42<1.0005712509155273){
     s0+=1.0;
    } else {
     s1+=48.0;
    }
   }
  }
 }
}
if(i1<0.08225274085998535){
 if(i3<0.0006022751331329346){
  if(i20<1.0467959642410278){
   if(i71<0.0002718513715080917){
    if(i1<0.08118820190429688){
     s0+=49480.0;
     s1+=52.0;
    } else {
     s0+=20.0;
     s1+=6.0;
    }
   } else {
    if(i73<0.984262228012085){
     s0+=3957.0;
     s1+=27.0;
    } else {
     s0+=1460.0;
     s1+=191.0;
    }
   }
  } else {
   if(i30<1.1036889553070068){
    if(i61<-0.002394765615463257){
     s0+=328.0;
     s1+=478.0;
    } else {
     s0+=4275.0;
     s1+=923.0;
    }
   } else {
    if(i3<0.0002849102020263672){
     s0+=8990.0;
     s1+=310.0;
    } else {
     s0+=471.0;
     s1+=110.0;
    }
   }
  }
 } else {
  if(i51<-0.008410096168518066){
   if(i63<0.0026794075965881348){
    if(i33<0.0003877920680679381){
     s0+=20.0;
    } else {
     s0+=43.0;
     s1+=718.0;
    }
   } else {
    if(i1<0.0719904899597168){
     s0+=49.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i64<-4.955779331794474e-06){
    if(i35<1.4786540269851685){
     s0+=45.0;
     s1+=188.0;
    } else {
     s0+=86.0;
     s1+=4.0;
    }
   } else {
    s0+=108.0;
   }
  }
 }
} else {
 if(i7<1.0106477737426758){
  if(i17<0.004670009948313236){
   if(i65<-0.004810242913663387){
    if(i71<0.0010768576757982373){
     s0+=766.0;
     s1+=117.0;
    } else {
     s0+=12.0;
     s1+=40.0;
    }
   } else {
    if(i15<-1.5050172805786133e-05){
     s0+=148.0;
     s1+=8.0;
    } else {
     s0+=196.0;
     s1+=1038.0;
    }
   }
  } else {
   if(i2<0.12668082118034363){
    if(i65<-0.007647928316146135){
     s0+=103.0;
     s1+=32.0;
    } else {
     s0+=98.0;
     s1+=871.0;
    }
   } else {
    if(i11<-0.0005109012126922607){
     s0+=47.0;
    } else {
     s0+=4.0;
     s1+=2162.0;
    }
   }
  }
 } else {
  if(i12<1.0078506469726562){
   if(i37<0.025242837145924568){
    if(i48<0.00565648078918457){
     s0+=37.0;
     s1+=350.0;
    } else {
     s0+=144.0;
     s1+=71.0;
    }
   } else {
    if(i56<0.0007427115342579782){
     s0+=52.0;
     s1+=28.0;
    } else {
     s0+=18.0;
     s1+=1176.0;
    }
   }
  } else {
   if(i22<5.626678466796875e-05){
    if(i43<0.00416597118601203){
     s0+=14.0;
     s1+=29.0;
    } else {
     s1+=94.0;
    }
   } else {
    if(i7<1.0220848321914673){
     s0+=8.0;
     s1+=1330.0;
    } else {
     s1+=6917.0;
    }
   }
  }
 }
}
if(i4<0.07267618179321289){
 if(i10<1.0052721500396729){
  if(i29<1.0055954456329346){
   if(i9<1.0398883819580078){
    if(i55<-0.006055176258087158){
     s0+=2559.0;
     s1+=589.0;
    } else {
     s0+=59539.0;
     s1+=724.0;
    }
   } else {
    if(i16<0.9906809329986572){
     s0+=730.0;
     s1+=495.0;
    } else {
     s0+=4199.0;
     s1+=559.0;
    }
   }
  } else {
   if(i6<-3.8020676583983004e-05){
    if(i38<0.0032718684524297714){
     s0+=31.0;
     s1+=459.0;
    } else {
     s0+=128.0;
     s1+=30.0;
    }
   } else {
    if(i35<1.1108002662658691){
     s0+=345.0;
     s1+=221.0;
    } else {
     s0+=1262.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i3<0.0005483627319335938){
   if(i31<1.0985562801361084){
    s1+=89.0;
   } else {
    if(i28<0.0005570037174038589){
     s0+=267.0;
     s1+=4.0;
    } else {
     s0+=28.0;
     s1+=22.0;
    }
   }
  } else {
   if(i42<1.0006775856018066){
    if(i63<0.0033829212188720703){
     s0+=6.0;
     s1+=142.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i28<0.00011420718510635197){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=1270.0;
    }
   }
  }
 }
} else {
 if(i23<1.0015456676483154){
  if(i6<-1.6001482435967773e-05){
   if(i59<-0.00023671938106417656){
    if(i42<0.9989724159240723){
     s0+=52.0;
     s1+=9.0;
    } else {
     s0+=200.0;
     s1+=2400.0;
    }
   } else {
    if(i27<1.024204969406128){
     s0+=132.0;
     s1+=337.0;
    } else {
     s0+=136.0;
     s1+=26.0;
    }
   }
  } else {
   if(i39<-0.0001366734504699707){
    s0+=424.0;
   } else {
    if(i57<0.002724731806665659){
     s0+=711.0;
     s1+=202.0;
    } else {
     s0+=4.0;
     s1+=86.0;
    }
   }
  }
 } else {
  if(i8<3.6656856536865234e-05){
   if(i59<-0.00010472075518919155){
    if(i42<1.0002858638763428){
     s0+=9.0;
     s1+=298.0;
    } else {
     s0+=105.0;
     s1+=282.0;
    }
   } else {
    if(i48<0.0022698640823364258){
     s0+=7.0;
     s1+=59.0;
    } else {
     s0+=121.0;
     s1+=61.0;
    }
   }
  } else {
   if(i4<0.11782345175743103){
    if(i48<0.005243420600891113){
     s0+=28.0;
     s1+=1402.0;
    } else {
     s0+=50.0;
     s1+=49.0;
    }
   } else {
    if(i2<0.16858962178230286){
     s0+=16.0;
     s1+=476.0;
    } else {
     s0+=3.0;
     s1+=6801.0;
    }
   }
  }
 }
}
if(i8<3.522634506225586e-05){
 if(i16<1.0107730627059937){
  if(i61<-0.0023618340492248535){
   if(i18<0.9984428882598877){
    if(i5<0.9969688653945923){
     s0+=1580.0;
     s1+=14.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   } else {
    if(i13<1.0398828983306885){
     s0+=2742.0;
     s1+=341.0;
    } else {
     s0+=1222.0;
     s1+=1207.0;
    }
   }
  } else {
   if(i20<1.0486011505126953){
    if(i4<0.09746316075325012){
     s0+=54083.0;
     s1+=153.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.07541137933731079){
     s0+=8140.0;
     s1+=748.0;
    } else {
     s0+=662.0;
     s1+=869.0;
    }
   }
  }
 } else {
  if(i42<1.000121831893921){
   if(i44<0.010144449770450592){
    if(i6<-2.378325916652102e-05){
     s0+=66.0;
     s1+=905.0;
    } else {
     s0+=680.0;
     s1+=110.0;
    }
   } else {
    s1+=266.0;
   }
  } else {
   if(i17<0.004649633541703224){
    if(i63<0.0017737746238708496){
     s0+=90.0;
     s1+=101.0;
    } else {
     s0+=900.0;
     s1+=58.0;
    }
   } else {
    if(i73<0.9754002094268799){
     s0+=25.0;
     s1+=7.0;
    } else {
     s0+=41.0;
     s1+=503.0;
    }
   }
  }
 }
} else {
 if(i20<1.0432554483413696){
  if(i36<1.1545894145965576){
   s0+=381.0;
  } else {
   if(i27<1.0064349174499512){
    s0+=8.0;
   } else {
    s1+=3.0;
   }
  }
 } else {
  if(i0<0.0700940489768982){
   if(i33<0.0016773645766079426){
    if(i69<0.9961328506469727){
     s0+=2.0;
    } else {
     s1+=310.0;
    }
   } else {
    if(i8<7.086992263793945e-05){
     s0+=209.0;
     s1+=96.0;
    } else {
     s0+=33.0;
     s1+=222.0;
    }
   }
  } else {
   if(i5<1.0037965774536133){
    if(i37<0.02467118203639984){
     s0+=165.0;
     s1+=454.0;
    } else {
     s0+=9.0;
     s1+=1037.0;
    }
   } else {
    if(i7<1.0154021978378296){
     s0+=34.0;
     s1+=2216.0;
    } else {
     s0+=2.0;
     s1+=7530.0;
    }
   }
  }
 }
}
if(i4<0.0716162919998169){
 if(i1<0.07646012306213379){
  if(i11<0.0006350576877593994){
   if(i13<1.0410068035125732){
    if(i61<-0.0021097958087921143){
     s0+=4079.0;
     s1+=353.0;
    } else {
     s0+=55054.0;
     s1+=206.0;
    }
   } else {
    if(i23<1.0006287097930908){
     s0+=7828.0;
     s1+=812.0;
    } else {
     s0+=1170.0;
     s1+=520.0;
    }
   }
  } else {
   if(i40<0.015822380781173706){
    if(i10<1.0009337663650513){
     s0+=244.0;
     s1+=142.0;
    } else {
     s0+=21.0;
     s1+=512.0;
    }
   } else {
    if(i48<0.00011593103408813477){
     s0+=36.0;
     s1+=81.0;
    } else {
     s0+=280.0;
     s1+=12.0;
    }
   }
  }
 } else {
  if(i30<1.0670123100280762){
   if(i10<1.0012507438659668){
    if(i21<1.00980806350708){
     s0+=156.0;
     s1+=6.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i13<1.040950059890747){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i39<-0.00013628602027893066){
    s0+=30.0;
   } else {
    if(i65<-0.0056694308295845985){
     s0+=63.0;
     s1+=58.0;
    } else {
     s0+=74.0;
     s1+=2010.0;
    }
   }
  }
 }
} else {
 if(i1<0.11290040612220764){
  if(i48<0.003944694995880127){
   if(i53<0.05497601628303528){
    if(i2<0.07706049084663391){
     s0+=75.0;
     s1+=113.0;
    } else {
     s0+=19.0;
     s1+=754.0;
    }
   } else {
    if(i17<0.005269517190754414){
     s0+=460.0;
     s1+=112.0;
    } else {
     s0+=28.0;
     s1+=112.0;
    }
   }
  } else {
   if(i10<1.0100315809249878){
    if(i47<0.0012723772088065743){
     s0+=69.0;
     s1+=27.0;
    } else {
     s0+=676.0;
     s1+=15.0;
    }
   } else {
    if(i22<0.0002517104148864746){
     s0+=2.0;
    } else {
     s1+=8.0;
    }
   }
  }
 } else {
  if(i11<-0.00038823485374450684){
   if(i43<0.0035463175736367702){
    s0+=206.0;
   } else {
    s1+=11.0;
   }
  } else {
   if(i17<0.0017052508192136884){
    if(i28<0.002285498660057783){
     s0+=12.0;
     s1+=103.0;
    } else {
     s0+=223.0;
     s1+=53.0;
    }
   } else {
    if(i14<3.5643577575683594e-05){
     s0+=199.0;
     s1+=2360.0;
    } else {
     s0+=28.0;
     s1+=8829.0;
    }
   }
  }
 }
}
if(i1<0.08130630850791931){
 if(i5<1.0024913549423218){
  if(i20<1.0451585054397583){
   if(i20<1.0410068035125732){
    if(i50<0.011241769418120384){
     s0+=50012.0;
     s1+=96.0;
    } else {
     s0+=132.0;
     s1+=10.0;
    }
   } else {
    if(i62<0.9855556488037109){
     s0+=211.0;
     s1+=69.0;
    } else {
     s0+=3819.0;
     s1+=55.0;
    }
   }
  } else {
   if(i36<1.1037919521331787){
    if(i71<0.0001860527991084382){
     s0+=3429.0;
     s1+=617.0;
    } else {
     s0+=272.0;
     s1+=740.0;
    }
   } else {
    if(i16<0.9616113901138306){
     s0+=1114.0;
     s1+=209.0;
    } else {
     s0+=10270.0;
     s1+=299.0;
    }
   }
  }
 } else {
  if(i36<1.25206458568573){
   if(i60<0.002392113208770752){
    if(i44<0.0002851043245755136){
     s0+=2.0;
    } else {
     s0+=1.0;
     s1+=587.0;
    }
   } else {
    s0+=3.0;
   }
  } else {
   if(i19<1.0023319721221924){
    if(i37<0.007903248071670532){
     s0+=25.0;
     s1+=10.0;
    } else {
     s0+=24.0;
     s1+=242.0;
    }
   } else {
    if(i45<-3.125953662674874e-05){
     s0+=2.0;
     s1+=20.0;
    } else {
     s0+=188.0;
    }
   }
  }
 }
} else {
 if(i5<1.0016977787017822){
  if(i53<0.059477537870407104){
   if(i77<0.9925622940063477){
    s0+=81.0;
   } else {
    if(i1<0.08524090051651001){
     s0+=73.0;
     s1+=135.0;
    } else {
     s0+=33.0;
     s1+=1751.0;
    }
   }
  } else {
   if(i0<0.11977532505989075){
    if(i40<0.041223496198654175){
     s0+=17.0;
     s1+=30.0;
    } else {
     s0+=773.0;
     s1+=104.0;
    }
   } else {
    if(i6<-1.3781947927782312e-05){
     s0+=174.0;
     s1+=1023.0;
    } else {
     s0+=451.0;
     s1+=124.0;
    }
   }
  }
 } else {
  if(i6<-5.3996307542547584e-05){
   if(i69<1.001816987991333){
    if(i8<1.4990568161010742e-05){
     s0+=1.0;
    } else {
     s0+=37.0;
     s1+=10018.0;
    }
   } else {
    if(i37<0.011646220460534096){
     s0+=28.0;
    } else {
     s0+=6.0;
     s1+=482.0;
    }
   }
  } else {
   if(i70<-0.036641500890254974){
    if(i2<0.205255389213562){
     s0+=36.0;
    } else {
     s1+=37.0;
    }
   } else {
    if(i20<1.1053385734558105){
     s0+=13.0;
     s1+=314.0;
    } else {
     s0+=21.0;
     s1+=32.0;
    }
   }
  }
 }
}
if(i1<0.08134973049163818){
 if(i22<0.00015920400619506836){
  if(i13<1.0412344932556152){
   if(i47<0.00027856684755533934){
    if(i29<1.0088794231414795){
     s0+=43827.0;
     s1+=27.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i10<0.9944907426834106){
     s0+=10682.0;
     s1+=52.0;
    } else {
     s0+=4786.0;
     s1+=606.0;
    }
   }
  } else {
   if(i5<1.0024693012237549){
    if(i25<0.017084471881389618){
     s0+=6962.0;
     s1+=452.0;
    } else {
     s0+=2300.0;
     s1+=1010.0;
    }
   } else {
    if(i24<1.0396705865859985){
     s0+=39.0;
     s1+=316.0;
    } else {
     s0+=85.0;
     s1+=73.0;
    }
   }
  }
 } else {
  if(i39<0.00015428662300109863){
   if(i14<0.0016303658485412598){
    if(i74<0.0011839866638183594){
     s0+=84.0;
     s1+=42.0;
    } else {
     s0+=238.0;
     s1+=5.0;
    }
   } else {
    s1+=24.0;
   }
  } else {
   if(i34<0.00018142667249776423){
    if(i46<0.0005923021817579865){
     s1+=4.0;
    } else {
     s0+=33.0;
    }
   } else {
    if(i18<1.0012381076812744){
     s0+=1.0;
    } else {
     s0+=1.0;
     s1+=475.0;
    }
   }
  }
 }
} else {
 if(i56<0.0013695579254999757){
  if(i51<0.06989729404449463){
   if(i31<1.0826903581619263){
    if(i18<1.000528335571289){
     s0+=137.0;
     s1+=21.0;
    } else {
     s0+=5.0;
     s1+=29.0;
    }
   } else {
    if(i17<0.0017457695212215185){
     s0+=242.0;
     s1+=304.0;
    } else {
     s0+=141.0;
     s1+=2438.0;
    }
   }
  } else {
   if(i14<0.0007328391075134277){
    if(i1<0.24715664982795715){
     s0+=553.0;
     s1+=60.0;
    } else {
     s0+=133.0;
     s1+=181.0;
    }
   } else {
    if(i2<0.12814009189605713){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=167.0;
    }
   }
  }
 } else {
  if(i30<1.0670123100280762){
   if(i31<1.069220781326294){
    s0+=74.0;
   } else {
    if(i45<-9.052826499100775e-06){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i18<0.9980762004852295){
    if(i36<1.4556559324264526){
     s0+=77.0;
    } else {
     s0+=2.0;
     s1+=8.0;
    }
   } else {
    if(i8<4.0471553802490234e-05){
     s0+=323.0;
     s1+=2029.0;
    } else {
     s0+=74.0;
     s1+=9085.0;
    }
   }
  }
 }
}
if(i0<0.08241075277328491){
 if(i13<1.0451608896255493){
  if(i1<0.06856346130371094){
   if(i3<0.0007470846176147461){
    if(i33<0.0003325364668853581){
     s0+=34573.0;
     s1+=1.0;
    } else {
     s0+=25883.0;
     s1+=659.0;
    }
   } else {
    if(i28<0.00018173380522057414){
     s0+=34.0;
    } else {
     s0+=3.0;
     s1+=60.0;
    }
   }
  } else {
   if(i50<0.0006836539832875133){
    if(i61<-0.0020720064640045166){
     s0+=35.0;
     s1+=26.0;
    } else {
     s0+=1040.0;
     s1+=48.0;
    }
   } else {
    if(i47<0.0002778704511001706){
     s0+=51.0;
     s1+=2.0;
    } else {
     s0+=65.0;
     s1+=127.0;
    }
   }
  }
 } else {
  if(i1<0.0655854344367981){
   if(i22<0.00020992755889892578){
    if(i25<0.021741338074207306){
     s0+=5304.0;
     s1+=475.0;
    } else {
     s0+=1131.0;
     s1+=615.0;
    }
   } else {
    if(i39<0.00012770295143127441){
     s0+=11.0;
     s1+=9.0;
    } else {
     s1+=171.0;
    }
   }
  } else {
   if(i65<-0.0037059099413454533){
    if(i62<0.9809038043022156){
     s0+=2.0;
     s1+=30.0;
    } else {
     s0+=459.0;
     s1+=15.0;
    }
   } else {
    if(i53<0.03786173462867737){
     s0+=26.0;
     s1+=668.0;
    } else {
     s0+=259.0;
     s1+=108.0;
    }
   }
  }
 }
} else {
 if(i3<0.00018090009689331055){
  if(i77<0.9973286390304565){
   if(i6<-5.1720689953071997e-05){
    if(i45<-8.191762026399374e-05){
     s0+=13.0;
    } else {
     s1+=58.0;
    }
   } else {
    if(i15<-1.4662742614746094e-05){
     s0+=530.0;
    } else {
     s0+=42.0;
     s1+=13.0;
    }
   }
  } else {
   if(i40<0.04504716396331787){
    if(i13<1.031445026397705){
     s0+=50.0;
     s1+=21.0;
    } else {
     s0+=97.0;
     s1+=1238.0;
    }
   } else {
    if(i37<0.04046373814344406){
     s0+=954.0;
     s1+=508.0;
    } else {
     s0+=16.0;
     s1+=204.0;
    }
   }
  }
 } else {
  if(i17<0.0032570241019129753){
   if(i14<0.00048100948333740234){
    if(i24<1.0518256425857544){
     s0+=21.0;
     s1+=132.0;
    } else {
     s0+=223.0;
     s1+=9.0;
    }
   } else {
    if(i47<0.003659574780613184){
     s0+=8.0;
     s1+=534.0;
    } else {
     s0+=34.0;
     s1+=46.0;
    }
   }
  } else {
   if(i41<9.147719538304955e-05){
    if(i47<0.0002455524809192866){
     s0+=3.0;
    } else {
     s0+=6.0;
     s1+=8818.0;
    }
   } else {
    if(i37<0.022349754348397255){
     s0+=174.0;
     s1+=209.0;
    } else {
     s0+=7.0;
     s1+=2394.0;
    }
   }
  }
 }
}
if(i74<0.002421736717224121){
 if(i3<0.0005602240562438965){
  if(i9<1.0452215671539307){
   if(i4<0.07090997695922852){
    if(i63<-0.0013784170150756836){
     s0+=4887.0;
     s1+=824.0;
    } else {
     s0+=59106.0;
     s1+=717.0;
    }
   } else {
    if(i52<0.033957719802856445){
     s0+=63.0;
     s1+=324.0;
    } else {
     s0+=360.0;
     s1+=122.0;
    }
   }
  } else {
   if(i11<-0.0003834366798400879){
    if(i36<1.4901387691497803){
     s0+=1063.0;
     s1+=6.0;
    } else {
     s0+=54.0;
     s1+=8.0;
    }
   } else {
    if(i56<0.0010571610182523727){
     s0+=2723.0;
     s1+=1059.0;
    } else {
     s0+=1535.0;
     s1+=2054.0;
    }
   }
  }
 } else {
  if(i6<-4.3629977881209925e-05){
   if(i14<6.896257400512695e-05){
    if(i2<0.13329944014549255){
     s0+=237.0;
     s1+=441.0;
    } else {
     s0+=15.0;
     s1+=773.0;
    }
   } else {
    if(i4<0.0013246536254882812){
     s0+=2.0;
     s1+=46.0;
    } else {
     s0+=1.0;
     s1+=4949.0;
    }
   }
  } else {
   if(i17<0.004265383817255497){
    if(i16<0.9913700222969055){
     s1+=9.0;
    } else {
     s0+=333.0;
     s1+=7.0;
    }
   } else {
    if(i69<0.9985533952713013){
     s0+=3.0;
    } else {
     s1+=237.0;
    }
   }
  }
 }
} else {
 if(i5<0.9965829253196716){
  if(i44<0.014358761720359325){
   if(i17<0.012097252532839775){
    s0+=538.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=3.0;
  }
 } else {
  if(i1<0.10680171847343445){
   if(i45<-1.6262405551970005e-05){
    s1+=27.0;
   } else {
    if(i31<1.158913493156433){
     s1+=3.0;
    } else {
     s0+=175.0;
    }
   }
  } else {
   if(i7<1.0085878372192383){
    if(i44<0.007591385394334793){
     s0+=49.0;
     s1+=5.0;
    } else {
     s1+=150.0;
    }
   } else {
    if(i22<5.695223808288574e-05){
     s0+=17.0;
     s1+=198.0;
    } else {
     s1+=5128.0;
    }
   }
  }
 }
}
if(i3<0.0005462765693664551){
 if(i4<0.07196682691574097){
  if(i1<0.07844537496566772){
   if(i13<1.0410068035125732){
    if(i50<0.007863475941121578){
     s0+=58413.0;
     s1+=461.0;
    } else {
     s0+=999.0;
     s1+=102.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=2622.0;
     s1+=895.0;
    } else {
     s0+=6666.0;
     s1+=406.0;
    }
   }
  } else {
   if(i8<-3.93986701965332e-05){
    if(i71<0.0007705178577452898){
     s0+=145.0;
     s1+=7.0;
    } else {
     s0+=4.0;
     s1+=14.0;
    }
   } else {
    if(i70<-0.013463078066706657){
     s0+=35.0;
     s1+=39.0;
    } else {
     s0+=44.0;
     s1+=805.0;
    }
   }
  }
 } else {
  if(i15<-1.4692544937133789e-05){
   if(i39<-0.00010076165199279785){
    if(i56<0.0032810475677251816){
     s0+=401.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i70<-0.011915680021047592){
     s0+=2.0;
     s1+=13.0;
    } else {
     s0+=43.0;
    }
   }
  } else {
   if(i17<0.0023052878677845){
    if(i51<0.04553854465484619){
     s0+=259.0;
     s1+=233.0;
    } else {
     s0+=577.0;
     s1+=105.0;
    }
   } else {
    if(i0<0.11271071434020996){
     s0+=414.0;
     s1+=474.0;
    } else {
     s0+=149.0;
     s1+=1911.0;
    }
   }
  }
 }
} else {
 if(i36<1.0795294046401978){
  s0+=166.0;
 } else {
  if(i14<0.0014304518699645996){
   if(i41<-8.672377589391544e-06){
    if(i33<0.0011069923639297485){
     s1+=64.0;
    } else {
     s0+=148.0;
     s1+=8.0;
    }
   } else {
    if(i68<0.000516939559020102){
     s0+=144.0;
     s1+=792.0;
    } else {
     s0+=109.0;
     s1+=2411.0;
    }
   }
  } else {
   s1+=8168.0;
  }
 }
}
if(i23<1.0027964115142822){
 if(i0<0.08680376410484314){
  if(i28<0.0002993741654790938){
   if(i7<1.0081498622894287){
    if(i55<-0.006837368011474609){
     s0+=273.0;
     s1+=68.0;
    } else {
     s0+=55719.0;
     s1+=430.0;
    }
   } else {
    if(i30<1.083398699760437){
     s0+=1.0;
     s1+=113.0;
    } else {
     s0+=213.0;
     s1+=9.0;
    }
   }
  } else {
   if(i35<1.100754976272583){
    if(i23<1.000650405883789){
     s0+=2919.0;
     s1+=826.0;
    } else {
     s0+=38.0;
     s1+=322.0;
    }
   } else {
    if(i55<0.005076169967651367){
     s0+=4138.0;
     s1+=455.0;
    } else {
     s0+=4479.0;
     s1+=38.0;
    }
   }
  }
 } else {
  if(i39<-0.0001392066478729248){
   if(i5<0.9982774257659912){
    if(i18<0.9980583190917969){
     s0+=656.0;
    } else {
     s0+=38.0;
     s1+=11.0;
    }
   } else {
    s1+=48.0;
   }
  } else {
   if(i14<0.0007990896701812744){
    if(i25<0.024431200698018074){
     s0+=757.0;
     s1+=745.0;
    } else {
     s0+=256.0;
     s1+=1939.0;
    }
   } else {
    if(i0<0.10156497359275818){
     s0+=14.0;
     s1+=98.0;
    } else {
     s0+=6.0;
     s1+=1526.0;
    }
   }
  }
 }
} else {
 if(i2<0.0547354519367218){
  if(i51<-0.017865747213363647){
   if(i3<0.00040203332901000977){
    if(i0<0.0026186108589172363){
     s0+=68.0;
    } else {
     s0+=37.0;
     s1+=30.0;
    }
   } else {
    if(i69<1.0022516250610352){
     s0+=27.0;
     s1+=388.0;
    } else {
     s0+=15.0;
     s1+=11.0;
    }
   }
  } else {
   if(i38<0.0011320154881104827){
    if(i30<1.0612268447875977){
     s0+=70.0;
    } else {
     s1+=64.0;
    }
   } else {
    if(i50<0.011868939734995365){
     s0+=834.0;
     s1+=12.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   }
  }
 } else {
  if(i8<3.975629806518555e-05){
   if(i2<0.11029744148254395){
    if(i65<-0.0035593288484960794){
     s0+=196.0;
     s1+=22.0;
    } else {
     s0+=40.0;
     s1+=105.0;
    }
   } else {
    if(i6<-4.587008515954949e-05){
     s0+=6.0;
     s1+=353.0;
    } else {
     s0+=37.0;
     s1+=125.0;
    }
   }
  } else {
   if(i8<6.35981559753418e-05){
    if(i69<1.0044114589691162){
     s0+=37.0;
     s1+=710.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.11532482504844666){
     s0+=31.0;
     s1+=1106.0;
    } else {
     s0+=2.0;
     s1+=7758.0;
    }
   }
  }
 }
}
if(i1<0.08370915055274963){
 if(i23<1.002593755722046){
  if(i46<0.0014984626322984695){
   if(i21<1.0080218315124512){
    if(i72<0.024931009858846664){
     s0+=52274.0;
     s1+=179.0;
    } else {
     s0+=7883.0;
     s1+=534.0;
    }
   } else {
    if(i30<1.082922339439392){
     s0+=174.0;
     s1+=230.0;
    } else {
     s0+=1402.0;
     s1+=99.0;
    }
   }
  } else {
   if(i39<-3.8176774978637695e-05){
    if(i5<1.0010383129119873){
     s0+=3051.0;
     s1+=128.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i20<1.0920991897583008){
     s0+=1332.0;
     s1+=673.0;
    } else {
     s0+=1976.0;
     s1+=203.0;
    }
   }
  }
 } else {
  if(i14<-0.0016352534294128418){
   if(i50<0.015156148932874203){
    if(i58<0.06316105276346207){
     s0+=97.0;
     s1+=14.0;
    } else {
     s0+=804.0;
     s1+=3.0;
    }
   } else {
    if(i3<9.906291961669922e-05){
     s0+=39.0;
     s1+=17.0;
    } else {
     s0+=3.0;
     s1+=70.0;
    }
   }
  } else {
   if(i17<0.0022734575904905796){
    if(i55<-0.012093961238861084){
     s0+=2.0;
     s1+=44.0;
    } else {
     s0+=320.0;
     s1+=21.0;
    }
   } else {
    if(i65<-0.0033818213269114494){
     s0+=64.0;
     s1+=42.0;
    } else {
     s0+=58.0;
     s1+=821.0;
    }
   }
  }
 }
} else {
 if(i18<0.998153567314148){
  if(i56<0.0032896625343710184){
   if(i69<1.0011746883392334){
    s0+=420.0;
   } else {
    if(i37<0.017861077561974525){
     s1+=4.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   s1+=1.0;
  }
 } else {
  if(i23<1.0030019283294678){
   if(i60<0.0029285848140716553){
    if(i63<0.004239678382873535){
     s0+=50.0;
     s1+=2086.0;
    } else {
     s0+=149.0;
     s1+=733.0;
    }
   } else {
    if(i2<0.1216992735862732){
     s0+=574.0;
     s1+=248.0;
    } else {
     s0+=305.0;
     s1+=1410.0;
    }
   }
  } else {
   if(i12<1.0062081813812256){
    if(i25<0.026107940822839737){
     s0+=129.0;
     s1+=223.0;
    } else {
     s0+=15.0;
     s1+=1723.0;
    }
   } else {
    if(i6<-4.151381290284917e-05){
     s1+=7578.0;
    } else {
     s0+=5.0;
     s1+=30.0;
    }
   }
  }
 }
}
if(i13<1.0576403141021729){
 if(i11<0.0007047057151794434){
  if(i58<0.04472946748137474){
   if(i16<1.0095620155334473){
    if(i1<0.08213692903518677){
     s0+=55179.0;
     s1+=443.0;
    } else {
     s0+=155.0;
     s1+=153.0;
    }
   } else {
    if(i21<1.0079541206359863){
     s0+=62.0;
     s1+=4.0;
    } else {
     s0+=51.0;
     s1+=209.0;
    }
   }
  } else {
   if(i2<0.07500150799751282){
    if(i0<0.059131503105163574){
     s0+=7864.0;
     s1+=436.0;
    } else {
     s0+=1189.0;
     s1+=319.0;
    }
   } else {
    if(i12<0.9876583814620972){
     s0+=143.0;
     s1+=48.0;
    } else {
     s0+=71.0;
     s1+=403.0;
    }
   }
  }
 } else {
  if(i22<-0.00022923946380615234){
   if(i10<0.9984569549560547){
    if(i69<0.999363899230957){
     s1+=4.0;
    } else {
     s0+=164.0;
     s1+=4.0;
    }
   } else {
    if(i69<1.002770185470581){
     s1+=31.0;
    } else {
     s0+=10.0;
     s1+=3.0;
    }
   }
  } else {
   if(i69<0.9976186752319336){
    s0+=16.0;
   } else {
    if(i57<7.785580237396061e-06){
     s0+=12.0;
     s1+=24.0;
    } else {
     s0+=13.0;
     s1+=383.0;
    }
   }
  }
 }
} else {
 if(i4<0.08142039179801941){
  if(i10<1.0049047470092773){
   if(i2<0.08662435412406921){
    if(i3<0.0004756450653076172){
     s0+=4703.0;
     s1+=865.0;
    } else {
     s0+=210.0;
     s1+=256.0;
    }
   } else {
    if(i6<7.135214673326118e-06){
     s0+=19.0;
     s1+=539.0;
    } else {
     s0+=22.0;
     s1+=3.0;
    }
   }
  } else {
   if(i14<0.0014461874961853027){
    if(i17<0.004501598887145519){
     s0+=122.0;
     s1+=30.0;
    } else {
     s0+=14.0;
     s1+=321.0;
    }
   } else {
    s1+=1348.0;
   }
  }
 } else {
  if(i18<0.9985524415969849){
   if(i71<0.001096784370020032){
    s0+=282.0;
   } else {
    if(i52<0.10430535674095154){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i1<0.12233361601829529){
    if(i22<9.721517562866211e-05){
     s0+=566.0;
     s1+=413.0;
    } else {
     s0+=22.0;
     s1+=253.0;
    }
   } else {
    if(i5<1.001499891281128){
     s0+=330.0;
     s1+=1524.0;
    } else {
     s0+=40.0;
     s1+=8969.0;
    }
   }
  }
 }
}
if(i1<0.08195176720619202){
 if(i18<1.0018281936645508){
  if(i46<0.0015395893715322018){
   if(i25<0.014298634603619576){
    if(i57<0.0007817551959306002){
     s0+=53006.0;
     s1+=247.0;
    } else {
     s0+=748.0;
     s1+=96.0;
    }
   } else {
    if(i31<1.0997401475906372){
     s0+=2104.0;
     s1+=639.0;
    } else {
     s0+=6319.0;
     s1+=85.0;
    }
   }
  } else {
   if(i10<0.9936264753341675){
    if(i56<0.006415048614144325){
     s0+=2892.0;
     s1+=82.0;
    } else {
     s0+=8.0;
     s1+=15.0;
    }
   } else {
    if(i2<0.041600197553634644){
     s0+=2847.0;
     s1+=502.0;
    } else {
     s0+=657.0;
     s1+=530.0;
    }
   }
  }
 } else {
  if(i8<3.719329833984375e-05){
   if(i59<-0.00032362097408622503){
    if(i72<0.04112585633993149){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=12.0;
     s1+=45.0;
    }
   } else {
    if(i66<1.5404733858304098e-05){
     s0+=20.0;
     s1+=31.0;
    } else {
     s0+=523.0;
     s1+=18.0;
    }
   }
  } else {
   if(i70<-0.010965565219521523){
    if(i16<0.975991427898407){
     s0+=4.0;
     s1+=17.0;
    } else {
     s0+=74.0;
     s1+=5.0;
    }
   } else {
    if(i77<0.9989619255065918){
     s0+=19.0;
    } else {
     s0+=83.0;
     s1+=793.0;
    }
   }
  }
 }
} else {
 if(i6<-1.4462499166256748e-05){
  if(i14<0.0008144378662109375){
   if(i25<0.026049116626381874){
    if(i48<0.004670679569244385){
     s0+=141.0;
     s1+=857.0;
    } else {
     s0+=358.0;
     s1+=143.0;
    }
   } else {
    if(i42<0.9986936450004578){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=135.0;
     s1+=3274.0;
    }
   }
  } else {
   if(i8<-1.0699033737182617e-05){
    s0+=2.0;
   } else {
    if(i37<0.013076664879918098){
     s0+=44.0;
     s1+=1206.0;
    } else {
     s1+=8063.0;
    }
   }
  }
 } else {
  if(i42<0.9992890357971191){
   s0+=430.0;
  } else {
   if(i48<0.003076404333114624){
    if(i73<0.9984307289123535){
     s0+=57.0;
     s1+=285.0;
    } else {
     s0+=74.0;
     s1+=35.0;
    }
   } else {
    if(i1<0.2588517367839813){
     s0+=508.0;
     s1+=59.0;
    } else {
     s0+=26.0;
     s1+=77.0;
    }
   }
  }
 }
}
if(i8<3.7729740142822266e-05){
 if(i9<1.0452277660369873){
  if(i1<0.08248105645179749){
   if(i63<-0.0010853707790374756){
    if(i31<1.178917407989502){
     s0+=2351.0;
     s1+=733.0;
    } else {
     s0+=3527.0;
     s1+=71.0;
    }
   } else {
    if(i72<0.0252531785517931){
     s0+=51392.0;
     s1+=155.0;
    } else {
     s0+=7378.0;
     s1+=362.0;
    }
   }
  } else {
   if(i5<0.9955969452857971){
    if(i30<1.5537261962890625){
     s0+=132.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=9.0;
    }
   } else {
    if(i38<0.0003682481765281409){
     s0+=25.0;
     s1+=2.0;
    } else {
     s0+=83.0;
     s1+=591.0;
    }
   }
  }
 } else {
  if(i2<0.08230835199356079){
   if(i35<1.1013743877410889){
    if(i37<0.012012507766485214){
     s0+=850.0;
     s1+=208.0;
    } else {
     s0+=67.0;
     s1+=329.0;
    }
   } else {
    if(i61<-0.011575281620025635){
     s0+=231.0;
     s1+=107.0;
    } else {
     s0+=3090.0;
     s1+=181.0;
    }
   }
  } else {
   if(i17<0.0017946171574294567){
    if(i53<0.05810585618019104){
     s0+=12.0;
     s1+=86.0;
    } else {
     s0+=527.0;
     s1+=86.0;
    }
   } else {
    if(i18<0.9985692501068115){
     s0+=293.0;
     s1+=6.0;
    } else {
     s0+=423.0;
     s1+=2542.0;
    }
   }
  }
 }
} else {
 if(i13<1.0336670875549316){
  if(i18<1.0020774602890015){
   if(i49<1.0001944303512573){
    if(i41<6.245144322747365e-05){
     s0+=298.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i64<-5.501244231709279e-06){
     s1+=7.0;
    } else {
     s0+=13.0;
    }
   }
  } else {
   s1+=51.0;
  }
 } else {
  if(i1<0.06888946890830994){
   if(i60<-0.0006533265113830566){
    if(i17<0.0020582331344485283){
     s0+=29.0;
     s1+=7.0;
    } else {
     s0+=62.0;
     s1+=499.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s0+=10.0;
     s1+=40.0;
    } else {
     s0+=149.0;
     s1+=24.0;
    }
   }
  } else {
   if(i31<1.0633710622787476){
    s0+=11.0;
   } else {
    if(i12<1.0076100826263428){
     s0+=177.0;
     s1+=2095.0;
    } else {
     s0+=6.0;
     s1+=8914.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i13<1.0452277660369873){
  if(i8<4.297494888305664e-05){
   if(i44<0.00037776544922962785){
    if(i13<1.0437653064727783){
     s0+=39500.0;
     s1+=24.0;
    } else {
     s0+=191.0;
     s1+=16.0;
    }
   } else {
    if(i31<1.0983617305755615){
     s0+=4265.0;
     s1+=750.0;
    } else {
     s0+=18247.0;
     s1+=224.0;
    }
   }
  } else {
   if(i20<1.041325330734253){
    s0+=213.0;
   } else {
    if(i65<-0.00867417547851801){
     s0+=4.0;
    } else {
     s0+=12.0;
     s1+=175.0;
    }
   }
  }
 } else {
  if(i6<-2.8576194381457753e-05){
   if(i5<1.002345323562622){
    if(i49<1.000354528427124){
     s0+=980.0;
     s1+=1610.0;
    } else {
     s0+=525.0;
     s1+=84.0;
    }
   } else {
    if(i67<0.09068678319454193){
     s0+=135.0;
     s1+=773.0;
    } else {
     s1+=1120.0;
    }
   }
  } else {
   if(i77<1.0006341934204102){
    if(i30<1.1068296432495117){
     s0+=2298.0;
     s1+=478.0;
    } else {
     s0+=2731.0;
     s1+=134.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s0+=262.0;
     s1+=567.0;
    } else {
     s0+=610.0;
     s1+=62.0;
    }
   }
  }
 }
} else {
 if(i10<1.0044360160827637){
  if(i68<0.0004940233193337917){
   if(i49<0.999895453453064){
    if(i0<0.08683544397354126){
     s0+=238.0;
     s1+=68.0;
    } else {
     s0+=93.0;
     s1+=750.0;
    }
   } else {
    if(i0<0.1713230311870575){
     s0+=741.0;
     s1+=111.0;
    } else {
     s0+=55.0;
     s1+=257.0;
    }
   }
  } else {
   if(i17<0.003273318987339735){
    s0+=70.0;
   } else {
    if(i54<0.0026230202056467533){
     s0+=3.0;
     s1+=5.0;
    } else {
     s0+=23.0;
     s1+=1518.0;
    }
   }
  }
 } else {
  if(i28<0.00012345673167146742){
   if(i31<1.2344772815704346){
    s1+=8.0;
   } else {
    s0+=19.0;
   }
  } else {
   if(i3<0.0009222626686096191){
    if(i49<0.9999431371688843){
     s0+=3.0;
     s1+=528.0;
    } else {
     s0+=89.0;
     s1+=231.0;
    }
   } else {
    if(i68<0.00022942601935938){
     s0+=4.0;
     s1+=316.0;
    } else {
     s1+=7132.0;
    }
   }
  }
 }
}
if(i0<0.08510008454322815){
 if(i3<0.0006022751331329346){
  if(i13<1.0410068035125732){
   if(i31<1.067622423171997){
    if(i36<1.072852373123169){
     s0+=35707.0;
    } else {
     s0+=1761.0;
     s1+=12.0;
    }
   } else {
    if(i63<-0.0008521974086761475){
     s0+=3738.0;
     s1+=418.0;
    } else {
     s0+=18237.0;
     s1+=163.0;
    }
   }
  } else {
   if(i17<0.004112663678824902){
    if(i2<0.06297987699508667){
     s0+=7195.0;
     s1+=607.0;
    } else {
     s0+=876.0;
     s1+=366.0;
    }
   } else {
    if(i43<0.001389979152008891){
     s0+=27.0;
     s1+=348.0;
    } else {
     s0+=1435.0;
     s1+=241.0;
    }
   }
  }
 } else {
  if(i5<1.0042133331298828){
   if(i48<-0.001216888427734375){
    if(i19<1.009629249572754){
     s0+=40.0;
     s1+=239.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   } else {
    if(i75<0.00012819049879908562){
     s0+=71.0;
     s1+=110.0;
    } else {
     s0+=188.0;
     s1+=10.0;
    }
   }
  } else {
   if(i10<0.9999259114265442){
    if(i70<-0.007398858666419983){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=12.0;
    }
   } else {
    if(i75<0.00016645262076053768){
     s0+=3.0;
     s1+=588.0;
    } else {
     s0+=5.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i5<0.9964188933372498){
  if(i49<0.9998151063919067){
   if(i23<0.9981532096862793){
    if(i77<0.9984450340270996){
     s0+=559.0;
    } else {
     s0+=92.0;
     s1+=13.0;
    }
   } else {
    if(i65<-0.002916990779340267){
     s0+=12.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i4<0.1005084216594696){
    if(i61<-0.0020724833011627197){
     s0+=10.0;
     s1+=22.0;
    } else {
     s0+=65.0;
     s1+=8.0;
    }
   } else {
    if(i44<0.005753037985414267){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=91.0;
    }
   }
  }
 } else {
  if(i12<1.0065598487854004){
   if(i25<0.02637866698205471){
    if(i53<0.05805397033691406){
     s0+=41.0;
     s1+=664.0;
    } else {
     s0+=792.0;
     s1+=344.0;
    }
   } else {
    if(i25<0.040218427777290344){
     s0+=171.0;
     s1+=700.0;
    } else {
     s0+=76.0;
     s1+=2753.0;
    }
   }
  } else {
   if(i15<1.6093254089355469e-06){
    if(i35<1.2604451179504395){
     s1+=272.0;
    } else {
     s0+=40.0;
     s1+=60.0;
    }
   } else {
    if(i14<0.0006334781646728516){
     s0+=20.0;
     s1+=331.0;
    } else {
     s0+=12.0;
     s1+=8638.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i2<0.08066606521606445){
  if(i5<1.0024800300598145){
   if(i46<0.0017670755041763186){
    if(i20<1.0475037097930908){
     s0+=53945.0;
     s1+=185.0;
    } else {
     s0+=6795.0;
     s1+=587.0;
    }
   } else {
    if(i10<0.993008017539978){
     s0+=2199.0;
     s1+=34.0;
    } else {
     s0+=2178.0;
     s1+=640.0;
    }
   }
  } else {
   if(i31<1.2312867641448975){
    if(i17<0.0020079840905964375){
     s0+=15.0;
     s1+=10.0;
    } else {
     s1+=355.0;
    }
   } else {
    if(i7<1.0037596225738525){
     s0+=3.0;
     s1+=67.0;
    } else {
     s0+=103.0;
    }
   }
  }
 } else {
  if(i31<1.0670123100280762){
   if(i69<0.9990242719650269){
    s0+=89.0;
   } else {
    if(i54<0.023191291838884354){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i11<-0.0004304349422454834){
    s0+=26.0;
   } else {
    if(i1<0.09079939126968384){
     s0+=62.0;
     s1+=165.0;
    } else {
     s0+=10.0;
     s1+=834.0;
    }
   }
  }
 }
} else {
 if(i1<0.09594878554344177){
  if(i5<1.0020160675048828){
   if(i17<0.0033625406213104725){
    if(i31<1.094580888748169){
     s0+=960.0;
     s1+=309.0;
    } else {
     s0+=2477.0;
     s1+=87.0;
    }
   } else {
    if(i43<0.0015622348291799426){
     s0+=38.0;
     s1+=321.0;
    } else {
     s0+=1001.0;
     s1+=228.0;
    }
   }
  } else {
   if(i6<-4.332200842327438e-05){
    if(i14<4.792213439941406e-05){
     s0+=133.0;
     s1+=171.0;
    } else {
     s0+=10.0;
     s1+=703.0;
    }
   } else {
    if(i56<0.0011394897010177374){
     s0+=129.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=74.0;
    }
   }
  }
 } else {
  if(i11<-0.0004056096076965332){
   if(i69<1.0010547637939453){
    s0+=248.0;
   } else {
    if(i75<9.454602695768699e-05){
     s0+=1.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i68<0.00020538733224384487){
    if(i55<0.01861715316772461){
     s0+=99.0;
     s1+=586.0;
    } else {
     s0+=282.0;
     s1+=115.0;
    }
   } else {
    if(i14<-5.525350570678711e-05){
     s0+=324.0;
     s1+=2133.0;
    } else {
     s0+=50.0;
     s1+=9443.0;
    }
   }
  }
 }
}
if(i9<1.0451881885528564){
 if(i1<0.08401688933372498){
  if(i3<0.0006050765514373779){
   if(i46<0.0015213002916425467){
    if(i20<1.0475225448608398){
     s0+=53495.0;
     s1+=164.0;
    } else {
     s0+=6240.0;
     s1+=529.0;
    }
   } else {
    if(i33<0.0014381192158907652){
     s0+=2240.0;
     s1+=589.0;
    } else {
     s0+=3063.0;
     s1+=107.0;
    }
   }
  } else {
   if(i28<0.000166054698638618){
    if(i45<-1.7079348253901117e-05){
     s1+=11.0;
    } else {
     s0+=96.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.00038743019104){
     s0+=30.0;
    } else {
     s0+=20.0;
     s1+=335.0;
    }
   }
  }
 } else {
  if(i69<0.9961677193641663){
   s0+=91.0;
  } else {
   if(i10<0.9934918880462646){
    if(i20<1.068387508392334){
     s0+=52.0;
     s1+=5.0;
    } else {
     s0+=4.0;
     s1+=46.0;
    }
   } else {
    if(i47<0.0002847833966370672){
     s0+=11.0;
     s1+=3.0;
    } else {
     s0+=27.0;
     s1+=968.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004749894142150879){
  if(i2<0.09205827116966248){
   if(i70<-0.013247081078588963){
    if(i56<0.005297940224409103){
     s0+=1037.0;
     s1+=37.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i6<-3.1576695619150996e-05){
     s0+=508.0;
     s1+=572.0;
    } else {
     s0+=2895.0;
     s1+=423.0;
    }
   }
  } else {
   if(i6<-1.338246056548087e-05){
    if(i53<0.0713370144367218){
     s0+=15.0;
     s1+=1281.0;
    } else {
     s0+=284.0;
     s1+=841.0;
    }
   } else {
    if(i38<0.005288185551762581){
     s0+=591.0;
     s1+=60.0;
    } else {
     s0+=43.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i2<0.1274447739124298){
   if(i43<0.0027883555740118027){
    s1+=1077.0;
   } else {
    if(i5<1.0047122240066528){
     s0+=326.0;
     s1+=229.0;
    } else {
     s0+=21.0;
     s1+=536.0;
    }
   }
  } else {
   if(i37<0.022751975804567337){
    if(i6<-5.511008566827513e-05){
     s0+=14.0;
     s1+=1204.0;
    } else {
     s0+=20.0;
     s1+=16.0;
    }
   } else {
    if(i56<0.00013812210818286985){
     s0+=4.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=7940.0;
    }
   }
  }
 }
}
if(i8<3.832578659057617e-05){
 if(i2<0.07880496978759766){
  if(i1<0.06915926933288574){
   if(i13<1.0398929119110107){
    if(i5<1.0029003620147705){
     s0+=57454.0;
     s1+=425.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i25<0.017037421464920044){
     s0+=7432.0;
     s1+=356.0;
    } else {
     s0+=2247.0;
     s1+=788.0;
    }
   }
  } else {
   if(i53<0.04101869463920593){
    if(i3<-0.0009131431579589844){
     s0+=95.0;
    } else {
     s0+=58.0;
     s1+=463.0;
    }
   } else {
    if(i32<0.05052533745765686){
     s0+=109.0;
     s1+=54.0;
    } else {
     s0+=1501.0;
     s1+=64.0;
    }
   }
  }
 } else {
  if(i70<-0.01860687881708145){
   if(i43<0.003882052842527628){
    if(i37<0.040309615433216095){
     s0+=860.0;
     s1+=136.0;
    } else {
     s1+=46.0;
    }
   } else {
    if(i44<0.009086201898753643){
     s0+=206.0;
     s1+=300.0;
    } else {
     s0+=34.0;
     s1+=624.0;
    }
   }
  } else {
   if(i11<-0.0004374384880065918){
    if(i38<0.009978420101106167){
     s0+=158.0;
     s1+=1.0;
    } else {
     s0+=9.0;
     s1+=6.0;
    }
   } else {
    if(i53<0.05694049596786499){
     s0+=49.0;
     s1+=1703.0;
    } else {
     s0+=267.0;
     s1+=593.0;
    }
   }
  }
 }
} else {
 if(i20<1.0409044027328491){
  s0+=293.0;
 } else {
  if(i37<0.016754135489463806){
   if(i36<1.2261788845062256){
    if(i55<0.030588865280151367){
     s0+=1.0;
     s1+=1473.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i1<0.1512853503227234){
     s0+=364.0;
     s1+=198.0;
    } else {
     s0+=2.0;
     s1+=446.0;
    }
   }
  } else {
   if(i1<0.0635688304901123){
    if(i62<0.994059681892395){
     s0+=10.0;
     s1+=168.0;
    } else {
     s0+=21.0;
     s1+=11.0;
    }
   } else {
    if(i10<0.9987373352050781){
     s0+=25.0;
     s1+=657.0;
    } else {
     s0+=5.0;
     s1+=8521.0;
    }
   }
  }
 }
}
if(i13<1.055552363395691){
 if(i12<1.0044429302215576){
  if(i33<0.00035441943327896297){
   if(i13<1.043684482574463){
    s0+=35673.0;
   } else {
    if(i10<1.0010333061218262){
     s0+=684.0;
    } else {
     s0+=119.0;
     s1+=7.0;
    }
   }
  } else {
   if(i46<0.0019798099528998137){
    if(i19<1.008531093597412){
     s0+=25227.0;
     s1+=975.0;
    } else {
     s0+=108.0;
     s1+=148.0;
    }
   } else {
    if(i75<7.241492858156562e-05){
     s0+=295.0;
     s1+=400.0;
    } else {
     s0+=1799.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i1<0.058814942836761475){
   if(i36<1.1351666450500488){
    if(i3<0.00020939111709594727){
     s0+=5.0;
    } else {
     s0+=4.0;
     s1+=72.0;
    }
   } else {
    if(i37<0.015062790364027023){
     s0+=428.0;
    } else {
     s1+=5.0;
    }
   }
  } else {
   if(i40<0.0324767529964447){
    if(i35<1.0690243244171143){
     s0+=1.0;
    } else {
     s0+=2.0;
     s1+=339.0;
    }
   } else {
    if(i2<0.0699329674243927){
     s0+=33.0;
     s1+=3.0;
    } else {
     s0+=3.0;
     s1+=128.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018718242645264){
  if(i7<1.0106343030929565){
   if(i17<0.006375194527208805){
    if(i1<0.07743096351623535){
     s0+=4096.0;
     s1+=470.0;
    } else {
     s0+=1111.0;
     s1+=888.0;
    }
   } else {
    if(i1<0.08540722727775574){
     s0+=363.0;
     s1+=195.0;
    } else {
     s0+=45.0;
     s1+=809.0;
    }
   }
  } else {
   if(i6<-3.353039937792346e-05){
    if(i22<-5.3375959396362305e-05){
     s0+=45.0;
     s1+=237.0;
    } else {
     s0+=6.0;
     s1+=700.0;
    }
   } else {
    if(i43<0.003734248923137784){
     s0+=352.0;
     s1+=63.0;
    } else {
     s0+=152.0;
     s1+=211.0;
    }
   }
  }
 } else {
  if(i6<-4.3747262679971755e-05){
   if(i20<1.0591386556625366){
    s0+=17.0;
   } else {
    if(i12<1.002383828163147){
     s0+=163.0;
     s1+=1335.0;
    } else {
     s0+=46.0;
     s1+=9793.0;
    }
   }
  } else {
   if(i64<-5.1779215937131085e-06){
    if(i59<-0.0007304634200409055){
     s0+=3.0;
     s1+=9.0;
    } else {
     s1+=200.0;
    }
   } else {
    if(i47<0.011246629059314728){
     s0+=214.0;
     s1+=31.0;
    } else {
     s1+=15.0;
    }
   }
  }
 }
}
if(i2<0.07742854952812195){
 if(i11<0.0005329251289367676){
  if(i20<1.0451585054397583){
   if(i71<0.00028817119891755283){
    if(i25<0.01991211622953415){
     s0+=47511.0;
     s1+=24.0;
    } else {
     s0+=1182.0;
     s1+=22.0;
    }
   } else {
    if(i44<0.0012198584154248238){
     s0+=876.0;
     s1+=168.0;
    } else {
     s0+=4060.0;
     s1+=3.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i31<1.0670123100280762){
     s0+=2188.0;
     s1+=76.0;
    } else {
     s0+=1848.0;
     s1+=1396.0;
    }
   } else {
    if(i60<-0.00320512056350708){
     s0+=934.0;
     s1+=201.0;
    } else {
     s0+=9444.0;
     s1+=216.0;
    }
   }
  }
 } else {
  if(i66<9.421784852747805e-06){
   if(i17<0.0020069496240466833){
    if(i28<0.0003322892007417977){
     s0+=123.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   } else {
    if(i36<1.5944836139678955){
     s0+=55.0;
     s1+=922.0;
    } else {
     s0+=45.0;
     s1+=19.0;
    }
   }
  } else {
   if(i37<0.03858610987663269){
    if(i33<0.006722165271639824){
     s0+=237.0;
     s1+=113.0;
    } else {
     s0+=525.0;
     s1+=13.0;
    }
   } else {
    if(i41<0.00040609383722767234){
     s1+=98.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i17<0.004687285050749779){
  if(i32<0.0642651915550232){
   if(i33<0.00042123300954699516){
    if(i75<4.668665133067407e-05){
     s1+=6.0;
    } else {
     s0+=73.0;
    }
   } else {
    if(i6<9.622810466680676e-06){
     s0+=35.0;
     s1+=1273.0;
    } else {
     s0+=22.0;
     s1+=7.0;
    }
   }
  } else {
   if(i40<0.05359077453613281){
    if(i55<0.019605517387390137){
     s0+=91.0;
     s1+=518.0;
    } else {
     s0+=112.0;
     s1+=74.0;
    }
   } else {
    if(i8<6.026029586791992e-05){
     s0+=1269.0;
     s1+=332.0;
    } else {
     s0+=16.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i14<-0.0009031891822814941){
   if(i45<3.0054052331252024e-06){
    if(i20<1.0819685459136963){
     s0+=168.0;
     s1+=45.0;
    } else {
     s0+=56.0;
     s1+=1203.0;
    }
   } else {
    s0+=44.0;
   }
  } else {
   if(i31<1.0647977590560913){
    s0+=3.0;
   } else {
    if(i18<0.9981372952461243){
     s0+=30.0;
    } else {
     s0+=33.0;
     s1+=10386.0;
    }
   }
  }
 }
}
if(i0<0.08250191807746887){
 if(i14<0.0011519193649291992){
  if(i61<-0.0021035969257354736){
   if(i5<0.9980807304382324){
    if(i43<0.0015708900755271316){
     s0+=1248.0;
     s1+=228.0;
    } else {
     s0+=2965.0;
     s1+=73.0;
    }
   } else {
    if(i0<0.04459458589553833){
     s0+=1433.0;
     s1+=496.0;
    } else {
     s0+=266.0;
     s1+=492.0;
    }
   }
  } else {
   if(i1<0.06909489631652832){
    if(i13<1.0406912565231323){
     s0+=54230.0;
     s1+=157.0;
    } else {
     s0+=7286.0;
     s1+=652.0;
    }
   } else {
    if(i50<0.0023017378989607096){
     s0+=1349.0;
     s1+=187.0;
    } else {
     s0+=183.0;
     s1+=258.0;
    }
   }
  }
 } else {
  if(i22<0.00022983551025390625){
   if(i44<0.0019143036333844066){
    s1+=122.0;
   } else {
    if(i5<1.0056352615356445){
     s0+=114.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i2<0.03141036629676819){
    if(i15<1.7344951629638672e-05){
     s0+=2.0;
    } else {
     s1+=51.0;
    }
   } else {
    s1+=275.0;
   }
  }
 }
} else {
 if(i10<1.0004551410675049){
  if(i39<-0.00013753771781921387){
   if(i43<0.019916962832212448){
    if(i33<0.0017424665857106447){
     s0+=689.0;
     s1+=5.0;
    } else {
     s0+=58.0;
     s1+=22.0;
    }
   } else {
    s1+=17.0;
   }
  } else {
   if(i59<-0.00012033752136630937){
    if(i6<-1.4835466572549194e-05){
     s0+=275.0;
     s1+=2574.0;
    } else {
     s0+=309.0;
     s1+=186.0;
    }
   } else {
    if(i48<0.0031910836696624756){
     s0+=108.0;
     s1+=436.0;
    } else {
     s0+=424.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i43<0.00027322579990141094){
   s0+=28.0;
  } else {
   if(i12<1.0071825981140137){
    if(i17<0.0016657545929774642){
     s0+=91.0;
     s1+=34.0;
    } else {
     s0+=99.0;
     s1+=1947.0;
    }
   } else {
    if(i17<0.003094213781878352){
     s0+=16.0;
     s1+=500.0;
    } else {
     s1+=8231.0;
    }
   }
  }
 }
}
if(i6<-7.076778274495155e-05){
 if(i66<3.215158358216286e-05){
  if(i23<0.9961599111557007){
   if(i4<0.16986769437789917){
    if(i38<0.009618635289371014){
     s0+=186.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i9<1.060833215713501){
     s0+=3.0;
    } else {
     s1+=156.0;
    }
   }
  } else {
   if(i4<0.007469236850738525){
    if(i5<1.0025742053985596){
     s0+=80.0;
     s1+=5.0;
    } else {
     s0+=8.0;
     s1+=81.0;
    }
   } else {
    if(i12<1.0007423162460327){
     s0+=134.0;
     s1+=1387.0;
    } else {
     s0+=32.0;
     s1+=9678.0;
    }
   }
  }
 } else {
  if(i37<0.043712712824344635){
   if(i13<1.1180591583251953){
    if(i35<1.378585696220398){
     s1+=16.0;
    } else {
     s0+=712.0;
     s1+=6.0;
    }
   } else {
    if(i4<0.013015061616897583){
     s0+=13.0;
    } else {
     s1+=30.0;
    }
   }
  } else {
   if(i2<0.019152671098709106){
    s0+=24.0;
   } else {
    if(i10<0.966479480266571){
     s0+=5.0;
    } else {
     s1+=265.0;
    }
   }
  }
 }
} else {
 if(i0<0.08518415689468384){
  if(i5<1.0024688243865967){
   if(i34<0.00028150976868346334){
    if(i26<1.0114998817443848){
     s0+=52142.0;
     s1+=200.0;
    } else {
     s0+=35.0;
     s1+=42.0;
    }
   } else {
    if(i35<1.100754976272583){
     s0+=4036.0;
     s1+=1296.0;
    } else {
     s0+=11719.0;
     s1+=427.0;
    }
   }
  } else {
   if(i38<0.001468508504331112){
    if(i36<1.069656252861023){
     s0+=7.0;
    } else {
     s1+=321.0;
    }
   } else {
    if(i27<0.9908632040023804){
     s0+=2.0;
     s1+=38.0;
    } else {
     s0+=178.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i3<-0.0007544457912445068){
   if(i11<-0.0004050135612487793){
    if(i36<1.476589322090149){
     s0+=516.0;
    } else {
     s0+=67.0;
     s1+=13.0;
    }
   } else {
    if(i13<1.112269639968872){
     s0+=76.0;
     s1+=27.0;
    } else {
     s0+=9.0;
     s1+=70.0;
    }
   }
  } else {
   if(i17<0.0016535610193386674){
    if(i40<0.040551453828811646){
     s0+=28.0;
     s1+=113.0;
    } else {
     s0+=529.0;
     s1+=87.0;
    }
   } else {
    if(i28<0.00098800053820014){
     s0+=111.0;
     s1+=1609.0;
    } else {
     s0+=535.0;
     s1+=1189.0;
    }
   }
  }
 }
}
if(i0<0.08194559812545776){
 if(i5<1.0024800300598145){
  if(i20<1.0451585054397583){
   if(i71<0.00027154324925504625){
    if(i72<0.018961329013109207){
     s0+=44895.0;
     s1+=9.0;
    } else {
     s0+=3237.0;
     s1+=33.0;
    }
   } else {
    if(i10<0.9937575459480286){
     s0+=4648.0;
     s1+=5.0;
    } else {
     s0+=853.0;
     s1+=144.0;
    }
   }
  } else {
   if(i43<0.0008732832502573729){
    if(i41<3.1845178455114365e-05){
     s0+=4427.0;
     s1+=427.0;
    } else {
     s0+=669.0;
     s1+=775.0;
    }
   } else {
    if(i68<0.001944515504874289){
     s0+=9893.0;
     s1+=545.0;
    } else {
     s0+=35.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i63<0.0018385052680969238){
   if(i43<0.0020939665846526623){
    if(i34<0.00017155316891148686){
     s0+=1.0;
     s1+=23.0;
    } else {
     s1+=532.0;
    }
   } else {
    if(i27<0.9991617202758789){
     s0+=32.0;
     s1+=310.0;
    } else {
     s0+=123.0;
     s1+=15.0;
    }
   }
  } else {
   if(i33<0.0012664784444496036){
    s1+=6.0;
   } else {
    if(i37<0.021895483136177063){
     s0+=91.0;
    } else {
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i17<0.004690013825893402){
  if(i5<0.9963690042495728){
   if(i39<-0.00013887882232666016){
    s0+=576.0;
   } else {
    if(i45<2.7809337552753277e-06){
     s0+=70.0;
     s1+=5.0;
    } else {
     s0+=2.0;
     s1+=9.0;
    }
   }
  } else {
   if(i51<0.060753703117370605){
    if(i61<0.0065958499908447266){
     s0+=220.0;
     s1+=1893.0;
    } else {
     s0+=215.0;
     s1+=161.0;
    }
   } else {
    if(i25<0.042660076171159744){
     s0+=660.0;
     s1+=155.0;
    } else {
     s0+=41.0;
     s1+=150.0;
    }
   }
  }
 } else {
  if(i1<0.0925075113773346){
   if(i66<2.323175795027055e-05){
    if(i70<-0.01560475304722786){
     s0+=73.0;
     s1+=5.0;
    } else {
     s0+=5.0;
     s1+=384.0;
    }
   } else {
    if(i17<0.011107809841632843){
     s0+=121.0;
     s1+=10.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   }
  } else {
   if(i64<1.8891760191763751e-06){
    if(i15<-1.9431114196777344e-05){
     s0+=25.0;
    } else {
     s0+=109.0;
     s1+=11499.0;
    }
   } else {
    s0+=56.0;
   }
  }
 }
}
if(i11<0.00044038891792297363){
 if(i29<1.0074167251586914){
  if(i46<0.002086613792926073){
   if(i2<0.08389818668365479){
    if(i58<0.04403430223464966){
     s0+=54892.0;
     s1+=440.0;
    } else {
     s0+=7816.0;
     s1+=616.0;
    }
   } else {
    if(i15<-1.621246337890625e-05){
     s0+=153.0;
     s1+=2.0;
    } else {
     s0+=413.0;
     s1+=1006.0;
    }
   }
  } else {
   if(i35<1.0835556983947754){
    s0+=1075.0;
   } else {
    if(i3<-0.0005425214767456055){
     s0+=1919.0;
     s1+=202.0;
    } else {
     s0+=1374.0;
     s1+=1158.0;
    }
   }
  }
 } else {
  if(i56<0.0016289239283651114){
   if(i69<0.9998815059661865){
    if(i23<0.9947218894958496){
     s0+=166.0;
     s1+=2.0;
    } else {
     s0+=290.0;
     s1+=1248.0;
    }
   } else {
    if(i25<0.05268608778715134){
     s0+=1247.0;
     s1+=108.0;
    } else {
     s0+=10.0;
     s1+=57.0;
    }
   }
  } else {
   if(i59<-0.0001760619052220136){
    if(i3<-5.704164505004883e-05){
     s0+=4.0;
     s1+=132.0;
    } else {
     s1+=917.0;
    }
   } else {
    if(i35<1.5125200748443604){
     s1+=10.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i1<0.07393670082092285){
  if(i8<3.713369369506836e-05){
   if(i51<-0.04840397834777832){
    if(i1<0.007386624813079834){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=1.0;
     s1+=47.0;
    }
   } else {
    if(i35<1.501461148262024){
     s0+=569.0;
     s1+=93.0;
    } else {
     s0+=498.0;
     s1+=4.0;
    }
   }
  } else {
   if(i60<-0.000508725643157959){
    if(i63<0.0016720890998840332){
     s0+=56.0;
     s1+=629.0;
    } else {
     s0+=44.0;
     s1+=9.0;
    }
   } else {
    if(i42<1.000915288925171){
     s0+=111.0;
     s1+=16.0;
    } else {
     s0+=69.0;
     s1+=96.0;
    }
   }
  }
 } else {
  if(i59<-0.0002596664126031101){
   if(i8<3.68952751159668e-05){
    if(i0<0.0948047935962677){
     s0+=35.0;
     s1+=15.0;
    } else {
     s0+=16.0;
     s1+=297.0;
    }
   } else {
    if(i22<6.020069122314453e-06){
     s0+=36.0;
     s1+=720.0;
    } else {
     s1+=7377.0;
    }
   }
  } else {
   if(i10<1.0011948347091675){
    if(i2<0.11836749315261841){
     s0+=222.0;
     s1+=92.0;
    } else {
     s0+=44.0;
     s1+=248.0;
    }
   } else {
    if(i18<1.0009914636611938){
     s0+=2.0;
    } else {
     s0+=30.0;
     s1+=1586.0;
    }
   }
  }
 }
}
if(i8<3.701448440551758e-05){
 if(i0<0.08502736687660217){
  if(i1<0.06909489631652832){
   if(i25<0.014130311086773872){
    if(i62<0.9724506139755249){
     s0+=1164.0;
     s1+=171.0;
    } else {
     s0+=53948.0;
     s1+=386.0;
    }
   } else {
    if(i5<0.9978523850440979){
     s0+=8904.0;
     s1+=171.0;
    } else {
     s0+=2815.0;
     s1+=825.0;
    }
   }
  } else {
   if(i51<0.002307713031768799){
    if(i26<1.0291138887405396){
     s0+=65.0;
     s1+=298.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i40<0.03246164321899414){
     s0+=75.0;
     s1+=212.0;
    } else {
     s0+=1626.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i8<-5.778670310974121e-05){
   if(i18<0.9981645345687866){
    if(i11<-0.0005383193492889404){
     s0+=513.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.004653683863580227){
     s0+=68.0;
     s1+=37.0;
    } else {
     s0+=2.0;
     s1+=56.0;
    }
   }
  } else {
   if(i51<0.0623440146446228){
    if(i17<0.0017158968839794397){
     s0+=211.0;
     s1+=192.0;
    } else {
     s0+=182.0;
     s1+=2158.0;
    }
   } else {
    if(i1<0.21042752265930176){
     s0+=671.0;
     s1+=177.0;
    } else {
     s0+=105.0;
     s1+=662.0;
    }
   }
  }
 }
} else {
 if(i42<0.9983712434768677){
  s0+=306.0;
 } else {
  if(i28<0.00015122249897103757){
   if(i11<0.0007367432117462158){
    if(i6<-6.112243863753974e-05){
     s1+=5.0;
    } else {
     s0+=75.0;
    }
   } else {
    s1+=6.0;
   }
  } else {
   if(i30<1.3005231618881226){
    if(i2<0.13138559460639954){
     s0+=325.0;
     s1+=2094.0;
    } else {
     s0+=23.0;
     s1+=2992.0;
    }
   } else {
    if(i14<-0.0030453503131866455){
     s0+=7.0;
     s1+=44.0;
    } else {
     s0+=1.0;
     s1+=6499.0;
    }
   }
  }
 }
}
if(i14<0.0008134245872497559){
 if(i2<0.07909366488456726){
  if(i61<-0.002100050449371338){
   if(i10<0.9941991567611694){
    if(i67<0.21754610538482666){
     s0+=3432.0;
     s1+=142.0;
    } else {
     s0+=2.0;
     s1+=19.0;
    }
   } else {
    if(i15<1.6987323760986328e-05){
     s0+=2312.0;
     s1+=758.0;
    } else {
     s0+=125.0;
     s1+=319.0;
    }
   }
  } else {
   if(i29<1.0051676034927368){
    if(i20<1.048384666442871){
     s0+=53815.0;
     s1+=126.0;
    } else {
     s0+=7359.0;
     s1+=691.0;
    }
   } else {
    if(i5<1.001955270767212){
     s0+=1772.0;
     s1+=271.0;
    } else {
     s0+=94.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i38<0.006142225116491318){
   if(i39<-0.00023829936981201172){
    if(i5<0.9970239400863647){
     s0+=385.0;
    } else {
     s0+=22.0;
     s1+=8.0;
    }
   } else {
    if(i40<0.048786282539367676){
     s0+=144.0;
     s1+=1631.0;
    } else {
     s0+=1039.0;
     s1+=717.0;
    }
   }
  } else {
   if(i20<1.0654747486114502){
    if(i62<0.9810402989387512){
     s1+=2.0;
    } else {
     s0+=53.0;
    }
   } else {
    if(i37<0.030606791377067566){
     s0+=111.0;
     s1+=390.0;
    } else {
     s0+=17.0;
     s1+=2019.0;
    }
   }
  }
 }
} else {
 if(i28<0.00017919173114933074){
  if(i18<1.0024360418319702){
   if(i33<0.0007950112922117114){
    s1+=25.0;
   } else {
    if(i2<0.1606253981590271){
     s0+=295.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   s1+=21.0;
  }
 } else {
  if(i3<-4.0531158447265625e-05){
   if(i34<0.01522858627140522){
    s0+=113.0;
   } else {
    s1+=6.0;
   }
  } else {
   if(i0<0.06787514686584473){
    if(i30<1.176491379737854){
     s1+=217.0;
    } else {
     s0+=91.0;
     s1+=41.0;
    }
   } else {
    if(i45<-1.3799623047816567e-05){
     s1+=8869.0;
    } else {
     s0+=56.0;
     s1+=583.0;
    }
   }
  }
 }
}
if(i26<1.0110323429107666){
 if(i15<2.0563602447509766e-05){
  if(i25<0.021243389695882797){
   if(i63<-0.0012702345848083496){
    if(i2<0.05743798613548279){
     s0+=3296.0;
     s1+=419.0;
    } else {
     s0+=251.0;
     s1+=319.0;
    }
   } else {
    if(i16<1.008249044418335){
     s0+=56820.0;
     s1+=485.0;
    } else {
     s0+=544.0;
     s1+=204.0;
    }
   }
  } else {
   if(i5<0.9972686171531677){
    if(i4<0.0811576247215271){
     s0+=5213.0;
     s1+=105.0;
    } else {
     s0+=165.0;
     s1+=128.0;
    }
   } else {
    if(i1<0.057335108518600464){
     s0+=798.0;
     s1+=374.0;
    } else {
     s0+=190.0;
     s1+=1599.0;
    }
   }
  }
 } else {
  if(i0<0.08935803174972534){
   if(i14<0.0006527304649353027){
    if(i8<4.2319297790527344e-05){
     s0+=694.0;
     s1+=149.0;
    } else {
     s0+=279.0;
     s1+=410.0;
    }
   } else {
    if(i11<0.0005835294723510742){
     s0+=17.0;
     s1+=15.0;
    } else {
     s1+=340.0;
    }
   }
  } else {
   if(i48<0.004211843013763428){
    if(i45<-0.00011871626338688657){
     s0+=12.0;
    } else {
     s0+=10.0;
     s1+=1846.0;
    }
   } else {
    if(i57<0.0009124858188442886){
     s0+=50.0;
     s1+=12.0;
    } else {
     s0+=5.0;
     s1+=128.0;
    }
   }
  }
 }
} else {
 if(i56<0.0016655265353620052){
  if(i10<1.0069149732589722){
   if(i17<0.0028031249530613422){
    if(i31<1.0950405597686768){
     s0+=379.0;
     s1+=221.0;
    } else {
     s0+=1333.0;
     s1+=91.0;
    }
   } else {
    if(i22<-3.796815872192383e-05){
     s0+=319.0;
     s1+=141.0;
    } else {
     s0+=167.0;
     s1+=777.0;
    }
   }
  } else {
   if(i14<0.001435399055480957){
    if(i41<-1.4881801689625718e-05){
     s0+=42.0;
    } else {
     s0+=5.0;
     s1+=84.0;
    }
   } else {
    s1+=1436.0;
   }
  }
 } else {
  if(i0<0.0817941427230835){
   if(i55<0.010181665420532227){
    if(i35<1.428269624710083){
     s0+=6.0;
     s1+=146.0;
    } else {
     s0+=18.0;
     s1+=4.0;
    }
   } else {
    if(i44<0.0010015885345637798){
     s1+=7.0;
    } else {
     s0+=273.0;
     s1+=3.0;
    }
   }
  } else {
   if(i29<1.0064278841018677){
    if(i75<8.213910041376948e-05){
     s0+=71.0;
     s1+=68.0;
    } else {
     s0+=51.0;
     s1+=424.0;
    }
   } else {
    if(i41<0.00011003871622961015){
     s0+=5.0;
     s1+=6326.0;
    } else {
     s0+=15.0;
     s1+=963.0;
    }
   }
  }
 }
}
if(i34<0.00033343551331199706){
 if(i5<1.0024691820144653){
  if(i29<1.007203221321106){
   if(i19<1.0076134204864502){
    if(i20<1.0451585054397583){
     s0+=48669.0;
     s1+=73.0;
    } else {
     s0+=5438.0;
     s1+=205.0;
    }
   } else {
    if(i6<-2.2366264602169394e-05){
     s0+=18.0;
     s1+=51.0;
    } else {
     s0+=137.0;
     s1+=3.0;
    }
   }
  } else {
   if(i43<0.0012149489484727383){
    if(i9<1.028881549835205){
     s0+=11.0;
     s1+=5.0;
    } else {
     s0+=19.0;
     s1+=144.0;
    }
   } else {
    if(i7<1.011779546737671){
     s0+=235.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i2<0.043299317359924316){
   if(i68<0.0005540711572393775){
    if(i76<1.8611368659549044e-06){
     s0+=88.0;
    } else {
     s1+=4.0;
    }
   } else {
    s1+=4.0;
   }
  } else {
   if(i45<-1.4661385648651049e-05){
    s1+=333.0;
   } else {
    if(i36<1.169237732887268){
     s0+=1.0;
     s1+=14.0;
    } else {
     s0+=34.0;
    }
   }
  }
 }
} else {
 if(i4<0.07060942053794861){
  if(i10<1.0037442445755005){
   if(i43<0.002486676210537553){
    if(i1<0.075202077627182){
     s0+=5906.0;
     s1+=1193.0;
    } else {
     s0+=121.0;
     s1+=670.0;
    }
   } else {
    if(i51<-0.04356592893600464){
     s0+=488.0;
     s1+=294.0;
    } else {
     s0+=7853.0;
     s1+=198.0;
    }
   }
  } else {
   if(i15<1.8894672393798828e-05){
    if(i31<1.1820628643035889){
     s1+=238.0;
    } else {
     s0+=195.0;
     s1+=16.0;
    }
   } else {
    if(i41<0.00029464904218912125){
     s0+=10.0;
     s1+=1244.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i6<-4.1767911170609295e-05){
   if(i5<1.0029666423797607){
    if(i39<0.000272214412689209){
     s0+=117.0;
     s1+=1861.0;
    } else {
     s0+=179.0;
     s1+=296.0;
    }
   } else {
    if(i0<0.1299923062324524){
     s0+=49.0;
     s1+=559.0;
    } else {
     s0+=11.0;
     s1+=8460.0;
    }
   }
  } else {
   if(i32<0.06294217705726624){
    if(i53<0.05111408233642578){
     s0+=28.0;
     s1+=381.0;
    } else {
     s0+=62.0;
     s1+=48.0;
    }
   } else {
    if(i17<0.006069739814847708){
     s0+=1426.0;
     s1+=609.0;
    } else {
     s0+=16.0;
     s1+=212.0;
    }
   }
  }
 }
}
if(i0<0.08507683873176575){
 if(i8<4.175305366516113e-05){
  if(i20<1.0485899448394775){
   if(i48<-0.0019470751285552979){
    if(i49<0.9998292326927185){
     s0+=115.0;
     s1+=86.0;
    } else {
     s0+=535.0;
     s1+=13.0;
    }
   } else {
    if(i61<-0.0023888349533081055){
     s0+=896.0;
     s1+=101.0;
    } else {
     s0+=53916.0;
     s1+=149.0;
    }
   }
  } else {
   if(i0<0.06630873680114746){
    if(i60<-0.0021754205226898193){
     s0+=1588.0;
     s1+=470.0;
    } else {
     s0+=10076.0;
     s1+=668.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=284.0;
     s1+=517.0;
    } else {
     s0+=1167.0;
     s1+=187.0;
    }
   }
  }
 } else {
  if(i23<0.9986020922660828){
   if(i67<0.15120765566825867){
    if(i51<-0.03867226839065552){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=217.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i48<0.0017633438110351562){
    if(i17<0.0020491364412009716){
     s0+=102.0;
     s1+=14.0;
    } else {
     s0+=83.0;
     s1+=906.0;
    }
   } else {
    if(i30<1.1677640676498413){
     s0+=4.0;
     s1+=17.0;
    } else {
     s0+=79.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00038933753967285156){
  if(i42<0.9991846084594727){
   if(i15<-1.7255544662475586e-05){
    s0+=591.0;
   } else {
    if(i11<-0.0004189908504486084){
     s0+=12.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i10<0.9880144596099854){
    if(i16<0.9931591153144836){
     s1+=14.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i61<0.008091062307357788){
     s0+=52.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i8<3.36766242980957e-05){
   if(i60<0.004186511039733887){
    if(i48<0.00467604398727417){
     s0+=135.0;
     s1+=1935.0;
    } else {
     s0+=171.0;
     s1+=266.0;
    }
   } else {
    if(i17<0.0035962171386927366){
     s0+=612.0;
     s1+=189.0;
    } else {
     s0+=154.0;
     s1+=757.0;
    }
   }
  } else {
   if(i0<0.1318863034248352){
    if(i40<0.05827522277832031){
     s0+=43.0;
     s1+=1308.0;
    } else {
     s0+=95.0;
     s1+=36.0;
    }
   } else {
    if(i31<1.2590415477752686){
     s0+=32.0;
     s1+=1344.0;
    } else {
     s0+=6.0;
     s1+=8287.0;
    }
   }
  }
 }
}
if(i2<0.07905879616737366){
 if(i13<1.0451585054397583){
  if(i20<1.042891263961792){
   if(i46<0.0015895779943093657){
    if(i13<1.0410044193267822){
     s0+=50113.0;
     s1+=73.0;
    } else {
     s0+=738.0;
     s1+=17.0;
    }
   } else {
    if(i30<1.0547096729278564){
     s0+=860.0;
    } else {
     s0+=547.0;
     s1+=63.0;
    }
   }
  } else {
   if(i43<0.000859531108289957){
    if(i57<0.0008055726648308337){
     s0+=2898.0;
     s1+=266.0;
    } else {
     s0+=176.0;
     s1+=315.0;
    }
   } else {
    if(i44<0.0016960152424871922){
     s0+=1673.0;
     s1+=115.0;
    } else {
     s0+=5256.0;
     s1+=56.0;
    }
   }
  }
 } else {
  if(i14<0.0011005997657775879){
   if(i25<0.017015181481838226){
    if(i17<0.004337280988693237){
     s0+=4694.0;
     s1+=288.0;
    } else {
     s0+=501.0;
     s1+=255.0;
    }
   } else {
    if(i43<0.0008775430615060031){
     s0+=321.0;
     s1+=601.0;
    } else {
     s0+=1650.0;
     s1+=617.0;
    }
   }
  } else {
   if(i17<0.0020205089822411537){
    if(i64<-7.331483175221365e-06){
     s1+=11.0;
    } else {
     s0+=86.0;
     s1+=7.0;
    }
   } else {
    if(i42<1.0004171133041382){
     s0+=8.0;
     s1+=33.0;
    } else {
     s1+=575.0;
    }
   }
  }
 }
} else {
 if(i42<0.999065101146698){
  if(i23<0.9999585151672363){
   if(i8<-3.463029861450195e-05){
    s0+=379.0;
   } else {
    if(i49<0.9993106126785278){
     s0+=66.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   }
  } else {
   if(i13<1.062648057937622){
    s0+=1.0;
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i17<0.0017241642344743013){
   if(i40<0.038829684257507324){
    if(i9<1.1762490272521973){
     s0+=13.0;
     s1+=172.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   } else {
    if(i66<-1.4968454706831835e-06){
     s0+=5.0;
     s1+=52.0;
    } else {
     s0+=612.0;
     s1+=109.0;
    }
   }
  } else {
   if(i14<-5.525350570678711e-05){
    if(i1<0.1179845929145813){
     s0+=440.0;
     s1+=656.0;
    } else {
     s0+=172.0;
     s1+=2201.0;
    }
   } else {
    if(i17<0.003201135201379657){
     s0+=59.0;
     s1+=595.0;
    } else {
     s0+=9.0;
     s1+=9854.0;
    }
   }
  }
 }
}
if(i4<0.07239711284637451){
 if(i10<1.0054447650909424){
  if(i8<3.7729740142822266e-05){
   if(i2<0.07700353860855103){
    if(i9<1.0401114225387573){
     s0+=62248.0;
     s1+=1082.0;
    } else {
     s0+=5780.0;
     s1+=872.0;
    }
   } else {
    if(i5<0.9969280958175659){
     s0+=117.0;
     s1+=14.0;
    } else {
     s0+=43.0;
     s1+=622.0;
    }
   }
  } else {
   if(i44<0.0003750443574972451){
    s0+=304.0;
   } else {
    if(i51<0.03180631995201111){
     s0+=165.0;
     s1+=501.0;
    } else {
     s0+=68.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i47<0.00019112724112346768){
   s0+=136.0;
  } else {
   if(i5<1.0008962154388428){
    if(i75<3.62684550054837e-05){
     s1+=2.0;
    } else {
     s0+=88.0;
    }
   } else {
    if(i15<1.8417835235595703e-05){
     s0+=93.0;
     s1+=242.0;
    } else {
     s0+=7.0;
     s1+=1303.0;
    }
   }
  }
 }
} else {
 if(i43<0.005998365581035614){
  if(i70<-0.021640237420797348){
   if(i6<-1.4596535947930533e-05){
    if(i38<0.005184076726436615){
     s0+=283.0;
     s1+=207.0;
    } else {
     s0+=33.0;
     s1+=184.0;
    }
   } else {
    if(i35<1.255998969078064){
     s0+=334.0;
     s1+=94.0;
    } else {
     s0+=380.0;
     s1+=1.0;
    }
   }
  } else {
   if(i44<0.00036470353370532393){
    if(i11<0.0001360774040222168){
     s0+=164.0;
    } else {
     s0+=10.0;
     s1+=11.0;
    }
   } else {
    if(i6<-2.3374974261969328e-05){
     s0+=190.0;
     s1+=2312.0;
    } else {
     s0+=393.0;
     s1+=358.0;
    }
   }
  }
 } else {
  if(i5<0.9960784316062927){
   if(i9<1.0819509029388428){
    if(i20<1.0628275871276855){
     s0+=63.0;
     s1+=3.0;
    } else {
     s0+=15.0;
     s1+=14.0;
    }
   } else {
    s1+=91.0;
   }
  } else {
   if(i4<0.08332791924476624){
    if(i35<1.5682398080825806){
     s0+=3.0;
     s1+=118.0;
    } else {
     s0+=48.0;
     s1+=28.0;
    }
   } else {
    if(i14<3.5643577575683594e-05){
     s0+=113.0;
     s1+=1495.0;
    } else {
     s0+=4.0;
     s1+=7613.0;
    }
   }
  }
 }
}
if(i73<1.0072370767593384){
 if(i1<0.08385711908340454){
  if(i9<1.0401519536972046){
   if(i55<-0.0061578452587127686){
    if(i76<-1.659898089201306e-06){
     s0+=4.0;
     s1+=113.0;
    } else {
     s0+=2481.0;
     s1+=552.0;
    }
   } else {
    if(i54<0.026418522000312805){
     s0+=53212.0;
     s1+=266.0;
    } else {
     s0+=6583.0;
     s1+=414.0;
    }
   }
  } else {
   if(i25<0.022472606971859932){
    if(i71<0.00043530744733288884){
     s0+=4043.0;
     s1+=255.0;
    } else {
     s0+=611.0;
     s1+=160.0;
    }
   } else {
    if(i55<0.010096162557601929){
     s0+=548.0;
     s1+=675.0;
    } else {
     s0+=388.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i49<0.9995706081390381){
   if(i8<-3.6209821701049805e-05){
    s0+=330.0;
   } else {
    if(i49<0.9991296529769897){
     s0+=52.0;
    } else {
     s0+=16.0;
     s1+=130.0;
    }
   }
  } else {
   if(i37<0.023849956691265106){
    if(i6<-7.302159247046802e-06){
     s0+=504.0;
     s1+=1264.0;
    } else {
     s0+=309.0;
     s1+=120.0;
    }
   } else {
    if(i18<0.9989153146743774){
     s0+=37.0;
     s1+=17.0;
    } else {
     s0+=98.0;
     s1+=2914.0;
    }
   }
  }
 }
} else {
 if(i38<0.006635505706071854){
  if(i17<0.002646559849381447){
   if(i14<0.0015732049942016602){
    if(i6<-4.2373860196676105e-05){
     s0+=64.0;
     s1+=188.0;
    } else {
     s0+=1496.0;
     s1+=76.0;
    }
   } else {
    s1+=274.0;
   }
  } else {
   if(i15<-1.0848045349121094e-05){
    s0+=153.0;
   } else {
    if(i13<1.2265005111694336){
     s0+=83.0;
     s1+=2802.0;
    } else {
     s0+=55.0;
     s1+=45.0;
    }
   }
  }
 } else {
  if(i14<4.738569259643555e-05){
   if(i44<0.008206168189644814){
    if(i25<0.004240112379193306){
     s1+=2.0;
    } else {
     s0+=13.0;
    }
   } else {
    s1+=187.0;
   }
  } else {
   s1+=6704.0;
  }
 }
}
if(i1<0.08215740323066711){
 if(i47<0.00030320894438773394){
  if(i30<1.0598037242889404){
   s0+=40427.0;
  } else {
   if(i12<1.0051100254058838){
    if(i63<-0.0016475319862365723){
     s0+=19.0;
     s1+=10.0;
    } else {
     s0+=6519.0;
     s1+=45.0;
    }
   } else {
    if(i30<1.1201491355895996){
     s1+=116.0;
    } else {
     s0+=143.0;
    }
   }
  }
 } else {
  if(i60<-0.001576751470565796){
   if(i17<0.004374323412775993){
    if(i11<0.0007265806198120117){
     s0+=2683.0;
     s1+=514.0;
    } else {
     s0+=16.0;
     s1+=95.0;
    }
   } else {
    if(i1<0.015292525291442871){
     s0+=355.0;
     s1+=76.0;
    } else {
     s0+=92.0;
     s1+=724.0;
    }
   }
  } else {
   if(i30<1.1032289266586304){
    if(i11<7.599592208862305e-05){
     s0+=5579.0;
     s1+=544.0;
    } else {
     s0+=519.0;
     s1+=679.0;
    }
   } else {
    if(i14<0.0016794204711914062){
     s0+=13166.0;
     s1+=217.0;
    } else {
     s1+=17.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00038567185401916504){
  if(i41<0.0001750669616740197){
   if(i45<-1.003835041046841e-05){
    if(i29<0.9934136867523193){
     s0+=16.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i18<0.9988144636154175){
     s0+=406.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   }
  } else {
   if(i63<0.004023075103759766){
    s1+=9.0;
   } else {
    s0+=5.0;
   }
  }
 } else {
  if(i3<0.0005164146423339844){
   if(i59<-0.00012414969387464225){
    if(i55<0.01637190580368042){
     s0+=135.0;
     s1+=1861.0;
    } else {
     s0+=478.0;
     s1+=849.0;
    }
   } else {
    if(i7<0.9914054870605469){
     s0+=17.0;
     s1+=200.0;
    } else {
     s0+=502.0;
     s1+=362.0;
    }
   }
  } else {
   if(i3<0.000845789909362793){
    if(i59<-0.0002002752444241196){
     s0+=28.0;
     s1+=863.0;
    } else {
     s0+=61.0;
     s1+=162.0;
    }
   } else {
    if(i12<1.0061168670654297){
     s0+=35.0;
     s1+=1415.0;
    } else {
     s0+=1.0;
     s1+=8283.0;
    }
   }
  }
 }
}
if(i6<-8.167394844349474e-05){
 if(i1<0.06463634967803955){
  if(i51<-0.005432337522506714){
   if(i54<0.14590592682361603){
    if(i11<0.0006685256958007812){
     s0+=32.0;
     s1+=18.0;
    } else {
     s0+=4.0;
     s1+=180.0;
    }
   } else {
    if(i65<-0.0015918061835691333){
     s0+=3.0;
     s1+=34.0;
    } else {
     s0+=137.0;
     s1+=25.0;
    }
   }
  } else {
   if(i60<0.001111447811126709){
    if(i3<0.001296699047088623){
     s0+=180.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   } else {
    s0+=347.0;
   }
  }
 } else {
  if(i30<1.0633710622787476){
   s0+=28.0;
  } else {
   if(i73<0.9967862367630005){
    if(i20<1.1246346235275269){
     s0+=89.0;
     s1+=163.0;
    } else {
     s0+=13.0;
     s1+=1209.0;
    }
   } else {
    if(i17<0.004517571069300175){
     s0+=8.0;
     s1+=716.0;
    } else {
     s1+=8499.0;
    }
   }
  }
 }
} else {
 if(i20<1.0495078563690186){
  if(i71<0.0002715818991418928){
   if(i73<1.0086534023284912){
    if(i18<1.0021107196807861){
     s0+=50902.0;
     s1+=123.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i36<1.175731897354126){
     s1+=18.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i65<-0.0015265116235241294){
    if(i3<0.0002459287643432617){
     s0+=4212.0;
     s1+=16.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i39<-3.921985626220703e-05){
     s0+=1053.0;
     s1+=20.0;
    } else {
     s0+=257.0;
     s1+=264.0;
    }
   }
  }
 } else {
  if(i1<0.06920036673545837){
   if(i14<0.0015462636947631836){
    if(i3<0.00021630525588989258){
     s0+=11066.0;
     s1+=922.0;
    } else {
     s0+=705.0;
     s1+=468.0;
    }
   } else {
    if(i22<0.00023180246353149414){
     s0+=6.0;
     s1+=2.0;
    } else {
     s1+=96.0;
    }
   }
  } else {
   if(i11<-0.00040274858474731445){
    if(i31<1.4338626861572266){
     s0+=404.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=12.0;
    }
   } else {
    if(i53<0.04514122009277344){
     s0+=97.0;
     s1+=2244.0;
    } else {
     s0+=1616.0;
     s1+=2024.0;
    }
   }
  }
 }
}
if(i13<1.0564017295837402){
 if(i0<0.08264681696891785){
  if(i21<1.008404016494751){
   if(i55<-0.005852222442626953){
    if(i8<3.403425216674805e-05){
     s0+=2249.0;
     s1+=370.0;
    } else {
     s0+=11.0;
     s1+=121.0;
    }
   } else {
    if(i31<1.0598037242889404){
     s0+=35981.0;
    } else {
     s0+=25485.0;
     s1+=731.0;
    }
   }
  } else {
   if(i47<0.0007874378934502602){
    if(i0<0.06238463521003723){
     s0+=124.0;
     s1+=76.0;
    } else {
     s0+=8.0;
     s1+=139.0;
    }
   } else {
    if(i25<0.028529461473226547){
     s0+=136.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i30<1.0598037242889404){
   if(i33<0.0004563148249872029){
    s0+=268.0;
   } else {
    if(i52<0.03168672323226929){
     s1+=1.0;
    } else {
     s0+=45.0;
    }
   }
  } else {
   if(i3<-0.0008778274059295654){
    if(i5<0.9926249980926514){
     s0+=101.0;
    } else {
     s0+=63.0;
     s1+=21.0;
    }
   } else {
    if(i1<0.08571267127990723){
     s0+=84.0;
     s1+=97.0;
    } else {
     s0+=41.0;
     s1+=836.0;
    }
   }
  }
 }
} else {
 if(i17<0.004687285050749779){
  if(i10<1.0063645839691162){
   if(i25<0.027925817295908928){
    if(i30<1.0922304391860962){
     s0+=800.0;
     s1+=511.0;
    } else {
     s0+=3754.0;
     s1+=305.0;
    }
   } else {
    if(i30<1.2552803754806519){
     s0+=386.0;
     s1+=846.0;
    } else {
     s0+=411.0;
     s1+=3.0;
    }
   }
  } else {
   if(i73<1.007892370223999){
    if(i5<1.0041056871414185){
     s0+=50.0;
     s1+=26.0;
    } else {
     s1+=45.0;
    }
   } else {
    if(i63<0.0036041736602783203){
     s0+=1.0;
     s1+=840.0;
    } else {
     s0+=13.0;
     s1+=53.0;
    }
   }
  }
 } else {
  if(i18<0.998231053352356){
   if(i38<0.010024137794971466){
    s0+=205.0;
   } else {
    if(i1<0.048299163579940796){
     s0+=8.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i73<0.9853010177612305){
    if(i12<0.9819907546043396){
     s0+=382.0;
     s1+=275.0;
    } else {
     s0+=214.0;
     s1+=1025.0;
    }
   } else {
    if(i7<1.003727912902832){
     s0+=187.0;
     s1+=1381.0;
    } else {
     s0+=34.0;
     s1+=9492.0;
    }
   }
  }
 }
}
if(i6<-6.487517384812236e-05){
 if(i13<1.0409984588623047){
  if(i75<6.307614967226982e-05){
   if(i41<0.00014664273476228118){
    s1+=46.0;
   } else {
    s0+=25.0;
   }
  } else {
   if(i11<0.000537872314453125){
    if(i16<1.002140760421753){
     s0+=779.0;
     s1+=5.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i42<1.0015525817871094){
     s0+=3.0;
     s1+=51.0;
    } else {
     s0+=112.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i66<3.0203691494534723e-05){
   if(i2<0.031848132610321045){
    if(i50<0.009695284068584442){
     s0+=59.0;
     s1+=8.0;
    } else {
     s0+=33.0;
     s1+=117.0;
    }
   } else {
    if(i36<1.07004976272583){
     s0+=10.0;
    } else {
     s0+=166.0;
     s1+=11483.0;
    }
   }
  } else {
   if(i39<0.00047594308853149414){
    if(i17<0.006760984659194946){
     s0+=35.0;
     s1+=3.0;
    } else {
     s0+=66.0;
     s1+=337.0;
    }
   } else {
    if(i68<0.0016236599767580628){
     s0+=151.0;
    } else {
     s0+=2.0;
     s1+=35.0;
    }
   }
  }
 }
} else {
 if(i47<0.000345199485309422){
  if(i7<1.0081498622894287){
   if(i47<0.0002913372591137886){
    if(i71<0.0003062536707147956){
     s0+=46438.0;
     s1+=7.0;
    } else {
     s0+=106.0;
     s1+=24.0;
    }
   } else {
    if(i18<1.0004628896713257){
     s0+=1813.0;
     s1+=23.0;
    } else {
     s0+=130.0;
     s1+=69.0;
    }
   }
  } else {
   if(i36<1.1351666450500488){
    s1+=93.0;
   } else {
    s0+=25.0;
   }
  }
 } else {
  if(i1<0.0772407054901123){
   if(i23<1.000553846359253){
    if(i10<0.994036853313446){
     s0+=10391.0;
     s1+=74.0;
    } else {
     s0+=6791.0;
     s1+=1034.0;
    }
   } else {
    if(i60<-0.001853346824645996){
     s0+=206.0;
     s1+=314.0;
    } else {
     s0+=2051.0;
     s1+=374.0;
    }
   }
  } else {
   if(i48<0.004445195198059082){
    if(i5<0.9959188103675842){
     s0+=252.0;
     s1+=40.0;
    } else {
     s0+=373.0;
     s1+=2319.0;
    }
   } else {
    if(i68<0.0007166174473240972){
     s0+=970.0;
     s1+=373.0;
    } else {
     s0+=130.0;
     s1+=295.0;
    }
   }
  }
 }
}
if(i5<1.0024590492248535){
 if(i0<0.08346298336982727){
  if(i34<0.0003066955250687897){
   if(i11<0.00011998414993286133){
    if(i26<1.0114998817443848){
     s0+=47955.0;
     s1+=113.0;
    } else {
     s0+=35.0;
     s1+=15.0;
    }
   } else {
    if(i57<0.0015180280897766352){
     s0+=5338.0;
     s1+=171.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i5<0.9966949224472046){
    if(i9<1.3778983354568481){
     s0+=7945.0;
     s1+=111.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i48<0.0025585293769836426){
     s0+=5605.0;
     s1+=1638.0;
    } else {
     s0+=1718.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i45<4.018586423626402e-06){
   if(i11<-0.00041237473487854004){
    if(i39<-0.00012925267219543457){
     s0+=311.0;
    } else {
     s0+=38.0;
     s1+=9.0;
    }
   } else {
    if(i17<0.001680481480434537){
     s0+=576.0;
     s1+=253.0;
    } else {
     s0+=622.0;
     s1+=3536.0;
    }
   }
  } else {
   if(i18<0.9985252618789673){
    s0+=372.0;
   } else {
    if(i34<0.0032580215483903885){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=39.0;
    }
   }
  }
 }
} else {
 if(i45<-1.0912110155913979e-05){
  if(i68<0.000458590395282954){
   if(i1<0.06897726655006409){
    if(i39<0.00019532442092895508){
     s0+=117.0;
     s1+=11.0;
    } else {
     s0+=29.0;
     s1+=129.0;
    }
   } else {
    if(i12<1.0091609954833984){
     s0+=80.0;
     s1+=525.0;
    } else {
     s1+=1709.0;
    }
   }
  } else {
   if(i0<0.01379820704460144){
    if(i41<0.000269442010903731){
     s0+=3.0;
     s1+=39.0;
    } else {
     s0+=15.0;
     s1+=1.0;
    }
   } else {
    if(i10<1.0008223056793213){
     s0+=50.0;
     s1+=847.0;
    } else {
     s0+=9.0;
     s1+=8048.0;
    }
   }
  }
 } else {
  if(i17<0.0033366414718329906){
   if(i11<0.00023549795150756836){
    s1+=2.0;
   } else {
    s0+=100.0;
   }
  } else {
   s1+=72.0;
  }
 }
}
if(i4<0.072673499584198){
 if(i5<1.0024782419204712){
  if(i44<0.00036876610829494894){
   if(i26<1.0108802318572998){
    if(i49<1.0001312494277954){
     s0+=36456.0;
     s1+=4.0;
    } else {
     s0+=3966.0;
     s1+=72.0;
    }
   } else {
    if(i39<8.249282836914062e-05){
     s0+=48.0;
    } else {
     s0+=11.0;
     s1+=22.0;
    }
   }
  } else {
   if(i71<-9.3197071691975e-05){
    if(i1<0.07476851344108582){
     s0+=243.0;
     s1+=71.0;
    } else {
     s0+=9.0;
     s1+=304.0;
    }
   } else {
    if(i35<1.100754976272583){
     s0+=4173.0;
     s1+=1487.0;
    } else {
     s0+=23932.0;
     s1+=853.0;
    }
   }
  }
 } else {
  if(i17<0.0020491364412009716){
   if(i36<1.2388319969177246){
    if(i73<1.0064623355865479){
     s0+=4.0;
    } else {
     s1+=46.0;
    }
   } else {
    s0+=173.0;
   }
  } else {
   if(i51<0.03161099553108215){
    if(i22<-0.0003668069839477539){
     s0+=14.0;
     s1+=4.0;
    } else {
     s0+=57.0;
     s1+=1771.0;
    }
   } else {
    if(i43<0.003107834607362747){
     s1+=9.0;
    } else {
     s0+=22.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004690587520599365){
  if(i40<0.04276400804519653){
   if(i15<-1.4394521713256836e-05){
    if(i4<0.13841578364372253){
     s0+=22.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   } else {
    if(i1<0.08639851212501526){
     s0+=45.0;
     s1+=105.0;
    } else {
     s0+=20.0;
     s1+=1167.0;
    }
   }
  } else {
   if(i37<0.040245652198791504){
    if(i35<1.255998969078064){
     s0+=591.0;
     s1+=700.0;
    } else {
     s0+=992.0;
     s1+=190.0;
    }
   } else {
    if(i28<0.0008764744270592928){
     s0+=24.0;
     s1+=2.0;
    } else {
     s0+=11.0;
     s1+=413.0;
    }
   }
  }
 } else {
  if(i5<1.0039222240447998){
   if(i48<0.001420140266418457){
    if(i1<0.08135312795639038){
     s0+=2.0;
     s1+=20.0;
    } else {
     s1+=491.0;
    }
   } else {
    if(i29<1.0094196796417236){
     s0+=131.0;
     s1+=366.0;
    } else {
     s0+=36.0;
     s1+=580.0;
    }
   }
  } else {
   if(i73<0.9967197179794312){
    if(i23<1.0004990100860596){
     s0+=13.0;
    } else {
     s0+=21.0;
     s1+=808.0;
    }
   } else {
    if(i68<1.4148974514682777e-05){
     s0+=5.0;
    } else {
     s1+=7739.0;
    }
   }
  }
 }
}
if(i3<0.0005491375923156738){
 if(i24<1.0398095846176147){
  if(i0<0.08262783288955688){
   if(i72<0.018743878230452538){
    if(i7<1.0081498622894287){
     s0+=50336.0;
     s1+=302.0;
    } else {
     s0+=22.0;
     s1+=96.0;
    }
   } else {
    if(i36<1.103413462638855){
     s0+=3663.0;
     s1+=954.0;
    } else {
     s0+=11590.0;
     s1+=382.0;
    }
   }
  } else {
   if(i11<-0.0004025697708129883){
    if(i15<-2.065300941467285e-05){
     s0+=329.0;
    } else {
     s0+=31.0;
     s1+=6.0;
    }
   } else {
    if(i44<0.0004930667346343398){
     s0+=41.0;
     s1+=11.0;
    } else {
     s0+=96.0;
     s1+=962.0;
    }
   }
  }
 } else {
  if(i25<0.03428484499454498){
   if(i17<0.004831262398511171){
    if(i36<1.1037919521331787){
     s0+=900.0;
     s1+=429.0;
    } else {
     s0+=2375.0;
     s1+=234.0;
    }
   } else {
    if(i1<0.09207889437675476){
     s0+=368.0;
     s1+=103.0;
    } else {
     s0+=61.0;
     s1+=454.0;
    }
   }
  } else {
   if(i39<-0.00013935565948486328){
    if(i23<0.9998469352722168){
     s0+=296.0;
     s1+=5.0;
    } else {
     s1+=27.0;
    }
   } else {
    if(i0<0.09513428807258606){
     s0+=134.0;
     s1+=130.0;
    } else {
     s0+=103.0;
     s1+=1434.0;
    }
   }
  }
 }
} else {
 if(i34<0.0002014274796238169){
  if(i0<0.07363888621330261){
   if(i76<9.630592785470071e-07){
    if(i54<0.019189998507499695){
     s0+=164.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   } else {
    if(i69<0.9974055886268616){
     s0+=23.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i42<0.997718870639801){
   s0+=28.0;
  } else {
   if(i1<0.06765207648277283){
    if(i61<0.0029429197311401367){
     s0+=119.0;
     s1+=609.0;
    } else {
     s0+=86.0;
     s1+=2.0;
    }
   } else {
    if(i14<3.5643577575683594e-05){
     s0+=113.0;
     s1+=1268.0;
    } else {
     s0+=55.0;
     s1+=9868.0;
    }
   }
  }
 }
}
if(i2<0.07771864533424377){
 if(i15<1.8775463104248047e-05){
  if(i38<0.00029455850017257035){
   if(i43<0.0003177562903147191){
    s0+=35585.0;
   } else {
    if(i65<-0.0005118733970448375){
     s0+=200.0;
     s1+=1.0;
    } else {
     s0+=537.0;
    }
   }
  } else {
   if(i34<0.00028490478871390224){
    if(i8<1.5914440155029297e-05){
     s0+=17937.0;
     s1+=164.0;
    } else {
     s0+=473.0;
     s1+=140.0;
    }
   } else {
    if(i31<1.0991880893707275){
     s0+=1818.0;
     s1+=1346.0;
    } else {
     s0+=11279.0;
     s1+=420.0;
    }
   }
  }
 } else {
  if(i10<1.0010008811950684){
   if(i50<0.01314854808151722){
    if(i5<1.0012471675872803){
     s0+=999.0;
     s1+=29.0;
    } else {
     s0+=182.0;
     s1+=75.0;
    }
   } else {
    if(i73<0.9048173427581787){
     s0+=9.0;
    } else {
     s0+=36.0;
     s1+=147.0;
    }
   }
  } else {
   if(i34<0.00020907088764943182){
    if(i14<0.001223444938659668){
     s0+=64.0;
     s1+=3.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i63<0.0024152398109436035){
     s0+=28.0;
     s1+=956.0;
    } else {
     s0+=37.0;
     s1+=15.0;
    }
   }
  }
 }
} else {
 if(i6<-1.3546939044317696e-05){
  if(i0<0.11742603778839111){
   if(i40<0.04866284132003784){
    if(i48<0.005013585090637207){
     s0+=43.0;
     s1+=1525.0;
    } else {
     s0+=53.0;
     s1+=12.0;
    }
   } else {
    if(i70<-0.021640237420797348){
     s0+=217.0;
     s1+=7.0;
    } else {
     s0+=232.0;
     s1+=185.0;
    }
   }
  } else {
   if(i6<-4.153069312451407e-05){
    if(i18<0.9954317808151245){
     s0+=14.0;
    } else {
     s0+=73.0;
     s1+=11087.0;
    }
   } else {
    if(i52<0.052900731563568115){
     s0+=41.0;
     s1+=609.0;
    } else {
     s0+=115.0;
     s1+=95.0;
    }
   }
  }
 } else {
  if(i42<0.9992896318435669){
   s0+=424.0;
  } else {
   if(i27<1.0037472248077393){
    if(i39<4.455447196960449e-05){
     s0+=14.0;
     s1+=196.0;
    } else {
     s0+=33.0;
     s1+=14.0;
    }
   } else {
    if(i41<3.32041599904187e-05){
     s0+=423.0;
     s1+=36.0;
    } else {
     s0+=187.0;
     s1+=131.0;
    }
   }
  }
 }
}
if(i13<1.052894115447998){
 if(i3<0.0006017386913299561){
  if(i62<1.013189673423767){
   if(i28<0.00029289128724485636){
    if(i47<0.00028928479878231883){
     s0+=44966.0;
     s1+=64.0;
    } else {
     s0+=9628.0;
     s1+=465.0;
    }
   } else {
    if(i10<0.9943384528160095){
     s0+=5818.0;
     s1+=84.0;
    } else {
     s0+=2917.0;
     s1+=930.0;
    }
   }
  } else {
   if(i25<0.026264749467372894){
    if(i3<0.00013706088066101074){
     s0+=459.0;
     s1+=46.0;
    } else {
     s0+=44.0;
     s1+=93.0;
    }
   } else {
    if(i38<0.003142354544252157){
     s0+=18.0;
     s1+=98.0;
    } else {
     s0+=25.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i1<0.05607566237449646){
   if(i74<-1.3083219528198242e-05){
    if(i37<0.0156883355230093){
     s1+=59.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i25<0.027393054217100143){
     s0+=136.0;
     s1+=4.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i17<0.0019337437115609646){
    if(i77<1.0011835098266602){
     s1+=4.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i45<-9.688139471109025e-06){
     s1+=288.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
} else {
 if(i8<3.165006637573242e-05){
  if(i25<0.029030952602624893){
   if(i0<0.08394742012023926){
    if(i31<1.103413462638855){
     s0+=1026.0;
     s1+=370.0;
    } else {
     s0+=3523.0;
     s1+=147.0;
    }
   } else {
    if(i53<0.05731019377708435){
     s0+=96.0;
     s1+=623.0;
    } else {
     s0+=879.0;
     s1+=316.0;
    }
   }
  } else {
   if(i5<0.9963998794555664){
    if(i66<2.5308818294433877e-05){
     s0+=429.0;
     s1+=4.0;
    } else {
     s0+=114.0;
     s1+=110.0;
    }
   } else {
    if(i37<0.017761027440428734){
     s0+=274.0;
     s1+=412.0;
    } else {
     s0+=156.0;
     s1+=1590.0;
    }
   }
  }
 } else {
  if(i3<0.0009459257125854492){
   if(i37<0.009030912071466446){
    if(i6<-4.382003680802882e-05){
     s0+=87.0;
     s1+=151.0;
    } else {
     s0+=112.0;
     s1+=12.0;
    }
   } else {
    if(i68<0.00015738382353447378){
     s0+=28.0;
     s1+=8.0;
    } else {
     s0+=133.0;
     s1+=1572.0;
    }
   }
  } else {
   if(i2<0.008992880582809448){
    if(i10<1.002800703048706){
     s0+=18.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=30.0;
    }
   } else {
    if(i14<3.635883331298828e-05){
     s0+=72.0;
     s1+=792.0;
    } else {
     s0+=5.0;
     s1+=8994.0;
    }
   }
  }
 }
}
if(i6<-6.216749898158014e-05){
 if(i12<0.9803998470306396){
  if(i59<-0.0004784336779266596){
   if(i42<1.0002367496490479){
    if(i48<-0.008169442415237427){
     s0+=8.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=74.0;
   }
  } else {
   if(i0<0.11286309361457825){
    if(i50<0.01985732465982437){
     s0+=915.0;
     s1+=3.0;
    } else {
     s0+=40.0;
     s1+=24.0;
    }
   } else {
    s1+=51.0;
   }
  }
 } else {
  if(i30<1.060826301574707){
   s0+=173.0;
  } else {
   if(i12<0.9986355304718018){
    if(i25<0.03793621063232422){
     s0+=275.0;
     s1+=286.0;
    } else {
     s0+=40.0;
     s1+=1184.0;
    }
   } else {
    if(i23<0.9977260828018188){
     s0+=41.0;
     s1+=438.0;
    } else {
     s0+=41.0;
     s1+=10267.0;
    }
   }
  }
 }
} else {
 if(i16<1.0075244903564453){
  if(i47<0.00037443829933181405){
   if(i54<0.04837237671017647){
    if(i57<0.0006805825978517532){
     s0+=48214.0;
     s1+=100.0;
    } else {
     s0+=476.0;
     s1+=64.0;
    }
   } else {
    if(i45<-5.278649496176513e-06){
     s1+=7.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i13<1.0398929119110107){
    if(i1<0.07737132906913757){
     s0+=11705.0;
     s1+=430.0;
    } else {
     s0+=146.0;
     s1+=173.0;
    }
   } else {
    if(i2<0.06581422686576843){
     s0+=4845.0;
     s1+=942.0;
    } else {
     s0+=917.0;
     s1+=1276.0;
    }
   }
  }
 } else {
  if(i38<0.0011846586130559444){
   if(i56<0.0012895800173282623){
    if(i17<0.0014470630558207631){
     s0+=511.0;
     s1+=86.0;
    } else {
     s0+=86.0;
     s1+=400.0;
    }
   } else {
    if(i68<0.0012308054137974977){
     s1+=519.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i37<0.022385288029909134){
    if(i2<0.16526004672050476){
     s0+=1914.0;
     s1+=76.0;
    } else {
     s0+=102.0;
     s1+=178.0;
    }
   } else {
    if(i6<-1.82872772711562e-05){
     s0+=136.0;
     s1+=573.0;
    } else {
     s0+=413.0;
     s1+=94.0;
    }
   }
  }
 }
}
if(i12<1.0043745040893555){
 if(i0<0.08341556787490845){
  if(i57<0.0007540961960330606){
   if(i2<0.0603657066822052){
    if(i47<0.0002896409132517874){
     s0+=44295.0;
     s1+=23.0;
    } else {
     s0+=12853.0;
     s1+=422.0;
    }
   } else {
    if(i47<0.0002892201009672135){
     s0+=1821.0;
     s1+=3.0;
    } else {
     s0+=1644.0;
     s1+=371.0;
    }
   }
  } else {
   if(i47<0.0018345084972679615){
    if(i13<1.038783073425293){
     s0+=1290.0;
     s1+=342.0;
    } else {
     s0+=227.0;
     s1+=488.0;
    }
   } else {
    if(i6<-0.00011720439215423539){
     s0+=115.0;
     s1+=165.0;
    } else {
     s0+=5608.0;
     s1+=421.0;
    }
   }
  }
 } else {
  if(i6<-8.244486707553733e-06){
   if(i0<0.12466597557067871){
    if(i53<0.05720791220664978){
     s0+=62.0;
     s1+=985.0;
    } else {
     s0+=510.0;
     s1+=200.0;
    }
   } else {
    if(i17<0.0031079398468136787){
     s0+=114.0;
     s1+=235.0;
    } else {
     s0+=61.0;
     s1+=2488.0;
    }
   }
  } else {
   if(i3<-0.0008764564990997314){
    s0+=512.0;
   } else {
    if(i25<0.028940502554178238){
     s0+=445.0;
     s1+=108.0;
    } else {
     s0+=73.0;
     s1+=137.0;
    }
   }
  }
 }
} else {
 if(i8<3.236532211303711e-05){
  if(i38<0.0012167308013886213){
   if(i45<-2.695544708330999e-06){
    if(i6<-2.8853995900135487e-05){
     s0+=2.0;
     s1+=486.0;
    } else {
     s0+=31.0;
     s1+=17.0;
    }
   } else {
    if(i1<0.10988360643386841){
     s0+=41.0;
     s1+=1.0;
    } else {
     s0+=1.0;
     s1+=6.0;
    }
   }
  } else {
   if(i16<1.016484260559082){
    if(i17<0.005395989865064621){
     s0+=691.0;
     s1+=29.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i2<0.10207474231719971){
     s0+=229.0;
     s1+=24.0;
    } else {
     s0+=68.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i1<0.06268501281738281){
   if(i3<0.000941932201385498){
    if(i17<0.0028458470478653908){
     s0+=148.0;
     s1+=21.0;
    } else {
     s0+=2.0;
     s1+=82.0;
    }
   } else {
    if(i69<1.0023174285888672){
     s1+=162.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i47<0.0001950431615114212){
    s0+=4.0;
   } else {
    if(i5<1.0040555000305176){
     s0+=64.0;
     s1+=901.0;
    } else {
     s0+=5.0;
     s1+=8729.0;
    }
   }
  }
 }
}
if(i0<0.08468392491340637){
 if(i11<0.0005242228507995605){
  if(i2<0.06305783987045288){
   if(i44<0.0003544281644281){
    if(i30<1.0596027374267578){
     s0+=37166.0;
    } else {
     s0+=1901.0;
     s1+=45.0;
    }
   } else {
    if(i38<0.0009846901521086693){
     s0+=5111.0;
     s1+=1142.0;
    } else {
     s0+=20962.0;
     s1+=253.0;
    }
   }
  } else {
   if(i52<0.014841407537460327){
    if(i65<-0.003955311141908169){
     s0+=179.0;
     s1+=11.0;
    } else {
     s0+=81.0;
     s1+=381.0;
    }
   } else {
    if(i20<1.0452215671539307){
     s0+=1702.0;
     s1+=20.0;
    } else {
     s0+=946.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i5<1.0023314952850342){
   if(i63<-0.0009908676147460938){
    if(i60<-0.0014929473400115967){
     s0+=47.0;
     s1+=114.0;
    } else {
     s0+=200.0;
     s1+=29.0;
    }
   } else {
    if(i60<-0.0031235218048095703){
     s0+=11.0;
     s1+=11.0;
    } else {
     s0+=615.0;
     s1+=34.0;
    }
   }
  } else {
   if(i55<0.009289354085922241){
    if(i68<0.0003722397959791124){
     s0+=59.0;
     s1+=133.0;
    } else {
     s0+=26.0;
     s1+=732.0;
    }
   } else {
    if(i14<0.00019502639770507812){
     s0+=44.0;
     s1+=1.0;
    } else {
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i6<-1.4671928511234e-05){
  if(i11<-0.00043773651123046875){
   if(i66<4.4552740291692317e-05){
    s0+=59.0;
   } else {
    if(i39<-0.00012597441673278809){
     s0+=11.0;
    } else {
     s0+=2.0;
     s1+=5.0;
    }
   }
  } else {
   if(i8<5.716085433959961e-05){
    if(i1<0.11741328239440918){
     s0+=441.0;
     s1+=1117.0;
    } else {
     s0+=168.0;
     s1+=2879.0;
    }
   } else {
    if(i37<0.01811710000038147){
     s0+=40.0;
     s1+=1389.0;
    } else {
     s0+=1.0;
     s1+=8306.0;
    }
   }
  }
 } else {
  if(i5<0.996038556098938){
   if(i56<0.004822544753551483){
    if(i18<0.9985276460647583){
     s0+=586.0;
    } else {
     s0+=32.0;
     s1+=7.0;
    }
   } else {
    s1+=3.0;
   }
  } else {
   if(i24<1.0386853218078613){
    if(i52<0.03941994905471802){
     s0+=6.0;
     s1+=179.0;
    } else {
     s0+=24.0;
     s1+=27.0;
    }
   } else {
    if(i33<0.0018375436775386333){
     s0+=471.0;
     s1+=65.0;
    } else {
     s0+=112.0;
     s1+=142.0;
    }
   }
  }
 }
}
if(i6<-7.899619959061965e-05){
 if(i14<-0.003567308187484741){
  if(i4<0.08427688479423523){
   if(i56<0.006460332777351141){
    if(i50<0.058459535241127014){
     s0+=439.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i20<1.3872315883636475){
     s1+=20.0;
    } else {
     s0+=4.0;
    }
   }
  } else {
   if(i56<0.00486384704709053){
    s0+=4.0;
   } else {
    s1+=27.0;
   }
  }
 } else {
  if(i34<0.00022933589934837073){
   if(i14<0.0005233287811279297){
    s0+=87.0;
   } else {
    s1+=17.0;
   }
  } else {
   if(i0<0.07287278771400452){
    if(i51<0.0015951693058013916){
     s0+=72.0;
     s1+=373.0;
    } else {
     s0+=141.0;
     s1+=17.0;
    }
   } else {
    if(i45<-0.00015623890794813633){
     s0+=17.0;
    } else {
     s0+=93.0;
     s1+=10572.0;
    }
   }
  }
 }
} else {
 if(i5<1.0024797916412354){
  if(i0<0.08237043023109436){
   if(i50<0.007479788735508919){
    if(i25<0.013845766894519329){
     s0+=53676.0;
     s1+=402.0;
    } else {
     s0+=10976.0;
     s1+=836.0;
    }
   } else {
    if(i44<0.002213270403444767){
     s0+=1321.0;
     s1+=544.0;
    } else {
     s0+=1941.0;
     s1+=191.0;
    }
   }
  } else {
   if(i40<0.04629939794540405){
    if(i1<0.08244869112968445){
     s0+=322.0;
     s1+=42.0;
    } else {
     s0+=161.0;
     s1+=1973.0;
    }
   } else {
    if(i1<0.11304759979248047){
     s0+=896.0;
     s1+=147.0;
    } else {
     s0+=676.0;
     s1+=798.0;
    }
   }
  }
 } else {
  if(i33<0.0015536959981545806){
   if(i38<0.00030838686507195234){
    s0+=2.0;
   } else {
    s1+=809.0;
   }
  } else {
   if(i18<1.0019770860671997){
    if(i38<0.005041278898715973){
     s0+=179.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=68.0;
    }
   } else {
    if(i3<0.001006484031677246){
     s0+=51.0;
     s1+=74.0;
    } else {
     s0+=8.0;
     s1+=254.0;
    }
   }
  }
 }
}
if(i6<-7.899857155280188e-05){
 if(i10<0.9956090450286865){
  if(i0<0.08571088314056396){
   if(i60<-0.006991088390350342){
    if(i57<0.016010355204343796){
     s1+=27.0;
    } else {
     s0+=4.0;
     s1+=5.0;
    }
   } else {
    if(i21<1.0034040212631226){
     s0+=575.0;
     s1+=18.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   }
  } else {
   if(i75<0.0003302488476037979){
    if(i20<1.125774621963501){
     s0+=25.0;
     s1+=9.0;
    } else {
     s1+=475.0;
    }
   } else {
    s0+=20.0;
   }
  }
 } else {
  if(i4<0.006517976522445679){
   if(i60<-0.005878746509552002){
    if(i45<-3.262187237851322e-05){
     s1+=49.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   } else {
    if(i74<-0.0020908713340759277){
     s0+=97.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i20<1.0357842445373535){
    s0+=13.0;
   } else {
    if(i0<0.06264051795005798){
     s0+=57.0;
     s1+=210.0;
    } else {
     s0+=85.0;
     s1+=10204.0;
    }
   }
  }
 }
} else {
 if(i0<0.08355346322059631){
  if(i8<4.190206527709961e-05){
   if(i47<0.00030048866756260395){
    if(i13<1.0487183332443237){
     s0+=46147.0;
     s1+=59.0;
    } else {
     s0+=489.0;
     s1+=72.0;
    }
   } else {
    if(i14<-0.001276940107345581){
     s0+=12097.0;
     s1+=237.0;
    } else {
     s0+=9290.0;
     s1+=1700.0;
    }
   }
  } else {
   if(i75<0.0001360356982331723){
    if(i56<0.0009321966208517551){
     s0+=56.0;
     s1+=3.0;
    } else {
     s0+=30.0;
     s1+=444.0;
    }
   } else {
    if(i62<0.9855339527130127){
     s0+=3.0;
     s1+=17.0;
    } else {
     s0+=145.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i53<0.05790707468986511){
   if(i5<0.9944701194763184){
    if(i6<-2.779880742309615e-05){
     s0+=17.0;
     s1+=8.0;
    } else {
     s0+=298.0;
    }
   } else {
    if(i11<-0.00041732192039489746){
     s0+=12.0;
    } else {
     s0+=100.0;
     s1+=2293.0;
    }
   }
  } else {
   if(i2<0.11941179633140564){
    if(i47<0.0014021595707163215){
     s0+=225.0;
     s1+=230.0;
    } else {
     s0+=715.0;
     s1+=42.0;
    }
   } else {
    if(i40<0.08784371614456177){
     s0+=46.0;
     s1+=728.0;
    } else {
     s0+=504.0;
     s1+=336.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i54<0.030405839905142784){
  if(i14<0.0006212592124938965){
   if(i1<0.08376216888427734){
    if(i27<0.9715127944946289){
     s0+=358.0;
     s1+=167.0;
    } else {
     s0+=57917.0;
     s1+=622.0;
    }
   } else {
    if(i73<1.0029470920562744){
     s0+=459.0;
     s1+=197.0;
    } else {
     s0+=77.0;
     s1+=294.0;
    }
   }
  } else {
   if(i37<0.010520599782466888){
    if(i7<1.0083938837051392){
     s0+=723.0;
     s1+=12.0;
    } else {
     s0+=29.0;
     s1+=166.0;
    }
   } else {
    if(i1<0.05860438942909241){
     s0+=47.0;
     s1+=2.0;
    } else {
     s0+=4.0;
     s1+=337.0;
    }
   }
  }
 } else {
  if(i32<0.06008902192115784){
   if(i5<0.9980106353759766){
    if(i13<1.0401138067245483){
     s0+=5290.0;
     s1+=112.0;
    } else {
     s0+=1578.0;
     s1+=283.0;
    }
   } else {
    if(i4<0.05803883075714111){
     s0+=2444.0;
     s1+=901.0;
    } else {
     s0+=158.0;
     s1+=683.0;
    }
   }
  } else {
   if(i11<-0.0004127919673919678){
    if(i45<-1.0808560546138324e-05){
     s0+=26.0;
     s1+=9.0;
    } else {
     s0+=305.0;
    }
   } else {
    if(i6<-1.381049514748156e-05){
     s0+=434.0;
     s1+=1555.0;
    } else {
     s0+=584.0;
     s1+=171.0;
    }
   }
  }
 }
} else {
 if(i43<0.0003596474416553974){
  s0+=170.0;
 } else {
  if(i5<1.0041769742965698){
   if(i16<1.0363199710845947){
    if(i69<1.0030925273895264){
     s0+=296.0;
     s1+=1422.0;
    } else {
     s0+=63.0;
     s1+=21.0;
    }
   } else {
    if(i25<0.005015555769205093){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=2.0;
     s1+=485.0;
    }
   }
  } else {
   if(i22<-0.00044476985931396484){
    s0+=8.0;
   } else {
    if(i12<1.0063384771347046){
     s0+=42.0;
     s1+=1059.0;
    } else {
     s1+=8735.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i1<0.08023446798324585){
  if(i46<0.0016216826625168324){
   if(i72<0.018743865191936493){
    if(i5<1.0025041103363037){
     s0+=50374.0;
     s1+=149.0;
    } else {
     s0+=43.0;
     s1+=72.0;
    }
   } else {
    if(i41<8.947929745772853e-05){
     s0+=3953.0;
     s1+=499.0;
    } else {
     s0+=6031.0;
     s1+=7.0;
    }
   }
  } else {
   if(i34<0.002361610997468233){
    if(i15<2.0563602447509766e-05){
     s0+=2331.0;
     s1+=600.0;
    } else {
     s0+=24.0;
     s1+=203.0;
    }
   } else {
    if(i15<1.6987323760986328e-05){
     s0+=2236.0;
     s1+=29.0;
    } else {
     s0+=206.0;
     s1+=94.0;
    }
   }
  }
 } else {
  if(i5<0.9956707954406738){
   if(i7<0.9830317497253418){
    if(i52<0.036251723766326904){
     s1+=9.0;
    } else {
     s0+=2.0;
    }
   } else {
    if(i54<0.10447733104228973){
     s0+=186.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i40<0.046644508838653564){
    if(i3<-0.0008890032768249512){
     s0+=6.0;
    } else {
     s0+=9.0;
     s1+=918.0;
    }
   } else {
    if(i30<1.0581717491149902){
     s0+=48.0;
     s1+=1.0;
    } else {
     s0+=65.0;
     s1+=151.0;
    }
   }
  }
 }
} else {
 if(i17<0.004594351164996624){
  if(i7<1.0107828378677368){
   if(i10<1.0014867782592773){
    if(i33<0.00044935394544154406){
     s0+=1267.0;
     s1+=10.0;
    } else {
     s0+=2841.0;
     s1+=694.0;
    }
   } else {
    if(i45<-1.2853583029936999e-05){
     s0+=33.0;
     s1+=275.0;
    } else {
     s0+=256.0;
     s1+=123.0;
    }
   }
  } else {
   if(i47<0.0014159871498122811){
    if(i0<0.05672696232795715){
     s0+=18.0;
     s1+=24.0;
    } else {
     s0+=6.0;
     s1+=837.0;
    }
   } else {
    if(i39<2.79843807220459e-05){
     s0+=104.0;
     s1+=261.0;
    } else {
     s0+=479.0;
     s1+=223.0;
    }
   }
  }
 } else {
  if(i59<-0.00022809959773439914){
   if(i22<8.940696716308594e-08){
    if(i23<0.9953886270523071){
     s0+=175.0;
     s1+=119.0;
    } else {
     s0+=94.0;
     s1+=1641.0;
    }
   } else {
    if(i11<-0.0004311501979827881){
     s0+=41.0;
    } else {
     s0+=1.0;
     s1+=8440.0;
    }
   }
  } else {
   if(i0<0.1189998984336853){
    if(i71<0.00015316077042371035){
     s0+=32.0;
     s1+=349.0;
    } else {
     s0+=518.0;
     s1+=243.0;
    }
   } else {
    if(i45<-5.604052603302989e-06){
     s0+=12.0;
     s1+=880.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
}
if(i0<0.0844140350818634){
 if(i18<1.001828908920288){
  if(i60<-0.0024979710578918457){
   if(i14<0.0008598566055297852){
    if(i77<1.0003855228424072){
     s0+=1687.0;
     s1+=215.0;
    } else {
     s0+=419.0;
     s1+=252.0;
    }
   } else {
    if(i59<-0.00048393820179626346){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=78.0;
    }
   }
  } else {
   if(i13<1.04337739944458){
    if(i61<-0.0020244717597961426){
     s0+=4023.0;
     s1+=382.0;
    } else {
     s0+=55745.0;
     s1+=243.0;
    }
   } else {
    if(i5<1.0009032487869263){
     s0+=5874.0;
     s1+=615.0;
    } else {
     s0+=644.0;
     s1+=310.0;
    }
   }
  }
 } else {
  if(i55<0.004997670650482178){
   if(i38<0.0015731349121779203){
    if(i17<0.0012219907948747277){
     s0+=12.0;
    } else {
     s1+=488.0;
    }
   } else {
    if(i8<1.5616416931152344e-05){
     s0+=181.0;
     s1+=24.0;
    } else {
     s0+=145.0;
     s1+=432.0;
    }
   }
  } else {
   if(i36<1.2413508892059326){
    if(i31<1.164912462234497){
     s1+=21.0;
    } else {
     s0+=16.0;
    }
   } else {
    if(i38<0.002114605624228716){
     s1+=4.0;
    } else {
     s0+=379.0;
     s1+=9.0;
    }
   }
  }
 }
} else {
 if(i6<-1.379947025270667e-05){
  if(i14<0.0007004141807556152){
   if(i69<1.0014369487762451){
    if(i18<0.9981785416603088){
     s0+=69.0;
     s1+=12.0;
    } else {
     s0+=310.0;
     s1+=3387.0;
    }
   } else {
    if(i68<0.001596928806975484){
     s0+=306.0;
     s1+=268.0;
    } else {
     s0+=6.0;
     s1+=515.0;
    }
   }
  } else {
   if(i6<-4.286456896807067e-05){
    if(i11<-0.0004023313522338867){
     s0+=1.0;
    } else {
     s1+=9360.0;
    }
   } else {
    if(i20<1.1053385734558105){
     s1+=105.0;
    } else {
     s0+=49.0;
     s1+=46.0;
    }
   }
  }
 } else {
  if(i35<1.255998969078064){
   if(i33<0.0005563913146033883){
    if(i45<-5.996876097924542e-06){
     s1+=26.0;
    } else {
     s0+=585.0;
     s1+=16.0;
    }
   } else {
    if(i55<0.017179101705551147){
     s0+=28.0;
     s1+=235.0;
    } else {
     s0+=107.0;
     s1+=76.0;
    }
   }
  } else {
   if(i26<0.9521899223327637){
    if(i7<0.9838703870773315){
     s0+=15.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   } else {
    if(i71<0.0011064838618040085){
     s0+=490.0;
    } else {
     s1+=11.0;
    }
   }
  }
 }
}
if(i37<0.03596540912985802){
 if(i3<0.0005640387535095215){
  if(i20<1.0495078563690186){
   if(i20<1.042891263961792){
    if(i55<-0.00612872838973999){
     s0+=663.0;
     s1+=48.0;
    } else {
     s0+=49131.0;
     s1+=135.0;
    }
   } else {
    if(i48<-0.0014450252056121826){
     s0+=203.0;
     s1+=94.0;
    } else {
     s0+=4082.0;
     s1+=198.0;
    }
   }
  } else {
   if(i35<1.253311276435852){
    if(i71<-7.265005842782557e-05){
     s0+=140.0;
     s1+=764.0;
    } else {
     s0+=5460.0;
     s1+=2584.0;
    }
   } else {
    if(i20<1.0819685459136963){
     s0+=2599.0;
     s1+=24.0;
    } else {
     s0+=5524.0;
     s1+=655.0;
    }
   }
  }
 } else {
  if(i20<1.0415534973144531){
   if(i71<0.000161809497512877){
    s0+=127.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i23<1.0056058168411255){
    if(i14<0.0014311671257019043){
     s0+=351.0;
     s1+=879.0;
    } else {
     s1+=1009.0;
    }
   } else {
    if(i33<0.010312201455235481){
     s0+=13.0;
     s1+=2580.0;
    } else {
     s0+=58.0;
     s1+=155.0;
    }
   }
  }
 }
} else {
 if(i0<0.07979464530944824){
  if(i60<-0.003281831741333008){
   if(i26<0.8456501364707947){
    if(i0<0.005807816982269287){
     s0+=41.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i18<0.9986655116081238){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=167.0;
    }
   }
  } else {
   if(i15<2.6166439056396484e-05){
    if(i12<0.9914231896400452){
     s0+=2618.0;
     s1+=7.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i33<0.0016355743864551187){
   s0+=32.0;
  } else {
   if(i3<-0.0017756819725036621){
    s0+=13.0;
   } else {
    if(i12<0.974206268787384){
     s0+=10.0;
     s1+=63.0;
    } else {
     s0+=16.0;
     s1+=7759.0;
    }
   }
  }
 }
}
if(i0<0.08300337195396423){
 if(i8<4.190206527709961e-05){
  if(i72<0.018661119043827057){
   if(i19<1.007920265197754){
    if(i27<0.9656402468681335){
     s0+=39.0;
     s1+=56.0;
    } else {
     s0+=50916.0;
     s1+=231.0;
    }
   } else {
    if(i12<1.0034146308898926){
     s0+=298.0;
     s1+=29.0;
    } else {
     s0+=35.0;
     s1+=169.0;
    }
   }
  } else {
   if(i35<1.100754976272583){
    if(i31<1.0670123100280762){
     s0+=2632.0;
     s1+=37.0;
    } else {
     s0+=1201.0;
     s1+=1069.0;
    }
   } else {
    if(i1<0.06644606590270996){
     s0+=12557.0;
     s1+=369.0;
    } else {
     s0+=910.0;
     s1+=199.0;
    }
   }
  }
 } else {
  if(i42<0.9994409084320068){
   s0+=228.0;
  } else {
   if(i45<-1.4116389138507657e-05){
    if(i48<0.0022560954093933105){
     s0+=96.0;
     s1+=880.0;
    } else {
     s0+=56.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.0005245248321443796){
     s0+=120.0;
     s1+=3.0;
    } else {
     s1+=20.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985071420669556){
  if(i6<-3.6928362533217296e-05){
   if(i22<-1.5616416931152344e-05){
    if(i19<0.9706290364265442){
     s0+=6.0;
     s1+=1.0;
    } else {
     s1+=21.0;
    }
   } else {
    s0+=27.0;
   }
  } else {
   if(i18<0.9984630346298218){
    if(i11<-0.0006435811519622803){
     s0+=521.0;
    } else {
     s0+=165.0;
     s1+=1.0;
    }
   } else {
    if(i38<0.007309410255402327){
     s0+=2.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.001682774629443884){
   if(i6<-4.9311405746266246e-05){
    s1+=137.0;
   } else {
    if(i25<0.02793857641518116){
     s0+=515.0;
     s1+=67.0;
    } else {
     s0+=92.0;
     s1+=115.0;
    }
   }
  } else {
   if(i52<0.03616154193878174){
    if(i0<0.09098100662231445){
     s0+=135.0;
     s1+=472.0;
    } else {
     s0+=132.0;
     s1+=10326.0;
    }
   } else {
    if(i6<-7.783971523167565e-05){
     s0+=41.0;
     s1+=2266.0;
    } else {
     s0+=417.0;
     s1+=640.0;
    }
   }
  }
 }
}
if(i2<0.07769986987113953){
 if(i18<1.0018283128738403){
  if(i2<0.06076240539550781){
   if(i20<1.0467959642410278){
    if(i28<0.00028030475368723273){
     s0+=47626.0;
     s1+=90.0;
    } else {
     s0+=4886.0;
     s1+=129.0;
    }
   } else {
    if(i14<-0.0016170740127563477){
     s0+=4132.0;
     s1+=87.0;
    } else {
     s0+=8222.0;
     s1+=1049.0;
    }
   }
  } else {
   if(i13<1.0401484966278076){
    if(i40<0.02881622314453125){
     s0+=98.0;
     s1+=62.0;
    } else {
     s0+=2402.0;
     s1+=50.0;
    }
   } else {
    if(i6<-1.403770875185728e-05){
     s0+=467.0;
     s1+=502.0;
    } else {
     s0+=765.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i69<1.0022251605987549){
   if(i41<0.00012750504538416862){
    if(i28<0.00012227505794726312){
     s0+=17.0;
    } else {
     s0+=30.0;
     s1+=817.0;
    }
   } else {
    if(i55<-0.009604811668395996){
     s0+=42.0;
     s1+=147.0;
    } else {
     s0+=154.0;
     s1+=3.0;
    }
   }
  } else {
   if(i3<0.00035458803176879883){
    if(i51<-0.0713924765586853){
     s0+=1.0;
     s1+=7.0;
    } else {
     s0+=423.0;
     s1+=4.0;
    }
   } else {
    if(i9<1.0575402975082397){
     s0+=16.0;
     s1+=47.0;
    } else {
     s0+=71.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i5<1.0015718936920166){
  if(i42<0.998940110206604){
   if(i72<0.5100618600845337){
    if(i13<1.0416667461395264){
     s0+=103.0;
     s1+=8.0;
    } else {
     s0+=336.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i6<-1.38188770506531e-05){
    if(i40<0.04810252785682678){
     s0+=57.0;
     s1+=1706.0;
    } else {
     s0+=460.0;
     s1+=904.0;
    }
   } else {
    if(i32<0.06439712643623352){
     s0+=34.0;
     s1+=162.0;
    } else {
     s0+=681.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i25<0.023024821653962135){
   if(i22<9.775161743164062e-05){
    if(i24<1.0568180084228516){
     s0+=9.0;
     s1+=157.0;
    } else {
     s0+=103.0;
     s1+=74.0;
    }
   } else {
    if(i12<1.007554054260254){
     s0+=23.0;
     s1+=73.0;
    } else {
     s0+=3.0;
     s1+=1886.0;
    }
   }
  } else {
   if(i17<0.006342767737805843){
    if(i70<-0.03355295956134796){
     s0+=29.0;
     s1+=34.0;
    } else {
     s0+=5.0;
     s1+=759.0;
    }
   } else {
    if(i2<0.09600484371185303){
     s0+=8.0;
     s1+=160.0;
    } else {
     s1+=7838.0;
    }
   }
  }
 }
}
if(i2<0.0783216655254364){
 if(i50<0.008471273817121983){
  if(i13<1.0452277660369873){
   if(i47<0.0002872062032110989){
    if(i45<-1.6944075468927622e-05){
     s0+=182.0;
     s1+=15.0;
    } else {
     s0+=45009.0;
     s1+=27.0;
    }
   } else {
    if(i33<0.0018186131492257118){
     s0+=6086.0;
     s1+=703.0;
    } else {
     s0+=9891.0;
     s1+=22.0;
    }
   }
  } else {
   if(i8<4.166364669799805e-05){
    if(i31<1.103413462638855){
     s0+=1567.0;
     s1+=654.0;
    } else {
     s0+=3609.0;
     s1+=123.0;
    }
   } else {
    if(i38<0.0025584311224520206){
     s1+=411.0;
    } else {
     s0+=167.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i6<-3.564046710380353e-05){
   if(i14<-0.002400904893875122){
    if(i0<0.016782104969024658){
     s0+=181.0;
     s1+=8.0;
    } else {
     s0+=28.0;
     s1+=74.0;
    }
   } else {
    if(i77<0.9974870085716248){
     s0+=32.0;
     s1+=14.0;
    } else {
     s0+=115.0;
     s1+=764.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i11<-0.00015845894813537598){
     s0+=478.0;
     s1+=19.0;
    } else {
     s0+=342.0;
     s1+=282.0;
    }
   } else {
    if(i3<0.00048339366912841797){
     s0+=1582.0;
     s1+=96.0;
    } else {
     s0+=1.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i6<-1.9627501387731172e-05){
  if(i2<0.12999412417411804){
   if(i40<0.05430382490158081){
    if(i55<0.01797744631767273){
     s0+=44.0;
     s1+=2226.0;
    } else {
     s0+=68.0;
     s1+=29.0;
    }
   } else {
    if(i31<1.1480928659439087){
     s0+=24.0;
     s1+=178.0;
    } else {
     s0+=363.0;
     s1+=54.0;
    }
   }
  } else {
   if(i15<0.0003629326820373535){
    if(i33<0.0005876353243365884){
     s0+=14.0;
     s1+=6.0;
    } else {
     s0+=89.0;
     s1+=10804.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i20<1.2552803754806519){
   if(i48<-0.00035497546195983887){
    if(i56<0.0012750240275636315){
     s0+=26.0;
     s1+=154.0;
    } else {
     s0+=22.0;
     s1+=24.0;
    }
   } else {
    if(i52<0.031535208225250244){
     s0+=209.0;
     s1+=264.0;
    } else {
     s0+=659.0;
     s1+=138.0;
    }
   }
  } else {
   s0+=298.0;
  }
 }
}
if(i5<1.0024573802947998){
 if(i28<0.0003346849698573351){
  if(i16<1.0116113424301147){
   if(i20<1.0494996309280396){
    if(i63<-0.0015323162078857422){
     s0+=304.0;
     s1+=72.0;
    } else {
     s0+=52144.0;
     s1+=139.0;
    }
   } else {
    if(i0<0.0779096782207489){
     s0+=5215.0;
     s1+=370.0;
    } else {
     s0+=85.0;
     s1+=226.0;
    }
   }
  } else {
   if(i1<0.06716951727867126){
    if(i38<0.0004574204795062542){
     s0+=6.0;
     s1+=22.0;
    } else {
     s0+=145.0;
     s1+=7.0;
    }
   } else {
    if(i35<1.24208402633667){
     s0+=4.0;
     s1+=199.0;
    } else {
     s0+=22.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i1<0.08125200867652893){
   if(i12<0.9897269010543823){
    if(i1<0.0683012306690216){
     s0+=6257.0;
     s1+=167.0;
    } else {
     s0+=350.0;
     s1+=53.0;
    }
   } else {
    if(i7<0.9904068112373352){
     s0+=384.0;
     s1+=364.0;
    } else {
     s0+=4189.0;
     s1+=755.0;
    }
   }
  } else {
   if(i38<0.006181435659527779){
    if(i34<0.0015458054840564728){
     s0+=204.0;
     s1+=1167.0;
    } else {
     s0+=1244.0;
     s1+=750.0;
    }
   } else {
    if(i54<0.08317916840314865){
     s0+=62.0;
     s1+=271.0;
    } else {
     s0+=23.0;
     s1+=1177.0;
    }
   }
  }
 }
} else {
 if(i2<0.05852234363555908){
  if(i35<1.2392117977142334){
   if(i36<1.069656252861023){
    s0+=8.0;
   } else {
    if(i73<1.004145860671997){
     s0+=4.0;
     s1+=55.0;
    } else {
     s1+=360.0;
    }
   }
  } else {
   if(i27<0.9962418675422668){
    if(i58<0.2580721378326416){
     s0+=4.0;
     s1+=142.0;
    } else {
     s0+=45.0;
     s1+=65.0;
    }
   } else {
    if(i41<9.282142855226994e-05){
     s0+=152.0;
    } else {
     s0+=31.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i1<0.0784037709236145){
   if(i33<0.0018418938852846622){
    s1+=154.0;
   } else {
    if(i15<2.1457672119140625e-05){
     s0+=30.0;
    } else {
     s0+=37.0;
     s1+=103.0;
    }
   }
  } else {
   if(i12<1.0085959434509277){
    if(i45<-1.2594156032719184e-05){
     s0+=71.0;
     s1+=2049.0;
    } else {
     s0+=34.0;
     s1+=16.0;
    }
   } else {
    if(i68<0.0004227762692607939){
     s0+=1.0;
     s1+=1531.0;
    } else {
     s1+=6966.0;
    }
   }
  }
 }
}
if(i2<0.08162045478820801){
 if(i23<1.002920150756836){
  if(i28<0.00031781429424881935){
   if(i11<0.00010126829147338867){
    if(i34<0.00028976076282560825){
     s0+=46843.0;
     s1+=110.0;
    } else {
     s0+=3957.0;
     s1+=207.0;
    }
   } else {
    if(i1<0.06759139895439148){
     s0+=6277.0;
     s1+=220.0;
    } else {
     s0+=148.0;
     s1+=134.0;
    }
   }
  } else {
   if(i38<0.0011244213674217463){
    if(i71<0.00041265256004408){
     s0+=2699.0;
     s1+=722.0;
    } else {
     s0+=187.0;
     s1+=380.0;
    }
   } else {
    if(i35<1.2371783256530762){
     s0+=1400.0;
     s1+=184.0;
    } else {
     s0+=6822.0;
     s1+=265.0;
    }
   }
  }
 } else {
  if(i43<0.002379791811108589){
   if(i56<0.0005103923031128943){
    if(i71<0.0005339243216440082){
     s0+=78.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i36<1.0652282238006592){
     s0+=2.0;
    } else {
     s0+=2.0;
     s1+=715.0;
    }
   }
  } else {
   if(i13<1.059226393699646){
    if(i41<0.00014102482236921787){
     s0+=102.0;
     s1+=39.0;
    } else {
     s0+=614.0;
     s1+=5.0;
    }
   } else {
    if(i5<1.0041823387145996){
     s0+=285.0;
     s1+=126.0;
    } else {
     s0+=8.0;
     s1+=294.0;
    }
   }
  }
 }
} else {
 if(i22<3.248453140258789e-05){
  if(i18<0.998434841632843){
   if(i23<1.0044653415679932){
    if(i5<0.997001588344574){
     s0+=383.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   if(i37<0.025261729955673218){
    if(i24<1.0567500591278076){
     s0+=117.0;
     s1+=914.0;
    } else {
     s0+=725.0;
     s1+=403.0;
    }
   } else {
    if(i20<1.063935399055481){
     s0+=20.0;
     s1+=5.0;
    } else {
     s0+=118.0;
     s1+=2189.0;
    }
   }
  }
 } else {
  if(i33<0.0005814464529976249){
   if(i11<3.007054328918457e-05){
    if(i59<-0.0003824153682217002){
     s0+=71.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.0019892998971045017){
     s0+=11.0;
     s1+=9.0;
    } else {
     s1+=112.0;
    }
   }
  } else {
   if(i6<-4.699045530287549e-05){
    if(i60<0.010694503784179688){
     s1+=8595.0;
    } else {
     s0+=3.0;
     s1+=1303.0;
    }
   } else {
    if(i34<0.0020481664687395096){
     s0+=5.0;
     s1+=245.0;
    } else {
     s0+=61.0;
     s1+=108.0;
    }
   }
  }
 }
}
if(i10<1.0038821697235107){
 if(i4<0.07123780250549316){
  if(i30<1.0598037242889404){
   if(i71<0.00046335867955349386){
    if(i47<0.0005298707983456552){
     s0+=42257.0;
     s1+=3.0;
    } else {
     s0+=1275.0;
     s1+=10.0;
    }
   } else {
    if(i44<0.0006023618625476956){
     s1+=24.0;
    } else {
     s0+=399.0;
     s1+=1.0;
    }
   }
  } else {
   if(i5<1.0007879734039307){
    if(i1<0.07844537496566772){
     s0+=23105.0;
     s1+=1349.0;
    } else {
     s0+=117.0;
     s1+=510.0;
    }
   } else {
    if(i41<6.787323854950955e-06){
     s0+=600.0;
     s1+=92.0;
    } else {
     s0+=402.0;
     s1+=843.0;
    }
   }
  }
 } else {
  if(i52<0.031333327293395996){
   if(i2<0.09813505411148071){
    if(i53<0.05818217992782593){
     s0+=91.0;
     s1+=399.0;
    } else {
     s0+=301.0;
     s1+=57.0;
    }
   } else {
    if(i18<0.9976985454559326){
     s0+=65.0;
    } else {
     s0+=127.0;
     s1+=2469.0;
    }
   }
  } else {
   if(i17<0.006479015573859215){
    if(i70<-0.023825105279684067){
     s0+=803.0;
     s1+=113.0;
    } else {
     s0+=563.0;
     s1+=369.0;
    }
   } else {
    if(i1<0.12487214803695679){
     s0+=97.0;
     s1+=38.0;
    } else {
     s0+=3.0;
     s1+=774.0;
    }
   }
  }
 }
} else {
 if(i6<-4.353338590590283e-05){
  if(i42<0.9990973472595215){
   if(i39<-0.0002892613410949707){
    s1+=10.0;
   } else {
    s0+=69.0;
   }
  } else {
   if(i21<0.8448345065116882){
    s0+=7.0;
   } else {
    if(i34<0.0001870676060207188){
     s0+=20.0;
     s1+=16.0;
    } else {
     s0+=76.0;
     s1+=10030.0;
    }
   }
  }
 } else {
  if(i35<1.128101110458374){
   if(i20<1.0511627197265625){
    s0+=32.0;
   } else {
    s1+=91.0;
   }
  } else {
   if(i44<0.007359661161899567){
    if(i18<1.002988338470459){
     s0+=576.0;
     s1+=4.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i43<0.0031533557921648026){
     s0+=4.0;
    } else {
     s1+=48.0;
    }
   }
  }
 }
}
if(i29<1.0066382884979248){
 if(i5<1.002431869506836){
  if(i0<0.08502736687660217){
   if(i71<0.00027044559828937054){
    if(i13<1.0410068035125732){
     s0+=51247.0;
     s1+=130.0;
    } else {
     s0+=5739.0;
     s1+=478.0;
    }
   } else {
    if(i38<0.0010134554468095303){
     s0+=1177.0;
     s1+=745.0;
    } else {
     s0+=9514.0;
     s1+=476.0;
    }
   }
  } else {
   if(i77<0.997360348701477){
    if(i17<0.008074245415627956){
     s0+=490.0;
     s1+=19.0;
    } else {
     s1+=20.0;
    }
   } else {
    if(i25<0.024422653019428253){
     s0+=622.0;
     s1+=468.0;
    } else {
     s0+=243.0;
     s1+=1685.0;
    }
   }
  }
 } else {
  if(i45<-1.2983368833374698e-05){
   if(i1<0.11581021547317505){
    if(i14<-0.0008105039596557617){
     s0+=88.0;
     s1+=143.0;
    } else {
     s0+=28.0;
     s1+=509.0;
    }
   } else {
    if(i37<0.011570526286959648){
     s0+=8.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=1261.0;
    }
   }
  } else {
   if(i60<-0.0015444457530975342){
    if(i19<1.0016334056854248){
     s1+=14.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   } else {
    if(i14<7.349252700805664e-05){
     s1+=3.0;
    } else {
     s0+=42.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i69<0.9998592734336853){
  if(i1<0.06777510046958923){
   if(i64<-5.064078777650138e-06){
    if(i10<0.9966188073158264){
     s0+=2.0;
    } else {
     s1+=88.0;
    }
   } else {
    if(i20<1.083461880683899){
     s0+=60.0;
     s1+=51.0;
    } else {
     s0+=266.0;
     s1+=5.0;
    }
   }
  } else {
   if(i6<-1.7471691535320133e-05){
    if(i8<-2.396106719970703e-05){
     s0+=30.0;
     s1+=12.0;
    } else {
     s0+=78.0;
     s1+=7975.0;
    }
   } else {
    if(i3<0.000712275505065918){
     s0+=91.0;
     s1+=6.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i6<-4.2833140469156206e-05){
   if(i1<0.0611424446105957){
    if(i38<0.004278345033526421){
     s0+=11.0;
     s1+=140.0;
    } else {
     s0+=57.0;
    }
   } else {
    if(i33<0.009079727344214916){
     s0+=23.0;
     s1+=2037.0;
    } else {
     s0+=40.0;
     s1+=294.0;
    }
   }
  } else {
   if(i43<0.0008541897404938936){
    if(i4<0.05877429246902466){
     s0+=144.0;
     s1+=45.0;
    } else {
     s0+=29.0;
     s1+=123.0;
    }
   } else {
    if(i44<0.00772442203015089){
     s0+=1282.0;
     s1+=44.0;
    } else {
     s0+=50.0;
     s1+=87.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i31<1.067622423171997){
  if(i73<1.0065834522247314){
   if(i20<1.0596027374267578){
    if(i11<8.478760719299316e-05){
     s0+=34365.0;
    } else {
     s0+=4529.0;
     s1+=34.0;
    }
   } else {
    if(i31<1.0601624250411987){
     s0+=3.0;
     s1+=34.0;
    } else {
     s0+=259.0;
    }
   }
  } else {
   if(i17<0.0014897026121616364){
    s1+=21.0;
   } else {
    s0+=15.0;
   }
  }
 } else {
  if(i11<0.0004578232765197754){
   if(i8<-4.6133995056152344e-05){
    if(i35<1.100754976272583){
     s0+=477.0;
     s1+=88.0;
    } else {
     s0+=14537.0;
     s1+=62.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=2919.0;
     s1+=1353.0;
    } else {
     s0+=10870.0;
     s1+=413.0;
    }
   }
  } else {
   if(i10<1.0004494190216064){
    if(i3<0.0003708004951477051){
     s0+=891.0;
     s1+=77.0;
    } else {
     s0+=192.0;
     s1+=180.0;
    }
   } else {
    if(i69<1.0031235218048096){
     s0+=100.0;
     s1+=894.0;
    } else {
     s0+=28.0;
     s1+=26.0;
    }
   }
  }
 }
} else {
 if(i33<0.00044885766692459583){
  if(i18<1.0005223751068115){
   if(i0<0.08232450485229492){
    s1+=3.0;
   } else {
    s0+=330.0;
   }
  } else {
   if(i66<1.994812009797897e-06){
    s0+=5.0;
   } else {
    s1+=11.0;
   }
  }
 } else {
  if(i23<1.003000020980835){
   if(i6<-1.3797138308291323e-05){
    if(i0<0.12947794795036316){
     s0+=406.0;
     s1+=1312.0;
    } else {
     s0+=123.0;
     s1+=2921.0;
    }
   } else {
    if(i24<1.0610493421554565){
     s0+=93.0;
     s1+=280.0;
    } else {
     s0+=598.0;
     s1+=92.0;
    }
   }
  } else {
   if(i2<0.1266695261001587){
    if(i53<0.060484468936920166){
     s0+=15.0;
     s1+=1067.0;
    } else {
     s0+=113.0;
     s1+=147.0;
    }
   } else {
    if(i18<1.0013513565063477){
     s0+=23.0;
     s1+=808.0;
    } else {
     s0+=1.0;
     s1+=7537.0;
    }
   }
  }
 }
}
if(i14<0.0007561445236206055){
 if(i17<0.005103948526084423){
  if(i1<0.08233046531677246){
   if(i46<0.001578447176143527){
    if(i67<0.01077374629676342){
     s0+=45290.0;
     s1+=143.0;
    } else {
     s0+=13954.0;
     s1+=659.0;
    }
   } else {
    if(i44<0.0016952457372099161){
     s0+=1725.0;
     s1+=669.0;
    } else {
     s0+=2768.0;
     s1+=165.0;
    }
   }
  } else {
   if(i70<-0.019703246653079987){
    if(i4<0.17416253685951233){
     s0+=657.0;
     s1+=56.0;
    } else {
     s0+=272.0;
     s1+=202.0;
    }
   } else {
    if(i49<0.9995689392089844){
     s0+=131.0;
     s1+=20.0;
    } else {
     s0+=336.0;
     s1+=1227.0;
    }
   }
  }
 } else {
  if(i12<0.9815905094146729){
   if(i3<0.00020015239715576172){
    if(i13<1.0819685459136963){
     s0+=3029.0;
     s1+=31.0;
    } else {
     s0+=115.0;
     s1+=128.0;
    }
   } else {
    if(i56<0.0056842840276658535){
     s0+=90.0;
     s1+=16.0;
    } else {
     s1+=154.0;
    }
   }
  } else {
   if(i5<0.9963532090187073){
    if(i17<0.009611658751964569){
     s0+=1238.0;
     s1+=30.0;
    } else {
     s1+=49.0;
    }
   } else {
    if(i7<1.0036578178405762){
     s0+=591.0;
     s1+=1850.0;
    } else {
     s0+=45.0;
     s1+=1874.0;
    }
   }
  }
 }
} else {
 if(i9<1.0344531536102295){
  if(i22<0.0002339482307434082){
   if(i35<1.1386182308197021){
    if(i37<0.0031017109286040068){
     s0+=27.0;
     s1+=2.0;
    } else {
     s1+=44.0;
    }
   } else {
    if(i64<-5.8173664001515135e-06){
     s1+=18.0;
    } else {
     s0+=384.0;
    }
   }
  } else {
   s1+=120.0;
  }
 } else {
  if(i3<3.7103891372680664e-05){
   if(i2<0.1668679416179657){
    s0+=71.0;
   } else {
    if(i40<0.1098785400390625){
     s1+=10.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i15<1.7940998077392578e-05){
    if(i28<0.00028617799398489296){
     s0+=53.0;
     s1+=80.0;
    } else {
     s0+=110.0;
     s1+=1630.0;
    }
   } else {
    if(i11<0.00048065185546875){
     s0+=8.0;
     s1+=34.0;
    } else {
     s0+=3.0;
     s1+=8143.0;
    }
   }
  }
 }
}
if(i2<0.08189880847930908){
 if(i5<1.0024776458740234){
  if(i1<0.06921815872192383){
   if(i48<-0.0015773773193359375){
    if(i51<0.014095902442932129){
     s0+=3066.0;
     s1+=771.0;
    } else {
     s0+=800.0;
     s1+=15.0;
    }
   } else {
    if(i47<0.0002773744345176965){
     s0+=45153.0;
     s1+=41.0;
    } else {
     s0+=18531.0;
     s1+=794.0;
    }
   }
  } else {
   if(i40<0.036494165658950806){
    if(i48<0.003190338611602783){
     s0+=161.0;
     s1+=574.0;
    } else {
     s0+=96.0;
     s1+=14.0;
    }
   } else {
    if(i25<0.027565255761146545){
     s0+=1474.0;
     s1+=78.0;
    } else {
     s0+=152.0;
     s1+=60.0;
    }
   }
  }
 } else {
  if(i17<0.001949255121871829){
   if(i39<0.00019532442092895508){
    if(i75<3.965126961702481e-05){
     s1+=4.0;
    } else {
     s0+=160.0;
     s1+=1.0;
    }
   } else {
    s1+=18.0;
   }
  } else {
   if(i33<0.007543810643255711){
    if(i47<0.003837626427412033){
     s0+=13.0;
     s1+=1004.0;
    } else {
     s0+=20.0;
     s1+=50.0;
    }
   } else {
    if(i51<-0.06119963526725769){
     s0+=2.0;
     s1+=110.0;
    } else {
     s0+=90.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i3<0.0001499652862548828){
  if(i6<-9.436449545319192e-06){
   if(i62<1.0239372253417969){
    if(i55<0.016446411609649658){
     s0+=63.0;
     s1+=1047.0;
    } else {
     s0+=50.0;
     s1+=49.0;
    }
   } else {
    if(i37<0.02379418909549713){
     s0+=264.0;
     s1+=199.0;
    } else {
     s0+=15.0;
     s1+=411.0;
    }
   }
  } else {
   if(i40<0.040000349283218384){
    if(i3<-0.0008779764175415039){
     s0+=40.0;
    } else {
     s0+=6.0;
     s1+=107.0;
    }
   } else {
    if(i16<0.9915419816970825){
     s0+=203.0;
     s1+=64.0;
    } else {
     s0+=502.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i1<0.11803838610649109){
   if(i55<0.014208763837814331){
    if(i6<-1.858592077041976e-05){
     s0+=26.0;
     s1+=974.0;
    } else {
     s0+=16.0;
     s1+=9.0;
    }
   } else {
    if(i32<0.06356972455978394){
     s1+=11.0;
    } else {
     s0+=216.0;
     s1+=24.0;
    }
   }
  } else {
   if(i36<1.274404764175415){
    if(i20<1.1514184474945068){
     s0+=22.0;
     s1+=1175.0;
    } else {
     s0+=73.0;
     s1+=315.0;
    }
   } else {
    if(i3<0.0004971623420715332){
     s0+=18.0;
     s1+=407.0;
    } else {
     s0+=17.0;
     s1+=8633.0;
    }
   }
  }
 }
}
if(i8<3.427267074584961e-05){
 if(i28<0.00031967530958354473){
  if(i1<0.0832170844078064){
   if(i7<1.0081498622894287){
    if(i30<1.0557184219360352){
     s0+=40812.0;
    } else {
     s0+=15880.0;
     s1+=561.0;
    }
   } else {
    if(i36<1.1351666450500488){
     s0+=10.0;
     s1+=89.0;
    } else {
     s0+=204.0;
     s1+=12.0;
    }
   }
  } else {
   if(i5<0.9983065128326416){
    if(i10<0.9939890503883362){
     s0+=71.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=13.0;
    }
   } else {
    if(i33<0.0003463032189756632){
     s0+=9.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=269.0;
    }
   }
  }
 } else {
  if(i1<0.08225274085998535){
   if(i35<1.100754976272583){
    if(i44<0.00043277174700051546){
     s0+=1700.0;
     s1+=37.0;
    } else {
     s0+=940.0;
     s1+=869.0;
    }
   } else {
    if(i48<-0.0024103522300720215){
     s0+=2132.0;
     s1+=283.0;
    } else {
     s0+=7002.0;
     s1+=134.0;
    }
   }
  } else {
   if(i42<0.9987839460372925){
    if(i72<0.5461777448654175){
     s0+=387.0;
     s1+=3.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i40<0.04517880082130432){
     s0+=63.0;
     s1+=1786.0;
    } else {
     s0+=991.0;
     s1+=1182.0;
    }
   }
  }
 }
} else {
 if(i49<0.9993219375610352){
  s0+=476.0;
 } else {
  if(i2<0.058522045612335205){
   if(i35<1.2392117977142334){
    s1+=401.0;
   } else {
    if(i19<1.00274658203125){
     s0+=107.0;
     s1+=239.0;
    } else {
     s0+=152.0;
     s1+=11.0;
    }
   }
  } else {
   if(i3<0.0008815526962280273){
    if(i69<1.0016226768493652){
     s0+=102.0;
     s1+=1226.0;
    } else {
     s0+=55.0;
     s1+=123.0;
    }
   } else {
    if(i41<9.8382071882952e-05){
     s0+=3.0;
     s1+=8100.0;
    } else {
     s0+=60.0;
     s1+=1731.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i21<1.0077197551727295){
  if(i9<1.0452215671539307){
   if(i34<0.0003067246580030769){
    if(i71<0.00028060286422260106){
     s0+=51819.0;
     s1+=94.0;
    } else {
     s0+=1158.0;
     s1+=128.0;
    }
   } else {
    if(i2<0.07645323872566223){
     s0+=11455.0;
     s1+=1010.0;
    } else {
     s0+=178.0;
     s1+=484.0;
    }
   }
  } else {
   if(i0<0.10016605257987976){
    if(i54<0.03393828123807907){
     s0+=1843.0;
     s1+=125.0;
    } else {
     s0+=1180.0;
     s1+=489.0;
    }
   } else {
    if(i70<-0.027190664783120155){
     s0+=428.0;
     s1+=434.0;
    } else {
     s0+=79.0;
     s1+=870.0;
    }
   }
  }
 } else {
  if(i6<-3.3525626349728554e-05){
   if(i69<1.0013463497161865){
    if(i7<1.0088779926300049){
     s0+=163.0;
     s1+=381.0;
    } else {
     s0+=26.0;
     s1+=1072.0;
    }
   } else {
    if(i37<0.035482291132211685){
     s0+=238.0;
     s1+=35.0;
    } else {
     s1+=129.0;
    }
   }
  } else {
   if(i2<0.06813228130340576){
    if(i17<0.005339145660400391){
     s0+=1553.0;
     s1+=42.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   } else {
    if(i62<1.0253651142120361){
     s0+=122.0;
     s1+=242.0;
    } else {
     s0+=603.0;
     s1+=153.0;
    }
   }
  }
 }
} else {
 if(i17<0.002189040184020996){
  if(i22<0.0002917647361755371){
   if(i41<7.665585144422948e-06){
    s0+=192.0;
   } else {
    if(i35<1.5387637615203857){
     s1+=36.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   s1+=159.0;
  }
 } else {
  if(i45<-9.583249266142957e-06){
   if(i14<6.896257400512695e-05){
    if(i9<1.123502492904663){
     s0+=157.0;
     s1+=567.0;
    } else {
     s1+=574.0;
    }
   } else {
    if(i29<0.9793777465820312){
     s0+=4.0;
     s1+=133.0;
    } else {
     s0+=5.0;
     s1+=9797.0;
    }
   }
  } else {
   if(i37<0.009484117850661278){
    if(i11<0.0002512335777282715){
     s1+=2.0;
    } else {
     s0+=14.0;
    }
   } else {
    s1+=27.0;
   }
  }
 }
}
if(i8<3.7610530853271484e-05){
 if(i21<1.007704734802246){
  if(i72<0.02721966989338398){
   if(i46<0.003030767198652029){
    if(i47<0.00029594491934403777){
     s0+=46536.0;
     s1+=46.0;
    } else {
     s0+=7599.0;
     s1+=333.0;
    }
   } else {
    if(i1<0.008852154016494751){
     s0+=109.0;
     s1+=7.0;
    } else {
     s0+=73.0;
     s1+=121.0;
    }
   }
  } else {
   if(i14<-0.00138932466506958){
    if(i32<0.08585405349731445){
     s0+=9152.0;
     s1+=450.0;
    } else {
     s0+=206.0;
     s1+=309.0;
    }
   } else {
    if(i41<3.4074819268425927e-05){
     s0+=2806.0;
     s1+=396.0;
    } else {
     s0+=1348.0;
     s1+=1704.0;
    }
   }
  }
 } else {
  if(i57<-0.000452116277301684){
   if(i42<0.9992976188659668){
    if(i63<0.023060202598571777){
     s0+=75.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i37<0.01396485697478056){
     s0+=109.0;
     s1+=48.0;
    } else {
     s0+=59.0;
     s1+=629.0;
    }
   }
  } else {
   if(i56<0.001784969586879015){
    if(i47<0.0007446823874488473){
     s0+=332.0;
     s1+=590.0;
    } else {
     s0+=1851.0;
     s1+=222.0;
    }
   } else {
    if(i0<0.06993848085403442){
     s0+=198.0;
     s1+=64.0;
    } else {
     s0+=55.0;
     s1+=473.0;
    }
   }
  }
 }
} else {
 if(i34<0.0002336339239263907){
  if(i13<1.0326924324035645){
   if(i76<-6.067764843464829e-06){
    s1+=1.0;
   } else {
    s0+=221.0;
   }
  } else {
   if(i2<0.05522429943084717){
    if(i42<1.000847339630127){
     s0+=37.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i31<1.2392117977142334){
     s1+=37.0;
    } else {
     s0+=1.0;
    }
   }
  }
 } else {
  if(i36<1.0762357711791992){
   s0+=83.0;
  } else {
   if(i17<0.002279817359521985){
    if(i5<1.004608392715454){
     s0+=101.0;
     s1+=17.0;
    } else {
     s1+=141.0;
    }
   } else {
    if(i1<0.04817262291908264){
     s0+=107.0;
     s1+=282.0;
    } else {
     s0+=178.0;
     s1+=11132.0;
    }
   }
  }
 }
}
if(i0<0.0835534930229187){
 if(i18<1.0019147396087646){
  if(i13<1.0410068035125732){
   if(i7<1.0099180936813354){
    if(i72<0.019360721111297607){
     s0+=47956.0;
     s1+=166.0;
    } else {
     s0+=11003.0;
     s1+=404.0;
    }
   } else {
    if(i38<0.001247950131073594){
     s1+=18.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i8<1.150369644165039e-05){
    if(i30<1.1036889553070068){
     s0+=3538.0;
     s1+=752.0;
    } else {
     s0+=4652.0;
     s1+=240.0;
    }
   } else {
    if(i75<0.00015715911285951734){
     s0+=679.0;
     s1+=505.0;
    } else {
     s0+=314.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i10<1.0002937316894531){
   if(i48<-0.0025595426559448242){
    if(i14<-0.002382814884185791){
     s0+=67.0;
     s1+=37.0;
    } else {
     s0+=15.0;
     s1+=92.0;
    }
   } else {
    if(i41<0.00013162955292500556){
     s0+=81.0;
     s1+=35.0;
    } else {
     s0+=439.0;
     s1+=3.0;
    }
   }
  } else {
   if(i33<0.008860957808792591){
    if(i46<0.001394525053910911){
     s0+=48.0;
     s1+=189.0;
    } else {
     s0+=6.0;
     s1+=488.0;
    }
   } else {
    if(i45<-3.9921931602293625e-05){
     s0+=9.0;
     s1+=49.0;
    } else {
     s0+=36.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i6<-1.64135817612987e-05){
  if(i22<-8.890032768249512e-05){
   if(i50<0.0033918290864676237){
    if(i56<0.004999988712370396){
     s0+=447.0;
     s1+=629.0;
    } else {
     s0+=2.0;
     s1+=299.0;
    }
   } else {
    if(i15<-1.710653305053711e-05){
     s0+=6.0;
    } else {
     s0+=24.0;
     s1+=883.0;
    }
   }
  } else {
   if(i11<-0.0004355311393737793){
    s0+=45.0;
   } else {
    if(i14<0.0008144378662109375){
     s0+=211.0;
     s1+=2686.0;
    } else {
     s0+=34.0;
     s1+=9305.0;
    }
   }
  }
 } else {
  if(i8<-5.695223808288574e-05){
   if(i56<0.004448316991329193){
    if(i71<0.0005787063855677843){
     s0+=443.0;
    } else {
     s0+=102.0;
     s1+=3.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i40<0.05157932639122009){
    if(i11<-0.00047332048416137695){
     s0+=49.0;
    } else {
     s0+=94.0;
     s1+=350.0;
    }
   } else {
    if(i66<-3.029182607861003e-06){
     s1+=21.0;
    } else {
     s0+=629.0;
     s1+=139.0;
    }
   }
  }
 }
}
if(i19<1.0088517665863037){
 if(i9<1.0452215671539307){
  if(i48<-0.0017362236976623535){
   if(i22<0.0001627802848815918){
    if(i2<0.0443398654460907){
     s0+=2540.0;
     s1+=395.0;
    } else {
     s0+=95.0;
     s1+=454.0;
    }
   } else {
    if(i18<1.0010805130004883){
     s0+=12.0;
     s1+=9.0;
    } else {
     s1+=191.0;
    }
   }
  } else {
   if(i0<0.08320659399032593){
    if(i47<0.0002930329064838588){
     s0+=46085.0;
     s1+=42.0;
    } else {
     s0+=15840.0;
     s1+=796.0;
    }
   } else {
    if(i18<0.9985061287879944){
     s0+=328.0;
     s1+=14.0;
    } else {
     s0+=136.0;
     s1+=532.0;
    }
   }
  }
 } else {
  if(i3<0.00022274255752563477){
   if(i54<0.04400087147951126){
    if(i0<0.07604002952575684){
     s0+=1906.0;
     s1+=103.0;
    } else {
     s0+=386.0;
     s1+=137.0;
    }
   } else {
    if(i39<-0.00014087557792663574){
     s0+=479.0;
     s1+=16.0;
    } else {
     s0+=651.0;
     s1+=1035.0;
    }
   }
  } else {
   if(i1<0.1034359335899353){
    if(i50<0.006311278324574232){
     s0+=261.0;
     s1+=142.0;
    } else {
     s0+=53.0;
     s1+=511.0;
    }
   } else {
    if(i62<1.0236948728561401){
     s0+=3.0;
     s1+=1431.0;
    } else {
     s0+=48.0;
     s1+=207.0;
    }
   }
  }
 }
} else {
 if(i0<0.08509331941604614){
  if(i44<0.0011557545512914658){
   if(i8<1.049041748046875e-05){
    if(i6<-2.3280244931811467e-05){
     s0+=14.0;
     s1+=60.0;
    } else {
     s0+=275.0;
     s1+=14.0;
    }
   } else {
    if(i56<4.2118765122722834e-05){
     s0+=7.0;
    } else {
     s0+=8.0;
     s1+=384.0;
    }
   }
  } else {
   if(i45<-1.4341359019454103e-05){
    if(i56<0.0019080886850133538){
     s0+=123.0;
     s1+=4.0;
    } else {
     s0+=64.0;
     s1+=66.0;
    }
   } else {
    if(i68<0.0007447828538715839){
     s0+=1148.0;
     s1+=10.0;
    } else {
     s0+=48.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i3<0.0004431009292602539){
   if(i6<-2.116360337822698e-05){
    if(i36<1.1423697471618652){
     s1+=570.0;
    } else {
     s0+=182.0;
     s1+=732.0;
    }
   } else {
    if(i60<0.0017238855361938477){
     s0+=84.0;
     s1+=69.0;
    } else {
     s0+=417.0;
     s1+=46.0;
    }
   }
  } else {
   if(i73<1.0066006183624268){
    if(i30<1.253311276435852){
     s0+=88.0;
     s1+=368.0;
    } else {
     s0+=1.0;
     s1+=505.0;
    }
   } else {
    if(i29<1.0062528848648071){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=8104.0;
    }
   }
  }
 }
}
if(i13<1.0576403141021729){
 if(i18<1.0019078254699707){
  if(i27<1.0126352310180664){
   if(i0<0.08194363117218018){
    if(i47<0.000302791188005358){
     s0+=46949.0;
     s1+=87.0;
    } else {
     s0+=16603.0;
     s1+=1094.0;
    }
   } else {
    if(i18<0.9986284971237183){
     s0+=399.0;
     s1+=11.0;
    } else {
     s0+=141.0;
     s1+=452.0;
    }
   }
  } else {
   if(i7<1.0055246353149414){
    if(i37<0.012064499780535698){
     s0+=218.0;
     s1+=15.0;
    } else {
     s0+=132.0;
     s1+=100.0;
    }
   } else {
    if(i68<0.0011691504623740911){
     s0+=27.0;
     s1+=211.0;
    } else {
     s0+=22.0;
    }
   }
  }
 } else {
  if(i0<0.055353909730911255){
   if(i41<0.00015593014541082084){
    if(i46<0.0013837239239364862){
     s0+=35.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=57.0;
    }
   } else {
    if(i65<0.0013634468195959926){
     s0+=150.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  } else {
   if(i63<0.001693427562713623){
    if(i3<0.0004355311393737793){
     s0+=34.0;
     s1+=29.0;
    } else {
     s0+=7.0;
     s1+=458.0;
    }
   } else {
    if(i14<-0.0007290840148925781){
     s0+=80.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018082857131958){
  if(i42<0.9990499019622803){
   if(i23<0.999516487121582){
    if(i33<0.0018156678415834904){
     s0+=1242.0;
    } else {
     s0+=6.0;
     s1+=4.0;
    }
   } else {
    if(i41<0.0002681319019757211){
     s1+=22.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i56<0.0008530780323781073){
    if(i41<3.454770194366574e-05){
     s0+=2181.0;
     s1+=401.0;
    } else {
     s0+=530.0;
     s1+=518.0;
    }
   } else {
    if(i2<0.10173344612121582){
     s0+=1599.0;
     s1+=705.0;
    } else {
     s0+=169.0;
     s1+=1750.0;
    }
   }
  }
 } else {
  if(i7<1.0237452983856201){
   if(i44<0.008517974987626076){
    if(i14<0.001430511474609375){
     s0+=437.0;
     s1+=1217.0;
    } else {
     s0+=2.0;
     s1+=1368.0;
    }
   } else {
    if(i1<0.029080837965011597){
     s0+=20.0;
     s1+=27.0;
    } else {
     s0+=5.0;
     s1+=1630.0;
    }
   }
  } else {
   if(i56<0.0010518571361899376){
    if(i58<0.3858643174171448){
     s1+=484.0;
    } else {
     s0+=7.0;
     s1+=8.0;
    }
   } else {
    s1+=6579.0;
   }
  }
 }
}
if(i5<1.002443790435791){
 if(i7<1.0081508159637451){
  if(i4<0.07165247201919556){
   if(i57<0.0007819239399395883){
    if(i25<0.021649682894349098){
     s0+=57707.0;
     s1+=374.0;
    } else {
     s0+=2993.0;
     s1+=594.0;
    }
   } else {
    if(i12<0.9874465465545654){
     s0+=4842.0;
     s1+=164.0;
    } else {
     s0+=2421.0;
     s1+=1066.0;
    }
   }
  } else {
   if(i71<0.0009071027743630111){
    if(i17<0.002274773782119155){
     s0+=765.0;
     s1+=162.0;
    } else {
     s0+=681.0;
     s1+=830.0;
    }
   } else {
    if(i3<-0.000583261251449585){
     s0+=56.0;
     s1+=90.0;
    } else {
     s0+=43.0;
     s1+=650.0;
    }
   }
  }
 } else {
  if(i68<0.0005776783218607306){
   if(i11<9.834766387939453e-05){
    if(i10<0.9989584684371948){
     s0+=275.0;
     s1+=319.0;
    } else {
     s0+=34.0;
     s1+=565.0;
    }
   } else {
    if(i6<-4.1514602344250306e-05){
     s0+=47.0;
     s1+=294.0;
    } else {
     s0+=800.0;
     s1+=75.0;
    }
   }
  } else {
   if(i75<0.0005309320986270905){
    if(i14<-0.00413823127746582){
     s0+=2.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=690.0;
    }
   } else {
    s0+=39.0;
   }
  }
 }
} else {
 if(i34<0.00018719921354204416){
  if(i4<0.05897092819213867){
   if(i62<1.0127415657043457){
    if(i17<0.0021066239569336176){
     s0+=94.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=2.0;
   }
  } else {
   s1+=9.0;
  }
 } else {
  if(i0<0.0805770754814148){
   if(i30<1.1709270477294922){
    if(i44<0.0003021143493242562){
     s0+=1.0;
    } else {
     s1+=588.0;
    }
   } else {
    if(i71<0.0003727800794877112){
     s0+=157.0;
     s1+=9.0;
    } else {
     s0+=42.0;
     s1+=215.0;
    }
   }
  } else {
   if(i29<1.0208969116210938){
    if(i11<0.00039905309677124023){
     s0+=36.0;
     s1+=201.0;
    } else {
     s0+=47.0;
     s1+=3125.0;
    }
   } else {
    if(i67<0.008303223177790642){
     s0+=1.0;
     s1+=139.0;
    } else {
     s0+=1.0;
     s1+=6997.0;
    }
   }
  }
 }
}
if(i5<1.0023572444915771){
 if(i25<0.022099249064922333){
  if(i14<0.0011185407638549805){
   if(i1<0.08370932936668396){
    if(i63<-0.0014188587665557861){
     s0+=3116.0;
     s1+=564.0;
    } else {
     s0+=59550.0;
     s1+=505.0;
    }
   } else {
    if(i65<-0.004560620523989201){
     s0+=620.0;
     s1+=114.0;
    } else {
     s0+=268.0;
     s1+=605.0;
    }
   }
  } else {
   if(i31<1.2388319969177246){
    if(i1<0.039482325315475464){
     s0+=1.0;
    } else {
     s1+=237.0;
    }
   } else {
    s0+=18.0;
   }
  }
 } else {
  if(i3<-0.0005648434162139893){
   if(i19<1.0087180137634277){
    if(i4<0.08356735110282898){
     s0+=4997.0;
     s1+=141.0;
    } else {
     s0+=134.0;
     s1+=119.0;
    }
   } else {
    if(i49<0.9996229410171509){
     s0+=83.0;
    } else {
     s0+=7.0;
     s1+=117.0;
    }
   }
  } else {
   if(i0<0.06674373149871826){
    if(i38<0.001124127535149455){
     s0+=294.0;
     s1+=332.0;
    } else {
     s0+=910.0;
     s1+=183.0;
    }
   } else {
    if(i40<0.03640976548194885){
     s0+=64.0;
     s1+=1558.0;
    } else {
     s0+=461.0;
     s1+=1252.0;
    }
   }
  }
 }
} else {
 if(i0<0.06269580125808716){
  if(i27<0.9968529343605042){
   if(i33<0.010947600938379765){
    if(i45<-9.997265806305222e-06){
     s0+=17.0;
     s1+=328.0;
    } else {
     s0+=10.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.013032913208007812){
     s0+=23.0;
    } else {
     s1+=12.0;
    }
   }
  } else {
   if(i43<0.0010788838844746351){
    if(i45<-1.342172527074581e-05){
     s1+=86.0;
    } else {
     s0+=34.0;
    }
   } else {
    if(i30<1.1341700553894043){
     s0+=1.0;
     s1+=26.0;
    } else {
     s0+=253.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i6<-4.32968299719505e-05){
   if(i5<1.0029356479644775){
    if(i14<-0.0005683302879333496){
     s0+=43.0;
     s1+=108.0;
    } else {
     s0+=8.0;
     s1+=337.0;
    }
   } else {
    if(i41<9.80905897449702e-05){
     s1+=8581.0;
    } else {
     s0+=52.0;
     s1+=1800.0;
    }
   }
  } else {
   if(i15<1.6450881958007812e-05){
    if(i38<0.002116774208843708){
     s0+=3.0;
     s1+=8.0;
    } else {
     s0+=56.0;
     s1+=4.0;
    }
   } else {
    if(i22<0.00017076730728149414){
     s1+=194.0;
    } else {
     s0+=7.0;
     s1+=5.0;
    }
   }
  }
 }
}
if(i22<0.00011461973190307617){
 if(i15<1.9848346710205078e-05){
  if(i24<1.0401114225387573){
   if(i2<0.07751670479774475){
    if(i51<-0.028008699417114258){
     s0+=1957.0;
     s1+=449.0;
    } else {
     s0+=63167.0;
     s1+=1151.0;
    }
   } else {
    if(i20<1.049466609954834){
     s0+=156.0;
     s1+=23.0;
    } else {
     s0+=74.0;
     s1+=857.0;
    }
   }
  } else {
   if(i17<0.005522930528968573){
    if(i17<0.002418115735054016){
     s0+=2275.0;
     s1+=323.0;
    } else {
     s0+=1265.0;
     s1+=725.0;
    }
   } else {
    if(i1<0.07237067818641663){
     s0+=80.0;
     s1+=49.0;
    } else {
     s0+=41.0;
     s1+=1082.0;
    }
   }
  }
 } else {
  if(i5<1.0021586418151855){
   if(i20<1.1266913414001465){
    if(i20<1.0819685459136963){
     s0+=653.0;
     s1+=40.0;
    } else {
     s0+=322.0;
     s1+=122.0;
    }
   } else {
    if(i0<0.08284786343574524){
     s0+=167.0;
     s1+=80.0;
    } else {
     s0+=4.0;
     s1+=358.0;
    }
   }
  } else {
   if(i69<0.9975304007530212){
    if(i38<0.012303177267313004){
     s0+=37.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i17<0.00558845978230238){
     s0+=79.0;
     s1+=119.0;
    } else {
     s0+=84.0;
     s1+=1746.0;
    }
   }
  }
 }
} else {
 if(i18<0.9988142251968384){
  s0+=359.0;
 } else {
  if(i28<0.0001627196033950895){
   if(i43<0.0010456675663590431){
    s1+=27.0;
   } else {
    if(i64<-6.649992883467348e-06){
     s1+=11.0;
    } else {
     s0+=308.0;
     s1+=5.0;
    }
   }
  } else {
   if(i6<-4.392746268422343e-05){
    if(i45<-9.969077837013174e-06){
     s0+=1.0;
     s1+=9373.0;
    } else {
     s0+=27.0;
     s1+=330.0;
    }
   } else {
    if(i31<1.1386182308197021){
     s0+=1.0;
     s1+=111.0;
    } else {
     s0+=162.0;
     s1+=42.0;
    }
   }
  }
 }
}
if(i1<0.08522835373878479){
 if(i18<1.0018565654754639){
  if(i20<1.0486011505126953){
   if(i72<0.02202361822128296){
    if(i71<0.0003253687173128128){
     s0+=48155.0;
     s1+=40.0;
    } else {
     s0+=235.0;
     s1+=67.0;
    }
   } else {
    if(i41<9.25587592064403e-05){
     s0+=3098.0;
     s1+=212.0;
    } else {
     s0+=4465.0;
     s1+=2.0;
    }
   }
  } else {
   if(i2<0.05871176719665527){
    if(i8<1.3172626495361328e-05){
     s0+=10458.0;
     s1+=781.0;
    } else {
     s0+=786.0;
     s1+=262.0;
    }
   } else {
    if(i36<1.1037919521331787){
     s0+=341.0;
     s1+=576.0;
    } else {
     s0+=1345.0;
     s1+=252.0;
    }
   }
  }
 } else {
  if(i39<0.00036638975143432617){
   if(i33<0.007765224203467369){
    if(i70<-0.010499306954443455){
     s0+=45.0;
     s1+=20.0;
    } else {
     s0+=42.0;
     s1+=710.0;
    }
   } else {
    if(i17<0.01527679618448019){
     s0+=90.0;
     s1+=6.0;
    } else {
     s0+=1.0;
     s1+=49.0;
    }
   }
  } else {
   if(i8<6.210803985595703e-05){
    if(i51<-0.06370487809181213){
     s0+=9.0;
     s1+=18.0;
    } else {
     s0+=541.0;
     s1+=24.0;
    }
   } else {
    if(i5<1.0049041509628296){
     s0+=31.0;
     s1+=22.0;
    } else {
     s1+=125.0;
    }
   }
  }
 }
} else {
 if(i42<0.9989378452301025){
  if(i5<0.9978604316711426){
   if(i76<7.679420377826318e-06){
    s0+=266.0;
   } else {
    if(i45<-7.1580907388124615e-06){
     s1+=5.0;
    } else {
     s0+=110.0;
    }
   }
  } else {
   if(i65<-0.014622364193201065){
    s1+=14.0;
   } else {
    s0+=1.0;
   }
  }
 } else {
  if(i5<1.0019464492797852){
   if(i17<0.0017158968839794397){
    if(i51<0.04056870937347412){
     s0+=98.0;
     s1+=128.0;
    } else {
     s0+=432.0;
     s1+=61.0;
    }
   } else {
    if(i48<0.004315793514251709){
     s0+=77.0;
     s1+=2061.0;
    } else {
     s0+=394.0;
     s1+=1021.0;
    }
   }
  } else {
   if(i37<0.0167839378118515){
    if(i12<1.0071052312850952){
     s0+=104.0;
     s1+=172.0;
    } else {
     s0+=8.0;
     s1+=1341.0;
    }
   } else {
    if(i0<0.1289145052433014){
     s0+=7.0;
     s1+=633.0;
    } else {
     s0+=1.0;
     s1+=8510.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i10<1.0052822828292847){
  if(i28<0.00030790118034929037){
   if(i7<1.0082826614379883){
    if(i61<-0.0028383731842041016){
     s0+=234.0;
     s1+=133.0;
    } else {
     s0+=55772.0;
     s1+=501.0;
    }
   } else {
    if(i31<1.1413683891296387){
     s0+=3.0;
     s1+=88.0;
    } else {
     s0+=191.0;
     s1+=8.0;
    }
   }
  } else {
   if(i22<-0.0003122687339782715){
    if(i53<0.05937346816062927){
     s0+=4982.0;
     s1+=75.0;
    } else {
     s0+=95.0;
     s1+=26.0;
    }
   } else {
    if(i0<0.0801997184753418){
     s0+=3568.0;
     s1+=813.0;
    } else {
     s0+=176.0;
     s1+=523.0;
    }
   }
  }
 } else {
  if(i20<1.0484097003936768){
   if(i43<0.0009890020592138171){
    s1+=6.0;
   } else {
    if(i42<1.0010693073272705){
     s0+=145.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i22<0.00022542476654052734){
    if(i11<0.00038951635360717773){
     s0+=106.0;
     s1+=24.0;
    } else {
     s1+=207.0;
    }
   } else {
    if(i2<0.021771997213363647){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=311.0;
    }
   }
  }
 }
} else {
 if(i23<1.0004466772079468){
  if(i17<0.005533730611205101){
   if(i3<0.00015932321548461914){
    if(i39<-0.0001367330551147461){
     s0+=1289.0;
     s1+=20.0;
    } else {
     s0+=2784.0;
     s1+=849.0;
    }
   } else {
    if(i6<-3.4297867387067527e-05){
     s0+=135.0;
     s1+=457.0;
    } else {
     s0+=191.0;
     s1+=27.0;
    }
   }
  } else {
   if(i0<0.08757641911506653){
    if(i51<0.006744712591171265){
     s0+=30.0;
     s1+=116.0;
    } else {
     s0+=115.0;
     s1+=9.0;
    }
   } else {
    if(i49<1.0004897117614746){
     s0+=30.0;
     s1+=1243.0;
    } else {
     s0+=24.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i8<3.4868717193603516e-05){
   if(i0<0.11986163258552551){
    if(i44<0.001497445860877633){
     s0+=168.0;
     s1+=373.0;
    } else {
     s0+=668.0;
     s1+=209.0;
    }
   } else {
    if(i40<0.0788225531578064){
     s0+=2.0;
     s1+=586.0;
    } else {
     s0+=100.0;
     s1+=228.0;
    }
   }
  } else {
   if(i0<0.08456242084503174){
    if(i51<0.015618979930877686){
     s0+=98.0;
     s1+=590.0;
    } else {
     s0+=83.0;
     s1+=17.0;
    }
   } else {
    if(i6<-4.922334846924059e-05){
     s0+=50.0;
     s1+=9479.0;
    } else {
     s0+=59.0;
     s1+=220.0;
    }
   }
  }
 }
}
if(i4<0.07131022214889526){
 if(i7<1.0081498622894287){
  if(i3<0.0006021559238433838){
   if(i0<0.08322584629058838){
    if(i55<-0.005852639675140381){
     s0+=3561.0;
     s1+=727.0;
    } else {
     s0+=63870.0;
     s1+=1031.0;
    }
   } else {
    if(i15<-1.564621925354004e-05){
     s0+=303.0;
     s1+=4.0;
    } else {
     s0+=92.0;
     s1+=429.0;
    }
   }
  } else {
   if(i34<0.00026725506177172065){
    if(i23<1.0037504434585571){
     s0+=89.0;
    } else {
     s0+=6.0;
     s1+=16.0;
    }
   } else {
    if(i35<1.5682398080825806){
     s0+=24.0;
     s1+=488.0;
    } else {
     s0+=78.0;
     s1+=87.0;
    }
   }
  }
 } else {
  if(i44<0.002243424765765667){
   if(i14<8.362531661987305e-05){
    if(i25<0.015518948435783386){
     s0+=77.0;
     s1+=7.0;
    } else {
     s0+=19.0;
     s1+=60.0;
    }
   } else {
    if(i6<-2.379350917181e-05){
     s0+=10.0;
     s1+=1271.0;
    } else {
     s0+=29.0;
     s1+=10.0;
    }
   }
  } else {
   if(i6<-5.684504867531359e-05){
    if(i0<0.08957040309906006){
     s0+=29.0;
     s1+=74.0;
    } else {
     s1+=403.0;
    }
   } else {
    if(i71<-0.00017488861340098083){
     s0+=33.0;
     s1+=12.0;
    } else {
     s0+=738.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i3<0.00048482418060302734){
  if(i15<-1.5676021575927734e-05){
   if(i11<-0.00041115283966064453){
    if(i38<0.009777585044503212){
     s0+=432.0;
    } else {
     s0+=15.0;
     s1+=5.0;
    }
   } else {
    if(i0<0.09020668268203735){
     s0+=6.0;
    } else {
     s0+=3.0;
     s1+=8.0;
    }
   }
  } else {
   if(i0<0.1132657527923584){
    if(i40<0.04244893789291382){
     s0+=85.0;
     s1+=413.0;
    } else {
     s0+=903.0;
     s1+=203.0;
    }
   } else {
    if(i43<0.0011683264747262){
     s0+=228.0;
     s1+=235.0;
    } else {
     s0+=263.0;
     s1+=1811.0;
    }
   }
  }
 } else {
  if(i1<0.12752684950828552){
   if(i65<-0.005831503309309483){
    if(i46<0.0035354585852473974){
     s0+=102.0;
     s1+=7.0;
    } else {
     s1+=39.0;
    }
   } else {
    if(i53<0.06074753403663635){
     s0+=10.0;
     s1+=520.0;
    } else {
     s0+=20.0;
     s1+=123.0;
    }
   }
  } else {
   if(i2<0.16847559809684753){
    if(i62<1.0582404136657715){
     s0+=3.0;
     s1+=878.0;
    } else {
     s0+=17.0;
     s1+=30.0;
    }
   } else {
    if(i5<1.0013705492019653){
     s0+=7.0;
     s1+=43.0;
    } else {
     s1+=8239.0;
    }
   }
  }
 }
}
if(i25<0.02372170425951481){
 if(i22<0.0001448988914489746){
  if(i47<0.0003021462762262672){
   if(i19<1.0087978839874268){
    if(i21<1.0077321529388428){
     s0+=46636.0;
     s1+=61.0;
    } else {
     s0+=48.0;
     s1+=14.0;
    }
   } else {
    if(i75<0.00010383303015260026){
     s1+=61.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i0<0.0757194459438324){
    if(i23<1.0008482933044434){
     s0+=14738.0;
     s1+=650.0;
    } else {
     s0+=1277.0;
     s1+=465.0;
    }
   } else {
    if(i48<0.0035037994384765625){
     s0+=731.0;
     s1+=1041.0;
    } else {
     s0+=1049.0;
     s1+=244.0;
    }
   }
  }
 } else {
  if(i11<-0.00012826919555664062){
   s0+=217.0;
  } else {
   if(i17<0.0017647761851549149){
    if(i39<7.104873657226562e-05){
     s1+=88.0;
    } else {
     s0+=168.0;
     s1+=41.0;
    }
   } else {
    if(i14<0.001025557518005371){
     s0+=15.0;
     s1+=62.0;
    } else {
     s0+=13.0;
     s1+=2250.0;
    }
   }
  }
 }
} else {
 if(i12<0.9888465404510498){
  if(i4<0.08390283584594727){
   if(i13<1.1240957975387573){
    if(i1<0.08412769436836243){
     s0+=4504.0;
     s1+=58.0;
    } else {
     s0+=39.0;
     s1+=18.0;
    }
   } else {
    if(i64<-2.5868339434964582e-06){
     s0+=43.0;
     s1+=157.0;
    } else {
     s0+=197.0;
     s1+=6.0;
    }
   }
  } else {
   if(i11<-0.0003936588764190674){
    if(i41<0.00015609677939210087){
     s0+=88.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i1<0.12327155470848083){
     s0+=42.0;
     s1+=109.0;
    } else {
     s0+=10.0;
     s1+=456.0;
    }
   }
  }
 } else {
  if(i15<-1.475214958190918e-05){
   if(i11<-0.0004144906997680664){
    s0+=253.0;
   } else {
    if(i59<-0.00032017024932429194){
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=1.0;
    }
   }
  } else {
   if(i13<1.034374475479126){
    if(i17<0.003435078775510192){
     s0+=257.0;
     s1+=40.0;
    } else {
     s0+=4.0;
     s1+=48.0;
    }
   } else {
    if(i2<0.10606038570404053){
     s0+=588.0;
     s1+=1738.0;
    } else {
     s0+=170.0;
     s1+=9534.0;
    }
   }
  }
 }
}
if(i20<1.0576403141021729){
 if(i16<1.0100734233856201){
  if(i5<1.0025296211242676){
   if(i20<1.0451585054397583){
    if(i57<0.0007040235213935375){
     s0+=51161.0;
     s1+=88.0;
    } else {
     s0+=3011.0;
     s1+=171.0;
    }
   } else {
    if(i57<0.0006510126986540854){
     s0+=3917.0;
     s1+=250.0;
    } else {
     s0+=504.0;
     s1+=202.0;
    }
   }
  } else {
   if(i71<7.470322088920511e-06){
    s0+=17.0;
   } else {
    if(i41<-8.903233720047865e-06){
     s0+=9.0;
    } else {
     s1+=70.0;
    }
   }
  }
 } else {
  if(i73<0.9954273104667664){
   s0+=38.0;
  } else {
   if(i31<1.062009334564209){
    s0+=19.0;
   } else {
    if(i44<0.0017854450270533562){
     s0+=1.0;
     s1+=149.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i42<1.0008974075317383){
  if(i1<0.08370226621627808){
   if(i36<1.1037919521331787){
    if(i11<0.0001221299171447754){
     s0+=1524.0;
     s1+=740.0;
    } else {
     s0+=13.0;
     s1+=400.0;
    }
   } else {
    if(i18<1.0018985271453857){
     s0+=8039.0;
     s1+=423.0;
    } else {
     s0+=11.0;
     s1+=35.0;
    }
   }
  } else {
   if(i39<-0.00025025010108947754){
    if(i37<0.06572363525629044){
     s0+=296.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i14<0.0007004141807556152){
     s0+=804.0;
     s1+=2733.0;
    } else {
     s0+=50.0;
     s1+=3288.0;
    }
   }
  }
 } else {
  if(i10<1.0001161098480225){
   if(i20<1.1960959434509277){
    if(i3<0.00018459558486938477){
     s0+=937.0;
     s1+=75.0;
    } else {
     s0+=282.0;
     s1+=270.0;
    }
   } else {
    if(i13<1.104048728942871){
     s0+=103.0;
     s1+=6.0;
    } else {
     s0+=26.0;
     s1+=636.0;
    }
   }
  } else {
   if(i8<2.7298927307128906e-05){
    if(i43<0.002329446142539382){
     s0+=112.0;
     s1+=4.0;
    } else {
     s0+=26.0;
     s1+=69.0;
    }
   } else {
    if(i3<0.0014890432357788086){
     s0+=73.0;
     s1+=1060.0;
    } else {
     s0+=15.0;
     s1+=6550.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i5<1.0024570226669312){
  if(i2<0.08579155802726746){
   if(i58<0.0401882529258728){
    if(i63<-0.00276908278465271){
     s0+=46.0;
     s1+=79.0;
    } else {
     s0+=53455.0;
     s1+=387.0;
    }
   } else {
    if(i13<1.0348410606384277){
     s0+=7611.0;
     s1+=245.0;
    } else {
     s0+=3827.0;
     s1+=810.0;
    }
   }
  } else {
   if(i38<0.0006776663940399885){
    if(i35<1.0762357711791992){
     s0+=70.0;
    } else {
     s1+=23.0;
    }
   } else {
    if(i48<0.0057423412799835205){
     s0+=29.0;
     s1+=512.0;
    } else {
     s0+=12.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i41<8.619576874480117e-08){
   if(i17<0.002005344722419977){
    if(i14<0.004292488098144531){
     s0+=101.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<0.002479255199432373){
     s1+=257.0;
    } else {
     s0+=1.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.03138411045074463){
    if(i46<0.0020421729423105717){
     s0+=3.0;
    } else {
     s0+=3.0;
     s1+=37.0;
    }
   } else {
    if(i11<0.00039947032928466797){
     s0+=1.0;
     s1+=25.0;
    } else {
     s1+=381.0;
    }
   }
  }
 }
} else {
 if(i15<1.7821788787841797e-05){
  if(i71<-8.534765220247209e-05){
   if(i5<1.0006903409957886){
    if(i6<-2.2940237613511272e-05){
     s0+=35.0;
     s1+=298.0;
    } else {
     s0+=214.0;
     s1+=56.0;
    }
   } else {
    if(i42<1.000187635421753){
     s0+=5.0;
     s1+=1076.0;
    } else {
     s0+=69.0;
     s1+=107.0;
    }
   }
  } else {
   if(i5<1.001306176185608){
    if(i25<0.027940385043621063){
     s0+=3686.0;
     s1+=599.0;
    } else {
     s0+=629.0;
     s1+=1450.0;
    }
   } else {
    if(i71<0.00016120256623253226){
     s0+=292.0;
     s1+=412.0;
    } else {
     s0+=15.0;
     s1+=522.0;
    }
   }
  }
 } else {
  if(i4<0.0965343713760376){
   if(i8<4.0650367736816406e-05){
    if(i61<0.0035915374755859375){
     s0+=138.0;
     s1+=153.0;
    } else {
     s0+=376.0;
     s1+=21.0;
    }
   } else {
    if(i5<1.003721833229065){
     s0+=127.0;
     s1+=181.0;
    } else {
     s0+=38.0;
     s1+=1792.0;
    }
   }
  } else {
   if(i8<5.269050598144531e-05){
    if(i2<0.12535446882247925){
     s0+=56.0;
     s1+=47.0;
    } else {
     s0+=12.0;
     s1+=444.0;
    }
   } else {
    if(i64<-0.00011845072731375694){
     s0+=5.0;
    } else {
     s0+=38.0;
     s1+=7439.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i26<1.0094244480133057){
  if(i54<0.031509608030319214){
   if(i25<0.01816023513674736){
    if(i17<0.011288037523627281){
     s0+=56053.0;
     s1+=503.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i20<1.0452029705047607){
     s0+=1946.0;
     s1+=38.0;
    } else {
     s0+=629.0;
     s1+=333.0;
    }
   }
  } else {
   if(i5<0.9971516132354736){
    if(i36<1.1939998865127563){
     s0+=924.0;
     s1+=135.0;
    } else {
     s0+=5285.0;
     s1+=156.0;
    }
   } else {
    if(i17<0.0014465285930782557){
     s0+=1671.0;
     s1+=362.0;
    } else {
     s0+=1359.0;
     s1+=1769.0;
    }
   }
  }
 } else {
  if(i0<0.08751124143600464){
   if(i44<0.0014118663966655731){
    if(i3<0.00013741850852966309){
     s0+=464.0;
     s1+=88.0;
    } else {
     s0+=62.0;
     s1+=183.0;
    }
   } else {
    if(i68<0.0006772119086235762){
     s0+=1227.0;
     s1+=3.0;
    } else {
     s0+=323.0;
     s1+=63.0;
    }
   }
  } else {
   if(i68<0.0005784398526884615){
    if(i39<2.154707908630371e-05){
     s0+=284.0;
     s1+=828.0;
    } else {
     s0+=391.0;
     s1+=127.0;
    }
   } else {
    if(i49<1.0003633499145508){
     s0+=24.0;
     s1+=801.0;
    } else {
     s0+=48.0;
     s1+=28.0;
    }
   }
  }
 }
} else {
 if(i13<1.0341377258300781){
  if(i17<0.0038520286325365305){
   if(i47<0.0017695599235594273){
    s0+=192.0;
   } else {
    s1+=1.0;
   }
  } else {
   s1+=60.0;
  }
 } else {
  if(i37<0.02204163186252117){
   if(i14<0.001422286033630371){
    if(i67<0.03810153156518936){
     s0+=150.0;
     s1+=641.0;
    } else {
     s0+=192.0;
     s1+=138.0;
    }
   } else {
    if(i14<0.001430511474609375){
     s0+=1.0;
     s1+=6.0;
    } else {
     s1+=2072.0;
    }
   }
  } else {
   if(i1<0.08061829209327698){
    if(i46<0.0029862113296985626){
     s0+=10.0;
     s1+=10.0;
    } else {
     s0+=1.0;
     s1+=200.0;
    }
   } else {
    if(i0<0.10774752497673035){
     s0+=2.0;
     s1+=176.0;
    } else {
     s1+=8284.0;
    }
   }
  }
 }
}
if(i10<1.0040836334228516){
 if(i6<-6.005581599310972e-05){
  if(i37<0.033361248672008514){
   if(i73<0.9972771406173706){
    if(i1<0.11352598667144775){
     s0+=1351.0;
     s1+=124.0;
    } else {
     s0+=31.0;
     s1+=132.0;
    }
   } else {
    if(i33<0.007443726062774658){
     s0+=50.0;
     s1+=529.0;
    } else {
     s0+=65.0;
     s1+=11.0;
    }
   }
  } else {
   if(i21<0.8687276244163513){
    if(i75<0.0002759033231996){
     s0+=54.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   } else {
    if(i41<0.00039117690175771713){
     s0+=29.0;
     s1+=2071.0;
    } else {
     s0+=51.0;
    }
   }
  }
 } else {
  if(i9<1.042873740196228){
   if(i63<-0.0013894736766815186){
    if(i1<0.056716352701187134){
     s0+=3581.0;
     s1+=525.0;
    } else {
     s0+=181.0;
     s1+=383.0;
    }
   } else {
    if(i30<1.0598037242889404){
     s0+=42219.0;
     s1+=11.0;
    } else {
     s0+=16644.0;
     s1+=838.0;
    }
   }
  } else {
   if(i42<0.9993317723274231){
    if(i23<1.000727653503418){
     s0+=1615.0;
     s1+=13.0;
    } else {
     s1+=15.0;
    }
   } else {
    if(i0<0.08848142623901367){
     s0+=3658.0;
     s1+=795.0;
    } else {
     s0+=825.0;
     s1+=1757.0;
    }
   }
  }
 }
} else {
 if(i2<0.05545380711555481){
  if(i17<0.002985275350511074){
   if(i17<0.001637953449971974){
    if(i45<-1.557271389174275e-05){
     s1+=1.0;
    } else {
     s0+=380.0;
    }
   } else {
    if(i45<-1.4512905181618407e-05){
     s1+=35.0;
    } else {
     s0+=73.0;
     s1+=10.0;
    }
   }
  } else {
   if(i5<0.9999279975891113){
    if(i60<-0.013252943754196167){
     s1+=3.0;
    } else {
     s0+=69.0;
    }
   } else {
    if(i70<-0.01556137204170227){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=343.0;
    }
   }
  }
 } else {
  if(i22<0.00021392107009887695){
   if(i41<-5.153918664291268e-06){
    if(i44<0.002597186714410782){
     s0+=4.0;
     s1+=71.0;
    } else {
     s0+=81.0;
     s1+=26.0;
    }
   } else {
    if(i18<0.9994950294494629){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=52.0;
     s1+=1610.0;
    }
   }
  } else {
   if(i22<0.00023216009140014648){
    if(i45<-9.099933777179103e-06){
     s1+=131.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   } else {
    s1+=7738.0;
   }
  }
 }
}
if(i26<1.0101475715637207){
 if(i61<-0.0023172497749328613){
  if(i0<0.06313136219978333){
   if(i11<0.0006586313247680664){
    if(i35<1.253311276435852){
     s0+=1752.0;
     s1+=668.0;
    } else {
     s0+=3418.0;
     s1+=94.0;
    }
   } else {
    if(i22<-0.0003376603126525879){
     s0+=188.0;
     s1+=30.0;
    } else {
     s0+=26.0;
     s1+=306.0;
    }
   }
  } else {
   if(i39<-0.00014126300811767578){
    if(i43<0.01166826207190752){
     s0+=238.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i11<0.0002231895923614502){
     s0+=181.0;
     s1+=606.0;
    } else {
     s0+=74.0;
     s1+=2182.0;
    }
   }
  }
 } else {
  if(i1<0.08468136191368103){
   if(i15<1.9252300262451172e-05){
    if(i16<1.0079569816589355){
     s0+=60671.0;
     s1+=714.0;
    } else {
     s0+=587.0;
     s1+=183.0;
    }
   } else {
    if(i51<-0.014966011047363281){
     s0+=93.0;
     s1+=159.0;
    } else {
     s0+=663.0;
     s1+=133.0;
    }
   }
  } else {
   if(i3<-0.0007429420948028564){
    if(i6<-1.5189537407422904e-05){
     s0+=32.0;
     s1+=36.0;
    } else {
     s0+=188.0;
     s1+=3.0;
    }
   } else {
    if(i17<0.001191824791021645){
     s0+=82.0;
     s1+=33.0;
    } else {
     s0+=185.0;
     s1+=1215.0;
    }
   }
  }
 }
} else {
 if(i38<0.006458619609475136){
  if(i12<1.006533145904541){
   if(i1<0.08518582582473755){
    if(i14<0.00016057491302490234){
     s0+=1321.0;
     s1+=147.0;
    } else {
     s0+=246.0;
     s1+=124.0;
    }
   } else {
    if(i34<0.0017253186088055372){
     s0+=106.0;
     s1+=682.0;
    } else {
     s0+=566.0;
     s1+=341.0;
    }
   }
  } else {
   if(i17<0.002249313984066248){
    if(i6<-4.412232374306768e-05){
     s0+=9.0;
     s1+=210.0;
    } else {
     s0+=298.0;
     s1+=4.0;
    }
   } else {
    if(i3<0.0001277923583984375){
     s0+=26.0;
     s1+=20.0;
    } else {
     s0+=51.0;
     s1+=1962.0;
    }
   }
  }
 } else {
  if(i1<0.12742027640342712){
   if(i11<0.0011830329895019531){
    if(i59<-0.001327569829300046){
     s1+=5.0;
    } else {
     s0+=163.0;
     s1+=1.0;
    }
   } else {
    s1+=31.0;
   }
  } else {
   if(i36<1.274404764175415){
    if(i51<0.11899673938751221){
     s1+=74.0;
    } else {
     s0+=6.0;
     s1+=9.0;
    }
   } else {
    if(i20<1.122573733329773){
     s0+=12.0;
     s1+=384.0;
    } else {
     s0+=8.0;
     s1+=6698.0;
    }
   }
  }
 }
}
if(i1<0.08225274085998535){
 if(i7<1.0081498622894287){
  if(i3<0.0006952881813049316){
   if(i28<0.0002955581876449287){
    if(i63<-0.0021548867225646973){
     s0+=85.0;
     s1+=94.0;
    } else {
     s0+=56033.0;
     s1+=419.0;
    }
   } else {
    if(i10<0.9937054514884949){
     s0+=6661.0;
     s1+=126.0;
    } else {
     s0+=5543.0;
     s1+=1343.0;
    }
   }
  } else {
   if(i51<0.03161099553108215){
    if(i63<0.0024490952491760254){
     s0+=67.0;
     s1+=444.0;
    } else {
     s0+=24.0;
    }
   } else {
    if(i10<1.0063142776489258){
     s0+=28.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i44<0.0016343652969226241){
   if(i33<0.0026547871530056){
    if(i63<0.0035752058029174805){
     s0+=21.0;
     s1+=637.0;
    } else {
     s0+=14.0;
     s1+=3.0;
    }
   } else {
    s0+=22.0;
   }
  } else {
   if(i17<0.006019989959895611){
    if(i50<0.01648498885333538){
     s0+=787.0;
     s1+=18.0;
    } else {
     s0+=128.0;
     s1+=35.0;
    }
   } else {
    if(i60<0.0038174092769622803){
     s1+=77.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985270500183105){
  if(i18<0.9978988170623779){
   if(i45<-9.034853064804338e-06){
    if(i45<-1.1505090697028209e-05){
     s0+=16.0;
    } else {
     s0+=2.0;
     s1+=6.0;
    }
   } else {
    s0+=412.0;
   }
  } else {
   if(i45<-9.801444321055897e-06){
    s1+=31.0;
   } else {
    s0+=45.0;
   }
  }
 } else {
  if(i5<1.0018292665481567){
   if(i51<0.050900042057037354){
    if(i2<0.09230905771255493){
     s0+=173.0;
     s1+=424.0;
    } else {
     s0+=83.0;
     s1+=1720.0;
    }
   } else {
    if(i67<0.1210303083062172){
     s0+=801.0;
     s1+=558.0;
    } else {
     s0+=33.0;
     s1+=512.0;
    }
   }
  } else {
   if(i6<-6.353634671540931e-05){
    if(i1<0.12123140692710876){
     s0+=38.0;
     s1+=899.0;
    } else {
     s0+=12.0;
     s1+=9274.0;
    }
   } else {
    if(i36<1.2261788845062256){
     s0+=9.0;
     s1+=452.0;
    } else {
     s0+=54.0;
     s1+=84.0;
    }
   }
  }
 }
}
if(i4<0.07196682691574097){
 if(i1<0.07872918248176575){
  if(i3<0.0006218850612640381){
   if(i46<0.0015202043578028679){
    if(i26<1.008175253868103){
     s0+=59801.0;
     s1+=594.0;
    } else {
     s0+=2123.0;
     s1+=279.0;
    }
   } else {
    if(i12<0.9850629568099976){
     s0+=2835.0;
     s1+=89.0;
    } else {
     s0+=3795.0;
     s1+=942.0;
    }
   }
  } else {
   if(i47<0.00024036344257183373){
    if(i1<0.051254987716674805){
     s0+=77.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i5<1.0042097568511963){
     s0+=223.0;
     s1+=308.0;
    } else {
     s0+=23.0;
     s1+=519.0;
    }
   }
  }
 } else {
  if(i18<0.9981365203857422){
   if(i45<-9.59924545895774e-06){
    if(i43<0.004810645245015621){
     s0+=5.0;
    } else {
     s1+=4.0;
    }
   } else {
    s0+=104.0;
   }
  } else {
   if(i14<-0.003974467515945435){
    s0+=18.0;
   } else {
    if(i47<0.00026525568682700396){
     s0+=27.0;
     s1+=2.0;
    } else {
     s0+=62.0;
     s1+=1948.0;
    }
   }
  }
 }
} else {
 if(i22<9.173154830932617e-05){
  if(i11<-0.00038567185401916504){
   if(i38<0.009653685614466667){
    if(i53<0.01982232928276062){
     s1+=1.0;
    } else {
     s0+=473.0;
     s1+=5.0;
    }
   } else {
    if(i52<0.035363584756851196){
     s1+=8.0;
    } else {
     s0+=17.0;
    }
   }
  } else {
   if(i2<0.11697137355804443){
    if(i61<0.005839496850967407){
     s0+=604.0;
     s1+=771.0;
    } else {
     s0+=459.0;
     s1+=57.0;
    }
   } else {
    if(i33<0.0006421857979148626){
     s0+=173.0;
     s1+=39.0;
    } else {
     s0+=221.0;
     s1+=3011.0;
    }
   }
  }
 } else {
  if(i15<0.00021782517433166504){
   if(i45<-1.9766662262554746e-06){
    if(i5<0.9990766048431396){
     s0+=3.0;
    } else {
     s0+=51.0;
     s1+=8533.0;
    }
   } else {
    if(i39<-1.0877847671508789e-05){
     s0+=29.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  } else {
   s0+=10.0;
  }
 }
}
if(i11<0.0004360079765319824){
 if(i2<0.07751670479774475){
  if(i50<0.007525504566729069){
   if(i25<0.01642666384577751){
    if(i29<1.008192539215088){
     s0+=55729.0;
     s1+=415.0;
    } else {
     s0+=383.0;
     s1+=113.0;
    }
   } else {
    if(i31<1.196009874343872){
     s0+=2235.0;
     s1+=707.0;
    } else {
     s0+=5936.0;
     s1+=9.0;
    }
   }
  } else {
   if(i2<0.04235726594924927){
    if(i18<0.9982595443725586){
     s0+=998.0;
     s1+=3.0;
    } else {
     s0+=1907.0;
     s1+=394.0;
    }
   } else {
    if(i65<-0.002172572771087289){
     s0+=281.0;
     s1+=42.0;
    } else {
     s0+=119.0;
     s1+=240.0;
    }
   }
  }
 } else {
  if(i11<-0.0003746151924133301){
   if(i69<1.00026535987854){
    if(i43<0.021091105416417122){
     s0+=464.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i0<0.10461455583572388){
     s0+=42.0;
    } else {
     s1+=18.0;
    }
   }
  } else {
   if(i6<-1.3797138308291323e-05){
    if(i69<1.0013718605041504){
     s0+=227.0;
     s1+=3422.0;
    } else {
     s0+=144.0;
     s1+=249.0;
    }
   } else {
    if(i53<0.042293041944503784){
     s0+=2.0;
     s1+=155.0;
    } else {
     s0+=674.0;
     s1+=153.0;
    }
   }
  }
 }
} else {
 if(i9<1.043617844581604){
  if(i11<0.0007159113883972168){
   if(i18<1.0011630058288574){
    if(i2<0.16719427704811096){
     s0+=276.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s0+=3.0;
     s1+=186.0;
    } else {
     s0+=486.0;
     s1+=76.0;
    }
   }
  } else {
   if(i49<1.0004851818084717){
    if(i3<0.0007345676422119141){
     s0+=57.0;
     s1+=79.0;
    } else {
     s0+=3.0;
     s1+=425.0;
    }
   } else {
    if(i8<4.029273986816406e-05){
     s0+=110.0;
    } else {
     s0+=6.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i3<0.0005280375480651855){
   if(i54<0.06810975074768066){
    if(i30<1.1084140539169312){
     s0+=13.0;
     s1+=68.0;
    } else {
     s0+=487.0;
     s1+=69.0;
    }
   } else {
    if(i37<0.023705795407295227){
     s0+=118.0;
     s1+=82.0;
    } else {
     s0+=20.0;
     s1+=305.0;
    }
   }
  } else {
   if(i23<1.0049240589141846){
    if(i68<0.0004206047160550952){
     s0+=116.0;
     s1+=215.0;
    } else {
     s0+=89.0;
     s1+=1929.0;
    }
   } else {
    if(i69<1.0055737495422363){
     s0+=51.0;
     s1+=7892.0;
    } else {
     s0+=8.0;
    }
   }
  }
 }
}
if(i1<0.0832146406173706){
 if(i3<0.0005721151828765869){
  if(i51<-0.027459532022476196){
   if(i2<0.03612908720970154){
    if(i18<0.9983083009719849){
     s0+=791.0;
     s1+=4.0;
    } else {
     s0+=1516.0;
     s1+=313.0;
    }
   } else {
    if(i21<1.023979663848877){
     s0+=113.0;
     s1+=335.0;
    } else {
     s0+=129.0;
     s1+=3.0;
    }
   }
  } else {
   if(i47<0.0002948506735265255){
    if(i5<1.0024954080581665){
     s0+=45685.0;
     s1+=82.0;
    } else {
     s0+=26.0;
     s1+=15.0;
    }
   } else {
    if(i35<1.100754976272583){
     s0+=4608.0;
     s1+=1096.0;
    } else {
     s0+=16095.0;
     s1+=309.0;
    }
   }
  }
 } else {
  if(i69<0.9975895881652832){
   if(i19<0.9347178936004639){
    s1+=1.0;
   } else {
    s0+=137.0;
   }
  } else {
   if(i44<0.0020591490902006626){
    if(i34<0.0001625588338356465){
     s0+=25.0;
     s1+=2.0;
    } else {
     s1+=640.0;
    }
   } else {
    if(i63<-0.0010873079299926758){
     s0+=75.0;
     s1+=366.0;
    } else {
     s0+=179.0;
     s1+=34.0;
    }
   }
  }
 }
} else {
 if(i42<0.9988040328025818){
  if(i56<0.003231124486774206){
   if(i13<1.0403889417648315){
    if(i13<1.0398577451705933){
     s0+=59.0;
    } else {
     s1+=1.0;
    }
   } else {
    s0+=335.0;
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i0<0.12574806809425354){
   if(i70<-0.0190792977809906){
    if(i6<-0.00015203148359432817){
     s1+=15.0;
    } else {
     s0+=521.0;
     s1+=40.0;
    }
   } else {
    if(i65<-0.006292354315519333){
     s0+=160.0;
     s1+=49.0;
    } else {
     s0+=171.0;
     s1+=2345.0;
    }
   }
  } else {
   if(i31<1.3008317947387695){
    if(i51<0.10567799210548401){
     s0+=79.0;
     s1+=2985.0;
    } else {
     s0+=302.0;
     s1+=324.0;
    }
   } else {
    if(i8<-2.625584602355957e-05){
     s0+=5.0;
     s1+=164.0;
    } else {
     s1+=8108.0;
    }
   }
  }
 }
}
if(i6<-8.16534593468532e-05){
 if(i0<0.05776706337928772){
  if(i12<0.9968681335449219){
   if(i50<0.02462879754602909){
    if(i76<-4.586629074765369e-06){
     s0+=14.0;
     s1+=16.0;
    } else {
     s0+=552.0;
     s1+=8.0;
    }
   } else {
    if(i35<1.4299505949020386){
     s0+=9.0;
    } else {
     s0+=15.0;
     s1+=62.0;
    }
   }
  } else {
   if(i5<0.9991172552108765){
    s0+=2.0;
   } else {
    if(i68<9.371067426400259e-05){
     s0+=1.0;
    } else {
     s1+=122.0;
    }
   }
  }
 } else {
  if(i49<0.9993917942047119){
   s0+=60.0;
  } else {
   if(i12<0.991640567779541){
    if(i37<0.02906496822834015){
     s0+=94.0;
     s1+=37.0;
    } else {
     s1+=448.0;
    }
   } else {
    if(i37<0.016764603555202484){
     s0+=54.0;
     s1+=1237.0;
    } else {
     s0+=6.0;
     s1+=8992.0;
    }
   }
  }
 }
} else {
 if(i34<0.00031541407224722207){
  if(i18<1.0019950866699219){
   if(i0<0.08276936411857605){
    if(i30<1.0598037242889404){
     s0+=41432.0;
    } else {
     s0+=12282.0;
     s1+=367.0;
    }
   } else {
    if(i76<2.9141519917175174e-06){
     s0+=30.0;
     s1+=130.0;
    } else {
     s0+=226.0;
     s1+=7.0;
    }
   }
  } else {
   if(i31<1.174043893814087){
    s1+=88.0;
   } else {
    s0+=16.0;
   }
  }
 } else {
  if(i3<0.00014650821685791016){
   if(i3<-0.0007506012916564941){
    if(i7<1.0143306255340576){
     s0+=7155.0;
     s1+=182.0;
    } else {
     s0+=12.0;
     s1+=15.0;
    }
   } else {
    if(i36<1.0703742504119873){
     s0+=1537.0;
    } else {
     s0+=6381.0;
     s1+=2813.0;
    }
   }
  } else {
   if(i47<0.0010518210474401712){
    if(i49<0.9993394613265991){
     s0+=56.0;
    } else {
     s0+=102.0;
     s1+=1373.0;
    }
   } else {
    if(i17<0.0029244055040180683){
     s0+=659.0;
     s1+=233.0;
    } else {
     s0+=281.0;
     s1+=1146.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i1<0.08208942413330078){
  if(i28<0.0003061954921577126){
   if(i57<0.000851720804348588){
    if(i73<1.0061726570129395){
     s0+=54900.0;
     s1+=279.0;
    } else {
     s0+=984.0;
     s1+=123.0;
    }
   } else {
    if(i43<0.0008431951282545924){
     s0+=196.0;
     s1+=191.0;
    } else {
     s0+=607.0;
     s1+=2.0;
    }
   }
  } else {
   if(i35<1.100754976272583){
    if(i33<0.00043200625805184245){
     s0+=2334.0;
     s1+=71.0;
    } else {
     s0+=567.0;
     s1+=932.0;
    }
   } else {
    if(i3<0.00032573938369750977){
     s0+=9099.0;
     s1+=425.0;
    } else {
     s0+=183.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i32<0.06447157263755798){
   if(i77<0.9939017295837402){
    s0+=85.0;
   } else {
    if(i40<0.049348533153533936){
     s0+=26.0;
     s1+=1414.0;
    } else {
     s0+=30.0;
     s1+=49.0;
    }
   }
  } else {
   if(i17<0.0052635385654866695){
    if(i1<0.10606175661087036){
     s0+=629.0;
     s1+=103.0;
    } else {
     s0+=682.0;
     s1+=703.0;
    }
   } else {
    if(i6<-6.885410584800411e-06){
     s0+=88.0;
     s1+=1210.0;
    } else {
     s0+=22.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i47<0.0002534300438128412){
  if(i73<1.0088911056518555){
   s0+=191.0;
  } else {
   if(i0<0.04444628953933716){
    s0+=4.0;
   } else {
    s1+=13.0;
   }
  }
 } else {
  if(i1<0.06430476903915405){
   if(i43<0.0024638706818223){
    s1+=248.0;
   } else {
    if(i57<0.0006450813380070031){
     s0+=139.0;
     s1+=7.0;
    } else {
     s0+=81.0;
     s1+=240.0;
    }
   }
  } else {
   if(i41<9.057822171598673e-05){
    if(i6<-4.330423689680174e-05){
     s0+=3.0;
     s1+=8653.0;
    } else {
     s0+=54.0;
     s1+=215.0;
    }
   } else {
    if(i37<0.02234252542257309){
     s0+=98.0;
     s1+=177.0;
    } else {
     s0+=6.0;
     s1+=2080.0;
    }
   }
  }
 }
}
if(i5<1.0024782419204712){
 if(i9<1.0452215671539307){
  if(i34<0.00030651327688246965){
   if(i61<-0.0043950676918029785){
    if(i29<0.9835982322692871){
     s0+=8.0;
    } else {
     s1+=31.0;
    }
   } else {
    if(i7<1.0094983577728271){
     s0+=53284.0;
     s1+=239.0;
    } else {
     s0+=31.0;
     s1+=33.0;
    }
   }
  } else {
   if(i31<1.1812903881072998){
    if(i11<-0.00014674663543701172){
     s0+=2618.0;
     s1+=315.0;
    } else {
     s0+=1444.0;
     s1+=1094.0;
    }
   } else {
    if(i2<0.0888051688671112){
     s0+=7750.0;
     s1+=136.0;
    } else {
     s0+=10.0;
     s1+=100.0;
    }
   }
  }
 } else {
  if(i1<0.09566336870193481){
   if(i3<0.00014829635620117188){
    if(i25<0.017824377864599228){
     s0+=2697.0;
     s1+=134.0;
    } else {
     s0+=1073.0;
     s1+=512.0;
    }
   } else {
    if(i63<0.002744048833847046){
     s0+=354.0;
     s1+=459.0;
    } else {
     s0+=374.0;
     s1+=9.0;
    }
   }
  } else {
   if(i53<0.07120281457901001){
    if(i33<0.0004537379718385637){
     s0+=19.0;
     s1+=4.0;
    } else {
     s0+=26.0;
     s1+=1621.0;
    }
   } else {
    if(i71<0.0004876644234173){
     s0+=778.0;
     s1+=567.0;
    } else {
     s0+=200.0;
     s1+=665.0;
    }
   }
  }
 }
} else {
 if(i1<0.06511685252189636){
  if(i64<-4.515252385317581e-06){
   if(i35<1.5682398080825806){
    if(i60<0.0011290907859802246){
     s0+=14.0;
     s1+=466.0;
    } else {
     s0+=15.0;
     s1+=3.0;
    }
   } else {
    if(i26<0.9265287518501282){
     s0+=9.0;
     s1+=33.0;
    } else {
     s0+=63.0;
     s1+=4.0;
    }
   }
  } else {
   if(i56<0.0015738208312541246){
    if(i18<1.0006619691848755){
     s1+=2.0;
    } else {
     s0+=138.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i0<0.13283678889274597){
   if(i55<0.014664947986602783){
    if(i48<0.0030058324337005615){
     s0+=14.0;
     s1+=1631.0;
    } else {
     s0+=14.0;
     s1+=82.0;
    }
   } else {
    if(i1<0.12127688527107239){
     s0+=78.0;
     s1+=14.0;
    } else {
     s0+=8.0;
     s1+=21.0;
    }
   }
  } else {
   if(i37<0.016028467565774918){
    if(i12<1.0062010288238525){
     s0+=16.0;
     s1+=23.0;
    } else {
     s1+=770.0;
    }
   } else {
    s1+=8244.0;
   }
  }
 }
}
if(i2<0.07871010899543762){
 if(i23<1.0034816265106201){
  if(i13<1.0412026643753052){
   if(i57<0.0007554101757705212){
    if(i26<1.0131683349609375){
     s0+=54454.0;
     s1+=183.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i33<0.0006586025701835752){
     s0+=1300.0;
     s1+=343.0;
    } else {
     s0+=3472.0;
     s1+=73.0;
    }
   }
  } else {
   if(i16<0.9897572994232178){
    if(i2<0.016911447048187256){
     s0+=813.0;
     s1+=102.0;
    } else {
     s0+=381.0;
     s1+=479.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=2512.0;
     s1+=840.0;
    } else {
     s0+=5615.0;
     s1+=217.0;
    }
   }
  }
 } else {
  if(i66<1.0741579899331555e-05){
   if(i64<-5.303142188495258e-06){
    if(i35<1.5944836139678955){
     s0+=2.0;
     s1+=826.0;
    } else {
     s0+=63.0;
     s1+=29.0;
    }
   } else {
    if(i27<0.9931570887565613){
     s0+=1.0;
     s1+=34.0;
    } else {
     s0+=108.0;
     s1+=2.0;
    }
   }
  } else {
   if(i13<1.0825910568237305){
    if(i67<0.011704850941896439){
     s0+=4.0;
     s1+=4.0;
    } else {
     s0+=620.0;
     s1+=1.0;
    }
   } else {
    if(i56<0.003090989077463746){
     s0+=27.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=89.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985148906707764){
  if(i38<0.0076316650956869125){
   if(i11<-0.00042128562927246094){
    s0+=411.0;
   } else {
    if(i45<-1.0199353710049763e-05){
     s1+=5.0;
    } else {
     s0+=55.0;
    }
   }
  } else {
   if(i1<0.10126972198486328){
    s0+=13.0;
   } else {
    s1+=11.0;
   }
  }
 } else {
  if(i0<0.12541833519935608){
   if(i51<0.05427470803260803){
    if(i19<1.032268762588501){
     s0+=243.0;
     s1+=2084.0;
    } else {
     s0+=98.0;
     s1+=24.0;
    }
   } else {
    if(i27<0.9832769632339478){
     s0+=1.0;
     s1+=13.0;
    } else {
     s0+=573.0;
     s1+=60.0;
    }
   }
  } else {
   if(i30<1.2833635807037354){
    if(i6<-2.152561501134187e-05){
     s0+=117.0;
     s1+=4295.0;
    } else {
     s0+=258.0;
     s1+=323.0;
    }
   } else {
    if(i20<1.1513006687164307){
     s0+=1.0;
     s1+=535.0;
    } else {
     s1+=6528.0;
    }
   }
  }
 }
}
if(i6<-7.076597830746323e-05){
 if(i12<0.9798887372016907){
  if(i8<3.62396240234375e-05){
   if(i12<0.9779858589172363){
    if(i56<0.00653499411419034){
     s0+=627.0;
     s1+=8.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i7<0.9698367118835449){
     s1+=12.0;
    } else {
     s0+=35.0;
     s1+=3.0;
    }
   }
  } else {
   if(i68<0.0015997526934370399){
    if(i42<1.0004065036773682){
     s1+=4.0;
    } else {
     s0+=20.0;
    }
   } else {
    s1+=81.0;
   }
  }
 } else {
  if(i64<-2.8911592380609363e-05){
   s0+=124.0;
  } else {
   if(i73<0.996715784072876){
    if(i1<0.11346906423568726){
     s0+=221.0;
     s1+=334.0;
    } else {
     s0+=25.0;
     s1+=1358.0;
    }
   } else {
    if(i69<1.0022637844085693){
     s0+=5.0;
     s1+=9303.0;
    } else {
     s0+=46.0;
     s1+=372.0;
    }
   }
  }
 }
} else {
 if(i13<1.0452277660369873){
  if(i61<-0.002347320318222046){
   if(i12<0.9874355792999268){
    if(i15<2.765655517578125e-05){
     s0+=2245.0;
     s1+=49.0;
    } else {
     s0+=6.0;
     s1+=7.0;
    }
   } else {
    if(i39<-3.55839729309082e-05){
     s0+=761.0;
     s1+=52.0;
    } else {
     s0+=554.0;
     s1+=467.0;
    }
   }
  } else {
   if(i13<1.0375813245773315){
    if(i7<1.009902000427246){
     s0+=52395.0;
     s1+=220.0;
    } else {
     s0+=8.0;
     s1+=9.0;
    }
   } else {
    if(i3<0.0005269944667816162){
     s0+=5763.0;
     s1+=329.0;
    } else {
     s0+=25.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i25<0.023396926000714302){
   if(i23<1.0006840229034424){
    if(i12<1.0056439638137817){
     s0+=5580.0;
     s1+=613.0;
    } else {
     s0+=270.0;
     s1+=301.0;
    }
   } else {
    if(i30<1.1047927141189575){
     s0+=154.0;
     s1+=784.0;
    } else {
     s0+=897.0;
     s1+=204.0;
    }
   }
  } else {
   if(i5<0.9965766668319702){
    if(i17<0.01247098483145237){
     s0+=658.0;
     s1+=64.0;
    } else {
     s0+=7.0;
     s1+=34.0;
    }
   } else {
    if(i1<0.0657123327255249){
     s0+=451.0;
     s1+=379.0;
    } else {
     s0+=379.0;
     s1+=1953.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i23<1.0030670166015625){
  if(i1<0.08293747901916504){
   if(i57<0.0007541314698755741){
    if(i25<0.016617346554994583){
     s0+=53533.0;
     s1+=182.0;
    } else {
     s0+=4716.0;
     s1+=333.0;
    }
   } else {
    if(i31<1.1800893545150757){
     s0+=1984.0;
     s1+=753.0;
    } else {
     s0+=3943.0;
     s1+=74.0;
    }
   }
  } else {
   if(i5<0.9955969452857971){
    if(i69<1.000802755355835){
     s0+=117.0;
    } else {
     s0+=29.0;
     s1+=11.0;
    }
   } else {
    if(i38<0.000359527301043272){
     s0+=20.0;
    } else {
     s0+=66.0;
     s1+=585.0;
    }
   }
  }
 } else {
  if(i22<-0.0002218484878540039){
   if(i66<1.0198393283644691e-05){
    s1+=19.0;
   } else {
    if(i1<0.09881579875946045){
     s0+=640.0;
     s1+=21.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i45<-1.4704144632560201e-05){
    if(i3<5.161762237548828e-05){
     s0+=11.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=627.0;
    }
   } else {
    if(i0<0.06404536962509155){
     s0+=111.0;
     s1+=11.0;
    } else {
     s0+=2.0;
     s1+=75.0;
    }
   }
  }
 }
} else {
 if(i44<0.010467801243066788){
  if(i2<0.08304375410079956){
   if(i23<1.001416563987732){
    if(i56<0.001751262228935957){
     s0+=3169.0;
     s1+=319.0;
    } else {
     s0+=706.0;
     s1+=370.0;
    }
   } else {
    if(i22<0.00021445751190185547){
     s0+=506.0;
     s1+=505.0;
    } else {
     s1+=439.0;
    }
   }
  } else {
   if(i18<0.9986692667007446){
    s0+=361.0;
   } else {
    if(i23<1.0029957294464111){
     s0+=884.0;
     s1+=2301.0;
    } else {
     s0+=109.0;
     s1+=3734.0;
    }
   }
  }
 } else {
  if(i59<-0.00018854653171729296){
   if(i11<-0.0007255077362060547){
    s0+=3.0;
   } else {
    if(i59<-0.00033870976767502725){
     s1+=6372.0;
    } else {
     s0+=5.0;
     s1+=184.0;
    }
   }
  } else {
   if(i1<0.10136747360229492){
    if(i55<-0.019880950450897217){
     s0+=10.0;
     s1+=34.0;
    } else {
     s0+=106.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.011393716558814049){
     s0+=2.0;
     s1+=232.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i1<0.08202168345451355){
 if(i51<-0.02877640724182129){
  if(i45<-8.671974683238659e-06){
   if(i14<-0.0022276341915130615){
    if(i3<0.00030219554901123047){
     s0+=296.0;
     s1+=59.0;
    } else {
     s0+=12.0;
     s1+=30.0;
    }
   } else {
    if(i19<1.0153238773345947){
     s0+=131.0;
     s1+=619.0;
    } else {
     s0+=70.0;
     s1+=32.0;
    }
   }
  } else {
   if(i1<0.03815793991088867){
    if(i49<0.9998126029968262){
     s0+=785.0;
     s1+=158.0;
    } else {
     s0+=858.0;
     s1+=17.0;
    }
   } else {
    if(i35<1.1919987201690674){
     s0+=32.0;
     s1+=124.0;
    } else {
     s0+=82.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i8<4.178285598754883e-05){
   if(i13<1.042891263961792){
    if(i74<-0.0006198585033416748){
     s0+=9217.0;
     s1+=397.0;
    } else {
     s0+=50458.0;
     s1+=193.0;
    }
   } else {
    if(i25<0.017036180943250656){
     s0+=5490.0;
     s1+=331.0;
    } else {
     s0+=1533.0;
     s1+=573.0;
    }
   }
  } else {
   if(i1<0.058408647775650024){
    if(i42<1.000960111618042){
     s0+=266.0;
     s1+=22.0;
    } else {
     s0+=75.0;
     s1+=76.0;
    }
   } else {
    if(i61<0.003305375576019287){
     s0+=38.0;
     s1+=375.0;
    } else {
     s0+=76.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i6<-1.2005129065073561e-05){
  if(i5<1.0021264553070068){
   if(i37<0.023414714261889458){
    if(i55<0.016327977180480957){
     s0+=145.0;
     s1+=1271.0;
    } else {
     s0+=397.0;
     s1+=204.0;
    }
   } else {
    if(i20<1.063935399055481){
     s0+=39.0;
     s1+=9.0;
    } else {
     s0+=50.0;
     s1+=1754.0;
    }
   }
  } else {
   if(i23<1.003706932067871){
    if(i37<0.011992107145488262){
     s0+=64.0;
     s1+=311.0;
    } else {
     s0+=9.0;
     s1+=1689.0;
    }
   } else {
    if(i6<-7.830027607269585e-05){
     s0+=8.0;
     s1+=8092.0;
    } else {
     s0+=18.0;
     s1+=470.0;
    }
   }
  }
 } else {
  if(i40<0.04120555520057678){
   if(i18<0.9978463053703308){
    s0+=65.0;
   } else {
    if(i22<-9.033083915710449e-05){
     s0+=2.0;
     s1+=191.0;
    } else {
     s0+=7.0;
     s1+=14.0;
    }
   }
  } else {
   if(i76<-2.7884802875632886e-06){
    s1+=24.0;
   } else {
    if(i32<0.0667402446269989){
     s0+=40.0;
     s1+=29.0;
    } else {
     s0+=813.0;
     s1+=89.0;
    }
   }
  }
 }
}
if(i2<0.08023786544799805){
 if(i12<1.0060126781463623){
  if(i48<-0.0018261373043060303){
   if(i66<-8.149884251906769e-07){
    if(i16<1.0082285404205322){
     s0+=16.0;
     s1+=105.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i39<-3.421306610107422e-05){
     s0+=1625.0;
     s1+=92.0;
    } else {
     s0+=1659.0;
     s1+=815.0;
    }
   }
  } else {
   if(i19<1.0066816806793213){
    if(i1<0.06724727153778076){
     s0+=61768.0;
     s1+=694.0;
    } else {
     s0+=1911.0;
     s1+=381.0;
    }
   } else {
    if(i45<-8.663579137646593e-06){
     s0+=558.0;
     s1+=287.0;
    } else {
     s0+=1337.0;
     s1+=88.0;
    }
   }
  }
 } else {
  if(i11<0.00044906139373779297){
   if(i35<1.1386182308197021){
    s1+=98.0;
   } else {
    if(i36<1.1658520698547363){
     s1+=5.0;
    } else {
     s0+=562.0;
     s1+=11.0;
    }
   }
  } else {
   if(i14<0.0014270544052124023){
    if(i35<1.2392117977142334){
     s1+=210.0;
    } else {
     s0+=82.0;
     s1+=26.0;
    }
   } else {
    s1+=557.0;
   }
  }
 }
} else {
 if(i14<0.00024273991584777832){
  if(i8<-5.358457565307617e-05){
   if(i43<0.007041016593575478){
    if(i11<-0.00039952993392944336){
     s0+=327.0;
    } else {
     s0+=31.0;
     s1+=9.0;
    }
   } else {
    if(i17<0.006514617241919041){
     s0+=26.0;
     s1+=4.0;
    } else {
     s0+=6.0;
     s1+=112.0;
    }
   }
  } else {
   if(i6<-1.2001353752566501e-05){
    if(i71<0.0003413712838664651){
     s0+=324.0;
     s1+=902.0;
    } else {
     s0+=179.0;
     s1+=2326.0;
    }
   } else {
    if(i25<0.029388513416051865){
     s0+=498.0;
     s1+=117.0;
    } else {
     s0+=94.0;
     s1+=176.0;
    }
   }
  }
 } else {
  if(i45<-1.903334236885712e-06){
   if(i15<1.710653305053711e-05){
    if(i39<0.00017458200454711914){
     s0+=74.0;
     s1+=1983.0;
    } else {
     s0+=21.0;
     s1+=23.0;
    }
   } else {
    if(i68<0.0001699772255960852){
     s0+=1.0;
     s1+=174.0;
    } else {
     s1+=7843.0;
    }
   }
  } else {
   if(i31<1.2604451179504395){
    if(i30<1.0626490116119385){
     s0+=4.0;
    } else {
     s1+=28.0;
    }
   } else {
    s0+=74.0;
   }
  }
 }
}
if(i1<0.08281055092811584){
 if(i11<0.0005856752395629883){
  if(i61<-0.002063751220703125){
   if(i22<-0.0002906918525695801){
    if(i32<0.06880012154579163){
     s0+=2795.0;
     s1+=51.0;
    } else {
     s0+=14.0;
     s1+=5.0;
    }
   } else {
    if(i43<0.0003955981810577214){
     s0+=1206.0;
     s1+=9.0;
    } else {
     s0+=1817.0;
     s1+=936.0;
    }
   }
  } else {
   if(i58<0.04532139375805855){
    if(i18<1.0006461143493652){
     s0+=53195.0;
     s1+=222.0;
    } else {
     s0+=2611.0;
     s1+=262.0;
    }
   } else {
    if(i6<-2.0347699319245294e-05){
     s0+=1994.0;
     s1+=447.0;
    } else {
     s0+=5033.0;
     s1+=206.0;
    }
   }
  }
 } else {
  if(i3<0.0006837546825408936){
   if(i5<1.0015716552734375){
    if(i51<-0.05463838577270508){
     s0+=7.0;
     s1+=41.0;
    } else {
     s0+=603.0;
     s1+=31.0;
    }
   } else {
    if(i55<-0.0013693571090698242){
     s1+=61.0;
    } else {
     s0+=69.0;
     s1+=33.0;
    }
   }
  } else {
   if(i51<0.03388822078704834){
    if(i33<0.0071955472230911255){
     s0+=13.0;
     s1+=660.0;
    } else {
     s0+=76.0;
     s1+=130.0;
    }
   } else {
    s0+=42.0;
   }
  }
 }
} else {
 if(i6<-1.573651570652146e-05){
  if(i6<-4.803873525816016e-05){
   if(i18<0.9962798357009888){
    s0+=16.0;
   } else {
    if(i8<5.6803226470947266e-05){
     s0+=167.0;
     s1+=2537.0;
    } else {
     s0+=43.0;
     s1+=9555.0;
    }
   }
  } else {
   if(i55<0.020001471042633057){
    if(i36<1.1820628643035889){
     s0+=16.0;
     s1+=913.0;
    } else {
     s0+=116.0;
     s1+=290.0;
    }
   } else {
    if(i4<0.22121766209602356){
     s0+=261.0;
     s1+=91.0;
    } else {
     s0+=21.0;
     s1+=148.0;
    }
   }
  }
 } else {
  if(i71<0.0005612039240077138){
   if(i42<1.000701665878296){
    if(i65<-0.004575162194669247){
     s0+=613.0;
     s1+=46.0;
    } else {
     s0+=302.0;
     s1+=146.0;
    }
   } else {
    if(i33<0.002522205002605915){
     s1+=88.0;
    } else {
     s0+=6.0;
    }
   }
  } else {
   if(i70<-0.02301843836903572){
    if(i38<0.0053858463652431965){
     s0+=114.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=44.0;
    }
   } else {
    if(i11<-0.000553429126739502){
     s0+=4.0;
    } else {
     s0+=3.0;
     s1+=132.0;
    }
   }
  }
 }
}
if(i0<0.08579924702644348){
 if(i18<1.001893162727356){
  if(i13<1.0451585054397583){
   if(i63<-0.0012702345848083496){
    if(i1<0.05719223618507385){
     s0+=4124.0;
     s1+=349.0;
    } else {
     s0+=162.0;
     s1+=143.0;
    }
   } else {
    if(i7<1.0104639530181885){
     s0+=57244.0;
     s1+=357.0;
    } else {
     s0+=10.0;
     s1+=14.0;
    }
   }
  } else {
   if(i0<0.06549221277236938){
    if(i36<1.1037919521331787){
     s0+=1546.0;
     s1+=570.0;
    } else {
     s0+=4334.0;
     s1+=185.0;
    }
   } else {
    if(i25<0.01700759492814541){
     s0+=741.0;
     s1+=171.0;
    } else {
     s0+=313.0;
     s1+=371.0;
    }
   }
  }
 } else {
  if(i69<1.0021694898605347){
   if(i55<0.005737423896789551){
    if(i12<0.9979681372642517){
     s0+=86.0;
     s1+=226.0;
    } else {
     s0+=24.0;
     s1+=697.0;
    }
   } else {
    if(i74<-0.00020143389701843262){
     s0+=121.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=23.0;
    }
   }
  } else {
   if(i70<0.002666589803993702){
    if(i55<-0.005465447902679443){
     s0+=61.0;
     s1+=38.0;
    } else {
     s0+=378.0;
     s1+=14.0;
    }
   } else {
    if(i63<0.0008915066719055176){
     s0+=3.0;
     s1+=21.0;
    } else {
     s0+=8.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i6<-1.8291888409294188e-05){
  if(i3<0.0006261467933654785){
   if(i40<0.04668837785720825){
    if(i39<-0.0002675354480743408){
     s0+=8.0;
    } else {
     s0+=46.0;
     s1+=1970.0;
    }
   } else {
    if(i67<0.11753406375646591){
     s0+=459.0;
     s1+=659.0;
    } else {
     s0+=24.0;
     s1+=501.0;
    }
   }
  } else {
   if(i30<1.2589144706726074){
    if(i60<0.0070473551750183105){
     s0+=39.0;
     s1+=3138.0;
    } else {
     s0+=48.0;
     s1+=231.0;
    }
   } else {
    if(i37<0.005679704248905182){
     s0+=5.0;
     s1+=35.0;
    } else {
     s0+=2.0;
     s1+=6886.0;
    }
   }
  }
 } else {
  if(i11<-0.00039246678352355957){
   s0+=597.0;
  } else {
   if(i27<1.0129327774047852){
    if(i71<0.00023742075427435338){
     s0+=81.0;
     s1+=73.0;
    } else {
     s0+=56.0;
     s1+=318.0;
    }
   } else {
    if(i38<0.0047607943415641785){
     s0+=498.0;
     s1+=73.0;
    } else {
     s0+=67.0;
     s1+=97.0;
    }
   }
  }
 }
}
if(i1<0.08316218852996826){
 if(i18<1.0018954277038574){
  if(i13<1.0451608896255493){
   if(i48<-0.0014933645725250244){
    if(i74<-0.0032924115657806396){
     s0+=803.0;
     s1+=7.0;
    } else {
     s0+=1420.0;
     s1+=252.0;
    }
   } else {
    if(i21<1.008404016494751){
     s0+=59659.0;
     s1+=455.0;
    } else {
     s0+=74.0;
     s1+=30.0;
    }
   }
  } else {
   if(i30<1.1034480333328247){
    if(i25<0.014364330098032951){
     s0+=1994.0;
     s1+=322.0;
    } else {
     s0+=379.0;
     s1+=739.0;
    }
   } else {
    if(i63<-0.007010102272033691){
     s0+=625.0;
     s1+=158.0;
    } else {
     s0+=3956.0;
     s1+=154.0;
    }
   }
  }
 } else {
  if(i8<3.36766242980957e-05){
   if(i48<-0.006509631872177124){
    if(i30<1.229560136795044){
     s1+=23.0;
    } else {
     s0+=28.0;
     s1+=19.0;
    }
   } else {
    if(i50<0.01693078875541687){
     s0+=474.0;
     s1+=27.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i35<1.5682398080825806){
    if(i47<0.00021509187354240566){
     s0+=11.0;
    } else {
     s0+=50.0;
     s1+=793.0;
    }
   } else {
    if(i55<-0.042200833559036255){
     s0+=1.0;
     s1+=84.0;
    } else {
     s0+=93.0;
     s1+=7.0;
    }
   }
  }
 }
} else {
 if(i11<-0.0004030168056488037){
  if(i39<-0.00013786554336547852){
   if(i3<-0.0004949569702148438){
    s0+=382.0;
   } else {
    if(i19<0.9998643398284912){
     s1+=1.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i52<0.04129260778427124){
    if(i34<0.002666155342012644){
     s1+=14.0;
    } else {
     s0+=4.0;
    }
   } else {
    s0+=28.0;
   }
  }
 } else {
  if(i48<0.003945887088775635){
   if(i6<-1.842767233029008e-05){
    if(i60<0.008114427328109741){
     s0+=47.0;
     s1+=7965.0;
    } else {
     s0+=28.0;
     s1+=155.0;
    }
   } else {
    if(i37<0.00995058286935091){
     s0+=82.0;
     s1+=56.0;
    } else {
     s0+=78.0;
     s1+=364.0;
    }
   }
  } else {
   if(i38<0.006126588676124811){
    if(i3<0.00048100948333740234){
     s0+=807.0;
     s1+=445.0;
    } else {
     s0+=87.0;
     s1+=535.0;
    }
   } else {
    if(i1<0.13812008500099182){
     s0+=104.0;
     s1+=22.0;
    } else {
     s0+=19.0;
     s1+=4384.0;
    }
   }
  }
 }
}
if(i8<3.7610530853271484e-05){
 if(i4<0.07074183225631714){
  if(i16<1.0077147483825684){
   if(i13<1.0447232723236084){
    if(i46<0.0015183580107986927){
     s0+=57035.0;
     s1+=423.0;
    } else {
     s0+=3840.0;
     s1+=397.0;
    }
   } else {
    if(i67<0.01963738352060318){
     s0+=2929.0;
     s1+=210.0;
    } else {
     s0+=2519.0;
     s1+=926.0;
    }
   }
  } else {
   if(i1<0.07495155930519104){
    if(i44<0.0013431892730295658){
     s0+=487.0;
     s1+=230.0;
    } else {
     s0+=1472.0;
     s1+=30.0;
    }
   } else {
    if(i31<1.2021880149841309){
     s0+=22.0;
     s1+=425.0;
    } else {
     s0+=34.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i52<0.025510549545288086){
   if(i53<0.04753074049949646){
    if(i18<0.9980766177177429){
     s0+=4.0;
    } else {
     s0+=10.0;
     s1+=914.0;
    }
   } else {
    if(i2<0.10329484939575195){
     s0+=311.0;
     s1+=132.0;
    } else {
     s0+=127.0;
     s1+=707.0;
    }
   }
  } else {
   if(i1<0.10917219519615173){
    if(i62<1.0252655744552612){
     s0+=697.0;
     s1+=197.0;
    } else {
     s0+=316.0;
     s1+=3.0;
    }
   } else {
    if(i52<0.051637351512908936){
     s0+=104.0;
     s1+=530.0;
    } else {
     s0+=456.0;
     s1+=430.0;
    }
   }
  }
 }
} else {
 if(i49<0.9992470741271973){
  s0+=288.0;
 } else {
  if(i10<1.0066018104553223){
   if(i0<0.08456242084503174){
    if(i17<0.002591922413557768){
     s0+=119.0;
     s1+=9.0;
    } else {
     s0+=147.0;
     s1+=467.0;
    }
   } else {
    if(i60<0.004286468029022217){
     s0+=10.0;
     s1+=1697.0;
    } else {
     s0+=97.0;
     s1+=909.0;
    }
   }
  } else {
   if(i13<1.0285253524780273){
    if(i26<0.99761962890625){
     s1+=8.0;
    } else {
     s0+=11.0;
    }
   } else {
    if(i8<5.942583084106445e-05){
     s0+=31.0;
     s1+=329.0;
    } else {
     s0+=1.0;
     s1+=8203.0;
    }
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i2<0.07658517360687256){
  if(i7<1.0082993507385254){
   if(i61<-0.002257227897644043){
    if(i30<1.1779849529266357){
     s0+=1654.0;
     s1+=639.0;
    } else {
     s0+=2772.0;
     s1+=36.0;
    }
   } else {
    if(i47<0.00028707372257485986){
     s0+=45872.0;
     s1+=14.0;
    } else {
     s0+=14025.0;
     s1+=589.0;
    }
   }
  } else {
   if(i31<1.1039612293243408){
    if(i35<1.089235782623291){
     s0+=1.0;
     s1+=11.0;
    } else {
     s1+=201.0;
    }
   } else {
    if(i12<1.013750672340393){
     s0+=130.0;
     s1+=9.0;
    } else {
     s0+=4.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i11<-0.0001626908779144287){
   if(i15<-1.3053417205810547e-05){
    if(i32<0.08735787868499756){
     s0+=192.0;
     s1+=2.0;
    } else {
     s0+=3.0;
     s1+=4.0;
    }
   } else {
    if(i20<1.055374026298523){
     s0+=59.0;
     s1+=8.0;
    } else {
     s0+=15.0;
     s1+=40.0;
    }
   }
  } else {
   if(i65<-0.005640113726258278){
    if(i53<0.04610434174537659){
     s1+=11.0;
    } else {
     s0+=76.0;
     s1+=7.0;
    }
   } else {
    if(i37<0.003355977591127157){
     s0+=55.0;
     s1+=22.0;
    } else {
     s0+=51.0;
     s1+=933.0;
    }
   }
  }
 }
} else {
 if(i6<-4.3967156670987606e-05){
  if(i5<1.0023281574249268){
   if(i7<1.0103727579116821){
    if(i54<0.03134207800030708){
     s0+=312.0;
     s1+=95.0;
    } else {
     s0+=388.0;
     s1+=1064.0;
    }
   } else {
    if(i49<0.9999605417251587){
     s0+=1.0;
     s1+=768.0;
    } else {
     s0+=26.0;
     s1+=137.0;
    }
   }
  } else {
   if(i1<0.08159837126731873){
    if(i33<0.009579259902238846){
     s0+=50.0;
     s1+=631.0;
    } else {
     s0+=53.0;
     s1+=26.0;
    }
   } else {
    if(i73<0.9967894554138184){
     s0+=41.0;
     s1+=1025.0;
    } else {
     s0+=8.0;
     s1+=8800.0;
    }
   }
  }
 } else {
  if(i6<-6.497168214991689e-06){
   if(i1<0.08239397406578064){
    if(i44<0.0013814147096127272){
     s0+=298.0;
     s1+=339.0;
    } else {
     s0+=1638.0;
     s1+=128.0;
    }
   } else {
    if(i32<0.06387624144554138){
     s0+=10.0;
     s1+=466.0;
    } else {
     s0+=584.0;
     s1+=671.0;
    }
   }
  } else {
   if(i5<1.0013024806976318){
    if(i18<0.9985586404800415){
     s0+=1033.0;
    } else {
     s0+=1936.0;
     s1+=252.0;
    }
   } else {
    s1+=30.0;
   }
  }
 }
}
if(i1<0.07909071445465088){
 if(i23<1.0027871131896973){
  if(i50<0.0075655728578567505){
   if(i25<0.01559164933860302){
    if(i7<1.0084377527236938){
     s0+=55331.0;
     s1+=417.0;
    } else {
     s0+=236.0;
     s1+=78.0;
    }
   } else {
    if(i35<1.2371783256530762){
     s0+=2636.0;
     s1+=672.0;
    } else {
     s0+=6430.0;
     s1+=31.0;
    }
   }
  } else {
   if(i3<0.0002307295799255371){
    if(i25<0.01573631726205349){
     s0+=1901.0;
     s1+=131.0;
    } else {
     s0+=1211.0;
     s1+=428.0;
    }
   } else {
    if(i63<0.0027689337730407715){
     s0+=69.0;
     s1+=173.0;
    } else {
     s0+=67.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i73<0.9663500785827637){
   if(i37<0.061565615236759186){
    if(i66<4.643428837880492e-06){
     s1+=5.0;
    } else {
     s0+=765.0;
     s1+=9.0;
    }
   } else {
    s1+=30.0;
   }
  } else {
   if(i5<1.0042428970336914){
    if(i33<0.0016775483964011073){
     s0+=107.0;
     s1+=203.0;
    } else {
     s0+=424.0;
     s1+=101.0;
    }
   } else {
    if(i51<0.03669467568397522){
     s0+=7.0;
     s1+=510.0;
    } else {
     s0+=5.0;
    }
   }
  }
 }
} else {
 if(i22<3.802776336669922e-05){
  if(i5<0.9962878227233887){
   if(i56<0.004676422104239464){
    if(i36<1.4917596578598022){
     s0+=536.0;
     s1+=11.0;
    } else {
     s0+=64.0;
     s1+=41.0;
    }
   } else {
    if(i42<1.0012632608413696){
     s1+=66.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i25<0.024431200698018074){
    if(i63<-0.0016858577728271484){
     s0+=39.0;
     s1+=287.0;
    } else {
     s0+=844.0;
     s1+=483.0;
    }
   } else {
    if(i38<0.006100297439843416){
     s0+=261.0;
     s1+=1316.0;
    } else {
     s0+=37.0;
     s1+=1720.0;
    }
   }
  }
 } else {
  if(i18<0.9985833764076233){
   s0+=40.0;
  } else {
   if(i3<0.0001391768455505371){
    if(i6<-2.310506533831358e-05){
     s0+=8.0;
     s1+=212.0;
    } else {
     s0+=74.0;
     s1+=8.0;
    }
   } else {
    if(i47<0.0002045340370386839){
     s0+=8.0;
    } else {
     s0+=70.0;
     s1+=10148.0;
    }
   }
  }
 }
}
if(i29<1.007467269897461){
 if(i5<1.0024771690368652){
  if(i72<0.02569151669740677){
   if(i63<-0.0027602016925811768){
    if(i74<-0.001292109489440918){
     s0+=57.0;
     s1+=172.0;
    } else {
     s0+=70.0;
     s1+=7.0;
    }
   } else {
    if(i25<0.024409756064414978){
     s0+=54353.0;
     s1+=351.0;
    } else {
     s0+=214.0;
     s1+=124.0;
    }
   }
  } else {
   if(i2<0.08316031098365784){
    if(i8<-1.2576580047607422e-05){
     s0+=11374.0;
     s1+=659.0;
    } else {
     s0+=2049.0;
     s1+=775.0;
    }
   } else {
    if(i52<0.03456184267997742){
     s0+=207.0;
     s1+=1607.0;
    } else {
     s0+=650.0;
     s1+=464.0;
    }
   }
  }
 } else {
  if(i3<0.0009584426879882812){
   if(i41<-1.2343505659373477e-05){
    if(i51<-0.024432271718978882){
     s1+=2.0;
    } else {
     s0+=39.0;
    }
   } else {
    if(i1<0.1141924262046814){
     s0+=68.0;
     s1+=162.0;
    } else {
     s0+=1.0;
     s1+=174.0;
    }
   }
  } else {
   if(i41<0.0001305950863752514){
    if(i19<1.0097589492797852){
     s0+=1.0;
     s1+=891.0;
    } else {
     s0+=2.0;
     s1+=119.0;
    }
   } else {
    if(i68<0.0005437630461528897){
     s0+=34.0;
     s1+=12.0;
    } else {
     s0+=16.0;
     s1+=635.0;
    }
   }
  }
 }
} else {
 if(i1<0.07064661383628845){
  if(i30<1.1005322933197021){
   if(i64<-2.354006028326694e-06){
    if(i44<0.0011742990463972092){
     s0+=4.0;
     s1+=291.0;
    } else {
     s0+=12.0;
     s1+=4.0;
    }
   } else {
    if(i7<1.0112007856369019){
     s0+=117.0;
     s1+=7.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i18<1.0030450820922852){
    if(i17<0.0066047776490449905){
     s0+=1096.0;
     s1+=12.0;
    } else {
     s1+=19.0;
    }
   } else {
    s1+=37.0;
   }
  }
 } else {
  if(i14<0.0006830692291259766){
   if(i56<0.0009217249462381005){
    if(i27<1.0286281108856201){
     s0+=60.0;
     s1+=118.0;
    } else {
     s0+=356.0;
     s1+=41.0;
    }
   } else {
    if(i45<1.3199291970522609e-06){
     s0+=101.0;
     s1+=1351.0;
    } else {
     s0+=41.0;
     s1+=1.0;
    }
   }
  } else {
   if(i37<0.012992165051400661){
    if(i73<1.000824213027954){
     s0+=12.0;
    } else {
     s0+=55.0;
     s1+=1388.0;
    }
   } else {
    if(i0<0.07580763101577759){
     s0+=1.0;
     s1+=20.0;
    } else {
     s1+=7803.0;
    }
   }
  }
 }
}
if(i7<1.0081498622894287){
 if(i0<0.0852321982383728){
  if(i50<0.008429228328168392){
   if(i30<1.0598037242889404){
    if(i27<0.9714624881744385){
     s0+=258.0;
     s1+=8.0;
    } else {
     s0+=43189.0;
     s1+=22.0;
    }
   } else {
    if(i22<-0.00021469593048095703){
     s0+=11679.0;
     s1+=72.0;
    } else {
     s0+=10499.0;
     s1+=1388.0;
    }
   }
  } else {
   if(i77<1.000370740890503){
    if(i41<3.599416959332302e-05){
     s0+=1063.0;
     s1+=36.0;
    } else {
     s0+=898.0;
     s1+=243.0;
    }
   } else {
    if(i23<1.000652551651001){
     s0+=334.0;
     s1+=217.0;
    } else {
     s0+=187.0;
     s1+=507.0;
    }
   }
  }
 } else {
  if(i3<-0.0007116794586181641){
   if(i49<0.9998055696487427){
    if(i70<-0.021527228876948357){
     s0+=260.0;
    } else {
     s0+=265.0;
     s1+=20.0;
    }
   } else {
    if(i17<0.005285918712615967){
     s0+=68.0;
     s1+=20.0;
    } else {
     s0+=25.0;
     s1+=131.0;
    }
   }
  } else {
   if(i6<-1.4224628102965653e-05){
    if(i54<0.06039454787969589){
     s0+=270.0;
     s1+=849.0;
    } else {
     s0+=116.0;
     s1+=2527.0;
    }
   } else {
    if(i24<1.043662428855896){
     s0+=44.0;
     s1+=141.0;
    } else {
     s0+=386.0;
     s1+=82.0;
    }
   }
  }
 }
} else {
 if(i17<0.0033272532746195793){
  if(i22<0.00021499395370483398){
   if(i11<9.894371032714844e-05){
    if(i43<0.0007746136398054659){
     s0+=83.0;
     s1+=19.0;
    } else {
     s0+=116.0;
     s1+=370.0;
    }
   } else {
    if(i6<-4.287680712877773e-05){
     s0+=46.0;
     s1+=160.0;
    } else {
     s0+=894.0;
     s1+=56.0;
    }
   }
  } else {
   if(i34<0.00022799588623456657){
    s0+=6.0;
   } else {
    s1+=547.0;
   }
  }
 } else {
  if(i64<1.0547109923209064e-06){
   if(i11<-0.0002605915069580078){
    if(i64<-1.4730094335391186e-06){
     s1+=5.0;
    } else {
     s0+=8.0;
    }
   } else {
    if(i23<0.9995827674865723){
     s0+=54.0;
     s1+=955.0;
    } else {
     s0+=9.0;
     s1+=9010.0;
    }
   }
  } else {
   s0+=110.0;
  }
 }
}
if(i1<0.0806320309638977){
 if(i6<-4.935797187499702e-05){
  if(i51<0.004277467727661133){
   if(i0<0.013344228267669678){
    if(i65<0.0032280629966408014){
     s0+=339.0;
     s1+=25.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   } else {
    if(i5<0.9999825954437256){
     s0+=196.0;
     s1+=118.0;
    } else {
     s0+=98.0;
     s1+=864.0;
    }
   }
  } else {
   if(i36<1.2314128875732422){
    if(i75<0.00014869330334477127){
     s0+=29.0;
     s1+=71.0;
    } else {
     s0+=148.0;
     s1+=1.0;
    }
   } else {
    if(i59<-0.0006346421432681382){
     s1+=3.0;
    } else {
     s0+=1444.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i67<0.009945636615157127){
   if(i63<-0.002956867218017578){
    if(i30<1.1975750923156738){
     s0+=41.0;
     s1+=107.0;
    } else {
     s0+=47.0;
    }
   } else {
    if(i12<1.0045185089111328){
     s0+=45841.0;
     s1+=100.0;
    } else {
     s0+=122.0;
     s1+=83.0;
    }
   }
  } else {
   if(i5<0.9979346394538879){
    if(i61<-0.0016861557960510254){
     s0+=3211.0;
     s1+=209.0;
    } else {
     s0+=12455.0;
     s1+=79.0;
    }
   } else {
    if(i36<1.1178252696990967){
     s0+=2022.0;
     s1+=1039.0;
    } else {
     s0+=3486.0;
     s1+=170.0;
    }
   }
  }
 }
} else {
 if(i42<0.9988065958023071){
  if(i18<0.9980413913726807){
   s0+=419.0;
  } else {
   s1+=13.0;
  }
 } else {
  if(i10<1.0010871887207031){
   if(i51<0.03985476493835449){
    if(i25<0.012420162558555603){
     s0+=140.0;
     s1+=147.0;
    } else {
     s0+=122.0;
     s1+=1941.0;
    }
   } else {
    if(i25<0.03627706319093704){
     s0+=821.0;
     s1+=365.0;
    } else {
     s0+=113.0;
     s1+=1162.0;
    }
   }
  } else {
   if(i44<0.0002575819380581379){
    s0+=10.0;
   } else {
    if(i6<-2.0840030629187822e-05){
     s0+=99.0;
     s1+=10387.0;
    } else {
     s0+=67.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i12<1.0054295063018799){
 if(i25<0.022396035492420197){
  if(i3<0.0005988180637359619){
   if(i2<0.07637336850166321){
    if(i61<-0.0022396743297576904){
     s0+=3255.0;
     s1+=560.0;
    } else {
     s0+=58850.0;
     s1+=501.0;
    }
   } else {
    if(i3<-0.0008330047130584717){
     s0+=251.0;
     s1+=9.0;
    } else {
     s0+=806.0;
     s1+=587.0;
    }
   }
  } else {
   if(i37<0.0050769345834851265){
    if(i51<-0.05179724097251892){
     s1+=4.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i43<0.007341877091675997){
     s0+=19.0;
     s1+=259.0;
    } else {
     s0+=67.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i14<-0.001918882131576538){
   if(i5<0.9990142583847046){
    if(i9<1.0641744136810303){
     s0+=4663.0;
     s1+=46.0;
    } else {
     s0+=241.0;
     s1+=231.0;
    }
   } else {
    if(i2<0.11039751768112183){
     s0+=178.0;
     s1+=75.0;
    } else {
     s0+=9.0;
     s1+=276.0;
    }
   }
  } else {
   if(i6<-4.5832757677999325e-06){
    if(i37<0.014356683939695358){
     s0+=405.0;
     s1+=580.0;
    } else {
     s0+=230.0;
     s1+=3262.0;
    }
   } else {
    if(i66<1.0803206578202662e-06){
     s0+=18.0;
     s1+=57.0;
    } else {
     s0+=940.0;
     s1+=203.0;
    }
   }
  }
 }
} else {
 if(i14<0.001430511474609375){
  if(i68<0.000574936275370419){
   if(i2<0.0753089189529419){
    if(i39<0.00026869773864746094){
     s0+=790.0;
     s1+=106.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i17<0.0018971021054312587){
     s0+=143.0;
     s1+=16.0;
    } else {
     s0+=51.0;
     s1+=580.0;
    }
   }
  } else {
   s1+=1226.0;
  }
 } else {
  if(i34<0.00019104243256151676){
   if(i48<-0.001535177230834961){
    s1+=1.0;
   } else {
    s0+=18.0;
   }
  } else {
   if(i68<7.211044430732727e-05){
    if(i18<1.0026044845581055){
     s0+=5.0;
    } else {
     s1+=22.0;
    }
   } else {
    if(i8<3.001093864440918e-05){
     s0+=4.0;
     s1+=190.0;
    } else {
     s1+=8350.0;
    }
   }
  }
 }
}
if(i5<1.002352237701416){
 if(i9<1.042891263961792){
  if(i47<0.00033134594559669495){
   if(i12<1.0057531595230103){
    if(i77<1.0022218227386475){
     s0+=46815.0;
     s1+=58.0;
    } else {
     s0+=293.0;
     s1+=22.0;
    }
   } else {
    if(i75<4.212243220536038e-05){
     s1+=11.0;
    } else {
     s0+=45.0;
    }
   }
  } else {
   if(i63<-0.0004469156265258789){
    if(i8<-1.8537044525146484e-05){
     s0+=4092.0;
     s1+=419.0;
    } else {
     s0+=1639.0;
     s1+=832.0;
    }
   } else {
    if(i2<0.08293190598487854){
     s0+=11324.0;
     s1+=313.0;
    } else {
     s0+=48.0;
     s1+=221.0;
    }
   }
  }
 } else {
  if(i17<0.004990452900528908){
   if(i14<0.0010665059089660645){
    if(i71<0.0004028251860290766){
     s0+=4789.0;
     s1+=1012.0;
    } else {
     s0+=962.0;
     s1+=671.0;
    }
   } else {
    if(i20<1.2314765453338623){
     s1+=168.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i3<-0.0006407201290130615){
    if(i56<0.002629017923027277){
     s0+=169.0;
     s1+=2.0;
    } else {
     s0+=109.0;
     s1+=161.0;
    }
   } else {
    if(i49<1.000365972518921){
     s0+=171.0;
     s1+=1927.0;
    } else {
     s0+=230.0;
     s1+=59.0;
    }
   }
  }
 }
} else {
 if(i45<-1.0872935490624513e-05){
  if(i1<0.06488946080207825){
   if(i38<0.0017578022088855505){
    if(i36<1.069656252861023){
     s0+=7.0;
    } else {
     s1+=260.0;
    }
   } else {
    if(i50<0.00913768820464611){
     s0+=127.0;
     s1+=26.0;
    } else {
     s0+=30.0;
     s1+=183.0;
    }
   }
  } else {
   if(i14<3.5643577575683594e-05){
    if(i31<1.3355915546417236){
     s0+=79.0;
     s1+=378.0;
    } else {
     s0+=5.0;
     s1+=624.0;
    }
   } else {
    if(i43<0.0035193911753594875){
     s0+=33.0;
     s1+=1549.0;
    } else {
     s0+=3.0;
     s1+=8118.0;
    }
   }
  }
 } else {
  if(i14<0.001605391502380371){
   if(i17<0.0026138555258512497){
    s0+=190.0;
   } else {
    if(i23<1.0012480020523071){
     s0+=2.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   s1+=57.0;
  }
 }
}
if(i5<1.0024573802947998){
 if(i24<1.0401114225387573){
  if(i9<1.0398966073989868){
   if(i33<0.00040106536471284926){
    if(i16<1.0126066207885742){
     s0+=36673.0;
     s1+=24.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i63<-0.000994652509689331){
     s0+=4120.0;
     s1+=958.0;
    } else {
     s0+=22237.0;
     s1+=540.0;
    }
   }
  } else {
   if(i72<0.039318814873695374){
    if(i2<0.07396194338798523){
     s0+=2276.0;
     s1+=187.0;
    } else {
     s0+=31.0;
     s1+=247.0;
    }
   } else {
    if(i4<0.0684823989868164){
     s0+=1146.0;
     s1+=481.0;
    } else {
     s0+=35.0;
     s1+=344.0;
    }
   }
  }
 } else {
  if(i7<1.0107412338256836){
   if(i6<-2.0959478206350468e-05){
    if(i25<0.027884092181921005){
     s0+=743.0;
     s1+=425.0;
    } else {
     s0+=175.0;
     s1+=1058.0;
    }
   } else {
    if(i17<0.0072630951181054115){
     s0+=2770.0;
     s1+=311.0;
    } else {
     s0+=3.0;
     s1+=42.0;
    }
   }
  } else {
   if(i1<0.10226985812187195){
    if(i47<0.0013428935781121254){
     s0+=3.0;
     s1+=95.0;
    } else {
     s0+=332.0;
     s1+=13.0;
    }
   } else {
    if(i45<2.70610507868696e-06){
     s0+=126.0;
     s1+=1142.0;
    } else {
     s0+=36.0;
    }
   }
  }
 }
} else {
 if(i29<1.021283745765686){
  if(i0<0.059334903955459595){
   if(i17<0.002356067532673478){
    if(i30<1.1046062707901){
     s0+=8.0;
     s1+=9.0;
    } else {
     s0+=138.0;
    }
   } else {
    if(i12<0.9982162714004517){
     s0+=59.0;
     s1+=93.0;
    } else {
     s0+=16.0;
     s1+=279.0;
    }
   }
  } else {
   if(i5<1.0044927597045898){
    if(i6<-4.3423329771030694e-05){
     s0+=77.0;
     s1+=1069.0;
    } else {
     s0+=81.0;
     s1+=155.0;
    }
   } else {
    if(i23<0.9976435899734497){
     s0+=10.0;
    } else {
     s0+=13.0;
     s1+=2612.0;
    }
   }
  }
 } else {
  if(i37<0.008516095578670502){
   if(i14<0.000665128231048584){
    s0+=6.0;
   } else {
    s1+=176.0;
   }
  } else {
   if(i73<1.003379464149475){
    if(i47<0.007159646600484848){
     s0+=1.0;
    } else {
     s1+=73.0;
    }
   } else {
    s1+=6803.0;
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i32<0.06652304530143738){
  if(i28<0.0002955581876449287){
   if(i47<0.0002996420953422785){
    if(i27<1.010981559753418){
     s0+=45519.0;
     s1+=65.0;
    } else {
     s0+=171.0;
     s1+=29.0;
    }
   } else {
    if(i31<1.1047927141189575){
     s0+=3162.0;
     s1+=637.0;
    } else {
     s0+=7324.0;
     s1+=97.0;
    }
   }
  } else {
   if(i10<0.994226336479187){
    if(i9<1.0693047046661377){
     s0+=6536.0;
     s1+=120.0;
    } else {
     s0+=467.0;
     s1+=146.0;
    }
   } else {
    if(i2<0.07413601875305176){
     s0+=5295.0;
     s1+=1287.0;
    } else {
     s0+=125.0;
     s1+=1170.0;
    }
   }
  }
 } else {
  if(i33<0.00156686722766608){
   if(i28<0.001447509741410613){
    if(i43<0.00044122053077444434){
     s0+=190.0;
     s1+=5.0;
    } else {
     s0+=181.0;
     s1+=500.0;
    }
   } else {
    if(i36<1.1919987201690674){
     s0+=258.0;
     s1+=22.0;
    } else {
     s0+=478.0;
    }
   }
  } else {
   if(i2<0.11904320120811462){
    if(i19<0.9653743505477905){
     s0+=21.0;
     s1+=41.0;
    } else {
     s0+=538.0;
     s1+=104.0;
    }
   } else {
    if(i67<0.12223093956708908){
     s0+=126.0;
     s1+=770.0;
    } else {
     s0+=8.0;
     s1+=572.0;
    }
   }
  }
 }
} else {
 if(i2<0.05592253804206848){
  if(i42<1.00026535987854){
   s0+=158.0;
  } else {
   if(i35<1.2392117977142334){
    s1+=348.0;
   } else {
    if(i48<-0.0018944144248962402){
     s0+=38.0;
     s1+=203.0;
    } else {
     s0+=149.0;
     s1+=20.0;
    }
   }
  }
 } else {
  if(i2<0.1316651701927185){
   if(i70<-0.021897196769714355){
    if(i56<0.005201477557420731){
     s0+=99.0;
     s1+=12.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i55<0.01914811134338379){
     s0+=46.0;
     s1+=1832.0;
    } else {
     s0+=47.0;
     s1+=9.0;
    }
   }
  } else {
   if(i37<0.017956532537937164){
    if(i23<0.9952346086502075){
     s0+=5.0;
     s1+=5.0;
    } else {
     s0+=25.0;
     s1+=924.0;
    }
   } else {
    if(i14<-0.0008518099784851074){
     s0+=2.0;
     s1+=357.0;
    } else {
     s1+=7998.0;
    }
   }
  }
 }
}
if(i2<0.07982069253921509){
 if(i14<0.0011257529258728027){
  if(i55<-0.006901800632476807){
   if(i5<1.0023956298828125){
    if(i38<0.0009714441257528961){
     s0+=683.0;
     s1+=424.0;
    } else {
     s0+=2620.0;
     s1+=350.0;
    }
   } else {
    if(i51<0.010893315076828003){
     s0+=20.0;
     s1+=242.0;
    } else {
     s0+=10.0;
     s1+=6.0;
    }
   }
  } else {
   if(i29<1.0061174631118774){
    if(i47<0.0003140369663015008){
     s0+=47060.0;
     s1+=67.0;
    } else {
     s0+=17359.0;
     s1+=1171.0;
    }
   } else {
    if(i43<0.0010762307792901993){
     s0+=303.0;
     s1+=429.0;
    } else {
     s0+=1219.0;
     s1+=49.0;
    }
   }
  }
 } else {
  if(i31<1.2388319969177246){
   s1+=607.0;
  } else {
   if(i17<0.002517164684832096){
    s0+=138.0;
   } else {
    if(i14<0.0011666715145111084){
     s0+=1.0;
    } else {
     s1+=55.0;
    }
   }
  }
 }
} else {
 if(i31<1.3733716011047363){
  if(i70<-0.024583252146840096){
   if(i67<0.1021319031715393){
    if(i38<0.005343142431229353){
     s0+=721.0;
     s1+=107.0;
    } else {
     s0+=91.0;
     s1+=242.0;
    }
   } else {
    if(i15<-9.059906005859375e-06){
     s0+=69.0;
     s1+=3.0;
    } else {
     s0+=65.0;
     s1+=557.0;
    }
   }
  } else {
   if(i15<-1.4662742614746094e-05){
    if(i7<1.0126194953918457){
     s0+=157.0;
    } else {
     s0+=2.0;
     s1+=4.0;
    }
   } else {
    if(i17<0.001723350491374731){
     s0+=265.0;
     s1+=311.0;
    } else {
     s0+=236.0;
     s1+=5122.0;
    }
   }
  }
 } else {
  if(i12<0.9746111631393433){
   if(i16<0.9864329099655151){
    if(i4<0.08464139699935913){
     s0+=5.0;
     s1+=4.0;
    } else {
     s1+=63.0;
    }
   } else {
    s0+=23.0;
   }
  } else {
   if(i64<-9.759476142789936e-07){
    if(i18<0.9985318183898926){
     s0+=12.0;
     s1+=10.0;
    } else {
     s0+=29.0;
     s1+=7338.0;
    }
   } else {
    s0+=3.0;
   }
  }
 }
}
if(i15<1.8417835235595703e-05){
 if(i16<1.0107624530792236){
  if(i1<0.08223113417625427){
   if(i58<0.0451805517077446){
    if(i46<0.001671148114837706){
     s0+=55006.0;
     s1+=370.0;
    } else {
     s0+=946.0;
     s1+=214.0;
    }
   } else {
    if(i12<0.9850696325302124){
     s0+=5361.0;
     s1+=58.0;
    } else {
     s0+=5820.0;
     s1+=1048.0;
    }
   }
  } else {
   if(i15<-1.5676021575927734e-05){
    if(i39<-0.0001214742660522461){
     s0+=302.0;
    } else {
     s0+=17.0;
     s1+=12.0;
    }
   } else {
    if(i55<0.013443142175674438){
     s0+=169.0;
     s1+=1407.0;
    } else {
     s0+=246.0;
     s1+=261.0;
    }
   }
  }
 } else {
  if(i41<-2.9149057809263468e-05){
   if(i39<9.274482727050781e-05){
    s1+=629.0;
   } else {
    if(i49<1.0000214576721191){
     s1+=8.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i6<-3.321545955259353e-05){
    if(i49<0.9999108910560608){
     s0+=45.0;
     s1+=1596.0;
    } else {
     s0+=204.0;
     s1+=311.0;
    }
   } else {
    if(i17<0.0033311834558844566){
     s0+=1303.0;
     s1+=175.0;
    } else {
     s0+=181.0;
     s1+=197.0;
    }
   }
  }
 }
} else {
 if(i8<4.202127456665039e-05){
  if(i2<0.11345064640045166){
   if(i13<1.1205039024353027){
    if(i33<0.0023872507736086845){
     s0+=146.0;
     s1+=96.0;
    } else {
     s0+=1064.0;
     s1+=105.0;
    }
   } else {
    if(i72<0.13581836223602295){
     s0+=10.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=46.0;
    }
   }
  } else {
   if(i39<0.00012364983558654785){
    if(i68<0.0002168321661883965){
     s0+=11.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i49<0.9999904632568359){
     s0+=16.0;
     s1+=50.0;
    } else {
     s0+=5.0;
     s1+=333.0;
    }
   }
  }
 } else {
  if(i5<0.9993731379508972){
   s0+=176.0;
  } else {
   if(i34<0.000176901463419199){
    if(i1<0.06379732489585876){
     s0+=42.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i23<0.9978667497634888){
     s0+=44.0;
     s1+=101.0;
    } else {
     s0+=188.0;
     s1+=9916.0;
    }
   }
  }
 }
}
if(i1<0.0806320309638977){
 if(i46<0.0017023577820509672){
  if(i2<0.05903935432434082){
   if(i21<1.0069019794464111){
    if(i1<0.06926032900810242){
     s0+=57138.0;
     s1+=429.0;
    } else {
     s0+=25.0;
     s1+=48.0;
    }
   } else {
    if(i30<1.1040980815887451){
     s0+=534.0;
     s1+=263.0;
    } else {
     s0+=1144.0;
     s1+=14.0;
    }
   }
  } else {
   if(i14<0.0006386041641235352){
    if(i10<0.9946781992912292){
     s0+=2282.0;
     s1+=9.0;
    } else {
     s0+=2205.0;
     s1+=426.0;
    }
   } else {
    if(i44<0.0015382394194602966){
     s0+=15.0;
     s1+=152.0;
    } else {
     s0+=53.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i42<1.0010080337524414){
   if(i1<0.03759753704071045){
    if(i70<-0.005721834488213062){
     s0+=1729.0;
     s1+=20.0;
    } else {
     s0+=2548.0;
     s1+=375.0;
    }
   } else {
    if(i53<0.015227675437927246){
     s0+=80.0;
     s1+=342.0;
    } else {
     s0+=1200.0;
     s1+=307.0;
    }
   }
  } else {
   if(i22<-0.0003929436206817627){
    if(i46<0.013843043707311153){
     s0+=288.0;
     s1+=15.0;
    } else {
     s0+=22.0;
     s1+=33.0;
    }
   } else {
    if(i51<0.03807196021080017){
     s0+=86.0;
     s1+=496.0;
    } else {
     s0+=25.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i10<1.00099515914917){
  if(i25<0.026387635618448257){
   if(i55<0.015177369117736816){
    if(i18<0.9991393089294434){
     s0+=267.0;
     s1+=57.0;
    } else {
     s0+=184.0;
     s1+=672.0;
    }
   } else {
    if(i40<0.03592601418495178){
     s0+=9.0;
     s1+=28.0;
    } else {
     s0+=728.0;
     s1+=98.0;
    }
   }
  } else {
   if(i42<0.9989140033721924){
    if(i67<0.25179818272590637){
     s0+=179.0;
     s1+=2.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i40<0.04813399910926819){
     s0+=19.0;
     s1+=1618.0;
    } else {
     s0+=266.0;
     s1+=1121.0;
    }
   }
  }
 } else {
  if(i3<0.00039640069007873535){
   if(i32<0.06449806690216064){
    if(i15<-6.67572021484375e-06){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=326.0;
    }
   } else {
    if(i6<-3.0046892788959667e-05){
     s0+=18.0;
     s1+=303.0;
    } else {
     s0+=94.0;
     s1+=64.0;
    }
   }
  } else {
   if(i12<1.0080056190490723){
    if(i0<0.1316409707069397){
     s0+=63.0;
     s1+=417.0;
    } else {
     s0+=14.0;
     s1+=1114.0;
    }
   } else {
    if(i6<-2.3582502763019875e-05){
     s0+=3.0;
     s1+=8273.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i1<0.08203768730163574){
 if(i20<1.0486011505126953){
  if(i57<0.0007277644472196698){
   if(i11<0.0005903244018554688){
    if(i29<1.0084599256515503){
     s0+=52599.0;
     s1+=81.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i49<1.0000710487365723){
     s0+=79.0;
    } else {
     s0+=29.0;
     s1+=9.0;
    }
   }
  } else {
   if(i38<0.0009474842809140682){
    if(i30<1.0547096729278564){
     s0+=989.0;
    } else {
     s0+=119.0;
     s1+=285.0;
    }
   } else {
    if(i3<9.709596633911133e-05){
     s0+=1829.0;
     s1+=1.0;
    } else {
     s0+=68.0;
     s1+=4.0;
    }
   }
  }
 } else {
  if(i3<0.0005421042442321777){
   if(i35<1.1013743877410889){
    if(i16<0.9898919463157654){
     s0+=119.0;
     s1+=459.0;
    } else {
     s0+=2364.0;
     s1+=772.0;
    }
   } else {
    if(i3<0.0002625882625579834){
     s0+=10220.0;
     s1+=385.0;
    } else {
     s0+=493.0;
     s1+=124.0;
    }
   }
  } else {
   if(i48<0.0022560954093933105){
    if(i6<-4.327204078435898e-05){
     s0+=77.0;
     s1+=886.0;
    } else {
     s0+=84.0;
     s1+=91.0;
    }
   } else {
    if(i44<0.0012668604031205177){
     s1+=1.0;
    } else {
     s0+=99.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i33<0.00045594313996843994){
  if(i39<0.00010573863983154297){
   if(i34<0.0004185721918474883){
    if(i30<1.0703742504119873){
     s0+=58.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   } else {
    if(i53<0.036141932010650635){
     s0+=32.0;
     s1+=1.0;
    } else {
     s0+=235.0;
    }
   }
  } else {
   if(i75<8.251855615526438e-05){
    if(i61<-0.00122031569480896){
     s0+=1.0;
    } else {
     s1+=7.0;
    }
   } else {
    s0+=8.0;
   }
  }
 } else {
  if(i15<-1.5407800674438477e-05){
   if(i9<1.0190200805664062){
    s1+=2.0;
   } else {
    if(i18<0.9988174438476562){
     s0+=312.0;
     s1+=9.0;
    } else {
     s0+=1.0;
     s1+=5.0;
    }
   }
  } else {
   if(i8<3.4749507904052734e-05){
    if(i65<-0.005187157541513443){
     s0+=783.0;
     s1+=1245.0;
    } else {
     s0+=154.0;
     s1+=2076.0;
    }
   } else {
    if(i22<-7.62939453125e-06){
     s0+=97.0;
     s1+=1109.0;
    } else {
     s0+=32.0;
     s1+=9811.0;
    }
   }
  }
 }
}
if(i6<-7.877488678786904e-05){
 if(i8<1.5556812286376953e-05){
  if(i0<0.08571088314056396){
   if(i30<1.1578729152679443){
    s1+=11.0;
   } else {
    if(i22<-0.00039312243461608887){
     s0+=441.0;
     s1+=16.0;
    } else {
     s0+=70.0;
     s1+=21.0;
    }
   }
  } else {
   if(i49<1.0003917217254639){
    if(i73<0.9076483249664307){
     s0+=1.0;
    } else {
     s1+=330.0;
    }
   } else {
    if(i2<0.16069886088371277){
     s0+=15.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i69<0.9970594644546509){
   s0+=126.0;
  } else {
   if(i31<1.059762954711914){
    s0+=28.0;
   } else {
    if(i7<1.004030704498291){
     s0+=168.0;
     s1+=1648.0;
    } else {
     s0+=40.0;
     s1+=9109.0;
    }
   }
  }
 }
} else {
 if(i2<0.07771864533424377){
  if(i5<1.0024950504302979){
   if(i61<-0.002064615488052368){
    if(i36<1.197464108467102){
     s0+=2192.0;
     s1+=781.0;
    } else {
     s0+=3366.0;
     s1+=157.0;
    }
   } else {
    if(i13<1.042891263961792){
     s0+=55979.0;
     s1+=245.0;
    } else {
     s0+=6565.0;
     s1+=878.0;
    }
   }
  } else {
   if(i38<0.001984504982829094){
    if(i30<1.0485966205596924){
     s0+=3.0;
    } else {
     s1+=505.0;
    }
   } else {
    if(i27<0.9955089092254639){
     s0+=7.0;
     s1+=51.0;
    } else {
     s0+=227.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i40<0.04997527599334717){
   if(i18<0.998172402381897){
    s0+=99.0;
   } else {
    if(i1<0.09403243660926819){
     s0+=143.0;
     s1+=407.0;
    } else {
     s0+=42.0;
     s1+=2003.0;
    }
   }
  } else {
   if(i37<0.040244050323963165){
    if(i24<1.0847222805023193){
     s0+=643.0;
     s1+=623.0;
    } else {
     s0+=796.0;
     s1+=198.0;
    }
   } else {
    if(i20<1.065779685974121){
     s0+=19.0;
    } else {
     s0+=10.0;
     s1+=281.0;
    }
   }
  }
 }
}
if(i13<1.0564017295837402){
 if(i21<1.008401870727539){
  if(i1<0.08095237612724304){
   if(i55<-0.0050338804721832275){
    if(i13<1.0398929119110107){
     s0+=2194.0;
     s1+=240.0;
    } else {
     s0+=539.0;
     s1+=290.0;
    }
   } else {
    if(i5<1.002563714981079){
     s0+=61508.0;
     s1+=622.0;
    } else {
     s0+=53.0;
     s1+=60.0;
    }
   }
  } else {
   if(i3<-0.0005250275135040283){
    if(i54<0.041697025299072266){
     s0+=181.0;
     s1+=8.0;
    } else {
     s0+=53.0;
     s1+=40.0;
    }
   } else {
    if(i30<1.0581047534942627){
     s0+=51.0;
    } else {
     s0+=60.0;
     s1+=679.0;
    }
   }
  }
 } else {
  if(i36<1.1063789129257202){
   if(i0<0.062041252851486206){
    if(i42<1.0001780986785889){
     s0+=32.0;
     s1+=6.0;
    } else {
     s0+=4.0;
     s1+=55.0;
    }
   } else {
    if(i44<0.0002741784555837512){
     s0+=1.0;
    } else {
     s1+=360.0;
    }
   }
  } else {
   if(i18<1.002321720123291){
    if(i4<0.0776311457157135){
     s0+=222.0;
     s1+=8.0;
    } else {
     s1+=9.0;
    }
   } else {
    s1+=62.0;
   }
  }
 }
} else {
 if(i1<0.0851379930973053){
  if(i48<0.0021549463272094727){
   if(i5<1.0024727582931519){
    if(i30<1.1036889553070068){
     s0+=628.0;
     s1+=504.0;
    } else {
     s0+=2658.0;
     s1+=352.0;
    }
   } else {
    if(i61<0.002956986427307129){
     s0+=60.0;
     s1+=737.0;
    } else {
     s0+=43.0;
     s1+=30.0;
    }
   }
  } else {
   if(i65<-0.0034753552172333){
    if(i11<0.0013903379440307617){
     s0+=1447.0;
     s1+=13.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i25<0.02851123735308647){
     s0+=209.0;
     s1+=23.0;
    } else {
     s0+=6.0;
     s1+=25.0;
    }
   }
  }
 } else {
  if(i17<0.004685950465500355){
   if(i60<0.005308687686920166){
    if(i53<0.061264753341674805){
     s0+=55.0;
     s1+=1236.0;
    } else {
     s0+=298.0;
     s1+=361.0;
    }
   } else {
    if(i0<0.2860161066055298){
     s0+=650.0;
     s1+=98.0;
    } else {
     s0+=82.0;
     s1+=127.0;
    }
   }
  } else {
   if(i3<-0.0007810294628143311){
    if(i36<1.4001381397247314){
     s0+=64.0;
     s1+=1.0;
    } else {
     s0+=7.0;
     s1+=114.0;
    }
   } else {
    if(i22<-0.00011846423149108887){
     s0+=125.0;
     s1+=1035.0;
    } else {
     s0+=27.0;
     s1+=9898.0;
    }
   }
  }
 }
}
if(i5<1.0024771690368652){
 if(i1<0.08225274085998535){
  if(i48<-0.0015491843223571777){
   if(i39<-3.802776336669922e-05){
    if(i39<-0.00014695525169372559){
     s0+=878.0;
     s1+=12.0;
    } else {
     s0+=899.0;
     s1+=106.0;
    }
   } else {
    if(i49<0.9998691082000732){
     s0+=395.0;
     s1+=458.0;
    } else {
     s0+=1684.0;
     s1+=278.0;
    }
   }
  } else {
   if(i54<0.026784537360072136){
    if(i21<1.0086030960083008){
     s0+=56215.0;
     s1+=294.0;
    } else {
     s0+=716.0;
     s1+=202.0;
    }
   } else {
    if(i22<-0.0002487599849700928){
     s0+=5064.0;
     s1+=15.0;
    } else {
     s0+=3260.0;
     s1+=738.0;
    }
   }
  }
 } else {
  if(i40<0.049178749322891235){
   if(i11<-0.000658184289932251){
    s0+=108.0;
   } else {
    if(i65<-0.0095248743891716){
     s0+=42.0;
     s1+=125.0;
    } else {
     s0+=57.0;
     s1+=2284.0;
    }
   }
  } else {
   if(i25<0.03686396777629852){
    if(i1<0.10923472046852112){
     s0+=647.0;
     s1+=74.0;
    } else {
     s0+=484.0;
     s1+=361.0;
    }
   } else {
    if(i64<1.024734729071497e-06){
     s0+=113.0;
     s1+=855.0;
    } else {
     s0+=150.0;
    }
   }
  }
 }
} else {
 if(i37<0.013792680576443672){
  if(i45<-1.3724934433412272e-05){
   if(i31<1.2287709712982178){
    if(i70<-0.028267934918403625){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=1290.0;
    }
   } else {
    if(i14<0.0013906359672546387){
     s0+=138.0;
     s1+=39.0;
    } else {
     s1+=299.0;
    }
   }
  } else {
   if(i44<0.0016768679488450289){
    if(i44<0.000536284118425101){
     s0+=5.0;
    } else {
     s0+=5.0;
     s1+=90.0;
    }
   } else {
    if(i70<0.008435476571321487){
     s0+=192.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i49<1.0007851123809814){
   if(i2<0.06353488564491272){
    if(i40<0.024084925651550293){
     s0+=5.0;
     s1+=216.0;
    } else {
     s0+=12.0;
    }
   } else {
    if(i35<1.613681674003601){
     s0+=1.0;
     s1+=7877.0;
    } else {
     s0+=21.0;
     s1+=1533.0;
    }
   }
  } else {
   if(i12<0.9889059066772461){
    s0+=3.0;
   } else {
    s1+=2.0;
   }
  }
 }
}
if(i2<0.07799920439720154){
 if(i13<1.0451608896255493){
  if(i8<3.904104232788086e-05){
   if(i46<0.0015203822404146194){
    if(i1<0.08262661099433899){
     s0+=57833.0;
     s1+=383.0;
    } else {
     s0+=17.0;
     s1+=36.0;
    }
   } else {
    if(i72<0.06236790120601654){
     s0+=1545.0;
     s1+=339.0;
    } else {
     s0+=2434.0;
     s1+=48.0;
    }
   }
  } else {
   if(i77<1.0003641843795776){
    s0+=270.0;
   } else {
    if(i28<0.00015621833154000342){
     s0+=40.0;
     s1+=4.0;
    } else {
     s0+=8.0;
     s1+=130.0;
    }
   }
  }
 } else {
  if(i1<0.06560537219047546){
   if(i18<1.0018424987792969){
    if(i31<1.1037919521331787){
     s0+=1727.0;
     s1+=599.0;
    } else {
     s0+=4244.0;
     s1+=222.0;
    }
   } else {
    if(i10<1.0015687942504883){
     s0+=336.0;
     s1+=105.0;
    } else {
     s0+=28.0;
     s1+=348.0;
    }
   }
  } else {
   if(i51<0.025606483221054077){
    if(i40<0.023850739002227783){
     s0+=44.0;
     s1+=743.0;
    } else {
     s0+=336.0;
     s1+=240.0;
    }
   } else {
    if(i10<1.0098164081573486){
     s0+=441.0;
     s1+=38.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00038686394691467285){
  if(i11<-0.00041237473487854004){
   if(i36<1.476589322090149){
    s0+=393.0;
   } else {
    if(i6<-2.617877908051014e-05){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=28.0;
    }
   }
  } else {
   if(i53<0.05152517557144165){
    s1+=5.0;
   } else {
    if(i71<0.001207982306368649){
     s0+=17.0;
     s1+=1.0;
    } else {
     s1+=5.0;
    }
   }
  }
 } else {
  if(i8<3.975629806518555e-05){
   if(i48<0.00408896803855896){
    if(i44<0.0003644439566414803){
     s0+=56.0;
     s1+=4.0;
    } else {
     s0+=215.0;
     s1+=2321.0;
    }
   } else {
    if(i33<0.0011893223272636533){
     s0+=426.0;
     s1+=82.0;
    } else {
     s0+=544.0;
     s1+=1028.0;
    }
   }
  } else {
   if(i8<5.65648078918457e-05){
    if(i0<0.14226090908050537){
     s0+=69.0;
     s1+=209.0;
    } else {
     s0+=13.0;
     s1+=529.0;
    }
   } else {
    if(i44<0.0003948798112105578){
     s0+=5.0;
    } else {
     s0+=50.0;
     s1+=9697.0;
    }
   }
  }
 }
}
if(i22<0.00011557340621948242){
 if(i25<0.025474444031715393){
  if(i3<0.000660240650177002){
   if(i1<0.08196407556533813){
    if(i13<1.0410068035125732){
     s0+=55139.0;
     s1+=513.0;
    } else {
     s0+=8353.0;
     s1+=761.0;
    }
   } else {
    if(i48<0.004013419151306152){
     s0+=393.0;
     s1+=736.0;
    } else {
     s0+=756.0;
     s1+=137.0;
    }
   }
  } else {
   if(i33<0.007792695425450802){
    if(i20<1.040676236152649){
     s0+=34.0;
     s1+=1.0;
    } else {
     s0+=12.0;
     s1+=436.0;
    }
   } else {
    if(i46<0.0050146449357271194){
     s0+=101.0;
     s1+=2.0;
    } else {
     s0+=5.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i8<-4.1425228118896484e-05){
   if(i62<1.0225846767425537){
    if(i5<0.9966002702713013){
     s0+=3786.0;
     s1+=91.0;
    } else {
     s0+=128.0;
     s1+=66.0;
    }
   } else {
    if(i39<-0.00010052323341369629){
     s0+=102.0;
    } else {
     s0+=2.0;
     s1+=95.0;
    }
   }
  } else {
   if(i2<0.0672876238822937){
    if(i73<0.982244610786438){
     s0+=751.0;
     s1+=127.0;
    } else {
     s0+=359.0;
     s1+=537.0;
    }
   } else {
    if(i37<0.025745097547769547){
     s0+=315.0;
     s1+=1077.0;
    } else {
     s0+=45.0;
     s1+=2618.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00017759203910827637){
  s0+=328.0;
 } else {
  if(i6<-4.402867489261553e-05){
   if(i13<1.028781533241272){
    s0+=17.0;
   } else {
    if(i1<0.058233946561813354){
     s0+=41.0;
     s1+=203.0;
    } else {
     s1+=9566.0;
    }
   }
  } else {
   if(i56<0.0011024543782696128){
    if(i64<-1.2277830592211103e-06){
     s0+=425.0;
     s1+=3.0;
    } else {
     s0+=10.0;
     s1+=58.0;
    }
   } else {
    if(i12<1.0043425559997559){
     s0+=1.0;
     s1+=6.0;
    } else {
     s1+=88.0;
    }
   }
  }
 }
}
if(i18<1.0016214847564697){
 if(i1<0.07925385236740112){
  if(i51<-0.02790290117263794){
   if(i1<0.034203529357910156){
    if(i35<1.1013743877410889){
     s0+=757.0;
     s1+=205.0;
    } else {
     s0+=1273.0;
     s1+=74.0;
    }
   } else {
    if(i19<1.0171124935150146){
     s0+=173.0;
     s1+=334.0;
    } else {
     s0+=118.0;
     s1+=5.0;
    }
   }
  } else {
   if(i20<1.0486011505126953){
    if(i35<1.0856719017028809){
     s0+=36004.0;
    } else {
     s0+=18762.0;
     s1+=277.0;
    }
   } else {
    if(i1<0.058958619832992554){
     s0+=9192.0;
     s1+=493.0;
    } else {
     s0+=1580.0;
     s1+=611.0;
    }
   }
  }
 } else {
  if(i42<0.9988081455230713){
   if(i13<1.398578405380249){
    if(i5<0.9969763159751892){
     s0+=437.0;
    } else {
     s0+=17.0;
     s1+=7.0;
    }
   } else {
    s1+=8.0;
   }
  } else {
   if(i59<-7.75618027546443e-05){
    if(i49<0.9998749494552612){
     s0+=168.0;
     s1+=3302.0;
    } else {
     s0+=605.0;
     s1+=1123.0;
    }
   } else {
    if(i32<0.053849101066589355){
     s0+=3.0;
     s1+=227.0;
    } else {
     s0+=466.0;
     s1+=199.0;
    }
   }
  }
 }
} else {
 if(i5<1.0024183988571167){
  if(i4<0.11261019110679626){
   if(i56<0.005706646479666233){
    if(i46<0.0020211213268339634){
     s0+=838.0;
     s1+=82.0;
    } else {
     s0+=173.0;
     s1+=130.0;
    }
   } else {
    if(i0<0.0011035501956939697){
     s0+=3.0;
     s1+=1.0;
    } else {
     s1+=78.0;
    }
   }
  } else {
   if(i68<0.000720828480552882){
    if(i40<0.0817716121673584){
     s0+=2.0;
     s1+=55.0;
    } else {
     s0+=30.0;
     s1+=2.0;
    }
   } else {
    if(i46<-0.0025438133161514997){
     s0+=1.0;
     s1+=48.0;
    } else {
     s1+=248.0;
    }
   }
  }
 } else {
  if(i0<0.05717182159423828){
   if(i50<0.006794908083975315){
    if(i31<1.2062125205993652){
     s0+=3.0;
     s1+=31.0;
    } else {
     s0+=84.0;
     s1+=2.0;
    }
   } else {
    if(i68<0.0002482155105099082){
     s0+=31.0;
     s1+=18.0;
    } else {
     s0+=13.0;
     s1+=264.0;
    }
   }
  } else {
   if(i0<0.1319122314453125){
    if(i48<0.004147231578826904){
     s0+=32.0;
     s1+=1603.0;
    } else {
     s0+=61.0;
     s1+=34.0;
    }
   } else {
    if(i23<0.9951820373535156){
     s0+=7.0;
     s1+=55.0;
    } else {
     s0+=1.0;
     s1+=7902.0;
    }
   }
  }
 }
}
if(i11<0.00042122602462768555){
 if(i1<0.08241268992424011){
  if(i13<1.0420758724212646){
   if(i55<-0.004006505012512207){
    if(i33<0.00036974326940253377){
     s0+=1537.0;
    } else {
     s0+=1852.0;
     s1+=287.0;
    }
   } else {
    if(i63<-0.0011128783226013184){
     s0+=2176.0;
     s1+=149.0;
    } else {
     s0+=53889.0;
     s1+=145.0;
    }
   }
  } else {
   if(i16<0.9907528162002563){
    if(i44<0.0015597962774336338){
     s0+=206.0;
     s1+=375.0;
    } else {
     s0+=1070.0;
     s1+=160.0;
    }
   } else {
    if(i6<-3.234008181607351e-05){
     s0+=617.0;
     s1+=415.0;
    } else {
     s0+=6472.0;
     s1+=356.0;
    }
   }
  }
 } else {
  if(i70<-0.020607082173228264){
   if(i67<0.11671285331249237){
    if(i6<-1.379530476697255e-05){
     s0+=214.0;
     s1+=272.0;
    } else {
     s0+=658.0;
     s1+=67.0;
    }
   } else {
    if(i15<-1.138448715209961e-05){
     s0+=32.0;
     s1+=4.0;
    } else {
     s0+=17.0;
     s1+=624.0;
    }
   }
  } else {
   if(i35<1.0840110778808594){
    s0+=129.0;
   } else {
    if(i11<-0.00043773651123046875){
     s0+=84.0;
     s1+=8.0;
    } else {
     s0+=278.0;
     s1+=2852.0;
    }
   }
  }
 }
} else {
 if(i3<0.0006050765514373779){
  if(i0<0.11085593700408936){
   if(i46<0.003661364084109664){
    if(i55<0.009431600570678711){
     s0+=732.0;
     s1+=170.0;
    } else {
     s0+=643.0;
     s1+=21.0;
    }
   } else {
    if(i35<1.4901387691497803){
     s0+=15.0;
     s1+=72.0;
    } else {
     s0+=108.0;
     s1+=71.0;
    }
   }
  } else {
   if(i6<-5.023310586693697e-05){
    if(i20<1.0828543901443481){
     s0+=10.0;
    } else {
     s0+=10.0;
     s1+=404.0;
    }
   } else {
    if(i19<1.0114408731460571){
     s0+=18.0;
     s1+=77.0;
    } else {
     s0+=43.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i6<-4.331633317633532e-05){
   if(i0<0.07648035883903503){
    if(i60<0.00180131196975708){
     s0+=74.0;
     s1+=668.0;
    } else {
     s0+=45.0;
     s1+=4.0;
    }
   } else {
    if(i5<1.00333571434021){
     s0+=60.0;
     s1+=485.0;
    } else {
     s0+=41.0;
     s1+=9150.0;
    }
   }
  } else {
   if(i34<0.0003072249819524586){
    if(i17<0.003731486387550831){
     s0+=112.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i31<1.2527469396591187){
     s0+=1.0;
     s1+=214.0;
    } else {
     s0+=35.0;
     s1+=4.0;
    }
   }
  }
 }
}
if(i1<0.08270382881164551){
 if(i51<-0.028364956378936768){
  if(i8<1.9848346710205078e-05){
   if(i30<1.0556960105895996){
    s0+=609.0;
   } else {
    if(i10<0.9928156137466431){
     s0+=620.0;
     s1+=64.0;
    } else {
     s0+=1050.0;
     s1+=506.0;
    }
   }
  } else {
   if(i63<0.0021506547927856445){
    if(i44<0.00031212763860821724){
     s0+=13.0;
    } else {
     s0+=37.0;
     s1+=605.0;
    }
   } else {
    if(i0<0.07734161615371704){
     s0+=66.0;
     s1+=3.0;
    } else {
     s1+=4.0;
    }
   }
  }
 } else {
  if(i15<1.8775463104248047e-05){
   if(i34<0.00030283076921477914){
    if(i61<-0.004633128643035889){
     s1+=32.0;
    } else {
     s0+=52650.0;
     s1+=291.0;
    }
   } else {
    if(i47<0.0016083500813692808){
     s0+=4588.0;
     s1+=1016.0;
    } else {
     s0+=8356.0;
     s1+=116.0;
    }
   }
  } else {
   if(i22<6.434321403503418e-05){
    if(i22<-0.0002930760383605957){
     s0+=649.0;
     s1+=12.0;
    } else {
     s0+=483.0;
     s1+=179.0;
    }
   } else {
    if(i42<1.0003843307495117){
     s0+=189.0;
    } else {
     s0+=34.0;
     s1+=332.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985270500183105){
  if(i45<-1.0349973308620974e-05){
   if(i18<0.997739315032959){
    s0+=21.0;
   } else {
    if(i49<1.0000680685043335){
     s1+=21.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i41<0.00017937980010174215){
    s0+=436.0;
   } else {
    if(i54<0.03009069338440895){
     s0+=9.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.0017052508192136884){
   if(i48<0.004288613796234131){
    if(i3<0.0002986788749694824){
     s0+=166.0;
     s1+=129.0;
    } else {
     s0+=3.0;
     s1+=142.0;
    }
   } else {
    if(i15<-9.357929229736328e-06){
     s0+=4.0;
     s1+=29.0;
    } else {
     s0+=425.0;
     s1+=18.0;
    }
   }
  } else {
   if(i14<1.913309097290039e-05){
    if(i57<0.0014444742118939757){
     s0+=554.0;
     s1+=1660.0;
    } else {
     s0+=42.0;
     s1+=1425.0;
    }
   } else {
    if(i47<0.00024294102331623435){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=55.0;
     s1+=10599.0;
    }
   }
  }
 }
}
if(i13<1.057713270187378){
 if(i3<0.0006679892539978027){
  if(i29<1.0077424049377441){
   if(i33<0.00034801167203113437){
    if(i40<0.05722656846046448){
     s0+=36227.0;
     s1+=2.0;
    } else {
     s0+=107.0;
     s1+=1.0;
    }
   } else {
    if(i36<1.103413462638855){
     s0+=6137.0;
     s1+=1320.0;
    } else {
     s0+=22291.0;
     s1+=403.0;
    }
   }
  } else {
   if(i46<0.0009687623241916299){
    if(i7<1.0081508159637451){
     s0+=28.0;
     s1+=68.0;
    } else {
     s0+=1.0;
     s1+=202.0;
    }
   } else {
    if(i24<1.0389833450317383){
     s0+=209.0;
     s1+=29.0;
    } else {
     s0+=2.0;
     s1+=28.0;
    }
   }
  }
 } else {
  if(i43<0.00037981319474056363){
   s0+=21.0;
  } else {
   if(i42<1.000960111618042){
    if(i49<0.9999665021896362){
     s0+=1.0;
     s1+=115.0;
    } else {
     s0+=40.0;
     s1+=9.0;
    }
   } else {
    if(i0<0.028688520193099976){
     s0+=7.0;
     s1+=14.0;
    } else {
     s1+=369.0;
    }
   }
  }
 }
} else {
 if(i1<0.08358272910118103){
  if(i22<0.0002022385597229004){
   if(i38<0.0011287989327684045){
    if(i6<-1.7114312868216075e-05){
     s0+=54.0;
     s1+=330.0;
    } else {
     s0+=885.0;
     s1+=197.0;
    }
   } else {
    if(i63<-0.007255524396896362){
     s0+=616.0;
     s1+=319.0;
    } else {
     s0+=3356.0;
     s1+=322.0;
    }
   }
  } else {
   if(i6<-4.3608175474219024e-05){
    if(i8<1.9162893295288086e-05){
     s0+=1.0;
     s1+=3.0;
    } else {
     s1+=344.0;
    }
   } else {
    if(i9<1.048161506652832){
     s1+=1.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i1<0.12590354681015015){
   if(i53<0.0609569251537323){
    if(i43<0.0005141698056831956){
     s0+=15.0;
     s1+=1.0;
    } else {
     s0+=53.0;
     s1+=1535.0;
    }
   } else {
    if(i3<0.0016311407089233398){
     s0+=729.0;
     s1+=144.0;
    } else {
     s0+=4.0;
     s1+=41.0;
    }
   }
  } else {
   if(i42<0.9988077878952026){
    if(i30<1.453892469406128){
     s0+=183.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i38<0.0018862688448280096){
     s0+=178.0;
     s1+=491.0;
    } else {
     s0+=165.0;
     s1+=10634.0;
    }
   }
  }
 }
}
if(i3<0.0005491375923156738){
 if(i13<1.0452277660369873){
  if(i28<0.0002780074137263){
   if(i74<-0.0006361007690429688){
    if(i11<9.080767631530762e-05){
     s0+=3345.0;
     s1+=129.0;
    } else {
     s0+=89.0;
     s1+=51.0;
    }
   } else {
    if(i1<0.0832170844078064){
     s0+=49557.0;
     s1+=129.0;
    } else {
     s0+=44.0;
     s1+=44.0;
    }
   }
  } else {
   if(i1<0.08133819699287415){
    if(i3<-0.0008146464824676514){
     s0+=4879.0;
     s1+=51.0;
    } else {
     s0+=4237.0;
     s1+=452.0;
    }
   } else {
    if(i14<-0.0013898015022277832){
     s0+=89.0;
     s1+=36.0;
    } else {
     s0+=35.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i18<0.9988464117050171){
   if(i45<-1.0926957656920422e-05){
    if(i63<-0.005986839532852173){
     s0+=34.0;
     s1+=2.0;
    } else {
     s0+=18.0;
     s1+=53.0;
    }
   } else {
    if(i44<0.0022772466763854027){
     s0+=751.0;
     s1+=40.0;
    } else {
     s0+=1563.0;
     s1+=1.0;
    }
   }
  } else {
   if(i69<0.9998080730438232){
    if(i2<0.06577414274215698){
     s0+=746.0;
     s1+=388.0;
    } else {
     s0+=286.0;
     s1+=1755.0;
    }
   } else {
    if(i68<0.0006682708044536412){
     s0+=3830.0;
     s1+=758.0;
    } else {
     s0+=1036.0;
     s1+=1336.0;
    }
   }
  }
 }
} else {
 if(i43<0.0003575787995941937){
  s0+=154.0;
 } else {
  if(i3<0.0009583234786987305){
   if(i56<0.0010365978814661503){
    if(i1<0.08910027146339417){
     s0+=162.0;
     s1+=32.0;
    } else {
     s0+=32.0;
     s1+=231.0;
    }
   } else {
    if(i22<-6.961822509765625e-05){
     s0+=115.0;
     s1+=358.0;
    } else {
     s0+=18.0;
     s1+=1067.0;
    }
   }
  } else {
   if(i22<1.1622905731201172e-05){
    if(i56<0.0026482774410396814){
     s0+=68.0;
     s1+=140.0;
    } else {
     s0+=12.0;
     s1+=705.0;
    }
   } else {
    if(i14<0.0002606511116027832){
     s0+=3.0;
     s1+=148.0;
    } else {
     s1+=9088.0;
    }
   }
  }
 }
}
if(i6<-8.145104220602661e-05){
 if(i1<0.06486093997955322){
  if(i2<0.0109177827835083){
   if(i23<1.0101490020751953){
    if(i31<1.2454195022583008){
     s1+=8.0;
    } else {
     s0+=350.0;
     s1+=4.0;
    }
   } else {
    if(i54<0.17970336973667145){
     s1+=18.0;
    } else {
     s0+=9.0;
     s1+=2.0;
    }
   }
  } else {
   if(i20<1.0591769218444824){
    s0+=173.0;
   } else {
    if(i60<0.0006801187992095947){
     s0+=26.0;
     s1+=268.0;
    } else {
     s0+=86.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i20<1.0567119121551514){
   if(i3<0.0005307197570800781){
    s0+=38.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i1<0.12855765223503113){
    if(i65<-0.008865241892635822){
     s0+=61.0;
     s1+=28.0;
    } else {
     s0+=31.0;
     s1+=1135.0;
    }
   } else {
    if(i25<0.0012295146007090807){
     s0+=1.0;
     s1+=12.0;
    } else {
     s0+=10.0;
     s1+=9695.0;
    }
   }
  }
 }
} else {
 if(i13<1.0452277660369873){
  if(i5<1.0025427341461182){
   if(i2<0.08023625612258911){
    if(i51<-0.031923919916152954){
     s0+=567.0;
     s1+=112.0;
    } else {
     s0+=60803.0;
     s1+=674.0;
    }
   } else {
    if(i10<0.9940632581710815){
     s0+=155.0;
     s1+=12.0;
    } else {
     s0+=39.0;
     s1+=220.0;
    }
   }
  } else {
   if(i30<1.1316661834716797){
    s1+=125.0;
   } else {
    if(i33<0.004404110834002495){
     s0+=58.0;
    } else {
     s1+=11.0;
    }
   }
  }
 } else {
  if(i1<0.06948328018188477){
   if(i44<0.001985252369195223){
    if(i25<0.014950064942240715){
     s0+=2221.0;
     s1+=288.0;
    } else {
     s0+=413.0;
     s1+=595.0;
    }
   } else {
    if(i17<0.008246587589383125){
     s0+=3690.0;
     s1+=124.0;
    } else {
     s0+=119.0;
     s1+=53.0;
    }
   }
  } else {
   if(i70<-0.01614435389637947){
    if(i38<0.005337991751730442){
     s0+=1197.0;
     s1+=439.0;
    } else {
     s0+=164.0;
     s1+=617.0;
    }
   } else {
    if(i53<0.04191631078720093){
     s0+=54.0;
     s1+=1706.0;
    } else {
     s0+=621.0;
     s1+=1216.0;
    }
   }
  }
 }
}
if(i11<0.0004476308822631836){
 if(i13<1.0452277660369873){
  if(i1<0.08200076222419739){
   if(i30<1.0557184219360352){
    if(i54<0.06419296562671661){
     s0+=41799.0;
    } else {
     s0+=236.0;
     s1+=1.0;
    }
   } else {
    if(i33<0.0006558714085258543){
     s0+=4726.0;
     s1+=632.0;
    } else {
     s0+=14484.0;
     s1+=118.0;
    }
   }
  } else {
   if(i66<2.0674706320278347e-05){
    if(i36<1.0724589824676514){
     s0+=32.0;
     s1+=2.0;
    } else {
     s0+=17.0;
     s1+=182.0;
    }
   } else {
    if(i11<-0.0005041658878326416){
     s0+=86.0;
    } else {
     s0+=72.0;
     s1+=30.0;
    }
   }
  }
 } else {
  if(i15<-1.4901161193847656e-05){
   if(i38<0.005538044031709433){
    if(i68<3.043024116777815e-05){
     s0+=2.0;
     s1+=2.0;
    } else {
     s0+=1595.0;
     s1+=2.0;
    }
   } else {
    if(i1<0.10238000750541687){
     s0+=93.0;
     s1+=2.0;
    } else {
     s1+=15.0;
    }
   }
  } else {
   if(i38<0.006545540876686573){
    if(i30<1.196009874343872){
     s0+=3794.0;
     s1+=3020.0;
    } else {
     s0+=2052.0;
     s1+=233.0;
    }
   } else {
    if(i32<0.04616263508796692){
     s0+=285.0;
     s1+=258.0;
    } else {
     s0+=104.0;
     s1+=1501.0;
    }
   }
  }
 }
} else {
 if(i2<0.07496404647827148){
  if(i35<1.2392117977142334){
   if(i75<0.00034291454358026385){
    if(i51<0.04452541470527649){
     s1+=729.0;
    } else {
     s0+=2.0;
    }
   } else {
    s0+=240.0;
   }
  } else {
   if(i60<-0.002402693033218384){
    if(i3<0.000344693660736084){
     s0+=83.0;
     s1+=64.0;
    } else {
     s0+=43.0;
     s1+=271.0;
    }
   } else {
    if(i16<0.9971650838851929){
     s0+=369.0;
     s1+=110.0;
    } else {
     s0+=633.0;
     s1+=15.0;
    }
   }
  }
 } else {
  if(i43<0.005172088276594877){
   if(i73<1.0017142295837402){
    if(i14<-0.0006312131881713867){
     s0+=187.0;
     s1+=200.0;
    } else {
     s0+=15.0;
     s1+=131.0;
    }
   } else {
    if(i68<0.00017396404291503131){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=18.0;
     s1+=1332.0;
    }
   }
  } else {
   if(i3<0.00018668174743652344){
    if(i13<1.091799259185791){
     s0+=61.0;
     s1+=15.0;
    } else {
     s1+=119.0;
    }
   } else {
    if(i17<0.006566368974745274){
     s0+=48.0;
     s1+=550.0;
    } else {
     s0+=34.0;
     s1+=7594.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i4<0.07105055451393127){
  if(i20<1.0486011505126953){
   if(i20<1.042891263961792){
    if(i27<0.9775573015213013){
     s0+=1752.0;
     s1+=43.0;
    } else {
     s0+=49794.0;
     s1+=114.0;
    }
   } else {
    if(i57<0.0006806306773796678){
     s0+=3475.0;
     s1+=67.0;
    } else {
     s0+=450.0;
     s1+=125.0;
    }
   }
  } else {
   if(i0<0.07756328582763672){
    if(i35<1.1013743877410889){
     s0+=2538.0;
     s1+=1035.0;
    } else {
     s0+=10302.0;
     s1+=423.0;
    }
   } else {
    if(i40<0.03643384575843811){
     s0+=124.0;
     s1+=778.0;
    } else {
     s0+=173.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i25<0.0263848677277565){
   if(i6<-2.031802068813704e-05){
    if(i30<1.1068296432495117){
     s0+=36.0;
     s1+=429.0;
    } else {
     s0+=358.0;
     s1+=313.0;
    }
   } else {
    if(i48<-0.0012592971324920654){
     s0+=34.0;
     s1+=61.0;
    } else {
     s0+=966.0;
     s1+=108.0;
    }
   }
  } else {
   if(i38<0.005408395081758499){
    if(i20<1.200620174407959){
     s0+=145.0;
     s1+=730.0;
    } else {
     s0+=274.0;
     s1+=52.0;
    }
   } else {
    if(i5<0.9940969944000244){
     s0+=39.0;
     s1+=41.0;
    } else {
     s0+=42.0;
     s1+=1140.0;
    }
   }
  }
 }
} else {
 if(i47<0.00024842278799042106){
  if(i6<-4.959206853527576e-05){
   s1+=13.0;
  } else {
   s0+=204.0;
  }
 } else {
  if(i14<0.0014260411262512207){
   if(i45<-1.426217750122305e-05){
    if(i23<0.9981918931007385){
     s0+=44.0;
     s1+=41.0;
    } else {
     s0+=183.0;
     s1+=2999.0;
    }
   } else {
    if(i17<0.0025486471131443977){
     s0+=145.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=169.0;
    }
   }
  } else {
   s1+=8429.0;
  }
 }
}
if(i4<0.07196676731109619){
 if(i5<1.0024800300598145){
  if(i0<0.08303630352020264){
   if(i31<1.0598037242889404){
    s0+=37005.0;
   } else {
    if(i33<0.001444727648049593){
     s0+=11926.0;
     s1+=1602.0;
    } else {
     s0+=19358.0;
     s1+=354.0;
    }
   }
  } else {
   if(i77<0.9956538677215576){
    s0+=258.0;
   } else {
    if(i43<0.0029571515042334795){
     s0+=55.0;
     s1+=742.0;
    } else {
     s0+=125.0;
     s1+=77.0;
    }
   }
  }
 } else {
  if(i39<0.00016418099403381348){
   if(i33<0.001514054136350751){
    s1+=171.0;
   } else {
    if(i45<-1.548665386508219e-05){
     s0+=6.0;
     s1+=44.0;
    } else {
     s0+=148.0;
    }
   }
  } else {
   if(i14<-0.0025234222412109375){
    if(i0<0.03983005881309509){
     s0+=15.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i20<1.0365266799926758){
     s0+=7.0;
    } else {
     s0+=61.0;
     s1+=1767.0;
    }
   }
  }
 }
} else {
 if(i8<3.331899642944336e-05){
  if(i37<0.04032256454229355){
   if(i51<0.06881272792816162){
    if(i7<1.0082693099975586){
     s0+=718.0;
     s1+=856.0;
    } else {
     s0+=130.0;
     s1+=744.0;
    }
   } else {
    if(i64<9.78298885456752e-07){
     s0+=682.0;
     s1+=334.0;
    } else {
     s0+=236.0;
     s1+=4.0;
    }
   }
  } else {
   if(i9<1.0616405010223389){
    if(i16<0.9864054322242737){
     s1+=14.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i3<0.0003368258476257324){
     s1+=617.0;
    } else {
     s0+=6.0;
     s1+=113.0;
    }
   }
  }
 } else {
  if(i43<0.0004953612224198878){
   s0+=7.0;
  } else {
   if(i3<0.000849604606628418){
    if(i17<0.003809770569205284){
     s0+=77.0;
     s1+=63.0;
    } else {
     s0+=43.0;
     s1+=918.0;
    }
   } else {
    if(i69<1.0008459091186523){
     s0+=28.0;
     s1+=8226.0;
    } else {
     s0+=34.0;
     s1+=651.0;
    }
   }
  }
 }
}
if(i1<0.08186683058738708){
 if(i13<1.0436501502990723){
  if(i74<-0.0005764365196228027){
   if(i10<0.9943404197692871){
    if(i32<0.07806158065795898){
     s0+=8221.0;
     s1+=66.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i31<1.157791018486023){
     s0+=949.0;
     s1+=535.0;
    } else {
     s0+=1133.0;
     s1+=19.0;
    }
   }
  } else {
   if(i8<3.8951635360717773e-05){
    if(i47<0.0002896276128012687){
     s0+=43159.0;
     s1+=15.0;
    } else {
     s0+=7312.0;
     s1+=213.0;
    }
   } else {
    if(i13<1.0340795516967773){
     s0+=299.0;
     s1+=4.0;
    } else {
     s0+=14.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i5<1.002469539642334){
   if(i38<0.0011285454966127872){
    if(i74<-0.000515371561050415){
     s0+=187.0;
     s1+=373.0;
    } else {
     s0+=2314.0;
     s1+=534.0;
    }
   } else {
    if(i25<0.025167398154735565){
     s0+=4495.0;
     s1+=189.0;
    } else {
     s0+=1030.0;
     s1+=281.0;
    }
   }
  } else {
   if(i44<0.002442799974232912){
    if(i69<1.004544973373413){
     s1+=550.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i19<1.0046335458755493){
     s0+=75.0;
     s1+=257.0;
    } else {
     s0+=117.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00039246678352355957){
  if(i43<0.008486971259117126){
   if(i5<0.9963383674621582){
    s0+=377.0;
   } else {
    if(i40<0.047532469034194946){
     s1+=2.0;
    } else {
     s0+=46.0;
     s1+=2.0;
    }
   }
  } else {
   if(i21<0.9909490346908569){
    s1+=18.0;
   } else {
    if(i77<0.9963645935058594){
     s1+=1.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i22<3.802776336669922e-05){
   if(i33<0.0004515123728197068){
    if(i24<1.031090497970581){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=188.0;
    }
   } else {
    if(i41<3.162371285725385e-05){
     s0+=323.0;
     s1+=238.0;
    } else {
     s0+=614.0;
     s1+=3401.0;
    }
   }
  } else {
   if(i3<0.00012040138244628906){
    if(i35<1.2604451179504395){
     s0+=4.0;
     s1+=148.0;
    } else {
     s0+=79.0;
     s1+=35.0;
    }
   } else {
    if(i36<1.0598008632659912){
     s0+=8.0;
    } else {
     s0+=54.0;
     s1+=10284.0;
    }
   }
  }
 }
}
if(i11<0.00043511390686035156){
 if(i4<0.07105270028114319){
  if(i1<0.07829615473747253){
   if(i46<0.001539923483505845){
    if(i7<1.007720708847046){
     s0+=60772.0;
     s1+=623.0;
    } else {
     s0+=422.0;
     s1+=160.0;
    }
   } else {
    if(i30<1.096760869026184){
     s0+=1820.0;
     s1+=667.0;
    } else {
     s0+=4448.0;
     s1+=230.0;
    }
   }
  } else {
   if(i33<0.0004536931519396603){
    if(i53<0.0643867552280426){
     s0+=117.0;
     s1+=5.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i35<1.1824603080749512){
     s0+=3.0;
     s1+=799.0;
    } else {
     s0+=57.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i1<0.11304643750190735){
   if(i34<0.00117190508171916){
    if(i23<0.996545135974884){
     s0+=167.0;
     s1+=19.0;
    } else {
     s0+=278.0;
     s1+=475.0;
    }
   } else {
    if(i17<0.005722695961594582){
     s0+=651.0;
     s1+=75.0;
    } else {
     s0+=35.0;
     s1+=78.0;
    }
   }
  } else {
   if(i42<0.9987814426422119){
    if(i56<0.003193751908838749){
     s0+=238.0;
    } else {
     s1+=7.0;
    }
   } else {
    if(i38<0.005945160053670406){
     s0+=372.0;
     s1+=1012.0;
    } else {
     s0+=25.0;
     s1+=1649.0;
    }
   }
  }
 }
} else {
 if(i4<0.05788600444793701){
  if(i14<0.0006164312362670898){
   if(i5<1.0015537738800049){
    if(i2<0.06417912244796753){
     s0+=1029.0;
     s1+=80.0;
    } else {
     s0+=12.0;
     s1+=39.0;
    }
   } else {
    if(i51<0.009639501571655273){
     s0+=96.0;
     s1+=359.0;
    } else {
     s0+=66.0;
     s1+=12.0;
    }
   }
  } else {
   if(i17<0.0017781280912458897){
    if(i6<-6.58419230603613e-05){
     s1+=6.0;
    } else {
     s0+=81.0;
    }
   } else {
    if(i64<-4.376198376121465e-06){
     s1+=877.0;
    } else {
     s0+=1.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i8<3.784894943237305e-05){
   if(i4<0.09891510009765625){
    if(i38<0.001192488707602024){
     s0+=5.0;
     s1+=53.0;
    } else {
     s0+=346.0;
     s1+=108.0;
    }
   } else {
    if(i37<0.025662042200565338){
     s0+=48.0;
     s1+=98.0;
    } else {
     s0+=6.0;
     s1+=273.0;
    }
   }
  } else {
   if(i5<1.0040810108184814){
    if(i4<0.13053590059280396){
     s0+=116.0;
     s1+=327.0;
    } else {
     s0+=12.0;
     s1+=622.0;
    }
   } else {
    if(i2<0.16360238194465637){
     s0+=17.0;
     s1+=1355.0;
    } else {
     s1+=6953.0;
    }
   }
  }
 }
}
if(i5<1.00242018699646){
 if(i1<0.0855831503868103){
  if(i9<1.0401519536972046){
   if(i28<0.0002923295251093805){
    if(i20<1.0451585054397583){
     s0+=48459.0;
     s1+=107.0;
    } else {
     s0+=5793.0;
     s1+=318.0;
    }
   } else {
    if(i10<0.9930061101913452){
     s0+=5232.0;
     s1+=63.0;
    } else {
     s0+=3271.0;
     s1+=621.0;
    }
   }
  } else {
   if(i51<-0.024743765592575073){
    if(i6<-2.7557154680835083e-05){
     s0+=130.0;
     s1+=286.0;
    } else {
     s0+=1191.0;
     s1+=195.0;
    }
   } else {
    if(i6<-2.158160714316182e-05){
     s0+=1307.0;
     s1+=398.0;
    } else {
     s0+=3751.0;
     s1+=172.0;
    }
   }
  }
 } else {
  if(i70<-0.019701093435287476){
   if(i38<0.00534812081605196){
    if(i41<4.179897587164305e-05){
     s0+=467.0;
     s1+=17.0;
    } else {
     s0+=479.0;
     s1+=189.0;
    }
   } else {
    if(i6<-8.103264917735942e-06){
     s0+=91.0;
     s1+=938.0;
    } else {
     s0+=40.0;
     s1+=31.0;
    }
   }
  } else {
   if(i8<-5.5730342864990234e-05){
    if(i66<4.400893158162944e-05){
     s0+=126.0;
     s1+=7.0;
    } else {
     s0+=12.0;
     s1+=43.0;
    }
   } else {
    if(i40<0.053326427936553955){
     s0+=68.0;
     s1+=2122.0;
    } else {
     s0+=212.0;
     s1+=339.0;
    }
   }
  }
 }
} else {
 if(i2<0.05434718728065491){
  if(i68<0.00046705282875336707){
   if(i5<1.004164695739746){
    if(i31<1.1386182308197021){
     s0+=12.0;
     s1+=28.0;
    } else {
     s0+=172.0;
     s1+=3.0;
    }
   } else {
    if(i36<1.5603917837142944){
     s1+=67.0;
    } else {
     s0+=8.0;
     s1+=1.0;
    }
   }
  } else {
   if(i22<-0.00033414363861083984){
    if(i41<0.0002668348024599254){
     s1+=4.0;
    } else {
     s0+=27.0;
    }
   } else {
    if(i60<0.0009626448154449463){
     s0+=5.0;
     s1+=376.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i17<0.0022804737091064453){
   if(i45<-1.4896522770868614e-05){
    s1+=164.0;
   } else {
    s0+=66.0;
   }
  } else {
   if(i73<1.0014746189117432){
    if(i54<0.039666883647441864){
     s0+=45.0;
     s1+=113.0;
    } else {
     s0+=57.0;
     s1+=1390.0;
    }
   } else {
    if(i22<-2.980232238769531e-07){
     s0+=12.0;
     s1+=181.0;
    } else {
     s0+=1.0;
     s1+=9030.0;
    }
   }
  }
 }
}
if(i5<1.0024337768554688){
 if(i9<1.0452215671539307){
  if(i48<-0.0018885135650634766){
   if(i8<-2.238154411315918e-05){
    if(i2<0.03808930516242981){
     s0+=1596.0;
     s1+=66.0;
    } else {
     s0+=72.0;
     s1+=82.0;
    }
   } else {
    if(i4<0.03647300601005554){
     s0+=844.0;
     s1+=260.0;
    } else {
     s0+=88.0;
     s1+=261.0;
    }
   }
  } else {
   if(i37<0.0069059887900948524){
    if(i74<-0.0009938478469848633){
     s0+=665.0;
     s1+=93.0;
    } else {
     s0+=42329.0;
     s1+=108.0;
    }
   } else {
    if(i22<-5.072355270385742e-05){
     s0+=18344.0;
     s1+=716.0;
    } else {
     s0+=1131.0;
     s1+=416.0;
    }
   }
  }
 } else {
  if(i25<0.03653229400515556){
   if(i1<0.0893750786781311){
    if(i30<1.1034480333328247){
     s0+=1221.0;
     s1+=480.0;
    } else {
     s0+=2787.0;
     s1+=136.0;
    }
   } else {
    if(i47<0.0016290915664285421){
     s0+=127.0;
     s1+=660.0;
    } else {
     s0+=770.0;
     s1+=491.0;
    }
   }
  } else {
   if(i45<3.893350822181674e-06){
    if(i0<0.09840485453605652){
     s0+=167.0;
     s1+=307.0;
    } else {
     s0+=93.0;
     s1+=1804.0;
    }
   } else {
    s0+=307.0;
   }
  }
 }
} else {
 if(i4<0.050324052572250366){
  if(i0<0.05826732516288757){
   if(i17<0.0023417454212903976){
    if(i41<1.042435451381607e-05){
     s0+=130.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    if(i22<-8.64267349243164e-06){
     s0+=51.0;
     s1+=100.0;
    } else {
     s0+=5.0;
     s1+=212.0;
    }
   }
  } else {
   if(i18<1.001394510269165){
    if(i33<0.001611847896128893){
     s1+=58.0;
    } else {
     s0+=7.0;
    }
   } else {
    if(i70<-0.010983927175402641){
     s0+=1.0;
     s1+=1.0;
    } else {
     s1+=536.0;
    }
   }
  }
 } else {
  if(i1<0.07684719562530518){
   if(i55<0.006232261657714844){
    if(i16<1.015563726425171){
     s0+=11.0;
     s1+=227.0;
    } else {
     s0+=9.0;
     s1+=5.0;
    }
   } else {
    if(i17<0.009108148515224457){
     s0+=45.0;
    } else {
     s0+=1.0;
     s1+=4.0;
    }
   }
  } else {
   if(i56<0.0018121341709047556){
    if(i40<0.054212987422943115){
     s0+=11.0;
     s1+=1825.0;
    } else {
     s0+=59.0;
     s1+=496.0;
    }
   } else {
    if(i37<0.007334141060709953){
     s0+=13.0;
     s1+=232.0;
    } else {
     s0+=3.0;
     s1+=7780.0;
    }
   }
  }
 }
}
if(i1<0.08345785737037659){
 if(i7<1.0081751346588135){
  if(i48<-0.0017799139022827148){
   if(i18<1.0019056797027588){
    if(i31<1.179337501525879){
     s0+=1138.0;
     s1+=563.0;
    } else {
     s0+=2010.0;
     s1+=130.0;
    }
   } else {
    if(i2<0.016870170831680298){
     s0+=95.0;
     s1+=64.0;
    } else {
     s0+=11.0;
     s1+=280.0;
    }
   }
  } else {
   if(i28<0.00029452069429680705){
    if(i1<0.0747900903224945){
     s0+=55145.0;
     s1+=399.0;
    } else {
     s0+=306.0;
     s1+=90.0;
    }
   } else {
    if(i22<-0.00021916627883911133){
     s0+=5403.0;
     s1+=49.0;
    } else {
     s0+=4218.0;
     s1+=836.0;
    }
   }
  }
 } else {
  if(i33<0.000744192861020565){
   if(i22<-3.6656856536865234e-06){
    if(i49<0.9998165369033813){
     s0+=113.0;
    } else {
     s0+=4.0;
     s1+=8.0;
    }
   } else {
    if(i38<0.0013009982649236917){
     s0+=22.0;
     s1+=580.0;
    } else {
     s0+=16.0;
    }
   }
  } else {
   if(i77<1.0035440921783447){
    if(i22<0.00022995471954345703){
     s0+=804.0;
     s1+=47.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i68<0.00015898696437943727){
     s0+=27.0;
     s1+=7.0;
    } else {
     s0+=20.0;
     s1+=105.0;
    }
   }
  }
 }
} else {
 if(i8<1.1026859283447266e-05){
  if(i3<-0.0008330643177032471){
   if(i38<0.006180823780596256){
    if(i49<1.0001126527786255){
     s0+=369.0;
     s1+=1.0;
    } else {
     s0+=26.0;
     s1+=2.0;
    }
   } else {
    if(i69<1.0011310577392578){
     s0+=9.0;
    } else {
     s0+=16.0;
     s1+=123.0;
    }
   }
  } else {
   if(i51<0.061212778091430664){
    if(i25<0.010151535272598267){
     s0+=89.0;
     s1+=70.0;
    } else {
     s0+=134.0;
     s1+=1290.0;
    }
   } else {
    if(i4<0.1727086305618286){
     s0+=476.0;
     s1+=115.0;
    } else {
     s0+=118.0;
     s1+=364.0;
    }
   }
  }
 } else {
  if(i17<0.0032544380519539118){
   if(i51<0.058730095624923706){
    if(i47<0.003760907333344221){
     s0+=25.0;
     s1+=611.0;
    } else {
     s0+=51.0;
     s1+=73.0;
    }
   } else {
    if(i66<-6.452731213357765e-06){
     s1+=30.0;
    } else {
     s0+=182.0;
     s1+=53.0;
    }
   }
  } else {
   if(i59<-0.00019397892174310982){
    if(i1<0.11704188585281372){
     s0+=35.0;
     s1+=675.0;
    } else {
     s0+=16.0;
     s1+=9465.0;
    }
   } else {
    if(i15<4.559755325317383e-05){
     s0+=117.0;
     s1+=712.0;
    } else {
     s1+=483.0;
    }
   }
  }
 }
}
if(i15<1.6510486602783203e-05){
 if(i2<0.08225265145301819){
  if(i30<1.0598037242889404){
   if(i25<0.026919357478618622){
    if(i47<0.0003216126933693886){
     s0+=40351.0;
    } else {
     s0+=3220.0;
     s1+=28.0;
    }
   } else {
    if(i37<0.013874891214072704){
     s0+=152.0;
    } else {
     s0+=40.0;
     s1+=13.0;
    }
   }
  } else {
   if(i36<1.103413462638855){
    if(i33<0.0005063102580606937){
     s0+=3002.0;
     s1+=523.0;
    } else {
     s0+=446.0;
     s1+=1101.0;
    }
   } else {
    if(i1<0.08795154094696045){
     s0+=20581.0;
     s1+=448.0;
    } else {
     s0+=14.0;
     s1+=34.0;
    }
   }
  }
 } else {
  if(i53<0.05837848782539368){
   if(i15<-1.9311904907226562e-05){
    s0+=73.0;
   } else {
    if(i1<0.08401688933372498){
     s0+=20.0;
     s1+=39.0;
    } else {
     s0+=15.0;
     s1+=2144.0;
    }
   }
  } else {
   if(i2<0.2626110315322876){
    if(i70<-0.0240357406437397){
     s0+=698.0;
     s1+=133.0;
    } else {
     s0+=360.0;
     s1+=628.0;
    }
   } else {
    if(i38<0.005280967801809311){
     s0+=114.0;
     s1+=15.0;
    } else {
     s0+=6.0;
     s1+=917.0;
    }
   }
  }
 }
} else {
 if(i5<1.001824140548706){
  if(i4<0.10763511061668396){
   if(i50<0.014814982190728188){
    if(i67<0.16444207727909088){
     s0+=1709.0;
     s1+=144.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i12<0.9505403637886047){
     s0+=12.0;
    } else {
     s0+=32.0;
     s1+=119.0;
    }
   }
  } else {
   if(i33<0.005260646343231201){
    if(i55<0.018879175186157227){
     s0+=3.0;
     s1+=28.0;
    } else {
     s0+=38.0;
     s1+=17.0;
    }
   } else {
    if(i25<0.01046217605471611){
     s0+=8.0;
     s1+=10.0;
    } else {
     s0+=3.0;
     s1+=313.0;
    }
   }
  }
 } else {
  if(i4<0.04237663745880127){
   if(i34<0.00024204395595006645){
    if(i42<1.0010340213775635){
     s0+=64.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i55<0.0036469995975494385){
     s0+=72.0;
     s1+=626.0;
    } else {
     s0+=27.0;
     s1+=7.0;
    }
   }
  } else {
   if(i5<1.0040833950042725){
    if(i35<1.594835877418518){
     s0+=113.0;
     s1+=983.0;
    } else {
     s0+=55.0;
     s1+=94.0;
    }
   } else {
    if(i10<1.006035327911377){
     s0+=32.0;
     s1+=1309.0;
    } else {
     s1+=7306.0;
    }
   }
  }
 }
}
if(i5<1.0023590326309204){
 if(i25<0.022325962781906128){
  if(i19<1.0069515705108643){
   if(i57<0.000789366546086967){
    if(i0<0.07660061120986938){
     s0+=56523.0;
     s1+=239.0;
    } else {
     s0+=952.0;
     s1+=147.0;
    }
   } else {
    if(i44<0.0020884759724140167){
     s0+=1395.0;
     s1+=626.0;
    } else {
     s0+=2838.0;
     s1+=220.0;
    }
   }
  } else {
   if(i6<-3.218165511498228e-05){
    if(i43<0.0015687034465372562){
     s0+=14.0;
     s1+=561.0;
    } else {
     s0+=405.0;
     s1+=131.0;
    }
   } else {
    if(i37<0.012950194999575615){
     s0+=1168.0;
     s1+=9.0;
    } else {
     s0+=784.0;
     s1+=160.0;
    }
   }
  }
 } else {
  if(i36<1.3333371877670288){
   if(i20<1.0447213649749756){
    if(i25<0.04249968379735947){
     s0+=700.0;
     s1+=45.0;
    } else {
     s0+=11.0;
     s1+=15.0;
    }
   } else {
    if(i2<0.06283614039421082){
     s0+=844.0;
     s1+=524.0;
    } else {
     s0+=594.0;
     s1+=2035.0;
    }
   }
  } else {
   if(i2<0.10040134191513062){
    if(i37<0.07266227900981903){
     s0+=4522.0;
     s1+=130.0;
    } else {
     s1+=33.0;
    }
   } else {
    if(i43<0.0030569785740226507){
     s0+=73.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=906.0;
    }
   }
  }
 }
} else {
 if(i34<0.0001870676060207188){
  if(i67<0.0027915178798139095){
   if(i68<0.0002910406328737736){
    s0+=1.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i66<5.755470738222357e-06){
    if(i18<1.0034348964691162){
     s0+=135.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=5.0;
   }
  }
 } else {
  if(i38<0.00032319079036824405){
   s0+=12.0;
  } else {
   if(i17<0.0022073215804994106){
    if(i77<1.0030416250228882){
     s0+=134.0;
     s1+=73.0;
    } else {
     s0+=1.0;
     s1+=93.0;
    }
   } else {
    if(i7<1.0042009353637695){
     s0+=120.0;
     s1+=1650.0;
    } else {
     s0+=50.0;
     s1+=9346.0;
    }
   }
  }
 }
}
if(i3<0.0005491673946380615){
 if(i16<1.0100281238555908){
  if(i54<0.03035922534763813){
   if(i48<-0.0026066601276397705){
    if(i16<0.985499918460846){
     s0+=183.0;
     s1+=237.0;
    } else {
     s0+=306.0;
     s1+=24.0;
    }
   } else {
    if(i2<0.08264073729515076){
     s0+=58109.0;
     s1+=556.0;
    } else {
     s0+=301.0;
     s1+=207.0;
    }
   }
  } else {
   if(i1<0.06934645771980286){
    if(i36<1.1037919521331787){
     s0+=1673.0;
     s1+=568.0;
    } else {
     s0+=7129.0;
     s1+=260.0;
    }
   } else {
    if(i5<0.99650639295578){
     s0+=436.0;
     s1+=131.0;
    } else {
     s0+=392.0;
     s1+=1474.0;
    }
   }
  }
 } else {
  if(i59<-0.00012015787069685757){
   if(i56<0.0016755876131355762){
    if(i7<1.0115861892700195){
     s0+=1082.0;
     s1+=377.0;
    } else {
     s0+=463.0;
     s1+=678.0;
    }
   } else {
    if(i5<0.9974804520606995){
     s0+=55.0;
     s1+=53.0;
    } else {
     s0+=66.0;
     s1+=863.0;
    }
   }
  } else {
   if(i1<0.14482709765434265){
    if(i44<0.0018426240421831608){
     s0+=70.0;
     s1+=10.0;
    } else {
     s0+=286.0;
    }
   } else {
    if(i76<1.321995114267338e-06){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i44<0.0003116395091637969){
  s0+=175.0;
 } else {
  if(i2<0.05852234363555908){
   if(i45<-1.4372940313478466e-05){
    if(i30<1.1961640119552612){
     s0+=8.0;
     s1+=488.0;
    } else {
     s0+=96.0;
     s1+=143.0;
    }
   } else {
    if(i68<0.0005266653024591506){
     s0+=122.0;
    } else {
     s1+=28.0;
    }
   }
  } else {
   if(i1<0.13735926151275635){
    if(i40<0.061251670122146606){
     s0+=76.0;
     s1+=1707.0;
    } else {
     s0+=86.0;
     s1+=55.0;
    }
   } else {
    if(i5<1.0022895336151123){
     s0+=7.0;
     s1+=261.0;
    } else {
     s0+=8.0;
     s1+=8940.0;
    }
   }
  }
 }
}
if(i5<1.0024561882019043){
 if(i13<1.0452277660369873){
  if(i2<0.08546668291091919){
   if(i72<0.01927211880683899){
    if(i61<-0.0027001798152923584){
     s0+=158.0;
     s1+=125.0;
    } else {
     s0+=49722.0;
     s1+=101.0;
    }
   } else {
    if(i36<1.100754976272583){
     s0+=3025.0;
     s1+=526.0;
    } else {
     s0+=9276.0;
     s1+=122.0;
    }
   }
  } else {
   if(i18<0.9980460405349731){
    s0+=65.0;
   } else {
    if(i66<3.8109224988147616e-05){
     s0+=29.0;
     s1+=205.0;
    } else {
     s0+=13.0;
    }
   }
  }
 } else {
  if(i25<0.025013085454702377){
   if(i22<9.900331497192383e-05){
    if(i25<0.014295350760221481){
     s0+=4959.0;
     s1+=491.0;
    } else {
     s0+=1757.0;
     s1+=759.0;
    }
   } else {
    if(i4<0.04865241050720215){
     s0+=189.0;
     s1+=95.0;
    } else {
     s0+=57.0;
     s1+=344.0;
    }
   }
  } else {
   if(i39<-0.00013914704322814941){
    if(i22<-7.170438766479492e-05){
     s0+=479.0;
     s1+=8.0;
    } else {
     s0+=44.0;
     s1+=35.0;
    }
   } else {
    if(i25<0.045974649488925934){
     s0+=702.0;
     s1+=1236.0;
    } else {
     s0+=217.0;
     s1+=1827.0;
    }
   }
  }
 }
} else {
 if(i56<0.0009471739176660776){
  if(i17<0.0021825148724019527){
   if(i6<-5.675188367604278e-05){
    if(i20<1.0476458072662354){
     s0+=4.0;
    } else {
     s0+=4.0;
     s1+=131.0;
    }
   } else {
    s0+=186.0;
   }
  } else {
   s1+=683.0;
  }
 } else {
  if(i14<4.661083221435547e-05){
   if(i75<0.00017983870930038393){
    if(i35<1.5682398080825806){
     s0+=40.0;
     s1+=514.0;
    } else {
     s0+=115.0;
     s1+=83.0;
    }
   } else {
    s1+=467.0;
   }
  } else {
   if(i15<1.4722347259521484e-05){
    if(i17<0.0026138555258512497){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=2.0;
     s1+=605.0;
    }
   } else {
    if(i68<0.00026723829796537757){
     s0+=4.0;
     s1+=341.0;
    } else {
     s1+=8483.0;
    }
   }
  }
 }
}
if(i0<0.08509460091590881){
 if(i20<1.0486011505126953){
  if(i46<0.0016964313108474016){
   if(i63<-0.0014066696166992188){
    if(i12<0.99010169506073){
     s0+=358.0;
     s1+=4.0;
    } else {
     s0+=151.0;
     s1+=81.0;
    }
   } else {
    if(i19<1.0107784271240234){
     s0+=53793.0;
     s1+=133.0;
    } else {
     s1+=3.0;
    }
   }
  } else {
   if(i31<1.0585991144180298){
    s0+=1007.0;
   } else {
    if(i12<0.9895601272583008){
     s0+=526.0;
     s1+=17.0;
    } else {
     s0+=121.0;
     s1+=156.0;
    }
   }
  }
 } else {
  if(i1<0.06596919894218445){
   if(i15<2.568960189819336e-05){
    if(i16<0.9904112815856934){
     s0+=3126.0;
     s1+=613.0;
    } else {
     s0+=8581.0;
     s1+=552.0;
    }
   } else {
    if(i66<1.775403507053852e-05){
     s0+=95.0;
     s1+=393.0;
    } else {
     s0+=289.0;
     s1+=80.0;
    }
   }
  } else {
   if(i44<0.0017417382914572954){
    if(i4<0.057222992181777954){
     s0+=21.0;
     s1+=495.0;
    } else {
     s0+=341.0;
     s1+=386.0;
    }
   } else {
    if(i53<0.032495737075805664){
     s0+=4.0;
     s1+=173.0;
    } else {
     s0+=766.0;
     s1+=76.0;
    }
   }
  }
 }
} else {
 if(i8<8.910894393920898e-06){
  if(i6<-9.96875769487815e-06){
   if(i49<1.0003538131713867){
    if(i48<0.004551589488983154){
     s0+=135.0;
     s1+=1112.0;
    } else {
     s0+=200.0;
     s1+=472.0;
    }
   } else {
    if(i4<0.10942703485488892){
     s0+=121.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=27.0;
    }
   }
  } else {
   if(i38<0.005323475226759911){
    if(i18<0.9985276460647583){
     s0+=565.0;
    } else {
     s0+=385.0;
     s1+=124.0;
    }
   } else {
    if(i69<1.0012540817260742){
     s0+=9.0;
     s1+=89.0;
    } else {
     s0+=50.0;
    }
   }
  }
 } else {
  if(i8<3.916025161743164e-05){
   if(i1<0.09637632966041565){
    if(i53<0.056706130504608154){
     s0+=13.0;
     s1+=153.0;
    } else {
     s0+=148.0;
     s1+=4.0;
    }
   } else {
    if(i70<-0.02081724815070629){
     s0+=169.0;
     s1+=423.0;
    } else {
     s0+=33.0;
     s1+=992.0;
    }
   }
  } else {
   if(i45<-0.00011947729217354208){
    s0+=10.0;
   } else {
    if(i12<1.007500410079956){
     s0+=126.0;
     s1+=2002.0;
    } else {
     s0+=3.0;
     s1+=8532.0;
    }
   }
  }
 }
}
if(i0<0.08468478918075562){
 if(i5<1.0024782419204712){
  if(i34<0.0003152005956508219){
   if(i26<1.0113160610198975){
    if(i74<-0.0007860064506530762){
     s0+=1036.0;
     s1+=82.0;
    } else {
     s0+=52872.0;
     s1+=162.0;
    }
   } else {
    if(i65<-0.0011223540641367435){
     s0+=69.0;
     s1+=19.0;
    } else {
     s0+=8.0;
     s1+=33.0;
    }
   }
  } else {
   if(i5<0.9979710578918457){
    if(i38<0.0025348379276692867){
     s0+=2535.0;
     s1+=270.0;
    } else {
     s0+=7133.0;
     s1+=76.0;
    }
   } else {
    if(i43<0.00028619368094950914){
     s0+=1817.0;
    } else {
     s0+=3465.0;
     s1+=1505.0;
    }
   }
  }
 } else {
  if(i44<0.002281468128785491){
   if(i36<1.2392117977142334){
    if(i10<1.0042409896850586){
     s0+=6.0;
     s1+=111.0;
    } else {
     s1+=519.0;
    }
   } else {
    if(i47<0.0006974917487241328){
     s0+=22.0;
    } else {
     s1+=37.0;
    }
   }
  } else {
   if(i71<8.628499926999211e-05){
    if(i60<-0.004030376672744751){
     s1+=4.0;
    } else {
     s0+=183.0;
    }
   } else {
    if(i60<0.0007659792900085449){
     s0+=37.0;
     s1+=280.0;
    } else {
     s0+=54.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i52<0.0359155535697937){
  if(i42<0.9990495443344116){
   if(i56<0.0031323928851634264){
    if(i18<0.998039960861206){
     s0+=351.0;
    } else {
     s0+=2.0;
     s1+=7.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i17<0.0017457695212215185){
    if(i10<1.0083179473876953){
     s0+=231.0;
     s1+=168.0;
    } else {
     s0+=4.0;
     s1+=103.0;
    }
   } else {
    if(i17<0.0036754694301635027){
     s0+=143.0;
     s1+=1095.0;
    } else {
     s0+=117.0;
     s1+=9627.0;
    }
   }
  }
 } else {
  if(i23<1.0027987957000732){
   if(i2<0.30927610397338867){
    if(i70<-0.02613489329814911){
     s0+=621.0;
     s1+=116.0;
    } else {
     s0+=336.0;
     s1+=331.0;
    }
   } else {
    if(i11<-0.0005526244640350342){
     s0+=28.0;
    } else {
     s0+=17.0;
     s1+=479.0;
    }
   }
  } else {
   if(i59<-0.00012441867147572339){
    if(i10<0.9855771064758301){
     s0+=1.0;
     s1+=2.0;
    } else {
     s0+=7.0;
     s1+=1880.0;
    }
   } else {
    if(i43<0.006715168245136738){
     s0+=67.0;
     s1+=35.0;
    } else {
     s0+=10.0;
     s1+=129.0;
    }
   }
  }
 }
}
if(i1<0.08316218852996826){
 if(i8<4.1812658309936523e-05){
  if(i1<0.06617766618728638){
   if(i61<-0.002257227897644043){
    if(i35<1.100754976272583){
     s0+=1194.0;
     s1+=540.0;
    } else {
     s0+=4233.0;
     s1+=264.0;
    }
   } else {
    if(i28<0.0002996725379489362){
     s0+=54224.0;
     s1+=263.0;
    } else {
     s0+=6489.0;
     s1+=434.0;
    }
   }
  } else {
   if(i50<0.002421023789793253){
    if(i31<1.1748476028442383){
     s0+=1325.0;
     s1+=290.0;
    } else {
     s0+=1091.0;
     s1+=16.0;
    }
   } else {
    if(i44<0.0017968914471566677){
     s0+=91.0;
     s1+=312.0;
    } else {
     s0+=287.0;
     s1+=90.0;
    }
   }
  }
 } else {
  if(i43<0.0004961610538884997){
   s0+=234.0;
  } else {
   if(i36<1.2524442672729492){
    if(i54<0.2460309863090515){
     s1+=618.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i19<1.004569172859192){
     s0+=105.0;
     s1+=320.0;
    } else {
     s0+=165.0;
     s1+=21.0;
    }
   }
  }
 }
} else {
 if(i25<0.02884143963456154){
  if(i51<0.0508098304271698){
   if(i11<-0.0004337131977081299){
    if(i14<-0.003026604652404785){
     s0+=7.0;
     s1+=5.0;
    } else {
     s0+=114.0;
    }
   } else {
    if(i14<0.0006695985794067383){
     s0+=243.0;
     s1+=953.0;
    } else {
     s0+=11.0;
     s1+=2464.0;
    }
   }
  } else {
   if(i17<0.006000366993248463){
    if(i41<-1.300051917496603e-05){
     s0+=17.0;
     s1+=88.0;
    } else {
     s0+=789.0;
     s1+=182.0;
    }
   } else {
    if(i26<1.0259743928909302){
     s0+=55.0;
     s1+=108.0;
    } else {
     s0+=2.0;
     s1+=185.0;
    }
   }
  }
 } else {
  if(i35<1.3712366819381714){
   if(i18<0.9985932111740112){
    s0+=183.0;
   } else {
    if(i28<0.005580190569162369){
     s0+=32.0;
     s1+=1653.0;
    } else {
     s0+=110.0;
     s1+=465.0;
    }
   }
  } else {
   if(i10<0.9733885526657104){
    s0+=4.0;
   } else {
    if(i18<0.997739315032959){
     s0+=3.0;
    } else {
     s0+=83.0;
     s1+=7887.0;
    }
   }
  }
 }
}
if(i13<1.0576403141021729){
 if(i29<1.006659746170044){
  if(i5<1.0025038719177246){
   if(i34<0.00031669827876612544){
    if(i46<0.002369112800806761){
     s0+=53456.0;
     s1+=246.0;
    } else {
     s0+=30.0;
     s1+=20.0;
    }
   } else {
    if(i5<0.9977905750274658){
     s0+=8146.0;
     s1+=276.0;
    } else {
     s0+=2702.0;
     s1+=1106.0;
    }
   }
  } else {
   if(i11<0.00035953521728515625){
    if(i58<0.025483373552560806){
     s0+=9.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i61<0.00302731990814209){
     s0+=13.0;
     s1+=290.0;
    } else {
     s0+=2.0;
    }
   }
  }
 } else {
  if(i2<0.054689228534698486){
   if(i36<1.1108002662658691){
    if(i5<1.0009912252426147){
     s0+=18.0;
     s1+=3.0;
    } else {
     s1+=75.0;
    }
   } else {
    if(i14<0.002552807331085205){
     s0+=354.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.06433725357055664){
    if(i40<0.015928298234939575){
     s1+=18.0;
    } else {
     s0+=19.0;
     s1+=1.0;
    }
   } else {
    if(i6<-2.1987314539728686e-05){
     s0+=6.0;
     s1+=471.0;
    } else {
     s0+=14.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i25<0.021731358021497726){
  if(i12<1.00687575340271){
   if(i10<1.0015370845794678){
    if(i36<1.1037919521331787){
     s0+=828.0;
     s1+=306.0;
    } else {
     s0+=3098.0;
     s1+=317.0;
    }
   } else {
    if(i56<0.0015893796226009727){
     s0+=297.0;
     s1+=141.0;
    } else {
     s0+=27.0;
     s1+=206.0;
    }
   }
  } else {
   if(i69<1.0009641647338867){
    if(i17<0.001743918051943183){
     s0+=101.0;
     s1+=84.0;
    } else {
     s0+=36.0;
     s1+=1827.0;
    }
   } else {
    if(i8<3.3974647521972656e-05){
     s0+=86.0;
     s1+=12.0;
    } else {
     s0+=13.0;
     s1+=153.0;
    }
   }
  }
 } else {
  if(i2<0.0823562741279602){
   if(i5<0.9979856014251709){
    if(i64<-1.7977356492338004e-06){
     s0+=175.0;
     s1+=69.0;
    } else {
     s0+=467.0;
     s1+=12.0;
    }
   } else {
    if(i63<0.003698110580444336){
     s0+=387.0;
     s1+=904.0;
    } else {
     s0+=123.0;
     s1+=9.0;
    }
   }
  } else {
   if(i45<3.804079369729152e-06){
    if(i17<0.003198301186785102){
     s0+=259.0;
     s1+=523.0;
    } else {
     s0+=121.0;
     s1+=10189.0;
    }
   } else {
    s0+=194.0;
   }
  }
 }
}
if(i4<0.0723993182182312){
 if(i3<0.0006021559238433838){
  if(i0<0.08210253715515137){
   if(i61<-0.002064615488052368){
    if(i2<0.04065829515457153){
     s0+=5165.0;
     s1+=492.0;
    } else {
     s0+=827.0;
     s1+=483.0;
    }
   } else {
    if(i13<1.0452277660369873){
     s0+=57233.0;
     s1+=297.0;
    } else {
     s0+=5277.0;
     s1+=688.0;
    }
   }
  } else {
   if(i18<0.9986392259597778){
    if(i38<0.009708664380013943){
     s0+=341.0;
     s1+=1.0;
    } else {
     s0+=28.0;
     s1+=6.0;
    }
   } else {
    if(i49<1.0003604888916016){
     s0+=118.0;
     s1+=849.0;
    } else {
     s0+=44.0;
     s1+=3.0;
    }
   }
  }
 } else {
  if(i34<0.0001893652806757018){
   if(i6<-5.407235221355222e-05){
    s1+=7.0;
   } else {
    s0+=79.0;
   }
  } else {
   if(i45<-1.341810821031686e-05){
    if(i73<1.0010035037994385){
     s0+=107.0;
     s1+=307.0;
    } else {
     s0+=28.0;
     s1+=1472.0;
    }
   } else {
    if(i17<0.002381392754614353){
     s0+=79.0;
    } else {
     s0+=5.0;
     s1+=66.0;
    }
   }
  }
 }
} else {
 if(i33<0.0015515838749706745){
  if(i28<0.0023337514139711857){
   if(i17<0.0016447186935693026){
    if(i43<0.0006773470086045563){
     s0+=198.0;
     s1+=17.0;
    } else {
     s0+=77.0;
     s1+=93.0;
    }
   } else {
    if(i44<0.0003593769215513021){
     s0+=50.0;
    } else {
     s0+=91.0;
     s1+=1191.0;
    }
   }
  } else {
   if(i34<0.004927424713969231){
    if(i19<0.9928313493728638){
     s0+=27.0;
     s1+=28.0;
    } else {
     s0+=70.0;
     s1+=1.0;
    }
   } else {
    if(i46<0.01310730166733265){
     s0+=557.0;
    } else {
     s0+=17.0;
     s1+=5.0;
    }
   }
  }
 } else {
  if(i25<0.024579111486673355){
   if(i17<0.005294739734381437){
    if(i2<0.16803422570228577){
     s0+=475.0;
     s1+=107.0;
    } else {
     s0+=22.0;
     s1+=198.0;
    }
   } else {
    if(i22<-0.0001208186149597168){
     s0+=133.0;
     s1+=128.0;
    } else {
     s0+=7.0;
     s1+=1163.0;
    }
   }
  } else {
   if(i0<0.12386459112167358){
    if(i48<0.004019051790237427){
     s0+=35.0;
     s1+=491.0;
    } else {
     s0+=158.0;
     s1+=19.0;
    }
   } else {
    if(i1<0.18157437443733215){
     s0+=60.0;
     s1+=1000.0;
    } else {
     s0+=16.0;
     s1+=7816.0;
    }
   }
  }
 }
}
if(i13<1.052894115447998){
 if(i0<0.08123564720153809){
  if(i9<1.0406901836395264){
   if(i36<1.0717806816101074){
    if(i42<1.0003769397735596){
     s0+=34818.0;
    } else {
     s0+=1523.0;
     s1+=5.0;
    }
   } else {
    if(i47<0.0002778598864097148){
     s0+=11521.0;
     s1+=45.0;
    } else {
     s0+=13778.0;
     s1+=945.0;
    }
   }
  } else {
   if(i25<0.01613732799887657){
    if(i29<1.0076260566711426){
     s0+=1572.0;
     s1+=58.0;
    } else {
     s0+=5.0;
     s1+=57.0;
    }
   } else {
    if(i3<-0.00026994943618774414){
     s0+=323.0;
     s1+=57.0;
    } else {
     s0+=63.0;
     s1+=170.0;
    }
   }
  }
 } else {
  if(i10<0.9930756092071533){
   if(i7<0.9770269393920898){
    if(i48<0.006316810846328735){
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    if(i71<0.0006963656051084399){
     s0+=367.0;
    } else {
     s0+=47.0;
     s1+=15.0;
    }
   }
  } else {
   if(i40<0.05148237943649292){
    if(i47<0.00023988433531485498){
     s0+=26.0;
    } else {
     s0+=22.0;
     s1+=671.0;
    }
   } else {
    if(i54<0.021639538928866386){
     s0+=117.0;
     s1+=17.0;
    } else {
     s0+=25.0;
     s1+=75.0;
    }
   }
  }
 }
} else {
 if(i44<0.010576190426945686){
  if(i10<1.0027337074279785){
   if(i33<0.0005137159023433924){
    if(i6<-2.6057028662762605e-05){
     s0+=1.0;
     s1+=91.0;
    } else {
     s0+=1812.0;
     s1+=35.0;
    }
   } else {
    if(i30<1.104381799697876){
     s0+=286.0;
     s1+=1002.0;
    } else {
     s0+=4152.0;
     s1+=2069.0;
    }
   }
  } else {
   if(i11<0.0004515349864959717){
    if(i0<0.07146835327148438){
     s0+=239.0;
     s1+=55.0;
    } else {
     s0+=99.0;
     s1+=794.0;
    }
   } else {
    if(i35<1.613681674003601){
     s0+=26.0;
     s1+=3726.0;
    } else {
     s0+=42.0;
     s1+=289.0;
    }
   }
  }
 } else {
  if(i1<0.0030091702938079834){
   if(i9<1.09895920753479){
    if(i8<7.492303848266602e-05){
     s0+=142.0;
    } else {
     s0+=4.0;
     s1+=2.0;
    }
   } else {
    s1+=13.0;
   }
  } else {
   if(i22<-0.0007822513580322266){
    if(i9<1.081931233406067){
     s0+=43.0;
     s1+=2.0;
    } else {
     s1+=17.0;
    }
   } else {
    if(i20<1.0790610313415527){
     s0+=10.0;
     s1+=3.0;
    } else {
     s0+=19.0;
     s1+=6942.0;
    }
   }
  }
 }
}
if(i11<0.00043314695358276367){
 if(i9<1.0451873540878296){
  if(i54<0.02661413699388504){
   if(i61<-0.0028330981731414795){
    if(i36<1.2003743648529053){
     s0+=323.0;
     s1+=248.0;
    } else {
     s0+=242.0;
     s1+=6.0;
    }
   } else {
    if(i14<0.0011620819568634033){
     s0+=54979.0;
     s1+=395.0;
    } else {
     s0+=5.0;
     s1+=34.0;
    }
   }
  } else {
   if(i67<0.06552708148956299){
    if(i0<0.06587427854537964){
     s0+=4353.0;
     s1+=509.0;
    } else {
     s0+=365.0;
     s1+=674.0;
    }
   } else {
    if(i12<0.9880425930023193){
     s0+=4160.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=24.0;
    }
   }
  }
 } else {
  if(i71<-8.628566865809262e-05){
   if(i8<1.0132789611816406e-05){
    if(i17<0.0021635720040649176){
     s0+=170.0;
     s1+=2.0;
    } else {
     s0+=72.0;
     s1+=305.0;
    }
   } else {
    if(i0<0.06757405400276184){
     s0+=44.0;
     s1+=6.0;
    } else {
     s0+=12.0;
     s1+=1018.0;
    }
   }
  } else {
   if(i25<0.02791537530720234){
    if(i10<1.0014796257019043){
     s0+=3554.0;
     s1+=513.0;
    } else {
     s0+=390.0;
     s1+=312.0;
    }
   } else {
    if(i42<0.9988136887550354){
     s0+=337.0;
     s1+=1.0;
    } else {
     s0+=402.0;
     s1+=1882.0;
    }
   }
  }
 }
} else {
 if(i8<4.178285598754883e-05){
  if(i4<0.1122446060180664){
   if(i60<-0.0037545859813690186){
    if(i67<0.04568827897310257){
     s0+=17.0;
     s1+=9.0;
    } else {
     s0+=7.0;
     s1+=71.0;
    }
   } else {
    if(i5<1.0019688606262207){
     s0+=1368.0;
     s1+=197.0;
    } else {
     s0+=46.0;
     s1+=106.0;
    }
   }
  } else {
   if(i37<0.023752287030220032){
    if(i65<-0.014125717803835869){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=15.0;
     s1+=103.0;
    }
   } else {
    if(i6<-2.9099210223648697e-05){
     s0+=1.0;
     s1+=279.0;
    } else {
     s0+=5.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i44<0.000427229271735996){
   s0+=42.0;
  } else {
   if(i22<6.318092346191406e-06){
    if(i1<0.12329819798469543){
     s0+=189.0;
     s1+=442.0;
    } else {
     s0+=19.0;
     s1+=854.0;
    }
   } else {
    if(i17<0.001437048427760601){
     s0+=75.0;
     s1+=52.0;
    } else {
     s0+=11.0;
     s1+=8971.0;
    }
   }
  }
 }
}
if(i3<0.0005643367767333984){
 if(i9<1.0451881885528564){
  if(i74<-0.0007856190204620361){
   if(i8<-1.8417835235595703e-05){
    if(i10<0.994070291519165){
     s0+=6700.0;
     s1+=90.0;
    } else {
     s0+=1295.0;
     s1+=315.0;
    }
   } else {
    if(i36<1.1993632316589355){
     s0+=251.0;
     s1+=559.0;
    } else {
     s0+=906.0;
     s1+=107.0;
    }
   }
  } else {
   if(i2<0.08066606521606445){
    if(i26<1.0083062648773193){
     s0+=55189.0;
     s1+=482.0;
    } else {
     s0+=620.0;
     s1+=120.0;
    }
   } else {
    if(i18<0.9986691474914551){
     s0+=76.0;
     s1+=5.0;
    } else {
     s0+=28.0;
     s1+=274.0;
    }
   }
  }
 } else {
  if(i1<0.09208527207374573){
   if(i8<1.1146068572998047e-05){
    if(i35<1.1013743877410889){
     s0+=932.0;
     s1+=346.0;
    } else {
     s0+=2897.0;
     s1+=232.0;
    }
   } else {
    if(i38<0.0012733738403767347){
     s0+=97.0;
     s1+=277.0;
    } else {
     s0+=525.0;
     s1+=85.0;
    }
   }
  } else {
   if(i70<-0.020647983998060226){
    if(i43<0.003860795870423317){
     s0+=643.0;
     s1+=92.0;
    } else {
     s0+=162.0;
     s1+=780.0;
    }
   } else {
    if(i55<0.026784121990203857){
     s0+=125.0;
     s1+=1629.0;
    } else {
     s0+=70.0;
     s1+=134.0;
    }
   }
  }
 }
} else {
 if(i20<1.0407118797302246){
  if(i74<-0.00015649199485778809){
   s1+=3.0;
  } else {
   s0+=113.0;
  }
 } else {
  if(i6<-4.463057848624885e-05){
   if(i69<1.0030767917633057){
    if(i29<1.003656029701233){
     s0+=135.0;
     s1+=1759.0;
    } else {
     s0+=28.0;
     s1+=9396.0;
    }
   } else {
    if(i37<0.018322382122278214){
     s0+=66.0;
     s1+=17.0;
    } else {
     s0+=2.0;
     s1+=200.0;
    }
   }
  } else {
   if(i31<1.2369153499603271){
    if(i17<0.004414637107402086){
     s0+=22.0;
     s1+=16.0;
    } else {
     s0+=1.0;
     s1+=270.0;
    }
   } else {
    if(i77<1.004420518875122){
     s0+=162.0;
    } else {
     s1+=19.0;
    }
   }
  }
 }
}
if(i16<1.009966492652893){
 if(i5<1.0024800300598145){
  if(i44<0.0004114132607355714){
   if(i42<1.0003843307495117){
    if(i50<0.009730715304613113){
     s0+=39697.0;
     s1+=22.0;
    } else {
     s0+=320.0;
     s1+=10.0;
    }
   } else {
    if(i30<1.058573842048645){
     s0+=1575.0;
    } else {
     s0+=182.0;
     s1+=105.0;
    }
   }
  } else {
   if(i0<0.08222091197967529){
    if(i23<0.9979900121688843){
     s0+=16514.0;
     s1+=333.0;
    } else {
     s0+=9241.0;
     s1+=1387.0;
    }
   } else {
    if(i45<1.4814920632488793e-06){
     s0+=636.0;
     s1+=1838.0;
    } else {
     s0+=455.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i28<0.00017038217629306018){
   if(i64<-5.469792085932568e-06){
    s1+=31.0;
   } else {
    s0+=73.0;
   }
  } else {
   if(i69<1.001550316810608){
    if(i17<0.0019971809815615416){
     s0+=13.0;
     s1+=13.0;
    } else {
     s0+=49.0;
     s1+=2274.0;
    }
   } else {
    if(i22<-0.00035959482192993164){
     s0+=22.0;
    } else {
     s0+=24.0;
     s1+=117.0;
    }
   }
  }
 }
} else {
 if(i17<0.0033449442125856876){
  if(i64<-8.308310498250648e-06){
   if(i6<-5.6260625569848344e-05){
    s1+=284.0;
   } else {
    s0+=10.0;
   }
  } else {
   if(i31<1.1040980815887451){
    if(i22<6.526708602905273e-05){
     s0+=236.0;
     s1+=80.0;
    } else {
     s0+=5.0;
     s1+=382.0;
    }
   } else {
    if(i22<0.00028830766677856445){
     s0+=1542.0;
     s1+=196.0;
    } else {
     s1+=109.0;
    }
   }
  }
 } else {
  if(i14<-0.0005973875522613525){
   if(i68<0.0015652752481400967){
    if(i67<0.05317467451095581){
     s0+=170.0;
     s1+=34.0;
    } else {
     s0+=150.0;
     s1+=284.0;
    }
   } else {
    s1+=301.0;
   }
  } else {
   if(i11<-0.00024890899658203125){
    if(i49<0.9994928240776062){
     s1+=5.0;
    } else {
     s0+=66.0;
    }
   } else {
    if(i68<0.00015140602772589773){
     s0+=17.0;
     s1+=107.0;
    } else {
     s0+=29.0;
     s1+=9283.0;
    }
   }
  }
 }
}
if(i4<0.07135769724845886){
 if(i18<1.0019140243530273){
  if(i21<1.008462905883789){
   if(i9<1.0398929119110107){
    if(i48<-0.0015491843223571777){
     s0+=2787.0;
     s1+=523.0;
    } else {
     s0+=59579.0;
     s1+=619.0;
    }
   } else {
    if(i6<-2.035075522144325e-05){
     s0+=713.0;
     s1+=508.0;
    } else {
     s0+=3689.0;
     s1+=361.0;
    }
   }
  } else {
   if(i2<0.07437822222709656){
    if(i17<0.004175621084868908){
     s0+=1635.0;
     s1+=190.0;
    } else {
     s0+=107.0;
     s1+=186.0;
    }
   } else {
    if(i52<0.032178014516830444){
     s0+=10.0;
     s1+=497.0;
    } else {
     s0+=9.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i55<0.009072989225387573){
   if(i22<-0.0001042485237121582){
    if(i42<1.0017039775848389){
     s0+=79.0;
     s1+=186.0;
    } else {
     s0+=224.0;
     s1+=59.0;
    }
   } else {
    if(i11<0.0005848407745361328){
     s0+=14.0;
     s1+=12.0;
    } else {
     s0+=33.0;
     s1+=1454.0;
    }
   }
  } else {
   if(i5<1.004117727279663){
    if(i30<1.0956473350524902){
     s1+=3.0;
    } else {
     s0+=249.0;
     s1+=1.0;
    }
   } else {
    if(i63<0.00025537610054016113){
     s0+=2.0;
    } else {
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00038698315620422363){
  if(i36<1.4867262840270996){
   if(i6<-4.434130460140295e-05){
    if(i33<0.0016454787692055106){
     s0+=16.0;
    } else {
     s0+=5.0;
     s1+=3.0;
    }
   } else {
    if(i68<4.0601546061225235e-05){
     s1+=1.0;
    } else {
     s0+=398.0;
     s1+=1.0;
    }
   }
  } else {
   if(i0<0.1243230402469635){
    s0+=34.0;
   } else {
    s1+=7.0;
   }
  }
 } else {
  if(i12<1.007556438446045){
   if(i1<0.11695581674575806){
    if(i25<0.025454040616750717){
     s0+=903.0;
     s1+=377.0;
    } else {
     s0+=186.0;
     s1+=568.0;
    }
   } else {
    if(i33<0.0006418760749511421){
     s0+=155.0;
     s1+=89.0;
    } else {
     s0+=229.0;
     s1+=3320.0;
    }
   }
  } else {
   if(i68<0.00013900084013585){
    if(i6<-2.7864720323123038e-05){
     s1+=121.0;
    } else {
     s0+=38.0;
    }
   } else {
    if(i0<0.09921339154243469){
     s0+=16.0;
     s1+=57.0;
    } else {
     s0+=4.0;
     s1+=7967.0;
    }
   }
  }
 }
}
if(i5<1.0024447441101074){
 if(i1<0.08225274085998535){
  if(i60<-0.0027312636375427246){
   if(i11<-0.00015866756439208984){
    if(i42<0.9992141723632812){
     s0+=528.0;
     s1+=6.0;
    } else {
     s0+=375.0;
     s1+=61.0;
    }
   } else {
    if(i6<-2.301727727171965e-05){
     s0+=264.0;
     s1+=305.0;
    } else {
     s0+=664.0;
     s1+=172.0;
    }
   }
  } else {
   if(i46<0.0015202043578028679){
    if(i9<1.0410094261169434){
     s0+=57915.0;
     s1+=503.0;
    } else {
     s0+=3825.0;
     s1+=443.0;
    }
   } else {
    if(i30<1.1476502418518066){
     s0+=2165.0;
     s1+=616.0;
    } else {
     s0+=3277.0;
     s1+=67.0;
    }
   }
  }
 } else {
  if(i6<-1.3805152775603347e-05){
   if(i32<0.06259489059448242){
    if(i30<1.0558756589889526){
     s0+=8.0;
    } else {
     s0+=11.0;
     s1+=1286.0;
    }
   } else {
    if(i54<0.05722405016422272){
     s0+=420.0;
     s1+=671.0;
    } else {
     s0+=153.0;
     s1+=1413.0;
    }
   }
  } else {
   if(i53<0.058077067136764526){
    if(i49<0.9995752573013306){
     s0+=73.0;
    } else {
     s0+=22.0;
     s1+=257.0;
    }
   } else {
    if(i17<0.006099749356508255){
     s0+=881.0;
     s1+=105.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i8<6.133317947387695e-05){
  if(i0<0.06528717279434204){
   if(i68<0.00047105594421736896){
    if(i6<-5.576717376243323e-05){
     s0+=20.0;
     s1+=25.0;
    } else {
     s0+=152.0;
     s1+=6.0;
    }
   } else {
    if(i38<0.003077814821153879){
     s1+=89.0;
    } else {
     s0+=5.0;
     s1+=22.0;
    }
   }
  } else {
   if(i37<0.012511033564805984){
    if(i60<0.005284547805786133){
     s0+=53.0;
     s1+=262.0;
    } else {
     s0+=47.0;
     s1+=7.0;
    }
   } else {
    if(i2<0.06602022051811218){
     s0+=2.0;
     s1+=25.0;
    } else {
     s1+=750.0;
    }
   }
  }
 } else {
  if(i34<0.00017894848133437335){
   s0+=11.0;
  } else {
   if(i1<0.031083732843399048){
    if(i35<1.5682398080825806){
     s0+=6.0;
     s1+=86.0;
    } else {
     s0+=28.0;
     s1+=7.0;
    }
   } else {
    if(i0<0.13702738285064697){
     s0+=63.0;
     s1+=1714.0;
    } else {
     s0+=4.0;
     s1+=8372.0;
    }
   }
  }
 }
}
if(i8<3.7610530853271484e-05){
 if(i13<1.0452277660369873){
  if(i0<0.08320659399032593){
   if(i48<-0.0016540884971618652){
    if(i0<0.04186418652534485){
     s0+=1824.0;
     s1+=145.0;
    } else {
     s0+=118.0;
     s1+=101.0;
    }
   } else {
    if(i13<1.0401519536972046){
     s0+=56620.0;
     s1+=326.0;
    } else {
     s0+=2937.0;
     s1+=205.0;
    }
   }
  } else {
   if(i11<-0.00036090612411499023){
    if(i71<0.0010725572938099504){
     s0+=313.0;
     s1+=1.0;
    } else {
     s0+=17.0;
     s1+=2.0;
    }
   } else {
    if(i52<0.03503650426864624){
     s0+=35.0;
     s1+=195.0;
    } else {
     s0+=120.0;
     s1+=55.0;
    }
   }
  }
 } else {
  if(i7<1.0106494426727295){
   if(i1<0.07561591267585754){
    if(i31<1.103413462638855){
     s0+=1786.0;
     s1+=653.0;
    } else {
     s0+=4652.0;
     s1+=283.0;
    }
   } else {
    if(i40<0.04244893789291382){
     s0+=88.0;
     s1+=1219.0;
    } else {
     s0+=1224.0;
     s1+=779.0;
    }
   }
  } else {
   if(i68<0.0005412406753748655){
    if(i69<1.0001966953277588){
     s0+=259.0;
     s1+=900.0;
    } else {
     s0+=352.0;
     s1+=62.0;
    }
   } else {
    if(i32<0.0018312633037567139){
     s0+=13.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=482.0;
    }
   }
  }
 }
} else {
 if(i77<0.9934766292572021){
  if(i29<1.0113787651062012){
   s0+=132.0;
  } else {
   s1+=83.0;
  }
 } else {
  if(i47<0.0002465705038048327){
   if(i62<1.0084528923034668){
    if(i29<1.0096696615219116){
     s0+=148.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i17<0.0016557846684008837){
     s0+=4.0;
    } else {
     s1+=8.0;
    }
   }
  } else {
   if(i17<0.00214362028054893){
    if(i3<0.0009744763374328613){
     s0+=159.0;
     s1+=19.0;
    } else {
     s1+=158.0;
    }
   } else {
    if(i69<1.0031037330627441){
     s0+=200.0;
     s1+=11257.0;
    } else {
     s0+=75.0;
     s1+=226.0;
    }
   }
  }
 }
}
if(i4<0.07237556576728821){
 if(i2<0.07524016499519348){
  if(i8<4.1961669921875e-05){
   if(i25<0.016620313748717308){
    if(i54<0.025970490649342537){
     s0+=54310.0;
     s1+=393.0;
    } else {
     s0+=4528.0;
     s1+=355.0;
    }
   } else {
    if(i35<1.2371783256530762){
     s0+=2297.0;
     s1+=1031.0;
    } else {
     s0+=7400.0;
     s1+=180.0;
    }
   }
  } else {
   if(i69<0.9976022243499756){
    s0+=220.0;
   } else {
    if(i43<0.002094490919262171){
     s0+=9.0;
     s1+=640.0;
    } else {
     s0+=213.0;
     s1+=356.0;
    }
   }
  }
 } else {
  if(i8<-4.7147274017333984e-05){
   if(i24<1.0711830854415894){
    if(i8<-5.361437797546387e-05){
     s0+=125.0;
    } else {
     s0+=15.0;
     s1+=3.0;
    }
   } else {
    if(i58<0.6720932126045227){
     s1+=3.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i36<1.0811069011688232){
    if(i57<0.0006840032292529941){
     s0+=44.0;
     s1+=1.0;
    } else {
     s1+=4.0;
    }
   } else {
    if(i2<0.08041101694107056){
     s0+=64.0;
     s1+=207.0;
    } else {
     s0+=9.0;
     s1+=1473.0;
    }
   }
  }
 }
} else {
 if(i43<0.005398099310696125){
  if(i40<0.04311537742614746){
   if(i1<0.08534649014472961){
    if(i36<1.2380458116531372){
     s0+=21.0;
     s1+=74.0;
    } else {
     s0+=59.0;
     s1+=14.0;
    }
   } else {
    if(i17<0.0017298469319939613){
     s0+=16.0;
     s1+=68.0;
    } else {
     s0+=17.0;
     s1+=1330.0;
    }
   }
  } else {
   if(i12<1.0076498985290527){
    if(i0<0.10918781161308289){
     s0+=860.0;
     s1+=136.0;
    } else {
     s0+=672.0;
     s1+=663.0;
    }
   } else {
    if(i45<-8.055693569986033e-07){
     s0+=21.0;
     s1+=529.0;
    } else {
     s0+=21.0;
    }
   }
  }
 } else {
  if(i14<-0.004002422094345093){
   if(i68<0.0017599364509806037){
    if(i2<0.10327458381652832){
     s0+=89.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=8.0;
    }
   } else {
    if(i2<0.07971134781837463){
     s0+=3.0;
    } else {
     s1+=68.0;
    }
   }
  } else {
   if(i20<1.0647540092468262){
    if(i0<0.11439511179924011){
     s0+=35.0;
     s1+=1.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i31<1.2582359313964844){
     s0+=90.0;
     s1+=510.0;
    } else {
     s0+=76.0;
     s1+=8984.0;
    }
   }
  }
 }
}
if(i2<0.07800713181495667){
 if(i66<-7.98852852312848e-06){
  if(i72<0.16626028716564178){
   if(i8<6.645917892456055e-05){
    if(i56<0.0013844658387824893){
     s0+=2.0;
    } else {
     s1+=2.0;
    }
   } else {
    s1+=398.0;
   }
  } else {
   if(i60<-0.008994758129119873){
    s1+=6.0;
   } else {
    s0+=4.0;
   }
  }
 } else {
  if(i3<0.0006062984466552734){
   if(i25<0.01653265580534935){
    if(i63<-0.001659303903579712){
     s0+=2037.0;
     s1+=355.0;
    } else {
     s0+=57004.0;
     s1+=454.0;
    }
   } else {
    if(i14<-0.0015791654586791992){
     s0+=6792.0;
     s1+=130.0;
    } else {
     s0+=3081.0;
     s1+=1219.0;
    }
   }
  } else {
   if(i75<0.0001348704390693456){
    if(i33<0.0015413900837302208){
     s1+=383.0;
    } else {
     s0+=120.0;
     s1+=227.0;
    }
   } else {
    if(i45<-3.234244650229812e-05){
     s0+=9.0;
     s1+=89.0;
    } else {
     s0+=179.0;
     s1+=27.0;
    }
   }
  }
 }
} else {
 if(i22<5.8144330978393555e-05){
  if(i56<0.0019037884194403887){
   if(i65<-0.005403292365372181){
    if(i25<0.04018428921699524){
     s0+=755.0;
     s1+=64.0;
    } else {
     s0+=170.0;
     s1+=297.0;
    }
   } else {
    if(i8<-4.9173831939697266e-05){
     s0+=219.0;
     s1+=15.0;
    } else {
     s0+=224.0;
     s1+=1220.0;
    }
   }
  } else {
   if(i13<1.0819685459136963){
    if(i22<-0.00013074278831481934){
     s0+=254.0;
     s1+=117.0;
    } else {
     s0+=7.0;
     s1+=260.0;
    }
   } else {
    if(i42<0.9971951246261597){
     s0+=16.0;
    } else {
     s0+=41.0;
     s1+=1913.0;
    }
   }
  }
 } else {
  if(i5<0.9995206594467163){
   s0+=30.0;
  } else {
   if(i33<0.0005815459880977869){
    if(i44<0.0018058381974697113){
     s1+=118.0;
    } else {
     s0+=63.0;
    }
   } else {
    if(i1<0.0957028865814209){
     s0+=38.0;
     s1+=230.0;
    } else {
     s0+=25.0;
     s1+=9658.0;
    }
   }
  }
 }
}
if(i19<1.0088496208190918){
 if(i28<0.00031609239522367716){
  if(i2<0.08264073729515076){
   if(i11<0.0007712841033935547){
    if(i77<1.0007296800613403){
     s0+=51909.0;
     s1+=342.0;
    } else {
     s0+=4961.0;
     s1+=259.0;
    }
   } else {
    if(i66<4.553369763016235e-06){
     s1+=55.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i40<0.053832828998565674){
    if(i5<0.9974954128265381){
     s0+=33.0;
     s1+=2.0;
    } else {
     s1+=152.0;
    }
   } else {
    if(i65<0.00018324062693864107){
     s0+=50.0;
     s1+=2.0;
    } else {
     s1+=2.0;
    }
   }
  }
 } else {
  if(i7<1.0074743032455444){
   if(i6<-8.789551066001877e-05){
    if(i29<0.9292497634887695){
     s0+=253.0;
     s1+=62.0;
    } else {
     s0+=221.0;
     s1+=1291.0;
    }
   } else {
    if(i73<0.9716213941574097){
     s0+=4478.0;
     s1+=256.0;
    } else {
     s0+=6452.0;
     s1+=2416.0;
    }
   }
  } else {
   if(i33<0.0004764641053043306){
    if(i11<0.00015544891357421875){
     s0+=82.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i17<0.005678344983607531){
     s0+=188.0;
     s1+=417.0;
    } else {
     s0+=14.0;
     s1+=760.0;
    }
   }
  }
 }
} else {
 if(i8<3.36766242980957e-05){
  if(i25<0.027916863560676575){
   if(i22<8.982419967651367e-05){
    if(i1<0.0769631564617157){
     s0+=1255.0;
     s1+=74.0;
    } else {
     s0+=545.0;
     s1+=322.0;
    }
   } else {
    if(i54<0.032576773315668106){
     s0+=62.0;
     s1+=400.0;
    } else {
     s0+=127.0;
     s1+=70.0;
    }
   }
  } else {
   if(i18<0.9979005455970764){
    s0+=90.0;
   } else {
    if(i17<0.0027203201316297054){
     s0+=147.0;
     s1+=57.0;
    } else {
     s0+=37.0;
     s1+=892.0;
    }
   }
  }
 } else {
  if(i17<0.0022366377525031567){
   if(i14<0.0018602609634399414){
    if(i47<0.0002740547643043101){
     s0+=3.0;
     s1+=9.0;
    } else {
     s0+=163.0;
     s1+=1.0;
    }
   } else {
    s1+=145.0;
   }
  } else {
   if(i12<1.0066472291946411){
    if(i56<0.0018747723661363125){
     s0+=93.0;
     s1+=141.0;
    } else {
     s0+=1.0;
     s1+=583.0;
    }
   } else {
    if(i69<1.00311279296875){
     s1+=8192.0;
    } else {
     s0+=14.0;
     s1+=161.0;
    }
   }
  }
 }
}
if(i13<1.0527000427246094){
 if(i47<0.00029223080491647124){
  if(i19<1.0087171792984009){
   if(i77<1.0029103755950928){
    if(i48<-0.0011069774627685547){
     s0+=1370.0;
     s1+=13.0;
    } else {
     s0+=44804.0;
     s1+=28.0;
    }
   } else {
    if(i74<0.00012493133544921875){
     s1+=12.0;
    } else {
     s0+=146.0;
    }
   }
  } else {
   if(i45<-9.729421435622498e-06){
    s1+=69.0;
   } else {
    s0+=10.0;
   }
  }
 } else {
  if(i20<1.0428757667541504){
   if(i65<-0.0008363558445125818){
    if(i14<-0.0013628602027893066){
     s0+=6192.0;
    } else {
     s0+=1934.0;
     s1+=19.0;
    }
   } else {
    if(i74<-0.0005332231521606445){
     s0+=686.0;
     s1+=96.0;
    } else {
     s0+=1074.0;
     s1+=8.0;
    }
   }
  } else {
   if(i1<0.06989765167236328){
    if(i35<1.1013743877410889){
     s0+=1228.0;
     s1+=647.0;
    } else {
     s0+=6295.0;
     s1+=194.0;
    }
   } else {
    if(i5<0.9970402717590332){
     s0+=209.0;
     s1+=50.0;
    } else {
     s0+=180.0;
     s1+=955.0;
    }
   }
  }
 }
} else {
 if(i17<0.004620476625859737){
  if(i36<1.1037919521331787){
   if(i36<1.083398699760437){
    if(i44<0.0002970605855807662){
     s0+=469.0;
     s1+=3.0;
    } else {
     s0+=273.0;
     s1+=89.0;
    }
   } else {
    if(i6<-1.7108823158196174e-05){
     s0+=45.0;
     s1+=909.0;
    } else {
     s0+=393.0;
     s1+=249.0;
    }
   }
  } else {
   if(i2<0.10860499739646912){
    if(i5<1.0042997598648071){
     s0+=4032.0;
     s1+=262.0;
    } else {
     s1+=42.0;
    }
   } else {
    if(i60<0.00724107027053833){
     s0+=104.0;
     s1+=992.0;
    } else {
     s0+=479.0;
     s1+=101.0;
    }
   }
  }
 } else {
  if(i3<-0.00029653310775756836){
   if(i68<0.0017170545179396868){
    if(i4<0.08124378323554993){
     s0+=499.0;
     s1+=64.0;
    } else {
     s0+=82.0;
     s1+=119.0;
    }
   } else {
    if(i49<0.9998409748077393){
     s0+=2.0;
    } else {
     s1+=204.0;
    }
   }
  } else {
   if(i59<-0.00027921440778300166){
    if(i7<1.0126999616622925){
     s0+=75.0;
     s1+=2300.0;
    } else {
     s0+=3.0;
     s1+=7828.0;
    }
   } else {
    if(i51<0.023357391357421875){
     s0+=148.0;
     s1+=1247.0;
    } else {
     s0+=315.0;
     s1+=705.0;
    }
   }
  }
 }
}
if(i15<1.6510486602783203e-05){
 if(i2<0.08296656608581543){
  if(i28<0.00029555667424574494){
   if(i21<1.008186936378479){
    if(i72<0.01897091045975685){
     s0+=49335.0;
     s1+=154.0;
    } else {
     s0+=5899.0;
     s1+=291.0;
    }
   } else {
    if(i44<0.0013069398701190948){
     s0+=138.0;
     s1+=158.0;
    } else {
     s0+=505.0;
     s1+=7.0;
    }
   }
  } else {
   if(i41<9.845659951679409e-05){
    if(i6<-1.7347691027680412e-05){
     s0+=814.0;
     s1+=732.0;
    } else {
     s0+=5863.0;
     s1+=658.0;
    }
   } else {
    if(i13<1.0850911140441895){
     s0+=5015.0;
     s1+=40.0;
    } else {
     s0+=338.0;
     s1+=80.0;
    }
   }
  }
 } else {
  if(i5<0.9965493679046631){
   if(i41<0.00020712221157737076){
    if(i69<0.9997539520263672){
     s0+=361.0;
     s1+=1.0;
    } else {
     s0+=64.0;
     s1+=23.0;
    }
   } else {
    if(i34<0.005773245356976986){
     s0+=14.0;
     s1+=17.0;
    } else {
     s1+=70.0;
    }
   }
  } else {
   if(i17<0.0016364629846066236){
    if(i32<0.06674128770828247){
     s0+=5.0;
     s1+=100.0;
    } else {
     s0+=453.0;
     s1+=127.0;
    }
   } else {
    if(i52<0.04245966672897339){
     s0+=93.0;
     s1+=2909.0;
    } else {
     s0+=200.0;
     s1+=615.0;
    }
   }
  }
 }
} else {
 if(i36<1.075169324874878){
  s0+=407.0;
 } else {
  if(i7<1.0090789794921875){
   if(i10<1.000286340713501){
    if(i37<0.03895718604326248){
     s0+=1350.0;
     s1+=356.0;
    } else {
     s0+=21.0;
     s1+=490.0;
    }
   } else {
    if(i28<0.00016788406355772167){
     s0+=23.0;
     s1+=1.0;
    } else {
     s0+=125.0;
     s1+=1866.0;
    }
   }
  } else {
   if(i45<-1.4965416085033212e-05){
    if(i12<1.0080435276031494){
     s0+=93.0;
     s1+=868.0;
    } else {
     s0+=1.0;
     s1+=7395.0;
    }
   } else {
    if(i56<0.0010615139035508037){
     s0+=93.0;
    } else {
     s1+=84.0;
    }
   }
  }
 }
}
if(i13<1.0527000427246094){
 if(i2<0.0782729983329773){
  if(i23<1.0008647441864014){
   if(i57<0.0008439325611107051){
    if(i16<1.0114459991455078){
     s0+=55643.0;
     s1+=270.0;
    } else {
     s0+=28.0;
     s1+=46.0;
    }
   } else {
    if(i44<0.0016944336239248514){
     s0+=1142.0;
     s1+=499.0;
    } else {
     s0+=3012.0;
     s1+=37.0;
    }
   }
  } else {
   if(i76<-3.711155841301661e-06){
    s1+=55.0;
   } else {
    if(i75<9.174212027573958e-05){
     s0+=1291.0;
     s1+=412.0;
    } else {
     s0+=2743.0;
     s1+=63.0;
    }
   }
  }
 } else {
  if(i5<0.9968177080154419){
   if(i32<0.08808967471122742){
    if(i19<0.9727013111114502){
     s0+=28.0;
     s1+=11.0;
    } else {
     s0+=171.0;
     s1+=2.0;
    }
   } else {
    if(i43<0.0009208808187395334){
     s0+=6.0;
    } else {
     s1+=11.0;
    }
   }
  } else {
   if(i36<1.0724589824676514){
    if(i25<0.020901255309581757){
     s0+=35.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i55<0.01452946662902832){
     s0+=47.0;
     s1+=681.0;
    } else {
     s0+=32.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i43<0.005998763255774975){
  if(i14<0.0007767081260681152){
   if(i17<0.004343695938587189){
    if(i1<0.08464676141738892){
     s0+=4263.0;
     s1+=499.0;
    } else {
     s0+=957.0;
     s1+=837.0;
    }
   } else {
    if(i5<0.9978458881378174){
     s0+=405.0;
     s1+=51.0;
    } else {
     s0+=327.0;
     s1+=1552.0;
    }
   }
  } else {
   if(i35<1.2392117977142334){
    if(i7<1.0083894729614258){
     s0+=11.0;
     s1+=190.0;
    } else {
     s0+=1.0;
     s1+=1888.0;
    }
   } else {
    if(i0<0.13566303253173828){
     s0+=262.0;
     s1+=23.0;
    } else {
     s0+=7.0;
     s1+=177.0;
    }
   }
  }
 } else {
  if(i31<1.3733716011047363){
   if(i66<3.1044102797750384e-05){
    if(i69<1.0008478164672852){
     s0+=105.0;
     s1+=2010.0;
    } else {
     s0+=134.0;
     s1+=260.0;
    }
   } else {
    if(i13<1.1266052722930908){
     s0+=260.0;
     s1+=6.0;
    } else {
     s1+=39.0;
    }
   }
  } else {
   if(i63<-0.021899789571762085){
    if(i56<0.00598765816539526){
     s0+=51.0;
     s1+=2.0;
    } else {
     s1+=38.0;
    }
   } else {
    if(i6<-5.327076723915525e-05){
     s0+=93.0;
     s1+=7318.0;
    } else {
     s0+=96.0;
     s1+=109.0;
    }
   }
  }
 }
}
if(i16<1.0099639892578125){
 if(i2<0.07827961444854736){
  if(i10<1.0051684379577637){
   if(i13<1.0412344932556152){
    if(i5<1.002488613128662){
     s0+=59451.0;
     s1+=601.0;
    } else {
     s0+=26.0;
     s1+=53.0;
    }
   } else {
    if(i23<1.0007514953613281){
     s0+=7090.0;
     s1+=825.0;
    } else {
     s0+=943.0;
     s1+=584.0;
    }
   }
  } else {
   if(i35<1.1386182308197021){
    s1+=339.0;
   } else {
    if(i54<0.024392832070589066){
     s0+=247.0;
     s1+=21.0;
    } else {
     s0+=51.0;
     s1+=155.0;
    }
   }
  }
 } else {
  if(i5<0.9965493679046631){
   if(i31<1.498544454574585){
    if(i6<-4.271665238775313e-05){
     s0+=15.0;
     s1+=19.0;
    } else {
     s0+=430.0;
     s1+=20.0;
    }
   } else {
    if(i68<0.0008532608626410365){
     s0+=21.0;
    } else {
     s0+=5.0;
     s1+=64.0;
    }
   }
  } else {
   if(i40<0.056051284074783325){
    if(i38<0.00029939934029243886){
     s0+=11.0;
    } else {
     s0+=77.0;
     s1+=2845.0;
    }
   } else {
    if(i23<1.0010054111480713){
     s0+=334.0;
     s1+=170.0;
    } else {
     s0+=69.0;
     s1+=420.0;
    }
   }
  }
 }
} else {
 if(i8<3.427267074584961e-05){
  if(i38<0.0066644493490457535){
   if(i6<-3.35324220941402e-05){
    if(i15<-1.3768672943115234e-05){
     s0+=55.0;
    } else {
     s0+=207.0;
     s1+=1095.0;
    }
   } else {
    if(i0<0.08502998948097229){
     s0+=1158.0;
     s1+=52.0;
    } else {
     s0+=617.0;
     s1+=300.0;
    }
   }
  } else {
   if(i13<1.0673117637634277){
    s0+=69.0;
   } else {
    if(i30<1.228894829750061){
     s0+=16.0;
     s1+=9.0;
    } else {
     s0+=5.0;
     s1+=562.0;
    }
   }
  }
 } else {
  if(i1<0.0688396692276001){
   if(i36<1.2314128875732422){
    if(i69<1.0017350912094116){
     s1+=96.0;
    } else {
     s0+=3.0;
    }
   } else {
    if(i11<0.0017186403274536133){
     s0+=111.0;
     s1+=1.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i22<1.1146068572998047e-05){
    if(i0<0.14372509717941284){
     s0+=90.0;
     s1+=49.0;
    } else {
     s0+=21.0;
     s1+=449.0;
    }
   } else {
    if(i73<1.0078405141830444){
     s0+=36.0;
     s1+=595.0;
    } else {
     s0+=6.0;
     s1+=7755.0;
    }
   }
  }
 }
}
if(i3<0.000564277172088623){
 if(i32<0.062146395444869995){
  if(i6<-4.4523447286337614e-05){
   if(i59<-0.0002463367418386042){
    if(i77<0.996893048286438){
     s0+=200.0;
     s1+=46.0;
    } else {
     s0+=192.0;
     s1+=717.0;
    }
   } else {
    if(i12<0.985558032989502){
     s0+=1572.0;
     s1+=40.0;
    } else {
     s0+=455.0;
     s1+=192.0;
    }
   }
  } else {
   if(i0<0.08241826295852661){
    if(i1<0.06921815872192383){
     s0+=64764.0;
     s1+=1244.0;
    } else {
     s0+=1019.0;
     s1+=318.0;
    }
   } else {
    if(i8<-5.4836273193359375e-05){
     s0+=306.0;
     s1+=4.0;
    } else {
     s0+=75.0;
     s1+=739.0;
    }
   }
  }
 } else {
  if(i6<-1.3557121746998746e-05){
   if(i17<0.005990820936858654){
    if(i25<0.03866652399301529){
     s0+=626.0;
     s1+=549.0;
    } else {
     s0+=37.0;
     s1+=328.0;
    }
   } else {
    if(i2<0.09917429089546204){
     s0+=104.0;
     s1+=87.0;
    } else {
     s0+=12.0;
     s1+=1076.0;
    }
   }
  } else {
   if(i23<1.0026719570159912){
    if(i4<0.21123766899108887){
     s0+=1219.0;
     s1+=86.0;
    } else {
     s0+=175.0;
     s1+=95.0;
    }
   } else {
    if(i2<0.09383726119995117){
     s0+=2.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i2<0.05852234363555908){
  if(i46<0.0017947097076103091){
   if(i1<0.06007516384124756){
    if(i45<-1.5255831385729834e-05){
     s0+=49.0;
     s1+=62.0;
    } else {
     s0+=218.0;
     s1+=2.0;
    }
   } else {
    if(i39<0.00013431906700134277){
     s0+=3.0;
    } else {
     s1+=73.0;
    }
   }
  } else {
   if(i60<0.0007250607013702393){
    if(i56<0.0013264809967949986){
     s0+=19.0;
     s1+=53.0;
    } else {
     s0+=11.0;
     s1+=412.0;
    }
   } else {
    if(i67<0.03620023652911186){
     s1+=3.0;
    } else {
     s0+=34.0;
    }
   }
  }
 } else {
  if(i36<1.0633666515350342){
   s0+=4.0;
  } else {
   if(i8<5.78761100769043e-05){
    if(i17<0.001964862458407879){
     s0+=47.0;
     s1+=5.0;
    } else {
     s0+=82.0;
     s1+=1043.0;
    }
   } else {
    if(i73<0.996715784072876){
     s0+=57.0;
     s1+=1131.0;
    } else {
     s0+=12.0;
     s1+=8640.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i13<1.0452277660369873){
  if(i47<0.00031347566982731223){
   if(i57<0.0007898422190919518){
    if(i29<1.008194923400879){
     s0+=46334.0;
     s1+=32.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i41<5.35670442332048e-05){
     s0+=178.0;
    } else {
     s0+=23.0;
     s1+=26.0;
    }
   }
  } else {
   if(i0<0.08214440941810608){
    if(i44<0.0016118682688102126){
     s0+=4776.0;
     s1+=731.0;
    } else {
     s0+=10544.0;
     s1+=44.0;
    }
   } else {
    if(i3<-0.0008778274059295654){
     s0+=224.0;
     s1+=9.0;
    } else {
     s0+=87.0;
     s1+=302.0;
    }
   }
  }
 } else {
  if(i38<0.006200573407113552){
   if(i18<0.9988506436347961){
    if(i39<-0.00023353099822998047){
     s0+=1369.0;
    } else {
     s0+=880.0;
     s1+=70.0;
    }
   } else {
    if(i0<0.07745638489723206){
     s0+=4250.0;
     s1+=880.0;
    } else {
     s0+=1189.0;
     s1+=2209.0;
    }
   }
  } else {
   if(i59<-0.0003487131034489721){
    if(i67<0.059369295835494995){
     s0+=193.0;
     s1+=150.0;
    } else {
     s0+=21.0;
     s1+=1092.0;
    }
   } else {
    if(i0<0.121368408203125){
     s0+=520.0;
     s1+=90.0;
    } else {
     s0+=19.0;
     s1+=283.0;
    }
   }
  }
 }
} else {
 if(i0<0.0637362003326416){
  if(i68<0.0004628372844308615){
   if(i43<0.001013861852698028){
    if(i49<1.0002542734146118){
     s1+=59.0;
    } else {
     s0+=9.0;
    }
   } else {
    if(i46<0.005558135453611612){
     s0+=174.0;
     s1+=6.0;
    } else {
     s0+=5.0;
     s1+=31.0;
    }
   }
  } else {
   if(i14<-0.002399146556854248){
    if(i13<1.0889548063278198){
     s0+=18.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i41<0.00014224280312191695){
     s0+=5.0;
     s1+=322.0;
    } else {
     s0+=15.0;
     s1+=50.0;
    }
   }
  }
 } else {
  if(i8<6.35981559753418e-05){
   if(i37<0.011738622561097145){
    if(i35<1.2392117977142334){
     s1+=242.0;
    } else {
     s0+=99.0;
     s1+=9.0;
    }
   } else {
    if(i6<-6.292187754297629e-05){
     s0+=2.0;
     s1+=826.0;
    } else {
     s0+=3.0;
     s1+=114.0;
    }
   }
  } else {
   if(i23<0.9975157976150513){
    if(i35<1.5870765447616577){
     s1+=82.0;
    } else {
     s0+=24.0;
     s1+=31.0;
    }
   } else {
    if(i14<-0.0008549094200134277){
     s0+=20.0;
     s1+=303.0;
    } else {
     s0+=12.0;
     s1+=9259.0;
    }
   }
  }
 }
}
if(i1<0.08408460021018982){
 if(i5<1.0024688243865967){
  if(i47<0.0003167673130519688){
   if(i42<1.000417709350586){
    if(i57<0.0007991300662979484){
     s0+=45073.0;
     s1+=11.0;
    } else {
     s0+=105.0;
     s1+=16.0;
    }
   } else {
    if(i21<1.007866382598877){
     s0+=2351.0;
     s1+=20.0;
    } else {
     s0+=4.0;
     s1+=45.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i11<8.067488670349121e-05){
     s0+=4924.0;
     s1+=858.0;
    } else {
     s0+=321.0;
     s1+=635.0;
    }
   } else {
    if(i46<0.006673433352261782){
     s0+=15233.0;
     s1+=243.0;
    } else {
     s0+=1359.0;
     s1+=299.0;
    }
   }
  }
 } else {
  if(i35<1.2392117977142334){
   if(i43<0.00031549265258945525){
    s0+=4.0;
   } else {
    if(i17<0.0006339997053146362){
     s0+=5.0;
    } else {
     s1+=670.0;
    }
   }
  } else {
   if(i68<0.00046399328857660294){
    if(i69<0.9989370107650757){
     s0+=5.0;
     s1+=37.0;
    } else {
     s0+=203.0;
     s1+=1.0;
    }
   } else {
    if(i51<0.010893315076828003){
     s0+=17.0;
     s1+=301.0;
    } else {
     s0+=38.0;
     s1+=11.0;
    }
   }
  }
 }
} else {
 if(i3<0.00044167041778564453){
  if(i35<1.0835556983947754){
   s0+=178.0;
  } else {
   if(i48<0.004315495491027832){
    if(i11<-0.00043773651123046875){
     s0+=138.0;
     s1+=7.0;
    } else {
     s0+=219.0;
     s1+=2046.0;
    }
   } else {
    if(i6<-2.776288783934433e-05){
     s0+=218.0;
     s1+=712.0;
    } else {
     s0+=655.0;
     s1+=147.0;
    }
   }
  }
 } else {
  if(i17<0.003866713959723711){
   if(i70<-0.03037877008318901){
    if(i4<0.24616354703903198){
     s0+=72.0;
     s1+=1.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i47<0.004037285223603249){
     s0+=5.0;
     s1+=545.0;
    } else {
     s0+=22.0;
     s1+=62.0;
    }
   }
  } else {
   if(i5<1.0044604539871216){
    if(i15<2.7954578399658203e-05){
     s0+=3.0;
     s1+=1400.0;
    } else {
     s0+=64.0;
     s1+=531.0;
    }
   } else {
    if(i29<1.0143396854400635){
     s0+=11.0;
     s1+=1444.0;
    } else {
     s1+=6970.0;
    }
   }
  }
 }
}
if(i4<0.06995061039924622){
 if(i8<4.178285598754883e-05){
  if(i7<1.0077202320098877){
   if(i58<0.04631171375513077){
    if(i57<0.0008428187575191259){
     s0+=55436.0;
     s1+=421.0;
    } else {
     s0+=809.0;
     s1+=236.0;
    }
   } else {
    if(i1<0.07551151514053345){
     s0+=11253.0;
     s1+=1045.0;
    } else {
     s0+=119.0;
     s1+=418.0;
    }
   }
  } else {
   if(i6<-3.768513852264732e-05){
    if(i33<0.0022261012345552444){
     s0+=8.0;
     s1+=418.0;
    } else {
     s0+=55.0;
     s1+=21.0;
    }
   } else {
    if(i36<1.1039612293243408){
     s0+=73.0;
     s1+=111.0;
    } else {
     s0+=735.0;
     s1+=21.0;
    }
   }
  }
 } else {
  if(i39<-0.00013330578804016113){
   s0+=160.0;
  } else {
   if(i23<1.0026416778564453){
    if(i14<0.0014311671257019043){
     s0+=131.0;
     s1+=83.0;
    } else {
     s1+=66.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s1+=983.0;
    } else {
     s0+=144.0;
     s1+=638.0;
    }
   }
  }
 }
} else {
 if(i0<0.11719471216201782){
  if(i53<0.05058982968330383){
   if(i61<0.006499767303466797){
    if(i18<0.9985749125480652){
     s0+=33.0;
     s1+=14.0;
    } else {
     s0+=66.0;
     s1+=882.0;
    }
   } else {
    if(i4<0.08729085326194763){
     s0+=52.0;
     s1+=2.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i65<-0.004306301474571228){
    if(i16<0.9657814502716064){
     s0+=16.0;
     s1+=17.0;
    } else {
     s0+=820.0;
     s1+=20.0;
    }
   } else {
    if(i20<1.0494635105133057){
     s0+=265.0;
     s1+=9.0;
    } else {
     s0+=287.0;
     s1+=304.0;
    }
   }
  }
 } else {
  if(i11<-0.0004030168056488037){
   if(i31<1.434314250946045){
    if(i18<0.9986628293991089){
     s0+=194.0;
    } else {
     s1+=1.0;
    }
   } else {
    s1+=7.0;
   }
  } else {
   if(i68<0.00022123049711808562){
    if(i40<0.07375097274780273){
     s0+=13.0;
     s1+=529.0;
    } else {
     s0+=259.0;
     s1+=119.0;
    }
   } else {
    if(i17<0.003182858694344759){
     s0+=138.0;
     s1+=423.0;
    } else {
     s0+=71.0;
     s1+=10320.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i1<0.08225274085998535){
  if(i9<1.0398929119110107){
   if(i57<0.0007801146130077541){
    if(i16<1.0116345882415771){
     s0+=56695.0;
     s1+=336.0;
    } else {
     s0+=18.0;
     s1+=28.0;
    }
   } else {
    if(i36<1.2048285007476807){
     s0+=1758.0;
     s1+=652.0;
    } else {
     s0+=4229.0;
     s1+=79.0;
    }
   }
  } else {
   if(i10<1.001549243927002){
    if(i35<1.1013743877410889){
     s0+=1660.0;
     s1+=486.0;
    } else {
     s0+=4081.0;
     s1+=278.0;
    }
   } else {
    if(i61<0.003775179386138916){
     s0+=256.0;
     s1+=245.0;
    } else {
     s0+=158.0;
     s1+=7.0;
    }
   }
  }
 } else {
  if(i35<1.0835556983947754){
   s0+=184.0;
  } else {
   if(i48<0.004343092441558838){
    if(i15<-1.5109777450561523e-05){
     s0+=176.0;
     s1+=10.0;
    } else {
     s0+=234.0;
     s1+=2440.0;
    }
   } else {
    if(i68<0.0003815217060036957){
     s0+=654.0;
     s1+=260.0;
    } else {
     s0+=339.0;
     s1+=765.0;
    }
   }
  }
 }
} else {
 if(i20<1.0413084030151367){
  if(i69<1.0008505582809448){
   s0+=199.0;
  } else {
   s1+=6.0;
  }
 } else {
  if(i37<0.020511459559202194){
   if(i14<0.001430511474609375){
    if(i17<0.0021814964711666107){
     s0+=137.0;
     s1+=25.0;
    } else {
     s0+=218.0;
     s1+=737.0;
    }
   } else {
    s1+=1970.0;
   }
  } else {
   if(i5<1.0017591714859009){
    if(i37<0.02240721881389618){
     s0+=12.0;
     s1+=4.0;
    } else {
     s0+=3.0;
     s1+=113.0;
    }
   } else {
    if(i2<0.0806279182434082){
     s0+=3.0;
     s1+=233.0;
    } else {
     s1+=8564.0;
    }
   }
  }
 }
}
if(i5<1.0024337768554688){
 if(i1<0.08244869112968445){
  if(i67<0.012500753626227379){
   if(i61<-0.002698570489883423){
    if(i35<1.094580888748169){
     s0+=122.0;
     s1+=168.0;
    } else {
     s0+=194.0;
     s1+=31.0;
    }
   } else {
    if(i73<1.0083589553833008){
     s0+=48237.0;
     s1+=106.0;
    } else {
     s0+=245.0;
     s1+=88.0;
    }
   }
  } else {
   if(i38<0.0010776848066598177){
    if(i50<0.006808497477322817){
     s0+=3665.0;
     s1+=766.0;
    } else {
     s0+=487.0;
     s1+=369.0;
    }
   } else {
    if(i3<0.0002757906913757324){
     s0+=15796.0;
     s1+=367.0;
    } else {
     s0+=438.0;
     s1+=138.0;
    }
   }
  }
 } else {
  if(i8<-5.456805229187012e-05){
   if(i14<-0.0030679702758789062){
    if(i71<0.0006719113443978131){
     s0+=43.0;
     s1+=6.0;
    } else {
     s0+=19.0;
     s1+=80.0;
    }
   } else {
    if(i36<1.4055135250091553){
     s0+=377.0;
     s1+=5.0;
    } else {
     s0+=10.0;
     s1+=30.0;
    }
   }
  } else {
   if(i6<-1.380167668685317e-05){
    if(i52<0.036729276180267334){
     s0+=184.0;
     s1+=2603.0;
    } else {
     s0+=342.0;
     s1+=688.0;
    }
   } else {
    if(i32<0.06291046738624573){
     s0+=6.0;
     s1+=175.0;
    } else {
     s0+=614.0;
     s1+=160.0;
    }
   }
  }
 }
} else {
 if(i6<-4.3980566260870546e-05){
  if(i2<0.049371153116226196){
   if(i42<1.0004600286483765){
    if(i30<1.1297521591186523){
     s1+=4.0;
    } else {
     s0+=31.0;
    }
   } else {
    if(i70<-0.009564599953591824){
     s0+=20.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=363.0;
    }
   }
  } else {
   if(i41<9.678365313448012e-05){
    if(i13<1.0466935634613037){
     s0+=4.0;
     s1+=119.0;
    } else {
     s0+=6.0;
     s1+=8621.0;
    }
   } else {
    if(i20<1.1228240728378296){
     s0+=81.0;
     s1+=243.0;
    } else {
     s0+=8.0;
     s1+=1742.0;
    }
   }
  }
 } else {
  if(i18<1.001944661140442){
   if(i77<1.0021522045135498){
    if(i56<0.0011400864459574223){
     s0+=176.0;
    } else {
     s1+=19.0;
    }
   } else {
    if(i68<0.0005571967922151089){
     s0+=13.0;
    } else {
     s1+=32.0;
    }
   }
  } else {
   if(i1<0.0438804030418396){
    if(i58<0.0342571847140789){
     s0+=2.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=167.0;
   }
  }
 }
}
if(i1<0.08162996172904968){
 if(i3<0.0005853474140167236){
  if(i25<0.014652305282652378){
   if(i6<-4.238889960106462e-05){
    if(i33<0.0014396901242434978){
     s0+=161.0;
     s1+=109.0;
    } else {
     s0+=700.0;
     s1+=24.0;
    }
   } else {
    if(i46<0.0015908499481156468){
     s0+=53627.0;
     s1+=249.0;
    } else {
     s0+=2631.0;
     s1+=292.0;
    }
   }
  } else {
   if(i8<-2.199411392211914e-05){
    if(i36<1.217280626296997){
     s0+=2121.0;
     s1+=244.0;
    } else {
     s0+=7112.0;
     s1+=70.0;
    }
   } else {
    if(i31<1.1047927141189575){
     s0+=882.0;
     s1+=815.0;
    } else {
     s0+=1883.0;
     s1+=298.0;
    }
   }
  }
 } else {
  if(i47<0.000233056751312688){
   if(i59<-0.00023371442512143403){
    s1+=3.0;
   } else {
    s0+=122.0;
   }
  } else {
   if(i35<1.2392117977142334){
    if(i38<0.00037102194619365036){
     s0+=1.0;
    } else {
     s1+=564.0;
    }
   } else {
    if(i19<1.004560112953186){
     s0+=85.0;
     s1+=340.0;
    } else {
     s0+=168.0;
     s1+=23.0;
    }
   }
  }
 }
} else {
 if(i56<0.0013695843517780304){
  if(i40<0.0508294403553009){
   if(i8<-5.602836608886719e-05){
    s0+=47.0;
   } else {
    if(i1<0.0959012508392334){
     s0+=97.0;
     s1+=327.0;
    } else {
     s0+=14.0;
     s1+=2120.0;
    }
   }
  } else {
   if(i38<0.005354584194719791){
    if(i10<1.0077433586120605){
     s0+=875.0;
     s1+=211.0;
    } else {
     s0+=4.0;
     s1+=104.0;
    }
   } else {
    if(i30<1.253044605255127){
     s0+=115.0;
     s1+=126.0;
    } else {
     s0+=10.0;
     s1+=366.0;
    }
   }
  }
 } else {
  if(i17<0.003968866541981697){
   if(i12<1.0086604356765747){
    if(i54<0.04162484034895897){
     s0+=190.0;
     s1+=19.0;
    } else {
     s0+=34.0;
     s1+=59.0;
    }
   } else {
    s1+=109.0;
   }
  } else {
   if(i11<-0.000549614429473877){
    s0+=55.0;
   } else {
    if(i73<0.9972957968711853){
     s0+=235.0;
     s1+=2156.0;
    } else {
     s0+=11.0;
     s1+=8444.0;
    }
   }
  }
 }
}
if(i11<0.00043207406997680664){
 if(i13<1.0452215671539307){
  if(i63<-0.0012880563735961914){
   if(i31<1.1570765972137451){
    if(i31<1.0703742504119873){
     s0+=1183.0;
     s1+=14.0;
    } else {
     s0+=426.0;
     s1+=517.0;
    }
   } else {
    if(i36<1.1820628643035889){
     s0+=77.0;
     s1+=8.0;
    } else {
     s0+=2533.0;
     s1+=23.0;
    }
   }
  } else {
   if(i26<1.0129523277282715){
    if(i1<0.08785736560821533){
     s0+=57183.0;
     s1+=302.0;
    } else {
     s0+=59.0;
     s1+=122.0;
    }
   } else {
    if(i35<1.175731897354126){
     s0+=1.0;
     s1+=17.0;
    } else {
     s0+=8.0;
    }
   }
  }
 } else {
  if(i6<-4.368874215288088e-05){
   if(i29<0.9626889228820801){
    if(i7<0.9941936135292053){
     s0+=132.0;
     s1+=31.0;
    } else {
     s0+=3.0;
     s1+=14.0;
    }
   } else {
    if(i1<0.06573507189750671){
     s0+=196.0;
     s1+=149.0;
    } else {
     s0+=50.0;
     s1+=2550.0;
    }
   }
  } else {
   if(i1<0.07822847366333008){
    if(i71<0.0003243032260797918){
     s0+=4530.0;
     s1+=396.0;
    } else {
     s0+=1386.0;
     s1+=389.0;
    }
   } else {
    if(i60<0.004663050174713135){
     s0+=478.0;
     s1+=1179.0;
    } else {
     s0+=851.0;
     s1+=263.0;
    }
   }
  }
 }
} else {
 if(i44<0.0003231695154681802){
  s0+=264.0;
 } else {
  if(i14<-0.0006194114685058594){
   if(i20<1.1205039024353027){
    if(i61<-0.0018534064292907715){
     s0+=164.0;
     s1+=147.0;
    } else {
     s0+=915.0;
     s1+=153.0;
    }
   } else {
    if(i65<-0.000492145074531436){
     s0+=164.0;
     s1+=945.0;
    } else {
     s0+=113.0;
     s1+=152.0;
    }
   }
  } else {
   if(i13<1.034064531326294){
    if(i16<1.0038633346557617){
     s0+=3.0;
     s1+=22.0;
    } else {
     s0+=31.0;
     s1+=3.0;
    }
   } else {
    if(i2<0.0590590238571167){
     s0+=127.0;
     s1+=534.0;
    } else {
     s0+=89.0;
     s1+=9356.0;
    }
   }
  }
 }
}
if(i12<1.0055538415908813){
 if(i58<0.06156343221664429){
  if(i61<-0.002901792526245117){
   if(i33<0.0003328277380205691){
    s0+=85.0;
   } else {
    if(i23<0.999858558177948){
     s0+=164.0;
     s1+=145.0;
    } else {
     s0+=11.0;
     s1+=169.0;
    }
   }
  } else {
   if(i1<0.08468303084373474){
    if(i9<1.0410068035125732){
     s0+=56475.0;
     s1+=435.0;
    } else {
     s0+=2586.0;
     s1+=281.0;
    }
   } else {
    if(i20<1.0494635105133057){
     s0+=101.0;
     s1+=18.0;
    } else {
     s0+=153.0;
     s1+=635.0;
    }
   }
  }
 } else {
  if(i59<-7.3081289883703e-05){
   if(i67<0.0953044667840004){
    if(i2<0.06656432151794434){
     s0+=2360.0;
     s1+=398.0;
    } else {
     s0+=852.0;
     s1+=1491.0;
    }
   } else {
    if(i68<0.0002848118601832539){
     s0+=85.0;
     s1+=58.0;
    } else {
     s0+=115.0;
     s1+=1779.0;
    }
   }
  } else {
   if(i10<1.0008854866027832){
    if(i5<1.0006027221679688){
     s0+=7087.0;
     s1+=624.0;
    } else {
     s0+=122.0;
     s1+=243.0;
    }
   } else {
    if(i45<-1.1188718417542987e-05){
     s0+=43.0;
     s1+=336.0;
    } else {
     s0+=109.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i5<1.0041282176971436){
  if(i42<1.0000882148742676){
   if(i7<1.0108015537261963){
    if(i8<1.0073184967041016e-05){
     s0+=116.0;
     s1+=12.0;
    } else {
     s0+=2.0;
     s1+=86.0;
    }
   } else {
    if(i49<0.9998723864555359){
     s1+=792.0;
    } else {
     s0+=5.0;
     s1+=65.0;
    }
   }
  } else {
   if(i6<-4.288876516511664e-05){
    if(i0<0.051249921321868896){
     s0+=46.0;
     s1+=34.0;
    } else {
     s0+=31.0;
     s1+=558.0;
    }
   } else {
    if(i68<0.0005755538586527109){
     s0+=715.0;
     s1+=25.0;
    } else {
     s1+=77.0;
    }
   }
  }
 } else {
  if(i14<-5.179643630981445e-05){
   if(i42<1.001268982887268){
    s0+=3.0;
   } else {
    s1+=43.0;
   }
  } else {
   s1+=8641.0;
  }
 }
}
if(i9<1.0452277660369873){
 if(i1<0.0832170844078064){
  if(i7<1.008392095565796){
   if(i34<0.0002816409687511623){
    if(i77<1.002339482307434){
     s0+=51272.0;
     s1+=166.0;
    } else {
     s0+=942.0;
     s1+=58.0;
    }
   } else {
    if(i14<-0.0019527971744537354){
     s0+=7074.0;
     s1+=77.0;
    } else {
     s0+=5727.0;
     s1+=1182.0;
    }
   }
  } else {
   if(i30<1.1170852184295654){
    if(i22<4.0024518966674805e-05){
     s0+=17.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=175.0;
    }
   } else {
    if(i61<-0.0054988861083984375){
     s0+=1.0;
     s1+=9.0;
    } else {
     s0+=188.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i13<1.0444979667663574){
   if(i42<0.9993036985397339){
    if(i23<0.9947327375411987){
     s0+=83.0;
    } else {
     s0+=13.0;
     s1+=7.0;
    }
   } else {
    if(i20<1.045006275177002){
     s0+=57.0;
     s1+=14.0;
    } else {
     s0+=21.0;
     s1+=298.0;
    }
   }
  } else {
   if(i69<0.9955241680145264){
    s0+=22.0;
   } else {
    if(i52<0.058023035526275635){
     s0+=8.0;
     s1+=695.0;
    } else {
     s0+=12.0;
     s1+=3.0;
    }
   }
  }
 }
} else {
 if(i0<0.08920010924339294){
  if(i3<0.0004749894142150879){
   if(i3<0.00017181038856506348){
    if(i41<2.822735405061394e-05){
     s0+=1798.0;
     s1+=67.0;
    } else {
     s0+=1921.0;
     s1+=472.0;
    }
   } else {
    if(i50<0.010554913431406021){
     s0+=466.0;
     s1+=175.0;
    } else {
     s0+=46.0;
     s1+=90.0;
    }
   }
  } else {
   if(i35<1.2392117977142334){
    s1+=386.0;
   } else {
    if(i16<1.001213788986206){
     s0+=51.0;
     s1+=263.0;
    } else {
     s0+=169.0;
     s1+=51.0;
    }
   }
  }
 } else {
  if(i18<0.9985139966011047){
   if(i33<0.006895538419485092){
    s0+=346.0;
   } else {
    if(i75<8.913241617847234e-05){
     s0+=2.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i3<0.0005320310592651367){
    if(i53<0.060980141162872314){
     s0+=27.0;
     s1+=1423.0;
    } else {
     s0+=869.0;
     s1+=1211.0;
    }
   } else {
    if(i14<3.713369369506836e-05){
     s0+=95.0;
     s1+=1002.0;
    } else {
     s0+=22.0;
     s1+=9153.0;
    }
   }
  }
 }
}
if(i10<1.0041577816009521){
 if(i0<0.08671185374259949){
  if(i2<0.06295359134674072){
   if(i60<-0.0024556517601013184){
    if(i2<0.027052491903305054){
     s0+=2018.0;
     s1+=255.0;
    } else {
     s0+=245.0;
     s1+=317.0;
    }
   } else {
    if(i5<1.0024793148040771){
     s0+=62986.0;
     s1+=1026.0;
    } else {
     s0+=94.0;
     s1+=92.0;
    }
   }
  } else {
   if(i10<0.9946464896202087){
    if(i24<0.9965620040893555){
     s1+=17.0;
    } else {
     s0+=1530.0;
     s1+=59.0;
    }
   } else {
    if(i40<0.031219303607940674){
     s0+=131.0;
     s1+=508.0;
    } else {
     s0+=1554.0;
     s1+=235.0;
    }
   }
  }
 } else {
  if(i5<0.9959860444068909){
   if(i68<0.0016405937494710088){
    if(i41<0.00019650257308967412){
     s0+=585.0;
     s1+=3.0;
    } else {
     s0+=36.0;
     s1+=37.0;
    }
   } else {
    if(i13<1.072406530380249){
     s0+=9.0;
    } else {
     s1+=69.0;
    }
   }
  } else {
   if(i43<0.006000441499054432){
    if(i32<0.06698355078697205){
     s0+=60.0;
     s1+=1255.0;
    } else {
     s0+=980.0;
     s1+=1193.0;
    }
   } else {
    if(i37<0.028913049027323723){
     s0+=88.0;
     s1+=291.0;
    } else {
     s0+=25.0;
     s1+=2018.0;
    }
   }
  }
 }
} else {
 if(i17<0.0016352541279047728){
  if(i41<-3.0600043828599155e-05){
   s1+=118.0;
  } else {
   if(i45<-1.608482125448063e-05){
    s1+=7.0;
   } else {
    if(i4<0.05973398685455322){
     s0+=422.0;
    } else {
     s0+=36.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i11<-0.0002719461917877197){
   s0+=94.0;
  } else {
   if(i4<0.04494291543960571){
    if(i34<0.00021806295262649655){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=33.0;
     s1+=611.0;
    }
   } else {
    if(i17<0.002639222424477339){
     s0+=42.0;
     s1+=283.0;
    } else {
     s0+=22.0;
     s1+=8830.0;
    }
   }
  }
 }
}
if(i5<1.0023773908615112){
 if(i2<0.07903355360031128){
  if(i1<0.06772136688232422){
   if(i48<-0.0015021562576293945){
    if(i37<0.057299450039863586){
     s0+=4043.0;
     s1+=682.0;
    } else {
     s0+=1.0;
     s1+=45.0;
    }
   } else {
    if(i47<0.00027688522823154926){
     s0+=44713.0;
     s1+=53.0;
    } else {
     s0+=18221.0;
     s1+=686.0;
    }
   }
  } else {
   if(i52<0.02234053611755371){
    if(i55<0.010214090347290039){
     s0+=140.0;
     s1+=461.0;
    } else {
     s0+=250.0;
     s1+=21.0;
    }
   } else {
    if(i20<1.0477534532546997){
     s0+=1099.0;
     s1+=14.0;
    } else {
     s0+=502.0;
     s1+=92.0;
    }
   }
  }
 } else {
  if(i33<0.0004515123728197068){
   if(i10<1.0009691715240479){
    if(i6<-7.0062251324998215e-06){
     s0+=35.0;
     s1+=4.0;
    } else {
     s0+=246.0;
    }
   } else {
    if(i37<0.002675461582839489){
     s0+=3.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   if(i5<0.9959948062896729){
    if(i56<0.0029256141278892756){
     s0+=337.0;
     s1+=10.0;
    } else {
     s0+=31.0;
     s1+=75.0;
    }
   } else {
    if(i37<0.02533075585961342){
     s0+=909.0;
     s1+=1843.0;
    } else {
     s0+=127.0;
     s1+=1700.0;
    }
   }
  }
 }
} else {
 if(i47<0.00022744410671293736){
  if(i19<1.0069608688354492){
   s0+=95.0;
  } else {
   s1+=15.0;
  }
 } else {
  if(i0<0.05929875373840332){
   if(i56<0.0009062830358743668){
    if(i76<-4.666174845624482e-06){
     s1+=2.0;
    } else {
     s0+=93.0;
     s1+=1.0;
    }
   } else {
    if(i70<-0.009012783877551556){
     s0+=23.0;
     s1+=3.0;
    } else {
     s0+=48.0;
     s1+=398.0;
    }
   }
  } else {
   if(i21<1.0467199087142944){
    if(i25<0.031155921518802643){
     s0+=143.0;
     s1+=2603.0;
    } else {
     s0+=18.0;
     s1+=3489.0;
    }
   } else {
    if(i1<0.11905041337013245){
     s0+=3.0;
     s1+=9.0;
    } else {
     s1+=4952.0;
    }
   }
  }
 }
}
if(i1<0.0816052258014679){
 if(i20<1.0485899448394775){
  if(i57<0.0007278352277353406){
   if(i42<1.0004496574401855){
    if(i40<0.05891460180282593){
     s0+=50293.0;
     s1+=46.0;
    } else {
     s0+=59.0;
     s1+=4.0;
    }
   } else {
    if(i17<0.0040300702676177025){
     s0+=2146.0;
     s1+=7.0;
    } else {
     s0+=289.0;
     s1+=58.0;
    }
   }
  } else {
   if(i5<0.996537446975708){
    if(i20<1.0477458238601685){
     s0+=2094.0;
     s1+=16.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i35<1.0821808576583862){
     s0+=675.0;
    } else {
     s0+=267.0;
     s1+=227.0;
    }
   }
  }
 } else {
  if(i3<0.000461578369140625){
   if(i13<1.0368338823318481){
    if(i38<0.0009733978076837957){
     s0+=1272.0;
     s1+=165.0;
    } else {
     s0+=3785.0;
     s1+=16.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=1698.0;
     s1+=977.0;
    } else {
     s0+=6255.0;
     s1+=444.0;
    }
   }
  } else {
   if(i50<0.004810380283743143){
    if(i44<0.0017645452171564102){
     s1+=201.0;
    } else {
     s0+=227.0;
     s1+=17.0;
    }
   } else {
    if(i61<0.002956986427307129){
     s0+=68.0;
     s1+=784.0;
    } else {
     s0+=63.0;
     s1+=22.0;
    }
   }
  }
 }
} else {
 if(i3<0.00014725327491760254){
  if(i6<-1.1507087947393302e-05){
   if(i60<0.0033637285232543945){
    if(i11<-0.0004774332046508789){
     s0+=19.0;
     s1+=5.0;
    } else {
     s0+=60.0;
     s1+=1095.0;
    }
   } else {
    if(i38<0.005770577117800713){
     s0+=245.0;
     s1+=232.0;
    } else {
     s0+=45.0;
     s1+=368.0;
    }
   }
  } else {
   if(i40<0.037984877824783325){
    if(i4<0.0370464026927948){
     s0+=39.0;
     s1+=7.0;
    } else {
     s0+=22.0;
     s1+=144.0;
    }
   } else {
    if(i25<0.029101276770234108){
     s0+=615.0;
     s1+=38.0;
    } else {
     s0+=202.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i6<-4.286492185201496e-05){
   if(i14<2.2709369659423828e-05){
    if(i2<0.13184204697608948){
     s0+=131.0;
     s1+=273.0;
    } else {
     s0+=21.0;
     s1+=1162.0;
    }
   } else {
    if(i70<-0.0589936338365078){
     s0+=2.0;
     s1+=999.0;
    } else {
     s1+=9386.0;
    }
   }
  } else {
   if(i35<1.2392117977142334){
    if(i48<0.00817185640335083){
     s0+=18.0;
     s1+=440.0;
    } else {
     s0+=34.0;
     s1+=49.0;
    }
   } else {
    if(i27<1.0052194595336914){
     s0+=3.0;
     s1+=59.0;
    } else {
     s0+=230.0;
     s1+=50.0;
    }
   }
  }
 }
}
if(i11<0.0004342198371887207){
 if(i2<0.08408460021018982){
  if(i54<0.02560092881321907){
   if(i63<-0.0017212331295013428){
    if(i49<0.9998661279678345){
     s0+=311.0;
     s1+=231.0;
    } else {
     s0+=348.0;
     s1+=19.0;
    }
   } else {
    if(i21<1.0075883865356445){
     s0+=55223.0;
     s1+=223.0;
    } else {
     s0+=804.0;
     s1+=284.0;
    }
   }
  } else {
   if(i36<1.1037919521331787){
    if(i35<1.084442138671875){
     s0+=1881.0;
    } else {
     s0+=792.0;
     s1+=1020.0;
    }
   } else {
    if(i10<0.9924246072769165){
     s0+=5026.0;
     s1+=49.0;
    } else {
     s0+=3566.0;
     s1+=276.0;
    }
   }
  }
 } else {
  if(i17<0.0017122658900916576){
   if(i62<1.0289045572280884){
    if(i53<0.06308257579803467){
     s0+=32.0;
     s1+=182.0;
    } else {
     s0+=150.0;
     s1+=38.0;
    }
   } else {
    if(i43<0.00376043445430696){
     s0+=364.0;
     s1+=9.0;
    } else {
     s0+=12.0;
     s1+=34.0;
    }
   }
  } else {
   if(i8<-5.3316354751586914e-05){
    if(i17<0.006514617241919041){
     s0+=303.0;
     s1+=3.0;
    } else {
     s0+=5.0;
     s1+=98.0;
    }
   } else {
    if(i39<-0.0001323223114013672){
     s0+=106.0;
     s1+=101.0;
    } else {
     s0+=277.0;
     s1+=3268.0;
    }
   }
  }
 }
} else {
 if(i8<4.178285598754883e-05){
  if(i24<1.0673277378082275){
   if(i46<0.0017449710285291076){
    if(i2<0.10744422674179077){
     s0+=1070.0;
     s1+=119.0;
    } else {
     s0+=4.0;
     s1+=56.0;
    }
   } else {
    if(i9<1.0453433990478516){
     s0+=226.0;
     s1+=112.0;
    } else {
     s0+=50.0;
     s1+=138.0;
    }
   }
  } else {
   if(i56<0.002449775580316782){
    if(i38<0.0010759072611108422){
     s1+=19.0;
    } else {
     s0+=118.0;
     s1+=39.0;
    }
   } else {
    if(i75<0.00010655952792149037){
     s0+=24.0;
     s1+=11.0;
    } else {
     s0+=4.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i17<0.0016505110543221235){
   if(i22<0.00030690431594848633){
    s0+=125.0;
   } else {
    s1+=49.0;
   }
  } else {
   if(i8<6.943941116333008e-05){
    if(i1<0.058362752199172974){
     s0+=71.0;
     s1+=133.0;
    } else {
     s0+=62.0;
     s1+=954.0;
    }
   } else {
    if(i1<0.014997810125350952){
     s0+=20.0;
     s1+=34.0;
    } else {
     s0+=64.0;
     s1+=9386.0;
    }
   }
  }
 }
}
if(i9<1.0452215671539307){
 if(i14<0.001342475414276123){
  if(i31<1.067622423171997){
   if(i29<1.0059738159179688){
    if(i13<1.0437114238739014){
     s0+=38216.0;
     s1+=14.0;
    } else {
     s0+=680.0;
     s1+=26.0;
    }
   } else {
    if(i13<1.0411081314086914){
     s0+=20.0;
    } else {
     s1+=6.0;
    }
   }
  } else {
   if(i0<0.08371159434318542){
    if(i5<1.0024954080581665){
     s0+=25942.0;
     s1+=1331.0;
    } else {
     s0+=94.0;
     s1+=257.0;
    }
   } else {
    if(i6<6.407824002963025e-06){
     s0+=156.0;
     s1+=819.0;
    } else {
     s0+=76.0;
     s1+=17.0;
    }
   }
  }
 } else {
  if(i68<8.86283814907074e-05){
   s0+=18.0;
  } else {
   if(i13<1.029115915298462){
    s0+=8.0;
   } else {
    if(i1<0.05761834979057312){
     s0+=7.0;
     s1+=31.0;
    } else {
     s1+=324.0;
    }
   }
  }
 }
} else {
 if(i17<0.004518560599535704){
  if(i22<0.00021511316299438477){
   if(i35<1.255998969078064){
    if(i25<0.02797951176762581){
     s0+=2332.0;
     s1+=649.0;
    } else {
     s0+=166.0;
     s1+=589.0;
    }
   } else {
    if(i38<0.006475597620010376){
     s0+=2240.0;
     s1+=145.0;
    } else {
     s0+=135.0;
     s1+=106.0;
    }
   }
  } else {
   if(i49<0.9974689483642578){
    s0+=6.0;
   } else {
    s1+=817.0;
   }
  }
 } else {
  if(i3<-0.0004983842372894287){
   if(i4<0.1576712727546692){
    if(i68<0.001666812808252871){
     s0+=367.0;
     s1+=60.0;
    } else {
     s0+=1.0;
     s1+=50.0;
    }
   } else {
    if(i64<-3.701799869304523e-06){
     s1+=111.0;
    } else {
     s0+=40.0;
     s1+=3.0;
    }
   }
  } else {
   if(i0<0.09107831120491028){
    if(i65<-0.004119358491152525){
     s0+=231.0;
     s1+=55.0;
    } else {
     s0+=115.0;
     s1+=809.0;
    }
   } else {
    if(i20<1.0761027336120605){
     s0+=58.0;
     s1+=401.0;
    } else {
     s0+=78.0;
     s1+=10646.0;
    }
   }
  }
 }
}
if(i1<0.08304375410079956){
 if(i22<0.00016924738883972168){
  if(i20<1.0485899448394775){
   if(i61<-0.0022396743297576904){
    if(i1<0.05480453372001648){
     s0+=1715.0;
     s1+=137.0;
    } else {
     s0+=69.0;
     s1+=67.0;
    }
   } else {
    if(i18<1.0013740062713623){
     s0+=53988.0;
     s1+=100.0;
    } else {
     s0+=381.0;
     s1+=30.0;
    }
   }
  } else {
   if(i23<1.0006518363952637){
    if(i25<0.023459838703274727){
     s0+=8986.0;
     s1+=576.0;
    } else {
     s0+=1749.0;
     s1+=565.0;
    }
   } else {
    if(i44<0.0011749003315344453){
     s0+=299.0;
     s1+=586.0;
    } else {
     s0+=2039.0;
     s1+=542.0;
    }
   }
  }
 } else {
  if(i33<0.00046841526636853814){
   s0+=151.0;
  } else {
   if(i18<1.0017204284667969){
    if(i31<1.2011430263519287){
     s1+=85.0;
    } else {
     s0+=115.0;
    }
   } else {
    if(i13<1.0355219841003418){
     s0+=6.0;
    } else {
     s0+=5.0;
     s1+=448.0;
    }
   }
  }
 }
} else {
 if(i43<0.0062971278093755245){
  if(i70<-0.019178232178092003){
   if(i0<0.1359865367412567){
    if(i76<-3.5530870263755787e-06){
     s0+=2.0;
     s1+=7.0;
    } else {
     s0+=609.0;
     s1+=34.0;
    }
   } else {
    if(i43<0.0031235087662935257){
     s0+=403.0;
     s1+=145.0;
    } else {
     s0+=97.0;
     s1+=562.0;
    }
   }
  } else {
   if(i5<0.9964340925216675){
    if(i54<0.06001352518796921){
     s0+=128.0;
    } else {
     s0+=29.0;
     s1+=5.0;
    }
   } else {
    if(i48<0.006883740425109863){
     s0+=163.0;
     s1+=3564.0;
    } else {
     s0+=102.0;
     s1+=131.0;
    }
   }
  }
 } else {
  if(i28<0.00016633722407277673){
   s0+=4.0;
  } else {
   if(i15<-2.09808349609375e-05){
    s0+=9.0;
   } else {
    if(i20<1.0640453100204468){
     s0+=25.0;
     s1+=4.0;
    } else {
     s0+=80.0;
     s1+=9510.0;
    }
   }
  }
 }
}
if(i12<1.0055568218231201){
 if(i3<0.0005663037300109863){
  if(i34<0.0003166586975567043){
   if(i16<1.0112468004226685){
    if(i1<0.08490824699401855){
     s0+=53509.0;
     s1+=278.0;
    } else {
     s0+=68.0;
     s1+=76.0;
    }
   } else {
    if(i14<-8.893013000488281e-05){
     s0+=11.0;
    } else {
     s0+=5.0;
     s1+=59.0;
    }
   }
  } else {
   if(i9<1.0401077270507812){
    if(i31<1.1792536973953247){
     s0+=3356.0;
     s1+=1077.0;
    } else {
     s0+=7215.0;
     s1+=145.0;
    }
   } else {
    if(i42<0.9989765882492065){
     s0+=1177.0;
     s1+=46.0;
    } else {
     s0+=4402.0;
     s1+=3047.0;
    }
   }
  }
 } else {
  if(i42<0.9993960857391357){
   s0+=101.0;
  } else {
   if(i2<0.1258956789970398){
    if(i55<0.00979524850845337){
     s0+=112.0;
     s1+=693.0;
    } else {
     s0+=106.0;
     s1+=34.0;
    }
   } else {
    if(i23<0.9975394010543823){
     s0+=6.0;
     s1+=3.0;
    } else {
     s0+=11.0;
     s1+=1362.0;
    }
   }
  }
 }
} else {
 if(i56<0.0008409774745814502){
  if(i10<1.0075256824493408){
   if(i38<0.0013225713046267629){
    if(i72<0.039014801383018494){
     s0+=4.0;
     s1+=185.0;
    } else {
     s0+=10.0;
    }
   } else {
    if(i37<0.023127883672714233){
     s0+=668.0;
     s1+=18.0;
    } else {
     s0+=19.0;
     s1+=42.0;
    }
   }
  } else {
   if(i47<0.0003398634144105017){
    if(i11<0.00011172890663146973){
     s1+=1.0;
    } else {
     s0+=42.0;
    }
   } else {
    if(i5<1.0039658546447754){
     s0+=18.0;
     s1+=111.0;
    } else {
     s1+=475.0;
    }
   }
  }
 } else {
  if(i8<-7.212162017822266e-06){
   if(i69<0.9993866682052612){
    if(i16<1.0494952201843262){
     s0+=37.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i77<1.000387191772461){
     s1+=76.0;
    } else {
     s0+=3.0;
     s1+=2.0;
    }
   }
  } else {
   if(i6<-4.2111445509362966e-05){
    if(i8<8.374452590942383e-05){
     s0+=22.0;
     s1+=1778.0;
    } else {
     s1+=7601.0;
    }
   } else {
    if(i33<0.001598368864506483){
     s1+=115.0;
    } else {
     s0+=86.0;
     s1+=39.0;
    }
   }
  }
 }
}
if(i18<1.0016424655914307){
 if(i14<0.0008098483085632324){
  if(i34<0.00031641291570849717){
   if(i26<1.0110160112380981){
    if(i1<0.08263814449310303){
     s0+=53543.0;
     s1+=286.0;
    } else {
     s0+=80.0;
     s1+=55.0;
    }
   } else {
    if(i6<-2.1693827875424176e-05){
     s0+=10.0;
     s1+=115.0;
    } else {
     s0+=66.0;
     s1+=3.0;
    }
   }
  } else {
   if(i8<-4.374980926513672e-05){
    if(i24<1.0836129188537598){
     s0+=7413.0;
     s1+=219.0;
    } else {
     s0+=345.0;
     s1+=114.0;
    }
   } else {
    if(i17<0.0028329400811344385){
     s0+=6082.0;
     s1+=1232.0;
    } else {
     s0+=2019.0;
     s1+=2694.0;
    }
   }
  }
 } else {
  if(i34<0.00030632736161351204){
   if(i39<0.00014978647232055664){
    if(i71<-0.00013787949865218252){
     s0+=1.0;
     s1+=6.0;
    } else {
     s0+=292.0;
     s1+=2.0;
    }
   } else {
    if(i3<0.00033402442932128906){
     s0+=66.0;
    } else {
     s1+=57.0;
    }
   }
  } else {
   if(i2<0.06771832704544067){
    if(i13<1.0742501020431519){
     s0+=32.0;
     s1+=67.0;
    } else {
     s0+=96.0;
     s1+=2.0;
    }
   } else {
    if(i3<-0.0001290738582611084){
     s0+=6.0;
     s1+=2.0;
    } else {
     s0+=54.0;
     s1+=1811.0;
    }
   }
  }
 }
} else {
 if(i1<0.07317379117012024){
  if(i65<-0.00308090983889997){
   if(i44<0.01445822138339281){
    if(i20<1.126828908920288){
     s0+=383.0;
     s1+=8.0;
    } else {
     s0+=29.0;
     s1+=24.0;
    }
   } else {
    if(i13<1.094599723815918){
     s0+=8.0;
    } else {
     s1+=25.0;
    }
   }
  } else {
   if(i3<0.0003466606140136719){
    if(i70<0.0071461875922977924){
     s0+=355.0;
     s1+=28.0;
    } else {
     s1+=12.0;
    }
   } else {
    if(i38<0.001764652319252491){
     s0+=4.0;
     s1+=357.0;
    } else {
     s0+=176.0;
     s1+=329.0;
    }
   }
  }
 } else {
  if(i8<3.916025161743164e-05){
   if(i20<1.1245059967041016){
    if(i22<-9.763240814208984e-05){
     s0+=165.0;
     s1+=41.0;
    } else {
     s0+=9.0;
     s1+=54.0;
    }
   } else {
    if(i2<0.08282825350761414){
     s0+=7.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=271.0;
    }
   }
  } else {
   if(i12<1.0073604583740234){
    if(i56<0.002072092844173312){
     s0+=67.0;
     s1+=297.0;
    } else {
     s0+=26.0;
     s1+=1364.0;
    }
   } else {
    s1+=7435.0;
   }
  }
 }
}
if(i2<0.0775308609008789){
 if(i42<1.0004663467407227){
  if(i28<0.00029343002825044096){
   if(i71<0.00028069678228348494){
    if(i54<0.050281111150979996){
     s0+=50638.0;
     s1+=168.0;
    } else {
     s0+=34.0;
     s1+=21.0;
    }
   } else {
    if(i5<0.9969301223754883){
     s0+=2117.0;
     s1+=5.0;
    } else {
     s0+=320.0;
     s1+=176.0;
    }
   }
  } else {
   if(i31<1.1938297748565674){
    if(i44<0.00048128952039405704){
     s0+=2483.0;
     s1+=56.0;
    } else {
     s0+=2192.0;
     s1+=1101.0;
    }
   } else {
    if(i62<0.8880887627601624){
     s0+=333.0;
     s1+=30.0;
    } else {
     s0+=5499.0;
     s1+=48.0;
    }
   }
  }
 } else {
  if(i3<0.0004627704620361328){
   if(i38<0.0008754988084547222){
    if(i35<1.0770280361175537){
     s0+=1238.0;
    } else {
     s0+=85.0;
     s1+=273.0;
    }
   } else {
    if(i6<-4.5263102947501466e-05){
     s0+=950.0;
     s1+=130.0;
    } else {
     s0+=3284.0;
     s1+=25.0;
    }
   }
  } else {
   if(i43<0.002273865509778261){
    if(i35<1.077897071838379){
     s0+=3.0;
    } else {
     s0+=1.0;
     s1+=718.0;
    }
   } else {
    if(i24<1.015617847442627){
     s0+=22.0;
     s1+=253.0;
    } else {
     s0+=256.0;
     s1+=176.0;
    }
   }
  }
 }
} else {
 if(i18<0.9986300468444824){
  if(i17<0.007126739714294672){
   if(i9<1.047336459159851){
    if(i6<-3.6645451473305e-05){
     s0+=13.0;
     s1+=18.0;
    } else {
     s0+=165.0;
     s1+=4.0;
    }
   } else {
    s0+=310.0;
   }
  } else {
   s1+=10.0;
  }
 } else {
  if(i2<0.10958853363990784){
   if(i60<0.003474414348602295){
    if(i5<1.0018413066864014){
     s0+=273.0;
     s1+=888.0;
    } else {
     s0+=29.0;
     s1+=877.0;
    }
   } else {
    if(i38<0.0018269449938088655){
     s0+=189.0;
     s1+=93.0;
    } else {
     s0+=381.0;
     s1+=10.0;
    }
   }
  } else {
   if(i44<0.00845630094408989){
    if(i68<0.00013289874186739326){
     s0+=143.0;
     s1+=187.0;
    } else {
     s0+=281.0;
     s1+=3920.0;
    }
   } else {
    if(i43<0.0060891639441251755){
     s0+=24.0;
     s1+=300.0;
    } else {
     s0+=6.0;
     s1+=7496.0;
    }
   }
  }
 }
}
if(i11<0.00043004751205444336){
 if(i4<0.07071012258529663){
  if(i71<-8.912005432648584e-05){
   if(i20<1.1404547691345215){
    if(i42<0.9992795586585999){
     s0+=46.0;
    } else {
     s0+=83.0;
     s1+=431.0;
    }
   } else {
    if(i39<9.617209434509277e-05){
     s0+=137.0;
    } else {
     s0+=20.0;
     s1+=3.0;
    }
   }
  } else {
   if(i1<0.07886818051338196){
    if(i34<0.0002805505646392703){
     s0+=52045.0;
     s1+=210.0;
    } else {
     s0+=15031.0;
     s1+=1340.0;
    }
   } else {
    if(i69<0.9975389242172241){
     s0+=86.0;
    } else {
     s0+=76.0;
     s1+=511.0;
    }
   }
  }
 } else {
  if(i33<0.0004557690699584782){
   if(i5<1.0010645389556885){
    if(i40<0.05351465940475464){
     s0+=106.0;
     s1+=9.0;
    } else {
     s0+=261.0;
    }
   } else {
    if(i44<0.0002526769821997732){
     s0+=5.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i15<-1.4722347259521484e-05){
    if(i45<-1.0080972970172297e-05){
     s0+=11.0;
     s1+=12.0;
    } else {
     s0+=375.0;
     s1+=7.0;
    }
   } else {
    if(i17<0.003271509427577257){
     s0+=834.0;
     s1+=740.0;
    } else {
     s0+=177.0;
     s1+=2575.0;
    }
   }
  }
 }
} else {
 if(i5<1.0017051696777344){
  if(i24<1.0934839248657227){
   if(i48<-0.002161264419555664){
    if(i69<1.0031427145004272){
     s0+=92.0;
     s1+=180.0;
    } else {
     s0+=63.0;
     s1+=17.0;
    }
   } else {
    if(i32<0.11062389612197876){
     s0+=1352.0;
     s1+=147.0;
    } else {
     s0+=5.0;
     s1+=53.0;
    }
   }
  } else {
   if(i22<-0.00016999244689941406){
    if(i68<0.0005080464761704206){
     s0+=7.0;
    } else {
     s1+=167.0;
    }
   } else {
    if(i30<1.223900556564331){
     s0+=24.0;
    } else {
     s0+=7.0;
     s1+=35.0;
    }
   }
  }
 } else {
  if(i1<0.06279110908508301){
   if(i50<0.007867937907576561){
    if(i34<0.001964414492249489){
     s0+=115.0;
     s1+=128.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   } else {
    if(i19<1.0156457424163818){
     s0+=23.0;
     s1+=377.0;
    } else {
     s0+=8.0;
    }
   }
  } else {
   if(i37<0.012085679918527603){
    if(i22<5.3882598876953125e-05){
     s0+=90.0;
     s1+=53.0;
    } else {
     s0+=9.0;
     s1+=1049.0;
    }
   } else {
    if(i5<1.002967119216919){
     s0+=29.0;
     s1+=450.0;
    } else {
     s0+=14.0;
     s1+=8541.0;
    }
   }
  }
 }
}
if(i1<0.08316218852996826){
 if(i8<4.202127456665039e-05){
  if(i25<0.016892272979021072){
   if(i63<-0.0013231635093688965){
    if(i43<0.0008740046760067344){
     s0+=993.0;
     s1+=337.0;
    } else {
     s0+=1838.0;
     s1+=71.0;
    }
   } else {
    if(i23<1.0012798309326172){
     s0+=54372.0;
     s1+=279.0;
    } else {
     s0+=1927.0;
     s1+=164.0;
    }
   }
  } else {
   if(i73<0.9893395900726318){
    if(i48<0.001743704080581665){
     s0+=2554.0;
     s1+=385.0;
    } else {
     s0+=4553.0;
     s1+=5.0;
    }
   } else {
    if(i6<-1.7460057279095054e-05){
     s0+=621.0;
     s1+=635.0;
    } else {
     s0+=1969.0;
     s1+=308.0;
    }
   }
  }
 } else {
  if(i38<0.0003959996975027025){
   s0+=214.0;
  } else {
   if(i36<1.2510931491851807){
    if(i51<0.03500688076019287){
     s1+=598.0;
    } else {
     s0+=4.0;
    }
   } else {
    if(i50<0.011851202696561813){
     s0+=205.0;
     s1+=64.0;
    } else {
     s0+=17.0;
     s1+=274.0;
    }
   }
  }
 }
} else {
 if(i18<0.998518705368042){
  if(i38<0.007268178276717663){
   if(i18<0.9980377554893494){
    s0+=413.0;
   } else {
    if(i45<-9.346737897431012e-06){
     s0+=1.0;
     s1+=8.0;
    } else {
     s0+=25.0;
    }
   }
  } else {
   if(i9<1.0446126461029053){
    if(i13<1.045822024345398){
     s0+=12.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i23<0.9916571378707886){
     s0+=2.0;
    } else {
     s1+=16.0;
    }
   }
  }
 } else {
  if(i5<1.0018408298492432){
   if(i27<1.0241048336029053){
    if(i53<0.05964714288711548){
     s0+=36.0;
     s1+=1770.0;
    } else {
     s0+=280.0;
     s1+=469.0;
    }
   } else {
    if(i2<0.13312464952468872){
     s0+=480.0;
     s1+=120.0;
    } else {
     s0+=275.0;
     s1+=970.0;
    }
   }
  } else {
   if(i8<5.65648078918457e-05){
    if(i59<-0.00017709076928440481){
     s0+=34.0;
     s1+=1014.0;
    } else {
     s0+=49.0;
     s1+=95.0;
    }
   } else {
    if(i20<1.1227065324783325){
     s0+=39.0;
     s1+=1743.0;
    } else {
     s0+=6.0;
     s1+=8006.0;
    }
   }
  }
 }
}
if(i25<0.02296062931418419){
 if(i18<1.0018455982208252){
  if(i21<1.0083222389221191){
   if(i0<0.08762171864509583){
    if(i46<0.0019748606719076633){
     s0+=58160.0;
     s1+=475.0;
    } else {
     s0+=2893.0;
     s1+=487.0;
    }
   } else {
    if(i49<0.9996013641357422){
     s0+=334.0;
     s1+=12.0;
    } else {
     s0+=376.0;
     s1+=418.0;
    }
   }
  } else {
   if(i10<1.00275456905365){
    if(i44<0.001439244719222188){
     s0+=420.0;
     s1+=342.0;
    } else {
     s0+=1385.0;
     s1+=155.0;
    }
   } else {
    if(i22<0.00021523237228393555){
     s0+=269.0;
     s1+=279.0;
    } else {
     s0+=1.0;
     s1+=475.0;
    }
   }
  }
 } else {
  if(i66<1.7756914530764334e-05){
   if(i35<1.613681674003601){
    if(i11<0.0005893111228942871){
     s0+=39.0;
     s1+=37.0;
    } else {
     s0+=52.0;
     s1+=1864.0;
    }
   } else {
    if(i35<1.639693260192871){
     s0+=83.0;
    } else {
     s1+=95.0;
    }
   }
  } else {
   if(i44<0.013258960098028183){
    if(i68<0.0016993415774777532){
     s0+=292.0;
     s1+=16.0;
    } else {
     s0+=2.0;
     s1+=16.0;
    }
   } else {
    s1+=33.0;
   }
  }
 }
} else {
 if(i59<-7.767357601551339e-05){
  if(i11<-0.0003662407398223877){
   if(i22<-0.0002327263355255127){
    if(i1<0.0829865038394928){
     s0+=622.0;
    } else {
     s0+=83.0;
     s1+=8.0;
    }
   } else {
    if(i56<0.000364715582691133){
     s1+=15.0;
    } else {
     s0+=184.0;
     s1+=12.0;
    }
   }
  } else {
   if(i4<0.056392937898635864){
    if(i0<0.06391459703445435){
     s0+=618.0;
     s1+=369.0;
    } else {
     s0+=26.0;
     s1+=484.0;
    }
   } else {
    if(i56<0.0003423974849283695){
     s0+=141.0;
     s1+=196.0;
    } else {
     s0+=204.0;
     s1+=10125.0;
    }
   }
  }
 } else {
  if(i22<-0.00019666552543640137){
   if(i0<0.11895525455474854){
    if(i68<0.002202124334871769){
     s0+=4283.0;
     s1+=78.0;
    } else {
     s0+=3.0;
     s1+=20.0;
    }
   } else {
    if(i43<0.004963213577866554){
     s0+=57.0;
     s1+=8.0;
    } else {
     s0+=9.0;
     s1+=112.0;
    }
   }
  } else {
   if(i33<0.000457469723187387){
    if(i76<1.4236402989808994e-07){
     s1+=2.0;
    } else {
     s0+=347.0;
     s1+=8.0;
    }
   } else {
    if(i20<1.0344947576522827){
     s0+=37.0;
     s1+=3.0;
    } else {
     s0+=132.0;
     s1+=1056.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i20<1.0495078563690186){
  if(i21<1.0086970329284668){
   if(i58<0.04630785807967186){
    if(i48<-0.003463655710220337){
     s0+=20.0;
     s1+=14.0;
    } else {
     s0+=51238.0;
     s1+=146.0;
    }
   } else {
    if(i10<0.9939152598381042){
     s0+=3322.0;
     s1+=7.0;
    } else {
     s0+=1792.0;
     s1+=231.0;
    }
   }
  } else {
   if(i3<0.00027108192443847656){
    if(i6<-2.6648074708646163e-05){
     s1+=8.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i11<0.0004469454288482666){
     s1+=31.0;
    } else {
     s0+=10.0;
    }
   }
  }
 } else {
  if(i3<0.00014835596084594727){
   if(i1<0.07770949602127075){
    if(i43<0.000878499005921185){
     s0+=3382.0;
     s1+=718.0;
    } else {
     s0+=8094.0;
     s1+=338.0;
    }
   } else {
    if(i53<0.05480828881263733){
     s0+=76.0;
     s1+=1115.0;
    } else {
     s0+=1097.0;
     s1+=854.0;
    }
   }
  } else {
   if(i1<0.06546443700790405){
    if(i46<0.0047012390568852425){
     s0+=891.0;
     s1+=192.0;
    } else {
     s0+=62.0;
     s1+=76.0;
    }
   } else {
    if(i48<0.004355132579803467){
     s0+=135.0;
     s1+=1173.0;
    } else {
     s0+=332.0;
     s1+=502.0;
    }
   }
  }
 }
} else {
 if(i37<0.004084628075361252){
  if(i34<0.00026155897649005055){
   if(i42<1.0008773803710938){
    if(i58<0.004426631145179272){
     s0+=5.0;
     s1+=2.0;
    } else {
     s0+=221.0;
     s1+=1.0;
    }
   } else {
    s1+=11.0;
   }
  } else {
   if(i5<1.0041625499725342){
    if(i31<1.1416394710540771){
     s0+=1.0;
     s1+=20.0;
    } else {
     s0+=26.0;
     s1+=8.0;
    }
   } else {
    s1+=243.0;
   }
  }
 } else {
  if(i38<0.009694339707493782){
   if(i35<1.594835877418518){
    if(i2<0.05846378207206726){
     s0+=91.0;
     s1+=460.0;
    } else {
     s0+=91.0;
     s1+=3739.0;
    }
   } else {
    if(i7<1.0168616771697998){
     s0+=134.0;
     s1+=49.0;
    } else {
     s1+=190.0;
    }
   }
  } else {
   if(i22<-0.00043714046478271484){
    if(i18<1.0046374797821045){
     s0+=7.0;
     s1+=40.0;
    } else {
     s0+=15.0;
    }
   } else {
    if(i2<0.0033735334873199463){
     s0+=6.0;
     s1+=12.0;
    } else {
     s0+=4.0;
     s1+=6974.0;
    }
   }
  }
 }
}
if(i2<0.0808488130569458){
 if(i8<4.1812658309936523e-05){
  if(i47<0.00031222455436363816){
   if(i7<1.0081498622894287){
    if(i29<1.0056201219558716){
     s0+=47044.0;
     s1+=39.0;
    } else {
     s0+=131.0;
     s1+=16.0;
    }
   } else {
    if(i35<1.175731897354126){
     s0+=2.0;
     s1+=68.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i31<1.103413462638855){
    if(i36<1.081458568572998){
     s0+=3773.0;
     s1+=156.0;
    } else {
     s0+=1537.0;
     s1+=1441.0;
    }
   } else {
    if(i1<0.08732491731643677){
     s0+=16486.0;
     s1+=505.0;
    } else {
     s0+=14.0;
     s1+=32.0;
    }
   }
  }
 } else {
  if(i30<1.0577372312545776){
   s0+=192.0;
  } else {
   if(i63<0.0021395087242126465){
    if(i45<-1.4645356714027002e-05){
     s0+=91.0;
     s1+=1071.0;
    } else {
     s0+=80.0;
     s1+=32.0;
    }
   } else {
    if(i36<1.2392117977142334){
     s1+=41.0;
    } else {
     s0+=93.0;
     s1+=6.0;
    }
   }
  }
 }
} else {
 if(i42<0.9988040328025818){
  if(i23<1.0022549629211426){
   if(i18<0.9980377554893494){
    s0+=404.0;
   } else {
    s1+=4.0;
   }
  } else {
   s1+=7.0;
  }
 } else {
  if(i43<0.006295825354754925){
   if(i28<0.002254021354019642){
    if(i10<0.9940023422241211){
     s0+=121.0;
     s1+=80.0;
    } else {
     s0+=280.0;
     s1+=3231.0;
    }
   } else {
    if(i52<0.019259929656982422){
     s0+=94.0;
     s1+=563.0;
    } else {
     s0+=562.0;
     s1+=365.0;
    }
   }
  } else {
   if(i0<0.1312570571899414){
    if(i27<1.0043573379516602){
     s0+=12.0;
     s1+=391.0;
    } else {
     s0+=98.0;
     s1+=49.0;
    }
   } else {
    if(i1<0.16360238194465637){
     s0+=25.0;
     s1+=472.0;
    } else {
     s0+=2.0;
     s1+=8627.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i32<0.06512272357940674){
  if(i1<0.07850030064582825){
   if(i61<-0.0023250579833984375){
    if(i39<-4.252791404724121e-05){
     s0+=2583.0;
     s1+=92.0;
    } else {
     s0+=2953.0;
     s1+=1171.0;
    }
   } else {
    if(i54<0.02681538090109825){
     s0+=56302.0;
     s1+=333.0;
    } else {
     s0+=6087.0;
     s1+=622.0;
    }
   }
  } else {
   if(i33<0.00044754683040082455){
    if(i18<1.0006110668182373){
     s0+=130.0;
     s1+=4.0;
    } else {
     s0+=2.0;
     s1+=12.0;
    }
   } else {
    if(i20<1.045040249824524){
     s0+=44.0;
     s1+=25.0;
    } else {
     s0+=79.0;
     s1+=1715.0;
    }
   }
  }
 } else {
  if(i37<0.03445488214492798){
   if(i6<-1.0923353329417296e-05){
    if(i17<0.01007067784667015){
     s0+=576.0;
     s1+=604.0;
    } else {
     s0+=12.0;
     s1+=191.0;
    }
   } else {
    if(i38<0.005443229340016842){
     s0+=798.0;
     s1+=48.0;
    } else {
     s0+=43.0;
     s1+=42.0;
    }
   }
  } else {
   if(i11<-0.00039651989936828613){
    s0+=48.0;
   } else {
    if(i54<0.04745486378669739){
     s0+=13.0;
     s1+=25.0;
    } else {
     s0+=5.0;
     s1+=1297.0;
    }
   }
  }
 }
} else {
 if(i3<0.0005392134189605713){
  if(i6<-3.318623930681497e-05){
   if(i2<0.0554603636264801){
    if(i44<0.0023591392673552036){
     s0+=3.0;
     s1+=64.0;
    } else {
     s0+=70.0;
     s1+=12.0;
    }
   } else {
    if(i49<0.9998788237571716){
     s0+=8.0;
     s1+=918.0;
    } else {
     s0+=55.0;
     s1+=353.0;
    }
   }
  } else {
   if(i38<0.006009209901094437){
    if(i25<0.04134254902601242){
     s0+=936.0;
     s1+=176.0;
    } else {
     s0+=37.0;
     s1+=59.0;
    }
   } else {
    if(i25<0.013528542593121529){
     s0+=35.0;
     s1+=8.0;
    } else {
     s0+=10.0;
     s1+=139.0;
    }
   }
  }
 } else {
  if(i5<1.0041437149047852){
   if(i42<1.000151515007019){
    s1+=454.0;
   } else {
    if(i67<0.0804855078458786){
     s0+=209.0;
     s1+=394.0;
    } else {
     s0+=4.0;
     s1+=259.0;
    }
   }
  } else {
   if(i73<0.9965904951095581){
    if(i71<0.00046561763156205416){
     s0+=3.0;
     s1+=25.0;
    } else {
     s1+=147.0;
    }
   } else {
    if(i6<-0.00010653225763235241){
     s1+=7024.0;
    } else {
     s0+=1.0;
     s1+=993.0;
    }
   }
  }
 }
}
if(i1<0.08264222741127014){
 if(i11<0.0005157589912414551){
  if(i50<0.007569046225398779){
   if(i63<-0.0013273358345031738){
    if(i35<1.100754976272583){
     s0+=918.0;
     s1+=411.0;
    } else {
     s0+=2949.0;
     s1+=66.0;
    }
   } else {
    if(i6<-4.404909850563854e-05){
     s0+=824.0;
     s1+=220.0;
    } else {
     s0+=60299.0;
     s1+=563.0;
    }
   }
  } else {
   if(i2<0.03832605481147766){
    if(i30<1.096760869026184){
     s0+=1036.0;
     s1+=267.0;
    } else {
     s0+=1640.0;
     s1+=90.0;
    }
   } else {
    if(i17<0.004090123809874058){
     s0+=515.0;
     s1+=213.0;
    } else {
     s0+=40.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i3<0.0006610751152038574){
   if(i35<1.4786540269851685){
    if(i49<1.000051736831665){
     s0+=227.0;
     s1+=36.0;
    } else {
     s0+=75.0;
     s1+=96.0;
    }
   } else {
    if(i27<0.8920550346374512){
     s0+=39.0;
     s1+=21.0;
    } else {
     s0+=567.0;
     s1+=18.0;
    }
   }
  } else {
   if(i28<0.00017253466648980975){
    if(i41<1.4907868717273232e-07){
     s0+=61.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i70<-0.014228640124201775){
     s0+=51.0;
     s1+=11.0;
    } else {
     s0+=81.0;
     s1+=895.0;
    }
   }
  }
 }
} else {
 if(i18<0.9985139966011047){
  if(i31<1.498544454574585){
   if(i3<-0.0005326271057128906){
    s0+=392.0;
   } else {
    if(i33<0.0016459620092064142){
     s0+=52.0;
    } else {
     s0+=1.0;
     s1+=3.0;
    }
   }
  } else {
   if(i45<-1.0201771146967076e-05){
    s1+=18.0;
   } else {
    s0+=9.0;
   }
  }
 } else {
  if(i18<1.0016474723815918){
   if(i60<0.00484699010848999){
    if(i2<0.10242143273353577){
     s0+=283.0;
     s1+=904.0;
    } else {
     s0+=53.0;
     s1+=2701.0;
    }
   } else {
    if(i30<1.2836685180664062){
     s0+=682.0;
     s1+=645.0;
    } else {
     s0+=11.0;
     s1+=603.0;
    }
   }
  } else {
   if(i12<1.003326177597046){
    if(i67<0.0937374085187912){
     s0+=178.0;
     s1+=506.0;
    } else {
     s0+=16.0;
     s1+=1024.0;
    }
   } else {
    if(i56<0.0016975586768239737){
     s0+=13.0;
     s1+=1289.0;
    } else {
     s1+=6472.0;
    }
   }
  }
 }
}
if(i19<1.0081071853637695){
 if(i15<1.913309097290039e-05){
  if(i32<0.07672119140625){
   if(i1<0.08523356914520264){
    if(i63<-0.0012906789779663086){
     s0+=5707.0;
     s1+=927.0;
    } else {
     s0+=60602.0;
     s1+=778.0;
    }
   } else {
    if(i3<-0.0008605122566223145){
     s0+=131.0;
     s1+=12.0;
    } else {
     s0+=85.0;
     s1+=927.0;
    }
   }
  } else {
   if(i6<-9.338873496744782e-06){
    if(i57<0.0016008864622563124){
     s0+=115.0;
     s1+=176.0;
    } else {
     s0+=16.0;
     s1+=425.0;
    }
   } else {
    if(i43<0.003700734581798315){
     s0+=349.0;
     s1+=9.0;
    } else {
     s0+=40.0;
     s1+=39.0;
    }
   }
  }
 } else {
  if(i57<0.0007097434718161821){
   if(i0<0.06740516424179077){
    if(i10<1.003661036491394){
     s0+=561.0;
     s1+=21.0;
    } else {
     s0+=19.0;
     s1+=53.0;
    }
   } else {
    if(i70<-0.006816918030381203){
     s0+=235.0;
     s1+=73.0;
    } else {
     s0+=26.0;
     s1+=139.0;
    }
   }
  } else {
   if(i12<0.9848009347915649){
    if(i4<0.06268808245658875){
     s0+=358.0;
     s1+=73.0;
    } else {
     s0+=26.0;
     s1+=213.0;
    }
   } else {
    if(i13<1.097696304321289){
     s0+=108.0;
     s1+=884.0;
    } else {
     s0+=5.0;
     s1+=1167.0;
    }
   }
  }
 }
} else {
 if(i3<0.0004967451095581055){
  if(i56<0.0018522520549595356){
   if(i6<-3.155487138428725e-05){
    if(i43<0.0021671345457434654){
     s0+=56.0;
     s1+=699.0;
    } else {
     s0+=289.0;
     s1+=216.0;
    }
   } else {
    if(i0<0.11872199177742004){
     s0+=1587.0;
     s1+=92.0;
    } else {
     s0+=307.0;
     s1+=165.0;
    }
   }
  } else {
   if(i73<1.0028769969940186){
    if(i1<0.14298227429389954){
     s0+=148.0;
     s1+=25.0;
    } else {
     s1+=213.0;
    }
   } else {
    if(i56<0.00199095718562603){
     s0+=3.0;
     s1+=37.0;
    } else {
     s1+=502.0;
    }
   }
  }
 } else {
  if(i1<0.06817638874053955){
   if(i30<1.145219087600708){
    if(i47<0.00018729496514424682){
     s0+=1.0;
    } else {
     s1+=121.0;
    }
   } else {
    if(i27<0.9982708692550659){
     s1+=5.0;
    } else {
     s0+=124.0;
    }
   }
  } else {
   if(i73<1.0033622980117798){
    if(i37<0.023361094295978546){
     s0+=76.0;
     s1+=53.0;
    } else {
     s0+=1.0;
     s1+=614.0;
    }
   } else {
    if(i6<-4.3495056161191314e-05){
     s0+=13.0;
     s1+=8500.0;
    } else {
     s0+=16.0;
     s1+=90.0;
    }
   }
  }
 }
}
if(i0<0.08504641056060791){
 if(i5<1.0024782419204712){
  if(i46<0.001569605665281415){
   if(i19<1.0073134899139404){
    if(i47<0.00031332240905612707){
     s0+=46923.0;
     s1+=52.0;
    } else {
     s0+=14080.0;
     s1+=684.0;
    }
   } else {
    if(i45<-8.479304597130977e-06){
     s0+=519.0;
     s1+=255.0;
    } else {
     s0+=1119.0;
     s1+=67.0;
    }
   }
  } else {
   if(i44<0.002167586237192154){
    if(i43<0.0003982558846473694){
     s0+=1287.0;
     s1+=17.0;
    } else {
     s0+=653.0;
     s1+=763.0;
    }
   } else {
    if(i55<-0.01710096001625061){
     s0+=1534.0;
     s1+=255.0;
    } else {
     s0+=2849.0;
     s1+=72.0;
    }
   }
  }
 } else {
  if(i64<-5.427029009297257e-06){
   if(i41<6.8559282226488e-05){
    s1+=679.0;
   } else {
    if(i37<0.008889742195606232){
     s0+=59.0;
     s1+=24.0;
    } else {
     s0+=38.0;
     s1+=263.0;
    }
   }
  } else {
   if(i43<0.0019440462347120047){
    if(i17<0.002350149443373084){
     s0+=5.0;
    } else {
     s1+=55.0;
    }
   } else {
    if(i41<-6.034639955032617e-05){
     s1+=5.0;
    } else {
     s0+=151.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i10<1.0007890462875366){
  if(i6<-1.2265873920114245e-05){
   if(i48<0.003954410552978516){
    if(i18<0.9981576204299927){
     s0+=44.0;
     s1+=2.0;
    } else {
     s0+=78.0;
     s1+=1828.0;
    }
   } else {
    if(i17<0.007948216050863266){
     s0+=446.0;
     s1+=455.0;
    } else {
     s0+=30.0;
     s1+=947.0;
    }
   }
  } else {
   if(i5<0.9956536293029785){
    s0+=561.0;
   } else {
    if(i14<-0.0004437863826751709){
     s0+=276.0;
     s1+=326.0;
    } else {
     s0+=255.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i15<1.913309097290039e-05){
   if(i22<9.459257125854492e-05){
    if(i68<0.00027816806687042117){
     s0+=85.0;
     s1+=83.0;
    } else {
     s0+=46.0;
     s1+=478.0;
    }
   } else {
    if(i39<6.0439109802246094e-05){
     s0+=7.0;
     s1+=1255.0;
    } else {
     s0+=28.0;
     s1+=174.0;
    }
   }
  } else {
   if(i22<5.602836608886719e-06){
    if(i2<0.12601712346076965){
     s0+=33.0;
     s1+=101.0;
    } else {
     s0+=3.0;
     s1+=474.0;
    }
   } else {
    if(i12<1.0009334087371826){
     s0+=2.0;
     s1+=219.0;
    } else {
     s1+=7595.0;
    }
   }
  }
 }
}
if(i7<1.0081671476364136){
 if(i58<0.0500202551484108){
  if(i8<4.0978193283081055e-05){
   if(i34<0.0003171289572492242){
    if(i71<0.00028290884802117944){
     s0+=51796.0;
     s1+=182.0;
    } else {
     s0+=1120.0;
     s1+=127.0;
    }
   } else {
    if(i22<-0.00019872188568115234){
     s0+=2409.0;
     s1+=29.0;
    } else {
     s0+=1972.0;
     s1+=664.0;
    }
   }
  } else {
   if(i5<1.0016273260116577){
    s0+=220.0;
   } else {
    if(i42<1.0019147396087646){
     s0+=17.0;
     s1+=209.0;
    } else {
     s0+=5.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i0<0.08219742774963379){
   if(i23<1.0081803798675537){
    if(i12<0.9865366220474243){
     s0+=5720.0;
     s1+=133.0;
    } else {
     s0+=4983.0;
     s1+=1213.0;
    }
   } else {
    if(i51<0.015088707208633423){
     s0+=25.0;
     s1+=162.0;
    } else {
     s0+=42.0;
     s1+=1.0;
    }
   }
  } else {
   if(i11<-0.0004025697708129883){
    if(i41<0.00019083588267676532){
     s0+=387.0;
     s1+=2.0;
    } else {
     s0+=14.0;
     s1+=12.0;
    }
   } else {
    if(i71<0.00045780601794831455){
     s0+=533.0;
     s1+=870.0;
    } else {
     s0+=235.0;
     s1+=2523.0;
    }
   }
  }
 }
} else {
 if(i10<1.0044379234313965){
  if(i38<0.006664891727268696){
   if(i17<0.0033273007720708847){
    if(i47<0.0005942679126746953){
     s0+=64.0;
     s1+=204.0;
    } else {
     s0+=1011.0;
     s1+=197.0;
    }
   } else {
    if(i18<0.9990421533584595){
     s0+=131.0;
     s1+=23.0;
    } else {
     s0+=29.0;
     s1+=1097.0;
    }
   }
  } else {
   if(i25<0.022969987243413925){
    if(i1<0.20010405778884888){
     s0+=28.0;
     s1+=2.0;
    } else {
     s0+=1.0;
     s1+=51.0;
    }
   } else {
    if(i35<1.613681674003601){
     s1+=1035.0;
    } else {
     s0+=6.0;
     s1+=146.0;
    }
   }
  }
 } else {
  if(i13<1.0343129634857178){
   if(i56<0.0008212848333641887){
    s0+=24.0;
   } else {
    s1+=4.0;
   }
  } else {
   if(i14<0.0014309287071228027){
    if(i45<-1.408009666192811e-05){
     s0+=5.0;
     s1+=857.0;
    } else {
     s0+=106.0;
     s1+=118.0;
    }
   } else {
    if(i68<4.2374173062853515e-05){
     s0+=3.0;
     s1+=11.0;
    } else {
     s0+=3.0;
     s1+=7489.0;
    }
   }
  }
 }
}
if(i0<0.08509460091590881){
 if(i3<0.0006163120269775391){
  if(i33<0.0003479622828308493){
   if(i9<1.0434911251068115){
    s0+=35994.0;
   } else {
    if(i9<1.0435409545898438){
     s1+=5.0;
    } else {
     s0+=797.0;
     s1+=8.0;
    }
   }
  } else {
   if(i13<1.0398929119110107){
    if(i48<-0.0013406574726104736){
     s0+=1432.0;
     s1+=211.0;
    } else {
     s0+=22624.0;
     s1+=332.0;
    }
   } else {
    if(i35<1.1013743877410889){
     s0+=1028.0;
     s1+=1131.0;
    } else {
     s0+=7049.0;
     s1+=497.0;
    }
   }
  }
 } else {
  if(i17<0.001999820349738002){
   if(i75<9.290980233345181e-05){
    s1+=16.0;
   } else {
    s0+=140.0;
   }
  } else {
   if(i35<1.594835877418518){
    if(i39<-0.0003091096878051758){
     s0+=24.0;
    } else {
     s0+=53.0;
     s1+=905.0;
    }
   } else {
    if(i50<0.017774898558855057){
     s0+=91.0;
    } else {
     s0+=3.0;
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i15<-1.5676021575927734e-05){
  if(i42<0.9991763830184937){
   if(i8<-2.3245811462402344e-05){
    s0+=557.0;
   } else {
    s1+=1.0;
   }
  } else {
   if(i13<1.046051263809204){
    s0+=22.0;
   } else {
    if(i40<0.06369751691818237){
     s1+=7.0;
    } else {
     s0+=11.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i17<0.001721986336633563){
   if(i14<0.0015206336975097656){
    if(i62<1.0185415744781494){
     s0+=127.0;
     s1+=123.0;
    } else {
     s0+=537.0;
     s1+=43.0;
    }
   } else {
    s1+=116.0;
   }
  } else {
   if(i22<-5.424022674560547e-06){
    if(i57<0.0014444742118939757){
     s0+=544.0;
     s1+=1502.0;
    } else {
     s0+=70.0;
     s1+=1364.0;
    }
   } else {
    if(i75<0.000322722306009382){
     s0+=70.0;
     s1+=10758.0;
    } else {
     s0+=15.0;
    }
   }
  }
 }
}
if(i23<1.0029146671295166){
 if(i13<1.0469921827316284){
  if(i2<0.07910159230232239){
   if(i20<1.0447232723236084){
    if(i48<-0.001741647720336914){
     s0+=691.0;
     s1+=69.0;
    } else {
     s0+=52859.0;
     s1+=135.0;
    }
   } else {
    if(i25<0.016424713656306267){
     s0+=6260.0;
     s1+=253.0;
    } else {
     s0+=2023.0;
     s1+=448.0;
    }
   }
  } else {
   if(i8<-4.8160552978515625e-05){
    if(i74<-0.0025027096271514893){
     s0+=8.0;
     s1+=4.0;
    } else {
     s0+=170.0;
     s1+=2.0;
    }
   } else {
    if(i31<1.0545824766159058){
     s0+=31.0;
    } else {
     s0+=57.0;
     s1+=234.0;
    }
   }
  }
 } else {
  if(i4<0.0629006028175354){
   if(i3<0.00022333860397338867){
    if(i72<0.04399596154689789){
     s0+=3462.0;
     s1+=326.0;
    } else {
     s0+=1919.0;
     s1+=527.0;
    }
   } else {
    if(i33<0.0018747865688055754){
     s0+=149.0;
     s1+=423.0;
    } else {
     s0+=297.0;
     s1+=100.0;
    }
   }
  } else {
   if(i39<-0.0001341402530670166){
    if(i6<-5.301417695591226e-05){
     s0+=4.0;
     s1+=49.0;
    } else {
     s0+=481.0;
     s1+=10.0;
    }
   } else {
    if(i56<0.000753727275878191){
     s0+=732.0;
     s1+=539.0;
    } else {
     s0+=702.0;
     s1+=3401.0;
    }
   }
  }
 }
} else {
 if(i9<1.041278600692749){
  if(i31<1.2312867641448975){
   if(i70<-0.012136733159422874){
    if(i76<-8.385519549847231e-07){
     s1+=5.0;
    } else {
     s0+=46.0;
    }
   } else {
    if(i44<0.00031481729820370674){
     s0+=49.0;
    } else {
     s0+=34.0;
     s1+=410.0;
    }
   }
  } else {
   if(i4<0.07557472586631775){
    if(i76<-3.2242801353277173e-06){
     s0+=7.0;
     s1+=45.0;
    } else {
     s0+=760.0;
     s1+=23.0;
    }
   } else {
    if(i30<1.1411104202270508){
     s0+=1.0;
    } else {
     s1+=177.0;
    }
   }
  }
 } else {
  if(i73<1.0029749870300293){
   if(i20<1.0819685459136963){
    if(i14<-0.0008744001388549805){
     s0+=101.0;
     s1+=12.0;
    } else {
     s0+=15.0;
     s1+=79.0;
    }
   } else {
    if(i4<0.11756926774978638){
     s0+=168.0;
     s1+=461.0;
    } else {
     s0+=20.0;
     s1+=1415.0;
    }
   }
  } else {
   if(i45<-1.341230199614074e-05){
    if(i5<1.001389980316162){
     s0+=12.0;
     s1+=32.0;
    } else {
     s0+=11.0;
     s1+=7862.0;
    }
   } else {
    if(i17<0.0030124110635370016){
     s0+=64.0;
    } else {
     s1+=78.0;
    }
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i55<-0.006525367498397827){
  if(i5<1.0009479522705078){
   if(i4<0.030283719301223755){
    if(i47<0.0027410038746893406){
     s0+=922.0;
     s1+=226.0;
    } else {
     s0+=1431.0;
     s1+=29.0;
    }
   } else {
    if(i63<-0.002322256565093994){
     s0+=139.0;
     s1+=255.0;
    } else {
     s0+=147.0;
     s1+=24.0;
    }
   }
  } else {
   if(i28<0.0002605941263027489){
    if(i1<0.05920657515525818){
     s0+=70.0;
    } else {
     s0+=1.0;
     s1+=53.0;
    }
   } else {
    if(i23<0.9982585906982422){
     s0+=8.0;
    } else {
     s0+=18.0;
     s1+=468.0;
    }
   }
  }
 } else {
  if(i7<1.0078403949737549){
   if(i58<0.042656369507312775){
    if(i34<0.0002811415179166943){
     s0+=50467.0;
     s1+=170.0;
    } else {
     s0+=4079.0;
     s1+=333.0;
    }
   } else {
    if(i20<1.0475225448608398){
     s0+=5204.0;
     s1+=124.0;
    } else {
     s0+=2851.0;
     s1+=737.0;
    }
   }
  } else {
   if(i0<0.06237176060676575){
    if(i10<1.0063910484313965){
     s0+=158.0;
     s1+=21.0;
    } else {
     s0+=6.0;
     s1+=10.0;
    }
   } else {
    if(i36<1.2369153499603271){
     s0+=17.0;
     s1+=233.0;
    } else {
     s0+=16.0;
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i1<0.09150144457817078){
  if(i23<1.0034828186035156){
   if(i10<1.0014142990112305){
    if(i38<0.0011273116106167436){
     s0+=1196.0;
     s1+=415.0;
    } else {
     s0+=2782.0;
     s1+=272.0;
    }
   } else {
    if(i36<1.176491379737854){
     s0+=53.0;
     s1+=300.0;
    } else {
     s0+=398.0;
     s1+=72.0;
    }
   }
  } else {
   if(i55<0.009035557508468628){
    if(i51<0.03399273753166199){
     s0+=61.0;
     s1+=679.0;
    } else {
     s0+=23.0;
     s1+=2.0;
    }
   } else {
    if(i5<1.0060925483703613){
     s0+=123.0;
     s1+=3.0;
    } else {
     s1+=10.0;
    }
   }
  }
 } else {
  if(i45<8.052077191678109e-07){
   if(i15<1.9729137420654297e-05){
    if(i6<-1.3569376278610434e-05){
     s0+=306.0;
     s1+=3503.0;
    } else {
     s0+=370.0;
     s1+=115.0;
    }
   } else {
    if(i38<0.009903051890432835){
     s0+=159.0;
     s1+=2907.0;
    } else {
     s0+=2.0;
     s1+=5862.0;
    }
   }
  } else {
   if(i24<1.0597350597381592){
    if(i67<0.04293239861726761){
     s0+=18.0;
    } else {
     s1+=35.0;
    }
   } else {
    if(i31<1.255998969078064){
     s0+=78.0;
     s1+=25.0;
    } else {
     s0+=256.0;
    }
   }
  }
 }
}
if(i0<0.08353149890899658){
 if(i13<1.0452215671539307){
  if(i46<0.0020542312413454056){
   if(i20<1.0475225448608398){
    if(i36<1.0717806816101074){
     s0+=34799.0;
    } else {
     s0+=19099.0;
     s1+=185.0;
    }
   } else {
    if(i43<0.0007372118998318911){
     s0+=1514.0;
     s1+=254.0;
    } else {
     s0+=4076.0;
     s1+=100.0;
    }
   }
  } else {
   if(i31<1.156449556350708){
    if(i36<1.0703742504119873){
     s0+=780.0;
    } else {
     s0+=205.0;
     s1+=333.0;
    }
   } else {
    if(i5<1.002547264099121){
     s0+=1465.0;
     s1+=21.0;
    } else {
     s0+=1.0;
     s1+=14.0;
    }
   }
  }
 } else {
  if(i8<3.5822391510009766e-05){
   if(i30<1.1040328741073608){
    if(i6<-2.0365401724120602e-05){
     s0+=267.0;
     s1+=607.0;
    } else {
     s0+=2066.0;
     s1+=343.0;
    }
   } else {
    if(i7<0.9825764298439026){
     s0+=247.0;
     s1+=111.0;
    } else {
     s0+=4393.0;
     s1+=221.0;
    }
   }
  } else {
   if(i48<0.0018856525421142578){
    if(i38<0.002117727417498827){
     s1+=467.0;
    } else {
     s0+=139.0;
     s1+=354.0;
    }
   } else {
    if(i64<-1.0440131518407725e-05){
     s0+=28.0;
     s1+=7.0;
    } else {
     s0+=69.0;
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i11<-0.00039246678352355957){
  if(i77<0.9980560541152954){
   if(i33<0.011081181466579437){
    s0+=579.0;
   } else {
    s1+=2.0;
   }
  } else {
   if(i6<-3.6928362533217296e-05){
    if(i66<4.402680497150868e-05){
     s0+=4.0;
     s1+=1.0;
    } else {
     s1+=14.0;
    }
   } else {
    if(i62<1.047985553741455){
     s0+=77.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   }
  }
 } else {
  if(i5<1.0018513202667236){
   if(i55<0.01320996880531311){
    if(i33<0.00044820093899033964){
     s0+=114.0;
     s1+=6.0;
    } else {
     s0+=185.0;
     s1+=2136.0;
    }
   } else {
    if(i2<0.12599068880081177){
     s0+=640.0;
     s1+=119.0;
    } else {
     s0+=291.0;
     s1+=1028.0;
    }
   }
  } else {
   if(i22<-1.8477439880371094e-06){
    if(i44<0.007303696125745773){
     s0+=93.0;
     s1+=333.0;
    } else {
     s0+=7.0;
     s1+=678.0;
    }
   } else {
    if(i3<0.0008627772331237793){
     s0+=34.0;
     s1+=841.0;
    } else {
     s0+=4.0;
     s1+=8894.0;
    }
   }
  }
 }
}
if(i1<0.08203884959220886){
 if(i6<-4.452116627362557e-05){
  if(i5<1.0012590885162354){
   if(i9<1.0977816581726074){
    if(i30<1.1484851837158203){
     s0+=357.0;
     s1+=124.0;
    } else {
     s0+=2023.0;
     s1+=62.0;
    }
   } else {
    if(i41<5.309393600327894e-05){
     s0+=1.0;
    } else {
     s1+=55.0;
    }
   }
  } else {
   if(i55<0.006880909204483032){
    if(i45<-1.1019514204235747e-05){
     s0+=96.0;
     s1+=1075.0;
    } else {
     s0+=66.0;
     s1+=15.0;
    }
   } else {
    if(i41<3.360289701959118e-05){
     s1+=8.0;
    } else {
     s0+=104.0;
     s1+=9.0;
    }
   }
  }
 } else {
  if(i28<0.0002974445524159819){
   if(i61<-0.0029116570949554443){
    if(i30<1.094580888748169){
     s0+=100.0;
     s1+=120.0;
    } else {
     s0+=130.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.000291035627014935){
     s0+=45169.0;
     s1+=32.0;
    } else {
     s0+=10740.0;
     s1+=371.0;
    }
   }
  } else {
   if(i51<0.015521049499511719){
    if(i44<0.0015614278381690383){
     s0+=2627.0;
     s1+=928.0;
    } else {
     s0+=2938.0;
     s1+=174.0;
    }
   } else {
    if(i31<1.103413462638855){
     s0+=1066.0;
     s1+=151.0;
    } else {
     s0+=3850.0;
     s1+=13.0;
    }
   }
  }
 }
} else {
 if(i45<3.211942157577141e-06){
  if(i0<0.12475001811981201){
   if(i22<9.870529174804688e-05){
    if(i27<1.025005578994751){
     s0+=444.0;
     s1+=1272.0;
    } else {
     s0+=487.0;
     s1+=90.0;
    }
   } else {
    if(i63<0.005166828632354736){
     s0+=15.0;
     s1+=1031.0;
    } else {
     s0+=15.0;
     s1+=9.0;
    }
   }
  } else {
   if(i69<0.9964587688446045){
    s0+=105.0;
   } else {
    if(i37<0.02324375882744789){
     s0+=288.0;
     s1+=2169.0;
    } else {
     s0+=62.0;
     s1+=9565.0;
    }
   }
  }
 } else {
  if(i38<0.002243570052087307){
   if(i35<1.1510810852050781){
    s0+=43.0;
   } else {
    if(i75<6.390727503458038e-05){
     s1+=18.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i39<-9.301304817199707e-05){
    s0+=225.0;
   } else {
    if(i16<0.9970308542251587){
     s1+=3.0;
    } else {
     s0+=3.0;
    }
   }
  }
 }
}
if(i73<1.0071498155593872){
 if(i54<0.03568800538778305){
  if(i61<-0.0023886561393737793){
   if(i23<1.0018675327301025){
    if(i18<0.9984099864959717){
     s0+=551.0;
    } else {
     s0+=629.0;
     s1+=444.0;
    }
   } else {
    if(i34<0.010591478087008){
     s1+=179.0;
    } else {
     s0+=6.0;
     s1+=2.0;
    }
   }
  } else {
   if(i1<0.08467069268226624){
    if(i6<-3.893233952112496e-05){
     s0+=991.0;
     s1+=172.0;
    } else {
     s0+=57833.0;
     s1+=362.0;
    }
   } else {
    if(i60<0.0033020377159118652){
     s0+=139.0;
     s1+=404.0;
    } else {
     s0+=413.0;
     s1+=107.0;
    }
   }
  }
 } else {
  if(i59<-7.290823850780725e-05){
   if(i1<0.06738567352294922){
    if(i8<-4.482269287109375e-05){
     s0+=699.0;
     s1+=19.0;
    } else {
     s0+=769.0;
     s1+=419.0;
    }
   } else {
    if(i6<-8.517004971508868e-06){
     s0+=240.0;
     s1+=3462.0;
    } else {
     s0+=275.0;
     s1+=131.0;
    }
   }
  } else {
   if(i13<1.044576644897461){
    if(i33<0.0014572793152183294){
     s0+=1306.0;
     s1+=255.0;
    } else {
     s0+=3847.0;
     s1+=41.0;
    }
   } else {
    if(i3<1.0520219802856445e-05){
     s0+=1216.0;
     s1+=253.0;
    } else {
     s0+=237.0;
     s1+=668.0;
    }
   }
  }
 }
} else {
 if(i28<0.00024985786876641214){
  if(i2<0.05624520778656006){
   if(i35<1.1039612293243408){
    if(i35<1.0981647968292236){
     s0+=85.0;
     s1+=2.0;
    } else {
     s1+=51.0;
    }
   } else {
    if(i0<0.07340776920318604){
     s0+=706.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i14<0.000596463680267334){
    if(i6<-2.2393072867998853e-05){
     s0+=8.0;
     s1+=62.0;
    } else {
     s0+=38.0;
     s1+=1.0;
    }
   } else {
    if(i37<0.0009240666986443102){
     s0+=2.0;
    } else {
     s0+=6.0;
     s1+=290.0;
    }
   }
  }
 } else {
  if(i1<0.06919518113136292){
   if(i45<-1.423235698894132e-05){
    if(i10<1.001624345779419){
     s0+=70.0;
     s1+=37.0;
    } else {
     s0+=3.0;
     s1+=260.0;
    }
   } else {
    if(i56<0.0016990969888865948){
     s0+=550.0;
     s1+=30.0;
    } else {
     s1+=20.0;
    }
   }
  } else {
   if(i3<0.0004710555076599121){
    if(i56<0.0009217249462381005){
     s0+=296.0;
     s1+=319.0;
    } else {
     s0+=61.0;
     s1+=674.0;
    }
   } else {
    if(i1<0.09393879771232605){
     s0+=14.0;
     s1+=363.0;
    } else {
     s0+=3.0;
     s1+=8230.0;
    }
   }
  }
 }
}
if(i6<-4.36950649600476e-05){
 if(i0<0.07231613993644714){
  if(i8<1.9222497940063477e-05){
   if(i43<0.0028937445022165775){
    if(i34<0.00031574201420880854){
     s0+=145.0;
     s1+=3.0;
    } else {
     s0+=16.0;
     s1+=69.0;
    }
   } else {
    if(i9<1.104801893234253){
     s0+=2024.0;
     s1+=31.0;
    } else {
     s0+=1.0;
     s1+=27.0;
    }
   }
  } else {
   if(i51<0.001019209623336792){
    if(i77<0.9987417459487915){
     s0+=39.0;
     s1+=13.0;
    } else {
     s0+=99.0;
     s1+=716.0;
    }
   } else {
    if(i3<0.000573575496673584){
     s0+=202.0;
     s1+=16.0;
    } else {
     s0+=63.0;
     s1+=44.0;
    }
   }
  }
 } else {
  if(i0<0.09583413600921631){
   if(i53<0.04610317945480347){
    if(i74<-0.008468478918075562){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=21.0;
     s1+=688.0;
    }
   } else {
    if(i55<0.011024028062820435){
     s0+=32.0;
     s1+=81.0;
    } else {
     s0+=217.0;
     s1+=9.0;
    }
   }
  } else {
   if(i73<1.0014430284500122){
    if(i2<0.11236119270324707){
     s0+=119.0;
     s1+=174.0;
    } else {
     s0+=68.0;
     s1+=2156.0;
    }
   } else {
    if(i1<0.11708465218544006){
     s0+=4.0;
     s1+=674.0;
    } else {
     s1+=8844.0;
    }
   }
  }
 }
} else {
 if(i2<0.07771864533424377){
  if(i47<0.0003132947604171932){
   if(i19<1.0093145370483398){
    if(i62<1.0183334350585938){
     s0+=46911.0;
     s1+=48.0;
    } else {
     s0+=3.0;
     s1+=1.0;
    }
   } else {
    if(i5<1.0008399486541748){
     s0+=5.0;
    } else {
     s1+=22.0;
    }
   }
  } else {
   if(i13<1.0398929119110107){
    if(i61<-0.0007421970367431641){
     s0+=3445.0;
     s1+=374.0;
    } else {
     s0+=9022.0;
     s1+=69.0;
    }
   } else {
    if(i15<2.7060508728027344e-05){
     s0+=7201.0;
     s1+=1137.0;
    } else {
     s0+=17.0;
     s1+=82.0;
    }
   }
  }
 } else {
  if(i51<0.058606088161468506){
   if(i18<0.998584508895874){
    if(i64<-3.227485649404116e-06){
     s0+=18.0;
     s1+=5.0;
    } else {
     s0+=225.0;
    }
   } else {
    if(i53<0.05695641040802002){
     s0+=64.0;
     s1+=982.0;
    } else {
     s0+=322.0;
     s1+=352.0;
    }
   }
  } else {
   if(i0<0.1359865367412567){
    if(i30<1.0905632972717285){
     s0+=77.0;
     s1+=34.0;
    } else {
     s0+=448.0;
     s1+=9.0;
    }
   } else {
    if(i39<-0.00013622641563415527){
     s0+=177.0;
    } else {
     s0+=240.0;
     s1+=356.0;
    }
   }
  }
 }
}
if(i0<0.0834135115146637){
 if(i11<0.0006142258644104004){
  if(i25<0.01425079070031643){
   if(i12<1.0056297779083252){
    if(i61<-0.0025883913040161133){
     s0+=1825.0;
     s1+=280.0;
    } else {
     s0+=54359.0;
     s1+=216.0;
    }
   } else {
    if(i0<0.059508681297302246){
     s0+=215.0;
     s1+=38.0;
    } else {
     s0+=90.0;
     s1+=110.0;
    }
   }
  } else {
   if(i3<-0.00033846497535705566){
    if(i10<0.9938366413116455){
     s0+=7841.0;
     s1+=66.0;
    } else {
     s0+=1649.0;
     s1+=261.0;
    }
   } else {
    if(i41<2.8226464564795606e-05){
     s0+=2091.0;
     s1+=371.0;
    } else {
     s0+=569.0;
     s1+=812.0;
    }
   }
  }
 } else {
  if(i8<4.982948303222656e-05){
   if(i7<0.9578651189804077){
    if(i36<1.6640650033950806){
     s0+=8.0;
     s1+=35.0;
    } else {
     s0+=6.0;
    }
   } else {
    if(i31<1.1731500625610352){
     s0+=53.0;
     s1+=71.0;
    } else {
     s0+=509.0;
     s1+=51.0;
    }
   }
  } else {
   if(i48<0.003268688917160034){
    if(i14<5.0902366638183594e-05){
     s0+=82.0;
     s1+=203.0;
    } else {
     s0+=8.0;
     s1+=497.0;
    }
   } else {
    if(i10<1.0080835819244385){
     s0+=35.0;
    } else {
     s1+=1.0;
    }
   }
  }
 }
} else {
 if(i12<1.0065597295761108){
  if(i3<-0.0007510185241699219){
   if(i17<0.005785396788269281){
    if(i69<0.9999115467071533){
     s0+=565.0;
     s1+=5.0;
    } else {
     s0+=114.0;
     s1+=33.0;
    }
   } else {
    if(i9<1.074953317642212){
     s0+=39.0;
     s1+=26.0;
    } else {
     s1+=75.0;
    }
   }
  } else {
   if(i33<0.0005117261316627264){
    if(i45<-6.306176146608777e-06){
     s0+=12.0;
     s1+=112.0;
    } else {
     s0+=305.0;
     s1+=14.0;
    }
   } else {
    if(i37<0.024625098332762718){
     s0+=830.0;
     s1+=1477.0;
    } else {
     s0+=125.0;
     s1+=2899.0;
    }
   }
  }
 } else {
  if(i17<0.0015537329018115997){
   if(i6<-5.0236660172231495e-05){
    s1+=91.0;
   } else {
    s0+=72.0;
   }
  } else {
   if(i30<1.253311276435852){
    if(i13<1.250713586807251){
     s0+=14.0;
     s1+=2867.0;
    } else {
     s0+=13.0;
     s1+=4.0;
    }
   } else {
    s1+=6208.0;
   }
  }
 }
}
if(i2<0.07747900485992432){
 if(i8<4.0471553802490234e-05){
  if(i9<1.0401114225387573){
   if(i63<-0.0013701319694519043){
    if(i12<0.9874305725097656){
     s0+=2984.0;
     s1+=64.0;
    } else {
     s0+=1657.0;
     s1+=584.0;
    }
   } else {
    if(i13<1.042891263961792){
     s0+=55803.0;
     s1+=243.0;
    } else {
     s0+=2277.0;
     s1+=220.0;
    }
   }
  } else {
   if(i17<0.004337280988693237){
    if(i38<0.0011236409191042185){
     s0+=1919.0;
     s1+=389.0;
    } else {
     s0+=3228.0;
     s1+=142.0;
    }
   } else {
    if(i5<0.9983118772506714){
     s0+=589.0;
     s1+=69.0;
    } else {
     s0+=250.0;
     s1+=381.0;
    }
   }
  }
 } else {
  if(i42<1.000341534614563){
   if(i68<0.0003463658504188061){
    s1+=5.0;
   } else {
    s0+=259.0;
   }
  } else {
   if(i35<1.2392117977142334){
    s1+=778.0;
   } else {
    if(i48<-0.0019180774688720703){
     s0+=38.0;
     s1+=307.0;
    } else {
     s0+=233.0;
     s1+=41.0;
    }
   }
  }
 }
} else {
 if(i8<9.715557098388672e-06){
  if(i15<-1.481175422668457e-05){
   if(i31<1.476589322090149){
    if(i31<1.255998969078064){
     s0+=164.0;
     s1+=8.0;
    } else {
     s0+=310.0;
    }
   } else {
    if(i0<0.11845585703849792){
     s0+=16.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i17<0.0016834354028105736){
    if(i65<-0.00447443313896656){
     s0+=377.0;
     s1+=31.0;
    } else {
     s0+=169.0;
     s1+=133.0;
    }
   } else {
    if(i59<1.6621197573840618e-06){
     s0+=238.0;
     s1+=1607.0;
    } else {
     s0+=153.0;
     s1+=78.0;
    }
   }
  }
 } else {
  if(i1<0.11803838610649109){
   if(i60<0.004138082265853882){
    if(i55<0.01527625322341919){
     s0+=32.0;
     s1+=1207.0;
    } else {
     s0+=115.0;
     s1+=18.0;
    }
   } else {
    if(i53<0.04843762516975403){
     s0+=1.0;
     s1+=3.0;
    } else {
     s0+=194.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.0004883252549916506){
    s0+=8.0;
   } else {
    if(i31<1.2582359313964844){
     s0+=141.0;
     s1+=2123.0;
    } else {
     s0+=8.0;
     s1+=8649.0;
    }
   }
  }
 }
}
if(i3<0.0005473494529724121){
 if(i13<1.0452277660369873){
  if(i57<0.0008410114678554237){
   if(i21<1.0102901458740234){
    if(i17<0.004141494631767273){
     s0+=53411.0;
     s1+=262.0;
    } else {
     s0+=3742.0;
     s1+=164.0;
    }
   } else {
    if(i36<1.2344772815704346){
     s0+=5.0;
     s1+=27.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i12<0.9874736070632935){
    if(i5<0.9953665733337402){
     s0+=2516.0;
     s1+=8.0;
    } else {
     s0+=1113.0;
     s1+=67.0;
    }
   } else {
    if(i30<1.0503700971603394){
     s0+=646.0;
    } else {
     s0+=719.0;
     s1+=509.0;
    }
   }
  }
 } else {
  if(i8<9.715557098388672e-06){
   if(i25<0.0234629288315773){
    if(i4<0.06287553906440735){
     s0+=4762.0;
     s1+=352.0;
    } else {
     s0+=1011.0;
     s1+=399.0;
    }
   } else {
    if(i39<-0.00014087557792663574){
     s0+=533.0;
     s1+=42.0;
    } else {
     s0+=797.0;
     s1+=1781.0;
    }
   }
  } else {
   if(i6<-3.320633913972415e-05){
    if(i36<1.150278091430664){
     s0+=8.0;
     s1+=591.0;
    } else {
     s0+=438.0;
     s1+=881.0;
    }
   } else {
    if(i25<0.014687089249491692){
     s0+=552.0;
     s1+=76.0;
    } else {
     s0+=266.0;
     s1+=255.0;
    }
   }
  }
 }
} else {
 if(i36<1.0795294046401978){
  s0+=157.0;
 } else {
  if(i5<1.0041090250015259){
   if(i2<0.06265455484390259){
    if(i48<-0.0018944144248962402){
     s0+=34.0;
     s1+=136.0;
    } else {
     s0+=204.0;
     s1+=106.0;
    }
   } else {
    if(i25<0.01705741509795189){
     s0+=90.0;
     s1+=269.0;
    } else {
     s0+=57.0;
     s1+=1430.0;
    }
   }
  } else {
   if(i33<0.010722344741225243){
    if(i35<1.613681674003601){
     s0+=5.0;
     s1+=7713.0;
    } else {
     s0+=10.0;
     s1+=548.0;
    }
   } else {
    if(i12<0.9805508852005005){
     s0+=7.0;
    } else {
     s0+=28.0;
     s1+=1516.0;
    }
   }
  }
 }
}
if(i22<0.00011557340621948242){
 if(i1<0.08223840594291687){
  if(i46<0.0016964285168796778){
   if(i67<0.01077374629676342){
    if(i11<0.0007593333721160889){
     s0+=46339.0;
     s1+=160.0;
    } else {
     s0+=3.0;
     s1+=16.0;
    }
   } else {
    if(i13<1.0410068035125732){
     s0+=12907.0;
     s1+=256.0;
    } else {
     s0+=3642.0;
     s1+=664.0;
    }
   }
  } else {
   if(i3<0.000383913516998291){
    if(i44<0.0019788038916885853){
     s0+=1720.0;
     s1+=668.0;
    } else {
     s0+=3964.0;
     s1+=233.0;
    }
   } else {
    if(i63<0.000647425651550293){
     s0+=78.0;
     s1+=361.0;
    } else {
     s0+=34.0;
     s1+=10.0;
    }
   }
  }
 } else {
  if(i15<-1.609325408935547e-05){
   if(i31<1.498544454574585){
    if(i38<0.005596180912107229){
     s0+=405.0;
    } else {
     s0+=4.0;
     s1+=3.0;
    }
   } else {
    if(i20<1.0700592994689941){
     s0+=13.0;
    } else {
     s1+=13.0;
    }
   }
  } else {
   if(i25<0.02887403592467308){
    if(i28<0.000822756381239742){
     s0+=216.0;
     s1+=711.0;
    } else {
     s0+=834.0;
     s1+=608.0;
    }
   } else {
    if(i30<1.2833635807037354){
     s0+=207.0;
     s1+=2149.0;
    } else {
     s0+=4.0;
     s1+=1246.0;
    }
   }
  }
 }
} else {
 if(i17<0.003147859824821353){
  if(i16<1.008030891418457){
   if(i38<0.005306731443852186){
    if(i3<0.001153409481048584){
     s0+=543.0;
     s1+=15.0;
    } else {
     s1+=7.0;
    }
   } else {
    s1+=28.0;
   }
  } else {
   if(i20<1.0873539447784424){
    if(i21<1.0085140466690063){
     s0+=10.0;
     s1+=4.0;
    } else {
     s0+=4.0;
     s1+=494.0;
    }
   } else {
    if(i41<-3.102129994658753e-05){
     s1+=177.0;
    } else {
     s0+=187.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i44<0.0003399283450562507){
   s0+=33.0;
  } else {
   if(i18<0.9987049102783203){
    s0+=52.0;
   } else {
    s1+=9217.0;
   }
  }
 }
}
if(i19<1.0082118511199951){
 if(i18<1.0016229152679443){
  if(i57<0.0008410114678554237){
   if(i0<0.08408471941947937){
    if(i54<0.03367092087864876){
     s0+=57329.0;
     s1+=295.0;
    } else {
     s0+=2757.0;
     s1+=391.0;
    }
   } else {
    if(i3<-0.0007595419883728027){
     s0+=303.0;
     s1+=10.0;
    } else {
     s0+=263.0;
     s1+=581.0;
    }
   }
  } else {
   if(i29<0.9629999399185181){
    if(i76<3.518391622492345e-08){
     s0+=26.0;
     s1+=46.0;
    } else {
     s0+=2854.0;
     s1+=98.0;
    }
   } else {
    if(i1<0.06949883699417114){
     s0+=3607.0;
     s1+=798.0;
    } else {
     s0+=491.0;
     s1+=1194.0;
    }
   }
  }
 } else {
  if(i22<-0.0003682076930999756){
   if(i9<1.0945463180541992){
    if(i17<0.01571686565876007){
     s0+=540.0;
     s1+=7.0;
    } else {
     s0+=6.0;
     s1+=52.0;
    }
   } else {
    s1+=144.0;
   }
  } else {
   if(i25<0.01725146174430847){
    if(i46<0.0012476309202611446){
     s0+=239.0;
     s1+=86.0;
    } else {
     s0+=40.0;
     s1+=306.0;
    }
   } else {
    if(i37<0.022500595077872276){
     s0+=101.0;
     s1+=537.0;
    } else {
     s0+=13.0;
     s1+=1454.0;
    }
   }
  }
 }
} else {
 if(i17<0.0029860816430300474){
  if(i30<1.0862454175949097){
   if(i14<0.0001710653305053711){
    if(i35<1.089235782623291){
     s0+=153.0;
    } else {
     s0+=37.0;
     s1+=31.0;
    }
   } else {
    if(i31<1.0558756589889526){
     s0+=8.0;
    } else {
     s0+=1.0;
     s1+=536.0;
    }
   }
  } else {
   if(i25<0.05307001620531082){
    if(i41<-3.0127686841296963e-05){
     s1+=121.0;
    } else {
     s0+=1859.0;
     s1+=129.0;
    }
   } else {
    if(i28<0.007510253228247166){
     s1+=79.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i10<0.9930257797241211){
   if(i39<-0.00011795759201049805){
    s0+=149.0;
   } else {
    if(i1<0.12912249565124512){
     s0+=59.0;
     s1+=3.0;
    } else {
     s1+=205.0;
    }
   }
  } else {
   if(i64<8.706064136276837e-07){
    if(i0<0.08746778964996338){
     s0+=138.0;
     s1+=456.0;
    } else {
     s0+=97.0;
     s1+=9514.0;
    }
   } else {
    s0+=93.0;
   }
  }
 }
}
if(i9<1.0452277660369873){
 if(i10<1.0044559240341187){
  if(i25<0.014117121696472168){
   if(i34<0.00034064450301229954){
    if(i19<1.0101227760314941){
     s0+=49668.0;
     s1+=157.0;
    } else {
     s0+=27.0;
     s1+=15.0;
    }
   } else {
    if(i27<0.9840295314788818){
     s0+=1212.0;
     s1+=310.0;
    } else {
     s0+=2817.0;
     s1+=137.0;
    }
   }
  } else {
   if(i41<9.216628677677363e-05){
    if(i20<1.0428826808929443){
     s0+=2638.0;
     s1+=85.0;
    } else {
     s0+=1318.0;
     s1+=1262.0;
    }
   } else {
    if(i46<0.003240510355681181){
     s0+=6201.0;
     s1+=59.0;
    } else {
     s0+=823.0;
     s1+=162.0;
    }
   }
  }
 } else {
  if(i11<0.0003987550735473633){
   if(i0<0.08087891340255737){
    if(i30<1.0750471353530884){
     s1+=10.0;
    } else {
     s0+=376.0;
     s1+=3.0;
    }
   } else {
    if(i6<-4.121934398426674e-05){
     s1+=42.0;
    } else {
     s0+=2.0;
    }
   }
  } else {
   if(i47<0.00019311215146444738){
    s0+=22.0;
   } else {
    if(i0<0.043704450130462646){
     s0+=4.0;
     s1+=49.0;
    } else {
     s1+=482.0;
    }
   }
  }
 }
} else {
 if(i1<0.09500676393508911){
  if(i18<1.001647710800171){
   if(i5<0.9982870817184448){
    if(i18<0.9985166788101196){
     s0+=1020.0;
     s1+=1.0;
    } else {
     s0+=881.0;
     s1+=117.0;
    }
   } else {
    if(i6<-4.170723696006462e-05){
     s0+=156.0;
     s1+=381.0;
    } else {
     s0+=2245.0;
     s1+=539.0;
    }
   }
  } else {
   if(i14<-0.0005195736885070801){
    if(i16<0.9821227788925171){
     s0+=35.0;
     s1+=152.0;
    } else {
     s0+=443.0;
     s1+=43.0;
    }
   } else {
    if(i14<7.265806198120117e-05){
     s0+=39.0;
     s1+=79.0;
    } else {
     s0+=9.0;
     s1+=611.0;
    }
   }
  }
 } else {
  if(i17<0.004695648327469826){
   if(i9<1.0852011442184448){
    if(i33<0.0004956339253112674){
     s0+=70.0;
     s1+=14.0;
    } else {
     s0+=68.0;
     s1+=1005.0;
    }
   } else {
    if(i14<0.0006486773490905762){
     s0+=724.0;
     s1+=235.0;
    } else {
     s0+=36.0;
     s1+=321.0;
    }
   }
  } else {
   if(i14<-0.0006116926670074463){
    if(i11<-0.0005175471305847168){
     s0+=60.0;
    } else {
     s0+=75.0;
     s1+=1330.0;
    }
   } else {
    if(i18<0.9980067610740662){
     s0+=12.0;
    } else {
     s0+=19.0;
     s1+=9651.0;
    }
   }
  }
 }
}
if(i47<0.00044936814811080694){
 if(i8<3.8951635360717773e-05){
  if(i16<1.0095566511154175){
   if(i9<1.057483196258545){
    if(i29<1.0083434581756592){
     s0+=50371.0;
     s1+=243.0;
    } else {
     s0+=17.0;
     s1+=44.0;
    }
   } else {
    if(i21<1.004809856414795){
     s0+=69.0;
    } else {
     s0+=12.0;
     s1+=49.0;
    }
   }
  } else {
   if(i6<-2.7252845029579476e-05){
    if(i46<0.0021703247912228107){
     s1+=197.0;
    } else {
     s0+=1.0;
    }
   } else {
    if(i4<0.05495676398277283){
     s0+=34.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   }
  }
 } else {
  if(i18<1.000678539276123){
   s0+=254.0;
  } else {
   if(i38<0.0020542042329907417){
    s1+=324.0;
   } else {
    if(i5<1.0044348239898682){
     s0+=34.0;
    } else {
     s1+=16.0;
    }
   }
  }
 }
} else {
 if(i2<0.08032220602035522){
  if(i8<3.49879264831543e-05){
   if(i31<1.103413462638855){
    if(i31<1.0670123100280762){
     s0+=2056.0;
    } else {
     s0+=1368.0;
     s1+=1367.0;
    }
   } else {
    if(i51<-0.040891289710998535){
     s0+=1009.0;
     s1+=199.0;
    } else {
     s0+=14020.0;
     s1+=262.0;
    }
   }
  } else {
   if(i48<0.0022560954093933105){
    if(i17<0.0025420524179935455){
     s0+=85.0;
     s1+=36.0;
    } else {
     s0+=92.0;
     s1+=920.0;
    }
   } else {
    if(i41<7.12655673851259e-05){
     s0+=27.0;
     s1+=19.0;
    } else {
     s0+=64.0;
     s1+=2.0;
    }
   }
  }
 } else {
  if(i6<-1.5366749721579254e-05){
   if(i7<1.0235681533813477){
    if(i53<0.061264872550964355){
     s0+=57.0;
     s1+=3588.0;
    } else {
     s0+=542.0;
     s1+=2201.0;
    }
   } else {
    if(i14<0.0013491511344909668){
     s0+=3.0;
     s1+=905.0;
    } else {
     s1+=6346.0;
    }
   }
  } else {
   if(i42<0.9992939233779907){
    s0+=339.0;
   } else {
    if(i71<0.00024148772354237735){
     s0+=431.0;
     s1+=82.0;
    } else {
     s0+=223.0;
     s1+=328.0;
    }
   }
  }
 }
}
if(i1<0.08314955234527588){
 if(i3<0.0006022751331329346){
  if(i9<1.0375813245773315){
   if(i28<0.00029179174453020096){
    if(i6<-4.372896364657208e-05){
     s0+=346.0;
     s1+=65.0;
    } else {
     s0+=52622.0;
     s1+=341.0;
    }
   } else {
    if(i31<1.1823735237121582){
     s0+=2675.0;
     s1+=623.0;
    } else {
     s0+=5369.0;
     s1+=79.0;
    }
   }
  } else {
   if(i23<1.0005062818527222){
    if(i31<1.1034480333328247){
     s0+=2388.0;
     s1+=489.0;
    } else {
     s0+=4342.0;
     s1+=182.0;
    }
   } else {
    if(i63<0.002608776092529297){
     s0+=712.0;
     s1+=448.0;
    } else {
     s0+=456.0;
     s1+=18.0;
    }
   }
  }
 } else {
  if(i75<0.00013597944052889943){
   if(i3<0.0009762048721313477){
    if(i30<1.133939266204834){
     s0+=1.0;
     s1+=201.0;
    } else {
     s0+=114.0;
     s1+=56.0;
    }
   } else {
    if(i10<1.0008375644683838){
     s0+=14.0;
     s1+=39.0;
    } else {
     s0+=1.0;
     s1+=570.0;
    }
   }
  } else {
   if(i17<0.006320470478385687){
    if(i65<0.001090015284717083){
     s0+=169.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i39<0.00017815828323364258){
     s0+=32.0;
     s1+=24.0;
    } else {
     s0+=6.0;
     s1+=78.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018532276153564){
  if(i32<0.06343171000480652){
   if(i69<0.9956893920898438){
    s0+=75.0;
   } else {
    if(i52<0.04439195990562439){
     s0+=18.0;
     s1+=1377.0;
    } else {
     s0+=13.0;
     s1+=11.0;
    }
   }
  } else {
   if(i2<0.11620649695396423){
    if(i65<-0.0044517964124679565){
     s0+=588.0;
     s1+=47.0;
    } else {
     s0+=257.0;
     s1+=292.0;
    }
   } else {
    if(i38<0.005946281366050243){
     s0+=544.0;
     s1+=604.0;
    } else {
     s0+=32.0;
     s1+=1019.0;
    }
   }
  }
 } else {
  if(i2<0.1274447739124298){
   if(i32<0.06474748253822327){
    s1+=984.0;
   } else {
    if(i55<0.02436879277229309){
     s0+=43.0;
     s1+=379.0;
    } else {
     s0+=68.0;
     s1+=6.0;
    }
   }
  } else {
   if(i69<1.000854253768921){
    if(i6<-4.1777431761147454e-05){
     s0+=4.0;
     s1+=8570.0;
    } else {
     s0+=4.0;
     s1+=59.0;
    }
   } else {
    if(i68<0.000501573143992573){
     s0+=17.0;
     s1+=1.0;
    } else {
     s0+=3.0;
     s1+=771.0;
    }
   }
  }
 }
}
if(i2<0.07645988464355469){
 if(i9<1.0406901836395264){
  if(i14<0.0015940070152282715){
   if(i20<1.0451585054397583){
    if(i3<0.0007575750350952148){
     s0+=53081.0;
     s1+=218.0;
    } else {
     s0+=4.0;
     s1+=13.0;
    }
   } else {
    if(i43<0.0009174180449917912){
     s0+=3447.0;
     s1+=836.0;
    } else {
     s0+=6740.0;
     s1+=302.0;
    }
   }
  } else {
   s1+=71.0;
  }
 } else {
  if(i1<0.06546473503112793){
   if(i56<0.0016501025529578328){
    if(i6<-4.114865805604495e-05){
     s0+=148.0;
     s1+=126.0;
    } else {
     s0+=3782.0;
     s1+=260.0;
    }
   } else {
    if(i44<0.0009925991762429476){
     s0+=55.0;
     s1+=216.0;
    } else {
     s0+=1221.0;
     s1+=316.0;
    }
   }
  } else {
   if(i48<0.0017142295837402344){
    if(i3<-0.000688403844833374){
     s0+=63.0;
     s1+=3.0;
    } else {
     s0+=126.0;
     s1+=674.0;
    }
   } else {
    if(i31<1.1037919521331787){
     s0+=110.0;
     s1+=100.0;
    } else {
     s0+=463.0;
     s1+=14.0;
    }
   }
  }
 }
} else {
 if(i10<1.0010182857513428){
  if(i25<0.022610142827033997){
   if(i33<0.0004603240522556007){
    if(i69<1.0005202293395996){
     s0+=306.0;
     s1+=1.0;
    } else {
     s0+=5.0;
     s1+=1.0;
    }
   } else {
    if(i30<1.1748476028442383){
     s0+=289.0;
     s1+=475.0;
    } else {
     s0+=499.0;
     s1+=154.0;
    }
   }
  } else {
   if(i42<0.9989641904830933){
    if(i67<0.2706577181816101){
     s0+=238.0;
     s1+=3.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i70<-0.019692305475473404){
     s0+=316.0;
     s1+=1150.0;
    } else {
     s0+=80.0;
     s1+=1785.0;
    }
   }
  }
 } else {
  if(i45<-9.970453902496956e-06){
   if(i2<0.12704554200172424){
    if(i17<0.0023768760729581118){
     s0+=57.0;
     s1+=100.0;
    } else {
     s0+=35.0;
     s1+=1118.0;
    }
   } else {
    if(i6<-4.7605579311493784e-05){
     s0+=7.0;
     s1+=8567.0;
    } else {
     s0+=8.0;
     s1+=42.0;
    }
   }
  } else {
   if(i42<1.0000317096710205){
    if(i17<0.00038837705506011844){
     s0+=7.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=454.0;
    }
   } else {
    if(i75<7.554501644335687e-05){
     s0+=53.0;
     s1+=2.0;
    } else {
     s0+=33.0;
     s1+=70.0;
    }
   }
  }
 }
}
if(i2<0.08032220602035522){
 if(i11<0.0006350874900817871){
  if(i4<0.05673712491989136){
   if(i13<1.0451608896255493){
    if(i27<0.9775980710983276){
     s0+=3602.0;
     s1+=224.0;
    } else {
     s0+=55244.0;
     s1+=443.0;
    }
   } else {
    if(i30<1.1034480333328247){
     s0+=2058.0;
     s1+=784.0;
    } else {
     s0+=3846.0;
     s1+=203.0;
    }
   }
  } else {
   if(i44<0.0003153451543767005){
    if(i51<-0.0013433098793029785){
     s0+=23.0;
     s1+=5.0;
    } else {
     s0+=1442.0;
    }
   } else {
    if(i36<1.1034480333328247){
     s0+=477.0;
     s1+=551.0;
    } else {
     s0+=2175.0;
     s1+=164.0;
    }
   }
  }
 } else {
  if(i5<1.002433180809021){
   if(i55<-0.0031600892543792725){
    if(i1<0.02420639991760254){
     s0+=85.0;
     s1+=20.0;
    } else {
     s0+=9.0;
     s1+=70.0;
    }
   } else {
    if(i28<0.011765128932893276){
     s0+=460.0;
     s1+=16.0;
    } else {
     s1+=2.0;
    }
   }
  } else {
   if(i10<1.0016679763793945){
    if(i46<0.004105431027710438){
     s0+=65.0;
     s1+=42.0;
    } else {
     s0+=9.0;
     s1+=70.0;
    }
   } else {
    if(i61<0.0074492692947387695){
     s0+=10.0;
     s1+=814.0;
    } else {
     s0+=7.0;
    }
   }
  }
 }
} else {
 if(i5<1.001464605331421){
  if(i5<0.9965496063232422){
   if(i31<1.4303699731826782){
    if(i18<0.9985275268554688){
     s0+=412.0;
    } else {
     s0+=51.0;
     s1+=32.0;
    }
   } else {
    if(i0<0.10002264380455017){
     s0+=24.0;
     s1+=6.0;
    } else {
     s1+=100.0;
    }
   }
  } else {
   if(i48<0.004231661558151245){
    if(i17<0.001099950633943081){
     s0+=118.0;
     s1+=51.0;
    } else {
     s0+=131.0;
     s1+=1749.0;
    }
   } else {
    if(i67<0.12232594192028046){
     s0+=702.0;
     s1+=497.0;
    } else {
     s0+=21.0;
     s1+=349.0;
    }
   }
  }
 } else {
  if(i25<0.011034892871975899){
   if(i14<0.0004934072494506836){
    if(i65<-0.0033998643048107624){
     s0+=84.0;
     s1+=17.0;
    } else {
     s0+=1.0;
     s1+=33.0;
    }
   } else {
    if(i17<0.00026295380666852){
     s0+=1.0;
     s1+=1.0;
    } else {
     s0+=4.0;
     s1+=711.0;
    }
   }
  } else {
   if(i1<0.11568915843963623){
    if(i53<0.0635257363319397){
     s0+=14.0;
     s1+=625.0;
    } else {
     s0+=69.0;
     s1+=42.0;
    }
   } else {
    if(i1<0.1542743444442749){
     s0+=29.0;
     s1+=966.0;
    } else {
     s0+=4.0;
     s1+=8488.0;
    }
   }
  }
 }
}
if(i0<0.08355346322059631){
 if(i3<0.0006022751331329346){
  if(i51<-0.028364956378936768){
   if(i17<0.004408117383718491){
    if(i18<0.9988255500793457){
     s0+=736.0;
     s1+=18.0;
    } else {
     s0+=1207.0;
     s1+=362.0;
    }
   } else {
    if(i4<0.008329212665557861){
     s0+=322.0;
     s1+=43.0;
    } else {
     s0+=72.0;
     s1+=211.0;
    }
   }
  } else {
   if(i34<0.00028400751762092113){
    if(i13<1.0469666719436646){
     s0+=51357.0;
     s1+=193.0;
    } else {
     s0+=949.0;
     s1+=100.0;
    }
   } else {
    if(i33<0.0014454065822064877){
     s0+=5184.0;
     s1+=1009.0;
    } else {
     s0+=8948.0;
     s1+=129.0;
    }
   }
  }
 } else {
  if(i34<0.000212929182453081){
   if(i75<7.533047755714506e-05){
    s1+=11.0;
   } else {
    s0+=106.0;
   }
  } else {
   if(i17<0.0019372145179659128){
    if(i41<-3.095425199717283e-05){
     s1+=3.0;
    } else {
     s0+=51.0;
     s1+=2.0;
    }
   } else {
    if(i55<0.0077323317527771){
     s0+=102.0;
     s1+=908.0;
    } else {
     s0+=50.0;
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i2<0.11742201447486877){
  if(i65<-0.00442292308434844){
   if(i5<1.0021004676818848){
    if(i59<-0.0005020397366024554){
     s0+=101.0;
     s1+=75.0;
    } else {
     s0+=702.0;
     s1+=41.0;
    }
   } else {
    if(i51<0.053923726081848145){
     s0+=13.0;
     s1+=103.0;
    } else {
     s0+=57.0;
     s1+=2.0;
    }
   }
  } else {
   if(i18<0.998519778251648){
    if(i11<-0.0005376040935516357){
     s0+=236.0;
     s1+=1.0;
    } else {
     s0+=38.0;
     s1+=8.0;
    }
   } else {
    if(i33<0.00027136344579048455){
     s0+=58.0;
    } else {
     s0+=181.0;
     s1+=2293.0;
    }
   }
  }
 } else {
  if(i64<1.1406721114326501e-06){
   if(i8<9.238719940185547e-06){
    if(i11<-0.0004773437976837158){
     s0+=83.0;
    } else {
     s0+=248.0;
     s1+=1123.0;
    }
   } else {
    if(i42<0.9962661266326904){
     s0+=9.0;
    } else {
     s0+=145.0;
     s1+=10447.0;
    }
   }
  } else {
   if(i71<0.0013096511829644442){
    if(i69<0.9998980164527893){
     s0+=203.0;
    } else {
     s0+=2.0;
     s1+=1.0;
    }
   } else {
    s1+=1.0;
   }
  }
 }
}
if(i22<0.00011461973190307617){
 if(i8<3.7729740142822266e-05){
  if(i0<0.08580175042152405){
   if(i20<1.0486011505126953){
    if(i16<0.9892174005508423){
     s0+=11721.0;
     s1+=208.0;
    } else {
     s0+=43616.0;
     s1+=119.0;
    }
   } else {
    if(i36<1.1037919521331787){
     s0+=2593.0;
     s1+=1162.0;
    } else {
     s0+=10264.0;
     s1+=520.0;
    }
   }
  } else {
   if(i77<0.9973788857460022){
    if(i43<0.006395773962140083){
     s0+=549.0;
     s1+=34.0;
    } else {
     s0+=6.0;
     s1+=66.0;
    }
   } else {
    if(i41<3.2563882996328175e-05){
     s0+=538.0;
     s1+=526.0;
    } else {
     s0+=634.0;
     s1+=2253.0;
    }
   }
  }
 } else {
  if(i41<-7.288181222975254e-07){
   if(i12<1.0058974027633667){
    if(i5<1.0034496784210205){
     s0+=130.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=16.0;
   }
  } else {
   if(i35<1.5682398080825806){
    if(i6<-7.277034455910325e-05){
     s0+=15.0;
     s1+=1178.0;
    } else {
     s0+=75.0;
     s1+=504.0;
    }
   } else {
    if(i20<1.1595948934555054){
     s0+=147.0;
    } else {
     s0+=39.0;
     s1+=503.0;
    }
   }
  }
 }
} else {
 if(i17<0.002378777600824833){
  if(i14<0.001598656177520752){
   if(i36<1.1386182308197021){
    if(i18<0.9992219805717468){
     s0+=171.0;
    } else {
     s0+=13.0;
     s1+=101.0;
    }
   } else {
    s0+=461.0;
   }
  } else {
   s1+=297.0;
  }
 } else {
  if(i42<0.9993873834609985){
   if(i11<-0.00027492642402648926){
    s0+=155.0;
   } else {
    s1+=35.0;
   }
  } else {
   if(i5<0.9995362162590027){
    s0+=9.0;
   } else {
    if(i69<1.0010695457458496){
     s0+=4.0;
     s1+=9069.0;
    } else {
     s0+=9.0;
     s1+=509.0;
    }
   }
  }
 }
}
if(i3<0.0005512535572052002){
 if(i0<0.08511286973953247){
  if(i20<1.0467959642410278){
   if(i63<-0.0012906789779663086){
    if(i12<0.9895001649856567){
     s0+=932.0;
     s1+=13.0;
    } else {
     s0+=777.0;
     s1+=154.0;
    }
   } else {
    if(i63<-0.0008999407291412354){
     s0+=1348.0;
     s1+=33.0;
    } else {
     s0+=51692.0;
     s1+=70.0;
    }
   }
  } else {
   if(i44<0.0016375385457649827){
    if(i43<0.00029505687416531146){
     s0+=2297.0;
    } else {
     s0+=2928.0;
     s1+=1466.0;
    }
   } else {
    if(i51<-0.02531576156616211){
     s0+=1474.0;
     s1+=271.0;
    } else {
     s0+=7399.0;
     s1+=112.0;
    }
   }
  }
 } else {
  if(i23<0.994774580001831){
   if(i42<0.9992741942405701){
    if(i77<0.9982165098190308){
     s0+=524.0;
    } else {
     s0+=4.0;
     s1+=1.0;
    }
   } else {
    if(i2<0.10255172848701477){
     s0+=34.0;
     s1+=5.0;
    } else {
     s1+=149.0;
    }
   }
  } else {
   if(i52<0.03554892539978027){
    if(i2<0.09588098526000977){
     s0+=288.0;
     s1+=549.0;
    } else {
     s0+=140.0;
     s1+=1981.0;
    }
   } else {
    if(i38<0.005770577117800713){
     s0+=738.0;
     s1+=382.0;
    } else {
     s0+=84.0;
     s1+=331.0;
    }
   }
  }
 }
} else {
 if(i6<-4.401454498292878e-05){
  if(i1<0.06264051795005798){
   if(i41<6.218787893885747e-05){
    s1+=250.0;
   } else {
    if(i55<-0.011739164590835571){
     s0+=35.0;
     s1+=154.0;
    } else {
     s0+=94.0;
     s1+=34.0;
    }
   }
  } else {
   if(i69<1.000795841217041){
    if(i36<1.613681674003601){
     s0+=11.0;
     s1+=8503.0;
    } else {
     s0+=33.0;
     s1+=1304.0;
    }
   } else {
    if(i49<1.000028371810913){
     s0+=50.0;
     s1+=113.0;
    } else {
     s0+=33.0;
     s1+=895.0;
    }
   }
  }
 } else {
  if(i34<0.00030875555239617825){
   if(i14<0.00027555227279663086){
    s1+=7.0;
   } else {
    if(i77<1.0031224489212036){
     s0+=220.0;
    } else {
     s1+=1.0;
    }
   }
  } else {
   if(i56<0.0010673217475414276){
    if(i49<0.9999363422393799){
     s0+=2.0;
     s1+=34.0;
    } else {
     s0+=91.0;
    }
   } else {
    if(i17<0.005029147490859032){
     s0+=5.0;
     s1+=3.0;
    } else {
     s1+=204.0;
    }
   }
  }
 }
}
if(i1<0.08202600479125977){
 if(i51<-0.029056847095489502){
  if(i3<0.000306546688079834){
   if(i30<1.0556960105895996){
    s0+=622.0;
   } else {
    if(i18<0.9983667135238647){
     s0+=526.0;
     s1+=3.0;
    } else {
     s0+=1169.0;
     s1+=492.0;
    }
   }
  } else {
   if(i6<-3.1245708669302985e-05){
    if(i35<1.5682398080825806){
     s0+=12.0;
     s1+=479.0;
    } else {
     s0+=36.0;
     s1+=80.0;
    }
   } else {
    if(i61<-0.0016251802444458008){
     s1+=16.0;
    } else {
     s0+=32.0;
     s1+=6.0;
    }
   }
  }
 } else {
  if(i14<0.0011615753173828125){
   if(i34<0.00028115720488131046){
    if(i21<1.008404016494751){
     s0+=52161.0;
     s1+=214.0;
    } else {
     s0+=175.0;
     s1+=106.0;
    }
   } else {
    if(i67<0.051099106669425964){
     s0+=8287.0;
     s1+=1301.0;
    } else {
     s0+=6471.0;
     s1+=77.0;
    }
   }
  } else {
   if(i30<1.1333069801330566){
    s1+=223.0;
   } else {
    if(i8<6.908178329467773e-05){
     s0+=105.0;
    } else {
     s1+=8.0;
    }
   }
  }
 }
} else {
 if(i39<-0.00024336576461791992){
  if(i18<0.9981062412261963){
   s0+=419.0;
  } else {
   s1+=58.0;
  }
 } else {
  if(i8<3.796815872192383e-05){
   if(i70<-0.017536750063300133){
    if(i2<0.15863004326820374){
     s0+=639.0;
     s1+=165.0;
    } else {
     s0+=173.0;
     s1+=943.0;
    }
   } else {
    if(i53<0.05819219350814819){
     s0+=55.0;
     s1+=1723.0;
    } else {
     s0+=319.0;
     s1+=527.0;
    }
   }
  } else {
   if(i10<1.0007812976837158){
    if(i67<0.08273519575595856){
     s0+=70.0;
     s1+=364.0;
    } else {
     s0+=7.0;
     s1+=716.0;
    }
   } else {
    if(i17<0.0023669356014579535){
     s0+=31.0;
     s1+=148.0;
    } else {
     s0+=35.0;
     s1+=9259.0;
    }
   }
  }
 }
}
if(i8<3.3795833587646484e-05){
 if(i1<0.08244869112968445){
  if(i13<1.0436501502990723){
   if(i46<0.0015746578574180603){
    if(i57<0.0006823299918323755){
     s0+=54149.0;
     s1+=176.0;
    } else {
     s0+=2925.0;
     s1+=157.0;
    }
   } else {
    if(i43<0.0008684476488269866){
     s0+=1071.0;
     s1+=283.0;
    } else {
     s0+=2654.0;
     s1+=50.0;
    }
   }
  } else {
   if(i25<0.017017200589179993){
    if(i12<1.0044853687286377){
     s0+=5327.0;
     s1+=312.0;
    } else {
     s0+=451.0;
     s1+=139.0;
    }
   } else {
    if(i20<1.105541706085205){
     s0+=805.0;
     s1+=690.0;
    } else {
     s0+=1250.0;
     s1+=186.0;
    }
   }
  }
 } else {
  if(i17<0.001659430330619216){
   if(i66<-1.3661442608281504e-06){
    s1+=37.0;
   } else {
    if(i40<0.039215266704559326){
     s0+=29.0;
     s1+=67.0;
    } else {
     s0+=615.0;
     s1+=113.0;
    }
   }
  } else {
   if(i39<-0.0001424849033355713){
    if(i38<0.024905364960432053){
     s0+=342.0;
     s1+=21.0;
    } else {
     s1+=11.0;
    }
   } else {
    if(i33<0.0021435320377349854){
     s0+=113.0;
     s1+=1728.0;
    } else {
     s0+=405.0;
     s1+=1222.0;
    }
   }
  }
 }
} else {
 if(i49<0.9993362426757812){
  s0+=484.0;
 } else {
  if(i5<1.0041333436965942){
   if(i34<0.0001881267235148698){
    if(i41<1.0678752914827783e-05){
     s0+=66.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i25<0.028060417622327805){
     s0+=328.0;
     s1+=727.0;
    } else {
     s0+=71.0;
     s1+=1445.0;
    }
   }
  } else {
   if(i1<0.01522323489189148){
    if(i50<0.01963423192501068){
     s0+=11.0;
     s1+=6.0;
    } else {
     s1+=29.0;
    }
   } else {
    if(i17<0.008896740153431892){
     s0+=33.0;
     s1+=2762.0;
    } else {
     s0+=1.0;
     s1+=6955.0;
    }
   }
  }
 }
}
if(i1<0.08208942413330078){
 if(i11<0.0006163120269775391){
  if(i63<-0.0012758970260620117){
   if(i47<0.0017419818323105574){
    if(i20<1.0417201519012451){
     s0+=1056.0;
     s1+=80.0;
    } else {
     s0+=797.0;
     s1+=611.0;
    }
   } else {
    if(i8<1.1414289474487305e-05){
     s0+=3815.0;
     s1+=163.0;
    } else {
     s0+=65.0;
     s1+=85.0;
    }
   }
  } else {
   if(i13<1.0452277660369873){
    if(i1<0.06633198261260986){
     s0+=55991.0;
     s1+=205.0;
    } else {
     s0+=1729.0;
     s1+=138.0;
    }
   } else {
    if(i6<-2.9989565518917516e-05){
     s0+=770.0;
     s1+=510.0;
    } else {
     s0+=4612.0;
     s1+=318.0;
    }
   }
  }
 } else {
  if(i66<5.539222001971211e-06){
   if(i18<1.0009270906448364){
    s0+=46.0;
   } else {
    if(i51<0.03822058439254761){
     s0+=30.0;
     s1+=624.0;
    } else {
     s0+=21.0;
    }
   }
  } else {
   if(i67<0.14620329439640045){
    if(i59<-0.0003129206015728414){
     s0+=61.0;
     s1+=81.0;
    } else {
     s0+=555.0;
     s1+=80.0;
    }
   } else {
    s1+=53.0;
   }
  }
 }
} else {
 if(i5<1.0016977787017822){
  if(i15<-1.7315149307250977e-05){
   if(i69<1.0011625289916992){
    s0+=399.0;
   } else {
    if(i16<0.9928604364395142){
     s1+=4.0;
    } else {
     s0+=15.0;
    }
   }
  } else {
   if(i24<1.0385900735855103){
    if(i3<-0.0007560849189758301){
     s0+=38.0;
     s1+=40.0;
    } else {
     s0+=28.0;
     s1+=855.0;
    }
   } else {
    if(i6<-1.3532627235690597e-05){
     s0+=455.0;
     s1+=2066.0;
    } else {
     s0+=595.0;
     s1+=168.0;
    }
   }
  }
 } else {
  if(i2<0.1274578869342804){
   if(i35<1.2392117977142334){
    if(i43<0.0002950617636088282){
     s0+=6.0;
    } else {
     s0+=1.0;
     s1+=1128.0;
    }
   } else {
    if(i27<1.025015950202942){
     s0+=23.0;
     s1+=359.0;
    } else {
     s0+=104.0;
     s1+=28.0;
    }
   }
  } else {
   if(i73<1.001138687133789){
    if(i33<0.0018816033843904734){
     s0+=6.0;
     s1+=8.0;
    } else {
     s0+=19.0;
     s1+=1315.0;
    }
   } else {
    if(i33<0.0018827137537300587){
     s0+=1.0;
     s1+=233.0;
    } else {
     s1+=7862.0;
    }
   }
  }
 }
}
if(i2<0.0782996118068695){
 if(i12<1.0060625076293945){
  if(i34<0.0003242552047595382){
   if(i20<1.0451585054397583){
    if(i3<0.0007860660552978516){
     s0+=48368.0;
     s1+=71.0;
    } else {
     s1+=3.0;
    }
   } else {
    if(i74<-0.0006195008754730225){
     s0+=65.0;
     s1+=73.0;
    } else {
     s0+=5579.0;
     s1+=216.0;
    }
   }
  } else {
   if(i35<1.100754976272583){
    if(i33<0.00043394725071266294){
     s0+=2341.0;
     s1+=86.0;
    } else {
     s0+=806.0;
     s1+=1135.0;
    }
   } else {
    if(i66<-1.4718657439516392e-06){
     s0+=40.0;
     s1+=112.0;
    } else {
     s0+=11382.0;
     s1+=728.0;
    }
   }
  }
 } else {
  if(i8<6.222724914550781e-05){
   if(i33<0.0008226528880186379){
    if(i35<1.1517177820205688){
     s1+=274.0;
    } else {
     s0+=19.0;
    }
   } else {
    if(i68<0.0006979242316447198){
     s0+=567.0;
     s1+=11.0;
    } else {
     s1+=9.0;
    }
   }
  } else {
   if(i17<0.0009709659498184919){
    s0+=4.0;
   } else {
    if(i77<0.998985767364502){
     s0+=1.0;
     s1+=2.0;
    } else {
     s1+=596.0;
    }
   }
  }
 }
} else {
 if(i17<0.004695484880357981){
  if(i40<0.04809364676475525){
   if(i33<0.00045622797915712){
    if(i23<1.0001353025436401){
     s0+=74.0;
    } else {
     s1+=6.0;
    }
   } else {
    if(i14<-0.0024204254150390625){
     s0+=16.0;
    } else {
     s0+=98.0;
     s1+=1760.0;
    }
   }
  } else {
   if(i22<0.00010979175567626953){
    if(i42<0.9994226694107056){
     s0+=370.0;
     s1+=11.0;
    } else {
     s0+=948.0;
     s1+=352.0;
    }
   } else {
    if(i21<1.005786418914795){
     s0+=25.0;
     s1+=11.0;
    } else {
     s0+=8.0;
     s1+=225.0;
    }
   }
  }
 } else {
  if(i3<-0.000780940055847168){
   if(i17<0.006587954703718424){
    if(i17<0.006060410290956497){
     s0+=94.0;
     s1+=1.0;
    } else {
     s0+=6.0;
     s1+=1.0;
    }
   } else {
    if(i13<1.0795974731445312){
     s0+=11.0;
     s1+=7.0;
    } else {
     s1+=95.0;
    }
   }
  } else {
   if(i41<0.0001076299959095195){
    if(i25<0.006553268525749445){
     s0+=2.0;
     s1+=251.0;
    } else {
     s0+=4.0;
     s1+=8693.0;
    }
   } else {
    if(i13<1.0819685459136963){
     s0+=117.0;
     s1+=184.0;
    } else {
     s0+=37.0;
     s1+=2357.0;
    }
   }
  }
 }
}
if(i21<1.0082120895385742){
 if(i71<0.0003823068691417575){
  if(i66<-7.37366372050019e-06){
   if(i34<0.00017465808195993304){
    s0+=7.0;
   } else {
    if(i42<0.9980071187019348){
     s0+=1.0;
    } else {
     s1+=205.0;
    }
   }
  } else {
   if(i25<0.02533211186528206){
    if(i12<1.003767728805542){
     s0+=57920.0;
     s1+=652.0;
    } else {
     s0+=653.0;
     s1+=236.0;
    }
   } else {
    if(i18<0.9989880323410034){
     s0+=659.0;
     s1+=27.0;
    } else {
     s0+=423.0;
     s1+=696.0;
    }
   }
  }
 } else {
  if(i3<-0.0002434253692626953){
   if(i3<-0.0008038878440856934){
    if(i59<-0.0007622562116011977){
     s0+=3.0;
     s1+=34.0;
    } else {
     s0+=5140.0;
     s1+=147.0;
    }
   } else {
    if(i59<-6.159876647870988e-05){
     s0+=391.0;
     s1+=432.0;
    } else {
     s0+=2055.0;
     s1+=243.0;
    }
   }
  } else {
   if(i3<0.00023555755615234375){
    if(i35<1.0952131748199463){
     s0+=6.0;
     s1+=426.0;
    } else {
     s0+=876.0;
     s1+=528.0;
    }
   } else {
    if(i0<0.09913063049316406){
     s0+=238.0;
     s1+=523.0;
    } else {
     s0+=54.0;
     s1+=1987.0;
    }
   }
  }
 }
} else {
 if(i17<0.002910975366830826){
  if(i6<-4.2801930248970166e-05){
   if(i1<0.060102105140686035){
    if(i67<0.023562787100672722){
     s0+=13.0;
     s1+=68.0;
    } else {
     s0+=43.0;
    }
   } else {
    if(i14<0.00019282102584838867){
     s0+=11.0;
    } else {
     s0+=4.0;
     s1+=517.0;
    }
   }
  } else {
   if(i30<1.083398699760437){
    if(i73<1.0066795349121094){
     s0+=197.0;
     s1+=83.0;
    } else {
     s0+=10.0;
     s1+=98.0;
    }
   } else {
    if(i11<-0.0003008842468261719){
     s0+=18.0;
     s1+=39.0;
    } else {
     s0+=1924.0;
     s1+=59.0;
    }
   }
  }
 } else {
  if(i69<1.001856803894043){
   if(i23<0.9953980445861816){
    if(i66<6.636300440732157e-06){
     s0+=2.0;
     s1+=79.0;
    } else {
     s0+=221.0;
     s1+=44.0;
    }
   } else {
    if(i1<0.06575295329093933){
     s0+=71.0;
     s1+=176.0;
    } else {
     s0+=62.0;
     s1+=9298.0;
    }
   }
  } else {
   if(i45<-3.465342160779983e-05){
    if(i17<0.008233325555920601){
     s0+=8.0;
     s1+=1.0;
    } else {
     s1+=389.0;
    }
   } else {
    if(i0<0.14659589529037476){
     s0+=161.0;
     s1+=17.0;
    } else {
     s0+=6.0;
     s1+=71.0;
    }
   }
  }
 }
}
if(i0<0.08375310897827148){
 if(i13<1.0452277660369873){
  if(i11<0.0006660521030426025){
   if(i57<0.0007801146130077541){
    if(i2<0.07719555497169495){
     s0+=56613.0;
     s1+=273.0;
    } else {
     s0+=82.0;
     s1+=29.0;
    }
   } else {
    if(i38<0.000988572253845632){
     s0+=1006.0;
     s1+=432.0;
    } else {
     s0+=4161.0;
     s1+=53.0;
    }
   }
  } else {
   if(i39<0.0003705918788909912){
    if(i42<1.0009407997131348){
     s0+=36.0;
     s1+=1.0;
    } else {
     s0+=10.0;
     s1+=104.0;
    }
   } else {
    if(i8<0.00011366605758666992){
     s0+=144.0;
     s1+=2.0;
    } else {
     s1+=3.0;
    }
   }
  }
 } else {
  if(i22<0.0002117753028869629){
   if(i31<1.103413462638855){
    if(i30<1.0596027374267578){
     s0+=941.0;
     s1+=1.0;
    } else {
     s0+=925.0;
     s1+=1064.0;
    }
   } else {
    if(i15<2.9385089874267578e-05){
     s0+=4987.0;
     s1+=395.0;
    } else {
     s0+=274.0;
     s1+=313.0;
    }
   }
  } else {
   if(i32<0.04234197735786438){
    if(i39<0.00013145804405212402){
     s0+=6.0;
     s1+=24.0;
    } else {
     s1+=327.0;
    }
   } else {
    if(i14<0.0017573833465576172){
     s0+=10.0;
    } else {
     s1+=10.0;
    }
   }
  }
 }
} else {
 if(i42<0.9990390539169312){
  if(i35<1.5944836139678955){
   if(i18<0.9981825351715088){
    if(i22<-7.891654968261719e-05){
     s0+=578.0;
    } else {
     s0+=76.0;
     s1+=2.0;
    }
   } else {
    if(i47<0.0026327783707529306){
     s1+=7.0;
    } else {
     s0+=1.0;
    }
   }
  } else {
   if(i56<0.002865862799808383){
    s0+=9.0;
   } else {
    s1+=19.0;
   }
  }
 } else {
  if(i0<0.12463954091072083){
   if(i48<0.0046672523021698){
    if(i17<0.0016343442257493734){
     s0+=179.0;
     s1+=165.0;
    } else {
     s0+=157.0;
     s1+=2266.0;
    }
   } else {
    if(i40<0.03053128719329834){
     s0+=16.0;
     s1+=15.0;
    } else {
     s0+=632.0;
     s1+=15.0;
    }
   }
  } else {
   if(i6<-2.1498748537851498e-05){
    if(i14<-0.000179290771484375){
     s0+=101.0;
     s1+=1739.0;
    } else {
     s0+=29.0;
     s1+=9406.0;
    }
   } else {
    if(i53<0.09551990032196045){
     s0+=14.0;
     s1+=243.0;
    } else {
     s0+=232.0;
     s1+=125.0;
    }
   }
  }
 }
}
if(i5<1.0024182796478271){
 if(i26<1.0083837509155273){
  if(i1<0.08556035161018372){
   if(i48<-0.0014463067054748535){
    if(i2<0.04157024621963501){
     s0+=3812.0;
     s1+=441.0;
    } else {
     s0+=325.0;
     s1+=399.0;
    }
   } else {
    if(i34<0.00030130150844343007){
     s0+=52623.0;
     s1+=173.0;
    } else {
     s0+=10170.0;
     s1+=795.0;
    }
   }
  } else {
   if(i5<0.9959900379180908){
    if(i6<-1.275179602089338e-05){
     s0+=24.0;
     s1+=58.0;
    } else {
     s0+=251.0;
     s1+=3.0;
    }
   } else {
    if(i25<0.01654304563999176){
     s0+=148.0;
     s1+=192.0;
    } else {
     s0+=123.0;
     s1+=1324.0;
    }
   }
  }
 } else {
  if(i6<-2.884565037675202e-05){
   if(i18<1.0010403394699097){
    if(i64<9.750081062520621e-07){
     s0+=143.0;
     s1+=1565.0;
    } else {
     s0+=68.0;
    }
   } else {
    if(i24<1.0885543823242188){
     s0+=402.0;
     s1+=204.0;
    } else {
     s0+=69.0;
     s1+=226.0;
    }
   }
  } else {
   if(i6<-8.62258457345888e-06){
    if(i35<1.255998969078064){
     s0+=428.0;
     s1+=373.0;
    } else {
     s0+=763.0;
     s1+=18.0;
    }
   } else {
    if(i43<0.003963588736951351){
     s0+=1272.0;
     s1+=7.0;
    } else {
     s0+=179.0;
     s1+=31.0;
    }
   }
  }
 }
} else {
 if(i22<0.00023251771926879883){
  if(i2<0.05848896503448486){
   if(i46<0.00198332779109478){
    if(i33<0.0007856058655306697){
     s0+=20.0;
     s1+=110.0;
    } else {
     s0+=196.0;
     s1+=18.0;
    }
   } else {
    if(i51<-0.0019014477729797363){
     s0+=33.0;
     s1+=225.0;
    } else {
     s0+=22.0;
     s1+=6.0;
    }
   }
  } else {
   if(i56<0.001715787104330957){
    if(i75<0.00012907636119052768){
     s0+=23.0;
     s1+=537.0;
    } else {
     s0+=99.0;
     s1+=2.0;
    }
   } else {
    if(i13<1.0629057884216309){
     s0+=30.0;
     s1+=255.0;
    } else {
     s0+=17.0;
     s1+=1973.0;
    }
   }
  }
 } else {
  s1+=8077.0;
 }
}
if(i2<0.08138591051101685){
 if(i50<0.007331756874918938){
  if(i14<0.0014463067054748535){
   if(i29<1.0068390369415283){
    if(i54<0.026191147044301033){
     s0+=55718.0;
     s1+=447.0;
    } else {
     s0+=9001.0;
     s1+=783.0;
    }
   } else {
    if(i30<1.0778491497039795){
     s0+=3.0;
     s1+=244.0;
    } else {
     s0+=1034.0;
     s1+=119.0;
    }
   }
  } else {
   if(i5<1.0031380653381348){
    s0+=15.0;
   } else {
    s1+=287.0;
   }
  }
 } else {
  if(i23<1.0005040168762207){
   if(i18<0.9983083009719849){
    if(i41<0.00021325676061678678){
     s0+=1162.0;
     s1+=2.0;
    } else {
     s0+=34.0;
     s1+=2.0;
    }
   } else {
    if(i25<0.025124644860625267){
     s0+=1825.0;
     s1+=275.0;
    } else {
     s0+=352.0;
     s1+=286.0;
    }
   }
  } else {
   if(i12<0.9806665182113647){
    if(i67<0.17451247572898865){
     s0+=172.0;
     s1+=16.0;
    } else {
     s1+=26.0;
    }
   } else {
    if(i22<0.00014519691467285156){
     s0+=272.0;
     s1+=501.0;
    } else {
     s0+=4.0;
     s1+=363.0;
    }
   }
  }
 }
} else {
 if(i3<0.0001240074634552002){
  if(i11<-0.00041306018829345703){
   if(i38<0.009224174544215202){
    s0+=390.0;
   } else {
    if(i21<0.9875786304473877){
     s1+=2.0;
    } else {
     s0+=7.0;
    }
   }
  } else {
   if(i44<0.008256344124674797){
    if(i40<0.053323835134506226){
     s0+=120.0;
     s1+=841.0;
    } else {
     s0+=662.0;
     s1+=252.0;
    }
   } else {
    if(i12<0.9816305637359619){
     s0+=21.0;
     s1+=84.0;
    } else {
     s0+=3.0;
     s1+=551.0;
    }
   }
  }
 } else {
  if(i22<3.1054019927978516e-05){
   if(i53<0.05812042951583862){
    if(i17<0.0015677603660151362){
     s0+=3.0;
     s1+=30.0;
    } else {
     s0+=2.0;
     s1+=1001.0;
    }
   } else {
    if(i15<4.4286251068115234e-05){
     s0+=335.0;
     s1+=621.0;
    } else {
     s0+=10.0;
     s1+=278.0;
    }
   }
  } else {
   if(i17<0.002798869274556637){
    if(i6<-4.328085924498737e-05){
     s1+=386.0;
    } else {
     s0+=59.0;
     s1+=88.0;
    }
   } else {
    if(i11<0.00030919909477233887){
     s0+=5.0;
     s1+=1011.0;
    } else {
     s0+=1.0;
     s1+=8546.0;
    }
   }
  }
 }
}
if(i0<0.08355417847633362){
 if(i11<0.0005785822868347168){
  if(i2<0.06312990188598633){
   if(i25<0.014118550345301628){
    if(i61<-0.002586066722869873){
     s0+=1735.0;
     s1+=260.0;
    } else {
     s0+=52364.0;
     s1+=251.0;
    }
   } else {
    if(i38<0.001077066408470273){
     s0+=2797.0;
     s1+=790.0;
    } else {
     s0+=8614.0;
     s1+=227.0;
    }
   }
  } else {
   if(i55<-0.0018349885940551758){
    if(i60<0.0009442269802093506){
     s0+=36.0;
     s1+=162.0;
    } else {
     s0+=99.0;
     s1+=48.0;
    }
   } else {
    if(i5<0.9984776973724365){
     s0+=1792.0;
     s1+=73.0;
    } else {
     s0+=850.0;
     s1+=332.0;
    }
   }
  }
 } else {
  if(i60<-5.564093589782715e-05){
   if(i5<1.0018751621246338){
    if(i51<-0.04831448197364807){
     s0+=17.0;
     s1+=60.0;
    } else {
     s0+=214.0;
     s1+=35.0;
    }
   } else {
    if(i69<1.0028058290481567){
     s0+=19.0;
     s1+=710.0;
    } else {
     s0+=30.0;
     s1+=31.0;
    }
   }
  } else {
   if(i1<0.07547670602798462){
    if(i10<1.0002425909042358){
     s0+=441.0;
     s1+=15.0;
    } else {
     s0+=37.0;
     s1+=48.0;
    }
   } else {
    if(i51<0.03492256999015808){
     s0+=5.0;
     s1+=55.0;
    } else {
     s0+=14.0;
     s1+=2.0;
    }
   }
  }
 }
} else {
 if(i10<1.0006725788116455){
  if(i40<0.04479759931564331){
   if(i11<-0.0004748702049255371){
    if(i49<0.9998165369033813){
     s0+=292.0;
     s1+=1.0;
    } else {
     s1+=1.0;
    }
   } else {
    if(i55<0.019633769989013672){
     s0+=44.0;
     s1+=1836.0;
    } else {
     s0+=37.0;
     s1+=252.0;
    }
   }
  } else {
   if(i38<0.006732176057994366){
    if(i28<0.0009923332836478949){
     s0+=250.0;
     s1+=277.0;
    } else {
     s0+=1066.0;
     s1+=275.0;
    }
   } else {
    if(i13<1.0782124996185303){
     s0+=79.0;
     s1+=20.0;
    } else {
     s0+=38.0;
     s1+=734.0;
    }
   }
  }
 } else {
  if(i56<0.001060182461515069){
   if(i14<0.0007479190826416016){
    if(i40<0.04761788249015808){
     s0+=9.0;
     s1+=201.0;
    } else {
     s0+=122.0;
     s1+=72.0;
    }
   } else {
    if(i60<0.009642481803894043){
     s0+=12.0;
     s1+=1043.0;
    } else {
     s0+=15.0;
     s1+=18.0;
    }
   }
  } else {
   if(i8<-5.924701690673828e-05){
    s0+=5.0;
   } else {
    if(i31<1.0630347728729248){
     s0+=2.0;
    } else {
     s0+=50.0;
     s1+=9338.0;
    }
   }
  }
 }
}
if(i9<1.0451873540878296){
 if(i3<0.0006021559238433838){
  if(i38<0.00034874799894168973){
   if(i1<0.08887791633605957){
    if(i30<1.0596027374267578){
     s0+=35561.0;
    } else {
     s0+=1702.0;
     s1+=41.0;
    }
   } else {
    if(i7<0.9988606572151184){
     s0+=3.0;
    } else {
     s1+=4.0;
    }
   }
  } else {
   if(i1<0.07842501997947693){
    if(i57<0.0006820107810199261){
     s0+=21227.0;
     s1+=386.0;
    } else {
     s0+=6172.0;
     s1+=853.0;
    }
   } else {
    if(i3<-0.0007605552673339844){
     s0+=220.0;
     s1+=36.0;
    } else {
     s0+=99.0;
     s1+=671.0;
    }
   }
  }
 } else {
  if(i34<0.0001994142949115485){
   if(i1<0.05896279215812683){
    s0+=88.0;
   } else {
    s1+=8.0;
   }
  } else {
   if(i44<0.00032803992507979274){
    s0+=16.0;
   } else {
    if(i28<0.00012083102046744898){
     s0+=8.0;
     s1+=1.0;
    } else {
     s0+=30.0;
     s1+=750.0;
    }
   }
  }
 }
} else {
 if(i5<1.0018281936645508){
  if(i2<0.09774574637413025){
   if(i3<0.0001437664031982422){
    if(i6<-1.4424444088945165e-05){
     s0+=1143.0;
     s1+=520.0;
    } else {
     s0+=2866.0;
     s1+=156.0;
    }
   } else {
    if(i65<-0.004243690520524979){
     s0+=277.0;
     s1+=20.0;
    } else {
     s0+=287.0;
     s1+=339.0;
    }
   }
  } else {
   if(i55<0.01699662208557129){
    if(i17<0.0014119923580437899){
     s0+=88.0;
     s1+=43.0;
    } else {
     s0+=146.0;
     s1+=1407.0;
    }
   } else {
    if(i67<0.10582433640956879){
     s0+=575.0;
     s1+=409.0;
    } else {
     s0+=71.0;
     s1+=459.0;
    }
   }
  }
 } else {
  if(i12<1.0100719928741455){
   if(i23<1.003517985343933){
    if(i20<1.2239214181900024){
     s0+=278.0;
     s1+=507.0;
    } else {
     s1+=222.0;
    }
   } else {
    if(i13<1.112910509109497){
     s0+=126.0;
     s1+=667.0;
    } else {
     s0+=10.0;
     s1+=1410.0;
    }
   }
  } else {
   if(i14<0.001353919506072998){
    if(i17<0.002601373940706253){
     s0+=20.0;
     s1+=1.0;
    } else {
     s1+=404.0;
    }
   } else {
    if(i28<0.00015681650256738067){
     s0+=2.0;
     s1+=3.0;
    } else {
     s0+=1.0;
     s1+=7919.0;
    }
   }
  }
 }
}
if(i6<-7.880300836404786e-05){
 if(i2<0.04931086301803589){
  if(i51<-0.024030715227127075){
   if(i3<0.00030744075775146484){
    if(i54<0.12993788719177246){
     s0+=21.0;
     s1+=16.0;
    } else {
     s0+=67.0;
     s1+=1.0;
    }
   } else {
    if(i71<-0.0001297984563279897){
     s0+=5.0;
    } else {
     s0+=14.0;
     s1+=173.0;
    }
   }
  } else {
   if(i3<0.0007620453834533691){
    if(i32<0.029737919569015503){
     s0+=375.0;
    } else {
     s0+=87.0;
     s1+=1.0;
    }
   } else {
    if(i74<-0.001448124647140503){
     s0+=28.0;
    } else {
     s0+=1.0;
     s1+=19.0;
    }
   }
  }
 } else {
  if(i36<1.0762357711791992){
   s0+=68.0;
  } else {
   if(i66<3.446581831667572e-05){
    if(i0<0.14340317249298096){
     s0+=77.0;
     s1+=1634.0;
    } else {
     s0+=6.0;
     s1+=9014.0;
    }
   } else {
    if(i14<-0.002648681402206421){
     s0+=76.0;
     s1+=67.0;
    } else {
     s0+=2.0;
     s1+=158.0;
    }
   }
  }
 }
} else {
 if(i32<0.059478700160980225){
  if(i18<1.001636028289795){
   if(i7<1.00750732421875){
    if(i57<0.0007275807438418269){
     s0+=59190.0;
     s1+=1020.0;
    } else {
     s0+=6955.0;
     s1+=1192.0;
    }
   } else {
    if(i35<1.2392117977142334){
     s0+=270.0;
     s1+=730.0;
    } else {
     s0+=666.0;
     s1+=85.0;
    }
   }
  } else {
   if(i38<0.0015830814372748137){
    if(i30<1.065237283706665){
     s0+=74.0;
    } else {
     s1+=531.0;
    }
   } else {
    if(i3<0.0009902715682983398){
     s0+=596.0;
     s1+=153.0;
    } else {
     s0+=4.0;
     s1+=98.0;
    }
   }
  }
 } else {
  if(i6<-1.5545880160061643e-05){
   if(i1<0.09917938709259033){
    if(i36<1.1199069023132324){
     s0+=25.0;
     s1+=92.0;
    } else {
     s0+=550.0;
     s1+=101.0;
    }
   } else {
    if(i70<-0.031382475048303604){
     s0+=174.0;
     s1+=340.0;
    } else {
     s0+=94.0;
     s1+=1312.0;
    }
   }
  } else {
   if(i11<0.0006628036499023438){
    if(i0<0.09943628311157227){
     s0+=1120.0;
     s1+=42.0;
    } else {
     s0+=673.0;
     s1+=212.0;
    }
   } else {
    if(i68<0.0012694719480350614){
     s1+=42.0;
    } else {
     s0+=1.0;
    }
   }
  }
 }
}
if(i22<0.00011557340621948242){
 if(i3<0.0005705654621124268){
  if(i13<1.0452277660369873){
   if(i30<1.0557184219360352){
    if(i58<0.09921935200691223){
     s0+=41610.0;
    } else {
     s0+=490.0;
     s1+=1.0;
    }
   } else {
    if(i4<0.07104066014289856){
     s0+=19352.0;
     s1+=884.0;
    } else {
     s0+=231.0;
     s1+=214.0;
    }
   }
  } else {
   if(i0<0.08523550629615784){
    if(i38<0.001123190624639392){
     s0+=2095.0;
     s1+=770.0;
    } else {
     s0+=4922.0;
     s1+=410.0;
    }
   } else {
    if(i55<0.016086727380752563){
     s0+=449.0;
     s1+=1726.0;
    } else {
     s0+=899.0;
     s1+=916.0;
    }
   }
  }
 } else {
  if(i47<0.00027386058354750276){
   s0+=120.0;
  } else {
   if(i1<0.13177666068077087){
    if(i40<0.04507032036781311){
     s0+=131.0;
     s1+=719.0;
    } else {
     s0+=102.0;
     s1+=34.0;
    }
   } else {
    if(i54<0.017031444236636162){
     s0+=7.0;
     s1+=35.0;
    } else {
     s0+=15.0;
     s1+=1375.0;
    }
   }
  }
 }
} else {
 if(i34<0.00028342369478195906){
  if(i5<1.0028247833251953){
   if(i0<0.06697142124176025){
    if(i19<1.008049726486206){
     s0+=440.0;
    } else {
     s0+=31.0;
     s1+=11.0;
    }
   } else {
    if(i19<1.005523681640625){
     s0+=13.0;
    } else {
     s0+=1.0;
     s1+=15.0;
    }
   }
  } else {
   if(i34<0.000179713882971555){
    if(i41<4.998165877623251e-06){
     s0+=53.0;
    } else {
     s1+=8.0;
    }
   } else {
    if(i45<-1.5244500900735147e-05){
     s1+=145.0;
    } else {
     s0+=6.0;
    }
   }
  }
 } else {
  if(i1<0.06447136402130127){
   if(i56<0.001604209654033184){
    if(i14<0.001516580581665039){
     s0+=196.0;
     s1+=11.0;
    } else {
     s1+=32.0;
    }
   } else {
    if(i17<0.003043383825570345){
     s0+=2.0;
    } else {
     s1+=198.0;
    }
   }
  } else {
   if(i31<1.0656896829605103){
    s0+=30.0;
   } else {
    if(i17<0.0025380640290677547){
     s0+=70.0;
     s1+=374.0;
    } else {
     s0+=6.0;
     s1+=9103.0;
    }
   }
  }
 }
}
if(i1<0.08504641056060791){
 if(i5<1.0024782419204712){
  if(i34<0.00028052114066667855){
   if(i6<-4.0415237890556455e-05){
    if(i49<1.0001606941223145){
     s0+=418.0;
     s1+=14.0;
    } else {
     s0+=7.0;
     s1+=75.0;
    }
   } else {
    if(i21<1.0097291469573975){
     s0+=52024.0;
     s1+=133.0;
    } else {
     s0+=57.0;
     s1+=19.0;
    }
   }
  } else {
   if(i10<0.9940325617790222){
    if(i17<0.01956629380583763){
     s0+=9225.0;
     s1+=123.0;
    } else {
     s0+=31.0;
     s1+=34.0;
    }
   } else {
    if(i1<0.06321915984153748){
     s0+=6585.0;
     s1+=1017.0;
    } else {
     s0+=975.0;
     s1+=771.0;
    }
   }
  }
 } else {
  if(i38<0.002481675473973155){
   if(i64<-5.431583304016385e-06){
    s1+=603.0;
   } else {
    if(i34<0.0001875946472864598){
     s0+=4.0;
    } else {
     s1+=61.0;
    }
   }
  } else {
   if(i46<0.0031854682601988316){
    if(i49<0.9999412298202515){
     s0+=6.0;
     s1+=23.0;
    } else {
     s0+=254.0;
     s1+=14.0;
    }
   } else {
    if(i69<0.9976070523262024){
     s0+=9.0;
     s1+=2.0;
    } else {
     s0+=15.0;
     s1+=272.0;
    }
   }
  }
 }
} else {
 if(i42<0.9989285469055176){
  if(i56<0.0031439908780157566){
   if(i0<0.08984971046447754){
    if(i35<1.2209420204162598){
     s0+=8.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i64<-3.617057473093155e-06){
     s0+=5.0;
     s1+=1.0;
    } else {
     s0+=385.0;
    }
   }
  } else {
   s1+=6.0;
  }
 } else {
  if(i10<1.0021967887878418){
   if(i40<0.04629397392272949){
    if(i56<0.0004571092431433499){
     s0+=42.0;
     s1+=320.0;
    } else {
     s0+=13.0;
     s1+=2078.0;
    }
   } else {
    if(i38<0.00636235810816288){
     s0+=842.0;
     s1+=646.0;
    } else {
     s0+=96.0;
     s1+=972.0;
    }
   }
  } else {
   if(i8<9.715557098388672e-06){
    if(i65<-0.01095227524638176){
     s0+=21.0;
     s1+=10.0;
    } else {
     s0+=7.0;
     s1+=99.0;
    }
   } else {
    if(i2<0.12092146277427673){
     s0+=61.0;
     s1+=1274.0;
    } else {
     s0+=13.0;
     s1+=8577.0;
    }
   }
  }
 }
}
if(i5<1.0024782419204712){
 if(i25<0.022396035492420197){
  if(i1<0.08242934942245483){
   if(i28<0.0003208689740858972){
    if(i61<-0.0031459927558898926){
     s0+=172.0;
     s1+=90.0;
    } else {
     s0+=55832.0;
     s1+=351.0;
    }
   } else {
    if(i8<8.52346420288086e-06){
     s0+=6468.0;
     s1+=518.0;
    } else {
     s0+=601.0;
     s1+=236.0;
    }
   }
  } else {
   if(i60<0.002533555030822754){
    if(i33<0.00042102241422981024){
     s0+=50.0;
     s1+=5.0;
    } else {
     s0+=96.0;
     s1+=667.0;
    }
   } else {
    if(i6<-1.461165720684221e-05){
     s0+=292.0;
     s1+=262.0;
    } else {
     s0+=508.0;
     s1+=31.0;
    }
   }
  }
 } else {
  if(i3<-0.0006222724914550781){
   if(i2<0.08139300346374512){
    if(i68<0.0022468389943242073){
     s0+=4624.0;
     s1+=88.0;
    } else {
     s0+=1.0;
     s1+=9.0;
    }
   } else {
    if(i11<-0.0004056096076965332){
     s0+=220.0;
     s1+=3.0;
    } else {
     s0+=28.0;
     s1+=225.0;
    }
   }
  } else {
   if(i1<0.06340235471725464){
    if(i43<0.002973534632474184){
     s0+=582.0;
     s1+=437.0;
    } else {
     s0+=734.0;
     s1+=101.0;
    }
   } else {
    if(i49<1.0005786418914795){
     s0+=474.0;
     s1+=2911.0;
    } else {
     s0+=49.0;
    }
   }
  }
 }
} else {
 if(i2<0.0497053861618042){
  if(i62<0.9997439384460449){
   if(i70<-0.009546282701194286){
    if(i8<0.0001360774040222168){
     s0+=25.0;
    } else {
     s1+=2.0;
    }
   } else {
    if(i45<-9.746989235281944e-06){
     s0+=21.0;
     s1+=360.0;
    } else {
     s0+=9.0;
    }
   }
  } else {
   if(i35<1.2392117977142334){
    if(i35<1.0757708549499512){
     s0+=4.0;
    } else {
     s1+=62.0;
    }
   } else {
    if(i66<1.6971369404927827e-05){
     s0+=112.0;
    } else {
     s1+=1.0;
    }
   }
  }
 } else {
  if(i17<0.002279817359521985){
   if(i45<-1.4636266314482782e-05){
    s1+=190.0;
   } else {
    s0+=63.0;
   }
  } else {
   if(i14<3.635883331298828e-05){
    if(i17<0.007079930976033211){
     s0+=87.0;
     s1+=106.0;
    } else {
     s0+=14.0;
     s1+=902.0;
    }
   } else {
    if(i54<0.0031147091649472713){
     s0+=3.0;
     s1+=72.0;
    } else {
     s0+=2.0;
     s1+=9552.0;
    }
   }
  }
 }
}
if(i24<1.04278564453125){
 if(i18<1.0018455982208252){
  if(i25<0.01598614826798439){
   if(i1<0.08420974016189575){
    if(i57<0.0008423745166510344){
     s0+=54548.0;
     s1+=274.0;
    } else {
     s0+=2632.0;
     s1+=397.0;
    }
   } else {
    if(i12<0.9856155514717102){
     s0+=65.0;
     s1+=19.0;
    } else {
     s0+=35.0;
     s1+=276.0;
    }
   }
  } else {
   if(i11<-0.00010538101196289062){
    if(i0<0.08218151330947876){
     s0+=6678.0;
     s1+=260.0;
    } else {
     s0+=117.0;
     s1+=187.0;
    }
   } else {
    if(i31<1.1843469142913818){
     s0+=563.0;
     s1+=1285.0;
    } else {
     s0+=2116.0;
     s1+=362.0;
    }
   }
  }
 } else {
  if(i3<0.00019484758377075195){
   if(i67<0.14185525476932526){
    if(i37<0.04031899943947792){
     s0+=378.0;
     s1+=6.0;
    } else {
     s0+=2.0;
     s1+=10.0;
    }
   } else {
    if(i3<-0.0005210638046264648){
     s0+=4.0;
    } else {
     s1+=7.0;
    }
   }
  } else {
   if(i8<6.812810897827148e-05){
    if(i33<0.005873953457921743){
     s0+=51.0;
     s1+=305.0;
    } else {
     s0+=97.0;
     s1+=115.0;
    }
   } else {
    if(i69<0.9976527690887451){
     s0+=9.0;
     s1+=45.0;
    } else {
     s0+=9.0;
     s1+=1483.0;
    }
   }
  }
 }
} else {
 if(i6<-4.110197914997116e-05){
  if(i13<1.1222221851348877){
   if(i35<1.5682398080825806){
    if(i21<1.0117888450622559){
     s0+=238.0;
     s1+=646.0;
    } else {
     s0+=54.0;
     s1+=2331.0;
    }
   } else {
    if(i14<0.0012130141258239746){
     s0+=266.0;
     s1+=5.0;
    } else {
     s1+=102.0;
    }
   }
  } else {
   if(i31<1.253311276435852){
    if(i30<1.250713586807251){
     s0+=25.0;
     s1+=434.0;
    } else {
     s0+=29.0;
    }
   } else {
    s1+=7361.0;
   }
  }
 } else {
  if(i17<0.005633247084915638){
   if(i7<1.0253968238830566){
    if(i17<0.002706475555896759){
     s0+=2245.0;
     s1+=291.0;
    } else {
     s0+=938.0;
     s1+=431.0;
    }
   } else {
    if(i31<1.2527469396591187){
     s0+=6.0;
    } else {
     s0+=2.0;
     s1+=100.0;
    }
   }
  } else {
   if(i13<1.0639115571975708){
    if(i38<0.0011074444046244025){
     s0+=4.0;
     s1+=36.0;
    } else {
     s0+=45.0;
     s1+=1.0;
    }
   } else {
    if(i16<1.001848578453064){
     s0+=13.0;
     s1+=77.0;
    } else {
     s0+=1.0;
     s1+=236.0;
    }
   }
  }
 }
}
if(i2<0.07786163687705994){
 if(i8<3.987550735473633e-05){
  if(i25<0.01706589199602604){
   if(i61<-0.0024039745330810547){
    if(i44<0.0015532500110566616){
     s0+=894.0;
     s1+=376.0;
    } else {
     s0+=1603.0;
     s1+=47.0;
    }
   } else {
    if(i34<0.0002996245748363435){
     s0+=50864.0;
     s1+=155.0;
    } else {
     s0+=5948.0;
     s1+=268.0;
    }
   }
  } else {
   if(i10<0.9942349195480347){
    if(i68<0.0022841854952275753){
     s0+=6911.0;
     s1+=105.0;
    } else {
     s1+=13.0;
    }
   } else {
    if(i1<0.059053391218185425){
     s0+=2080.0;
     s1+=589.0;
    } else {
     s0+=334.0;
     s1+=584.0;
    }
   }
  }
 } else {
  if(i13<1.0336670875549316){
   if(i69<0.9998411536216736){
    if(i22<-9.122490882873535e-05){
     s1+=2.0;
    } else {
     s0+=232.0;
    }
   } else {
    if(i41<-5.9445992519613355e-06){
     s0+=21.0;
     s1+=2.0;
    } else {
     s1+=16.0;
    }
   }
  } else {
   if(i36<1.2524442672729492){
    if(i30<1.0577372312545776){
     s0+=10.0;
    } else {
     s0+=5.0;
     s1+=742.0;
    }
   } else {
    if(i48<-0.0011067986488342285){
     s0+=71.0;
     s1+=276.0;
    } else {
     s0+=189.0;
     s1+=19.0;
    }
   }
  }
 }
} else {
 if(i18<0.998519778251648){
  if(i64<-2.386763526374125e-06){
   if(i38<0.0015519957523792982){
    s0+=23.0;
   } else {
    if(i28<0.0005459632957354188){
     s0+=15.0;
     s1+=2.0;
    } else {
     s0+=2.0;
     s1+=13.0;
    }
   }
  } else {
   if(i6<-0.00011678647570079193){
    s1+=2.0;
   } else {
    s0+=452.0;
   }
  }
 } else {
  if(i0<0.12524020671844482){
   if(i65<-0.004395913332700729){
    if(i62<0.995608389377594){
     s0+=3.0;
     s1+=86.0;
    } else {
     s0+=730.0;
     s1+=114.0;
    }
   } else {
    if(i6<-9.601852980267722e-06){
     s0+=105.0;
     s1+=1935.0;
    } else {
     s0+=142.0;
     s1+=96.0;
    }
   }
  } else {
   if(i8<3.510713577270508e-05){
    if(i55<0.025938957929611206){
     s0+=87.0;
     s1+=1422.0;
    } else {
     s0+=270.0;
     s1+=616.0;
    }
   } else {
    if(i45<-1.1704927601385862e-05){
     s0+=43.0;
     s1+=9652.0;
    } else {
     s0+=11.0;
     s1+=75.0;
    }
   }
  }
 }
}
if(i5<1.0024597644805908){
 if(i24<1.0398095846176147){
  if(i1<0.081397145986557){
   if(i61<-0.002215355634689331){
    if(i3<-0.0002817511558532715){
     s0+=4033.0;
     s1+=279.0;
    } else {
     s0+=1331.0;
     s1+=590.0;
    }
   } else {
    if(i73<1.004874348640442){
     s0+=58953.0;
     s1+=538.0;
    } else {
     s0+=1940.0;
     s1+=179.0;
    }
   }
  } else {
   if(i5<0.9956993460655212){
    if(i44<0.005167096387594938){
     s0+=145.0;
     s1+=2.0;
    } else {
     s0+=13.0;
     s1+=21.0;
    }
   } else {
    if(i40<0.044890135526657104){
     s0+=7.0;
     s1+=948.0;
    } else {
     s0+=62.0;
     s1+=137.0;
    }
   }
  }
 } else {
  if(i17<0.005003418307751417){
   if(i36<1.253311276435852){
    if(i2<0.09868457913398743){
     s0+=2042.0;
     s1+=400.0;
    } else {
     s0+=348.0;
     s1+=746.0;
    }
   } else {
    if(i6<-5.862967009306885e-05){
     s0+=11.0;
     s1+=29.0;
    } else {
     s0+=1327.0;
     s1+=71.0;
    }
   }
  } else {
   if(i4<0.0965343713760376){
    if(i10<0.9949344396591187){
     s0+=319.0;
     s1+=68.0;
    } else {
     s0+=151.0;
     s1+=331.0;
    }
   } else {
    if(i45<1.9168121525581228e-06){
     s0+=32.0;
     s1+=1429.0;
    } else {
     s0+=35.0;
    }
   }
  }
 }
} else {
 if(i5<1.0041769742965698){
  if(i6<-4.3980566260870546e-05){
   if(i15<3.2842159271240234e-05){
    if(i17<0.0015063354512676597){
     s0+=29.0;
     s1+=7.0;
    } else {
     s0+=18.0;
     s1+=1190.0;
    }
   } else {
    if(i56<0.0029987567104399204){
     s0+=86.0;
     s1+=26.0;
    } else {
     s0+=34.0;
     s1+=220.0;
    }
   }
  } else {
   if(i35<1.2392117977142334){
    if(i47<0.000273947196546942){
     s0+=12.0;
    } else {
     s1+=122.0;
    }
   } else {
    if(i29<0.9943606853485107){
     s1+=24.0;
    } else {
     s0+=165.0;
    }
   }
  }
 } else {
  if(i2<0.03163895010948181){
   if(i51<-0.00874987244606018){
    if(i41<0.0002704615762922913){
     s0+=1.0;
     s1+=121.0;
    } else {
     s0+=10.0;
     s1+=1.0;
    }
   } else {
    s0+=12.0;
   }
  } else {
   if(i35<1.613681674003601){
    s1+=8145.0;
   } else {
    if(i37<0.01705806329846382){
     s0+=30.0;
     s1+=73.0;
    } else {
     s1+=1409.0;
    }
   }
  }
 }
}
if(i6<-7.31103791622445e-05){
 if(i3<2.7567148208618164e-05){
  if(i58<0.8082244396209717){
   if(i22<-0.0005192160606384277){
    if(i2<0.11405882239341736){
     s0+=451.0;
     s1+=15.0;
    } else {
     s1+=10.0;
    }
   } else {
    if(i2<0.07773557305335999){
     s0+=250.0;
     s1+=37.0;
    } else {
     s0+=25.0;
     s1+=159.0;
    }
   }
  } else {
   if(i9<1.0942556858062744){
    s0+=7.0;
   } else {
    s1+=89.0;
   }
  }
 } else {
  if(i12<0.9829486608505249){
   if(i68<0.0017007346032187343){
    if(i28<0.018482519313693047){
     s0+=130.0;
     s1+=2.0;
    } else {
     s1+=5.0;
    }
   } else {
    if(i67<0.04249945655465126){
     s0+=1.0;
    } else {
     s1+=125.0;
    }
   }
  } else {
   if(i66<2.541707544878591e-05){
    if(i14<-2.300739288330078e-05){
     s0+=104.0;
     s1+=1066.0;
    } else {
     s0+=8.0;
     s1+=9858.0;
    }
   } else {
    if(i37<0.018331214785575867){
     s0+=65.0;
     s1+=8.0;
    } else {
     s0+=4.0;
     s1+=267.0;
    }
   }
  }
 }
} else {
 if(i34<0.0003066955250687897){
  if(i23<1.0028645992279053){
   if(i27<1.013289451599121){
    if(i16<1.0108616352081299){
     s0+=53376.0;
     s1+=267.0;
    } else {
     s0+=23.0;
     s1+=59.0;
    }
   } else {
    if(i11<1.4632940292358398e-05){
     s0+=47.0;
     s1+=10.0;
    } else {
     s0+=28.0;
     s1+=54.0;
    }
   }
  } else {
   if(i64<-5.030238753533922e-06){
    if(i75<0.000156258131028153){
     s0+=3.0;
     s1+=125.0;
    } else {
     s0+=10.0;
    }
   } else {
    s0+=129.0;
   }
  }
 } else {
  if(i1<0.07557624578475952){
   if(i33<0.0014749669935554266){
    if(i18<1.0005147457122803){
     s0+=5655.0;
     s1+=1041.0;
    } else {
     s0+=99.0;
     s1+=473.0;
    }
   } else {
    if(i8<7.069110870361328e-05){
     s0+=8647.0;
     s1+=230.0;
    } else {
     s0+=1.0;
     s1+=22.0;
    }
   }
  } else {
   if(i60<0.004150867462158203){
    if(i11<-0.000509113073348999){
     s0+=149.0;
     s1+=3.0;
    } else {
     s0+=502.0;
     s1+=2580.0;
    }
   } else {
    if(i56<0.002059275982901454){
     s0+=1000.0;
     s1+=497.0;
    } else {
     s0+=158.0;
     s1+=378.0;
    }
   }
  }
 }
}
if(i3<0.0005462765693664551){
 if(i25<0.022210076451301575){
  if(i0<0.08567053079605103){
   if(i71<0.00027220460469834507){
    if(i19<1.0072792768478394){
     s0+=55414.0;
     s1+=253.0;
    } else {
     s0+=1689.0;
     s1+=255.0;
    }
   } else {
    if(i38<0.0009846016764640808){
     s0+=940.0;
     s1+=510.0;
    } else {
     s0+=4712.0;
     s1+=158.0;
    }
   }
  } else {
   if(i3<1.7881393432617188e-06){
    if(i18<0.9980660676956177){
     s0+=426.0;
     s1+=4.0;
    } else {
     s0+=407.0;
     s1+=231.0;
    }
   } else {
    if(i44<0.001958566252142191){
     s0+=73.0;
     s1+=539.0;
    } else {
     s0+=283.0;
     s1+=134.0;
    }
   }
  }
 } else {
  if(i18<0.9990561008453369){
   if(i5<0.9965225458145142){
    if(i59<-0.0007287949556484818){
     s0+=55.0;
     s1+=16.0;
    } else {
     s0+=3522.0;
     s1+=36.0;
    }
   } else {
    if(i6<-8.641631211503409e-06){
     s0+=41.0;
     s1+=153.0;
    } else {
     s0+=148.0;
     s1+=32.0;
    }
   }
  } else {
   if(i2<0.06301158666610718){
    if(i44<0.0013505585957318544){
     s0+=339.0;
     s1+=393.0;
    } else {
     s0+=2201.0;
     s1+=191.0;
    }
   } else {
    if(i6<-9.618350304663181e-06){
     s0+=338.0;
     s1+=2339.0;
    } else {
     s0+=180.0;
     s1+=150.0;
    }
   }
  }
 }
} else {
 if(i49<0.9992470741271973){
  s0+=166.0;
 } else {
  if(i1<0.06511685252189636){
   if(i48<-0.0014438629150390625){
    if(i1<0.005251765251159668){
     s0+=27.0;
     s1+=31.0;
    } else {
     s0+=25.0;
     s1+=351.0;
    }
   } else {
    if(i42<1.0008561611175537){
     s0+=105.0;
     s1+=14.0;
    } else {
     s0+=82.0;
     s1+=97.0;
    }
   }
  } else {
   if(i14<-0.000556647777557373){
    if(i17<0.008918183855712414){
     s0+=88.0;
     s1+=148.0;
    } else {
     s0+=14.0;
     s1+=566.0;
    }
   } else {
    if(i6<-4.32968299719505e-05){
     s0+=31.0;
     s1+=10142.0;
    } else {
     s0+=47.0;
     s1+=156.0;
    }
   }
  }
 }
}
if(i0<0.08509618043899536){
 if(i11<0.0005337297916412354){
  if(i47<0.0002765728277154267){
   if(i6<-4.484895180212334e-05){
    if(i7<1.007364273071289){
     s0+=286.0;
     s1+=4.0;
    } else {
     s1+=70.0;
    }
   } else {
    if(i19<1.0088348388671875){
     s0+=45330.0;
     s1+=19.0;
    } else {
     s0+=7.0;
     s1+=12.0;
    }
   }
  } else {
   if(i5<0.9967672824859619){
    if(i70<0.006041771732270718){
     s0+=12470.0;
     s1+=102.0;
    } else {
     s0+=202.0;
     s1+=25.0;
    }
   } else {
    if(i35<1.1039612293243408){
     s0+=3910.0;
     s1+=1528.0;
    } else {
     s0+=6123.0;
     s1+=401.0;
    }
   }
  }
 } else {
  if(i23<1.0019279718399048){
   if(i37<0.03834982216358185){
    if(i63<-0.00011146068572998047){
     s0+=184.0;
     s1+=64.0;
    } else {
     s0+=406.0;
     s1+=21.0;
    }
   } else {
    if(i7<0.9729694724082947){
     s1+=33.0;
    } else {
     s0+=3.0;
    }
   }
  } else {
   if(i3<0.0004742741584777832){
    if(i6<-3.136669329251163e-05){
     s0+=240.0;
     s1+=34.0;
    } else {
     s0+=5.0;
     s1+=11.0;
    }
   } else {
    if(i5<1.0041816234588623){
     s0+=121.0;
     s1+=258.0;
    } else {
     s0+=22.0;
     s1+=597.0;
    }
   }
  }
 }
} else {
 if(i42<0.9993027448654175){
  if(i13<1.398578405380249){
   if(i77<1.00082528591156){
    if(i17<0.004999736789613962){
     s0+=612.0;
     s1+=12.0;
    } else {
     s0+=61.0;
     s1+=18.0;
    }
   } else {
    if(i9<1.054704189300537){
     s0+=6.0;
    } else {
     s1+=14.0;
    }
   }
  } else {
   s1+=32.0;
  }
 } else {
  if(i6<-1.381639958708547e-05){
   if(i25<0.02404128760099411){
    if(i51<0.04961901903152466){
     s0+=140.0;
     s1+=2625.0;
    } else {
     s0+=321.0;
     s1+=428.0;
    }
   } else {
    if(i8<5.0127506256103516e-05){
     s0+=168.0;
     s1+=2444.0;
    } else {
     s0+=9.0;
     s1+=7897.0;
    }
   }
  } else {
   if(i16<0.9937533140182495){
    if(i19<0.9950541257858276){
     s0+=17.0;
     s1+=156.0;
    } else {
     s0+=37.0;
     s1+=12.0;
    }
   } else {
    if(i32<0.06706041097640991){
     s0+=36.0;
     s1+=89.0;
    } else {
     s0+=528.0;
     s1+=102.0;
    }
   }
  }
 }
}
if(i3<0.0005484223365783691){
 if(i2<0.07800713181495667){
  if(i28<0.0002940067497547716){
   if(i19<1.0075610876083374){
    if(i44<0.00036426374572329223){
     s0+=38291.0;
     s1+=19.0;
    } else {
     s0+=17099.0;
     s1+=395.0;
    }
   } else {
    if(i38<0.0007288972265087068){
     s0+=123.0;
     s1+=133.0;
    } else {
     s0+=481.0;
     s1+=18.0;
    }
   }
  } else {
   if(i30<1.1036889553070068){
    if(i39<-3.552436828613281e-05){
     s0+=2382.0;
     s1+=37.0;
    } else {
     s0+=1676.0;
     s1+=1084.0;
    }
   } else {
    if(i60<-0.0028172433376312256){
     s0+=1056.0;
     s1+=208.0;
    } else {
     s0+=7682.0;
     s1+=143.0;
    }
   }
  }
 } else {
  if(i6<-1.231151236424921e-05){
   if(i2<0.10544106364250183){
    if(i70<-0.016074631363153458){
     s0+=268.0;
     s1+=44.0;
    } else {
     s0+=158.0;
     s1+=810.0;
    }
   } else {
    if(i53<0.08412206172943115){
     s0+=10.0;
     s1+=1462.0;
    } else {
     s0+=205.0;
     s1+=819.0;
    }
   }
  } else {
   if(i53<0.05477428436279297){
    if(i33<0.00044936328777112067){
     s0+=62.0;
    } else {
     s0+=30.0;
     s1+=171.0;
    }
   } else {
    if(i6<-6.532281076943036e-06){
     s0+=174.0;
     s1+=62.0;
    } else {
     s0+=761.0;
     s1+=43.0;
    }
   }
  }
 }
} else {
 if(i20<1.0419573783874512){
  if(i45<-1.633342617424205e-05){
   s1+=3.0;
  } else {
   s0+=201.0;
  }
 } else {
  if(i4<0.12054160237312317){
   if(i60<0.004440128803253174){
    if(i48<0.005541384220123291){
     s0+=237.0;
     s1+=3496.0;
    } else {
     s0+=44.0;
     s1+=37.0;
    }
   } else {
    if(i41<7.688303594477475e-05){
     s0+=9.0;
     s1+=68.0;
    } else {
     s0+=96.0;
     s1+=9.0;
    }
   }
  } else {
   if(i33<0.0018891654908657074){
    if(i31<1.1960272789001465){
     s1+=34.0;
    } else {
     s0+=5.0;
    }
   } else {
    if(i23<0.9975334405899048){
     s0+=8.0;
     s1+=194.0;
    } else {
     s0+=9.0;
     s1+=7896.0;
    }
   }
  }
 }
}
if(i13<1.055552363395691){
 if(i5<1.0024954080581665){
  if(i9<1.0398929119110107){
   if(i4<0.07712247967720032){
    if(i25<0.016620313748717308){
     s0+=53778.0;
     s1+=418.0;
    } else {
     s0+=7739.0;
     s1+=523.0;
    }
   } else {
    if(i20<1.044461965560913){
     s0+=44.0;
     s1+=1.0;
    } else {
     s0+=19.0;
     s1+=126.0;
    }
   }
  } else {
   if(i2<0.08921673893928528){
    if(i25<0.014121955260634422){
     s0+=2072.0;
     s1+=121.0;
    } else {
     s0+=628.0;
     s1+=338.0;
    }
   } else {
    if(i10<0.99388188123703){
     s0+=43.0;
     s1+=10.0;
    } else {
     s0+=5.0;
     s1+=280.0;
    }
   }
  }
 } else {
  if(i71<-1.982220055651851e-05){
   if(i56<0.0009965344797819853){
    s0+=67.0;
   } else {
    s1+=7.0;
   }
  } else {
   if(i71<7.895951057435013e-06){
    if(i31<1.2296775579452515){
     s1+=34.0;
    } else {
     s0+=20.0;
    }
   } else {
    if(i45<-9.950455932994373e-06){
     s0+=6.0;
     s1+=454.0;
    } else {
     s0+=9.0;
    }
   }
  }
 }
} else {
 if(i33<0.004933718126267195){
  if(i3<0.00021326541900634766){
   if(i42<0.9989762902259827){
    if(i64<-2.875731297535822e-06){
     s0+=22.0;
     s1+=4.0;
    } else {
     s0+=1170.0;
    }
   } else {
    if(i1<0.07537108659744263){
     s0+=2806.0;
     s1+=474.0;
    } else {
     s0+=763.0;
     s1+=1137.0;
    }
   }
  } else {
   if(i17<0.002628896851092577){
    if(i63<0.002608954906463623){
     s0+=169.0;
     s1+=397.0;
    } else {
     s0+=336.0;
     s1+=35.0;
    }
   } else {
    if(i31<1.2797276973724365){
     s0+=85.0;
     s1+=2808.0;
    } else {
     s0+=17.0;
     s1+=13.0;
    }
   }
  }
 } else {
  if(i4<0.08103537559509277){
   if(i12<0.9988893866539001){
    if(i51<-0.05298563838005066){
     s0+=85.0;
     s1+=253.0;
    } else {
     s0+=776.0;
     s1+=93.0;
    }
   } else {
    if(i17<0.004255051724612713){
     s0+=55.0;
     s1+=32.0;
    } else {
     s0+=5.0;
     s1+=531.0;
    }
   }
  } else {
   if(i2<0.11727350950241089){
    if(i46<0.0019466872327029705){
     s0+=136.0;
     s1+=27.0;
    } else {
     s0+=3.0;
     s1+=283.0;
    }
   } else {
    if(i68<0.00020678623695857823){
     s0+=26.0;
     s1+=219.0;
    } else {
     s0+=27.0;
     s1+=8723.0;
    }
   }
  }
 }
}
if(i5<1.002413034439087){
 if(i9<1.0452277660369873){
  if(i20<1.0451585054397583){
   if(i57<0.0007040876662358642){
    if(i0<0.06933987140655518){
     s0+=49552.0;
     s1+=50.0;
    } else {
     s0+=1641.0;
     s1+=36.0;
    }
   } else {
    if(i44<0.001696874387562275){
     s0+=1182.0;
     s1+=170.0;
    } else {
     s0+=1869.0;
     s1+=2.0;
    }
   }
  } else {
   if(i33<0.001429909374564886){
    if(i2<0.06230592727661133){
     s0+=4451.0;
     s1+=702.0;
    } else {
     s0+=253.0;
     s1+=729.0;
    }
   } else {
    if(i11<0.0005689859390258789){
     s0+=5984.0;
     s1+=166.0;
    } else {
     s0+=277.0;
     s1+=118.0;
    }
   }
  }
 } else {
  if(i2<0.09199181199073792){
   if(i17<0.004335097502917051){
    if(i13<1.0920991897583008){
     s0+=2254.0;
     s1+=439.0;
    } else {
     s0+=1644.0;
     s1+=47.0;
    }
   } else {
    if(i48<0.0037435591220855713){
     s0+=348.0;
     s1+=504.0;
    } else {
     s0+=349.0;
     s1+=20.0;
    }
   }
  } else {
   if(i53<0.07125210762023926){
    if(i15<-1.856684684753418e-05){
     s0+=24.0;
    } else {
     s0+=34.0;
     s1+=1575.0;
    }
   } else {
    if(i75<9.298334771301597e-05){
     s0+=781.0;
     s1+=281.0;
    } else {
     s0+=194.0;
     s1+=803.0;
    }
   }
  }
 }
} else {
 if(i28<0.00016937126929406077){
  if(i38<0.0012543399352580309){
   if(i36<1.070241093635559){
    s0+=13.0;
   } else {
    s1+=48.0;
   }
  } else {
   if(i17<0.0026894989423453808){
    s0+=98.0;
   } else {
    s1+=15.0;
   }
  }
 } else {
  if(i22<0.00021505355834960938){
   if(i17<0.0028312322683632374){
    if(i43<0.0016104658134281635){
     s0+=8.0;
     s1+=47.0;
    } else {
     s0+=114.0;
     s1+=15.0;
    }
   } else {
    if(i69<0.9976072311401367){
     s0+=27.0;
     s1+=17.0;
    } else {
     s0+=148.0;
     s1+=2849.0;
    }
   }
  } else {
   if(i3<0.0005335807800292969){
    if(i34<0.00763950077816844){
     s0+=7.0;
    } else {
     s1+=3.0;
    }
   } else {
    s1+=8364.0;
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
